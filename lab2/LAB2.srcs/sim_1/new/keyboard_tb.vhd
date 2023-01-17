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
    constant RESET_STOP: time := 30 ns;
    
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

    signal clk:		        std_logic:= '0';
    signal rst_n:	        std_logic:= '0';
    signal kb_data:	        std_logic:= '0';
    signal kb_clk:	        std_logic:= '0';
    signal sc:		        unsigned(7 downto 0);
    signal num:            unsigned(7 downto 0);
    signal seg_en:         unsigned(3 downto 0); 

    signal sample_shifter : unsigned(32 downto 0):="110010011001111110000011001001100";--42c
begin
    --map io
    U_keyboard_top: keyboard_top 
    port map (
             clk => clk, 
             rst_n => rst_n,        
             kb_data =>	kb_data, 
             kb_clk => kb_clk,	      
             sc	=> sc,	      
             num =>	num,     
             seg_en	=>  seg_en    
             );
    
    -- reset and clock
    rst_n <= '1' after RESET_STOP;
    clk <= not clk after CLOCK_PERIOD / 2;
    
    process
    begin
        wait for 200 ns;
        
        kb_clk <='1';
        wait for 30 ns;
        kb_clk <='0';
    end process;
	
	keyboard_sim: process(kb_clk)
    begin
    
       if falling_edge(kb_clk) then
                sample_shifter <= sample_shifter(0) & sample_shifter(32 downto 1);
       end if;
    end process;
    kb_data <= sample_shifter(32);
 end;