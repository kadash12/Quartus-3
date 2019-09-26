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

-- DATE "07/07/2019 07:28:27"

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

ENTITY 	Lab4_CPU IS
    PORT (
	A3 : OUT std_logic;
	RESET : IN std_logic;
	CLK : IN std_logic;
	MSA0 : IN std_logic;
	B3 : OUT std_logic;
	MSB0 : IN std_logic;
	MSB1 : IN std_logic;
	OUT3 : OUT std_logic;
	MSC2 : IN std_logic;
	CIN : IN std_logic;
	A0 : OUT std_logic;
	B0 : OUT std_logic;
	OUT0 : OUT std_logic;
	A1 : OUT std_logic;
	B1 : OUT std_logic;
	OUT1 : OUT std_logic;
	A2 : OUT std_logic;
	B2 : OUT std_logic;
	OUT2 : OUT std_logic;
	MSC0 : IN std_logic;
	MSC1 : IN std_logic;
	IN2 : IN std_logic;
	MSA1 : IN std_logic;
	IN1 : IN std_logic;
	IN0 : IN std_logic;
	IN3 : IN std_logic;
	COUT : OUT std_logic
	);
END Lab4_CPU;

-- Design Ports Information
-- A3	=>  Location: PIN_J6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B3	=>  Location: PIN_K2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- OUT3	=>  Location: PIN_G4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A0	=>  Location: PIN_J5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B0	=>  Location: PIN_H2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- OUT0	=>  Location: PIN_E3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A1	=>  Location: PIN_L5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B1	=>  Location: PIN_K5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- OUT1	=>  Location: PIN_E4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A2	=>  Location: PIN_L4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B2	=>  Location: PIN_J2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- OUT2	=>  Location: PIN_F4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- COUT	=>  Location: PIN_F12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CIN	=>  Location: PIN_D11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- MSC2	=>  Location: PIN_H13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- MSC0	=>  Location: PIN_K7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- MSC1	=>  Location: PIN_G13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- MSA0	=>  Location: PIN_M13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- MSA1	=>  Location: PIN_N12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- IN3	=>  Location: PIN_K12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CLK	=>  Location: PIN_G9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RESET	=>  Location: PIN_H8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- MSB0	=>  Location: PIN_J13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- MSB1	=>  Location: PIN_L13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- IN2	=>  Location: PIN_M9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- IN1	=>  Location: PIN_M10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- IN0	=>  Location: PIN_M11,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF Lab4_CPU IS
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
SIGNAL ww_RESET : std_logic;
SIGNAL ww_CLK : std_logic;
SIGNAL ww_MSA0 : std_logic;
SIGNAL ww_B3 : std_logic;
SIGNAL ww_MSB0 : std_logic;
SIGNAL ww_MSB1 : std_logic;
SIGNAL ww_OUT3 : std_logic;
SIGNAL ww_MSC2 : std_logic;
SIGNAL ww_CIN : std_logic;
SIGNAL ww_A0 : std_logic;
SIGNAL ww_B0 : std_logic;
SIGNAL ww_OUT0 : std_logic;
SIGNAL ww_A1 : std_logic;
SIGNAL ww_B1 : std_logic;
SIGNAL ww_OUT1 : std_logic;
SIGNAL ww_A2 : std_logic;
SIGNAL ww_B2 : std_logic;
SIGNAL ww_OUT2 : std_logic;
SIGNAL ww_MSC0 : std_logic;
SIGNAL ww_MSC1 : std_logic;
SIGNAL ww_IN2 : std_logic;
SIGNAL ww_MSA1 : std_logic;
SIGNAL ww_IN1 : std_logic;
SIGNAL ww_IN0 : std_logic;
SIGNAL ww_IN3 : std_logic;
SIGNAL ww_COUT : std_logic;
SIGNAL \CLK~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \~QUARTUS_CREATED_UNVM~~busy\ : std_logic;
SIGNAL \A3~output_o\ : std_logic;
SIGNAL \B3~output_o\ : std_logic;
SIGNAL \OUT3~output_o\ : std_logic;
SIGNAL \A0~output_o\ : std_logic;
SIGNAL \B0~output_o\ : std_logic;
SIGNAL \OUT0~output_o\ : std_logic;
SIGNAL \A1~output_o\ : std_logic;
SIGNAL \B1~output_o\ : std_logic;
SIGNAL \OUT1~output_o\ : std_logic;
SIGNAL \A2~output_o\ : std_logic;
SIGNAL \B2~output_o\ : std_logic;
SIGNAL \OUT2~output_o\ : std_logic;
SIGNAL \COUT~output_o\ : std_logic;
SIGNAL \CLK~input_o\ : std_logic;
SIGNAL \CLK~inputclkctrl_outclk\ : std_logic;
SIGNAL \IN3~input_o\ : std_logic;
SIGNAL \MSA0~input_o\ : std_logic;
SIGNAL \MSB0~input_o\ : std_logic;
SIGNAL \MSB1~input_o\ : std_logic;
SIGNAL \inst50|6~0_combout\ : std_logic;
SIGNAL \MSC2~input_o\ : std_logic;
SIGNAL \MSC1~input_o\ : std_logic;
SIGNAL \MSC0~input_o\ : std_logic;
SIGNAL \inst38|sub|81~0_combout\ : std_logic;
SIGNAL \inst~0_combout\ : std_logic;
SIGNAL \inst32~combout\ : std_logic;
SIGNAL \inst38|sub|81~1_combout\ : std_logic;
SIGNAL \inst38|sub|81~2_combout\ : std_logic;
SIGNAL \IN2~input_o\ : std_logic;
SIGNAL \inst48|6~0_combout\ : std_logic;
SIGNAL \inst39|sub|81~4_combout\ : std_logic;
SIGNAL \IN1~input_o\ : std_logic;
SIGNAL \inst47|6~0_combout\ : std_logic;
SIGNAL \inst42|sub|81~1_combout\ : std_logic;
SIGNAL \inst45|sub|81~6_combout\ : std_logic;
SIGNAL \CIN~input_o\ : std_logic;
SIGNAL \inst45|sub|81~3_combout\ : std_logic;
SIGNAL \inst45|sub|81~8_combout\ : std_logic;
SIGNAL \inst45|sub|66~combout\ : std_logic;
SIGNAL \inst45|sub|81~7_combout\ : std_logic;
SIGNAL \IN0~input_o\ : std_logic;
SIGNAL \inst40|6~0_combout\ : std_logic;
SIGNAL \inst40|6~1_combout\ : std_logic;
SIGNAL \RESET~input_o\ : std_logic;
SIGNAL \inst19~q\ : std_logic;
SIGNAL \MSA1~input_o\ : std_logic;
SIGNAL \inst49|6~0_combout\ : std_logic;
SIGNAL \inst49|6~1_combout\ : std_logic;
SIGNAL \inst7~q\ : std_logic;
SIGNAL \inst36|sub|104~0_combout\ : std_logic;
SIGNAL \inst42|sub|81~3_combout\ : std_logic;
SIGNAL \inst42|sub|81~4_combout\ : std_logic;
SIGNAL \inst42|sub|81~0_combout\ : std_logic;
SIGNAL \inst42|sub|81~2_combout\ : std_logic;
SIGNAL \inst47|6~1_combout\ : std_logic;
SIGNAL \inst18~q\ : std_logic;
SIGNAL \inst51|6~0_combout\ : std_logic;
SIGNAL \inst51|6~1_combout\ : std_logic;
SIGNAL \inst6~q\ : std_logic;
SIGNAL \inst39|sub|81~1_combout\ : std_logic;
SIGNAL \inst39|sub|81~0_combout\ : std_logic;
SIGNAL \inst39|sub|81~2_combout\ : std_logic;
SIGNAL \inst39|sub|81~3_combout\ : std_logic;
SIGNAL \inst39|sub|81~5_combout\ : std_logic;
SIGNAL \inst48|6~1_combout\ : std_logic;
SIGNAL \inst17~q\ : std_logic;
SIGNAL \inst52|6~0_combout\ : std_logic;
SIGNAL \inst52|6~1_combout\ : std_logic;
SIGNAL \inst5~q\ : std_logic;
SIGNAL \inst38|sub|65~combout\ : std_logic;
SIGNAL \inst36|sub|105~0_combout\ : std_logic;
SIGNAL \inst36|sub|106~0_combout\ : std_logic;
SIGNAL \inst36|sub|82~combout\ : std_logic;
SIGNAL \inst38|sub|81~3_combout\ : std_logic;
SIGNAL \inst50|6~1_combout\ : std_logic;
SIGNAL \inst16~q\ : std_logic;
SIGNAL \inst53|6~0_combout\ : std_logic;
SIGNAL \inst53|6~1_combout\ : std_logic;
SIGNAL \inst4~q\ : std_logic;
SIGNAL \inst~1_combout\ : std_logic;
SIGNAL \inst~2_combout\ : std_logic;

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

