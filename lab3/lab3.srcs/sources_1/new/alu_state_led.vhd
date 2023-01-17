----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 2022/09/20 19:53:03
-- Design Name: 
-- Module Name: alu_state_led - Behavioral
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

library work;
use work.ALU_components_pack.all;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity alu_state_led is
   port ( 
          FN         : in  std_logic_vector (3 downto 0);   -- ALU functions provided by the ALU_Controller (see the lab manual)
          led_signed : out std_logic ;
          led_input_A : out std_logic;
          led_input_B : out std_logic;
          led_add : out std_logic;
          led_sub : out std_logic;
          led_mod3 : out std_logic
        );
end alu_state_led;

architecture Behavioral of alu_state_led is

begin
    process(FN) begin
          led_signed <= '0' ;
          led_input_A <= '0' ;
          led_input_B <= '0' ;
          led_add <= '0' ;
          led_sub <= '0' ;
          led_mod3 <= '0' ;
    
    
     case FN is
            when FN_INPUT_A =>
                led_input_A <= '1';
            when FN_INPUT_B =>
                led_input_B <= '1' ;
            when FN_S_INPUT_A =>
                led_input_A <= '1';
                led_signed <= '1' ;
            when FN_S_INPUT_B =>
                led_input_B <= '1';
                led_signed <= '1' ;
                 
            when FN_U_ADD =>
                led_add <= '1' ;
            when FN_U_SUB =>
                led_sub <= '1' ;
            when FN_U_MOD_3 =>
                led_mod3 <= '1' ;
            
            when FN_S_ADD =>
                led_add <= '1' ;
                led_signed <= '1' ;
            when FN_S_SUB =>
                led_sub <= '1' ;
                led_signed <= '1' ;
            when FN_S_MOD_3 =>
                led_mod3 <= '1' ;
                led_signed <= '1' ;
            when others =>            
        end case;
    end process;


end Behavioral;
