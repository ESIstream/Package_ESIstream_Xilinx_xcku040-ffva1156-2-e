-------------------------------------------------------------------------------
-- This is free and unencumbered software released into the public domain.
--
-- Anyone is free to copy, modify, publish, use, compile, sell, or distribute
-- this software, either in source code form or as a compiled bitstream, for 
-- any purpose, commercial or non-commercial, and by any means.
--
-- In jurisdictions that recognize copyright laws, the author or authors of 
-- this software dedicate any and all copyright interest in the software to 
-- the public domain. We make this dedication for the benefit of the public at
-- large and to the detriment of our heirs and successors. We intend this 
-- dedication to be an overt act of relinquishment in perpetuity of all present
-- and future rights to this software under copyright law.
--
-- THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR 
-- IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABIqLITY, 
-- FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
-- AUTHORS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN 
-- ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION
-- WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
--
-- THIS DISCLAIMER MUST BE RETAINED AS PART OF THIS FILE AT ALL TIMES. 
-------------------------------------------------------------------------------
-- Version      Date            Author       Description
-- 1.1          2019            REFLEXCES    FPGA target migration, 64-bit data path
--------------------------------------------------------------------------------- 
library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

library work;
use work.esistream_pkg.all;

library unisim;
use unisim.vcomponents.all;


entity tx_rx_xcvr_wrapper is
  generic (
    NB_LANES : natural := 4
    );
  port (
    rst           : in  std_logic;
    rx_rst_xcvr   : in  std_logic;
    rx_rstdone    : out std_logic_vector(NB_LANES-1 downto 0)             := (others => '0');
    rx_frame_clk  : out std_logic                                         := '0';
    rx_usrclk     : out std_logic                                         := '0';
    tx_rst_xcvr   : in  std_logic;
    tx_usrrdy     : in  std_logic_vector(NB_LANES-1 downto 0);				-- TX User Ready
    tx_rstdone    : out std_logic_vector(NB_LANES-1 downto 0)             := (others => '0');
    tx_frame_clk  : out std_logic                                         := '0';
    tx_usrclk     : out std_logic                                         := '0';
    sysclk        : in  std_logic;
    refclk_n      : in  std_logic;
    refclk_p      : in  std_logic;
    rxp           : in  std_logic_vector(NB_LANES-1 downto 0);
    rxn           : in  std_logic_vector(NB_LANES-1 downto 0);
    txp           : out std_logic_vector(NB_LANES-1 downto 0);
    txn           : out std_logic_vector(NB_LANES-1 downto 0);
    xcvr_pll_lock : out std_logic_vector(NB_LANES-1 downto 0)             := (others => '0');
    data_in       : in  std_logic_vector(SER_WIDTH*NB_LANES-1 downto 0)   := (others => '0');
    data_out      : out std_logic_vector(DESER_WIDTH*NB_LANES-1 downto 0) := (others => '0')
    );
end entity tx_rx_xcvr_wrapper;

architecture rtl of tx_rx_xcvr_wrapper is
  --============================================================================================================================
  -- Function and Procedure declarations
  --============================================================================================================================

  --============================================================================================================================
  -- Constant and Type declarations
  --============================================================================================================================

  --============================================================================================================================
  -- Component declarations
  --============================================================================================================================

  --============================================================================================================================
  -- Signal declarations
  --============================================================================================================================
  signal refclk            : std_logic                                := '0';
  signal refclk_o          : std_logic                                := '0';
  signal refclk_odiv2      : std_logic                                := '0';
  signal refclk_bufg_gt    : std_logic                                := '0';
  signal frame_clk         : std_logic                                := '0';
  signal rx_rstdone_1      : std_logic                                := '0';
  signal tx_rstdone_1      : std_logic                                := '0';
  signal qpll_lock         : std_logic_vector(NB_LANES/4-1 downto 0)  := (others => '0');
  signal rx_usrclk_1       : std_logic_vector(0 downto 0)    := (others => '0');
  signal rx_usrclk_2       : std_logic_vector(0 downto 0)    := (others => '0');
  signal tx_usrclk_1       : std_logic_vector(0 downto 0)    := (others => '0');
  signal tx_usrclk_2       : std_logic_vector(0 downto 0)    := (others => '0');
  --
