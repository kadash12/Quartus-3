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

-- DATE "07/12/2019 11:32:28"

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

ENTITY 	lab4quiz IS
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
	MSC0 : IN std_logic;
	MSC1 : IN std_logic;
	IN0 : IN std_logic;
	MSA1 : IN std_logic;
	A1 : OUT std_logic;
	B1 : OUT std_logic;
	OUT1 : OUT std_logic;
	IN1 : IN std_logic;
	A2 : OUT std_logic;
	B2 : OUT std_logic;
	OUT2 : OUT std_logic;
	IN2 : IN std_logic;
	IN3 : IN std_logic;
	COUT : OUT std_logic
	);
END lab4quiz;

-- Design Ports Information
-- A3	=>  Location: PIN_G13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B3	=>  Location: PIN_M8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- OUT3	=>  Location: PIN_M13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A0	=>  Location: PIN_K6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B0	=>  Location: PIN_A3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- OUT0	=>  Location: PIN_J6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A1	=>  Location: PIN_E6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B1	=>  Location: PIN_K7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- OUT1	=>  Location: PIN_N10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A2	=>  Location: PIN_J7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B2	=>  Location: PIN_G12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- OUT2	=>  Location: PIN_L11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- COUT	=>  Location: PIN_M9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- MSC0	=>  Location: PIN_D6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- MSC1	=>  Location: PIN_M11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- MSC2	=>  Location: PIN_N9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CIN	=>  Location: PIN_N6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- MSA0	=>  Location: PIN_J8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- MSA1	=>  Location: PIN_A4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- IN3	=>  Location: PIN_N12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CLK	=>  Location: PIN_H5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RESET	=>  Location: PIN_H4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- MSB0	=>  Location: PIN_H9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- MSB1	=>  Location: PIN_M12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- IN2	=>  Location: PIN_H8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- IN1	=>  Location: PIN_N11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- IN0	=>  Location: PIN_L10,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF lab4quiz IS
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
SIGNAL ww_MSC0 : std_logic;
SIGNAL ww_MSC1 : std_logic;
SIGNAL ww_IN0 : std_logic;
SIGNAL ww_MSA1 : std_logic;
SIGNAL ww_A1 : std_logic;
SIGNAL ww_B1 : std_logic;
SIGNAL ww_OUT1 : std_logic;
SIGNAL ww_IN1 : std_logic;
SIGNAL ww_A2 : std_logic;
SIGNAL ww_B2 : std_logic;
SIGNAL ww_OUT2 : std_logic;
SIGNAL ww_IN2 : std_logic;
SIGNAL ww_IN3 : std_logic;
SIGNAL ww_COUT : std_logic;
SIGNAL \RESET~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
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
SIGNAL \MSA0~input_o\ : std_logic;
SIGNAL \MSA1~input_o\ : std_logic;
SIGNAL \MSB0~input_o\ : std_logic;
SIGNAL \MSB1~input_o\ : std_logic;
SIGNAL \IN3~input_o\ : std_logic;
SIGNAL \inst50|6~0_combout\ : std_logic;
SIGNAL \MSC2~input_o\ : std_logic;
SIGNAL \MSC0~input_o\ : std_logic;
SIGNAL \MSC1~input_o\ : std_logic;
SIGNAL \inst38|sub|81~4_combout\ : std_logic;
SIGNAL \inst38|sub|81~2_combout\ : std_logic;
SIGNAL \IN2~input_o\ : std_logic;
SIGNAL \inst52|6~0_combout\ : std_logic;
SIGNAL \inst39|sub|81~2_combout\ : std_logic;
SIGNAL \IN1~input_o\ : std_logic;
SIGNAL \inst51|6~0_combout\ : std_logic;
SIGNAL \inst42|sub|81~3_combout\ : std_logic;
SIGNAL \IN0~input_o\ : std_logic;
SIGNAL \inst49|6~0_combout\ : std_logic;
SIGNAL \inst45|sub|81~4_combout\ : std_logic;
SIGNAL \CIN~input_o\ : std_logic;
SIGNAL \inst36|sub|76~0_combout\ : std_logic;
SIGNAL \inst45|sub|81~0_combout\ : std_logic;
SIGNAL \inst45|sub|66~0_combout\ : std_logic;
SIGNAL \inst45|sub|81~1_combout\ : std_logic;
SIGNAL \inst35~combout\ : std_logic;
SIGNAL \inst45|sub|81~2_combout\ : std_logic;
SIGNAL \inst45|sub|81~3_combout\ : std_logic;
SIGNAL \inst45|sub|81~5_combout\ : std_logic;
SIGNAL \inst49|6~1_combout\ : std_logic;
SIGNAL \RESET~input_o\ : std_logic;
SIGNAL \RESET~inputclkctrl_outclk\ : std_logic;
SIGNAL \inst7~q\ : std_logic;
SIGNAL \inst40|6~0_combout\ : std_logic;
SIGNAL \inst40|6~1_combout\ : std_logic;
SIGNAL \inst19~q\ : std_logic;
SIGNAL \inst45|sub|78~0_combout\ : std_logic;
SIGNAL \inst36|sub|104~0_combout\ : std_logic;
SIGNAL \inst42|sub|81~0_combout\ : std_logic;
SIGNAL \inst42|sub|81~1_combout\ : std_logic;
SIGNAL \inst42|sub|81~2_combout\ : std_logic;
SIGNAL \inst42|sub|81~4_combout\ : std_logic;
SIGNAL \inst51|6~1_combout\ : std_logic;
SIGNAL \inst6~q\ : std_logic;
SIGNAL \inst47|6~0_combout\ : std_logic;
SIGNAL \inst47|6~1_combout\ : std_logic;
SIGNAL \inst18~q\ : std_logic;
SIGNAL \inst42|sub|78~0_combout\ : std_logic;
SIGNAL \inst33~combout\ : std_logic;
SIGNAL \inst39|sub|81~0_combout\ : std_logic;
SIGNAL \inst36|sub|80~0_combout\ : std_logic;
SIGNAL \inst36|sub|80~combout\ : std_logic;
SIGNAL \inst39|sub|81~1_combout\ : std_logic;
SIGNAL \inst39|sub|81~3_combout\ : std_logic;
SIGNAL \inst52|6~1_combout\ : std_logic;
SIGNAL \inst5~q\ : std_logic;
SIGNAL \inst48|6~0_combout\ : std_logic;
SIGNAL \inst48|6~1_combout\ : std_logic;
SIGNAL \inst17~q\ : std_logic;
SIGNAL \inst38|sub|77~0_combout\ : std_logic;
SIGNAL \inst38|sub|81~1_combout\ : std_logic;
SIGNAL \inst38|sub|81~0_combout\ : std_logic;
SIGNAL \inst38|sub|81~3_combout\ : std_logic;
SIGNAL \inst36|sub|82~0_combout\ : std_logic;
SIGNAL \inst36|sub|106~0_combout\ : std_logic;
SIGNAL \inst36|sub|106~1_combout\ : std_logic;
SIGNAL \inst38|sub|81~5_combout\ : std_logic;
SIGNAL \inst50|6~1_combout\ : std_logic;
SIGNAL \inst16~q\ : std_logic;
SIGNAL \inst53|6~0_combout\ : std_logic;
SIGNAL \inst53|6~1_combout\ : std_logic;
SIGNAL \inst4~q\ : std_logic;
SIGNAL \inst~0_combout\ : std_logic;

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
ww_MSC0 <= MSC0;
ww_MSC1 <= MSC1;
ww_IN0 <= IN0;
ww_MSA1 <= MSA1;
A1 <= ww_A1;
B1 <= ww_B1;
OUT1 <= ww_OUT1;
ww_IN1 <= IN1;
A2 <= ww_A2;
B2 <= ww_B2;
OUT2 <= ww_OUT2;
ww_IN2 <= IN2;
ww_IN3 <= IN3;
COUT <= ww_COUT;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\RESET~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \RESET~input_o\);

