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

-- DATE "06/04/2019 17:33:16"

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

ENTITY 	lab2_ALL IS
    PORT (
	Y_L : OUT std_logic;
	S1 : IN std_logic;
	S0 : IN std_logic;
	D3_L : IN std_logic;
	D2_L : IN std_logic;
	D1 : IN std_logic;
	D0 : IN std_logic;
	D : OUT std_logic;
	T_L : IN std_logic;
	X3 : IN std_logic;
	X2 : IN std_logic;
	X1 : IN std_logic;
	X0 : IN std_logic;
	E : OUT std_logic;
	F : OUT std_logic;
	G : OUT std_logic;
	C : OUT std_logic;
	A : OUT std_logic;
	B : OUT std_logic;
	Y0 : OUT std_logic;
	Z_L : IN std_logic;
	X : IN std_logic;
	PP : IN std_logic;
	W : IN std_logic;
	Y : IN std_logic;
	V : IN std_logic;
	Y1 : OUT std_logic
	);
END lab2_ALL;

-- Design Ports Information
-- Y_L	=>  Location: PIN_E3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D	=>  Location: PIN_J12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- E	=>  Location: PIN_H9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- F	=>  Location: PIN_J10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- G	=>  Location: PIN_L11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- C	=>  Location: PIN_E8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A	=>  Location: PIN_H10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B	=>  Location: PIN_F8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y0	=>  Location: PIN_H1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y1	=>  Location: PIN_M12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D2_L	=>  Location: PIN_H8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S1	=>  Location: PIN_N10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D1	=>  Location: PIN_K7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S0	=>  Location: PIN_N12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D0	=>  Location: PIN_J8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D3_L	=>  Location: PIN_G13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- T_L	=>  Location: PIN_J2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- X0	=>  Location: PIN_L4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- X1	=>  Location: PIN_L5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- X2	=>  Location: PIN_J5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- X3	=>  Location: PIN_L2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Z_L	=>  Location: PIN_E4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- X	=>  Location: PIN_F4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- W	=>  Location: PIN_H2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y	=>  Location: PIN_G4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- V	=>  Location: PIN_J7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PP	=>  Location: PIN_H3,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF lab2_ALL IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_Y_L : std_logic;
SIGNAL ww_S1 : std_logic;
SIGNAL ww_S0 : std_logic;
SIGNAL ww_D3_L : std_logic;
SIGNAL ww_D2_L : std_logic;
SIGNAL ww_D1 : std_logic;
SIGNAL ww_D0 : std_logic;
SIGNAL ww_D : std_logic;
SIGNAL ww_T_L : std_logic;
SIGNAL ww_X3 : std_logic;
SIGNAL ww_X2 : std_logic;
SIGNAL ww_X1 : std_logic;
SIGNAL ww_X0 : std_logic;
SIGNAL ww_E : std_logic;
SIGNAL ww_F : std_logic;
SIGNAL ww_G : std_logic;
SIGNAL ww_C : std_logic;
SIGNAL ww_A : std_logic;
SIGNAL ww_B : std_logic;
SIGNAL ww_Y0 : std_logic;
SIGNAL ww_Z_L : std_logic;
SIGNAL ww_X : std_logic;
SIGNAL ww_PP : std_logic;
SIGNAL ww_W : std_logic;
SIGNAL ww_Y : std_logic;
SIGNAL ww_V : std_logic;
SIGNAL ww_Y1 : std_logic;
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \~QUARTUS_CREATED_UNVM~~busy\ : std_logic;
SIGNAL \Y_L~output_o\ : std_logic;
SIGNAL \D~output_o\ : std_logic;
SIGNAL \E~output_o\ : std_logic;
SIGNAL \F~output_o\ : std_logic;
SIGNAL \G~output_o\ : std_logic;
SIGNAL \C~output_o\ : std_logic;
SIGNAL \A~output_o\ : std_logic;
SIGNAL \B~output_o\ : std_logic;
SIGNAL \Y0~output_o\ : std_logic;
SIGNAL \Y1~output_o\ : std_logic;
SIGNAL \D2_L~input_o\ : std_logic;
SIGNAL \D1~input_o\ : std_logic;
SIGNAL \S1~input_o\ : std_logic;
SIGNAL \D0~input_o\ : std_logic;
SIGNAL \S0~input_o\ : std_logic;
SIGNAL \inst10~0_combout\ : std_logic;
SIGNAL \D3_L~input_o\ : std_logic;
SIGNAL \inst10~1_combout\ : std_logic;
SIGNAL \T_L~input_o\ : std_logic;
SIGNAL \X0~input_o\ : std_logic;
SIGNAL \X3~input_o\ : std_logic;
SIGNAL \X1~input_o\ : std_logic;
SIGNAL \X2~input_o\ : std_logic;
SIGNAL \inst28~0_combout\ : std_logic;
SIGNAL \inst28~combout\ : std_logic;
SIGNAL \inst25~0_combout\ : std_logic;
SIGNAL \inst25~combout\ : std_logic;
SIGNAL \inst26~0_combout\ : std_logic;
SIGNAL \inst26~combout\ : std_logic;
SIGNAL \inst27~0_combout\ : std_logic;
SIGNAL \inst27~combout\ : std_logic;
SIGNAL \inst33~0_combout\ : std_logic;
SIGNAL \inst33~combout\ : std_logic;
SIGNAL \inst39~0_combout\ : std_logic;
SIGNAL \inst39~1_combout\ : std_logic;
SIGNAL \inst40~0_combout\ : std_logic;
SIGNAL \inst40~1_combout\ : std_logic;
SIGNAL \Z_L~input_o\ : std_logic;
SIGNAL \V~input_o\ : std_logic;
SIGNAL \W~input_o\ : std_logic;
SIGNAL \X~input_o\ : std_logic;
SIGNAL \Y~input_o\ : std_logic;
SIGNAL \inst53|9~0_combout\ : std_logic;
SIGNAL \inst53|9~1_combout\ : std_logic;
SIGNAL \PP~input_o\ : std_logic;
SIGNAL \inst53|10~0_combout\ : std_logic;
SIGNAL \ALT_INV_inst10~1_combout\ : std_logic;

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

