library ieee;
use ieee.std_logic_1164.all;


package ALU_components_pack is

    constant FN_INPUT_A:std_logic_vector (3 downto 0):="0000";
    constant FN_INPUT_B:std_logic_vector (3 downto 0):="0001";
    constant FN_U_ADD:std_logic_vector (3 downto 0):="0010";
    constant FN_U_SUB:std_logic_vector (3 downto 0):="0011";
    constant FN_U_MOD_3:std_logic_vector (3 downto 0):="0100";
    constant FN_S_INPUT_A:std_logic_vector (3 downto 0):="1000";
    constant FN_S_INPUT_B:std_logic_vector (3 downto 0):="1001";
    constant FN_S_ADD:std_logic_vector (3 downto 0):="1010";
    constant FN_S_SUB:std_logic_vector (3 downto 0):="1011";
    constant FN_S_MOD_3:std_logic_vector (3 downto 0):="1100";

   -- Button debouncing 
   component debouncer   
   port ( clk        : in  std_logic;
          reset      : in  std_logic;
          button_in  : in  std_logic;
          button_out : out std_logic
        );
   end component;
   
   -- D-flipflop
   component dff
   generic ( W : integer );
   port ( clk     : in  std_logic;
          reset   : in  std_logic;
          d       : in  std_logic_vector(W-1 downto 0);
          q       : out std_logic_vector(W-1 downto 0)
        );
   end component;
   
   -- ADD MORE COMPONENTS HERE IF NEEDED 
   
end ALU_components_pack;

-------------------------------------------------------------------------------
-- ALU component pack body
-------------------------------------------------------------------------------
package body ALU_components_pack is

end ALU_components_pack;

-------------------------------------------------------------------------------
-- debouncer component: There is no need to use this component, thogh if you get 
--                      unwanted moving between states of the FSM because of pressing
--                      push-button this component might be useful.
-------------------------------------------------------------------------------
library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity debouncer is
   port ( clk        : in  std_logic;
          reset      : in  std_logic;
          button_in  : in  std_logic;
          button_out : out std_logic
        );
end debouncer;

architecture behavioral of debouncer is

   --signal count      : unsigned(19 downto 0);  -- Range to count 20ms with 50 MHz clock
   signal count      : unsigned(19 downto 0);
   signal button_tmp : std_logic;
   
begin

process ( clk )
begin
   if clk'event and clk = '1' then
      if reset = '1' then
         count <= (others => '0');
      else
         count <= count + 1;
         button_tmp <= button_in;
         
         if (count = 0) then
            button_out <= button_tmp;
         end if;
      end if;
  end if;
end process;

end behavioral;

------------------------------------------------------------------------------
-- component dff - D-FlipFlop 
-------------------------------------------------------------------------------
library ieee;
use ieee.std_logic_1164.all;

entity dff is
   generic ( W : integer
           );
   port ( clk     : in  std_logic;
          reset   : in  std_logic;
          d       : in  std_logic_vector(W-1 downto 0);
          q       : out std_logic_vector(W-1 downto 0)
        );
end dff;

architecture behavioral of dff is

begin

   process ( clk )
   begin
      if clk'event and clk = '1' then
         if reset = '1' then
            q <= (others => '0');
         else
            q <= d;
         end if;
      end if;
   end process;              

end behavioral;

------------------------------------------------------------------------------
-- BEHAVORIAL OF THE ADDED COMPONENETS HERE
-------------------------------------------------------------------------------
