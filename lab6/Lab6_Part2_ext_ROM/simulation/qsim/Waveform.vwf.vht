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

-- *****************************************************************************
-- This file contains a Vhdl test bench with test vectors .The test vectors     
-- are exported from a vector file in the Quartus Waveform Editor and apply to  
-- the top level entity of the current Quartus project .The user can use this   
-- testbench to simulate his design using a third-party simulation tool .       
-- *****************************************************************************
-- Generated on "07/22/2019 12:37:26"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          Lab6_Part2_ext_ROM
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY Lab6_Part2_ext_ROM_vhd_vec_tst IS
END Lab6_Part2_ext_ROM_vhd_vec_tst;
ARCHITECTURE Lab6_Part2_ext_ROM_arch OF Lab6_Part2_ext_ROM_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL A0 : STD_LOGIC;
SIGNAL A1 : STD_LOGIC;
SIGNAL A2 : STD_LOGIC;
SIGNAL A3 : STD_LOGIC;
SIGNAL Addr : STD_LOGIC_VECTOR(14 DOWNTO 0);
SIGNAL B0 : STD_LOGIC;
SIGNAL B1 : STD_LOGIC;
SIGNAL B2 : STD_LOGIC;
SIGNAL B3 : STD_LOGIC;
SIGNAL CE_L : STD_LOGIC;
SIGNAL CIN : STD_LOGIC;
SIGNAL CLK : STD_LOGIC;
SIGNAL COUT : STD_LOGIC;
SIGNAL IR0 : STD_LOGIC;
SIGNAL IR1 : STD_LOGIC;
SIGNAL IR2 : STD_LOGIC;
SIGNAL IRLD : STD_LOGIC;
SIGNAL MemCLK : STD_LOGIC;
SIGNAL MSA0 : STD_LOGIC;
SIGNAL MSA1 : STD_LOGIC;
SIGNAL MSB0 : STD_LOGIC;
SIGNAL MSB1 : STD_LOGIC;
SIGNAL MSC0 : STD_LOGIC;
SIGNAL MSC1 : STD_LOGIC;
SIGNAL MSC2 : STD_LOGIC;
SIGNAL OE_L : STD_LOGIC;
SIGNAL OUT0 : STD_LOGIC;
SIGNAL OUT1 : STD_LOGIC;
SIGNAL OUT2 : STD_LOGIC;
SIGNAL OUT3 : STD_LOGIC;
SIGNAL PCINC : STD_LOGIC;
SIGNAL PCLD : STD_LOGIC;
SIGNAL RESET : STD_LOGIC;
COMPONENT Lab6_Part2_ext_ROM
	PORT (
	A0 : OUT STD_LOGIC;
	A1 : OUT STD_LOGIC;
	A2 : OUT STD_LOGIC;
	A3 : OUT STD_LOGIC;
	Addr : OUT STD_LOGIC_VECTOR(14 DOWNTO 0);
	B0 : OUT STD_LOGIC;
	B1 : OUT STD_LOGIC;
	B2 : OUT STD_LOGIC;
	B3 : OUT STD_LOGIC;
	CE_L : IN STD_LOGIC;
	CIN : IN STD_LOGIC;
	CLK : OUT STD_LOGIC;
	COUT : OUT STD_LOGIC;
	IR0 : OUT STD_LOGIC;
	IR1 : OUT STD_LOGIC;
	IR2 : OUT STD_LOGIC;
	IRLD : OUT STD_LOGIC;
	MemCLK : IN STD_LOGIC;
	MSA0 : OUT STD_LOGIC;
	MSA1 : OUT STD_LOGIC;
	MSB0 : OUT STD_LOGIC;
	MSB1 : OUT STD_LOGIC;
	MSC0 : OUT STD_LOGIC;
	MSC1 : OUT STD_LOGIC;
	MSC2 : OUT STD_LOGIC;
	OE_L : IN STD_LOGIC;
	OUT0 : OUT STD_LOGIC;
	OUT1 : OUT STD_LOGIC;
	OUT2 : OUT STD_LOGIC;
	OUT3 : OUT STD_LOGIC;
	PCINC : OUT STD_LOGIC;
	PCLD : OUT STD_LOGIC;
	RESET : IN STD_LOGIC
	);
END COMPONENT;
BEGIN
	i1 : Lab6_Part2_ext_ROM
	PORT MAP (
-- list connections between master ports and signals
	A0 => A0,
	A1 => A1,
	A2 => A2,
	A3 => A3,
	Addr => Addr,
	B0 => B0,
	B1 => B1,
	B2 => B2,
	B3 => B3,
	CE_L => CE_L,
	CIN => CIN,
	CLK => CLK,
	COUT => COUT,
	IR0 => IR0,
	IR1 => IR1,
	IR2 => IR2,
	IRLD => IRLD,
	MemCLK => MemCLK,
	MSA0 => MSA0,
	MSA1 => MSA1,
	MSB0 => MSB0,
	MSB1 => MSB1,
	MSC0 => MSC0,
	MSC1 => MSC1,
	MSC2 => MSC2,
	OE_L => OE_L,
	OUT0 => OUT0,
	OUT1 => OUT1,
	OUT2 => OUT2,
	OUT3 => OUT3,
	PCINC => PCINC,
	PCLD => PCLD,
	RESET => RESET
	);

-- MemCLK
t_prcs_MemCLK: PROCESS
BEGIN
LOOP
	MemCLK <= '0';
	WAIT FOR 25000 ps;
	MemCLK <= '1';
	WAIT FOR 25000 ps;
	IF (NOW >= 5000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_MemCLK;

-- RESET
t_prcs_RESET: PROCESS
BEGIN
	RESET <= '0';
	WAIT FOR 50000 ps;
	RESET <= '1';
WAIT;
END PROCESS t_prcs_RESET;

-- CIN
t_prcs_CIN: PROCESS
BEGIN
	CIN <= '0';
WAIT;
END PROCESS t_prcs_CIN;

-- CE_L
t_prcs_CE_L: PROCESS
BEGIN
	CE_L <= '1';
WAIT;
END PROCESS t_prcs_CE_L;

-- OE_L
t_prcs_OE_L: PROCESS
BEGIN
	OE_L <= '1';
WAIT;
END PROCESS t_prcs_OE_L;
END Lab6_Part2_ext_ROM_arch;
