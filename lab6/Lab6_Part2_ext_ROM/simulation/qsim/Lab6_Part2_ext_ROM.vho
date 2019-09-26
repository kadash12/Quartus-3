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

-- DATE "07/22/2019 12:37:29"

-- 
-- Device: Altera 10M02SCU169C8G Package UFBGA169
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY FIFTYFIVENM;
LIBRARY IEEE;
USE FIFTYFIVENM.FIFTYFIVENM_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	hard_block IS
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic
	);
END hard_block;

-- Design Ports Information
-- ~ALTERA_TMS~	=>  Location: PIN_G1,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default
-- ~ALTERA_TCK~	=>  Location: PIN_G2,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default
-- ~ALTERA_TDI~	=>  Location: PIN_F5,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default
-- ~ALTERA_TDO~	=>  Location: PIN_F6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_CONFIG_SEL~	=>  Location: PIN_D7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_nCONFIG~	=>  Location: PIN_E7,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default
-- ~ALTERA_nSTATUS~	=>  Location: PIN_C4,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default
-- ~ALTERA_CONF_DONE~	=>  Location: PIN_C5,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default


ARCHITECTURE structure OF hard_block IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL \~ALTERA_TMS~~padout\ : std_logic;
SIGNAL \~ALTERA_TCK~~padout\ : std_logic;
SIGNAL \~ALTERA_TDI~~padout\ : std_logic;
SIGNAL \~ALTERA_CONFIG_SEL~~padout\ : std_logic;
SIGNAL \~ALTERA_nCONFIG~~padout\ : std_logic;
SIGNAL \~ALTERA_nSTATUS~~padout\ : std_logic;
SIGNAL \~ALTERA_CONF_DONE~~padout\ : std_logic;
SIGNAL \~ALTERA_TMS~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_TCK~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_TDI~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_CONFIG_SEL~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_nCONFIG~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_nSTATUS~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_CONF_DONE~~ibuf_o\ : std_logic;

BEGIN

ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
END structure;


