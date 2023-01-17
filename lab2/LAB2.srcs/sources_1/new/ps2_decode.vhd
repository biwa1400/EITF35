----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 2022/09/14 15:28:58
-- Design Name: 
-- Module Name: ps2_decode - Behavioral
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

entity ps2_decode is
port (
	     clk :               in std_logic; 
	     rst_n :             in std_logic;
	     scan_code_in :      in unsigned(7 downto 0);	     
	     value_out:          out unsigned(3 downto 0)

	 );
end ps2_decode;

architecture Behavioral of ps2_decode is
begin 
    decode:process(scan_code_in)
    begin
        case scan_code_in is
            when X"00" => value_out <= to_unsigned(10,4);
            when X"16" => value_out <= to_unsigned(1,4);
            when X"1E" => value_out <= to_unsigned(2,4);
            when X"26" => value_out <= to_unsigned(3,4);
            when X"25" => value_out <= to_unsigned(4,4);
            when X"2E" => value_out <= to_unsigned(5,4);
            when X"36" => value_out <= to_unsigned(6,4);
            when X"3D" => value_out <= to_unsigned(7,4);
            when X"3E" => value_out <= to_unsigned(8,4);
            when X"46" => value_out <= to_unsigned(9,4);
            when X"45" => value_out <= to_unsigned(0,4);
            when others => value_out <= to_unsigned(11,4);
        end case;
    end process;

end Behavioral;
