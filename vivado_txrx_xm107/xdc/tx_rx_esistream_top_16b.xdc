###############################################################################
# User Configuration
###############################################################################

###############################################################################
# IOs constraints
###############################################################################

# 156.25 MHz
create_clock -period 6.400 -name clk_mgtref -waveform {0.000 3.200} [get_ports sso_p]
set_property PACKAGE_PIN K5 [get_ports sso_n]
set_property PACKAGE_PIN K6 [get_ports sso_p]

set_property PACKAGE_PIN M2 [get_ports {rxp[0]}]
set_property PACKAGE_PIN M1 [get_ports {rxn[0]}]
set_property PACKAGE_PIN N4 [get_ports {txp[0]}]
set_property PACKAGE_PIN N3 [get_ports {txn[0]}]
set_property PACKAGE_PIN K2 [get_ports {rxp[1]}]
set_property PACKAGE_PIN K1 [get_ports {rxn[1]}]
set_property PACKAGE_PIN L4 [get_ports {txp[1]}]
set_property PACKAGE_PIN L3 [get_ports {txn[1]}]
set_property PACKAGE_PIN H2 [get_ports {rxp[2]}]
set_property PACKAGE_PIN H1 [get_ports {rxn[2]}]
set_property PACKAGE_PIN J4 [get_ports {txp[2]}]
set_property PACKAGE_PIN J3 [get_ports {txn[2]}]
set_property PACKAGE_PIN F2 [get_ports {rxp[3]}]
set_property PACKAGE_PIN F1 [get_ports {rxn[3]}]
set_property PACKAGE_PIN G4 [get_ports {txp[3]}]
set_property PACKAGE_PIN G3 [get_ports {txn[3]}]
set_property PACKAGE_PIN E4 [get_ports {rxp[4]}]
set_property PACKAGE_PIN E3 [get_ports {rxn[4]}]
set_property PACKAGE_PIN F6 [get_ports {txp[4]}]
set_property PACKAGE_PIN F5 [get_ports {txn[4]}]
set_property PACKAGE_PIN D2 [get_ports {rxp[5]}]
set_property PACKAGE_PIN D1 [get_ports {rxn[5]}]
set_property PACKAGE_PIN D6 [get_ports {txp[5]}]
set_property PACKAGE_PIN D5 [get_ports {txn[5]}]
set_property PACKAGE_PIN B2 [get_ports {rxp[6]}]
set_property PACKAGE_PIN B1 [get_ports {rxn[6]}]
set_property PACKAGE_PIN C4 [get_ports {txp[6]}]
set_property PACKAGE_PIN C3 [get_ports {txn[6]}]
set_property PACKAGE_PIN A4 [get_ports {rxp[7]}]
set_property PACKAGE_PIN A3 [get_ports {rxn[7]}]
set_property PACKAGE_PIN B6 [get_ports {txp[7]}]
set_property PACKAGE_PIN B5 [get_ports {txn[7]}]

# PL system clock:
set_property IOSTANDARD LVDS [get_ports CLK_125MHZ_P]
set_property PACKAGE_PIN G10 [get_ports CLK_125MHZ_P]
set_property PACKAGE_PIN F10 [get_ports CLK_125MHZ_N]

create_clock -period 8.000 -name CLK_125MHZ_P [get_ports CLK_125MHZ_P]

set_property IOSTANDARD LVCMOS18 [get_ports {GPIO_LED[*]}]
set_property PACKAGE_PIN AP8 [get_ports {GPIO_LED[0]}]
set_property PACKAGE_PIN H23 [get_ports {GPIO_LED[1]}]
set_property PACKAGE_PIN P20 [get_ports {GPIO_LED[2]}]
set_property PACKAGE_PIN P21 [get_ports {GPIO_LED[3]}]
set_property PACKAGE_PIN N22 [get_ports {GPIO_LED[4]}]
set_property PACKAGE_PIN M22 [get_ports {GPIO_LED[5]}]
set_property PACKAGE_PIN R23 [get_ports {GPIO_LED[6]}]
set_property PACKAGE_PIN P23 [get_ports {GPIO_LED[7]}]

