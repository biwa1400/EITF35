library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

library work;
use work.ALU_components_pack.all;

entity ALU_top is
   port ( clk        : in  std_logic;
          reset      : in  std_logic;
          b_Enter    : in  std_logic;
          b_Sign     : in  std_logic;
          input      : in  std_logic_vector(7 downto 0);
          seven_seg  : out std_logic_vector(7 downto 0);
          anode      : out std_logic_vector(3 downto 0);
          
          led_signed : out std_logic ;
          led_input_A : out std_logic;
          led_input_B : out std_logic;
          led_add : out std_logic;
          led_sub : out std_logic;
          led_mod3 : out std_logic
        );
end ALU_top;

architecture structural of ALU_top is

   -- SIGNAL DEFINITIONS  
   --keys
   signal enter : std_logic;
   signal sign_key : std_logic;
   
   --reg A B
   signal RegCtrl: std_logic_vector (1 downto 0);
   signal A: std_logic_vector (7 downto 0);
   signal B: std_logic_vector (7 downto 0);
   
   --ALU
    signal FN        : std_logic_vector (3 downto 0);
    signal result 	 : std_logic_vector (7 downto 0);   
    signal overflow  : std_logic;                       
    signal sign_flag : std_logic; 
    
    -- DISPLAY
    signal value_0   :std_logic_vector(3 downto 0);
    signal value_1   :std_logic_vector(3 downto 0);
    signal value_2   :std_logic_vector(3 downto 0);
    signal value_3   :std_logic_vector(3 downto 0);
    

         
   -- COMPONENTS
   component alu_state_led is
   port ( 
          FN         : in  std_logic_vector (3 downto 0);   -- ALU functions provided by the ALU_Controller (see the lab manual)
          led_signed : out std_logic ;
          led_input_A : out std_logic;
          led_input_B : out std_logic;
          led_add : out std_logic;
          led_sub : out std_logic;
          led_mod3 : out std_logic
        );
    end component;
   
   
    component alu_data_convert is
    port ( 
          result 	 : in std_logic_vector (7 downto 0);   -- ALU output (unsigned binary)
	      overflow   : in std_logic;                       -- '1' if overflow ocurres, '0' otherwise 
	      sign       : in std_logic;                        -- '1' if the result is a negative value, '0' otherwise
	      value_0        : out std_logic_vector(3 downto 0);
	      value_1        : out std_logic_vector(3 downto 0);
	      value_2        : out std_logic_vector(3 downto 0);
	      value_3        : out std_logic_vector(3 downto 0)
        );
    end component;
   
   
   component regUpdate is
	port (
		  clk        : in  std_logic;
          reset      : in  std_logic;
          RegCtrl    : in  std_logic_vector (1 downto 0);   
          input      : in  std_logic_vector (7 downto 0);   
          A          : out std_logic_vector (7 downto 0);  
          B          : out std_logic_vector (7 downto 0)   
	     );
    end component;
   component ALU_ctrl is
	port (
		  clk     : in  std_logic;                    
          reset   : in  std_logic;                    
          enter   : in  std_logic;                       
          sign    : in  std_logic;                       
          FN      : out std_logic_vector (3 downto 0);  
          RegCtrl : out std_logic_vector (1 downto 0)   
	     );
    end component;
    
    
    component ALU is
       port ( 
              A          : in  std_logic_vector (7 downto 0);   
              B          : in  std_logic_vector (7 downto 0);   
              FN         : in  std_logic_vector (3 downto 0);   
              result 	 : inout std_logic_vector (7 downto 0);   
    	      overflow   : out std_logic;                       
    	      sign       : out std_logic                        
            );
    end component;
    
    component segment_driver is
    port (
	     clk            : in std_logic;
	     rst            : in std_logic;
	     value_0        : in std_logic_vector(3 downto 0);
	     value_1        : in std_logic_vector(3 downto 0);
	     value_2        : in std_logic_vector(3 downto 0);
	     value_3        : in std_logic_vector(3 downto 0);
	     num	        : out std_logic_vector(7 downto 0);
	     seg_en	        : out std_logic_vector(3 downto 0)
	 ); 
    end component;
    
begin

   -- PORT MAP
   debouncer_Enter_key: debouncer
   port map ( clk          => clk,
              reset        => reset,
              button_in    => b_Enter,
              button_out   => enter
            );  
            
   debouncer_Sign_key: debouncer
   port map ( clk          => clk,
              reset        => reset,
              button_in    => b_Sign,
              button_out   => sign_key
            );
    
   ALU_ctrl_inst: ALU_ctrl
    port map(clk     =>  clk,
             reset   =>  reset,
             enter   =>  enter,
             sign    =>  sign_key,
             FN      =>  FN,
             RegCtrl =>  RegCtrl
    );
   
   -- regUpdate
   reg_A_B: regUpdate
  port map (   
         clk         => clk,
         reset       => reset,
         RegCtrl     => RegCtrl,
         input       => input,
         A           => A,
         B           => B
        );
        
   ALU_inst: ALU
       port map( 
              A           =>A,
              B           =>B,
              FN          =>FN,
              result 	  =>result,
    	      overflow    =>overflow,
    	      sign        =>sign_flag
            );
            
                    
    alu_data_convert_inst: alu_data_convert
    port map( 
          result 	 =>result,
	      overflow   =>overflow,                       -- '1' if overflow ocurres, '0' otherwise 
	      sign       =>sign_flag,
	      value_0    =>value_0,
	      value_1    =>value_1,
	      value_2    =>value_2,
	      value_3    =>value_3
        );
    

    segment_driver_inst: segment_driver 
    port map (
	     clk            =>clk,
	     rst            =>reset,
	     value_0        =>value_0,
	     value_1        =>value_1,
	     value_2        =>value_2,
	     value_3        =>value_3,
	     num	        =>seven_seg,
	     seg_en	        =>anode
	 ); 
	 
   alu_state_led_inst: alu_state_led 
   port map ( 
          FN           =>FN, -- ALU functions provided by the ALU_Controller (see the lab manual)
          led_signed   =>led_signed,
          led_input_A =>led_input_A,
          led_input_B =>led_input_B,
          led_add =>led_add,
          led_sub =>led_sub,
          led_mod3 =>led_mod3
        );
                 
end structural;
