-------------------------------------------------------------------------------
-- Title      : segment_driver.vhd 
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


entity segment_driver is
    generic(counter_bytes: natural :=18);

    port (
	     clk            : in std_logic;
	     rst          : in std_logic;
	     value_0        : in std_logic_vector(3 downto 0);
	     value_1        : in std_logic_vector(3 downto 0);
	     value_2        : in std_logic_vector(3 downto 0);
	     value_3        : in std_logic_vector(3 downto 0);
	     num	        : out std_logic_vector(7 downto 0);
	     seg_en	        : out std_logic_vector(3 downto 0)
	 ); 
end segment_driver;

architecture segment_driver_arch of segment_driver is
    type state_type is (s_0,s_1,s_2,s_3);
    signal current_state, next_state:state_type;
    signal current_counter,next_counter:unsigned(counter_bytes-1 downto 0);
    signal value_out:unsigned(3 downto 0);
begin
    registers : process(clk,rst) 
    begin
        if rst = '1' then
            -- FSM
            current_state <= s_0;
            -- counter
            current_counter <= to_unsigned(0,counter_bytes);
        elsif rising_edge(clk) then
            -- FSM
            current_state <= next_state;
            -- counter
            current_counter <= next_counter;
        end if;
    end process;
    
    combinational_counter: process(current_counter)
    begin
        next_counter <= current_counter+1;
    end process;
    
    LUT_3_8:process(value_out)
    begin
        case value_out is
            when to_unsigned(0,4) => num <= "11000000";
            when to_unsigned(1,4) => num <= "11111001";
            when to_unsigned(2,4) => num <= "10100100";
            when to_unsigned(3,4) => num <= "10110000";
            when to_unsigned(4,4) => num <= "10011001";
            when to_unsigned(5,4) => num <= "10010010";
            when to_unsigned(6,4) => num <= "10000010";
            when to_unsigned(7,4) => num <= "11011000";
            when to_unsigned(8,4) => num <= "10000000";
            when to_unsigned(9,4) => num <= "10010000";
            when to_unsigned(10,4) => num <= "11111111"; -- turn off
            when to_unsigned(11,4) => num <= "10111111";  -- -
            when to_unsigned(12,4) => num <= "10001110"; --   F
            when others => num <= "10000110";
        end case;
    end process;
    
    combinational_FSM: process(current_state,
                               current_counter,
                               value_0,
                               value_1,
                               value_2,
                               value_3)
    begin
        next_state <= current_state;
        value_out <= unsigned(value_0);
        case current_state is
            when s_0 =>
                value_out <= unsigned(value_0);
                seg_en <= "1110";
                if current_counter = to_unsigned(0,counter_bytes) then
                    next_state <= s_1;
                end if;
            when s_1 =>
                value_out <= unsigned(value_1);
                seg_en <= "1101";
                if current_counter = to_unsigned(0,counter_bytes) then
                    next_state <= s_2;
                end if;
            when s_2 =>
                value_out <= unsigned(value_2);
                seg_en <= "1011";
                if current_counter = to_unsigned(0,counter_bytes) then
                    next_state <= s_3;
                end if;
            when s_3 =>
                value_out <= unsigned(value_3);
                seg_en <= "0111";
                if current_counter = to_unsigned(0,counter_bytes) then
                    next_state <= s_0;
                end if;
           end case;
    end process;


end segment_driver_arch;