\CLK~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \CLK~input_o\);
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: LCCOMB_X10_Y6_N4
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

-- Location: IOOBUF_X18_Y4_N9
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

-- Location: IOOBUF_X6_Y0_N16
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

-- Location: IOOBUF_X11_Y0_N9
\OUT3~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst38|sub|81~5_combout\,
	devoe => ww_devoe,
	o => \OUT3~output_o\);

-- Location: IOOBUF_X9_Y0_N30
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

-- Location: IOOBUF_X6_Y7_N16
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

-- Location: IOOBUF_X6_Y0_N2
\OUT0~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst45|sub|81~5_combout\,
	devoe => ww_devoe,
	o => \OUT0~output_o\);

-- Location: IOOBUF_X6_Y7_N23
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

-- Location: IOOBUF_X9_Y0_N2
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

-- Location: IOOBUF_X11_Y0_N23
\OUT1~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst42|sub|81~4_combout\,
	devoe => ww_devoe,
	o => \OUT1~output_o\);

-- Location: IOOBUF_X9_Y0_N9
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

-- Location: IOOBUF_X18_Y4_N2
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

-- Location: IOOBUF_X14_Y0_N9
\OUT2~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst39|sub|81~3_combout\,
	devoe => ww_devoe,
	o => \OUT2~output_o\);

