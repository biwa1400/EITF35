-------------------------------------------------------------------------------
-- Title      : sync_keyboard.vhd 
-- Project    : Keyboard VLSI Lab
-------------------------------------------------------------------------------

library ieee;
use ieee.numeric_std.all;
use ieee.std_logic_1164.all;

entity sync_keyboard is
    port (
	     clk : in std_logic; 
	     rst_n : in std_logic; 
	     kb_clk : in std_logic;
	     kb_data : in std_logic;
	     kb_clk_sync : out std_logic;
	     kb_data_sync : out std_logic
	 );
end sync_keyboard;


architecture sync_keyboard_arch of sync_keyboard is
    signal kb_clk_sync_ff_1,kb_clk_sync_ff_2 : std_logic;
    signal kb_data_sync_ff_1,kb_data_sync_ff_2 : std_logic;
begin
    process(clk,rst_n) -- process for kb_clk_sync_ff
    begin
        if rst_n = '0' then
            kb_clk_sync_ff_1 <= '0';
            kb_clk_sync_ff_2 <= '0';
        elsif rising_edge(clk) then
            kb_clk_sync_ff_1 <= kb_clk;
            kb_clk_sync_ff_2 <= kb_clk_sync_ff_1;
        end if;
    end process;
    kb_clk_sync <= kb_clk_sync_ff_2;
    
    process(clk,rst_n) -- process for kb_data_sync
    begin
        if rst_n = '0' then
            kb_data_sync_ff_1 <= '0';
            kb_data_sync_ff_2 <= '0';
        elsif rising_edge(clk) then
            kb_data_sync_ff_1 <= kb_data;
            kb_data_sync_ff_2 <= kb_data_sync_ff_1;
        end if;
    end process;
    kb_data_sync <= kb_data_sync_ff_2;
    

end sync_keyboard_arch;
