----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 2022/09/20 13:33:26
-- Design Name: 
-- Module Name: ALU_tb - Behavioral
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

library work;
use work.ALU_components_pack.all;

entity ALU_tb is
--  Port ( );
end ALU_tb;

architecture Behavioral of ALU_tb is
   component ALU is
   port ( A          : in  std_logic_vector (7 downto 0);   -- Input A
          B          : in  std_logic_vector (7 downto 0);   -- Input B
          FN         : in  std_logic_vector (3 downto 0);   -- ALU functions provided by the ALU_Controller (see the lab manual)
          result 	   : inout std_logic_vector (7 downto 0);   -- ALU output (unsigned binary)
	      overflow   : out std_logic;                       -- '1' if overflow ocurres, '0' otherwise 
	      sign       : out std_logic                        -- '1' if the result is a negative value, '0' otherwise
        );
    end component;
    
    
    signal A          : std_logic_vector (7 downto 0);   -- Input A
    signal B          : std_logic_vector (7 downto 0);   -- Input B
    signal FN         : std_logic_vector (3 downto 0);   -- ALU functions provided by the ALU_Controller (see the lab manual)
    signal result 	  : std_logic_vector (7 downto 0);   -- ALU output (unsigned binary)
	signal overflow   : std_logic;                       -- '1' if overflow ocurres, '0' otherwise 
    signal sign       : std_logic;                        -- '1' if the result is a negative value, '0' otherwise

