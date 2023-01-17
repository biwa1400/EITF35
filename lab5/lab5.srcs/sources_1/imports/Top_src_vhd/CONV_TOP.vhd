----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 09/17/2018 11:12:22 PM
-- Design Name: 
-- Module Name: Top_Initialize - Behavioral
-- Project Name: Initialize the coefficients
-- Target Devices: 
-- Tool Versions: 
-- Description: 
-- 
-- Dependencies: 
-- 
-- Revision:
-- Revision 0.01 - File Created Shenbagaraman Ramakrishnan
--								Arturo_Prieto
-- Additional Comments:
-- 
----------------------------------------------------------------------------------

library ieee;
use ieee.numeric_std.all;
use ieee.std_logic_1164.all;
use ieee.STD_LOGIC_unsigned.ALL;
use std.textio.all;
use std.standard.all;


entity CONV_TOP is
    port (
            clk               : in std_logic;
            rst               : in std_logic;
            start_in          : in std_logic;
            f_in              : in std_logic_vector(3 downto 0);
            valid_in_f        : in std_logic;
            valid_ofmap       : out std_logic;
            ofmap_dabin       : out std_logic_vector(3 downto 0);
            valid_ofmap_dabin : out std_logic
	 );
end CONV_TOP;


architecture CONV_TOP_arch of CONV_TOP is

    component CONV_Controller is
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
    end component;
    
    
    component CONV_controller_DABIN is
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
    end component;

    component RAM_IP_TOP is
        port ( 
            clk         : in std_logic;
            data_1      : in std_logic_vector(63 downto 0);
            data_2      : in std_logic_vector(63 downto 0);
            data_3      : in std_logic_vector(63 downto 0);
            data_4      : in std_logic_vector(63 downto 0);
            address_1   : in std_logic_vector(3 downto 0);
            address_2   : in std_logic_vector(3 downto 0);
            address_3   : in std_logic_vector(3 downto 0);
            address_4   : in std_logic_vector(3 downto 0);
            csn_1       : in std_logic;
            csn_2       : in std_logic;
            csn_3       : in std_logic;
            csn_4       : in std_logic;        
            wen_1       : in std_logic;
            wen_2       : in std_logic;
            wen_3       : in std_logic;
            wen_4       : in std_logic;
            count_def   : in unsigned(1 downto 0);
            data_out_1  : out std_logic_vector(63 downto 0);
            data_out_2  : out std_logic_vector(63 downto 0);
            data_out_3  : out std_logic_vector(63 downto 0);
            data_out_4  : out std_logic_vector(63 downto 0)
            );
    end component;
    
    -- change here
    component PE_TOP is
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
    end component;
    
    component PE_TOP_DABIN is
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
    end component;
    component Acc is
        port (
            clk         : in std_logic;
            rst         : in std_logic;
            start       : in std_logic;
            Psum1       : in std_logic_vector(7 downto 0);
            Psum2       : in std_logic_vector(7 downto 0);
            Psum3       : in std_logic_vector(7 downto 0);
            Psum4       : in std_logic_vector(7 downto 0);
            ofmap       : out std_logic_vector(3 downto 0);
            valid_ofmap : out std_logic
            );
    end component;
    
    component Accumulator_DABIN is
      port (
        clk : in STD_LOGIC;
        rst : in STD_LOGIC;
        start : in STD_LOGIC;
        Psum1 : in STD_LOGIC_VECTOR ( 7 downto 0 );
        Psum2 : in STD_LOGIC_VECTOR ( 7 downto 0 );
        Psum3 : in STD_LOGIC_VECTOR ( 7 downto 0 );
        Psum4 : in STD_LOGIC_VECTOR ( 7 downto 0 );
        ofmap : out STD_LOGIC_VECTOR ( 3 downto 0 );
        valid_ofmap : out STD_LOGIC
      );
    end component;
    
    
    
    component RELU_v1 is
        port(
            ofmap_in    : in std_logic_vector (3 downto 0);
            valid_ofmap : in std_logic;
            ofmap_relu  : out std_logic_vector(3 downto 0)
            );
    end component;
    
    
    component RELU_DABIN is
        generic (
            LENGTH: integer := 4
        );
        port(
            ofmap_in : in STD_LOGIC_VECTOR ( LENGTH-1 downto 0 );
            valid_ofmap : in STD_LOGIC;
            ofmap_relu : out STD_LOGIC_VECTOR ( LENGTH-1 downto 0 )
            );
    end component;
    
    -- Calculation related signals
    signal Psum1,Psum2,Psum3,Psum4 : std_logic_vector(7 downto 0);
    signal start,finish,start_acc : std_logic;
    signal ifmap_1,ifmap_2,ifmap_3,ifmap_4 : std_logic_vector(63 downto 0);
    signal ifmap_1_top,ifmap_2_top,ifmap_3_top,ifmap_4_top : std_logic_vector(63 downto 0);
  
    -- Memory related signals
    signal data_1,data_2,data_3,data_4 : std_logic_vector(63 downto 0);
    signal addr_1,addr_2,addr_3,addr_4 : std_logic_vector(3 downto 0);
    signal csn_1,csn_2,csn_3,csn_4 : std_logic;
    signal wen_1,wen_2,wen_3,wen_4 : std_logic;
    signal count_def : std_logic_vector(1 downto 0);
    signal count_PE : std_logic_vector(7 downto 0);
    
  
    
    signal  Psum1_dabin,Psum2_dabin,Psum3_dabin,Psum4_dabin:std_logic_vector(7 downto 0);
    signal  start_acc_dabin:std_logic;
    
    signal ofmap_conv_dabin: std_logic_vector(3 downto 0);
    signal valid_ofmap_conv_dabin : std_logic;



    begin
        
        valid_ofmap <= valid_ofmap_conv_dabin; 
        valid_ofmap_dabin <= valid_ofmap_conv_dabin;
        ifmap_1_top <= (ifmap_1);
        ifmap_2_top <= (ifmap_2);
        ifmap_3_top <= (ifmap_3);
        ifmap_4_top <= (ifmap_4);
 
    Controller_inst_dabin: CONV_Controller_DABIN         
