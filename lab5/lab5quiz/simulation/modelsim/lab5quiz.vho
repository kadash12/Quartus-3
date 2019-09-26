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

-- DATE "07/19/2019 10:10:13"

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

ENTITY 	lab5quiz IS
    PORT (
	E : OUT std_logic;
	D : IN std_logic;
	P : IN std_logic;
	T2 : OUT std_logic;
	RESET : IN std_logic;
	CLK : IN std_logic;
	D1 : OUT std_logic;
	D0 : OUT std_logic;
	PU : OUT std_logic;
	W : OUT std_logic
	);
END lab5quiz;

-- Design Ports Information
-- E	=>  Location: PIN_K6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- T2	=>  Location: PIN_K7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D1	=>  Location: PIN_J6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D0	=>  Location: PIN_N10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PU	=>  Location: PIN_N12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- W	=>  Location: PIN_J7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D	=>  Location: PIN_M13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- P	=>  Location: PIN_N11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CLK	=>  Location: PIN_H5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RESET	=>  Location: PIN_H4,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF lab5quiz IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_E : std_logic;
SIGNAL ww_D : std_logic;
SIGNAL ww_P : std_logic;
SIGNAL ww_T2 : std_logic;
SIGNAL ww_RESET : std_logic;
SIGNAL ww_CLK : std_logic;
SIGNAL ww_D1 : std_logic;
SIGNAL ww_D0 : std_logic;
SIGNAL ww_PU : std_logic;
SIGNAL ww_W : std_logic;
SIGNAL \RESET~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \CLK~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \~QUARTUS_CREATED_UNVM~~busy\ : std_logic;
SIGNAL \E~output_o\ : std_logic;
SIGNAL \T2~output_o\ : std_logic;
SIGNAL \D1~output_o\ : std_logic;
SIGNAL \D0~output_o\ : std_logic;
SIGNAL \PU~output_o\ : std_logic;
SIGNAL \W~output_o\ : std_logic;
SIGNAL \D~input_o\ : std_logic;
SIGNAL \CLK~input_o\ : std_logic;
SIGNAL \CLK~inputclkctrl_outclk\ : std_logic;
SIGNAL \P~input_o\ : std_logic;
SIGNAL \inst|D1~1_combout\ : std_logic;
SIGNAL \RESET~input_o\ : std_logic;
SIGNAL \RESET~inputclkctrl_outclk\ : std_logic;
SIGNAL \inst2~q\ : std_logic;
SIGNAL \inst|D1~0_combout\ : std_logic;
SIGNAL \inst1~q\ : std_logic;
SIGNAL \inst|D0~0_combout\ : std_logic;
SIGNAL \inst|D0~1_combout\ : std_logic;
SIGNAL \inst3~q\ : std_logic;
SIGNAL \inst|E~0_combout\ : std_logic;
SIGNAL \inst|PU~0_combout\ : std_logic;
SIGNAL \inst|W~0_combout\ : std_logic;
SIGNAL \inst|ALT_INV_W~0_combout\ : std_logic;

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

E <= ww_E;
ww_D <= D;
ww_P <= P;
T2 <= ww_T2;
ww_RESET <= RESET;
ww_CLK <= CLK;
D1 <= ww_D1;
D0 <= ww_D0;
PU <= ww_PU;
W <= ww_W;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\RESET~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \RESET~input_o\);

\CLK~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \CLK~input_o\);
\inst|ALT_INV_W~0_combout\ <= NOT \inst|W~0_combout\;
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

-- Location: IOOBUF_X9_Y0_N30
\E~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|E~0_combout\,
	devoe => ww_devoe,
	o => \E~output_o\);

-- Location: IOOBUF_X9_Y0_N2
\T2~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1~q\,
	devoe => ww_devoe,
	o => \T2~output_o\);

-- Location: IOOBUF_X6_Y0_N2
\D1~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2~q\,
	devoe => ww_devoe,
	o => \D1~output_o\);

