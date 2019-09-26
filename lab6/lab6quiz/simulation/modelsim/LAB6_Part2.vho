-- Copyright (C) 2017  Intel Corporation. All rights reserved.
-- Your use of Intel Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Intel Program License 
-- Subscription Agreement, the Intel Quartus Prime License Agreement,
-- the Intel FPGA IP License Agreement, or other applicable license
-- agreement, including, without limitation, that your use is for
-- the sole purpose of programming logic devices manufactured by
-- Intel and sold by Intel or its authorized distributors.  Please
-- refer to the applicable agreement for further details.

-- VENDOR "Altera"
-- PROGRAM "Quartus Prime"
-- VERSION "Version 17.1.0 Build 590 10/25/2017 SJ Lite Edition"

-- DATE "07/26/2019 09:50:53"

-- 
-- Device: Altera 5CGXFC7C7F23C8 Package FBGA484
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY ALTERA;
LIBRARY ALTERA_LNSIM;
LIBRARY CYCLONEV;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE ALTERA_LNSIM.ALTERA_LNSIM_COMPONENTS.ALL;
USE CYCLONEV.CYCLONEV_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	LAB6_Part2 IS
    PORT (
	IRLD : OUT std_logic;
	IR2 : OUT std_logic;
	CLK : OUT std_logic;
	RESET : IN std_logic;
	MemCLK : IN std_logic;
	Addr : OUT std_logic_vector(14 DOWNTO 0);
	PCINC : OUT std_logic;
	PCLD : OUT std_logic;
	IR1 : OUT std_logic;
	IR0 : OUT std_logic;
	COUT : OUT std_logic;
	MSA1 : OUT std_logic;
	MSC2 : OUT std_logic;
	MSA0 : OUT std_logic;
	MSC1 : OUT std_logic;
	MSB1 : OUT std_logic;
	CIN : IN std_logic;
	MSC0 : OUT std_logic;
	MSB0 : OUT std_logic;
	A3 : OUT std_logic;
	A2 : OUT std_logic;
	A1 : OUT std_logic;
	A0 : OUT std_logic;
	B3 : OUT std_logic;
	B2 : OUT std_logic;
	B1 : OUT std_logic;
	B0 : OUT std_logic;
	OUT3 : OUT std_logic;
	OUT2 : OUT std_logic;
	OUT1 : OUT std_logic;
	OUT0 : OUT std_logic
	);
END LAB6_Part2;

