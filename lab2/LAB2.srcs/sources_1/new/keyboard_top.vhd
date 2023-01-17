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
use ieee.std_logic_1164.all; 
use ieee.numeric_std.all;


entity keyboard_top is
    port (
	     clk            : in std_logic;
	     rst_n          : in std_logic;
	     kb_data	    : in std_logic;
	     kb_clk	        : in std_logic;
	     sc		        : out unsigned(7 downto 0);
	     num	        : out unsigned(7 downto 0);
	     seg_en	        : out unsigned(3 downto 0)
	 );
end keyboard_top;

architecture keyboard_top_arch of keyboard_top is

    component ps2_decode is
    port (
             clk :               in std_logic; 
             rst_n :             in std_logic;
             scan_code_in :      in unsigned(7 downto 0);	     
             value_out:          out unsigned(3 downto 0)
    
         );
    end component;

  component vio_2 is
  Port ( 
    clk : in STD_LOGIC;
    probe_out0 : out STD_LOGIC_VECTOR ( 3 downto 0 );
    probe_out1 : out STD_LOGIC_VECTOR ( 3 downto 0 );
    probe_out2 : out STD_LOGIC_VECTOR ( 3 downto 0 );
    probe_out3 : out STD_LOGIC_VECTOR ( 3 downto 0 )
  );
  end component;
  
  component segment_driver is
    port (
         clk            : in std_logic;
         rst_n          : in std_logic;
         value_0        : in unsigned(3 downto 0);
         value_1        : in unsigned(3 downto 0);
         value_2        : in unsigned(3 downto 0);
         value_3        : in unsigned(3 downto 0);
         num	        : out unsigned(7 downto 0);
         seg_en	        : out unsigned(3 downto 0)
     ); 
    end component;
--    component vio_1 is
--      Port ( 
--        clk : in STD_LOGIC;
--        probe_out0 : out STD_LOGIC_VECTOR ( 3 downto 0 );
--        probe_out1 : out STD_LOGIC_VECTOR ( 7 downto 0 )
--      );
--      end component;
    component edge_detector is
	port (
		 clk : in std_logic;
		 rst_n : in std_logic;
		 kb_clk_sync : in std_logic;
		 edge_found : out std_logic
	     );
    end component;


    component sync_keyboard is
	port (
	     clk : in std_logic; 
	     rst_n : in std_logic; 
	     kb_clk : in std_logic;
	     kb_data : in std_logic;
	     kb_clk_sync : out std_logic;
	     kb_data_sync : out std_logic
	     );
    end component;

    component convert_scancode is
	port (
		 clk : in std_logic;
		 rst_n : in std_logic;
		 edge_found : in std_logic;
		 serial_data : in std_logic;
		 valid_scan_code : out std_logic;
		 scan_code_out : out unsigned(7 downto 0)
	     );
    end component;

    component keyboard_ctrl is
	port (
		 clk : in std_logic; 
		 rst_n : in std_logic;
		 valid_code : in std_logic;
		 scan_code_in : in unsigned(7 downto 0);
		 scan_code_out_0:   out unsigned(7 downto 0);
	     scan_code_out_1:   out unsigned(7 downto 0);
	     scan_code_out_2:   out unsigned(7 downto 0);
	     scan_code_out_3:   out unsigned(7 downto 0)
	     );
    end component;
    
--    component convert_to_binary is
--	port (
--		 scan_code_in : in unsigned(7 downto 0);
--		 binary_out : out unsigned(3 downto 0)
--	     );
--    end component;

--    component binary_to_sg
--	port (
--		 binary_in : in unsigned(3 downto 0);
--		 sev_seg   : out unsigned(7 downto 0)
--	     );
--    end component;

    signal kb_clk_sync, kb_data_sync : std_logic;
    signal edge_found : std_logic;
    signal scan_code : unsigned(7 downto 0);
    signal valid_scan_code : std_logic; 