#set_property IOSTANDARD LVCMOS12 [get_ports UART_RX]
#set_property IOSTANDARD LVCMOS12 [get_ports UART_TX]
#set_property PACKAGE_PIN AN18 [get_ports UART_RX]
#set_property PACKAGE_PIN AN17 [get_ports UART_TX]
set_property IOSTANDARD LVCMOS18 [get_ports UART_RX]
set_property IOSTANDARD LVCMOS18 [get_ports UART_TX]
set_property PACKAGE_PIN K26 [get_ports UART_RX]
set_property PACKAGE_PIN G25 [get_ports UART_TX]

set_property IOSTANDARD LVCMOS12 [get_ports {GPIO_DIP_SW[*]}]
set_property PACKAGE_PIN AN16 [get_ports {GPIO_DIP_SW[0]}]
set_property PACKAGE_PIN AN19 [get_ports {GPIO_DIP_SW[1]}]
set_property PACKAGE_PIN AP18 [get_ports {GPIO_DIP_SW[2]}]
set_property PACKAGE_PIN AN14 [get_ports {GPIO_DIP_SW[3]}]

set_property IOSTANDARD LVCMOS18 [get_ports GPIO_SW_N]
set_property IOSTANDARD LVCMOS18 [get_ports GPIO_SW_S]
set_property IOSTANDARD LVCMOS18 [get_ports GPIO_SW_C]
set_property IOSTANDARD LVCMOS18 [get_ports GPIO_SW_W]
set_property IOSTANDARD LVCMOS18 [get_ports GPIO_SW_E]
set_property PACKAGE_PIN AD10 [get_ports GPIO_SW_N]
set_property PACKAGE_PIN AF8 [get_ports GPIO_SW_S]
set_property PACKAGE_PIN AE10 [get_ports GPIO_SW_C]
set_property PACKAGE_PIN AF9 [get_ports GPIO_SW_W]
set_property PACKAGE_PIN AE8 [get_ports GPIO_SW_E]

set_false_path -from [get_clocks {rxoutclk_out[3]_1}] -to [get_clocks clk_out1_clk_wiz_0]
set_false_path -from [get_clocks clk_out1_clk_wiz_0] -to [get_clocks {rxoutclk_out[3]_1}]
#
set_false_path -from [get_clocks {rxoutclk_out[3]_1}] -to [get_clocks clk_out1_clk_wiz_2]
set_false_path -from [get_clocks clk_out1_clk_wiz_2] -to [get_clocks {rxoutclk_out[3]_1}]
#
set_false_path -from [get_clocks clk_out1_clk_wiz_0] -to [get_clocks clk_out1_clk_wiz_2]
set_false_path -from [get_clocks clk_out1_clk_wiz_2] -to [get_clocks clk_out1_clk_wiz_0]
#
set_false_path -from [get_clocks {txoutclk_out[3]_1}] -to [get_clocks clk_out1_clk_wiz_0]
set_false_path -from [get_clocks clk_out1_clk_wiz_0] -to [get_clocks {txoutclk_out[3]_1}]
#
set_false_path -from [get_clocks {txoutclk_out[3]_1}] -to [get_clocks clk_out1_clk_wiz_2]
set_false_path -from [get_clocks clk_out1_clk_wiz_2] -to [get_clocks {txoutclk_out[3]_1}]