begin
  --
  xcvr_pll_lock_generate : for i in NB_LANES/4-1 downto 0 generate
    xcvr_pll_lock(i*4+0) <= qpll_lock(i);
    xcvr_pll_lock(i*4+1) <= qpll_lock(i);
    xcvr_pll_lock(i*4+2) <= qpll_lock(i);
    xcvr_pll_lock(i*4+3) <= qpll_lock(i);
  end generate;
  --
  --============================================================================================================================
  -- Clock buffer for REFCLK
  --============================================================================================================================
  --
  -- IBUFDS_GTE3 -> BUFG_GT -> MMCM:
  --
  -- ODIV2 seems to suggest that in UltraScale the clock is only the DIV2 or divided by two output of the refclk.
  -- But that is not the case. Please check Figure 2-1: Reference Clock Input Structure of the Xilinx documentation,
  -- UG576 (v1.6) August 26, 2019 UltraScale Architecture GTH Transceivers
  IBUFDS_GTE3_MGTREFCLK0_INST : IBUFDS_GTE3
    generic map(
      REFCLK_EN_TX_PATH  => '0',   -- Reserved. This attribute must always be set to "00".
      REFCLK_HROW_CK_SEL => "00",  -- "00" : f_ODIV2 = f_O ; "01" : f_ODIV2 = f_O/2 ; "10" : ODIV2 = 0 ; "11" : reserved. 
      REFCLK_ICNTL_RX    => "00"   -- Reserved. Use the recommended value from the Wizard "00".
      )
    port map(
      I     => refclk_p,
      IB    => refclk_n,
      CEB   => '0',
      O     => refclk_o,
      ODIV2 => refclk_odiv2
      );

  -- @details: DIV input:
  -- Specifies the value to divide the clock. Divide value is value
  -- provided plus 1. For instance, setting "0000" will provide a divide
  -- value of 1 and "1111" will be a divide value of 8.
  BUFG_GT_inst_0 : BUFG_GT
    port map (
      O       => refclk_bufg_gt,  -- 1-bit output: Buffer
      CE      => '1',             -- 1-bit input: Buffer enable
      CEMASK  => '0',             -- 1-bit input: CE Mask
      CLR     => '0',             -- 1-bit input: Asynchronous clear
      CLRMASK => '0',             -- 1-bit input: CLR Mask
      DIV     => "000",           -- 3-bit input: Dynamic divide Value
      I       => refclk_odiv2     -- 1-bit input: Buffer
      );

  i_mmcm_frame_clk : entity work.clk_wiz_2
    port map (
      -- Clock out ports
      clk_out1 => frame_clk,
      -- Status and control signals
      reset    => rst,
      locked   => open,
      --  Clock in ports
      clk_in1  => refclk_bufg_gt
      );

  gth_txrx_8lanes_32b_1 : entity work.gth_txrx_8lanes_32b
    port map(
      gtwiz_userclk_tx_reset_in(0)       => tx_rst_xcvr,
      gtwiz_userclk_tx_srcclk_out        => open,
      gtwiz_userclk_tx_usrclk_out        => tx_usrclk_1,
      gtwiz_userclk_tx_usrclk2_out       => tx_usrclk_2,
      gtwiz_userclk_tx_active_out        => open,
      gtwiz_userclk_rx_reset_in(0)       => rx_rst_xcvr,
      gtwiz_userclk_rx_srcclk_out        => open,
      gtwiz_userclk_rx_usrclk_out        => rx_usrclk_1,
      gtwiz_userclk_rx_usrclk2_out       => rx_usrclk_2,
      gtwiz_userclk_rx_active_out        => open,
      gtwiz_reset_clk_freerun_in(0)      => sysclk,
      gtwiz_reset_all_in(0)              => rst,
      gtwiz_reset_tx_pll_and_datapath_in => (others => '0'),
      gtwiz_reset_tx_datapath_in         => (others => '0'),
      gtwiz_reset_rx_pll_and_datapath_in => (others => '0'),
      gtwiz_reset_rx_datapath_in         => (others => '0'),
      gtwiz_reset_rx_cdr_stable_out      => open,
      gtwiz_reset_tx_done_out(0)         => tx_rstdone_1,
      gtwiz_reset_rx_done_out(0)         => rx_rstdone_1,
      gtwiz_userdata_tx_in               => data_in,
      gtwiz_userdata_rx_out              => data_out,
      gtrefclk00_in(0)                   => refclk_o,
      gtrefclk00_in(1)                   => refclk_o,
      qpll0lock_out(0)                   => qpll_lock(0),
      qpll0lock_out(1)                   => qpll_lock(1),
      qpll0outclk_out                    => open,
      qpll0outrefclk_out                 => open,
      gthrxn_in                          => rxn,
      gthrxp_in                          => rxp,
      rxpd_in                            => (others => '0'),  -- RX part powered-on
      txpd_in                            => (others => '0'),  -- TX part powered-on
      gthtxn_out                         => txn,
      gthtxp_out                         => txp,
      gtpowergood_out                    => open,
      rxpmaresetdone_out                 => open,
      txpmaresetdone_out                 => open
      );
  --
  tx_rstdone <= (others => tx_rstdone_1);
  rx_rstdone <= (others => rx_rstdone_1);
  --
  rx_usrclk    <= rx_usrclk_2(0);
  rx_frame_clk <= frame_clk;
  tx_usrclk    <= tx_usrclk_2(0);
  tx_frame_clk <= tx_usrclk_2(0);
  --
end architecture rtl;