-- Location: IOOBUF_X6_Y0_N9
\COUT~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst~0_combout\,
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

-- Location: IOIBUF_X14_Y0_N1
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

-- Location: IOIBUF_X6_Y7_N8
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

-- Location: IOIBUF_X18_Y4_N22
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

-- Location: IOIBUF_X11_Y0_N1
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

-- Location: IOIBUF_X9_Y0_N15
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

-- Location: LCCOMB_X9_Y4_N12
\inst50|6~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst50|6~0_combout\ = (\MSB1~input_o\ & ((\MSB0~input_o\) # ((\inst16~q\)))) # (!\MSB1~input_o\ & (!\MSB0~input_o\ & ((\IN3~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MSB1~input_o\,
	datab => \MSB0~input_o\,
	datac => \inst16~q\,
	datad => \IN3~input_o\,
	combout => \inst50|6~0_combout\);

-- Location: IOIBUF_X11_Y0_N15
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

-- Location: IOIBUF_X6_Y7_N29
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

-- Location: IOIBUF_X14_Y0_N15
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

-- Location: LCCOMB_X9_Y4_N0
\inst38|sub|81~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst38|sub|81~4_combout\ = (\MSC2~input_o\ & (\MSC0~input_o\ & !\MSC1~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MSC2~input_o\,
	datab => \MSC0~input_o\,
	datad => \MSC1~input_o\,
	combout => \inst38|sub|81~4_combout\);

-- Location: LCCOMB_X12_Y4_N4
\inst38|sub|81~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst38|sub|81~2_combout\ = (\MSC1~input_o\ & (!\MSC2~input_o\ & (!\inst4~q\))) # (!\MSC1~input_o\ & ((\inst4~q\) # ((\MSC2~input_o\ & \inst16~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101011001010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MSC1~input_o\,
	datab => \MSC2~input_o\,
	datac => \inst4~q\,
	datad => \inst16~q\,
	combout => \inst38|sub|81~2_combout\);

-- Location: IOIBUF_X18_Y4_N15
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

-- Location: LCCOMB_X12_Y4_N30
\inst52|6~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst52|6~0_combout\ = (\MSA1~input_o\ & (((\MSA0~input_o\)))) # (!\MSA1~input_o\ & ((\MSA0~input_o\ & ((\inst5~q\))) # (!\MSA0~input_o\ & (\IN2~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MSA1~input_o\,
	datab => \IN2~input_o\,
	datac => \MSA0~input_o\,
	datad => \inst5~q\,
	combout => \inst52|6~0_combout\);

-- Location: LCCOMB_X12_Y4_N6
\inst39|sub|81~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst39|sub|81~2_combout\ = (\inst5~q\ & (\inst17~q\ & \MSC0~input_o\)) # (!\inst5~q\ & ((!\MSC0~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010110000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5~q\,
	datab => \inst17~q\,
	datac => \MSC0~input_o\,
	combout => \inst39|sub|81~2_combout\);

-- Location: IOIBUF_X9_Y0_N22
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

-- Location: LCCOMB_X9_Y4_N26
\inst51|6~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst51|6~0_combout\ = (\MSA0~input_o\ & (\MSA1~input_o\)) # (!\MSA0~input_o\ & ((\MSA1~input_o\ & (\inst18~q\)) # (!\MSA1~input_o\ & ((\IN1~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MSA0~input_o\,
	datab => \MSA1~input_o\,
	datac => \inst18~q\,
	datad => \IN1~input_o\,
	combout => \inst51|6~0_combout\);

-- Location: LCCOMB_X9_Y4_N6
\inst42|sub|81~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst42|sub|81~3_combout\ = (\MSC0~input_o\ & (\inst18~q\ & \inst6~q\)) # (!\MSC0~input_o\ & ((!\inst6~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \MSC0~input_o\,
	datac => \inst18~q\,
	datad => \inst6~q\,
	combout => \inst42|sub|81~3_combout\);

-- Location: IOIBUF_X16_Y0_N1
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

