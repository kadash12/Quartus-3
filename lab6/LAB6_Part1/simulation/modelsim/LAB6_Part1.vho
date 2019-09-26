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

-- DATE "07/17/2019 17:45:27"

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

ENTITY 	LAB6_Part1 IS
    PORT (
	A3 : OUT std_logic;
	MSA1 : OUT std_logic;
	IR1 : OUT std_logic;
	CLK : IN std_logic;
	IRLD : OUT std_logic;
	IN1 : IN std_logic;
	IR0 : OUT std_logic;
	IN0 : IN std_logic;
	MSC2 : OUT std_logic;
	IN3 : IN std_logic;
	MSA0 : OUT std_logic;
	RESET : IN std_logic;
	MSC1 : OUT std_logic;
	IN2 : IN std_logic;
	MSB1 : OUT std_logic;
	MSC0 : OUT std_logic;
	MSB0 : OUT std_logic;
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
	OUT0 : OUT std_logic;
	COUT : OUT std_logic;
	CIN : IN std_logic
	);
END LAB6_Part1;

-- Design Ports Information
-- A3	=>  Location: PIN_E10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- MSA1	=>  Location: PIN_H9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- IR1	=>  Location: PIN_D13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- IRLD	=>  Location: PIN_H2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- IR0	=>  Location: PIN_H3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- MSC2	=>  Location: PIN_G13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- MSA0	=>  Location: PIN_B11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- MSC1	=>  Location: PIN_F10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- MSB1	=>  Location: PIN_A9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- MSC0	=>  Location: PIN_G9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- MSB0	=>  Location: PIN_D11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A2	=>  Location: PIN_F4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A1	=>  Location: PIN_E9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A0	=>  Location: PIN_E12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B3	=>  Location: PIN_F13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B2	=>  Location: PIN_C11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B1	=>  Location: PIN_C13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B0	=>  Location: PIN_F9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- OUT3	=>  Location: PIN_B13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- OUT2	=>  Location: PIN_F12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- OUT1	=>  Location: PIN_G10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- OUT0	=>  Location: PIN_E13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- COUT	=>  Location: PIN_D9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CIN	=>  Location: PIN_M12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CLK	=>  Location: PIN_H5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- IN3	=>  Location: PIN_C12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RESET	=>  Location: PIN_H4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- IN1	=>  Location: PIN_F8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- IN0	=>  Location: PIN_A12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- IN2	=>  Location: PIN_B12,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF LAB6_Part1 IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_A3 : std_logic;
SIGNAL ww_MSA1 : std_logic;
SIGNAL ww_IR1 : std_logic;
SIGNAL ww_CLK : std_logic;
SIGNAL ww_IRLD : std_logic;
SIGNAL ww_IN1 : std_logic;
SIGNAL ww_IR0 : std_logic;
SIGNAL ww_IN0 : std_logic;
SIGNAL ww_MSC2 : std_logic;
SIGNAL ww_IN3 : std_logic;
SIGNAL ww_MSA0 : std_logic;
SIGNAL ww_RESET : std_logic;
SIGNAL ww_MSC1 : std_logic;
SIGNAL ww_IN2 : std_logic;
SIGNAL ww_MSB1 : std_logic;
SIGNAL ww_MSC0 : std_logic;
SIGNAL ww_MSB0 : std_logic;
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
SIGNAL ww_COUT : std_logic;
SIGNAL ww_CIN : std_logic;
SIGNAL \RESET~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \CLK~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \CIN~input_o\ : std_logic;
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \~QUARTUS_CREATED_UNVM~~busy\ : std_logic;
SIGNAL \A3~output_o\ : std_logic;
SIGNAL \MSA1~output_o\ : std_logic;
SIGNAL \IR1~output_o\ : std_logic;
SIGNAL \IRLD~output_o\ : std_logic;
SIGNAL \IR0~output_o\ : std_logic;
SIGNAL \MSC2~output_o\ : std_logic;
SIGNAL \MSA0~output_o\ : std_logic;
SIGNAL \MSC1~output_o\ : std_logic;
SIGNAL \MSB1~output_o\ : std_logic;
SIGNAL \MSC0~output_o\ : std_logic;
SIGNAL \MSB0~output_o\ : std_logic;
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
SIGNAL \COUT~output_o\ : std_logic;
SIGNAL \CLK~input_o\ : std_logic;
SIGNAL \CLK~inputclkctrl_outclk\ : std_logic;
SIGNAL \IN1~input_o\ : std_logic;
SIGNAL \inst13|inst1~feeder_combout\ : std_logic;
SIGNAL \inst3~0_combout\ : std_logic;
SIGNAL \inst3~q\ : std_logic;
SIGNAL \inst13|inst1~q\ : std_logic;
SIGNAL \inst|MSA1~0_combout\ : std_logic;
SIGNAL \IN0~input_o\ : std_logic;
SIGNAL \inst12|inst1~feeder_combout\ : std_logic;
SIGNAL \inst12|inst1~q\ : std_logic;
SIGNAL \inst|MSC1~combout\ : std_logic;
SIGNAL \inst|MSB1~combout\ : std_logic;
SIGNAL \inst1|inst48|6~0_combout\ : std_logic;
SIGNAL \RESET~input_o\ : std_logic;
SIGNAL \RESET~inputclkctrl_outclk\ : std_logic;
SIGNAL \inst1|inst17~q\ : std_logic;
SIGNAL \inst1|inst36|sub|80~0_combout\ : std_logic;
SIGNAL \inst1|inst40|6~0_combout\ : std_logic;
SIGNAL \inst1|inst19~q\ : std_logic;
SIGNAL \inst1|inst~0_combout\ : std_logic;
SIGNAL \inst1|inst45|sub|81~2_combout\ : std_logic;
SIGNAL \inst1|inst7~0_combout\ : std_logic;
SIGNAL \inst|MSA0~combout\ : std_logic;
SIGNAL \inst1|inst7~q\ : std_logic;
SIGNAL \inst1|inst47|6~0_combout\ : std_logic;
SIGNAL \inst1|inst18~q\ : std_logic;
SIGNAL \inst1|inst36|sub|78~0_combout\ : std_logic;
SIGNAL \inst1|inst42|sub|81~2_combout\ : std_logic;
SIGNAL \inst1|inst6~0_combout\ : std_logic;
SIGNAL \inst1|inst6~q\ : std_logic;
SIGNAL \inst1|inst36|sub|105~0_combout\ : std_logic;
SIGNAL \inst1|inst39|sub|81~2_combout\ : std_logic;
SIGNAL \inst1|inst5~0_combout\ : std_logic;
SIGNAL \IN2~input_o\ : std_logic;
SIGNAL \inst1|inst5~q\ : std_logic;
SIGNAL \inst1|inst50|6~0_combout\ : std_logic;
SIGNAL \inst1|inst16~q\ : std_logic;
SIGNAL \inst1|inst38|sub|81~4_combout\ : std_logic;
SIGNAL \inst1|inst38|sub|81~5_combout\ : std_logic;
SIGNAL \inst1|inst4~0_combout\ : std_logic;
SIGNAL \IN3~input_o\ : std_logic;
SIGNAL \inst1|inst4~q\ : std_logic;
SIGNAL \inst1|inst38|sub|81~6_combout\ : std_logic;
SIGNAL \inst1|inst39|sub|81~3_combout\ : std_logic;
SIGNAL \inst1|inst42|sub|81~3_combout\ : std_logic;
SIGNAL \inst1|inst45|sub|81~3_combout\ : std_logic;
SIGNAL \inst1|inst36|sub|106~0_combout\ : std_logic;
SIGNAL \inst1|inst~1_combout\ : std_logic;
SIGNAL \inst|ALT_INV_MSB1~combout\ : std_logic;
SIGNAL \inst|ALT_INV_MSC1~combout\ : std_logic;
SIGNAL \inst|ALT_INV_MSA0~combout\ : std_logic;
SIGNAL \ALT_INV_inst3~q\ : std_logic;

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

