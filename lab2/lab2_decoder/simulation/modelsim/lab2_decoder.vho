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

-- DATE "06/03/2019 02:46:17"

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

ENTITY 	lab2_decoder IS
    PORT (
	D : OUT std_logic;
	T_L : IN std_logic;
	X : IN std_logic_vector(3 DOWNTO 0);
	E : OUT std_logic;
	F : OUT std_logic;
	G : OUT std_logic;
	C : OUT std_logic;
	A : OUT std_logic;
	B : OUT std_logic
	);
END lab2_decoder;

-- Design Ports Information
-- D	=>  Location: PIN_J12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- E	=>  Location: PIN_H9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- F	=>  Location: PIN_J10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- G	=>  Location: PIN_L11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- C	=>  Location: PIN_E8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A	=>  Location: PIN_H10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B	=>  Location: PIN_F8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- T_L	=>  Location: PIN_J2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- X[0]	=>  Location: PIN_L4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- X[1]	=>  Location: PIN_L5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- X[2]	=>  Location: PIN_J5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- X[3]	=>  Location: PIN_L2,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF lab2_decoder IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_D : std_logic;
SIGNAL ww_T_L : std_logic;
SIGNAL ww_X : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_E : std_logic;
SIGNAL ww_F : std_logic;
SIGNAL ww_G : std_logic;
SIGNAL ww_C : std_logic;
SIGNAL ww_A : std_logic;
SIGNAL ww_B : std_logic;
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \~QUARTUS_CREATED_UNVM~~busy\ : std_logic;
SIGNAL \D~output_o\ : std_logic;
SIGNAL \E~output_o\ : std_logic;
SIGNAL \F~output_o\ : std_logic;
SIGNAL \G~output_o\ : std_logic;
SIGNAL \C~output_o\ : std_logic;
SIGNAL \A~output_o\ : std_logic;
SIGNAL \B~output_o\ : std_logic;
SIGNAL \T_L~input_o\ : std_logic;
SIGNAL \X[1]~input_o\ : std_logic;
SIGNAL \X[0]~input_o\ : std_logic;
SIGNAL \X[2]~input_o\ : std_logic;
SIGNAL \X[3]~input_o\ : std_logic;
SIGNAL \inst24~0_combout\ : std_logic;
SIGNAL \inst24~combout\ : std_logic;
SIGNAL \inst21~0_combout\ : std_logic;
SIGNAL \inst21~combout\ : std_logic;
SIGNAL \inst22~0_combout\ : std_logic;
SIGNAL \inst22~combout\ : std_logic;
SIGNAL \inst23~0_combout\ : std_logic;
SIGNAL \inst23~combout\ : std_logic;
SIGNAL \inst33~0_combout\ : std_logic;
SIGNAL \inst33~combout\ : std_logic;
SIGNAL \inst18~0_combout\ : std_logic;
SIGNAL \inst18~1_combout\ : std_logic;
SIGNAL \inst19~0_combout\ : std_logic;
SIGNAL \inst19~1_combout\ : std_logic;

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

D <= ww_D;
ww_T_L <= T_L;
ww_X <= X;
E <= ww_E;
F <= ww_F;
G <= ww_G;
C <= ww_C;
A <= ww_A;
B <= ww_B;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: LCCOMB_X6_Y5_N16
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

-- Location: IOOBUF_X18_Y2_N16
\D~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst24~combout\,
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
	i => \inst21~combout\,
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
	i => \inst22~combout\,
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
	i => \inst23~combout\,
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
	i => \inst18~1_combout\,
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
	i => \inst19~1_combout\,
	devoe => ww_devoe,
	o => \B~output_o\);

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

-- Location: IOIBUF_X1_Y0_N15
\X[1]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_X(1),
	o => \X[1]~input_o\);

-- Location: IOIBUF_X1_Y0_N8
\X[0]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_X(0),
	o => \X[0]~input_o\);

-- Location: IOIBUF_X3_Y0_N15
\X[2]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_X(2),
	o => \X[2]~input_o\);

-- Location: IOIBUF_X0_Y3_N8
\X[3]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_X(3),
	o => \X[3]~input_o\);

-- Location: LCCOMB_X16_Y3_N24
\inst24~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst24~0_combout\ = (\X[1]~input_o\ & ((\X[0]~input_o\ & (\X[2]~input_o\)) # (!\X[0]~input_o\ & (!\X[2]~input_o\ & \X[3]~input_o\)))) # (!\X[1]~input_o\ & (!\X[3]~input_o\ & (\X[0]~input_o\ $ (\X[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001010010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \X[1]~input_o\,
	datab => \X[0]~input_o\,
	datac => \X[2]~input_o\,
	datad => \X[3]~input_o\,
	combout => \inst24~0_combout\);

-- Location: LCCOMB_X16_Y3_N2
inst24 : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst24~combout\ = (!\inst24~0_combout\) # (!\T_L~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \T_L~input_o\,
	datad => \inst24~0_combout\,
	combout => \inst24~combout\);

