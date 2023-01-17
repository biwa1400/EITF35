 ----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 2022/10/05 13:18:44
-- Design Name: 
-- Module Name: Pooling_DABIN - Behavioral
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

entity Pooling_DABIN is
    port (
        clk             : in std_logic;
        rst             : in std_logic;
        ofmap_RELU      : in std_logic_vector(3 downto 0);
        valid_data      : in std_logic;
        pooling_out     : out std_logic_vector(3 downto 0);
        valid_pooling   : out std_logic
        );
end Pooling_DABIN;

architecture Behavioral of Pooling_DABIN is
    signal h_cnt_next,h_cnt_current: unsigned (5 downto 0);
    signal v_cnt_next,v_cnt_current: unsigned (5 downto 0);
    
    signal h_trigger_begin,h_trigger_end:std_logic;
    signal v_trigger:std_logic;
    
    signal max_buf_next,max_buf_current:signed(15 downto 0);
    signal max_buf:signed(3 downto 0);
    signal max_value_next,max_value_current:signed(3 downto 0);
   
    signal valid_pooling_next,valid_pooling_current:std_logic;
    
    signal pooling_out_next, pooling_out_current:std_logic_vector(3 downto 0);
begin

    h_trigger_end <= '1' when(h_cnt_current = 14 or h_cnt_current = 29 or h_cnt_current = 44 or h_cnt_current = 59) else '0';
    h_trigger_begin <= '1' when(h_cnt_current = 0 or h_cnt_current = 15 or h_cnt_current = 30 or h_cnt_current = 45) else '0';
    
    v_trigger <=  '1' when(v_cnt_current = 14 or v_cnt_current = 29 or v_cnt_current = 44 or v_cnt_current = 59) else '0';
    
    sequential: process (clk, rst)
    begin
        if rst = '1' then
            h_cnt_current <= (others => '0');
            v_cnt_current <= (others => '0');
            max_value_current <= (others => '0');
            max_buf_current <= (others => '0');
            valid_pooling_current <= '0';
            pooling_out_current <= (others => '0');
            
        elsif rising_edge(clk) then
            h_cnt_current <= h_cnt_next;
            v_cnt_current <= v_cnt_next;
            max_value_current <= max_value_next;
            max_buf_current <= max_buf_next;
            valid_pooling_current <= valid_pooling_next;
            pooling_out_current <= pooling_out_next;
        end if;
    end process;
    
    
    h_cnt:process(h_cnt_current,
                      valid_data
                      )
    begin
        h_cnt_next <= h_cnt_current;
        if (valid_data = '1') then 
            if (h_cnt_current < 60) then
                h_cnt_next <= h_cnt_current + 1;
            else
                h_cnt_next <= (others => '0');
            end if;
        end if;
    end process;
    
    v_cnt:process(v_cnt_current,
                 valid_data,
                 h_cnt_current)
    begin
        v_cnt_next <= v_cnt_current;
        if (valid_data = '1') then 
            if (h_cnt_current = 60) then
                if (v_cnt_current < 60) then
                    v_cnt_next <= v_cnt_current + 1;
                else
                    v_cnt_next <= (others => '0');
                end if;
            end if;
        end if;
    end process; 
    
    max:process(max_value_current,
                valid_data,
                h_trigger_begin,
                ofmap_RELU
                )
    begin
        max_value_next <= max_value_current;
        if (valid_data = '1') then 
            if (h_trigger_begin = '1') then
                max_value_next <= signed(ofmap_RELU);
            else
                if(signed(ofmap_RELU) > max_value_current) then
                    max_value_next <= signed(ofmap_RELU);
                end if;
            end if;
        end if;
    end process;
    
    max_buf_index_process:process(max_buf_current,
                    valid_data,
                    h_trigger_end,
                    max_value_current,
                    h_cnt_current,
                    v_cnt_current)
    begin
        max_buf_next <= max_buf_current;
        if (valid_data = '1') then 
            if (h_trigger_end='1') then
                --here 
                -- for column, push max value in buffer
                if (h_cnt_current = 14) then -- first column
                    if (v_cnt_current = 0 or v_cnt_current = 15 or v_cnt_current = 30 or v_cnt_current = 45) then   -- first line for each blocks, 
                        max_buf_next(3 downto 0) <= max_value_current;
                    else -- other lines, find the maximum value
                        if(signed(max_value_current) > max_buf_current(3 downto 0)) then
                            max_buf_next(3 downto 0) <= signed(max_value_current);
                        end if;
                    end if;
                elsif (h_cnt_current = 29) then
                    if (v_cnt_current = 0 or v_cnt_current = 15 or v_cnt_current = 30 or v_cnt_current = 45) then -- first line for each blocks, 
                        max_buf_next(7 downto 4) <= max_value_current;
                    else -- other lines, find the maximum value
                        if(signed(max_value_current) > max_buf_current(7 downto 4)) then
                            max_buf_next(7 downto 4) <= signed(max_value_current);
                        end if;
                    end if;   
                elsif (h_cnt_current = 44) then
                    if (v_cnt_current = 0 or v_cnt_current = 15 or v_cnt_current = 30 or v_cnt_current = 45) then -- first line for each blocks, 
                        max_buf_next(11 downto 8) <= max_value_current;
                    else -- other lines, find the maximum value
                        if(signed(max_value_current) > max_buf_current(11 downto 8)) then
                            max_buf_next(11 downto 8) <= signed(max_value_current);
                        end if;
                    end if; 
                elsif (h_cnt_current = 59) then
                    if (v_cnt_current = 0 or v_cnt_current = 15 or v_cnt_current = 30 or v_cnt_current = 45) then -- first line for each blocks, 
                        max_buf_next(15 downto 12) <= max_value_current;
                     else -- other lines, find the maximum value
                        if(signed(max_value_current) > max_buf_current(15 downto 12)) then
                            max_buf_next(15 downto 12) <= signed(max_value_current);
                        end if;
                    end if;     
                end if;          
            end if;
        end if;
    end process;
    
    valid_pool:process(valid_data,
                       h_trigger_end,
                       v_trigger)
    begin
        valid_pooling_next <= '0';
        if (valid_data = '1') then 
            if (h_trigger_end='1' and v_trigger = '1') then
                valid_pooling_next <= '1';
            end if;
        end if;
    end process;
    
   pooling_out_process:process(pooling_out_current,
                       valid_data,
                       h_trigger_end,
                       v_trigger,
                       h_cnt_current,
                       max_buf_current)
    begin
        pooling_out_next <= pooling_out_current;
        if (valid_data = '1') then 
            if (h_trigger_end='1' and v_trigger = '1') then
                if (h_cnt_current = 14) then
                    pooling_out_next <= std_logic_vector(max_buf_current(3 downto 0));
                elsif (h_cnt_current = 29) then
                    pooling_out_next <= std_logic_vector(max_buf_current(7 downto 4));
                elsif (h_cnt_current = 44) then
                    pooling_out_next <= std_logic_vector(max_buf_current(11 downto 8));
                elsif (h_cnt_current = 59) then
                    pooling_out_next <= std_logic_vector(max_buf_current(15 downto 12));
                end if;
            end if;
        end if;
    end process;
    

    
    
    pooling_out <= pooling_out_current;
    valid_pooling <= valid_pooling_current;
    
    
    
 
    
    

end Behavioral;
