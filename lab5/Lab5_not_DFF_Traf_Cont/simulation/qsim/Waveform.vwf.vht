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
-- Generated on "07/13/2019 18:43:31"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          Lab5_not_DFF_Traf_Cont
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY Lab5_not_DFF_Traf_Cont_vhd_vec_tst IS
END Lab5_not_DFF_Traf_Cont_vhd_vec_tst;
ARCHITECTURE Lab5_not_DFF_Traf_Cont_arch OF Lab5_not_DFF_Traf_Cont_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL CLK : STD_LOGIC;
SIGNAL CW : STD_LOGIC;
SIGNAL EV_L : STD_LOGIC;
SIGNAL Green : STD_LOGIC;
SIGNAL Q0 : STD_LOGIC;
SIGNAL Q1 : STD_LOGIC;
SIGNAL Q2 : STD_LOGIC;
SIGNAL Q3 : STD_LOGIC;
SIGNAL Red : STD_LOGIC;
SIGNAL Yellow : STD_LOGIC;
COMPONENT Lab5_not_DFF_Traf_Cont
	PORT (
	CLK : IN STD_LOGIC;
	CW : IN STD_LOGIC;
	EV_L : IN STD_LOGIC;
	Green : OUT STD_LOGIC;
	Q0 : OUT STD_LOGIC;
	Q1 : OUT STD_LOGIC;
	Q2 : OUT STD_LOGIC;
	Q3 : OUT STD_LOGIC;
	Red : OUT STD_LOGIC;
	Yellow : OUT STD_LOGIC
	);
END COMPONENT;
BEGIN
	i1 : Lab5_not_DFF_Traf_Cont
	PORT MAP (
-- list connections between master ports and signals
	CLK => CLK,
	CW => CW,
	EV_L => EV_L,
	Green => Green,
	Q0 => Q0,
	Q1 => Q1,
	Q2 => Q2,
	Q3 => Q3,
	Red => Red,
	Yellow => Yellow
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

-- CW
t_prcs_CW: PROCESS
BEGIN
	CW <= '1';
	WAIT FOR 50000 ps;
	FOR i IN 1 TO 11
	LOOP
		CW <= '0';
		WAIT FOR 50000 ps;
		CW <= '1';
		WAIT FOR 50000 ps;
	END LOOP;
	CW <= '0';
WAIT;
END PROCESS t_prcs_CW;

-- EV_L
t_prcs_EV_L: PROCESS
BEGIN
LOOP
	EV_L <= '0';
	WAIT FOR 150000 ps;
	EV_L <= '1';
	WAIT FOR 150000 ps;
	IF (NOW >= 1200000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_EV_L;
END Lab5_not_DFF_Traf_Cont_arch;