-- Location: LCCOMB_X16_Y3_N20
\inst21~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst21~0_combout\ = (\X[1]~input_o\ & (\X[0]~input_o\ & ((!\X[3]~input_o\)))) # (!\X[1]~input_o\ & ((\X[2]~input_o\ & ((!\X[3]~input_o\))) # (!\X[2]~input_o\ & (\X[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010011011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \X[1]~input_o\,
	datab => \X[0]~input_o\,
	datac => \X[2]~input_o\,
	datad => \X[3]~input_o\,
	combout => \inst21~0_combout\);

-- Location: LCCOMB_X16_Y3_N14
inst21 : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst21~combout\ = (!\inst21~0_combout\) # (!\T_L~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \T_L~input_o\,
	datad => \inst21~0_combout\,
	combout => \inst21~combout\);

-- Location: LCCOMB_X16_Y3_N0
\inst22~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst22~0_combout\ = (\X[1]~input_o\ & (!\X[3]~input_o\ & ((\X[0]~input_o\) # (!\X[2]~input_o\)))) # (!\X[1]~input_o\ & (\X[0]~input_o\ & (\X[2]~input_o\ $ (!\X[3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000010001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \X[1]~input_o\,
	datab => \X[0]~input_o\,
	datac => \X[2]~input_o\,
	datad => \X[3]~input_o\,
	combout => \inst22~0_combout\);

-- Location: LCCOMB_X16_Y3_N18
inst22 : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst22~combout\ = (!\inst22~0_combout\) # (!\T_L~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \T_L~input_o\,
	datad => \inst22~0_combout\,
	combout => \inst22~combout\);

-- Location: LCCOMB_X16_Y3_N28
\inst23~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst23~0_combout\ = (\X[0]~input_o\ & ((\X[3]~input_o\) # (\X[1]~input_o\ $ (\X[2]~input_o\)))) # (!\X[0]~input_o\ & ((\X[1]~input_o\) # (\X[2]~input_o\ $ (\X[3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111101111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \X[1]~input_o\,
	datab => \X[0]~input_o\,
	datac => \X[2]~input_o\,
	datad => \X[3]~input_o\,
	combout => \inst23~0_combout\);

-- Location: LCCOMB_X16_Y3_N30
inst23 : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst23~combout\ = (\inst23~0_combout\) # (!\T_L~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \T_L~input_o\,
	datad => \inst23~0_combout\,
	combout => \inst23~combout\);

-- Location: LCCOMB_X16_Y3_N16
\inst33~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst33~0_combout\ = (\X[2]~input_o\ & (\X[3]~input_o\ & ((\X[1]~input_o\) # (!\X[0]~input_o\)))) # (!\X[2]~input_o\ & (\X[1]~input_o\ & (!\X[0]~input_o\ & !\X[3]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \X[1]~input_o\,
	datab => \X[0]~input_o\,
	datac => \X[2]~input_o\,
	datad => \X[3]~input_o\,
	combout => \inst33~0_combout\);

-- Location: LCCOMB_X16_Y3_N10
inst33 : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst33~combout\ = (!\inst33~0_combout\) # (!\T_L~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \T_L~input_o\,
	datad => \inst33~0_combout\,
	combout => \inst33~combout\);

-- Location: LCCOMB_X16_Y3_N12
\inst18~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst18~0_combout\ = (\X[2]~input_o\ & (!\X[1]~input_o\ & (\X[0]~input_o\ $ (!\X[3]~input_o\)))) # (!\X[2]~input_o\ & (\X[0]~input_o\ & (\X[1]~input_o\ $ (!\X[3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100100000010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \X[1]~input_o\,
	datab => \X[0]~input_o\,
	datac => \X[2]~input_o\,
	datad => \X[3]~input_o\,
	combout => \inst18~0_combout\);

-- Location: LCCOMB_X16_Y3_N6
\inst18~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst18~1_combout\ = (!\inst18~0_combout\) # (!\T_L~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \T_L~input_o\,
	datad => \inst18~0_combout\,
	combout => \inst18~1_combout\);

-- Location: LCCOMB_X16_Y3_N8
\inst19~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst19~0_combout\ = (\X[1]~input_o\ & ((\X[0]~input_o\ & ((!\X[3]~input_o\))) # (!\X[0]~input_o\ & (!\X[2]~input_o\)))) # (!\X[1]~input_o\ & ((\X[0]~input_o\ $ (!\X[3]~input_o\)) # (!\X[2]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100011110011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \X[1]~input_o\,
	datab => \X[0]~input_o\,
	datac => \X[2]~input_o\,
	datad => \X[3]~input_o\,
	combout => \inst19~0_combout\);

-- Location: LCCOMB_X16_Y3_N26
\inst19~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst19~1_combout\ = (\inst19~0_combout\) # (!\T_L~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst19~0_combout\,
	datac => \T_L~input_o\,
	combout => \inst19~1_combout\);

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

ww_D <= \D~output_o\;

ww_E <= \E~output_o\;

ww_F <= \F~output_o\;

ww_G <= \G~output_o\;

ww_C <= \C~output_o\;

ww_A <= \A~output_o\;

ww_B <= \B~output_o\;
END structure;


