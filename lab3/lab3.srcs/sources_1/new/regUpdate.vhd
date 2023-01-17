library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity regUpdate is
   port ( clk        : in  std_logic;
          reset      : in  std_logic;
          RegCtrl    : in  std_logic_vector (1 downto 0);   -- Register update control from ALU controller
          input      : in  std_logic_vector (7 downto 0);   -- Switch inputs
          A          : out std_logic_vector (7 downto 0);   -- Input A
          B          : out std_logic_vector (7 downto 0)   -- Input B
        );
end regUpdate;

architecture behavioral of regUpdate is

    signal current_A,next_A:std_logic_vector (7 downto 0);
    signal current_B,next_B:std_logic_vector (7 downto 0);
    
    signal reg_A_act,reg_B_act:std_logic;

begin

    reg_A_act <= RegCtrl(0);
    reg_B_act <= RegCtrl(1);
    
    registers: process (clk, reset)
    begin
        if reset = '1' then
            current_A <= (others => '0');
            current_B <= (others => '0');
        elsif rising_edge(clk) then
            current_A <= next_A;
            current_B <= next_B;
        end if;
    end process;

    combinational: process (current_A, current_B,input,reg_A_act,reg_B_act)
    begin
        next_A <= current_A;
        next_B <= current_B;
        
        if(reg_A_act = '1') then
            next_A <= input;
        end if;
        
        if(reg_B_act = '1') then
            next_B <= input;
        end if;
    end process;

A <= current_A;
B <= current_B;
end behavioral;