A3 <= ww_A3;
MSA1 <= ww_MSA1;
IR1 <= ww_IR1;
ww_CLK <= CLK;
IRLD <= ww_IRLD;
ww_IN1 <= IN1;
IR0 <= ww_IR0;
ww_IN0 <= IN0;
MSC2 <= ww_MSC2;
ww_IN3 <= IN3;
MSA0 <= ww_MSA0;
ww_RESET <= RESET;
MSC1 <= ww_MSC1;
ww_IN2 <= IN2;
MSB1 <= ww_MSB1;
MSC0 <= ww_MSC0;
MSB0 <= ww_MSB0;
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
COUT <= ww_COUT;
ww_CIN <= CIN;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\RESET~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \RESET~input_o\);

\CLK~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \CLK~input_o\);
\inst|ALT_INV_MSB1~combout\ <= NOT \inst|MSB1~combout\;
\inst|ALT_INV_MSC1~combout\ <= NOT \inst|MSC1~combout\;
\inst|ALT_INV_MSA0~combout\ <= NOT \inst|MSA0~combout\;
\ALT_INV_inst3~q\ <= NOT \inst3~q\;
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

-- Location: IOOBUF_X18_Y13_N23
\A3~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|inst4~q\,
	devoe => ww_devoe,
	o => \A3~output_o\);

