library ieee;
use ieee.std_logic_1164.all;

entity sequence_detector_moore is
    port (
        clk: in std_logic;
        reset_n: in std_logic;
        data_serial : in std_logic;
        data_valid : in std_logic;
        data_out: out std_logic
    );
end sequence_detector_moore;

architecture behavioural of sequence_detector_moore is


    -- Define a enumeration type for the states
    type state_type is (s_0, s_1, s_2, s_3,s_4);
    
    -- Define the needed internal signals
    signal current_state, next_state: state_type;

begin
            
    -- purpose: Implements the registers for the sequence decoder
    -- type : sequential
    registers: process (clk, reset_n)
    begin
        if reset_n = '0' then
            current_state <= s_0;
        elsif rising_edge(clk) then
            current_state <= next_state;
        end if;
    end process;
    
    -- purpose: Implements the next_state logic as well as the output logic
    -- type : combinational
    combinational: process (current_state,data_serial) -- fill out the sensitivity list
    begin
        -- set default value
        next_state <= current_state;
        
        case current_state is
            when s_0 =>
                 data_out <= '0';
                 if data_serial = '0' then
                    next_state <= s_0;  -- is this line necessary?
                 else
                    next_state <= s_1;
                 end if;
                 
            when s_1 =>
                 data_out <= '0';
                 if data_serial = '0' then
                    next_state <= s_2;  
                 else
                    next_state <= s_1;
                 end if;
                 
            when s_2 =>
                 data_out <= '0';
                 if data_serial = '0' then
                    next_state <= s_3;  
                 else
                    next_state <= s_1;
                 end if;
                 
            when s_3 =>
                 data_out <= '0';
                 if data_serial = '0' then
                    next_state <= s_0;  
                 else
                    next_state <= s_4;
                 end if;
                 
            when s_4 =>
                 data_out <= '1';
                 if data_serial = '0' then
                    next_state <= s_2;  
                 else
                    next_state <= s_1;
                 end if;

         end case;
    end process;

    
end behavioural;
