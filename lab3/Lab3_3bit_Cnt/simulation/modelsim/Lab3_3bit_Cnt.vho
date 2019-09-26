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

-- DATE "06/13/2019 03:08:02"

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

ENTITY 	Lab3_3bit_Cnt IS
    PORT (
	Q1 : OUT std_logic;
	B : IN std_logic;
	Q2 : OUT std_logic;
	CLK : IN std_logic;
	F : IN std_logic;
	Q0 : OUT std_logic;
	Set2 : IN std_logic;
	Reset2 : IN std_logic;
	Set0 : IN std_logic;
	Set1 : IN std_logic;
	Reset0 : IN std_logic;
	Reset1 : IN std_logic;
	Sp : OUT std_logic;
	B7 : OUT std_logic;
	A7 : OUT std_logic;
	C7 : OUT std_logic;
	D7 : OUT std_logic;
	E7 : OUT std_logic;
	F7 : OUT std_logic;
	G7 : OUT std_logic
	);
END Lab3_3bit_Cnt;

-- Design Ports Information
-- Q1	=>  Location: PIN_D11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Q2	=>  Location: PIN_M12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Q0	=>  Location: PIN_M11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Sp	=>  Location: PIN_M10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B7	=>  Location: PIN_F8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A7	=>  Location: PIN_H10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- C7	=>  Location: PIN_E8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D7	=>  Location: PIN_J12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- E7	=>  Location: PIN_H9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- F7	=>  Location: PIN_J10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- G7	=>  Location: PIN_L11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B	=>  Location: PIN_M13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- F	=>  Location: PIN_N12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Set1	=>  Location: PIN_J13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Reset1	=>  Location: PIN_J8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Set2	=>  Location: PIN_L13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Reset2	=>  Location: PIN_H8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Set0	=>  Location: PIN_K7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Reset0	=>  Location: PIN_K8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CLK	=>  Location: PIN_G9,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF Lab3_3bit_Cnt IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_Q1 : std_logic;
SIGNAL ww_B : std_logic;
SIGNAL ww_Q2 : std_logic;
SIGNAL ww_CLK : std_logic;
SIGNAL ww_F : std_logic;
SIGNAL ww_Q0 : std_logic;
SIGNAL ww_Set2 : std_logic;
SIGNAL ww_Reset2 : std_logic;
SIGNAL ww_Set0 : std_logic;
SIGNAL ww_Set1 : std_logic;
SIGNAL ww_Reset0 : std_logic;
SIGNAL ww_Reset1 : std_logic;
SIGNAL ww_Sp : std_logic;
SIGNAL ww_B7 : std_logic;
SIGNAL ww_A7 : std_logic;
SIGNAL ww_C7 : std_logic;
SIGNAL ww_D7 : std_logic;
SIGNAL ww_E7 : std_logic;
SIGNAL ww_F7 : std_logic;
SIGNAL ww_G7 : std_logic;
SIGNAL \CLK~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \~QUARTUS_CREATED_UNVM~~busy\ : std_logic;
SIGNAL \Q1~output_o\ : std_logic;
SIGNAL \Q2~output_o\ : std_logic;
SIGNAL \Q0~output_o\ : std_logic;
SIGNAL \Sp~output_o\ : std_logic;
SIGNAL \B7~output_o\ : std_logic;
SIGNAL \A7~output_o\ : std_logic;
SIGNAL \C7~output_o\ : std_logic;
SIGNAL \D7~output_o\ : std_logic;
SIGNAL \E7~output_o\ : std_logic;
SIGNAL \F7~output_o\ : std_logic;
SIGNAL \G7~output_o\ : std_logic;
SIGNAL \Set1~input_o\ : std_logic;
SIGNAL \Reset1~input_o\ : std_logic;
SIGNAL \inst85|9~1_combout\ : std_logic;
SIGNAL \CLK~input_o\ : std_logic;
SIGNAL \CLK~inputclkctrl_outclk\ : std_logic;
SIGNAL \F~input_o\ : std_logic;
SIGNAL \Reset2~input_o\ : std_logic;
SIGNAL \Set2~input_o\ : std_logic;
SIGNAL \inst2|9~1_combout\ : std_logic;
SIGNAL \B~input_o\ : std_logic;
SIGNAL \inst15~combout\ : std_logic;
SIGNAL \inst14~0_combout\ : std_logic;
SIGNAL \Reset0~input_o\ : std_logic;
SIGNAL \Set0~input_o\ : std_logic;
SIGNAL \inst85|10~1_combout\ : std_logic;
SIGNAL \inst27~0_combout\ : std_logic;
SIGNAL \inst27~1_combout\ : std_logic;
SIGNAL \inst85|10~3_combout\ : std_logic;
SIGNAL \inst85|10~0_combout\ : std_logic;
SIGNAL \inst85|10~_emulated_q\ : std_logic;
SIGNAL \inst85|10~2_combout\ : std_logic;
SIGNAL \inst17~0_combout\ : std_logic;
SIGNAL \inst2|9~3_combout\ : std_logic;
SIGNAL \inst2|9~0_combout\ : std_logic;
SIGNAL \inst2|9~_emulated_q\ : std_logic;
SIGNAL \inst2|9~2_combout\ : std_logic;
SIGNAL \inst121~0_combout\ : std_logic;
SIGNAL \inst121~2_combout\ : std_logic;
SIGNAL \inst121~1_combout\ : std_logic;
SIGNAL \inst85|9~3_combout\ : std_logic;
SIGNAL \inst85|9~0_combout\ : std_logic;
SIGNAL \inst85|9~_emulated_q\ : std_logic;
SIGNAL \inst85|9~2_combout\ : std_logic;
SIGNAL \inst28~0_combout\ : std_logic;
SIGNAL \inst1~combout\ : std_logic;
SIGNAL \inst410|inst41~0_combout\ : std_logic;
SIGNAL \inst410|inst36~0_combout\ : std_logic;
SIGNAL \inst410|inst8~combout\ : std_logic;
SIGNAL \inst410|inst17~0_combout\ : std_logic;
SIGNAL \inst410|inst16~0_combout\ : std_logic;
SIGNAL \inst410|inst15~0_combout\ : std_logic;
SIGNAL \inst410|inst9~0_combout\ : std_logic;
SIGNAL \inst85|ALT_INV_10~0_combout\ : std_logic;
SIGNAL \inst2|ALT_INV_9~0_combout\ : std_logic;
SIGNAL \inst85|ALT_INV_9~0_combout\ : std_logic;
SIGNAL \inst410|ALT_INV_inst16~0_combout\ : std_logic;
SIGNAL \inst410|ALT_INV_inst17~0_combout\ : std_logic;

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

