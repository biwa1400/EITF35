library ieee;
use ieee.std_logic_1164.all;

library work;
use work.ALU_components_pack.all;

entity binary2BCD is
   port ( binary_in : in  std_logic_vector(7 downto 0);  -- binary input width
          BCD_out   : out std_logic_vector(9 downto 0)        -- BCD output, 10 bits [2|4|4] to display a 3 digit BCD value when input has length 8
        );
end binary2BCD;

architecture structural of binary2BCD is 

-- SIGNAL DEFINITIONS HERE IF NEEDED
    
    component adder3 is
    port(
        input: in std_logic_vector(3 downto 0);
        output : out std_logic_vector(3 downto 0)
        );
    end component;
    
    signal t1,t2,t3,t4,t5,t6,t7:std_logic_vector(3 downto 0);
    signal add1_input,
           add2_input,
           add3_input,
           add4_input,
           add5_input,
           add6_input,
           add7_input:std_logic_vector(3 downto 0);
begin  

-- DEVELOPE YOUR CODE HERE
    add1_input <= '0'& binary_in(7 downto 5);
    add1: adder3 
    port map ( 
	     input =>add1_input,
	     output =>t1
    ); 
    
    add2_input <= t1(2 downto 0) & binary_in(4);
    add2: adder3 
    port map ( 
	     input => add2_input,
	     output =>t2
    );
    
    add3_input <= t2(2 downto 0) & binary_in(3);
    add3: adder3 
    port map ( 
	     input =>add3_input,
	     output =>t3
    ); 
    
    add4_input <='0' & t1(3) & t2(3) & t3(3);
    add4: adder3 
    port map ( 
	     input =>add4_input,
	     output =>t4
    ); 
    
    add5_input <=t3(2 downto 0) & binary_in(2);
    add5: adder3 
    port map ( 
	     input =>add5_input,
	     output =>t5
    ); 
    
    add6_input <= t4(2 downto 0) & t5(3);
    add6: adder3 
    port map ( 
	     input => add6_input,
	     output =>t6
    ); 
    
    add7_input <=t5(2 downto 0) & binary_in(1);
    add7: adder3 
    port map ( 
	     input =>add7_input,
	     output =>t7
    );  
    
    BCD_out <= t4(3) & t6(3 downto 0) & t7(3 downto 0) & binary_in(0);

end structural;
