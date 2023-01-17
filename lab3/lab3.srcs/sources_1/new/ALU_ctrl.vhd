library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

library work;
use work.ALU_components_pack.all;

entity ALU_ctrl is
   port ( clk     : in  std_logic;
          reset   : in  std_logic;
          enter   : in  std_logic;
          sign    : in  std_logic;
          FN      : out std_logic_vector (3 downto 0);   -- ALU functions
          RegCtrl : out std_logic_vector (1 downto 0)   -- Register update control bits
        );
end ALU_ctrl;

  architecture behavioral of ALU_ctrl is
    component edge_detector is
    port (
	     clk          : in std_logic;
	     reset        : in std_logic;
	     pulse_input  : in std_logic;
	     edge_rise_found   : out std_logic;
	     edge_fall_found   : out std_logic
	 );
    end component;

    type state_type is (s_input_A, 
                        s_input_B,
                        s_input_A_signed,
                        s_input_B_signed,
                        s_U_A_add_B, 
                        s_U_A_sub_B, 
                        s_U_A_mod_3,
                        s_S_A_add_B,
                        s_S_A_sub_B,
                        s_S_A_mod_3);
                        
                        
                        
    signal current_state, next_state: state_type;
    signal enter_rise_edge,sign_rise_edge:std_logic;
    signal reg_A_act,reg_B_act:std_logic;
begin

    enter_rise_detector: edge_detector  
    port map ( 
	     clk                    =>clk,
	     reset                  =>reset,
	     pulse_input            =>enter,
	     edge_rise_found        =>enter_rise_edge
    );   
    
    sign_rise_detector: edge_detector  
    port map ( 
	     clk                    =>clk,
	     reset                  =>reset,
	     pulse_input            =>sign,
	     edge_rise_found        =>sign_rise_edge
    ); 

    registers: process (clk, reset)
    begin
        if reset = '1' then
            current_state <= s_input_A;
        elsif rising_edge(clk) then
            current_state <= next_state;
        end if;
    end process;
    
    combinational: process (current_state,enter_rise_edge,sign_rise_edge)
    begin
        next_state <= current_state;
        reg_A_act <= '0';
        reg_B_act <= '0';
        FN <= FN_INPUT_A;
        
        case current_state is
            when s_input_A =>
                 reg_A_act <= '1';
                 FN <= FN_INPUT_A;
                 if enter_rise_edge = '1' then
                    next_state <= s_input_B;
                 elsif sign_rise_edge = '1' then
                    next_state <= s_input_A_signed;
                 else
                    next_state <= s_input_A;
                 end if;
                 
            when s_input_B =>
                reg_B_act <= '1';
                FN <= FN_INPUT_B;
                if enter_rise_edge = '1' then
                   next_state <= s_U_A_add_B;
                elsif sign_rise_edge = '1' then
                    next_state <= s_input_B_signed;
                else
                   next_state <= s_input_B;
                end if;
                
            when s_input_A_signed =>
                 reg_A_act <= '1';
                 FN <= FN_S_INPUT_A;
                 if enter_rise_edge = '1' then
                    next_state <= s_input_B_signed;
                 elsif sign_rise_edge = '1' then
                    next_state <= s_input_A;
                 else
                    next_state <= s_input_A_signed;
                 end if;
                 
            when s_input_B_signed =>
                reg_B_act <= '1';
                FN <= FN_S_INPUT_B;
                if enter_rise_edge = '1' then
                   next_state <= s_S_A_add_B;
                elsif sign_rise_edge = '1' then
                    next_state <= s_input_B;
                else
                   next_state <= s_input_B_signed;
                end if;
            
                 
            when s_U_A_add_B =>
                 FN <=FN_U_ADD;
                 if enter_rise_edge = '1' then
                    next_state <= s_U_A_sub_B;
                 elsif sign_rise_edge = '1' then
                    next_state <= s_S_A_add_B;
                 else
                    next_state <= s_U_A_add_B;
                 end if;
 
            when s_U_A_sub_B =>
                 FN <= FN_U_SUB;
                 if enter_rise_edge = '1' then
                    next_state <= s_U_A_mod_3;
                 elsif sign_rise_edge = '1' then
                    next_state <= s_S_A_sub_B;
                 else
                    next_state <= s_U_A_sub_B;
                 end if;
                 
            when s_U_A_mod_3 =>
                 FN <= FN_U_MOD_3;
                 if enter_rise_edge = '1' then
                    next_state <= s_U_A_add_B;
                 elsif sign_rise_edge = '1' then
                    next_state <= s_S_A_mod_3;
                 else
                    next_state <= s_U_A_mod_3;
                 end if;                
                
            when  s_S_A_add_B => 
                 FN <= FN_S_ADD;
                 if enter_rise_edge = '1' then
                    next_state <= s_S_A_sub_B;
                 elsif sign_rise_edge = '1' then
                    next_state <= s_U_A_add_B;
                 else
                    next_state <= s_S_A_add_B;
                 end if;
                 
            when  s_S_A_sub_B => 
                 FN <= FN_S_SUB;
                 if enter_rise_edge = '1' then
                    next_state <= s_S_A_mod_3;
                 elsif sign_rise_edge = '1' then
                    next_state <= s_U_A_sub_B;
                 else
                    next_state <= s_S_A_sub_B;
                 end if;
               
            when  s_S_A_mod_3 =>
                 FN <= FN_S_MOD_3;
                 if enter_rise_edge = '1' then
                    next_state <= s_S_A_add_B;
                 elsif sign_rise_edge = '1' then
                    next_state <= s_U_A_mod_3;
                 else
                    next_state <= s_S_A_mod_3;
                 end if;
         end case;
    end process;

   
    RegCtrl <= reg_B_act & reg_A_act;
end behavioral;