A3 <= ww_A3;
ww_RESET <= RESET;
ww_CLK <= CLK;
ww_MSA0 <= MSA0;
B3 <= ww_B3;
ww_MSB0 <= MSB0;
ww_MSB1 <= MSB1;
OUT3 <= ww_OUT3;
ww_MSC2 <= MSC2;
ww_CIN <= CIN;
A0 <= ww_A0;
B0 <= ww_B0;
OUT0 <= ww_OUT0;
A1 <= ww_A1;
B1 <= ww_B1;
OUT1 <= ww_OUT1;
A2 <= ww_A2;
B2 <= ww_B2;
OUT2 <= ww_OUT2;
ww_MSC0 <= MSC0;
ww_MSC1 <= MSC1;
ww_IN2 <= IN2;
ww_MSA1 <= MSA1;
ww_IN1 <= IN1;
ww_IN0 <= IN0;
ww_IN3 <= IN3;
COUT <= ww_COUT;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\CLK~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \CLK~input_o\);
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

-- Location: IOOBUF_X6_Y0_N2
\A3~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst4~q\,
	devoe => ww_devoe,
	o => \A3~output_o\);

-- Location: IOOBUF_X0_Y2_N9
\B3~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst16~q\,
	devoe => ww_devoe,
	o => \B3~output_o\);

