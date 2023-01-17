----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 2022/09/19 11:04:33
-- Design Name: 
-- Module Name: binary2BCD_tb - Behavioral
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

entity binary2BCD_tb is
--  Port ( );
end binary2BCD_tb;

architecture Behavioral of binary2BCD_tb is
   component binary2BCD is
       port ( binary_in : in  std_logic_vector(7 downto 0);  -- binary input width
              BCD_out   : out std_logic_vector(9 downto 0)        -- BCD output, 10 bits [2|4|4] to display a 3 digit BCD value when input has length 8
            );
    end component;
    
    signal binary_in:std_logic_vector(7 downto 0);
    signal BCD_out:std_logic_vector(9 downto 0);

begin
    binary2BCD_test: binary2BCD
    port map ( 
            binary_in =>binary_in,  -- binary input width
            BCD_out  => BCD_out     -- BCD output, 10 bits [2|4|4] to display a 3 digit BCD value when input has length 8
    );
    
    process 
    begin
        binary_in <=X"7B";
        wait for 10 ns;
        binary_in <=X"7C";
        wait for 10 ns;
        binary_in <=X"7D";
        wait for 10 ns;
    end process;
    


end Behavioral;
