----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 2022/10/09 13:11:01
-- Design Name: 
-- Module Name: pooling_dabin_tb - Behavioral
-- Project Name: 
-- Target Devices: 
-- Tool Versions: 
-- Description: 
-- 
-- Dependencies: 
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
-- 
----------------------------------------------------------------------------------


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use ieee.numeric_std.all;
use std.textio.all;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity pooling_dabin_tb is
end pooling_dabin_tb;

architecture Behavioral of pooling_dabin_tb is
    component Pooling_DABIN is
    port (
        clk             : in std_logic;
        rst             : in std_logic;
        ofmap_RELU      : in std_logic_vector(3 downto 0);
        valid_data      : in std_logic;
        pooling_out     : out std_logic_vector(3 downto 0);
        valid_pooling   : out std_logic
        );
    end component;
    
    constant CLOCK_PERIOD: time := 10 ns;
    constant RESET_STOP: time := 15 ns;
    
    signal clk: std_logic := '0';
    signal rst: std_logic := '1';
    
    signal ofmap_RELU: std_logic_vector(3 downto 0);
    signal valid_data: std_logic;
    signal pooling_out: std_logic_vector(3 downto 0);
    signal valid_pooling: std_logic;
    
    signal counter: unsigned(3 downto 0);
    
    
begin        
    clk <= not clk after CLOCK_PERIOD / 2;
    rst <= '0' after RESET_STOP;  
    
    

    valid_data_process:process (rst,clk)
    begin
        if (rst = '1') then
            valid_data <= '0';  
            counter <= (others => '0');
        elsif rising_edge(clk) then
            counter <= counter + 1;
            if(counter = 0) then
                valid_data <= '1';  
            elsif (counter = 1) then
                valid_data <= '0';  
           end if;
        end if;
    end process;
    
    process (rst,valid_data)
        file test_vector_file: text is in "stimuli.txt";
        variable file_row: line;
        variable stimulus_raw: integer;
    begin
        if (rst = '1') then
            ofmap_RELU <= (others => '0');  
        elsif rising_edge(valid_data) then
            stimulus_raw := 0;
            if not endfile(test_vector_file) then
                readline(test_vector_file, file_row);
                read(file_row, stimulus_raw);                
            end if;
            ofmap_RELU <= std_logic_vector(to_signed(stimulus_raw, 4));
        end if;
    end process;

    
    Pooling_DABIN_ist:Pooling_DABIN
        port map(
        clk             =>clk,
        rst             =>rst,
        ofmap_RELU      =>ofmap_RELU,
        valid_data      =>valid_data,
        pooling_out     =>pooling_out,
        valid_pooling   =>valid_pooling
        );


end Behavioral;
