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
-- Generated on "07/21/2019 19:38:57"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          ROM_test
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY ROM_test_vhd_vec_tst IS
END ROM_test_vhd_vec_tst;
ARCHITECTURE ROM_test_arch OF ROM_test_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL A : STD_LOGIC_VECTOR(14 DOWNTO 0);
SIGNAL CE_L : STD_LOGIC;
SIGNAL CLK : STD_LOGIC;
SIGNAL D : STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL OE_L : STD_LOGIC;
SIGNAL PC : STD_LOGIC_VECTOR(3 DOWNTO 0);
COMPONENT ROM_test
	PORT (
	A : OUT STD_LOGIC_VECTOR(14 DOWNTO 0);
	CE_L : IN STD_LOGIC;
	CLK : IN STD_LOGIC;
	D : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
	OE_L : IN STD_LOGIC;
	PC : IN STD_LOGIC_VECTOR(3 DOWNTO 0)
	);
END COMPONENT;
BEGIN
	i1 : ROM_test
	PORT MAP (
-- list connections between master ports and signals
	A => A,
	CE_L => CE_L,
	CLK => CLK,
	D => D,
	OE_L => OE_L,
	PC => PC
	);

-- CE_L
t_prcs_CE_L: PROCESS
BEGIN
	CE_L <= '0';
	WAIT FOR 525000 ps;
	CE_L <= '1';
	WAIT FOR 125000 ps;
	CE_L <= '0';
WAIT;
END PROCESS t_prcs_CE_L;

-- OE_L
t_prcs_OE_L: PROCESS
BEGIN
	OE_L <= '0';
	WAIT FOR 600000 ps;
	OE_L <= '1';
	WAIT FOR 125000 ps;
	OE_L <= '0';
WAIT;
END PROCESS t_prcs_OE_L;

-- CLK
t_prcs_CLK: PROCESS
BEGIN
LOOP
	CLK <= '0';
	WAIT FOR 12500 ps;
	CLK <= '1';
	WAIT FOR 12500 ps;
	IF (NOW >= 2000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_CLK;
-- PC[3]
t_prcs_PC_3: PROCESS
BEGIN
	FOR i IN 1 TO 2
	LOOP
		PC(3) <= '0';
		WAIT FOR 400000 ps;
		PC(3) <= '1';
		WAIT FOR 400000 ps;
	END LOOP;
	PC(3) <= '0';
WAIT;
END PROCESS t_prcs_PC_3;
-- PC[2]
t_prcs_PC_2: PROCESS
BEGIN
LOOP
	PC(2) <= '0';
	WAIT FOR 200000 ps;
	PC(2) <= '1';
	WAIT FOR 200000 ps;
	IF (NOW >= 2000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_PC_2;
-- PC[1]
t_prcs_PC_1: PROCESS
BEGIN
LOOP
	PC(1) <= '0';
	WAIT FOR 100000 ps;
	PC(1) <= '1';
	WAIT FOR 100000 ps;
	IF (NOW >= 2000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_PC_1;
-- PC[0]
t_prcs_PC_0: PROCESS
BEGIN
LOOP
	PC(0) <= '0';
	WAIT FOR 50000 ps;
	PC(0) <= '1';
	WAIT FOR 50000 ps;
	IF (NOW >= 2000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_PC_0;
END ROM_test_arch;
