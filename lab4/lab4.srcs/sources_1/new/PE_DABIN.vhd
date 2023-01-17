----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 2022/10/01 15:32:34
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

entity PE_DABIN is
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
end PE_DABIN;

architecture Behavioral of PE_DABIN is
    type state_type is (STOP,SHIFTING_ADD_CALCULATE_4,CALCULATE_0,CALCULATE_1,CALCULATE_2,CALCULATE_3);
    signal ifmap_shifter_current,ifmap_shifter_next: STD_LOGIC_VECTOR ( 63 downto 0 );
    signal current_state,next_state: state_type;
    signal Psum_current,Psum_next: STD_LOGIC_VECTOR ( 7 downto 0 );
    signal begining_current,begining_next: STD_LOGIC;

begin
    ifmap_shifter_sequential: process (clk, rst)
    begin
        if rst = '1' then
            begining_current <= '1';
            ifmap_shifter_current <= (others =>'0');
            current_state <= STOP;
            Psum_current <= (others =>'0');
        elsif rising_edge(clk) then
            ifmap_shifter_current <= ifmap_shifter_next;
            current_state <= next_state;
            Psum_current <= Psum_next;
            begining_current <= begining_next;
        end if;
    end process;
    
    fsm:process(current_state,
                count_PE,
                start,
                finish,
                begining_current
                )
    begin
        next_state <= current_state;
        
        
       if(current_state /= STOP) then
            case count_PE(1 downto 0) is 
                when "00" => next_state <= CALCULATE_1;
                when "01" => next_state <= CALCULATE_2;
                when "10" => next_state <= CALCULATE_3;
                when "11" => next_state <= SHIFTING_ADD_CALCULATE_4;
                when others => next_state <= STOP;
            end case;
            
            if(finish = '1') then
                next_state <= STOP;
            end if;
            
        elsif (start = '1') then
             next_state <= CALCULATE_1;
        end if;
        
    end process;
    
    ifmap_shifter_combinational:process (ifmap_shifter_current,
                                         current_state)
    begin                  
        ifmap_shifter_next <= ifmap_shifter_current;
         if count_PE = "00000000"  then
              ifmap_shifter_next <= ifmap;
         else
                case current_state is 
                    when SHIFTING_ADD_CALCULATE_4 => ifmap_shifter_next <= '0'&ifmap_shifter_current(63 downto 1);
                    when others => ifmap_shifter_next <= ifmap_shifter_current;
                end case;  
         end if;
  
    end process;
    
   Psum_combinational:process (current_state,
                 Psum_current,
                 fin_value,
                 ifmap_shifter_current,
                 begining_current)
    begin                  
        Psum_next <= Psum_current;
        begining_next <= begining_current;
        case current_state is                                   
                when CALCULATE_1 => 
                    if (ifmap_shifter_current(0) = '1') then
                        Psum_next <= std_logic_vector(shift_right(signed(fin_value(3 downto 0)&"0000"),4));
                    else
                        Psum_next <= (others=>'0');
                    end if;
                    
                when CALCULATE_2 => 
                    begining_next <= '0';
                    if (ifmap_shifter_current(1) = '1') then
                        Psum_next <= std_logic_vector(shift_right(signed(fin_value(7 downto 4)&"0000"),4)+signed(Psum_current));
                    else
                        Psum_next <= Psum_current;
                    end if;
                    
                when CALCULATE_3 => 
                    if (ifmap_shifter_current(2) = '1') then
                        Psum_next <= std_logic_vector(shift_right(signed(fin_value(11 downto 8)&"0000"),4)+signed(Psum_current));
                    else
                        Psum_next <= Psum_current;
                    end if;
                    
                when SHIFTING_ADD_CALCULATE_4 => 
                    if (ifmap_shifter_current(3) = '1') then
                        Psum_next <= std_logic_vector(shift_right(signed(fin_value(15 downto 12)&"0000"),4)+signed(Psum_current));
                    else
                        Psum_next <= Psum_current;
                    end if;
                  
                 when STOP => 
                        Psum_next <= (others => '0');
                                       
                when others => Psum_next <= Psum_current;
        end case;    
    end process;
    
    start_acc_combinational:process (current_state,finish)
    begin                  
        start_acc <= '0';
        if (current_state = CALCULATE_1 and begining_current = '0') then
            start_acc <= '1';
        end if;   
    end process;
    
            
    Psum <= Psum_current;

end Behavioral;
