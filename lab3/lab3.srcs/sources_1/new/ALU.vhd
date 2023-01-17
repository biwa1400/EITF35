library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;


library work;
use work.ALU_components_pack.all;


entity ALU is
   port ( A          : in  std_logic_vector (7 downto 0);   -- Input A
          B          : in  std_logic_vector (7 downto 0);   -- Input B
          FN         : in  std_logic_vector (3 downto 0);   -- ALU functions provided by the ALU_Controller (see the lab manual)
          result 	 : out std_logic_vector (7 downto 0);   -- ALU output (unsigned binary)
	      overflow   : out std_logic;                       -- '1' if overflow ocurres, '0' otherwise 
	      sign       : out std_logic                        -- '1' if the result is a negative value, '0' otherwise
        );
end ALU;

architecture behavioral of ALU is
   component adder is
   port ( 
          OP_1          : in  std_logic_vector (7 downto 0);   -- Input A
          OP_2          : in  std_logic_vector (7 downto 0);   -- Input B
          output        : out  std_logic_vector (7 downto 0);
	      overflow      : out std_logic;                       -- '1' if overflow ocurres, '0' otherwise 
	      carry         : out std_logic                        -- '1' if the result is a negative value, '0' otherwise
        );
    end component;
    
    
    component mod3 is
    port ( 
          mod3_input      : in  std_logic_vector(7 downto 0);
          mod3_output     : out std_logic_vector(7 downto 0)
        );
    end component;
    
    signal adder_OP_1:std_logic_vector(7 downto 0);
    signal adder_OP_2:std_logic_vector(7 downto 0);
    signal adder_output:std_logic_vector(7 downto 0);
    signal adder_overflow:std_logic;
    signal adder_carry:std_logic;
    
    signal mod3_input:std_logic_vector(7 downto 0);
    signal mod3_output:std_logic_vector(7 downto 0);
    
    signal dummy:std_logic_vector(7 downto 0);

    
begin
   addr_inst:adder
   port map ( 
          OP_1         =>adder_OP_1,
          OP_2         =>adder_OP_2,
	      overflow     =>adder_overflow,
	      carry        =>adder_carry,
	      output       =>adder_output
        );
        
    mod3_inst:mod3 
    port map ( 
          mod3_input      =>mod3_input,
          mod3_output     =>mod3_output
        );
    

    
    process ( FN, A, B, adder_overflow, adder_carry,adder_output,mod3_output,dummy,adder_OP_1,adder_OP_2  )
    begin
        dummy <= (others =>'0');
        result <= (others =>'0');
        mod3_input <= (others =>'0');
        overflow <= '0';
        sign <= '0';
        
        adder_OP_1 <=(others =>'0');
        adder_OP_2 <=(others =>'0');
        
        case FN is
            when FN_INPUT_A =>
                result <= A;
                
            when FN_INPUT_B =>
                result <= B;

           when FN_S_INPUT_A =>
                result <=  A;
                sign <= A(7);
                
           
           when FN_S_INPUT_B =>
                result <=  B;
                sign <= B(7);
                
                
            when FN_U_ADD =>
                adder_OP_1 <= A;
                adder_OP_2 <= B;
                result <= adder_output;
                overflow <=  adder_carry;
                
                
            when FN_U_SUB =>
                adder_OP_1 <= A;
                adder_OP_2 <= std_logic_vector(unsigned(not B)+1);
                result <= adder_output;
                overflow <= not adder_carry;  
                if(signed(adder_OP_1)=0 or signed(adder_OP_2)=0)then
                    overflow <= '0';
                end if;
                
                
            when FN_U_MOD_3 =>
                mod3_input <= A;
                result <= mod3_output;
                
                 
            when FN_S_ADD =>
                adder_OP_1 <= A;
                adder_OP_2 <= B;
                result <= adder_output;
                overflow <= adder_overflow;
                sign <= adder_output(7);
                
                
                
            when FN_S_SUB =>
                adder_OP_1 <= A;
                adder_OP_2 <= std_logic_vector(unsigned(not B)+1);
                result <= adder_output;
                if(signed(adder_OP_2) = TO_SIGNED(-128,8)) then
                    overflow <= '1';
                else
                     overflow <= adder_overflow;
                end if;
               
                sign <= adder_output(7);
                
            when FN_S_MOD_3 =>
--                if(signed(A) < 0) then 
--                    mod3_input <= std_logic_vector(unsigned(not A)+1);
--                    result <= std_logic_vector(unsigned(not mod3_output)+1);
--                     sign <= '1';
--                else
--                    mod3_input <= A;
--                    result <= mod3_output;
--                end if;

                if(signed(A) < 0) then 
                    mod3_input <= std_logic_vector(unsigned(not A)+1);
                    dummy <= std_logic_vector(3 - unsigned(mod3_output));
                    if (unsigned(dummy) = 3) then
                        result <= (others =>'0');
                    else 
                         result <= dummy;
                    end if;
                else
                    mod3_input <= A;
                    result <= mod3_output;
                end if;

                
               
                
                        
            when others =>            
        end case;
    
    end process;

end behavioral;