create_debug_core u_ila_0 ila
set_property ALL_PROBE_SAME_MU true [get_debug_cores u_ila_0]
set_property ALL_PROBE_SAME_MU_CNT 1 [get_debug_cores u_ila_0]
set_property C_ADV_TRIGGER false [get_debug_cores u_ila_0]
set_property C_DATA_DEPTH 1024 [get_debug_cores u_ila_0]
set_property C_EN_STRG_QUAL false [get_debug_cores u_ila_0]
set_property C_INPUT_PIPE_STAGES 2 [get_debug_cores u_ila_0]
set_property C_TRIGIN_EN false [get_debug_cores u_ila_0]
set_property C_TRIGOUT_EN false [get_debug_cores u_ila_0]
set_property port_width 1 [get_debug_ports u_ila_0/clk]
connect_debug_port u_ila_0/clk [get_nets [list gen_esistream_hdl.tx_rx_esistream_with_xcvr_1/tx_rx_xcvr_wrapper_1/i_mmcm_frame_clk/inst/clk_out1]]
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe0]
set_property port_width 12 [get_debug_ports u_ila_0/probe0]
connect_debug_port u_ila_0/probe0 [get_nets [list {data_out_12b[5][0][0]} {data_out_12b[5][0][1]} {data_out_12b[5][0][2]} {data_out_12b[5][0][3]} {data_out_12b[5][0][4]} {data_out_12b[5][0][5]} {data_out_12b[5][0][6]} {data_out_12b[5][0][7]} {data_out_12b[5][0][8]} {data_out_12b[5][0][9]} {data_out_12b[5][0][10]} {data_out_12b[5][0][11]}]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe1]
set_property port_width 12 [get_debug_ports u_ila_0/probe1]
connect_debug_port u_ila_0/probe1 [get_nets [list {data_out_12b[2][0][0]} {data_out_12b[2][0][1]} {data_out_12b[2][0][2]} {data_out_12b[2][0][3]} {data_out_12b[2][0][4]} {data_out_12b[2][0][5]} {data_out_12b[2][0][6]} {data_out_12b[2][0][7]} {data_out_12b[2][0][8]} {data_out_12b[2][0][9]} {data_out_12b[2][0][10]} {data_out_12b[2][0][11]}]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe2]
set_property port_width 12 [get_debug_ports u_ila_0/probe2]
connect_debug_port u_ila_0/probe2 [get_nets [list {data_out_12b[6][0][0]} {data_out_12b[6][0][1]} {data_out_12b[6][0][2]} {data_out_12b[6][0][3]} {data_out_12b[6][0][4]} {data_out_12b[6][0][5]} {data_out_12b[6][0][6]} {data_out_12b[6][0][7]} {data_out_12b[6][0][8]} {data_out_12b[6][0][9]} {data_out_12b[6][0][10]} {data_out_12b[6][0][11]}]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe3]
set_property port_width 12 [get_debug_ports u_ila_0/probe3]
connect_debug_port u_ila_0/probe3 [get_nets [list {data_out_12b[7][0][0]} {data_out_12b[7][0][1]} {data_out_12b[7][0][2]} {data_out_12b[7][0][3]} {data_out_12b[7][0][4]} {data_out_12b[7][0][5]} {data_out_12b[7][0][6]} {data_out_12b[7][0][7]} {data_out_12b[7][0][8]} {data_out_12b[7][0][9]} {data_out_12b[7][0][10]} {data_out_12b[7][0][11]}]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe4]
set_property port_width 12 [get_debug_ports u_ila_0/probe4]
connect_debug_port u_ila_0/probe4 [get_nets [list {data_out_12b[4][0][0]} {data_out_12b[4][0][1]} {data_out_12b[4][0][2]} {data_out_12b[4][0][3]} {data_out_12b[4][0][4]} {data_out_12b[4][0][5]} {data_out_12b[4][0][6]} {data_out_12b[4][0][7]} {data_out_12b[4][0][8]} {data_out_12b[4][0][9]} {data_out_12b[4][0][10]} {data_out_12b[4][0][11]}]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe5]
set_property port_width 12 [get_debug_ports u_ila_0/probe5]
connect_debug_port u_ila_0/probe5 [get_nets [list {data_out_12b[1][0][0]} {data_out_12b[1][0][1]} {data_out_12b[1][0][2]} {data_out_12b[1][0][3]} {data_out_12b[1][0][4]} {data_out_12b[1][0][5]} {data_out_12b[1][0][6]} {data_out_12b[1][0][7]} {data_out_12b[1][0][8]} {data_out_12b[1][0][9]} {data_out_12b[1][0][10]} {data_out_12b[1][0][11]}]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe6]
set_property port_width 12 [get_debug_ports u_ila_0/probe6]
connect_debug_port u_ila_0/probe6 [get_nets [list {data_out_12b[3][0][0]} {data_out_12b[3][0][1]} {data_out_12b[3][0][2]} {data_out_12b[3][0][3]} {data_out_12b[3][0][4]} {data_out_12b[3][0][5]} {data_out_12b[3][0][6]} {data_out_12b[3][0][7]} {data_out_12b[3][0][8]} {data_out_12b[3][0][9]} {data_out_12b[3][0][10]} {data_out_12b[3][0][11]}]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe7]
set_property port_width 12 [get_debug_ports u_ila_0/probe7]
connect_debug_port u_ila_0/probe7 [get_nets [list {data_out_12b[0][0][0]} {data_out_12b[0][0][1]} {data_out_12b[0][0][2]} {data_out_12b[0][0][3]} {data_out_12b[0][0][4]} {data_out_12b[0][0][5]} {data_out_12b[0][0][6]} {data_out_12b[0][0][7]} {data_out_12b[0][0][8]} {data_out_12b[0][0][9]} {data_out_12b[0][0][10]} {data_out_12b[0][0][11]}]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe8]
set_property port_width 8 [get_debug_ports u_ila_0/probe8]
connect_debug_port u_ila_0/probe8 [get_nets [list {valid_out[0]} {valid_out[1]} {valid_out[2]} {valid_out[3]} {valid_out[4]} {valid_out[5]} {valid_out[6]} {valid_out[7]}]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe9]
set_property port_width 1 [get_debug_ports u_ila_0/probe9]
connect_debug_port u_ila_0/probe9 [get_nets [list be_status]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe10]
set_property port_width 1 [get_debug_ports u_ila_0/probe10]
connect_debug_port u_ila_0/probe10 [get_nets [list cb_status]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe11]
set_property port_width 1 [get_debug_ports u_ila_0/probe11]
connect_debug_port u_ila_0/probe11 [get_nets [list rx_lanes_ready]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe12]
set_property port_width 1 [get_debug_ports u_ila_0/probe12]
connect_debug_port u_ila_0/probe12 [get_nets [list rx_sync_in]]
create_debug_core u_ila_1 ila
set_property ALL_PROBE_SAME_MU true [get_debug_cores u_ila_1]
set_property ALL_PROBE_SAME_MU_CNT 1 [get_debug_cores u_ila_1]
set_property C_ADV_TRIGGER false [get_debug_cores u_ila_1]
set_property C_DATA_DEPTH 1024 [get_debug_cores u_ila_1]
set_property C_EN_STRG_QUAL false [get_debug_cores u_ila_1]
set_property C_INPUT_PIPE_STAGES 2 [get_debug_cores u_ila_1]
set_property C_TRIGIN_EN false [get_debug_cores u_ila_1]
set_property C_TRIGOUT_EN false [get_debug_cores u_ila_1]
set_property port_width 1 [get_debug_ports u_ila_1/clk]
connect_debug_port u_ila_1/clk [get_nets [list i_pll_sys/inst/clk_out1]]
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_1/probe0]
set_property port_width 1 [get_debug_ports u_ila_1/probe0]
connect_debug_port u_ila_1/probe0 [get_nets [list rx_ip_ready]]
set_property C_CLK_INPUT_FREQ_HZ 300000000 [get_debug_cores dbg_hub]
set_property C_ENABLE_CLK_DIVIDER false [get_debug_cores dbg_hub]
set_property C_USER_SCAN_CHAIN 1 [get_debug_cores dbg_hub]
connect_debug_port dbg_hub/clk [get_nets sysclk]