--    signal binary_num : unsigned(3 downto 0);
    signal code_to_display : unsigned(7 downto 0);
    
    signal segment_value_0,segment_value_1,segment_value_2,segment_value_3 : unsigned ( 3 downto 0 );

    signal scan_code_out_0,scan_code_out_1,scan_code_out_2,scan_code_out_3 : unsigned ( 7 downto 0 );

begin  
--    try1 : vio_1 
--      Port map( 
--         clk => clk,
--        probe_out0 => seg_en,
--        probe_out1 => num
--      );

--	vio_2_inst : vio_2
--    port map(
--        clk  => clk,
--        probe_out0 => probe_out0,
--        probe_out1 => probe_out1,
--        probe_out2 => probe_out2,
--        probe_out3 => probe_out3
--     ); 


    segment_driver_inst : segment_driver
    port map(
         clk            => clk,
         rst_n          => rst_n,
         value_0       =>segment_value_0,
         value_1        =>segment_value_1,
         value_2        =>segment_value_2,
         value_3        =>segment_value_3,
         num	        =>num,
         seg_en	       =>seg_en
     ); 
	     
	     

     
-- syncrhonize all the input signal from keyboard
    sync_keyboard_inst : sync_keyboard
    port map (
		 clk => clk,
		 rst_n => rst_n,
		 kb_clk => kb_clk,
		 kb_data => kb_data,
		 kb_clk_sync => kb_clk_sync,
		 kb_data_sync => kb_data_sync
	     );

-- detect the falling edge of kb_clk
-- double check if its synthesizable !!
    edge_detector_inst : edge_detector
    port map (
		 clk => clk,
		 rst_n => rst_n,
		 kb_clk_sync => kb_clk_sync,
		 edge_found => edge_found
	     );


-- basically convert serial kb_data to parallel scan code 
-- make sure not to use edge_found as clock !!! (i.e dont use edge_found'event)
    convert_scancode_inst : convert_scancode
    port map (
		 clk => clk,
		 rst_n => rst_n,
		 edge_found => edge_found,
		 serial_data => kb_data_sync,
		 valid_scan_code => valid_scan_code,
		 scan_code_out => scan_code
	     );
-- drive led with the shifted output
    sc <= scan_code;
    
    


-- control, implement state machine
    keyboard_ctrl_inst : keyboard_ctrl
    port map (
		 clk => clk,
		 rst_n => rst_n,
		 valid_code => valid_scan_code,
		 scan_code_in => scan_code,
		 scan_code_out_0 => scan_code_out_0,
		 scan_code_out_1 => scan_code_out_1,
		 scan_code_out_2 => scan_code_out_2,
		 scan_code_out_3 => scan_code_out_3
	     );
	     
	     
    ps2_decode_0 : ps2_decode
    port map (
		 clk => clk,
		 rst_n => rst_n,
		 scan_code_in => scan_code_out_0,
		 value_out => segment_value_0
		 );
		 
    ps2_decode_1 : ps2_decode
    port map (
		 clk => clk,
		 rst_n => rst_n,
		 scan_code_in => scan_code_out_1,
		 value_out => segment_value_1
		 );
		 
    ps2_decode_2 : ps2_decode
    port map (
		 clk => clk,
		 rst_n => rst_n,
		 scan_code_in => scan_code_out_2,
		 value_out => segment_value_2
		 );
		 
		 
    ps2_decode_3 : ps2_decode
    port map (
		 clk => clk,
		 rst_n => rst_n,
		 scan_code_in => scan_code_out_3,
		 value_out => segment_value_3
		 );

	 

--    convert_to_binary_inst : convert_to_binary
--    port map (
--		 scan_code_in => code_to_display,
--		 binary_out => binary_num
--	     );


--    binary_to_sg_inst : binary_to_sg
--    port map (
--		 binary_in => binary_num,
--		 sev_seg => num
--	     );

end keyboard_top_arch;