-- Design Ports Information
-- IRLD	=>  Location: PIN_AA7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- IR2	=>  Location: PIN_M9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CLK	=>  Location: PIN_U10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Addr[14]	=>  Location: PIN_A18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Addr[13]	=>  Location: PIN_AB18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Addr[12]	=>  Location: PIN_B7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Addr[11]	=>  Location: PIN_U15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Addr[10]	=>  Location: PIN_J8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Addr[9]	=>  Location: PIN_AA17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Addr[8]	=>  Location: PIN_AA12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Addr[7]	=>  Location: PIN_B18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Addr[6]	=>  Location: PIN_A17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Addr[5]	=>  Location: PIN_G21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Addr[4]	=>  Location: PIN_D9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Addr[3]	=>  Location: PIN_AB5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Addr[2]	=>  Location: PIN_V10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Addr[1]	=>  Location: PIN_AB6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Addr[0]	=>  Location: PIN_V9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PCINC	=>  Location: PIN_AB7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PCLD	=>  Location: PIN_R11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- IR1	=>  Location: PIN_T9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- IR0	=>  Location: PIN_AA9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- COUT	=>  Location: PIN_R12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- MSA1	=>  Location: PIN_AB10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- MSC2	=>  Location: PIN_R10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- MSA0	=>  Location: PIN_P8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- MSC1	=>  Location: PIN_C8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- MSB1	=>  Location: PIN_Y10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- MSC0	=>  Location: PIN_U11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- MSB0	=>  Location: PIN_R9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A3	=>  Location: PIN_N20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A2	=>  Location: PIN_N16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A1	=>  Location: PIN_N19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A0	=>  Location: PIN_M22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B3	=>  Location: PIN_Y9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B2	=>  Location: PIN_N21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B1	=>  Location: PIN_U12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B0	=>  Location: PIN_T10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- OUT3	=>  Location: PIN_AA10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- OUT2	=>  Location: PIN_M8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- OUT1	=>  Location: PIN_N8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- OUT0	=>  Location: PIN_P12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CIN	=>  Location: PIN_AB8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RESET	=>  Location: PIN_AA8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- MemCLK	=>  Location: PIN_M16,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF LAB6_Part2 IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_IRLD : std_logic;
SIGNAL ww_IR2 : std_logic;
SIGNAL ww_CLK : std_logic;
SIGNAL ww_RESET : std_logic;
SIGNAL ww_MemCLK : std_logic;
SIGNAL ww_Addr : std_logic_vector(14 DOWNTO 0);
SIGNAL ww_PCINC : std_logic;
SIGNAL ww_PCLD : std_logic;
SIGNAL ww_IR1 : std_logic;
SIGNAL ww_IR0 : std_logic;
SIGNAL ww_COUT : std_logic;
SIGNAL ww_MSA1 : std_logic;
SIGNAL ww_MSC2 : std_logic;
SIGNAL ww_MSA0 : std_logic;
SIGNAL ww_MSC1 : std_logic;
SIGNAL ww_MSB1 : std_logic;
SIGNAL ww_CIN : std_logic;
SIGNAL ww_MSC0 : std_logic;
SIGNAL ww_MSB0 : std_logic;
SIGNAL ww_A3 : std_logic;
SIGNAL ww_A2 : std_logic;
SIGNAL ww_A1 : std_logic;
SIGNAL ww_A0 : std_logic;
SIGNAL ww_B3 : std_logic;
SIGNAL ww_B2 : std_logic;
SIGNAL ww_B1 : std_logic;
SIGNAL ww_B0 : std_logic;
SIGNAL ww_OUT3 : std_logic;
SIGNAL ww_OUT2 : std_logic;
SIGNAL ww_OUT1 : std_logic;
SIGNAL ww_OUT0 : std_logic;
SIGNAL \inst16|altsyncram_component|auto_generated|ram_block1a0_PORTAADDR_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst16|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\ : std_logic_vector(19 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \MemCLK~input_o\ : std_logic;
SIGNAL \inst7~0_combout\ : std_logic;
SIGNAL \RESET~input_o\ : std_logic;
SIGNAL \inst7~q\ : std_logic;
SIGNAL \MemCLK~inputCLKENA0_outclk\ : std_logic;
SIGNAL \inst11|sub|92~0_combout\ : std_logic;
SIGNAL \inst11|sub|87~q\ : std_logic;
SIGNAL \inst17|PCLD~combout\ : std_logic;
SIGNAL \inst11|sub|106~0_combout\ : std_logic;
SIGNAL \inst16|altsyncram_component|auto_generated|ram_block1a3\ : std_logic;
SIGNAL \inst11|sub|109~0_combout\ : std_logic;
SIGNAL \inst11|sub|110~q\ : std_logic;
SIGNAL \inst16|altsyncram_component|auto_generated|ram_block1a2\ : std_logic;
SIGNAL \inst11|sub|102~0_combout\ : std_logic;
SIGNAL \inst11|sub|99~q\ : std_logic;
SIGNAL \inst16|altsyncram_component|auto_generated|ram_block1a1\ : std_logic;
SIGNAL \inst3|inst1~q\ : std_logic;
SIGNAL \inst2|inst1~q\ : std_logic;
SIGNAL \inst17|D0~combout\ : std_logic;
SIGNAL \inst5~q\ : std_logic;
SIGNAL \inst11|sub|75~0_combout\ : std_logic;
SIGNAL \inst11|sub|9~q\ : std_logic;
SIGNAL \inst16|altsyncram_component|auto_generated|ram_block1a0~portadataout\ : std_logic;
SIGNAL \inst14|inst1~q\ : std_logic;
SIGNAL \inst17|D1~0_combout\ : std_logic;
SIGNAL \inst8~q\ : std_logic;
SIGNAL \inst17|PCINC~0_combout\ : std_logic;
SIGNAL \inst17|PCINC~1_combout\ : std_logic;
SIGNAL \inst|inst~0_combout\ : std_logic;
SIGNAL \inst17|MSC2~0_combout\ : std_logic;
SIGNAL \inst17|MSC1~0_combout\ : std_logic;
SIGNAL \inst17|MSC0~0_combout\ : std_logic;
SIGNAL \inst|inst39|sub|81~4_combout\ : std_logic;
SIGNAL \inst|inst39|sub|81~1_combout\ : std_logic;
SIGNAL \inst17|MSB1~combout\ : std_logic;
SIGNAL \inst|inst47|6~0_combout\ : std_logic;
SIGNAL \inst|inst18~q\ : std_logic;
SIGNAL \CIN~input_o\ : std_logic;
SIGNAL \inst|inst45|sub|81~2_combout\ : std_logic;
SIGNAL \inst|inst45|sub|81~3_combout\ : std_logic;
SIGNAL \inst|inst49|6~0_combout\ : std_logic;
SIGNAL \inst|inst53|6~1_combout\ : std_logic;
SIGNAL \inst|inst7~q\ : std_logic;
SIGNAL \inst|inst45|sub|81~1_combout\ : std_logic;
SIGNAL \inst|inst45|sub|81~0_combout\ : std_logic;
SIGNAL \inst|inst40|6~0_combout\ : std_logic;
SIGNAL \inst|inst19~q\ : std_logic;
SIGNAL \inst|inst36|sub|78~combout\ : std_logic;
SIGNAL \inst|inst42|sub|81~1_combout\ : std_logic;
SIGNAL \inst|inst51|6~0_combout\ : std_logic;
SIGNAL \inst|inst6~q\ : std_logic;
SIGNAL \inst|inst39|sub|81~3_combout\ : std_logic;
SIGNAL \inst|inst39|sub|81~0_combout\ : std_logic;
SIGNAL \inst|inst48|6~0_combout\ : std_logic;
SIGNAL \inst|inst17~q\ : std_logic;
SIGNAL \inst|inst52|6~1_combout\ : std_logic;
SIGNAL \inst|inst52|6~0_combout\ : std_logic;
SIGNAL \inst|inst5~q\ : std_logic;
SIGNAL \inst|inst38|sub|65~combout\ : std_logic;
SIGNAL \inst|inst53|6~2_combout\ : std_logic;
SIGNAL \inst|inst36|sub|105~0_combout\ : std_logic;
SIGNAL \inst|inst36|sub|82~combout\ : std_logic;
SIGNAL \inst|inst53|6~0_combout\ : std_logic;
SIGNAL \inst|inst4~q\ : std_logic;
SIGNAL \inst|inst38|sub|81~0_combout\ : std_logic;
SIGNAL \inst|inst32~combout\ : std_logic;
SIGNAL \inst|inst50|6~1_combout\ : std_logic;
SIGNAL \inst|inst50|6~0_combout\ : std_logic;
SIGNAL \inst|inst16~q\ : std_logic;
SIGNAL \inst|inst~1_combout\ : std_logic;
SIGNAL \inst17|PCINC~2_combout\ : std_logic;
SIGNAL \inst|inst38|sub|81~1_combout\ : std_logic;
SIGNAL \inst|inst39|sub|81~2_combout\ : std_logic;
SIGNAL \inst|inst42|sub|81~0_combout\ : std_logic;
SIGNAL \ALT_INV_CIN~input_o\ : std_logic;
SIGNAL \inst|inst53|ALT_INV_6~2_combout\ : std_logic;
SIGNAL \inst|inst52|ALT_INV_6~1_combout\ : std_logic;
SIGNAL \inst|inst50|ALT_INV_6~1_combout\ : std_logic;
SIGNAL \inst|inst45|sub|ALT_INV_81~3_combout\ : std_logic;
SIGNAL \inst|inst45|sub|ALT_INV_81~2_combout\ : std_logic;
SIGNAL \inst|inst45|sub|ALT_INV_81~1_combout\ : std_logic;
SIGNAL \inst|inst39|sub|ALT_INV_81~4_combout\ : std_logic;
SIGNAL \inst|inst39|sub|ALT_INV_81~3_combout\ : std_logic;
SIGNAL \inst11|sub|ALT_INV_106~0_combout\ : std_logic;
SIGNAL \inst|inst45|sub|ALT_INV_81~0_combout\ : std_logic;
SIGNAL \inst|inst36|sub|ALT_INV_78~combout\ : std_logic;
SIGNAL \inst|inst39|sub|ALT_INV_81~1_combout\ : std_logic;
SIGNAL \inst|inst39|sub|ALT_INV_81~0_combout\ : std_logic;
SIGNAL \inst|inst36|sub|ALT_INV_82~combout\ : std_logic;
SIGNAL \inst|ALT_INV_inst32~combout\ : std_logic;
SIGNAL \inst|inst38|sub|ALT_INV_65~combout\ : std_logic;
SIGNAL \inst|inst38|sub|ALT_INV_81~0_combout\ : std_logic;
SIGNAL \inst17|ALT_INV_MSC0~0_combout\ : std_logic;
SIGNAL \inst17|ALT_INV_MSB1~combout\ : std_logic;
SIGNAL \inst17|ALT_INV_MSC1~0_combout\ : std_logic;
SIGNAL \inst17|ALT_INV_PCINC~2_combout\ : std_logic;
SIGNAL \inst17|ALT_INV_MSC2~0_combout\ : std_logic;
SIGNAL \inst|ALT_INV_inst~0_combout\ : std_logic;
SIGNAL \inst|inst36|sub|ALT_INV_105~0_combout\ : std_logic;
SIGNAL \inst|ALT_INV_inst19~q\ : std_logic;
SIGNAL \inst|ALT_INV_inst7~q\ : std_logic;
SIGNAL \inst|ALT_INV_inst18~q\ : std_logic;
SIGNAL \inst|ALT_INV_inst6~q\ : std_logic;
SIGNAL \inst|ALT_INV_inst17~q\ : std_logic;
SIGNAL \inst|ALT_INV_inst5~q\ : std_logic;
SIGNAL \inst|ALT_INV_inst16~q\ : std_logic;
SIGNAL \inst|ALT_INV_inst4~q\ : std_logic;
SIGNAL \inst14|ALT_INV_inst1~q\ : std_logic;
SIGNAL \inst3|ALT_INV_inst1~q\ : std_logic;
SIGNAL \inst17|ALT_INV_PCLD~combout\ : std_logic;
SIGNAL \inst11|sub|ALT_INV_9~q\ : std_logic;
SIGNAL \inst11|sub|ALT_INV_87~q\ : std_logic;
SIGNAL \inst11|sub|ALT_INV_99~q\ : std_logic;
SIGNAL \inst11|sub|ALT_INV_110~q\ : std_logic;
SIGNAL \ALT_INV_inst7~q\ : std_logic;
SIGNAL \inst2|ALT_INV_inst1~q\ : std_logic;
SIGNAL \ALT_INV_inst5~q\ : std_logic;
SIGNAL \ALT_INV_inst8~q\ : std_logic;
SIGNAL \inst|inst42|sub|ALT_INV_81~1_combout\ : std_logic;
SIGNAL \inst16|altsyncram_component|auto_generated|ALT_INV_ram_block1a1\ : std_logic;
SIGNAL \inst16|altsyncram_component|auto_generated|ALT_INV_ram_block1a2\ : std_logic;
SIGNAL \inst16|altsyncram_component|auto_generated|ALT_INV_ram_block1a3\ : std_logic;
SIGNAL \inst16|altsyncram_component|auto_generated|ALT_INV_ram_block1a0~portadataout\ : std_logic;

BEGIN

IRLD <= ww_IRLD;
IR2 <= ww_IR2;
CLK <= ww_CLK;
ww_RESET <= RESET;
ww_MemCLK <= MemCLK;
Addr <= ww_Addr;
PCINC <= ww_PCINC;
PCLD <= ww_PCLD;
IR1 <= ww_IR1;
IR0 <= ww_IR0;
COUT <= ww_COUT;
MSA1 <= ww_MSA1;
MSC2 <= ww_MSC2;
MSA0 <= ww_MSA0;
MSC1 <= ww_MSC1;
MSB1 <= ww_MSB1;
ww_CIN <= CIN;
MSC0 <= ww_MSC0;
MSB0 <= ww_MSB0;
A3 <= ww_A3;
A2 <= ww_A2;
A1 <= ww_A1;
A0 <= ww_A0;
B3 <= ww_B3;
B2 <= ww_B2;
B1 <= ww_B1;
B0 <= ww_B0;
OUT3 <= ww_OUT3;
OUT2 <= ww_OUT2;
OUT1 <= ww_OUT1;
OUT0 <= ww_OUT0;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\inst16|altsyncram_component|auto_generated|ram_block1a0_PORTAADDR_bus\ <= (\inst11|sub|110~q\ & \inst11|sub|99~q\ & \inst11|sub|87~q\ & \inst11|sub|9~q\);

\inst16|altsyncram_component|auto_generated|ram_block1a0~portadataout\ <= \inst16|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(0);
\inst16|altsyncram_component|auto_generated|ram_block1a1\ <= \inst16|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(1);
\inst16|altsyncram_component|auto_generated|ram_block1a2\ <= \inst16|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(2);
\inst16|altsyncram_component|auto_generated|ram_block1a3\ <= \inst16|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(3);
\ALT_INV_CIN~input_o\ <= NOT \CIN~input_o\;
\inst|inst53|ALT_INV_6~2_combout\ <= NOT \inst|inst53|6~2_combout\;
\inst|inst52|ALT_INV_6~1_combout\ <= NOT \inst|inst52|6~1_combout\;
\inst|inst50|ALT_INV_6~1_combout\ <= NOT \inst|inst50|6~1_combout\;
\inst|inst45|sub|ALT_INV_81~3_combout\ <= NOT \inst|inst45|sub|81~3_combout\;
\inst|inst45|sub|ALT_INV_81~2_combout\ <= NOT \inst|inst45|sub|81~2_combout\;
\inst|inst45|sub|ALT_INV_81~1_combout\ <= NOT \inst|inst45|sub|81~1_combout\;
\inst|inst39|sub|ALT_INV_81~4_combout\ <= NOT \inst|inst39|sub|81~4_combout\;
\inst|inst39|sub|ALT_INV_81~3_combout\ <= NOT \inst|inst39|sub|81~3_combout\;
\inst11|sub|ALT_INV_106~0_combout\ <= NOT \inst11|sub|106~0_combout\;
\inst|inst45|sub|ALT_INV_81~0_combout\ <= NOT \inst|inst45|sub|81~0_combout\;
\inst|inst36|sub|ALT_INV_78~combout\ <= NOT \inst|inst36|sub|78~combout\;
\inst|inst39|sub|ALT_INV_81~1_combout\ <= NOT \inst|inst39|sub|81~1_combout\;
\inst|inst39|sub|ALT_INV_81~0_combout\ <= NOT \inst|inst39|sub|81~0_combout\;
\inst|inst36|sub|ALT_INV_82~combout\ <= NOT \inst|inst36|sub|82~combout\;
\inst|ALT_INV_inst32~combout\ <= NOT \inst|inst32~combout\;
\inst|inst38|sub|ALT_INV_65~combout\ <= NOT \inst|inst38|sub|65~combout\;
\inst|inst38|sub|ALT_INV_81~0_combout\ <= NOT \inst|inst38|sub|81~0_combout\;
\inst17|ALT_INV_MSC0~0_combout\ <= NOT \inst17|MSC0~0_combout\;
\inst17|ALT_INV_MSB1~combout\ <= NOT \inst17|MSB1~combout\;
\inst17|ALT_INV_MSC1~0_combout\ <= NOT \inst17|MSC1~0_combout\;
\inst17|ALT_INV_PCINC~2_combout\ <= NOT \inst17|PCINC~2_combout\;
\inst17|ALT_INV_MSC2~0_combout\ <= NOT \inst17|MSC2~0_combout\;
\inst|ALT_INV_inst~0_combout\ <= NOT \inst|inst~0_combout\;
\inst|inst36|sub|ALT_INV_105~0_combout\ <= NOT \inst|inst36|sub|105~0_combout\;
\inst|ALT_INV_inst19~q\ <= NOT \inst|inst19~q\;
\inst|ALT_INV_inst7~q\ <= NOT \inst|inst7~q\;
\inst|ALT_INV_inst18~q\ <= NOT \inst|inst18~q\;
\inst|ALT_INV_inst6~q\ <= NOT \inst|inst6~q\;
\inst|ALT_INV_inst17~q\ <= NOT \inst|inst17~q\;
\inst|ALT_INV_inst5~q\ <= NOT \inst|inst5~q\;
\inst|ALT_INV_inst16~q\ <= NOT \inst|inst16~q\;
\inst|ALT_INV_inst4~q\ <= NOT \inst|inst4~q\;
\inst14|ALT_INV_inst1~q\ <= NOT \inst14|inst1~q\;
\inst3|ALT_INV_inst1~q\ <= NOT \inst3|inst1~q\;
\inst17|ALT_INV_PCLD~combout\ <= NOT \inst17|PCLD~combout\;
\inst11|sub|ALT_INV_9~q\ <= NOT \inst11|sub|9~q\;
\inst11|sub|ALT_INV_87~q\ <= NOT \inst11|sub|87~q\;
\inst11|sub|ALT_INV_99~q\ <= NOT \inst11|sub|99~q\;
\inst11|sub|ALT_INV_110~q\ <= NOT \inst11|sub|110~q\;
\ALT_INV_inst7~q\ <= NOT \inst7~q\;
\inst2|ALT_INV_inst1~q\ <= NOT \inst2|inst1~q\;
\ALT_INV_inst5~q\ <= NOT \inst5~q\;
\ALT_INV_inst8~q\ <= NOT \inst8~q\;
\inst|inst42|sub|ALT_INV_81~1_combout\ <= NOT \inst|inst42|sub|81~1_combout\;
\inst16|altsyncram_component|auto_generated|ALT_INV_ram_block1a1\ <= NOT \inst16|altsyncram_component|auto_generated|ram_block1a1\;
\inst16|altsyncram_component|auto_generated|ALT_INV_ram_block1a2\ <= NOT \inst16|altsyncram_component|auto_generated|ram_block1a2\;
\inst16|altsyncram_component|auto_generated|ALT_INV_ram_block1a3\ <= NOT \inst16|altsyncram_component|auto_generated|ram_block1a3\;
\inst16|altsyncram_component|auto_generated|ALT_INV_ram_block1a0~portadataout\ <= NOT \inst16|altsyncram_component|auto_generated|ram_block1a0~portadataout\;

-- Location: IOOBUF_X28_Y0_N53
\IRLD~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst17|PCINC~0_combout\,
	devoe => ww_devoe,
	o => ww_IRLD);