LIBRARY ALTERA;
LIBRARY FIFTYFIVENM;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE FIFTYFIVENM.FIFTYFIVENM_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	Lab6_Part2_ext_ROM IS
    PORT (
	IRLD : OUT std_logic;
	IR2 : OUT std_logic;
	CLK : OUT std_logic;
	RESET : IN std_logic;
	MemCLK : IN std_logic;
	OE_L : IN std_logic;
	CE_L : IN std_logic;
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
END Lab6_Part2_ext_ROM;

-- Design Ports Information
-- IRLD	=>  Location: PIN_F13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- IR2	=>  Location: PIN_K13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CLK	=>  Location: PIN_G9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- OE_L	=>  Location: PIN_M2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CE_L	=>  Location: PIN_D11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Addr[14]	=>  Location: PIN_N12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Addr[13]	=>  Location: PIN_M9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Addr[12]	=>  Location: PIN_M8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Addr[11]	=>  Location: PIN_K5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Addr[10]	=>  Location: PIN_L4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Addr[9]	=>  Location: PIN_M1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Addr[8]	=>  Location: PIN_J1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Addr[7]	=>  Location: PIN_D6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Addr[6]	=>  Location: PIN_E8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Addr[5]	=>  Location: PIN_J5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Addr[4]	=>  Location: PIN_A9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Addr[3]	=>  Location: PIN_J8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Addr[2]	=>  Location: PIN_M11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Addr[1]	=>  Location: PIN_L11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Addr[0]	=>  Location: PIN_K10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PCINC	=>  Location: PIN_E13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PCLD	=>  Location: PIN_K8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- IR1	=>  Location: PIN_H13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- IR0	=>  Location: PIN_H8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- COUT	=>  Location: PIN_N10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- MSA1	=>  Location: PIN_M13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- MSC2	=>  Location: PIN_N9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- MSA0	=>  Location: PIN_L10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- MSC1	=>  Location: PIN_G13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- MSB1	=>  Location: PIN_J13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- MSC0	=>  Location: PIN_G12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- MSB0	=>  Location: PIN_G10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A3	=>  Location: PIN_H9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A2	=>  Location: PIN_H10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A1	=>  Location: PIN_J9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A0	=>  Location: PIN_L13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B3	=>  Location: PIN_L12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B2	=>  Location: PIN_J7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B1	=>  Location: PIN_M10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B0	=>  Location: PIN_J10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- OUT3	=>  Location: PIN_M12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- OUT2	=>  Location: PIN_K12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- OUT1	=>  Location: PIN_K7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- OUT0	=>  Location: PIN_J12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CIN	=>  Location: PIN_K11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RESET	=>  Location: PIN_H4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- MemCLK	=>  Location: PIN_H5,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF Lab6_Part2_ext_ROM IS
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
SIGNAL ww_OE_L : std_logic;
SIGNAL ww_CE_L : std_logic;
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
SIGNAL \inst7~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \MemCLK~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \RESET~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \OE_L~input_o\ : std_logic;
SIGNAL \CE_L~input_o\ : std_logic;
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \~QUARTUS_CREATED_UNVM~~busy\ : std_logic;
SIGNAL \IRLD~output_o\ : std_logic;
SIGNAL \IR2~output_o\ : std_logic;
SIGNAL \CLK~output_o\ : std_logic;
SIGNAL \Addr[14]~output_o\ : std_logic;
SIGNAL \Addr[13]~output_o\ : std_logic;
SIGNAL \Addr[12]~output_o\ : std_logic;
SIGNAL \Addr[11]~output_o\ : std_logic;
SIGNAL \Addr[10]~output_o\ : std_logic;
SIGNAL \Addr[9]~output_o\ : std_logic;
SIGNAL \Addr[8]~output_o\ : std_logic;
SIGNAL \Addr[7]~output_o\ : std_logic;
SIGNAL \Addr[6]~output_o\ : std_logic;
SIGNAL \Addr[5]~output_o\ : std_logic;
SIGNAL \Addr[4]~output_o\ : std_logic;
SIGNAL \Addr[3]~output_o\ : std_logic;
SIGNAL \Addr[2]~output_o\ : std_logic;
SIGNAL \Addr[1]~output_o\ : std_logic;
SIGNAL \Addr[0]~output_o\ : std_logic;
SIGNAL \PCINC~output_o\ : std_logic;
SIGNAL \PCLD~output_o\ : std_logic;
SIGNAL \IR1~output_o\ : std_logic;
SIGNAL \IR0~output_o\ : std_logic;
SIGNAL \COUT~output_o\ : std_logic;
SIGNAL \MSA1~output_o\ : std_logic;
SIGNAL \MSC2~output_o\ : std_logic;
SIGNAL \MSA0~output_o\ : std_logic;
SIGNAL \MSC1~output_o\ : std_logic;
SIGNAL \MSB1~output_o\ : std_logic;
SIGNAL \MSC0~output_o\ : std_logic;
SIGNAL \MSB0~output_o\ : std_logic;
SIGNAL \A3~output_o\ : std_logic;
SIGNAL \A2~output_o\ : std_logic;
SIGNAL \A1~output_o\ : std_logic;
SIGNAL \A0~output_o\ : std_logic;
SIGNAL \B3~output_o\ : std_logic;
SIGNAL \B2~output_o\ : std_logic;
SIGNAL \B1~output_o\ : std_logic;
SIGNAL \B0~output_o\ : std_logic;
SIGNAL \OUT3~output_o\ : std_logic;
SIGNAL \OUT2~output_o\ : std_logic;
SIGNAL \OUT1~output_o\ : std_logic;
SIGNAL \OUT0~output_o\ : std_logic;
SIGNAL \MemCLK~input_o\ : std_logic;
SIGNAL \MemCLK~inputclkctrl_outclk\ : std_logic;
SIGNAL \inst7~0_combout\ : std_logic;
SIGNAL \inst7~feeder_combout\ : std_logic;
SIGNAL \RESET~input_o\ : std_logic;
SIGNAL \RESET~inputclkctrl_outclk\ : std_logic;
SIGNAL \inst7~q\ : std_logic;
SIGNAL \inst7~clkctrl_outclk\ : std_logic;
SIGNAL \inst31|PCLD~combout\ : std_logic;
SIGNAL \inst11|sub|106~1_combout\ : std_logic;
SIGNAL \inst11|sub|102~0_combout\ : std_logic;
SIGNAL \inst11|sub|99~q\ : std_logic;
SIGNAL \inst16|Mux0~0_combout\ : std_logic;
SIGNAL \inst31|PCINC~0_combout\ : std_logic;
SIGNAL \inst11|sub|106~0_combout\ : std_logic;
SIGNAL \inst11|sub|109~0_combout\ : std_logic;
SIGNAL \inst11|sub|110~q\ : std_logic;
SIGNAL \inst16|Mux3~0_combout\ : std_logic;
SIGNAL \inst11|sub|75~0_combout\ : std_logic;
SIGNAL \inst11|sub|9~q\ : std_logic;
SIGNAL \inst16|Mux1~0_combout\ : std_logic;
SIGNAL \inst16|D_sig[2]~feeder_combout\ : std_logic;
SIGNAL \inst2|inst1~q\ : std_logic;
SIGNAL \inst14|inst1~q\ : std_logic;
SIGNAL \inst31|D1~2_combout\ : std_logic;
SIGNAL \inst31|D0~combout\ : std_logic;
SIGNAL \inst5~q\ : std_logic;
SIGNAL \inst11|sub|92~2_combout\ : std_logic;
SIGNAL \inst11|sub|92~3_combout\ : std_logic;
SIGNAL \inst11|sub|87~q\ : std_logic;
SIGNAL \inst16|Mux2~0_combout\ : std_logic;
SIGNAL \inst3|inst1~q\ : std_logic;
SIGNAL \inst31|D1~0_combout\ : std_logic;
SIGNAL \inst31|D1~1_combout\ : std_logic;
SIGNAL \inst8~q\ : std_logic;
SIGNAL \inst31|IRLD~combout\ : std_logic;
SIGNAL \inst31|MSC2~0_combout\ : std_logic;
SIGNAL \inst31|MSC1~0_combout\ : std_logic;
SIGNAL \inst31|MSB1~combout\ : std_logic;
SIGNAL \inst|inst39|sub|81~3_combout\ : std_logic;
SIGNAL \inst|inst42|sub|81~3_combout\ : std_logic;
SIGNAL \inst|inst47|6~0_combout\ : std_logic;
SIGNAL \inst|inst18~q\ : std_logic;
SIGNAL \CIN~input_o\ : std_logic;
SIGNAL \inst|inst~0_combout\ : std_logic;
SIGNAL \inst31|MSC0~0_combout\ : std_logic;
SIGNAL \inst|inst45|sub|66~combout\ : std_logic;
SIGNAL \inst|inst40|6~0_combout\ : std_logic;
SIGNAL \inst|inst19~q\ : std_logic;
SIGNAL \inst|inst45|sub|81~0_combout\ : std_logic;
SIGNAL \inst|inst45|sub|81~1_combout\ : std_logic;
SIGNAL \inst|inst45|sub|81~2_combout\ : std_logic;
SIGNAL \inst|inst45|sub|81~3_combout\ : std_logic;
SIGNAL \inst|inst7~0_combout\ : std_logic;
SIGNAL \inst31|MSA0~combout\ : std_logic;
SIGNAL \inst|inst7~q\ : std_logic;
SIGNAL \inst|inst36|sub|104~0_combout\ : std_logic;
SIGNAL \inst|inst42|sub|81~0_combout\ : std_logic;
SIGNAL \inst|inst42|sub|81~1_combout\ : std_logic;
SIGNAL \inst|inst42|sub|81~2_combout\ : std_logic;
SIGNAL \inst|inst6~0_combout\ : std_logic;
SIGNAL \inst|inst6~q\ : std_logic;
SIGNAL \inst|inst39|sub|81~1_combout\ : std_logic;
SIGNAL \inst|inst39|sub|81~4_combout\ : std_logic;
SIGNAL \inst|inst48|6~0_combout\ : std_logic;
SIGNAL \inst|inst17~q\ : std_logic;
SIGNAL \inst|inst36|sub|105~0_combout\ : std_logic;
SIGNAL \inst|inst39|sub|81~0_combout\ : std_logic;
SIGNAL \inst|inst39|sub|81~2_combout\ : std_logic;
SIGNAL \inst|inst5~0_combout\ : std_logic;
SIGNAL \inst|inst5~q\ : std_logic;
SIGNAL \inst|inst38|sub|65~combout\ : std_logic;
SIGNAL \inst|inst50|6~0_combout\ : std_logic;
SIGNAL \inst|inst16~q\ : std_logic;
SIGNAL \inst|inst36|sub|82~0_combout\ : std_logic;
SIGNAL \inst|inst36|sub|82~combout\ : std_logic;
SIGNAL \inst|inst38|sub|81~0_combout\ : std_logic;
SIGNAL \inst|inst38|sub|81~1_combout\ : std_logic;
SIGNAL \inst|inst38|sub|81~2_combout\ : std_logic;
SIGNAL \inst|inst4~0_combout\ : std_logic;
SIGNAL \inst|inst4~q\ : std_logic;
SIGNAL \inst|inst32~combout\ : std_logic;
SIGNAL \inst|inst36|sub|107~0_combout\ : std_logic;
SIGNAL \inst|inst~1_combout\ : std_logic;
SIGNAL \inst16|D_sig\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \inst31|ALT_INV_MSB1~combout\ : std_logic;
SIGNAL \inst31|ALT_INV_MSC1~0_combout\ : std_logic;
SIGNAL \inst31|ALT_INV_MSA0~combout\ : std_logic;

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

IRLD <= ww_IRLD;
IR2 <= ww_IR2;
CLK <= ww_CLK;
ww_RESET <= RESET;
ww_MemCLK <= MemCLK;
ww_OE_L <= OE_L;
ww_CE_L <= CE_L;
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

\inst7~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \inst7~q\);

\MemCLK~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \MemCLK~input_o\);

\RESET~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \RESET~input_o\);
\inst31|ALT_INV_MSB1~combout\ <= NOT \inst31|MSB1~combout\;
\inst31|ALT_INV_MSC1~0_combout\ <= NOT \inst31|MSC1~0_combout\;
\inst31|ALT_INV_MSA0~combout\ <= NOT \inst31|MSA0~combout\;
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: LCCOMB_X11_Y9_N12
\~QUARTUS_CREATED_GND~I\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \~QUARTUS_CREATED_GND~I_combout\ = GND

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \~QUARTUS_CREATED_GND~I_combout\);

-- Location: IOOBUF_X18_Y8_N23
\IRLD~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst31|IRLD~combout\,
	devoe => ww_devoe,
	o => \IRLD~output_o\);

-- Location: IOOBUF_X18_Y2_N2
\IR2~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2|inst1~q\,
	devoe => ww_devoe,
	o => \IR2~output_o\);

