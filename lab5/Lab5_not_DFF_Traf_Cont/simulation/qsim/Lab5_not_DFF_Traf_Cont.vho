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

-- DATE "07/13/2019 18:43:37"

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

ENTITY 	Lab5_not_DFF_Traf_Cont IS
    PORT (
	Green : OUT std_logic;
	EV_L : IN std_logic;
	CW : IN std_logic;
	Q3 : OUT std_logic;
	CLK : IN std_logic;
	Q2 : OUT std_logic;
	Q1 : OUT std_logic;
	Q0 : OUT std_logic;
	Yellow : OUT std_logic;
	Red : OUT std_logic
	);
END Lab5_not_DFF_Traf_Cont;

-- Design Ports Information
-- Green	=>  Location: PIN_J7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Q3	=>  Location: PIN_M7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Q2	=>  Location: PIN_N12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Q1	=>  Location: PIN_N11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Q0	=>  Location: PIN_J6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Yellow	=>  Location: PIN_N10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Red	=>  Location: PIN_K7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- EV_L	=>  Location: PIN_N9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CW	=>  Location: PIN_K6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CLK	=>  Location: PIN_H5,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF Lab5_not_DFF_Traf_Cont IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_Green : std_logic;
SIGNAL ww_EV_L : std_logic;
SIGNAL ww_CW : std_logic;
SIGNAL ww_Q3 : std_logic;
SIGNAL ww_CLK : std_logic;
SIGNAL ww_Q2 : std_logic;
SIGNAL ww_Q1 : std_logic;
SIGNAL ww_Q0 : std_logic;
SIGNAL ww_Yellow : std_logic;
SIGNAL ww_Red : std_logic;
SIGNAL \CLK~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \~QUARTUS_CREATED_UNVM~~busy\ : std_logic;
SIGNAL \Green~output_o\ : std_logic;
SIGNAL \Q3~output_o\ : std_logic;
SIGNAL \Q2~output_o\ : std_logic;
SIGNAL \Q1~output_o\ : std_logic;
SIGNAL \Q0~output_o\ : std_logic;
SIGNAL \Yellow~output_o\ : std_logic;
SIGNAL \Red~output_o\ : std_logic;
SIGNAL \EV_L~input_o\ : std_logic;
SIGNAL \CLK~input_o\ : std_logic;
SIGNAL \CLK~inputclkctrl_outclk\ : std_logic;
SIGNAL \inst11~0_combout\ : std_logic;
SIGNAL \inst11~1_combout\ : std_logic;
SIGNAL \inst11~q\ : std_logic;
SIGNAL \inst|D3~0_combout\ : std_logic;
SIGNAL \inst|D3~1_combout\ : std_logic;
SIGNAL \inst1~q\ : std_logic;
SIGNAL \CW~input_o\ : std_logic;
SIGNAL \inst10~0_combout\ : std_logic;
SIGNAL \inst10~1_combout\ : std_logic;
SIGNAL \inst10~q\ : std_logic;
SIGNAL \inst12~1_combout\ : std_logic;
SIGNAL \inst12~0_combout\ : std_logic;
SIGNAL \inst12~2_combout\ : std_logic;
SIGNAL \inst12~q\ : std_logic;
SIGNAL \inst|G~0_combout\ : std_logic;
SIGNAL \inst|G~1_combout\ : std_logic;
SIGNAL \inst|Y~0_combout\ : std_logic;
SIGNAL \inst|Y~1_combout\ : std_logic;
SIGNAL \inst|R~0_combout\ : std_logic;

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

Green <= ww_Green;
ww_EV_L <= EV_L;
ww_CW <= CW;
Q3 <= ww_Q3;
ww_CLK <= CLK;
Q2 <= ww_Q2;
Q1 <= ww_Q1;
Q0 <= ww_Q0;
Yellow <= ww_Yellow;
Red <= ww_Red;
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

-- Location: IOOBUF_X9_Y0_N9
\Green~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|G~1_combout\,
	devoe => ww_devoe,
	o => \Green~output_o\);

-- Location: IOOBUF_X6_Y0_N23
\Q3~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1~q\,
	devoe => ww_devoe,
	o => \Q3~output_o\);

-- Location: IOOBUF_X9_Y0_N16
\Q2~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst10~q\,
	devoe => ww_devoe,
	o => \Q2~output_o\);

-- Location: IOOBUF_X9_Y0_N23
\Q1~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst11~q\,
	devoe => ww_devoe,
	o => \Q1~output_o\);

-- Location: IOOBUF_X6_Y0_N2
\Q0~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst12~q\,
	devoe => ww_devoe,
	o => \Q0~output_o\);

-- Location: IOOBUF_X11_Y0_N23
\Yellow~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|Y~1_combout\,
	devoe => ww_devoe,
	o => \Yellow~output_o\);

-- Location: IOOBUF_X9_Y0_N2
\Red~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|R~0_combout\,
	devoe => ww_devoe,
	o => \Red~output_o\);

-- Location: IOIBUF_X11_Y0_N15
\EV_L~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_EV_L,
	o => \EV_L~input_o\);

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

-- Location: LCCOMB_X10_Y1_N2
\inst11~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst11~0_combout\ = (\EV_L~input_o\ & (\inst12~q\ $ ((\inst11~q\)))) # (!\EV_L~input_o\ & ((\inst12~q\ $ (\inst11~q\)) # (!\inst10~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst12~q\,
	datab => \EV_L~input_o\,
	datac => \inst11~q\,
	datad => \inst10~q\,
	combout => \inst11~0_combout\);

-- Location: LCCOMB_X10_Y1_N4
\inst11~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst11~1_combout\ = (\inst1~q\ & (\inst11~q\)) # (!\inst1~q\ & ((\inst11~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1~q\,
	datac => \inst11~q\,
	datad => \inst11~0_combout\,
	combout => \inst11~1_combout\);