-- Location: IOOBUF_X10_Y11_N23
\OUT3~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst38|sub|81~3_combout\,
	devoe => ww_devoe,
	o => \OUT3~output_o\);

-- Location: IOOBUF_X3_Y0_N16
\A0~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst7~q\,
	devoe => ww_devoe,
	o => \A0~output_o\);

-- Location: IOOBUF_X10_Y10_N16
\B0~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst19~q\,
	devoe => ww_devoe,
	o => \B0~output_o\);

-- Location: IOOBUF_X10_Y15_N16
\OUT0~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst45|sub|81~7_combout\,
	devoe => ww_devoe,
	o => \OUT0~output_o\);

-- Location: IOOBUF_X1_Y0_N16
\A1~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst6~q\,
	devoe => ww_devoe,
	o => \A1~output_o\);

-- Location: IOOBUF_X3_Y0_N23
\B1~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst18~q\,
	devoe => ww_devoe,
	o => \B1~output_o\);

-- Location: IOOBUF_X10_Y15_N23
\OUT1~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst42|sub|81~2_combout\,
	devoe => ww_devoe,
	o => \OUT1~output_o\);

-- Location: IOOBUF_X1_Y0_N9
\A2~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst5~q\,
	devoe => ww_devoe,
	o => \A2~output_o\);

-- Location: IOOBUF_X0_Y5_N9
\B2~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst17~q\,
	devoe => ww_devoe,
	o => \B2~output_o\);

-- Location: IOOBUF_X10_Y11_N16
\OUT2~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst39|sub|81~5_combout\,
	devoe => ww_devoe,
	o => \OUT2~output_o\);

-- Location: IOOBUF_X18_Y9_N23
\COUT~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst~2_combout\,
	devoe => ww_devoe,
	o => \COUT~output_o\);

-- Location: IOIBUF_X18_Y6_N22
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

-- Location: CLKCTRL_G9
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

-- Location: IOIBUF_X18_Y2_N22
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

-- Location: IOIBUF_X11_Y0_N8
\MSA0~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_MSA0,
	o => \MSA0~input_o\);

-- Location: IOIBUF_X18_Y3_N8
\MSB0~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_MSB0,
	o => \MSB0~input_o\);

-- Location: IOIBUF_X18_Y2_N8
\MSB1~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_MSB1,
	o => \MSB1~input_o\);

-- Location: LCCOMB_X11_Y5_N22
\inst50|6~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst50|6~0_combout\ = (\MSB0~input_o\ & (((\MSB1~input_o\)))) # (!\MSB0~input_o\ & ((\MSB1~input_o\ & ((\inst16~q\))) # (!\MSB1~input_o\ & (\IN3~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IN3~input_o\,
	datab => \MSB0~input_o\,
	datac => \MSB1~input_o\,
	datad => \inst16~q\,
	combout => \inst50|6~0_combout\);

-- Location: IOIBUF_X18_Y3_N1
\MSC2~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_MSC2,
	o => \MSC2~input_o\);

-- Location: IOIBUF_X18_Y4_N8
\MSC1~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_MSC1,
	o => \MSC1~input_o\);

-- Location: IOIBUF_X9_Y0_N1
\MSC0~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_MSC0,
	o => \MSC0~input_o\);

