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

-- DATE "07/04/2019 15:09:10"

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


LIBRARY FIFTYFIVENM;
LIBRARY IEEE;
USE FIFTYFIVENM.FIFTYFIVENM_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	Lab4_ALU IS
    PORT (
	OUT3 : OUT std_logic;
	CIN : IN std_logic;
	A0 : IN std_logic;
	A1 : IN std_logic;
	B1 : IN std_logic;
	A2 : IN std_logic;
	A3 : IN std_logic;
	B3 : IN std_logic;
	B0 : IN std_logic;
	B2 : IN std_logic;
	S1 : IN std_logic;
	S0 : IN std_logic;
	OUT2 : OUT std_logic;
	OUT1 : OUT std_logic;
	OUT0 : OUT std_logic;
	COUT : OUT std_logic
	);
END Lab4_ALU;

-- Design Ports Information
-- OUT3	=>  Location: PIN_B3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- OUT2	=>  Location: PIN_J2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- OUT1	=>  Location: PIN_K5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- OUT0	=>  Location: PIN_K6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- COUT	=>  Location: PIN_H5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S1	=>  Location: PIN_A2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S0	=>  Location: PIN_M7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B3	=>  Location: PIN_B2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A2	=>  Location: PIN_B4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B2	=>  Location: PIN_N5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A1	=>  Location: PIN_N8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B1	=>  Location: PIN_J5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A0	=>  Location: PIN_M8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B0	=>  Location: PIN_M1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CIN	=>  Location: PIN_A5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A3	=>  Location: PIN_N7,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF Lab4_ALU IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_OUT3 : std_logic;
SIGNAL ww_CIN : std_logic;
SIGNAL ww_A0 : std_logic;
SIGNAL ww_A1 : std_logic;
SIGNAL ww_B1 : std_logic;
SIGNAL ww_A2 : std_logic;
SIGNAL ww_A3 : std_logic;
SIGNAL ww_B3 : std_logic;
SIGNAL ww_B0 : std_logic;
SIGNAL ww_B2 : std_logic;
SIGNAL ww_S1 : std_logic;
SIGNAL ww_S0 : std_logic;
SIGNAL ww_OUT2 : std_logic;
SIGNAL ww_OUT1 : std_logic;
SIGNAL ww_OUT0 : std_logic;
SIGNAL ww_COUT : std_logic;
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \~QUARTUS_CREATED_UNVM~~busy\ : std_logic;
SIGNAL \OUT3~output_o\ : std_logic;
SIGNAL \OUT2~output_o\ : std_logic;
SIGNAL \OUT1~output_o\ : std_logic;
SIGNAL \OUT0~output_o\ : std_logic;
SIGNAL \COUT~output_o\ : std_logic;
SIGNAL \S1~input_o\ : std_logic;
SIGNAL \A3~input_o\ : std_logic;
SIGNAL \B2~input_o\ : std_logic;
SIGNAL \A2~input_o\ : std_logic;
SIGNAL \B1~input_o\ : std_logic;
SIGNAL \A1~input_o\ : std_logic;
SIGNAL \CIN~input_o\ : std_logic;
SIGNAL \B0~input_o\ : std_logic;
SIGNAL \A0~input_o\ : std_logic;
SIGNAL \inst5|sub|104~0_combout\ : std_logic;
SIGNAL \inst5|sub|105~0_combout\ : std_logic;
SIGNAL \inst5|sub|106~0_combout\ : std_logic;
SIGNAL \B3~input_o\ : std_logic;
SIGNAL \inst1|9~0_combout\ : std_logic;
SIGNAL \S0~input_o\ : std_logic;
SIGNAL \inst1|9~1_combout\ : std_logic;
SIGNAL \inst1|10~0_combout\ : std_logic;
SIGNAL \inst1|10~1_combout\ : std_logic;
SIGNAL \inst|9~0_combout\ : std_logic;
SIGNAL \inst|9~1_combout\ : std_logic;
SIGNAL \inst|10~0_combout\ : std_logic;
SIGNAL \inst|10~1_combout\ : std_logic;
SIGNAL \inst5|sub|107~0_combout\ : std_logic;

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

