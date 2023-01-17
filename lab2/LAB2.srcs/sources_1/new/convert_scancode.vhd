-------------------------------------------------------------------------------
-- Title      : convert_scancode.vhd 
-- Project    : Keyboard VLSI Lab
-------------------------------------------------------------------------------
-------------------------------------------------------------------------------
-- Description: 
-- 		        Implement a shift register to convert serial to parallel
-- 		        A counter to flag when the valid code is shifted in
--
-------------------------------------------------------------------------------


library ieee;                
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;


entity convert_scancode is
    port (
	     clk : in std_logic;
	     rst_n : in std_logic;
	     edge_found : in std_logic;
	     serial_data : in std_logic;
	     valid_scan_code : out std_logic;
	     scan_code_out : out unsigned(7 downto 0)
	 ); 

end convert_scancode;

architecture convert_scancode_arch of convert_scancode is

    constant SFHIFTING_BITS: integer := 11;
    -- serial input shift register 11 bits
    signal current_serial_input_shifter, next_serial_input_shifter: std_logic_vector(10 downto 0);
    signal current_counter, next_counter: unsigned(3 downto 0);
    signal next_valid_scan_code,current_valid_scan_code :std_logic;
    
begin
    serial_input_shifter: process (clk, rst_n)
    begin
        if rst_n = '0' then
            current_serial_input_shifter <= (others => '0');
            current_counter <= (others => '0');
            current_valid_scan_code <= '0';
        elsif rising_edge(clk) then
            current_serial_input_shifter <= next_serial_input_shifter;
            current_counter <= next_counter;
            current_valid_scan_code <= next_valid_scan_code;
        end if;
    end process;
    
    
    combinational_serial_input_shifter : process(edge_found,current_valid_scan_code,current_serial_input_shifter,current_counter,serial_data) -- fill out the sensitivity list
    --combinational_serial_input_shifter : process

    begin
         next_serial_input_shifter <= current_serial_input_shifter;
         next_counter <= current_counter;
         next_valid_scan_code <= '0';
        if (edge_found='1') then
            -- shifter
            next_serial_input_shifter <= serial_data & current_serial_input_shifter(10 downto 1);
            -- counter 
            next_counter <= current_counter+1;
         end if;
         
         if(current_counter =SFHIFTING_BITS) then
            next_valid_scan_code <= '1';
            next_counter <= TO_UNSIGNED(0,4);
         end if;
        
    end process;
    
    
    valid_scan_code <= current_valid_scan_code;
    scan_code_out <= unsigned(current_serial_input_shifter (8 downto 1));


end convert_scancode_arch;