-- Location: LCCOMB_X9_Y4_N10
\inst49|6~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst49|6~0_combout\ = (\MSA0~input_o\ & ((\MSA1~input_o\) # ((\inst7~q\)))) # (!\MSA0~input_o\ & (!\MSA1~input_o\ & (\IN0~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MSA0~input_o\,
	datab => \MSA1~input_o\,
	datac => \IN0~input_o\,
	datad => \inst7~q\,
	combout => \inst49|6~0_combout\);

-- Location: LCCOMB_X9_Y4_N4
\inst45|sub|81~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst45|sub|81~4_combout\ = (\MSC0~input_o\ & (\inst19~q\ & \inst7~q\)) # (!\MSC0~input_o\ & ((!\inst7~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst19~q\,
	datab => \MSC0~input_o\,
	datad => \inst7~q\,
	combout => \inst45|sub|81~4_combout\);

-- Location: IOIBUF_X6_Y0_N29
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

-- Location: LCCOMB_X10_Y4_N30
\inst36|sub|76~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst36|sub|76~0_combout\ = \CIN~input_o\ $ (\inst19~q\ $ (\inst7~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CIN~input_o\,
	datac => \inst19~q\,
	datad => \inst7~q\,
	combout => \inst36|sub|76~0_combout\);

-- Location: LCCOMB_X9_Y4_N20
\inst45|sub|81~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst45|sub|81~0_combout\ = (\MSC2~input_o\ & ((\MSC0~input_o\) # (\MSC1~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MSC2~input_o\,
	datab => \MSC0~input_o\,
	datad => \MSC1~input_o\,
	combout => \inst45|sub|81~0_combout\);

-- Location: LCCOMB_X11_Y4_N0
\inst45|sub|66~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst45|sub|66~0_combout\ = (\MSC0~input_o\ & \inst16~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MSC0~input_o\,
	datad => \inst16~q\,
	combout => \inst45|sub|66~0_combout\);

-- Location: LCCOMB_X9_Y4_N18
\inst45|sub|81~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst45|sub|81~1_combout\ = (\MSC2~input_o\ & !\MSC1~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MSC2~input_o\,
	datad => \MSC1~input_o\,
	combout => \inst45|sub|81~1_combout\);

-- Location: LCCOMB_X9_Y4_N24
inst35 : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst35~combout\ = (\inst19~q\) # (\inst7~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst19~q\,
	datad => \inst7~q\,
	combout => \inst35~combout\);

-- Location: LCCOMB_X9_Y4_N14
\inst45|sub|81~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst45|sub|81~2_combout\ = (\inst45|sub|81~1_combout\ & (!\inst45|sub|81~0_combout\ & ((\inst35~combout\)))) # (!\inst45|sub|81~1_combout\ & ((\inst45|sub|81~0_combout\) # ((\inst45|sub|78~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011001010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst45|sub|81~1_combout\,
	datab => \inst45|sub|81~0_combout\,
	datac => \inst45|sub|78~0_combout\,
	datad => \inst35~combout\,
	combout => \inst45|sub|81~2_combout\);

-- Location: LCCOMB_X10_Y4_N18
\inst45|sub|81~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst45|sub|81~3_combout\ = (\inst45|sub|81~0_combout\ & ((\inst45|sub|81~2_combout\ & ((\inst45|sub|66~0_combout\))) # (!\inst45|sub|81~2_combout\ & (\inst36|sub|76~0_combout\)))) # (!\inst45|sub|81~0_combout\ & (((\inst45|sub|81~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst36|sub|76~0_combout\,
	datab => \inst45|sub|81~0_combout\,
	datac => \inst45|sub|66~0_combout\,
	datad => \inst45|sub|81~2_combout\,
	combout => \inst45|sub|81~3_combout\);

-- Location: LCCOMB_X10_Y4_N28
\inst45|sub|81~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst45|sub|81~5_combout\ = (\MSC2~input_o\ & (((\inst45|sub|81~3_combout\)))) # (!\MSC2~input_o\ & ((\MSC1~input_o\ & (\inst45|sub|81~4_combout\)) # (!\MSC1~input_o\ & ((\inst45|sub|81~3_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MSC2~input_o\,
	datab => \MSC1~input_o\,
	datac => \inst45|sub|81~4_combout\,
	datad => \inst45|sub|81~3_combout\,
	combout => \inst45|sub|81~5_combout\);