--    Controller_inst: CONV_Controller
        port map(
            clk         => clk,
            rst         => rst,
            start_in    => start_in,
            data_1      => data_1,
            data_2      => data_2,
            data_3      => data_3,
            data_4      => data_4,
            address_1   => addr_1, 
            address_2   => addr_2,
            address_3   => addr_3,
            address_4   => addr_4,
            csn_1       => csn_1,
            csn_2       => csn_2,
            csn_3       => csn_3,
            csn_4       => csn_4,   
            wen_1       => wen_1,
            wen_2       => wen_2,
            wen_3       => wen_3, 
            wen_4       => wen_4,         
            finish      => finish,
            count_def   => count_def,
            count_PE    => count_PE
            );
            
--    Controller_inst_dabin: CONV_Controller_DABIN
--        port map(
--            clk         => clk,
--            rst         => rst,
--            start_in    => start_in
--            );
    
    RAM_inst: RAM_IP_TOP
        port map (
            clk         => clk,
            data_1      => data_1,
            data_2      => data_2,
            data_3      => data_3,
            data_4      => data_4,
            address_1   => addr_1,
            address_2   => addr_2,
            address_3   => addr_3,
            address_4   => addr_4,
            csn_1       => csn_1,
            csn_2       => csn_2,
            csn_3       => csn_3,
            csn_4       => csn_4,     
            wen_1       => wen_1,
            wen_2       => wen_2,
            wen_3       => wen_3,
            wen_4       => wen_4,
            count_def   => unsigned(count_def),
            data_out_1  => ifmap_1,
            data_out_2  => ifmap_2,
            data_out_3  => ifmap_3,
            data_out_4  => ifmap_4
            );
    
    
     PE_TOP_DABIN_inst : PE_TOP_DABIN
        port map(
            clk         => clk,
            rst         => rst,
            start       => start_in,
            finish      => finish,
            f_in        => f_in,
            valid_in_f  => valid_in_f,
            ifmap_1     => ifmap_1_top,
            ifmap_2     => ifmap_2_top,
            ifmap_3     => ifmap_3_top,
            ifmap_4     => ifmap_4_top,
            count_PE    => count_PE,
            Psum_1      => Psum1_dabin,
            Psum_2      => Psum2_dabin,
            Psum_3      => Psum3_dabin,
            Psum_4      => Psum4_dabin,
            start_acc   => start_acc_dabin
            );
         
    Accumulator_DABIN_inst : Accumulator_DABIN
        port map(
            clk         => clk,
            rst         => rst,
            start       => start_acc_dabin,
            Psum1       => Psum1_dabin,
            Psum2       => Psum2_dabin,
            Psum3       => Psum3_dabin,
            Psum4       => Psum4_dabin,
            ofmap       => ofmap_conv_dabin,
            valid_ofmap => valid_ofmap_conv_dabin
            );
                
    RELU_DABIN_inst : RELU_DABIN
        port map(
            ofmap_in    => ofmap_conv_dabin,
            valid_ofmap => valid_ofmap_conv_dabin,
            ofmap_relu  => ofmap_dabin
            );

end CONV_TOP_arch;