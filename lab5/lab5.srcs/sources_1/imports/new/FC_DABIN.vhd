----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 2022/10/09 17:51:56
-- Design Name: 
-- Module Name: FC_DABIN - Behavioral
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

entity FC_DABIN is
        port(
            clk             : in std_logic;
            rst             : in std_logic;
            kernel_FC1_in   : in std_logic_vector(3 downto 0);
            valid_FC1_in    : in std_logic;
            kernel_FC2_in   : in std_logic_vector(3 downto 0);
            valid_FC2_in    : in std_logic;
            pooling         : in std_logic_vector(3 downto 0);
            valid_pooling   : in std_logic;
            output          : out std_logic;
            valid_output    : out std_logic
            );
                
end FC_DABIN;

architecture Behavioral of FC_DABIN is

    component fc_mul_add is
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
    end component;
    
    component RELU_DABIN is
        generic (
            LENGTH: integer := 8
        );
        port(
            ofmap_in : in STD_LOGIC_VECTOR ( LENGTH-1 downto 0 );
            valid_ofmap : in STD_LOGIC;
            ofmap_relu : out STD_LOGIC_VECTOR ( LENGTH-1 downto 0 )
            );
    end component;

    signal fc_filter_buf_current,fc_filter_buf_next:std_logic_vector(191 downto 0); --4x16x3
    signal fc_filter2_buf_current,fc_filter2_buf_next:std_logic_vector(11 downto 0); --4x3
    
    signal fc_filter1,fc_filter2,fc_filter3:std_logic_vector(63 downto 0);--4x16
    signal valid_FC1_current,FC1_Fall_edge:std_logic;
    signal result_1,result_2,result_3:std_logic_vector(7 downto 0);
    signal result:signed(7 downto 0);
    signal counter_current,counter_next:unsigned(4 downto 0);
    
    signal fc_relu_out_1,fc_relu_out_2,fc_relu_out_3:std_logic_vector(7 downto 0);
    
begin

    fc_mul_add_1 : fc_mul_add
        port map(
            clk             =>    clk,
            rst             =>    rst,
            fc_filter       =>    fc_filter1,
            valid_fc_filter =>    FC1_Fall_edge,
            pooling         =>    pooling,
            valid_pooling   =>    valid_pooling,
            bias            =>    to_signed(-12,8),
            result          =>    result_1
            );

    fc_mul_add_2 : fc_mul_add
        port map(
            clk             =>    clk,
            rst             =>    rst,
            fc_filter       =>    fc_filter2,
            valid_fc_filter =>    FC1_Fall_edge,
            pooling         =>    pooling,
            valid_pooling   =>    valid_pooling,
            bias            =>    to_signed(20,8),
            result          =>    result_2
            );
            
    fc_mul_add_3 : fc_mul_add
        port map(
            clk             =>    clk,
            rst             =>    rst,
            fc_filter       =>    fc_filter3,
            valid_fc_filter =>    FC1_Fall_edge,
            pooling         =>    pooling,
            valid_pooling   =>    valid_pooling,
            bias            =>    to_signed(24,8),
            result          =>    result_3
            );
            
    RELU_inst_1 : RELU_DABIN
        port map(
            ofmap_in    => result_1,
            valid_ofmap => '1',
            ofmap_relu  => fc_relu_out_1
            );
    RELU_inst_2 : RELU_DABIN
        port map(
            ofmap_in    => result_2,
            valid_ofmap => '1',
            ofmap_relu  => fc_relu_out_2
            );
    RELU_inst_3 : RELU_DABIN
        port map(
            ofmap_in    => result_3,
            valid_ofmap => '1',
            ofmap_relu  => fc_relu_out_3
            );
            

    fc_filter1 <= fc_filter_buf_current(63 downto 0);
    fc_filter2 <= fc_filter_buf_current(127 downto 64);
    fc_filter3 <= fc_filter_buf_current(191 downto 128);
    
     sequential: process (clk, rst)
        begin
            if rst = '1' then
                fc_filter_buf_current <= (others => '0');
                fc_filter2_buf_current <= (others => '0');
                valid_FC1_current <= '0'; 
                counter_current <= (others => '0');
            elsif rising_edge(clk) then
                fc_filter_buf_current <= fc_filter_buf_next;
                fc_filter2_buf_current <= fc_filter2_buf_next;
                valid_FC1_current <= valid_FC1_in;
                counter_current <= counter_next;
            end if;
        end process;
      
    FC1_Fall_edge <= valid_FC1_current and (not valid_FC1_in);
    
     fc_filter_buf_filling:process(
        fc_filter_buf_current,
        valid_FC1_in,
        kernel_FC1_in
                )
    begin
        fc_filter_buf_next <= fc_filter_buf_current;
        if(valid_FC1_in = '1') then
            fc_filter_buf_next <= kernel_FC1_in & fc_filter_buf_current(191 downto 4);
        end if;
        
    end process;
    
    
    fc_filter2_buf_filling:process(
        fc_filter2_buf_current,
        valid_FC2_in,
        kernel_FC2_in
                )
    begin
        fc_filter2_buf_next <= fc_filter2_buf_current;
        if(valid_FC2_in = '1') then
            fc_filter2_buf_next <= kernel_FC2_in & fc_filter2_buf_current(11 downto 4);
        end if;
        
    end process;
    
    
    counter_process:process(
        counter_current,
        valid_pooling
                )
    begin
        counter_next <= counter_current;
        if(valid_pooling = '1') then
            counter_next <= counter_current+1;
        end if;
    end process;
    
    result_process:process(
        counter_current,
        fc_relu_out_3,
        fc_relu_out_2,
        fc_relu_out_1,
        fc_filter2_buf_current
        )
    begin
        output <= '0' ;
        valid_output <= '0';
       if(counter_current = 16) then
            if(signed(fc_relu_out_3)*signed(fc_filter2_buf_current(11 downto 8)) + signed(fc_relu_out_2)*signed(fc_filter2_buf_current(7 downto 4)) + signed(fc_relu_out_1)*signed(fc_filter2_buf_current(3 downto 0)) + 6 > 0)then
                output <= '1' ;
            end if;
            valid_output <= '1';
       end if;
    end process;
    
end Behavioral;