-- Location: FF_X10_Y1_N5
inst11 : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst11~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst11~q\);

-- Location: LCCOMB_X10_Y1_N12
\inst|D3~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|D3~0_combout\ = (\inst12~q\ & ((\EV_L~input_o\) # (\inst11~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \EV_L~input_o\,
	datac => \inst11~q\,
	datad => \inst12~q\,
	combout => \inst|D3~0_combout\);

-- Location: LCCOMB_X10_Y1_N6
\inst|D3~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|D3~1_combout\ = (\inst10~q\ & (\inst11~q\ & (!\inst1~q\ & \inst|D3~0_combout\))) # (!\inst10~q\ & (!\inst11~q\ & (\inst1~q\ & !\inst|D3~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst10~q\,
	datab => \inst11~q\,
	datac => \inst1~q\,
	datad => \inst|D3~0_combout\,
	combout => \inst|D3~1_combout\);

-- Location: FF_X10_Y1_N7
inst1 : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|D3~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1~q\);

-- Location: IOIBUF_X9_Y0_N29
\CW~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_CW,
	o => \CW~input_o\);

-- Location: LCCOMB_X10_Y1_N10
\inst10~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst10~0_combout\ = (\inst11~q\ & ((\inst12~q\ $ (\inst10~q\)))) # (!\inst11~q\ & (\inst10~q\ & ((\CW~input_o\) # (\inst12~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CW~input_o\,
	datab => \inst11~q\,
	datac => \inst12~q\,
	datad => \inst10~q\,
	combout => \inst10~0_combout\);

-- Location: LCCOMB_X10_Y1_N28
\inst10~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst10~1_combout\ = (\inst1~q\ & (((\inst10~q\)))) # (!\inst1~q\ & ((\inst10~0_combout\) # ((!\EV_L~input_o\ & !\inst10~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \EV_L~input_o\,
	datab => \inst1~q\,
	datac => \inst10~q\,
	datad => \inst10~0_combout\,
	combout => \inst10~1_combout\);

-- Location: FF_X10_Y1_N29
inst10 : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst10~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst10~q\);

-- Location: LCCOMB_X10_Y1_N14
\inst12~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst12~1_combout\ = (!\inst12~q\ & ((\CW~input_o\) # ((\inst11~q\) # (\inst1~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst12~q\,
	datab => \CW~input_o\,
	datac => \inst11~q\,
	datad => \inst1~q\,
	combout => \inst12~1_combout\);

-- Location: LCCOMB_X10_Y1_N20
\inst12~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst12~0_combout\ = (\EV_L~input_o\ & (!\inst12~q\)) # (!\EV_L~input_o\ & ((\inst1~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111100001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \EV_L~input_o\,
	datac => \inst12~q\,
	datad => \inst1~q\,
	combout => \inst12~0_combout\);

-- Location: LCCOMB_X10_Y1_N30
\inst12~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst12~2_combout\ = (\inst10~q\ & (((\inst12~1_combout\)))) # (!\inst10~q\ & (\inst12~0_combout\ & ((\inst12~1_combout\) # (!\inst11~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst10~q\,
	datab => \inst11~q\,
	datac => \inst12~1_combout\,
	datad => \inst12~0_combout\,
	combout => \inst12~2_combout\);

-- Location: FF_X10_Y1_N31
inst12 : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst12~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst12~q\);

-- Location: LCCOMB_X10_Y1_N16
\inst|G~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|G~0_combout\ = (!\inst12~q\ & (!\inst1~q\ & (!\inst11~q\ & \inst10~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst12~q\,
	datab => \inst1~q\,
	datac => \inst11~q\,
	datad => \inst10~q\,
	combout => \inst|G~0_combout\);

-- Location: LCCOMB_X10_Y1_N26
\inst|G~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|G~1_combout\ = (\inst|G~0_combout\) # ((\EV_L~input_o\ & (!\inst1~q\ & !\inst10~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \EV_L~input_o\,
	datab => \inst|G~0_combout\,
	datac => \inst1~q\,
	datad => \inst10~q\,
	combout => \inst|G~1_combout\);

-- Location: LCCOMB_X10_Y1_N8
\inst|Y~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Y~0_combout\ = (!\inst1~q\ & (\inst10~q\ & (\inst12~q\ $ (\inst11~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst12~q\,
	datab => \inst1~q\,
	datac => \inst11~q\,
	datad => \inst10~q\,
	combout => \inst|Y~0_combout\);

-- Location: LCCOMB_X10_Y1_N18
\inst|Y~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Y~1_combout\ = (\inst|Y~0_combout\) # ((!\EV_L~input_o\ & (!\inst1~q\ & !\inst10~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \EV_L~input_o\,
	datab => \inst|Y~0_combout\,
	datac => \inst1~q\,
	datad => \inst10~q\,
	combout => \inst|Y~1_combout\);

-- Location: LCCOMB_X10_Y1_N24
\inst|R~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|R~0_combout\ = (\inst1~q\ & (((!\inst11~q\ & !\inst10~q\)))) # (!\inst1~q\ & (\inst12~q\ & (\inst11~q\ & \inst10~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst12~q\,
	datab => \inst1~q\,
	datac => \inst11~q\,
	datad => \inst10~q\,
	combout => \inst|R~0_combout\);

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

ww_Green <= \Green~output_o\;

ww_Q3 <= \Q3~output_o\;

ww_Q2 <= \Q2~output_o\;

ww_Q1 <= \Q1~output_o\;

ww_Q0 <= \Q0~output_o\;

ww_Yellow <= \Yellow~output_o\;

ww_Red <= \Red~output_o\;
END structure;


