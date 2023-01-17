----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 2022/09/14 10:47:24
-- Design Name: 
-- Module Name: segment_driver_tb - Behavioral
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

entity segment_driver_tb is
end segment_driver_tb;

architecture Behavioral of segment_driver_tb is

    constant CLOCK_PERIOD: time := 100 ns;
    constant RESET_STOP: time := 150 ns;
    
    component segment_driver is
        port (
             clk            : in std_logic;
             rst_n          : in std_logic;
             value_0        : in std_logic_vector(7 downto 0);
             value_1        : in std_logic_vector(7 downto 0);
             value_2        : in std_logic_vector(7 downto 0);
             value_3        : in std_logic_vector(7 downto 0);
             num	        : out unsigned(7 downto 0);
             seg_en	        : out unsigned(3 downto 0)
         ); 
    end component;
    
    signal clk:std_logic:='0';
    signal rst_n:std_logic:='0';
    signal num:unsigned(7 downto 0);
    signal seg_en:unsigned(3 downto 0);
begin
    rst_n <= '1' after RESET_STOP;       
    clk <= not clk after CLOCK_PERIOD / 2;

    stimuli_gen: segment_driver
    port map (
             clk            =>clk,
             rst_n          =>rst_n,
             value_0         =>x"aa",
             value_1         =>x"bb",
             value_2         =>x"cc",
             value_3         =>x"dd",
             num	         =>num,
             seg_en	         =>seg_en
    );

end Behavioral;
