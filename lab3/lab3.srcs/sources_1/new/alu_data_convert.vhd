----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 2022/09/20 18:34:08
-- Design Name: 
-- Module Name: alu_data_convert - Behavioral
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
-- alu_output to drive 7 segment driver
entity alu_data_convert is
    port ( 
          result 	 : in std_logic_vector (7 downto 0);   -- ALU output (unsigned binary)
	      overflow   : in std_logic;                       -- '1' if overflow ocurres, '0' otherwise 
	      sign       : in std_logic;                        -- '1' if the result is a negative value, '0' otherwise
	      value_0        : out std_logic_vector(3 downto 0);
	      value_1        : out std_logic_vector(3 downto 0);
	      value_2        : out std_logic_vector(3 downto 0);
	      value_3        : out std_logic_vector(3 downto 0)
        );
end alu_data_convert;

architecture Behavioral of alu_data_convert is
    
    -- COMPONENTS
    component binary2BCD is
    port ( 
          binary_in : in  std_logic_vector(7 downto 0);  -- binary input width
          BCD_out   : out std_logic_vector(9 downto 0)        -- BCD output, 10 bits [2|4|4] to display a 3 digit BCD value when input has length 8
        );
    end component;

    signal output_value:std_logic_vector (7 downto 0);
    signal BCD_out   : std_logic_vector(9 downto 0);
    
    
begin

    binary2BCD_inst: binary2BCD
    port map ( 
            binary_in =>output_value,  -- binary input width
            BCD_out  => BCD_out     -- BCD output, 10 bits [2|4|4] to display a 3 digit BCD value when input has length 8
    );

    process(result,sign,overflow )
    begin
        output_value <= (others => '0');
        value_3 <= std_logic_vector( to_unsigned(10,4)); -- turn off
        -- output value
        if(sign = '1')then
            output_value <= std_logic_vector(unsigned(not result)+1);
        else
            output_value <= result;
        end if;
        
        -- sign,overflow
        if(overflow = '1')then
             value_3 <= std_logic_vector( to_unsigned(12,4));
        elsif (sign = '1')then
             value_3 <= std_logic_vector( to_unsigned(11,4));
        end if;

    end process;
    
    value_0        <= BCD_out(3 downto 0);
    value_1        <= BCD_out(7 downto 4);
    value_2        <= "00"&BCD_out(9 downto 8);
    

    

end Behavioral;
