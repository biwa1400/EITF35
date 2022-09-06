library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.std_logic_arith.all;

entity CKT_TB is				-- empty entity 
end CKT_TB; 


architecture TB of CKT_TB is 
component comb_ckt is
port(	
    input1: in std_logic;
    input2: in std_logic;
    input3: in std_logic;
    output: out std_logic
);
end component;

signal T_input1, T_input2, T_input3, T_output: std_logic;
begin 
    U_UT: comb_ckt port map (T_input1,T_input2,T_input3,T_output); 
    process 
        variable err_cnt: integer := 0;
    begin
    
        -- Test case 1
        T_input1 <= '0';
        T_input2 <= '0';
        T_input3 <= '0';
        wait for 10 ns;
        assert (T_output=((T_input1 or T_input2) and T_input3))
        report "Failed Case1!" severity error;
        if (T_output/=((T_input1 or T_input2) and T_input3)) then
            err_cnt := err_cnt +1;
        end if;

        
        -- Test case 2
        T_input1 <= '1';
        T_input2 <= '1';
        T_input3 <= '1';
        wait for 10 ns;
        assert (T_output=((T_input1 or T_input2) and T_input3))
        report "Failed Case1!" severity error;
        if (T_output/=((T_input1 or T_input2) and T_input3)) then
            err_cnt := err_cnt +1;
        end if;
        
        -- Test case 3
        T_input1 <= '1';
        T_input2 <= '0';
        T_input3 <= '1';
        wait for 10 ns;
        assert (T_output=((T_input1 or T_input2) and T_input3))
        report "Failed Case1!" severity error;
        if (T_output/=((T_input1 or T_input2) and T_input3)) then
            err_cnt := err_cnt +1;
        end if;
		
        -- Test case 4
        T_input1 <= '0';
        T_input2 <= '1';
        T_input3 <= '0';
        wait for 10 ns;
        assert (T_output=((T_input1 or T_input2) and T_input3))
        report "Failed Case1!" severity error;
        if (T_output/=((T_input1 or T_input2) and T_input3)) then
            err_cnt := err_cnt +1;
        end if;
        
        	-- summary of all the tests to see if any errors

        if (err_cnt=0) then
            assert false report "Testbench completed successfully!" 
            severity note;
        else
            assert true
            report "Something wrong, try again pls!"
            severity error;
        end if;
        
        wait;					-- stop running
        
    end process;
end TB;