-- Location: LCCOMB_X11_Y5_N26
\inst38|sub|81~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst38|sub|81~0_combout\ = (\MSC2~input_o\ & ((\MSC1~input_o\) # (\MSC0~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MSC2~input_o\,
	datab => \MSC1~input_o\,
	datac => \MSC0~input_o\,
	combout => \inst38|sub|81~0_combout\);

-- Location: LCCOMB_X11_Y5_N2
\inst~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst~0_combout\ = (\MSC2~input_o\ & !\MSC1~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MSC2~input_o\,
	datac => \MSC1~input_o\,
	combout => \inst~0_combout\);

-- Location: LCCOMB_X11_Y5_N8
inst32 : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst32~combout\ = (\inst16~q\) # (\inst4~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst16~q\,
	datad => \inst4~q\,
	combout => \inst32~combout\);

-- Location: LCCOMB_X11_Y5_N0
\inst38|sub|81~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst38|sub|81~1_combout\ = (\MSC0~input_o\ & (\inst16~q\ & ((\inst4~q\) # (!\MSC1~input_o\)))) # (!\MSC0~input_o\ & (\MSC1~input_o\ $ (((\inst4~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000101100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MSC0~input_o\,
	datab => \MSC1~input_o\,
	datac => \inst16~q\,
	datad => \inst4~q\,
	combout => \inst38|sub|81~1_combout\);

-- Location: LCCOMB_X11_Y5_N6
\inst38|sub|81~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst38|sub|81~2_combout\ = (\inst38|sub|81~0_combout\ & (!\inst~0_combout\)) # (!\inst38|sub|81~0_combout\ & ((\inst~0_combout\ & (\inst32~combout\)) # (!\inst~0_combout\ & ((\inst38|sub|81~1_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111001101100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst38|sub|81~0_combout\,
	datab => \inst~0_combout\,
	datac => \inst32~combout\,
	datad => \inst38|sub|81~1_combout\,
	combout => \inst38|sub|81~2_combout\);

-- Location: IOIBUF_X6_Y0_N8
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

-- Location: LCCOMB_X11_Y6_N12
\inst48|6~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst48|6~0_combout\ = (\MSB0~input_o\ & ((\inst5~q\) # ((\MSB1~input_o\)))) # (!\MSB0~input_o\ & (((\IN2~input_o\ & !\MSB1~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MSB0~input_o\,
	datab => \inst5~q\,
	datac => \IN2~input_o\,
	datad => \MSB1~input_o\,
	combout => \inst48|6~0_combout\);

-- Location: LCCOMB_X11_Y6_N4
\inst39|sub|81~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst39|sub|81~4_combout\ = (\MSC0~input_o\ & (\inst17~q\ & ((\inst5~q\) # (!\MSC1~input_o\)))) # (!\MSC0~input_o\ & ((\MSC1~input_o\ $ (\inst5~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001100101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst17~q\,
	datab => \MSC1~input_o\,
	datac => \MSC0~input_o\,
	datad => \inst5~q\,
	combout => \inst39|sub|81~4_combout\);

-- Location: IOIBUF_X16_Y0_N8
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

-- Location: LCCOMB_X11_Y6_N24
\inst47|6~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst47|6~0_combout\ = (\MSB0~input_o\ & (((\MSB1~input_o\)))) # (!\MSB0~input_o\ & ((\MSB1~input_o\ & (\inst18~q\)) # (!\MSB1~input_o\ & ((\IN1~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst18~q\,
	datab => \IN1~input_o\,
	datac => \MSB0~input_o\,
	datad => \MSB1~input_o\,
	combout => \inst47|6~0_combout\);

-- Location: LCCOMB_X11_Y6_N30
\inst42|sub|81~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst42|sub|81~1_combout\ = (\MSC0~input_o\ & (\inst18~q\ & ((\inst6~q\) # (!\MSC1~input_o\)))) # (!\MSC0~input_o\ & ((\inst6~q\ $ (\MSC1~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001110101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst18~q\,
	datab => \inst6~q\,
	datac => \MSC0~input_o\,
	datad => \MSC1~input_o\,
	combout => \inst42|sub|81~1_combout\);

-- Location: LCCOMB_X12_Y6_N10
\inst45|sub|81~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst45|sub|81~6_combout\ = (\MSC0~input_o\ & (\inst19~q\ & ((\inst7~q\) # (!\MSC1~input_o\)))) # (!\MSC0~input_o\ & (\MSC1~input_o\ $ ((\inst7~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011011000010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MSC0~input_o\,
	datab => \MSC1~input_o\,
	datac => \inst7~q\,
	datad => \inst19~q\,
	combout => \inst45|sub|81~6_combout\);

-- Location: IOIBUF_X18_Y14_N15
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

-- Location: LCCOMB_X12_Y6_N28
\inst45|sub|81~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst45|sub|81~3_combout\ = (\MSC0~input_o\ & (\CIN~input_o\ $ (\inst7~q\ $ (\inst19~q\)))) # (!\MSC0~input_o\ & (((\inst7~q\) # (\inst19~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101011101111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MSC0~input_o\,
	datab => \CIN~input_o\,
	datac => \inst7~q\,
	datad => \inst19~q\,
	combout => \inst45|sub|81~3_combout\);

-- Location: LCCOMB_X12_Y6_N30
\inst45|sub|81~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst45|sub|81~8_combout\ = (\MSC2~input_o\ & ((\MSC1~input_o\) # (\inst45|sub|81~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \MSC2~input_o\,
	datac => \MSC1~input_o\,
	datad => \inst45|sub|81~3_combout\,
	combout => \inst45|sub|81~8_combout\);

-- Location: LCCOMB_X11_Y6_N20
\inst45|sub|66\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst45|sub|66~combout\ = (\MSC0~input_o\ & \inst6~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MSC0~input_o\,
	datac => \inst6~q\,
	combout => \inst45|sub|66~combout\);

-- Location: LCCOMB_X12_Y6_N4
\inst45|sub|81~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst45|sub|81~7_combout\ = (\inst~0_combout\ & (((\inst45|sub|81~8_combout\)))) # (!\inst~0_combout\ & ((\inst45|sub|81~8_combout\ & ((\inst45|sub|66~combout\))) # (!\inst45|sub|81~8_combout\ & (\inst45|sub|81~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst~0_combout\,
	datab => \inst45|sub|81~6_combout\,
	datac => \inst45|sub|81~8_combout\,
	datad => \inst45|sub|66~combout\,
	combout => \inst45|sub|81~7_combout\);

-- Location: IOIBUF_X14_Y0_N15
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

-- Location: LCCOMB_X11_Y5_N10
\inst40|6~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst40|6~0_combout\ = (\MSB0~input_o\ & ((\inst7~q\) # ((\MSB1~input_o\)))) # (!\MSB0~input_o\ & (((!\MSB1~input_o\ & \IN0~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7~q\,
	datab => \MSB0~input_o\,
	datac => \MSB1~input_o\,
	datad => \IN0~input_o\,
	combout => \inst40|6~0_combout\);

-- Location: LCCOMB_X12_Y6_N14
\inst40|6~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst40|6~1_combout\ = (\MSB1~input_o\ & ((\inst40|6~0_combout\ & (\inst45|sub|81~7_combout\)) # (!\inst40|6~0_combout\ & ((\inst19~q\))))) # (!\MSB1~input_o\ & (((\inst40|6~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MSB1~input_o\,
	datab => \inst45|sub|81~7_combout\,
	datac => \inst19~q\,
	datad => \inst40|6~0_combout\,
	combout => \inst40|6~1_combout\);

-- Location: IOIBUF_X18_Y4_N15
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

-- Location: FF_X12_Y6_N15
inst19 : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst40|6~1_combout\,
	clrn => \RESET~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst19~q\);

-- Location: IOIBUF_X9_Y0_N15
\MSA1~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_MSA1,
	o => \MSA1~input_o\);

-- Location: LCCOMB_X11_Y5_N16
\inst49|6~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst49|6~0_combout\ = (\MSA1~input_o\ & (((\MSA0~input_o\)))) # (!\MSA1~input_o\ & ((\MSA0~input_o\ & (\inst7~q\)) # (!\MSA0~input_o\ & ((\IN0~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7~q\,
	datab => \MSA1~input_o\,
	datac => \MSA0~input_o\,
	datad => \IN0~input_o\,
	combout => \inst49|6~0_combout\);

-- Location: LCCOMB_X12_Y6_N24
\inst49|6~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst49|6~1_combout\ = (\MSA1~input_o\ & ((\inst49|6~0_combout\ & ((\inst45|sub|81~7_combout\))) # (!\inst49|6~0_combout\ & (\inst19~q\)))) # (!\MSA1~input_o\ & (((\inst49|6~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst19~q\,
	datab => \MSA1~input_o\,
	datac => \inst45|sub|81~7_combout\,
	datad => \inst49|6~0_combout\,
	combout => \inst49|6~1_combout\);

-- Location: FF_X12_Y6_N25
inst7 : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst49|6~1_combout\,
	clrn => \RESET~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst7~q\);

-- Location: LCCOMB_X12_Y6_N16
\inst36|sub|104~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst36|sub|104~0_combout\ = (\CIN~input_o\ & ((\inst19~q\) # (\inst7~q\))) # (!\CIN~input_o\ & (\inst19~q\ & \inst7~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \CIN~input_o\,
	datac => \inst19~q\,
	datad => \inst7~q\,
	combout => \inst36|sub|104~0_combout\);

-- Location: LCCOMB_X12_Y6_N12
\inst42|sub|81~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst42|sub|81~3_combout\ = (\MSC0~input_o\ & (\inst6~q\ $ (\inst18~q\ $ (\inst36|sub|104~0_combout\)))) # (!\MSC0~input_o\ & ((\inst6~q\) # ((\inst18~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001111001101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6~q\,
	datab => \inst18~q\,
	datac => \MSC0~input_o\,
	datad => \inst36|sub|104~0_combout\,
	combout => \inst42|sub|81~3_combout\);

-- Location: LCCOMB_X12_Y6_N6
\inst42|sub|81~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst42|sub|81~4_combout\ = (\MSC1~input_o\ & (\MSC0~input_o\)) # (!\MSC1~input_o\ & ((\inst42|sub|81~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \MSC1~input_o\,
	datac => \MSC0~input_o\,
	datad => \inst42|sub|81~3_combout\,
	combout => \inst42|sub|81~4_combout\);

-- Location: LCCOMB_X12_Y6_N26
\inst42|sub|81~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst42|sub|81~0_combout\ = (\MSC1~input_o\ & ((\inst42|sub|81~4_combout\ & (\inst5~q\)) # (!\inst42|sub|81~4_combout\ & ((\inst7~q\))))) # (!\MSC1~input_o\ & (((\inst42|sub|81~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MSC1~input_o\,
	datab => \inst5~q\,
	datac => \inst7~q\,
	datad => \inst42|sub|81~4_combout\,
	combout => \inst42|sub|81~0_combout\);

-- Location: LCCOMB_X11_Y6_N16
\inst42|sub|81~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst42|sub|81~2_combout\ = (\MSC2~input_o\ & ((\inst42|sub|81~0_combout\))) # (!\MSC2~input_o\ & (\inst42|sub|81~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst42|sub|81~1_combout\,
	datac => \MSC2~input_o\,
	datad => \inst42|sub|81~0_combout\,
	combout => \inst42|sub|81~2_combout\);

-- Location: LCCOMB_X11_Y6_N6
\inst47|6~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst47|6~1_combout\ = (\MSB0~input_o\ & ((\inst47|6~0_combout\ & ((\inst42|sub|81~2_combout\))) # (!\inst47|6~0_combout\ & (\inst6~q\)))) # (!\MSB0~input_o\ & (\inst47|6~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110001100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MSB0~input_o\,
	datab => \inst47|6~0_combout\,
	datac => \inst6~q\,
	datad => \inst42|sub|81~2_combout\,
	combout => \inst47|6~1_combout\);

-- Location: FF_X11_Y6_N7
inst18 : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst47|6~1_combout\,
	clrn => \RESET~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst18~q\);

-- Location: LCCOMB_X11_Y6_N10
\inst51|6~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst51|6~0_combout\ = (\MSA1~input_o\ & ((\inst18~q\) # ((\MSA0~input_o\)))) # (!\MSA1~input_o\ & (((\IN1~input_o\ & !\MSA0~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst18~q\,
	datab => \MSA1~input_o\,
	datac => \IN1~input_o\,
	datad => \MSA0~input_o\,
	combout => \inst51|6~0_combout\);

-- Location: LCCOMB_X11_Y6_N8
\inst51|6~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst51|6~1_combout\ = (\inst51|6~0_combout\ & (((\inst42|sub|81~2_combout\)) # (!\MSA0~input_o\))) # (!\inst51|6~0_combout\ & (\MSA0~input_o\ & (\inst6~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst51|6~0_combout\,
	datab => \MSA0~input_o\,
	datac => \inst6~q\,
	datad => \inst42|sub|81~2_combout\,
	combout => \inst51|6~1_combout\);

-- Location: FF_X11_Y6_N9
inst6 : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst51|6~1_combout\,
	clrn => \RESET~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6~q\);

-- Location: LCCOMB_X11_Y6_N26
\inst39|sub|81~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst39|sub|81~1_combout\ = (\inst17~q\ & ((!\inst5~q\) # (!\MSC0~input_o\))) # (!\inst17~q\ & ((\inst5~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MSC0~input_o\,
	datac => \inst17~q\,
	datad => \inst5~q\,
	combout => \inst39|sub|81~1_combout\);

-- Location: LCCOMB_X12_Y6_N0
\inst39|sub|81~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst39|sub|81~0_combout\ = (\inst6~q\ & (!\inst18~q\ & !\inst36|sub|104~0_combout\)) # (!\inst6~q\ & ((!\inst36|sub|104~0_combout\) # (!\inst18~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010101011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6~q\,
	datac => \inst18~q\,
	datad => \inst36|sub|104~0_combout\,
	combout => \inst39|sub|81~0_combout\);

-- Location: LCCOMB_X12_Y6_N2
\inst39|sub|81~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst39|sub|81~2_combout\ = (\MSC1~input_o\ & (\MSC0~input_o\)) # (!\MSC1~input_o\ & (\inst39|sub|81~1_combout\ $ (((\MSC0~input_o\ & !\inst39|sub|81~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100010011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MSC0~input_o\,
	datab => \MSC1~input_o\,
	datac => \inst39|sub|81~1_combout\,
	datad => \inst39|sub|81~0_combout\,
	combout => \inst39|sub|81~2_combout\);

-- Location: LCCOMB_X12_Y6_N20
\inst39|sub|81~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst39|sub|81~3_combout\ = (\MSC1~input_o\ & ((\inst39|sub|81~2_combout\ & ((\inst4~q\))) # (!\inst39|sub|81~2_combout\ & (\inst6~q\)))) # (!\MSC1~input_o\ & (((\inst39|sub|81~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6~q\,
	datab => \MSC1~input_o\,
	datac => \inst4~q\,
	datad => \inst39|sub|81~2_combout\,
	combout => \inst39|sub|81~3_combout\);

-- Location: LCCOMB_X12_Y6_N22
\inst39|sub|81~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst39|sub|81~5_combout\ = (\MSC2~input_o\ & ((\inst39|sub|81~3_combout\))) # (!\MSC2~input_o\ & (\inst39|sub|81~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \MSC2~input_o\,
	datac => \inst39|sub|81~4_combout\,
	datad => \inst39|sub|81~3_combout\,
	combout => \inst39|sub|81~5_combout\);

-- Location: LCCOMB_X11_Y6_N22
\inst48|6~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst48|6~1_combout\ = (\inst48|6~0_combout\ & (((\inst39|sub|81~5_combout\)) # (!\MSB1~input_o\))) # (!\inst48|6~0_combout\ & (\MSB1~input_o\ & (\inst17~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst48|6~0_combout\,
	datab => \MSB1~input_o\,
	datac => \inst17~q\,
	datad => \inst39|sub|81~5_combout\,
	combout => \inst48|6~1_combout\);

-- Location: FF_X11_Y6_N23
inst17 : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst48|6~1_combout\,
	clrn => \RESET~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst17~q\);

-- Location: LCCOMB_X11_Y6_N14
\inst52|6~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst52|6~0_combout\ = (\MSA1~input_o\ & (((\MSA0~input_o\)))) # (!\MSA1~input_o\ & ((\MSA0~input_o\ & (\inst5~q\)) # (!\MSA0~input_o\ & ((\IN2~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5~q\,
	datab => \MSA1~input_o\,
	datac => \IN2~input_o\,
	datad => \MSA0~input_o\,
	combout => \inst52|6~0_combout\);

-- Location: LCCOMB_X11_Y6_N28
\inst52|6~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst52|6~1_combout\ = (\MSA1~input_o\ & ((\inst52|6~0_combout\ & ((\inst39|sub|81~5_combout\))) # (!\inst52|6~0_combout\ & (\inst17~q\)))) # (!\MSA1~input_o\ & (((\inst52|6~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst17~q\,
	datab => \MSA1~input_o\,
	datac => \inst52|6~0_combout\,
	datad => \inst39|sub|81~5_combout\,
	combout => \inst52|6~1_combout\);

-- Location: FF_X11_Y6_N29
inst5 : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst52|6~1_combout\,
	clrn => \RESET~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5~q\);

-- Location: LCCOMB_X11_Y5_N28
\inst38|sub|65\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst38|sub|65~combout\ = (!\MSC0~input_o\ & \inst5~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \MSC0~input_o\,
	datad => \inst5~q\,
	combout => \inst38|sub|65~combout\);

-- Location: LCCOMB_X12_Y6_N18
\inst36|sub|105~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst36|sub|105~0_combout\ = (\inst6~q\ & ((\inst18~q\) # (\inst36|sub|104~0_combout\))) # (!\inst6~q\ & (\inst18~q\ & \inst36|sub|104~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6~q\,
	datac => \inst18~q\,
	datad => \inst36|sub|104~0_combout\,
	combout => \inst36|sub|105~0_combout\);

-- Location: LCCOMB_X12_Y6_N8
\inst36|sub|106~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst36|sub|106~0_combout\ = (\inst17~q\ & ((\inst5~q\) # (\inst36|sub|105~0_combout\))) # (!\inst17~q\ & (\inst5~q\ & \inst36|sub|105~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst17~q\,
	datac => \inst5~q\,
	datad => \inst36|sub|105~0_combout\,
	combout => \inst36|sub|106~0_combout\);

-- Location: LCCOMB_X11_Y5_N20
\inst36|sub|82\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst36|sub|82~combout\ = \inst4~q\ $ (\inst16~q\ $ (\inst36|sub|106~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst4~q\,
	datac => \inst16~q\,
	datad => \inst36|sub|106~0_combout\,
	combout => \inst36|sub|82~combout\);

-- Location: LCCOMB_X11_Y5_N18
\inst38|sub|81~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst38|sub|81~3_combout\ = (\inst38|sub|81~2_combout\ & ((\inst38|sub|65~combout\) # ((!\inst38|sub|81~0_combout\)))) # (!\inst38|sub|81~2_combout\ & (((\inst38|sub|81~0_combout\ & \inst36|sub|82~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101010001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst38|sub|81~2_combout\,
	datab => \inst38|sub|65~combout\,
	datac => \inst38|sub|81~0_combout\,
	datad => \inst36|sub|82~combout\,
	combout => \inst38|sub|81~3_combout\);

-- Location: LCCOMB_X11_Y5_N30
\inst50|6~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst50|6~1_combout\ = (\inst50|6~0_combout\ & (((\inst38|sub|81~3_combout\) # (!\MSB0~input_o\)))) # (!\inst50|6~0_combout\ & (\inst4~q\ & (\MSB0~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst50|6~0_combout\,
	datab => \inst4~q\,
	datac => \MSB0~input_o\,
	datad => \inst38|sub|81~3_combout\,
	combout => \inst50|6~1_combout\);

-- Location: FF_X11_Y5_N31
inst16 : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst50|6~1_combout\,
	clrn => \RESET~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst16~q\);

-- Location: LCCOMB_X11_Y5_N12
\inst53|6~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst53|6~0_combout\ = (\MSA0~input_o\ & (((\MSA1~input_o\)))) # (!\MSA0~input_o\ & ((\MSA1~input_o\ & ((\inst16~q\))) # (!\MSA1~input_o\ & (\IN3~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IN3~input_o\,
	datab => \MSA0~input_o\,
	datac => \inst16~q\,
	datad => \MSA1~input_o\,
	combout => \inst53|6~0_combout\);

-- Location: LCCOMB_X11_Y5_N24
\inst53|6~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst53|6~1_combout\ = (\inst53|6~0_combout\ & (((\inst38|sub|81~3_combout\)) # (!\MSA0~input_o\))) # (!\inst53|6~0_combout\ & (\MSA0~input_o\ & (\inst4~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst53|6~0_combout\,
	datab => \MSA0~input_o\,
	datac => \inst4~q\,
	datad => \inst38|sub|81~3_combout\,
	combout => \inst53|6~1_combout\);

-- Location: FF_X11_Y5_N25
inst4 : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst53|6~1_combout\,
	clrn => \RESET~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4~q\);

-- Location: LCCOMB_X11_Y5_N4
\inst~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst~1_combout\ = (\MSC2~input_o\ & (!\MSC1~input_o\ & \MSC0~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MSC2~input_o\,
	datab => \MSC1~input_o\,
	datac => \MSC0~input_o\,
	combout => \inst~1_combout\);

-- Location: LCCOMB_X11_Y5_N14
\inst~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst~2_combout\ = (\inst~1_combout\ & ((\inst16~q\ & ((\inst4~q\) # (\inst36|sub|106~0_combout\))) # (!\inst16~q\ & (\inst4~q\ & \inst36|sub|106~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst16~q\,
	datab => \inst4~q\,
	datac => \inst~1_combout\,
	datad => \inst36|sub|106~0_combout\,
	combout => \inst~2_combout\);

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

ww_B3 <= \B3~output_o\;

ww_OUT3 <= \OUT3~output_o\;

ww_A0 <= \A0~output_o\;

ww_B0 <= \B0~output_o\;

ww_OUT0 <= \OUT0~output_o\;

ww_A1 <= \A1~output_o\;

ww_B1 <= \B1~output_o\;

ww_OUT1 <= \OUT1~output_o\;

ww_A2 <= \A2~output_o\;

ww_B2 <= \B2~output_o\;

ww_OUT2 <= \OUT2~output_o\;

ww_COUT <= \COUT~output_o\;
END structure;


