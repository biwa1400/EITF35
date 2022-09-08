------------------------------------------------------------------
-- Test Bench for keyboard
-- by Bin Wang, 09/2022
------------------------------------------------------------------

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity keyboard_tb is			-- entity declaration
end keyboard_tb;

------------------------------------------------------------------

architecture keyboard_tb_arch of keyboard_tb is

    constant CLOCK_PERIOD: time := 20 ns;
    constant RESET_STOP: time := 150 ns;
    
    -- sim keyboard clock
    constant KEYBOARD_CLOCK_PERIOD: time := 82 ns;

    component keyboard_top is
        port (
             clk          : in std_logic;
             rst_n        : in std_logic;
             kb_data	  : in std_logic;
             kb_clk	      : in std_logic;
             sc		      : out unsigned(7 downto 0);
             num	      : out unsigned(7 downto 0);
             seg_en	      : out unsigned(3 downto 0)   
         );
    end component;

    signal T_clk:		        std_logic:= '0';
    signal T_rst_n:	            std_logic:= '0';
    signal T_kb_data:	        std_logic:= '0';
    signal T_kb_clk:	        std_logic:= '0';
    signal T_kb_sc:		        unsigned(7 downto 0);
    signal T_kb_num:            unsigned(7 downto 0);
    signal T_kb_seg_en:         unsigned(3 downto 0); 
	
begin
    --map io
    U_keyboard_top: keyboard_top 
    port map (
             clk => T_clk, 
             rst_n => T_rst_n,        
             kb_data =>	T_kb_data, 
             kb_clk => T_kb_clk,	      
             sc	=> T_kb_sc,	      
             num =>	T_kb_num,     
             seg_en	=>  T_kb_seg_en    
             );
    
    -- reset and clock
    T_rst_n <= '1' after RESET_STOP;
    T_clk <= not T_clk after CLOCK_PERIOD / 2;
    T_kb_clk <= not T_kb_clk after KEYBOARD_CLOCK_PERIOD / 2;
	
	keyboard_sim: process 
    begin
        -- case 1
        wait for 20 ns;
        T_kb_data <= '1';
        wait for 10 ns;
        T_kb_data <= '0';
    end process;
 end;