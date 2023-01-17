----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 2022/10/11 00:57:22
-- Design Name: 
-- Module Name: ALU_ctrl_tb - Behavioral
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

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity ALU_ctrl_tb is
--  Port ( );
end ALU_ctrl_tb;

architecture Behavioral of ALU_ctrl_tb is

    component ALU_ctrl is
       port ( clk     : in  std_logic;
              reset   : in  std_logic;
              enter   : in  std_logic;
              sign    : in  std_logic;
              FN      : out std_logic_vector (3 downto 0);   -- ALU functions
              RegCtrl : out std_logic_vector (1 downto 0)   -- Register update control bits
            );
    end component;
    
    constant CLOCK_PERIOD: time := 100 ns;
    constant RESET_STOP: time := 123 ns;
    signal clk: std_logic := '0';
    signal reset: std_logic := '1';     
    
    signal enter   :   std_logic:='0';
    signal sign    :   std_logic:='0';
    signal FN      :   std_logic_vector (3 downto 0);   -- ALU functions
    signal RegCtrl :   std_logic_vector (1 downto 0);   -- Register update control bits
    

begin
       ALU_ctrl_inst:ALU_ctrl
       port map ( clk => clk,
              reset   => reset,
              enter   => enter,
              sign    => sign,
              FN      => FN,
              RegCtrl => RegCtrl
            );
    
 
    
    
     reset <= '0' after RESET_STOP;       
    clk <= not clk after CLOCK_PERIOD / 2;
    
    b_Enter_process:process
    begin
       wait for 432 ns;	
	   
	   for i in 0 to 7 loop
	       wait for 30*CLOCK_PERIOD;
	  
           enter <= '1';
           wait for CLOCK_PERIOD;
           enter <= '0';
	   end loop;
	      
    end process;
    
    b_Sign_process:process
    begin
       wait for 232 ns;	

	   for i in 0 to 7 loop
	       wait for 40*CLOCK_PERIOD;
	  
           sign <= '1';
           wait for CLOCK_PERIOD;
           sign <= '0';
	   end loop;
	      
    end process;
           
end Behavioral;
