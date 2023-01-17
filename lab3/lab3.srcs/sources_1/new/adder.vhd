----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 2022/09/21 13:00:54
-- Design Name: 
-- Module Name: adder - Behavioral
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

entity adder is
   port ( 
          OP_1            : in  std_logic_vector (7 downto 0);   -- Input A
          OP_2            : in  std_logic_vector (7 downto 0);   -- Input B
	      overflow        : out std_logic;                       -- '1' if overflow ocurres, '0' otherwise 
	      carry           : out std_logic;                        -- '1' if the result is a negative value, '0' otherwise
          output          : out  std_logic_vector (7 downto 0)
        );
end adder;

architecture Behavioral of adder is

    signal result:std_logic_vector (7 downto 0);
begin
    process (OP_1,OP_2,result )
    begin
        overflow <= '0';
        carry    <= '0';
        result <= std_logic_vector(unsigned(OP_1) + unsigned(OP_2));
        
        if(result < OP_1 or result < OP_2)then
            carry <= '1';
        end if;
        
        if(signed(OP_1)<0 and signed(OP_2)<0 and signed(result)>=0)then
            overflow <= '1';
        elsif(signed(OP_1)>0 and signed(OP_2)>0 and signed(result)<=0)then
            overflow <= '1';
        end if;
        
    end process;
    
    output <= result;

end Behavioral;
