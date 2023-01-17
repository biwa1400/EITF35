----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 2022/09/22 11:07:49
-- Design Name: 
-- Module Name: mod3_tb - Behavioral
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

entity mod3_tb is
--  Port ( );
end mod3_tb;

architecture Behavioral of mod3_tb is
    component mod3 is
        port ( 
              mod3_input      : in  std_logic_vector(7 downto 0);
              mod3_output     : out std_logic_vector(7 downto 0)
            );
    end component;
    signal mod3_input:std_logic_vector(7 downto 0);
    signal mod3_output:std_logic_vector(7 downto 0);
begin
   mod3_init:mod3
   port map (
           mod3_input =>mod3_input,
           mod3_output => mod3_output
        );
   
   process
   begin
     mod3_input <= std_logic_vector(to_signed(-7,8));
	 wait for 10 ns;
   end process;



end Behavioral;
