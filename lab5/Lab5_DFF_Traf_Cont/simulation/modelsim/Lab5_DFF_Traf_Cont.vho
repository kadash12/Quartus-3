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

-- DATE "07/13/2019 22:25:49"

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

ENTITY 	Lab5_DFF_Traf_Cont IS
    PORT (
	D3 : OUT std_logic;
	EV_L : IN std_logic;
	CW : IN std_logic;
	CLK : IN std_logic;
	D2 : OUT std_logic;
	D1 : OUT std_logic;
	D0 : OUT std_logic;
	Green : OUT std_logic;
	Yellow : OUT std_logic;
	Red : OUT std_logic
	);
END Lab5_DFF_Traf_Cont;

-- Design Ports Information
-- D3	=>  Location: PIN_G13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D2	=>  Location: PIN_K7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D1	=>  Location: PIN_H8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D0	=>  Location: PIN_J8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Green	=>  Location: PIN_M10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Yellow	=>  Location: PIN_M11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Red	=>  Location: PIN_M12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- EV_L	=>  Location: PIN_L13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CW	=>  Location: PIN_M13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CLK	=>  Location: PIN_G9,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF Lab5_DFF_Traf_Cont IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_D3 : std_logic;
SIGNAL ww_EV_L : std_logic;
SIGNAL ww_CW : std_logic;
SIGNAL ww_CLK : std_logic;
SIGNAL ww_D2 : std_logic;
SIGNAL ww_D1 : std_logic;
SIGNAL ww_D0 : std_logic;
SIGNAL ww_Green : std_logic;
SIGNAL ww_Yellow : std_logic;
SIGNAL ww_Red : std_logic;
SIGNAL \CLK~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \~QUARTUS_CREATED_UNVM~~busy\ : std_logic;
SIGNAL \D3~output_o\ : std_logic;
SIGNAL \D2~output_o\ : std_logic;
SIGNAL \D1~output_o\ : std_logic;
SIGNAL \D0~output_o\ : std_logic;
SIGNAL \Green~output_o\ : std_logic;
SIGNAL \Yellow~output_o\ : std_logic;
SIGNAL \Red~output_o\ : std_logic;
SIGNAL \CLK~input_o\ : std_logic;
SIGNAL \CLK~inputclkctrl_outclk\ : std_logic;
SIGNAL \EV_L~input_o\ : std_logic;
SIGNAL \inst~q\ : std_logic;
SIGNAL \CW~input_o\ : std_logic;
SIGNAL \inst1|D2~0_combout\ : std_logic;
SIGNAL \inst1|Y~0_combout\ : std_logic;
SIGNAL \inst1|D2~1_combout\ : std_logic;
SIGNAL \inst2~feeder_combout\ : std_logic;
SIGNAL \inst2~q\ : std_logic;
SIGNAL \inst1|D1~0_combout\ : std_logic;
SIGNAL \inst1|D1~1_combout\ : std_logic;
SIGNAL \inst3~feeder_combout\ : std_logic;
SIGNAL \inst3~q\ : std_logic;
SIGNAL \inst1|D3~0_combout\ : std_logic;
SIGNAL \inst1|D0~0_combout\ : std_logic;
SIGNAL \inst1|D0~1_combout\ : std_logic;
SIGNAL \inst1|D0~2_combout\ : std_logic;
SIGNAL \inst1|D0~3_combout\ : std_logic;
SIGNAL \inst4~q\ : std_logic;
SIGNAL \inst1|R~0_combout\ : std_logic;
SIGNAL \inst1|D3~1_combout\ : std_logic;
SIGNAL \inst1|Y~combout\ : std_logic;
SIGNAL \inst1|R~1_combout\ : std_logic;

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

D3 <= ww_D3;
ww_EV_L <= EV_L;
ww_CW <= CW;
ww_CLK <= CLK;
D2 <= ww_D2;
D1 <= ww_D1;
D0 <= ww_D0;
Green <= ww_Green;
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