-- Location: IOOBUF_X18_Y4_N23
\MSA1~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|MSA1~0_combout\,
	devoe => ww_devoe,
	o => \MSA1~output_o\);

-- Location: IOOBUF_X18_Y10_N9
\IR1~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst13|inst1~q\,
	devoe => ww_devoe,
	o => \IR1~output_o\);

-- Location: IOOBUF_X10_Y10_N16
\IRLD~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_inst3~q\,
	devoe => ww_devoe,
	o => \IRLD~output_o\);

-- Location: IOOBUF_X10_Y10_N23
\IR0~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst12|inst1~q\,
	devoe => ww_devoe,
	o => \IR0~output_o\);

-- Location: IOOBUF_X18_Y4_N9
\MSC2~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|MSA1~0_combout\,
	devoe => ww_devoe,
	o => \MSC2~output_o\);

-- Location: IOOBUF_X18_Y11_N2
\MSA0~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|MSA0~combout\,
	devoe => ww_devoe,
	o => \MSA0~output_o\);

-- Location: IOOBUF_X18_Y10_N16
\MSC1~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|ALT_INV_MSC1~combout\,
	devoe => ww_devoe,
	o => \MSC1~output_o\);

-- Location: IOOBUF_X18_Y15_N2
\MSB1~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|MSB1~combout\,
	devoe => ww_devoe,
	o => \MSB1~output_o\);

-- Location: IOOBUF_X18_Y6_N23
\MSC0~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|MSA1~0_combout\,
	devoe => ww_devoe,
	o => \MSC0~output_o\);

-- Location: IOOBUF_X18_Y14_N16
\MSB0~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|ALT_INV_MSB1~combout\,
	devoe => ww_devoe,
	o => \MSB0~output_o\);

-- Location: IOOBUF_X10_Y11_N16
\A2~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|inst5~q\,
	devoe => ww_devoe,
	o => \A2~output_o\);

-- Location: IOOBUF_X18_Y11_N16
\A1~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|inst6~q\,
	devoe => ww_devoe,
	o => \A1~output_o\);

-- Location: IOOBUF_X18_Y9_N16
\A0~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|inst7~q\,
	devoe => ww_devoe,
	o => \A0~output_o\);

-- Location: IOOBUF_X18_Y8_N23
\B3~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|inst16~q\,
	devoe => ww_devoe,
	o => \B3~output_o\);

-- Location: IOOBUF_X18_Y12_N16
\B2~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|inst17~q\,
	devoe => ww_devoe,
	o => \B2~output_o\);

-- Location: IOOBUF_X18_Y10_N2
\B1~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|inst18~q\,
	devoe => ww_devoe,
	o => \B1~output_o\);