-- Location: LCCOMB_X10_Y4_N16
\inst49|6~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst49|6~1_combout\ = (\inst49|6~0_combout\ & (((\inst45|sub|81~5_combout\)) # (!\MSA1~input_o\))) # (!\inst49|6~0_combout\ & (\MSA1~input_o\ & (\inst19~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst49|6~0_combout\,
	datab => \MSA1~input_o\,
	datac => \inst19~q\,
	datad => \inst45|sub|81~5_combout\,
	combout => \inst49|6~1_combout\);

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

-- Location: FF_X10_Y4_N17
inst7 : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst49|6~1_combout\,
	clrn => \RESET~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst7~q\);

-- Location: LCCOMB_X9_Y4_N16
\inst40|6~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst40|6~0_combout\ = (\MSB0~input_o\ & (((\MSB1~input_o\) # (\inst7~q\)))) # (!\MSB0~input_o\ & (\IN0~input_o\ & (!\MSB1~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IN0~input_o\,
	datab => \MSB0~input_o\,
	datac => \MSB1~input_o\,
	datad => \inst7~q\,
	combout => \inst40|6~0_combout\);

-- Location: LCCOMB_X10_Y4_N2
\inst40|6~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst40|6~1_combout\ = (\inst40|6~0_combout\ & (((\inst45|sub|81~5_combout\)) # (!\MSB1~input_o\))) # (!\inst40|6~0_combout\ & (\MSB1~input_o\ & (\inst19~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst40|6~0_combout\,
	datab => \MSB1~input_o\,
	datac => \inst19~q\,
	datad => \inst45|sub|81~5_combout\,
	combout => \inst40|6~1_combout\);

-- Location: FF_X10_Y4_N3
inst19 : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst40|6~1_combout\,
	clrn => \RESET~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst19~q\);

-- Location: LCCOMB_X10_Y4_N20
\inst45|sub|78~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst45|sub|78~0_combout\ = (\MSC0~input_o\ & (\inst19~q\)) # (!\MSC0~input_o\ & ((\inst7~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \MSC0~input_o\,
	datac => \inst19~q\,
	datad => \inst7~q\,
	combout => \inst45|sub|78~0_combout\);

-- Location: LCCOMB_X10_Y4_N4
\inst36|sub|104~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst36|sub|104~0_combout\ = (\inst19~q\ & ((\CIN~input_o\) # (\inst7~q\))) # (!\inst19~q\ & (\CIN~input_o\ & \inst7~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst19~q\,
	datac => \CIN~input_o\,
	datad => \inst7~q\,
	combout => \inst36|sub|104~0_combout\);

-- Location: LCCOMB_X10_Y4_N12
\inst42|sub|81~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst42|sub|81~0_combout\ = (\inst45|sub|81~0_combout\ & (\inst18~q\ $ (!\inst6~q\))) # (!\inst45|sub|81~0_combout\ & ((\inst18~q\) # (\inst6~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001100111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst45|sub|81~0_combout\,
	datac => \inst18~q\,
	datad => \inst6~q\,
	combout => \inst42|sub|81~0_combout\);

-- Location: LCCOMB_X10_Y4_N22
\inst42|sub|81~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst42|sub|81~1_combout\ = (\inst45|sub|81~1_combout\ & (\inst42|sub|81~0_combout\ $ (((\inst45|sub|81~0_combout\ & !\inst36|sub|104~0_combout\))))) # (!\inst45|sub|81~1_combout\ & (\inst45|sub|81~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011001001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst45|sub|81~1_combout\,
	datab => \inst45|sub|81~0_combout\,
	datac => \inst36|sub|104~0_combout\,
	datad => \inst42|sub|81~0_combout\,
	combout => \inst42|sub|81~1_combout\);

-- Location: LCCOMB_X10_Y4_N0
\inst42|sub|81~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst42|sub|81~2_combout\ = (\inst45|sub|81~1_combout\ & (((\inst42|sub|81~1_combout\)))) # (!\inst45|sub|81~1_combout\ & ((\inst42|sub|81~1_combout\ & (\inst45|sub|78~0_combout\)) # (!\inst42|sub|81~1_combout\ & ((\inst42|sub|78~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst45|sub|78~0_combout\,
	datab => \inst45|sub|81~1_combout\,
	datac => \inst42|sub|81~1_combout\,
	datad => \inst42|sub|78~0_combout\,
	combout => \inst42|sub|81~2_combout\);

