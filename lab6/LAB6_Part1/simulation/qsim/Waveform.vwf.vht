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
-- Generated on "07/17/2019 18:40:30"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          LAB6_Part1
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY LAB6_Part1_vhd_vec_tst IS
END LAB6_Part1_vhd_vec_tst;
ARCHITECTURE LAB6_Part1_arch OF LAB6_Part1_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL A0 : STD_LOGIC;
SIGNAL A1 : STD_LOGIC;
SIGNAL A2 : STD_LOGIC;
SIGNAL A3 : STD_LOGIC;
SIGNAL B0 : STD_LOGIC;
SIGNAL B1 : STD_LOGIC;
SIGNAL B2 : STD_LOGIC;
SIGNAL B3 : STD_LOGIC;
SIGNAL CIN : STD_LOGIC;
SIGNAL CLK : STD_LOGIC;
SIGNAL COUT : STD_LOGIC;
SIGNAL IN0 : STD_LOGIC;
SIGNAL IN1 : STD_LOGIC;
SIGNAL IN2 : STD_LOGIC;
SIGNAL IN3 : STD_LOGIC;
SIGNAL IR0 : STD_LOGIC;
SIGNAL IR1 : STD_LOGIC;
SIGNAL IRLD : STD_LOGIC;
SIGNAL MSA0 : STD_LOGIC;
SIGNAL MSA1 : STD_LOGIC;
SIGNAL MSB0 : STD_LOGIC;
SIGNAL MSB1 : STD_LOGIC;
SIGNAL MSC0 : STD_LOGIC;
SIGNAL MSC1 : STD_LOGIC;
SIGNAL MSC2 : STD_LOGIC;
SIGNAL OUT0 : STD_LOGIC;
SIGNAL OUT1 : STD_LOGIC;
SIGNAL OUT2 : STD_LOGIC;
SIGNAL OUT3 : STD_LOGIC;
SIGNAL RESET : STD_LOGIC;
COMPONENT LAB6_Part1
	PORT (
	A0 : OUT STD_LOGIC;
	A1 : OUT STD_LOGIC;
	A2 : OUT STD_LOGIC;
	A3 : OUT STD_LOGIC;
	B0 : OUT STD_LOGIC;
	B1 : OUT STD_LOGIC;
	B2 : OUT STD_LOGIC;
	B3 : OUT STD_LOGIC;
	CIN : IN STD_LOGIC;
	CLK : IN STD_LOGIC;
	COUT : OUT STD_LOGIC;
	IN0 : IN STD_LOGIC;
	IN1 : IN STD_LOGIC;
	IN2 : IN STD_LOGIC;
	IN3 : IN STD_LOGIC;
	IR0 : OUT STD_LOGIC;
	IR1 : OUT STD_LOGIC;
	IRLD : OUT STD_LOGIC;
	MSA0 : OUT STD_LOGIC;
	MSA1 : OUT STD_LOGIC;
	MSB0 : OUT STD_LOGIC;
	MSB1 : OUT STD_LOGIC;
	MSC0 : OUT STD_LOGIC;
	MSC1 : OUT STD_LOGIC;
	MSC2 : OUT STD_LOGIC;
	OUT0 : OUT STD_LOGIC;
	OUT1 : OUT STD_LOGIC;
	OUT2 : OUT STD_LOGIC;
	OUT3 : OUT STD_LOGIC;
	RESET : IN STD_LOGIC
	);
END COMPONENT;
BEGIN
	i1 : LAB6_Part1
	PORT MAP (
-- list connections between master ports and signals
	A0 => A0,
	A1 => A1,
	A2 => A2,
	A3 => A3,
	B0 => B0,
	B1 => B1,
	B2 => B2,
	B3 => B3,
	CIN => CIN,
	CLK => CLK,
	COUT => COUT,
	IN0 => IN0,
	IN1 => IN1,
	IN2 => IN2,
	IN3 => IN3,
	IR0 => IR0,
	IR1 => IR1,
	IRLD => IRLD,
	MSA0 => MSA0,
	MSA1 => MSA1,
	MSB0 => MSB0,
	MSB1 => MSB1,
	MSC0 => MSC0,
	MSC1 => MSC1,
	MSC2 => MSC2,
	OUT0 => OUT0,
	OUT1 => OUT1,
	OUT2 => OUT2,
	OUT3 => OUT3,
	RESET => RESET
	);

-- CLK
t_prcs_CLK: PROCESS
BEGIN
LOOP
	CLK <= '0';
	WAIT FOR 25000 ps;
	CLK <= '1';
	WAIT FOR 25000 ps;
	IF (NOW >= 1200000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_CLK;

-- CIN
t_prcs_CIN: PROCESS
BEGIN
	CIN <= '0';
WAIT;
END PROCESS t_prcs_CIN;

-- RESET
t_prcs_RESET: PROCESS
BEGIN
	RESET <= '1';
WAIT;
END PROCESS t_prcs_RESET;

-- IN3
t_prcs_IN3: PROCESS
BEGIN
	IN3 <= '0';
	WAIT FOR 50000 ps;
	IN3 <= '1';
	WAIT FOR 50000 ps;
	IN3 <= '0';
WAIT;
END PROCESS t_prcs_IN3;

-- IN2
t_prcs_IN2: PROCESS
BEGIN
	IN2 <= '0';
	WAIT FOR 50000 ps;
	IN2 <= '1';
	WAIT FOR 50000 ps;
	IN2 <= '0';
WAIT;
END PROCESS t_prcs_IN2;

-- IN1
t_prcs_IN1: PROCESS
BEGIN
	IN1 <= '0';
	WAIT FOR 50000 ps;
	IN1 <= '1';
	WAIT FOR 50000 ps;
	IN1 <= '0';
	WAIT FOR 100000 ps;
	IN1 <= '1';
	WAIT FOR 50000 ps;
	IN1 <= '0';
	WAIT FOR 50000 ps;
	IN1 <= '1';
	WAIT FOR 50000 ps;
	IN1 <= '0';
WAIT;
END PROCESS t_prcs_IN1;

-- IN0
t_prcs_IN0: PROCESS
BEGIN
	IN0 <= '1';
	WAIT FOR 50000 ps;
	IN0 <= '0';
	WAIT FOR 250000 ps;
	IN0 <= '1';
	WAIT FOR 50000 ps;
	IN0 <= '0';
WAIT;
END PROCESS t_prcs_IN0;
END LAB6_Part1_arch;