-- Location: IOOBUF_X18_Y10_N23
\B0~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|inst19~q\,
	devoe => ww_devoe,
	o => \B0~output_o\);

-- Location: IOOBUF_X18_Y12_N9
\OUT3~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|inst38|sub|81~6_combout\,
	devoe => ww_devoe,
	o => \OUT3~output_o\);

-- Location: IOOBUF_X18_Y9_N23
\OUT2~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|inst39|sub|81~3_combout\,
	devoe => ww_devoe,
	o => \OUT2~output_o\);

-- Location: IOOBUF_X18_Y6_N16
\OUT1~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|inst42|sub|81~3_combout\,
	devoe => ww_devoe,
	o => \OUT1~output_o\);

-- Location: IOOBUF_X18_Y8_N16
\OUT0~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|inst45|sub|81~3_combout\,
	devoe => ww_devoe,
	o => \OUT0~output_o\);

-- Location: IOOBUF_X18_Y13_N16
\COUT~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|inst~1_combout\,
	devoe => ww_devoe,
	o => \COUT~output_o\);

-- Location: IOIBUF_X0_Y4_N15
\CLK~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_CLK,
	o => \CLK~input_o\);

-- Location: CLKCTRL_G3
\CLK~inputclkctrl\ : fiftyfivenm_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \CLK~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \CLK~inputclkctrl_outclk\);

-- Location: IOIBUF_X18_Y11_N22
\IN1~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_IN1,
	o => \IN1~input_o\);

-- Location: LCCOMB_X14_Y10_N14
\inst13|inst1~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst13|inst1~feeder_combout\ = \IN1~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \IN1~input_o\,
	combout => \inst13|inst1~feeder_combout\);

-- Location: LCCOMB_X14_Y10_N12
\inst3~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3~0_combout\ = !\inst3~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst3~q\,
	combout => \inst3~0_combout\);

-- Location: FF_X14_Y10_N13
inst3 : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3~q\);

-- Location: FF_X14_Y10_N15
\inst13|inst1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst13|inst1~feeder_combout\,
	ena => \ALT_INV_inst3~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst13|inst1~q\);

-- Location: LCCOMB_X16_Y10_N4
\inst|MSA1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|MSA1~0_combout\ = (\inst13|inst1~q\ & \inst3~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst13|inst1~q\,
	datad => \inst3~q\,
	combout => \inst|MSA1~0_combout\);

-- Location: IOIBUF_X18_Y12_N1
\IN0~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_IN0,
	o => \IN0~input_o\);

-- Location: LCCOMB_X14_Y10_N16
\inst12|inst1~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst12|inst1~feeder_combout\ = \IN0~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \IN0~input_o\,
	combout => \inst12|inst1~feeder_combout\);

-- Location: FF_X14_Y10_N17
\inst12|inst1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst12|inst1~feeder_combout\,
	ena => \ALT_INV_inst3~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst12|inst1~q\);

-- Location: LCCOMB_X14_Y10_N30
\inst|MSC1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|MSC1~combout\ = ((!\inst12|inst1~q\) # (!\inst13|inst1~q\)) # (!\inst3~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3~q\,
	datac => \inst13|inst1~q\,
	datad => \inst12|inst1~q\,
	combout => \inst|MSC1~combout\);

-- Location: LCCOMB_X16_Y10_N22
\inst|MSB1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|MSB1~combout\ = (\inst12|inst1~q\) # ((\inst13|inst1~q\) # (!\inst3~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst12|inst1~q\,
	datac => \inst13|inst1~q\,
	datad => \inst3~q\,
	combout => \inst|MSB1~combout\);

