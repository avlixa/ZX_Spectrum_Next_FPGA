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
-- You must compile the wrapper file sdpbram_16k_8.vhd when simulating
-- the core, sdpbram_16k_8. When compiling the wrapper file, be sure to
-- reference the XilinxCoreLib VHDL simulation library. For detailed
-- instructions, please refer to the "CORE Generator Help".

-- The synthesis directives "translate_off/translate_on" specified
-- below are supported by Xilinx, Mentor Graphics and Synplicity
-- synthesis tools. Ensure they are correct for your synthesis tool(s).

LIBRARY ieee;
USE ieee.std_logic_1164.ALL;

ENTITY sdpbram_16k_8 IS
  PORT (
    clka : IN STD_LOGIC;
    wea : IN STD_LOGIC_VECTOR(0 DOWNTO 0);
    addra : IN STD_LOGIC_VECTOR(13 DOWNTO 0);
    dina : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
    clkb : IN STD_LOGIC;
    enb : IN STD_LOGIC;
    addrb : IN STD_LOGIC_VECTOR(13 DOWNTO 0);
    doutb : OUT STD_LOGIC_VECTOR(7 DOWNTO 0)
  );
END sdpbram_16k_8;

ARCHITECTURE sdpbram_16k_8_a OF sdpbram_16k_8 IS

COMPONENT sdpbram_16k_8_a35t
  PORT (
    clka : IN STD_LOGIC;
    wea : IN STD_LOGIC_VECTOR(0 DOWNTO 0);
    addra : IN STD_LOGIC_VECTOR(13 DOWNTO 0);
    dina : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
    clkb : IN STD_LOGIC;
    enb : IN STD_LOGIC;
    addrb : IN STD_LOGIC_VECTOR(13 DOWNTO 0);
    doutb : OUT STD_LOGIC_VECTOR(7 DOWNTO 0) 
  );
END COMPONENT;

COMPONENT dpram_ena_zxN IS
    GENERIC (
         DATAWIDTH : integer := 8; 
         ADDRWIDTH : integer := 8;
         MEM_INIT_FILE : string := "";
         FILL_REMAINING : integer := 227 --8'hE3
    );
    PORT (
        clocka : IN STD_LOGIC;
        clockb : IN STD_LOGIC;
       
        address_a : IN STD_LOGIC_VECTOR(ADDRWIDTH-1 DOWNTO 0);
        data_a : IN STD_LOGIC_VECTOR(DATAWIDTH-1 DOWNTO 0);
        wren_a : IN STD_LOGIC;
        en_a : IN STD_LOGIC;
        q_a : OUT STD_LOGIC_VECTOR(DATAWIDTH-1 DOWNTO 0);
    
        address_b : IN STD_LOGIC_VECTOR(ADDRWIDTH-1 DOWNTO 0);
        data_b : IN STD_LOGIC_VECTOR(DATAWIDTH-1 DOWNTO 0);
        wren_b : IN STD_LOGIC;
        en_b : IN STD_LOGIC;
        q_b : OUT STD_LOGIC_VECTOR(DATAWIDTH-1 DOWNTO 0)
    );
END COMPONENT;

--signal swea : STD_LOGIC;

BEGIN


--U0 : sdpbram_16k_8_a35t
--  PORT MAP (
--    clka => clka,
--    wea => wea,
--    addra => addra,
--    dina => dina,
--    clkb => clkb,
--    enb => enb,
--    addrb => addrb,
--    doutb => doutb
--  );

--swea <= wea(0);

U0 : dpram_ena_zxN
    GENERIC MAP (
         DATAWIDTH => 8, 
         ADDRWIDTH => 14
    )
  PORT MAP (
    clocka => clka,
    clockb => clkb,
    
    address_a => addra,
    data_a => dina,
    wren_a => wea(0),
    en_a => '1',
    q_a => open,
    
    address_b => addrb,
    data_b => "00000000",
    wren_b => '0',
    en_b => enb,
    q_b => doutb
  );


END sdpbram_16k_8_a;