Y_L <= ww_Y_L;
ww_S1 <= S1;
ww_S0 <= S0;
ww_D3_L <= D3_L;
ww_D2_L <= D2_L;
ww_D1 <= D1;
ww_D0 <= D0;
D <= ww_D;
ww_T_L <= T_L;
ww_X3 <= X3;
ww_X2 <= X2;
ww_X1 <= X1;
ww_X0 <= X0;
E <= ww_E;
F <= ww_F;
G <= ww_G;
C <= ww_C;
A <= ww_A;
B <= ww_B;
Y0 <= ww_Y0;
ww_Z_L <= Z_L;
ww_X <= X;
ww_PP <= PP;
ww_W <= W;
ww_Y <= Y;
ww_V <= V;
Y1 <= ww_Y1;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\ALT_INV_inst10~1_combout\ <= NOT \inst10~1_combout\;
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: LCCOMB_X11_Y9_N16
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

-- Location: IOOBUF_X10_Y15_N16
\Y_L~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_inst10~1_combout\,
	devoe => ww_devoe,
	o => \Y_L~output_o\);

-- Location: IOOBUF_X18_Y2_N16
\D~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst28~combout\,
	devoe => ww_devoe,
	o => \D~output_o\);

-- Location: IOOBUF_X18_Y4_N23
\E~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst25~combout\,
	devoe => ww_devoe,
	o => \E~output_o\);

-- Location: IOOBUF_X18_Y1_N16
\F~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst26~combout\,
	devoe => ww_devoe,
	o => \F~output_o\);

-- Location: IOOBUF_X14_Y0_N9
\G~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst27~combout\,
	devoe => ww_devoe,
	o => \G~output_o\);

-- Location: IOOBUF_X14_Y17_N2
\C~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst33~combout\,
	devoe => ww_devoe,
	o => \C~output_o\);

-- Location: IOOBUF_X18_Y3_N16
\A~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst39~1_combout\,
	devoe => ww_devoe,
	o => \A~output_o\);

-- Location: IOOBUF_X18_Y11_N23
\B~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst40~1_combout\,
	devoe => ww_devoe,
	o => \B~output_o\);

-- Location: IOOBUF_X10_Y13_N2
\Y0~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst53|9~1_combout\,
	devoe => ww_devoe,
	o => \Y0~output_o\);

-- Location: IOOBUF_X11_Y0_N2
\Y1~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst53|10~0_combout\,
	devoe => ww_devoe,
	o => \Y1~output_o\);

-- Location: IOIBUF_X18_Y4_N15
\D2_L~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_D2_L,
	o => \D2_L~input_o\);

-- Location: IOIBUF_X9_Y0_N1
\D1~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_D1,
	o => \D1~input_o\);

-- Location: IOIBUF_X11_Y0_N22
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

-- Location: IOIBUF_X14_Y0_N1
\D0~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_D0,
	o => \D0~input_o\);

-- Location: IOIBUF_X9_Y0_N15
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

