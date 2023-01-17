----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 2022/10/11 15:29:30
-- Design Name: 
-- Module Name: CONV_controller_DABIN - Behavioral
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

entity CONV_controller_DABIN is
     port (
        clk         : in std_logic;
        rst         : in std_logic;
        start_in    : in std_logic;
        data_1      : out std_logic_vector(63 downto 0);
        data_2      : out std_logic_vector(63 downto 0);
        data_3      : out std_logic_vector(63 downto 0);
        data_4      : out std_logic_vector(63 downto 0);
        address_1   : out std_logic_vector(3 downto 0);
        address_2   : out std_logic_vector(3 downto 0);
        address_3   : out std_logic_vector(3 downto 0);
        address_4   : out std_logic_vector(3 downto 0);
        csn_1       : out std_logic;
        csn_2       : out std_logic;
        csn_3       : out std_logic;
        csn_4       : out std_logic;        
        wen_1       : out std_logic; 
        wen_2       : out std_logic;
        wen_3       : out std_logic;
        wen_4       : out std_logic;
        finish      : out std_logic;
        count_def   : out std_logic_vector(1 downto 0);
        count_PE    : out std_logic_vector(7 downto 0)
    );
end CONV_controller_DABIN;

architecture Behavioral of CONV_controller_DABIN is
    signal count_PE_current,count_PE_next:unsigned(7 downto 0);
    signal count_def_current,count_def_next:unsigned(1 downto 0);
    
    signal address_1_current,address_1_next:unsigned(3 downto 0);
    signal address_2_current,address_2_next:unsigned(3 downto 0);
    signal address_3_current,address_3_next:unsigned(3 downto 0);
    signal address_4_current,address_4_next:unsigned(3 downto 0);
    
    signal finish_current,finish_next:std_logic;
    
    signal start_count_current,start_count_next:std_logic;
begin
    data_1 <= (others => '0');
    data_2 <= (others => '0');
    data_3 <= (others => '0');
    data_4 <= (others => '0');
    
    address_1   <= std_logic_vector(address_1_current);
    address_2   <= std_logic_vector(address_2_current);
    address_3   <= std_logic_vector(address_3_current);
    address_4   <= std_logic_vector(address_4_current);
    
    csn_1      <= '0';
    csn_2      <= '0';
    csn_3      <= '0';
    csn_4      <= '0'; 
    
    wen_1      <= '0';
    wen_2      <= '0';
    wen_3      <= '0';
    wen_4      <= '0';
    
    finish      <=finish_current;
    count_def   <=std_logic_vector(count_def_current);
    count_PE    <=std_logic_vector(count_PE_current);
    
    sequential: process (clk, rst)
    begin
        if rst = '1' then
            count_PE_current <= (others => '0');
            start_count_current <= '0';
            finish_current <= '0';
            count_def_current <= (others => '0');
            address_1_current <= (others => '0');
            address_2_current <= (others => '0');
            address_3_current <= (others => '0');
            address_4_current <= (others => '0');
        elsif rising_edge(clk) then
            count_PE_current <= count_PE_next;
            start_count_current <= start_count_next;
            count_def_current <= count_def_next; 
            
            address_1_current <= address_1_next;
            address_2_current <= address_2_next;
            address_3_current <= address_3_next;
            address_4_current <= address_4_next;
            
            finish_current <= finish_next;
        end if;
    end process;
    
    count_PE_combi:process(count_PE_current,
                           start_count_current) 
    begin
        count_PE_next <= count_PE_current;
        if(start_count_current = '1') then
            if (count_PE_current < 243) then
                count_PE_next <= count_PE_current + 1;
            else
                count_PE_next <= (others => '0');
            end if;
        end if;
    end process;
    
    address_combi:process(address_1_current,
                           address_2_current,
                           address_3_current,
                           address_4_current,
                           count_PE_current,
                           count_def_current
                           )
    begin
        address_1_next <= address_1_current;
        address_2_next <= address_2_current;
        address_3_next <= address_3_current;
        address_4_next <= address_4_current;
        finish_next <= '0';
            
        if(count_PE_current = 243)then
            if(count_def_current = 0) then
                if(address_1_current < 15) then
                    address_1_next <= address_1_current + 1;
                else
                    address_1_next <= (others => '0');
                    address_2_next <= (others => '0');
                    address_3_next <= (others => '0');
                    address_4_next <= (others => '0');
                    finish_next <= '1';
                end if;
            elsif(count_def_current = 1) then
                if(address_1_current /= 0) then
                    address_2_next <= address_2_current + 1;
                else
                    address_2_next <= (others => '0');
                end if;
            elsif(count_def_current = 2) then
                if(address_1_current /= 0) then
                    address_3_next <= address_3_current + 1;
                else
                    address_3_next <= (others => '0');
                end if;
            else
                if(address_1_current /= 0) then
                    address_4_next <= address_4_current + 1;
                else
                    address_4_next <= (others => '0');
                end if;
            end if;
        end if;
    end process;
    
    
   count_def_combi:process(count_def_current, 
                           count_PE_current
                           )
    begin
        count_def_next <= count_def_current;
        if (count_PE_current = 243) then
            if(count_def_current < 3) then
                count_def_next <= count_def_current + 1;
            else
                count_def_next <= (others => '0');
            end if;
        end if;
    end process;
    
    start_count:process(start_count_current,
                        start_in)
    begin
        start_count_next <= start_count_current;
        if(start_in = '1') then
            start_count_next <= '1';
        end if;
        
    end process;
    
end Behavioral;
