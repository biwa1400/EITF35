library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity par2ser is
    port (
        clk: in std_logic;
        reset_n: in std_logic;
        data_parallel: in std_logic_vector(3 downto 0);
        data_serial: out std_logic
    );
end par2ser;

architecture behavioural of par2ser is
    
    -- Define the needed internal signals
    signal current_sample_shifter, next_sample_shifter : std_logic_vector(3 downto 0);
    signal current_counter, next_counter : unsigned(1 downto 0);
    signal conversion_start : std_logic;

begin

    -- purpose: Implements the registers for the sequence decoder
    -- type : sequential
    registers: process (clk, reset_n)
    begin
        if reset_n = '0' then
            current_sample_shifter <= (others => '0');
            current_counter <= (others =>'0');
        elsif rising_edge(clk) then
            current_sample_shifter <= next_sample_shifter;
            current_counter <= next_counter;
        end if;
    end process;
    
    -- increment code
    --    current_counter <= '0' & current_counter(2 downto 1);

    -- output logic
    data_serial <= current_sample_shifter(0);

    combinational_shifter : process(current_counter,current_sample_shifter,data_parallel) -- fill out the sensitivity list
    begin
        -- default values (why needed?)
        next_sample_shifter <= current_sample_shifter;

        -- write the code for parallel to serial conversion
        
        -- counter
        next_counter <= current_counter+1;
        -- counter = 0 load data_parallel to shifter
        if current_counter = 0 then
            next_sample_shifter <= data_parallel;
        else 
            next_sample_shifter <= '0' & current_sample_shifter(3 downto 1);
        end if;
    end process;
    
end behavioural;