-- Location: IOOBUF_X18_Y4_N9
\D3~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|D3~1_combout\,
	devoe => ww_devoe,
	o => \D3~output_o\);

-- Location: IOOBUF_X9_Y0_N2
\D2~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|D2~1_combout\,
	devoe => ww_devoe,
	o => \D2~output_o\);

-- Location: IOOBUF_X18_Y4_N16
\D1~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|D1~1_combout\,
	devoe => ww_devoe,
	o => \D1~output_o\);

-- Location: IOOBUF_X14_Y0_N2
\D0~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|D0~3_combout\,
	devoe => ww_devoe,
	o => \D0~output_o\);

-- Location: IOOBUF_X16_Y0_N9
\Green~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|D0~0_combout\,
	devoe => ww_devoe,
	o => \Green~output_o\);

-- Location: IOOBUF_X14_Y0_N16
\Yellow~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|Y~combout\,
	devoe => ww_devoe,
	o => \Yellow~output_o\);

-- Location: IOOBUF_X11_Y0_N2
\Red~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|R~1_combout\,
	devoe => ww_devoe,
	o => \Red~output_o\);

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

-- Location: IOIBUF_X18_Y2_N8
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

-- Location: FF_X15_Y4_N15
inst : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \inst1|D3~1_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst~q\);

-- Location: IOIBUF_X11_Y0_N8
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

-- Location: LCCOMB_X15_Y4_N30
\inst1|D2~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst1|D2~0_combout\ = ((\CW~input_o\ & (\inst4~q\ & \inst3~q\))) # (!\EV_L~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CW~input_o\,
	datab => \EV_L~input_o\,
	datac => \inst4~q\,
	datad => \inst3~q\,
	combout => \inst1|D2~0_combout\);

-- Location: LCCOMB_X15_Y4_N20
\inst1|Y~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst1|Y~0_combout\ = ((\inst~q\) # (\inst4~q\ $ (!\inst3~q\))) # (!\inst2~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111010111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2~q\,
	datab => \inst4~q\,
	datac => \inst3~q\,
	datad => \inst~q\,
	combout => \inst1|Y~0_combout\);

-- Location: LCCOMB_X15_Y4_N10
\inst1|D2~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst1|D2~1_combout\ = ((!\inst2~q\ & (!\inst~q\ & \inst1|D2~0_combout\))) # (!\inst1|Y~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2~q\,
	datab => \inst~q\,
	datac => \inst1|D2~0_combout\,
	datad => \inst1|Y~0_combout\,
	combout => \inst1|D2~1_combout\);

-- Location: LCCOMB_X15_Y4_N28
\inst2~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2~feeder_combout\ = \inst1|D2~1_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst1|D2~1_combout\,
	combout => \inst2~feeder_combout\);

-- Location: FF_X15_Y4_N29
inst2 : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst2~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2~q\);

-- Location: LCCOMB_X15_Y4_N24
\inst1|D1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst1|D1~0_combout\ = (\EV_L~input_o\ & ((\inst4~q\ $ (\inst3~q\)))) # (!\EV_L~input_o\ & ((\inst4~q\ $ (\inst3~q\)) # (!\inst2~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111111110001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \EV_L~input_o\,
	datab => \inst2~q\,
	datac => \inst4~q\,
	datad => \inst3~q\,
	combout => \inst1|D1~0_combout\);

-- Location: LCCOMB_X15_Y4_N2
\inst1|D1~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst1|D1~1_combout\ = (!\inst~q\ & \inst1|D1~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst~q\,
	datad => \inst1|D1~0_combout\,
	combout => \inst1|D1~1_combout\);

-- Location: LCCOMB_X15_Y4_N22
\inst3~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3~feeder_combout\ = \inst1|D1~1_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst1|D1~1_combout\,
	combout => \inst3~feeder_combout\);

-- Location: FF_X15_Y4_N23
inst3 : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst3~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3~q\);