-- Location: LCCOMB_X16_Y10_N2
\inst1|inst48|6~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst1|inst48|6~0_combout\ = (\inst|MSA1~0_combout\ & ((\inst|MSB1~combout\ & ((\inst1|inst39|sub|81~2_combout\))) # (!\inst|MSB1~combout\ & (\inst1|inst5~q\)))) # (!\inst|MSA1~0_combout\ & (\inst1|inst5~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101000101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|inst5~q\,
	datab => \inst|MSA1~0_combout\,
	datac => \inst|MSB1~combout\,
	datad => \inst1|inst39|sub|81~2_combout\,
	combout => \inst1|inst48|6~0_combout\);

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

-- Location: CLKCTRL_G4
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

-- Location: FF_X16_Y10_N3
\inst1|inst17\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst1|inst48|6~0_combout\,
	clrn => \RESET~inputclkctrl_outclk\,
	ena => \inst|ALT_INV_MSB1~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|inst17~q\);

-- Location: LCCOMB_X16_Y10_N26
\inst1|inst36|sub|80~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst1|inst36|sub|80~0_combout\ = \inst1|inst5~q\ $ (\inst1|inst17~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|inst5~q\,
	datad => \inst1|inst17~q\,
	combout => \inst1|inst36|sub|80~0_combout\);

-- Location: LCCOMB_X16_Y10_N14
\inst1|inst40|6~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst1|inst40|6~0_combout\ = (\inst|MSA1~0_combout\ & ((\inst|MSB1~combout\ & ((\inst1|inst45|sub|81~2_combout\))) # (!\inst|MSB1~combout\ & (\inst1|inst7~q\)))) # (!\inst|MSA1~0_combout\ & (\inst1|inst7~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101000101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|inst7~q\,
	datab => \inst|MSA1~0_combout\,
	datac => \inst|MSB1~combout\,
	datad => \inst1|inst45|sub|81~2_combout\,
	combout => \inst1|inst40|6~0_combout\);

-- Location: FF_X16_Y10_N15
\inst1|inst19\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst1|inst40|6~0_combout\,
	clrn => \RESET~inputclkctrl_outclk\,
	ena => \inst|ALT_INV_MSB1~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|inst19~q\);

-- Location: LCCOMB_X14_Y10_N28
\inst1|inst~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst1|inst~0_combout\ = (\inst3~q\ & (\inst13|inst1~q\ & !\inst12|inst1~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3~q\,
	datac => \inst13|inst1~q\,
	datad => \inst12|inst1~q\,
	combout => \inst1|inst~0_combout\);

-- Location: LCCOMB_X15_Y10_N30
\inst1|inst45|sub|81~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst1|inst45|sub|81~2_combout\ = (\inst1|inst~0_combout\ & ((\inst1|inst19~q\ $ (\inst1|inst7~q\)))) # (!\inst1|inst~0_combout\ & (\inst1|inst6~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|inst6~q\,
	datab => \inst1|inst19~q\,
	datac => \inst1|inst7~q\,
	datad => \inst1|inst~0_combout\,
	combout => \inst1|inst45|sub|81~2_combout\);

-- Location: LCCOMB_X15_Y10_N14
\inst1|inst7~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst1|inst7~0_combout\ = (\inst|MSA1~0_combout\ & (\inst1|inst45|sub|81~2_combout\)) # (!\inst|MSA1~0_combout\ & ((\inst1|inst7~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|inst45|sub|81~2_combout\,
	datac => \inst1|inst7~q\,
	datad => \inst|MSA1~0_combout\,
	combout => \inst1|inst7~0_combout\);

-- Location: LCCOMB_X15_Y10_N20
\inst|MSA0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|MSA0~combout\ = (\inst13|inst1~q\) # ((!\inst3~q\) # (!\inst12|inst1~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|inst1~q\,
	datac => \inst12|inst1~q\,
	datad => \inst3~q\,
	combout => \inst|MSA0~combout\);

-- Location: FF_X15_Y10_N15
\inst1|inst7\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst1|inst7~0_combout\,
	asdata => \IN0~input_o\,
	clrn => \RESET~inputclkctrl_outclk\,
	sload => \inst|ALT_INV_MSA0~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|inst7~q\);

