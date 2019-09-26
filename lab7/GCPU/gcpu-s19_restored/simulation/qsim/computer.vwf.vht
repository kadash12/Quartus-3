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
-- Generated on "07/25/2019 21:55:48"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          computer
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY computer_vhd_vec_tst IS
END computer_vhd_vec_tst;
ARCHITECTURE computer_arch OF computer_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL A : STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL ADDR : STD_LOGIC_VECTOR(15 DOWNTO 0);
SIGNAL ALU : STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL B : STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL CLOCK : STD_LOGIC;
SIGNAL DATA : STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL IR : STD_LOGIC_VECTOR(5 DOWNTO 0);
SIGNAL MCLK : STD_LOGIC;
SIGNAL MSC : STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL N_FLG : STD_LOGIC;
SIGNAL nRESET : STD_LOGIC;
SIGNAL R_nW : STD_LOGIC;
SIGNAL RAM_Enable : STD_LOGIC;
SIGNAL RAM_OUT : STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL RAM_RD_EN : STD_LOGIC;
SIGNAL RAM_WR_EN : STD_LOGIC;
SIGNAL ROM_Enable : STD_LOGIC;
SIGNAL ROM_OUT : STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL STATE : STD_LOGIC_VECTOR(5 DOWNTO 0);
SIGNAL X : STD_LOGIC_VECTOR(15 DOWNTO 0);
SIGNAL XDISP : STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL Y : STD_LOGIC_VECTOR(15 DOWNTO 0);
SIGNAL YDISP : STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL Z_FLG : STD_LOGIC;
COMPONENT computer
	PORT (
	A : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
	ADDR : OUT STD_LOGIC_VECTOR(15 DOWNTO 0);
	ALU : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
	B : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
	CLOCK : OUT STD_LOGIC;
	DATA : INOUT STD_LOGIC_VECTOR(7 DOWNTO 0);
	IR : OUT STD_LOGIC_VECTOR(5 DOWNTO 0);
	MCLK : IN STD_LOGIC;
	MSC : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
	N_FLG : OUT STD_LOGIC;
	nRESET : IN STD_LOGIC;
	R_nW : OUT STD_LOGIC;
	RAM_Enable : OUT STD_LOGIC;
	RAM_OUT : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
	RAM_RD_EN : OUT STD_LOGIC;
	RAM_WR_EN : OUT STD_LOGIC;
	ROM_Enable : OUT STD_LOGIC;
	ROM_OUT : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
	STATE : OUT STD_LOGIC_VECTOR(5 DOWNTO 0);
	X : OUT STD_LOGIC_VECTOR(15 DOWNTO 0);
	XDISP : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
	Y : OUT STD_LOGIC_VECTOR(15 DOWNTO 0);
	YDISP : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
	Z_FLG : OUT STD_LOGIC
	);
END COMPONENT;
BEGIN
	i1 : computer
	PORT MAP (
-- list connections between master ports and signals
	A => A,
	ADDR => ADDR,
	ALU => ALU,
	B => B,
	CLOCK => CLOCK,
	DATA => DATA,
	IR => IR,
	MCLK => MCLK,
	MSC => MSC,
	N_FLG => N_FLG,
	nRESET => nRESET,
	R_nW => R_nW,
	RAM_Enable => RAM_Enable,
	RAM_OUT => RAM_OUT,
	RAM_RD_EN => RAM_RD_EN,
	RAM_WR_EN => RAM_WR_EN,
	ROM_Enable => ROM_Enable,
	ROM_OUT => ROM_OUT,
	STATE => STATE,
	X => X,
	XDISP => XDISP,
	Y => Y,
	YDISP => YDISP,
	Z_FLG => Z_FLG
	);

-- MCLK
t_prcs_MCLK: PROCESS
BEGIN
LOOP
	MCLK <= '0';
	WAIT FOR 25000 ps;
	MCLK <= '1';
	WAIT FOR 25000 ps;
	IF (NOW >= 20000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_MCLK;

-- nRESET
t_prcs_nRESET: PROCESS
BEGIN
	nRESET <= '0';
	WAIT FOR 200000 ps;
	nRESET <= '1';
WAIT;
END PROCESS t_prcs_nRESET;
-- DATA[7]
t_prcs_DATA_7: PROCESS
BEGIN
	DATA(7) <= 'Z';
WAIT;
END PROCESS t_prcs_DATA_7;
-- DATA[6]
t_prcs_DATA_6: PROCESS
BEGIN
	DATA(6) <= 'Z';
WAIT;
END PROCESS t_prcs_DATA_6;
-- DATA[5]
t_prcs_DATA_5: PROCESS
BEGIN
	DATA(5) <= 'Z';
WAIT;
END PROCESS t_prcs_DATA_5;
-- DATA[4]
t_prcs_DATA_4: PROCESS
BEGIN
	DATA(4) <= 'Z';
WAIT;
END PROCESS t_prcs_DATA_4;
-- DATA[3]
t_prcs_DATA_3: PROCESS
BEGIN
	DATA(3) <= 'Z';
WAIT;
END PROCESS t_prcs_DATA_3;
-- DATA[2]
t_prcs_DATA_2: PROCESS
BEGIN
	DATA(2) <= 'Z';
WAIT;
END PROCESS t_prcs_DATA_2;
-- DATA[1]
t_prcs_DATA_1: PROCESS
BEGIN
	DATA(1) <= 'Z';
WAIT;
END PROCESS t_prcs_DATA_1;
-- DATA[0]
t_prcs_DATA_0: PROCESS
BEGIN
	DATA(0) <= 'Z';
WAIT;
END PROCESS t_prcs_DATA_0;
END computer_arch;