-- Location: IOOBUF_X32_Y0_N2
\IR2~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2|inst1~q\,
	devoe => ww_devoe,
	o => ww_IR2);

-- Location: IOOBUF_X30_Y0_N2
\CLK~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst7~q\,
	devoe => ww_devoe,
	o => ww_CLK);

-- Location: IOOBUF_X74_Y81_N42
\Addr[14]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_Addr(14));

-- Location: IOOBUF_X56_Y0_N36
\Addr[13]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_Addr(13));

-- Location: IOOBUF_X32_Y81_N53
\Addr[12]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => ww_Addr(12));

-- Location: IOOBUF_X60_Y0_N2
\Addr[11]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_Addr(11));

-- Location: IOOBUF_X38_Y81_N19
\Addr[10]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => ww_Addr(10));

-- Location: IOOBUF_X60_Y0_N53
\Addr[9]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_Addr(9));

-- Location: IOOBUF_X40_Y0_N36
\Addr[8]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => ww_Addr(8));

-- Location: IOOBUF_X84_Y81_N36
\Addr[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => ww_Addr(7));

-- Location: IOOBUF_X74_Y81_N59
\Addr[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_Addr(6));

-- Location: IOOBUF_X88_Y81_N20
\Addr[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => ww_Addr(5));

-- Location: IOOBUF_X28_Y81_N19
\Addr[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_Addr(4));

-- Location: IOOBUF_X26_Y0_N76
\Addr[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst11|sub|110~q\,
	devoe => ww_devoe,
	o => ww_Addr(3));

-- Location: IOOBUF_X26_Y0_N42
\Addr[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst11|sub|99~q\,
	devoe => ww_devoe,
	o => ww_Addr(2));

-- Location: IOOBUF_X26_Y0_N93
\Addr[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst11|sub|87~q\,
	devoe => ww_devoe,
	o => ww_Addr(1));

-- Location: IOOBUF_X26_Y0_N59
\Addr[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst11|sub|9~q\,
	devoe => ww_devoe,
	o => ww_Addr(0));

-- Location: IOOBUF_X28_Y0_N36
\PCINC~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst17|PCINC~1_combout\,
	devoe => ww_devoe,
	o => ww_PCINC);

-- Location: IOOBUF_X38_Y0_N2
\PCLD~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst17|PCLD~combout\,
	devoe => ww_devoe,
	o => ww_PCLD);

-- Location: IOOBUF_X30_Y0_N19
\IR1~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst3|inst1~q\,
	devoe => ww_devoe,
	o => ww_IR1);

-- Location: IOOBUF_X32_Y0_N36
\IR0~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst14|inst1~q\,
	devoe => ww_devoe,
	o => ww_IR0);

-- Location: IOOBUF_X36_Y0_N53
\COUT~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|inst~1_combout\,
	devoe => ww_devoe,
	o => ww_COUT);

-- Location: IOOBUF_X38_Y0_N53
\MSA1~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst17|MSC2~0_combout\,
	devoe => ww_devoe,
	o => ww_MSA1);

-- Location: IOOBUF_X38_Y0_N19
\MSC2~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst17|MSC2~0_combout\,
	devoe => ww_devoe,
	o => ww_MSC2);

-- Location: IOOBUF_X28_Y0_N19
\MSA0~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst17|ALT_INV_PCINC~2_combout\,
	devoe => ww_devoe,
	o => ww_MSA0);

-- Location: IOOBUF_X28_Y81_N53
\MSC1~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst17|ALT_INV_MSC1~0_combout\,
	devoe => ww_devoe,
	o => ww_MSC1);

-- Location: IOOBUF_X34_Y0_N93
\MSB1~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst17|MSB1~combout\,
	devoe => ww_devoe,
	o => ww_MSB1);

-- Location: IOOBUF_X36_Y0_N19
\MSC0~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst17|MSC0~0_combout\,
	devoe => ww_devoe,
	o => ww_MSC0);

-- Location: IOOBUF_X34_Y0_N42
\MSB0~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst17|ALT_INV_MSB1~combout\,
	devoe => ww_devoe,
	o => ww_MSB0);

-- Location: IOOBUF_X89_Y35_N79
\A3~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|inst4~q\,
	devoe => ww_devoe,
	o => ww_A3);

-- Location: IOOBUF_X89_Y35_N45
\A2~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|inst5~q\,
	devoe => ww_devoe,
	o => ww_A2);

-- Location: IOOBUF_X89_Y36_N5
\A1~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|inst6~q\,
	devoe => ww_devoe,
	o => ww_A1);

-- Location: IOOBUF_X89_Y36_N39
\A0~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|inst7~q\,
	devoe => ww_devoe,
	o => ww_A0);

-- Location: IOOBUF_X34_Y0_N76
\B3~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|inst16~q\,
	devoe => ww_devoe,
	o => ww_B3);

-- Location: IOOBUF_X89_Y35_N96
\B2~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|inst17~q\,
	devoe => ww_devoe,
	o => ww_B2);

-- Location: IOOBUF_X36_Y0_N2
\B1~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|inst18~q\,
	devoe => ww_devoe,
	o => ww_B1);

-- Location: IOOBUF_X34_Y0_N59
\B0~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|inst19~q\,
	devoe => ww_devoe,
	o => ww_B0);

-- Location: IOOBUF_X32_Y0_N53
\OUT3~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|inst38|sub|81~1_combout\,
	devoe => ww_devoe,
	o => ww_OUT3);

-- Location: IOOBUF_X32_Y0_N19
\OUT2~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|inst39|sub|81~2_combout\,
	devoe => ww_devoe,
	o => ww_OUT2);

-- Location: IOOBUF_X28_Y0_N2
\OUT1~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|inst42|sub|81~0_combout\,
	devoe => ww_devoe,
	o => ww_OUT1);

-- Location: IOOBUF_X36_Y0_N36
\OUT0~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|inst45|sub|81~0_combout\,
	devoe => ww_devoe,
	o => ww_OUT0);

-- Location: IOIBUF_X89_Y35_N61
\MemCLK~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_MemCLK,
	o => \MemCLK~input_o\);

-- Location: LABCELL_X27_Y34_N18
\inst7~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst7~0_combout\ = ( !\inst7~q\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_inst7~q\,
	combout => \inst7~0_combout\);

-- Location: IOIBUF_X30_Y0_N52
\RESET~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_RESET,
	o => \RESET~input_o\);

-- Location: FF_X27_Y34_N56
inst7 : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MemCLK~input_o\,
	asdata => \inst7~0_combout\,
	clrn => \RESET~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst7~q\);