-- Location: LCCOMB_X16_Y10_N8
\inst1|inst47|6~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst1|inst47|6~0_combout\ = (\inst|MSA1~0_combout\ & ((\inst|MSB1~combout\ & ((\inst1|inst42|sub|81~2_combout\))) # (!\inst|MSB1~combout\ & (\inst1|inst6~q\)))) # (!\inst|MSA1~0_combout\ & (\inst1|inst6~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101000101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|inst6~q\,
	datab => \inst|MSA1~0_combout\,
	datac => \inst|MSB1~combout\,
	datad => \inst1|inst42|sub|81~2_combout\,
	combout => \inst1|inst47|6~0_combout\);

-- Location: FF_X16_Y10_N9
\inst1|inst18\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst1|inst47|6~0_combout\,
	clrn => \RESET~inputclkctrl_outclk\,
	ena => \inst|ALT_INV_MSB1~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|inst18~q\);

-- Location: LCCOMB_X15_Y10_N22
\inst1|inst36|sub|78~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst1|inst36|sub|78~0_combout\ = \inst1|inst18~q\ $ (\inst1|inst6~q\ $ (((\inst1|inst7~q\ & \inst1|inst19~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000011101111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|inst7~q\,
	datab => \inst1|inst19~q\,
	datac => \inst1|inst18~q\,
	datad => \inst1|inst6~q\,
	combout => \inst1|inst36|sub|78~0_combout\);

-- Location: LCCOMB_X15_Y10_N28
\inst1|inst42|sub|81~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst1|inst42|sub|81~2_combout\ = (\inst|MSC1~combout\ & ((\inst1|inst36|sub|78~0_combout\))) # (!\inst|MSC1~combout\ & (\inst1|inst5~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|inst5~q\,
	datac => \inst1|inst36|sub|78~0_combout\,
	datad => \inst|MSC1~combout\,
	combout => \inst1|inst42|sub|81~2_combout\);

-- Location: LCCOMB_X15_Y10_N16
\inst1|inst6~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst1|inst6~0_combout\ = (\inst|MSA1~0_combout\ & ((\inst1|inst42|sub|81~2_combout\))) # (!\inst|MSA1~0_combout\ & (\inst1|inst6~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|MSA1~0_combout\,
	datac => \inst1|inst6~q\,
	datad => \inst1|inst42|sub|81~2_combout\,
	combout => \inst1|inst6~0_combout\);

-- Location: FF_X15_Y10_N17
\inst1|inst6\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst1|inst6~0_combout\,
	asdata => \IN1~input_o\,
	clrn => \RESET~inputclkctrl_outclk\,
	sload => \inst|ALT_INV_MSA0~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|inst6~q\);

-- Location: LCCOMB_X16_Y10_N20
\inst1|inst36|sub|105~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst1|inst36|sub|105~0_combout\ = (\inst1|inst6~q\ & ((\inst1|inst18~q\) # ((\inst1|inst19~q\ & \inst1|inst7~q\)))) # (!\inst1|inst6~q\ & (\inst1|inst19~q\ & (\inst1|inst18~q\ & \inst1|inst7~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|inst6~q\,
	datab => \inst1|inst19~q\,
	datac => \inst1|inst18~q\,
	datad => \inst1|inst7~q\,
	combout => \inst1|inst36|sub|105~0_combout\);

-- Location: LCCOMB_X16_Y10_N16
\inst1|inst39|sub|81~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst1|inst39|sub|81~2_combout\ = (\inst|MSC1~combout\ & (\inst1|inst36|sub|80~0_combout\ $ (((\inst1|inst36|sub|105~0_combout\))))) # (!\inst|MSC1~combout\ & (((\inst1|inst4~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|inst36|sub|80~0_combout\,
	datab => \inst1|inst4~q\,
	datac => \inst1|inst36|sub|105~0_combout\,
	datad => \inst|MSC1~combout\,
	combout => \inst1|inst39|sub|81~2_combout\);

-- Location: LCCOMB_X16_Y10_N10
\inst1|inst5~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst1|inst5~0_combout\ = (\inst|MSA1~0_combout\ & ((\inst1|inst39|sub|81~2_combout\))) # (!\inst|MSA1~0_combout\ & (\inst1|inst5~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|MSA1~0_combout\,
	datac => \inst1|inst5~q\,
	datad => \inst1|inst39|sub|81~2_combout\,
	combout => \inst1|inst5~0_combout\);

