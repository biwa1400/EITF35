library ieee;
use ieee.std_logic_1164.all;



entity switch_to_led is
    port(
        switch: in std_logic;
        led: out std_logic
    );
end switch_to_led;

architecture behavioral of switch_to_led is
begin

    led <= switch;

end behavioral;
