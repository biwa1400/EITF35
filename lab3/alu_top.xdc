## This file is a general .xdc for the Nexys4 rev B board
## To use it in a project:
## - uncomment the lines corresponding to used pins
## - rename the used ports (in each line, after get_ports) according to the top level signal names in the project

set_property PACKAGE_PIN E3 [get_ports clk]							
set_property IOSTANDARD LVCMOS33 [get_ports clk]
create_clock -add -name clk -period 10.00 -waveform {0 5} [get_ports clk]

# reset
#set_property PACKAGE_PIN U9 [get_ports {reset}]
#        set_property IOSTANDARD LVCMOS33 [get_ports {reset}]	

##7 segment display
#Bank = 34, Pin name = IO_L2N_T0_34,						Sch name = CA
set_property PACKAGE_PIN L3 [get_ports {seven_seg[0]}]					
	set_property IOSTANDARD LVCMOS33 [get_ports {seven_seg[0]}]
#Bank = 34, Pin name = IO_L3N_T0_DQS_34,					Sch name = CB
set_property PACKAGE_PIN N1 [get_ports {seven_seg[1]}]					
	set_property IOSTANDARD LVCMOS33 [get_ports {seven_seg[1]}]
#Bank = 34, Pin name = IO_L6N_T0_VREF_34,					Sch name = CC
set_property PACKAGE_PIN L5 [get_ports {seven_seg[2]}]					
	set_property IOSTANDARD LVCMOS33 [get_ports {seven_seg[2]}]
#Bank = 34, Pin name = IO_L5N_T0_34,						Sch name = CD
set_property PACKAGE_PIN L4 [get_ports {seven_seg[3]}]					
	set_property IOSTANDARD LVCMOS33 [get_ports {seven_seg[3]}]
#Bank = 34, Pin name = IO_L2P_T0_34,						Sch name = CE
set_property PACKAGE_PIN K3 [get_ports {seven_seg[4]}]					
	set_property IOSTANDARD LVCMOS33 [get_ports {seven_seg[4]}]
#Bank = 34, Pin name = IO_L4N_T0_34,						Sch name = CF
set_property PACKAGE_PIN M2 [get_ports {seven_seg[5]}]					
	set_property IOSTANDARD LVCMOS33 [get_ports {seven_seg[5]}]
#Bank = 34, Pin name = IO_L6P_T0_34,						Sch name = CG
set_property PACKAGE_PIN L6 [get_ports {seven_seg[6]}]					
	set_property IOSTANDARD LVCMOS33 [get_ports {seven_seg[6]}]
#Bank = 34, Pin name = IO_L16P_T2_34,						Sch name = DP
set_property PACKAGE_PIN M4 [get_ports seven_seg[7]]							
	set_property IOSTANDARD LVCMOS33 [get_ports seven_seg[7]]

#Bank = 34, Pin name = IO_L18N_T2_34,						Sch name = AN0
set_property PACKAGE_PIN N6 [get_ports {anode[0]}]					
	set_property IOSTANDARD LVCMOS33 [get_ports {anode[0]}]
#Bank = 34, Pin name = IO_L18P_T2_34,						Sch name = AN1
set_property PACKAGE_PIN M6 [get_ports {anode[1]}]					
	set_property IOSTANDARD LVCMOS33 [get_ports {anode[1]}]
#Bank = 34, Pin name = IO_L4P_T0_34,						Sch name = AN2
set_property PACKAGE_PIN M3 [get_ports {anode[2]}]					
	set_property IOSTANDARD LVCMOS33 [get_ports {anode[2]}]
#Bank = 34, Pin name = IO_L13_T2_MRCC_34,					Sch name = AN3
set_property PACKAGE_PIN N5 [get_ports {anode[3]}]					
	set_property IOSTANDARD LVCMOS33 [get_ports {anode[3]}]

# SWITCH
set_property PACKAGE_PIN U8 [get_ports {input[0]}]
        set_property IOSTANDARD LVCMOS33 [get_ports {input[0]}]
set_property PACKAGE_PIN R7 [get_ports {input[1]}]
        set_property IOSTANDARD LVCMOS33 [get_ports {input[1]}]	
set_property PACKAGE_PIN R6 [get_ports {input[2]}]
        set_property IOSTANDARD LVCMOS33 [get_ports {input[2]}]	
set_property PACKAGE_PIN R5 [get_ports {input[3]}]
        set_property IOSTANDARD LVCMOS33 [get_ports {input[3]}]	
set_property PACKAGE_PIN V7 [get_ports {input[4]}]
        set_property IOSTANDARD LVCMOS33 [get_ports {input[4]}]	
set_property PACKAGE_PIN V6 [get_ports {input[5]}]
        set_property IOSTANDARD LVCMOS33 [get_ports {input[5]}]	
set_property PACKAGE_PIN V5 [get_ports {input[6]}]
        set_property IOSTANDARD LVCMOS33 [get_ports {input[6]}]	
set_property PACKAGE_PIN U4 [get_ports {input[7]}]
        set_property IOSTANDARD LVCMOS33 [get_ports {input[7]}]	
         
## LEDs
#Bank = 34, Pin name = IO_L24N_T3_34,						Sch name = LED0
set_property PACKAGE_PIN T8 [get_ports {led_input_A}]					
	set_property IOSTANDARD LVCMOS33 [get_ports {led_input_A}]
#Bank = 34, Pin name = IO_L21N_T3_DQS_34,					Sch name = LED1
set_property PACKAGE_PIN V9 [get_ports {led_input_B}]					
	set_property IOSTANDARD LVCMOS33 [get_ports {led_input_B}]
#Bank = 34, Pin name = IO_L24P_T3_34,						Sch name = LED2
set_property PACKAGE_PIN R8 [get_ports {led_add}]					
	set_property IOSTANDARD LVCMOS33 [get_ports {led_add}]
#Bank = 34, Pin name = IO_L23N_T3_34,						Sch name = LED3
set_property PACKAGE_PIN T6 [get_ports {led_sub}]					
	set_property IOSTANDARD LVCMOS33 [get_ports {led_sub}]
#Bank = 34, Pin name = IO_L12P_T1_MRCC_34,					Sch name = LED4
set_property PACKAGE_PIN T5 [get_ports {led_mod3}]					
	set_property IOSTANDARD LVCMOS33 [get_ports {led_mod3}]


#Bank = 34, Pin name = IO_L22N_T3_34,						Sch name = LED7
set_property PACKAGE_PIN U6 [get_ports {led_signed}]					
	set_property IOSTANDARD LVCMOS33 [get_ports {led_signed}]

# button
set_property PACKAGE_PIN E16 [get_ports {b_Enter}]
        set_property IOSTANDARD LVCMOS33 [get_ports {b_Enter}]	
set_property PACKAGE_PIN F15 [get_ports {b_Sign}]
        set_property IOSTANDARD LVCMOS33 [get_ports {b_Sign}]	
        
set_property PACKAGE_PIN V10 [get_ports {reset}]
        set_property IOSTANDARD LVCMOS33 [get_ports {reset}]	

 