-- Location: IOIBUF_X18_Y11_N8
\IN2~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_IN2,
	o => \IN2~input_o\);

-- Location: FF_X16_Y10_N11
\inst1|inst5\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst1|inst5~0_combout\,
	asdata => \IN2~input_o\,
	clrn => \RESET~inputclkctrl_outclk\,
	sload => \inst|ALT_INV_MSA0~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|inst5~q\);

-- Location: LCCOMB_X16_Y10_N12
\inst1|inst50|6~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst1|inst50|6~0_combout\ = (\inst|MSA1~0_combout\ & ((\inst|MSB1~combout\ & ((\inst1|inst38|sub|81~5_combout\))) # (!\inst|MSB1~combout\ & (\inst1|inst4~q\)))) # (!\inst|MSA1~0_combout\ & (\inst1|inst4~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101000101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|inst4~q\,
	datab => \inst|MSA1~0_combout\,
	datac => \inst|MSB1~combout\,
	datad => \inst1|inst38|sub|81~5_combout\,
	combout => \inst1|inst50|6~0_combout\);

-- Location: FF_X16_Y10_N13
\inst1|inst16\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst1|inst50|6~0_combout\,
	clrn => \RESET~inputclkctrl_outclk\,
	ena => \inst|ALT_INV_MSB1~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|inst16~q\);

-- Location: LCCOMB_X16_Y10_N18
\inst1|inst38|sub|81~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst1|inst38|sub|81~4_combout\ = \inst1|inst16~q\ $ (((\inst1|inst5~q\ & (!\inst1|inst17~q\ & !\inst1|inst36|sub|105~0_combout\)) # (!\inst1|inst5~q\ & ((!\inst1|inst36|sub|105~0_combout\) # (!\inst1|inst17~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000110000111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|inst5~q\,
	datab => \inst1|inst17~q\,
	datac => \inst1|inst16~q\,
	datad => \inst1|inst36|sub|105~0_combout\,
	combout => \inst1|inst38|sub|81~4_combout\);

-- Location: LCCOMB_X16_Y10_N24
\inst1|inst38|sub|81~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst1|inst38|sub|81~5_combout\ = (\inst|MSA1~0_combout\ & (\inst|MSC1~combout\ & (\inst1|inst4~q\ $ (!\inst1|inst38|sub|81~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|inst4~q\,
	datab => \inst|MSA1~0_combout\,
	datac => \inst|MSC1~combout\,
	datad => \inst1|inst38|sub|81~4_combout\,
	combout => \inst1|inst38|sub|81~5_combout\);

-- Location: LCCOMB_X16_Y10_N0
\inst1|inst4~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst1|inst4~0_combout\ = (\inst|MSA1~0_combout\ & ((\inst1|inst38|sub|81~5_combout\))) # (!\inst|MSA1~0_combout\ & (\inst1|inst4~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|MSA1~0_combout\,
	datac => \inst1|inst4~q\,
	datad => \inst1|inst38|sub|81~5_combout\,
	combout => \inst1|inst4~0_combout\);

-- Location: IOIBUF_X18_Y12_N22
\IN3~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_IN3,
	o => \IN3~input_o\);

-- Location: FF_X16_Y10_N1
\inst1|inst4\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst1|inst4~0_combout\,
	asdata => \IN3~input_o\,
	clrn => \RESET~inputclkctrl_outclk\,
	sload => \inst|ALT_INV_MSA0~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|inst4~q\);

-- Location: LCCOMB_X16_Y10_N28
\inst1|inst38|sub|81~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst1|inst38|sub|81~6_combout\ = (\inst|MSA1~0_combout\ & (\inst|MSC1~combout\ & (\inst1|inst38|sub|81~4_combout\ $ (!\inst1|inst4~q\)))) # (!\inst|MSA1~0_combout\ & (((\inst1|inst4~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|MSC1~combout\,
	datab => \inst|MSA1~0_combout\,
	datac => \inst1|inst38|sub|81~4_combout\,
	datad => \inst1|inst4~q\,
	combout => \inst1|inst38|sub|81~6_combout\);

