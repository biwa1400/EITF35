----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 2022/09/27 03:21:49
-- Design Name: 
-- Module Name: PE_DABIN - Behavioral
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


library ieee;
use ieee.numeric_std.all;
use ieee.std_logic_1164.all;


-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity PE_TOP_DABIN is
  port (
            clk         : in std_logic;
            rst         : in std_logic;
            start       : in std_logic;
            finish      : in std_logic;
            f_in        : in std_logic_vector(3 downto 0);
            valid_in_f  : in std_logic;
            ifmap_1     : in std_logic_vector(63 downto 0);
            ifmap_2     : in std_logic_vector(63 downto 0);
            ifmap_3     : in std_logic_vector(63 downto 0);
            ifmap_4     : in std_logic_vector(63 downto 0);
            count_PE    : in std_logic_vector(7 downto 0);
            Psum_1      : out std_logic_vector(7 downto 0);
            Psum_2      : out std_logic_vector(7 downto 0);
            Psum_3      : out std_logic_vector(7 downto 0);
            Psum_4      : out std_logic_vector(7 downto 0);
            start_acc   : out std_logic
  );
end PE_TOP_DABIN;

architecture Behavioral of PE_TOP_DABIN is
    signal f_in_next,f_in_current:std_logic_vector(63 downto 0);
    
    component PE_DABIN is
     port (
       clk : in STD_LOGIC;
        rst : in STD_LOGIC;
        start: in STD_LOGIC;
        finish: in STD_LOGIC;
        ifmap : in STD_LOGIC_VECTOR ( 63 downto 0 );
        count_PE : in STD_LOGIC_VECTOR ( 7 downto 0 );
        fin_value: in STD_LOGIC_VECTOR (15 downto 0);
        Psum : out STD_LOGIC_VECTOR ( 7 downto 0 );
        start_acc: out STD_LOGIC

      );
    end component;
    
begin

    PE1_DABIN_inst:PE_DABIN
    port map (
        clk =>clk,
        rst =>rst,
        start => start,
        finish => finish,
        ifmap =>ifmap_1,
        count_PE =>count_PE,
        fin_value =>f_in_current(15 downto 0),
        Psum =>Psum_1,
        start_acc => start_acc
    );
    
        PE2_DABIN_inst:PE_DABIN
    port map (
        clk =>clk,
        rst =>rst,
        start => start,
        finish => finish,
        ifmap =>ifmap_2,
        count_PE =>count_PE,
        fin_value =>f_in_current(31 downto 16),
        Psum =>Psum_2
    );
    
    PE3_DABIN_inst:PE_DABIN
    port map (
        clk =>clk,
        rst =>rst,
        start => start,
        finish => finish,
        ifmap =>ifmap_3,
        count_PE =>count_PE,
        fin_value =>f_in_current(47 downto 32),
        Psum =>Psum_3
    );
    
        PE4_DABIN_inst:PE_DABIN
    port map (
        clk =>clk,
        rst =>rst,
        start => start,
        finish => finish,
        ifmap =>ifmap_4,
        count_PE =>count_PE,
        fin_value =>f_in_current(63 downto 48),
        Psum =>Psum_4
    );
    --f_in
    store_f_in: process(clk,rst)
    begin        
        if(rst = '1') then
            f_in_current <= (others => '0');
        elsif(clk'event and clk='1') then
            f_in_current <= f_in_next;
        end if;
   end process;
   
  
    f_in_process:process(valid_in_f,
            f_in,
            f_in_current)
    begin
        f_in_next <= f_in_current;
        if (valid_in_f = '1') then 
            f_in_next <= f_in & f_in_current(63 downto 4);
        end if;
    end process;

   
end Behavioral;