OUT3 <= ww_OUT3;
ww_CIN <= CIN;
ww_A0 <= A0;
ww_A1 <= A1;
ww_B1 <= B1;
ww_A2 <= A2;
ww_A3 <= A3;
ww_B3 <= B3;
ww_B0 <= B0;
ww_B2 <= B2;
ww_S1 <= S1;
ww_S0 <= S0;
OUT2 <= ww_OUT2;
OUT1 <= ww_OUT1;
OUT0 <= ww_OUT0;
COUT <= ww_COUT;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: LCCOMB_X10_Y6_N24
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

-- Location: IOOBUF_X3_Y7_N2
\OUT3~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|9~1_combout\,
	devoe => ww_devoe,
	o => \OUT3~output_o\);

-- Location: IOOBUF_X0_Y5_N9
\OUT2~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|10~1_combout\,
	devoe => ww_devoe,
	o => \OUT2~output_o\);

-- Location: IOOBUF_X3_Y0_N23
\OUT1~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|9~1_combout\,
	devoe => ww_devoe,
	o => \OUT1~output_o\);

-- Location: IOOBUF_X9_Y0_N30
\OUT0~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|10~1_combout\,
	devoe => ww_devoe,
	o => \OUT0~output_o\);

-- Location: IOOBUF_X0_Y4_N16
\COUT~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst5|sub|107~0_combout\,
	devoe => ww_devoe,
	o => \COUT~output_o\);

-- Location: IOIBUF_X1_Y7_N8
\S1~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_S1,
	o => \S1~input_o\);

-- Location: IOIBUF_X3_Y0_N8
\A3~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A3,
	o => \A3~input_o\);

-- Location: IOIBUF_X3_Y0_N29
\B2~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B2,
	o => \B2~input_o\);

-- Location: IOIBUF_X3_Y7_N8
\A2~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A2,
	o => \A2~input_o\);

-- Location: IOIBUF_X3_Y0_N15
\B1~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B1,
	o => \B1~input_o\);

-- Location: IOIBUF_X3_Y0_N1
\A1~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A1,
	o => \A1~input_o\);

-- Location: IOIBUF_X3_Y7_N29
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

-- Location: IOIBUF_X0_Y4_N1
\B0~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B0,
	o => \B0~input_o\);

-- Location: IOIBUF_X6_Y0_N15
\A0~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A0,
	o => \A0~input_o\);

