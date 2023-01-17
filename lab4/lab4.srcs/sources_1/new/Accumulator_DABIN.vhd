----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 2022/10/03 19:49:26
-- Design Name: 
-- Module Name: Accumulator_DABIN - Behavioral
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

entity Accumulator_DABIN is
  port (
    clk : in STD_LOGIC;
    rst : in STD_LOGIC;
    start : in STD_LOGIC;
    Psum1 : in STD_LOGIC_VECTOR ( 7 downto 0 );
    Psum2 : in STD_LOGIC_VECTOR ( 7 downto 0 );
    Psum3 : in STD_LOGIC_VECTOR ( 7 downto 0 );
    Psum4 : in STD_LOGIC_VECTOR ( 7 downto 0 );
    ofmap : out STD_LOGIC_VECTOR ( 3 downto 0 );
    valid_ofmap : out STD_LOGIC
  );
end Accumulator_DABIN;

architecture Behavioral of Accumulator_DABIN is
    signal ofmap_current,ofmap_mid,ofmap_next:signed ( 7 downto 0 );
    signal valid_ofmap_current,valid_ofmap_mid:STD_LOGIC;
begin
    ofmap_sequential: process (clk, rst)
    begin
        if rst = '1' then
           ofmap_current <= (others => '0');
           ofmap_mid <= (others => '0');
           
           valid_ofmap_current <= '0';
           valid_ofmap_mid <= '0';
        elsif rising_edge(clk) then
            ofmap_mid <= ofmap_next;
            ofmap_current <= ofmap_mid;
            
            valid_ofmap_mid <= start;
            valid_ofmap_current <= valid_ofmap_mid;
            
        end if;
    end process;

   ofmap_combinatorial: process(ofmap_current,
                                ofmap_mid,
                                start,
                                Psum1,
                                Psum2,
                                Psum3,
                                Psum4 )
    begin 
        ofmap_next <= ofmap_mid;
        if(start = '1')then
            if(signed(Psum1) + signed(Psum2) + signed(Psum3) + signed(Psum4) < -8)then
                ofmap_next <= TO_SIGNED(-8,8);
            elsif (signed(Psum1) + signed(Psum2) + signed(Psum3) + signed(Psum4) > 7)then
                ofmap_next <= TO_SIGNED(7,8);
            else 
                ofmap_next <= signed(Psum1) + signed(Psum2) + signed(Psum3) + signed(Psum4);
             end if;
        end if;
    end process;
    
    ofmap <= std_logic_vector(ofmap_current(3 downto 0));
    valid_ofmap <= valid_ofmap_current;
    
end Behavioral;