-- Location: LCCOMB_X16_Y10_N30
\inst1|inst39|sub|81~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst1|inst39|sub|81~3_combout\ = (\inst3~q\ & ((\inst13|inst1~q\ & ((\inst1|inst39|sub|81~2_combout\))) # (!\inst13|inst1~q\ & (\inst1|inst5~q\)))) # (!\inst3~q\ & (\inst1|inst5~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101000101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|inst5~q\,
	datab => \inst3~q\,
	datac => \inst13|inst1~q\,
	datad => \inst1|inst39|sub|81~2_combout\,
	combout => \inst1|inst39|sub|81~3_combout\);

-- Location: LCCOMB_X15_Y10_N10
\inst1|inst42|sub|81~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst1|inst42|sub|81~3_combout\ = (\inst13|inst1~q\ & ((\inst3~q\ & ((\inst1|inst42|sub|81~2_combout\))) # (!\inst3~q\ & (\inst1|inst6~q\)))) # (!\inst13|inst1~q\ & (\inst1|inst6~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|inst6~q\,
	datab => \inst1|inst42|sub|81~2_combout\,
	datac => \inst13|inst1~q\,
	datad => \inst3~q\,
	combout => \inst1|inst42|sub|81~3_combout\);

-- Location: LCCOMB_X15_Y10_N12
\inst1|inst45|sub|81~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst1|inst45|sub|81~3_combout\ = (\inst13|inst1~q\ & ((\inst3~q\ & (\inst1|inst45|sub|81~2_combout\)) # (!\inst3~q\ & ((\inst1|inst7~q\))))) # (!\inst13|inst1~q\ & (((\inst1|inst7~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|inst45|sub|81~2_combout\,
	datab => \inst1|inst7~q\,
	datac => \inst13|inst1~q\,
	datad => \inst3~q\,
	combout => \inst1|inst45|sub|81~3_combout\);

-- Location: LCCOMB_X16_Y10_N6
\inst1|inst36|sub|106~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst1|inst36|sub|106~0_combout\ = (\inst1|inst5~q\ & ((\inst1|inst36|sub|105~0_combout\) # (\inst1|inst17~q\))) # (!\inst1|inst5~q\ & (\inst1|inst36|sub|105~0_combout\ & \inst1|inst17~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|inst5~q\,
	datac => \inst1|inst36|sub|105~0_combout\,
	datad => \inst1|inst17~q\,
	combout => \inst1|inst36|sub|106~0_combout\);

-- Location: LCCOMB_X15_Y10_N24
\inst1|inst~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst1|inst~1_combout\ = (\inst1|inst~0_combout\ & ((\inst1|inst36|sub|106~0_combout\ & ((\inst1|inst4~q\) # (\inst1|inst16~q\))) # (!\inst1|inst36|sub|106~0_combout\ & (\inst1|inst4~q\ & \inst1|inst16~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|inst36|sub|106~0_combout\,
	datab => \inst1|inst4~q\,
	datac => \inst1|inst16~q\,
	datad => \inst1|inst~0_combout\,
	combout => \inst1|inst~1_combout\);

-- Location: IOIBUF_X11_Y0_N1
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

ww_A3 <= \A3~output_o\;

ww_MSA1 <= \MSA1~output_o\;

ww_IR1 <= \IR1~output_o\;

ww_IRLD <= \IRLD~output_o\;

ww_IR0 <= \IR0~output_o\;

ww_MSC2 <= \MSC2~output_o\;

ww_MSA0 <= \MSA0~output_o\;

ww_MSC1 <= \MSC1~output_o\;

ww_MSB1 <= \MSB1~output_o\;

ww_MSC0 <= \MSC0~output_o\;

ww_MSB0 <= \MSB0~output_o\;

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

ww_COUT <= \COUT~output_o\;
END structure;