-- Location: LCCOMB_X16_Y3_N24
\inst10~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst10~0_combout\ = (\S1~input_o\ & (((\S0~input_o\)))) # (!\S1~input_o\ & ((\S0~input_o\ & (\D1~input_o\)) # (!\S0~input_o\ & ((\D0~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \D1~input_o\,
	datab => \S1~input_o\,
	datac => \D0~input_o\,
	datad => \S0~input_o\,
	combout => \inst10~0_combout\);

-- Location: IOIBUF_X18_Y4_N8
\D3_L~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_D3_L,
	o => \D3_L~input_o\);

-- Location: LCCOMB_X16_Y3_N26
\inst10~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst10~1_combout\ = (\inst10~0_combout\ & (((!\S1~input_o\) # (!\D3_L~input_o\)))) # (!\inst10~0_combout\ & (!\D2_L~input_o\ & ((\S1~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001110111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \D2_L~input_o\,
	datab => \inst10~0_combout\,
	datac => \D3_L~input_o\,
	datad => \S1~input_o\,
	combout => \inst10~1_combout\);

-- Location: IOIBUF_X0_Y5_N8
\T_L~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_T_L,
	o => \T_L~input_o\);

-- Location: IOIBUF_X1_Y0_N8
\X0~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_X0,
	o => \X0~input_o\);

-- Location: IOIBUF_X0_Y3_N8
\X3~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_X3,
	o => \X3~input_o\);

-- Location: IOIBUF_X1_Y0_N15
\X1~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_X1,
	o => \X1~input_o\);

-- Location: IOIBUF_X3_Y0_N15
\X2~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_X2,
	o => \X2~input_o\);

-- Location: LCCOMB_X12_Y4_N24
\inst28~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst28~0_combout\ = (\X1~input_o\ & ((\X0~input_o\ & ((\X2~input_o\))) # (!\X0~input_o\ & (\X3~input_o\ & !\X2~input_o\)))) # (!\X1~input_o\ & (!\X3~input_o\ & (\X0~input_o\ $ (\X2~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000101000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \X0~input_o\,
	datab => \X3~input_o\,
	datac => \X1~input_o\,
	datad => \X2~input_o\,
	combout => \inst28~0_combout\);

-- Location: LCCOMB_X12_Y4_N2
inst28 : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst28~combout\ = (!\inst28~0_combout\) # (!\T_L~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \T_L~input_o\,
	datad => \inst28~0_combout\,
	combout => \inst28~combout\);

-- Location: LCCOMB_X12_Y4_N20
\inst25~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst25~0_combout\ = (\X1~input_o\ & (\X0~input_o\ & (!\X3~input_o\))) # (!\X1~input_o\ & ((\X2~input_o\ & ((!\X3~input_o\))) # (!\X2~input_o\ & (\X0~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001100101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \X0~input_o\,
	datab => \X3~input_o\,
	datac => \X1~input_o\,
	datad => \X2~input_o\,
	combout => \inst25~0_combout\);

-- Location: LCCOMB_X12_Y4_N14
inst25 : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst25~combout\ = (!\inst25~0_combout\) # (!\T_L~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \T_L~input_o\,
	datad => \inst25~0_combout\,
	combout => \inst25~combout\);

