-------------------------------------------------------------------------------
-- Title      : keyboard_ctrl.vhd 
-- Project    : Keyboard VLSI Lab
-------------------------------------------------------------------------------
-------------------------------------------------------------------------------
-- Description: 
-- 		        controller to handle the scan codes 
-- 		        
--
-------------------------------------------------------------------------------

library ieee;             
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity keyboard_ctrl is
    port (
	     clk :               in std_logic; 
	     rst_n :             in std_logic;
	     valid_code :        in std_logic;
	     scan_code_in :      in unsigned(7 downto 0);
	     
	     scan_code_out_0:   out unsigned(7 downto 0);
	     scan_code_out_1:   out unsigned(7 downto 0);
	     scan_code_out_2:   out unsigned(7 downto 0);
	     scan_code_out_3:   out unsigned(7 downto 0)
	 );
end keyboard_ctrl;

architecture keyboard_ctrl_arch of keyboard_ctrl is

    -- valid_code_edge_found
    signal  current_scan_code_0,current_scan_code_1,current_scan_code_2,current_scan_code_3:  unsigned(7 downto 0);
    signal  next_scan_code_0,next_scan_code_1,next_scan_code_2,next_scan_code_3:  unsigned(7 downto 0);
    
    -- state machine
    type state_type is (s_0,s_1);
    signal current_state, next_state:state_type;


     
begin
    scan_code_out_0 <= current_scan_code_0;
    scan_code_out_1 <= current_scan_code_1;
    scan_code_out_2 <= current_scan_code_2;
    scan_code_out_3 <= current_scan_code_3;
       
    
   scancode: process (clk, rst_n)
    begin
        if rst_n = '0' then
            current_scan_code_0 <= to_unsigned(0,8);
            current_scan_code_1 <= to_unsigned(0,8);
            current_scan_code_2 <= to_unsigned(0,8);
            current_scan_code_3 <= to_unsigned(0,8);
        elsif rising_edge(clk) then
                current_scan_code_0 <= next_scan_code_0;
                current_scan_code_1 <= next_scan_code_1;
                current_scan_code_2 <= next_scan_code_2;
                current_scan_code_3 <= next_scan_code_3;
        end if;
    end process;
    
    -- state machine
    registers : process(clk,rst_n) 
    begin
        if rst_n = '0' then
            -- FSM
            current_state <= s_0;
        elsif rising_edge(clk) then
            -- FSM
            current_state <= next_state;
        end if;
    end process;
    
    combinational_FSM: process(current_state,
                              valid_code,
                              scan_code_in
                               )
    begin
        next_state <= current_state;
        case current_state is
            when s_0 =>
                if ( valid_code = '1'and scan_code_in = x"F0") then
                    next_state <= s_1;
                end if;
            when s_1 =>
                 if ( valid_code = '1'and scan_code_in /= x"F0") then
                    next_state <= s_0;
                end if;
           end case;
    end process;
    
    combinational_scancode: process(current_scan_code_0,
                          current_scan_code_1,
                          current_scan_code_2,
                          current_scan_code_3,
                          scan_code_in,
                          valid_code,
                          current_state
                           )
    begin
            next_scan_code_0 <= current_scan_code_0;
            next_scan_code_1 <= current_scan_code_1;
            next_scan_code_2 <= current_scan_code_2;
            next_scan_code_3 <= current_scan_code_3;
            
            if (current_state = s_1 and valid_code = '1') then
                    next_scan_code_0 <= scan_code_in;
                    next_scan_code_1 <= current_scan_code_0;
                    next_scan_code_2 <= current_scan_code_1;
                    next_scan_code_3 <= current_scan_code_2;
            end if;
    end process;


end keyboard_ctrl_arch;
