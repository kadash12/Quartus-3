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

-- DATE "07/21/2019 19:39:01"

-- 
-- Device: Altera 5M570ZT100C5 Package TQFP100
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY IEEE;
LIBRARY MAXV;
USE IEEE.STD_LOGIC_1164.ALL;
USE MAXV.MAXV_COMPONENTS.ALL;

ENTITY 	ROM_test IS
    PORT (
	A : OUT std_logic_vector(14 DOWNTO 0);
	PC : IN std_logic_vector(3 DOWNTO 0);
	D : OUT std_logic_vector(7 DOWNTO 0);
	CLK : IN std_logic;
	OE_L : IN std_logic;
	CE_L : IN std_logic
	);
END ROM_test;

-- Design Ports Information


ARCHITECTURE structure OF ROM_test IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_A : std_logic_vector(14 DOWNTO 0);
SIGNAL ww_PC : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_D : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_CLK : std_logic;
SIGNAL ww_OE_L : std_logic;
SIGNAL ww_CE_L : std_logic;
SIGNAL \CLK~combout\ : std_logic;
SIGNAL \OE_L~combout\ : std_logic;
SIGNAL \CE_L~combout\ : std_logic;
SIGNAL \inst|D[7]~0_combout\ : std_logic;
SIGNAL \PC~combout\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst|D_sig\ : std_logic_vector(7 DOWNTO 0);

BEGIN

A <= ww_A;
ww_PC <= PC;
D <= ww_D;
ww_CLK <= CLK;
ww_OE_L <= OE_L;
ww_CE_L <= CE_L;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

-- Location: PIN_26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\PC[3]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_PC(3),
	combout => \PC~combout\(3));

-- Location: PIN_81,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\PC[2]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_PC(2),
	combout => \PC~combout\(2));

-- Location: PIN_56,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\PC[1]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_PC(1),
	combout => \PC~combout\(1));

-- Location: PIN_36,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\PC[0]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_PC(0),
	combout => \PC~combout\(0));

-- Location: PIN_12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\CLK~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_CLK,
	combout => \CLK~combout\);

-- Location: LC_X7_Y5_N4
\inst|D_sig[7]\ : maxv_lcell
-- Equation(s):
-- \inst|D_sig\(7) = DFFEAS((\PC~combout\(0) & (!\PC~combout\(3) & (\PC~combout\(2) $ (\PC~combout\(1))))), GLOBAL(\CLK~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0408",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \CLK~combout\,
	dataa => \PC~combout\(2),
	datab => \PC~combout\(0),
	datac => \PC~combout\(3),
	datad => \PC~combout\(1),
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|D_sig\(7));

-- Location: PIN_74,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\OE_L~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_OE_L,
	combout => \OE_L~combout\);

-- Location: PIN_70,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\CE_L~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_CE_L,
	combout => \CE_L~combout\);