-- Location: IOOBUF_X11_Y0_N23
\D0~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst3~q\,
	devoe => ww_devoe,
	o => \D0~output_o\);

-- Location: IOOBUF_X9_Y0_N16
\PU~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|PU~0_combout\,
	devoe => ww_devoe,
	o => \PU~output_o\);

-- Location: IOOBUF_X9_Y0_N9
\W~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|ALT_INV_W~0_combout\,
	devoe => ww_devoe,
	o => \W~output_o\);

-- Location: IOIBUF_X11_Y0_N8
\D~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_D,
	o => \D~input_o\);

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

-- Location: IOIBUF_X9_Y0_N22
\P~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_P,
	o => \P~input_o\);

-- Location: LCCOMB_X10_Y1_N22
\inst|D1~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|D1~1_combout\ = (!\inst1~q\ & ((\P~input_o\ & ((\inst3~q\) # (!\inst2~q\))) # (!\P~input_o\ & (!\inst2~q\ & \inst3~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001100000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \P~input_o\,
	datab => \inst1~q\,
	datac => \inst2~q\,
	datad => \inst3~q\,
	combout => \inst|D1~1_combout\);

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

-- Location: FF_X10_Y1_N23
inst2 : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|D1~1_combout\,
	clrn => \RESET~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2~q\);

-- Location: LCCOMB_X10_Y1_N16
\inst|D1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|D1~0_combout\ = (\inst1~q\) # ((\inst2~q\ & !\inst3~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2~q\,
	datac => \inst1~q\,
	datad => \inst3~q\,
	combout => \inst|D1~0_combout\);

-- Location: FF_X10_Y1_N17
inst1 : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|D1~0_combout\,
	clrn => \RESET~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1~q\);

-- Location: LCCOMB_X10_Y1_N28
\inst|D0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|D0~0_combout\ = (\inst3~q\ & (((\P~input_o\)))) # (!\inst3~q\ & (((!\inst2~q\)) # (!\D~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110001011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \D~input_o\,
	datab => \P~input_o\,
	datac => \inst2~q\,
	datad => \inst3~q\,
	combout => \inst|D0~0_combout\);

-- Location: LCCOMB_X10_Y1_N20
\inst|D0~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|D0~1_combout\ = (\inst1~q\) # (\inst|D0~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1~q\,
	datad => \inst|D0~0_combout\,
	combout => \inst|D0~1_combout\);

-- Location: FF_X10_Y1_N21
inst3 : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|D0~1_combout\,
	clrn => \RESET~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3~q\);

-- Location: LCCOMB_X10_Y1_N26
\inst|E~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|E~0_combout\ = (!\inst3~q\ & ((\inst2~q\ & (\D~input_o\ & !\inst1~q\)) # (!\inst2~q\ & ((\inst1~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \D~input_o\,
	datab => \inst3~q\,
	datac => \inst2~q\,
	datad => \inst1~q\,
	combout => \inst|E~0_combout\);

-- Location: LCCOMB_X10_Y1_N24
\inst|PU~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|PU~0_combout\ = (\inst3~q\ & (\inst2~q\ & !\inst1~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst3~q\,
	datac => \inst2~q\,
	datad => \inst1~q\,
	combout => \inst|PU~0_combout\);

-- Location: LCCOMB_X10_Y1_N30
\inst|W~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|W~0_combout\ = (\inst1~q\) # ((\inst2~q\ & (\inst3~q\)) # (!\inst2~q\ & ((\P~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2~q\,
	datab => \inst3~q\,
	datac => \P~input_o\,
	datad => \inst1~q\,
	combout => \inst|W~0_combout\);

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

ww_E <= \E~output_o\;

ww_T2 <= \T2~output_o\;

ww_D1 <= \D1~output_o\;

ww_D0 <= \D0~output_o\;

ww_PU <= \PU~output_o\;

ww_W <= \W~output_o\;
END structure;


