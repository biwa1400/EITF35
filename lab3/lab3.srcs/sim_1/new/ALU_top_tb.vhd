
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use ieee.numeric_std.all;
use ieee.std_logic_signed.all;


entity ALU_top_tb is
end ALU_top_tb;

architecture Behavioral of ALU_top_tb is
    -- clock
    constant CLOCK_PERIOD: time := 100 ns;
    constant RESET_STOP: time := 123 ns;
    signal clk: std_logic := '0';
    signal reset: std_logic := '1';
    
    --test signal 
    signal b_Enter    :   std_logic:='0';                  
    signal b_Sign     :   std_logic:='0';                  
    signal input      :   std_logic_vector(7 downto 0):=(others =>'0');
    signal seven_seg  :   std_logic_vector(7 downto 0);
    signal anode      :   std_logic_vector(3 downto 0);
   
   -- COMPONENTS
   component ALU_top is                                                
   port ( clk        : in  std_logic;                            
          reset      : in  std_logic;                            
          b_Enter    : in  std_logic;                            
          b_Sign     : in  std_logic;                            
          input      : in  std_logic_vector(7 downto 0);         
          seven_seg  : out std_logic_vector(7 downto 0);         
          anode      : out std_logic_vector(3 downto 0)          
        );                                                       
    end component;                                                     
    
    
begin

    -- INSTANTIANTE
    ALU_top_inst: ALU_top  
    port map ( 
            clk        =>clk,
            reset      =>reset,
            b_Enter    =>b_Enter,
            b_Sign     =>b_Sign,
            input      =>input,
            seven_seg  =>seven_seg,
            anode      =>anode  
             );                         

    reset <= '0' after RESET_STOP;       
    clk <= not clk after CLOCK_PERIOD / 2;
    
    b_Enter_process:process
    begin
       wait for 432 ns;	
	   
	   for i in 0 to 7 loop
	       wait for 30*CLOCK_PERIOD;
	  
           b_Enter <= '1';
           wait for CLOCK_PERIOD;
           b_Enter <= '0';
	   end loop;
	      
    end process;
    
    b_Sign_process:process
    begin
       wait for 232 ns;	

	   for i in 0 to 7 loop
	       wait for CLOCK_PERIOD;
	  
           b_Sign <= '1';
           wait for 1000*CLOCK_PERIOD;
           b_Sign <= '0';
	   end loop;
	      
    end process;
    
    input_process:process
    begin
        for i in 0 to 700000 loop
            input <= input +1;
            wait for CLOCK_PERIOD;
	   end loop;
    end process;
    
    


end Behavioral;
