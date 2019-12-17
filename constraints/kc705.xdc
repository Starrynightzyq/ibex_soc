# kc705 xdc

## Clock signal
set_property -dict {PACKAGE_PIN AD12 IOSTANDARD LVDS} [get_ports IO_CLK_P]
set_property -dict {PACKAGE_PIN AD11 IOSTANDARD LVDS} [get_ports IO_CLK_N]
create_clock -period 5.000 -name sys_clk_pin -waveform {0.000 2.500} -add [get_ports IO_CLK_P]

create_generated_clock -name mcu_clk [get_pins clkgen/u_mmcm/inst/mmcm_adv_inst/CLKOUT0]

## LEDs
# set_property -dict {PACKAGE_PIN AB8 IOSTANDARD LVCMOS18} [get_ports {LED[0]}]
# set_property -dict {PACKAGE_PIN AA8 IOSTANDARD LVCMOS18} [get_ports {LED[1]}]
# set_property -dict {PACKAGE_PIN AC9 IOSTANDARD LVCMOS18} [get_ports {LED[2]}]
# set_property -dict {PACKAGE_PIN AB9 IOSTANDARD LVCMOS18} [get_ports {LED[3]}]

# Button
set_property -dict {PACKAGE_PIN AB7 IOSTANDARD LVCMOS18} [get_ports {IO_RST_P}];

# UART
set_property -dict {PACKAGE_PIN F17 IOSTANDARD LVCMOS25} [get_ports uart_tx_o]
set_property -dict {PACKAGE_PIN G17 IOSTANDARD LVCMOS25} [get_ports uart_rx_i]