-- Location: LCCOMB_X10_Y4_N10
\inst42|sub|81~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst42|sub|81~4_combout\ = (\MSC2~input_o\ & (((\inst42|sub|81~2_combout\)))) # (!\MSC2~input_o\ & ((\MSC1~input_o\ & (\inst42|sub|81~3_combout\)) # (!\MSC1~input_o\ & ((\inst42|sub|81~2_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MSC2~input_o\,
	datab => \MSC1~input_o\,
	datac => \inst42|sub|81~3_combout\,
	datad => \inst42|sub|81~2_combout\,
	combout => \inst42|sub|81~4_combout\);

-- Location: LCCOMB_X10_Y4_N24
\inst51|6~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst51|6~1_combout\ = (\inst51|6~0_combout\ & (((\inst42|sub|81~4_combout\)) # (!\MSA0~input_o\))) # (!\inst51|6~0_combout\ & (\MSA0~input_o\ & (\inst6~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst51|6~0_combout\,
	datab => \MSA0~input_o\,
	datac => \inst6~q\,
	datad => \inst42|sub|81~4_combout\,
	combout => \inst51|6~1_combout\);

-- Location: FF_X10_Y4_N25
inst6 : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst51|6~1_combout\,
	clrn => \RESET~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6~q\);

-- Location: LCCOMB_X9_Y4_N28
\inst47|6~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst47|6~0_combout\ = (\MSB1~input_o\ & (((\inst18~q\) # (\MSB0~input_o\)))) # (!\MSB1~input_o\ & (\IN1~input_o\ & ((!\MSB0~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MSB1~input_o\,
	datab => \IN1~input_o\,
	datac => \inst18~q\,
	datad => \MSB0~input_o\,
	combout => \inst47|6~0_combout\);

-- Location: LCCOMB_X10_Y4_N14
\inst47|6~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst47|6~1_combout\ = (\MSB0~input_o\ & ((\inst47|6~0_combout\ & ((\inst42|sub|81~4_combout\))) # (!\inst47|6~0_combout\ & (\inst6~q\)))) # (!\MSB0~input_o\ & (((\inst47|6~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MSB0~input_o\,
	datab => \inst6~q\,
	datac => \inst47|6~0_combout\,
	datad => \inst42|sub|81~4_combout\,
	combout => \inst47|6~1_combout\);

-- Location: FF_X10_Y4_N15
inst18 : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst47|6~1_combout\,
	clrn => \RESET~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst18~q\);

-- Location: LCCOMB_X10_Y4_N26
\inst42|sub|78~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst42|sub|78~0_combout\ = (\MSC0~input_o\ & (\inst18~q\)) # (!\MSC0~input_o\ & ((\inst6~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \MSC0~input_o\,
	datac => \inst18~q\,
	datad => \inst6~q\,
	combout => \inst42|sub|78~0_combout\);

-- Location: LCCOMB_X11_Y4_N6
inst33 : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst33~combout\ = (\inst17~q\) # (\inst5~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst17~q\,
	datad => \inst5~q\,
	combout => \inst33~combout\);

-- Location: LCCOMB_X11_Y4_N14
\inst39|sub|81~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst39|sub|81~0_combout\ = (\inst45|sub|81~0_combout\ & (((!\inst45|sub|81~1_combout\)))) # (!\inst45|sub|81~0_combout\ & ((\inst45|sub|81~1_combout\ & (\inst33~combout\)) # (!\inst45|sub|81~1_combout\ & ((\inst38|sub|77~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010111100101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst33~combout\,
	datab => \inst45|sub|81~0_combout\,
	datac => \inst45|sub|81~1_combout\,
	datad => \inst38|sub|77~0_combout\,
	combout => \inst39|sub|81~0_combout\);

-- Location: LCCOMB_X11_Y4_N30
\inst36|sub|80~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst36|sub|80~0_combout\ = \inst17~q\ $ (\inst5~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst17~q\,
	datad => \inst5~q\,
	combout => \inst36|sub|80~0_combout\);