Q1 <= ww_Q1;
ww_B <= B;
Q2 <= ww_Q2;
ww_CLK <= CLK;
ww_F <= F;
Q0 <= ww_Q0;
ww_Set2 <= Set2;
ww_Reset2 <= Reset2;
ww_Set0 <= Set0;
ww_Set1 <= Set1;
ww_Reset0 <= Reset0;
ww_Reset1 <= Reset1;
Sp <= ww_Sp;
B7 <= ww_B7;
A7 <= ww_A7;
C7 <= ww_C7;
D7 <= ww_D7;
E7 <= ww_E7;
F7 <= ww_F7;
G7 <= ww_G7;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\CLK~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \CLK~input_o\);
\inst85|ALT_INV_10~0_combout\ <= NOT \inst85|10~0_combout\;
\inst2|ALT_INV_9~0_combout\ <= NOT \inst2|9~0_combout\;
\inst85|ALT_INV_9~0_combout\ <= NOT \inst85|9~0_combout\;
\inst410|ALT_INV_inst16~0_combout\ <= NOT \inst410|inst16~0_combout\;
\inst410|ALT_INV_inst17~0_combout\ <= NOT \inst410|inst17~0_combout\;
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

-- Location: IOOBUF_X18_Y14_N16
\Q1~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst85|9~2_combout\,
	devoe => ww_devoe,
	o => \Q1~output_o\);

-- Location: IOOBUF_X11_Y0_N2
\Q2~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2|9~2_combout\,
	devoe => ww_devoe,
	o => \Q2~output_o\);

-- Location: IOOBUF_X14_Y0_N16
\Q0~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst85|10~2_combout\,
	devoe => ww_devoe,
	o => \Q0~output_o\);

-- Location: IOOBUF_X16_Y0_N9
\Sp~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1~combout\,
	devoe => ww_devoe,
	o => \Sp~output_o\);

-- Location: IOOBUF_X18_Y11_N23
\B7~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst410|inst41~0_combout\,
	devoe => ww_devoe,
	o => \B7~output_o\);

-- Location: IOOBUF_X18_Y3_N16
\A7~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst410|inst36~0_combout\,
	devoe => ww_devoe,
	o => \A7~output_o\);

-- Location: IOOBUF_X14_Y17_N2
\C7~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst410|inst8~combout\,
	devoe => ww_devoe,
	o => \C7~output_o\);

-- Location: IOOBUF_X18_Y2_N16
\D7~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst410|ALT_INV_inst17~0_combout\,
	devoe => ww_devoe,
	o => \D7~output_o\);

