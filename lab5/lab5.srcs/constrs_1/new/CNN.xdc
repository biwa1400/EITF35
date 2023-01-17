## This file is a general .xdc for the Nexys4 rev B board
## To use it in a project:
## - uncomment the lines corresponding to used pins
## - rename the used ports (in each line, after get_ports) according to the top level signal names in the project

set_property PACKAGE_PIN E3 [get_ports clk]							
set_property IOSTANDARD LVCMOS33 [get_ports clk]
create_clock -add -name clk -period 10.00 -waveform {0 5} [get_ports clk]
       
## LEDs
#Bank = 34, Pin name = IO_L24N_T3_34,						Sch name = LED0
set_property PACKAGE_PIN T8 [get_ports {valid_output_ext_dabin}]					
	set_property IOSTANDARD LVCMOS33 [get_ports {valid_output_ext_dabin}]
	
#Bank = 34, Pin name = IO_L21N_T3_DQS_34,					Sch name = LED1
set_property PACKAGE_PIN V9 [get_ports {output_ext_dabin}]					
	set_property IOSTANDARD LVCMOS33 [get_ports {output_ext_dabin}]


# button
set_property PACKAGE_PIN F15 [get_ports {start_ext}]
        set_property IOSTANDARD LVCMOS33 [get_ports {start_ext}]	
        
set_property PACKAGE_PIN V10 [get_ports {rst}]
        set_property IOSTANDARD LVCMOS33 [get_ports {rst}]	

 
