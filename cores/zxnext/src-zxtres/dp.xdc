## Clock Signal
#create_clock -period 7.407 -name dp_refclk -waveform {0.000 3.704} -add [get_ports dp_refclk_p]
#create_clock -period 12.34568 -name tx_symbol_clk -add [get_pins -filter {REF_PIN_NAME=~TXOUTCLK} -of_objects [get_cells -hierarchical -filter {NAME =~ *gt*}]]

## Display Port
#set_property -dict {PACKAGE_PIN B4} [get_ports dp_tx_lane_p_o]
#set_property -dict {PACKAGE_PIN A4} [get_ports dp_tx_lane_n_o]

#set_property -dict {PACKAGE_PIN F6} [get_ports dp_refclk_p_i]
#set_property -dict {PACKAGE_PIN E6} [get_ports dp_refclk_n_i]

#set_property -dict {PACKAGE_PIN A15 IOSTANDARD LVDS_25} [get_ports dp_tx_auxch_tx_p_io]
#set_property -dict {PACKAGE_PIN A16 IOSTANDARD LVDS_25} [get_ports dp_tx_auxch_tx_n_io]
#set_property -dict {PACKAGE_PIN A14 IOSTANDARD LVDS_25} [get_ports dp_tx_auxch_rx_n_io]
#set_property -dict {PACKAGE_PIN A13 IOSTANDARD LVDS_25} [get_ports dp_tx_auxch_rx_p_io]

#set_property -dict {PACKAGE_PIN A1 IOSTANDARD LVTTL} [get_ports dp_tx_hp_detect_i]