-- Location: IOOBUF_X18_Y4_N23
\E7~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst410|ALT_INV_inst16~0_combout\,
	devoe => ww_devoe,
	o => \E7~output_o\);

-- Location: IOOBUF_X18_Y1_N16
\F7~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst410|inst15~0_combout\,
	devoe => ww_devoe,
	o => \F7~output_o\);

-- Location: IOOBUF_X14_Y0_N9
\G7~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst410|inst9~0_combout\,
	devoe => ww_devoe,
	o => \G7~output_o\);

-- Location: IOIBUF_X18_Y3_N8
\Set1~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Set1,
	o => \Set1~input_o\);

-- Location: IOIBUF_X14_Y0_N1
\Reset1~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Reset1,
	o => \Reset1~input_o\);

-- Location: LCCOMB_X12_Y5_N16
\inst85|9~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst85|9~1_combout\ = (\Reset1~input_o\ & ((\inst85|9~1_combout\) # (!\Set1~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Set1~input_o\,
	datac => \Reset1~input_o\,
	datad => \inst85|9~1_combout\,
	combout => \inst85|9~1_combout\);

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

-- Location: IOIBUF_X9_Y0_N15
\F~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_F,
	o => \F~input_o\);

-- Location: IOIBUF_X18_Y4_N15
\Reset2~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Reset2,
	o => \Reset2~input_o\);

-- Location: IOIBUF_X18_Y2_N8
\Set2~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Set2,
	o => \Set2~input_o\);

-- Location: LCCOMB_X12_Y5_N10
\inst2|9~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|9~1_combout\ = (\Reset2~input_o\ & ((\inst2|9~1_combout\) # (!\Set2~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Reset2~input_o\,
	datac => \Set2~input_o\,
	datad => \inst2|9~1_combout\,
	combout => \inst2|9~1_combout\);

-- Location: IOIBUF_X11_Y0_N8
\B~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B,
	o => \B~input_o\);

-- Location: LCCOMB_X12_Y5_N30
inst15 : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst15~combout\ = (!\B~input_o\ & (\F~input_o\ & \inst2|9~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B~input_o\,
	datac => \F~input_o\,
	datad => \inst2|9~2_combout\,
	combout => \inst15~combout\);

-- Location: LCCOMB_X12_Y5_N4
\inst14~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst14~0_combout\ = (\B~input_o\ & (!\inst2|9~2_combout\ & \inst85|9~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B~input_o\,
	datac => \inst2|9~2_combout\,
	datad => \inst85|9~2_combout\,
	combout => \inst14~0_combout\);

-- Location: IOIBUF_X16_Y0_N29
\Reset0~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Reset0,
	o => \Reset0~input_o\);

-- Location: IOIBUF_X9_Y0_N1
\Set0~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Set0,
	o => \Set0~input_o\);

-- Location: LCCOMB_X11_Y5_N18
\inst85|10~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst85|10~1_combout\ = (\Reset0~input_o\ & ((\inst85|10~1_combout\) # (!\Set0~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Reset0~input_o\,
	datac => \Set0~input_o\,
	datad => \inst85|10~1_combout\,
	combout => \inst85|10~1_combout\);

-- Location: LCCOMB_X11_Y5_N22
\inst27~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst27~0_combout\ = (\F~input_o\ & (\inst85|10~2_combout\)) # (!\F~input_o\ & ((!\inst85|9~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \F~input_o\,
	datac => \inst85|10~2_combout\,
	datad => \inst85|9~2_combout\,
	combout => \inst27~0_combout\);

-- Location: LCCOMB_X12_Y5_N2
\inst27~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst27~1_combout\ = \B~input_o\ $ (\inst85|9~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B~input_o\,
	datad => \inst85|9~2_combout\,
	combout => \inst27~1_combout\);

-- Location: LCCOMB_X11_Y5_N10
\inst85|10~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst85|10~3_combout\ = \inst85|10~1_combout\ $ (((\inst2|9~2_combout\ & ((\inst27~1_combout\))) # (!\inst2|9~2_combout\ & (\inst27~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101011010011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst85|10~1_combout\,
	datab => \inst2|9~2_combout\,
	datac => \inst27~0_combout\,
	datad => \inst27~1_combout\,
	combout => \inst85|10~3_combout\);

-- Location: LCCOMB_X11_Y5_N24
\inst85|10~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst85|10~0_combout\ = (!\Set0~input_o\) # (!\Reset0~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111101011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Reset0~input_o\,
	datac => \Set0~input_o\,
	combout => \inst85|10~0_combout\);

