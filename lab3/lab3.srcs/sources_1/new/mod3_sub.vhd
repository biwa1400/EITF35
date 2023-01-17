----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 2022/09/22 10:47:27
-- Design Name: 
-- Module Name: mod3_sub - Behavioral
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

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity mod3_sub is
       port ( 
          input      : in  unsigned(7 downto 0);
          theta      : in unsigned (7 downto 0);
          output     : out unsigned(7 downto 0)
        );
end mod3_sub;

architecture Behavioral of mod3_sub is
begin
    process(input,theta)
    begin
        if(input >= theta)then
            output <= input - theta;
        else
            output <= input;
        end if;
    end process;


end Behavioral;
