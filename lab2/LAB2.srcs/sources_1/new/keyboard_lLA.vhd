-------------------------------------------------------------------------------
-- Title      : keyboard_top.vhd 
-- Project    : Keyboard VLSI Lab
-------------------------------------------------------------------------------
-------------------------------------------------------------------------------
-- Description: 
-- 		Keyboard top level	
-- 		Functionality of all sub-modules are mentioned in manual.
--		All the required interconnects are already done, students have
-- 		to basically fill vhdl code in the sub-modules !!
--		
--
--
--
-------------------------------------------------------------------------------

library ieee;
use ieee.numeric_std.all;
use ieee.std_logic_1164.all;


entity keyboard_ILA is
    port (
	     clk          : in std_logic;
	     rst_n        : in std_logic;
	     kb_data	  : in std_logic;
	     kb_clk	      : in std_logic
	 );
end keyboard_ILA;

architecture keyboard_ILA_arch of keyboard_ILA is

    component ila_0 is
      Port ( 
        clk : in STD_LOGIC;
        probe0 : in STD_LOGIC_VECTOR ( 0 to 0 );
        probe1 : in STD_LOGIC_VECTOR ( 0 to 0 )
      );
    end component;

begin  

-- syncrhonize all the input signal from keyboard
    ila_0_inst : ila_0
    port map (
		 clk => clk,
         probe0(0) => kb_clk,
         probe1(0) => kb_data
	     );

end keyboard_ILA_arch;
