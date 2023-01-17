----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 2022/09/17 13:49:35
-- Design Name: 
-- Module Name: adder3 - Behavioral
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

entity adder3 is
    port(
        input: in std_logic_vector(3 downto 0);
        output : out std_logic_vector(3 downto 0)
        );
end adder3;

architecture Behavioral of adder3 is

begin
    combinational:process(input)
    begin
        case input is
            when "0000" => output <= "0000";
            when "0001" => output <= "0001";
            when "0010" => output <= "0010";
            when "0011" => output <= "0011";
            when "0100" => output <= "0100";
            when "0101" => output <= "1000";
            when "0110" => output <= "1001";
            when "0111" => output <= "1010";
            when "1000" => output <= "1011";
            when "1001" => output <= "1100";
            when others => output <= "0000";
        end case;
    end process;

end Behavioral;
