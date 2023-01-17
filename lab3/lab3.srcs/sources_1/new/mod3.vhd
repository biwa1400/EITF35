----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 2022/09/22 10:44:35
-- Design Name: 
-- Module Name: mod3 - Behavioral
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

entity mod3 is
    port ( 
          mod3_input      : in  std_logic_vector(7 downto 0);
          mod3_output     : out std_logic_vector(7 downto 0)
        );
end mod3;

architecture Behavioral of mod3 is
    component mod3_sub is
           port ( 
              input      : in  unsigned(7 downto 0);
              theta      : in unsigned (7 downto 0);
              output     : out unsigned(7 downto 0)
            );
    end component;
    signal mod3unit0,mod3unit1,mod3unit2,mod3unit3,mod3unit4,mod3unit5,mod3unit6:unsigned(7 downto 0);
begin
    mod3_unit0: mod3_sub
    port map( 
           input     =>unsigned(mod3_input),
           theta     =>to_unsigned(192,8),
           output    =>mod3unit0
        );
    mod3_unit1: mod3_sub
    port map( 
           input     =>mod3unit0,
           theta     =>to_unsigned(96,8),
           output    =>mod3unit1
        );
    mod3_unit2: mod3_sub
    port map( 
           input     =>mod3unit1,
           theta     =>to_unsigned(48,8),
           output    =>mod3unit2
        );
    mod3_unit3: mod3_sub
    port map( 
           input     =>mod3unit2,
           theta     =>to_unsigned(24,8),
           output    =>mod3unit3
        );
    mod3_unit4: mod3_sub
    port map( 
           input     =>mod3unit3,
           theta     =>to_unsigned(12,8),
           output    =>mod3unit4
        );
    mod3_unit5: mod3_sub
    port map( 
           input     =>mod3unit4,
           theta     =>to_unsigned(6,8),
           output    =>mod3unit5
        );
    
    mod3_unit6: mod3_sub
    port map( 
           input     =>mod3unit5,
           theta     =>to_unsigned(3,8),
           output    => mod3unit6
        );

    mod3_output <= std_logic_vector(mod3unit6);
    

end Behavioral;