-- Location: LCCOMB_X15_Y4_N18
\inst1|D3~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst1|D3~0_combout\ = (!\inst3~q\ & (\inst~q\ & !\inst2~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3~q\,
	datac => \inst~q\,
	datad => \inst2~q\,
	combout => \inst1|D3~0_combout\);

-- Location: LCCOMB_X15_Y4_N8
\inst1|D0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst1|D0~0_combout\ = (\EV_L~input_o\ & (!\inst~q\ & !\inst2~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \EV_L~input_o\,
	datac => \inst~q\,
	datad => \inst2~q\,
	combout => \inst1|D0~0_combout\);

-- Location: LCCOMB_X15_Y4_N6
\inst1|D0~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst1|D0~1_combout\ = (\inst3~q\ & ((\inst4~q\) # ((!\inst~q\ & \inst2~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3~q\,
	datab => \inst4~q\,
	datac => \inst~q\,
	datad => \inst2~q\,
	combout => \inst1|D0~1_combout\);

-- Location: LCCOMB_X15_Y4_N16
\inst1|D0~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst1|D0~2_combout\ = (\inst4~q\ & (\CW~input_o\ & (\inst1|D0~0_combout\ & \inst1|D0~1_combout\))) # (!\inst4~q\ & (((\inst1|D0~0_combout\) # (\inst1|D0~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CW~input_o\,
	datab => \inst4~q\,
	datac => \inst1|D0~0_combout\,
	datad => \inst1|D0~1_combout\,
	combout => \inst1|D0~2_combout\);

-- Location: LCCOMB_X15_Y4_N26
\inst1|D0~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst1|D0~3_combout\ = (\inst1|D0~2_combout\) # ((\inst1|D3~0_combout\ & ((!\inst4~q\) # (!\EV_L~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \EV_L~input_o\,
	datab => \inst1|D3~0_combout\,
	datac => \inst4~q\,
	datad => \inst1|D0~2_combout\,
	combout => \inst1|D0~3_combout\);

-- Location: FF_X15_Y4_N1
inst4 : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \inst1|D0~3_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4~q\);

-- Location: LCCOMB_X15_Y4_N12
\inst1|R~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst1|R~0_combout\ = (\inst3~q\ & (\inst2~q\ & (!\inst~q\ & \inst4~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3~q\,
	datab => \inst2~q\,
	datac => \inst~q\,
	datad => \inst4~q\,
	combout => \inst1|R~0_combout\);

-- Location: LCCOMB_X15_Y4_N4
\inst1|D3~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst1|D3~1_combout\ = (\inst1|R~0_combout\) # ((\inst1|D3~0_combout\ & ((!\EV_L~input_o\) # (!\inst4~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4~q\,
	datab => \inst1|D3~0_combout\,
	datac => \EV_L~input_o\,
	datad => \inst1|R~0_combout\,
	combout => \inst1|D3~1_combout\);

-- Location: LCCOMB_X15_Y4_N14
\inst1|Y\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst1|Y~combout\ = ((!\inst2~q\ & (!\inst~q\ & !\EV_L~input_o\))) # (!\inst1|Y~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2~q\,
	datab => \inst1|Y~0_combout\,
	datac => \inst~q\,
	datad => \EV_L~input_o\,
	combout => \inst1|Y~combout\);

-- Location: LCCOMB_X15_Y4_N0
\inst1|R~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst1|R~1_combout\ = (\inst2~q\ & (\inst3~q\ & (\inst4~q\ & !\inst~q\))) # (!\inst2~q\ & (!\inst3~q\ & ((\inst~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2~q\,
	datab => \inst3~q\,
	datac => \inst4~q\,
	datad => \inst~q\,
	combout => \inst1|R~1_combout\);

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

ww_D3 <= \D3~output_o\;

ww_D2 <= \D2~output_o\;

ww_D1 <= \D1~output_o\;

ww_D0 <= \D0~output_o\;

ww_Green <= \Green~output_o\;

ww_Yellow <= \Yellow~output_o\;

ww_Red <= \Red~output_o\;
END structure;


