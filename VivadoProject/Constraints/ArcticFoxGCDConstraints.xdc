##12 MHz System Clock
set_property -dict { PACKAGE_PIN M9    IOSTANDARD LVCMOS33 } [get_ports { clk }]; #IO_L13P_T2_MRCC_14 Sch=gclk
create_clock -add -name sys_clk_pin -period 83.33 -waveform {0 41.66} [get_ports { clk }];

##Reset Button - Button 0
set_property -dict { PACKAGE_PIN D2    IOSTANDARD LVCMOS33 } [get_ports reset]

##UART
set_property -dict { PACKAGE_PIN L12   IOSTANDARD LVCMOS33 } [get_ports { pcTx }]; #IO_L15P_T2_DQS_RDWR_B_14 Sch=uart_rx_out
set_property -dict { PACKAGE_PIN K15   IOSTANDARD LVCMOS33 } [get_ports { pcRx }]; #IO_L14P_T2_SRCC_14 Sch=uart_tx_in