-- Location: LCCOMB_X11_Y4_N28
\inst36|sub|80\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst36|sub|80~combout\ = \inst36|sub|80~0_combout\ $ (((\inst6~q\ & ((\inst36|sub|104~0_combout\) # (\inst18~q\))) # (!\inst6~q\ & (\inst36|sub|104~0_combout\ & \inst18~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101011001101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst36|sub|80~0_combout\,
	datab => \inst6~q\,
	datac => \inst36|sub|104~0_combout\,
	datad => \inst18~q\,
	combout => \inst36|sub|80~combout\);

-- Location: LCCOMB_X11_Y4_N16
\inst39|sub|81~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst39|sub|81~1_combout\ = (\inst45|sub|81~0_combout\ & ((\inst39|sub|81~0_combout\ & (\inst42|sub|78~0_combout\)) # (!\inst39|sub|81~0_combout\ & ((\inst36|sub|80~combout\))))) # (!\inst45|sub|81~0_combout\ & (((\inst39|sub|81~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst42|sub|78~0_combout\,
	datab => \inst45|sub|81~0_combout\,
	datac => \inst39|sub|81~0_combout\,
	datad => \inst36|sub|80~combout\,
	combout => \inst39|sub|81~1_combout\);

-- Location: LCCOMB_X11_Y4_N26
\inst39|sub|81~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst39|sub|81~3_combout\ = (\MSC2~input_o\ & (((\inst39|sub|81~1_combout\)))) # (!\MSC2~input_o\ & ((\MSC1~input_o\ & (\inst39|sub|81~2_combout\)) # (!\MSC1~input_o\ & ((\inst39|sub|81~1_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst39|sub|81~2_combout\,
	datab => \MSC2~input_o\,
	datac => \MSC1~input_o\,
	datad => \inst39|sub|81~1_combout\,
	combout => \inst39|sub|81~3_combout\);

-- Location: LCCOMB_X11_Y4_N10
\inst52|6~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst52|6~1_combout\ = (\inst52|6~0_combout\ & (((\inst39|sub|81~3_combout\) # (!\MSA1~input_o\)))) # (!\inst52|6~0_combout\ & (\inst17~q\ & ((\MSA1~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst52|6~0_combout\,
	datab => \inst17~q\,
	datac => \inst39|sub|81~3_combout\,
	datad => \MSA1~input_o\,
	combout => \inst52|6~1_combout\);

-- Location: FF_X11_Y4_N11
inst5 : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst52|6~1_combout\,
	clrn => \RESET~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5~q\);

-- Location: LCCOMB_X12_Y4_N24
\inst48|6~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst48|6~0_combout\ = (\MSB0~input_o\ & ((\inst5~q\) # ((\MSB1~input_o\)))) # (!\MSB0~input_o\ & (((\IN2~input_o\ & !\MSB1~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5~q\,
	datab => \IN2~input_o\,
	datac => \MSB0~input_o\,
	datad => \MSB1~input_o\,
	combout => \inst48|6~0_combout\);

-- Location: LCCOMB_X11_Y4_N4
\inst48|6~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst48|6~1_combout\ = (\MSB1~input_o\ & ((\inst48|6~0_combout\ & ((\inst39|sub|81~3_combout\))) # (!\inst48|6~0_combout\ & (\inst17~q\)))) # (!\MSB1~input_o\ & (\inst48|6~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110001100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MSB1~input_o\,
	datab => \inst48|6~0_combout\,
	datac => \inst17~q\,
	datad => \inst39|sub|81~3_combout\,
	combout => \inst48|6~1_combout\);

-- Location: FF_X11_Y4_N5
inst17 : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst48|6~1_combout\,
	clrn => \RESET~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst17~q\);

-- Location: LCCOMB_X11_Y4_N20
\inst38|sub|77~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst38|sub|77~0_combout\ = (\MSC0~input_o\ & (\inst17~q\)) # (!\MSC0~input_o\ & ((\inst5~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MSC0~input_o\,
	datac => \inst17~q\,
	datad => \inst5~q\,
	combout => \inst38|sub|77~0_combout\);

-- Location: LCCOMB_X11_Y4_N22
\inst38|sub|81~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst38|sub|81~1_combout\ = (\MSC2~input_o\ & (\MSC1~input_o\ & \inst38|sub|77~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MSC2~input_o\,
	datac => \MSC1~input_o\,
	datad => \inst38|sub|77~0_combout\,
	combout => \inst38|sub|81~1_combout\);

-- Location: LCCOMB_X11_Y4_N2
\inst38|sub|81~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst38|sub|81~0_combout\ = (!\MSC2~input_o\ & (\inst45|sub|66~0_combout\ & ((\inst4~q\) # (!\MSC1~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MSC2~input_o\,
	datab => \MSC1~input_o\,
	datac => \inst4~q\,
	datad => \inst45|sub|66~0_combout\,
	combout => \inst38|sub|81~0_combout\);

-- Location: LCCOMB_X11_Y4_N24
\inst38|sub|81~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst38|sub|81~3_combout\ = (\inst38|sub|81~1_combout\) # ((\inst38|sub|81~0_combout\) # ((\inst38|sub|81~2_combout\ & !\MSC0~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst38|sub|81~2_combout\,
	datab => \MSC0~input_o\,
	datac => \inst38|sub|81~1_combout\,
	datad => \inst38|sub|81~0_combout\,
	combout => \inst38|sub|81~3_combout\);

-- Location: LCCOMB_X9_Y4_N22
\inst36|sub|82~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst36|sub|82~0_combout\ = \inst16~q\ $ (\inst4~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst16~q\,
	datad => \inst4~q\,
	combout => \inst36|sub|82~0_combout\);

-- Location: LCCOMB_X10_Y4_N6
\inst36|sub|106~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst36|sub|106~0_combout\ = (\inst33~combout\ & ((\inst18~q\ & ((\inst6~q\) # (\inst36|sub|104~0_combout\))) # (!\inst18~q\ & (\inst6~q\ & \inst36|sub|104~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst18~q\,
	datab => \inst6~q\,
	datac => \inst36|sub|104~0_combout\,
	datad => \inst33~combout\,
	combout => \inst36|sub|106~0_combout\);

-- Location: LCCOMB_X10_Y4_N8
\inst36|sub|106~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst36|sub|106~1_combout\ = (\inst36|sub|106~0_combout\) # ((\inst17~q\ & \inst5~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst17~q\,
	datac => \inst5~q\,
	datad => \inst36|sub|106~0_combout\,
	combout => \inst36|sub|106~1_combout\);

-- Location: LCCOMB_X11_Y4_N12
\inst38|sub|81~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst38|sub|81~5_combout\ = (\inst38|sub|81~3_combout\) # ((\inst38|sub|81~4_combout\ & (\inst36|sub|82~0_combout\ $ (\inst36|sub|106~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst38|sub|81~4_combout\,
	datab => \inst38|sub|81~3_combout\,
	datac => \inst36|sub|82~0_combout\,
	datad => \inst36|sub|106~1_combout\,
	combout => \inst38|sub|81~5_combout\);

-- Location: LCCOMB_X11_Y4_N18
\inst50|6~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst50|6~1_combout\ = (\MSB0~input_o\ & ((\inst50|6~0_combout\ & ((\inst38|sub|81~5_combout\))) # (!\inst50|6~0_combout\ & (\inst4~q\)))) # (!\MSB0~input_o\ & (((\inst50|6~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MSB0~input_o\,
	datab => \inst4~q\,
	datac => \inst50|6~0_combout\,
	datad => \inst38|sub|81~5_combout\,
	combout => \inst50|6~1_combout\);

-- Location: FF_X11_Y4_N19
inst16 : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst50|6~1_combout\,
	clrn => \RESET~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst16~q\);

-- Location: LCCOMB_X9_Y4_N30
\inst53|6~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst53|6~0_combout\ = (\MSA0~input_o\ & (\MSA1~input_o\)) # (!\MSA0~input_o\ & ((\MSA1~input_o\ & (\inst16~q\)) # (!\MSA1~input_o\ & ((\IN3~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MSA0~input_o\,
	datab => \MSA1~input_o\,
	datac => \inst16~q\,
	datad => \IN3~input_o\,
	combout => \inst53|6~0_combout\);

-- Location: LCCOMB_X11_Y4_N8
\inst53|6~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst53|6~1_combout\ = (\inst53|6~0_combout\ & (((\inst38|sub|81~5_combout\)) # (!\MSA0~input_o\))) # (!\inst53|6~0_combout\ & (\MSA0~input_o\ & (\inst4~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst53|6~0_combout\,
	datab => \MSA0~input_o\,
	datac => \inst4~q\,
	datad => \inst38|sub|81~5_combout\,
	combout => \inst53|6~1_combout\);

-- Location: FF_X11_Y4_N9
inst4 : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst53|6~1_combout\,
	clrn => \RESET~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4~q\);

-- Location: LCCOMB_X9_Y4_N8
\inst~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst~0_combout\ = (\inst38|sub|81~4_combout\ & ((\inst16~q\ & ((\inst4~q\) # (\inst36|sub|106~1_combout\))) # (!\inst16~q\ & (\inst4~q\ & \inst36|sub|106~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst16~q\,
	datab => \inst38|sub|81~4_combout\,
	datac => \inst4~q\,
	datad => \inst36|sub|106~1_combout\,
	combout => \inst~0_combout\);

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