-- Location: IOOBUF_X18_Y6_N23
\CLK~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst7~q\,
	devoe => ww_devoe,
	o => \CLK~output_o\);

-- Location: IOOBUF_X9_Y0_N16
\Addr[14]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \Addr[14]~output_o\);

-- Location: IOOBUF_X6_Y0_N9
\Addr[13]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \Addr[13]~output_o\);

-- Location: IOOBUF_X6_Y0_N16
\Addr[12]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \Addr[12]~output_o\);

-- Location: IOOBUF_X3_Y0_N23
\Addr[11]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \Addr[11]~output_o\);

-- Location: IOOBUF_X1_Y0_N9
\Addr[10]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \Addr[10]~output_o\);

-- Location: IOOBUF_X0_Y4_N2
\Addr[9]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \Addr[9]~output_o\);

-- Location: IOOBUF_X0_Y5_N2
\Addr[8]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \Addr[8]~output_o\);

-- Location: IOOBUF_X6_Y7_N30
\Addr[7]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \Addr[7]~output_o\);

-- Location: IOOBUF_X14_Y17_N2
\Addr[6]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \Addr[6]~output_o\);

-- Location: IOOBUF_X3_Y0_N16
\Addr[5]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \Addr[5]~output_o\);

-- Location: IOOBUF_X18_Y15_N2
\Addr[4]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \Addr[4]~output_o\);

-- Location: IOOBUF_X14_Y0_N2
\Addr[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst11|sub|110~q\,
	devoe => ww_devoe,
	o => \Addr[3]~output_o\);

-- Location: IOOBUF_X14_Y0_N16
\Addr[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst11|sub|99~q\,
	devoe => ww_devoe,
	o => \Addr[2]~output_o\);

-- Location: IOOBUF_X14_Y0_N9
\Addr[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst11|sub|87~q\,
	devoe => ww_devoe,
	o => \Addr[1]~output_o\);

-- Location: IOOBUF_X18_Y1_N23
\Addr[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst11|sub|9~q\,
	devoe => ww_devoe,
	o => \Addr[0]~output_o\);

-- Location: IOOBUF_X18_Y8_N16
\PCINC~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst31|PCINC~0_combout\,
	devoe => ww_devoe,
	o => \PCINC~output_o\);

-- Location: IOOBUF_X16_Y0_N30
\PCLD~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst31|PCLD~combout\,
	devoe => ww_devoe,
	o => \PCLD~output_o\);

-- Location: IOOBUF_X18_Y3_N2
\IR1~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst3|inst1~q\,
	devoe => ww_devoe,
	o => \IR1~output_o\);

-- Location: IOOBUF_X18_Y4_N16
\IR0~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst14|inst1~q\,
	devoe => ww_devoe,
	o => \IR0~output_o\);

-- Location: IOOBUF_X11_Y0_N23
\COUT~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|inst~1_combout\,
	devoe => ww_devoe,
	o => \COUT~output_o\);

-- Location: IOOBUF_X11_Y0_N9
\MSA1~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst31|MSC2~0_combout\,
	devoe => ww_devoe,
	o => \MSA1~output_o\);

-- Location: IOOBUF_X11_Y0_N16
\MSC2~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst31|MSC2~0_combout\,
	devoe => ww_devoe,
	o => \MSC2~output_o\);

-- Location: IOOBUF_X16_Y0_N2
\MSA0~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst31|MSA0~combout\,
	devoe => ww_devoe,
	o => \MSA0~output_o\);

-- Location: IOOBUF_X18_Y4_N9
\MSC1~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst31|ALT_INV_MSC1~0_combout\,
	devoe => ww_devoe,
	o => \MSC1~output_o\);

-- Location: IOOBUF_X18_Y3_N9
\MSB1~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst31|MSB1~combout\,
	devoe => ww_devoe,
	o => \MSB1~output_o\);

-- Location: IOOBUF_X18_Y4_N2
\MSC0~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst31|MSC0~0_combout\,
	devoe => ww_devoe,
	o => \MSC0~output_o\);

-- Location: IOOBUF_X18_Y6_N16
\MSB0~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst31|ALT_INV_MSB1~combout\,
	devoe => ww_devoe,
	o => \MSB0~output_o\);

-- Location: IOOBUF_X18_Y4_N23
\A3~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|inst4~q\,
	devoe => ww_devoe,
	o => \A3~output_o\);

-- Location: IOOBUF_X18_Y3_N16
\A2~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|inst5~q\,
	devoe => ww_devoe,
	o => \A2~output_o\);

-- Location: IOOBUF_X18_Y3_N23
\A1~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|inst6~q\,
	devoe => ww_devoe,
	o => \A1~output_o\);

-- Location: IOOBUF_X18_Y2_N9
\A0~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|inst7~q\,
	devoe => ww_devoe,
	o => \A0~output_o\);

-- Location: IOOBUF_X18_Y1_N2
\B3~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|inst16~q\,
	devoe => ww_devoe,
	o => \B3~output_o\);

-- Location: IOOBUF_X9_Y0_N9
\B2~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|inst17~q\,
	devoe => ww_devoe,
	o => \B2~output_o\);

-- Location: IOOBUF_X16_Y0_N9
\B1~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|inst18~q\,
	devoe => ww_devoe,
	o => \B1~output_o\);

-- Location: IOOBUF_X18_Y1_N16
\B0~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|inst19~q\,
	devoe => ww_devoe,
	o => \B0~output_o\);

-- Location: IOOBUF_X11_Y0_N2
\OUT3~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|inst38|sub|81~2_combout\,
	devoe => ww_devoe,
	o => \OUT3~output_o\);

-- Location: IOOBUF_X18_Y2_N23
\OUT2~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|inst39|sub|81~4_combout\,
	devoe => ww_devoe,
	o => \OUT2~output_o\);

-- Location: IOOBUF_X9_Y0_N2
\OUT1~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|inst42|sub|81~3_combout\,
	devoe => ww_devoe,
	o => \OUT1~output_o\);

-- Location: IOOBUF_X18_Y2_N16
\OUT0~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|inst45|sub|81~3_combout\,
	devoe => ww_devoe,
	o => \OUT0~output_o\);

-- Location: IOIBUF_X0_Y4_N15
\MemCLK~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_MemCLK,
	o => \MemCLK~input_o\);

-- Location: CLKCTRL_G3
\MemCLK~inputclkctrl\ : fiftyfivenm_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \MemCLK~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \MemCLK~inputclkctrl_outclk\);

-- Location: LCCOMB_X17_Y6_N18
\inst7~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst7~0_combout\ = !\inst7~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst7~q\,
	combout => \inst7~0_combout\);

-- Location: LCCOMB_X17_Y6_N16
\inst7~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst7~feeder_combout\ = \inst7~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7~0_combout\,
	combout => \inst7~feeder_combout\);

-- Location: IOIBUF_X0_Y4_N22
\RESET~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_RESET,
	o => \RESET~input_o\);

-- Location: CLKCTRL_G1
\RESET~inputclkctrl\ : fiftyfivenm_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \RESET~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \RESET~inputclkctrl_outclk\);

-- Location: FF_X17_Y6_N17
inst7 : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MemCLK~inputclkctrl_outclk\,
	d => \inst7~feeder_combout\,
	clrn => \RESET~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst7~q\);

-- Location: CLKCTRL_G7
\inst7~clkctrl\ : fiftyfivenm_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \inst7~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \inst7~clkctrl_outclk\);

-- Location: LCCOMB_X15_Y4_N12
\inst31|PCLD\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst31|PCLD~combout\ = (\inst8~q\ & \inst5~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst8~q\,
	datad => \inst5~q\,
	combout => \inst31|PCLD~combout\);

