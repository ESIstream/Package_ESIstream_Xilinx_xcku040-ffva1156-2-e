create_clock -period 5.000 -name clk_mgtref -waveform {0.000 2.500} [get_ports sso_p]

set_property PACKAGE_PIN K5 [get_ports sso_n]
set_property PACKAGE_PIN K6 [get_ports sso_p]

set_property PACKAGE_PIN M2 [get_ports {rxp[0]}]
set_property PACKAGE_PIN M1 [get_ports {rxn[0]}]
set_property PACKAGE_PIN K2 [get_ports {rxp[1]}]
set_property PACKAGE_PIN K1 [get_ports {rxn[1]}]
set_property PACKAGE_PIN H2 [get_ports {rxp[2]}]
set_property PACKAGE_PIN H1 [get_ports {rxn[2]}]
set_property PACKAGE_PIN F2 [get_ports {rxp[3]}]
set_property PACKAGE_PIN F1 [get_ports {rxn[3]}]
set_property PACKAGE_PIN E4 [get_ports {rxp[4]}]
set_property PACKAGE_PIN E3 [get_ports {rxn[4]}]
set_property PACKAGE_PIN D2 [get_ports {rxp[5]}]
set_property PACKAGE_PIN D1 [get_ports {rxn[5]}]
set_property PACKAGE_PIN B2 [get_ports {rxp[6]}]
set_property PACKAGE_PIN B1 [get_ports {rxn[6]}]
set_property PACKAGE_PIN A4 [get_ports {rxp[7]}]
set_property PACKAGE_PIN A3 [get_ports {rxn[7]}]

# PL system clock:
set_property IOSTANDARD LVDS [get_ports CLK_125MHZ_P]
set_property PACKAGE_PIN G10 [get_ports CLK_125MHZ_P]
set_property PACKAGE_PIN F10 [get_ports CLK_125MHZ_N]

create_clock -period 8.000 -name CLK_125MHZ_P [get_ports CLK_125MHZ_P]

set_property IOSTANDARD LVCMOS18 [get_ports {m2c_cfg[*]}]
set_property PACKAGE_PIN G24 [get_ports {m2c_cfg[1]}]
set_property PACKAGE_PIN F25 [get_ports {m2c_cfg[2]}]
set_property PACKAGE_PIN D20 [get_ports {m2c_cfg[3]}]
set_property PACKAGE_PIN D21 [get_ports {m2c_cfg[4]}]

set_property IOSTANDARD LVCMOS18 [get_ports {c2m_led[*]}]
set_property PACKAGE_PIN D8 [get_ports {c2m_led[1]}]
set_property PACKAGE_PIN C8 [get_ports {c2m_led[2]}]
set_property PACKAGE_PIN C21 [get_ports {c2m_led[3]}]
set_property PACKAGE_PIN C22 [get_ports {c2m_led[4]}]

set_property IOSTANDARD LVCMOS18 [get_ports spare_8_uart_tx]
set_property PACKAGE_PIN L8 [get_ports spare_8_uart_tx]
set_property IOSTANDARD LVCMOS18 [get_ports spare_9_uart_rx]
set_property PACKAGE_PIN A10 [get_ports spare_9_uart_rx]

set_property IOSTANDARD LVCMOS18 [get_ports {spare[*]}]
set_property PACKAGE_PIN J11 [get_ports {spare[1]}]
set_property PACKAGE_PIN D10 [get_ports {spare[2]}]
set_property PACKAGE_PIN E8 [get_ports {spare[3]}]
set_property PACKAGE_PIN F8 [get_ports {spare[4]}]
set_property PACKAGE_PIN A9 [get_ports {spare[5]}]
set_property PACKAGE_PIN J9 [get_ports {spare[6]}]
set_property PACKAGE_PIN D13 [get_ports {spare[7]}]

set_property IOSTANDARD LVCMOS18 [get_ports fpga_ref_clk]
set_property PACKAGE_PIN H11 [get_ports fpga_ref_clk]

set_property IOSTANDARD LVCMOS18 [get_ports ref_sel_ext]
set_property PACKAGE_PIN A13 [get_ports ref_sel_ext]

set_property IOSTANDARD LVCMOS18 [get_ports ref_sel]
set_property PACKAGE_PIN A12 [get_ports ref_sel]

set_property IOSTANDARD LVCMOS18 [get_ports clk_sel]
set_property PACKAGE_PIN J8 [get_ports clk_sel]

