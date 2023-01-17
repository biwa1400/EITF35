library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;


library work;
use work.ALU_components_pack.all;


entity ALU_2 is
   port ( A          : in  std_logic_vector (7 downto 0);   -- Input A
          B          : in  std_logic_vector (7 downto 0);   -- Input B
          FN         : in  std_logic_vector (3 downto 0);   -- ALU functions provided by the ALU_Controller (see the lab manual)
          result 	 : inout std_logic_vector (7 downto 0);   -- ALU output (unsigned binary)
	      overflow   : out std_logic;                       -- '1' if overflow ocurres, '0' otherwise 
	      sign       : out std_logic                        -- '1' if the result is a negative value, '0' otherwise
        );
end ALU_2;

architecture behavioral of ALU_2 is
begin
    
    process ( FN, A, B, result )
    begin
        result <= (others =>'0');
        overflow <= '0';
        sign <= '0';
        
        case FN is
            when FN_INPUT_A =>
                result <= A;
                
            when FN_INPUT_B =>
                result <= B;

           when FN_S_INPUT_A =>
                result <= A;
                if (signed(A) < 0) then 
                    sign <= '1';
                end if;
           
           when FN_S_INPUT_B =>
                result <= B;
                if (signed(B) < 0) then 
                    sign <= '1';
                end if;
                
                
            when FN_U_ADD =>
                result <= std_logic_vector(unsigned(A) + unsigned(B));  
            when FN_U_SUB =>
                 result <= std_logic_vector(unsigned(A) - unsigned(B));  
                 
            when FN_S_ADD =>
                result <= std_logic_vector(signed(A) + signed(B));
             
                 -- overflow
                if (signed(A) > 0 and signed(B) > 0 and signed(result) <= 0) or (signed(A) < 0 and signed(B) < 0 and signed(result) >= 0) then   -- overflow
                    overflow <= '1';
                end if;
                
                -- sign
                if (signed(result) < 0) then 
                    sign <= '1';
                end if;
                
            when FN_S_SUB =>
                result <= std_logic_vector(signed(A) - signed(B));
                
                -- overflow
                if (signed(A) > 0 and signed(B) < 0 and signed(result) <= 0) or (signed(A) < 0 and signed(B) > 0 and signed(result) >= 0) then   -- overflow
                    overflow <= '1';
                end if;
                
                -- sign
                if (signed(result) < 0) then 
                    sign <= '1';
                end if;
             
             
            when others =>            
        end case;
    
    end process;

end behavioral;
