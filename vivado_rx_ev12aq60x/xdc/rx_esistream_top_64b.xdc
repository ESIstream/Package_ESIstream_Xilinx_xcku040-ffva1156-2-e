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
set_false_path -from [get_clocks rx_usrclk] -to [get_clocks clk_mgtref]
set_false_path -from [get_clocks clk_mgtref] -to [get_clocks rx_usrclk]



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
connect_debug_port u_ila_0/clk [get_nets [list gen_esistream_hdl.rx_esistream_inst/i_rx_xcvr_wrapper/rx_frame_clk]]
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe0]
set_property port_width 12 [get_debug_ports u_ila_0/probe0]
connect_debug_port u_ila_0/probe0 [get_nets [list {data_out_12b[2][1][0]} {data_out_12b[2][1][1]} {data_out_12b[2][1][2]} {data_out_12b[2][1][3]} {data_out_12b[2][1][4]} {data_out_12b[2][1][5]} {data_out_12b[2][1][6]} {data_out_12b[2][1][7]} {data_out_12b[2][1][8]} {data_out_12b[2][1][9]} {data_out_12b[2][1][10]} {data_out_12b[2][1][11]}]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe1]
set_property port_width 12 [get_debug_ports u_ila_0/probe1]
connect_debug_port u_ila_0/probe1 [get_nets [list {data_out_12b[0][0][0]} {data_out_12b[0][0][1]} {data_out_12b[0][0][2]} {data_out_12b[0][0][3]} {data_out_12b[0][0][4]} {data_out_12b[0][0][5]} {data_out_12b[0][0][6]} {data_out_12b[0][0][7]} {data_out_12b[0][0][8]} {data_out_12b[0][0][9]} {data_out_12b[0][0][10]} {data_out_12b[0][0][11]}]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe2]
set_property port_width 12 [get_debug_ports u_ila_0/probe2]
connect_debug_port u_ila_0/probe2 [get_nets [list {data_out_12b[0][1][0]} {data_out_12b[0][1][1]} {data_out_12b[0][1][2]} {data_out_12b[0][1][3]} {data_out_12b[0][1][4]} {data_out_12b[0][1][5]} {data_out_12b[0][1][6]} {data_out_12b[0][1][7]} {data_out_12b[0][1][8]} {data_out_12b[0][1][9]} {data_out_12b[0][1][10]} {data_out_12b[0][1][11]}]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe3]
set_property port_width 12 [get_debug_ports u_ila_0/probe3]
connect_debug_port u_ila_0/probe3 [get_nets [list {data_out_12b[0][2][0]} {data_out_12b[0][2][1]} {data_out_12b[0][2][2]} {data_out_12b[0][2][3]} {data_out_12b[0][2][4]} {data_out_12b[0][2][5]} {data_out_12b[0][2][6]} {data_out_12b[0][2][7]} {data_out_12b[0][2][8]} {data_out_12b[0][2][9]} {data_out_12b[0][2][10]} {data_out_12b[0][2][11]}]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe4]
set_property port_width 12 [get_debug_ports u_ila_0/probe4]
connect_debug_port u_ila_0/probe4 [get_nets [list {data_out_12b[1][0][0]} {data_out_12b[1][0][1]} {data_out_12b[1][0][2]} {data_out_12b[1][0][3]} {data_out_12b[1][0][4]} {data_out_12b[1][0][5]} {data_out_12b[1][0][6]} {data_out_12b[1][0][7]} {data_out_12b[1][0][8]} {data_out_12b[1][0][9]} {data_out_12b[1][0][10]} {data_out_12b[1][0][11]}]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe5]
set_property port_width 12 [get_debug_ports u_ila_0/probe5]
connect_debug_port u_ila_0/probe5 [get_nets [list {data_out_12b[0][3][0]} {data_out_12b[0][3][1]} {data_out_12b[0][3][2]} {data_out_12b[0][3][3]} {data_out_12b[0][3][4]} {data_out_12b[0][3][5]} {data_out_12b[0][3][6]} {data_out_12b[0][3][7]} {data_out_12b[0][3][8]} {data_out_12b[0][3][9]} {data_out_12b[0][3][10]} {data_out_12b[0][3][11]}]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe6]
set_property port_width 12 [get_debug_ports u_ila_0/probe6]
connect_debug_port u_ila_0/probe6 [get_nets [list {data_out_12b[1][1][0]} {data_out_12b[1][1][1]} {data_out_12b[1][1][2]} {data_out_12b[1][1][3]} {data_out_12b[1][1][4]} {data_out_12b[1][1][5]} {data_out_12b[1][1][6]} {data_out_12b[1][1][7]} {data_out_12b[1][1][8]} {data_out_12b[1][1][9]} {data_out_12b[1][1][10]} {data_out_12b[1][1][11]}]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe7]
set_property port_width 12 [get_debug_ports u_ila_0/probe7]
connect_debug_port u_ila_0/probe7 [get_nets [list {data_out_12b[1][2][0]} {data_out_12b[1][2][1]} {data_out_12b[1][2][2]} {data_out_12b[1][2][3]} {data_out_12b[1][2][4]} {data_out_12b[1][2][5]} {data_out_12b[1][2][6]} {data_out_12b[1][2][7]} {data_out_12b[1][2][8]} {data_out_12b[1][2][9]} {data_out_12b[1][2][10]} {data_out_12b[1][2][11]}]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe8]
set_property port_width 12 [get_debug_ports u_ila_0/probe8]
connect_debug_port u_ila_0/probe8 [get_nets [list {data_out_12b[1][3][0]} {data_out_12b[1][3][1]} {data_out_12b[1][3][2]} {data_out_12b[1][3][3]} {data_out_12b[1][3][4]} {data_out_12b[1][3][5]} {data_out_12b[1][3][6]} {data_out_12b[1][3][7]} {data_out_12b[1][3][8]} {data_out_12b[1][3][9]} {data_out_12b[1][3][10]} {data_out_12b[1][3][11]}]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe9]
set_property port_width 12 [get_debug_ports u_ila_0/probe9]
connect_debug_port u_ila_0/probe9 [get_nets [list {data_out_12b[2][0][0]} {data_out_12b[2][0][1]} {data_out_12b[2][0][2]} {data_out_12b[2][0][3]} {data_out_12b[2][0][4]} {data_out_12b[2][0][5]} {data_out_12b[2][0][6]} {data_out_12b[2][0][7]} {data_out_12b[2][0][8]} {data_out_12b[2][0][9]} {data_out_12b[2][0][10]} {data_out_12b[2][0][11]}]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe10]
set_property port_width 12 [get_debug_ports u_ila_0/probe10]
connect_debug_port u_ila_0/probe10 [get_nets [list {data_out_12b[3][2][0]} {data_out_12b[3][2][1]} {data_out_12b[3][2][2]} {data_out_12b[3][2][3]} {data_out_12b[3][2][4]} {data_out_12b[3][2][5]} {data_out_12b[3][2][6]} {data_out_12b[3][2][7]} {data_out_12b[3][2][8]} {data_out_12b[3][2][9]} {data_out_12b[3][2][10]} {data_out_12b[3][2][11]}]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe11]
set_property port_width 12 [get_debug_ports u_ila_0/probe11]
connect_debug_port u_ila_0/probe11 [get_nets [list {data_out_12b[3][3][0]} {data_out_12b[3][3][1]} {data_out_12b[3][3][2]} {data_out_12b[3][3][3]} {data_out_12b[3][3][4]} {data_out_12b[3][3][5]} {data_out_12b[3][3][6]} {data_out_12b[3][3][7]} {data_out_12b[3][3][8]} {data_out_12b[3][3][9]} {data_out_12b[3][3][10]} {data_out_12b[3][3][11]}]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe12]
set_property port_width 12 [get_debug_ports u_ila_0/probe12]
connect_debug_port u_ila_0/probe12 [get_nets [list {data_out_12b[4][1][0]} {data_out_12b[4][1][1]} {data_out_12b[4][1][2]} {data_out_12b[4][1][3]} {data_out_12b[4][1][4]} {data_out_12b[4][1][5]} {data_out_12b[4][1][6]} {data_out_12b[4][1][7]} {data_out_12b[4][1][8]} {data_out_12b[4][1][9]} {data_out_12b[4][1][10]} {data_out_12b[4][1][11]}]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe13]
set_property port_width 12 [get_debug_ports u_ila_0/probe13]
connect_debug_port u_ila_0/probe13 [get_nets [list {data_out_12b[3][0][0]} {data_out_12b[3][0][1]} {data_out_12b[3][0][2]} {data_out_12b[3][0][3]} {data_out_12b[3][0][4]} {data_out_12b[3][0][5]} {data_out_12b[3][0][6]} {data_out_12b[3][0][7]} {data_out_12b[3][0][8]} {data_out_12b[3][0][9]} {data_out_12b[3][0][10]} {data_out_12b[3][0][11]}]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe14]
set_property port_width 12 [get_debug_ports u_ila_0/probe14]
connect_debug_port u_ila_0/probe14 [get_nets [list {data_out_12b[4][2][0]} {data_out_12b[4][2][1]} {data_out_12b[4][2][2]} {data_out_12b[4][2][3]} {data_out_12b[4][2][4]} {data_out_12b[4][2][5]} {data_out_12b[4][2][6]} {data_out_12b[4][2][7]} {data_out_12b[4][2][8]} {data_out_12b[4][2][9]} {data_out_12b[4][2][10]} {data_out_12b[4][2][11]}]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe15]
set_property port_width 12 [get_debug_ports u_ila_0/probe15]
connect_debug_port u_ila_0/probe15 [get_nets [list {data_out_12b[4][3][0]} {data_out_12b[4][3][1]} {data_out_12b[4][3][2]} {data_out_12b[4][3][3]} {data_out_12b[4][3][4]} {data_out_12b[4][3][5]} {data_out_12b[4][3][6]} {data_out_12b[4][3][7]} {data_out_12b[4][3][8]} {data_out_12b[4][3][9]} {data_out_12b[4][3][10]} {data_out_12b[4][3][11]}]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe16]
set_property port_width 12 [get_debug_ports u_ila_0/probe16]
connect_debug_port u_ila_0/probe16 [get_nets [list {data_out_12b[5][0][0]} {data_out_12b[5][0][1]} {data_out_12b[5][0][2]} {data_out_12b[5][0][3]} {data_out_12b[5][0][4]} {data_out_12b[5][0][5]} {data_out_12b[5][0][6]} {data_out_12b[5][0][7]} {data_out_12b[5][0][8]} {data_out_12b[5][0][9]} {data_out_12b[5][0][10]} {data_out_12b[5][0][11]}]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe17]
set_property port_width 12 [get_debug_ports u_ila_0/probe17]
connect_debug_port u_ila_0/probe17 [get_nets [list {data_out_12b[5][2][0]} {data_out_12b[5][2][1]} {data_out_12b[5][2][2]} {data_out_12b[5][2][3]} {data_out_12b[5][2][4]} {data_out_12b[5][2][5]} {data_out_12b[5][2][6]} {data_out_12b[5][2][7]} {data_out_12b[5][2][8]} {data_out_12b[5][2][9]} {data_out_12b[5][2][10]} {data_out_12b[5][2][11]}]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe18]
set_property port_width 12 [get_debug_ports u_ila_0/probe18]
connect_debug_port u_ila_0/probe18 [get_nets [list {data_out_12b[5][3][0]} {data_out_12b[5][3][1]} {data_out_12b[5][3][2]} {data_out_12b[5][3][3]} {data_out_12b[5][3][4]} {data_out_12b[5][3][5]} {data_out_12b[5][3][6]} {data_out_12b[5][3][7]} {data_out_12b[5][3][8]} {data_out_12b[5][3][9]} {data_out_12b[5][3][10]} {data_out_12b[5][3][11]}]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe19]
set_property port_width 12 [get_debug_ports u_ila_0/probe19]
connect_debug_port u_ila_0/probe19 [get_nets [list {data_out_12b[6][0][0]} {data_out_12b[6][0][1]} {data_out_12b[6][0][2]} {data_out_12b[6][0][3]} {data_out_12b[6][0][4]} {data_out_12b[6][0][5]} {data_out_12b[6][0][6]} {data_out_12b[6][0][7]} {data_out_12b[6][0][8]} {data_out_12b[6][0][9]} {data_out_12b[6][0][10]} {data_out_12b[6][0][11]}]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe20]
set_property port_width 12 [get_debug_ports u_ila_0/probe20]
connect_debug_port u_ila_0/probe20 [get_nets [list {data_out_12b[5][1][0]} {data_out_12b[5][1][1]} {data_out_12b[5][1][2]} {data_out_12b[5][1][3]} {data_out_12b[5][1][4]} {data_out_12b[5][1][5]} {data_out_12b[5][1][6]} {data_out_12b[5][1][7]} {data_out_12b[5][1][8]} {data_out_12b[5][1][9]} {data_out_12b[5][1][10]} {data_out_12b[5][1][11]}]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe21]
set_property port_width 12 [get_debug_ports u_ila_0/probe21]
connect_debug_port u_ila_0/probe21 [get_nets [list {data_out_12b[6][1][0]} {data_out_12b[6][1][1]} {data_out_12b[6][1][2]} {data_out_12b[6][1][3]} {data_out_12b[6][1][4]} {data_out_12b[6][1][5]} {data_out_12b[6][1][6]} {data_out_12b[6][1][7]} {data_out_12b[6][1][8]} {data_out_12b[6][1][9]} {data_out_12b[6][1][10]} {data_out_12b[6][1][11]}]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe22]
set_property port_width 12 [get_debug_ports u_ila_0/probe22]
connect_debug_port u_ila_0/probe22 [get_nets [list {data_out_12b[2][2][0]} {data_out_12b[2][2][1]} {data_out_12b[2][2][2]} {data_out_12b[2][2][3]} {data_out_12b[2][2][4]} {data_out_12b[2][2][5]} {data_out_12b[2][2][6]} {data_out_12b[2][2][7]} {data_out_12b[2][2][8]} {data_out_12b[2][2][9]} {data_out_12b[2][2][10]} {data_out_12b[2][2][11]}]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe23]
set_property port_width 12 [get_debug_ports u_ila_0/probe23]
connect_debug_port u_ila_0/probe23 [get_nets [list {data_out_12b[3][1][0]} {data_out_12b[3][1][1]} {data_out_12b[3][1][2]} {data_out_12b[3][1][3]} {data_out_12b[3][1][4]} {data_out_12b[3][1][5]} {data_out_12b[3][1][6]} {data_out_12b[3][1][7]} {data_out_12b[3][1][8]} {data_out_12b[3][1][9]} {data_out_12b[3][1][10]} {data_out_12b[3][1][11]}]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe24]
set_property port_width 12 [get_debug_ports u_ila_0/probe24]
connect_debug_port u_ila_0/probe24 [get_nets [list {data_out_12b[4][0][0]} {data_out_12b[4][0][1]} {data_out_12b[4][0][2]} {data_out_12b[4][0][3]} {data_out_12b[4][0][4]} {data_out_12b[4][0][5]} {data_out_12b[4][0][6]} {data_out_12b[4][0][7]} {data_out_12b[4][0][8]} {data_out_12b[4][0][9]} {data_out_12b[4][0][10]} {data_out_12b[4][0][11]}]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe25]
set_property port_width 12 [get_debug_ports u_ila_0/probe25]
connect_debug_port u_ila_0/probe25 [get_nets [list {data_out_12b[2][3][0]} {data_out_12b[2][3][1]} {data_out_12b[2][3][2]} {data_out_12b[2][3][3]} {data_out_12b[2][3][4]} {data_out_12b[2][3][5]} {data_out_12b[2][3][6]} {data_out_12b[2][3][7]} {data_out_12b[2][3][8]} {data_out_12b[2][3][9]} {data_out_12b[2][3][10]} {data_out_12b[2][3][11]}]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe26]
set_property port_width 12 [get_debug_ports u_ila_0/probe26]
connect_debug_port u_ila_0/probe26 [get_nets [list {data_out_12b[7][1][0]} {data_out_12b[7][1][1]} {data_out_12b[7][1][2]} {data_out_12b[7][1][3]} {data_out_12b[7][1][4]} {data_out_12b[7][1][5]} {data_out_12b[7][1][6]} {data_out_12b[7][1][7]} {data_out_12b[7][1][8]} {data_out_12b[7][1][9]} {data_out_12b[7][1][10]} {data_out_12b[7][1][11]}]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe27]
set_property port_width 12 [get_debug_ports u_ila_0/probe27]
connect_debug_port u_ila_0/probe27 [get_nets [list {data_out_12b[7][3][0]} {data_out_12b[7][3][1]} {data_out_12b[7][3][2]} {data_out_12b[7][3][3]} {data_out_12b[7][3][4]} {data_out_12b[7][3][5]} {data_out_12b[7][3][6]} {data_out_12b[7][3][7]} {data_out_12b[7][3][8]} {data_out_12b[7][3][9]} {data_out_12b[7][3][10]} {data_out_12b[7][3][11]}]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe28]
set_property port_width 12 [get_debug_ports u_ila_0/probe28]
connect_debug_port u_ila_0/probe28 [get_nets [list {data_out_12b[7][0][0]} {data_out_12b[7][0][1]} {data_out_12b[7][0][2]} {data_out_12b[7][0][3]} {data_out_12b[7][0][4]} {data_out_12b[7][0][5]} {data_out_12b[7][0][6]} {data_out_12b[7][0][7]} {data_out_12b[7][0][8]} {data_out_12b[7][0][9]} {data_out_12b[7][0][10]} {data_out_12b[7][0][11]}]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe29]
set_property port_width 12 [get_debug_ports u_ila_0/probe29]
connect_debug_port u_ila_0/probe29 [get_nets [list {data_out_12b[6][3][0]} {data_out_12b[6][3][1]} {data_out_12b[6][3][2]} {data_out_12b[6][3][3]} {data_out_12b[6][3][4]} {data_out_12b[6][3][5]} {data_out_12b[6][3][6]} {data_out_12b[6][3][7]} {data_out_12b[6][3][8]} {data_out_12b[6][3][9]} {data_out_12b[6][3][10]} {data_out_12b[6][3][11]}]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe30]
set_property port_width 12 [get_debug_ports u_ila_0/probe30]
connect_debug_port u_ila_0/probe30 [get_nets [list {data_out_12b[6][2][0]} {data_out_12b[6][2][1]} {data_out_12b[6][2][2]} {data_out_12b[6][2][3]} {data_out_12b[6][2][4]} {data_out_12b[6][2][5]} {data_out_12b[6][2][6]} {data_out_12b[6][2][7]} {data_out_12b[6][2][8]} {data_out_12b[6][2][9]} {data_out_12b[6][2][10]} {data_out_12b[6][2][11]}]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe31]
set_property port_width 12 [get_debug_ports u_ila_0/probe31]
connect_debug_port u_ila_0/probe31 [get_nets [list {data_out_12b[7][2][0]} {data_out_12b[7][2][1]} {data_out_12b[7][2][2]} {data_out_12b[7][2][3]} {data_out_12b[7][2][4]} {data_out_12b[7][2][5]} {data_out_12b[7][2][6]} {data_out_12b[7][2][7]} {data_out_12b[7][2][8]} {data_out_12b[7][2][9]} {data_out_12b[7][2][10]} {data_out_12b[7][2][11]}]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe32]
set_property port_width 8 [get_debug_ports u_ila_0/probe32]
connect_debug_port u_ila_0/probe32 [get_nets [list {valid_out[0]} {valid_out[1]} {valid_out[2]} {valid_out[3]} {valid_out[4]} {valid_out[5]} {valid_out[6]} {valid_out[7]}]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe33]
set_property port_width 1 [get_debug_ports u_ila_0/probe33]
connect_debug_port u_ila_0/probe33 [get_nets [list be_status]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe34]
set_property port_width 1 [get_debug_ports u_ila_0/probe34]
connect_debug_port u_ila_0/probe34 [get_nets [list cb_status]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe35]
set_property port_width 1 [get_debug_ports u_ila_0/probe35]
connect_debug_port u_ila_0/probe35 [get_nets [list rx_lanes_ready]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe36]
set_property port_width 1 [get_debug_ports u_ila_0/probe36]
connect_debug_port u_ila_0/probe36 [get_nets [list rx_sync_in]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe37]
set_property port_width 1 [get_debug_ports u_ila_0/probe37]
connect_debug_port u_ila_0/probe37 [get_nets [list valid_status]]
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
connect_debug_port u_ila_1/clk [get_nets [list {gen_esistream_hdl.rx_esistream_inst/i_rx_xcvr_wrapper/gth_8lanes_64b_1/inst/gen_gtwizard_gthe3_top.gth_8lanes_64b_gtwizard_gthe3_inst/gen_gtwizard_gthe3.gen_rx_user_clocking_internal.gen_single_instance.gtwiz_userclk_rx_inst/gtwiz_userclk_rx_usrclk2_out[0]}]]
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_1/probe0]
set_property port_width 1 [get_debug_ports u_ila_1/probe0]
connect_debug_port u_ila_1/probe0 [get_nets [list rx_ip_ready]]
set_property C_CLK_INPUT_FREQ_HZ 300000000 [get_debug_cores dbg_hub]
set_property C_ENABLE_CLK_DIVIDER false [get_debug_cores dbg_hub]
set_property C_USER_SCAN_CHAIN 1 [get_debug_cores dbg_hub]
connect_debug_port dbg_hub/clk [get_nets u_ila_1_gtwiz_userclk_rx_usrclk2_out[0]]