-- Location: CLKCTRL_G10
\MemCLK~inputCLKENA0\ : cyclonev_clkena
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	disable_mode => "low",
	ena_register_mode => "always enabled",
	ena_register_power_up => "high",
	test_syn => "high")
-- pragma translate_on
PORT MAP (
	inclk => \MemCLK~input_o\,
	outclk => \MemCLK~inputCLKENA0_outclk\);

-- Location: LABCELL_X27_Y34_N27
\inst11|sub|92~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst11|sub|92~0_combout\ = ( \inst16|altsyncram_component|auto_generated|ram_block1a1\ & ( (!\inst5~q\ & (!\inst11|sub|87~q\ $ (((!\inst8~q\) # (!\inst11|sub|9~q\))))) # (\inst5~q\ & ((!\inst11|sub|9~q\ $ (!\inst11|sub|87~q\)) # (\inst8~q\))) ) ) # ( 
-- !\inst16|altsyncram_component|auto_generated|ram_block1a1\ & ( (!\inst5~q\ & (!\inst11|sub|87~q\ $ (((!\inst8~q\) # (!\inst11|sub|9~q\))))) # (\inst5~q\ & (!\inst8~q\ & (!\inst11|sub|9~q\ $ (!\inst11|sub|87~q\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000011011101000000001101110100000010111111110010001011111111001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_inst5~q\,
	datab => \ALT_INV_inst8~q\,
	datac => \inst11|sub|ALT_INV_9~q\,
	datad => \inst11|sub|ALT_INV_87~q\,
	dataf => \inst16|altsyncram_component|auto_generated|ALT_INV_ram_block1a1\,
	combout => \inst11|sub|92~0_combout\);

-- Location: FF_X27_Y34_N53
\inst11|sub|87\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst7~q\,
	asdata => \inst11|sub|92~0_combout\,
	clrn => \RESET~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst11|sub|87~q\);

-- Location: LABCELL_X27_Y34_N33
\inst17|PCLD\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst17|PCLD~combout\ = ( \inst5~q\ & ( \inst8~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_inst8~q\,
	dataf => \ALT_INV_inst5~q\,
	combout => \inst17|PCLD~combout\);

-- Location: LABCELL_X27_Y34_N9
\inst11|sub|106~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst11|sub|106~0_combout\ = ( \inst5~q\ & ( \inst11|sub|87~q\ & ( (!\inst8~q\ & \inst11|sub|9~q\) ) ) ) # ( !\inst5~q\ & ( \inst11|sub|87~q\ & ( (\inst8~q\ & \inst11|sub|9~q\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000001100110000000011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_inst8~q\,
	datad => \inst11|sub|ALT_INV_9~q\,
	datae => \ALT_INV_inst5~q\,
	dataf => \inst11|sub|ALT_INV_87~q\,
	combout => \inst11|sub|106~0_combout\);

-- Location: M10K_X26_Y34_N0
\inst16|altsyncram_component|auto_generated|ram_block1a0\ : cyclonev_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init0 => "00000000000000000000000000000000000000000000000000000020000500000000040000200003",
	clk0_core_clock_enable => "ena0",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "rom_32k.mif",
	init_file_layout => "port_a",
	logical_ram_name => "rom:inst16|altsyncram:altsyncram_component|altsyncram_g824:auto_generated|ALTSYNCRAM",
	operation_mode => "rom",
	port_a_address_clear => "none",
	port_a_address_width => 4,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 20,
	port_a_first_address => 0,
	port_a_first_bit_number => 0,
	port_a_last_address => 15,
	port_a_logical_ram_depth => 32768,
	port_a_logical_ram_width => 8,
	port_a_read_during_write_mode => "new_data_no_nbe_read",
	port_a_write_enable_clock => "none",
	port_b_address_width => 4,
	port_b_data_width => 20,
	ram_block_type => "M20K")
-- pragma translate_on
PORT MAP (
	portare => VCC,
	clk0 => \MemCLK~inputCLKENA0_outclk\,
	ena0 => VCC,
	portaaddr => \inst16|altsyncram_component|auto_generated|ram_block1a0_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \inst16|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\);

-- Location: LABCELL_X27_Y34_N12
\inst11|sub|109~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst11|sub|109~0_combout\ = ( \inst11|sub|99~q\ & ( \inst16|altsyncram_component|auto_generated|ram_block1a3\ & ( (!\inst11|sub|110~q\ $ (!\inst11|sub|106~0_combout\)) # (\inst17|PCLD~combout\) ) ) ) # ( !\inst11|sub|99~q\ & ( 
-- \inst16|altsyncram_component|auto_generated|ram_block1a3\ & ( (\inst17|PCLD~combout\) # (\inst11|sub|110~q\) ) ) ) # ( \inst11|sub|99~q\ & ( !\inst16|altsyncram_component|auto_generated|ram_block1a3\ & ( (!\inst17|PCLD~combout\ & (!\inst11|sub|110~q\ $ 
-- (!\inst11|sub|106~0_combout\))) ) ) ) # ( !\inst11|sub|99~q\ & ( !\inst16|altsyncram_component|auto_generated|ram_block1a3\ & ( (\inst11|sub|110~q\ & !\inst17|PCLD~combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101000001010000010100001010000001011111010111110101111110101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|sub|ALT_INV_110~q\,
	datac => \inst17|ALT_INV_PCLD~combout\,
	datad => \inst11|sub|ALT_INV_106~0_combout\,
	datae => \inst11|sub|ALT_INV_99~q\,
	dataf => \inst16|altsyncram_component|auto_generated|ALT_INV_ram_block1a3\,
	combout => \inst11|sub|109~0_combout\);

-- Location: FF_X27_Y34_N38
\inst11|sub|110\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst7~q\,
	asdata => \inst11|sub|109~0_combout\,
	clrn => \RESET~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst11|sub|110~q\);

-- Location: LABCELL_X27_Y34_N3
\inst11|sub|102~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst11|sub|102~0_combout\ = ( \inst16|altsyncram_component|auto_generated|ram_block1a2\ & ( (!\inst11|sub|99~q\ $ (!\inst11|sub|106~0_combout\)) # (\inst17|PCLD~combout\) ) ) # ( !\inst16|altsyncram_component|auto_generated|ram_block1a2\ & ( 
-- (!\inst17|PCLD~combout\ & (!\inst11|sub|99~q\ $ (!\inst11|sub|106~0_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010100000101000001010000010100001111101011111010111110101111101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst17|ALT_INV_PCLD~combout\,
	datab => \inst11|sub|ALT_INV_99~q\,
	datac => \inst11|sub|ALT_INV_106~0_combout\,
	dataf => \inst16|altsyncram_component|auto_generated|ALT_INV_ram_block1a2\,
	combout => \inst11|sub|102~0_combout\);

-- Location: FF_X27_Y34_N14
\inst11|sub|99\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst7~q\,
	asdata => \inst11|sub|102~0_combout\,
	clrn => \RESET~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst11|sub|99~q\);

-- Location: FF_X28_Y34_N47
\inst3|inst1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst7~q\,
	asdata => \inst16|altsyncram_component|auto_generated|ram_block1a1\,
	clrn => \RESET~input_o\,
	sload => VCC,
	ena => \inst17|PCINC~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|inst1~q\);

-- Location: FF_X27_Y34_N44
\inst2|inst1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst7~q\,
	asdata => \inst16|altsyncram_component|auto_generated|ram_block1a2\,
	clrn => \RESET~input_o\,
	sload => VCC,
	ena => \inst17|PCINC~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|inst1~q\);

-- Location: LABCELL_X27_Y34_N30
\inst17|D0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst17|D0~combout\ = ( \inst2|inst1~q\ & ( (!\inst8~q\ & ((!\inst5~q\) # ((\inst14|inst1~q\ & !\inst3|inst1~q\)))) ) ) # ( !\inst2|inst1~q\ & ( (!\inst5~q\ & !\inst8~q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000100010001000100010001000100010001100100010001000110010001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_inst5~q\,
	datab => \ALT_INV_inst8~q\,
	datac => \inst14|ALT_INV_inst1~q\,
	datad => \inst3|ALT_INV_inst1~q\,
	dataf => \inst2|ALT_INV_inst1~q\,
	combout => \inst17|D0~combout\);

-- Location: FF_X28_Y34_N2
inst5 : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst7~q\,
	asdata => \inst17|D0~combout\,
	clrn => \RESET~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5~q\);

-- Location: LABCELL_X27_Y34_N39
\inst11|sub|75~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst11|sub|75~0_combout\ = ( \inst16|altsyncram_component|auto_generated|ram_block1a0~portadataout\ & ( (!\inst5~q\ & (!\inst8~q\ $ (!\inst11|sub|9~q\))) # (\inst5~q\ & ((!\inst11|sub|9~q\) # (\inst8~q\))) ) ) # ( 
-- !\inst16|altsyncram_component|auto_generated|ram_block1a0~portadataout\ & ( (!\inst5~q\ & (!\inst8~q\ $ (!\inst11|sub|9~q\))) # (\inst5~q\ & (!\inst8~q\ & !\inst11|sub|9~q\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110011010001000011001101000100001110111100110010111011110011001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_inst5~q\,
	datab => \ALT_INV_inst8~q\,
	datad => \inst11|sub|ALT_INV_9~q\,
	dataf => \inst16|altsyncram_component|auto_generated|ALT_INV_ram_block1a0~portadataout\,
	combout => \inst11|sub|75~0_combout\);

-- Location: FF_X27_Y34_N20
\inst11|sub|9\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst7~q\,
	asdata => \inst11|sub|75~0_combout\,
	clrn => \RESET~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst11|sub|9~q\);

-- Location: FF_X28_Y34_N17
\inst14|inst1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst7~q\,
	asdata => \inst16|altsyncram_component|auto_generated|ram_block1a0~portadataout\,
	clrn => \RESET~input_o\,
	sload => VCC,
	ena => \inst17|PCINC~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst14|inst1~q\);

-- Location: LABCELL_X27_Y34_N21
\inst17|D1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst17|D1~0_combout\ = ( \inst5~q\ & ( (\inst14|inst1~q\ & (!\inst8~q\ & (!\inst2|inst1~q\ $ (!\inst3|inst1~q\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000010000010000000001000001000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|ALT_INV_inst1~q\,
	datab => \inst2|ALT_INV_inst1~q\,
	datac => \ALT_INV_inst8~q\,
	datad => \inst3|ALT_INV_inst1~q\,
	dataf => \ALT_INV_inst5~q\,
	combout => \inst17|D1~0_combout\);

-- Location: FF_X28_Y34_N50
inst8 : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst7~q\,
	asdata => \inst17|D1~0_combout\,
	clrn => \RESET~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst8~q\);

-- Location: MLABCELL_X28_Y34_N9
\inst17|PCINC~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst17|PCINC~0_combout\ = ( !\inst5~q\ & ( !\inst8~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000011110000111100001111000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_inst8~q\,
	dataf => \ALT_INV_inst5~q\,
	combout => \inst17|PCINC~0_combout\);

-- Location: LABCELL_X27_Y34_N24
\inst17|PCINC~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst17|PCINC~1_combout\ = !\inst5~q\ $ (!\inst8~q\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110011001100110011001100110011001100110011001100110011001100110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_inst5~q\,
	datab => \ALT_INV_inst8~q\,
	combout => \inst17|PCINC~1_combout\);

-- Location: MLABCELL_X28_Y34_N6
\inst|inst~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|inst~0_combout\ = ( !\inst3|inst1~q\ & ( (\inst5~q\ & (\inst14|inst1~q\ & (!\inst2|inst1~q\ & !\inst8~q\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000000000000000100000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_inst5~q\,
	datab => \inst14|ALT_INV_inst1~q\,
	datac => \inst2|ALT_INV_inst1~q\,
	datad => \ALT_INV_inst8~q\,
	dataf => \inst3|ALT_INV_inst1~q\,
	combout => \inst|inst~0_combout\);

-- Location: MLABCELL_X28_Y34_N0
\inst17|MSC2~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst17|MSC2~0_combout\ = ( \inst3|inst1~q\ & ( (!\inst8~q\ & (!\inst14|inst1~q\ & (!\inst2|inst1~q\ & \inst5~q\))) ) ) # ( !\inst3|inst1~q\ & ( (!\inst8~q\ & (\inst5~q\ & (!\inst14|inst1~q\ $ (!\inst2|inst1~q\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000101000000000000010100000000000100000000000000010000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_inst8~q\,
	datab => \inst14|ALT_INV_inst1~q\,
	datac => \inst2|ALT_INV_inst1~q\,
	datad => \ALT_INV_inst5~q\,
	dataf => \inst3|ALT_INV_inst1~q\,
	combout => \inst17|MSC2~0_combout\);

-- Location: MLABCELL_X28_Y34_N3
\inst17|MSC1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst17|MSC1~0_combout\ = ( \inst2|inst1~q\ & ( (((!\inst5~q\) # (\inst3|inst1~q\)) # (\inst14|inst1~q\)) # (\inst8~q\) ) ) # ( !\inst2|inst1~q\ & ( (((!\inst3|inst1~q\) # (!\inst5~q\)) # (\inst14|inst1~q\)) # (\inst8~q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111110111111111111111011111111111011111111111111101111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_inst8~q\,
	datab => \inst14|ALT_INV_inst1~q\,
	datac => \inst3|ALT_INV_inst1~q\,
	datad => \ALT_INV_inst5~q\,
	dataf => \inst2|ALT_INV_inst1~q\,
	combout => \inst17|MSC1~0_combout\);

-- Location: MLABCELL_X28_Y34_N21
\inst17|MSC0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst17|MSC0~0_combout\ = ( \inst5~q\ & ( (!\inst2|inst1~q\ & (!\inst8~q\ & (!\inst14|inst1~q\ $ (!\inst3|inst1~q\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000101000000000000010100000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|ALT_INV_inst1~q\,
	datab => \inst14|ALT_INV_inst1~q\,
	datac => \inst3|ALT_INV_inst1~q\,
	datad => \ALT_INV_inst8~q\,
	dataf => \ALT_INV_inst5~q\,
	combout => \inst17|MSC0~0_combout\);

-- Location: MLABCELL_X28_Y34_N18
\inst|inst39|sub|81~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|inst39|sub|81~4_combout\ = ( \inst|inst4~q\ & ( (!\inst17|MSC1~0_combout\) # (\inst|inst5~q\) ) ) # ( !\inst|inst4~q\ & ( (\inst17|MSC1~0_combout\ & \inst|inst5~q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000111111110000111111111111000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \inst17|ALT_INV_MSC1~0_combout\,
	datad => \inst|ALT_INV_inst5~q\,
	dataf => \inst|ALT_INV_inst4~q\,
	combout => \inst|inst39|sub|81~4_combout\);

-- Location: MLABCELL_X28_Y34_N33
\inst|inst39|sub|81~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|inst39|sub|81~1_combout\ = ( \inst|inst17~q\ & ( (!\inst|inst5~q\ & (!\inst17|MSC0~0_combout\ $ (\inst17|MSC1~0_combout\))) # (\inst|inst5~q\ & ((\inst17|MSC1~0_combout\) # (\inst17|MSC0~0_combout\))) ) ) # ( !\inst|inst17~q\ & ( 
-- (!\inst17|MSC0~0_combout\ & (!\inst|inst5~q\ $ (\inst17|MSC1~0_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100000000110000110000000011000011000011001111111100001100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \inst|ALT_INV_inst5~q\,
	datac => \inst17|ALT_INV_MSC0~0_combout\,
	datad => \inst17|ALT_INV_MSC1~0_combout\,
	dataf => \inst|ALT_INV_inst17~q\,
	combout => \inst|inst39|sub|81~1_combout\);

-- Location: LABCELL_X27_Y34_N45
\inst17|MSB1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst17|MSB1~combout\ = ( \inst14|inst1~q\ ) # ( !\inst14|inst1~q\ & ( (!\inst5~q\) # (((\inst3|inst1~q\) # (\inst8~q\)) # (\inst2|inst1~q\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1011111111111111101111111111111111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_inst5~q\,
	datab => \inst2|ALT_INV_inst1~q\,
	datac => \ALT_INV_inst8~q\,
	datad => \inst3|ALT_INV_inst1~q\,
	dataf => \inst14|ALT_INV_inst1~q\,
	combout => \inst17|MSB1~combout\);

-- Location: MLABCELL_X28_Y34_N27
\inst|inst47|6~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|inst47|6~0_combout\ = ( \inst17|MSB1~combout\ & ( (!\inst17|MSC2~0_combout\ & (\inst|inst6~q\)) # (\inst17|MSC2~0_combout\ & ((\inst|inst42|sub|81~1_combout\))) ) ) # ( !\inst17|MSB1~combout\ & ( \inst|inst6~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101010101010101010101010000010111110101000001011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ALT_INV_inst6~q\,
	datac => \inst17|ALT_INV_MSC2~0_combout\,
	datad => \inst|inst42|sub|ALT_INV_81~1_combout\,
	dataf => \inst17|ALT_INV_MSB1~combout\,
	combout => \inst|inst47|6~0_combout\);

-- Location: FF_X28_Y34_N29
\inst|inst18\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst7~q\,
	d => \inst|inst47|6~0_combout\,
	clrn => \RESET~input_o\,
	ena => \inst17|ALT_INV_MSB1~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst18~q\);

-- Location: IOIBUF_X30_Y0_N35
\CIN~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_CIN,
	o => \CIN~input_o\);

-- Location: LABCELL_X29_Y34_N18
\inst|inst45|sub|81~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|inst45|sub|81~2_combout\ = ( \inst|inst~0_combout\ & ( \inst14|inst1~q\ & ( !\CIN~input_o\ $ (\inst|inst19~q\) ) ) ) # ( !\inst|inst~0_combout\ & ( \inst14|inst1~q\ & ( (\inst|inst6~q\ & !\inst3|inst1~q\) ) ) ) # ( \inst|inst~0_combout\ & ( 
-- !\inst14|inst1~q\ & ( !\CIN~input_o\ $ (\inst|inst19~q\) ) ) ) # ( !\inst|inst~0_combout\ & ( !\inst14|inst1~q\ & ( (\inst|inst6~q\ & \inst3|inst1~q\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111100110011001100100001111000000001001100110011001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_CIN~input_o\,
	datab => \inst|ALT_INV_inst19~q\,
	datac => \inst|ALT_INV_inst6~q\,
	datad => \inst3|ALT_INV_inst1~q\,
	datae => \inst|ALT_INV_inst~0_combout\,
	dataf => \inst14|ALT_INV_inst1~q\,
	combout => \inst|inst45|sub|81~2_combout\);

-- Location: LABCELL_X29_Y34_N45
\inst|inst45|sub|81~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|inst45|sub|81~3_combout\ = ( \inst5~q\ & ( (!\inst8~q\ & !\inst2|inst1~q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011110000000000001111000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_inst8~q\,
	datad => \inst2|ALT_INV_inst1~q\,
	dataf => \ALT_INV_inst5~q\,
	combout => \inst|inst45|sub|81~3_combout\);

-- Location: LABCELL_X29_Y34_N54
\inst|inst49|6~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|inst49|6~0_combout\ = ( \inst17|MSC2~0_combout\ & ( \inst|inst45|sub|81~0_combout\ ) ) # ( !\inst17|MSC2~0_combout\ & ( \inst16|altsyncram_component|auto_generated|ram_block1a0~portadataout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \inst|inst45|sub|ALT_INV_81~0_combout\,
	datad => \inst16|altsyncram_component|auto_generated|ALT_INV_ram_block1a0~portadataout\,
	dataf => \inst17|ALT_INV_MSC2~0_combout\,
	combout => \inst|inst49|6~0_combout\);

-- Location: LABCELL_X29_Y34_N39
\inst|inst53|6~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|inst53|6~1_combout\ = ( \inst5~q\ & ( (!\inst8~q\ & ((!\inst14|inst1~q\ & (!\inst2|inst1~q\ $ (!\inst3|inst1~q\))) # (\inst14|inst1~q\ & (!\inst2|inst1~q\ & !\inst3|inst1~q\)))) ) ) # ( !\inst5~q\ & ( \inst8~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011001100110011001101001000100000000100100010000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|ALT_INV_inst1~q\,
	datab => \ALT_INV_inst8~q\,
	datac => \inst2|ALT_INV_inst1~q\,
	datad => \inst3|ALT_INV_inst1~q\,
	dataf => \ALT_INV_inst5~q\,
	combout => \inst|inst53|6~1_combout\);

-- Location: FF_X29_Y34_N56
\inst|inst7\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst7~q\,
	d => \inst|inst49|6~0_combout\,
	clrn => \RESET~input_o\,
	ena => \inst|inst53|6~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst7~q\);

-- Location: LABCELL_X29_Y34_N42
\inst|inst45|sub|81~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|inst45|sub|81~1_combout\ = ( \inst17|MSC1~0_combout\ & ( (!\inst|inst~0_combout\ & ((!\inst17|MSC0~0_combout\ & (!\inst|inst7~q\)) # (\inst17|MSC0~0_combout\ & ((!\inst|inst19~q\))))) # (\inst|inst~0_combout\ & (!\inst|inst7~q\ & 
-- (!\inst|inst19~q\))) ) ) # ( !\inst17|MSC1~0_combout\ & ( (!\inst|inst7~q\ & ((!\inst|inst~0_combout\ & ((\inst17|MSC0~0_combout\))) # (\inst|inst~0_combout\ & (!\inst|inst19~q\)))) # (\inst|inst7~q\ & (!\inst|inst~0_combout\ & ((!\inst|inst19~q\) # 
-- (!\inst17|MSC0~0_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101111010001000010111101000100010101100100010001010110010001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ALT_INV_inst7~q\,
	datab => \inst|ALT_INV_inst19~q\,
	datac => \inst17|ALT_INV_MSC0~0_combout\,
	datad => \inst|ALT_INV_inst~0_combout\,
	dataf => \inst17|ALT_INV_MSC1~0_combout\,
	combout => \inst|inst45|sub|81~1_combout\);

-- Location: LABCELL_X29_Y34_N6
\inst|inst45|sub|81~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|inst45|sub|81~0_combout\ = ( \inst|inst7~q\ & ( \inst|inst45|sub|81~1_combout\ & ( (\inst17|MSC2~0_combout\ & (\inst|inst45|sub|81~2_combout\ & ((\inst|inst45|sub|81~3_combout\) # (\inst|inst~0_combout\)))) ) ) ) # ( !\inst|inst7~q\ & ( 
-- \inst|inst45|sub|81~1_combout\ & ( (\inst17|MSC2~0_combout\ & ((!\inst|inst~0_combout\ & (\inst|inst45|sub|81~2_combout\ & \inst|inst45|sub|81~3_combout\)) # (\inst|inst~0_combout\ & (!\inst|inst45|sub|81~2_combout\)))) ) ) ) # ( \inst|inst7~q\ & ( 
-- !\inst|inst45|sub|81~1_combout\ & ( (!\inst17|MSC2~0_combout\) # ((\inst|inst45|sub|81~2_combout\ & ((\inst|inst45|sub|81~3_combout\) # (\inst|inst~0_combout\)))) ) ) ) # ( !\inst|inst7~q\ & ( !\inst|inst45|sub|81~1_combout\ & ( (!\inst17|MSC2~0_combout\) 
-- # ((!\inst|inst~0_combout\ & (\inst|inst45|sub|81~2_combout\ & \inst|inst45|sub|81~3_combout\)) # (\inst|inst~0_combout\ & (!\inst|inst45|sub|81~2_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1101110011011110110011011100111100010000000100100000000100000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ALT_INV_inst~0_combout\,
	datab => \inst17|ALT_INV_MSC2~0_combout\,
	datac => \inst|inst45|sub|ALT_INV_81~2_combout\,
	datad => \inst|inst45|sub|ALT_INV_81~3_combout\,
	datae => \inst|ALT_INV_inst7~q\,
	dataf => \inst|inst45|sub|ALT_INV_81~1_combout\,
	combout => \inst|inst45|sub|81~0_combout\);

-- Location: LABCELL_X29_Y34_N24
\inst|inst40|6~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|inst40|6~0_combout\ = ( \inst|inst7~q\ & ( (!\inst17|MSB1~combout\) # (\inst|inst45|sub|81~0_combout\) ) ) # ( !\inst|inst7~q\ & ( (\inst17|MSB1~combout\ & \inst|inst45|sub|81~0_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000111111110000111111111111000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \inst17|ALT_INV_MSB1~combout\,
	datad => \inst|inst45|sub|ALT_INV_81~0_combout\,
	dataf => \inst|ALT_INV_inst7~q\,
	combout => \inst|inst40|6~0_combout\);

-- Location: FF_X29_Y34_N26
\inst|inst19\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst7~q\,
	d => \inst|inst40|6~0_combout\,
	clrn => \RESET~input_o\,
	ena => \inst17|ALT_INV_MSB1~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst19~q\);

-- Location: MLABCELL_X28_Y34_N24
\inst|inst36|sub|78\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|inst36|sub|78~combout\ = ( \inst|inst7~q\ & ( !\inst|inst6~q\ $ (!\inst|inst18~q\ $ (((\inst|inst19~q\) # (\CIN~input_o\)))) ) ) # ( !\inst|inst7~q\ & ( !\inst|inst6~q\ $ (!\inst|inst18~q\ $ (((\CIN~input_o\ & \inst|inst19~q\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110011001101001011001100110100101101001100110010110100110011001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ALT_INV_inst6~q\,
	datab => \inst|ALT_INV_inst18~q\,
	datac => \ALT_INV_CIN~input_o\,
	datad => \inst|ALT_INV_inst19~q\,
	dataf => \inst|ALT_INV_inst7~q\,
	combout => \inst|inst36|sub|78~combout\);

-- Location: MLABCELL_X28_Y34_N48
\inst|inst42|sub|81~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|inst42|sub|81~1_combout\ = ( !\inst17|MSC1~0_combout\ & ( ((!\inst17|MSC0~0_combout\ & (\inst|inst7~q\)) # (\inst17|MSC0~0_combout\ & (((\inst|inst5~q\))))) ) ) # ( \inst17|MSC1~0_combout\ & ( (!\inst17|MSC0~0_combout\ & ((((\inst|inst18~q\)) # 
-- (\inst|inst6~q\)))) # (\inst17|MSC0~0_combout\ & (\inst|inst36|sub|78~combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0000110000111111000111010001110100001100001111111101110111011101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst36|sub|ALT_INV_78~combout\,
	datab => \inst17|ALT_INV_MSC0~0_combout\,
	datac => \inst|ALT_INV_inst6~q\,
	datad => \inst|ALT_INV_inst5~q\,
	datae => \inst17|ALT_INV_MSC1~0_combout\,
	dataf => \inst|ALT_INV_inst18~q\,
	datag => \inst|ALT_INV_inst7~q\,
	combout => \inst|inst42|sub|81~1_combout\);

-- Location: LABCELL_X29_Y34_N15
\inst|inst51|6~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|inst51|6~0_combout\ = ( \inst|inst42|sub|81~1_combout\ & ( (\inst16|altsyncram_component|auto_generated|ram_block1a1\) # (\inst17|MSC2~0_combout\) ) ) # ( !\inst|inst42|sub|81~1_combout\ & ( (!\inst17|MSC2~0_combout\ & 
-- \inst16|altsyncram_component|auto_generated|ram_block1a1\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011110000000000001111000000001111111111110000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \inst17|ALT_INV_MSC2~0_combout\,
	datad => \inst16|altsyncram_component|auto_generated|ALT_INV_ram_block1a1\,
	dataf => \inst|inst42|sub|ALT_INV_81~1_combout\,
	combout => \inst|inst51|6~0_combout\);

-- Location: FF_X29_Y34_N17
\inst|inst6\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst7~q\,
	d => \inst|inst51|6~0_combout\,
	clrn => \RESET~input_o\,
	ena => \inst|inst53|6~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst6~q\);

-- Location: MLABCELL_X28_Y34_N42
\inst|inst39|sub|81~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|inst39|sub|81~3_combout\ = ( \inst|inst18~q\ & ( \inst|inst7~q\ & ( !\inst|inst17~q\ $ ((((\inst|inst19~q\) # (\CIN~input_o\)) # (\inst|inst6~q\))) ) ) ) # ( !\inst|inst18~q\ & ( \inst|inst7~q\ & ( !\inst|inst17~q\ $ (((\inst|inst6~q\ & 
-- ((\inst|inst19~q\) # (\CIN~input_o\))))) ) ) ) # ( \inst|inst18~q\ & ( !\inst|inst7~q\ & ( !\inst|inst17~q\ $ ((((\CIN~input_o\ & \inst|inst19~q\)) # (\inst|inst6~q\))) ) ) ) # ( !\inst|inst18~q\ & ( !\inst|inst7~q\ & ( !\inst|inst17~q\ $ 
-- (((\inst|inst6~q\ & (\CIN~input_o\ & \inst|inst19~q\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100110011001001100110011001001111001001100110011001001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ALT_INV_inst6~q\,
	datab => \inst|ALT_INV_inst17~q\,
	datac => \ALT_INV_CIN~input_o\,
	datad => \inst|ALT_INV_inst19~q\,
	datae => \inst|ALT_INV_inst18~q\,
	dataf => \inst|ALT_INV_inst7~q\,
	combout => \inst|inst39|sub|81~3_combout\);

-- Location: MLABCELL_X28_Y34_N12
\inst|inst39|sub|81~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|inst39|sub|81~0_combout\ = ( \inst17|MSC1~0_combout\ & ( \inst|inst17~q\ & ( (\inst17|MSC0~0_combout\ & (!\inst|inst39|sub|81~4_combout\ $ (!\inst|inst39|sub|81~3_combout\))) ) ) ) # ( !\inst17|MSC1~0_combout\ & ( \inst|inst17~q\ & ( 
-- (!\inst17|MSC0~0_combout\ & ((!\inst|inst6~q\))) # (\inst17|MSC0~0_combout\ & (!\inst|inst39|sub|81~4_combout\)) ) ) ) # ( \inst17|MSC1~0_combout\ & ( !\inst|inst17~q\ & ( !\inst|inst39|sub|81~4_combout\ $ (((!\inst|inst39|sub|81~3_combout\ & 
-- \inst17|MSC0~0_combout\))) ) ) ) # ( !\inst17|MSC1~0_combout\ & ( !\inst|inst17~q\ & ( (!\inst17|MSC0~0_combout\ & ((!\inst|inst6~q\))) # (\inst17|MSC0~0_combout\ & (!\inst|inst39|sub|81~4_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000010101010101010100110011011110000101010100000000001100110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst39|sub|ALT_INV_81~4_combout\,
	datab => \inst|inst39|sub|ALT_INV_81~3_combout\,
	datac => \inst|ALT_INV_inst6~q\,
	datad => \inst17|ALT_INV_MSC0~0_combout\,
	datae => \inst17|ALT_INV_MSC1~0_combout\,
	dataf => \inst|ALT_INV_inst17~q\,
	combout => \inst|inst39|sub|81~0_combout\);

-- Location: MLABCELL_X28_Y34_N30
\inst|inst48|6~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|inst48|6~0_combout\ = ( \inst|inst39|sub|81~0_combout\ & ( (!\inst17|MSB1~combout\ & (((\inst|inst5~q\)))) # (\inst17|MSB1~combout\ & (!\inst17|MSC2~0_combout\ & ((\inst|inst39|sub|81~1_combout\)))) ) ) # ( !\inst|inst39|sub|81~0_combout\ & ( 
-- (!\inst17|MSB1~combout\ & (((\inst|inst5~q\)))) # (\inst17|MSB1~combout\ & (((\inst|inst39|sub|81~1_combout\)) # (\inst17|MSC2~0_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001101011111001100110101111100110011000010100011001100001010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst17|ALT_INV_MSC2~0_combout\,
	datab => \inst|ALT_INV_inst5~q\,
	datac => \inst|inst39|sub|ALT_INV_81~1_combout\,
	datad => \inst17|ALT_INV_MSB1~combout\,
	dataf => \inst|inst39|sub|ALT_INV_81~0_combout\,
	combout => \inst|inst48|6~0_combout\);

-- Location: FF_X28_Y34_N32
\inst|inst17\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst7~q\,
	d => \inst|inst48|6~0_combout\,
	clrn => \RESET~input_o\,
	ena => \inst17|ALT_INV_MSB1~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst17~q\);

-- Location: LABCELL_X29_Y34_N57
\inst|inst52|6~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|inst52|6~1_combout\ = ( \inst17|MSC0~0_combout\ & ( (\inst17|MSC1~0_combout\ & !\inst|inst39|sub|81~3_combout\) ) ) # ( !\inst17|MSC0~0_combout\ & ( (!\inst17|MSC1~0_combout\ & ((\inst|inst6~q\))) # (\inst17|MSC1~0_combout\ & (\inst|inst17~q\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011010100110101001101010011010100001111000000000000111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ALT_INV_inst17~q\,
	datab => \inst|ALT_INV_inst6~q\,
	datac => \inst17|ALT_INV_MSC1~0_combout\,
	datad => \inst|inst39|sub|ALT_INV_81~3_combout\,
	dataf => \inst17|ALT_INV_MSC0~0_combout\,
	combout => \inst|inst52|6~1_combout\);

-- Location: LABCELL_X29_Y34_N48
\inst|inst52|6~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|inst52|6~0_combout\ = ( \inst|inst52|6~1_combout\ & ( \inst17|MSC2~0_combout\ & ( (!\inst17|MSC0~0_combout\) # (!\inst|inst39|sub|81~4_combout\) ) ) ) # ( !\inst|inst52|6~1_combout\ & ( \inst17|MSC2~0_combout\ & ( (\inst|inst39|sub|81~4_combout\ & 
-- ((\inst17|MSC0~0_combout\) # (\inst17|MSC1~0_combout\))) ) ) ) # ( \inst|inst52|6~1_combout\ & ( !\inst17|MSC2~0_combout\ & ( \inst16|altsyncram_component|auto_generated|ram_block1a2\ ) ) ) # ( !\inst|inst52|6~1_combout\ & ( !\inst17|MSC2~0_combout\ & ( 
-- \inst16|altsyncram_component|auto_generated|ram_block1a2\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100000000011101111111111111001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst17|ALT_INV_MSC1~0_combout\,
	datab => \inst17|ALT_INV_MSC0~0_combout\,
	datac => \inst16|altsyncram_component|auto_generated|ALT_INV_ram_block1a2\,
	datad => \inst|inst39|sub|ALT_INV_81~4_combout\,
	datae => \inst|inst52|ALT_INV_6~1_combout\,
	dataf => \inst17|ALT_INV_MSC2~0_combout\,
	combout => \inst|inst52|6~0_combout\);

-- Location: FF_X29_Y34_N50
\inst|inst5\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst7~q\,
	d => \inst|inst52|6~0_combout\,
	clrn => \RESET~input_o\,
	ena => \inst|inst53|6~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst5~q\);

-- Location: LABCELL_X29_Y34_N30
\inst|inst38|sub|65\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|inst38|sub|65~combout\ = ( \inst14|inst1~q\ & ( \inst5~q\ & ( (\inst|inst5~q\ & (((\inst3|inst1~q\) # (\inst8~q\)) # (\inst2|inst1~q\))) ) ) ) # ( !\inst14|inst1~q\ & ( \inst5~q\ & ( (\inst|inst5~q\ & (((!\inst3|inst1~q\) # (\inst8~q\)) # 
-- (\inst2|inst1~q\))) ) ) ) # ( \inst14|inst1~q\ & ( !\inst5~q\ & ( \inst|inst5~q\ ) ) ) # ( !\inst14|inst1~q\ & ( !\inst5~q\ & ( \inst|inst5~q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101010101010101010101010101000101010001010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ALT_INV_inst5~q\,
	datab => \inst2|ALT_INV_inst1~q\,
	datac => \ALT_INV_inst8~q\,
	datad => \inst3|ALT_INV_inst1~q\,
	datae => \inst14|ALT_INV_inst1~q\,
	dataf => \ALT_INV_inst5~q\,
	combout => \inst|inst38|sub|65~combout\);

-- Location: LABCELL_X29_Y34_N0
\inst|inst53|6~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|inst53|6~2_combout\ = ( \inst|inst38|sub|65~combout\ & ( (\inst16|altsyncram_component|auto_generated|ram_block1a3\) # (\inst17|MSC2~0_combout\) ) ) # ( !\inst|inst38|sub|65~combout\ & ( (!\inst17|MSC2~0_combout\ & 
-- \inst16|altsyncram_component|auto_generated|ram_block1a3\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011001100000000001100110000110011111111110011001111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \inst17|ALT_INV_MSC2~0_combout\,
	datad => \inst16|altsyncram_component|auto_generated|ALT_INV_ram_block1a3\,
	dataf => \inst|inst38|sub|ALT_INV_65~combout\,
	combout => \inst|inst53|6~2_combout\);

-- Location: LABCELL_X29_Y34_N12
\inst|inst36|sub|105~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|inst36|sub|105~0_combout\ = ( \CIN~input_o\ & ( (!\inst|inst18~q\ & (\inst|inst6~q\ & ((\inst|inst7~q\) # (\inst|inst19~q\)))) # (\inst|inst18~q\ & (((\inst|inst7~q\) # (\inst|inst6~q\)) # (\inst|inst19~q\))) ) ) # ( !\CIN~input_o\ & ( 
-- (!\inst|inst18~q\ & (\inst|inst19~q\ & (\inst|inst6~q\ & \inst|inst7~q\))) # (\inst|inst18~q\ & (((\inst|inst19~q\ & \inst|inst7~q\)) # (\inst|inst6~q\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100010111000000110001011100010111001111110001011100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ALT_INV_inst19~q\,
	datab => \inst|ALT_INV_inst18~q\,
	datac => \inst|ALT_INV_inst6~q\,
	datad => \inst|ALT_INV_inst7~q\,
	dataf => \ALT_INV_CIN~input_o\,
	combout => \inst|inst36|sub|105~0_combout\);

-- Location: LABCELL_X29_Y34_N27
\inst|inst36|sub|82\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|inst36|sub|82~combout\ = ( \inst|inst5~q\ & ( !\inst|inst16~q\ $ (!\inst|inst4~q\ $ (((\inst|inst36|sub|105~0_combout\) # (\inst|inst17~q\)))) ) ) # ( !\inst|inst5~q\ & ( !\inst|inst16~q\ $ (!\inst|inst4~q\ $ (((\inst|inst17~q\ & 
-- \inst|inst36|sub|105~0_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011011011001001001101101100100101101100100100110110110010010011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ALT_INV_inst17~q\,
	datab => \inst|ALT_INV_inst16~q\,
	datac => \inst|inst36|sub|ALT_INV_105~0_combout\,
	datad => \inst|ALT_INV_inst4~q\,
	dataf => \inst|ALT_INV_inst5~q\,
	combout => \inst|inst36|sub|82~combout\);

-- Location: LABCELL_X29_Y34_N3
\inst|inst53|6~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|inst53|6~0_combout\ = ( \inst|inst36|sub|82~combout\ & ( ((\inst17|MSC2~0_combout\ & \inst|inst~0_combout\)) # (\inst|inst53|6~2_combout\) ) ) # ( !\inst|inst36|sub|82~combout\ & ( (\inst|inst53|6~2_combout\ & ((!\inst17|MSC2~0_combout\) # 
-- (!\inst|inst~0_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010000010101010101000001010101010111110101010101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst53|ALT_INV_6~2_combout\,
	datac => \inst17|ALT_INV_MSC2~0_combout\,
	datad => \inst|ALT_INV_inst~0_combout\,
	dataf => \inst|inst36|sub|ALT_INV_82~combout\,
	combout => \inst|inst53|6~0_combout\);

-- Location: FF_X29_Y34_N5
\inst|inst4\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst7~q\,
	d => \inst|inst53|6~0_combout\,
	clrn => \RESET~input_o\,
	ena => \inst|inst53|6~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst4~q\);

-- Location: MLABCELL_X28_Y34_N39
\inst|inst38|sub|81~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|inst38|sub|81~0_combout\ = ( \inst17|MSC1~0_combout\ & ( (!\inst17|MSC0~0_combout\ & (\inst|inst4~q\)) # (\inst17|MSC0~0_combout\ & ((\inst|inst16~q\))) ) ) # ( !\inst17|MSC1~0_combout\ & ( (!\inst|inst4~q\ & (!\inst17|MSC0~0_combout\)) # 
-- (\inst|inst4~q\ & (\inst17|MSC0~0_combout\ & \inst|inst16~q\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100000011000011110000001100001100110000001111110011000000111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \inst|ALT_INV_inst4~q\,
	datac => \inst17|ALT_INV_MSC0~0_combout\,
	datad => \inst|ALT_INV_inst16~q\,
	dataf => \inst17|ALT_INV_MSC1~0_combout\,
	combout => \inst|inst38|sub|81~0_combout\);

-- Location: LABCELL_X29_Y34_N36
\inst|inst32\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|inst32~combout\ = ( !\inst|inst16~q\ & ( !\inst|inst4~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000011110000111100001111000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \inst|ALT_INV_inst4~q\,
	dataf => \inst|ALT_INV_inst16~q\,
	combout => \inst|inst32~combout\);

-- Location: MLABCELL_X28_Y34_N36
\inst|inst50|6~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|inst50|6~1_combout\ = ( \inst|inst38|sub|65~combout\ & ( (!\inst17|MSB1~combout\ & (\inst|inst4~q\)) # (\inst17|MSB1~combout\ & (((!\inst|inst~0_combout\) # (!\inst|inst32~combout\)))) ) ) # ( !\inst|inst38|sub|65~combout\ & ( 
-- (!\inst17|MSB1~combout\ & (\inst|inst4~q\)) # (\inst17|MSB1~combout\ & (((\inst|inst~0_combout\ & !\inst|inst32~combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010011100100010001001110010001001110111011100100111011101110010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst17|ALT_INV_MSB1~combout\,
	datab => \inst|ALT_INV_inst4~q\,
	datac => \inst|ALT_INV_inst~0_combout\,
	datad => \inst|ALT_INV_inst32~combout\,
	dataf => \inst|inst38|sub|ALT_INV_65~combout\,
	combout => \inst|inst50|6~1_combout\);

-- Location: MLABCELL_X28_Y34_N57
\inst|inst50|6~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|inst50|6~0_combout\ = ( \inst17|MSC2~0_combout\ & ( \inst17|MSB1~combout\ & ( (!\inst|inst~0_combout\ & (\inst|inst50|6~1_combout\)) # (\inst|inst~0_combout\ & ((\inst|inst36|sub|82~combout\))) ) ) ) # ( !\inst17|MSC2~0_combout\ & ( 
-- \inst17|MSB1~combout\ & ( (!\inst|inst~0_combout\ & (\inst|inst38|sub|81~0_combout\)) # (\inst|inst~0_combout\ & ((\inst|inst50|6~1_combout\))) ) ) ) # ( \inst17|MSC2~0_combout\ & ( !\inst17|MSB1~combout\ & ( \inst|inst50|6~1_combout\ ) ) ) # ( 
-- !\inst17|MSC2~0_combout\ & ( !\inst17|MSB1~combout\ & ( \inst|inst50|6~1_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100100111001001110000101001011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ALT_INV_inst~0_combout\,
	datab => \inst|inst38|sub|ALT_INV_81~0_combout\,
	datac => \inst|inst50|ALT_INV_6~1_combout\,
	datad => \inst|inst36|sub|ALT_INV_82~combout\,
	datae => \inst17|ALT_INV_MSC2~0_combout\,
	dataf => \inst17|ALT_INV_MSB1~combout\,
	combout => \inst|inst50|6~0_combout\);

-- Location: FF_X28_Y34_N59
\inst|inst16\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst7~q\,
	d => \inst|inst50|6~0_combout\,
	clrn => \RESET~input_o\,
	ena => \inst17|ALT_INV_MSB1~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst16~q\);

-- Location: LABCELL_X30_Y34_N27
\inst|inst~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|inst~1_combout\ = ( \inst|inst5~q\ & ( \inst|inst~0_combout\ & ( (!\inst|inst16~q\ & (\inst|inst4~q\ & ((\inst|inst17~q\) # (\inst|inst36|sub|105~0_combout\)))) # (\inst|inst16~q\ & (((\inst|inst17~q\) # (\inst|inst4~q\)) # 
-- (\inst|inst36|sub|105~0_combout\))) ) ) ) # ( !\inst|inst5~q\ & ( \inst|inst~0_combout\ & ( (!\inst|inst16~q\ & (\inst|inst36|sub|105~0_combout\ & (\inst|inst4~q\ & \inst|inst17~q\))) # (\inst|inst16~q\ & (((\inst|inst36|sub|105~0_combout\ & 
-- \inst|inst17~q\)) # (\inst|inst4~q\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000101000101110001011101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ALT_INV_inst16~q\,
	datab => \inst|inst36|sub|ALT_INV_105~0_combout\,
	datac => \inst|ALT_INV_inst4~q\,
	datad => \inst|ALT_INV_inst17~q\,
	datae => \inst|ALT_INV_inst5~q\,
	dataf => \inst|ALT_INV_inst~0_combout\,
	combout => \inst|inst~1_combout\);

-- Location: LABCELL_X27_Y34_N42
\inst17|PCINC~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst17|PCINC~2_combout\ = ( \inst8~q\ & ( !\inst5~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000010101010101010101010101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_inst5~q\,
	dataf => \ALT_INV_inst8~q\,
	combout => \inst17|PCINC~2_combout\);

-- Location: LABCELL_X27_Y34_N48
\inst|inst38|sub|81~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|inst38|sub|81~1_combout\ = ( \inst|inst~0_combout\ & ( \inst|inst38|sub|65~combout\ & ( (!\inst17|MSC2~0_combout\ & ((!\inst|inst32~combout\))) # (\inst17|MSC2~0_combout\ & (\inst|inst36|sub|82~combout\)) ) ) ) # ( !\inst|inst~0_combout\ & ( 
-- \inst|inst38|sub|65~combout\ & ( (\inst|inst38|sub|81~0_combout\) # (\inst17|MSC2~0_combout\) ) ) ) # ( \inst|inst~0_combout\ & ( !\inst|inst38|sub|65~combout\ & ( (!\inst17|MSC2~0_combout\ & ((!\inst|inst32~combout\))) # (\inst17|MSC2~0_combout\ & 
-- (\inst|inst36|sub|82~combout\)) ) ) ) # ( !\inst|inst~0_combout\ & ( !\inst|inst38|sub|65~combout\ & ( (!\inst17|MSC2~0_combout\ & \inst|inst38|sub|81~0_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101000001010101110110001000101011111010111111011101100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst17|ALT_INV_MSC2~0_combout\,
	datab => \inst|inst36|sub|ALT_INV_82~combout\,
	datac => \inst|inst38|sub|ALT_INV_81~0_combout\,
	datad => \inst|ALT_INV_inst32~combout\,
	datae => \inst|ALT_INV_inst~0_combout\,
	dataf => \inst|inst38|sub|ALT_INV_65~combout\,
	combout => \inst|inst38|sub|81~1_combout\);

-- Location: LABCELL_X27_Y34_N0
\inst|inst39|sub|81~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|inst39|sub|81~2_combout\ = ( \inst|inst39|sub|81~1_combout\ & ( (!\inst17|MSC2~0_combout\) # (!\inst|inst39|sub|81~0_combout\) ) ) # ( !\inst|inst39|sub|81~1_combout\ & ( (\inst17|MSC2~0_combout\ & !\inst|inst39|sub|81~0_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100000000000011110000000011111111111100001111111111110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \inst17|ALT_INV_MSC2~0_combout\,
	datad => \inst|inst39|sub|ALT_INV_81~0_combout\,
	dataf => \inst|inst39|sub|ALT_INV_81~1_combout\,
	combout => \inst|inst39|sub|81~2_combout\);

-- Location: LABCELL_X27_Y34_N57
\inst|inst42|sub|81~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|inst42|sub|81~0_combout\ = ( \inst|inst42|sub|81~1_combout\ & ( (\inst|inst6~q\) # (\inst17|MSC2~0_combout\) ) ) # ( !\inst|inst42|sub|81~1_combout\ & ( (!\inst17|MSC2~0_combout\ & \inst|inst6~q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101000001010010111110101111100001010000010100101111101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst17|ALT_INV_MSC2~0_combout\,
	datac => \inst|ALT_INV_inst6~q\,
	datae => \inst|inst42|sub|ALT_INV_81~1_combout\,
	combout => \inst|inst42|sub|81~0_combout\);

-- Location: LABCELL_X77_Y54_N0
\~QUARTUS_CREATED_GND~I\ : cyclonev_lcell_comb
-- Equation(s):

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
;
END structure;