set_property IOSTANDARD LVCMOS18 [get_ports synco_sel]
set_property PACKAGE_PIN H8 [get_ports synco_sel]

set_property IOSTANDARD LVCMOS18 [get_ports sync_sel]
set_property PACKAGE_PIN E10 [get_ports sync_sel]

set_property IOSTANDARD LVCMOS18 [get_ports hmc1031_d1]
set_property PACKAGE_PIN L13 [get_ports hmc1031_d1]

set_property IOSTANDARD LVCMOS18 [get_ports hmc1031_d0]
set_property PACKAGE_PIN K13 [get_ports hmc1031_d0]

set_property IOSTANDARD LVCMOS18 [get_ports pll_muxout]
set_property PACKAGE_PIN B9 [get_ports pll_muxout]

set_property IOSTANDARD LVDS [get_ports clkoutB_p]
set_property PACKAGE_PIN D24 [get_ports clkoutB_p]
set_property PACKAGE_PIN C24 [get_ports clkoutB_n]

set_property IOSTANDARD LVCMOS18 [get_ports rstn]
set_property PACKAGE_PIN K8 [get_ports rstn]

set_property IOSTANDARD LVCMOS18 [get_ports adc_sclk]
set_property PACKAGE_PIN G9 [get_ports adc_sclk]

set_property IOSTANDARD LVCMOS18 [get_ports adc_cs_u]
set_property PACKAGE_PIN H9 [get_ports adc_cs_u]

set_property IOSTANDARD LVCMOS18 [get_ports adc_mosi]
set_property PACKAGE_PIN C9 [get_ports adc_mosi]

set_property IOSTANDARD LVCMOS18 [get_ports adc_miso]
set_property PACKAGE_PIN D9 [get_ports adc_miso]

set_property IOSTANDARD LVCMOS18 [get_ports csn_pll]
set_property PACKAGE_PIN K11 [get_ports csn_pll]

set_property IOSTANDARD LVCMOS18 [get_ports sclk]
set_property PACKAGE_PIN B10 [get_ports sclk]

set_property IOSTANDARD LVCMOS18 [get_ports miso]
set_property PACKAGE_PIN C13 [get_ports miso]

set_property IOSTANDARD LVCMOS18 [get_ports mosi]
set_property PACKAGE_PIN A24 [get_ports mosi]

set_property IOSTANDARD LVCMOS18 [get_ports csn]
set_property PACKAGE_PIN B24 [get_ports csn]

set_property IOSTANDARD LVDS [get_ports synctrig_p]
set_property PACKAGE_PIN L12 [get_ports synctrig_p]
set_property PACKAGE_PIN K12 [get_ports synctrig_n]

set_property IOSTANDARD LVDS [get_ports synco_p]
set_property PACKAGE_PIN B21 [get_ports synco_p]
set_property PACKAGE_PIN B22 [get_ports synco_n]

#set_false_path -from [get_clocks {rxoutclk_out[3]_1}] -to [get_clocks clk_out1_clk_wiz_0]
#set_false_path -from [get_clocks clk_out1_clk_wiz_0] -to [get_clocks {rxoutclk_out[3]_1}]
#set_false_path -from [get_clocks clk_out1_clk_wiz_frame_clk] -to [get_clocks clk_out1_clk_wiz_0]
#set_false_path -from [get_clocks clk_out1_clk_wiz_0] -to [get_clocks clk_out1_clk_wiz_frame_clk]
#set_false_path -from [get_clocks {rxoutclk_out[3]_1}] -to [get_clocks clk_out1_clk_wiz_frame_clk]
#set_false_path -from [get_clocks clk_out1_clk_wiz_frame_clk] -to [get_clocks {rxoutclk_out[3]_1}]

set_false_path -from [get_clocks rx_usrclk] -to [get_clocks clk_out1_clk_wiz_0]
set_false_path -from [get_clocks clk_out1_clk_wiz_0] -to [get_clocks rx_usrclk]
set_false_path -from [get_clocks clk_mgtref] -to [get_clocks clk_out1_clk_wiz_0]
set_false_path -from [get_clocks clk_out1_clk_wiz_0] -to [get_clocks clk_mgtref]
#set_false_path -from [get_clocks rx_usrclk] -to [get_clocks clk_mgtref]
#set_false_path -from [get_clocks clk_mgtref] -to [get_clocks rx_usrclk]
