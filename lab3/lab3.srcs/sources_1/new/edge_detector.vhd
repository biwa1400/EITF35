library ieee;
use ieee.numeric_std.all;
use ieee.std_logic_1164.all;


entity edge_detector is
    port (
	     clk          : in std_logic;
	     reset        : in std_logic;
	     pulse_input  : in std_logic;
	     edge_rise_found   : out std_logic;
	     edge_fall_found   : out std_logic
	 );
end edge_detector;


architecture edge_detector_arch of edge_detector is
    signal level_before_edge:std_logic;
    signal level_after_edge:std_logic;

begin
    registers: process (clk, reset)
    begin
        if reset = '1' then
            level_before_edge <= '0';
            level_after_edge <= '0';
        elsif rising_edge(clk) then
            level_after_edge <= pulse_input;
            level_before_edge <= level_after_edge;
        end if;
    end process;
    
    edge_rise_found <= (not level_before_edge) and level_after_edge;
    edge_fall_found  <= level_before_edge and (not level_after_edge);

end edge_detector_arch;
