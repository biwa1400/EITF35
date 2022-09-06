library ieee;				-- component #2
use ieee.std_logic_1164.all;

entity AND_GATE is
port(  	
    A:	in std_logic;
	B:	in std_logic;
	F1:	out std_logic
);
end AND_GATE;

architecture behv of AND_GATE is
begin
	F1 <= A and B;			-- behavior des.
end behv;