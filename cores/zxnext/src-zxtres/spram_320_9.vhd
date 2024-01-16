--------------------------------------------------------------------------------
--    This file is owned and controlled by Xilinx and must be used solely     --
--    for design, simulation, implementation and creation of design files     --
--    limited to Xilinx devices or technologies. Use with non-Xilinx          --
--    devices or technologies is expressly prohibited and immediately         --
--    terminates your license.                                                --
--                                                                            --
--    XILINX IS PROVIDING THIS DESIGN, CODE, OR INFORMATION "AS IS" SOLELY    --
--    FOR USE IN DEVELOPING PROGRAMS AND SOLUTIONS FOR XILINX DEVICES.  BY    --
--    PROVIDING THIS DESIGN, CODE, OR INFORMATION AS ONE POSSIBLE             --
--    IMPLEMENTATION OF THIS FEATURE, APPLICATION OR STANDARD, XILINX IS      --
--    MAKING NO REPRESENTATION THAT THIS IMPLEMENTATION IS FREE FROM ANY      --
--    CLAIMS OF INFRINGEMENT, AND YOU ARE RESPONSIBLE FOR OBTAINING ANY       --
--    RIGHTS YOU MAY REQUIRE FOR YOUR IMPLEMENTATION.  XILINX EXPRESSLY       --
--    DISCLAIMS ANY WARRANTY WHATSOEVER WITH RESPECT TO THE ADEQUACY OF THE   --
--    IMPLEMENTATION, INCLUDING BUT NOT LIMITED TO ANY WARRANTIES OR          --
--    REPRESENTATIONS THAT THIS IMPLEMENTATION IS FREE FROM CLAIMS OF         --
--    INFRINGEMENT, IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A   --
--    PARTICULAR PURPOSE.                                                     --
--                                                                            --
--    Xilinx products are not intended for use in life support appliances,    --
--    devices, or systems.  Use in such applications are expressly            --
--    prohibited.                                                             --
--                                                                            --
--    (c) Copyright 1995-2018 Xilinx, Inc.                                    --
--    All rights reserved.                                                    --
--------------------------------------------------------------------------------
--------------------------------------------------------------------------------
-- You must compile the wrapper file spram_320_9.vhd when simulating
-- the core, spram_320_9. When compiling the wrapper file, be sure to
-- reference the XilinxCoreLib VHDL simulation library. For detailed
-- instructions, please refer to the "CORE Generator Help".

-- The synthesis directives "translate_off/translate_on" specified
-- below are supported by Xilinx, Mentor Graphics and Synplicity
-- synthesis tools. Ensure they are correct for your synthesis tool(s).

LIBRARY ieee;
USE ieee.std_logic_1164.ALL;

ENTITY spram_320_9 IS
  PORT (
    a : IN STD_LOGIC_VECTOR(8 DOWNTO 0);
    d : IN STD_LOGIC_VECTOR(8 DOWNTO 0);
    clk : IN STD_LOGIC;
    we : IN STD_LOGIC;
    spo : OUT STD_LOGIC_VECTOR(8 DOWNTO 0)
  );
END spram_320_9;

ARCHITECTURE spram_320_9_a OF spram_320_9 IS

--    signal swea : STD_LOGIC_VECTOR(0 DOWNTO 0);

--COMPONENT spram IS
--    GENERIC (
--         DATAWIDTH : integer := 8; 
--         ADDRWIDTH : integer := 8;
--         MEM_INIT_FILE : string := ""
--    );
--    PORT (
--        clocka : IN STD_LOGIC;
--       
--        address_a : IN STD_LOGIC_VECTOR(ADDRWIDTH-1 DOWNTO 0);
--        data_a : IN STD_LOGIC_VECTOR(DATAWIDTH-1 DOWNTO 0);
--        wren_a : IN STD_LOGIC;
--        q_a : OUT STD_LOGIC_VECTOR(DATAWIDTH-1 DOWNTO 0)
--    );
--END COMPONENT;

COMPONENT sdpram_zxN IS
    GENERIC (
         DATAWIDTH : integer := 8; 
         ADDRWIDTH : integer := 8;
         MEM_INIT_FILE : string := "";
         FILL_REMAINING  : integer := 0
    );
    PORT (
        clocka : IN STD_LOGIC;
       
        address_a : IN STD_LOGIC_VECTOR(ADDRWIDTH-1 DOWNTO 0);
        data_a : IN STD_LOGIC_VECTOR(DATAWIDTH-1 DOWNTO 0);
        wren_a : IN STD_LOGIC;
        spo : OUT STD_LOGIC_VECTOR(DATAWIDTH-1 DOWNTO 0);
    
        address_dpra : IN STD_LOGIC_VECTOR(ADDRWIDTH-1 DOWNTO 0);
        dpo : OUT STD_LOGIC_VECTOR(DATAWIDTH-1 DOWNTO 0)
    );
END COMPONENT;


    
BEGIN

--swea(0) <= we;

--U0 : spram
--    GENERIC MAP (
--         DATAWIDTH => 9, 
--         ADDRWIDTH => 9
--    )
--  PORT MAP (
--    clocka => clk,
--    
--    address_a => a,
--    data_a => d,
--    wren_a => we,
--    q_a => spo
--  );

U0 : sdpram_zxN
    GENERIC MAP (
         DATAWIDTH => 9, 
         ADDRWIDTH => 9
    )
  PORT MAP (
    clocka => clk,
    
    address_a => a,
    data_a => d,
    wren_a => we,
    spo => spo,
    
    address_dpra => "000000000",
    dpo => open
  );

END spram_320_9_a;