begin
   ALU_init:ALU
   port map (
          A          =>A,   -- Input A
          B          =>B,   -- Input BB
          FN         =>FN,   -- ALU functions provided by the ALU_Controller (see the lab manual)
          result 	 =>result,   -- ALU output (unsigned binary)
	      overflow   =>overflow,                       -- '1' if overflow ocurres, '0' otherwise 
	      sign       =>sign                        -- '1' if the result is a negative value, '0' otherwise
        );
        
   process
   begin
     FN <= FN_U_ADD; -- unsigned 255 + 2 = 1 -> 1111 1111 + 0000 0010 = 0000 0001, overflow = 1
     A <= "11111111";
	 B <= "00000010";
	 wait for 1 ns;
	 assert (result="00000001") report "FN_U_ADD result Error" severity error;
	 assert (overflow='1') report "FN_U_ADD overflow Error" severity error;
	 assert (sign='0') report "FN_U_ADD sign Error" severity error;
	 wait for 10 ns;
	 
	 FN <= FN_U_SUB; -- unsigned 2 - 3 = 255 -> 0000 0010 - 0000 0011 = 1111 1111, overflow = 1
     A <= "00000010";
	 B <= "00000011";
	 wait for 1 ns;
	 assert (result="11111111") report "FN_U_SUB result Error" severity error;
	 assert (overflow='1') report "FN_U_SUB overflow Error" severity error;
	 assert (sign='0') report "FN_U_SUB sign Error" severity error;
	 wait for 10 ns;
	 
	 FN <= FN_U_SUB; -- unsigned 3 - 2 = 1 -> 0000 0011 - 0000 0010 = 0000 0001, overflow = 0
     A <= "00000011";
	 B <= "00000010";
	 wait for 1 ns;
	 assert (result="00000001") report "FN_U_SUB result Error" severity error;
	 assert (overflow='0') report "FN_U_SUB overflow Error" severity error;
	 assert (sign='0') report "FN_U_SUB sign Error" severity error;
	 wait for 10 ns;
	 
	FN <= FN_U_SUB; -- unsigned 3 - 2 = 1 -> 0000 0011 - 0000 0010 = 0000 0001, overflow = 0
     A <= "00000011";
	 B <= "00000010";
	 wait for 1 ns;
	 assert (result="00000001") report "FN_U_SUB result Error" severity error;
	 assert (overflow='0') report "FN_U_SUB overflow Error" severity error;
	 assert (sign='0') report "FN_U_SUB sign Error" severity error;
	 wait for 10 ns;
	 
	 
	 FN <= FN_S_ADD; -- signed 127 + 127 = -2 -> 0111 1111 + 0111 1111 = 1111 1110, overflow = 1 sign = 1
     A <= "01111111";
	 B <= "01111111";
	 wait for 1 ns;
	 assert (result="11111110") report "FN_S_ADD result Error" severity error;
	 assert (overflow='1') report "FN_S_ADD overflow Error" severity error;
	 assert (sign='1') report "FN_S_ADD sign Error" severity error;
	 wait for 10 ns;
	 
	 FN <= FN_S_ADD; -- signed -128 + -128 = 0 -> 1000 0000 + 1000 0000 = 0000 0000, overflow = 1 sign = 0
     A <= "10000000";
	 B <= "10000000";
	 wait for 1 ns;
	 assert (result="00000000") report "FN_S_ADD result Error" severity error;
	 assert (overflow='1') report "FN_S_ADD overflow Error" severity error;
	 assert (sign='0') report "FN_S_ADD sign Error" severity error;
	 wait for 10 ns;
	 
	 FN <= FN_S_SUB; -- signed -128 - -128 = 0 -> 1000 0000 - 1000 0000 = 0000 0000, overflow = 1 sign = 0
     A <= "10000000";
	 B <= "10000000";
	 wait for 1 ns;
	 assert (result="00000000") report "FN_S_ADD result Error" severity error;
	 assert (overflow='1') report "FN_S_ADD overflow Error" severity error;
	 assert (sign='0') report "FN_S_ADD sign Error" severity error;
	 wait for 10 ns;
	 
	 FN <= FN_S_SUB; -- signed -2 - 3 = -5 -> 1000 0000 - 1000 0000 = 1111 1011, overflow = 1 sign = 0
     A <= "11111110";
	 B <= "00000011";
	 wait for 1 ns;
	 assert (result="11111011") report "FN_S_ADD result Error" severity error;
	 assert (overflow='0') report "FN_S_ADD overflow Error" severity error;
	 assert (sign='1') report "FN_S_ADD sign Error" severity error;
	 wait for 10 ns;
	 
	 FN <= FN_U_MOD_3; -- signed 255 mod 3= 0 -> 1111 1111 MOD 3= 0000 0000, overflow = 0 sign = 0
     A <= "11111111";
     B <= "00000000";
	 wait for 1 ns;
	 assert (result="00000000") report "FN_U_MOD_3 result Error" severity error;
	 assert (overflow='0') report "FN_U_MOD_3 overflow Error" severity error;
	 assert (sign='0') report "FN_U_MOD_3 sign Error" severity error;
	 wait for 10 ns;
	 
	 FN <= FN_S_MOD_3; -- signed -128 mod 3= -2 ->  1000 0000 MOD 3= 1111 1110, overflow = 0 sign = 1
     A <= std_logic_vector(TO_SIGNED(-7,8));
	 wait for 1 ns;
	 assert (result="11111110") report "FN_U_MOD_3 result Error" severity error;
	 assert (overflow='0') report "FN_U_MOD_3 overflow Error" severity error;
	 assert (sign='1') report "FN_U_MOD_3 sign Error" severity error;
	 wait for 10 ns;
	 
	 	 FN <= FN_S_MOD_3; -- signed -128 mod 3= -2 ->  1000 0000 MOD 3= 1111 1110, overflow = 0 sign = 1
     A <= std_logic_vector(TO_SIGNED(-6,8));
	 wait for 1 ns;
	 assert (result="11111110") report "FN_U_MOD_3 result Error" severity error;
	 assert (overflow='0') report "FN_U_MOD_3 overflow Error" severity error;
	 assert (sign='1') report "FN_U_MOD_3 sign Error" severity error;
	 wait for 10 ns;
	 
	 	 FN <= FN_S_MOD_3; -- signed -128 mod 3= -2 ->  1000 0000 MOD 3= 1111 1110, overflow = 0 sign = 1
     A <= std_logic_vector(TO_SIGNED(-5,8));
	 wait for 1 ns;
	 assert (result="11111110") report "FN_U_MOD_3 result Error" severity error;
	 assert (overflow='0') report "FN_U_MOD_3 overflow Error" severity error;
	 assert (sign='1') report "FN_U_MOD_3 sign Error" severity error;
	 wait for 10 ns;
	 
	 	 FN <= FN_S_MOD_3; -- signed -128 mod 3= -2 ->  1000 0000 MOD 3= 1111 1110, overflow = 0 sign = 1
     A <= std_logic_vector(TO_SIGNED(-4,8));
	 wait for 1 ns;
	 assert (result="11111110") report "FN_U_MOD_3 result Error" severity error;
	 assert (overflow='0') report "FN_U_MOD_3 overflow Error" severity error;
	 assert (sign='1') report "FN_U_MOD_3 sign Error" severity error;
	 wait for 10 ns;
	 
	 FN <= FN_S_MOD_3; -- signed -128 mod 3= -2 ->  1000 0000 MOD 3= 1111 1110, overflow = 0 sign = 1
     A <= std_logic_vector(TO_SIGNED(-3,8));
	 wait for 1 ns;
	 assert (result="11111110") report "FN_U_MOD_3 result Error" severity error;
	 assert (overflow='0') report "FN_U_MOD_3 overflow Error" severity error;
	 assert (sign='1') report "FN_U_MOD_3 sign Error" severity error;
	 wait for 10 ns;
	 
	 FN <= FN_S_SUB; -- signed 255 mod 3= 0 -> 1111 1111 MOD 3= 0000 0000, overflow = 0 sign = 0
     A <= std_logic_vector(TO_SIGNED(127,8));
     B <= std_logic_vector(TO_SIGNED(-128,8));
	 wait for 1 ns;
	 assert (result="00000000") report "FN_U_MOD_3 result Error" severity error;
	 assert (overflow='0') report "FN_U_MOD_3 overflow Error" severity error;
	 assert (sign='0') report "FN_U_MOD_3 sign Error" severity error;
	 wait for 10 ns;
	 
	 FN <= FN_S_SUB; -- signed 255 mod 3= 0 -> 1111 1111 MOD 3= 0000 0000, overflow = 0 sign = 0
     A <= std_logic_vector(TO_SIGNED(0,8));
     B <= std_logic_vector(TO_SIGNED(0,8));
	 wait for 1 ns;
	 assert (result="00000000") report "FN_U_MOD_3 result Error" severity error;
	 assert (overflow='0') report "FN_U_MOD_3 overflow Error" severity error;
	 assert (sign='0') report "FN_U_MOD_3 sign Error" severity error;
	 wait for 10 ns;
	
--	 FN <= FN_S_ADD;
--     A <= std_logic_vector(TO_SIGNED(-127,8));
--	 B <= std_logic_vector(TO_SIGNED(-127,8));
--	 wait for 10 ns;
   end process;


end Behavioral;
