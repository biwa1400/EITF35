-------------------------------------------------------------------------------
-- Title      : edge_detector.vhd 
-- Project    : Keyboard VLSI Lab
-------------------------------------------------------------------------------
-------------------------------------------------------------------------------
-- Description: 
-- 		        Make sure not to use 'EVENT on anyother signals than clk
-- 		        
--
-------------------------------------------------------------------------------

library ieee;
use ieee.numeric_std.all;
use ieee.std_logic_1164.all;


entity edge_detector is
    port (
	     clk :         in std_logic;
	     rst_n :       in std_logic;
	     kb_clk_sync : in std_logic;
	     edge_found :  out std_logic
	 );
end edge_detector;


architecture edge_detector_arch of edge_detector is
    signal kb_clk_sync_edge_frontshot,kb_clk_sync_edge_backshot : std_logic;
begin
    process(clk,rst_n) -- process for kb_data_sync
        begin
            if rst_n = '0' then
                kb_clk_sync_edge_frontshot <= '0';
                kb_clk_sync_edge_backshot <= '1';
            elsif rising_edge(clk) then
                kb_clk_sync_edge_backshot <= kb_clk_sync;
                kb_clk_sync_edge_frontshot <= kb_clk_sync_edge_backshot;
            end if;
    end process;
    
    -- falling edge
    edge_found <= kb_clk_sync_edge_frontshot and (not kb_clk_sync_edge_backshot);
end edge_detector_arch;