-- Location: LCCOMB_X15_Y4_N20
\inst11|sub|106~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst11|sub|106~1_combout\ = (\inst11|sub|9~q\ & (\inst11|sub|87~q\ & (\inst8~q\ $ (\inst5~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|sub|9~q\,
	datab => \inst11|sub|87~q\,
	datac => \inst8~q\,
	datad => \inst5~q\,
	combout => \inst11|sub|106~1_combout\);

-- Location: LCCOMB_X15_Y4_N8
\inst11|sub|102~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst11|sub|102~0_combout\ = (\inst31|PCLD~combout\ & (\inst16|D_sig\(2))) # (!\inst31|PCLD~combout\ & ((\inst11|sub|99~q\ $ (\inst11|sub|106~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101110111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst16|D_sig\(2),
	datab => \inst31|PCLD~combout\,
	datac => \inst11|sub|99~q\,
	datad => \inst11|sub|106~1_combout\,
	combout => \inst11|sub|102~0_combout\);

-- Location: FF_X15_Y4_N9
\inst11|sub|99\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst7~clkctrl_outclk\,
	d => \inst11|sub|102~0_combout\,
	clrn => \RESET~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst11|sub|99~q\);

-- Location: LCCOMB_X15_Y4_N14
\inst16|Mux0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst16|Mux0~0_combout\ = (!\inst11|sub|87~q\ & (\inst11|sub|99~q\ & (\inst11|sub|110~q\ & \inst11|sub|9~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|sub|87~q\,
	datab => \inst11|sub|99~q\,
	datac => \inst11|sub|110~q\,
	datad => \inst11|sub|9~q\,
	combout => \inst16|Mux0~0_combout\);

-- Location: FF_X15_Y4_N13
\inst16|D_sig[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MemCLK~inputclkctrl_outclk\,
	asdata => \inst16|Mux0~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst16|D_sig\(3));

-- Location: LCCOMB_X15_Y4_N26
\inst31|PCINC~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst31|PCINC~0_combout\ = \inst8~q\ $ (\inst5~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst8~q\,
	datad => \inst5~q\,
	combout => \inst31|PCINC~0_combout\);

-- Location: LCCOMB_X14_Y4_N12
\inst11|sub|106~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst11|sub|106~0_combout\ = (\inst11|sub|9~q\ & (\inst11|sub|87~q\ & (\inst11|sub|99~q\ & \inst31|PCINC~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|sub|9~q\,
	datab => \inst11|sub|87~q\,
	datac => \inst11|sub|99~q\,
	datad => \inst31|PCINC~0_combout\,
	combout => \inst11|sub|106~0_combout\);

-- Location: LCCOMB_X15_Y4_N22
\inst11|sub|109~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst11|sub|109~0_combout\ = (\inst31|PCLD~combout\ & (\inst16|D_sig\(3))) # (!\inst31|PCLD~combout\ & ((\inst11|sub|110~q\ $ (\inst11|sub|106~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101110111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst16|D_sig\(3),
	datab => \inst31|PCLD~combout\,
	datac => \inst11|sub|110~q\,
	datad => \inst11|sub|106~0_combout\,
	combout => \inst11|sub|109~0_combout\);

-- Location: FF_X15_Y4_N23
\inst11|sub|110\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst7~clkctrl_outclk\,
	d => \inst11|sub|109~0_combout\,
	clrn => \RESET~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst11|sub|110~q\);

-- Location: LCCOMB_X15_Y4_N30
\inst16|Mux3~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst16|Mux3~0_combout\ = (\inst11|sub|87~q\ & ((\inst11|sub|110~q\ & ((!\inst11|sub|99~q\))) # (!\inst11|sub|110~q\ & (\inst11|sub|9~q\)))) # (!\inst11|sub|87~q\ & (((!\inst11|sub|9~q\ & \inst11|sub|99~q\)) # (!\inst11|sub|110~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001101011011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|sub|87~q\,
	datab => \inst11|sub|9~q\,
	datac => \inst11|sub|99~q\,
	datad => \inst11|sub|110~q\,
	combout => \inst16|Mux3~0_combout\);

-- Location: FF_X15_Y4_N3
\inst16|D_sig[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MemCLK~inputclkctrl_outclk\,
	asdata => \inst16|Mux3~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst16|D_sig\(0));

-- Location: LCCOMB_X15_Y4_N28
\inst11|sub|75~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst11|sub|75~0_combout\ = (\inst8~q\ & ((\inst5~q\ & (\inst16|D_sig\(0))) # (!\inst5~q\ & ((!\inst11|sub|9~q\))))) # (!\inst8~q\ & ((\inst11|sub|9~q\ $ (\inst5~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110101011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst8~q\,
	datab => \inst16|D_sig\(0),
	datac => \inst11|sub|9~q\,
	datad => \inst5~q\,
	combout => \inst11|sub|75~0_combout\);

-- Location: FF_X15_Y4_N29
\inst11|sub|9\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst7~clkctrl_outclk\,
	d => \inst11|sub|75~0_combout\,
	clrn => \RESET~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst11|sub|9~q\);

-- Location: LCCOMB_X15_Y4_N24
\inst16|Mux1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst16|Mux1~0_combout\ = (\inst11|sub|99~q\ & (!\inst11|sub|87~q\ & (\inst11|sub|9~q\ $ (!\inst11|sub|110~q\)))) # (!\inst11|sub|99~q\ & (((!\inst11|sub|9~q\ & \inst11|sub|110~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100001100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|sub|87~q\,
	datab => \inst11|sub|9~q\,
	datac => \inst11|sub|99~q\,
	datad => \inst11|sub|110~q\,
	combout => \inst16|Mux1~0_combout\);

-- Location: LCCOMB_X15_Y4_N10
\inst16|D_sig[2]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst16|D_sig[2]~feeder_combout\ = \inst16|Mux1~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst16|Mux1~0_combout\,
	combout => \inst16|D_sig[2]~feeder_combout\);

-- Location: FF_X15_Y4_N11
\inst16|D_sig[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MemCLK~inputclkctrl_outclk\,
	d => \inst16|D_sig[2]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst16|D_sig\(2));

-- Location: FF_X16_Y4_N9
\inst2|inst1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst7~clkctrl_outclk\,
	asdata => \inst16|D_sig\(2),
	clrn => \RESET~inputclkctrl_outclk\,
	sload => VCC,
	ena => \inst31|IRLD~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|inst1~q\);

-- Location: FF_X16_Y4_N29
\inst14|inst1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst7~clkctrl_outclk\,
	asdata => \inst16|D_sig\(0),
	clrn => \RESET~inputclkctrl_outclk\,
	sload => VCC,
	ena => \inst31|IRLD~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst14|inst1~q\);

-- Location: LCCOMB_X14_Y4_N18
\inst31|D1~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst31|D1~2_combout\ = (\inst2|inst1~q\ & (!\inst8~q\ & (\inst14|inst1~q\ & \inst5~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|inst1~q\,
	datab => \inst8~q\,
	datac => \inst14|inst1~q\,
	datad => \inst5~q\,
	combout => \inst31|D1~2_combout\);

-- Location: LCCOMB_X16_Y4_N2
\inst31|D0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst31|D0~combout\ = (\inst3|inst1~q\ & (!\inst8~q\ & (!\inst5~q\))) # (!\inst3|inst1~q\ & ((\inst31|D1~2_combout\) # ((!\inst8~q\ & !\inst5~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101011100000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|inst1~q\,
	datab => \inst8~q\,
	datac => \inst5~q\,
	datad => \inst31|D1~2_combout\,
	combout => \inst31|D0~combout\);

-- Location: FF_X16_Y4_N3
inst5 : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst7~clkctrl_outclk\,
	d => \inst31|D0~combout\,
	clrn => \RESET~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5~q\);

