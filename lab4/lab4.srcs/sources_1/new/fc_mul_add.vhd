----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 2022/10/09 18:51:16
-- Design Name: 
-- Module Name: fc_mul_add - Behavioral
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
use ieee.numeric_std.all;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity fc_mul_add is
    port (
        clk                 : in std_logic;
        rst                 : in std_logic;
        fc_filter           : in std_logic_vector(63 downto 0);
        valid_fc_filter     : in std_logic;
        pooling             : in std_logic_vector(3 downto 0);
        valid_pooling       : in std_logic;
        bias                : in signed(7 downto 0);
        result              : out std_logic_vector(7 downto 0)
	 );
end fc_mul_add;

architecture Behavioral of fc_mul_add is
    signal fc_filter_current,fc_filter_next:std_logic_vector(63 downto 0);
    signal result_current,result_next:signed(7 downto 0);
begin
    
    sequential: process (clk, rst)
    begin
        if rst = '1' then
            fc_filter_current <= (others => '0');
            result_current <= (others => '0');
        elsif rising_edge(clk) then
            fc_filter_current <= fc_filter_next;
            result_current <= result_next;
        end if;
    end process;
    
    fc_filter_process: process (fc_filter_current,
                    valid_fc_filter,
                    fc_filter,
                    valid_pooling
                    )
    begin
        fc_filter_next <= fc_filter_current;
        if(valid_fc_filter = '1') then
            fc_filter_next <= fc_filter;
        end if;
        if(valid_pooling = '1') then
            fc_filter_next <= "0000" & fc_filter_current(63 downto 4);
        end if;
    end process;
    
    
    result_process: process (result_current,
                             valid_pooling,
                             fc_filter_current,
                             pooling)
    begin
        result_next <= result_current;
        if(valid_fc_filter = '1') then
            result_next <= bias;
        end if;
        if(valid_pooling = '1') then
            result_next <= result_current + (signed(fc_filter_current(3 downto 0)) * signed(pooling));
        end if;
    end process;
    
    result <= std_logic_vector(result_current);

end Behavioral;