-- Location: LCCOMB_X4_Y4_N24
\inst5|sub|104~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst5|sub|104~0_combout\ = (\CIN~input_o\ & ((\B0~input_o\) # (\A0~input_o\))) # (!\CIN~input_o\ & (\B0~input_o\ & \A0~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CIN~input_o\,
	datac => \B0~input_o\,
	datad => \A0~input_o\,
	combout => \inst5|sub|104~0_combout\);

-- Location: LCCOMB_X4_Y4_N18
\inst5|sub|105~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst5|sub|105~0_combout\ = (\B1~input_o\ & ((\A1~input_o\) # (\inst5|sub|104~0_combout\))) # (!\B1~input_o\ & (\A1~input_o\ & \inst5|sub|104~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B1~input_o\,
	datac => \A1~input_o\,
	datad => \inst5|sub|104~0_combout\,
	combout => \inst5|sub|105~0_combout\);

-- Location: LCCOMB_X4_Y4_N4
\inst5|sub|106~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst5|sub|106~0_combout\ = (\B2~input_o\ & ((\A2~input_o\) # (\inst5|sub|105~0_combout\))) # (!\B2~input_o\ & (\A2~input_o\ & \inst5|sub|105~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B2~input_o\,
	datac => \A2~input_o\,
	datad => \inst5|sub|105~0_combout\,
	combout => \inst5|sub|106~0_combout\);

-- Location: IOIBUF_X1_Y7_N15
\B3~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B3,
	o => \B3~input_o\);

-- Location: LCCOMB_X4_Y4_N22
\inst1|9~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst1|9~0_combout\ = \B3~input_o\ $ (((!\S1~input_o\ & \inst5|sub|106~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \S1~input_o\,
	datac => \inst5|sub|106~0_combout\,
	datad => \B3~input_o\,
	combout => \inst1|9~0_combout\);

-- Location: IOIBUF_X6_Y0_N22
\S0~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_S0,
	o => \S0~input_o\);

-- Location: LCCOMB_X4_Y4_N16
\inst1|9~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst1|9~1_combout\ = (\A3~input_o\ & ((\inst1|9~0_combout\ & (\S1~input_o\)) # (!\inst1|9~0_combout\ & ((\S0~input_o\))))) # (!\A3~input_o\ & ((\S0~input_o\ & ((\inst1|9~0_combout\))) # (!\S0~input_o\ & (!\S1~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \S1~input_o\,
	datab => \A3~input_o\,
	datac => \inst1|9~0_combout\,
	datad => \S0~input_o\,
	combout => \inst1|9~1_combout\);

-- Location: LCCOMB_X4_Y4_N10
\inst1|10~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst1|10~0_combout\ = \B2~input_o\ $ (((!\S1~input_o\ & \inst5|sub|105~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \S1~input_o\,
	datab => \B2~input_o\,
	datad => \inst5|sub|105~0_combout\,
	combout => \inst1|10~0_combout\);

-- Location: LCCOMB_X4_Y4_N20
\inst1|10~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst1|10~1_combout\ = (\A2~input_o\ & ((\inst1|10~0_combout\ & (\S1~input_o\)) # (!\inst1|10~0_combout\ & ((\S0~input_o\))))) # (!\A2~input_o\ & ((\S0~input_o\ & (\inst1|10~0_combout\)) # (!\S0~input_o\ & ((!\S1~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101010000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|10~0_combout\,
	datab => \S1~input_o\,
	datac => \A2~input_o\,
	datad => \S0~input_o\,
	combout => \inst1|10~1_combout\);

-- Location: LCCOMB_X4_Y4_N14
\inst|9~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|9~0_combout\ = \B1~input_o\ $ (((!\S1~input_o\ & \inst5|sub|104~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \S1~input_o\,
	datab => \B1~input_o\,
	datad => \inst5|sub|104~0_combout\,
	combout => \inst|9~0_combout\);

-- Location: LCCOMB_X4_Y4_N8
\inst|9~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|9~1_combout\ = (\A1~input_o\ & ((\inst|9~0_combout\ & (\S1~input_o\)) # (!\inst|9~0_combout\ & ((\S0~input_o\))))) # (!\A1~input_o\ & ((\S0~input_o\ & ((\inst|9~0_combout\))) # (!\S0~input_o\ & (!\S1~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \S1~input_o\,
	datab => \inst|9~0_combout\,
	datac => \A1~input_o\,
	datad => \S0~input_o\,
	combout => \inst|9~1_combout\);

-- Location: LCCOMB_X4_Y4_N26
\inst|10~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|10~0_combout\ = \B0~input_o\ $ (((!\S1~input_o\ & \CIN~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \S1~input_o\,
	datac => \B0~input_o\,
	datad => \CIN~input_o\,
	combout => \inst|10~0_combout\);

-- Location: LCCOMB_X4_Y4_N12
\inst|10~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|10~1_combout\ = (\A0~input_o\ & ((\inst|10~0_combout\ & (\S1~input_o\)) # (!\inst|10~0_combout\ & ((\S0~input_o\))))) # (!\A0~input_o\ & ((\S0~input_o\ & ((\inst|10~0_combout\))) # (!\S0~input_o\ & (!\S1~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \S1~input_o\,
	datab => \A0~input_o\,
	datac => \inst|10~0_combout\,
	datad => \S0~input_o\,
	combout => \inst|10~1_combout\);

-- Location: LCCOMB_X4_Y4_N6
\inst5|sub|107~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst5|sub|107~0_combout\ = (\B3~input_o\ & ((\inst5|sub|106~0_combout\) # (\A3~input_o\))) # (!\B3~input_o\ & (\inst5|sub|106~0_combout\ & \A3~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B3~input_o\,
	datab => \inst5|sub|106~0_combout\,
	datac => \A3~input_o\,
	combout => \inst5|sub|107~0_combout\);

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

ww_OUT3 <= \OUT3~output_o\;

ww_OUT2 <= \OUT2~output_o\;

ww_OUT1 <= \OUT1~output_o\;

ww_OUT0 <= \OUT0~output_o\;

ww_COUT <= \COUT~output_o\;
END structure;