-- Location: LCCOMB_X12_Y4_N0
\inst26~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst26~0_combout\ = (\X0~input_o\ & (\X3~input_o\ $ (((\X1~input_o\) # (!\X2~input_o\))))) # (!\X0~input_o\ & (!\X3~input_o\ & (\X1~input_o\ & !\X2~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010100000110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \X0~input_o\,
	datab => \X3~input_o\,
	datac => \X1~input_o\,
	datad => \X2~input_o\,
	combout => \inst26~0_combout\);

-- Location: LCCOMB_X12_Y4_N10
inst26 : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst26~combout\ = (!\inst26~0_combout\) # (!\T_L~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \T_L~input_o\,
	datad => \inst26~0_combout\,
	combout => \inst26~combout\);

-- Location: LCCOMB_X12_Y4_N28
\inst27~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst27~0_combout\ = (\X0~input_o\ & ((\X3~input_o\) # (\X1~input_o\ $ (\X2~input_o\)))) # (!\X0~input_o\ & ((\X1~input_o\) # (\X3~input_o\ $ (\X2~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101111111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \X0~input_o\,
	datab => \X3~input_o\,
	datac => \X1~input_o\,
	datad => \X2~input_o\,
	combout => \inst27~0_combout\);

-- Location: LCCOMB_X12_Y4_N22
inst27 : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst27~combout\ = (\inst27~0_combout\) # (!\T_L~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \T_L~input_o\,
	datad => \inst27~0_combout\,
	combout => \inst27~combout\);

-- Location: LCCOMB_X12_Y4_N8
\inst33~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst33~0_combout\ = (\X3~input_o\ & (\X2~input_o\ & ((\X1~input_o\) # (!\X0~input_o\)))) # (!\X3~input_o\ & (!\X0~input_o\ & (\X1~input_o\ & !\X2~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \X0~input_o\,
	datab => \X3~input_o\,
	datac => \X1~input_o\,
	datad => \X2~input_o\,
	combout => \inst33~0_combout\);

-- Location: LCCOMB_X12_Y4_N18
inst33 : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst33~combout\ = (!\inst33~0_combout\) # (!\T_L~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111100111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \T_L~input_o\,
	datac => \inst33~0_combout\,
	combout => \inst33~combout\);

-- Location: LCCOMB_X12_Y4_N12
\inst39~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst39~0_combout\ = (\X3~input_o\ & (\X0~input_o\ & (\X1~input_o\ $ (\X2~input_o\)))) # (!\X3~input_o\ & (!\X1~input_o\ & (\X0~input_o\ $ (\X2~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100110000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \X0~input_o\,
	datab => \X3~input_o\,
	datac => \X1~input_o\,
	datad => \X2~input_o\,
	combout => \inst39~0_combout\);

-- Location: LCCOMB_X12_Y4_N30
\inst39~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst39~1_combout\ = (!\inst39~0_combout\) # (!\T_L~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \T_L~input_o\,
	datad => \inst39~0_combout\,
	combout => \inst39~1_combout\);

-- Location: LCCOMB_X12_Y4_N16
\inst40~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst40~0_combout\ = (\X3~input_o\ & ((\X0~input_o\ & (!\X1~input_o\)) # (!\X0~input_o\ & ((!\X2~input_o\))))) # (!\X3~input_o\ & ((\X0~input_o\ $ (!\X1~input_o\)) # (!\X2~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010100101111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \X0~input_o\,
	datab => \X3~input_o\,
	datac => \X1~input_o\,
	datad => \X2~input_o\,
	combout => \inst40~0_combout\);

-- Location: LCCOMB_X12_Y4_N26
\inst40~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst40~1_combout\ = (\inst40~0_combout\) # (!\T_L~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \T_L~input_o\,
	datad => \inst40~0_combout\,
	combout => \inst40~1_combout\);

-- Location: IOIBUF_X10_Y15_N22
\Z_L~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Z_L,
	o => \Z_L~input_o\);

-- Location: IOIBUF_X9_Y0_N8
\V~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_V,
	o => \V~input_o\);

-- Location: IOIBUF_X10_Y10_N15
\W~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_W,
	o => \W~input_o\);

-- Location: IOIBUF_X10_Y11_N15
\X~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_X,
	o => \X~input_o\);

-- Location: IOIBUF_X10_Y11_N22
\Y~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Y,
	o => \Y~input_o\);

-- Location: LCCOMB_X11_Y10_N24
\inst53|9~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst53|9~0_combout\ = ((\X~input_o\) # ((\W~input_o\ & \Y~input_o\))) # (!\V~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110111110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \V~input_o\,
	datab => \W~input_o\,
	datac => \X~input_o\,
	datad => \Y~input_o\,
	combout => \inst53|9~0_combout\);

-- Location: LCCOMB_X11_Y10_N18
\inst53|9~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst53|9~1_combout\ = (\Z_L~input_o\ & \inst53|9~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Z_L~input_o\,
	datad => \inst53|9~0_combout\,
	combout => \inst53|9~1_combout\);

-- Location: IOIBUF_X10_Y10_N22
\PP~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_PP,
	o => \PP~input_o\);

-- Location: LCCOMB_X11_Y10_N28
\inst53|10~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst53|10~0_combout\ = (!\PP~input_o\ & (\Z_L~input_o\ & \inst53|9~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PP~input_o\,
	datab => \Z_L~input_o\,
	datad => \inst53|9~0_combout\,
	combout => \inst53|10~0_combout\);

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

ww_Y_L <= \Y_L~output_o\;

ww_D <= \D~output_o\;

ww_E <= \E~output_o\;

ww_F <= \F~output_o\;

ww_G <= \G~output_o\;

ww_C <= \C~output_o\;

ww_A <= \A~output_o\;

ww_B <= \B~output_o\;

ww_Y0 <= \Y0~output_o\;

ww_Y1 <= \Y1~output_o\;
END structure;