-- Location: FF_X11_Y5_N11
\inst85|10~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst85|10~3_combout\,
	clrn => \inst85|ALT_INV_10~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst85|10~_emulated_q\);

-- Location: LCCOMB_X11_Y5_N8
\inst85|10~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst85|10~2_combout\ = (\Reset0~input_o\ & ((\inst85|10~1_combout\ $ (\inst85|10~_emulated_q\)) # (!\Set0~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010101010001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Reset0~input_o\,
	datab => \inst85|10~1_combout\,
	datac => \Set0~input_o\,
	datad => \inst85|10~_emulated_q\,
	combout => \inst85|10~2_combout\);

-- Location: LCCOMB_X12_Y5_N12
\inst17~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst17~0_combout\ = (!\F~input_o\ & (!\inst2|9~2_combout\ & ((\inst85|10~2_combout\) # (!\inst85|9~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \F~input_o\,
	datab => \inst85|9~2_combout\,
	datac => \inst2|9~2_combout\,
	datad => \inst85|10~2_combout\,
	combout => \inst17~0_combout\);

-- Location: LCCOMB_X12_Y5_N18
\inst2|9~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|9~3_combout\ = \inst2|9~1_combout\ $ (((\inst15~combout\) # ((\inst14~0_combout\) # (\inst17~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100110110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst15~combout\,
	datab => \inst2|9~1_combout\,
	datac => \inst14~0_combout\,
	datad => \inst17~0_combout\,
	combout => \inst2|9~3_combout\);

-- Location: LCCOMB_X12_Y5_N20
\inst2|9~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|9~0_combout\ = (!\Reset2~input_o\) # (!\Set2~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Set2~input_o\,
	datad => \Reset2~input_o\,
	combout => \inst2|9~0_combout\);

-- Location: FF_X12_Y5_N19
\inst2|9~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst2|9~3_combout\,
	clrn => \inst2|ALT_INV_9~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|9~_emulated_q\);

-- Location: LCCOMB_X12_Y5_N8
\inst2|9~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|9~2_combout\ = (\Reset2~input_o\ & ((\inst2|9~1_combout\ $ (\inst2|9~_emulated_q\)) # (!\Set2~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100110010001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|9~1_combout\,
	datab => \Reset2~input_o\,
	datac => \Set2~input_o\,
	datad => \inst2|9~_emulated_q\,
	combout => \inst2|9~2_combout\);

-- Location: LCCOMB_X12_Y5_N22
\inst121~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst121~0_combout\ = (!\F~input_o\ & ((\inst2|9~2_combout\) # (!\inst85|9~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \F~input_o\,
	datac => \inst2|9~2_combout\,
	datad => \inst85|9~2_combout\,
	combout => \inst121~0_combout\);

-- Location: LCCOMB_X12_Y5_N14
\inst121~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst121~2_combout\ = (\F~input_o\ & (!\B~input_o\ & \inst85|9~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \F~input_o\,
	datab => \B~input_o\,
	datad => \inst85|9~2_combout\,
	combout => \inst121~2_combout\);

-- Location: LCCOMB_X12_Y5_N0
\inst121~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst121~1_combout\ = (\B~input_o\ & (((!\inst2|9~2_combout\ & \inst85|10~2_combout\)) # (!\inst85|9~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010101000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B~input_o\,
	datab => \inst85|9~2_combout\,
	datac => \inst2|9~2_combout\,
	datad => \inst85|10~2_combout\,
	combout => \inst121~1_combout\);

-- Location: LCCOMB_X12_Y5_N6
\inst85|9~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst85|9~3_combout\ = \inst85|9~1_combout\ $ (((\inst121~0_combout\) # ((\inst121~2_combout\) # (\inst121~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100110110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst121~0_combout\,
	datab => \inst85|9~1_combout\,
	datac => \inst121~2_combout\,
	datad => \inst121~1_combout\,
	combout => \inst85|9~3_combout\);

-- Location: LCCOMB_X15_Y5_N4
\inst85|9~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst85|9~0_combout\ = (!\Set1~input_o\) # (!\Reset1~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111100111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Reset1~input_o\,
	datac => \Set1~input_o\,
	combout => \inst85|9~0_combout\);

-- Location: FF_X12_Y5_N7
\inst85|9~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst85|9~3_combout\,
	clrn => \inst85|ALT_INV_9~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst85|9~_emulated_q\);

-- Location: LCCOMB_X12_Y5_N28
\inst85|9~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst85|9~2_combout\ = (\Reset1~input_o\ & ((\inst85|9~1_combout\ $ (\inst85|9~_emulated_q\)) # (!\Set1~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Set1~input_o\,
	datab => \inst85|9~1_combout\,
	datac => \Reset1~input_o\,
	datad => \inst85|9~_emulated_q\,
	combout => \inst85|9~2_combout\);

-- Location: LCCOMB_X12_Y5_N26
\inst28~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst28~0_combout\ = (\inst2|9~2_combout\ & (!\inst85|9~2_combout\ & (!\F~input_o\ & !\B~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|9~2_combout\,
	datab => \inst85|9~2_combout\,
	datac => \F~input_o\,
	datad => \B~input_o\,
	combout => \inst28~0_combout\);

-- Location: LCCOMB_X12_Y5_N24
inst1 : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst1~combout\ = (\inst85|10~2_combout\ & (\F~input_o\ & (\inst14~0_combout\))) # (!\inst85|10~2_combout\ & (((\inst28~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \F~input_o\,
	datab => \inst14~0_combout\,
	datac => \inst28~0_combout\,
	datad => \inst85|10~2_combout\,
	combout => \inst1~combout\);

-- Location: LCCOMB_X11_Y5_N16
\inst410|inst41~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst410|inst41~0_combout\ = (\inst85|10~2_combout\ $ (!\inst85|9~2_combout\)) # (!\inst2|9~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111100111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst85|10~2_combout\,
	datac => \inst2|9~2_combout\,
	datad => \inst85|9~2_combout\,
	combout => \inst410|inst41~0_combout\);

-- Location: LCCOMB_X11_Y5_N14
\inst410|inst36~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst410|inst36~0_combout\ = (\inst85|9~2_combout\) # (\inst85|10~2_combout\ $ (!\inst2|9~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst85|10~2_combout\,
	datac => \inst2|9~2_combout\,
	datad => \inst85|9~2_combout\,
	combout => \inst410|inst36~0_combout\);

-- Location: LCCOMB_X11_Y5_N12
\inst410|inst8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst410|inst8~combout\ = (\inst85|10~2_combout\) # ((\inst2|9~2_combout\) # (!\inst85|9~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst85|10~2_combout\,
	datac => \inst2|9~2_combout\,
	datad => \inst85|9~2_combout\,
	combout => \inst410|inst8~combout\);

-- Location: LCCOMB_X11_Y5_N26
\inst410|inst17~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst410|inst17~0_combout\ = (\inst85|10~2_combout\ & (\inst2|9~2_combout\ $ (!\inst85|9~2_combout\))) # (!\inst85|10~2_combout\ & (\inst2|9~2_combout\ & !\inst85|9~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst85|10~2_combout\,
	datac => \inst2|9~2_combout\,
	datad => \inst85|9~2_combout\,
	combout => \inst410|inst17~0_combout\);

-- Location: LCCOMB_X11_Y5_N20
\inst410|inst16~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst410|inst16~0_combout\ = (\inst85|10~2_combout\) # ((\inst2|9~2_combout\ & !\inst85|9~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst85|10~2_combout\,
	datac => \inst2|9~2_combout\,
	datad => \inst85|9~2_combout\,
	combout => \inst410|inst16~0_combout\);

-- Location: LCCOMB_X11_Y5_N6
\inst410|inst15~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst410|inst15~0_combout\ = (\inst85|10~2_combout\ & (\inst2|9~2_combout\ & !\inst85|9~2_combout\)) # (!\inst85|10~2_combout\ & ((\inst2|9~2_combout\) # (!\inst85|9~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000011110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst85|10~2_combout\,
	datac => \inst2|9~2_combout\,
	datad => \inst85|9~2_combout\,
	combout => \inst410|inst15~0_combout\);

-- Location: LCCOMB_X11_Y5_N28
\inst410|inst9~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst410|inst9~0_combout\ = (\inst2|9~2_combout\ & ((!\inst85|9~2_combout\) # (!\inst85|10~2_combout\))) # (!\inst2|9~2_combout\ & ((\inst85|9~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst85|10~2_combout\,
	datac => \inst2|9~2_combout\,
	datad => \inst85|9~2_combout\,
	combout => \inst410|inst9~0_combout\);

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

ww_Q1 <= \Q1~output_o\;

ww_Q2 <= \Q2~output_o\;

ww_Q0 <= \Q0~output_o\;

ww_Sp <= \Sp~output_o\;

ww_B7 <= \B7~output_o\;

ww_A7 <= \A7~output_o\;

ww_C7 <= \C7~output_o\;

ww_D7 <= \D7~output_o\;

ww_E7 <= \E7~output_o\;

ww_F7 <= \F7~output_o\;

ww_G7 <= \G7~output_o\;
END structure;


