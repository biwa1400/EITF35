----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 2022/10/05 12:02:25
-- Design Name: 
-- Module Name: RELU_DABIN - Behavioral
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

entity RELU_DABIN is
    generic(
        LENGTH:integer
    );
     port (
        ofmap_in : in STD_LOGIC_VECTOR ( LENGTH-1 downto 0 );
        valid_ofmap : in STD_LOGIC;
        ofmap_relu : out STD_LOGIC_VECTOR ( LENGTH-1 downto 0 )
      );
end RELU_DABIN;

architecture Behavioral of RELU_DABIN is

begin
    process(ofmap_in,valid_ofmap)
    begin
        ofmap_relu <= ofmap_in;
        if (valid_ofmap = '1') then
            if(signed(ofmap_in) < 0) then
                ofmap_relu <= (others =>'0');
            end if;
        end if;
    end process;

end Behavioral;