-- Location: LCCOMB_X15_Y4_N18
\inst11|sub|92~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst11|sub|92~2_combout\ = (\inst8~q\ & (!\inst5~q\ & (\inst11|sub|9~q\ $ (\inst11|sub|87~q\)))) # (!\inst8~q\ & (\inst11|sub|87~q\ $ (((\inst11|sub|9~q\ & \inst5~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011001101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|sub|9~q\,
	datab => \inst11|sub|87~q\,
	datac => \inst8~q\,
	datad => \inst5~q\,
	combout => \inst11|sub|92~2_combout\);

-- Location: LCCOMB_X15_Y4_N6
\inst11|sub|92~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst11|sub|92~3_combout\ = (\inst11|sub|92~2_combout\) # ((\inst8~q\ & (\inst16|D_sig\(1) & \inst5~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst8~q\,
	datab => \inst16|D_sig\(1),
	datac => \inst5~q\,
	datad => \inst11|sub|92~2_combout\,
	combout => \inst11|sub|92~3_combout\);

-- Location: FF_X15_Y4_N7
\inst11|sub|87\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst7~clkctrl_outclk\,
	d => \inst11|sub|92~3_combout\,
	clrn => \RESET~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst11|sub|87~q\);

-- Location: LCCOMB_X15_Y4_N4
\inst16|Mux2~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst16|Mux2~0_combout\ = (\inst11|sub|99~q\ & ((\inst11|sub|110~q\ & (!\inst11|sub|87~q\)) # (!\inst11|sub|110~q\ & ((!\inst11|sub|9~q\))))) # (!\inst11|sub|99~q\ & ((\inst11|sub|87~q\ & (\inst11|sub|9~q\)) # (!\inst11|sub|87~q\ & 
-- ((!\inst11|sub|110~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101100000111101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|sub|87~q\,
	datab => \inst11|sub|9~q\,
	datac => \inst11|sub|99~q\,
	datad => \inst11|sub|110~q\,
	combout => \inst16|Mux2~0_combout\);

-- Location: FF_X15_Y4_N1
\inst16|D_sig[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MemCLK~inputclkctrl_outclk\,
	asdata => \inst16|Mux2~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst16|D_sig\(1));

-- Location: FF_X16_Y4_N23
\inst3|inst1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst7~clkctrl_outclk\,
	asdata => \inst16|D_sig\(1),
	clrn => \RESET~inputclkctrl_outclk\,
	sload => VCC,
	ena => \inst31|IRLD~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|inst1~q\);

-- Location: LCCOMB_X16_Y4_N6
\inst31|D1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst31|D1~0_combout\ = (!\inst8~q\ & \inst5~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst8~q\,
	datad => \inst5~q\,
	combout => \inst31|D1~0_combout\);

-- Location: LCCOMB_X16_Y4_N4
\inst31|D1~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst31|D1~1_combout\ = (\inst31|D1~0_combout\ & (\inst14|inst1~q\ & (\inst3|inst1~q\ $ (\inst2|inst1~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|inst1~q\,
	datab => \inst31|D1~0_combout\,
	datac => \inst2|inst1~q\,
	datad => \inst14|inst1~q\,
	combout => \inst31|D1~1_combout\);

-- Location: FF_X16_Y4_N5
inst8 : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst7~clkctrl_outclk\,
	d => \inst31|D1~1_combout\,
	clrn => \RESET~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst8~q\);

-- Location: LCCOMB_X15_Y4_N16
\inst31|IRLD\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst31|IRLD~combout\ = (!\inst8~q\ & !\inst5~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst8~q\,
	datad => \inst5~q\,
	combout => \inst31|IRLD~combout\);

-- Location: LCCOMB_X16_Y4_N12
\inst31|MSC2~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst31|MSC2~0_combout\ = (\inst31|D1~0_combout\ & ((\inst3|inst1~q\ & (!\inst14|inst1~q\ & !\inst2|inst1~q\)) # (!\inst3|inst1~q\ & (\inst14|inst1~q\ $ (\inst2|inst1~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001011000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|inst1~q\,
	datab => \inst14|inst1~q\,
	datac => \inst2|inst1~q\,
	datad => \inst31|D1~0_combout\,
	combout => \inst31|MSC2~0_combout\);

-- Location: LCCOMB_X16_Y4_N26
\inst31|MSC1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst31|MSC1~0_combout\ = (\inst14|inst1~q\) # ((\inst3|inst1~q\ $ (!\inst2|inst1~q\)) # (!\inst31|D1~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|inst1~q\,
	datab => \inst14|inst1~q\,
	datac => \inst2|inst1~q\,
	datad => \inst31|D1~0_combout\,
	combout => \inst31|MSC1~0_combout\);

-- Location: LCCOMB_X16_Y4_N8
\inst31|MSB1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst31|MSB1~combout\ = (\inst3|inst1~q\) # (((\inst2|inst1~q\) # (\inst14|inst1~q\)) # (!\inst31|D1~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|inst1~q\,
	datab => \inst31|D1~0_combout\,
	datac => \inst2|inst1~q\,
	datad => \inst14|inst1~q\,
	combout => \inst31|MSB1~combout\);

-- Location: LCCOMB_X17_Y4_N26
\inst|inst39|sub|81~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|inst39|sub|81~3_combout\ = ((\inst2|inst1~q\ & ((\inst14|inst1~q\) # (\inst3|inst1~q\))) # (!\inst2|inst1~q\ & (\inst14|inst1~q\ $ (!\inst3|inst1~q\)))) # (!\inst31|D1~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111110011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|inst1~q\,
	datab => \inst14|inst1~q\,
	datac => \inst31|D1~0_combout\,
	datad => \inst3|inst1~q\,
	combout => \inst|inst39|sub|81~3_combout\);

-- Location: LCCOMB_X14_Y4_N24
\inst|inst42|sub|81~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|inst42|sub|81~3_combout\ = (\inst|inst6~q\ & ((\inst|inst39|sub|81~3_combout\) # ((\inst31|MSC2~0_combout\ & \inst|inst42|sub|81~2_combout\)))) # (!\inst|inst6~q\ & (\inst31|MSC2~0_combout\ & ((\inst|inst42|sub|81~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst6~q\,
	datab => \inst31|MSC2~0_combout\,
	datac => \inst|inst39|sub|81~3_combout\,
	datad => \inst|inst42|sub|81~2_combout\,
	combout => \inst|inst42|sub|81~3_combout\);

-- Location: LCCOMB_X14_Y4_N0
\inst|inst47|6~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|inst47|6~0_combout\ = (\inst31|MSB1~combout\ & ((\inst|inst42|sub|81~3_combout\))) # (!\inst31|MSB1~combout\ & (\inst|inst6~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst31|MSB1~combout\,
	datac => \inst|inst6~q\,
	datad => \inst|inst42|sub|81~3_combout\,
	combout => \inst|inst47|6~0_combout\);

-- Location: FF_X14_Y4_N1
\inst|inst18\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst7~clkctrl_outclk\,
	d => \inst|inst47|6~0_combout\,
	clrn => \RESET~inputclkctrl_outclk\,
	ena => \inst31|ALT_INV_MSB1~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst18~q\);

-- Location: IOIBUF_X18_Y1_N8
\CIN~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_CIN,
	o => \CIN~input_o\);

-- Location: LCCOMB_X16_Y4_N22
\inst|inst~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|inst~0_combout\ = (!\inst2|inst1~q\ & (\inst14|inst1~q\ & (!\inst3|inst1~q\ & \inst31|D1~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|inst1~q\,
	datab => \inst14|inst1~q\,
	datac => \inst3|inst1~q\,
	datad => \inst31|D1~0_combout\,
	combout => \inst|inst~0_combout\);

-- Location: LCCOMB_X16_Y4_N28
\inst31|MSC0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst31|MSC0~0_combout\ = (!\inst2|inst1~q\ & (\inst31|D1~0_combout\ & (\inst3|inst1~q\ $ (\inst14|inst1~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|inst1~q\,
	datab => \inst2|inst1~q\,
	datac => \inst14|inst1~q\,
	datad => \inst31|D1~0_combout\,
	combout => \inst31|MSC0~0_combout\);

-- Location: LCCOMB_X16_Y4_N14
\inst|inst45|sub|66\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|inst45|sub|66~combout\ = (\inst|inst6~q\ & \inst31|MSC0~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|inst6~q\,
	datad => \inst31|MSC0~0_combout\,
	combout => \inst|inst45|sub|66~combout\);

-- Location: LCCOMB_X17_Y4_N18
\inst|inst40|6~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|inst40|6~0_combout\ = (\inst31|MSB1~combout\ & ((\inst|inst45|sub|81~3_combout\))) # (!\inst31|MSB1~combout\ & (\inst|inst7~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst31|MSB1~combout\,
	datac => \inst|inst7~q\,
	datad => \inst|inst45|sub|81~3_combout\,
	combout => \inst|inst40|6~0_combout\);

-- Location: FF_X17_Y4_N19
\inst|inst19\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst7~clkctrl_outclk\,
	d => \inst|inst40|6~0_combout\,
	clrn => \RESET~inputclkctrl_outclk\,
	ena => \inst31|ALT_INV_MSB1~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst19~q\);

-- Location: LCCOMB_X16_Y4_N20
\inst|inst45|sub|81~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|inst45|sub|81~0_combout\ = (\inst31|MSC0~0_combout\ & (\inst|inst19~q\ & ((\inst|inst7~q\) # (\inst31|MSC1~0_combout\)))) # (!\inst31|MSC0~0_combout\ & (\inst|inst7~q\ $ (((!\inst31|MSC1~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100010100101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst7~q\,
	datab => \inst|inst19~q\,
	datac => \inst31|MSC1~0_combout\,
	datad => \inst31|MSC0~0_combout\,
	combout => \inst|inst45|sub|81~0_combout\);

-- Location: LCCOMB_X16_Y4_N10
\inst|inst45|sub|81~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|inst45|sub|81~1_combout\ = (\inst31|MSC2~0_combout\ & ((\inst|inst~0_combout\) # ((\inst|inst45|sub|66~combout\)))) # (!\inst31|MSC2~0_combout\ & (!\inst|inst~0_combout\ & ((\inst|inst45|sub|81~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst31|MSC2~0_combout\,
	datab => \inst|inst~0_combout\,
	datac => \inst|inst45|sub|66~combout\,
	datad => \inst|inst45|sub|81~0_combout\,
	combout => \inst|inst45|sub|81~1_combout\);

-- Location: LCCOMB_X16_Y4_N24
\inst|inst45|sub|81~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|inst45|sub|81~2_combout\ = (\inst|inst45|sub|81~1_combout\ & (\inst|inst7~q\ $ (\inst|inst19~q\ $ (\CIN~input_o\)))) # (!\inst|inst45|sub|81~1_combout\ & ((\inst|inst7~q\) # ((\inst|inst19~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst7~q\,
	datab => \inst|inst19~q\,
	datac => \CIN~input_o\,
	datad => \inst|inst45|sub|81~1_combout\,
	combout => \inst|inst45|sub|81~2_combout\);

-- Location: LCCOMB_X16_Y4_N30
\inst|inst45|sub|81~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|inst45|sub|81~3_combout\ = (\inst|inst~0_combout\ & ((\inst|inst45|sub|81~2_combout\))) # (!\inst|inst~0_combout\ & (\inst|inst45|sub|81~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst45|sub|81~1_combout\,
	datab => \inst|inst~0_combout\,
	datad => \inst|inst45|sub|81~2_combout\,
	combout => \inst|inst45|sub|81~3_combout\);

-- Location: LCCOMB_X17_Y4_N22
\inst|inst7~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|inst7~0_combout\ = (\inst31|MSC2~0_combout\ & ((\inst|inst45|sub|81~3_combout\))) # (!\inst31|MSC2~0_combout\ & (\inst|inst7~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst31|MSC2~0_combout\,
	datac => \inst|inst7~q\,
	datad => \inst|inst45|sub|81~3_combout\,
	combout => \inst|inst7~0_combout\);

-- Location: LCCOMB_X14_Y4_N20
\inst31|MSA0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst31|MSA0~combout\ = (\inst5~q\) # (!\inst8~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst8~q\,
	datad => \inst5~q\,
	combout => \inst31|MSA0~combout\);

-- Location: FF_X17_Y4_N23
\inst|inst7\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst7~clkctrl_outclk\,
	d => \inst|inst7~0_combout\,
	asdata => \inst16|D_sig\(0),
	clrn => \RESET~inputclkctrl_outclk\,
	sload => \inst31|ALT_INV_MSA0~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst7~q\);

-- Location: LCCOMB_X17_Y4_N24
\inst|inst36|sub|104~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|inst36|sub|104~0_combout\ = (\CIN~input_o\ & ((\inst|inst7~q\) # (\inst|inst19~q\))) # (!\CIN~input_o\ & (\inst|inst7~q\ & \inst|inst19~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CIN~input_o\,
	datac => \inst|inst7~q\,
	datad => \inst|inst19~q\,
	combout => \inst|inst36|sub|104~0_combout\);

-- Location: LCCOMB_X14_Y4_N8
\inst|inst42|sub|81~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|inst42|sub|81~0_combout\ = \inst|inst6~q\ $ (((\inst|inst36|sub|104~0_combout\ & \inst31|MSC0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst6~q\,
	datac => \inst|inst36|sub|104~0_combout\,
	datad => \inst31|MSC0~0_combout\,
	combout => \inst|inst42|sub|81~0_combout\);

-- Location: LCCOMB_X16_Y4_N16
\inst|inst42|sub|81~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|inst42|sub|81~1_combout\ = (\inst31|MSC1~0_combout\ & (((\inst31|MSC0~0_combout\)))) # (!\inst31|MSC1~0_combout\ & ((\inst31|MSC0~0_combout\ & ((\inst|inst5~q\))) # (!\inst31|MSC0~0_combout\ & (\inst|inst7~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst7~q\,
	datab => \inst|inst5~q\,
	datac => \inst31|MSC1~0_combout\,
	datad => \inst31|MSC0~0_combout\,
	combout => \inst|inst42|sub|81~1_combout\);

-- Location: LCCOMB_X14_Y4_N2
\inst|inst42|sub|81~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|inst42|sub|81~2_combout\ = (\inst31|MSC1~0_combout\ & ((\inst|inst18~q\ & ((!\inst|inst42|sub|81~1_combout\) # (!\inst|inst42|sub|81~0_combout\))) # (!\inst|inst18~q\ & (\inst|inst42|sub|81~0_combout\)))) # (!\inst31|MSC1~0_combout\ & 
-- (((\inst|inst42|sub|81~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111101111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst18~q\,
	datab => \inst31|MSC1~0_combout\,
	datac => \inst|inst42|sub|81~0_combout\,
	datad => \inst|inst42|sub|81~1_combout\,
	combout => \inst|inst42|sub|81~2_combout\);

-- Location: LCCOMB_X14_Y4_N30
\inst|inst6~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|inst6~0_combout\ = (\inst31|MSC2~0_combout\ & ((\inst|inst42|sub|81~2_combout\))) # (!\inst31|MSC2~0_combout\ & (\inst|inst6~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst31|MSC2~0_combout\,
	datac => \inst|inst6~q\,
	datad => \inst|inst42|sub|81~2_combout\,
	combout => \inst|inst6~0_combout\);

-- Location: FF_X14_Y4_N31
\inst|inst6\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst7~clkctrl_outclk\,
	d => \inst|inst6~0_combout\,
	asdata => \inst16|D_sig\(1),
	clrn => \RESET~inputclkctrl_outclk\,
	sload => \inst31|ALT_INV_MSA0~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst6~q\);

-- Location: LCCOMB_X17_Y4_N30
\inst|inst39|sub|81~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|inst39|sub|81~1_combout\ = (\inst31|MSC0~0_combout\ & (\inst|inst4~q\)) # (!\inst31|MSC0~0_combout\ & ((\inst|inst6~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|inst4~q\,
	datac => \inst|inst6~q\,
	datad => \inst31|MSC0~0_combout\,
	combout => \inst|inst39|sub|81~1_combout\);

-- Location: LCCOMB_X17_Y4_N28
\inst|inst39|sub|81~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|inst39|sub|81~4_combout\ = (\inst|inst5~q\ & ((\inst|inst39|sub|81~3_combout\) # ((\inst31|MSC2~0_combout\ & \inst|inst39|sub|81~2_combout\)))) # (!\inst|inst5~q\ & (\inst31|MSC2~0_combout\ & ((\inst|inst39|sub|81~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst5~q\,
	datab => \inst31|MSC2~0_combout\,
	datac => \inst|inst39|sub|81~3_combout\,
	datad => \inst|inst39|sub|81~2_combout\,
	combout => \inst|inst39|sub|81~4_combout\);

-- Location: LCCOMB_X17_Y4_N8
\inst|inst48|6~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|inst48|6~0_combout\ = (\inst31|MSB1~combout\ & ((\inst|inst39|sub|81~4_combout\))) # (!\inst31|MSB1~combout\ & (\inst|inst5~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst31|MSB1~combout\,
	datac => \inst|inst5~q\,
	datad => \inst|inst39|sub|81~4_combout\,
	combout => \inst|inst48|6~0_combout\);

-- Location: FF_X17_Y4_N9
\inst|inst17\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst7~clkctrl_outclk\,
	d => \inst|inst48|6~0_combout\,
	clrn => \RESET~inputclkctrl_outclk\,
	ena => \inst31|ALT_INV_MSB1~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst17~q\);

-- Location: LCCOMB_X17_Y4_N14
\inst|inst36|sub|105~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|inst36|sub|105~0_combout\ = (\inst|inst18~q\ & ((\inst|inst6~q\) # (\inst|inst36|sub|104~0_combout\))) # (!\inst|inst18~q\ & (\inst|inst6~q\ & \inst|inst36|sub|104~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst18~q\,
	datac => \inst|inst6~q\,
	datad => \inst|inst36|sub|104~0_combout\,
	combout => \inst|inst36|sub|105~0_combout\);

-- Location: LCCOMB_X17_Y4_N0
\inst|inst39|sub|81~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|inst39|sub|81~0_combout\ = (\inst31|MSC0~0_combout\ & (\inst|inst5~q\ $ (\inst|inst17~q\ $ (\inst|inst36|sub|105~0_combout\)))) # (!\inst31|MSC0~0_combout\ & ((\inst|inst5~q\) # ((\inst|inst17~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst5~q\,
	datab => \inst|inst17~q\,
	datac => \inst|inst36|sub|105~0_combout\,
	datad => \inst31|MSC0~0_combout\,
	combout => \inst|inst39|sub|81~0_combout\);

-- Location: LCCOMB_X17_Y4_N20
\inst|inst39|sub|81~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|inst39|sub|81~2_combout\ = (\inst31|MSC1~0_combout\ & ((\inst|inst39|sub|81~0_combout\))) # (!\inst31|MSC1~0_combout\ & (\inst|inst39|sub|81~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst31|MSC1~0_combout\,
	datac => \inst|inst39|sub|81~1_combout\,
	datad => \inst|inst39|sub|81~0_combout\,
	combout => \inst|inst39|sub|81~2_combout\);

-- Location: LCCOMB_X17_Y4_N12
\inst|inst5~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|inst5~0_combout\ = (\inst31|MSC2~0_combout\ & ((\inst|inst39|sub|81~2_combout\))) # (!\inst31|MSC2~0_combout\ & (\inst|inst5~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst31|MSC2~0_combout\,
	datac => \inst|inst5~q\,
	datad => \inst|inst39|sub|81~2_combout\,
	combout => \inst|inst5~0_combout\);

-- Location: FF_X17_Y4_N13
\inst|inst5\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst7~clkctrl_outclk\,
	d => \inst|inst5~0_combout\,
	asdata => \inst16|D_sig\(2),
	clrn => \RESET~inputclkctrl_outclk\,
	sload => \inst31|ALT_INV_MSA0~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst5~q\);

-- Location: LCCOMB_X14_Y4_N6
\inst|inst38|sub|65\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|inst38|sub|65~combout\ = (\inst|inst5~q\ & !\inst31|MSC0~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|inst5~q\,
	datad => \inst31|MSC0~0_combout\,
	combout => \inst|inst38|sub|65~combout\);

-- Location: LCCOMB_X14_Y4_N28
\inst|inst50|6~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|inst50|6~0_combout\ = (\inst31|MSB1~combout\ & ((\inst|inst38|sub|81~2_combout\))) # (!\inst31|MSB1~combout\ & (\inst|inst4~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst31|MSB1~combout\,
	datac => \inst|inst4~q\,
	datad => \inst|inst38|sub|81~2_combout\,
	combout => \inst|inst50|6~0_combout\);

-- Location: FF_X14_Y4_N29
\inst|inst16\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst7~clkctrl_outclk\,
	d => \inst|inst50|6~0_combout\,
	clrn => \RESET~inputclkctrl_outclk\,
	ena => \inst31|ALT_INV_MSB1~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst16~q\);

-- Location: LCCOMB_X14_Y4_N16
\inst|inst36|sub|82~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|inst36|sub|82~0_combout\ = \inst|inst4~q\ $ (\inst|inst16~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|inst4~q\,
	datad => \inst|inst16~q\,
	combout => \inst|inst36|sub|82~0_combout\);

-- Location: LCCOMB_X17_Y4_N10
\inst|inst36|sub|82\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|inst36|sub|82~combout\ = \inst|inst36|sub|82~0_combout\ $ (((\inst|inst5~q\ & ((\inst|inst17~q\) # (\inst|inst36|sub|105~0_combout\))) # (!\inst|inst5~q\ & (\inst|inst17~q\ & \inst|inst36|sub|105~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001011111101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst5~q\,
	datab => \inst|inst17~q\,
	datac => \inst|inst36|sub|105~0_combout\,
	datad => \inst|inst36|sub|82~0_combout\,
	combout => \inst|inst36|sub|82~combout\);

-- Location: LCCOMB_X16_Y4_N0
\inst|inst38|sub|81~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|inst38|sub|81~0_combout\ = (\inst31|MSC0~0_combout\ & (\inst|inst16~q\ & ((\inst|inst4~q\) # (\inst31|MSC1~0_combout\)))) # (!\inst31|MSC0~0_combout\ & (\inst|inst4~q\ $ (((!\inst31|MSC1~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100010100101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst4~q\,
	datab => \inst|inst16~q\,
	datac => \inst31|MSC1~0_combout\,
	datad => \inst31|MSC0~0_combout\,
	combout => \inst|inst38|sub|81~0_combout\);

-- Location: LCCOMB_X16_Y4_N18
\inst|inst38|sub|81~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|inst38|sub|81~1_combout\ = (\inst31|MSC2~0_combout\ & (\inst|inst~0_combout\)) # (!\inst31|MSC2~0_combout\ & ((\inst|inst~0_combout\ & (\inst|inst32~combout\)) # (!\inst|inst~0_combout\ & ((\inst|inst38|sub|81~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst31|MSC2~0_combout\,
	datab => \inst|inst~0_combout\,
	datac => \inst|inst32~combout\,
	datad => \inst|inst38|sub|81~0_combout\,
	combout => \inst|inst38|sub|81~1_combout\);

-- Location: LCCOMB_X14_Y4_N10
\inst|inst38|sub|81~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|inst38|sub|81~2_combout\ = (\inst31|MSC2~0_combout\ & ((\inst|inst38|sub|81~1_combout\ & ((\inst|inst36|sub|82~combout\))) # (!\inst|inst38|sub|81~1_combout\ & (\inst|inst38|sub|65~combout\)))) # (!\inst31|MSC2~0_combout\ & 
-- (((\inst|inst38|sub|81~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst38|sub|65~combout\,
	datab => \inst31|MSC2~0_combout\,
	datac => \inst|inst36|sub|82~combout\,
	datad => \inst|inst38|sub|81~1_combout\,
	combout => \inst|inst38|sub|81~2_combout\);

-- Location: LCCOMB_X14_Y4_N4
\inst|inst4~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|inst4~0_combout\ = (\inst31|MSC2~0_combout\ & ((\inst|inst38|sub|81~2_combout\))) # (!\inst31|MSC2~0_combout\ & (\inst|inst4~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst31|MSC2~0_combout\,
	datac => \inst|inst4~q\,
	datad => \inst|inst38|sub|81~2_combout\,
	combout => \inst|inst4~0_combout\);

-- Location: FF_X14_Y4_N5
\inst|inst4\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst7~clkctrl_outclk\,
	d => \inst|inst4~0_combout\,
	asdata => \inst16|D_sig\(3),
	clrn => \RESET~inputclkctrl_outclk\,
	sload => \inst31|ALT_INV_MSA0~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst4~q\);

-- Location: LCCOMB_X14_Y4_N14
\inst|inst32\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|inst32~combout\ = (\inst|inst4~q\) # (\inst|inst16~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|inst4~q\,
	datad => \inst|inst16~q\,
	combout => \inst|inst32~combout\);

-- Location: LCCOMB_X17_Y4_N16
\inst|inst36|sub|107~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|inst36|sub|107~0_combout\ = (\inst|inst32~combout\ & ((\inst|inst36|sub|105~0_combout\ & ((\inst|inst17~q\) # (\inst|inst5~q\))) # (!\inst|inst36|sub|105~0_combout\ & (\inst|inst17~q\ & \inst|inst5~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst32~combout\,
	datab => \inst|inst36|sub|105~0_combout\,
	datac => \inst|inst17~q\,
	datad => \inst|inst5~q\,
	combout => \inst|inst36|sub|107~0_combout\);

-- Location: LCCOMB_X14_Y4_N26
\inst|inst~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|inst~1_combout\ = (\inst|inst~0_combout\ & ((\inst|inst36|sub|107~0_combout\) # ((\inst|inst16~q\ & \inst|inst4~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst36|sub|107~0_combout\,
	datab => \inst|inst16~q\,
	datac => \inst|inst4~q\,
	datad => \inst|inst~0_combout\,
	combout => \inst|inst~1_combout\);

-- Location: IOIBUF_X0_Y4_N8
\OE_L~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_OE_L,
	o => \OE_L~input_o\);

-- Location: IOIBUF_X18_Y14_N15
\CE_L~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_CE_L,
	o => \CE_L~input_o\);

-- Location: UNVM_X0_Y8_N40
\~QUARTUS_CREATED_UNVM~\ : fiftyfivenm_unvm
-- pragma translate_off
GENERIC MAP (
	addr_range1_end_addr => -1,
	addr_range1_offset => -1,
	addr_range2_offset => -1,
	is_compressed_image => "false",
	is_dual_boot => "false",
	is_eram_skip => "false",
	max_ufm_valid_addr => -1,
	max_valid_addr => -1,
	min_ufm_valid_addr => -1,
	min_valid_addr => -1,
	part_name => "quartus_created_unvm",
	reserve_block => "true")
-- pragma translate_on
PORT MAP (
	nosc_ena => \~QUARTUS_CREATED_GND~I_combout\,
	busy => \~QUARTUS_CREATED_UNVM~~busy\);

ww_IRLD <= \IRLD~output_o\;

ww_IR2 <= \IR2~output_o\;

ww_CLK <= \CLK~output_o\;

ww_Addr(14) <= \Addr[14]~output_o\;

ww_Addr(13) <= \Addr[13]~output_o\;

ww_Addr(12) <= \Addr[12]~output_o\;

ww_Addr(11) <= \Addr[11]~output_o\;

ww_Addr(10) <= \Addr[10]~output_o\;

ww_Addr(9) <= \Addr[9]~output_o\;

ww_Addr(8) <= \Addr[8]~output_o\;

ww_Addr(7) <= \Addr[7]~output_o\;

ww_Addr(6) <= \Addr[6]~output_o\;

ww_Addr(5) <= \Addr[5]~output_o\;

ww_Addr(4) <= \Addr[4]~output_o\;

ww_Addr(3) <= \Addr[3]~output_o\;

ww_Addr(2) <= \Addr[2]~output_o\;

ww_Addr(1) <= \Addr[1]~output_o\;

ww_Addr(0) <= \Addr[0]~output_o\;

ww_PCINC <= \PCINC~output_o\;

ww_PCLD <= \PCLD~output_o\;

ww_IR1 <= \IR1~output_o\;

ww_IR0 <= \IR0~output_o\;

ww_COUT <= \COUT~output_o\;

ww_MSA1 <= \MSA1~output_o\;

ww_MSC2 <= \MSC2~output_o\;

ww_MSA0 <= \MSA0~output_o\;

ww_MSC1 <= \MSC1~output_o\;

ww_MSB1 <= \MSB1~output_o\;

ww_MSC0 <= \MSC0~output_o\;

ww_MSB0 <= \MSB0~output_o\;

ww_A3 <= \A3~output_o\;

ww_A2 <= \A2~output_o\;

ww_A1 <= \A1~output_o\;

ww_A0 <= \A0~output_o\;

ww_B3 <= \B3~output_o\;

ww_B2 <= \B2~output_o\;

ww_B1 <= \B1~output_o\;

ww_B0 <= \B0~output_o\;

ww_OUT3 <= \OUT3~output_o\;

ww_OUT2 <= \OUT2~output_o\;

ww_OUT1 <= \OUT1~output_o\;

ww_OUT0 <= \OUT0~output_o\;
END structure;