-- Location: LC_X12_Y7_N4
\inst|D[7]~0\ : maxv_lcell
-- Equation(s):
-- \inst|D[7]~0_combout\ = (((!\OE_L~combout\ & !\CE_L~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "000f",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datac => \OE_L~combout\,
	datad => \CE_L~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \inst|D[7]~0_combout\);

-- Location: LC_X7_Y5_N2
\inst|D_sig[6]\ : maxv_lcell
-- Equation(s):
-- \inst|D_sig\(6) = DFFEAS((!\PC~combout\(3) & (\PC~combout\(1) & ((!\PC~combout\(0)) # (!\PC~combout\(2))))), GLOBAL(\CLK~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0700",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \CLK~combout\,
	dataa => \PC~combout\(2),
	datab => \PC~combout\(0),
	datac => \PC~combout\(3),
	datad => \PC~combout\(1),
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|D_sig\(6));

-- Location: LC_X7_Y5_N5
\inst|D_sig[5]\ : maxv_lcell
-- Equation(s):
-- \inst|D_sig\(5) = DFFEAS((!\PC~combout\(2) & (!\PC~combout\(3) & (\PC~combout\(0) $ (!\PC~combout\(1))))), GLOBAL(\CLK~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0401",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \CLK~combout\,
	dataa => \PC~combout\(2),
	datab => \PC~combout\(0),
	datac => \PC~combout\(3),
	datad => \PC~combout\(1),
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|D_sig\(5));

-- Location: LC_X7_Y5_N9
\inst|D_sig[4]\ : maxv_lcell
-- Equation(s):
-- \inst|D_sig\(4) = DFFEAS((!\PC~combout\(3) & ((\PC~combout\(0) & (\PC~combout\(2))) # (!\PC~combout\(0) & ((!\PC~combout\(1)))))), GLOBAL(\CLK~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "080b",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \CLK~combout\,
	dataa => \PC~combout\(2),
	datab => \PC~combout\(0),
	datac => \PC~combout\(3),
	datad => \PC~combout\(1),
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|D_sig\(4));

-- Location: LC_X7_Y5_N8
\inst|D_sig[3]\ : maxv_lcell
-- Equation(s):
-- \inst|D_sig\(3) = DFFEAS((!\PC~combout\(3) & ((\PC~combout\(2) & ((!\PC~combout\(1)))) # (!\PC~combout\(2) & (\PC~combout\(0) & \PC~combout\(1))))), GLOBAL(\CLK~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "040a",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \CLK~combout\,
	dataa => \PC~combout\(2),
	datab => \PC~combout\(0),
	datac => \PC~combout\(3),
	datad => \PC~combout\(1),
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|D_sig\(3));

-- Location: LC_X7_Y5_N6
\inst|D_sig[2]\ : maxv_lcell
-- Equation(s):
-- \inst|D_sig\(2) = DFFEAS((!\PC~combout\(3) & ((\PC~combout\(2) & (!\PC~combout\(0) & \PC~combout\(1))) # (!\PC~combout\(2) & ((\PC~combout\(1)) # (!\PC~combout\(0)))))), GLOBAL(\CLK~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0701",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \CLK~combout\,
	dataa => \PC~combout\(2),
	datab => \PC~combout\(0),
	datac => \PC~combout\(3),
	datad => \PC~combout\(1),
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|D_sig\(2));

-- Location: LC_X7_Y5_N7
\inst|D_sig[1]\ : maxv_lcell
-- Equation(s):
-- \inst|D_sig\(1) = DFFEAS((!\PC~combout\(3) & ((\PC~combout\(2)) # (\PC~combout\(0) $ (!\PC~combout\(1))))), GLOBAL(\CLK~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0e0b",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \CLK~combout\,
	dataa => \PC~combout\(2),
	datab => \PC~combout\(0),
	datac => \PC~combout\(3),
	datad => \PC~combout\(1),
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|D_sig\(1));

-- Location: LC_X7_Y5_N3
\inst|D_sig[0]\ : maxv_lcell
-- Equation(s):
-- \inst|D_sig\(0) = DFFEAS((!\PC~combout\(3) & ((\PC~combout\(2) & (\PC~combout\(0) $ (\PC~combout\(1)))) # (!\PC~combout\(2) & ((\PC~combout\(0)) # (!\PC~combout\(1)))))), GLOBAL(\CLK~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "060d",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \CLK~combout\,
	dataa => \PC~combout\(2),
	datab => \PC~combout\(0),
	datac => \PC~combout\(3),
	datad => \PC~combout\(1),
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|D_sig\(0));

-- Location: PIN_68,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\A[14]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => GND,
	oe => VCC,
	padio => ww_A(14));

-- Location: PIN_50,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\A[13]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => GND,
	oe => VCC,
	padio => ww_A(13));

-- Location: PIN_91,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\A[12]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => GND,
	oe => VCC,
	padio => ww_A(12));

-- Location: PIN_96,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\A[11]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => GND,
	oe => VCC,
	padio => ww_A(11));

-- Location: PIN_82,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\A[10]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => GND,
	oe => VCC,
	padio => ww_A(10));

-- Location: PIN_52,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\A[9]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => GND,
	oe => VCC,
	padio => ww_A(9));

-- Location: PIN_76,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\A[8]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => GND,
	oe => VCC,
	padio => ww_A(8));

-- Location: PIN_97,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\A[7]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => GND,
	oe => VCC,
	padio => ww_A(7));

-- Location: PIN_53,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\A[6]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => GND,
	oe => VCC,
	padio => ww_A(6));

-- Location: PIN_69,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\A[5]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => GND,
	oe => VCC,
	padio => ww_A(5));

-- Location: PIN_78,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\A[4]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => GND,
	oe => VCC,
	padio => ww_A(4));

-- Location: PIN_27,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\A[3]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \PC~combout\(3),
	oe => VCC,
	padio => ww_A(3));

-- Location: PIN_86,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\A[2]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \PC~combout\(2),
	oe => VCC,
	padio => ww_A(2));

-- Location: PIN_57,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\A[1]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \PC~combout\(1),
	oe => VCC,
	padio => ww_A(1));

-- Location: PIN_34,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\A[0]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \PC~combout\(0),
	oe => VCC,
	padio => ww_A(0));

-- Location: PIN_87,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\D[7]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \inst|D_sig\(7),
	oe => \inst|D[7]~0_combout\,
	padio => ww_D(7));

-- Location: PIN_85,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\D[6]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \inst|D_sig\(6),
	oe => \inst|D[7]~0_combout\,
	padio => ww_D(6));

-- Location: PIN_67,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\D[5]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \inst|D_sig\(5),
	oe => \inst|D[7]~0_combout\,
	padio => ww_D(5));

-- Location: PIN_38,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\D[4]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \inst|D_sig\(4),
	oe => \inst|D[7]~0_combout\,
	padio => ww_D(4));

-- Location: PIN_89,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\D[3]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \inst|D_sig\(3),
	oe => \inst|D[7]~0_combout\,
	padio => ww_D(3));

-- Location: PIN_44,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\D[2]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \inst|D_sig\(2),
	oe => \inst|D[7]~0_combout\,
	padio => ww_D(2));

-- Location: PIN_43,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\D[1]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \inst|D_sig\(1),
	oe => \inst|D[7]~0_combout\,
	padio => ww_D(1));

-- Location: PIN_42,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\D[0]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \inst|D_sig\(0),
	oe => \inst|D[7]~0_combout\,
	padio => ww_D(0));
END structure;


