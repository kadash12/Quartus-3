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

-- DATE "07/25/2019 21:55:55"

-- 
-- Device: Altera 5CSXFC6D6F31I7ES Package FBGA896
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY ALTERA;
LIBRARY ALTERA_LNSIM;
LIBRARY CYCLONEV;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE ALTERA_LNSIM.ALTERA_LNSIM_COMPONENTS.ALL;
USE CYCLONEV.CYCLONEV_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	computer IS
    PORT (
	N_FLG : OUT std_logic;
	CLOCK : OUT std_logic;
	MCLK : IN std_logic;
	nRESET : IN std_logic;
	DATA : INOUT std_logic_vector(7 DOWNTO 0);
	Z_FLG : OUT std_logic;
	ROM_Enable : OUT std_logic;
	ADDR : OUT std_logic_vector(15 DOWNTO 0);
	R_nW : OUT std_logic;
	RAM_Enable : OUT std_logic;
	RAM_RD_EN : OUT std_logic;
	RAM_WR_EN : OUT std_logic;
	A : OUT std_logic_vector(7 DOWNTO 0);
	ALU : OUT std_logic_vector(7 DOWNTO 0);
	B : OUT std_logic_vector(7 DOWNTO 0);
	ROM_OUT : OUT std_logic_vector(7 DOWNTO 0);
	RAM_OUT : OUT std_logic_vector(7 DOWNTO 0);
	IR : OUT std_logic_vector(5 DOWNTO 0);
	MSC : OUT std_logic_vector(3 DOWNTO 0);
	STATE : OUT std_logic_vector(5 DOWNTO 0);
	X : OUT std_logic_vector(15 DOWNTO 0);
	XDISP : OUT std_logic_vector(7 DOWNTO 0);
	Y : OUT std_logic_vector(15 DOWNTO 0);
	YDISP : OUT std_logic_vector(7 DOWNTO 0)
	);
END computer;

-- Design Ports Information
-- N_FLG	=>  Location: PIN_AK29,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CLOCK	=>  Location: PIN_AE28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Z_FLG	=>  Location: PIN_AG15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ROM_Enable	=>  Location: PIN_AJ17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ADDR[15]	=>  Location: PIN_AE14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ADDR[14]	=>  Location: PIN_AJ5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ADDR[13]	=>  Location: PIN_AH10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ADDR[12]	=>  Location: PIN_AG27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ADDR[11]	=>  Location: PIN_AK21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ADDR[10]	=>  Location: PIN_AF21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ADDR[9]	=>  Location: PIN_Y18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ADDR[8]	=>  Location: PIN_AK24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ADDR[7]	=>  Location: PIN_AF20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ADDR[6]	=>  Location: PIN_Y17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ADDR[5]	=>  Location: PIN_AA18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ADDR[4]	=>  Location: PIN_AA19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ADDR[3]	=>  Location: PIN_Y21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ADDR[2]	=>  Location: PIN_AK22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ADDR[1]	=>  Location: PIN_AJ22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ADDR[0]	=>  Location: PIN_AH23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- R_nW	=>  Location: PIN_AJ11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RAM_Enable	=>  Location: PIN_AJ24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RAM_RD_EN	=>  Location: PIN_A10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RAM_WR_EN	=>  Location: PIN_W24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[7]	=>  Location: PIN_Y19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[6]	=>  Location: PIN_V16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[5]	=>  Location: PIN_AB23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[4]	=>  Location: PIN_AK13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[3]	=>  Location: PIN_AF16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[2]	=>  Location: PIN_AG30,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[1]	=>  Location: PIN_AD14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[0]	=>  Location: PIN_AF30,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ALU[7]	=>  Location: PIN_AG12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ALU[6]	=>  Location: PIN_AB15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ALU[5]	=>  Location: PIN_AG16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ALU[4]	=>  Location: PIN_W20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ALU[3]	=>  Location: PIN_AJ16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ALU[2]	=>  Location: PIN_AC20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ALU[1]	=>  Location: PIN_AH8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ALU[0]	=>  Location: PIN_AE17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[7]	=>  Location: PIN_AJ10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[6]	=>  Location: PIN_AF18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[5]	=>  Location: PIN_AG17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[4]	=>  Location: PIN_AH17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[3]	=>  Location: PIN_AH12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[2]	=>  Location: PIN_AA14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[1]	=>  Location: PIN_AG13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[0]	=>  Location: PIN_AA15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ROM_OUT[7]	=>  Location: PIN_H15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ROM_OUT[6]	=>  Location: PIN_AJ29,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ROM_OUT[5]	=>  Location: PIN_AK16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ROM_OUT[4]	=>  Location: PIN_A11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ROM_OUT[3]	=>  Location: PIN_AF14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ROM_OUT[2]	=>  Location: PIN_AH20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ROM_OUT[1]	=>  Location: PIN_AK7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ROM_OUT[0]	=>  Location: PIN_AJ27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RAM_OUT[7]	=>  Location: PIN_B11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RAM_OUT[6]	=>  Location: PIN_AH14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RAM_OUT[5]	=>  Location: PIN_Y16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RAM_OUT[4]	=>  Location: PIN_AH15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RAM_OUT[3]	=>  Location: PIN_AJ14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RAM_OUT[2]	=>  Location: PIN_AJ12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RAM_OUT[1]	=>  Location: PIN_AD20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RAM_OUT[0]	=>  Location: PIN_A13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- IR[5]	=>  Location: PIN_AE18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- IR[4]	=>  Location: PIN_AG25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- IR[3]	=>  Location: PIN_AK26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- IR[2]	=>  Location: PIN_AC14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- IR[1]	=>  Location: PIN_W15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- IR[0]	=>  Location: PIN_AD17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- MSC[3]	=>  Location: PIN_AG21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- MSC[2]	=>  Location: PIN_W16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- MSC[1]	=>  Location: PIN_AB26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- MSC[0]	=>  Location: PIN_AB17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- STATE[5]	=>  Location: PIN_AG23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- STATE[4]	=>  Location: PIN_AH19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- STATE[3]	=>  Location: PIN_AG20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- STATE[2]	=>  Location: PIN_AH18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- STATE[1]	=>  Location: PIN_AB25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- STATE[0]	=>  Location: PIN_AG18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- X[15]	=>  Location: PIN_AK9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- X[14]	=>  Location: PIN_AF28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- X[13]	=>  Location: PIN_W19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- X[12]	=>  Location: PIN_AK14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- X[11]	=>  Location: PIN_AA25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- X[10]	=>  Location: PIN_AJ21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- X[9]	=>  Location: PIN_AE27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- X[8]	=>  Location: PIN_AF19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- X[7]	=>  Location: PIN_AD25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- X[6]	=>  Location: PIN_Y24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- X[5]	=>  Location: PIN_Y23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- X[4]	=>  Location: PIN_V23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- X[3]	=>  Location: PIN_AC18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- X[2]	=>  Location: PIN_AA24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- X[1]	=>  Location: PIN_AE19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- X[0]	=>  Location: PIN_AG28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- XDISP[7]	=>  Location: PIN_G15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- XDISP[6]	=>  Location: PIN_AH25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- XDISP[5]	=>  Location: PIN_B13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- XDISP[4]	=>  Location: PIN_C8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- XDISP[3]	=>  Location: PIN_V18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- XDISP[2]	=>  Location: PIN_AD19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- XDISP[1]	=>  Location: PIN_AH13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- XDISP[0]	=>  Location: PIN_B12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[15]	=>  Location: PIN_AC27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[14]	=>  Location: PIN_AF15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[13]	=>  Location: PIN_AF29,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[12]	=>  Location: PIN_AC25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[11]	=>  Location: PIN_AG22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[10]	=>  Location: PIN_AJ26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[9]	=>  Location: PIN_AK28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[8]	=>  Location: PIN_AH24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[7]	=>  Location: PIN_AF23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[6]	=>  Location: PIN_W22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[5]	=>  Location: PIN_AK12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[4]	=>  Location: PIN_AH22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[3]	=>  Location: PIN_AH29,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[2]	=>  Location: PIN_AJ20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[1]	=>  Location: PIN_AE16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[0]	=>  Location: PIN_AA16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- YDISP[7]	=>  Location: PIN_AJ25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- YDISP[6]	=>  Location: PIN_AK11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- YDISP[5]	=>  Location: PIN_AE23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- YDISP[4]	=>  Location: PIN_AK23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- YDISP[3]	=>  Location: PIN_AF24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- YDISP[2]	=>  Location: PIN_AH7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- YDISP[1]	=>  Location: PIN_AE22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- YDISP[0]	=>  Location: PIN_AK27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DATA[7]	=>  Location: PIN_W21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DATA[6]	=>  Location: PIN_AK19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DATA[5]	=>  Location: PIN_V17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DATA[4]	=>  Location: PIN_AJ19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DATA[3]	=>  Location: PIN_AD27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DATA[2]	=>  Location: PIN_AB22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DATA[1]	=>  Location: PIN_AE26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DATA[0]	=>  Location: PIN_W17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- nRESET	=>  Location: PIN_AK18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- MCLK	=>  Location: PIN_Y27,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF computer IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_N_FLG : std_logic;
SIGNAL ww_CLOCK : std_logic;
SIGNAL ww_MCLK : std_logic;
SIGNAL ww_nRESET : std_logic;
SIGNAL ww_Z_FLG : std_logic;
SIGNAL ww_ROM_Enable : std_logic;
SIGNAL ww_ADDR : std_logic_vector(15 DOWNTO 0);
SIGNAL ww_R_nW : std_logic;
SIGNAL ww_RAM_Enable : std_logic;
SIGNAL ww_RAM_RD_EN : std_logic;
SIGNAL ww_RAM_WR_EN : std_logic;
SIGNAL ww_A : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_ALU : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_B : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_ROM_OUT : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_RAM_OUT : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_IR : std_logic_vector(5 DOWNTO 0);
SIGNAL ww_MSC : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_STATE : std_logic_vector(5 DOWNTO 0);
SIGNAL ww_X : std_logic_vector(15 DOWNTO 0);
SIGNAL ww_XDISP : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_Y : std_logic_vector(15 DOWNTO 0);
SIGNAL ww_YDISP : std_logic_vector(7 DOWNTO 0);
SIGNAL \inst|altsyncram_component|auto_generated|ram_block1a6_PORTAADDR_bus\ : std_logic_vector(11 DOWNTO 0);
SIGNAL \inst|altsyncram_component|auto_generated|ram_block1a6_PORTADATAOUT_bus\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \inst|altsyncram_component|auto_generated|ram_block1a4_PORTAADDR_bus\ : std_logic_vector(11 DOWNTO 0);
SIGNAL \inst|altsyncram_component|auto_generated|ram_block1a4_PORTADATAOUT_bus\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \inst|altsyncram_component|auto_generated|ram_block1a2_PORTAADDR_bus\ : std_logic_vector(11 DOWNTO 0);
SIGNAL \inst|altsyncram_component|auto_generated|ram_block1a2_PORTADATAOUT_bus\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \inst|altsyncram_component|auto_generated|ram_block1a0_PORTAADDR_bus\ : std_logic_vector(11 DOWNTO 0);
SIGNAL \inst|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \inst11|altsyncram_component|auto_generated|ram_block1a6_PORTADATAIN_bus\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \inst11|altsyncram_component|auto_generated|ram_block1a6_PORTAADDR_bus\ : std_logic_vector(11 DOWNTO 0);
SIGNAL \inst11|altsyncram_component|auto_generated|ram_block1a6_PORTADATAOUT_bus\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \inst11|altsyncram_component|auto_generated|ram_block1a4_PORTADATAIN_bus\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \inst11|altsyncram_component|auto_generated|ram_block1a4_PORTAADDR_bus\ : std_logic_vector(11 DOWNTO 0);
SIGNAL \inst11|altsyncram_component|auto_generated|ram_block1a4_PORTADATAOUT_bus\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \inst11|altsyncram_component|auto_generated|ram_block1a2_PORTADATAIN_bus\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \inst11|altsyncram_component|auto_generated|ram_block1a2_PORTAADDR_bus\ : std_logic_vector(11 DOWNTO 0);
SIGNAL \inst11|altsyncram_component|auto_generated|ram_block1a2_PORTADATAOUT_bus\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \inst11|altsyncram_component|auto_generated|ram_block1a0_PORTADATAIN_bus\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \inst11|altsyncram_component|auto_generated|ram_block1a0_PORTAADDR_bus\ : std_logic_vector(11 DOWNTO 0);
SIGNAL \inst11|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \MCLK~input_o\ : std_logic;
SIGNAL \MCLK~inputCLKENA0_outclk\ : std_logic;
SIGNAL \inst3~0_combout\ : std_logic;
SIGNAL \inst3~q\ : std_logic;
SIGNAL \inst2~0_combout\ : std_logic;
SIGNAL \inst2~q\ : std_logic;
SIGNAL \DATA[4]~input_o\ : std_logic;
SIGNAL \nRESET~input_o\ : std_logic;
SIGNAL \inst1|inst|state[5]~DUPLICATE_q\ : std_logic;
SIGNAL \inst1|inst|state[1]~DUPLICATE_q\ : std_logic;
SIGNAL \DATA[3]~input_o\ : std_logic;
SIGNAL \inst1|inst7|inst6~q\ : std_logic;
SIGNAL \DATA[1]~input_o\ : std_logic;
SIGNAL \inst1|inst7|inst~q\ : std_logic;
SIGNAL \DATA[2]~input_o\ : std_logic;
SIGNAL \inst1|inst7|inst2~q\ : std_logic;
SIGNAL \DATA[5]~input_o\ : std_logic;
SIGNAL \inst1|inst7|inst3~q\ : std_logic;
SIGNAL \inst1|inst|Mux3~0_combout\ : std_logic;
SIGNAL \DATA[0]~input_o\ : std_logic;
SIGNAL \inst1|inst7|13~q\ : std_logic;
SIGNAL \inst1|inst|Mux5~0_combout\ : std_logic;
SIGNAL \inst1|inst|Mux33~0_combout\ : std_logic;
SIGNAL \inst1|inst|Mux20~0_combout\ : std_logic;
SIGNAL \inst1|inst|Mux20~1_combout\ : std_logic;
SIGNAL \inst1|inst|state[2]~DUPLICATE_q\ : std_logic;
SIGNAL \inst1|inst|Mux18~0_combout\ : std_logic;
SIGNAL \inst1|inst|Mux18~1_combout\ : std_logic;
SIGNAL \inst1|inst|state[4]~DUPLICATE_q\ : std_logic;
SIGNAL \inst1|inst|Mux30~0_combout\ : std_logic;
SIGNAL \inst1|inst|Mux17~1_combout\ : std_logic;
SIGNAL \inst1|inst|Mux17~0_combout\ : std_logic;
SIGNAL \inst1|inst|Mux17~2_combout\ : std_logic;
SIGNAL \inst1|inst|Mux8~0_combout\ : std_logic;
SIGNAL \inst1|inst|Mux8~1_combout\ : std_logic;
SIGNAL \inst1|inst|Mux27~0_combout\ : std_logic;
SIGNAL \inst1|inst|Mux27~1_combout\ : std_logic;
SIGNAL \DATA[7]~input_o\ : std_logic;
SIGNAL \inst1|inst|Mux1~0_combout\ : std_logic;
SIGNAL \inst1|inst|Mux1~1_combout\ : std_logic;
SIGNAL \inst1|inst|Mux24~1_combout\ : std_logic;
SIGNAL \inst1|inst|Mux24~0_combout\ : std_logic;
SIGNAL \inst1|inst|Mux24~2_combout\ : std_logic;
SIGNAL \inst1|inst6|143|10~0_combout\ : std_logic;
SIGNAL \inst1|inst6|127~q\ : std_logic;
SIGNAL \inst1|inst6|144|10~0_combout\ : std_logic;
SIGNAL \inst1|inst6|128~q\ : std_logic;
SIGNAL \inst1|inst|Mux7~1_combout\ : std_logic;
SIGNAL \inst1|inst|Mux22~0_combout\ : std_logic;
SIGNAL \DATA[6]~input_o\ : std_logic;
SIGNAL \inst1|inst|Mux10~0_combout\ : std_logic;
SIGNAL \inst1|inst|Mux10~1_combout\ : std_logic;
SIGNAL \inst1|inst|Mux12~0_combout\ : std_logic;
SIGNAL \inst1|inst|Mux31~0_combout\ : std_logic;
SIGNAL \inst1|inst|Mux13~0_combout\ : std_logic;
SIGNAL \inst1|inst6|194|41~0_combout\ : std_logic;
SIGNAL \inst1|inst|Mux30~1_combout\ : std_logic;
SIGNAL \inst1|inst|Mux31~1_combout\ : std_logic;
SIGNAL \inst1|inst6|201|41~0_combout\ : std_logic;
SIGNAL \inst1|inst6|201|8~0_combout\ : std_logic;
SIGNAL \inst1|inst6|197|8~0_combout\ : std_logic;
SIGNAL \inst1|inst6|197|41~1_combout\ : std_logic;
SIGNAL \inst1|inst6|162|sub|105~0_combout\ : std_logic;
SIGNAL \inst1|inst6|197|41~0_combout\ : std_logic;
SIGNAL \inst1|inst6|197|41~2_combout\ : std_logic;
SIGNAL \inst1|inst6|140|9~0_combout\ : std_logic;
SIGNAL \inst1|inst6|117~q\ : std_logic;
SIGNAL \inst1|inst6|139|9~0_combout\ : std_logic;
SIGNAL \inst1|inst6|118~q\ : std_logic;
SIGNAL \inst1|inst6|195|41~1_combout\ : std_logic;
SIGNAL \inst1|inst6|204~combout\ : std_logic;
SIGNAL \inst1|inst6|195|41~0_combout\ : std_logic;
SIGNAL \inst1|inst6|195|8~0_combout\ : std_logic;
SIGNAL \inst1|inst6|195|41~2_combout\ : std_logic;
SIGNAL \inst1|inst6|138|10~0_combout\ : std_logic;
SIGNAL \inst1|inst6|116~q\ : std_logic;
SIGNAL \inst1|inst6|137|10~0_combout\ : std_logic;
SIGNAL \inst1|inst6|115~q\ : std_logic;
SIGNAL \inst1|inst6|194|41~3_combout\ : std_logic;
SIGNAL \inst1|inst6|194|41~2_combout\ : std_logic;
SIGNAL \inst1|inst|Mux11~0_combout\ : std_logic;
SIGNAL \inst1|inst6|194|41~1_combout\ : std_logic;
SIGNAL \inst1|inst6|194|41~4_combout\ : std_logic;
SIGNAL \inst1|inst6|137|9~0_combout\ : std_logic;
SIGNAL \inst1|inst6|113~q\ : std_logic;
SIGNAL \inst1|inst6|138|9~0_combout\ : std_logic;
SIGNAL \inst1|inst6|114~q\ : std_logic;
SIGNAL \inst1|inst6|162|sub|106~0_combout\ : std_logic;
SIGNAL \inst1|inst6|163|sub|76~combout\ : std_logic;
SIGNAL \inst1|inst6|201|41~2_combout\ : std_logic;
SIGNAL \inst1|inst6|201|41~1_combout\ : std_logic;
SIGNAL \inst1|inst6|142|9~0_combout\ : std_logic;
SIGNAL \inst1|inst6|121~q\ : std_logic;
SIGNAL \inst1|inst6|141|9~0_combout\ : std_logic;
SIGNAL \inst1|inst6|122~q\ : std_logic;
SIGNAL \inst1|inst6|196|41~2_combout\ : std_logic;
SIGNAL \inst1|inst6|196|41~0_combout\ : std_logic;
SIGNAL \inst1|inst6|196|8~0_combout\ : std_logic;
SIGNAL \inst1|inst6|196|41~1_combout\ : std_logic;
SIGNAL \inst1|inst6|139|10~0_combout\ : std_logic;
SIGNAL \inst1|inst6|119~q\ : std_logic;
SIGNAL \inst1|inst6|140|10~0_combout\ : std_logic;
SIGNAL \inst1|inst6|120~q\ : std_logic;
SIGNAL \inst1|inst6|163|sub|104~0_combout\ : std_logic;
SIGNAL \inst1|inst6|200|41~3_combout\ : std_logic;
SIGNAL \inst1|inst6|200|41~0_combout\ : std_logic;
SIGNAL \inst1|inst6|200|41~1_combout\ : std_logic;
SIGNAL \inst1|inst6|200|41~2_combout\ : std_logic;
SIGNAL \inst1|inst6|200|8~0_combout\ : std_logic;
SIGNAL \inst1|inst6|200|41~4_combout\ : std_logic;
SIGNAL \inst1|inst6|141|10~0_combout\ : std_logic;
SIGNAL \inst1|inst6|123~q\ : std_logic;
SIGNAL \inst1|inst6|142|10~0_combout\ : std_logic;
SIGNAL \inst1|inst6|124~q\ : std_logic;
SIGNAL \inst1|inst6|199|41~0_combout\ : std_logic;
SIGNAL \inst1|inst6|199|41~1_combout\ : std_logic;
SIGNAL \inst1|inst6|199|41~3_combout\ : std_logic;
SIGNAL \inst1|inst6|199|41~7_combout\ : std_logic;
SIGNAL \inst1|inst6|199|8~0_combout\ : std_logic;
SIGNAL \inst1|inst6|199|41~2_combout\ : std_logic;
SIGNAL \inst1|inst6|143|9~0_combout\ : std_logic;
SIGNAL \inst1|inst6|125~q\ : std_logic;
SIGNAL \inst1|inst6|144|9~0_combout\ : std_logic;
SIGNAL \inst1|inst6|126~q\ : std_logic;
SIGNAL \inst1|inst6|161~0_combout\ : std_logic;
SIGNAL \inst1|inst|Mux7~0_combout\ : std_logic;
SIGNAL \inst1|inst|Mux22~1_combout\ : std_logic;
SIGNAL \inst1|inst|Mux22~2_combout\ : std_logic;
SIGNAL \inst1|inst|state[0]~DUPLICATE_q\ : std_logic;
SIGNAL \inst1|inst|Mux19~0_combout\ : std_logic;
SIGNAL \inst1|inst|Mux19~2_combout\ : std_logic;
SIGNAL \inst1|inst|Mux19~1_combout\ : std_logic;
SIGNAL \inst1|inst|state[3]~DUPLICATE_q\ : std_logic;
SIGNAL \inst1|inst|Mux21~0_combout\ : std_logic;
SIGNAL \inst1|inst|Mux21~2_combout\ : std_logic;
SIGNAL \inst1|inst|Mux21~1_combout\ : std_logic;
SIGNAL \inst1|inst|Mux16~0_combout\ : std_logic;
SIGNAL \inst1|inst7|inst4~q\ : std_logic;
SIGNAL \inst1|inst|Mux11~1_combout\ : std_logic;
SIGNAL \inst1|inst|Mux29~0_combout\ : std_logic;
SIGNAL \inst1|inst6|198|8~0_combout\ : std_logic;
SIGNAL \inst1|inst6|198|47~combout\ : std_logic;
SIGNAL \inst1|inst6|163|sub|106~0_combout\ : std_logic;
SIGNAL \inst1|inst6|198|41~0_combout\ : std_logic;
SIGNAL \inst1|inst6|198|41~1_combout\ : std_logic;
SIGNAL \inst1|inst|Mux33~1_combout\ : std_logic;
SIGNAL \inst1|inst|Mux33~2_combout\ : std_logic;
SIGNAL \inst1|inst5|127|sub|78~combout\ : std_logic;
SIGNAL \inst1|inst5|127|sub|9~feeder_combout\ : std_logic;
SIGNAL \inst1|inst|Mux41~0_combout\ : std_logic;
SIGNAL \inst1|inst|Mux41~1_combout\ : std_logic;
SIGNAL \inst1|inst5|127|sub|9~q\ : std_logic;
SIGNAL \inst1|inst|Mux44~0_combout\ : std_logic;
SIGNAL \inst1|inst|Mux45~0_combout\ : std_logic;
SIGNAL \inst1|inst5|inst1|54~q\ : std_logic;
SIGNAL \inst1|inst5|140|sub|76~combout\ : std_logic;
SIGNAL \inst1|inst|Mux32~0_combout\ : std_logic;
SIGNAL \inst1|inst5|123|sub|78~combout\ : std_logic;
SIGNAL \inst1|inst5|123|sub|9~feeder_combout\ : std_logic;
SIGNAL \inst1|inst|Mux39~0_combout\ : std_logic;
SIGNAL \inst1|inst5|123|sub|9~q\ : std_logic;
SIGNAL \inst1|inst|Mux44~1_combout\ : std_logic;
SIGNAL \inst1|inst5|inst1|19~q\ : std_logic;
SIGNAL \inst1|inst|Mux43~0_combout\ : std_logic;
SIGNAL \inst1|inst|Mux43~1_combout\ : std_logic;
SIGNAL \inst1|inst5|171|sub|78~combout\ : std_logic;
SIGNAL \inst1|inst5|171|sub|9~feeder_combout\ : std_logic;
SIGNAL \inst1|inst|Mux34~0_combout\ : std_logic;
SIGNAL \inst1|inst5|171|sub|9~q\ : std_logic;
SIGNAL \inst1|inst|Mux36~0_combout\ : std_logic;
SIGNAL \inst1|inst|Mux37~0_combout\ : std_logic;
SIGNAL \inst1|inst|Mux23~0_combout\ : std_logic;
SIGNAL \inst1|inst5|3|sub|78~combout\ : std_logic;
SIGNAL \inst1|inst5|3|sub|9~feeder_combout\ : std_logic;
SIGNAL \inst1|inst|Mux46~0_combout\ : std_logic;
SIGNAL \inst1|inst5|3|sub|9~q\ : std_logic;
SIGNAL \inst1|inst5|155|6~0_combout\ : std_logic;
SIGNAL \inst1|inst5|171|sub|90~combout\ : std_logic;
SIGNAL \inst1|inst5|171|sub|87~feeder_combout\ : std_logic;
SIGNAL \inst1|inst5|171|sub|87~q\ : std_logic;
SIGNAL \inst1|inst5|3|sub|90~combout\ : std_logic;
SIGNAL \inst1|inst5|3|sub|87~feeder_combout\ : std_logic;
SIGNAL \inst1|inst5|3|sub|87~q\ : std_logic;
SIGNAL \inst1|inst5|inst1|20~q\ : std_logic;
SIGNAL \inst1|inst5|123|sub|90~combout\ : std_logic;
SIGNAL \inst1|inst5|123|sub|87~feeder_combout\ : std_logic;
SIGNAL \inst1|inst5|123|sub|87~q\ : std_logic;
SIGNAL \inst1|inst5|131|sub|78~combout\ : std_logic;
SIGNAL \inst1|inst5|inst1|55~q\ : std_logic;
SIGNAL \inst1|inst5|127|sub|90~combout\ : std_logic;
SIGNAL \inst1|inst5|127|sub|87~feeder_combout\ : std_logic;
SIGNAL \inst1|inst5|127|sub|87~q\ : std_logic;
SIGNAL \inst1|inst5|140|sub|78~combout\ : std_logic;
SIGNAL \inst1|inst5|156|6~0_combout\ : std_logic;
SIGNAL \inst1|inst5|inst1|56~q\ : std_logic;
SIGNAL \inst1|inst5|127|sub|97~combout\ : std_logic;
SIGNAL \inst1|inst5|127|sub|99~feeder_combout\ : std_logic;
SIGNAL \inst1|inst5|127|sub|99~q\ : std_logic;
SIGNAL \inst1|inst5|140|sub|80~combout\ : std_logic;
SIGNAL \inst1|inst5|inst1|21~q\ : std_logic;
SIGNAL \inst1|inst5|123|sub|97~combout\ : std_logic;
SIGNAL \inst1|inst5|123|sub|99~feeder_combout\ : std_logic;
SIGNAL \inst1|inst5|123|sub|99~q\ : std_logic;
SIGNAL \inst1|inst5|131|sub|80~combout\ : std_logic;
SIGNAL \inst1|inst5|3|sub|97~combout\ : std_logic;
SIGNAL \inst1|inst5|3|sub|99~feeder_combout\ : std_logic;
SIGNAL \inst1|inst5|3|sub|99~q\ : std_logic;
SIGNAL \inst1|inst5|171|sub|106~0_combout\ : std_logic;
SIGNAL \inst1|inst5|171|sub|97~combout\ : std_logic;
SIGNAL \inst1|inst5|171|sub|99~feeder_combout\ : std_logic;
SIGNAL \inst1|inst5|171|sub|99~q\ : std_logic;
SIGNAL \inst1|inst5|157|6~0_combout\ : std_logic;
SIGNAL \inst1|inst5|3|sub|107~combout\ : std_logic;
SIGNAL \inst1|inst5|3|sub|110~feeder_combout\ : std_logic;
SIGNAL \inst1|inst5|3|sub|110~q\ : std_logic;
SIGNAL \inst1|inst5|inst1|22~q\ : std_logic;
SIGNAL \inst1|inst5|131|sub|106~0_combout\ : std_logic;
SIGNAL \inst1|inst5|123|sub|104~0_combout\ : std_logic;
SIGNAL \inst1|inst5|123|sub|107~combout\ : std_logic;
SIGNAL \inst1|inst5|123|sub|110~feeder_combout\ : std_logic;
SIGNAL \inst1|inst5|123|sub|110~q\ : std_logic;
SIGNAL \inst1|inst5|131|sub|82~combout\ : std_logic;
SIGNAL \inst1|inst5|127|sub|104~0_combout\ : std_logic;
SIGNAL \inst1|inst5|127|sub|107~combout\ : std_logic;
SIGNAL \inst1|inst5|127|sub|110~feeder_combout\ : std_logic;
SIGNAL \inst1|inst5|127|sub|110~q\ : std_logic;
SIGNAL \inst1|inst5|inst1|57~q\ : std_logic;
SIGNAL \inst1|inst5|140|sub|106~0_combout\ : std_logic;
SIGNAL \inst1|inst5|140|sub|82~combout\ : std_logic;
SIGNAL \inst1|inst5|171|sub|107~combout\ : std_logic;
SIGNAL \inst1|inst5|171|sub|110~feeder_combout\ : std_logic;
SIGNAL \inst1|inst5|171|sub|110~q\ : std_logic;
SIGNAL \inst1|inst5|158|6~0_combout\ : std_logic;
SIGNAL \inst1|inst5|140|sub|107~0_combout\ : std_logic;
SIGNAL \inst1|inst5|inst1|58~q\ : std_logic;
SIGNAL \inst1|inst5|128|sub|78~combout\ : std_logic;
SIGNAL \inst1|inst5|128|sub|9~feeder_combout\ : std_logic;
SIGNAL \inst1|inst5|128|sub|9~q\ : std_logic;
SIGNAL \inst1|inst5|141|sub|76~combout\ : std_logic;
SIGNAL \inst1|inst5|131|sub|107~0_combout\ : std_logic;
SIGNAL \inst1|inst5|124|sub|78~combout\ : std_logic;
SIGNAL \inst1|inst5|124|sub|9~feeder_combout\ : std_logic;
SIGNAL \inst1|inst5|124|sub|9~q\ : std_logic;
SIGNAL \inst1|inst5|inst1|23~q\ : std_logic;
SIGNAL \inst1|inst5|133|sub|76~combout\ : std_logic;
SIGNAL \inst1|inst5|171|sub|104~0_combout\ : std_logic;
SIGNAL \inst1|inst5|172|sub|78~combout\ : std_logic;
SIGNAL \inst1|inst5|172|sub|9~feeder_combout\ : std_logic;
SIGNAL \inst1|inst5|172|sub|9~q\ : std_logic;
SIGNAL \inst1|inst5|4|sub|78~combout\ : std_logic;
SIGNAL \inst1|inst5|4|sub|9~feeder_combout\ : std_logic;
SIGNAL \inst1|inst5|4|sub|9~q\ : std_logic;
SIGNAL \inst1|inst5|159|6~0_combout\ : std_logic;
SIGNAL \inst1|inst5|4|sub|106~0_combout\ : std_logic;
SIGNAL \inst1|inst5|4|sub|90~combout\ : std_logic;
SIGNAL \inst1|inst5|4|sub|87~feeder_combout\ : std_logic;
SIGNAL \inst1|inst5|4|sub|87~q\ : std_logic;
SIGNAL \inst1|inst5|inst1|24~q\ : std_logic;
SIGNAL \inst1|inst5|124|sub|90~combout\ : std_logic;
SIGNAL \inst1|inst5|124|sub|87~feeder_combout\ : std_logic;
SIGNAL \inst1|inst5|124|sub|87~q\ : std_logic;
SIGNAL \inst1|inst5|133|sub|78~combout\ : std_logic;
SIGNAL \inst1|inst5|172|sub|90~combout\ : std_logic;
SIGNAL \inst1|inst5|172|sub|87~feeder_combout\ : std_logic;
SIGNAL \inst1|inst5|172|sub|87~q\ : std_logic;
SIGNAL \inst1|inst5|inst1|59~q\ : std_logic;
SIGNAL \inst1|inst5|128|sub|90~combout\ : std_logic;
SIGNAL \inst1|inst5|128|sub|87~feeder_combout\ : std_logic;
SIGNAL \inst1|inst5|128|sub|87~q\ : std_logic;
SIGNAL \inst1|inst5|141|sub|78~combout\ : std_logic;
SIGNAL \inst1|inst5|160|6~0_combout\ : std_logic;
SIGNAL \inst1|inst5|172|sub|97~combout\ : std_logic;
SIGNAL \inst1|inst5|172|sub|99~feeder_combout\ : std_logic;
SIGNAL \inst1|inst5|172|sub|99~q\ : std_logic;
SIGNAL \inst1|inst5|inst1|28~q\ : std_logic;
SIGNAL \inst1|inst5|124|sub|97~combout\ : std_logic;
SIGNAL \inst1|inst5|124|sub|99~feeder_combout\ : std_logic;
SIGNAL \inst1|inst5|124|sub|99~q\ : std_logic;
SIGNAL \inst1|inst5|133|sub|97~combout\ : std_logic;
SIGNAL \inst1|inst5|133|sub|105~0_combout\ : std_logic;
SIGNAL \inst1|inst5|133|sub|105~1_combout\ : std_logic;
SIGNAL \inst1|inst5|133|sub|105~2_combout\ : std_logic;
SIGNAL \inst1|inst5|133|sub|80~combout\ : std_logic;
SIGNAL \inst1|inst5|4|sub|97~combout\ : std_logic;
SIGNAL \inst1|inst5|4|sub|99~feeder_combout\ : std_logic;
SIGNAL \inst1|inst5|4|sub|99~q\ : std_logic;
SIGNAL \inst1|inst5|128|sub|97~combout\ : std_logic;
SIGNAL \inst1|inst5|128|sub|99~feeder_combout\ : std_logic;
SIGNAL \inst1|inst5|128|sub|99~q\ : std_logic;
SIGNAL \inst1|inst5|inst1|60~q\ : std_logic;
SIGNAL \inst1|inst5|141|sub|105~0_combout\ : std_logic;
SIGNAL \inst1|inst5|141|sub|105~1_combout\ : std_logic;
SIGNAL \inst1|inst5|141|sub|97~combout\ : std_logic;
SIGNAL \inst1|inst5|141|sub|105~2_combout\ : std_logic;
SIGNAL \inst1|inst5|141|sub|80~combout\ : std_logic;
SIGNAL \inst1|inst5|161|6~0_combout\ : std_logic;
SIGNAL \inst1|inst5|inst1|61~q\ : std_logic;
SIGNAL \inst1|inst5|128|sub|107~combout\ : std_logic;
SIGNAL \inst1|inst5|128|sub|110~feeder_combout\ : std_logic;
SIGNAL \inst1|inst5|128|sub|110~q\ : std_logic;
SIGNAL \inst1|inst5|141|sub|82~combout\ : std_logic;
SIGNAL \inst1|inst5|4|sub|107~combout\ : std_logic;
SIGNAL \inst1|inst5|4|sub|110~feeder_combout\ : std_logic;
SIGNAL \inst1|inst5|4|sub|110~q\ : std_logic;
SIGNAL \inst1|inst5|172|sub|107~combout\ : std_logic;
SIGNAL \inst1|inst5|172|sub|110~feeder_combout\ : std_logic;
SIGNAL \inst1|inst5|172|sub|110~q\ : std_logic;
SIGNAL \inst1|inst5|inst1|33~q\ : std_logic;
SIGNAL \inst1|inst5|124|sub|107~combout\ : std_logic;
SIGNAL \inst1|inst5|124|sub|110~feeder_combout\ : std_logic;
SIGNAL \inst1|inst5|124|sub|110~q\ : std_logic;
SIGNAL \inst1|inst5|133|sub|82~combout\ : std_logic;
SIGNAL \inst1|inst5|162|6~0_combout\ : std_logic;
SIGNAL \inst1|inst5|128|sub|89~0_combout\ : std_logic;
SIGNAL \inst1|inst5|129|sub|78~combout\ : std_logic;
SIGNAL \inst1|inst5|129|sub|9~feeder_combout\ : std_logic;
SIGNAL \inst1|inst|Mux42~0_combout\ : std_logic;
SIGNAL \inst1|inst5|129|sub|9~q\ : std_logic;
SIGNAL \inst1|inst5|141|sub|107~0_combout\ : std_logic;
SIGNAL \inst1|inst5|142|sub|77~combout\ : std_logic;
SIGNAL \inst1|inst5|124|sub|89~0_combout\ : std_logic;
SIGNAL \inst1|inst5|125|sub|78~combout\ : std_logic;
SIGNAL \inst1|inst5|125|sub|9~feeder_combout\ : std_logic;
SIGNAL \inst1|inst|Mux40~0_combout\ : std_logic;
SIGNAL \inst1|inst5|125|sub|9~q\ : std_logic;
SIGNAL \inst1|inst5|173|sub|78~combout\ : std_logic;
SIGNAL \inst1|inst5|173|sub|9~feeder_combout\ : std_logic;
SIGNAL \inst1|inst|Mux35~0_combout\ : std_logic;
SIGNAL \inst1|inst5|173|sub|9~q\ : std_logic;
SIGNAL \inst1|inst5|133|sub|107~0_combout\ : std_logic;
SIGNAL \inst1|inst5|32|sub|9~0_combout\ : std_logic;
SIGNAL \inst1|inst5|32|sub|9~q\ : std_logic;
SIGNAL \inst1|inst5|164|6~0_combout\ : std_logic;
SIGNAL \inst1|inst5|172|sub|106~0_combout\ : std_logic;
SIGNAL \inst1|inst5|173|sub|90~combout\ : std_logic;
SIGNAL \inst1|inst5|173|sub|87~feeder_combout\ : std_logic;
SIGNAL \inst1|inst5|173|sub|87~q\ : std_logic;
SIGNAL \inst1|inst5|125|sub|90~combout\ : std_logic;
SIGNAL \inst1|inst5|125|sub|87~feeder_combout\ : std_logic;
SIGNAL \inst1|inst5|125|sub|87~q\ : std_logic;
SIGNAL \inst1|inst5|135|sub|79~combout\ : std_logic;
SIGNAL \inst1|inst5|32|sub|87~0_combout\ : std_logic;
SIGNAL \inst1|inst5|32|sub|87~q\ : std_logic;
SIGNAL \inst1|inst5|129|sub|90~combout\ : std_logic;
SIGNAL \inst1|inst5|129|sub|87~feeder_combout\ : std_logic;
SIGNAL \inst1|inst5|129|sub|87~q\ : std_logic;
SIGNAL \inst1|inst5|142|sub|79~combout\ : std_logic;
SIGNAL \inst1|inst5|166|6~0_combout\ : std_logic;
SIGNAL \inst1|inst5|32|sub|96~0_combout\ : std_logic;
SIGNAL \inst1|inst5|32|sub|99~0_combout\ : std_logic;
SIGNAL \inst1|inst5|32|sub|99~q\ : std_logic;
SIGNAL \inst1|inst5|128|sub|104~0_combout\ : std_logic;
SIGNAL \inst1|inst5|129|sub|97~combout\ : std_logic;
SIGNAL \inst1|inst5|129|sub|99~feeder_combout\ : std_logic;
SIGNAL \inst1|inst5|129|sub|99~q\ : std_logic;
SIGNAL \inst1|inst5|142|sub|81~combout\ : std_logic;
SIGNAL \inst1|inst5|173|sub|106~0_combout\ : std_logic;
SIGNAL \inst1|inst5|173|sub|97~combout\ : std_logic;
SIGNAL \inst1|inst5|173|sub|99~feeder_combout\ : std_logic;
SIGNAL \inst1|inst5|173|sub|99~q\ : std_logic;
SIGNAL \inst1|inst5|124|sub|104~0_combout\ : std_logic;
SIGNAL \inst1|inst5|125|sub|97~combout\ : std_logic;
SIGNAL \inst1|inst5|125|sub|99~feeder_combout\ : std_logic;
SIGNAL \inst1|inst5|125|sub|99~q\ : std_logic;
SIGNAL \inst1|inst5|135|sub|81~combout\ : std_logic;
SIGNAL \inst1|inst5|168|6~0_combout\ : std_logic;
SIGNAL \inst1|inst5|129|sub|107~combout\ : std_logic;
SIGNAL \inst1|inst5|129|sub|110~feeder_combout\ : std_logic;
SIGNAL \inst1|inst5|129|sub|110~q\ : std_logic;
SIGNAL \inst1|inst5|142|sub|83~combout\ : std_logic;
SIGNAL \inst1|inst5|125|sub|107~combout\ : std_logic;
SIGNAL \inst1|inst5|125|sub|110~feeder_combout\ : std_logic;
SIGNAL \inst1|inst5|125|sub|110~q\ : std_logic;
SIGNAL \inst1|inst5|135|sub|83~combout\ : std_logic;
SIGNAL \inst1|inst5|32|sub|110~0_combout\ : std_logic;
SIGNAL \inst1|inst5|32|sub|110~q\ : std_logic;
SIGNAL \inst1|inst5|173|sub|107~combout\ : std_logic;
SIGNAL \inst1|inst5|173|sub|110~feeder_combout\ : std_logic;
SIGNAL \inst1|inst5|173|sub|110~q\ : std_logic;
SIGNAL \inst1|inst5|170|6~0_combout\ : std_logic;
SIGNAL \inst1|inst|Mux38~0_combout\ : std_logic;
SIGNAL \inst1|inst5|33|sub|9~0_combout\ : std_logic;
SIGNAL \inst1|inst5|33|sub|9~q\ : std_logic;
SIGNAL \inst1|inst5|130|sub|78~combout\ : std_logic;
SIGNAL \inst1|inst5|130|sub|9~feeder_combout\ : std_logic;
SIGNAL \inst1|inst5|130|sub|9~q\ : std_logic;
SIGNAL \inst1|inst5|143|sub|77~combout\ : std_logic;
SIGNAL \inst1|inst5|174|sub|78~combout\ : std_logic;
SIGNAL \inst1|inst5|174|sub|9~feeder_combout\ : std_logic;
SIGNAL \inst1|inst5|174|sub|9~q\ : std_logic;
SIGNAL \inst1|inst5|126|sub|78~combout\ : std_logic;
SIGNAL \inst1|inst5|126|sub|9~feeder_combout\ : std_logic;
SIGNAL \inst1|inst5|126|sub|9~q\ : std_logic;
SIGNAL \inst1|inst5|136|sub|77~combout\ : std_logic;
SIGNAL \inst1|inst5|163|6~0_combout\ : std_logic;
SIGNAL \inst1|inst5|125|sub|104~0_combout\ : std_logic;
SIGNAL \inst1|inst5|126|sub|90~combout\ : std_logic;
SIGNAL \inst1|inst5|126|sub|87~feeder_combout\ : std_logic;
SIGNAL \inst1|inst5|126|sub|87~q\ : std_logic;
SIGNAL \inst1|inst5|126|sub|97~combout\ : std_logic;
SIGNAL \inst1|inst5|126|sub|99~feeder_combout\ : std_logic;
SIGNAL \inst1|inst5|126|sub|99~q\ : std_logic;
SIGNAL \inst1|inst5|135|sub|98~combout\ : std_logic;
SIGNAL \inst1|inst5|125|sub|104~1_combout\ : std_logic;
SIGNAL \inst1|inst5|126|sub|107~combout\ : std_logic;
SIGNAL \inst1|inst5|126|sub|110~feeder_combout\ : std_logic;
SIGNAL \inst1|inst5|126|sub|110~q\ : std_logic;
SIGNAL \inst1|inst5|136|sub|83~combout\ : std_logic;
SIGNAL \inst1|inst5|173|sub|96~0_combout\ : std_logic;
SIGNAL \inst1|inst5|174|sub|90~combout\ : std_logic;
SIGNAL \inst1|inst5|174|sub|87~feeder_combout\ : std_logic;
SIGNAL \inst1|inst5|174|sub|87~q\ : std_logic;
SIGNAL \inst1|inst5|174|sub|97~combout\ : std_logic;
SIGNAL \inst1|inst5|174|sub|99~feeder_combout\ : std_logic;
SIGNAL \inst1|inst5|174|sub|99~q\ : std_logic;
SIGNAL \inst1|inst5|173|sub|104~0_combout\ : std_logic;
SIGNAL \inst1|inst5|174|sub|107~combout\ : std_logic;
SIGNAL \inst1|inst5|174|sub|110~feeder_combout\ : std_logic;
SIGNAL \inst1|inst5|174|sub|110~q\ : std_logic;
SIGNAL \inst1|inst5|33|sub|87~0_combout\ : std_logic;
SIGNAL \inst1|inst5|33|sub|87~q\ : std_logic;
SIGNAL \inst1|inst5|33|sub|99~0_combout\ : std_logic;
SIGNAL \inst1|inst5|33|sub|99~q\ : std_logic;
SIGNAL \inst1|inst5|33|sub|110~q\ : std_logic;
SIGNAL \inst1|inst5|33|sub|106~0_combout\ : std_logic;
SIGNAL \inst1|inst5|33|sub|110~0_combout\ : std_logic;
SIGNAL \inst1|inst5|33|sub|110~DUPLICATE_q\ : std_logic;
SIGNAL \inst1|inst5|129|sub|104~0_combout\ : std_logic;
SIGNAL \inst1|inst5|130|sub|90~combout\ : std_logic;
SIGNAL \inst1|inst5|130|sub|87~feeder_combout\ : std_logic;
SIGNAL \inst1|inst5|130|sub|87~q\ : std_logic;
SIGNAL \inst1|inst5|130|sub|97~combout\ : std_logic;
SIGNAL \inst1|inst5|130|sub|99~feeder_combout\ : std_logic;
SIGNAL \inst1|inst5|130|sub|99~q\ : std_logic;
SIGNAL \inst1|inst5|129|sub|104~1_combout\ : std_logic;
SIGNAL \inst1|inst5|130|sub|107~combout\ : std_logic;
SIGNAL \inst1|inst5|130|sub|110~feeder_combout\ : std_logic;
SIGNAL \inst1|inst5|130|sub|110~q\ : std_logic;
SIGNAL \inst1|inst5|142|sub|98~combout\ : std_logic;
SIGNAL \inst1|inst5|143|sub|83~combout\ : std_logic;
SIGNAL \inst1|inst5|169|6~0_combout\ : std_logic;
SIGNAL \inst1|inst5|136|sub|81~combout\ : std_logic;
SIGNAL \inst1|inst5|33|sub|99~DUPLICATE_q\ : std_logic;
SIGNAL \inst1|inst5|143|sub|81~combout\ : std_logic;
SIGNAL \inst1|inst5|167|6~0_combout\ : std_logic;
SIGNAL \inst1|inst5|33|sub|87~DUPLICATE_q\ : std_logic;
SIGNAL \inst1|inst5|136|sub|79~combout\ : std_logic;
SIGNAL \inst1|inst5|143|sub|79~combout\ : std_logic;
SIGNAL \inst1|inst5|165|6~0_combout\ : std_logic;
SIGNAL \inst14~combout\ : std_logic;
SIGNAL \inst7~combout\ : std_logic;
SIGNAL \32~combout\ : std_logic;
SIGNAL \inst4[7]~8_combout\ : std_logic;
SIGNAL \inst4[7]~9_combout\ : std_logic;
SIGNAL \inst4[6]~10_combout\ : std_logic;
SIGNAL \inst4[5]~11_combout\ : std_logic;
SIGNAL \inst4[4]~12_combout\ : std_logic;
SIGNAL \inst4[3]~13_combout\ : std_logic;
SIGNAL \inst4[2]~14_combout\ : std_logic;
SIGNAL \inst4[1]~15_combout\ : std_logic;
SIGNAL \inst4[0]~16_combout\ : std_logic;
SIGNAL \inst1|inst6|161~combout\ : std_logic;
SIGNAL \37~combout\ : std_logic;
SIGNAL \inst|altsyncram_component|auto_generated|q_a\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \inst11|altsyncram_component|auto_generated|q_a\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \inst1|inst|state\ : std_logic_vector(5 DOWNTO 0);
SIGNAL \inst1|inst5|33|sub|ALT_INV_110~DUPLICATE_q\ : std_logic;
SIGNAL \inst1|inst5|33|sub|ALT_INV_99~DUPLICATE_q\ : std_logic;
SIGNAL \inst1|inst5|33|sub|ALT_INV_87~DUPLICATE_q\ : std_logic;
SIGNAL \inst1|inst|ALT_INV_state[1]~DUPLICATE_q\ : std_logic;
SIGNAL \inst1|inst|ALT_INV_state[5]~DUPLICATE_q\ : std_logic;
SIGNAL \inst1|inst|ALT_INV_state[3]~DUPLICATE_q\ : std_logic;
SIGNAL \inst1|inst|ALT_INV_state[2]~DUPLICATE_q\ : std_logic;
SIGNAL \inst1|inst|ALT_INV_state[4]~DUPLICATE_q\ : std_logic;
SIGNAL \inst1|inst|ALT_INV_state[0]~DUPLICATE_q\ : std_logic;
SIGNAL \ALT_INV_DATA[0]~input_o\ : std_logic;
SIGNAL \ALT_INV_DATA[1]~input_o\ : std_logic;
SIGNAL \ALT_INV_DATA[2]~input_o\ : std_logic;
SIGNAL \ALT_INV_DATA[3]~input_o\ : std_logic;
SIGNAL \ALT_INV_DATA[4]~input_o\ : std_logic;
SIGNAL \ALT_INV_DATA[5]~input_o\ : std_logic;
SIGNAL \ALT_INV_DATA[6]~input_o\ : std_logic;
SIGNAL \ALT_INV_DATA[7]~input_o\ : std_logic;
SIGNAL \inst1|inst|ALT_INV_Mux21~2_combout\ : std_logic;
SIGNAL \inst1|inst|ALT_INV_Mux19~2_combout\ : std_logic;
SIGNAL \inst1|inst|ALT_INV_Mux1~1_combout\ : std_logic;
SIGNAL \inst1|inst|ALT_INV_Mux1~0_combout\ : std_logic;
SIGNAL \inst1|inst|ALT_INV_Mux24~2_combout\ : std_logic;
SIGNAL \inst1|inst|ALT_INV_Mux24~1_combout\ : std_logic;
SIGNAL \inst1|inst|ALT_INV_Mux24~0_combout\ : std_logic;
SIGNAL \inst1|inst5|171|sub|ALT_INV_78~combout\ : std_logic;
SIGNAL \inst1|inst5|3|sub|ALT_INV_78~combout\ : std_logic;
SIGNAL \inst1|inst5|171|sub|ALT_INV_90~combout\ : std_logic;
SIGNAL \inst1|inst5|3|sub|ALT_INV_90~combout\ : std_logic;
SIGNAL \inst1|inst5|171|sub|ALT_INV_97~combout\ : std_logic;
SIGNAL \inst1|inst5|3|sub|ALT_INV_97~combout\ : std_logic;
SIGNAL \inst1|inst5|171|sub|ALT_INV_107~combout\ : std_logic;
SIGNAL \inst1|inst5|171|sub|ALT_INV_106~0_combout\ : std_logic;
SIGNAL \inst1|inst5|3|sub|ALT_INV_107~combout\ : std_logic;
SIGNAL \inst1|inst5|172|sub|ALT_INV_78~combout\ : std_logic;
SIGNAL \inst1|inst5|4|sub|ALT_INV_78~combout\ : std_logic;
SIGNAL \inst1|inst5|172|sub|ALT_INV_90~combout\ : std_logic;
SIGNAL \inst1|inst5|4|sub|ALT_INV_90~combout\ : std_logic;
SIGNAL \inst1|inst5|172|sub|ALT_INV_97~combout\ : std_logic;
SIGNAL \inst1|inst5|4|sub|ALT_INV_97~combout\ : std_logic;
SIGNAL \inst1|inst5|172|sub|ALT_INV_107~combout\ : std_logic;
SIGNAL \inst1|inst5|4|sub|ALT_INV_107~combout\ : std_logic;
SIGNAL \inst1|inst5|173|sub|ALT_INV_78~combout\ : std_logic;
SIGNAL \inst1|inst5|173|sub|ALT_INV_90~combout\ : std_logic;
SIGNAL \inst1|inst5|173|sub|ALT_INV_97~combout\ : std_logic;
SIGNAL \inst1|inst5|173|sub|ALT_INV_107~combout\ : std_logic;
SIGNAL \inst1|inst5|130|sub|ALT_INV_107~combout\ : std_logic;
SIGNAL \inst1|inst5|129|sub|ALT_INV_104~1_combout\ : std_logic;
SIGNAL \inst1|inst5|126|sub|ALT_INV_107~combout\ : std_logic;
SIGNAL \inst1|inst5|125|sub|ALT_INV_104~1_combout\ : std_logic;
SIGNAL \inst1|inst5|174|sub|ALT_INV_107~combout\ : std_logic;
SIGNAL \inst1|inst5|173|sub|ALT_INV_104~0_combout\ : std_logic;
SIGNAL \inst1|inst5|33|sub|ALT_INV_106~0_combout\ : std_logic;
SIGNAL \inst1|inst5|130|sub|ALT_INV_97~combout\ : std_logic;
SIGNAL \inst1|inst5|126|sub|ALT_INV_97~combout\ : std_logic;
SIGNAL \inst1|inst5|174|sub|ALT_INV_97~combout\ : std_logic;
SIGNAL \inst1|inst5|173|sub|ALT_INV_96~0_combout\ : std_logic;
SIGNAL \inst1|inst5|172|sub|ALT_INV_106~0_combout\ : std_logic;
SIGNAL \inst1|inst|ALT_INV_Mux43~1_combout\ : std_logic;
SIGNAL \inst1|inst5|130|sub|ALT_INV_90~combout\ : std_logic;
SIGNAL \inst1|inst5|129|sub|ALT_INV_104~0_combout\ : std_logic;
SIGNAL \inst1|inst5|126|sub|ALT_INV_90~combout\ : std_logic;
SIGNAL \inst1|inst5|125|sub|ALT_INV_104~0_combout\ : std_logic;
SIGNAL \inst1|inst5|174|sub|ALT_INV_90~combout\ : std_logic;
SIGNAL \inst1|inst|ALT_INV_Mux21~0_combout\ : std_logic;
SIGNAL \inst1|inst|ALT_INV_Mux17~1_combout\ : std_logic;
SIGNAL \inst1|inst|ALT_INV_Mux17~0_combout\ : std_logic;
SIGNAL \inst1|inst|ALT_INV_Mux19~0_combout\ : std_logic;
SIGNAL \inst1|inst|ALT_INV_Mux5~0_combout\ : std_logic;
SIGNAL \inst1|inst|ALT_INV_Mux20~0_combout\ : std_logic;
SIGNAL \inst1|inst|ALT_INV_Mux18~0_combout\ : std_logic;
SIGNAL \inst1|inst|ALT_INV_Mux3~0_combout\ : std_logic;
SIGNAL \inst1|inst|ALT_INV_Mux22~1_combout\ : std_logic;
SIGNAL \inst1|inst|ALT_INV_Mux22~0_combout\ : std_logic;
SIGNAL \inst1|inst|ALT_INV_Mux7~1_combout\ : std_logic;
SIGNAL \inst1|inst|ALT_INV_Mux7~0_combout\ : std_logic;
SIGNAL \inst1|inst5|130|sub|ALT_INV_78~combout\ : std_logic;
SIGNAL \inst1|inst5|129|sub|ALT_INV_107~combout\ : std_logic;
SIGNAL \inst1|inst5|129|sub|ALT_INV_97~combout\ : std_logic;
SIGNAL \inst1|inst5|128|sub|ALT_INV_104~0_combout\ : std_logic;
SIGNAL \inst1|inst5|129|sub|ALT_INV_90~combout\ : std_logic;
SIGNAL \inst1|inst5|127|sub|ALT_INV_78~combout\ : std_logic;
SIGNAL \inst1|inst5|127|sub|ALT_INV_90~combout\ : std_logic;
SIGNAL \inst1|inst5|127|sub|ALT_INV_97~combout\ : std_logic;
SIGNAL \inst1|inst5|127|sub|ALT_INV_107~combout\ : std_logic;
SIGNAL \inst1|inst5|128|sub|ALT_INV_78~combout\ : std_logic;
SIGNAL \inst1|inst5|128|sub|ALT_INV_90~combout\ : std_logic;
SIGNAL \inst1|inst5|128|sub|ALT_INV_97~combout\ : std_logic;
SIGNAL \inst1|inst5|128|sub|ALT_INV_107~combout\ : std_logic;
SIGNAL \inst1|inst5|127|sub|ALT_INV_104~0_combout\ : std_logic;
SIGNAL \inst1|inst5|129|sub|ALT_INV_78~combout\ : std_logic;
SIGNAL \inst1|inst5|128|sub|ALT_INV_89~0_combout\ : std_logic;
SIGNAL \inst1|inst|ALT_INV_Mux33~2_combout\ : std_logic;
SIGNAL \inst1|inst5|126|sub|ALT_INV_78~combout\ : std_logic;
SIGNAL \inst1|inst5|125|sub|ALT_INV_107~combout\ : std_logic;
SIGNAL \inst1|inst5|125|sub|ALT_INV_97~combout\ : std_logic;
SIGNAL \inst1|inst5|124|sub|ALT_INV_104~0_combout\ : std_logic;
SIGNAL \inst1|inst5|125|sub|ALT_INV_90~combout\ : std_logic;
SIGNAL \inst1|inst5|123|sub|ALT_INV_78~combout\ : std_logic;
SIGNAL \inst1|inst5|123|sub|ALT_INV_90~combout\ : std_logic;
SIGNAL \inst1|inst5|123|sub|ALT_INV_97~combout\ : std_logic;
SIGNAL \inst1|inst5|123|sub|ALT_INV_107~combout\ : std_logic;
SIGNAL \inst1|inst5|124|sub|ALT_INV_78~combout\ : std_logic;
SIGNAL \inst1|inst5|124|sub|ALT_INV_90~combout\ : std_logic;
SIGNAL \inst1|inst5|124|sub|ALT_INV_97~combout\ : std_logic;
SIGNAL \inst1|inst5|124|sub|ALT_INV_107~combout\ : std_logic;
SIGNAL \inst1|inst5|123|sub|ALT_INV_104~0_combout\ : std_logic;
SIGNAL \inst1|inst|ALT_INV_Mux44~0_combout\ : std_logic;
SIGNAL \inst1|inst5|125|sub|ALT_INV_78~combout\ : std_logic;
SIGNAL \inst1|inst5|124|sub|ALT_INV_89~0_combout\ : std_logic;
SIGNAL \inst1|inst|ALT_INV_Mux32~0_combout\ : std_logic;
SIGNAL \inst1|inst|ALT_INV_Mux33~1_combout\ : std_logic;
SIGNAL \inst1|inst5|174|sub|ALT_INV_78~combout\ : std_logic;
SIGNAL \inst1|inst5|173|sub|ALT_INV_106~0_combout\ : std_logic;
SIGNAL \inst1|inst5|171|sub|ALT_INV_104~0_combout\ : std_logic;
SIGNAL \inst1|inst|ALT_INV_Mux41~0_combout\ : std_logic;
SIGNAL \inst1|inst|ALT_INV_Mux43~0_combout\ : std_logic;
SIGNAL \inst1|inst5|32|sub|ALT_INV_96~0_combout\ : std_logic;
SIGNAL \inst1|inst5|4|sub|ALT_INV_106~0_combout\ : std_logic;
SIGNAL \inst1|inst|ALT_INV_Mux23~0_combout\ : std_logic;
SIGNAL \ALT_INV_inst3~q\ : std_logic;
SIGNAL \inst1|inst|ALT_INV_Mux8~1_combout\ : std_logic;
SIGNAL \inst1|inst|ALT_INV_Mux8~0_combout\ : std_logic;
SIGNAL \inst1|inst|ALT_INV_Mux27~1_combout\ : std_logic;
SIGNAL \inst1|inst|ALT_INV_Mux33~0_combout\ : std_logic;
SIGNAL \inst1|inst|ALT_INV_Mux27~0_combout\ : std_logic;
SIGNAL \inst1|inst6|194|ALT_INV_41~3_combout\ : std_logic;
SIGNAL \inst1|inst6|194|ALT_INV_41~2_combout\ : std_logic;
SIGNAL \inst1|inst6|194|ALT_INV_41~1_combout\ : std_logic;
SIGNAL \inst1|inst6|195|ALT_INV_41~2_combout\ : std_logic;
SIGNAL \inst1|inst6|195|ALT_INV_41~1_combout\ : std_logic;
SIGNAL \inst1|inst6|195|ALT_INV_41~0_combout\ : std_logic;
SIGNAL \inst1|inst6|ALT_INV_204~combout\ : std_logic;
SIGNAL \inst1|inst6|195|ALT_INV_8~0_combout\ : std_logic;
SIGNAL \inst1|inst6|197|ALT_INV_41~2_combout\ : std_logic;
SIGNAL \inst1|inst6|197|ALT_INV_41~1_combout\ : std_logic;
SIGNAL \inst1|inst6|197|ALT_INV_41~0_combout\ : std_logic;
SIGNAL \inst1|inst6|162|sub|ALT_INV_105~0_combout\ : std_logic;
SIGNAL \inst1|inst6|197|ALT_INV_8~0_combout\ : std_logic;
SIGNAL \inst1|inst6|196|ALT_INV_41~1_combout\ : std_logic;
SIGNAL \inst1|inst6|196|ALT_INV_41~0_combout\ : std_logic;
SIGNAL \inst1|inst6|196|ALT_INV_8~0_combout\ : std_logic;
SIGNAL \inst1|inst6|201|ALT_INV_41~1_combout\ : std_logic;
SIGNAL \inst1|inst6|163|sub|ALT_INV_76~combout\ : std_logic;
SIGNAL \inst1|inst6|201|ALT_INV_41~0_combout\ : std_logic;
SIGNAL \inst1|inst6|201|ALT_INV_8~0_combout\ : std_logic;
SIGNAL \inst1|inst6|200|ALT_INV_41~4_combout\ : std_logic;
SIGNAL \inst1|inst6|200|ALT_INV_41~3_combout\ : std_logic;
SIGNAL \inst1|inst6|200|ALT_INV_41~2_combout\ : std_logic;
SIGNAL \inst1|inst6|200|ALT_INV_41~1_combout\ : std_logic;
SIGNAL \inst1|inst6|200|ALT_INV_41~0_combout\ : std_logic;
SIGNAL \inst1|inst6|200|ALT_INV_8~0_combout\ : std_logic;
SIGNAL \inst1|inst6|199|ALT_INV_41~2_combout\ : std_logic;
SIGNAL \inst1|inst6|199|ALT_INV_41~1_combout\ : std_logic;
SIGNAL \inst1|inst6|199|ALT_INV_41~0_combout\ : std_logic;
SIGNAL \inst1|inst6|194|ALT_INV_41~0_combout\ : std_logic;
SIGNAL \inst1|inst6|199|ALT_INV_8~0_combout\ : std_logic;
SIGNAL \inst1|inst6|198|ALT_INV_41~1_combout\ : std_logic;
SIGNAL \inst1|inst6|198|ALT_INV_47~combout\ : std_logic;
SIGNAL \inst1|inst6|198|ALT_INV_41~0_combout\ : std_logic;
SIGNAL \inst1|inst6|163|sub|ALT_INV_106~0_combout\ : std_logic;
SIGNAL \inst1|inst6|ALT_INV_124~q\ : std_logic;
SIGNAL \inst1|inst6|163|sub|ALT_INV_104~0_combout\ : std_logic;
SIGNAL \inst1|inst6|ALT_INV_121~q\ : std_logic;
SIGNAL \inst1|inst6|162|sub|ALT_INV_106~0_combout\ : std_logic;
SIGNAL \inst1|inst6|ALT_INV_113~q\ : std_logic;
SIGNAL \inst1|inst6|ALT_INV_115~q\ : std_logic;
SIGNAL \inst1|inst6|ALT_INV_117~q\ : std_logic;
SIGNAL \inst1|inst6|ALT_INV_120~q\ : std_logic;
SIGNAL \inst1|inst6|ALT_INV_125~q\ : std_logic;
SIGNAL \inst1|inst6|198|ALT_INV_8~0_combout\ : std_logic;
SIGNAL \inst1|inst6|ALT_INV_127~q\ : std_logic;
SIGNAL \inst1|inst|ALT_INV_Mux31~1_combout\ : std_logic;
SIGNAL \inst1|inst|ALT_INV_Mux31~0_combout\ : std_logic;
SIGNAL \inst1|inst|ALT_INV_Mux13~0_combout\ : std_logic;
SIGNAL \inst1|inst|ALT_INV_Mux30~1_combout\ : std_logic;
SIGNAL \inst1|inst|ALT_INV_Mux12~0_combout\ : std_logic;
SIGNAL \inst1|inst|ALT_INV_Mux10~1_combout\ : std_logic;
SIGNAL \inst1|inst|ALT_INV_Mux10~0_combout\ : std_logic;
SIGNAL \inst1|inst|ALT_INV_Mux29~0_combout\ : std_logic;
SIGNAL \inst1|inst|ALT_INV_Mux11~1_combout\ : std_logic;
SIGNAL \inst1|inst7|ALT_INV_inst3~q\ : std_logic;
SIGNAL \inst1|inst7|ALT_INV_inst4~q\ : std_logic;
SIGNAL \inst1|inst|ALT_INV_Mux11~0_combout\ : std_logic;
SIGNAL \inst1|inst7|ALT_INV_inst6~q\ : std_logic;
SIGNAL \inst1|inst7|ALT_INV_inst2~q\ : std_logic;
SIGNAL \inst1|inst7|ALT_INV_inst~q\ : std_logic;
SIGNAL \inst1|inst7|ALT_INV_13~q\ : std_logic;
SIGNAL \inst1|inst|ALT_INV_Mux30~0_combout\ : std_logic;
SIGNAL \ALT_INV_inst14~combout\ : std_logic;
SIGNAL \ALT_INV_37~combout\ : std_logic;
SIGNAL \inst1|inst5|140|sub|ALT_INV_76~combout\ : std_logic;
SIGNAL \inst1|inst5|140|sub|ALT_INV_78~combout\ : std_logic;
SIGNAL \inst1|inst5|131|sub|ALT_INV_78~combout\ : std_logic;
SIGNAL \inst1|inst5|140|sub|ALT_INV_80~combout\ : std_logic;
SIGNAL \inst1|inst5|131|sub|ALT_INV_80~combout\ : std_logic;
SIGNAL \inst1|inst5|140|sub|ALT_INV_82~combout\ : std_logic;
SIGNAL \inst1|inst5|131|sub|ALT_INV_82~combout\ : std_logic;
SIGNAL \inst1|inst5|141|sub|ALT_INV_76~combout\ : std_logic;
SIGNAL \inst1|inst5|133|sub|ALT_INV_76~combout\ : std_logic;
SIGNAL \inst1|inst5|141|sub|ALT_INV_78~combout\ : std_logic;
SIGNAL \inst1|inst5|140|sub|ALT_INV_107~0_combout\ : std_logic;
SIGNAL \inst1|inst5|133|sub|ALT_INV_78~combout\ : std_logic;
SIGNAL \inst1|inst5|131|sub|ALT_INV_107~0_combout\ : std_logic;
SIGNAL \inst1|inst5|141|sub|ALT_INV_80~combout\ : std_logic;
SIGNAL \inst1|inst5|133|sub|ALT_INV_80~combout\ : std_logic;
SIGNAL \inst1|inst5|141|sub|ALT_INV_82~combout\ : std_logic;
SIGNAL \inst1|inst5|141|sub|ALT_INV_105~2_combout\ : std_logic;
SIGNAL \inst1|inst5|133|sub|ALT_INV_82~combout\ : std_logic;
SIGNAL \inst1|inst5|133|sub|ALT_INV_105~2_combout\ : std_logic;
SIGNAL \inst1|inst5|142|sub|ALT_INV_77~combout\ : std_logic;
SIGNAL \inst1|inst5|32|sub|ALT_INV_9~q\ : std_logic;
SIGNAL \inst1|inst5|142|sub|ALT_INV_79~combout\ : std_logic;
SIGNAL \inst1|inst5|135|sub|ALT_INV_79~combout\ : std_logic;
SIGNAL \inst1|inst5|32|sub|ALT_INV_87~q\ : std_logic;
SIGNAL \inst1|inst5|142|sub|ALT_INV_81~combout\ : std_logic;
SIGNAL \inst1|inst5|135|sub|ALT_INV_81~combout\ : std_logic;
SIGNAL \inst1|inst5|32|sub|ALT_INV_99~q\ : std_logic;
SIGNAL \inst1|inst5|142|sub|ALT_INV_83~combout\ : std_logic;
SIGNAL \inst1|inst5|135|sub|ALT_INV_83~combout\ : std_logic;
SIGNAL \inst1|inst5|32|sub|ALT_INV_110~q\ : std_logic;
SIGNAL \ALT_INV_32~combout\ : std_logic;
SIGNAL \inst1|inst|ALT_INV_Mux38~0_combout\ : std_logic;
SIGNAL \inst1|inst5|169|ALT_INV_6~0_combout\ : std_logic;
SIGNAL \inst1|inst5|143|sub|ALT_INV_83~combout\ : std_logic;
SIGNAL \inst1|inst5|136|sub|ALT_INV_83~combout\ : std_logic;
SIGNAL \inst1|inst5|33|sub|ALT_INV_110~q\ : std_logic;
SIGNAL \inst1|inst5|167|ALT_INV_6~0_combout\ : std_logic;
SIGNAL \inst1|inst5|143|sub|ALT_INV_81~combout\ : std_logic;
SIGNAL \inst1|inst5|136|sub|ALT_INV_81~combout\ : std_logic;
SIGNAL \inst1|inst5|33|sub|ALT_INV_99~q\ : std_logic;
SIGNAL \inst1|inst5|165|ALT_INV_6~0_combout\ : std_logic;
SIGNAL \inst1|inst5|143|sub|ALT_INV_79~combout\ : std_logic;
SIGNAL \inst1|inst5|142|sub|ALT_INV_98~combout\ : std_logic;
SIGNAL \inst1|inst5|136|sub|ALT_INV_79~combout\ : std_logic;
SIGNAL \inst1|inst5|135|sub|ALT_INV_98~combout\ : std_logic;
SIGNAL \inst1|inst5|33|sub|ALT_INV_87~q\ : std_logic;
SIGNAL \inst1|inst5|163|ALT_INV_6~0_combout\ : std_logic;
SIGNAL \inst1|inst|ALT_INV_Mux36~0_combout\ : std_logic;
SIGNAL \inst1|inst|ALT_INV_Mux37~0_combout\ : std_logic;
SIGNAL \inst1|inst|ALT_INV_state\ : std_logic_vector(5 DOWNTO 0);
SIGNAL \inst1|inst5|143|sub|ALT_INV_77~combout\ : std_logic;
SIGNAL \inst1|inst5|141|sub|ALT_INV_107~0_combout\ : std_logic;
SIGNAL \inst1|inst5|141|sub|ALT_INV_105~1_combout\ : std_logic;
SIGNAL \inst1|inst5|141|sub|ALT_INV_105~0_combout\ : std_logic;
SIGNAL \inst1|inst5|140|sub|ALT_INV_106~0_combout\ : std_logic;
SIGNAL \inst1|inst5|inst1|ALT_INV_54~q\ : std_logic;
SIGNAL \inst1|inst5|inst1|ALT_INV_55~q\ : std_logic;
SIGNAL \inst1|inst5|inst1|ALT_INV_56~q\ : std_logic;
SIGNAL \inst1|inst5|inst1|ALT_INV_57~q\ : std_logic;
SIGNAL \inst1|inst5|inst1|ALT_INV_58~q\ : std_logic;
SIGNAL \inst1|inst5|141|sub|ALT_INV_97~combout\ : std_logic;
SIGNAL \inst1|inst5|inst1|ALT_INV_59~q\ : std_logic;
SIGNAL \inst1|inst5|inst1|ALT_INV_60~q\ : std_logic;
SIGNAL \inst1|inst5|inst1|ALT_INV_61~q\ : std_logic;
SIGNAL \inst1|inst5|136|sub|ALT_INV_77~combout\ : std_logic;
SIGNAL \inst1|inst5|133|sub|ALT_INV_107~0_combout\ : std_logic;
SIGNAL \inst1|inst5|133|sub|ALT_INV_105~1_combout\ : std_logic;
SIGNAL \inst1|inst5|133|sub|ALT_INV_105~0_combout\ : std_logic;
SIGNAL \inst1|inst5|131|sub|ALT_INV_106~0_combout\ : std_logic;
SIGNAL \inst1|inst5|inst1|ALT_INV_19~q\ : std_logic;
SIGNAL \inst1|inst5|inst1|ALT_INV_20~q\ : std_logic;
SIGNAL \inst1|inst5|inst1|ALT_INV_21~q\ : std_logic;
SIGNAL \inst1|inst5|inst1|ALT_INV_22~q\ : std_logic;
SIGNAL \inst1|inst5|inst1|ALT_INV_23~q\ : std_logic;
SIGNAL \inst1|inst5|133|sub|ALT_INV_97~combout\ : std_logic;
SIGNAL \inst1|inst5|inst1|ALT_INV_24~q\ : std_logic;
SIGNAL \inst1|inst5|inst1|ALT_INV_28~q\ : std_logic;
SIGNAL \inst1|inst5|inst1|ALT_INV_33~q\ : std_logic;
SIGNAL \inst1|inst5|33|sub|ALT_INV_9~q\ : std_logic;
SIGNAL \inst1|inst6|ALT_INV_161~combout\ : std_logic;
SIGNAL \inst1|inst6|ALT_INV_161~0_combout\ : std_logic;
SIGNAL \inst1|inst6|ALT_INV_122~q\ : std_logic;
SIGNAL \inst1|inst6|ALT_INV_119~q\ : std_logic;
SIGNAL \inst1|inst6|ALT_INV_118~q\ : std_logic;
SIGNAL \inst1|inst6|ALT_INV_116~q\ : std_logic;
SIGNAL \inst1|inst6|ALT_INV_114~q\ : std_logic;
SIGNAL \inst1|inst6|ALT_INV_126~q\ : std_logic;
SIGNAL \inst1|inst6|ALT_INV_123~q\ : std_logic;
SIGNAL \ALT_INV_inst2~q\ : std_logic;
SIGNAL \inst1|inst6|ALT_INV_128~q\ : std_logic;
SIGNAL \inst1|inst6|199|ALT_INV_41~7_combout\ : std_logic;
SIGNAL \inst1|inst6|199|ALT_INV_41~3_combout\ : std_logic;
SIGNAL \inst1|inst6|201|ALT_INV_41~2_combout\ : std_logic;
SIGNAL \inst1|inst6|196|ALT_INV_41~2_combout\ : std_logic;
SIGNAL \inst1|inst6|194|ALT_INV_41~4_combout\ : std_logic;
SIGNAL \inst11|altsyncram_component|auto_generated|ALT_INV_q_a\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \inst|altsyncram_component|auto_generated|ALT_INV_q_a\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \inst1|inst5|171|sub|ALT_INV_9~q\ : std_logic;
SIGNAL \inst1|inst5|3|sub|ALT_INV_9~q\ : std_logic;
SIGNAL \inst1|inst5|171|sub|ALT_INV_87~q\ : std_logic;
SIGNAL \inst1|inst5|3|sub|ALT_INV_87~q\ : std_logic;
SIGNAL \inst1|inst5|171|sub|ALT_INV_99~q\ : std_logic;
SIGNAL \inst1|inst5|3|sub|ALT_INV_99~q\ : std_logic;
SIGNAL \inst1|inst5|171|sub|ALT_INV_110~q\ : std_logic;
SIGNAL \inst1|inst5|3|sub|ALT_INV_110~q\ : std_logic;
SIGNAL \inst1|inst5|172|sub|ALT_INV_9~q\ : std_logic;
SIGNAL \inst1|inst5|4|sub|ALT_INV_9~q\ : std_logic;
SIGNAL \inst1|inst5|172|sub|ALT_INV_87~q\ : std_logic;
SIGNAL \inst1|inst5|4|sub|ALT_INV_87~q\ : std_logic;
SIGNAL \inst1|inst5|172|sub|ALT_INV_99~q\ : std_logic;
SIGNAL \inst1|inst5|4|sub|ALT_INV_99~q\ : std_logic;
SIGNAL \inst1|inst5|172|sub|ALT_INV_110~q\ : std_logic;
SIGNAL \inst1|inst5|4|sub|ALT_INV_110~q\ : std_logic;
SIGNAL \inst1|inst5|173|sub|ALT_INV_9~q\ : std_logic;
SIGNAL \inst1|inst5|173|sub|ALT_INV_87~q\ : std_logic;
SIGNAL \inst1|inst5|173|sub|ALT_INV_99~q\ : std_logic;
SIGNAL \inst1|inst5|173|sub|ALT_INV_110~q\ : std_logic;
SIGNAL \inst1|inst5|130|sub|ALT_INV_110~q\ : std_logic;
SIGNAL \inst1|inst5|126|sub|ALT_INV_110~q\ : std_logic;
SIGNAL \inst1|inst5|174|sub|ALT_INV_110~q\ : std_logic;
SIGNAL \inst1|inst5|130|sub|ALT_INV_99~q\ : std_logic;
SIGNAL \inst1|inst5|126|sub|ALT_INV_99~q\ : std_logic;
SIGNAL \inst1|inst5|174|sub|ALT_INV_99~q\ : std_logic;
SIGNAL \inst1|inst5|130|sub|ALT_INV_87~q\ : std_logic;
SIGNAL \inst1|inst5|126|sub|ALT_INV_87~q\ : std_logic;
SIGNAL \inst1|inst5|174|sub|ALT_INV_87~q\ : std_logic;
SIGNAL \inst1|inst5|130|sub|ALT_INV_9~q\ : std_logic;
SIGNAL \inst1|inst5|129|sub|ALT_INV_110~q\ : std_logic;
SIGNAL \inst1|inst5|129|sub|ALT_INV_99~q\ : std_logic;
SIGNAL \inst1|inst5|129|sub|ALT_INV_87~q\ : std_logic;
SIGNAL \inst1|inst5|127|sub|ALT_INV_9~q\ : std_logic;
SIGNAL \inst1|inst5|127|sub|ALT_INV_87~q\ : std_logic;
SIGNAL \inst1|inst5|127|sub|ALT_INV_99~q\ : std_logic;
SIGNAL \inst1|inst5|127|sub|ALT_INV_110~q\ : std_logic;
SIGNAL \inst1|inst5|128|sub|ALT_INV_9~q\ : std_logic;
SIGNAL \inst1|inst5|128|sub|ALT_INV_87~q\ : std_logic;
SIGNAL \inst1|inst5|128|sub|ALT_INV_99~q\ : std_logic;
SIGNAL \inst1|inst5|128|sub|ALT_INV_110~q\ : std_logic;
SIGNAL \inst1|inst5|129|sub|ALT_INV_9~q\ : std_logic;
SIGNAL \inst1|inst5|126|sub|ALT_INV_9~q\ : std_logic;
SIGNAL \inst1|inst5|125|sub|ALT_INV_110~q\ : std_logic;
SIGNAL \inst1|inst5|125|sub|ALT_INV_99~q\ : std_logic;
SIGNAL \inst1|inst5|125|sub|ALT_INV_87~q\ : std_logic;
SIGNAL \inst1|inst5|123|sub|ALT_INV_9~q\ : std_logic;
SIGNAL \inst1|inst5|123|sub|ALT_INV_87~q\ : std_logic;
SIGNAL \inst1|inst5|123|sub|ALT_INV_99~q\ : std_logic;
SIGNAL \inst1|inst5|123|sub|ALT_INV_110~q\ : std_logic;
SIGNAL \inst1|inst5|124|sub|ALT_INV_9~q\ : std_logic;
SIGNAL \inst1|inst5|124|sub|ALT_INV_87~q\ : std_logic;
SIGNAL \inst1|inst5|124|sub|ALT_INV_99~q\ : std_logic;
SIGNAL \inst1|inst5|124|sub|ALT_INV_110~q\ : std_logic;
SIGNAL \inst1|inst5|125|sub|ALT_INV_9~q\ : std_logic;
SIGNAL \inst1|inst5|174|sub|ALT_INV_9~q\ : std_logic;

BEGIN

N_FLG <= ww_N_FLG;
CLOCK <= ww_CLOCK;
ww_MCLK <= MCLK;
ww_nRESET <= nRESET;
Z_FLG <= ww_Z_FLG;
ROM_Enable <= ww_ROM_Enable;
ADDR <= ww_ADDR;
R_nW <= ww_R_nW;
RAM_Enable <= ww_RAM_Enable;
RAM_RD_EN <= ww_RAM_RD_EN;
RAM_WR_EN <= ww_RAM_WR_EN;
A <= ww_A;
ALU <= ww_ALU;
B <= ww_B;
ROM_OUT <= ww_ROM_OUT;
RAM_OUT <= ww_RAM_OUT;
IR <= ww_IR;
MSC <= ww_MSC;
STATE <= ww_STATE;
X <= ww_X;
XDISP <= ww_XDISP;
Y <= ww_Y;
YDISP <= ww_YDISP;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\inst|altsyncram_component|auto_generated|ram_block1a6_PORTAADDR_bus\ <= (\inst1|inst5|170|6~0_combout\ & \inst1|inst5|168|6~0_combout\ & \inst1|inst5|166|6~0_combout\ & \inst1|inst5|164|6~0_combout\ & \inst1|inst5|162|6~0_combout\ & 
\inst1|inst5|161|6~0_combout\ & \inst1|inst5|160|6~0_combout\ & \inst1|inst5|159|6~0_combout\ & \inst1|inst5|158|6~0_combout\ & \inst1|inst5|157|6~0_combout\ & \inst1|inst5|156|6~0_combout\ & \inst1|inst5|155|6~0_combout\);

\inst|altsyncram_component|auto_generated|q_a\(6) <= \inst|altsyncram_component|auto_generated|ram_block1a6_PORTADATAOUT_bus\(0);
\inst|altsyncram_component|auto_generated|q_a\(7) <= \inst|altsyncram_component|auto_generated|ram_block1a6_PORTADATAOUT_bus\(1);

\inst|altsyncram_component|auto_generated|ram_block1a4_PORTAADDR_bus\ <= (\inst1|inst5|170|6~0_combout\ & \inst1|inst5|168|6~0_combout\ & \inst1|inst5|166|6~0_combout\ & \inst1|inst5|164|6~0_combout\ & \inst1|inst5|162|6~0_combout\ & 
\inst1|inst5|161|6~0_combout\ & \inst1|inst5|160|6~0_combout\ & \inst1|inst5|159|6~0_combout\ & \inst1|inst5|158|6~0_combout\ & \inst1|inst5|157|6~0_combout\ & \inst1|inst5|156|6~0_combout\ & \inst1|inst5|155|6~0_combout\);

\inst|altsyncram_component|auto_generated|q_a\(4) <= \inst|altsyncram_component|auto_generated|ram_block1a4_PORTADATAOUT_bus\(0);
\inst|altsyncram_component|auto_generated|q_a\(5) <= \inst|altsyncram_component|auto_generated|ram_block1a4_PORTADATAOUT_bus\(1);

\inst|altsyncram_component|auto_generated|ram_block1a2_PORTAADDR_bus\ <= (\inst1|inst5|170|6~0_combout\ & \inst1|inst5|168|6~0_combout\ & \inst1|inst5|166|6~0_combout\ & \inst1|inst5|164|6~0_combout\ & \inst1|inst5|162|6~0_combout\ & 
\inst1|inst5|161|6~0_combout\ & \inst1|inst5|160|6~0_combout\ & \inst1|inst5|159|6~0_combout\ & \inst1|inst5|158|6~0_combout\ & \inst1|inst5|157|6~0_combout\ & \inst1|inst5|156|6~0_combout\ & \inst1|inst5|155|6~0_combout\);

\inst|altsyncram_component|auto_generated|q_a\(2) <= \inst|altsyncram_component|auto_generated|ram_block1a2_PORTADATAOUT_bus\(0);
\inst|altsyncram_component|auto_generated|q_a\(3) <= \inst|altsyncram_component|auto_generated|ram_block1a2_PORTADATAOUT_bus\(1);

\inst|altsyncram_component|auto_generated|ram_block1a0_PORTAADDR_bus\ <= (\inst1|inst5|170|6~0_combout\ & \inst1|inst5|168|6~0_combout\ & \inst1|inst5|166|6~0_combout\ & \inst1|inst5|164|6~0_combout\ & \inst1|inst5|162|6~0_combout\ & 
\inst1|inst5|161|6~0_combout\ & \inst1|inst5|160|6~0_combout\ & \inst1|inst5|159|6~0_combout\ & \inst1|inst5|158|6~0_combout\ & \inst1|inst5|157|6~0_combout\ & \inst1|inst5|156|6~0_combout\ & \inst1|inst5|155|6~0_combout\);

\inst|altsyncram_component|auto_generated|q_a\(0) <= \inst|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(0);
\inst|altsyncram_component|auto_generated|q_a\(1) <= \inst|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(1);

\inst11|altsyncram_component|auto_generated|ram_block1a6_PORTADATAIN_bus\ <= (\DATA[7]~input_o\ & \DATA[6]~input_o\);

\inst11|altsyncram_component|auto_generated|ram_block1a6_PORTAADDR_bus\ <= (\inst1|inst5|170|6~0_combout\ & \inst1|inst5|168|6~0_combout\ & \inst1|inst5|166|6~0_combout\ & \inst1|inst5|164|6~0_combout\ & \inst1|inst5|162|6~0_combout\ & 
\inst1|inst5|161|6~0_combout\ & \inst1|inst5|160|6~0_combout\ & \inst1|inst5|159|6~0_combout\ & \inst1|inst5|158|6~0_combout\ & \inst1|inst5|157|6~0_combout\ & \inst1|inst5|156|6~0_combout\ & \inst1|inst5|155|6~0_combout\);

\inst11|altsyncram_component|auto_generated|q_a\(6) <= \inst11|altsyncram_component|auto_generated|ram_block1a6_PORTADATAOUT_bus\(0);
\inst11|altsyncram_component|auto_generated|q_a\(7) <= \inst11|altsyncram_component|auto_generated|ram_block1a6_PORTADATAOUT_bus\(1);

\inst11|altsyncram_component|auto_generated|ram_block1a4_PORTADATAIN_bus\ <= (\DATA[5]~input_o\ & \DATA[4]~input_o\);

\inst11|altsyncram_component|auto_generated|ram_block1a4_PORTAADDR_bus\ <= (\inst1|inst5|170|6~0_combout\ & \inst1|inst5|168|6~0_combout\ & \inst1|inst5|166|6~0_combout\ & \inst1|inst5|164|6~0_combout\ & \inst1|inst5|162|6~0_combout\ & 
\inst1|inst5|161|6~0_combout\ & \inst1|inst5|160|6~0_combout\ & \inst1|inst5|159|6~0_combout\ & \inst1|inst5|158|6~0_combout\ & \inst1|inst5|157|6~0_combout\ & \inst1|inst5|156|6~0_combout\ & \inst1|inst5|155|6~0_combout\);

\inst11|altsyncram_component|auto_generated|q_a\(4) <= \inst11|altsyncram_component|auto_generated|ram_block1a4_PORTADATAOUT_bus\(0);
\inst11|altsyncram_component|auto_generated|q_a\(5) <= \inst11|altsyncram_component|auto_generated|ram_block1a4_PORTADATAOUT_bus\(1);

\inst11|altsyncram_component|auto_generated|ram_block1a2_PORTADATAIN_bus\ <= (\DATA[3]~input_o\ & \DATA[2]~input_o\);

\inst11|altsyncram_component|auto_generated|ram_block1a2_PORTAADDR_bus\ <= (\inst1|inst5|170|6~0_combout\ & \inst1|inst5|168|6~0_combout\ & \inst1|inst5|166|6~0_combout\ & \inst1|inst5|164|6~0_combout\ & \inst1|inst5|162|6~0_combout\ & 
\inst1|inst5|161|6~0_combout\ & \inst1|inst5|160|6~0_combout\ & \inst1|inst5|159|6~0_combout\ & \inst1|inst5|158|6~0_combout\ & \inst1|inst5|157|6~0_combout\ & \inst1|inst5|156|6~0_combout\ & \inst1|inst5|155|6~0_combout\);

\inst11|altsyncram_component|auto_generated|q_a\(2) <= \inst11|altsyncram_component|auto_generated|ram_block1a2_PORTADATAOUT_bus\(0);
\inst11|altsyncram_component|auto_generated|q_a\(3) <= \inst11|altsyncram_component|auto_generated|ram_block1a2_PORTADATAOUT_bus\(1);

\inst11|altsyncram_component|auto_generated|ram_block1a0_PORTADATAIN_bus\ <= (\DATA[1]~input_o\ & \DATA[0]~input_o\);

\inst11|altsyncram_component|auto_generated|ram_block1a0_PORTAADDR_bus\ <= (\inst1|inst5|170|6~0_combout\ & \inst1|inst5|168|6~0_combout\ & \inst1|inst5|166|6~0_combout\ & \inst1|inst5|164|6~0_combout\ & \inst1|inst5|162|6~0_combout\ & 
\inst1|inst5|161|6~0_combout\ & \inst1|inst5|160|6~0_combout\ & \inst1|inst5|159|6~0_combout\ & \inst1|inst5|158|6~0_combout\ & \inst1|inst5|157|6~0_combout\ & \inst1|inst5|156|6~0_combout\ & \inst1|inst5|155|6~0_combout\);

\inst11|altsyncram_component|auto_generated|q_a\(0) <= \inst11|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(0);
\inst11|altsyncram_component|auto_generated|q_a\(1) <= \inst11|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(1);
\inst1|inst5|33|sub|ALT_INV_110~DUPLICATE_q\ <= NOT \inst1|inst5|33|sub|110~DUPLICATE_q\;
\inst1|inst5|33|sub|ALT_INV_99~DUPLICATE_q\ <= NOT \inst1|inst5|33|sub|99~DUPLICATE_q\;
\inst1|inst5|33|sub|ALT_INV_87~DUPLICATE_q\ <= NOT \inst1|inst5|33|sub|87~DUPLICATE_q\;
\inst1|inst|ALT_INV_state[1]~DUPLICATE_q\ <= NOT \inst1|inst|state[1]~DUPLICATE_q\;
\inst1|inst|ALT_INV_state[5]~DUPLICATE_q\ <= NOT \inst1|inst|state[5]~DUPLICATE_q\;
\inst1|inst|ALT_INV_state[3]~DUPLICATE_q\ <= NOT \inst1|inst|state[3]~DUPLICATE_q\;
\inst1|inst|ALT_INV_state[2]~DUPLICATE_q\ <= NOT \inst1|inst|state[2]~DUPLICATE_q\;
\inst1|inst|ALT_INV_state[4]~DUPLICATE_q\ <= NOT \inst1|inst|state[4]~DUPLICATE_q\;
\inst1|inst|ALT_INV_state[0]~DUPLICATE_q\ <= NOT \inst1|inst|state[0]~DUPLICATE_q\;
\ALT_INV_DATA[0]~input_o\ <= NOT \DATA[0]~input_o\;
\ALT_INV_DATA[1]~input_o\ <= NOT \DATA[1]~input_o\;
\ALT_INV_DATA[2]~input_o\ <= NOT \DATA[2]~input_o\;
\ALT_INV_DATA[3]~input_o\ <= NOT \DATA[3]~input_o\;
\ALT_INV_DATA[4]~input_o\ <= NOT \DATA[4]~input_o\;
\ALT_INV_DATA[5]~input_o\ <= NOT \DATA[5]~input_o\;
\ALT_INV_DATA[6]~input_o\ <= NOT \DATA[6]~input_o\;
\ALT_INV_DATA[7]~input_o\ <= NOT \DATA[7]~input_o\;
\inst1|inst|ALT_INV_Mux21~2_combout\ <= NOT \inst1|inst|Mux21~2_combout\;
\inst1|inst|ALT_INV_Mux19~2_combout\ <= NOT \inst1|inst|Mux19~2_combout\;
\inst1|inst|ALT_INV_Mux1~1_combout\ <= NOT \inst1|inst|Mux1~1_combout\;
\inst1|inst|ALT_INV_Mux1~0_combout\ <= NOT \inst1|inst|Mux1~0_combout\;
\inst1|inst|ALT_INV_Mux24~2_combout\ <= NOT \inst1|inst|Mux24~2_combout\;
\inst1|inst|ALT_INV_Mux24~1_combout\ <= NOT \inst1|inst|Mux24~1_combout\;
\inst1|inst|ALT_INV_Mux24~0_combout\ <= NOT \inst1|inst|Mux24~0_combout\;
\inst1|inst5|171|sub|ALT_INV_78~combout\ <= NOT \inst1|inst5|171|sub|78~combout\;
\inst1|inst5|3|sub|ALT_INV_78~combout\ <= NOT \inst1|inst5|3|sub|78~combout\;
\inst1|inst5|171|sub|ALT_INV_90~combout\ <= NOT \inst1|inst5|171|sub|90~combout\;
\inst1|inst5|3|sub|ALT_INV_90~combout\ <= NOT \inst1|inst5|3|sub|90~combout\;
\inst1|inst5|171|sub|ALT_INV_97~combout\ <= NOT \inst1|inst5|171|sub|97~combout\;
\inst1|inst5|3|sub|ALT_INV_97~combout\ <= NOT \inst1|inst5|3|sub|97~combout\;
\inst1|inst5|171|sub|ALT_INV_107~combout\ <= NOT \inst1|inst5|171|sub|107~combout\;
\inst1|inst5|171|sub|ALT_INV_106~0_combout\ <= NOT \inst1|inst5|171|sub|106~0_combout\;
\inst1|inst5|3|sub|ALT_INV_107~combout\ <= NOT \inst1|inst5|3|sub|107~combout\;
\inst1|inst5|172|sub|ALT_INV_78~combout\ <= NOT \inst1|inst5|172|sub|78~combout\;
\inst1|inst5|4|sub|ALT_INV_78~combout\ <= NOT \inst1|inst5|4|sub|78~combout\;
\inst1|inst5|172|sub|ALT_INV_90~combout\ <= NOT \inst1|inst5|172|sub|90~combout\;
\inst1|inst5|4|sub|ALT_INV_90~combout\ <= NOT \inst1|inst5|4|sub|90~combout\;
\inst1|inst5|172|sub|ALT_INV_97~combout\ <= NOT \inst1|inst5|172|sub|97~combout\;
\inst1|inst5|4|sub|ALT_INV_97~combout\ <= NOT \inst1|inst5|4|sub|97~combout\;
\inst1|inst5|172|sub|ALT_INV_107~combout\ <= NOT \inst1|inst5|172|sub|107~combout\;
\inst1|inst5|4|sub|ALT_INV_107~combout\ <= NOT \inst1|inst5|4|sub|107~combout\;
\inst1|inst5|173|sub|ALT_INV_78~combout\ <= NOT \inst1|inst5|173|sub|78~combout\;
\inst1|inst5|173|sub|ALT_INV_90~combout\ <= NOT \inst1|inst5|173|sub|90~combout\;
\inst1|inst5|173|sub|ALT_INV_97~combout\ <= NOT \inst1|inst5|173|sub|97~combout\;
\inst1|inst5|173|sub|ALT_INV_107~combout\ <= NOT \inst1|inst5|173|sub|107~combout\;
\inst1|inst5|130|sub|ALT_INV_107~combout\ <= NOT \inst1|inst5|130|sub|107~combout\;
\inst1|inst5|129|sub|ALT_INV_104~1_combout\ <= NOT \inst1|inst5|129|sub|104~1_combout\;
\inst1|inst5|126|sub|ALT_INV_107~combout\ <= NOT \inst1|inst5|126|sub|107~combout\;
\inst1|inst5|125|sub|ALT_INV_104~1_combout\ <= NOT \inst1|inst5|125|sub|104~1_combout\;
\inst1|inst5|174|sub|ALT_INV_107~combout\ <= NOT \inst1|inst5|174|sub|107~combout\;
\inst1|inst5|173|sub|ALT_INV_104~0_combout\ <= NOT \inst1|inst5|173|sub|104~0_combout\;
\inst1|inst5|33|sub|ALT_INV_106~0_combout\ <= NOT \inst1|inst5|33|sub|106~0_combout\;
\inst1|inst5|130|sub|ALT_INV_97~combout\ <= NOT \inst1|inst5|130|sub|97~combout\;
\inst1|inst5|126|sub|ALT_INV_97~combout\ <= NOT \inst1|inst5|126|sub|97~combout\;
\inst1|inst5|174|sub|ALT_INV_97~combout\ <= NOT \inst1|inst5|174|sub|97~combout\;
\inst1|inst5|173|sub|ALT_INV_96~0_combout\ <= NOT \inst1|inst5|173|sub|96~0_combout\;
\inst1|inst5|172|sub|ALT_INV_106~0_combout\ <= NOT \inst1|inst5|172|sub|106~0_combout\;
\inst1|inst|ALT_INV_Mux43~1_combout\ <= NOT \inst1|inst|Mux43~1_combout\;
\inst1|inst5|130|sub|ALT_INV_90~combout\ <= NOT \inst1|inst5|130|sub|90~combout\;
\inst1|inst5|129|sub|ALT_INV_104~0_combout\ <= NOT \inst1|inst5|129|sub|104~0_combout\;
\inst1|inst5|126|sub|ALT_INV_90~combout\ <= NOT \inst1|inst5|126|sub|90~combout\;
\inst1|inst5|125|sub|ALT_INV_104~0_combout\ <= NOT \inst1|inst5|125|sub|104~0_combout\;
\inst1|inst5|174|sub|ALT_INV_90~combout\ <= NOT \inst1|inst5|174|sub|90~combout\;
\inst1|inst|ALT_INV_Mux21~0_combout\ <= NOT \inst1|inst|Mux21~0_combout\;
\inst1|inst|ALT_INV_Mux17~1_combout\ <= NOT \inst1|inst|Mux17~1_combout\;
\inst1|inst|ALT_INV_Mux17~0_combout\ <= NOT \inst1|inst|Mux17~0_combout\;
\inst1|inst|ALT_INV_Mux19~0_combout\ <= NOT \inst1|inst|Mux19~0_combout\;
\inst1|inst|ALT_INV_Mux5~0_combout\ <= NOT \inst1|inst|Mux5~0_combout\;
\inst1|inst|ALT_INV_Mux20~0_combout\ <= NOT \inst1|inst|Mux20~0_combout\;
\inst1|inst|ALT_INV_Mux18~0_combout\ <= NOT \inst1|inst|Mux18~0_combout\;
\inst1|inst|ALT_INV_Mux3~0_combout\ <= NOT \inst1|inst|Mux3~0_combout\;
\inst1|inst|ALT_INV_Mux22~1_combout\ <= NOT \inst1|inst|Mux22~1_combout\;
\inst1|inst|ALT_INV_Mux22~0_combout\ <= NOT \inst1|inst|Mux22~0_combout\;
\inst1|inst|ALT_INV_Mux7~1_combout\ <= NOT \inst1|inst|Mux7~1_combout\;
\inst1|inst|ALT_INV_Mux7~0_combout\ <= NOT \inst1|inst|Mux7~0_combout\;
\inst1|inst5|130|sub|ALT_INV_78~combout\ <= NOT \inst1|inst5|130|sub|78~combout\;
\inst1|inst5|129|sub|ALT_INV_107~combout\ <= NOT \inst1|inst5|129|sub|107~combout\;
\inst1|inst5|129|sub|ALT_INV_97~combout\ <= NOT \inst1|inst5|129|sub|97~combout\;
\inst1|inst5|128|sub|ALT_INV_104~0_combout\ <= NOT \inst1|inst5|128|sub|104~0_combout\;
\inst1|inst5|129|sub|ALT_INV_90~combout\ <= NOT \inst1|inst5|129|sub|90~combout\;
\inst1|inst5|127|sub|ALT_INV_78~combout\ <= NOT \inst1|inst5|127|sub|78~combout\;
\inst1|inst5|127|sub|ALT_INV_90~combout\ <= NOT \inst1|inst5|127|sub|90~combout\;
\inst1|inst5|127|sub|ALT_INV_97~combout\ <= NOT \inst1|inst5|127|sub|97~combout\;
\inst1|inst5|127|sub|ALT_INV_107~combout\ <= NOT \inst1|inst5|127|sub|107~combout\;
\inst1|inst5|128|sub|ALT_INV_78~combout\ <= NOT \inst1|inst5|128|sub|78~combout\;
\inst1|inst5|128|sub|ALT_INV_90~combout\ <= NOT \inst1|inst5|128|sub|90~combout\;
\inst1|inst5|128|sub|ALT_INV_97~combout\ <= NOT \inst1|inst5|128|sub|97~combout\;
\inst1|inst5|128|sub|ALT_INV_107~combout\ <= NOT \inst1|inst5|128|sub|107~combout\;
\inst1|inst5|127|sub|ALT_INV_104~0_combout\ <= NOT \inst1|inst5|127|sub|104~0_combout\;
\inst1|inst5|129|sub|ALT_INV_78~combout\ <= NOT \inst1|inst5|129|sub|78~combout\;
\inst1|inst5|128|sub|ALT_INV_89~0_combout\ <= NOT \inst1|inst5|128|sub|89~0_combout\;
\inst1|inst|ALT_INV_Mux33~2_combout\ <= NOT \inst1|inst|Mux33~2_combout\;
\inst1|inst5|126|sub|ALT_INV_78~combout\ <= NOT \inst1|inst5|126|sub|78~combout\;
\inst1|inst5|125|sub|ALT_INV_107~combout\ <= NOT \inst1|inst5|125|sub|107~combout\;
\inst1|inst5|125|sub|ALT_INV_97~combout\ <= NOT \inst1|inst5|125|sub|97~combout\;
\inst1|inst5|124|sub|ALT_INV_104~0_combout\ <= NOT \inst1|inst5|124|sub|104~0_combout\;
\inst1|inst5|125|sub|ALT_INV_90~combout\ <= NOT \inst1|inst5|125|sub|90~combout\;
\inst1|inst5|123|sub|ALT_INV_78~combout\ <= NOT \inst1|inst5|123|sub|78~combout\;
\inst1|inst5|123|sub|ALT_INV_90~combout\ <= NOT \inst1|inst5|123|sub|90~combout\;
\inst1|inst5|123|sub|ALT_INV_97~combout\ <= NOT \inst1|inst5|123|sub|97~combout\;
\inst1|inst5|123|sub|ALT_INV_107~combout\ <= NOT \inst1|inst5|123|sub|107~combout\;
\inst1|inst5|124|sub|ALT_INV_78~combout\ <= NOT \inst1|inst5|124|sub|78~combout\;
\inst1|inst5|124|sub|ALT_INV_90~combout\ <= NOT \inst1|inst5|124|sub|90~combout\;
\inst1|inst5|124|sub|ALT_INV_97~combout\ <= NOT \inst1|inst5|124|sub|97~combout\;
\inst1|inst5|124|sub|ALT_INV_107~combout\ <= NOT \inst1|inst5|124|sub|107~combout\;
\inst1|inst5|123|sub|ALT_INV_104~0_combout\ <= NOT \inst1|inst5|123|sub|104~0_combout\;
\inst1|inst|ALT_INV_Mux44~0_combout\ <= NOT \inst1|inst|Mux44~0_combout\;
\inst1|inst5|125|sub|ALT_INV_78~combout\ <= NOT \inst1|inst5|125|sub|78~combout\;
\inst1|inst5|124|sub|ALT_INV_89~0_combout\ <= NOT \inst1|inst5|124|sub|89~0_combout\;
\inst1|inst|ALT_INV_Mux32~0_combout\ <= NOT \inst1|inst|Mux32~0_combout\;
\inst1|inst|ALT_INV_Mux33~1_combout\ <= NOT \inst1|inst|Mux33~1_combout\;
\inst1|inst5|174|sub|ALT_INV_78~combout\ <= NOT \inst1|inst5|174|sub|78~combout\;
\inst1|inst5|173|sub|ALT_INV_106~0_combout\ <= NOT \inst1|inst5|173|sub|106~0_combout\;
\inst1|inst5|171|sub|ALT_INV_104~0_combout\ <= NOT \inst1|inst5|171|sub|104~0_combout\;
\inst1|inst|ALT_INV_Mux41~0_combout\ <= NOT \inst1|inst|Mux41~0_combout\;
\inst1|inst|ALT_INV_Mux43~0_combout\ <= NOT \inst1|inst|Mux43~0_combout\;
\inst1|inst5|32|sub|ALT_INV_96~0_combout\ <= NOT \inst1|inst5|32|sub|96~0_combout\;
\inst1|inst5|4|sub|ALT_INV_106~0_combout\ <= NOT \inst1|inst5|4|sub|106~0_combout\;
\inst1|inst|ALT_INV_Mux23~0_combout\ <= NOT \inst1|inst|Mux23~0_combout\;
\ALT_INV_inst3~q\ <= NOT \inst3~q\;
\inst1|inst|ALT_INV_Mux8~1_combout\ <= NOT \inst1|inst|Mux8~1_combout\;
\inst1|inst|ALT_INV_Mux8~0_combout\ <= NOT \inst1|inst|Mux8~0_combout\;
\inst1|inst|ALT_INV_Mux27~1_combout\ <= NOT \inst1|inst|Mux27~1_combout\;
\inst1|inst|ALT_INV_Mux33~0_combout\ <= NOT \inst1|inst|Mux33~0_combout\;
\inst1|inst|ALT_INV_Mux27~0_combout\ <= NOT \inst1|inst|Mux27~0_combout\;
\inst1|inst6|194|ALT_INV_41~3_combout\ <= NOT \inst1|inst6|194|41~3_combout\;
\inst1|inst6|194|ALT_INV_41~2_combout\ <= NOT \inst1|inst6|194|41~2_combout\;
\inst1|inst6|194|ALT_INV_41~1_combout\ <= NOT \inst1|inst6|194|41~1_combout\;
\inst1|inst6|195|ALT_INV_41~2_combout\ <= NOT \inst1|inst6|195|41~2_combout\;
\inst1|inst6|195|ALT_INV_41~1_combout\ <= NOT \inst1|inst6|195|41~1_combout\;
\inst1|inst6|195|ALT_INV_41~0_combout\ <= NOT \inst1|inst6|195|41~0_combout\;
\inst1|inst6|ALT_INV_204~combout\ <= NOT \inst1|inst6|204~combout\;
\inst1|inst6|195|ALT_INV_8~0_combout\ <= NOT \inst1|inst6|195|8~0_combout\;
\inst1|inst6|197|ALT_INV_41~2_combout\ <= NOT \inst1|inst6|197|41~2_combout\;
\inst1|inst6|197|ALT_INV_41~1_combout\ <= NOT \inst1|inst6|197|41~1_combout\;
\inst1|inst6|197|ALT_INV_41~0_combout\ <= NOT \inst1|inst6|197|41~0_combout\;
\inst1|inst6|162|sub|ALT_INV_105~0_combout\ <= NOT \inst1|inst6|162|sub|105~0_combout\;
\inst1|inst6|197|ALT_INV_8~0_combout\ <= NOT \inst1|inst6|197|8~0_combout\;
\inst1|inst6|196|ALT_INV_41~1_combout\ <= NOT \inst1|inst6|196|41~1_combout\;
\inst1|inst6|196|ALT_INV_41~0_combout\ <= NOT \inst1|inst6|196|41~0_combout\;
\inst1|inst6|196|ALT_INV_8~0_combout\ <= NOT \inst1|inst6|196|8~0_combout\;
\inst1|inst6|201|ALT_INV_41~1_combout\ <= NOT \inst1|inst6|201|41~1_combout\;
\inst1|inst6|163|sub|ALT_INV_76~combout\ <= NOT \inst1|inst6|163|sub|76~combout\;
\inst1|inst6|201|ALT_INV_41~0_combout\ <= NOT \inst1|inst6|201|41~0_combout\;
\inst1|inst6|201|ALT_INV_8~0_combout\ <= NOT \inst1|inst6|201|8~0_combout\;
\inst1|inst6|200|ALT_INV_41~4_combout\ <= NOT \inst1|inst6|200|41~4_combout\;
\inst1|inst6|200|ALT_INV_41~3_combout\ <= NOT \inst1|inst6|200|41~3_combout\;
\inst1|inst6|200|ALT_INV_41~2_combout\ <= NOT \inst1|inst6|200|41~2_combout\;
\inst1|inst6|200|ALT_INV_41~1_combout\ <= NOT \inst1|inst6|200|41~1_combout\;
\inst1|inst6|200|ALT_INV_41~0_combout\ <= NOT \inst1|inst6|200|41~0_combout\;
\inst1|inst6|200|ALT_INV_8~0_combout\ <= NOT \inst1|inst6|200|8~0_combout\;
\inst1|inst6|199|ALT_INV_41~2_combout\ <= NOT \inst1|inst6|199|41~2_combout\;
\inst1|inst6|199|ALT_INV_41~1_combout\ <= NOT \inst1|inst6|199|41~1_combout\;
\inst1|inst6|199|ALT_INV_41~0_combout\ <= NOT \inst1|inst6|199|41~0_combout\;
\inst1|inst6|194|ALT_INV_41~0_combout\ <= NOT \inst1|inst6|194|41~0_combout\;
\inst1|inst6|199|ALT_INV_8~0_combout\ <= NOT \inst1|inst6|199|8~0_combout\;
\inst1|inst6|198|ALT_INV_41~1_combout\ <= NOT \inst1|inst6|198|41~1_combout\;
\inst1|inst6|198|ALT_INV_47~combout\ <= NOT \inst1|inst6|198|47~combout\;
\inst1|inst6|198|ALT_INV_41~0_combout\ <= NOT \inst1|inst6|198|41~0_combout\;
\inst1|inst6|163|sub|ALT_INV_106~0_combout\ <= NOT \inst1|inst6|163|sub|106~0_combout\;
\inst1|inst6|ALT_INV_124~q\ <= NOT \inst1|inst6|124~q\;
\inst1|inst6|163|sub|ALT_INV_104~0_combout\ <= NOT \inst1|inst6|163|sub|104~0_combout\;
\inst1|inst6|ALT_INV_121~q\ <= NOT \inst1|inst6|121~q\;
\inst1|inst6|162|sub|ALT_INV_106~0_combout\ <= NOT \inst1|inst6|162|sub|106~0_combout\;
\inst1|inst6|ALT_INV_113~q\ <= NOT \inst1|inst6|113~q\;
\inst1|inst6|ALT_INV_115~q\ <= NOT \inst1|inst6|115~q\;
\inst1|inst6|ALT_INV_117~q\ <= NOT \inst1|inst6|117~q\;
\inst1|inst6|ALT_INV_120~q\ <= NOT \inst1|inst6|120~q\;
\inst1|inst6|ALT_INV_125~q\ <= NOT \inst1|inst6|125~q\;
\inst1|inst6|198|ALT_INV_8~0_combout\ <= NOT \inst1|inst6|198|8~0_combout\;
\inst1|inst6|ALT_INV_127~q\ <= NOT \inst1|inst6|127~q\;
\inst1|inst|ALT_INV_Mux31~1_combout\ <= NOT \inst1|inst|Mux31~1_combout\;
\inst1|inst|ALT_INV_Mux31~0_combout\ <= NOT \inst1|inst|Mux31~0_combout\;
\inst1|inst|ALT_INV_Mux13~0_combout\ <= NOT \inst1|inst|Mux13~0_combout\;
\inst1|inst|ALT_INV_Mux30~1_combout\ <= NOT \inst1|inst|Mux30~1_combout\;
\inst1|inst|ALT_INV_Mux12~0_combout\ <= NOT \inst1|inst|Mux12~0_combout\;
\inst1|inst|ALT_INV_Mux10~1_combout\ <= NOT \inst1|inst|Mux10~1_combout\;
\inst1|inst|ALT_INV_Mux10~0_combout\ <= NOT \inst1|inst|Mux10~0_combout\;
\inst1|inst|ALT_INV_Mux29~0_combout\ <= NOT \inst1|inst|Mux29~0_combout\;
\inst1|inst|ALT_INV_Mux11~1_combout\ <= NOT \inst1|inst|Mux11~1_combout\;
\inst1|inst7|ALT_INV_inst3~q\ <= NOT \inst1|inst7|inst3~q\;
\inst1|inst7|ALT_INV_inst4~q\ <= NOT \inst1|inst7|inst4~q\;
\inst1|inst|ALT_INV_Mux11~0_combout\ <= NOT \inst1|inst|Mux11~0_combout\;
\inst1|inst7|ALT_INV_inst6~q\ <= NOT \inst1|inst7|inst6~q\;
\inst1|inst7|ALT_INV_inst2~q\ <= NOT \inst1|inst7|inst2~q\;
\inst1|inst7|ALT_INV_inst~q\ <= NOT \inst1|inst7|inst~q\;
\inst1|inst7|ALT_INV_13~q\ <= NOT \inst1|inst7|13~q\;
\inst1|inst|ALT_INV_Mux30~0_combout\ <= NOT \inst1|inst|Mux30~0_combout\;
\ALT_INV_inst14~combout\ <= NOT \inst14~combout\;
\ALT_INV_37~combout\ <= NOT \37~combout\;
\inst1|inst5|140|sub|ALT_INV_76~combout\ <= NOT \inst1|inst5|140|sub|76~combout\;
\inst1|inst5|140|sub|ALT_INV_78~combout\ <= NOT \inst1|inst5|140|sub|78~combout\;
\inst1|inst5|131|sub|ALT_INV_78~combout\ <= NOT \inst1|inst5|131|sub|78~combout\;
\inst1|inst5|140|sub|ALT_INV_80~combout\ <= NOT \inst1|inst5|140|sub|80~combout\;
\inst1|inst5|131|sub|ALT_INV_80~combout\ <= NOT \inst1|inst5|131|sub|80~combout\;
\inst1|inst5|140|sub|ALT_INV_82~combout\ <= NOT \inst1|inst5|140|sub|82~combout\;
\inst1|inst5|131|sub|ALT_INV_82~combout\ <= NOT \inst1|inst5|131|sub|82~combout\;
\inst1|inst5|141|sub|ALT_INV_76~combout\ <= NOT \inst1|inst5|141|sub|76~combout\;
\inst1|inst5|133|sub|ALT_INV_76~combout\ <= NOT \inst1|inst5|133|sub|76~combout\;
\inst1|inst5|141|sub|ALT_INV_78~combout\ <= NOT \inst1|inst5|141|sub|78~combout\;
\inst1|inst5|140|sub|ALT_INV_107~0_combout\ <= NOT \inst1|inst5|140|sub|107~0_combout\;
\inst1|inst5|133|sub|ALT_INV_78~combout\ <= NOT \inst1|inst5|133|sub|78~combout\;
\inst1|inst5|131|sub|ALT_INV_107~0_combout\ <= NOT \inst1|inst5|131|sub|107~0_combout\;
\inst1|inst5|141|sub|ALT_INV_80~combout\ <= NOT \inst1|inst5|141|sub|80~combout\;
\inst1|inst5|133|sub|ALT_INV_80~combout\ <= NOT \inst1|inst5|133|sub|80~combout\;
\inst1|inst5|141|sub|ALT_INV_82~combout\ <= NOT \inst1|inst5|141|sub|82~combout\;
\inst1|inst5|141|sub|ALT_INV_105~2_combout\ <= NOT \inst1|inst5|141|sub|105~2_combout\;
\inst1|inst5|133|sub|ALT_INV_82~combout\ <= NOT \inst1|inst5|133|sub|82~combout\;
\inst1|inst5|133|sub|ALT_INV_105~2_combout\ <= NOT \inst1|inst5|133|sub|105~2_combout\;
\inst1|inst5|142|sub|ALT_INV_77~combout\ <= NOT \inst1|inst5|142|sub|77~combout\;
\inst1|inst5|32|sub|ALT_INV_9~q\ <= NOT \inst1|inst5|32|sub|9~q\;
\inst1|inst5|142|sub|ALT_INV_79~combout\ <= NOT \inst1|inst5|142|sub|79~combout\;
\inst1|inst5|135|sub|ALT_INV_79~combout\ <= NOT \inst1|inst5|135|sub|79~combout\;
\inst1|inst5|32|sub|ALT_INV_87~q\ <= NOT \inst1|inst5|32|sub|87~q\;
\inst1|inst5|142|sub|ALT_INV_81~combout\ <= NOT \inst1|inst5|142|sub|81~combout\;
\inst1|inst5|135|sub|ALT_INV_81~combout\ <= NOT \inst1|inst5|135|sub|81~combout\;
\inst1|inst5|32|sub|ALT_INV_99~q\ <= NOT \inst1|inst5|32|sub|99~q\;
\inst1|inst5|142|sub|ALT_INV_83~combout\ <= NOT \inst1|inst5|142|sub|83~combout\;
\inst1|inst5|135|sub|ALT_INV_83~combout\ <= NOT \inst1|inst5|135|sub|83~combout\;
\inst1|inst5|32|sub|ALT_INV_110~q\ <= NOT \inst1|inst5|32|sub|110~q\;
\ALT_INV_32~combout\ <= NOT \32~combout\;
\inst1|inst|ALT_INV_Mux38~0_combout\ <= NOT \inst1|inst|Mux38~0_combout\;
\inst1|inst5|169|ALT_INV_6~0_combout\ <= NOT \inst1|inst5|169|6~0_combout\;
\inst1|inst5|143|sub|ALT_INV_83~combout\ <= NOT \inst1|inst5|143|sub|83~combout\;
\inst1|inst5|136|sub|ALT_INV_83~combout\ <= NOT \inst1|inst5|136|sub|83~combout\;
\inst1|inst5|33|sub|ALT_INV_110~q\ <= NOT \inst1|inst5|33|sub|110~q\;
\inst1|inst5|167|ALT_INV_6~0_combout\ <= NOT \inst1|inst5|167|6~0_combout\;
\inst1|inst5|143|sub|ALT_INV_81~combout\ <= NOT \inst1|inst5|143|sub|81~combout\;
\inst1|inst5|136|sub|ALT_INV_81~combout\ <= NOT \inst1|inst5|136|sub|81~combout\;
\inst1|inst5|33|sub|ALT_INV_99~q\ <= NOT \inst1|inst5|33|sub|99~q\;
\inst1|inst5|165|ALT_INV_6~0_combout\ <= NOT \inst1|inst5|165|6~0_combout\;
\inst1|inst5|143|sub|ALT_INV_79~combout\ <= NOT \inst1|inst5|143|sub|79~combout\;
\inst1|inst5|142|sub|ALT_INV_98~combout\ <= NOT \inst1|inst5|142|sub|98~combout\;
\inst1|inst5|136|sub|ALT_INV_79~combout\ <= NOT \inst1|inst5|136|sub|79~combout\;
\inst1|inst5|135|sub|ALT_INV_98~combout\ <= NOT \inst1|inst5|135|sub|98~combout\;
\inst1|inst5|33|sub|ALT_INV_87~q\ <= NOT \inst1|inst5|33|sub|87~q\;
\inst1|inst5|163|ALT_INV_6~0_combout\ <= NOT \inst1|inst5|163|6~0_combout\;
\inst1|inst|ALT_INV_Mux36~0_combout\ <= NOT \inst1|inst|Mux36~0_combout\;
\inst1|inst|ALT_INV_Mux37~0_combout\ <= NOT \inst1|inst|Mux37~0_combout\;
\inst1|inst|ALT_INV_state\(1) <= NOT \inst1|inst|state\(1);
\inst1|inst|ALT_INV_state\(5) <= NOT \inst1|inst|state\(5);
\inst1|inst|ALT_INV_state\(3) <= NOT \inst1|inst|state\(3);
\inst1|inst|ALT_INV_state\(2) <= NOT \inst1|inst|state\(2);
\inst1|inst|ALT_INV_state\(4) <= NOT \inst1|inst|state\(4);
\inst1|inst|ALT_INV_state\(0) <= NOT \inst1|inst|state\(0);
\inst1|inst5|143|sub|ALT_INV_77~combout\ <= NOT \inst1|inst5|143|sub|77~combout\;
\inst1|inst5|141|sub|ALT_INV_107~0_combout\ <= NOT \inst1|inst5|141|sub|107~0_combout\;
\inst1|inst5|141|sub|ALT_INV_105~1_combout\ <= NOT \inst1|inst5|141|sub|105~1_combout\;
\inst1|inst5|141|sub|ALT_INV_105~0_combout\ <= NOT \inst1|inst5|141|sub|105~0_combout\;
\inst1|inst5|140|sub|ALT_INV_106~0_combout\ <= NOT \inst1|inst5|140|sub|106~0_combout\;
\inst1|inst5|inst1|ALT_INV_54~q\ <= NOT \inst1|inst5|inst1|54~q\;
\inst1|inst5|inst1|ALT_INV_55~q\ <= NOT \inst1|inst5|inst1|55~q\;
\inst1|inst5|inst1|ALT_INV_56~q\ <= NOT \inst1|inst5|inst1|56~q\;
\inst1|inst5|inst1|ALT_INV_57~q\ <= NOT \inst1|inst5|inst1|57~q\;
\inst1|inst5|inst1|ALT_INV_58~q\ <= NOT \inst1|inst5|inst1|58~q\;
\inst1|inst5|141|sub|ALT_INV_97~combout\ <= NOT \inst1|inst5|141|sub|97~combout\;
\inst1|inst5|inst1|ALT_INV_59~q\ <= NOT \inst1|inst5|inst1|59~q\;
\inst1|inst5|inst1|ALT_INV_60~q\ <= NOT \inst1|inst5|inst1|60~q\;
\inst1|inst5|inst1|ALT_INV_61~q\ <= NOT \inst1|inst5|inst1|61~q\;
\inst1|inst5|136|sub|ALT_INV_77~combout\ <= NOT \inst1|inst5|136|sub|77~combout\;
\inst1|inst5|133|sub|ALT_INV_107~0_combout\ <= NOT \inst1|inst5|133|sub|107~0_combout\;
\inst1|inst5|133|sub|ALT_INV_105~1_combout\ <= NOT \inst1|inst5|133|sub|105~1_combout\;
\inst1|inst5|133|sub|ALT_INV_105~0_combout\ <= NOT \inst1|inst5|133|sub|105~0_combout\;
\inst1|inst5|131|sub|ALT_INV_106~0_combout\ <= NOT \inst1|inst5|131|sub|106~0_combout\;
\inst1|inst5|inst1|ALT_INV_19~q\ <= NOT \inst1|inst5|inst1|19~q\;
\inst1|inst5|inst1|ALT_INV_20~q\ <= NOT \inst1|inst5|inst1|20~q\;
\inst1|inst5|inst1|ALT_INV_21~q\ <= NOT \inst1|inst5|inst1|21~q\;
\inst1|inst5|inst1|ALT_INV_22~q\ <= NOT \inst1|inst5|inst1|22~q\;
\inst1|inst5|inst1|ALT_INV_23~q\ <= NOT \inst1|inst5|inst1|23~q\;
\inst1|inst5|133|sub|ALT_INV_97~combout\ <= NOT \inst1|inst5|133|sub|97~combout\;
\inst1|inst5|inst1|ALT_INV_24~q\ <= NOT \inst1|inst5|inst1|24~q\;
\inst1|inst5|inst1|ALT_INV_28~q\ <= NOT \inst1|inst5|inst1|28~q\;
\inst1|inst5|inst1|ALT_INV_33~q\ <= NOT \inst1|inst5|inst1|33~q\;
\inst1|inst5|33|sub|ALT_INV_9~q\ <= NOT \inst1|inst5|33|sub|9~q\;
\inst1|inst6|ALT_INV_161~combout\ <= NOT \inst1|inst6|161~combout\;
\inst1|inst6|ALT_INV_161~0_combout\ <= NOT \inst1|inst6|161~0_combout\;
\inst1|inst6|ALT_INV_122~q\ <= NOT \inst1|inst6|122~q\;
\inst1|inst6|ALT_INV_119~q\ <= NOT \inst1|inst6|119~q\;
\inst1|inst6|ALT_INV_118~q\ <= NOT \inst1|inst6|118~q\;
\inst1|inst6|ALT_INV_116~q\ <= NOT \inst1|inst6|116~q\;
\inst1|inst6|ALT_INV_114~q\ <= NOT \inst1|inst6|114~q\;
\inst1|inst6|ALT_INV_126~q\ <= NOT \inst1|inst6|126~q\;
\inst1|inst6|ALT_INV_123~q\ <= NOT \inst1|inst6|123~q\;
\ALT_INV_inst2~q\ <= NOT \inst2~q\;
\inst1|inst6|ALT_INV_128~q\ <= NOT \inst1|inst6|128~q\;
\inst1|inst6|199|ALT_INV_41~7_combout\ <= NOT \inst1|inst6|199|41~7_combout\;
\inst1|inst6|199|ALT_INV_41~3_combout\ <= NOT \inst1|inst6|199|41~3_combout\;
\inst1|inst6|201|ALT_INV_41~2_combout\ <= NOT \inst1|inst6|201|41~2_combout\;
\inst1|inst6|196|ALT_INV_41~2_combout\ <= NOT \inst1|inst6|196|41~2_combout\;
\inst1|inst6|194|ALT_INV_41~4_combout\ <= NOT \inst1|inst6|194|41~4_combout\;
\inst11|altsyncram_component|auto_generated|ALT_INV_q_a\(1) <= NOT \inst11|altsyncram_component|auto_generated|q_a\(1);
\inst11|altsyncram_component|auto_generated|ALT_INV_q_a\(0) <= NOT \inst11|altsyncram_component|auto_generated|q_a\(0);
\inst11|altsyncram_component|auto_generated|ALT_INV_q_a\(3) <= NOT \inst11|altsyncram_component|auto_generated|q_a\(3);
\inst11|altsyncram_component|auto_generated|ALT_INV_q_a\(2) <= NOT \inst11|altsyncram_component|auto_generated|q_a\(2);
\inst11|altsyncram_component|auto_generated|ALT_INV_q_a\(5) <= NOT \inst11|altsyncram_component|auto_generated|q_a\(5);
\inst11|altsyncram_component|auto_generated|ALT_INV_q_a\(4) <= NOT \inst11|altsyncram_component|auto_generated|q_a\(4);
\inst11|altsyncram_component|auto_generated|ALT_INV_q_a\(7) <= NOT \inst11|altsyncram_component|auto_generated|q_a\(7);
\inst11|altsyncram_component|auto_generated|ALT_INV_q_a\(6) <= NOT \inst11|altsyncram_component|auto_generated|q_a\(6);
\inst|altsyncram_component|auto_generated|ALT_INV_q_a\(1) <= NOT \inst|altsyncram_component|auto_generated|q_a\(1);
\inst|altsyncram_component|auto_generated|ALT_INV_q_a\(0) <= NOT \inst|altsyncram_component|auto_generated|q_a\(0);
\inst|altsyncram_component|auto_generated|ALT_INV_q_a\(3) <= NOT \inst|altsyncram_component|auto_generated|q_a\(3);
\inst|altsyncram_component|auto_generated|ALT_INV_q_a\(2) <= NOT \inst|altsyncram_component|auto_generated|q_a\(2);
\inst|altsyncram_component|auto_generated|ALT_INV_q_a\(5) <= NOT \inst|altsyncram_component|auto_generated|q_a\(5);
\inst|altsyncram_component|auto_generated|ALT_INV_q_a\(4) <= NOT \inst|altsyncram_component|auto_generated|q_a\(4);
\inst|altsyncram_component|auto_generated|ALT_INV_q_a\(7) <= NOT \inst|altsyncram_component|auto_generated|q_a\(7);
\inst|altsyncram_component|auto_generated|ALT_INV_q_a\(6) <= NOT \inst|altsyncram_component|auto_generated|q_a\(6);
\inst1|inst5|171|sub|ALT_INV_9~q\ <= NOT \inst1|inst5|171|sub|9~q\;
\inst1|inst5|3|sub|ALT_INV_9~q\ <= NOT \inst1|inst5|3|sub|9~q\;
\inst1|inst5|171|sub|ALT_INV_87~q\ <= NOT \inst1|inst5|171|sub|87~q\;
\inst1|inst5|3|sub|ALT_INV_87~q\ <= NOT \inst1|inst5|3|sub|87~q\;
\inst1|inst5|171|sub|ALT_INV_99~q\ <= NOT \inst1|inst5|171|sub|99~q\;
\inst1|inst5|3|sub|ALT_INV_99~q\ <= NOT \inst1|inst5|3|sub|99~q\;
\inst1|inst5|171|sub|ALT_INV_110~q\ <= NOT \inst1|inst5|171|sub|110~q\;
\inst1|inst5|3|sub|ALT_INV_110~q\ <= NOT \inst1|inst5|3|sub|110~q\;
\inst1|inst5|172|sub|ALT_INV_9~q\ <= NOT \inst1|inst5|172|sub|9~q\;
\inst1|inst5|4|sub|ALT_INV_9~q\ <= NOT \inst1|inst5|4|sub|9~q\;
\inst1|inst5|172|sub|ALT_INV_87~q\ <= NOT \inst1|inst5|172|sub|87~q\;
\inst1|inst5|4|sub|ALT_INV_87~q\ <= NOT \inst1|inst5|4|sub|87~q\;
\inst1|inst5|172|sub|ALT_INV_99~q\ <= NOT \inst1|inst5|172|sub|99~q\;
\inst1|inst5|4|sub|ALT_INV_99~q\ <= NOT \inst1|inst5|4|sub|99~q\;
\inst1|inst5|172|sub|ALT_INV_110~q\ <= NOT \inst1|inst5|172|sub|110~q\;
\inst1|inst5|4|sub|ALT_INV_110~q\ <= NOT \inst1|inst5|4|sub|110~q\;
\inst1|inst5|173|sub|ALT_INV_9~q\ <= NOT \inst1|inst5|173|sub|9~q\;
\inst1|inst5|173|sub|ALT_INV_87~q\ <= NOT \inst1|inst5|173|sub|87~q\;
\inst1|inst5|173|sub|ALT_INV_99~q\ <= NOT \inst1|inst5|173|sub|99~q\;
\inst1|inst5|173|sub|ALT_INV_110~q\ <= NOT \inst1|inst5|173|sub|110~q\;
\inst1|inst5|130|sub|ALT_INV_110~q\ <= NOT \inst1|inst5|130|sub|110~q\;
\inst1|inst5|126|sub|ALT_INV_110~q\ <= NOT \inst1|inst5|126|sub|110~q\;
\inst1|inst5|174|sub|ALT_INV_110~q\ <= NOT \inst1|inst5|174|sub|110~q\;
\inst1|inst5|130|sub|ALT_INV_99~q\ <= NOT \inst1|inst5|130|sub|99~q\;
\inst1|inst5|126|sub|ALT_INV_99~q\ <= NOT \inst1|inst5|126|sub|99~q\;
\inst1|inst5|174|sub|ALT_INV_99~q\ <= NOT \inst1|inst5|174|sub|99~q\;
\inst1|inst5|130|sub|ALT_INV_87~q\ <= NOT \inst1|inst5|130|sub|87~q\;
\inst1|inst5|126|sub|ALT_INV_87~q\ <= NOT \inst1|inst5|126|sub|87~q\;
\inst1|inst5|174|sub|ALT_INV_87~q\ <= NOT \inst1|inst5|174|sub|87~q\;
\inst1|inst5|130|sub|ALT_INV_9~q\ <= NOT \inst1|inst5|130|sub|9~q\;
\inst1|inst5|129|sub|ALT_INV_110~q\ <= NOT \inst1|inst5|129|sub|110~q\;
\inst1|inst5|129|sub|ALT_INV_99~q\ <= NOT \inst1|inst5|129|sub|99~q\;
\inst1|inst5|129|sub|ALT_INV_87~q\ <= NOT \inst1|inst5|129|sub|87~q\;
\inst1|inst5|127|sub|ALT_INV_9~q\ <= NOT \inst1|inst5|127|sub|9~q\;
\inst1|inst5|127|sub|ALT_INV_87~q\ <= NOT \inst1|inst5|127|sub|87~q\;
\inst1|inst5|127|sub|ALT_INV_99~q\ <= NOT \inst1|inst5|127|sub|99~q\;
\inst1|inst5|127|sub|ALT_INV_110~q\ <= NOT \inst1|inst5|127|sub|110~q\;
\inst1|inst5|128|sub|ALT_INV_9~q\ <= NOT \inst1|inst5|128|sub|9~q\;
\inst1|inst5|128|sub|ALT_INV_87~q\ <= NOT \inst1|inst5|128|sub|87~q\;
\inst1|inst5|128|sub|ALT_INV_99~q\ <= NOT \inst1|inst5|128|sub|99~q\;
\inst1|inst5|128|sub|ALT_INV_110~q\ <= NOT \inst1|inst5|128|sub|110~q\;
\inst1|inst5|129|sub|ALT_INV_9~q\ <= NOT \inst1|inst5|129|sub|9~q\;
\inst1|inst5|126|sub|ALT_INV_9~q\ <= NOT \inst1|inst5|126|sub|9~q\;
\inst1|inst5|125|sub|ALT_INV_110~q\ <= NOT \inst1|inst5|125|sub|110~q\;
\inst1|inst5|125|sub|ALT_INV_99~q\ <= NOT \inst1|inst5|125|sub|99~q\;
\inst1|inst5|125|sub|ALT_INV_87~q\ <= NOT \inst1|inst5|125|sub|87~q\;
\inst1|inst5|123|sub|ALT_INV_9~q\ <= NOT \inst1|inst5|123|sub|9~q\;
\inst1|inst5|123|sub|ALT_INV_87~q\ <= NOT \inst1|inst5|123|sub|87~q\;
\inst1|inst5|123|sub|ALT_INV_99~q\ <= NOT \inst1|inst5|123|sub|99~q\;
\inst1|inst5|123|sub|ALT_INV_110~q\ <= NOT \inst1|inst5|123|sub|110~q\;
\inst1|inst5|124|sub|ALT_INV_9~q\ <= NOT \inst1|inst5|124|sub|9~q\;
\inst1|inst5|124|sub|ALT_INV_87~q\ <= NOT \inst1|inst5|124|sub|87~q\;
\inst1|inst5|124|sub|ALT_INV_99~q\ <= NOT \inst1|inst5|124|sub|99~q\;
\inst1|inst5|124|sub|ALT_INV_110~q\ <= NOT \inst1|inst5|124|sub|110~q\;
\inst1|inst5|125|sub|ALT_INV_9~q\ <= NOT \inst1|inst5|125|sub|9~q\;
\inst1|inst5|174|sub|ALT_INV_9~q\ <= NOT \inst1|inst5|174|sub|9~q\;

-- Location: IOOBUF_X82_Y0_N93
\N_FLG~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|inst6|128~q\,
	devoe => ww_devoe,
	o => ww_N_FLG);

-- Location: IOOBUF_X89_Y11_N96
\CLOCK~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2~q\,
	devoe => ww_devoe,
	o => ww_CLOCK);

-- Location: IOOBUF_X38_Y0_N2
\Z_FLG~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|inst6|ALT_INV_161~combout\,
	devoe => ww_devoe,
	o => ww_Z_FLG);

-- Location: IOOBUF_X58_Y0_N42
\ROM_Enable~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \32~combout\,
	devoe => ww_devoe,
	o => ww_ROM_Enable);

-- Location: IOOBUF_X24_Y0_N19
\ADDR[15]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|inst5|169|6~0_combout\,
	devoe => ww_devoe,
	o => ww_ADDR(15));

-- Location: IOOBUF_X24_Y0_N36
\ADDR[14]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|inst5|167|6~0_combout\,
	devoe => ww_devoe,
	o => ww_ADDR(14));

-- Location: IOOBUF_X34_Y0_N76
\ADDR[13]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|inst5|165|6~0_combout\,
	devoe => ww_devoe,
	o => ww_ADDR(13));

-- Location: IOOBUF_X89_Y4_N79
\ADDR[12]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|inst5|163|6~0_combout\,
	devoe => ww_devoe,
	o => ww_ADDR(12));

-- Location: IOOBUF_X68_Y0_N36
\ADDR[11]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|inst5|170|6~0_combout\,
	devoe => ww_devoe,
	o => ww_ADDR(11));

-- Location: IOOBUF_X70_Y0_N19
\ADDR[10]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|inst5|168|6~0_combout\,
	devoe => ww_devoe,
	o => ww_ADDR(10));

-- Location: IOOBUF_X72_Y0_N2
\ADDR[9]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|inst5|166|6~0_combout\,
	devoe => ww_devoe,
	o => ww_ADDR(9));

-- Location: IOOBUF_X72_Y0_N53
\ADDR[8]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|inst5|164|6~0_combout\,
	devoe => ww_devoe,
	o => ww_ADDR(8));

-- Location: IOOBUF_X70_Y0_N2
\ADDR[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|inst5|162|6~0_combout\,
	devoe => ww_devoe,
	o => ww_ADDR(7));

-- Location: IOOBUF_X68_Y0_N2
\ADDR[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|inst5|161|6~0_combout\,
	devoe => ww_devoe,
	o => ww_ADDR(6));

-- Location: IOOBUF_X68_Y0_N19
\ADDR[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|inst5|160|6~0_combout\,
	devoe => ww_devoe,
	o => ww_ADDR(5));

-- Location: IOOBUF_X72_Y0_N19
\ADDR[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|inst5|159|6~0_combout\,
	devoe => ww_devoe,
	o => ww_ADDR(4));

-- Location: IOOBUF_X89_Y6_N22
\ADDR[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|inst5|158|6~0_combout\,
	devoe => ww_devoe,
	o => ww_ADDR(3));

-- Location: IOOBUF_X68_Y0_N53
\ADDR[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|inst5|157|6~0_combout\,
	devoe => ww_devoe,
	o => ww_ADDR(2));

-- Location: IOOBUF_X70_Y0_N53
\ADDR[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|inst5|156|6~0_combout\,
	devoe => ww_devoe,
	o => ww_ADDR(1));

-- Location: IOOBUF_X70_Y0_N36
\ADDR[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|inst5|155|6~0_combout\,
	devoe => ww_devoe,
	o => ww_ADDR(0));

-- Location: IOOBUF_X34_Y0_N42
\R_nW~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|inst|Mux38~0_combout\,
	devoe => ww_devoe,
	o => ww_R_nW);

-- Location: IOOBUF_X74_Y0_N76
\RAM_Enable~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_37~combout\,
	devoe => ww_devoe,
	o => ww_RAM_Enable);

-- Location: IOOBUF_X38_Y81_N53
\RAM_RD_EN~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst14~combout\,
	devoe => ww_devoe,
	o => ww_RAM_RD_EN);

-- Location: IOOBUF_X89_Y15_N22
\RAM_WR_EN~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst7~combout\,
	devoe => ww_devoe,
	o => ww_RAM_WR_EN);

-- Location: IOOBUF_X84_Y0_N2
\A[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|inst6|128~q\,
	devoe => ww_devoe,
	o => ww_A(7));

-- Location: IOOBUF_X52_Y0_N2
\A[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|inst6|126~q\,
	devoe => ww_devoe,
	o => ww_A(6));

-- Location: IOOBUF_X89_Y9_N22
\A[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|inst6|123~q\,
	devoe => ww_devoe,
	o => ww_A(5));

-- Location: IOOBUF_X36_Y0_N53
\A[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|inst6|122~q\,
	devoe => ww_devoe,
	o => ww_A(4));

-- Location: IOOBUF_X52_Y0_N53
\A[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|inst6|119~q\,
	devoe => ww_devoe,
	o => ww_A(3));

-- Location: IOOBUF_X89_Y16_N56
\A[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|inst6|118~q\,
	devoe => ww_devoe,
	o => ww_A(2));

-- Location: IOOBUF_X24_Y0_N2
\A[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|inst6|116~q\,
	devoe => ww_devoe,
	o => ww_A(1));

-- Location: IOOBUF_X89_Y15_N56
\A[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|inst6|114~q\,
	devoe => ww_devoe,
	o => ww_A(0));

-- Location: IOOBUF_X26_Y0_N42
\ALU[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|inst6|198|41~1_combout\,
	devoe => ww_devoe,
	o => ww_ALU(7));

-- Location: IOOBUF_X28_Y0_N2
\ALU[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|inst6|199|41~2_combout\,
	devoe => ww_devoe,
	o => ww_ALU(6));

-- Location: IOOBUF_X50_Y0_N76
\ALU[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|inst6|200|41~4_combout\,
	devoe => ww_devoe,
	o => ww_ALU(5));

-- Location: IOOBUF_X89_Y6_N5
\ALU[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|inst6|201|41~1_combout\,
	devoe => ww_devoe,
	o => ww_ALU(4));

-- Location: IOOBUF_X54_Y0_N36
\ALU[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|inst6|196|41~1_combout\,
	devoe => ww_devoe,
	o => ww_ALU(3));

-- Location: IOOBUF_X76_Y0_N2
\ALU[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|inst6|197|41~2_combout\,
	devoe => ww_devoe,
	o => ww_ALU(2));

-- Location: IOOBUF_X32_Y0_N53
\ALU[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|inst6|195|41~2_combout\,
	devoe => ww_devoe,
	o => ww_ALU(1));

-- Location: IOOBUF_X50_Y0_N42
\ALU[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|inst6|194|41~4_combout\,
	devoe => ww_devoe,
	o => ww_ALU(0));

-- Location: IOOBUF_X34_Y0_N93
\B[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|inst6|127~q\,
	devoe => ww_devoe,
	o => ww_B(7));

-- Location: IOOBUF_X50_Y0_N59
\B[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|inst6|125~q\,
	devoe => ww_devoe,
	o => ww_B(6));

-- Location: IOOBUF_X50_Y0_N93
\B[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|inst6|124~q\,
	devoe => ww_devoe,
	o => ww_B(5));

-- Location: IOOBUF_X56_Y0_N36
\B[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|inst6|121~q\,
	devoe => ww_devoe,
	o => ww_B(4));

-- Location: IOOBUF_X38_Y0_N36
\B[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|inst6|120~q\,
	devoe => ww_devoe,
	o => ww_B(3));

-- Location: IOOBUF_X36_Y0_N2
\B[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|inst6|117~q\,
	devoe => ww_devoe,
	o => ww_B(2));

-- Location: IOOBUF_X26_Y0_N59
\B[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|inst6|115~q\,
	devoe => ww_devoe,
	o => ww_B(1));

-- Location: IOOBUF_X36_Y0_N19
\B[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|inst6|113~q\,
	devoe => ww_devoe,
	o => ww_B(0));

-- Location: IOOBUF_X40_Y81_N2
\ROM_OUT[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|altsyncram_component|auto_generated|q_a\(7),
	devoe => ww_devoe,
	o => ww_ROM_OUT(7));

-- Location: IOOBUF_X89_Y6_N39
\ROM_OUT[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|altsyncram_component|auto_generated|q_a\(6),
	devoe => ww_devoe,
	o => ww_ROM_OUT(6));

-- Location: IOOBUF_X54_Y0_N53
\ROM_OUT[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|altsyncram_component|auto_generated|q_a\(5),
	devoe => ww_devoe,
	o => ww_ROM_OUT(5));

-- Location: IOOBUF_X38_Y81_N36
\ROM_OUT[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|altsyncram_component|auto_generated|q_a\(4),
	devoe => ww_devoe,
	o => ww_ROM_OUT(4));

-- Location: IOOBUF_X32_Y0_N2
\ROM_OUT[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|altsyncram_component|auto_generated|q_a\(3),
	devoe => ww_devoe,
	o => ww_ROM_OUT(3));

-- Location: IOOBUF_X54_Y0_N19
\ROM_OUT[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|altsyncram_component|auto_generated|q_a\(2),
	devoe => ww_devoe,
	o => ww_ROM_OUT(2));

-- Location: IOOBUF_X28_Y0_N36
\ROM_OUT[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|altsyncram_component|auto_generated|q_a\(1),
	devoe => ww_devoe,
	o => ww_ROM_OUT(1));

-- Location: IOOBUF_X80_Y0_N36
\ROM_OUT[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|altsyncram_component|auto_generated|q_a\(0),
	devoe => ww_devoe,
	o => ww_ROM_OUT(0));

-- Location: IOOBUF_X36_Y81_N53
\RAM_OUT[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst11|altsyncram_component|auto_generated|q_a\(7),
	devoe => ww_devoe,
	o => ww_RAM_OUT(7));

-- Location: IOOBUF_X30_Y0_N19
\RAM_OUT[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst11|altsyncram_component|auto_generated|q_a\(6),
	devoe => ww_devoe,
	o => ww_RAM_OUT(6));

-- Location: IOOBUF_X40_Y0_N19
\RAM_OUT[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst11|altsyncram_component|auto_generated|q_a\(5),
	devoe => ww_devoe,
	o => ww_RAM_OUT(5));

-- Location: IOOBUF_X38_Y0_N19
\RAM_OUT[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst11|altsyncram_component|auto_generated|q_a\(4),
	devoe => ww_devoe,
	o => ww_RAM_OUT(4));

-- Location: IOOBUF_X40_Y0_N36
\RAM_OUT[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst11|altsyncram_component|auto_generated|q_a\(3),
	devoe => ww_devoe,
	o => ww_RAM_OUT(3));

-- Location: IOOBUF_X38_Y0_N53
\RAM_OUT[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst11|altsyncram_component|auto_generated|q_a\(2),
	devoe => ww_devoe,
	o => ww_RAM_OUT(2));

-- Location: IOOBUF_X82_Y0_N42
\RAM_OUT[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst11|altsyncram_component|auto_generated|q_a\(1),
	devoe => ww_devoe,
	o => ww_RAM_OUT(1));

-- Location: IOOBUF_X40_Y81_N53
\RAM_OUT[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst11|altsyncram_component|auto_generated|q_a\(0),
	devoe => ww_devoe,
	o => ww_RAM_OUT(0));

-- Location: IOOBUF_X66_Y0_N42
\IR[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|inst7|inst3~q\,
	devoe => ww_devoe,
	o => ww_IR(5));

-- Location: IOOBUF_X78_Y0_N36
\IR[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|inst7|inst4~q\,
	devoe => ww_devoe,
	o => ww_IR(4));

-- Location: IOOBUF_X76_Y0_N53
\IR[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|inst7|inst6~q\,
	devoe => ww_devoe,
	o => ww_IR(3));

-- Location: IOOBUF_X28_Y0_N19
\IR[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|inst7|inst2~q\,
	devoe => ww_devoe,
	o => ww_IR(2));

-- Location: IOOBUF_X40_Y0_N2
\IR[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|inst7|inst~q\,
	devoe => ww_devoe,
	o => ww_IR(1));

-- Location: IOOBUF_X64_Y0_N19
\IR[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|inst7|13~q\,
	devoe => ww_devoe,
	o => ww_IR(0));

-- Location: IOOBUF_X54_Y0_N2
\MSC[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|inst|Mux10~1_combout\,
	devoe => ww_devoe,
	o => ww_MSC(3));

-- Location: IOOBUF_X52_Y0_N19
\MSC[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|inst|Mux29~0_combout\,
	devoe => ww_devoe,
	o => ww_MSC(2));

-- Location: IOOBUF_X89_Y9_N56
\MSC[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|inst|Mux30~1_combout\,
	devoe => ww_devoe,
	o => ww_MSC(1));

-- Location: IOOBUF_X56_Y0_N19
\MSC[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|inst|Mux31~1_combout\,
	devoe => ww_devoe,
	o => ww_MSC(0));

-- Location: IOOBUF_X64_Y0_N36
\STATE[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|inst|state\(5),
	devoe => ww_devoe,
	o => ww_STATE(5));

-- Location: IOOBUF_X58_Y0_N93
\STATE[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|inst|state[4]~DUPLICATE_q\,
	devoe => ww_devoe,
	o => ww_STATE(4));

-- Location: IOOBUF_X62_Y0_N19
\STATE[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|inst|state\(3),
	devoe => ww_devoe,
	o => ww_STATE(3));

-- Location: IOOBUF_X56_Y0_N53
\STATE[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|inst|state[2]~DUPLICATE_q\,
	devoe => ww_devoe,
	o => ww_STATE(2));

-- Location: IOOBUF_X89_Y11_N62
\STATE[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|inst|state\(1),
	devoe => ww_devoe,
	o => ww_STATE(1));

-- Location: IOOBUF_X58_Y0_N76
\STATE[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|inst|state[0]~DUPLICATE_q\,
	devoe => ww_devoe,
	o => ww_STATE(0));

-- Location: IOOBUF_X30_Y0_N53
\X[15]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|inst5|126|sub|110~q\,
	devoe => ww_devoe,
	o => ww_X(15));

-- Location: IOOBUF_X89_Y13_N56
\X[14]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|inst5|126|sub|99~q\,
	devoe => ww_devoe,
	o => ww_X(14));

-- Location: IOOBUF_X80_Y0_N19
\X[13]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|inst5|126|sub|87~q\,
	devoe => ww_devoe,
	o => ww_X(13));

-- Location: IOOBUF_X40_Y0_N53
\X[12]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|inst5|126|sub|9~q\,
	devoe => ww_devoe,
	o => ww_X(12));

-- Location: IOOBUF_X89_Y9_N39
\X[11]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|inst5|125|sub|110~q\,
	devoe => ww_devoe,
	o => ww_X(11));

-- Location: IOOBUF_X62_Y0_N53
\X[10]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|inst5|125|sub|99~q\,
	devoe => ww_devoe,
	o => ww_X(10));

-- Location: IOOBUF_X89_Y11_N79
\X[9]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|inst5|125|sub|87~q\,
	devoe => ww_devoe,
	o => ww_X(9));

-- Location: IOOBUF_X62_Y0_N2
\X[8]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|inst5|125|sub|9~q\,
	devoe => ww_devoe,
	o => ww_X(8));

-- Location: IOOBUF_X89_Y4_N45
\X[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|inst5|124|sub|110~q\,
	devoe => ww_devoe,
	o => ww_X(7));

-- Location: IOOBUF_X89_Y13_N22
\X[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|inst5|124|sub|99~q\,
	devoe => ww_devoe,
	o => ww_X(6));

-- Location: IOOBUF_X89_Y13_N5
\X[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|inst5|124|sub|87~q\,
	devoe => ww_devoe,
	o => ww_X(5));

-- Location: IOOBUF_X89_Y15_N5
\X[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|inst5|124|sub|9~q\,
	devoe => ww_devoe,
	o => ww_X(4));

-- Location: IOOBUF_X64_Y0_N2
\X[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|inst5|123|sub|110~q\,
	devoe => ww_devoe,
	o => ww_X(3));

-- Location: IOOBUF_X89_Y11_N45
\X[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|inst5|123|sub|99~q\,
	devoe => ww_devoe,
	o => ww_X(2));

-- Location: IOOBUF_X66_Y0_N59
\X[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|inst5|123|sub|87~q\,
	devoe => ww_devoe,
	o => ww_X(1));

-- Location: IOOBUF_X89_Y13_N39
\X[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|inst5|123|sub|9~q\,
	devoe => ww_devoe,
	o => ww_X(0));

-- Location: IOOBUF_X40_Y81_N19
\XDISP[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|inst5|inst1|33~q\,
	devoe => ww_devoe,
	o => ww_XDISP(7));

-- Location: IOOBUF_X78_Y0_N53
\XDISP[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|inst5|inst1|28~q\,
	devoe => ww_devoe,
	o => ww_XDISP(6));

-- Location: IOOBUF_X40_Y81_N36
\XDISP[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|inst5|inst1|24~q\,
	devoe => ww_devoe,
	o => ww_XDISP(5));

-- Location: IOOBUF_X30_Y81_N36
\XDISP[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|inst5|inst1|23~q\,
	devoe => ww_devoe,
	o => ww_XDISP(4));

-- Location: IOOBUF_X80_Y0_N2
\XDISP[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|inst5|inst1|22~q\,
	devoe => ww_devoe,
	o => ww_XDISP(3));

-- Location: IOOBUF_X76_Y0_N19
\XDISP[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|inst5|inst1|21~q\,
	devoe => ww_devoe,
	o => ww_XDISP(2));

-- Location: IOOBUF_X30_Y0_N2
\XDISP[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|inst5|inst1|20~q\,
	devoe => ww_devoe,
	o => ww_XDISP(1));

-- Location: IOOBUF_X38_Y81_N19
\XDISP[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|inst5|inst1|19~q\,
	devoe => ww_devoe,
	o => ww_XDISP(0));

-- Location: IOOBUF_X89_Y16_N22
\Y[15]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|inst5|130|sub|110~q\,
	devoe => ww_devoe,
	o => ww_Y(15));

-- Location: IOOBUF_X32_Y0_N19
\Y[14]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|inst5|130|sub|99~q\,
	devoe => ww_devoe,
	o => ww_Y(14));

-- Location: IOOBUF_X89_Y15_N39
\Y[13]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|inst5|130|sub|87~q\,
	devoe => ww_devoe,
	o => ww_Y(13));

-- Location: IOOBUF_X89_Y4_N62
\Y[12]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|inst5|130|sub|9~q\,
	devoe => ww_devoe,
	o => ww_Y(12));

-- Location: IOOBUF_X66_Y0_N76
\Y[11]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|inst5|129|sub|110~q\,
	devoe => ww_devoe,
	o => ww_Y(11));

-- Location: IOOBUF_X76_Y0_N36
\Y[10]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|inst5|129|sub|99~q\,
	devoe => ww_devoe,
	o => ww_Y(10));

-- Location: IOOBUF_X82_Y0_N76
\Y[9]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|inst5|129|sub|87~q\,
	devoe => ww_devoe,
	o => ww_Y(9));

-- Location: IOOBUF_X64_Y0_N53
\Y[8]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|inst5|129|sub|9~q\,
	devoe => ww_devoe,
	o => ww_Y(8));

-- Location: IOOBUF_X74_Y0_N42
\Y[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|inst5|128|sub|110~q\,
	devoe => ww_devoe,
	o => ww_Y(7));

-- Location: IOOBUF_X89_Y8_N22
\Y[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|inst5|128|sub|99~q\,
	devoe => ww_devoe,
	o => ww_Y(6));

-- Location: IOOBUF_X36_Y0_N36
\Y[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|inst5|128|sub|87~q\,
	devoe => ww_devoe,
	o => ww_Y(5));

-- Location: IOOBUF_X66_Y0_N93
\Y[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|inst5|128|sub|9~q\,
	devoe => ww_devoe,
	o => ww_Y(4));

-- Location: IOOBUF_X89_Y6_N56
\Y[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|inst5|127|sub|110~q\,
	devoe => ww_devoe,
	o => ww_Y(3));

-- Location: IOOBUF_X62_Y0_N36
\Y[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|inst5|127|sub|99~q\,
	devoe => ww_devoe,
	o => ww_Y(2));

-- Location: IOOBUF_X52_Y0_N36
\Y[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|inst5|127|sub|87~q\,
	devoe => ww_devoe,
	o => ww_Y(1));

-- Location: IOOBUF_X56_Y0_N2
\Y[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|inst5|127|sub|9~q\,
	devoe => ww_devoe,
	o => ww_Y(0));

-- Location: IOOBUF_X74_Y0_N93
\YDISP[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|inst5|inst1|61~q\,
	devoe => ww_devoe,
	o => ww_YDISP(7));

-- Location: IOOBUF_X34_Y0_N59
\YDISP[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|inst5|inst1|60~q\,
	devoe => ww_devoe,
	o => ww_YDISP(6));

-- Location: IOOBUF_X78_Y0_N19
\YDISP[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|inst5|inst1|59~q\,
	devoe => ww_devoe,
	o => ww_YDISP(5));

-- Location: IOOBUF_X72_Y0_N36
\YDISP[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|inst5|inst1|58~q\,
	devoe => ww_devoe,
	o => ww_YDISP(4));

-- Location: IOOBUF_X74_Y0_N59
\YDISP[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|inst5|inst1|57~q\,
	devoe => ww_devoe,
	o => ww_YDISP(3));

-- Location: IOOBUF_X32_Y0_N36
\YDISP[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|inst5|inst1|56~q\,
	devoe => ww_devoe,
	o => ww_YDISP(2));

-- Location: IOOBUF_X78_Y0_N2
\YDISP[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|inst5|inst1|55~q\,
	devoe => ww_devoe,
	o => ww_YDISP(1));

-- Location: IOOBUF_X80_Y0_N53
\YDISP[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|inst5|inst1|54~q\,
	devoe => ww_devoe,
	o => ww_YDISP(0));

-- Location: IOOBUF_X89_Y8_N5
\DATA[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst4[7]~8_combout\,
	oe => \inst4[7]~9_combout\,
	devoe => ww_devoe,
	o => DATA(7));

-- Location: IOOBUF_X60_Y0_N53
\DATA[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst4[6]~10_combout\,
	oe => \inst4[7]~9_combout\,
	devoe => ww_devoe,
	o => DATA(6));

-- Location: IOOBUF_X60_Y0_N2
\DATA[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst4[5]~11_combout\,
	oe => \inst4[7]~9_combout\,
	devoe => ww_devoe,
	o => DATA(5));

-- Location: IOOBUF_X60_Y0_N36
\DATA[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst4[4]~12_combout\,
	oe => \inst4[7]~9_combout\,
	devoe => ww_devoe,
	o => DATA(4));

-- Location: IOOBUF_X89_Y8_N56
\DATA[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst4[3]~13_combout\,
	oe => \inst4[7]~9_combout\,
	devoe => ww_devoe,
	o => DATA(3));

-- Location: IOOBUF_X89_Y9_N5
\DATA[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst4[2]~14_combout\,
	oe => \inst4[7]~9_combout\,
	devoe => ww_devoe,
	o => DATA(2));

-- Location: IOOBUF_X89_Y8_N39
\DATA[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst4[1]~15_combout\,
	oe => \inst4[7]~9_combout\,
	devoe => ww_devoe,
	o => DATA(1));

-- Location: IOOBUF_X60_Y0_N19
\DATA[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst4[0]~16_combout\,
	oe => \inst4[7]~9_combout\,
	devoe => ww_devoe,
	o => DATA(0));

-- Location: IOIBUF_X89_Y25_N21
\MCLK~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_MCLK,
	o => \MCLK~input_o\);

-- Location: CLKCTRL_G10
\MCLK~inputCLKENA0\ : cyclonev_clkena
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	disable_mode => "low",
	ena_register_mode => "always enabled",
	ena_register_power_up => "high",
	test_syn => "high")
-- pragma translate_on
PORT MAP (
	inclk => \MCLK~input_o\,
	outclk => \MCLK~inputCLKENA0_outclk\);

-- Location: LABCELL_X61_Y13_N42
\inst3~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3~0_combout\ = !\inst3~q\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111100000000111111110000000011111111000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_inst3~q\,
	combout => \inst3~0_combout\);

-- Location: FF_X61_Y13_N43
inst3 : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MCLK~inputCLKENA0_outclk\,
	d => \inst3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3~q\);

-- Location: LABCELL_X61_Y13_N54
\inst2~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst2~0_combout\ = ( \inst2~q\ & ( !\inst3~q\ ) ) # ( !\inst2~q\ & ( \inst3~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111111111111000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_inst3~q\,
	dataf => \ALT_INV_inst2~q\,
	combout => \inst2~0_combout\);

-- Location: FF_X61_Y13_N5
inst2 : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MCLK~input_o\,
	asdata => \inst2~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2~q\);

-- Location: IOIBUF_X60_Y0_N35
\DATA[4]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => DATA(4),
	o => \DATA[4]~input_o\);

-- Location: IOIBUF_X58_Y0_N58
\nRESET~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_nRESET,
	o => \nRESET~input_o\);

-- Location: FF_X60_Y11_N8
\inst1|inst|state[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2~q\,
	d => \inst1|inst|Mux19~1_combout\,
	clrn => \nRESET~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|inst|state\(3));

-- Location: FF_X60_Y11_N41
\inst1|inst|state[5]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2~q\,
	asdata => \inst1|inst|Mux17~2_combout\,
	clrn => \nRESET~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|inst|state[5]~DUPLICATE_q\);

-- Location: FF_X60_Y11_N29
\inst1|inst|state[1]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2~q\,
	d => \inst1|inst|Mux21~1_combout\,
	clrn => \nRESET~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|inst|state[1]~DUPLICATE_q\);

-- Location: IOIBUF_X89_Y8_N55
\DATA[3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => DATA(3),
	o => \DATA[3]~input_o\);

-- Location: FF_X60_Y12_N23
\inst1|inst7|inst6\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2~q\,
	asdata => \DATA[3]~input_o\,
	clrn => \nRESET~input_o\,
	sload => VCC,
	ena => \inst1|inst|Mux16~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|inst7|inst6~q\);

-- Location: IOIBUF_X89_Y8_N38
\DATA[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => DATA(1),
	o => \DATA[1]~input_o\);

-- Location: FF_X60_Y12_N41
\inst1|inst7|inst\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2~q\,
	asdata => \DATA[1]~input_o\,
	clrn => \nRESET~input_o\,
	sload => VCC,
	ena => \inst1|inst|Mux16~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|inst7|inst~q\);

-- Location: IOIBUF_X89_Y9_N4
\DATA[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => DATA(2),
	o => \DATA[2]~input_o\);

-- Location: FF_X60_Y12_N2
\inst1|inst7|inst2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2~q\,
	asdata => \DATA[2]~input_o\,
	clrn => \nRESET~input_o\,
	sload => VCC,
	ena => \inst1|inst|Mux16~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|inst7|inst2~q\);

-- Location: IOIBUF_X60_Y0_N1
\DATA[5]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => DATA(5),
	o => \DATA[5]~input_o\);

-- Location: FF_X60_Y12_N14
\inst1|inst7|inst3\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2~q\,
	asdata => \DATA[5]~input_o\,
	clrn => \nRESET~input_o\,
	sload => VCC,
	ena => \inst1|inst|Mux16~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|inst7|inst3~q\);

-- Location: LABCELL_X61_Y11_N27
\inst1|inst|Mux3~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|inst|Mux3~0_combout\ = ( \inst1|inst7|inst3~q\ & ( (!\inst1|inst7|inst6~q\ & (\inst1|inst7|inst~q\ & !\inst1|inst7|inst2~q\)) ) ) # ( !\inst1|inst7|inst3~q\ & ( (\inst1|inst7|inst6~q\ & ((!\inst1|inst7|inst~q\) # (!\inst1|inst7|inst2~q\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101000100010101010100010000100010000000000010001000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|inst7|ALT_INV_inst6~q\,
	datab => \inst1|inst7|ALT_INV_inst~q\,
	datad => \inst1|inst7|ALT_INV_inst2~q\,
	dataf => \inst1|inst7|ALT_INV_inst3~q\,
	combout => \inst1|inst|Mux3~0_combout\);

-- Location: FF_X60_Y11_N49
\inst1|inst|state[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2~q\,
	d => \inst1|inst|Mux22~2_combout\,
	clrn => \nRESET~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|inst|state\(0));

-- Location: IOIBUF_X60_Y0_N18
\DATA[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => DATA(0),
	o => \DATA[0]~input_o\);

-- Location: FF_X60_Y12_N32
\inst1|inst7|13\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2~q\,
	asdata => \DATA[0]~input_o\,
	clrn => \nRESET~input_o\,
	sload => VCC,
	ena => \inst1|inst|Mux16~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|inst7|13~q\);

-- Location: LABCELL_X61_Y11_N33
\inst1|inst|Mux5~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|inst|Mux5~0_combout\ = ( \inst1|inst7|inst6~q\ & ( (!\inst1|inst7|inst~q\ & ((\inst1|inst7|inst2~q\))) # (\inst1|inst7|inst~q\ & (!\inst1|inst7|13~q\ & !\inst1|inst7|inst2~q\)) ) ) # ( !\inst1|inst7|inst6~q\ & ( (\inst1|inst7|inst2~q\ & 
-- ((!\inst1|inst7|inst~q\) # (\inst1|inst7|13~q\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010111011000000001011101101000100101010100100010010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|inst7|ALT_INV_inst~q\,
	datab => \inst1|inst7|ALT_INV_13~q\,
	datad => \inst1|inst7|ALT_INV_inst2~q\,
	dataf => \inst1|inst7|ALT_INV_inst6~q\,
	combout => \inst1|inst|Mux5~0_combout\);

-- Location: LABCELL_X61_Y11_N42
\inst1|inst|Mux33~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|inst|Mux33~0_combout\ = ( !\inst1|inst7|inst2~q\ & ( (!\inst1|inst7|inst6~q\ & !\inst1|inst7|inst~q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000000000000111100000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \inst1|inst7|ALT_INV_inst6~q\,
	datad => \inst1|inst7|ALT_INV_inst~q\,
	dataf => \inst1|inst7|ALT_INV_inst2~q\,
	combout => \inst1|inst|Mux33~0_combout\);

-- Location: LABCELL_X64_Y11_N12
\inst1|inst|Mux20~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|inst|Mux20~0_combout\ = ( \inst1|inst|state\(1) & ( \inst1|inst|state[4]~DUPLICATE_q\ & ( (\inst1|inst|state[2]~DUPLICATE_q\ & ((!\inst1|inst|state[0]~DUPLICATE_q\) # (\inst1|inst|state\(5)))) ) ) ) # ( !\inst1|inst|state\(1) & ( 
-- \inst1|inst|state[4]~DUPLICATE_q\ & ( (\inst1|inst|state[2]~DUPLICATE_q\ & ((!\inst1|inst|state[0]~DUPLICATE_q\) # ((!\inst1|inst|state\(3)) # (\inst1|inst|state\(5))))) ) ) ) # ( \inst1|inst|state\(1) & ( !\inst1|inst|state[4]~DUPLICATE_q\ & ( 
-- (!\inst1|inst|state[0]~DUPLICATE_q\ & (\inst1|inst|state[2]~DUPLICATE_q\ & (!\inst1|inst|state\(3) $ (!\inst1|inst|state\(5))))) # (\inst1|inst|state[0]~DUPLICATE_q\ & (\inst1|inst|state\(3) & (!\inst1|inst|state\(5) & 
-- !\inst1|inst|state[2]~DUPLICATE_q\))) ) ) ) # ( !\inst1|inst|state\(1) & ( !\inst1|inst|state[4]~DUPLICATE_q\ & ( (\inst1|inst|state[2]~DUPLICATE_q\ & ((!\inst1|inst|state[0]~DUPLICATE_q\ & (!\inst1|inst|state\(3))) # (\inst1|inst|state[0]~DUPLICATE_q\ & 
-- ((!\inst1|inst|state\(5)))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011011000000100000010100000000000111011110000000010101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|inst|ALT_INV_state[0]~DUPLICATE_q\,
	datab => \inst1|inst|ALT_INV_state\(3),
	datac => \inst1|inst|ALT_INV_state\(5),
	datad => \inst1|inst|ALT_INV_state[2]~DUPLICATE_q\,
	datae => \inst1|inst|ALT_INV_state\(1),
	dataf => \inst1|inst|ALT_INV_state[4]~DUPLICATE_q\,
	combout => \inst1|inst|Mux20~0_combout\);

-- Location: LABCELL_X61_Y11_N12
\inst1|inst|Mux20~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|inst|Mux20~1_combout\ = ( \inst1|inst7|inst3~q\ & ( \inst1|inst|Mux30~0_combout\ & ( (\inst1|inst|Mux33~0_combout\ & !\inst1|inst7|inst4~q\) ) ) ) # ( !\inst1|inst7|inst3~q\ & ( \inst1|inst|Mux30~0_combout\ & ( (!\inst1|inst7|inst4~q\ & 
-- (\inst1|inst|Mux5~0_combout\)) # (\inst1|inst7|inst4~q\ & ((\inst1|inst|Mux33~0_combout\))) ) ) ) # ( \inst1|inst7|inst3~q\ & ( !\inst1|inst|Mux30~0_combout\ & ( \inst1|inst|Mux20~0_combout\ ) ) ) # ( !\inst1|inst7|inst3~q\ & ( 
-- !\inst1|inst|Mux30~0_combout\ & ( \inst1|inst|Mux20~0_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111101010101001100110011001100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|inst|ALT_INV_Mux5~0_combout\,
	datab => \inst1|inst|ALT_INV_Mux33~0_combout\,
	datac => \inst1|inst|ALT_INV_Mux20~0_combout\,
	datad => \inst1|inst7|ALT_INV_inst4~q\,
	datae => \inst1|inst7|ALT_INV_inst3~q\,
	dataf => \inst1|inst|ALT_INV_Mux30~0_combout\,
	combout => \inst1|inst|Mux20~1_combout\);

-- Location: FF_X61_Y11_N13
\inst1|inst|state[2]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2~q\,
	d => \inst1|inst|Mux20~1_combout\,
	clrn => \nRESET~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|inst|state[2]~DUPLICATE_q\);

-- Location: LABCELL_X63_Y12_N33
\inst1|inst|Mux18~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|inst|Mux18~0_combout\ = ( \inst1|inst|state[3]~DUPLICATE_q\ & ( \inst1|inst|state[1]~DUPLICATE_q\ & ( (\inst1|inst|state\(0) & !\inst1|inst|state[5]~DUPLICATE_q\) ) ) ) # ( !\inst1|inst|state[3]~DUPLICATE_q\ & ( \inst1|inst|state[1]~DUPLICATE_q\ & 
-- ( (!\inst1|inst|state[5]~DUPLICATE_q\ & (\inst1|inst|state\(0))) # (\inst1|inst|state[5]~DUPLICATE_q\ & ((!\inst1|inst|state[2]~DUPLICATE_q\))) ) ) ) # ( \inst1|inst|state[3]~DUPLICATE_q\ & ( !\inst1|inst|state[1]~DUPLICATE_q\ & ( (\inst1|inst|state\(0) & 
-- (!\inst1|inst|state[5]~DUPLICATE_q\ & \inst1|inst|state[2]~DUPLICATE_q\)) ) ) ) # ( !\inst1|inst|state[3]~DUPLICATE_q\ & ( !\inst1|inst|state[1]~DUPLICATE_q\ & ( (!\inst1|inst|state[2]~DUPLICATE_q\ & ((\inst1|inst|state[5]~DUPLICATE_q\) # 
-- (\inst1|inst|state\(0)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101111100000000000000000101000001011111010100000101000001010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|inst|ALT_INV_state\(0),
	datac => \inst1|inst|ALT_INV_state[5]~DUPLICATE_q\,
	datad => \inst1|inst|ALT_INV_state[2]~DUPLICATE_q\,
	datae => \inst1|inst|ALT_INV_state[3]~DUPLICATE_q\,
	dataf => \inst1|inst|ALT_INV_state[1]~DUPLICATE_q\,
	combout => \inst1|inst|Mux18~0_combout\);

-- Location: LABCELL_X61_Y11_N57
\inst1|inst|Mux18~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|inst|Mux18~1_combout\ = ( \inst1|inst|Mux30~0_combout\ & ( (!\inst1|inst|Mux3~0_combout\ & (((!\inst1|inst|Mux18~0_combout\ & \inst1|inst|state[4]~DUPLICATE_q\)))) # (\inst1|inst|Mux3~0_combout\ & ((!\inst1|inst7|inst4~q\) # 
-- ((!\inst1|inst|Mux18~0_combout\ & \inst1|inst|state[4]~DUPLICATE_q\)))) ) ) # ( !\inst1|inst|Mux30~0_combout\ & ( (!\inst1|inst|Mux18~0_combout\ & \inst1|inst|state[4]~DUPLICATE_q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011110000000000001111000001000100111101000100010011110100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|inst|ALT_INV_Mux3~0_combout\,
	datab => \inst1|inst7|ALT_INV_inst4~q\,
	datac => \inst1|inst|ALT_INV_Mux18~0_combout\,
	datad => \inst1|inst|ALT_INV_state[4]~DUPLICATE_q\,
	dataf => \inst1|inst|ALT_INV_Mux30~0_combout\,
	combout => \inst1|inst|Mux18~1_combout\);

-- Location: FF_X60_Y11_N2
\inst1|inst|state[4]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2~q\,
	asdata => \inst1|inst|Mux18~1_combout\,
	clrn => \nRESET~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|inst|state[4]~DUPLICATE_q\);

-- Location: FF_X61_Y11_N14
\inst1|inst|state[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2~q\,
	d => \inst1|inst|Mux20~1_combout\,
	clrn => \nRESET~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|inst|state\(2));

-- Location: LABCELL_X60_Y11_N21
\inst1|inst|Mux30~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|inst|Mux30~0_combout\ = ( !\inst1|inst|state[4]~DUPLICATE_q\ & ( !\inst1|inst|state\(2) & ( (\inst1|inst|state[0]~DUPLICATE_q\ & (!\inst1|inst|state\(3) & (!\inst1|inst|state[5]~DUPLICATE_q\ & !\inst1|inst|state[1]~DUPLICATE_q\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|inst|ALT_INV_state[0]~DUPLICATE_q\,
	datab => \inst1|inst|ALT_INV_state\(3),
	datac => \inst1|inst|ALT_INV_state[5]~DUPLICATE_q\,
	datad => \inst1|inst|ALT_INV_state[1]~DUPLICATE_q\,
	datae => \inst1|inst|ALT_INV_state[4]~DUPLICATE_q\,
	dataf => \inst1|inst|ALT_INV_state\(2),
	combout => \inst1|inst|Mux30~0_combout\);

-- Location: LABCELL_X64_Y11_N42
\inst1|inst|Mux17~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|inst|Mux17~1_combout\ = ( \inst1|inst|state\(3) & ( (!\inst1|inst|state[4]~DUPLICATE_q\ & ((\inst1|inst|state[2]~DUPLICATE_q\) # (\inst1|inst|state[0]~DUPLICATE_q\))) ) ) # ( !\inst1|inst|state\(3) & ( (!\inst1|inst|state[4]~DUPLICATE_q\ & 
-- (\inst1|inst|state[0]~DUPLICATE_q\)) # (\inst1|inst|state[4]~DUPLICATE_q\ & ((!\inst1|inst|state[2]~DUPLICATE_q\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101110001011100010111000101110001110000011100000111000001110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|inst|ALT_INV_state[0]~DUPLICATE_q\,
	datab => \inst1|inst|ALT_INV_state[2]~DUPLICATE_q\,
	datac => \inst1|inst|ALT_INV_state[4]~DUPLICATE_q\,
	dataf => \inst1|inst|ALT_INV_state\(3),
	combout => \inst1|inst|Mux17~1_combout\);

-- Location: LABCELL_X61_Y11_N9
\inst1|inst|Mux17~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|inst|Mux17~0_combout\ = ( \inst1|inst7|inst~q\ & ( (!\inst1|inst7|inst2~q\ & (!\inst1|inst7|inst6~q\ & (!\inst1|inst7|inst3~q\ $ (!\inst1|inst7|inst4~q\)))) # (\inst1|inst7|inst2~q\ & (!\inst1|inst7|inst3~q\ & (\inst1|inst7|inst6~q\ & 
-- !\inst1|inst7|inst4~q\))) ) ) # ( !\inst1|inst7|inst~q\ & ( (!\inst1|inst7|inst2~q\ & (!\inst1|inst7|inst6~q\ & (!\inst1|inst7|inst3~q\ $ (!\inst1|inst7|inst4~q\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010000010000000001000001000000000100100100000000010010010000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|inst7|ALT_INV_inst2~q\,
	datab => \inst1|inst7|ALT_INV_inst3~q\,
	datac => \inst1|inst7|ALT_INV_inst6~q\,
	datad => \inst1|inst7|ALT_INV_inst4~q\,
	dataf => \inst1|inst7|ALT_INV_inst~q\,
	combout => \inst1|inst|Mux17~0_combout\);

-- Location: LABCELL_X63_Y11_N15
\inst1|inst|Mux17~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|inst|Mux17~2_combout\ = ( \inst1|inst|Mux17~1_combout\ & ( \inst1|inst|Mux17~0_combout\ & ( \inst1|inst|Mux30~0_combout\ ) ) ) # ( !\inst1|inst|Mux17~1_combout\ & ( \inst1|inst|Mux17~0_combout\ & ( (\inst1|inst|state\(5)) # 
-- (\inst1|inst|Mux30~0_combout\) ) ) ) # ( !\inst1|inst|Mux17~1_combout\ & ( !\inst1|inst|Mux17~0_combout\ & ( \inst1|inst|state\(5) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000000000000000000111111001111110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \inst1|inst|ALT_INV_Mux30~0_combout\,
	datac => \inst1|inst|ALT_INV_state\(5),
	datae => \inst1|inst|ALT_INV_Mux17~1_combout\,
	dataf => \inst1|inst|ALT_INV_Mux17~0_combout\,
	combout => \inst1|inst|Mux17~2_combout\);

-- Location: FF_X60_Y11_N40
\inst1|inst|state[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2~q\,
	asdata => \inst1|inst|Mux17~2_combout\,
	clrn => \nRESET~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|inst|state\(5));

-- Location: LABCELL_X61_Y11_N24
\inst1|inst|Mux8~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|inst|Mux8~0_combout\ = ( \inst1|inst7|inst4~q\ & ( (!\inst1|inst7|inst6~q\ & (((!\inst1|inst7|13~q\ & \inst1|inst7|inst2~q\)))) # (\inst1|inst7|inst6~q\ & ((!\inst1|inst7|inst2~q\ & ((!\inst1|inst7|13~q\))) # (\inst1|inst7|inst2~q\ & 
-- (!\inst1|inst7|inst~q\)))) ) ) # ( !\inst1|inst7|inst4~q\ & ( (!\inst1|inst7|inst6~q\ & (!\inst1|inst7|inst~q\ & (\inst1|inst7|13~q\ & !\inst1|inst7|inst2~q\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100000000000000010000000000001010000111001000101000011100100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|inst7|ALT_INV_inst6~q\,
	datab => \inst1|inst7|ALT_INV_inst~q\,
	datac => \inst1|inst7|ALT_INV_13~q\,
	datad => \inst1|inst7|ALT_INV_inst2~q\,
	dataf => \inst1|inst7|ALT_INV_inst4~q\,
	combout => \inst1|inst|Mux8~0_combout\);

-- Location: LABCELL_X60_Y11_N33
\inst1|inst|Mux8~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|inst|Mux8~1_combout\ = ( \inst1|inst|Mux8~0_combout\ & ( (!\inst1|inst7|inst3~q\ & \inst1|inst|Mux30~0_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000101010100000000010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|inst7|ALT_INV_inst3~q\,
	datad => \inst1|inst|ALT_INV_Mux30~0_combout\,
	dataf => \inst1|inst|ALT_INV_Mux8~0_combout\,
	combout => \inst1|inst|Mux8~1_combout\);

-- Location: FF_X60_Y11_N1
\inst1|inst|state[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2~q\,
	asdata => \inst1|inst|Mux18~1_combout\,
	clrn => \nRESET~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|inst|state\(4));

-- Location: LABCELL_X61_Y11_N18
\inst1|inst|Mux27~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|inst|Mux27~0_combout\ = ( \inst1|inst|state[3]~DUPLICATE_q\ & ( !\inst1|inst|state\(5) & ( (\inst1|inst|state[0]~DUPLICATE_q\ & (\inst1|inst|state\(2) & \inst1|inst|state\(4))) ) ) ) # ( !\inst1|inst|state[3]~DUPLICATE_q\ & ( !\inst1|inst|state\(5) 
-- & ( (!\inst1|inst|state\(4) & ((!\inst1|inst|state[0]~DUPLICATE_q\ & ((\inst1|inst|state[1]~DUPLICATE_q\))) # (\inst1|inst|state[0]~DUPLICATE_q\ & (!\inst1|inst|state\(2) & !\inst1|inst|state[1]~DUPLICATE_q\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100101000000000000000000001000100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|inst|ALT_INV_state[0]~DUPLICATE_q\,
	datab => \inst1|inst|ALT_INV_state\(2),
	datac => \inst1|inst|ALT_INV_state[1]~DUPLICATE_q\,
	datad => \inst1|inst|ALT_INV_state\(4),
	datae => \inst1|inst|ALT_INV_state[3]~DUPLICATE_q\,
	dataf => \inst1|inst|ALT_INV_state\(5),
	combout => \inst1|inst|Mux27~0_combout\);

-- Location: LABCELL_X61_Y11_N36
\inst1|inst|Mux27~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|inst|Mux27~1_combout\ = ( \inst1|inst|Mux33~0_combout\ & ( \inst1|inst|Mux27~0_combout\ & ( (!\inst1|inst|Mux30~0_combout\) # ((\inst1|inst7|13~q\ & (!\inst1|inst7|inst4~q\ & !\inst1|inst7|inst3~q\))) ) ) ) # ( !\inst1|inst|Mux33~0_combout\ & ( 
-- \inst1|inst|Mux27~0_combout\ & ( !\inst1|inst|Mux30~0_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111000000001111111101000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|inst7|ALT_INV_13~q\,
	datab => \inst1|inst7|ALT_INV_inst4~q\,
	datac => \inst1|inst7|ALT_INV_inst3~q\,
	datad => \inst1|inst|ALT_INV_Mux30~0_combout\,
	datae => \inst1|inst|ALT_INV_Mux33~0_combout\,
	dataf => \inst1|inst|ALT_INV_Mux27~0_combout\,
	combout => \inst1|inst|Mux27~1_combout\);

-- Location: IOIBUF_X89_Y8_N4
\DATA[7]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => DATA(7),
	o => \DATA[7]~input_o\);

-- Location: LABCELL_X61_Y11_N30
\inst1|inst|Mux1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|inst|Mux1~0_combout\ = ( \inst1|inst7|inst4~q\ & ( (!\inst1|inst7|inst2~q\ & (((\inst1|inst7|13~q\ & \inst1|inst7|inst6~q\)))) # (\inst1|inst7|inst2~q\ & ((!\inst1|inst7|inst6~q\ & ((\inst1|inst7|13~q\))) # (\inst1|inst7|inst6~q\ & 
-- (\inst1|inst7|inst~q\)))) ) ) # ( !\inst1|inst7|inst4~q\ & ( (!\inst1|inst7|inst~q\ & (!\inst1|inst7|13~q\ & (!\inst1|inst7|inst2~q\ & !\inst1|inst7|inst6~q\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000100000000000000000000011001101010000001100110101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|inst7|ALT_INV_inst~q\,
	datab => \inst1|inst7|ALT_INV_13~q\,
	datac => \inst1|inst7|ALT_INV_inst2~q\,
	datad => \inst1|inst7|ALT_INV_inst6~q\,
	dataf => \inst1|inst7|ALT_INV_inst4~q\,
	combout => \inst1|inst|Mux1~0_combout\);

-- Location: LABCELL_X60_Y11_N30
\inst1|inst|Mux1~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|inst|Mux1~1_combout\ = ( \inst1|inst|Mux1~0_combout\ & ( (!\inst1|inst7|inst3~q\ & \inst1|inst|Mux30~0_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000111100000000000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \inst1|inst7|ALT_INV_inst3~q\,
	datad => \inst1|inst|ALT_INV_Mux30~0_combout\,
	dataf => \inst1|inst|ALT_INV_Mux1~0_combout\,
	combout => \inst1|inst|Mux1~1_combout\);

-- Location: LABCELL_X62_Y11_N0
\inst1|inst|Mux24~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|inst|Mux24~1_combout\ = ( \inst1|inst|state[0]~DUPLICATE_q\ & ( !\inst1|inst|state[4]~DUPLICATE_q\ & ( !\inst1|inst|state\(2) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \inst1|inst|ALT_INV_state\(2),
	datae => \inst1|inst|ALT_INV_state[0]~DUPLICATE_q\,
	dataf => \inst1|inst|ALT_INV_state[4]~DUPLICATE_q\,
	combout => \inst1|inst|Mux24~1_combout\);

-- Location: LABCELL_X61_Y11_N54
\inst1|inst|Mux24~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|inst|Mux24~0_combout\ = ( \inst1|inst|Mux33~0_combout\ & ( (!\inst1|inst7|inst4~q\ & (!\inst1|inst7|inst3~q\ & !\inst1|inst7|13~q\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011000000000000001100000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \inst1|inst7|ALT_INV_inst4~q\,
	datac => \inst1|inst7|ALT_INV_inst3~q\,
	datad => \inst1|inst7|ALT_INV_13~q\,
	dataf => \inst1|inst|ALT_INV_Mux33~0_combout\,
	combout => \inst1|inst|Mux24~0_combout\);

-- Location: LABCELL_X62_Y11_N36
\inst1|inst|Mux24~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|inst|Mux24~2_combout\ = ( \inst1|inst|Mux24~1_combout\ & ( \inst1|inst|Mux24~0_combout\ & ( (!\inst1|inst|state[3]~DUPLICATE_q\) # ((!\inst1|inst|state\(5) & !\inst1|inst|state[1]~DUPLICATE_q\)) ) ) ) # ( \inst1|inst|Mux24~1_combout\ & ( 
-- !\inst1|inst|Mux24~0_combout\ & ( (!\inst1|inst|state\(5) & ((!\inst1|inst|state[3]~DUPLICATE_q\ & ((!\inst1|inst|state\(0)) # (\inst1|inst|state[1]~DUPLICATE_q\))) # (\inst1|inst|state[3]~DUPLICATE_q\ & ((!\inst1|inst|state[1]~DUPLICATE_q\))))) # 
-- (\inst1|inst|state\(5) & (((!\inst1|inst|state[3]~DUPLICATE_q\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000110110101111000000000000000000001111101011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|inst|ALT_INV_state\(5),
	datab => \inst1|inst|ALT_INV_state\(0),
	datac => \inst1|inst|ALT_INV_state[3]~DUPLICATE_q\,
	datad => \inst1|inst|ALT_INV_state[1]~DUPLICATE_q\,
	datae => \inst1|inst|ALT_INV_Mux24~1_combout\,
	dataf => \inst1|inst|ALT_INV_Mux24~0_combout\,
	combout => \inst1|inst|Mux24~2_combout\);

-- Location: MLABCELL_X59_Y12_N36
\inst1|inst6|143|10~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|inst6|143|10~0_combout\ = ( \inst1|inst|Mux24~2_combout\ & ( \inst1|inst6|198|41~1_combout\ & ( (!\inst1|inst|Mux1~1_combout\ & ((\DATA[7]~input_o\))) # (\inst1|inst|Mux1~1_combout\ & (\inst1|inst6|128~q\)) ) ) ) # ( !\inst1|inst|Mux24~2_combout\ & 
-- ( \inst1|inst6|198|41~1_combout\ & ( (\inst1|inst6|127~q\) # (\inst1|inst|Mux1~1_combout\) ) ) ) # ( \inst1|inst|Mux24~2_combout\ & ( !\inst1|inst6|198|41~1_combout\ & ( (!\inst1|inst|Mux1~1_combout\ & ((\DATA[7]~input_o\))) # (\inst1|inst|Mux1~1_combout\ 
-- & (\inst1|inst6|128~q\)) ) ) ) # ( !\inst1|inst|Mux24~2_combout\ & ( !\inst1|inst6|198|41~1_combout\ & ( (!\inst1|inst|Mux1~1_combout\ & \inst1|inst6|127~q\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011110000001101010011010100001111111111110011010100110101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|inst6|ALT_INV_128~q\,
	datab => \ALT_INV_DATA[7]~input_o\,
	datac => \inst1|inst|ALT_INV_Mux1~1_combout\,
	datad => \inst1|inst6|ALT_INV_127~q\,
	datae => \inst1|inst|ALT_INV_Mux24~2_combout\,
	dataf => \inst1|inst6|198|ALT_INV_41~1_combout\,
	combout => \inst1|inst6|143|10~0_combout\);

-- Location: FF_X59_Y12_N35
\inst1|inst6|127\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2~q\,
	asdata => \inst1|inst6|143|10~0_combout\,
	clrn => \nRESET~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|inst6|127~q\);

-- Location: MLABCELL_X59_Y12_N3
\inst1|inst6|144|10~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|inst6|144|10~0_combout\ = ( \inst1|inst6|127~q\ & ( \inst1|inst6|198|41~1_combout\ & ( ((!\inst1|inst|Mux27~1_combout\ & ((\inst1|inst6|128~q\))) # (\inst1|inst|Mux27~1_combout\ & (\DATA[7]~input_o\))) # (\inst1|inst|Mux8~1_combout\) ) ) ) # ( 
-- !\inst1|inst6|127~q\ & ( \inst1|inst6|198|41~1_combout\ & ( (!\inst1|inst|Mux8~1_combout\ & ((!\inst1|inst|Mux27~1_combout\ & ((\inst1|inst6|128~q\))) # (\inst1|inst|Mux27~1_combout\ & (\DATA[7]~input_o\)))) # (\inst1|inst|Mux8~1_combout\ & 
-- (!\inst1|inst|Mux27~1_combout\)) ) ) ) # ( \inst1|inst6|127~q\ & ( !\inst1|inst6|198|41~1_combout\ & ( (!\inst1|inst|Mux8~1_combout\ & ((!\inst1|inst|Mux27~1_combout\ & ((\inst1|inst6|128~q\))) # (\inst1|inst|Mux27~1_combout\ & (\DATA[7]~input_o\)))) # 
-- (\inst1|inst|Mux8~1_combout\ & (\inst1|inst|Mux27~1_combout\)) ) ) ) # ( !\inst1|inst6|127~q\ & ( !\inst1|inst6|198|41~1_combout\ & ( (!\inst1|inst|Mux8~1_combout\ & ((!\inst1|inst|Mux27~1_combout\ & ((\inst1|inst6|128~q\))) # 
-- (\inst1|inst|Mux27~1_combout\ & (\DATA[7]~input_o\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001010001010000100111001101101000110110011100101011111011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|inst|ALT_INV_Mux8~1_combout\,
	datab => \inst1|inst|ALT_INV_Mux27~1_combout\,
	datac => \ALT_INV_DATA[7]~input_o\,
	datad => \inst1|inst6|ALT_INV_128~q\,
	datae => \inst1|inst6|ALT_INV_127~q\,
	dataf => \inst1|inst6|198|ALT_INV_41~1_combout\,
	combout => \inst1|inst6|144|10~0_combout\);

-- Location: FF_X59_Y12_N2
\inst1|inst6|128\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2~q\,
	asdata => \inst1|inst6|144|10~0_combout\,
	clrn => \nRESET~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|inst6|128~q\);

-- Location: LABCELL_X64_Y11_N48
\inst1|inst|Mux7~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|inst|Mux7~1_combout\ = ( \inst1|inst7|13~q\ & ( (!\inst1|inst7|inst2~q\ & (\inst1|inst7|inst~q\ & ((!\inst1|inst7|inst3~q\) # (\inst1|inst6|128~q\)))) # (\inst1|inst7|inst2~q\ & (!\inst1|inst7|inst3~q\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000010111010101000000000000000000000101110101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|inst7|ALT_INV_inst3~q\,
	datab => \inst1|inst6|ALT_INV_128~q\,
	datac => \inst1|inst7|ALT_INV_inst~q\,
	datad => \inst1|inst7|ALT_INV_inst2~q\,
	datae => \inst1|inst7|ALT_INV_13~q\,
	combout => \inst1|inst|Mux7~1_combout\);

-- Location: LABCELL_X64_Y11_N21
\inst1|inst|Mux22~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|inst|Mux22~0_combout\ = ( !\inst1|inst7|inst4~q\ & ( !\inst1|inst7|inst6~q\ & ( (!\inst1|inst|state\(1) & (!\inst1|inst|state[2]~DUPLICATE_q\ & (!\inst1|inst|state\(3) & !\inst1|inst|state\(5)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|inst|ALT_INV_state\(1),
	datab => \inst1|inst|ALT_INV_state[2]~DUPLICATE_q\,
	datac => \inst1|inst|ALT_INV_state\(3),
	datad => \inst1|inst|ALT_INV_state\(5),
	datae => \inst1|inst7|ALT_INV_inst4~q\,
	dataf => \inst1|inst7|ALT_INV_inst6~q\,
	combout => \inst1|inst|Mux22~0_combout\);

-- Location: IOIBUF_X60_Y0_N52
\DATA[6]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => DATA(6),
	o => \DATA[6]~input_o\);

-- Location: LABCELL_X60_Y12_N33
\inst1|inst|Mux10~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|inst|Mux10~0_combout\ = ( \inst1|inst7|13~q\ & ( (\inst1|inst7|inst2~q\ & \inst1|inst7|inst6~q\) ) ) # ( !\inst1|inst7|13~q\ & ( (\inst1|inst7|inst2~q\ & (\inst1|inst7|inst~q\ & \inst1|inst7|inst6~q\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000101000000000000010100000000010101010000000001010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|inst7|ALT_INV_inst2~q\,
	datac => \inst1|inst7|ALT_INV_inst~q\,
	datad => \inst1|inst7|ALT_INV_inst6~q\,
	dataf => \inst1|inst7|ALT_INV_13~q\,
	combout => \inst1|inst|Mux10~0_combout\);

-- Location: LABCELL_X60_Y12_N54
\inst1|inst|Mux10~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|inst|Mux10~1_combout\ = ( \inst1|inst|Mux30~0_combout\ & ( (\inst1|inst|Mux10~0_combout\ & \inst1|inst|Mux11~1_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000011110000000000001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \inst1|inst|ALT_INV_Mux10~0_combout\,
	datad => \inst1|inst|ALT_INV_Mux11~1_combout\,
	dataf => \inst1|inst|ALT_INV_Mux30~0_combout\,
	combout => \inst1|inst|Mux10~1_combout\);

-- Location: LABCELL_X60_Y12_N27
\inst1|inst|Mux12~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|inst|Mux12~0_combout\ = ( \inst1|inst7|inst~q\ & ( (!\inst1|inst7|inst6~q\ & (\inst1|inst7|inst2~q\)) # (\inst1|inst7|inst6~q\ & ((\inst1|inst7|13~q\))) ) ) # ( !\inst1|inst7|inst~q\ & ( (\inst1|inst7|inst2~q\ & ((!\inst1|inst7|13~q\) # 
-- (!\inst1|inst7|inst6~q\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010000010101010101000001010101000011110101010100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|inst7|ALT_INV_inst2~q\,
	datac => \inst1|inst7|ALT_INV_13~q\,
	datad => \inst1|inst7|ALT_INV_inst6~q\,
	dataf => \inst1|inst7|ALT_INV_inst~q\,
	combout => \inst1|inst|Mux12~0_combout\);

-- Location: LABCELL_X60_Y11_N54
\inst1|inst|Mux31~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|inst|Mux31~0_combout\ = ( !\inst1|inst|state[4]~DUPLICATE_q\ & ( \inst1|inst|state\(2) & ( (\inst1|inst|state[1]~DUPLICATE_q\ & (\inst1|inst|state\(3) & (\inst1|inst|state[0]~DUPLICATE_q\ & !\inst1|inst|state[5]~DUPLICATE_q\))) ) ) ) # ( 
-- !\inst1|inst|state[4]~DUPLICATE_q\ & ( !\inst1|inst|state\(2) & ( (\inst1|inst|state[0]~DUPLICATE_q\ & ((!\inst1|inst|state\(3) & (\inst1|inst|state[1]~DUPLICATE_q\ & !\inst1|inst|state[5]~DUPLICATE_q\)) # (\inst1|inst|state\(3) & 
-- ((\inst1|inst|state[5]~DUPLICATE_q\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010000000011000000000000000000000001000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|inst|ALT_INV_state[1]~DUPLICATE_q\,
	datab => \inst1|inst|ALT_INV_state\(3),
	datac => \inst1|inst|ALT_INV_state[0]~DUPLICATE_q\,
	datad => \inst1|inst|ALT_INV_state[5]~DUPLICATE_q\,
	datae => \inst1|inst|ALT_INV_state[4]~DUPLICATE_q\,
	dataf => \inst1|inst|ALT_INV_state\(2),
	combout => \inst1|inst|Mux31~0_combout\);

-- Location: LABCELL_X60_Y12_N9
\inst1|inst|Mux13~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|inst|Mux13~0_combout\ = ( \inst1|inst7|inst2~q\ & ( (!\inst1|inst7|inst6~q\ & ((\inst1|inst7|inst~q\))) # (\inst1|inst7|inst6~q\ & (!\inst1|inst7|13~q\)) ) ) # ( !\inst1|inst7|inst2~q\ & ( (\inst1|inst7|inst6~q\ & (!\inst1|inst7|13~q\ & 
-- \inst1|inst7|inst~q\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010000000100000001000000010001001110010011100100111001001110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|inst7|ALT_INV_inst6~q\,
	datab => \inst1|inst7|ALT_INV_13~q\,
	datac => \inst1|inst7|ALT_INV_inst~q\,
	dataf => \inst1|inst7|ALT_INV_inst2~q\,
	combout => \inst1|inst|Mux13~0_combout\);

-- Location: LABCELL_X60_Y12_N42
\inst1|inst6|194|41~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|inst6|194|41~0_combout\ = ( !\inst1|inst|Mux13~0_combout\ & ( (\inst1|inst|Mux12~0_combout\ & (\inst1|inst|Mux11~1_combout\ & (\inst1|inst|Mux30~0_combout\ & !\inst1|inst|Mux31~0_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100000000000000010000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|inst|ALT_INV_Mux12~0_combout\,
	datab => \inst1|inst|ALT_INV_Mux11~1_combout\,
	datac => \inst1|inst|ALT_INV_Mux30~0_combout\,
	datad => \inst1|inst|ALT_INV_Mux31~0_combout\,
	dataf => \inst1|inst|ALT_INV_Mux13~0_combout\,
	combout => \inst1|inst6|194|41~0_combout\);

-- Location: LABCELL_X60_Y12_N6
\inst1|inst|Mux30~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|inst|Mux30~1_combout\ = ( \inst1|inst|Mux30~0_combout\ & ( (\inst1|inst|Mux12~0_combout\ & \inst1|inst|Mux11~1_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000011110000000000001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \inst1|inst|ALT_INV_Mux12~0_combout\,
	datad => \inst1|inst|ALT_INV_Mux11~1_combout\,
	dataf => \inst1|inst|ALT_INV_Mux30~0_combout\,
	combout => \inst1|inst|Mux30~1_combout\);

-- Location: MLABCELL_X59_Y12_N57
\inst1|inst|Mux31~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|inst|Mux31~1_combout\ = ( \inst1|inst|Mux11~1_combout\ & ( ((\inst1|inst|Mux13~0_combout\ & \inst1|inst|Mux30~0_combout\)) # (\inst1|inst|Mux31~0_combout\) ) ) # ( !\inst1|inst|Mux11~1_combout\ & ( \inst1|inst|Mux31~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111100000101111111110000010111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|inst|ALT_INV_Mux13~0_combout\,
	datac => \inst1|inst|ALT_INV_Mux30~0_combout\,
	datad => \inst1|inst|ALT_INV_Mux31~0_combout\,
	dataf => \inst1|inst|ALT_INV_Mux11~1_combout\,
	combout => \inst1|inst|Mux31~1_combout\);

-- Location: MLABCELL_X59_Y10_N54
\inst1|inst6|201|41~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|inst6|201|41~0_combout\ = ( \inst1|inst|Mux31~1_combout\ & ( \inst1|inst6|122~q\ & ( (!\inst1|inst|Mux10~1_combout\ & (\inst1|inst6|121~q\)) # (\inst1|inst|Mux10~1_combout\ & ((\inst1|inst6|120~q\))) ) ) ) # ( !\inst1|inst|Mux31~1_combout\ & ( 
-- \inst1|inst6|122~q\ & ( (!\inst1|inst|Mux10~1_combout\) # (\inst1|inst6|123~q\) ) ) ) # ( \inst1|inst|Mux31~1_combout\ & ( !\inst1|inst6|122~q\ & ( (!\inst1|inst|Mux10~1_combout\ & (\inst1|inst6|121~q\)) # (\inst1|inst|Mux10~1_combout\ & 
-- ((\inst1|inst6|120~q\))) ) ) ) # ( !\inst1|inst|Mux31~1_combout\ & ( !\inst1|inst6|122~q\ & ( (\inst1|inst6|123~q\ & \inst1|inst|Mux10~1_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111010101010011001111111111000011110101010100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|inst6|ALT_INV_121~q\,
	datab => \inst1|inst6|ALT_INV_120~q\,
	datac => \inst1|inst6|ALT_INV_123~q\,
	datad => \inst1|inst|ALT_INV_Mux10~1_combout\,
	datae => \inst1|inst|ALT_INV_Mux31~1_combout\,
	dataf => \inst1|inst6|ALT_INV_122~q\,
	combout => \inst1|inst6|201|41~0_combout\);

-- Location: LABCELL_X60_Y10_N15
\inst1|inst6|201|8~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|inst6|201|8~0_combout\ = ( \inst1|inst|Mux30~1_combout\ & ( \inst1|inst|Mux31~1_combout\ & ( !\inst1|inst6|119~q\ ) ) ) # ( !\inst1|inst|Mux30~1_combout\ & ( \inst1|inst|Mux31~1_combout\ & ( \inst1|inst6|122~q\ ) ) ) # ( 
-- \inst1|inst|Mux30~1_combout\ & ( !\inst1|inst|Mux31~1_combout\ & ( \inst1|inst6|121~q\ ) ) ) # ( !\inst1|inst|Mux30~1_combout\ & ( !\inst1|inst|Mux31~1_combout\ & ( (!\inst1|inst6|121~q\ & !\inst1|inst6|122~q\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000100010001000010101010101010100110011001100111111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|inst6|ALT_INV_121~q\,
	datab => \inst1|inst6|ALT_INV_122~q\,
	datac => \inst1|inst6|ALT_INV_119~q\,
	datae => \inst1|inst|ALT_INV_Mux30~1_combout\,
	dataf => \inst1|inst|ALT_INV_Mux31~1_combout\,
	combout => \inst1|inst6|201|8~0_combout\);

-- Location: MLABCELL_X59_Y13_N15
\inst1|inst6|197|8~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|inst6|197|8~0_combout\ = ( \inst1|inst|Mux31~1_combout\ & ( \inst1|inst|Mux30~1_combout\ & ( !\inst1|inst6|116~q\ ) ) ) # ( !\inst1|inst|Mux31~1_combout\ & ( \inst1|inst|Mux30~1_combout\ & ( \inst1|inst6|117~q\ ) ) ) # ( 
-- \inst1|inst|Mux31~1_combout\ & ( !\inst1|inst|Mux30~1_combout\ & ( \inst1|inst6|118~q\ ) ) ) # ( !\inst1|inst|Mux31~1_combout\ & ( !\inst1|inst|Mux30~1_combout\ & ( (!\inst1|inst6|118~q\ & !\inst1|inst6|117~q\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100000011000000001100110011001100001111000011111010101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|inst6|ALT_INV_116~q\,
	datab => \inst1|inst6|ALT_INV_118~q\,
	datac => \inst1|inst6|ALT_INV_117~q\,
	datae => \inst1|inst|ALT_INV_Mux31~1_combout\,
	dataf => \inst1|inst|ALT_INV_Mux30~1_combout\,
	combout => \inst1|inst6|197|8~0_combout\);

-- Location: MLABCELL_X59_Y13_N21
\inst1|inst6|197|41~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|inst6|197|41~1_combout\ = ( \inst1|inst6|119~q\ & ( (!\inst1|inst|Mux31~1_combout\ & ((!\inst1|inst|Mux30~1_combout\) # ((\inst1|inst6|120~q\)))) # (\inst1|inst|Mux31~1_combout\ & (!\inst1|inst|Mux30~1_combout\ & ((\inst1|inst6|115~q\)))) ) ) # ( 
-- !\inst1|inst6|119~q\ & ( (!\inst1|inst|Mux31~1_combout\ & (\inst1|inst|Mux30~1_combout\ & (\inst1|inst6|120~q\))) # (\inst1|inst|Mux31~1_combout\ & (!\inst1|inst|Mux30~1_combout\ & ((\inst1|inst6|115~q\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001001000110000000100100011010001010110011101000101011001110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|inst|ALT_INV_Mux31~1_combout\,
	datab => \inst1|inst|ALT_INV_Mux30~1_combout\,
	datac => \inst1|inst6|ALT_INV_120~q\,
	datad => \inst1|inst6|ALT_INV_115~q\,
	dataf => \inst1|inst6|ALT_INV_119~q\,
	combout => \inst1|inst6|197|41~1_combout\);

-- Location: MLABCELL_X59_Y13_N24
\inst1|inst6|162|sub|105~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|inst6|162|sub|105~0_combout\ = ( \inst1|inst6|113~q\ & ( (!\inst1|inst6|115~q\ & (\inst1|inst6|114~q\ & \inst1|inst6|116~q\)) # (\inst1|inst6|115~q\ & ((\inst1|inst6|116~q\) # (\inst1|inst6|114~q\))) ) ) # ( !\inst1|inst6|113~q\ & ( 
-- (\inst1|inst6|115~q\ & \inst1|inst6|116~q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000110011000000000011001100000011001111110000001100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \inst1|inst6|ALT_INV_115~q\,
	datac => \inst1|inst6|ALT_INV_114~q\,
	datad => \inst1|inst6|ALT_INV_116~q\,
	dataf => \inst1|inst6|ALT_INV_113~q\,
	combout => \inst1|inst6|162|sub|105~0_combout\);

-- Location: MLABCELL_X59_Y13_N18
\inst1|inst6|197|41~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|inst6|197|41~0_combout\ = ( \inst1|inst6|118~q\ & ( (!\inst1|inst|Mux31~1_combout\ & ((!\inst1|inst|Mux30~1_combout\) # (!\inst1|inst6|162|sub|105~0_combout\ $ (\inst1|inst6|117~q\)))) # (\inst1|inst|Mux31~1_combout\ & (((\inst1|inst6|117~q\)))) ) 
-- ) # ( !\inst1|inst6|118~q\ & ( (!\inst1|inst|Mux31~1_combout\ & (\inst1|inst|Mux30~1_combout\ & (!\inst1|inst6|162|sub|105~0_combout\ $ (!\inst1|inst6|117~q\)))) # (\inst1|inst|Mux31~1_combout\ & (!\inst1|inst|Mux30~1_combout\ & ((\inst1|inst6|117~q\)))) 
-- ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001001100100000000100110010010101000110111111010100011011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|inst|ALT_INV_Mux31~1_combout\,
	datab => \inst1|inst|ALT_INV_Mux30~1_combout\,
	datac => \inst1|inst6|162|sub|ALT_INV_105~0_combout\,
	datad => \inst1|inst6|ALT_INV_117~q\,
	dataf => \inst1|inst6|ALT_INV_118~q\,
	combout => \inst1|inst6|197|41~0_combout\);

-- Location: MLABCELL_X59_Y13_N51
\inst1|inst6|197|41~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|inst6|197|41~2_combout\ = ( \inst1|inst6|197|41~0_combout\ & ( (!\inst1|inst|Mux10~1_combout\ & ((!\inst1|inst|Mux29~0_combout\) # ((!\inst1|inst6|197|8~0_combout\)))) # (\inst1|inst|Mux10~1_combout\ & (!\inst1|inst|Mux29~0_combout\ & 
-- ((\inst1|inst6|197|41~1_combout\)))) ) ) # ( !\inst1|inst6|197|41~0_combout\ & ( (!\inst1|inst|Mux10~1_combout\ & (\inst1|inst|Mux29~0_combout\ & (!\inst1|inst6|197|8~0_combout\))) # (\inst1|inst|Mux10~1_combout\ & (!\inst1|inst|Mux29~0_combout\ & 
-- ((\inst1|inst6|197|41~1_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010000001100100001000000110010010101000111011001010100011101100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|inst|ALT_INV_Mux10~1_combout\,
	datab => \inst1|inst|ALT_INV_Mux29~0_combout\,
	datac => \inst1|inst6|197|ALT_INV_8~0_combout\,
	datad => \inst1|inst6|197|ALT_INV_41~1_combout\,
	dataf => \inst1|inst6|197|ALT_INV_41~0_combout\,
	combout => \inst1|inst6|197|41~2_combout\);

-- Location: MLABCELL_X59_Y13_N54
\inst1|inst6|140|9~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|inst6|140|9~0_combout\ = ( \inst1|inst|Mux1~1_combout\ & ( \inst1|inst6|197|41~2_combout\ & ( (!\inst1|inst|Mux24~2_combout\) # (\inst1|inst6|118~q\) ) ) ) # ( !\inst1|inst|Mux1~1_combout\ & ( \inst1|inst6|197|41~2_combout\ & ( 
-- (!\inst1|inst|Mux24~2_combout\ & ((\inst1|inst6|117~q\))) # (\inst1|inst|Mux24~2_combout\ & (\DATA[2]~input_o\)) ) ) ) # ( \inst1|inst|Mux1~1_combout\ & ( !\inst1|inst6|197|41~2_combout\ & ( (\inst1|inst|Mux24~2_combout\ & \inst1|inst6|118~q\) ) ) ) # ( 
-- !\inst1|inst|Mux1~1_combout\ & ( !\inst1|inst6|197|41~2_combout\ & ( (!\inst1|inst|Mux24~2_combout\ & ((\inst1|inst6|117~q\))) # (\inst1|inst|Mux24~2_combout\ & (\DATA[2]~input_o\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010110101111000100010001000100000101101011111011101110111011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|inst|ALT_INV_Mux24~2_combout\,
	datab => \inst1|inst6|ALT_INV_118~q\,
	datac => \ALT_INV_DATA[2]~input_o\,
	datad => \inst1|inst6|ALT_INV_117~q\,
	datae => \inst1|inst|ALT_INV_Mux1~1_combout\,
	dataf => \inst1|inst6|197|ALT_INV_41~2_combout\,
	combout => \inst1|inst6|140|9~0_combout\);

-- Location: FF_X59_Y13_N59
\inst1|inst6|117\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2~q\,
	asdata => \inst1|inst6|140|9~0_combout\,
	clrn => \nRESET~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|inst6|117~q\);

-- Location: MLABCELL_X59_Y13_N36
\inst1|inst6|139|9~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|inst6|139|9~0_combout\ = ( \inst1|inst|Mux8~1_combout\ & ( \inst1|inst6|197|41~2_combout\ & ( (!\inst1|inst|Mux27~1_combout\) # (\inst1|inst6|117~q\) ) ) ) # ( !\inst1|inst|Mux8~1_combout\ & ( \inst1|inst6|197|41~2_combout\ & ( 
-- (!\inst1|inst|Mux27~1_combout\ & ((\inst1|inst6|118~q\))) # (\inst1|inst|Mux27~1_combout\ & (\DATA[2]~input_o\)) ) ) ) # ( \inst1|inst|Mux8~1_combout\ & ( !\inst1|inst6|197|41~2_combout\ & ( (\inst1|inst|Mux27~1_combout\ & \inst1|inst6|117~q\) ) ) ) # ( 
-- !\inst1|inst|Mux8~1_combout\ & ( !\inst1|inst6|197|41~2_combout\ & ( (!\inst1|inst|Mux27~1_combout\ & ((\inst1|inst6|118~q\))) # (\inst1|inst|Mux27~1_combout\ & (\DATA[2]~input_o\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010110101111000100010001000100000101101011111011101110111011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|inst|ALT_INV_Mux27~1_combout\,
	datab => \inst1|inst6|ALT_INV_117~q\,
	datac => \ALT_INV_DATA[2]~input_o\,
	datad => \inst1|inst6|ALT_INV_118~q\,
	datae => \inst1|inst|ALT_INV_Mux8~1_combout\,
	dataf => \inst1|inst6|197|ALT_INV_41~2_combout\,
	combout => \inst1|inst6|139|9~0_combout\);

-- Location: FF_X59_Y13_N47
\inst1|inst6|118\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2~q\,
	asdata => \inst1|inst6|139|9~0_combout\,
	clrn => \nRESET~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|inst6|118~q\);

-- Location: MLABCELL_X59_Y12_N21
\inst1|inst6|195|41~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|inst6|195|41~1_combout\ = ( \inst1|inst6|117~q\ & ( (!\inst1|inst|Mux30~1_combout\ & ((!\inst1|inst|Mux31~1_combout\ & ((\inst1|inst6|118~q\))) # (\inst1|inst|Mux31~1_combout\ & (\inst1|inst6|113~q\)))) # (\inst1|inst|Mux30~1_combout\ & 
-- (!\inst1|inst|Mux31~1_combout\)) ) ) # ( !\inst1|inst6|117~q\ & ( (!\inst1|inst|Mux30~1_combout\ & ((!\inst1|inst|Mux31~1_combout\ & ((\inst1|inst6|118~q\))) # (\inst1|inst|Mux31~1_combout\ & (\inst1|inst6|113~q\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001010001010000000101000101001000110110011100100011011001110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|inst|ALT_INV_Mux30~1_combout\,
	datab => \inst1|inst|ALT_INV_Mux31~1_combout\,
	datac => \inst1|inst6|ALT_INV_113~q\,
	datad => \inst1|inst6|ALT_INV_118~q\,
	dataf => \inst1|inst6|ALT_INV_117~q\,
	combout => \inst1|inst6|195|41~1_combout\);

-- Location: LABCELL_X60_Y12_N0
\inst1|inst6|204\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|inst6|204~combout\ = ( \inst1|inst6|114~q\ & ( \inst1|inst6|113~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \inst1|inst6|ALT_INV_113~q\,
	dataf => \inst1|inst6|ALT_INV_114~q\,
	combout => \inst1|inst6|204~combout\);

-- Location: MLABCELL_X59_Y13_N27
\inst1|inst6|195|41~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|inst6|195|41~0_combout\ = ( \inst1|inst|Mux31~1_combout\ & ( (\inst1|inst6|115~q\ & ((!\inst1|inst|Mux30~1_combout\) # (\inst1|inst6|116~q\))) ) ) # ( !\inst1|inst|Mux31~1_combout\ & ( !\inst1|inst6|116~q\ $ (((!\inst1|inst|Mux30~1_combout\) # 
-- (!\inst1|inst6|115~q\ $ (\inst1|inst6|204~combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101101001010101010110100100110011000100010011001100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|inst6|ALT_INV_116~q\,
	datab => \inst1|inst6|ALT_INV_115~q\,
	datac => \inst1|inst6|ALT_INV_204~combout\,
	datad => \inst1|inst|ALT_INV_Mux30~1_combout\,
	dataf => \inst1|inst|ALT_INV_Mux31~1_combout\,
	combout => \inst1|inst6|195|41~0_combout\);

-- Location: MLABCELL_X59_Y13_N33
\inst1|inst6|195|8~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|inst6|195|8~0_combout\ = ( \inst1|inst|Mux31~1_combout\ & ( (!\inst1|inst|Mux30~1_combout\ & (\inst1|inst6|116~q\)) # (\inst1|inst|Mux30~1_combout\ & ((!\inst1|inst6|114~q\))) ) ) # ( !\inst1|inst|Mux31~1_combout\ & ( (!\inst1|inst6|115~q\ & 
-- (!\inst1|inst6|116~q\ & !\inst1|inst|Mux30~1_combout\)) # (\inst1|inst6|115~q\ & ((\inst1|inst|Mux30~1_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010000000001111101000000000111101010101110011000101010111001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|inst6|ALT_INV_116~q\,
	datab => \inst1|inst6|ALT_INV_114~q\,
	datac => \inst1|inst6|ALT_INV_115~q\,
	datad => \inst1|inst|ALT_INV_Mux30~1_combout\,
	dataf => \inst1|inst|ALT_INV_Mux31~1_combout\,
	combout => \inst1|inst6|195|8~0_combout\);

-- Location: MLABCELL_X59_Y13_N48
\inst1|inst6|195|41~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|inst6|195|41~2_combout\ = ( \inst1|inst6|195|8~0_combout\ & ( (!\inst1|inst|Mux29~0_combout\ & ((!\inst1|inst|Mux10~1_combout\ & ((\inst1|inst6|195|41~0_combout\))) # (\inst1|inst|Mux10~1_combout\ & (\inst1|inst6|195|41~1_combout\)))) ) ) # ( 
-- !\inst1|inst6|195|8~0_combout\ & ( (!\inst1|inst|Mux10~1_combout\ & (((\inst1|inst6|195|41~0_combout\)) # (\inst1|inst|Mux29~0_combout\))) # (\inst1|inst|Mux10~1_combout\ & (!\inst1|inst|Mux29~0_combout\ & (\inst1|inst6|195|41~1_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010011010101110001001101010111000000100100011000000010010001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|inst|ALT_INV_Mux10~1_combout\,
	datab => \inst1|inst|ALT_INV_Mux29~0_combout\,
	datac => \inst1|inst6|195|ALT_INV_41~1_combout\,
	datad => \inst1|inst6|195|ALT_INV_41~0_combout\,
	dataf => \inst1|inst6|195|ALT_INV_8~0_combout\,
	combout => \inst1|inst6|195|41~2_combout\);

-- Location: MLABCELL_X59_Y13_N42
\inst1|inst6|138|10~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|inst6|138|10~0_combout\ = ( \inst1|inst|Mux8~1_combout\ & ( \inst1|inst6|195|41~2_combout\ & ( (!\inst1|inst|Mux27~1_combout\) # (\inst1|inst6|115~q\) ) ) ) # ( !\inst1|inst|Mux8~1_combout\ & ( \inst1|inst6|195|41~2_combout\ & ( 
-- (!\inst1|inst|Mux27~1_combout\ & (\inst1|inst6|116~q\)) # (\inst1|inst|Mux27~1_combout\ & ((\DATA[1]~input_o\))) ) ) ) # ( \inst1|inst|Mux8~1_combout\ & ( !\inst1|inst6|195|41~2_combout\ & ( (\inst1|inst|Mux27~1_combout\ & \inst1|inst6|115~q\) ) ) ) # ( 
-- !\inst1|inst|Mux8~1_combout\ & ( !\inst1|inst6|195|41~2_combout\ & ( (!\inst1|inst|Mux27~1_combout\ & (\inst1|inst6|116~q\)) # (\inst1|inst|Mux27~1_combout\ & ((\DATA[1]~input_o\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101001101010011000000000000111101010011010100111111000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|inst6|ALT_INV_116~q\,
	datab => \ALT_INV_DATA[1]~input_o\,
	datac => \inst1|inst|ALT_INV_Mux27~1_combout\,
	datad => \inst1|inst6|ALT_INV_115~q\,
	datae => \inst1|inst|ALT_INV_Mux8~1_combout\,
	dataf => \inst1|inst6|195|ALT_INV_41~2_combout\,
	combout => \inst1|inst6|138|10~0_combout\);

-- Location: FF_X59_Y12_N50
\inst1|inst6|116\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2~q\,
	asdata => \inst1|inst6|138|10~0_combout\,
	clrn => \nRESET~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|inst6|116~q\);

-- Location: MLABCELL_X59_Y13_N6
\inst1|inst6|137|10~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|inst6|137|10~0_combout\ = ( \inst1|inst|Mux1~1_combout\ & ( \inst1|inst6|195|41~2_combout\ & ( (!\inst1|inst|Mux24~2_combout\) # (\inst1|inst6|116~q\) ) ) ) # ( !\inst1|inst|Mux1~1_combout\ & ( \inst1|inst6|195|41~2_combout\ & ( 
-- (!\inst1|inst|Mux24~2_combout\ & ((\inst1|inst6|115~q\))) # (\inst1|inst|Mux24~2_combout\ & (\DATA[1]~input_o\)) ) ) ) # ( \inst1|inst|Mux1~1_combout\ & ( !\inst1|inst6|195|41~2_combout\ & ( (\inst1|inst6|116~q\ & \inst1|inst|Mux24~2_combout\) ) ) ) # ( 
-- !\inst1|inst|Mux1~1_combout\ & ( !\inst1|inst6|195|41~2_combout\ & ( (!\inst1|inst|Mux24~2_combout\ & ((\inst1|inst6|115~q\))) # (\inst1|inst|Mux24~2_combout\ & (\DATA[1]~input_o\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001111110011000001010000010100000011111100111111010111110101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|inst6|ALT_INV_116~q\,
	datab => \ALT_INV_DATA[1]~input_o\,
	datac => \inst1|inst|ALT_INV_Mux24~2_combout\,
	datad => \inst1|inst6|ALT_INV_115~q\,
	datae => \inst1|inst|ALT_INV_Mux1~1_combout\,
	dataf => \inst1|inst6|195|ALT_INV_41~2_combout\,
	combout => \inst1|inst6|137|10~0_combout\);

-- Location: FF_X59_Y13_N41
\inst1|inst6|115\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2~q\,
	asdata => \inst1|inst6|137|10~0_combout\,
	clrn => \nRESET~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|inst6|115~q\);

-- Location: LABCELL_X60_Y12_N15
\inst1|inst6|194|41~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|inst6|194|41~3_combout\ = ( \inst1|inst|Mux31~1_combout\ & ( \inst1|inst|Mux29~0_combout\ & ( (!\inst1|inst6|114~q\ & (!\inst1|inst|Mux30~1_combout\ & !\inst1|inst|Mux10~1_combout\)) ) ) ) # ( !\inst1|inst|Mux31~1_combout\ & ( 
-- \inst1|inst|Mux29~0_combout\ & ( (!\inst1|inst|Mux30~1_combout\ & (!\inst1|inst|Mux10~1_combout\ & ((\inst1|inst6|114~q\) # (\inst1|inst6|113~q\)))) ) ) ) # ( \inst1|inst|Mux31~1_combout\ & ( !\inst1|inst|Mux29~0_combout\ & ( (\inst1|inst6|113~q\ & 
-- (!\inst1|inst|Mux30~1_combout\ & !\inst1|inst|Mux10~1_combout\)) ) ) ) # ( !\inst1|inst|Mux31~1_combout\ & ( !\inst1|inst|Mux29~0_combout\ & ( (\inst1|inst6|114~q\ & (!\inst1|inst|Mux30~1_combout\ & !\inst1|inst|Mux10~1_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011000000000000010100000000000001110000000000001100000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|inst6|ALT_INV_113~q\,
	datab => \inst1|inst6|ALT_INV_114~q\,
	datac => \inst1|inst|ALT_INV_Mux30~1_combout\,
	datad => \inst1|inst|ALT_INV_Mux10~1_combout\,
	datae => \inst1|inst|ALT_INV_Mux31~1_combout\,
	dataf => \inst1|inst|ALT_INV_Mux29~0_combout\,
	combout => \inst1|inst6|194|41~3_combout\);

-- Location: LABCELL_X60_Y12_N57
\inst1|inst6|194|41~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|inst6|194|41~2_combout\ = ( \inst1|inst|Mux31~1_combout\ & ( (\inst1|inst6|204~combout\ & (\inst1|inst|Mux30~1_combout\ & !\inst1|inst|Mux10~1_combout\)) ) ) # ( !\inst1|inst|Mux31~1_combout\ & ( (\inst1|inst6|116~q\ & 
-- (!\inst1|inst|Mux30~1_combout\ & \inst1|inst|Mux10~1_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000110000000000000011000000000101000000000000010100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|inst6|ALT_INV_204~combout\,
	datab => \inst1|inst6|ALT_INV_116~q\,
	datac => \inst1|inst|ALT_INV_Mux30~1_combout\,
	datad => \inst1|inst|ALT_INV_Mux10~1_combout\,
	dataf => \inst1|inst|ALT_INV_Mux31~1_combout\,
	combout => \inst1|inst6|194|41~2_combout\);

-- Location: LABCELL_X60_Y12_N24
\inst1|inst|Mux11~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|inst|Mux11~0_combout\ = ( \inst1|inst7|inst~q\ & ( (!\inst1|inst7|inst2~q\ & \inst1|inst7|inst6~q\) ) ) # ( !\inst1|inst7|inst~q\ & ( (\inst1|inst7|inst6~q\ & ((!\inst1|inst7|inst2~q\) # (!\inst1|inst7|13~q\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011101110000000001110111000000000101010100000000010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|inst7|ALT_INV_inst2~q\,
	datab => \inst1|inst7|ALT_INV_13~q\,
	datad => \inst1|inst7|ALT_INV_inst6~q\,
	dataf => \inst1|inst7|ALT_INV_inst~q\,
	combout => \inst1|inst|Mux11~0_combout\);

-- Location: MLABCELL_X59_Y12_N12
\inst1|inst6|194|41~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|inst6|194|41~1_combout\ = ( \inst1|inst|Mux11~0_combout\ & ( !\inst1|inst6|113~q\ $ (((!\inst1|inst|Mux11~1_combout\ & !\inst1|inst6|114~q\))) ) ) # ( !\inst1|inst|Mux11~0_combout\ & ( !\inst1|inst6|113~q\ $ (!\inst1|inst6|114~q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111111110000000011111111000001011010111100000101101011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|inst|ALT_INV_Mux11~1_combout\,
	datac => \inst1|inst6|ALT_INV_113~q\,
	datad => \inst1|inst6|ALT_INV_114~q\,
	dataf => \inst1|inst|ALT_INV_Mux11~0_combout\,
	combout => \inst1|inst6|194|41~1_combout\);

-- Location: LABCELL_X60_Y12_N48
\inst1|inst6|194|41~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|inst6|194|41~4_combout\ = ( !\inst1|inst|Mux10~1_combout\ & ( ((!\inst1|inst|Mux29~0_combout\ & (((\inst1|inst6|194|41~0_combout\ & \inst1|inst6|194|41~1_combout\)) # (\inst1|inst6|194|41~2_combout\))) # (\inst1|inst|Mux29~0_combout\ & 
-- (\inst1|inst6|194|41~0_combout\ & (\inst1|inst6|194|41~1_combout\)))) # (\inst1|inst6|194|41~3_combout\) ) ) # ( \inst1|inst|Mux10~1_combout\ & ( ((!\inst1|inst|Mux29~0_combout\ & (((\inst1|inst6|194|41~0_combout\ & \inst1|inst6|115~q\)) # 
-- (\inst1|inst6|194|41~2_combout\)))) # (\inst1|inst6|194|41~3_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0000001111111111000000101111111110101011111111111010101011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|inst|ALT_INV_Mux29~0_combout\,
	datab => \inst1|inst6|194|ALT_INV_41~0_combout\,
	datac => \inst1|inst6|ALT_INV_115~q\,
	datad => \inst1|inst6|194|ALT_INV_41~3_combout\,
	datae => \inst1|inst|ALT_INV_Mux10~1_combout\,
	dataf => \inst1|inst6|194|ALT_INV_41~2_combout\,
	datag => \inst1|inst6|194|ALT_INV_41~1_combout\,
	combout => \inst1|inst6|194|41~4_combout\);

-- Location: MLABCELL_X59_Y13_N0
\inst1|inst6|137|9~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|inst6|137|9~0_combout\ = ( \inst1|inst|Mux1~1_combout\ & ( \inst1|inst6|194|41~4_combout\ & ( (!\inst1|inst|Mux24~2_combout\) # (\inst1|inst6|114~q\) ) ) ) # ( !\inst1|inst|Mux1~1_combout\ & ( \inst1|inst6|194|41~4_combout\ & ( 
-- (!\inst1|inst|Mux24~2_combout\ & ((\inst1|inst6|113~q\))) # (\inst1|inst|Mux24~2_combout\ & (\DATA[0]~input_o\)) ) ) ) # ( \inst1|inst|Mux1~1_combout\ & ( !\inst1|inst6|194|41~4_combout\ & ( (\inst1|inst|Mux24~2_combout\ & \inst1|inst6|114~q\) ) ) ) # ( 
-- !\inst1|inst|Mux1~1_combout\ & ( !\inst1|inst6|194|41~4_combout\ & ( (!\inst1|inst|Mux24~2_combout\ & ((\inst1|inst6|113~q\))) # (\inst1|inst|Mux24~2_combout\ & (\DATA[0]~input_o\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011010100110101000000000000111100110101001101011111000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_DATA[0]~input_o\,
	datab => \inst1|inst6|ALT_INV_113~q\,
	datac => \inst1|inst|ALT_INV_Mux24~2_combout\,
	datad => \inst1|inst6|ALT_INV_114~q\,
	datae => \inst1|inst|ALT_INV_Mux1~1_combout\,
	dataf => \inst1|inst6|194|ALT_INV_41~4_combout\,
	combout => \inst1|inst6|137|9~0_combout\);

-- Location: FF_X59_Y13_N14
\inst1|inst6|113\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2~q\,
	asdata => \inst1|inst6|137|9~0_combout\,
	clrn => \nRESET~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|inst6|113~q\);

-- Location: LABCELL_X60_Y12_N36
\inst1|inst6|138|9~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|inst6|138|9~0_combout\ = ( \inst1|inst|Mux8~1_combout\ & ( \inst1|inst6|194|41~4_combout\ & ( (!\inst1|inst|Mux27~1_combout\) # (\inst1|inst6|113~q\) ) ) ) # ( !\inst1|inst|Mux8~1_combout\ & ( \inst1|inst6|194|41~4_combout\ & ( 
-- (!\inst1|inst|Mux27~1_combout\ & ((\inst1|inst6|114~q\))) # (\inst1|inst|Mux27~1_combout\ & (\DATA[0]~input_o\)) ) ) ) # ( \inst1|inst|Mux8~1_combout\ & ( !\inst1|inst6|194|41~4_combout\ & ( (\inst1|inst6|113~q\ & \inst1|inst|Mux27~1_combout\) ) ) ) # ( 
-- !\inst1|inst|Mux8~1_combout\ & ( !\inst1|inst6|194|41~4_combout\ & ( (!\inst1|inst|Mux27~1_combout\ & ((\inst1|inst6|114~q\))) # (\inst1|inst|Mux27~1_combout\ & (\DATA[0]~input_o\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001101010101000000000000111100110011010101011111111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_DATA[0]~input_o\,
	datab => \inst1|inst6|ALT_INV_114~q\,
	datac => \inst1|inst6|ALT_INV_113~q\,
	datad => \inst1|inst|ALT_INV_Mux27~1_combout\,
	datae => \inst1|inst|ALT_INV_Mux8~1_combout\,
	dataf => \inst1|inst6|194|ALT_INV_41~4_combout\,
	combout => \inst1|inst6|138|9~0_combout\);

-- Location: FF_X60_Y12_N11
\inst1|inst6|114\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2~q\,
	asdata => \inst1|inst6|138|9~0_combout\,
	clrn => \nRESET~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|inst6|114~q\);

-- Location: LABCELL_X60_Y12_N18
\inst1|inst6|162|sub|106~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|inst6|162|sub|106~0_combout\ = ( \inst1|inst6|116~q\ & ( \inst1|inst6|117~q\ & ( (((\inst1|inst6|114~q\ & \inst1|inst6|113~q\)) # (\inst1|inst6|115~q\)) # (\inst1|inst6|118~q\) ) ) ) # ( !\inst1|inst6|116~q\ & ( \inst1|inst6|117~q\ & ( 
-- ((\inst1|inst6|114~q\ & (\inst1|inst6|113~q\ & \inst1|inst6|115~q\))) # (\inst1|inst6|118~q\) ) ) ) # ( \inst1|inst6|116~q\ & ( !\inst1|inst6|117~q\ & ( (\inst1|inst6|118~q\ & (((\inst1|inst6|114~q\ & \inst1|inst6|113~q\)) # (\inst1|inst6|115~q\))) ) ) ) 
-- # ( !\inst1|inst6|116~q\ & ( !\inst1|inst6|117~q\ & ( (\inst1|inst6|114~q\ & (\inst1|inst6|113~q\ & (\inst1|inst6|118~q\ & \inst1|inst6|115~q\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000001000000010000111100001111000111110001111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|inst6|ALT_INV_114~q\,
	datab => \inst1|inst6|ALT_INV_113~q\,
	datac => \inst1|inst6|ALT_INV_118~q\,
	datad => \inst1|inst6|ALT_INV_115~q\,
	datae => \inst1|inst6|ALT_INV_116~q\,
	dataf => \inst1|inst6|ALT_INV_117~q\,
	combout => \inst1|inst6|162|sub|106~0_combout\);

-- Location: MLABCELL_X59_Y10_N3
\inst1|inst6|163|sub|76\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|inst6|163|sub|76~combout\ = ( \inst1|inst6|162|sub|106~0_combout\ & ( !\inst1|inst6|122~q\ $ (!\inst1|inst6|121~q\ $ (((\inst1|inst6|119~q\) # (\inst1|inst6|120~q\)))) ) ) # ( !\inst1|inst6|162|sub|106~0_combout\ & ( !\inst1|inst6|122~q\ $ 
-- (!\inst1|inst6|121~q\ $ (((\inst1|inst6|120~q\ & \inst1|inst6|119~q\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001111011100001000111101110000101111000100001110111100010000111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|inst6|ALT_INV_120~q\,
	datab => \inst1|inst6|ALT_INV_119~q\,
	datac => \inst1|inst6|ALT_INV_122~q\,
	datad => \inst1|inst6|ALT_INV_121~q\,
	dataf => \inst1|inst6|162|sub|ALT_INV_106~0_combout\,
	combout => \inst1|inst6|163|sub|76~combout\);

-- Location: MLABCELL_X59_Y10_N24
\inst1|inst6|201|41~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|inst6|201|41~2_combout\ = ( !\inst1|inst|Mux10~1_combout\ & ( (!\inst1|inst|Mux31~1_combout\ & (((\inst1|inst6|163|sub|76~combout\ & (\inst1|inst|Mux30~1_combout\))))) # (\inst1|inst|Mux31~1_combout\ & (\inst1|inst6|121~q\ & 
-- (((\inst1|inst6|122~q\))))) ) ) # ( \inst1|inst|Mux10~1_combout\ & ( ((!\inst1|inst|Mux31~1_combout\ & (\inst1|inst6|124~q\ & (\inst1|inst|Mux30~1_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0000000000001100000000000000110000010001000111010000000000001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|inst6|ALT_INV_121~q\,
	datab => \inst1|inst|ALT_INV_Mux31~1_combout\,
	datac => \inst1|inst6|ALT_INV_124~q\,
	datad => \inst1|inst|ALT_INV_Mux30~1_combout\,
	datae => \inst1|inst|ALT_INV_Mux10~1_combout\,
	dataf => \inst1|inst6|ALT_INV_122~q\,
	datag => \inst1|inst6|163|sub|ALT_INV_76~combout\,
	combout => \inst1|inst6|201|41~2_combout\);

-- Location: MLABCELL_X59_Y10_N30
\inst1|inst6|201|41~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|inst6|201|41~1_combout\ = ( \inst1|inst6|201|8~0_combout\ & ( \inst1|inst6|201|41~2_combout\ & ( !\inst1|inst|Mux29~0_combout\ ) ) ) # ( !\inst1|inst6|201|8~0_combout\ & ( \inst1|inst6|201|41~2_combout\ & ( (!\inst1|inst|Mux10~1_combout\) # 
-- (!\inst1|inst|Mux29~0_combout\) ) ) ) # ( \inst1|inst6|201|8~0_combout\ & ( !\inst1|inst6|201|41~2_combout\ & ( (!\inst1|inst|Mux30~1_combout\ & (\inst1|inst6|201|41~0_combout\ & !\inst1|inst|Mux29~0_combout\)) ) ) ) # ( !\inst1|inst6|201|8~0_combout\ & ( 
-- !\inst1|inst6|201|41~2_combout\ & ( (!\inst1|inst|Mux29~0_combout\ & (!\inst1|inst|Mux30~1_combout\ & ((\inst1|inst6|201|41~0_combout\)))) # (\inst1|inst|Mux29~0_combout\ & (((!\inst1|inst|Mux10~1_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101011001100000010100000000011111111110011001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|inst|ALT_INV_Mux30~1_combout\,
	datab => \inst1|inst|ALT_INV_Mux10~1_combout\,
	datac => \inst1|inst6|201|ALT_INV_41~0_combout\,
	datad => \inst1|inst|ALT_INV_Mux29~0_combout\,
	datae => \inst1|inst6|201|ALT_INV_8~0_combout\,
	dataf => \inst1|inst6|201|ALT_INV_41~2_combout\,
	combout => \inst1|inst6|201|41~1_combout\);

-- Location: MLABCELL_X59_Y10_N48
\inst1|inst6|142|9~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|inst6|142|9~0_combout\ = ( \inst1|inst|Mux1~1_combout\ & ( \inst1|inst6|201|41~1_combout\ & ( (!\inst1|inst|Mux24~2_combout\) # (\inst1|inst6|122~q\) ) ) ) # ( !\inst1|inst|Mux1~1_combout\ & ( \inst1|inst6|201|41~1_combout\ & ( 
-- (!\inst1|inst|Mux24~2_combout\ & ((\inst1|inst6|121~q\))) # (\inst1|inst|Mux24~2_combout\ & (\DATA[4]~input_o\)) ) ) ) # ( \inst1|inst|Mux1~1_combout\ & ( !\inst1|inst6|201|41~1_combout\ & ( (\inst1|inst6|122~q\ & \inst1|inst|Mux24~2_combout\) ) ) ) # ( 
-- !\inst1|inst|Mux1~1_combout\ & ( !\inst1|inst6|201|41~1_combout\ & ( (!\inst1|inst|Mux24~2_combout\ & ((\inst1|inst6|121~q\))) # (\inst1|inst|Mux24~2_combout\ & (\DATA[4]~input_o\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001111110011000001010000010100000011111100111111010111110101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|inst6|ALT_INV_122~q\,
	datab => \ALT_INV_DATA[4]~input_o\,
	datac => \inst1|inst|ALT_INV_Mux24~2_combout\,
	datad => \inst1|inst6|ALT_INV_121~q\,
	datae => \inst1|inst|ALT_INV_Mux1~1_combout\,
	dataf => \inst1|inst6|201|ALT_INV_41~1_combout\,
	combout => \inst1|inst6|142|9~0_combout\);

-- Location: FF_X59_Y10_N20
\inst1|inst6|121\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2~q\,
	asdata => \inst1|inst6|142|9~0_combout\,
	clrn => \nRESET~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|inst6|121~q\);

-- Location: MLABCELL_X59_Y10_N6
\inst1|inst6|141|9~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|inst6|141|9~0_combout\ = ( \inst1|inst|Mux8~1_combout\ & ( \inst1|inst6|201|41~1_combout\ & ( (!\inst1|inst|Mux27~1_combout\) # (\inst1|inst6|121~q\) ) ) ) # ( !\inst1|inst|Mux8~1_combout\ & ( \inst1|inst6|201|41~1_combout\ & ( 
-- (!\inst1|inst|Mux27~1_combout\ & (\inst1|inst6|122~q\)) # (\inst1|inst|Mux27~1_combout\ & ((\DATA[4]~input_o\))) ) ) ) # ( \inst1|inst|Mux8~1_combout\ & ( !\inst1|inst6|201|41~1_combout\ & ( (\inst1|inst6|121~q\ & \inst1|inst|Mux27~1_combout\) ) ) ) # ( 
-- !\inst1|inst|Mux8~1_combout\ & ( !\inst1|inst6|201|41~1_combout\ & ( (!\inst1|inst|Mux27~1_combout\ & (\inst1|inst6|122~q\)) # (\inst1|inst|Mux27~1_combout\ & ((\DATA[4]~input_o\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010100110011000000000000111101010101001100111111111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|inst6|ALT_INV_122~q\,
	datab => \ALT_INV_DATA[4]~input_o\,
	datac => \inst1|inst6|ALT_INV_121~q\,
	datad => \inst1|inst|ALT_INV_Mux27~1_combout\,
	datae => \inst1|inst|ALT_INV_Mux8~1_combout\,
	dataf => \inst1|inst6|201|ALT_INV_41~1_combout\,
	combout => \inst1|inst6|141|9~0_combout\);

-- Location: FF_X59_Y10_N35
\inst1|inst6|122\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2~q\,
	asdata => \inst1|inst6|141|9~0_combout\,
	clrn => \nRESET~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|inst6|122~q\);

-- Location: MLABCELL_X59_Y10_N15
\inst1|inst6|196|41~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|inst6|196|41~2_combout\ = ( !\inst1|inst|Mux10~1_combout\ & ( (!\inst1|inst6|119~q\ $ (((!\inst1|inst|Mux30~1_combout\) # (!\inst1|inst6|120~q\ $ (\inst1|inst6|162|sub|106~0_combout\))))) ) ) # ( \inst1|inst|Mux10~1_combout\ & ( 
-- (((!\inst1|inst|Mux30~1_combout\ & (\inst1|inst6|122~q\)) # (\inst1|inst|Mux30~1_combout\ & ((\inst1|inst6|121~q\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0011001100110011010101010101010100111100110000110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|inst6|ALT_INV_122~q\,
	datab => \inst1|inst6|ALT_INV_119~q\,
	datac => \inst1|inst6|ALT_INV_121~q\,
	datad => \inst1|inst6|162|sub|ALT_INV_106~0_combout\,
	datae => \inst1|inst|ALT_INV_Mux10~1_combout\,
	dataf => \inst1|inst|ALT_INV_Mux30~1_combout\,
	datag => \inst1|inst6|ALT_INV_120~q\,
	combout => \inst1|inst6|196|41~2_combout\);

-- Location: MLABCELL_X59_Y10_N0
\inst1|inst6|196|41~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|inst6|196|41~0_combout\ = ( \inst1|inst|Mux10~1_combout\ & ( (\inst1|inst6|117~q\ & !\inst1|inst|Mux30~1_combout\) ) ) # ( !\inst1|inst|Mux10~1_combout\ & ( (\inst1|inst6|120~q\ & ((!\inst1|inst|Mux30~1_combout\) # (\inst1|inst6|119~q\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010100010001010101010001000100001111000000000000111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|inst6|ALT_INV_120~q\,
	datab => \inst1|inst6|ALT_INV_119~q\,
	datac => \inst1|inst6|ALT_INV_117~q\,
	datad => \inst1|inst|ALT_INV_Mux30~1_combout\,
	dataf => \inst1|inst|ALT_INV_Mux10~1_combout\,
	combout => \inst1|inst6|196|41~0_combout\);

-- Location: MLABCELL_X59_Y12_N42
\inst1|inst6|196|8~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|inst6|196|8~0_combout\ = ( \inst1|inst6|120~q\ & ( (!\inst1|inst|Mux30~1_combout\ & (\inst1|inst6|119~q\ & ((\inst1|inst|Mux31~1_combout\)))) # (\inst1|inst|Mux30~1_combout\ & (((!\inst1|inst6|118~q\) # (!\inst1|inst|Mux31~1_combout\)))) ) ) # ( 
-- !\inst1|inst6|120~q\ & ( (!\inst1|inst|Mux30~1_combout\ & (!\inst1|inst6|119~q\ $ (((\inst1|inst|Mux31~1_combout\))))) # (\inst1|inst|Mux30~1_combout\ & (((!\inst1|inst6|118~q\ & \inst1|inst|Mux31~1_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010000001011100101000000101110000001111010111000000111101011100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|inst6|ALT_INV_119~q\,
	datab => \inst1|inst6|ALT_INV_118~q\,
	datac => \inst1|inst|ALT_INV_Mux30~1_combout\,
	datad => \inst1|inst|ALT_INV_Mux31~1_combout\,
	dataf => \inst1|inst6|ALT_INV_120~q\,
	combout => \inst1|inst6|196|8~0_combout\);

-- Location: MLABCELL_X59_Y10_N21
\inst1|inst6|196|41~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|inst6|196|41~1_combout\ = ( \inst1|inst6|196|41~0_combout\ & ( \inst1|inst6|196|8~0_combout\ & ( (!\inst1|inst|Mux29~0_combout\ & ((\inst1|inst6|196|41~2_combout\) # (\inst1|inst|Mux31~1_combout\))) ) ) ) # ( !\inst1|inst6|196|41~0_combout\ & ( 
-- \inst1|inst6|196|8~0_combout\ & ( (!\inst1|inst|Mux31~1_combout\ & (\inst1|inst6|196|41~2_combout\ & !\inst1|inst|Mux29~0_combout\)) ) ) ) # ( \inst1|inst6|196|41~0_combout\ & ( !\inst1|inst6|196|8~0_combout\ & ( (!\inst1|inst|Mux29~0_combout\ & 
-- (((\inst1|inst6|196|41~2_combout\) # (\inst1|inst|Mux31~1_combout\)))) # (\inst1|inst|Mux29~0_combout\ & (!\inst1|inst|Mux10~1_combout\)) ) ) ) # ( !\inst1|inst6|196|41~0_combout\ & ( !\inst1|inst6|196|8~0_combout\ & ( (!\inst1|inst|Mux29~0_combout\ & 
-- (((!\inst1|inst|Mux31~1_combout\ & \inst1|inst6|196|41~2_combout\)))) # (\inst1|inst|Mux29~0_combout\ & (!\inst1|inst|Mux10~1_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110010101010001111111010101000001100000000000011111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|inst|ALT_INV_Mux10~1_combout\,
	datab => \inst1|inst|ALT_INV_Mux31~1_combout\,
	datac => \inst1|inst6|196|ALT_INV_41~2_combout\,
	datad => \inst1|inst|ALT_INV_Mux29~0_combout\,
	datae => \inst1|inst6|196|ALT_INV_41~0_combout\,
	dataf => \inst1|inst6|196|ALT_INV_8~0_combout\,
	combout => \inst1|inst6|196|41~1_combout\);

-- Location: MLABCELL_X59_Y10_N42
\inst1|inst6|139|10~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|inst6|139|10~0_combout\ = ( \inst1|inst6|196|41~1_combout\ & ( \inst1|inst|Mux27~1_combout\ & ( (!\inst1|inst|Mux8~1_combout\ & (\DATA[3]~input_o\)) # (\inst1|inst|Mux8~1_combout\ & ((\inst1|inst6|120~q\))) ) ) ) # ( !\inst1|inst6|196|41~1_combout\ 
-- & ( \inst1|inst|Mux27~1_combout\ & ( (!\inst1|inst|Mux8~1_combout\ & (\DATA[3]~input_o\)) # (\inst1|inst|Mux8~1_combout\ & ((\inst1|inst6|120~q\))) ) ) ) # ( \inst1|inst6|196|41~1_combout\ & ( !\inst1|inst|Mux27~1_combout\ & ( 
-- (\inst1|inst|Mux8~1_combout\) # (\inst1|inst6|119~q\) ) ) ) # ( !\inst1|inst6|196|41~1_combout\ & ( !\inst1|inst|Mux27~1_combout\ & ( (\inst1|inst6|119~q\ & !\inst1|inst|Mux8~1_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011000000110000001111110011111101010000010111110101000001011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_DATA[3]~input_o\,
	datab => \inst1|inst6|ALT_INV_119~q\,
	datac => \inst1|inst|ALT_INV_Mux8~1_combout\,
	datad => \inst1|inst6|ALT_INV_120~q\,
	datae => \inst1|inst6|196|ALT_INV_41~1_combout\,
	dataf => \inst1|inst|ALT_INV_Mux27~1_combout\,
	combout => \inst1|inst6|139|10~0_combout\);

-- Location: FF_X59_Y10_N59
\inst1|inst6|119\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2~q\,
	asdata => \inst1|inst6|139|10~0_combout\,
	clrn => \nRESET~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|inst6|119~q\);

-- Location: MLABCELL_X59_Y10_N36
\inst1|inst6|140|10~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|inst6|140|10~0_combout\ = ( \inst1|inst|Mux1~1_combout\ & ( \inst1|inst6|196|41~1_combout\ & ( (!\inst1|inst|Mux24~2_combout\) # (\inst1|inst6|119~q\) ) ) ) # ( !\inst1|inst|Mux1~1_combout\ & ( \inst1|inst6|196|41~1_combout\ & ( 
-- (!\inst1|inst|Mux24~2_combout\ & ((\inst1|inst6|120~q\))) # (\inst1|inst|Mux24~2_combout\ & (\DATA[3]~input_o\)) ) ) ) # ( \inst1|inst|Mux1~1_combout\ & ( !\inst1|inst6|196|41~1_combout\ & ( (\inst1|inst|Mux24~2_combout\ & \inst1|inst6|119~q\) ) ) ) # ( 
-- !\inst1|inst|Mux1~1_combout\ & ( !\inst1|inst6|196|41~1_combout\ & ( (!\inst1|inst|Mux24~2_combout\ & ((\inst1|inst6|120~q\))) # (\inst1|inst|Mux24~2_combout\ & (\DATA[3]~input_o\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011010100110101000000000000111100110101001101011111000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_DATA[3]~input_o\,
	datab => \inst1|inst6|ALT_INV_120~q\,
	datac => \inst1|inst|ALT_INV_Mux24~2_combout\,
	datad => \inst1|inst6|ALT_INV_119~q\,
	datae => \inst1|inst|ALT_INV_Mux1~1_combout\,
	dataf => \inst1|inst6|196|ALT_INV_41~1_combout\,
	combout => \inst1|inst6|140|10~0_combout\);

-- Location: FF_X59_Y12_N11
\inst1|inst6|120\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2~q\,
	asdata => \inst1|inst6|140|10~0_combout\,
	clrn => \nRESET~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|inst6|120~q\);

-- Location: MLABCELL_X59_Y12_N51
\inst1|inst6|163|sub|104~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|inst6|163|sub|104~0_combout\ = ( \inst1|inst6|119~q\ & ( \inst1|inst6|162|sub|106~0_combout\ & ( (\inst1|inst6|122~q\) # (\inst1|inst6|121~q\) ) ) ) # ( !\inst1|inst6|119~q\ & ( \inst1|inst6|162|sub|106~0_combout\ & ( (!\inst1|inst6|120~q\ & 
-- (\inst1|inst6|121~q\ & \inst1|inst6|122~q\)) # (\inst1|inst6|120~q\ & ((\inst1|inst6|122~q\) # (\inst1|inst6|121~q\))) ) ) ) # ( \inst1|inst6|119~q\ & ( !\inst1|inst6|162|sub|106~0_combout\ & ( (!\inst1|inst6|120~q\ & (\inst1|inst6|121~q\ & 
-- \inst1|inst6|122~q\)) # (\inst1|inst6|120~q\ & ((\inst1|inst6|122~q\) # (\inst1|inst6|121~q\))) ) ) ) # ( !\inst1|inst6|119~q\ & ( !\inst1|inst6|162|sub|106~0_combout\ & ( (\inst1|inst6|121~q\ & \inst1|inst6|122~q\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000110011111100000011001111110000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \inst1|inst6|ALT_INV_120~q\,
	datac => \inst1|inst6|ALT_INV_121~q\,
	datad => \inst1|inst6|ALT_INV_122~q\,
	datae => \inst1|inst6|ALT_INV_119~q\,
	dataf => \inst1|inst6|162|sub|ALT_INV_106~0_combout\,
	combout => \inst1|inst6|163|sub|104~0_combout\);

-- Location: MLABCELL_X59_Y12_N6
\inst1|inst6|200|41~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|inst6|200|41~3_combout\ = ( \inst1|inst|Mux10~1_combout\ & ( \inst1|inst6|194|41~0_combout\ & ( \inst1|inst6|125~q\ ) ) ) # ( !\inst1|inst|Mux10~1_combout\ & ( \inst1|inst6|194|41~0_combout\ & ( !\inst1|inst6|123~q\ $ (!\inst1|inst6|124~q\ $ 
-- (\inst1|inst6|163|sub|104~0_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000001101001011010010000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|inst6|ALT_INV_123~q\,
	datab => \inst1|inst6|ALT_INV_124~q\,
	datac => \inst1|inst6|163|sub|ALT_INV_104~0_combout\,
	datad => \inst1|inst6|ALT_INV_125~q\,
	datae => \inst1|inst|ALT_INV_Mux10~1_combout\,
	dataf => \inst1|inst6|194|ALT_INV_41~0_combout\,
	combout => \inst1|inst6|200|41~3_combout\);

-- Location: MLABCELL_X59_Y12_N54
\inst1|inst6|200|41~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|inst6|200|41~0_combout\ = ( !\inst1|inst|Mux10~1_combout\ & ( (\inst1|inst6|124~q\ & (\inst1|inst6|123~q\ & \inst1|inst|Mux31~1_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000011000000000000001100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \inst1|inst6|ALT_INV_124~q\,
	datac => \inst1|inst6|ALT_INV_123~q\,
	datad => \inst1|inst|ALT_INV_Mux31~1_combout\,
	dataf => \inst1|inst|ALT_INV_Mux10~1_combout\,
	combout => \inst1|inst6|200|41~0_combout\);

-- Location: LABCELL_X57_Y12_N30
\inst1|inst6|200|41~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|inst6|200|41~1_combout\ = ( \inst1|inst|Mux10~0_combout\ & ( (!\inst1|inst|Mux11~1_combout\ & (((\inst1|inst6|123~q\)))) # (\inst1|inst|Mux11~1_combout\ & ((!\inst1|inst|Mux30~0_combout\ & ((\inst1|inst6|123~q\))) # (\inst1|inst|Mux30~0_combout\ & 
-- (\inst1|inst6|126~q\)))) ) ) # ( !\inst1|inst|Mux10~0_combout\ & ( \inst1|inst6|123~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011001100110011001100110011001101010011001100110101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|inst6|ALT_INV_126~q\,
	datab => \inst1|inst6|ALT_INV_123~q\,
	datac => \inst1|inst|ALT_INV_Mux11~1_combout\,
	datad => \inst1|inst|ALT_INV_Mux30~0_combout\,
	dataf => \inst1|inst|ALT_INV_Mux10~0_combout\,
	combout => \inst1|inst6|200|41~1_combout\);

-- Location: LABCELL_X57_Y12_N54
\inst1|inst6|200|41~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|inst6|200|41~2_combout\ = ( \inst1|inst|Mux31~1_combout\ & ( \inst1|inst|Mux10~1_combout\ & ( (\inst1|inst6|121~q\ & !\inst1|inst|Mux30~1_combout\) ) ) ) # ( !\inst1|inst|Mux31~1_combout\ & ( \inst1|inst|Mux10~1_combout\ & ( 
-- (!\inst1|inst|Mux30~1_combout\ & \inst1|inst6|200|41~1_combout\) ) ) ) # ( \inst1|inst|Mux31~1_combout\ & ( !\inst1|inst|Mux10~1_combout\ & ( (!\inst1|inst|Mux30~1_combout\ & \inst1|inst6|124~q\) ) ) ) # ( !\inst1|inst|Mux31~1_combout\ & ( 
-- !\inst1|inst|Mux10~1_combout\ & ( (!\inst1|inst|Mux30~1_combout\ & \inst1|inst6|200|41~1_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011001100000011000000110000000000110011000100010001000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|inst6|ALT_INV_121~q\,
	datab => \inst1|inst|ALT_INV_Mux30~1_combout\,
	datac => \inst1|inst6|ALT_INV_124~q\,
	datad => \inst1|inst6|200|ALT_INV_41~1_combout\,
	datae => \inst1|inst|ALT_INV_Mux31~1_combout\,
	dataf => \inst1|inst|ALT_INV_Mux10~1_combout\,
	combout => \inst1|inst6|200|41~2_combout\);

-- Location: MLABCELL_X59_Y12_N18
\inst1|inst6|200|8~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|inst6|200|8~0_combout\ = ( \inst1|inst6|122~q\ & ( (!\inst1|inst|Mux30~1_combout\ & ((!\inst1|inst|Mux31~1_combout\ & (!\inst1|inst6|124~q\ & !\inst1|inst6|123~q\)) # (\inst1|inst|Mux31~1_combout\ & ((\inst1|inst6|123~q\))))) # 
-- (\inst1|inst|Mux30~1_combout\ & (!\inst1|inst|Mux31~1_combout\ & (\inst1|inst6|124~q\))) ) ) # ( !\inst1|inst6|122~q\ & ( (!\inst1|inst|Mux30~1_combout\ & ((!\inst1|inst|Mux31~1_combout\ & (!\inst1|inst6|124~q\ & !\inst1|inst6|123~q\)) # 
-- (\inst1|inst|Mux31~1_combout\ & ((\inst1|inst6|123~q\))))) # (\inst1|inst|Mux30~1_combout\ & (((\inst1|inst6|124~q\)) # (\inst1|inst|Mux31~1_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1001010100110111100101010011011110000100001001101000010000100110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|inst|ALT_INV_Mux30~1_combout\,
	datab => \inst1|inst|ALT_INV_Mux31~1_combout\,
	datac => \inst1|inst6|ALT_INV_124~q\,
	datad => \inst1|inst6|ALT_INV_123~q\,
	dataf => \inst1|inst6|ALT_INV_122~q\,
	combout => \inst1|inst6|200|8~0_combout\);

-- Location: LABCELL_X57_Y12_N24
\inst1|inst6|200|41~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|inst6|200|41~4_combout\ = ( \inst1|inst6|200|41~2_combout\ & ( \inst1|inst6|200|8~0_combout\ & ( !\inst1|inst|Mux29~0_combout\ ) ) ) # ( !\inst1|inst6|200|41~2_combout\ & ( \inst1|inst6|200|8~0_combout\ & ( (!\inst1|inst|Mux29~0_combout\ & 
-- ((\inst1|inst6|200|41~0_combout\) # (\inst1|inst6|200|41~3_combout\))) ) ) ) # ( \inst1|inst6|200|41~2_combout\ & ( !\inst1|inst6|200|8~0_combout\ & ( (!\inst1|inst|Mux10~1_combout\) # (!\inst1|inst|Mux29~0_combout\) ) ) ) # ( 
-- !\inst1|inst6|200|41~2_combout\ & ( !\inst1|inst6|200|8~0_combout\ & ( (!\inst1|inst|Mux29~0_combout\ & (((\inst1|inst6|200|41~0_combout\) # (\inst1|inst6|200|41~3_combout\)))) # (\inst1|inst|Mux29~0_combout\ & (!\inst1|inst|Mux10~1_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010111011101110111011101110111000001100110011001100110011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|inst|ALT_INV_Mux10~1_combout\,
	datab => \inst1|inst|ALT_INV_Mux29~0_combout\,
	datac => \inst1|inst6|200|ALT_INV_41~3_combout\,
	datad => \inst1|inst6|200|ALT_INV_41~0_combout\,
	datae => \inst1|inst6|200|ALT_INV_41~2_combout\,
	dataf => \inst1|inst6|200|ALT_INV_8~0_combout\,
	combout => \inst1|inst6|200|41~4_combout\);

-- Location: LABCELL_X57_Y12_N42
\inst1|inst6|141|10~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|inst6|141|10~0_combout\ = ( \inst1|inst|Mux27~1_combout\ & ( \inst1|inst6|200|41~4_combout\ & ( (!\inst1|inst|Mux8~1_combout\ & (\DATA[5]~input_o\)) # (\inst1|inst|Mux8~1_combout\ & ((\inst1|inst6|124~q\))) ) ) ) # ( !\inst1|inst|Mux27~1_combout\ & 
-- ( \inst1|inst6|200|41~4_combout\ & ( (\inst1|inst6|123~q\) # (\inst1|inst|Mux8~1_combout\) ) ) ) # ( \inst1|inst|Mux27~1_combout\ & ( !\inst1|inst6|200|41~4_combout\ & ( (!\inst1|inst|Mux8~1_combout\ & (\DATA[5]~input_o\)) # (\inst1|inst|Mux8~1_combout\ & 
-- ((\inst1|inst6|124~q\))) ) ) ) # ( !\inst1|inst|Mux27~1_combout\ & ( !\inst1|inst6|200|41~4_combout\ & ( (!\inst1|inst|Mux8~1_combout\ & \inst1|inst6|123~q\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011110000010100110101001100001111111111110101001101010011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_DATA[5]~input_o\,
	datab => \inst1|inst6|ALT_INV_124~q\,
	datac => \inst1|inst|ALT_INV_Mux8~1_combout\,
	datad => \inst1|inst6|ALT_INV_123~q\,
	datae => \inst1|inst|ALT_INV_Mux27~1_combout\,
	dataf => \inst1|inst6|200|ALT_INV_41~4_combout\,
	combout => \inst1|inst6|141|10~0_combout\);

-- Location: FF_X57_Y12_N17
\inst1|inst6|123\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2~q\,
	asdata => \inst1|inst6|141|10~0_combout\,
	clrn => \nRESET~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|inst6|123~q\);

-- Location: LABCELL_X57_Y12_N48
\inst1|inst6|142|10~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|inst6|142|10~0_combout\ = ( \inst1|inst6|124~q\ & ( \inst1|inst6|200|41~4_combout\ & ( (!\inst1|inst|Mux24~2_combout\) # ((!\inst1|inst|Mux1~1_combout\ & (\DATA[5]~input_o\)) # (\inst1|inst|Mux1~1_combout\ & ((\inst1|inst6|123~q\)))) ) ) ) # ( 
-- !\inst1|inst6|124~q\ & ( \inst1|inst6|200|41~4_combout\ & ( (!\inst1|inst|Mux1~1_combout\ & (\DATA[5]~input_o\ & ((\inst1|inst|Mux24~2_combout\)))) # (\inst1|inst|Mux1~1_combout\ & (((!\inst1|inst|Mux24~2_combout\) # (\inst1|inst6|123~q\)))) ) ) ) # ( 
-- \inst1|inst6|124~q\ & ( !\inst1|inst6|200|41~4_combout\ & ( (!\inst1|inst|Mux1~1_combout\ & (((!\inst1|inst|Mux24~2_combout\)) # (\DATA[5]~input_o\))) # (\inst1|inst|Mux1~1_combout\ & (((\inst1|inst6|123~q\ & \inst1|inst|Mux24~2_combout\)))) ) ) ) # ( 
-- !\inst1|inst6|124~q\ & ( !\inst1|inst6|200|41~4_combout\ & ( (\inst1|inst|Mux24~2_combout\ & ((!\inst1|inst|Mux1~1_combout\ & (\DATA[5]~input_o\)) # (\inst1|inst|Mux1~1_combout\ & ((\inst1|inst6|123~q\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001010011111100000101001100001111010100111111111101010011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_DATA[5]~input_o\,
	datab => \inst1|inst6|ALT_INV_123~q\,
	datac => \inst1|inst|ALT_INV_Mux1~1_combout\,
	datad => \inst1|inst|ALT_INV_Mux24~2_combout\,
	datae => \inst1|inst6|ALT_INV_124~q\,
	dataf => \inst1|inst6|200|ALT_INV_41~4_combout\,
	combout => \inst1|inst6|142|10~0_combout\);

-- Location: FF_X57_Y12_N47
\inst1|inst6|124\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2~q\,
	asdata => \inst1|inst6|142|10~0_combout\,
	clrn => \nRESET~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|inst6|124~q\);

-- Location: LABCELL_X57_Y12_N12
\inst1|inst6|199|41~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|inst6|199|41~0_combout\ = ( \inst1|inst|Mux10~0_combout\ & ( (!\inst1|inst|Mux11~1_combout\ & (\inst1|inst6|125~q\)) # (\inst1|inst|Mux11~1_combout\ & ((!\inst1|inst|Mux30~0_combout\ & (\inst1|inst6|125~q\)) # (\inst1|inst|Mux30~0_combout\ & 
-- ((\inst1|inst6|124~q\))))) ) ) # ( !\inst1|inst|Mux10~0_combout\ & ( \inst1|inst6|125~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101010101010101010101010101010100110101010101010011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|inst6|ALT_INV_125~q\,
	datab => \inst1|inst6|ALT_INV_124~q\,
	datac => \inst1|inst|ALT_INV_Mux11~1_combout\,
	datad => \inst1|inst|ALT_INV_Mux30~0_combout\,
	dataf => \inst1|inst|ALT_INV_Mux10~0_combout\,
	combout => \inst1|inst6|199|41~0_combout\);

-- Location: MLABCELL_X59_Y12_N15
\inst1|inst6|199|41~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|inst6|199|41~1_combout\ = ( \inst1|inst|Mux30~0_combout\ & ( (!\inst1|inst|Mux11~1_combout\ & (\inst1|inst6|126~q\)) # (\inst1|inst|Mux11~1_combout\ & ((!\inst1|inst|Mux10~0_combout\ & (\inst1|inst6|126~q\)) # (\inst1|inst|Mux10~0_combout\ & 
-- ((\inst1|inst6|128~q\))))) ) ) # ( !\inst1|inst|Mux30~0_combout\ & ( \inst1|inst6|126~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011001100110011001100110010001101110011001000110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|inst|ALT_INV_Mux11~1_combout\,
	datab => \inst1|inst6|ALT_INV_126~q\,
	datac => \inst1|inst|ALT_INV_Mux10~0_combout\,
	datad => \inst1|inst6|ALT_INV_128~q\,
	dataf => \inst1|inst|ALT_INV_Mux30~0_combout\,
	combout => \inst1|inst6|199|41~1_combout\);

-- Location: LABCELL_X57_Y12_N36
\inst1|inst6|199|41~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|inst6|199|41~3_combout\ = ( !\inst1|inst|Mux31~1_combout\ & ( ((!\inst1|inst|Mux30~1_combout\ & (\inst1|inst6|199|41~1_combout\))) ) ) # ( \inst1|inst|Mux31~1_combout\ & ( (!\inst1|inst|Mux30~1_combout\ & (((!\inst1|inst|Mux10~1_combout\ & 
-- (\inst1|inst6|125~q\ & \inst1|inst6|126~q\))) # (\inst1|inst6|199|41~0_combout\))) # (\inst1|inst|Mux30~1_combout\ & (!\inst1|inst|Mux10~1_combout\ & (\inst1|inst6|125~q\ & ((\inst1|inst6|126~q\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0000110000001100000000001100110000001100000011000000101011001110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|inst|ALT_INV_Mux10~1_combout\,
	datab => \inst1|inst|ALT_INV_Mux30~1_combout\,
	datac => \inst1|inst6|ALT_INV_125~q\,
	datad => \inst1|inst6|199|ALT_INV_41~0_combout\,
	datae => \inst1|inst|ALT_INV_Mux31~1_combout\,
	dataf => \inst1|inst6|ALT_INV_126~q\,
	datag => \inst1|inst6|199|ALT_INV_41~1_combout\,
	combout => \inst1|inst6|199|41~3_combout\);

-- Location: LABCELL_X56_Y12_N12
\inst1|inst6|199|41~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|inst6|199|41~7_combout\ = ( !\inst1|inst|Mux10~1_combout\ & ( !\inst1|inst6|125~q\ $ (!\inst1|inst6|126~q\ $ (((!\inst1|inst6|163|sub|104~0_combout\ & (\inst1|inst6|123~q\ & \inst1|inst6|124~q\)) # (\inst1|inst6|163|sub|104~0_combout\ & 
-- ((\inst1|inst6|124~q\) # (\inst1|inst6|123~q\)))))) ) ) # ( \inst1|inst|Mux10~1_combout\ & ( (((\inst1|inst6|127~q\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0101011001101010000011110000111110101001100101010000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|inst6|ALT_INV_125~q\,
	datab => \inst1|inst6|163|sub|ALT_INV_104~0_combout\,
	datac => \inst1|inst6|ALT_INV_127~q\,
	datad => \inst1|inst6|ALT_INV_124~q\,
	datae => \inst1|inst|ALT_INV_Mux10~1_combout\,
	dataf => \inst1|inst6|ALT_INV_126~q\,
	datag => \inst1|inst6|ALT_INV_123~q\,
	combout => \inst1|inst6|199|41~7_combout\);

-- Location: LABCELL_X57_Y12_N33
\inst1|inst6|199|8~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|inst6|199|8~0_combout\ = ( \inst1|inst|Mux31~1_combout\ & ( (!\inst1|inst|Mux30~1_combout\ & (\inst1|inst6|126~q\)) # (\inst1|inst|Mux30~1_combout\ & ((!\inst1|inst6|123~q\))) ) ) # ( !\inst1|inst|Mux31~1_combout\ & ( (!\inst1|inst|Mux30~1_combout\ 
-- & (!\inst1|inst6|126~q\ & !\inst1|inst6|125~q\)) # (\inst1|inst|Mux30~1_combout\ & ((\inst1|inst6|125~q\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010000000001111101000000000111101011100010111000101110001011100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|inst6|ALT_INV_126~q\,
	datab => \inst1|inst6|ALT_INV_123~q\,
	datac => \inst1|inst|ALT_INV_Mux30~1_combout\,
	datad => \inst1|inst6|ALT_INV_125~q\,
	dataf => \inst1|inst|ALT_INV_Mux31~1_combout\,
	combout => \inst1|inst6|199|8~0_combout\);

-- Location: LABCELL_X57_Y12_N18
\inst1|inst6|199|41~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|inst6|199|41~2_combout\ = ( \inst1|inst6|199|41~7_combout\ & ( \inst1|inst6|199|8~0_combout\ & ( (!\inst1|inst|Mux29~0_combout\ & ((\inst1|inst6|199|41~3_combout\) # (\inst1|inst6|194|41~0_combout\))) ) ) ) # ( !\inst1|inst6|199|41~7_combout\ & ( 
-- \inst1|inst6|199|8~0_combout\ & ( (\inst1|inst6|199|41~3_combout\ & !\inst1|inst|Mux29~0_combout\) ) ) ) # ( \inst1|inst6|199|41~7_combout\ & ( !\inst1|inst6|199|8~0_combout\ & ( (!\inst1|inst|Mux29~0_combout\ & (((\inst1|inst6|199|41~3_combout\) # 
-- (\inst1|inst6|194|41~0_combout\)))) # (\inst1|inst|Mux29~0_combout\ & (!\inst1|inst|Mux10~1_combout\)) ) ) ) # ( !\inst1|inst6|199|41~7_combout\ & ( !\inst1|inst6|199|8~0_combout\ & ( (!\inst1|inst|Mux29~0_combout\ & ((\inst1|inst6|199|41~3_combout\))) # 
-- (\inst1|inst|Mux29~0_combout\ & (!\inst1|inst|Mux10~1_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111110101010001111111010101000001111000000000011111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|inst|ALT_INV_Mux10~1_combout\,
	datab => \inst1|inst6|194|ALT_INV_41~0_combout\,
	datac => \inst1|inst6|199|ALT_INV_41~3_combout\,
	datad => \inst1|inst|ALT_INV_Mux29~0_combout\,
	datae => \inst1|inst6|199|ALT_INV_41~7_combout\,
	dataf => \inst1|inst6|199|ALT_INV_8~0_combout\,
	combout => \inst1|inst6|199|41~2_combout\);

-- Location: LABCELL_X57_Y12_N0
\inst1|inst6|143|9~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|inst6|143|9~0_combout\ = ( \inst1|inst|Mux1~1_combout\ & ( \inst1|inst6|199|41~2_combout\ & ( (!\inst1|inst|Mux24~2_combout\) # (\inst1|inst6|126~q\) ) ) ) # ( !\inst1|inst|Mux1~1_combout\ & ( \inst1|inst6|199|41~2_combout\ & ( 
-- (!\inst1|inst|Mux24~2_combout\ & (\inst1|inst6|125~q\)) # (\inst1|inst|Mux24~2_combout\ & ((\DATA[6]~input_o\))) ) ) ) # ( \inst1|inst|Mux1~1_combout\ & ( !\inst1|inst6|199|41~2_combout\ & ( (\inst1|inst6|126~q\ & \inst1|inst|Mux24~2_combout\) ) ) ) # ( 
-- !\inst1|inst|Mux1~1_combout\ & ( !\inst1|inst6|199|41~2_combout\ & ( (!\inst1|inst|Mux24~2_combout\ & (\inst1|inst6|125~q\)) # (\inst1|inst|Mux24~2_combout\ & ((\DATA[6]~input_o\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100001111000000000101010100110011000011111111111101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|inst6|ALT_INV_126~q\,
	datab => \inst1|inst6|ALT_INV_125~q\,
	datac => \ALT_INV_DATA[6]~input_o\,
	datad => \inst1|inst|ALT_INV_Mux24~2_combout\,
	datae => \inst1|inst|ALT_INV_Mux1~1_combout\,
	dataf => \inst1|inst6|199|ALT_INV_41~2_combout\,
	combout => \inst1|inst6|143|9~0_combout\);

-- Location: FF_X57_Y12_N35
\inst1|inst6|125\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2~q\,
	asdata => \inst1|inst6|143|9~0_combout\,
	clrn => \nRESET~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|inst6|125~q\);

-- Location: LABCELL_X57_Y12_N6
\inst1|inst6|144|9~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|inst6|144|9~0_combout\ = ( \DATA[6]~input_o\ & ( \inst1|inst6|199|41~2_combout\ & ( (!\inst1|inst|Mux27~1_combout\ & (((\inst1|inst|Mux8~1_combout\)) # (\inst1|inst6|126~q\))) # (\inst1|inst|Mux27~1_combout\ & (((!\inst1|inst|Mux8~1_combout\) # 
-- (\inst1|inst6|125~q\)))) ) ) ) # ( !\DATA[6]~input_o\ & ( \inst1|inst6|199|41~2_combout\ & ( (!\inst1|inst|Mux27~1_combout\ & (((\inst1|inst|Mux8~1_combout\)) # (\inst1|inst6|126~q\))) # (\inst1|inst|Mux27~1_combout\ & (((\inst1|inst6|125~q\ & 
-- \inst1|inst|Mux8~1_combout\)))) ) ) ) # ( \DATA[6]~input_o\ & ( !\inst1|inst6|199|41~2_combout\ & ( (!\inst1|inst|Mux27~1_combout\ & (\inst1|inst6|126~q\ & ((!\inst1|inst|Mux8~1_combout\)))) # (\inst1|inst|Mux27~1_combout\ & 
-- (((!\inst1|inst|Mux8~1_combout\) # (\inst1|inst6|125~q\)))) ) ) ) # ( !\DATA[6]~input_o\ & ( !\inst1|inst6|199|41~2_combout\ & ( (!\inst1|inst|Mux27~1_combout\ & (\inst1|inst6|126~q\ & ((!\inst1|inst|Mux8~1_combout\)))) # (\inst1|inst|Mux27~1_combout\ & 
-- (((\inst1|inst6|125~q\ & \inst1|inst|Mux8~1_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001000000101011101110000010100100010101011110111011110101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|inst|ALT_INV_Mux27~1_combout\,
	datab => \inst1|inst6|ALT_INV_126~q\,
	datac => \inst1|inst6|ALT_INV_125~q\,
	datad => \inst1|inst|ALT_INV_Mux8~1_combout\,
	datae => \ALT_INV_DATA[6]~input_o\,
	dataf => \inst1|inst6|199|ALT_INV_41~2_combout\,
	combout => \inst1|inst6|144|9~0_combout\);

-- Location: FF_X57_Y12_N29
\inst1|inst6|126\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2~q\,
	asdata => \inst1|inst6|144|9~0_combout\,
	clrn => \nRESET~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|inst6|126~q\);

-- Location: MLABCELL_X59_Y12_N45
\inst1|inst6|161~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|inst6|161~0_combout\ = ( !\inst1|inst6|122~q\ & ( (!\inst1|inst6|119~q\ & (!\inst1|inst6|118~q\ & (!\inst1|inst6|116~q\ & !\inst1|inst6|114~q\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000100000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|inst6|ALT_INV_119~q\,
	datab => \inst1|inst6|ALT_INV_118~q\,
	datac => \inst1|inst6|ALT_INV_116~q\,
	datad => \inst1|inst6|ALT_INV_114~q\,
	dataf => \inst1|inst6|ALT_INV_122~q\,
	combout => \inst1|inst6|161~0_combout\);

-- Location: LABCELL_X61_Y11_N48
\inst1|inst|Mux7~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|inst|Mux7~0_combout\ = ( \inst1|inst6|123~q\ & ( \inst1|inst6|161~0_combout\ & ( (!\inst1|inst7|13~q\ & ((!\inst1|inst6|128~q\) # (!\inst1|inst7|inst~q\))) ) ) ) # ( !\inst1|inst6|123~q\ & ( \inst1|inst6|161~0_combout\ & ( (!\inst1|inst6|128~q\ & 
-- (!\inst1|inst7|13~q\ $ (((!\inst1|inst6|126~q\ & !\inst1|inst7|inst~q\))))) # (\inst1|inst6|128~q\ & (((!\inst1|inst7|13~q\ & !\inst1|inst7|inst~q\)))) ) ) ) # ( \inst1|inst6|123~q\ & ( !\inst1|inst6|161~0_combout\ & ( (!\inst1|inst7|13~q\ & 
-- ((!\inst1|inst6|128~q\) # (!\inst1|inst7|inst~q\))) ) ) ) # ( !\inst1|inst6|123~q\ & ( !\inst1|inst6|161~0_combout\ & ( (!\inst1|inst7|13~q\ & ((!\inst1|inst6|128~q\) # (!\inst1|inst7|inst~q\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000011000000111100001100000001111000110000001111000011000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|inst6|ALT_INV_126~q\,
	datab => \inst1|inst6|ALT_INV_128~q\,
	datac => \inst1|inst7|ALT_INV_13~q\,
	datad => \inst1|inst7|ALT_INV_inst~q\,
	datae => \inst1|inst6|ALT_INV_123~q\,
	dataf => \inst1|inst6|ALT_INV_161~0_combout\,
	combout => \inst1|inst|Mux7~0_combout\);

-- Location: LABCELL_X61_Y11_N6
\inst1|inst|Mux22~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|inst|Mux22~1_combout\ = ( \inst1|inst|Mux7~0_combout\ & ( (\inst1|inst|Mux22~0_combout\ & (((!\inst1|inst7|inst2~q\ & \inst1|inst7|inst3~q\)) # (\inst1|inst|Mux7~1_combout\))) ) ) # ( !\inst1|inst|Mux7~0_combout\ & ( (\inst1|inst|Mux7~1_combout\ & 
-- \inst1|inst|Mux22~0_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000111100000000001011110000000000101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|inst7|ALT_INV_inst2~q\,
	datab => \inst1|inst7|ALT_INV_inst3~q\,
	datac => \inst1|inst|ALT_INV_Mux7~1_combout\,
	datad => \inst1|inst|ALT_INV_Mux22~0_combout\,
	dataf => \inst1|inst|ALT_INV_Mux7~0_combout\,
	combout => \inst1|inst|Mux22~1_combout\);

-- Location: LABCELL_X60_Y11_N48
\inst1|inst|Mux22~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|inst|Mux22~2_combout\ = ( !\inst1|inst|state\(0) & ( (!\inst1|inst|state[4]~DUPLICATE_q\ & ((!\inst1|inst|state\(3) & (((!\inst1|inst|state\(1))) # (\inst1|inst|state\(5)))) # (\inst1|inst|state\(3) & ((!\inst1|inst|state[2]~DUPLICATE_q\) # 
-- ((!\inst1|inst|state\(5) & \inst1|inst|state\(1))))))) # (\inst1|inst|state[4]~DUPLICATE_q\ & (!\inst1|inst|state\(5))) ) ) # ( \inst1|inst|state\(0) & ( (!\inst1|inst|state[4]~DUPLICATE_q\ & ((((\inst1|inst|Mux22~1_combout\))))) # 
-- (\inst1|inst|state[4]~DUPLICATE_q\ & (\inst1|inst|state\(5) & (((\inst1|inst|state\(3))) # (\inst1|inst|state[2]~DUPLICATE_q\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "1111010110101010000011110001000111001110101010100000111101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|inst|ALT_INV_state\(5),
	datab => \inst1|inst|ALT_INV_state[2]~DUPLICATE_q\,
	datac => \inst1|inst|ALT_INV_Mux22~1_combout\,
	datad => \inst1|inst|ALT_INV_state[4]~DUPLICATE_q\,
	datae => \inst1|inst|ALT_INV_state\(0),
	dataf => \inst1|inst|ALT_INV_state\(3),
	datag => \inst1|inst|ALT_INV_state\(1),
	combout => \inst1|inst|Mux22~2_combout\);

-- Location: FF_X60_Y11_N50
\inst1|inst|state[0]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2~q\,
	d => \inst1|inst|Mux22~2_combout\,
	clrn => \nRESET~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|inst|state[0]~DUPLICATE_q\);

-- Location: LABCELL_X57_Y11_N57
\inst1|inst|Mux19~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|inst|Mux19~0_combout\ = ( \inst1|inst|state[2]~DUPLICATE_q\ & ( \inst1|inst|state[5]~DUPLICATE_q\ & ( (\inst1|inst|state[3]~DUPLICATE_q\ & \inst1|inst|state[4]~DUPLICATE_q\) ) ) ) # ( !\inst1|inst|state[2]~DUPLICATE_q\ & ( 
-- \inst1|inst|state[5]~DUPLICATE_q\ & ( (\inst1|inst|state[3]~DUPLICATE_q\ & ((!\inst1|inst|state[0]~DUPLICATE_q\) # (\inst1|inst|state[4]~DUPLICATE_q\))) ) ) ) # ( \inst1|inst|state[2]~DUPLICATE_q\ & ( !\inst1|inst|state[5]~DUPLICATE_q\ & ( 
-- (!\inst1|inst|state[3]~DUPLICATE_q\ & (\inst1|inst|state\(1) & (\inst1|inst|state[0]~DUPLICATE_q\ & !\inst1|inst|state[4]~DUPLICATE_q\))) # (\inst1|inst|state[3]~DUPLICATE_q\ & (!\inst1|inst|state[0]~DUPLICATE_q\ $ (((!\inst1|inst|state\(1) & 
-- !\inst1|inst|state[4]~DUPLICATE_q\))))) ) ) ) # ( !\inst1|inst|state[2]~DUPLICATE_q\ & ( !\inst1|inst|state[5]~DUPLICATE_q\ & ( (\inst1|inst|state[3]~DUPLICATE_q\ & ((!\inst1|inst|state[0]~DUPLICATE_q\) # (!\inst1|inst|state\(1) $ 
-- (!\inst1|inst|state[4]~DUPLICATE_q\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011000100110010000101100011000000110000001100110000000000110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|inst|ALT_INV_state\(1),
	datab => \inst1|inst|ALT_INV_state[3]~DUPLICATE_q\,
	datac => \inst1|inst|ALT_INV_state[0]~DUPLICATE_q\,
	datad => \inst1|inst|ALT_INV_state[4]~DUPLICATE_q\,
	datae => \inst1|inst|ALT_INV_state[2]~DUPLICATE_q\,
	dataf => \inst1|inst|ALT_INV_state[5]~DUPLICATE_q\,
	combout => \inst1|inst|Mux19~0_combout\);

-- Location: LABCELL_X64_Y11_N36
\inst1|inst|Mux19~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|inst|Mux19~2_combout\ = ( !\inst1|inst7|inst3~q\ & ( \inst1|inst7|inst~q\ & ( (!\inst1|inst7|inst6~q\ & (!\inst1|inst7|inst2~q\ $ (((!\inst1|inst7|inst4~q\))))) # (\inst1|inst7|inst6~q\ & (!\inst1|inst7|inst2~q\ & (\inst1|inst7|13~q\ & 
-- !\inst1|inst7|inst4~q\))) ) ) ) # ( \inst1|inst7|inst3~q\ & ( !\inst1|inst7|inst~q\ & ( (!\inst1|inst7|inst2~q\ & (!\inst1|inst7|inst4~q\ & !\inst1|inst7|inst6~q\)) ) ) ) # ( !\inst1|inst7|inst3~q\ & ( !\inst1|inst7|inst~q\ & ( (\inst1|inst7|inst2~q\ & 
-- (!\inst1|inst7|inst4~q\ & \inst1|inst7|inst6~q\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001010000101000000000000001011010001000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|inst7|ALT_INV_inst2~q\,
	datab => \inst1|inst7|ALT_INV_13~q\,
	datac => \inst1|inst7|ALT_INV_inst4~q\,
	datad => \inst1|inst7|ALT_INV_inst6~q\,
	datae => \inst1|inst7|ALT_INV_inst3~q\,
	dataf => \inst1|inst7|ALT_INV_inst~q\,
	combout => \inst1|inst|Mux19~2_combout\);

-- Location: LABCELL_X60_Y11_N6
\inst1|inst|Mux19~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|inst|Mux19~1_combout\ = ( \inst1|inst|Mux30~0_combout\ & ( (\inst1|inst|Mux19~2_combout\) # (\inst1|inst|Mux19~0_combout\) ) ) # ( !\inst1|inst|Mux30~0_combout\ & ( \inst1|inst|Mux19~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100001111111111110000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \inst1|inst|ALT_INV_Mux19~0_combout\,
	datad => \inst1|inst|ALT_INV_Mux19~2_combout\,
	dataf => \inst1|inst|ALT_INV_Mux30~0_combout\,
	combout => \inst1|inst|Mux19~1_combout\);

-- Location: FF_X60_Y11_N7
\inst1|inst|state[3]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2~q\,
	d => \inst1|inst|Mux19~1_combout\,
	clrn => \nRESET~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|inst|state[3]~DUPLICATE_q\);

-- Location: LABCELL_X57_Y11_N27
\inst1|inst|Mux21~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|inst|Mux21~0_combout\ = ( \inst1|inst|state[2]~DUPLICATE_q\ & ( \inst1|inst|state[5]~DUPLICATE_q\ & ( (\inst1|inst|state\(1) & (((!\inst1|inst|state[3]~DUPLICATE_q\ & !\inst1|inst|state[0]~DUPLICATE_q\)) # (\inst1|inst|state[4]~DUPLICATE_q\))) ) ) 
-- ) # ( !\inst1|inst|state[2]~DUPLICATE_q\ & ( \inst1|inst|state[5]~DUPLICATE_q\ & ( (\inst1|inst|state\(1) & ((!\inst1|inst|state[4]~DUPLICATE_q\ & ((!\inst1|inst|state[0]~DUPLICATE_q\))) # (\inst1|inst|state[4]~DUPLICATE_q\ & 
-- (\inst1|inst|state[3]~DUPLICATE_q\)))) ) ) ) # ( \inst1|inst|state[2]~DUPLICATE_q\ & ( !\inst1|inst|state[5]~DUPLICATE_q\ & ( (!\inst1|inst|state\(1) & (\inst1|inst|state[0]~DUPLICATE_q\ & ((!\inst1|inst|state[3]~DUPLICATE_q\) # 
-- (!\inst1|inst|state[4]~DUPLICATE_q\)))) # (\inst1|inst|state\(1) & (!\inst1|inst|state[0]~DUPLICATE_q\ & ((\inst1|inst|state[4]~DUPLICATE_q\) # (\inst1|inst|state[3]~DUPLICATE_q\)))) ) ) ) # ( !\inst1|inst|state[2]~DUPLICATE_q\ & ( 
-- !\inst1|inst|state[5]~DUPLICATE_q\ & ( (!\inst1|inst|state\(1) & (\inst1|inst|state[3]~DUPLICATE_q\ & (\inst1|inst|state[0]~DUPLICATE_q\ & \inst1|inst|state[4]~DUPLICATE_q\))) # (\inst1|inst|state\(1) & (!\inst1|inst|state[0]~DUPLICATE_q\ & 
-- ((\inst1|inst|state[4]~DUPLICATE_q\) # (\inst1|inst|state[3]~DUPLICATE_q\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000001010010000110100101100001010000000100010100000001010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|inst|ALT_INV_state\(1),
	datab => \inst1|inst|ALT_INV_state[3]~DUPLICATE_q\,
	datac => \inst1|inst|ALT_INV_state[0]~DUPLICATE_q\,
	datad => \inst1|inst|ALT_INV_state[4]~DUPLICATE_q\,
	datae => \inst1|inst|ALT_INV_state[2]~DUPLICATE_q\,
	dataf => \inst1|inst|ALT_INV_state[5]~DUPLICATE_q\,
	combout => \inst1|inst|Mux21~0_combout\);

-- Location: LABCELL_X64_Y11_N9
\inst1|inst|Mux21~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|inst|Mux21~2_combout\ = ( !\inst1|inst7|inst4~q\ & ( \inst1|inst7|inst2~q\ & ( (!\inst1|inst7|inst3~q\ & (!\inst1|inst7|13~q\ $ (((!\inst1|inst7|inst~q\) # (\inst1|inst7|inst6~q\))))) ) ) ) # ( \inst1|inst7|inst4~q\ & ( !\inst1|inst7|inst2~q\ & ( 
-- (\inst1|inst7|13~q\ & (!\inst1|inst7|inst6~q\ & !\inst1|inst7|inst3~q\)) ) ) ) # ( !\inst1|inst7|inst4~q\ & ( !\inst1|inst7|inst2~q\ & ( (!\inst1|inst7|inst~q\ & (\inst1|inst7|13~q\ & (!\inst1|inst7|inst6~q\ $ (!\inst1|inst7|inst3~q\)))) # 
-- (\inst1|inst7|inst~q\ & (!\inst1|inst7|inst6~q\ & ((!\inst1|inst7|inst3~q\) # (\inst1|inst7|13~q\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101001000110000001100000000000001100011000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|inst7|ALT_INV_inst~q\,
	datab => \inst1|inst7|ALT_INV_13~q\,
	datac => \inst1|inst7|ALT_INV_inst6~q\,
	datad => \inst1|inst7|ALT_INV_inst3~q\,
	datae => \inst1|inst7|ALT_INV_inst4~q\,
	dataf => \inst1|inst7|ALT_INV_inst2~q\,
	combout => \inst1|inst|Mux21~2_combout\);

-- Location: LABCELL_X60_Y11_N27
\inst1|inst|Mux21~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|inst|Mux21~1_combout\ = ( \inst1|inst|Mux30~0_combout\ & ( (\inst1|inst|Mux21~2_combout\) # (\inst1|inst|Mux21~0_combout\) ) ) # ( !\inst1|inst|Mux30~0_combout\ & ( \inst1|inst|Mux21~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101010101010101010101011111010111110101111101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|inst|ALT_INV_Mux21~0_combout\,
	datac => \inst1|inst|ALT_INV_Mux21~2_combout\,
	dataf => \inst1|inst|ALT_INV_Mux30~0_combout\,
	combout => \inst1|inst|Mux21~1_combout\);

-- Location: FF_X60_Y11_N28
\inst1|inst|state[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2~q\,
	d => \inst1|inst|Mux21~1_combout\,
	clrn => \nRESET~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|inst|state\(1));

-- Location: LABCELL_X57_Y11_N9
\inst1|inst|Mux16~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|inst|Mux16~0_combout\ = ( !\inst1|inst|state[2]~DUPLICATE_q\ & ( !\inst1|inst|state[4]~DUPLICATE_q\ & ( (!\inst1|inst|state\(1) & (!\inst1|inst|state[3]~DUPLICATE_q\ & (!\inst1|inst|state[0]~DUPLICATE_q\ & !\inst1|inst|state[5]~DUPLICATE_q\))) ) ) 
-- )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|inst|ALT_INV_state\(1),
	datab => \inst1|inst|ALT_INV_state[3]~DUPLICATE_q\,
	datac => \inst1|inst|ALT_INV_state[0]~DUPLICATE_q\,
	datad => \inst1|inst|ALT_INV_state[5]~DUPLICATE_q\,
	datae => \inst1|inst|ALT_INV_state[2]~DUPLICATE_q\,
	dataf => \inst1|inst|ALT_INV_state[4]~DUPLICATE_q\,
	combout => \inst1|inst|Mux16~0_combout\);

-- Location: FF_X60_Y12_N5
\inst1|inst7|inst4\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2~q\,
	asdata => \DATA[4]~input_o\,
	clrn => \nRESET~input_o\,
	sload => VCC,
	ena => \inst1|inst|Mux16~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|inst7|inst4~q\);

-- Location: LABCELL_X60_Y12_N45
\inst1|inst|Mux11~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|inst|Mux11~1_combout\ = ( !\inst1|inst7|inst3~q\ & ( \inst1|inst7|inst4~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \inst1|inst7|ALT_INV_inst4~q\,
	dataf => \inst1|inst7|ALT_INV_inst3~q\,
	combout => \inst1|inst|Mux11~1_combout\);

-- Location: LABCELL_X60_Y12_N30
\inst1|inst|Mux29~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|inst|Mux29~0_combout\ = ( \inst1|inst|Mux11~0_combout\ & ( (\inst1|inst|Mux11~1_combout\ & \inst1|inst|Mux30~0_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000011000000110000001100000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \inst1|inst|ALT_INV_Mux11~1_combout\,
	datac => \inst1|inst|ALT_INV_Mux30~0_combout\,
	dataf => \inst1|inst|ALT_INV_Mux11~0_combout\,
	combout => \inst1|inst|Mux29~0_combout\);

-- Location: MLABCELL_X59_Y12_N30
\inst1|inst6|198|8~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|inst6|198|8~0_combout\ = ( \inst1|inst6|127~q\ & ( (!\inst1|inst|Mux31~1_combout\ & (((\inst1|inst|Mux30~1_combout\)))) # (\inst1|inst|Mux31~1_combout\ & ((!\inst1|inst|Mux30~1_combout\ & (\inst1|inst6|128~q\)) # (\inst1|inst|Mux30~1_combout\ & 
-- ((!\inst1|inst6|126~q\))))) ) ) # ( !\inst1|inst6|127~q\ & ( (!\inst1|inst|Mux30~1_combout\ & (!\inst1|inst6|128~q\ $ ((\inst1|inst|Mux31~1_combout\)))) # (\inst1|inst|Mux30~1_combout\ & (((\inst1|inst|Mux31~1_combout\ & !\inst1|inst6|126~q\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1001100100110000100110010011000000010001111111000001000111111100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|inst6|ALT_INV_128~q\,
	datab => \inst1|inst|ALT_INV_Mux31~1_combout\,
	datac => \inst1|inst6|ALT_INV_126~q\,
	datad => \inst1|inst|ALT_INV_Mux30~1_combout\,
	dataf => \inst1|inst6|ALT_INV_127~q\,
	combout => \inst1|inst6|198|8~0_combout\);

-- Location: MLABCELL_X59_Y12_N27
\inst1|inst6|198|47\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|inst6|198|47~combout\ = ( \inst1|inst|Mux31~1_combout\ & ( (!\inst1|inst|Mux29~0_combout\ & (\inst1|inst|Mux10~1_combout\ & (!\inst1|inst|Mux30~1_combout\ & \inst1|inst6|125~q\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000001000000000000000100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|inst|ALT_INV_Mux29~0_combout\,
	datab => \inst1|inst|ALT_INV_Mux10~1_combout\,
	datac => \inst1|inst|ALT_INV_Mux30~1_combout\,
	datad => \inst1|inst6|ALT_INV_125~q\,
	dataf => \inst1|inst|ALT_INV_Mux31~1_combout\,
	combout => \inst1|inst6|198|47~combout\);

-- Location: LABCELL_X57_Y12_N15
\inst1|inst6|163|sub|106~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|inst6|163|sub|106~0_combout\ = ( \inst1|inst6|163|sub|104~0_combout\ & ( (!\inst1|inst6|125~q\ & (\inst1|inst6|126~q\ & ((\inst1|inst6|123~q\) # (\inst1|inst6|124~q\)))) # (\inst1|inst6|125~q\ & (((\inst1|inst6|123~q\) # (\inst1|inst6|126~q\)) # 
-- (\inst1|inst6|124~q\))) ) ) # ( !\inst1|inst6|163|sub|104~0_combout\ & ( (!\inst1|inst6|125~q\ & (\inst1|inst6|124~q\ & (\inst1|inst6|126~q\ & \inst1|inst6|123~q\))) # (\inst1|inst6|125~q\ & (((\inst1|inst6|124~q\ & \inst1|inst6|123~q\)) # 
-- (\inst1|inst6|126~q\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100010111000001010001011100010111010111110001011101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|inst6|ALT_INV_125~q\,
	datab => \inst1|inst6|ALT_INV_124~q\,
	datac => \inst1|inst6|ALT_INV_126~q\,
	datad => \inst1|inst6|ALT_INV_123~q\,
	dataf => \inst1|inst6|163|sub|ALT_INV_104~0_combout\,
	combout => \inst1|inst6|163|sub|106~0_combout\);

-- Location: MLABCELL_X59_Y12_N33
\inst1|inst6|198|41~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|inst6|198|41~0_combout\ = ( \inst1|inst6|163|sub|106~0_combout\ & ( (!\inst1|inst|Mux31~1_combout\ & (!\inst1|inst6|128~q\ $ (((!\inst1|inst|Mux30~1_combout\) # (\inst1|inst6|127~q\))))) # (\inst1|inst|Mux31~1_combout\ & (\inst1|inst6|127~q\ & 
-- ((!\inst1|inst|Mux30~1_combout\) # (\inst1|inst6|128~q\)))) ) ) # ( !\inst1|inst6|163|sub|106~0_combout\ & ( (!\inst1|inst|Mux31~1_combout\ & (!\inst1|inst6|128~q\ $ (((!\inst1|inst|Mux30~1_combout\) # (!\inst1|inst6|127~q\))))) # 
-- (\inst1|inst|Mux31~1_combout\ & (\inst1|inst6|127~q\ & ((!\inst1|inst|Mux30~1_combout\) # (\inst1|inst6|128~q\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100010001111001010001000111100101001000011101010100100001110101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|inst6|ALT_INV_128~q\,
	datab => \inst1|inst|ALT_INV_Mux31~1_combout\,
	datac => \inst1|inst|ALT_INV_Mux30~1_combout\,
	datad => \inst1|inst6|ALT_INV_127~q\,
	dataf => \inst1|inst6|163|sub|ALT_INV_106~0_combout\,
	combout => \inst1|inst6|198|41~0_combout\);

-- Location: MLABCELL_X59_Y12_N24
\inst1|inst6|198|41~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|inst6|198|41~1_combout\ = ( \inst1|inst6|198|41~0_combout\ & ( ((!\inst1|inst|Mux10~1_combout\ & ((!\inst1|inst|Mux29~0_combout\) # (!\inst1|inst6|198|8~0_combout\)))) # (\inst1|inst6|198|47~combout\) ) ) # ( !\inst1|inst6|198|41~0_combout\ & ( 
-- ((\inst1|inst|Mux29~0_combout\ & (!\inst1|inst|Mux10~1_combout\ & !\inst1|inst6|198|8~0_combout\))) # (\inst1|inst6|198|47~combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100000011111111010000001111111111001000111111111100100011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|inst|ALT_INV_Mux29~0_combout\,
	datab => \inst1|inst|ALT_INV_Mux10~1_combout\,
	datac => \inst1|inst6|198|ALT_INV_8~0_combout\,
	datad => \inst1|inst6|198|ALT_INV_47~combout\,
	dataf => \inst1|inst6|198|ALT_INV_41~0_combout\,
	combout => \inst1|inst6|198|41~1_combout\);

-- Location: LABCELL_X60_Y12_N3
\inst1|inst|Mux33~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|inst|Mux33~1_combout\ = ( !\inst1|inst7|inst2~q\ & ( (!\inst1|inst7|inst6~q\ & (\inst1|inst7|inst3~q\ & (!\inst1|inst7|inst~q\ & \inst1|inst7|inst4~q\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000100000000000000010000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|inst7|ALT_INV_inst6~q\,
	datab => \inst1|inst7|ALT_INV_inst3~q\,
	datac => \inst1|inst7|ALT_INV_inst~q\,
	datad => \inst1|inst7|ALT_INV_inst4~q\,
	dataf => \inst1|inst7|ALT_INV_inst2~q\,
	combout => \inst1|inst|Mux33~1_combout\);

-- Location: LABCELL_X60_Y11_N15
\inst1|inst|Mux33~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|inst|Mux33~2_combout\ = ( \inst1|inst7|13~q\ & ( (\inst1|inst|Mux33~1_combout\ & \inst1|inst|Mux30~0_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000011110000000000001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \inst1|inst|ALT_INV_Mux33~1_combout\,
	datad => \inst1|inst|ALT_INV_Mux30~0_combout\,
	dataf => \inst1|inst7|ALT_INV_13~q\,
	combout => \inst1|inst|Mux33~2_combout\);

-- Location: LABCELL_X62_Y12_N0
\inst1|inst5|127|sub|78\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|inst5|127|sub|78~combout\ = ( \inst1|inst5|127|sub|9~q\ & ( !\inst1|inst|Mux33~2_combout\ ) ) # ( !\inst1|inst5|127|sub|9~q\ & ( \inst1|inst|Mux33~2_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111111110000111100001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \inst1|inst|ALT_INV_Mux33~2_combout\,
	dataf => \inst1|inst5|127|sub|ALT_INV_9~q\,
	combout => \inst1|inst5|127|sub|78~combout\);

-- Location: LABCELL_X62_Y12_N9
\inst1|inst5|127|sub|9~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|inst5|127|sub|9~feeder_combout\ = \inst1|inst5|127|sub|78~combout\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101010101010101010101010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|inst5|127|sub|ALT_INV_78~combout\,
	combout => \inst1|inst5|127|sub|9~feeder_combout\);

-- Location: MLABCELL_X59_Y11_N33
\inst1|inst|Mux41~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|inst|Mux41~0_combout\ = ( !\inst1|inst|state[5]~DUPLICATE_q\ & ( \inst1|inst|state[4]~DUPLICATE_q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \inst1|inst|ALT_INV_state[4]~DUPLICATE_q\,
	dataf => \inst1|inst|ALT_INV_state[5]~DUPLICATE_q\,
	combout => \inst1|inst|Mux41~0_combout\);

-- Location: LABCELL_X63_Y12_N6
\inst1|inst|Mux41~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|inst|Mux41~1_combout\ = ( \inst1|inst|Mux41~0_combout\ & ( (!\inst1|inst|state[2]~DUPLICATE_q\ & (\inst1|inst|state\(1) & !\inst1|inst|state\(0))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001100000000000000110000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \inst1|inst|ALT_INV_state[2]~DUPLICATE_q\,
	datac => \inst1|inst|ALT_INV_state\(1),
	datad => \inst1|inst|ALT_INV_state\(0),
	dataf => \inst1|inst|ALT_INV_Mux41~0_combout\,
	combout => \inst1|inst|Mux41~1_combout\);

-- Location: FF_X62_Y12_N11
\inst1|inst5|127|sub|9\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2~q\,
	d => \inst1|inst5|127|sub|9~feeder_combout\,
	asdata => \DATA[0]~input_o\,
	clrn => \nRESET~input_o\,
	sload => \inst1|inst|Mux41~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|inst5|127|sub|9~q\);

-- Location: LABCELL_X57_Y11_N30
\inst1|inst|Mux44~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|inst|Mux44~0_combout\ = ( \inst1|inst|state[2]~DUPLICATE_q\ & ( \inst1|inst|state[3]~DUPLICATE_q\ & ( (!\inst1|inst|state[5]~DUPLICATE_q\ & \inst1|inst|state[4]~DUPLICATE_q\) ) ) ) # ( !\inst1|inst|state[2]~DUPLICATE_q\ & ( 
-- \inst1|inst|state[3]~DUPLICATE_q\ & ( (\inst1|inst|state[5]~DUPLICATE_q\ & !\inst1|inst|state[4]~DUPLICATE_q\) ) ) ) # ( \inst1|inst|state[2]~DUPLICATE_q\ & ( !\inst1|inst|state[3]~DUPLICATE_q\ & ( (\inst1|inst|state[5]~DUPLICATE_q\ & 
-- !\inst1|inst|state[4]~DUPLICATE_q\) ) ) ) # ( !\inst1|inst|state[2]~DUPLICATE_q\ & ( !\inst1|inst|state[3]~DUPLICATE_q\ & ( (\inst1|inst|state[5]~DUPLICATE_q\ & !\inst1|inst|state[4]~DUPLICATE_q\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101000001010000010100000101000001010000010100000000101000001010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|inst|ALT_INV_state[5]~DUPLICATE_q\,
	datac => \inst1|inst|ALT_INV_state[4]~DUPLICATE_q\,
	datae => \inst1|inst|ALT_INV_state[2]~DUPLICATE_q\,
	dataf => \inst1|inst|ALT_INV_state[3]~DUPLICATE_q\,
	combout => \inst1|inst|Mux44~0_combout\);

-- Location: LABCELL_X57_Y11_N39
\inst1|inst|Mux45~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|inst|Mux45~0_combout\ = ( \inst1|inst|Mux44~0_combout\ & ( (\inst1|inst|state\(1) & !\inst1|inst|state[0]~DUPLICATE_q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000001010000010100000101000001010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|inst|ALT_INV_state\(1),
	datac => \inst1|inst|ALT_INV_state[0]~DUPLICATE_q\,
	dataf => \inst1|inst|ALT_INV_Mux44~0_combout\,
	combout => \inst1|inst|Mux45~0_combout\);

-- Location: FF_X61_Y12_N2
\inst1|inst5|inst1|54\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2~q\,
	asdata => \DATA[0]~input_o\,
	clrn => \nRESET~input_o\,
	sload => VCC,
	ena => \inst1|inst|Mux45~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|inst5|inst1|54~q\);

-- Location: LABCELL_X56_Y11_N39
\inst1|inst5|140|sub|76\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|inst5|140|sub|76~combout\ = ( \inst1|inst5|inst1|54~q\ & ( !\inst1|inst5|127|sub|9~q\ ) ) # ( !\inst1|inst5|inst1|54~q\ & ( \inst1|inst5|127|sub|9~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101010101010101010110101010101010101010101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|inst5|127|sub|ALT_INV_9~q\,
	dataf => \inst1|inst5|inst1|ALT_INV_54~q\,
	combout => \inst1|inst5|140|sub|76~combout\);

-- Location: MLABCELL_X59_Y11_N36
\inst1|inst|Mux32~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|inst|Mux32~0_combout\ = ( \inst1|inst|Mux33~1_combout\ & ( \inst1|inst|Mux30~0_combout\ & ( !\inst1|inst7|13~q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \inst1|inst7|ALT_INV_13~q\,
	datae => \inst1|inst|ALT_INV_Mux33~1_combout\,
	dataf => \inst1|inst|ALT_INV_Mux30~0_combout\,
	combout => \inst1|inst|Mux32~0_combout\);

-- Location: MLABCELL_X59_Y13_N30
\inst1|inst5|123|sub|78\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|inst5|123|sub|78~combout\ = ( \inst1|inst|Mux32~0_combout\ & ( !\inst1|inst5|123|sub|9~q\ ) ) # ( !\inst1|inst|Mux32~0_combout\ & ( \inst1|inst5|123|sub|9~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111111110000111100001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \inst1|inst5|123|sub|ALT_INV_9~q\,
	dataf => \inst1|inst|ALT_INV_Mux32~0_combout\,
	combout => \inst1|inst5|123|sub|78~combout\);

-- Location: LABCELL_X62_Y13_N21
\inst1|inst5|123|sub|9~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|inst5|123|sub|9~feeder_combout\ = ( \inst1|inst5|123|sub|78~combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \inst1|inst5|123|sub|ALT_INV_78~combout\,
	combout => \inst1|inst5|123|sub|9~feeder_combout\);

-- Location: MLABCELL_X59_Y11_N30
\inst1|inst|Mux39~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|inst|Mux39~0_combout\ = ( \inst1|inst|state[1]~DUPLICATE_q\ & ( (\inst1|inst|Mux41~0_combout\ & (!\inst1|inst|state[0]~DUPLICATE_q\ & (\inst1|inst|state[2]~DUPLICATE_q\ & !\inst1|inst|state\(3)))) ) ) # ( !\inst1|inst|state[1]~DUPLICATE_q\ & ( 
-- (\inst1|inst|Mux41~0_combout\ & (!\inst1|inst|state[0]~DUPLICATE_q\ & (!\inst1|inst|state[2]~DUPLICATE_q\ & !\inst1|inst|state\(3)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100000000000000010000000000000000000100000000000000010000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|inst|ALT_INV_Mux41~0_combout\,
	datab => \inst1|inst|ALT_INV_state[0]~DUPLICATE_q\,
	datac => \inst1|inst|ALT_INV_state[2]~DUPLICATE_q\,
	datad => \inst1|inst|ALT_INV_state\(3),
	dataf => \inst1|inst|ALT_INV_state[1]~DUPLICATE_q\,
	combout => \inst1|inst|Mux39~0_combout\);

-- Location: FF_X62_Y13_N23
\inst1|inst5|123|sub|9\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2~q\,
	d => \inst1|inst5|123|sub|9~feeder_combout\,
	asdata => \DATA[0]~input_o\,
	clrn => \nRESET~input_o\,
	sload => \inst1|inst|Mux39~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|inst5|123|sub|9~q\);

-- Location: LABCELL_X57_Y11_N51
\inst1|inst|Mux44~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|inst|Mux44~1_combout\ = ( \inst1|inst|Mux44~0_combout\ & ( (!\inst1|inst|state[0]~DUPLICATE_q\ & !\inst1|inst|state\(1)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011110000000000001111000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \inst1|inst|ALT_INV_state[0]~DUPLICATE_q\,
	datad => \inst1|inst|ALT_INV_state\(1),
	dataf => \inst1|inst|ALT_INV_Mux44~0_combout\,
	combout => \inst1|inst|Mux44~1_combout\);

-- Location: FF_X62_Y13_N29
\inst1|inst5|inst1|19\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2~q\,
	asdata => \DATA[0]~input_o\,
	clrn => \nRESET~input_o\,
	sload => VCC,
	ena => \inst1|inst|Mux44~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|inst5|inst1|19~q\);

-- Location: MLABCELL_X59_Y11_N42
\inst1|inst|Mux43~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|inst|Mux43~0_combout\ = ( !\inst1|inst|state[0]~DUPLICATE_q\ & ( (\inst1|inst|state[1]~DUPLICATE_q\ & (!\inst1|inst|state\(3) $ (!\inst1|inst|state[2]~DUPLICATE_q\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001011010000000000101101000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|inst|ALT_INV_state\(3),
	datac => \inst1|inst|ALT_INV_state[2]~DUPLICATE_q\,
	datad => \inst1|inst|ALT_INV_state[1]~DUPLICATE_q\,
	dataf => \inst1|inst|ALT_INV_state[0]~DUPLICATE_q\,
	combout => \inst1|inst|Mux43~0_combout\);

-- Location: MLABCELL_X59_Y11_N15
\inst1|inst|Mux43~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|inst|Mux43~1_combout\ = ( \inst1|inst|Mux41~0_combout\ & ( \inst1|inst|Mux43~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \inst1|inst|ALT_INV_Mux43~0_combout\,
	dataf => \inst1|inst|ALT_INV_Mux41~0_combout\,
	combout => \inst1|inst|Mux43~1_combout\);

-- Location: LABCELL_X60_Y10_N48
\inst1|inst5|171|sub|78\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|inst5|171|sub|78~combout\ = ( \inst1|inst|Mux43~1_combout\ & ( !\inst1|inst5|171|sub|9~q\ ) ) # ( !\inst1|inst|Mux43~1_combout\ & ( \inst1|inst5|171|sub|9~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111111110000111100001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \inst1|inst5|171|sub|ALT_INV_9~q\,
	dataf => \inst1|inst|ALT_INV_Mux43~1_combout\,
	combout => \inst1|inst5|171|sub|78~combout\);

-- Location: LABCELL_X60_Y10_N21
\inst1|inst5|171|sub|9~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|inst5|171|sub|9~feeder_combout\ = \inst1|inst5|171|sub|78~combout\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101010101010101010101010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|inst5|171|sub|ALT_INV_78~combout\,
	combout => \inst1|inst5|171|sub|9~feeder_combout\);

-- Location: LABCELL_X57_Y10_N24
\inst1|inst|Mux34~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|inst|Mux34~0_combout\ = ( !\inst1|inst|state[5]~DUPLICATE_q\ & ( \inst1|inst|state[0]~DUPLICATE_q\ & ( (!\inst1|inst|state[4]~DUPLICATE_q\ & (\inst1|inst|state[2]~DUPLICATE_q\ & (!\inst1|inst|state\(3) $ (!\inst1|inst|state\(1))))) ) ) ) # ( 
-- !\inst1|inst|state[5]~DUPLICATE_q\ & ( !\inst1|inst|state[0]~DUPLICATE_q\ & ( (!\inst1|inst|state\(3) & (((\inst1|inst|state[2]~DUPLICATE_q\ & !\inst1|inst|state\(1))))) # (\inst1|inst|state\(3) & (!\inst1|inst|state[2]~DUPLICATE_q\ & 
-- (!\inst1|inst|state[4]~DUPLICATE_q\ $ (!\inst1|inst|state\(1))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001101001000000000000000000000000000100000010000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|inst|ALT_INV_state\(3),
	datab => \inst1|inst|ALT_INV_state[4]~DUPLICATE_q\,
	datac => \inst1|inst|ALT_INV_state[2]~DUPLICATE_q\,
	datad => \inst1|inst|ALT_INV_state\(1),
	datae => \inst1|inst|ALT_INV_state[5]~DUPLICATE_q\,
	dataf => \inst1|inst|ALT_INV_state[0]~DUPLICATE_q\,
	combout => \inst1|inst|Mux34~0_combout\);

-- Location: FF_X60_Y10_N23
\inst1|inst5|171|sub|9\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2~q\,
	d => \inst1|inst5|171|sub|9~feeder_combout\,
	asdata => \DATA[0]~input_o\,
	clrn => \nRESET~input_o\,
	sload => \inst1|inst|Mux34~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|inst5|171|sub|9~q\);

-- Location: LABCELL_X61_Y11_N45
\inst1|inst|Mux36~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|inst|Mux36~0_combout\ = ( \inst1|inst|state[2]~DUPLICATE_q\ & ( (\inst1|inst|state[0]~DUPLICATE_q\ & ((!\inst1|inst|state[3]~DUPLICATE_q\ & (\inst1|inst|state[5]~DUPLICATE_q\ & !\inst1|inst|state[4]~DUPLICATE_q\)) # 
-- (\inst1|inst|state[3]~DUPLICATE_q\ & (!\inst1|inst|state[5]~DUPLICATE_q\ & \inst1|inst|state[4]~DUPLICATE_q\)))) ) ) # ( !\inst1|inst|state[2]~DUPLICATE_q\ & ( (\inst1|inst|state[0]~DUPLICATE_q\ & (\inst1|inst|state[5]~DUPLICATE_q\ & 
-- !\inst1|inst|state[4]~DUPLICATE_q\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100000000000000110000000000000010000100000000001000010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|inst|ALT_INV_state[3]~DUPLICATE_q\,
	datab => \inst1|inst|ALT_INV_state[0]~DUPLICATE_q\,
	datac => \inst1|inst|ALT_INV_state[5]~DUPLICATE_q\,
	datad => \inst1|inst|ALT_INV_state[4]~DUPLICATE_q\,
	dataf => \inst1|inst|ALT_INV_state[2]~DUPLICATE_q\,
	combout => \inst1|inst|Mux36~0_combout\);

-- Location: LABCELL_X61_Y11_N0
\inst1|inst|Mux37~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|inst|Mux37~0_combout\ = ( !\inst1|inst|state[4]~DUPLICATE_q\ & ( \inst1|inst|state\(5) & ( (\inst1|inst|state\(1) & (\inst1|inst|state[0]~DUPLICATE_q\ & ((!\inst1|inst|state[3]~DUPLICATE_q\) # (!\inst1|inst|state[2]~DUPLICATE_q\)))) ) ) ) # ( 
-- \inst1|inst|state[4]~DUPLICATE_q\ & ( !\inst1|inst|state\(5) & ( (\inst1|inst|state\(1) & ((!\inst1|inst|state[3]~DUPLICATE_q\ & (\inst1|inst|state[2]~DUPLICATE_q\)) # (\inst1|inst|state[3]~DUPLICATE_q\ & ((!\inst1|inst|state[2]~DUPLICATE_q\) # 
-- (\inst1|inst|state[0]~DUPLICATE_q\))))) ) ) ) # ( !\inst1|inst|state[4]~DUPLICATE_q\ & ( !\inst1|inst|state\(5) & ( (!\inst1|inst|state\(1) & (\inst1|inst|state[3]~DUPLICATE_q\ & (!\inst1|inst|state[2]~DUPLICATE_q\ $ 
-- (!\inst1|inst|state[0]~DUPLICATE_q\)))) # (\inst1|inst|state\(1) & (\inst1|inst|state[2]~DUPLICATE_q\ & (!\inst1|inst|state[3]~DUPLICATE_q\ $ (\inst1|inst|state[0]~DUPLICATE_q\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001001001000001000001100000011100000000000011100000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|inst|ALT_INV_state[3]~DUPLICATE_q\,
	datab => \inst1|inst|ALT_INV_state[2]~DUPLICATE_q\,
	datac => \inst1|inst|ALT_INV_state\(1),
	datad => \inst1|inst|ALT_INV_state[0]~DUPLICATE_q\,
	datae => \inst1|inst|ALT_INV_state[4]~DUPLICATE_q\,
	dataf => \inst1|inst|ALT_INV_state\(5),
	combout => \inst1|inst|Mux37~0_combout\);

-- Location: LABCELL_X62_Y11_N54
\inst1|inst|Mux23~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|inst|Mux23~0_combout\ = ( \inst1|inst|state[4]~DUPLICATE_q\ & ( \inst1|inst|state\(5) & ( (!\inst1|inst|state\(2) & (\inst1|inst|state\(0) & !\inst1|inst|state[3]~DUPLICATE_q\)) ) ) ) # ( !\inst1|inst|state[4]~DUPLICATE_q\ & ( \inst1|inst|state\(5) 
-- & ( !\inst1|inst|state\(0) $ (((\inst1|inst|state\(2) & \inst1|inst|state[3]~DUPLICATE_q\))) ) ) ) # ( \inst1|inst|state[4]~DUPLICATE_q\ & ( !\inst1|inst|state\(5) & ( (!\inst1|inst|state\(2) & (((!\inst1|inst|state[3]~DUPLICATE_q\) # 
-- (!\inst1|inst|state[1]~DUPLICATE_q\)))) # (\inst1|inst|state\(2) & ((!\inst1|inst|state[3]~DUPLICATE_q\ & ((!\inst1|inst|state[1]~DUPLICATE_q\))) # (\inst1|inst|state[3]~DUPLICATE_q\ & (!\inst1|inst|state\(0))))) ) ) ) # ( 
-- !\inst1|inst|state[4]~DUPLICATE_q\ & ( !\inst1|inst|state\(5) & ( (!\inst1|inst|state\(2) & ((!\inst1|inst|state\(0) $ (!\inst1|inst|state[3]~DUPLICATE_q\)) # (\inst1|inst|state[1]~DUPLICATE_q\))) # (\inst1|inst|state\(2) & ((!\inst1|inst|state\(0) & 
-- (!\inst1|inst|state[3]~DUPLICATE_q\ $ (\inst1|inst|state[1]~DUPLICATE_q\))) # (\inst1|inst|state\(0) & ((!\inst1|inst|state[3]~DUPLICATE_q\) # (!\inst1|inst|state[1]~DUPLICATE_q\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0111100110111110111111101010010011001001110010010010000000100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|inst|ALT_INV_state\(2),
	datab => \inst1|inst|ALT_INV_state\(0),
	datac => \inst1|inst|ALT_INV_state[3]~DUPLICATE_q\,
	datad => \inst1|inst|ALT_INV_state[1]~DUPLICATE_q\,
	datae => \inst1|inst|ALT_INV_state[4]~DUPLICATE_q\,
	dataf => \inst1|inst|ALT_INV_state\(5),
	combout => \inst1|inst|Mux23~0_combout\);

-- Location: LABCELL_X64_Y12_N33
\inst1|inst5|3|sub|78\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|inst5|3|sub|78~combout\ = ( \inst1|inst5|3|sub|9~q\ & ( !\inst1|inst|Mux23~0_combout\ ) ) # ( !\inst1|inst5|3|sub|9~q\ & ( \inst1|inst|Mux23~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011001100110011001111001100110011001100110011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \inst1|inst|ALT_INV_Mux23~0_combout\,
	dataf => \inst1|inst5|3|sub|ALT_INV_9~q\,
	combout => \inst1|inst5|3|sub|78~combout\);

-- Location: LABCELL_X64_Y12_N24
\inst1|inst5|3|sub|9~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|inst5|3|sub|9~feeder_combout\ = \inst1|inst5|3|sub|78~combout\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \inst1|inst5|3|sub|ALT_INV_78~combout\,
	combout => \inst1|inst5|3|sub|9~feeder_combout\);

-- Location: MLABCELL_X59_Y11_N51
\inst1|inst|Mux46~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|inst|Mux46~0_combout\ = ( \inst1|inst|state[5]~DUPLICATE_q\ & ( (!\inst1|inst|state[0]~DUPLICATE_q\ & ((!\inst1|inst|state[2]~DUPLICATE_q\ & (\inst1|inst|state[4]~DUPLICATE_q\ & !\inst1|inst|state\(3))) # (\inst1|inst|state[2]~DUPLICATE_q\ & 
-- (!\inst1|inst|state[4]~DUPLICATE_q\ & \inst1|inst|state\(3))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000100000010000000010000001000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|inst|ALT_INV_state[2]~DUPLICATE_q\,
	datab => \inst1|inst|ALT_INV_state[4]~DUPLICATE_q\,
	datac => \inst1|inst|ALT_INV_state[0]~DUPLICATE_q\,
	datad => \inst1|inst|ALT_INV_state\(3),
	dataf => \inst1|inst|ALT_INV_state[5]~DUPLICATE_q\,
	combout => \inst1|inst|Mux46~0_combout\);

-- Location: FF_X64_Y12_N26
\inst1|inst5|3|sub|9\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2~q\,
	d => \inst1|inst5|3|sub|9~feeder_combout\,
	asdata => \DATA[0]~input_o\,
	clrn => \nRESET~input_o\,
	sload => \inst1|inst|Mux46~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|inst5|3|sub|9~q\);

-- Location: MLABCELL_X59_Y11_N0
\inst1|inst5|155|6~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|inst5|155|6~0_combout\ = ( !\inst1|inst|Mux36~0_combout\ & ( (((!\inst1|inst|Mux37~0_combout\ & (\inst1|inst5|3|sub|9~q\)) # (\inst1|inst|Mux37~0_combout\ & ((\inst1|inst5|171|sub|9~q\))))) ) ) # ( \inst1|inst|Mux36~0_combout\ & ( 
-- ((!\inst1|inst|Mux37~0_combout\ & ((!\inst1|inst5|123|sub|9~q\ $ (!\inst1|inst5|inst1|19~q\)))) # (\inst1|inst|Mux37~0_combout\ & (\inst1|inst5|140|sub|76~combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0000111100001111001111000011110000000000111111110101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|inst5|140|sub|ALT_INV_76~combout\,
	datab => \inst1|inst5|123|sub|ALT_INV_9~q\,
	datac => \inst1|inst5|inst1|ALT_INV_19~q\,
	datad => \inst1|inst5|171|sub|ALT_INV_9~q\,
	datae => \inst1|inst|ALT_INV_Mux36~0_combout\,
	dataf => \inst1|inst|ALT_INV_Mux37~0_combout\,
	datag => \inst1|inst5|3|sub|ALT_INV_9~q\,
	combout => \inst1|inst5|155|6~0_combout\);

-- Location: MLABCELL_X59_Y11_N6
\inst1|inst5|171|sub|90\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|inst5|171|sub|90~combout\ = ( \inst1|inst5|171|sub|87~q\ & ( \inst1|inst|Mux43~1_combout\ & ( !\inst1|inst5|171|sub|9~q\ ) ) ) # ( !\inst1|inst5|171|sub|87~q\ & ( \inst1|inst|Mux43~1_combout\ & ( \inst1|inst5|171|sub|9~q\ ) ) ) # ( 
-- \inst1|inst5|171|sub|87~q\ & ( !\inst1|inst|Mux43~1_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100001111000011111111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \inst1|inst5|171|sub|ALT_INV_9~q\,
	datae => \inst1|inst5|171|sub|ALT_INV_87~q\,
	dataf => \inst1|inst|ALT_INV_Mux43~1_combout\,
	combout => \inst1|inst5|171|sub|90~combout\);

-- Location: LABCELL_X60_Y10_N18
\inst1|inst5|171|sub|87~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|inst5|171|sub|87~feeder_combout\ = \inst1|inst5|171|sub|90~combout\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \inst1|inst5|171|sub|ALT_INV_90~combout\,
	combout => \inst1|inst5|171|sub|87~feeder_combout\);

-- Location: FF_X60_Y10_N20
\inst1|inst5|171|sub|87\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2~q\,
	d => \inst1|inst5|171|sub|87~feeder_combout\,
	asdata => \DATA[1]~input_o\,
	clrn => \nRESET~input_o\,
	sload => \inst1|inst|Mux34~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|inst5|171|sub|87~q\);

-- Location: LABCELL_X63_Y13_N24
\inst1|inst5|3|sub|90\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|inst5|3|sub|90~combout\ = ( \inst1|inst|Mux23~0_combout\ & ( !\inst1|inst5|3|sub|87~q\ $ (!\inst1|inst5|3|sub|9~q\) ) ) # ( !\inst1|inst|Mux23~0_combout\ & ( \inst1|inst5|3|sub|87~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011001100110011001100111100001111000011110000111100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \inst1|inst5|3|sub|ALT_INV_87~q\,
	datac => \inst1|inst5|3|sub|ALT_INV_9~q\,
	dataf => \inst1|inst|ALT_INV_Mux23~0_combout\,
	combout => \inst1|inst5|3|sub|90~combout\);

-- Location: LABCELL_X64_Y13_N36
\inst1|inst5|3|sub|87~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|inst5|3|sub|87~feeder_combout\ = \inst1|inst5|3|sub|90~combout\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011001100110011001100110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \inst1|inst5|3|sub|ALT_INV_90~combout\,
	combout => \inst1|inst5|3|sub|87~feeder_combout\);

-- Location: FF_X64_Y13_N38
\inst1|inst5|3|sub|87\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2~q\,
	d => \inst1|inst5|3|sub|87~feeder_combout\,
	asdata => \DATA[1]~input_o\,
	clrn => \nRESET~input_o\,
	sload => \inst1|inst|Mux46~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|inst5|3|sub|87~q\);

-- Location: FF_X62_Y13_N44
\inst1|inst5|inst1|20\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2~q\,
	asdata => \DATA[1]~input_o\,
	clrn => \nRESET~input_o\,
	sload => VCC,
	ena => \inst1|inst|Mux44~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|inst5|inst1|20~q\);

-- Location: LABCELL_X60_Y13_N18
\inst1|inst5|123|sub|90\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|inst5|123|sub|90~combout\ = ( \inst1|inst|Mux32~0_combout\ & ( !\inst1|inst5|123|sub|9~q\ $ (!\inst1|inst5|123|sub|87~q\) ) ) # ( !\inst1|inst|Mux32~0_combout\ & ( \inst1|inst5|123|sub|87~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111100110011110011000011001111001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \inst1|inst5|123|sub|ALT_INV_9~q\,
	datad => \inst1|inst5|123|sub|ALT_INV_87~q\,
	dataf => \inst1|inst|ALT_INV_Mux32~0_combout\,
	combout => \inst1|inst5|123|sub|90~combout\);

-- Location: LABCELL_X62_Y13_N48
\inst1|inst5|123|sub|87~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|inst5|123|sub|87~feeder_combout\ = ( \inst1|inst5|123|sub|90~combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \inst1|inst5|123|sub|ALT_INV_90~combout\,
	combout => \inst1|inst5|123|sub|87~feeder_combout\);

-- Location: FF_X62_Y13_N50
\inst1|inst5|123|sub|87\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2~q\,
	d => \inst1|inst5|123|sub|87~feeder_combout\,
	asdata => \DATA[1]~input_o\,
	clrn => \nRESET~input_o\,
	sload => \inst1|inst|Mux39~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|inst5|123|sub|87~q\);

-- Location: LABCELL_X63_Y12_N18
\inst1|inst5|131|sub|78\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|inst5|131|sub|78~combout\ = ( \inst1|inst5|123|sub|9~q\ & ( !\inst1|inst5|inst1|20~q\ $ (!\inst1|inst5|123|sub|87~q\ $ (\inst1|inst5|inst1|19~q\)) ) ) # ( !\inst1|inst5|123|sub|9~q\ & ( !\inst1|inst5|inst1|20~q\ $ (!\inst1|inst5|123|sub|87~q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110011001100110011001101001100101100110011001100110011010011001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|inst5|inst1|ALT_INV_20~q\,
	datab => \inst1|inst5|123|sub|ALT_INV_87~q\,
	datad => \inst1|inst5|inst1|ALT_INV_19~q\,
	datae => \inst1|inst5|123|sub|ALT_INV_9~q\,
	combout => \inst1|inst5|131|sub|78~combout\);

-- Location: FF_X61_Y12_N32
\inst1|inst5|inst1|55\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2~q\,
	asdata => \DATA[1]~input_o\,
	clrn => \nRESET~input_o\,
	sload => VCC,
	ena => \inst1|inst|Mux45~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|inst5|inst1|55~q\);

-- Location: LABCELL_X62_Y12_N27
\inst1|inst5|127|sub|90\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|inst5|127|sub|90~combout\ = ( \inst1|inst|Mux33~2_combout\ & ( !\inst1|inst5|127|sub|9~q\ $ (!\inst1|inst5|127|sub|87~q\) ) ) # ( !\inst1|inst|Mux33~2_combout\ & ( \inst1|inst5|127|sub|87~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111100001111111100000000111111110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \inst1|inst5|127|sub|ALT_INV_9~q\,
	datad => \inst1|inst5|127|sub|ALT_INV_87~q\,
	dataf => \inst1|inst|ALT_INV_Mux33~2_combout\,
	combout => \inst1|inst5|127|sub|90~combout\);

-- Location: LABCELL_X62_Y12_N15
\inst1|inst5|127|sub|87~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|inst5|127|sub|87~feeder_combout\ = ( \inst1|inst5|127|sub|90~combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \inst1|inst5|127|sub|ALT_INV_90~combout\,
	combout => \inst1|inst5|127|sub|87~feeder_combout\);

-- Location: FF_X62_Y12_N17
\inst1|inst5|127|sub|87\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2~q\,
	d => \inst1|inst5|127|sub|87~feeder_combout\,
	asdata => \DATA[1]~input_o\,
	clrn => \nRESET~input_o\,
	sload => \inst1|inst|Mux41~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|inst5|127|sub|87~q\);

-- Location: LABCELL_X62_Y12_N54
\inst1|inst5|140|sub|78\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|inst5|140|sub|78~combout\ = ( \inst1|inst5|127|sub|87~q\ & ( !\inst1|inst5|inst1|55~q\ $ (((\inst1|inst5|inst1|54~q\ & \inst1|inst5|127|sub|9~q\))) ) ) # ( !\inst1|inst5|127|sub|87~q\ & ( !\inst1|inst5|inst1|55~q\ $ (((!\inst1|inst5|inst1|54~q\) # 
-- (!\inst1|inst5|127|sub|9~q\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011011000110110001101100011011011001001110010011100100111001001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|inst5|inst1|ALT_INV_54~q\,
	datab => \inst1|inst5|inst1|ALT_INV_55~q\,
	datac => \inst1|inst5|127|sub|ALT_INV_9~q\,
	dataf => \inst1|inst5|127|sub|ALT_INV_87~q\,
	combout => \inst1|inst5|140|sub|78~combout\);

-- Location: LABCELL_X63_Y12_N24
\inst1|inst5|156|6~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|inst5|156|6~0_combout\ = ( \inst1|inst5|131|sub|78~combout\ & ( \inst1|inst5|140|sub|78~combout\ & ( ((!\inst1|inst|Mux37~0_combout\ & ((\inst1|inst5|3|sub|87~q\))) # (\inst1|inst|Mux37~0_combout\ & (\inst1|inst5|171|sub|87~q\))) # 
-- (\inst1|inst|Mux36~0_combout\) ) ) ) # ( !\inst1|inst5|131|sub|78~combout\ & ( \inst1|inst5|140|sub|78~combout\ & ( (!\inst1|inst|Mux36~0_combout\ & ((!\inst1|inst|Mux37~0_combout\ & ((\inst1|inst5|3|sub|87~q\))) # (\inst1|inst|Mux37~0_combout\ & 
-- (\inst1|inst5|171|sub|87~q\)))) # (\inst1|inst|Mux36~0_combout\ & (((\inst1|inst|Mux37~0_combout\)))) ) ) ) # ( \inst1|inst5|131|sub|78~combout\ & ( !\inst1|inst5|140|sub|78~combout\ & ( (!\inst1|inst|Mux36~0_combout\ & ((!\inst1|inst|Mux37~0_combout\ & 
-- ((\inst1|inst5|3|sub|87~q\))) # (\inst1|inst|Mux37~0_combout\ & (\inst1|inst5|171|sub|87~q\)))) # (\inst1|inst|Mux36~0_combout\ & (((!\inst1|inst|Mux37~0_combout\)))) ) ) ) # ( !\inst1|inst5|131|sub|78~combout\ & ( !\inst1|inst5|140|sub|78~combout\ & ( 
-- (!\inst1|inst|Mux36~0_combout\ & ((!\inst1|inst|Mux37~0_combout\ & ((\inst1|inst5|3|sub|87~q\))) # (\inst1|inst|Mux37~0_combout\ & (\inst1|inst5|171|sub|87~q\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011000001010000001111110101000000110000010111110011111101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|inst5|171|sub|ALT_INV_87~q\,
	datab => \inst1|inst5|3|sub|ALT_INV_87~q\,
	datac => \inst1|inst|ALT_INV_Mux36~0_combout\,
	datad => \inst1|inst|ALT_INV_Mux37~0_combout\,
	datae => \inst1|inst5|131|sub|ALT_INV_78~combout\,
	dataf => \inst1|inst5|140|sub|ALT_INV_78~combout\,
	combout => \inst1|inst5|156|6~0_combout\);

-- Location: FF_X61_Y12_N26
\inst1|inst5|inst1|56\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2~q\,
	asdata => \DATA[2]~input_o\,
	clrn => \nRESET~input_o\,
	sload => VCC,
	ena => \inst1|inst|Mux45~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|inst5|inst1|56~q\);

-- Location: LABCELL_X62_Y12_N30
\inst1|inst5|127|sub|97\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|inst5|127|sub|97~combout\ = ( \inst1|inst5|127|sub|9~q\ & ( !\inst1|inst5|127|sub|99~q\ $ (((!\inst1|inst5|127|sub|87~q\) # (!\inst1|inst|Mux33~2_combout\))) ) ) # ( !\inst1|inst5|127|sub|9~q\ & ( \inst1|inst5|127|sub|99~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111100000011111111000000001111111100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \inst1|inst5|127|sub|ALT_INV_87~q\,
	datac => \inst1|inst|ALT_INV_Mux33~2_combout\,
	datad => \inst1|inst5|127|sub|ALT_INV_99~q\,
	dataf => \inst1|inst5|127|sub|ALT_INV_9~q\,
	combout => \inst1|inst5|127|sub|97~combout\);

-- Location: LABCELL_X62_Y12_N57
\inst1|inst5|127|sub|99~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|inst5|127|sub|99~feeder_combout\ = ( \inst1|inst5|127|sub|97~combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \inst1|inst5|127|sub|ALT_INV_97~combout\,
	combout => \inst1|inst5|127|sub|99~feeder_combout\);

-- Location: FF_X62_Y12_N59
\inst1|inst5|127|sub|99\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2~q\,
	d => \inst1|inst5|127|sub|99~feeder_combout\,
	asdata => \DATA[2]~input_o\,
	clrn => \nRESET~input_o\,
	sload => \inst1|inst|Mux41~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|inst5|127|sub|99~q\);

-- Location: LABCELL_X62_Y12_N42
\inst1|inst5|140|sub|80\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|inst5|140|sub|80~combout\ = ( \inst1|inst5|127|sub|87~q\ & ( \inst1|inst5|127|sub|99~q\ & ( !\inst1|inst5|inst1|56~q\ $ ((((\inst1|inst5|inst1|54~q\ & \inst1|inst5|127|sub|9~q\)) # (\inst1|inst5|inst1|55~q\))) ) ) ) # ( !\inst1|inst5|127|sub|87~q\ 
-- & ( \inst1|inst5|127|sub|99~q\ & ( !\inst1|inst5|inst1|56~q\ $ (((\inst1|inst5|inst1|54~q\ & (\inst1|inst5|127|sub|9~q\ & \inst1|inst5|inst1|55~q\)))) ) ) ) # ( \inst1|inst5|127|sub|87~q\ & ( !\inst1|inst5|127|sub|99~q\ & ( !\inst1|inst5|inst1|56~q\ $ 
-- (((!\inst1|inst5|inst1|55~q\ & ((!\inst1|inst5|inst1|54~q\) # (!\inst1|inst5|127|sub|9~q\))))) ) ) ) # ( !\inst1|inst5|127|sub|87~q\ & ( !\inst1|inst5|127|sub|99~q\ & ( !\inst1|inst5|inst1|56~q\ $ (((!\inst1|inst5|inst1|54~q\) # 
-- ((!\inst1|inst5|127|sub|9~q\) # (!\inst1|inst5|inst1|55~q\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110110001101101100110011001100110010011100100100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|inst5|inst1|ALT_INV_54~q\,
	datab => \inst1|inst5|inst1|ALT_INV_56~q\,
	datac => \inst1|inst5|127|sub|ALT_INV_9~q\,
	datad => \inst1|inst5|inst1|ALT_INV_55~q\,
	datae => \inst1|inst5|127|sub|ALT_INV_87~q\,
	dataf => \inst1|inst5|127|sub|ALT_INV_99~q\,
	combout => \inst1|inst5|140|sub|80~combout\);

-- Location: FF_X62_Y13_N14
\inst1|inst5|inst1|21\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2~q\,
	asdata => \DATA[2]~input_o\,
	clrn => \nRESET~input_o\,
	sload => VCC,
	ena => \inst1|inst|Mux44~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|inst5|inst1|21~q\);

-- Location: LABCELL_X63_Y12_N51
\inst1|inst5|123|sub|97\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|inst5|123|sub|97~combout\ = ( \inst1|inst5|123|sub|87~q\ & ( \inst1|inst|Mux32~0_combout\ & ( !\inst1|inst5|123|sub|99~q\ $ (!\inst1|inst5|123|sub|9~q\) ) ) ) # ( !\inst1|inst5|123|sub|87~q\ & ( \inst1|inst|Mux32~0_combout\ & ( 
-- \inst1|inst5|123|sub|99~q\ ) ) ) # ( \inst1|inst5|123|sub|87~q\ & ( !\inst1|inst|Mux32~0_combout\ & ( \inst1|inst5|123|sub|99~q\ ) ) ) # ( !\inst1|inst5|123|sub|87~q\ & ( !\inst1|inst|Mux32~0_combout\ & ( \inst1|inst5|123|sub|99~q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011001100110011001100110011001100110011110000111100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \inst1|inst5|123|sub|ALT_INV_99~q\,
	datac => \inst1|inst5|123|sub|ALT_INV_9~q\,
	datae => \inst1|inst5|123|sub|ALT_INV_87~q\,
	dataf => \inst1|inst|ALT_INV_Mux32~0_combout\,
	combout => \inst1|inst5|123|sub|97~combout\);

-- Location: LABCELL_X62_Y13_N6
\inst1|inst5|123|sub|99~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|inst5|123|sub|99~feeder_combout\ = ( \inst1|inst5|123|sub|97~combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \inst1|inst5|123|sub|ALT_INV_97~combout\,
	combout => \inst1|inst5|123|sub|99~feeder_combout\);

-- Location: FF_X62_Y13_N8
\inst1|inst5|123|sub|99\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2~q\,
	d => \inst1|inst5|123|sub|99~feeder_combout\,
	asdata => \DATA[2]~input_o\,
	clrn => \nRESET~input_o\,
	sload => \inst1|inst|Mux39~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|inst5|123|sub|99~q\);

-- Location: LABCELL_X63_Y12_N0
\inst1|inst5|131|sub|80\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|inst5|131|sub|80~combout\ = ( \inst1|inst5|123|sub|87~q\ & ( \inst1|inst5|123|sub|99~q\ & ( !\inst1|inst5|inst1|21~q\ $ ((((\inst1|inst5|inst1|19~q\ & \inst1|inst5|123|sub|9~q\)) # (\inst1|inst5|inst1|20~q\))) ) ) ) # ( !\inst1|inst5|123|sub|87~q\ 
-- & ( \inst1|inst5|123|sub|99~q\ & ( !\inst1|inst5|inst1|21~q\ $ (((\inst1|inst5|inst1|19~q\ & (\inst1|inst5|inst1|20~q\ & \inst1|inst5|123|sub|9~q\)))) ) ) ) # ( \inst1|inst5|123|sub|87~q\ & ( !\inst1|inst5|123|sub|99~q\ & ( !\inst1|inst5|inst1|21~q\ $ 
-- (((!\inst1|inst5|inst1|20~q\ & ((!\inst1|inst5|inst1|19~q\) # (!\inst1|inst5|123|sub|9~q\))))) ) ) ) # ( !\inst1|inst5|123|sub|87~q\ & ( !\inst1|inst5|123|sub|99~q\ & ( !\inst1|inst5|inst1|21~q\ $ (((!\inst1|inst5|inst1|19~q\) # 
-- ((!\inst1|inst5|inst1|20~q\) # (!\inst1|inst5|123|sub|9~q\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110110001111000110110011001100110010011100001110010011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|inst5|inst1|ALT_INV_19~q\,
	datab => \inst1|inst5|inst1|ALT_INV_21~q\,
	datac => \inst1|inst5|inst1|ALT_INV_20~q\,
	datad => \inst1|inst5|123|sub|ALT_INV_9~q\,
	datae => \inst1|inst5|123|sub|ALT_INV_87~q\,
	dataf => \inst1|inst5|123|sub|ALT_INV_99~q\,
	combout => \inst1|inst5|131|sub|80~combout\);

-- Location: LABCELL_X64_Y13_N21
\inst1|inst5|3|sub|97\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|inst5|3|sub|97~combout\ = ( \inst1|inst5|3|sub|9~q\ & ( \inst1|inst5|3|sub|87~q\ & ( !\inst1|inst|Mux23~0_combout\ $ (!\inst1|inst5|3|sub|99~q\) ) ) ) # ( !\inst1|inst5|3|sub|9~q\ & ( \inst1|inst5|3|sub|87~q\ & ( \inst1|inst5|3|sub|99~q\ ) ) ) # ( 
-- \inst1|inst5|3|sub|9~q\ & ( !\inst1|inst5|3|sub|87~q\ & ( \inst1|inst5|3|sub|99~q\ ) ) ) # ( !\inst1|inst5|3|sub|9~q\ & ( !\inst1|inst5|3|sub|87~q\ & ( \inst1|inst5|3|sub|99~q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111100000000111111110101010110101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|inst|ALT_INV_Mux23~0_combout\,
	datad => \inst1|inst5|3|sub|ALT_INV_99~q\,
	datae => \inst1|inst5|3|sub|ALT_INV_9~q\,
	dataf => \inst1|inst5|3|sub|ALT_INV_87~q\,
	combout => \inst1|inst5|3|sub|97~combout\);

-- Location: LABCELL_X63_Y13_N54
\inst1|inst5|3|sub|99~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|inst5|3|sub|99~feeder_combout\ = \inst1|inst5|3|sub|97~combout\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \inst1|inst5|3|sub|ALT_INV_97~combout\,
	combout => \inst1|inst5|3|sub|99~feeder_combout\);

-- Location: FF_X63_Y13_N56
\inst1|inst5|3|sub|99\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2~q\,
	d => \inst1|inst5|3|sub|99~feeder_combout\,
	asdata => \DATA[2]~input_o\,
	clrn => \nRESET~input_o\,
	sload => \inst1|inst|Mux46~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|inst5|3|sub|99~q\);

-- Location: MLABCELL_X59_Y11_N12
\inst1|inst5|171|sub|106~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|inst5|171|sub|106~0_combout\ = ( \inst1|inst|Mux43~0_combout\ & ( (\inst1|inst|Mux41~0_combout\ & (\inst1|inst5|171|sub|9~q\ & \inst1|inst5|171|sub|87~q\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000001010000000000000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|inst|ALT_INV_Mux41~0_combout\,
	datac => \inst1|inst5|171|sub|ALT_INV_9~q\,
	datad => \inst1|inst5|171|sub|ALT_INV_87~q\,
	dataf => \inst1|inst|ALT_INV_Mux43~0_combout\,
	combout => \inst1|inst5|171|sub|106~0_combout\);

-- Location: LABCELL_X60_Y10_N0
\inst1|inst5|171|sub|97\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|inst5|171|sub|97~combout\ = ( \inst1|inst5|171|sub|106~0_combout\ & ( !\inst1|inst5|171|sub|99~q\ ) ) # ( !\inst1|inst5|171|sub|106~0_combout\ & ( \inst1|inst5|171|sub|99~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011001100110011001111001100110011001100110011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \inst1|inst5|171|sub|ALT_INV_99~q\,
	dataf => \inst1|inst5|171|sub|ALT_INV_106~0_combout\,
	combout => \inst1|inst5|171|sub|97~combout\);

-- Location: LABCELL_X60_Y10_N3
\inst1|inst5|171|sub|99~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|inst5|171|sub|99~feeder_combout\ = \inst1|inst5|171|sub|97~combout\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101010101010101010101010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|inst5|171|sub|ALT_INV_97~combout\,
	combout => \inst1|inst5|171|sub|99~feeder_combout\);

-- Location: FF_X60_Y10_N5
\inst1|inst5|171|sub|99\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2~q\,
	d => \inst1|inst5|171|sub|99~feeder_combout\,
	asdata => \DATA[2]~input_o\,
	clrn => \nRESET~input_o\,
	sload => \inst1|inst|Mux34~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|inst5|171|sub|99~q\);

-- Location: LABCELL_X60_Y10_N30
\inst1|inst5|157|6~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|inst5|157|6~0_combout\ = ( \inst1|inst|Mux37~0_combout\ & ( \inst1|inst5|171|sub|99~q\ & ( (!\inst1|inst|Mux36~0_combout\) # (\inst1|inst5|140|sub|80~combout\) ) ) ) # ( !\inst1|inst|Mux37~0_combout\ & ( \inst1|inst5|171|sub|99~q\ & ( 
-- (!\inst1|inst|Mux36~0_combout\ & ((\inst1|inst5|3|sub|99~q\))) # (\inst1|inst|Mux36~0_combout\ & (\inst1|inst5|131|sub|80~combout\)) ) ) ) # ( \inst1|inst|Mux37~0_combout\ & ( !\inst1|inst5|171|sub|99~q\ & ( (\inst1|inst5|140|sub|80~combout\ & 
-- \inst1|inst|Mux36~0_combout\) ) ) ) # ( !\inst1|inst|Mux37~0_combout\ & ( !\inst1|inst5|171|sub|99~q\ & ( (!\inst1|inst|Mux36~0_combout\ & ((\inst1|inst5|3|sub|99~q\))) # (\inst1|inst|Mux36~0_combout\ & (\inst1|inst5|131|sub|80~combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001111110011000001010000010100000011111100111111010111110101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|inst5|140|sub|ALT_INV_80~combout\,
	datab => \inst1|inst5|131|sub|ALT_INV_80~combout\,
	datac => \inst1|inst|ALT_INV_Mux36~0_combout\,
	datad => \inst1|inst5|3|sub|ALT_INV_99~q\,
	datae => \inst1|inst|ALT_INV_Mux37~0_combout\,
	dataf => \inst1|inst5|171|sub|ALT_INV_99~q\,
	combout => \inst1|inst5|157|6~0_combout\);

-- Location: LABCELL_X63_Y13_N0
\inst1|inst5|3|sub|107\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|inst5|3|sub|107~combout\ = ( \inst1|inst5|3|sub|110~q\ & ( (!\inst1|inst5|3|sub|99~q\) # ((!\inst1|inst5|3|sub|87~q\) # ((!\inst1|inst|Mux23~0_combout\) # (!\inst1|inst5|3|sub|9~q\))) ) ) # ( !\inst1|inst5|3|sub|110~q\ & ( (\inst1|inst5|3|sub|99~q\ 
-- & (\inst1|inst5|3|sub|87~q\ & (\inst1|inst|Mux23~0_combout\ & \inst1|inst5|3|sub|9~q\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000001000000000000000111111111111111101111111111111110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|inst5|3|sub|ALT_INV_99~q\,
	datab => \inst1|inst5|3|sub|ALT_INV_87~q\,
	datac => \inst1|inst|ALT_INV_Mux23~0_combout\,
	datad => \inst1|inst5|3|sub|ALT_INV_9~q\,
	dataf => \inst1|inst5|3|sub|ALT_INV_110~q\,
	combout => \inst1|inst5|3|sub|107~combout\);

-- Location: LABCELL_X63_Y13_N36
\inst1|inst5|3|sub|110~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|inst5|3|sub|110~feeder_combout\ = \inst1|inst5|3|sub|107~combout\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101010101010101010101010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|inst5|3|sub|ALT_INV_107~combout\,
	combout => \inst1|inst5|3|sub|110~feeder_combout\);

-- Location: FF_X63_Y13_N38
\inst1|inst5|3|sub|110\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2~q\,
	d => \inst1|inst5|3|sub|110~feeder_combout\,
	asdata => \DATA[3]~input_o\,
	clrn => \nRESET~input_o\,
	sload => \inst1|inst|Mux46~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|inst5|3|sub|110~q\);

-- Location: FF_X62_Y13_N35
\inst1|inst5|inst1|22\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2~q\,
	asdata => \DATA[3]~input_o\,
	clrn => \nRESET~input_o\,
	sload => VCC,
	ena => \inst1|inst|Mux44~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|inst5|inst1|22~q\);

-- Location: LABCELL_X62_Y13_N12
\inst1|inst5|131|sub|106~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|inst5|131|sub|106~0_combout\ = ( \inst1|inst5|inst1|21~q\ & ( \inst1|inst5|123|sub|87~q\ & ( (((\inst1|inst5|123|sub|9~q\ & \inst1|inst5|inst1|19~q\)) # (\inst1|inst5|inst1|20~q\)) # (\inst1|inst5|123|sub|99~q\) ) ) ) # ( !\inst1|inst5|inst1|21~q\ 
-- & ( \inst1|inst5|123|sub|87~q\ & ( (\inst1|inst5|123|sub|99~q\ & (((\inst1|inst5|123|sub|9~q\ & \inst1|inst5|inst1|19~q\)) # (\inst1|inst5|inst1|20~q\))) ) ) ) # ( \inst1|inst5|inst1|21~q\ & ( !\inst1|inst5|123|sub|87~q\ & ( ((\inst1|inst5|123|sub|9~q\ & 
-- (\inst1|inst5|inst1|19~q\ & \inst1|inst5|inst1|20~q\))) # (\inst1|inst5|123|sub|99~q\) ) ) ) # ( !\inst1|inst5|inst1|21~q\ & ( !\inst1|inst5|123|sub|87~q\ & ( (\inst1|inst5|123|sub|9~q\ & (\inst1|inst5|123|sub|99~q\ & (\inst1|inst5|inst1|19~q\ & 
-- \inst1|inst5|inst1|20~q\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000001001100110011011100000001001100110011011111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|inst5|123|sub|ALT_INV_9~q\,
	datab => \inst1|inst5|123|sub|ALT_INV_99~q\,
	datac => \inst1|inst5|inst1|ALT_INV_19~q\,
	datad => \inst1|inst5|inst1|ALT_INV_20~q\,
	datae => \inst1|inst5|inst1|ALT_INV_21~q\,
	dataf => \inst1|inst5|123|sub|ALT_INV_87~q\,
	combout => \inst1|inst5|131|sub|106~0_combout\);

-- Location: LABCELL_X63_Y11_N42
\inst1|inst5|123|sub|104~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|inst5|123|sub|104~0_combout\ = ( \inst1|inst|Mux30~0_combout\ & ( \inst1|inst|Mux33~1_combout\ & ( (\inst1|inst5|123|sub|99~q\ & (\inst1|inst5|123|sub|9~q\ & (\inst1|inst5|123|sub|87~q\ & !\inst1|inst7|13~q\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|inst5|123|sub|ALT_INV_99~q\,
	datab => \inst1|inst5|123|sub|ALT_INV_9~q\,
	datac => \inst1|inst5|123|sub|ALT_INV_87~q\,
	datad => \inst1|inst7|ALT_INV_13~q\,
	datae => \inst1|inst|ALT_INV_Mux30~0_combout\,
	dataf => \inst1|inst|ALT_INV_Mux33~1_combout\,
	combout => \inst1|inst5|123|sub|104~0_combout\);

-- Location: LABCELL_X62_Y11_N51
\inst1|inst5|123|sub|107\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|inst5|123|sub|107~combout\ = ( \inst1|inst5|123|sub|104~0_combout\ & ( !\inst1|inst5|123|sub|110~q\ ) ) # ( !\inst1|inst5|123|sub|104~0_combout\ & ( \inst1|inst5|123|sub|110~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111111110000111100001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \inst1|inst5|123|sub|ALT_INV_110~q\,
	dataf => \inst1|inst5|123|sub|ALT_INV_104~0_combout\,
	combout => \inst1|inst5|123|sub|107~combout\);

-- Location: LABCELL_X62_Y13_N9
\inst1|inst5|123|sub|110~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|inst5|123|sub|110~feeder_combout\ = ( \inst1|inst5|123|sub|107~combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \inst1|inst5|123|sub|ALT_INV_107~combout\,
	combout => \inst1|inst5|123|sub|110~feeder_combout\);

-- Location: FF_X62_Y13_N11
\inst1|inst5|123|sub|110\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2~q\,
	d => \inst1|inst5|123|sub|110~feeder_combout\,
	asdata => \DATA[3]~input_o\,
	clrn => \nRESET~input_o\,
	sload => \inst1|inst|Mux39~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|inst5|123|sub|110~q\);

-- Location: LABCELL_X61_Y10_N57
\inst1|inst5|131|sub|82\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|inst5|131|sub|82~combout\ = ( \inst1|inst5|123|sub|110~q\ & ( !\inst1|inst5|inst1|22~q\ $ (\inst1|inst5|131|sub|106~0_combout\) ) ) # ( !\inst1|inst5|123|sub|110~q\ & ( !\inst1|inst5|inst1|22~q\ $ (!\inst1|inst5|131|sub|106~0_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101101001011010010110100101101010100101101001011010010110100101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|inst5|inst1|ALT_INV_22~q\,
	datac => \inst1|inst5|131|sub|ALT_INV_106~0_combout\,
	dataf => \inst1|inst5|123|sub|ALT_INV_110~q\,
	combout => \inst1|inst5|131|sub|82~combout\);

-- Location: MLABCELL_X59_Y11_N54
\inst1|inst5|127|sub|104~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|inst5|127|sub|104~0_combout\ = ( \inst1|inst5|127|sub|87~q\ & ( \inst1|inst|Mux33~1_combout\ & ( (\inst1|inst7|13~q\ & (\inst1|inst5|127|sub|99~q\ & (\inst1|inst|Mux30~0_combout\ & \inst1|inst5|127|sub|9~q\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|inst7|ALT_INV_13~q\,
	datab => \inst1|inst5|127|sub|ALT_INV_99~q\,
	datac => \inst1|inst|ALT_INV_Mux30~0_combout\,
	datad => \inst1|inst5|127|sub|ALT_INV_9~q\,
	datae => \inst1|inst5|127|sub|ALT_INV_87~q\,
	dataf => \inst1|inst|ALT_INV_Mux33~1_combout\,
	combout => \inst1|inst5|127|sub|104~0_combout\);

-- Location: LABCELL_X62_Y12_N18
\inst1|inst5|127|sub|107\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|inst5|127|sub|107~combout\ = ( \inst1|inst5|127|sub|110~q\ & ( !\inst1|inst5|127|sub|104~0_combout\ ) ) # ( !\inst1|inst5|127|sub|110~q\ & ( \inst1|inst5|127|sub|104~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111111111111000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \inst1|inst5|127|sub|ALT_INV_104~0_combout\,
	dataf => \inst1|inst5|127|sub|ALT_INV_110~q\,
	combout => \inst1|inst5|127|sub|107~combout\);

-- Location: LABCELL_X62_Y12_N3
\inst1|inst5|127|sub|110~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|inst5|127|sub|110~feeder_combout\ = ( \inst1|inst5|127|sub|107~combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \inst1|inst5|127|sub|ALT_INV_107~combout\,
	combout => \inst1|inst5|127|sub|110~feeder_combout\);

-- Location: FF_X62_Y12_N5
\inst1|inst5|127|sub|110\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2~q\,
	d => \inst1|inst5|127|sub|110~feeder_combout\,
	asdata => \DATA[3]~input_o\,
	clrn => \nRESET~input_o\,
	sload => \inst1|inst|Mux41~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|inst5|127|sub|110~q\);

-- Location: FF_X61_Y12_N11
\inst1|inst5|inst1|57\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2~q\,
	asdata => \DATA[3]~input_o\,
	clrn => \nRESET~input_o\,
	sload => VCC,
	ena => \inst1|inst|Mux45~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|inst5|inst1|57~q\);

-- Location: LABCELL_X61_Y12_N27
\inst1|inst5|140|sub|106~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|inst5|140|sub|106~0_combout\ = ( \inst1|inst5|127|sub|87~q\ & ( \inst1|inst5|127|sub|9~q\ & ( (!\inst1|inst5|inst1|56~q\ & (\inst1|inst5|127|sub|99~q\ & ((\inst1|inst5|inst1|54~q\) # (\inst1|inst5|inst1|55~q\)))) # (\inst1|inst5|inst1|56~q\ & 
-- (((\inst1|inst5|inst1|54~q\) # (\inst1|inst5|inst1|55~q\)) # (\inst1|inst5|127|sub|99~q\))) ) ) ) # ( !\inst1|inst5|127|sub|87~q\ & ( \inst1|inst5|127|sub|9~q\ & ( (!\inst1|inst5|inst1|56~q\ & (\inst1|inst5|127|sub|99~q\ & (\inst1|inst5|inst1|55~q\ & 
-- \inst1|inst5|inst1|54~q\))) # (\inst1|inst5|inst1|56~q\ & (((\inst1|inst5|inst1|55~q\ & \inst1|inst5|inst1|54~q\)) # (\inst1|inst5|127|sub|99~q\))) ) ) ) # ( \inst1|inst5|127|sub|87~q\ & ( !\inst1|inst5|127|sub|9~q\ & ( (!\inst1|inst5|inst1|56~q\ & 
-- (\inst1|inst5|127|sub|99~q\ & \inst1|inst5|inst1|55~q\)) # (\inst1|inst5|inst1|56~q\ & ((\inst1|inst5|inst1|55~q\) # (\inst1|inst5|127|sub|99~q\))) ) ) ) # ( !\inst1|inst5|127|sub|87~q\ & ( !\inst1|inst5|127|sub|9~q\ & ( (\inst1|inst5|inst1|56~q\ & 
-- \inst1|inst5|127|sub|99~q\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000101110001011100010001000101110001011101110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|inst5|inst1|ALT_INV_56~q\,
	datab => \inst1|inst5|127|sub|ALT_INV_99~q\,
	datac => \inst1|inst5|inst1|ALT_INV_55~q\,
	datad => \inst1|inst5|inst1|ALT_INV_54~q\,
	datae => \inst1|inst5|127|sub|ALT_INV_87~q\,
	dataf => \inst1|inst5|127|sub|ALT_INV_9~q\,
	combout => \inst1|inst5|140|sub|106~0_combout\);

-- Location: LABCELL_X60_Y10_N51
\inst1|inst5|140|sub|82\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|inst5|140|sub|82~combout\ = ( \inst1|inst5|140|sub|106~0_combout\ & ( !\inst1|inst5|127|sub|110~q\ $ (\inst1|inst5|inst1|57~q\) ) ) # ( !\inst1|inst5|140|sub|106~0_combout\ & ( !\inst1|inst5|127|sub|110~q\ $ (!\inst1|inst5|inst1|57~q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110011001100110011001100110011010011001100110011001100110011001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|inst5|127|sub|ALT_INV_110~q\,
	datab => \inst1|inst5|inst1|ALT_INV_57~q\,
	dataf => \inst1|inst5|140|sub|ALT_INV_106~0_combout\,
	combout => \inst1|inst5|140|sub|82~combout\);

-- Location: LABCELL_X60_Y10_N57
\inst1|inst5|171|sub|107\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|inst5|171|sub|107~combout\ = ( \inst1|inst5|171|sub|99~q\ & ( !\inst1|inst5|171|sub|106~0_combout\ $ (!\inst1|inst5|171|sub|110~q\) ) ) # ( !\inst1|inst5|171|sub|99~q\ & ( \inst1|inst5|171|sub|110~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111100001111111100000000111111110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \inst1|inst5|171|sub|ALT_INV_106~0_combout\,
	datad => \inst1|inst5|171|sub|ALT_INV_110~q\,
	dataf => \inst1|inst5|171|sub|ALT_INV_99~q\,
	combout => \inst1|inst5|171|sub|107~combout\);

-- Location: LABCELL_X60_Y10_N54
\inst1|inst5|171|sub|110~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|inst5|171|sub|110~feeder_combout\ = \inst1|inst5|171|sub|107~combout\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011001100110011001100110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \inst1|inst5|171|sub|ALT_INV_107~combout\,
	combout => \inst1|inst5|171|sub|110~feeder_combout\);

-- Location: FF_X60_Y10_N56
\inst1|inst5|171|sub|110\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2~q\,
	d => \inst1|inst5|171|sub|110~feeder_combout\,
	asdata => \DATA[3]~input_o\,
	clrn => \nRESET~input_o\,
	sload => \inst1|inst|Mux34~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|inst5|171|sub|110~q\);

-- Location: LABCELL_X57_Y10_N51
\inst1|inst5|158|6~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|inst5|158|6~0_combout\ = ( \inst1|inst5|140|sub|82~combout\ & ( \inst1|inst5|171|sub|110~q\ & ( ((!\inst1|inst|Mux36~0_combout\ & (\inst1|inst5|3|sub|110~q\)) # (\inst1|inst|Mux36~0_combout\ & ((\inst1|inst5|131|sub|82~combout\)))) # 
-- (\inst1|inst|Mux37~0_combout\) ) ) ) # ( !\inst1|inst5|140|sub|82~combout\ & ( \inst1|inst5|171|sub|110~q\ & ( (!\inst1|inst|Mux37~0_combout\ & ((!\inst1|inst|Mux36~0_combout\ & (\inst1|inst5|3|sub|110~q\)) # (\inst1|inst|Mux36~0_combout\ & 
-- ((\inst1|inst5|131|sub|82~combout\))))) # (\inst1|inst|Mux37~0_combout\ & (((!\inst1|inst|Mux36~0_combout\)))) ) ) ) # ( \inst1|inst5|140|sub|82~combout\ & ( !\inst1|inst5|171|sub|110~q\ & ( (!\inst1|inst|Mux37~0_combout\ & ((!\inst1|inst|Mux36~0_combout\ 
-- & (\inst1|inst5|3|sub|110~q\)) # (\inst1|inst|Mux36~0_combout\ & ((\inst1|inst5|131|sub|82~combout\))))) # (\inst1|inst|Mux37~0_combout\ & (((\inst1|inst|Mux36~0_combout\)))) ) ) ) # ( !\inst1|inst5|140|sub|82~combout\ & ( !\inst1|inst5|171|sub|110~q\ & ( 
-- (!\inst1|inst|Mux37~0_combout\ & ((!\inst1|inst|Mux36~0_combout\ & (\inst1|inst5|3|sub|110~q\)) # (\inst1|inst|Mux36~0_combout\ & ((\inst1|inst5|131|sub|82~combout\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010000000101010001001010010111101110000011110100111010101111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|inst|ALT_INV_Mux37~0_combout\,
	datab => \inst1|inst5|3|sub|ALT_INV_110~q\,
	datac => \inst1|inst|ALT_INV_Mux36~0_combout\,
	datad => \inst1|inst5|131|sub|ALT_INV_82~combout\,
	datae => \inst1|inst5|140|sub|ALT_INV_82~combout\,
	dataf => \inst1|inst5|171|sub|ALT_INV_110~q\,
	combout => \inst1|inst5|158|6~0_combout\);

-- Location: LABCELL_X62_Y12_N39
\inst1|inst5|140|sub|107~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|inst5|140|sub|107~0_combout\ = ( \inst1|inst5|127|sub|110~q\ & ( (\inst1|inst5|140|sub|106~0_combout\) # (\inst1|inst5|inst1|57~q\) ) ) # ( !\inst1|inst5|127|sub|110~q\ & ( (\inst1|inst5|inst1|57~q\ & \inst1|inst5|140|sub|106~0_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100000011000000110000001100111111001111110011111100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \inst1|inst5|inst1|ALT_INV_57~q\,
	datac => \inst1|inst5|140|sub|ALT_INV_106~0_combout\,
	dataf => \inst1|inst5|127|sub|ALT_INV_110~q\,
	combout => \inst1|inst5|140|sub|107~0_combout\);

-- Location: FF_X61_Y12_N38
\inst1|inst5|inst1|58\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2~q\,
	asdata => \DATA[4]~input_o\,
	clrn => \nRESET~input_o\,
	sload => VCC,
	ena => \inst1|inst|Mux45~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|inst5|inst1|58~q\);

-- Location: LABCELL_X62_Y12_N6
\inst1|inst5|128|sub|78\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|inst5|128|sub|78~combout\ = ( \inst1|inst5|127|sub|104~0_combout\ & ( !\inst1|inst5|127|sub|110~q\ $ (!\inst1|inst5|128|sub|9~q\) ) ) # ( !\inst1|inst5|127|sub|104~0_combout\ & ( \inst1|inst5|128|sub|9~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100111100001111000011110000111100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \inst1|inst5|127|sub|ALT_INV_110~q\,
	datac => \inst1|inst5|128|sub|ALT_INV_9~q\,
	dataf => \inst1|inst5|127|sub|ALT_INV_104~0_combout\,
	combout => \inst1|inst5|128|sub|78~combout\);

-- Location: LABCELL_X62_Y12_N33
\inst1|inst5|128|sub|9~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|inst5|128|sub|9~feeder_combout\ = \inst1|inst5|128|sub|78~combout\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \inst1|inst5|128|sub|ALT_INV_78~combout\,
	combout => \inst1|inst5|128|sub|9~feeder_combout\);

-- Location: FF_X62_Y12_N35
\inst1|inst5|128|sub|9\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2~q\,
	d => \inst1|inst5|128|sub|9~feeder_combout\,
	asdata => \DATA[4]~input_o\,
	clrn => \nRESET~input_o\,
	sload => \inst1|inst|Mux41~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|inst5|128|sub|9~q\);

-- Location: LABCELL_X62_Y12_N51
\inst1|inst5|141|sub|76\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|inst5|141|sub|76~combout\ = ( \inst1|inst5|128|sub|9~q\ & ( !\inst1|inst5|140|sub|107~0_combout\ $ (\inst1|inst5|inst1|58~q\) ) ) # ( !\inst1|inst5|128|sub|9~q\ & ( !\inst1|inst5|140|sub|107~0_combout\ $ (!\inst1|inst5|inst1|58~q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011110000111100001111000011110011000011110000111100001111000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \inst1|inst5|140|sub|ALT_INV_107~0_combout\,
	datac => \inst1|inst5|inst1|ALT_INV_58~q\,
	dataf => \inst1|inst5|128|sub|ALT_INV_9~q\,
	combout => \inst1|inst5|141|sub|76~combout\);

-- Location: LABCELL_X62_Y11_N9
\inst1|inst5|131|sub|107~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|inst5|131|sub|107~0_combout\ = ( \inst1|inst5|inst1|22~q\ & ( (\inst1|inst5|131|sub|106~0_combout\) # (\inst1|inst5|123|sub|110~q\) ) ) # ( !\inst1|inst5|inst1|22~q\ & ( (\inst1|inst5|123|sub|110~q\ & \inst1|inst5|131|sub|106~0_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000111100001111111111110000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \inst1|inst5|123|sub|ALT_INV_110~q\,
	datad => \inst1|inst5|131|sub|ALT_INV_106~0_combout\,
	dataf => \inst1|inst5|inst1|ALT_INV_22~q\,
	combout => \inst1|inst5|131|sub|107~0_combout\);

-- Location: LABCELL_X63_Y11_N54
\inst1|inst5|124|sub|78\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|inst5|124|sub|78~combout\ = ( \inst1|inst5|124|sub|9~q\ & ( \inst1|inst5|123|sub|104~0_combout\ & ( !\inst1|inst5|123|sub|110~q\ ) ) ) # ( !\inst1|inst5|124|sub|9~q\ & ( \inst1|inst5|123|sub|104~0_combout\ & ( \inst1|inst5|123|sub|110~q\ ) ) ) # ( 
-- \inst1|inst5|124|sub|9~q\ & ( !\inst1|inst5|123|sub|104~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100001111000011111111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \inst1|inst5|123|sub|ALT_INV_110~q\,
	datae => \inst1|inst5|124|sub|ALT_INV_9~q\,
	dataf => \inst1|inst5|123|sub|ALT_INV_104~0_combout\,
	combout => \inst1|inst5|124|sub|78~combout\);

-- Location: LABCELL_X62_Y13_N0
\inst1|inst5|124|sub|9~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|inst5|124|sub|9~feeder_combout\ = \inst1|inst5|124|sub|78~combout\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011001100110011001100110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \inst1|inst5|124|sub|ALT_INV_78~combout\,
	combout => \inst1|inst5|124|sub|9~feeder_combout\);

-- Location: FF_X62_Y13_N2
\inst1|inst5|124|sub|9\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2~q\,
	d => \inst1|inst5|124|sub|9~feeder_combout\,
	asdata => \DATA[4]~input_o\,
	clrn => \nRESET~input_o\,
	sload => \inst1|inst|Mux39~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|inst5|124|sub|9~q\);

-- Location: FF_X62_Y13_N17
\inst1|inst5|inst1|23\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2~q\,
	asdata => \DATA[4]~input_o\,
	clrn => \nRESET~input_o\,
	sload => VCC,
	ena => \inst1|inst|Mux44~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|inst5|inst1|23~q\);

-- Location: LABCELL_X62_Y11_N45
\inst1|inst5|133|sub|76\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|inst5|133|sub|76~combout\ = ( \inst1|inst5|inst1|23~q\ & ( !\inst1|inst5|131|sub|107~0_combout\ $ (\inst1|inst5|124|sub|9~q\) ) ) # ( !\inst1|inst5|inst1|23~q\ & ( !\inst1|inst5|131|sub|107~0_combout\ $ (!\inst1|inst5|124|sub|9~q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011110000111100001111000011110011000011110000111100001111000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \inst1|inst5|131|sub|ALT_INV_107~0_combout\,
	datac => \inst1|inst5|124|sub|ALT_INV_9~q\,
	dataf => \inst1|inst5|inst1|ALT_INV_23~q\,
	combout => \inst1|inst5|133|sub|76~combout\);

-- Location: MLABCELL_X59_Y11_N24
\inst1|inst5|171|sub|104~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|inst5|171|sub|104~0_combout\ = ( \inst1|inst|Mux43~0_combout\ & ( \inst1|inst|Mux41~0_combout\ & ( (\inst1|inst5|171|sub|9~q\ & (\inst1|inst5|171|sub|87~q\ & (\inst1|inst5|171|sub|110~q\ & \inst1|inst5|171|sub|99~q\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|inst5|171|sub|ALT_INV_9~q\,
	datab => \inst1|inst5|171|sub|ALT_INV_87~q\,
	datac => \inst1|inst5|171|sub|ALT_INV_110~q\,
	datad => \inst1|inst5|171|sub|ALT_INV_99~q\,
	datae => \inst1|inst|ALT_INV_Mux43~0_combout\,
	dataf => \inst1|inst|ALT_INV_Mux41~0_combout\,
	combout => \inst1|inst5|171|sub|104~0_combout\);

-- Location: LABCELL_X57_Y10_N30
\inst1|inst5|172|sub|78\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|inst5|172|sub|78~combout\ = ( \inst1|inst5|171|sub|104~0_combout\ & ( !\inst1|inst5|172|sub|9~q\ ) ) # ( !\inst1|inst5|171|sub|104~0_combout\ & ( \inst1|inst5|172|sub|9~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111111100001111000000001111000011111111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \inst1|inst5|172|sub|ALT_INV_9~q\,
	datae => \inst1|inst5|171|sub|ALT_INV_104~0_combout\,
	combout => \inst1|inst5|172|sub|78~combout\);

-- Location: LABCELL_X60_Y10_N39
\inst1|inst5|172|sub|9~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|inst5|172|sub|9~feeder_combout\ = ( \inst1|inst5|172|sub|78~combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \inst1|inst5|172|sub|ALT_INV_78~combout\,
	combout => \inst1|inst5|172|sub|9~feeder_combout\);

-- Location: FF_X60_Y10_N41
\inst1|inst5|172|sub|9\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2~q\,
	d => \inst1|inst5|172|sub|9~feeder_combout\,
	asdata => \DATA[4]~input_o\,
	clrn => \nRESET~input_o\,
	sload => \inst1|inst|Mux34~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|inst5|172|sub|9~q\);

-- Location: LABCELL_X64_Y12_N0
\inst1|inst5|4|sub|78\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|inst5|4|sub|78~combout\ = ( \inst1|inst|Mux23~0_combout\ & ( \inst1|inst5|4|sub|9~q\ & ( (!\inst1|inst5|3|sub|87~q\) # ((!\inst1|inst5|3|sub|110~q\) # ((!\inst1|inst5|3|sub|9~q\) # (!\inst1|inst5|3|sub|99~q\))) ) ) ) # ( 
-- !\inst1|inst|Mux23~0_combout\ & ( \inst1|inst5|4|sub|9~q\ ) ) # ( \inst1|inst|Mux23~0_combout\ & ( !\inst1|inst5|4|sub|9~q\ & ( (\inst1|inst5|3|sub|87~q\ & (\inst1|inst5|3|sub|110~q\ & (\inst1|inst5|3|sub|9~q\ & \inst1|inst5|3|sub|99~q\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000111111111111111111111111111111110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|inst5|3|sub|ALT_INV_87~q\,
	datab => \inst1|inst5|3|sub|ALT_INV_110~q\,
	datac => \inst1|inst5|3|sub|ALT_INV_9~q\,
	datad => \inst1|inst5|3|sub|ALT_INV_99~q\,
	datae => \inst1|inst|ALT_INV_Mux23~0_combout\,
	dataf => \inst1|inst5|4|sub|ALT_INV_9~q\,
	combout => \inst1|inst5|4|sub|78~combout\);

-- Location: LABCELL_X63_Y13_N39
\inst1|inst5|4|sub|9~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|inst5|4|sub|9~feeder_combout\ = \inst1|inst5|4|sub|78~combout\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \inst1|inst5|4|sub|ALT_INV_78~combout\,
	combout => \inst1|inst5|4|sub|9~feeder_combout\);

-- Location: FF_X63_Y13_N41
\inst1|inst5|4|sub|9\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2~q\,
	d => \inst1|inst5|4|sub|9~feeder_combout\,
	asdata => \DATA[4]~input_o\,
	clrn => \nRESET~input_o\,
	sload => \inst1|inst|Mux46~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|inst5|4|sub|9~q\);

-- Location: LABCELL_X62_Y11_N12
\inst1|inst5|159|6~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|inst5|159|6~0_combout\ = ( \inst1|inst5|4|sub|9~q\ & ( \inst1|inst|Mux37~0_combout\ & ( (!\inst1|inst|Mux36~0_combout\ & ((\inst1|inst5|172|sub|9~q\))) # (\inst1|inst|Mux36~0_combout\ & (\inst1|inst5|141|sub|76~combout\)) ) ) ) # ( 
-- !\inst1|inst5|4|sub|9~q\ & ( \inst1|inst|Mux37~0_combout\ & ( (!\inst1|inst|Mux36~0_combout\ & ((\inst1|inst5|172|sub|9~q\))) # (\inst1|inst|Mux36~0_combout\ & (\inst1|inst5|141|sub|76~combout\)) ) ) ) # ( \inst1|inst5|4|sub|9~q\ & ( 
-- !\inst1|inst|Mux37~0_combout\ & ( (!\inst1|inst|Mux36~0_combout\) # (\inst1|inst5|133|sub|76~combout\) ) ) ) # ( !\inst1|inst5|4|sub|9~q\ & ( !\inst1|inst|Mux37~0_combout\ & ( (\inst1|inst5|133|sub|76~combout\ & \inst1|inst|Mux36~0_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100000011111100111111001100000101111101010000010111110101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|inst5|141|sub|ALT_INV_76~combout\,
	datab => \inst1|inst5|133|sub|ALT_INV_76~combout\,
	datac => \inst1|inst|ALT_INV_Mux36~0_combout\,
	datad => \inst1|inst5|172|sub|ALT_INV_9~q\,
	datae => \inst1|inst5|4|sub|ALT_INV_9~q\,
	dataf => \inst1|inst|ALT_INV_Mux37~0_combout\,
	combout => \inst1|inst5|159|6~0_combout\);

-- Location: LABCELL_X63_Y13_N48
\inst1|inst5|4|sub|106~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|inst5|4|sub|106~0_combout\ = ( \inst1|inst5|3|sub|87~q\ & ( \inst1|inst|Mux23~0_combout\ & ( (\inst1|inst5|3|sub|110~q\ & (\inst1|inst5|3|sub|9~q\ & (\inst1|inst5|3|sub|99~q\ & \inst1|inst5|4|sub|9~q\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|inst5|3|sub|ALT_INV_110~q\,
	datab => \inst1|inst5|3|sub|ALT_INV_9~q\,
	datac => \inst1|inst5|3|sub|ALT_INV_99~q\,
	datad => \inst1|inst5|4|sub|ALT_INV_9~q\,
	datae => \inst1|inst5|3|sub|ALT_INV_87~q\,
	dataf => \inst1|inst|ALT_INV_Mux23~0_combout\,
	combout => \inst1|inst5|4|sub|106~0_combout\);

-- Location: LABCELL_X57_Y13_N42
\inst1|inst5|4|sub|90\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|inst5|4|sub|90~combout\ = ( \inst1|inst5|4|sub|87~q\ & ( !\inst1|inst5|4|sub|106~0_combout\ ) ) # ( !\inst1|inst5|4|sub|87~q\ & ( \inst1|inst5|4|sub|106~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111111110000111100001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \inst1|inst5|4|sub|ALT_INV_106~0_combout\,
	dataf => \inst1|inst5|4|sub|ALT_INV_87~q\,
	combout => \inst1|inst5|4|sub|90~combout\);

-- Location: LABCELL_X57_Y13_N39
\inst1|inst5|4|sub|87~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|inst5|4|sub|87~feeder_combout\ = ( \inst1|inst5|4|sub|90~combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \inst1|inst5|4|sub|ALT_INV_90~combout\,
	combout => \inst1|inst5|4|sub|87~feeder_combout\);

-- Location: FF_X57_Y13_N41
\inst1|inst5|4|sub|87\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2~q\,
	d => \inst1|inst5|4|sub|87~feeder_combout\,
	asdata => \DATA[5]~input_o\,
	clrn => \nRESET~input_o\,
	sload => \inst1|inst|Mux46~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|inst5|4|sub|87~q\);

-- Location: FF_X62_Y13_N38
\inst1|inst5|inst1|24\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2~q\,
	asdata => \DATA[5]~input_o\,
	clrn => \nRESET~input_o\,
	sload => VCC,
	ena => \inst1|inst|Mux44~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|inst5|inst1|24~q\);

-- Location: LABCELL_X63_Y11_N24
\inst1|inst5|124|sub|90\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|inst5|124|sub|90~combout\ = ( \inst1|inst5|124|sub|9~q\ & ( \inst1|inst5|123|sub|104~0_combout\ & ( !\inst1|inst5|124|sub|87~q\ $ (!\inst1|inst5|123|sub|110~q\) ) ) ) # ( !\inst1|inst5|124|sub|9~q\ & ( \inst1|inst5|123|sub|104~0_combout\ & ( 
-- \inst1|inst5|124|sub|87~q\ ) ) ) # ( \inst1|inst5|124|sub|9~q\ & ( !\inst1|inst5|123|sub|104~0_combout\ & ( \inst1|inst5|124|sub|87~q\ ) ) ) # ( !\inst1|inst5|124|sub|9~q\ & ( !\inst1|inst5|123|sub|104~0_combout\ & ( \inst1|inst5|124|sub|87~q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011001100110011001100110011001100110011110000111100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \inst1|inst5|124|sub|ALT_INV_87~q\,
	datac => \inst1|inst5|123|sub|ALT_INV_110~q\,
	datae => \inst1|inst5|124|sub|ALT_INV_9~q\,
	dataf => \inst1|inst5|123|sub|ALT_INV_104~0_combout\,
	combout => \inst1|inst5|124|sub|90~combout\);

-- Location: LABCELL_X62_Y13_N51
\inst1|inst5|124|sub|87~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|inst5|124|sub|87~feeder_combout\ = ( \inst1|inst5|124|sub|90~combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \inst1|inst5|124|sub|ALT_INV_90~combout\,
	combout => \inst1|inst5|124|sub|87~feeder_combout\);

-- Location: FF_X62_Y13_N53
\inst1|inst5|124|sub|87\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2~q\,
	d => \inst1|inst5|124|sub|87~feeder_combout\,
	asdata => \DATA[5]~input_o\,
	clrn => \nRESET~input_o\,
	sload => \inst1|inst|Mux39~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|inst5|124|sub|87~q\);

-- Location: LABCELL_X62_Y11_N6
\inst1|inst5|133|sub|78\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|inst5|133|sub|78~combout\ = ( \inst1|inst5|inst1|23~q\ & ( !\inst1|inst5|inst1|24~q\ $ (!\inst1|inst5|124|sub|87~q\ $ (((\inst1|inst5|124|sub|9~q\) # (\inst1|inst5|131|sub|107~0_combout\)))) ) ) # ( !\inst1|inst5|inst1|23~q\ & ( 
-- !\inst1|inst5|inst1|24~q\ $ (!\inst1|inst5|124|sub|87~q\ $ (((\inst1|inst5|131|sub|107~0_combout\ & \inst1|inst5|124|sub|9~q\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101101001101001010110100110100101101001101001010110100110100101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|inst5|inst1|ALT_INV_24~q\,
	datab => \inst1|inst5|131|sub|ALT_INV_107~0_combout\,
	datac => \inst1|inst5|124|sub|ALT_INV_87~q\,
	datad => \inst1|inst5|124|sub|ALT_INV_9~q\,
	dataf => \inst1|inst5|inst1|ALT_INV_23~q\,
	combout => \inst1|inst5|133|sub|78~combout\);

-- Location: LABCELL_X57_Y10_N0
\inst1|inst5|172|sub|90\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|inst5|172|sub|90~combout\ = ( \inst1|inst5|171|sub|104~0_combout\ & ( !\inst1|inst5|172|sub|87~q\ $ (!\inst1|inst5|172|sub|9~q\) ) ) # ( !\inst1|inst5|171|sub|104~0_combout\ & ( \inst1|inst5|172|sub|87~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011001111000011110000110011001100110011110000111100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \inst1|inst5|172|sub|ALT_INV_87~q\,
	datac => \inst1|inst5|172|sub|ALT_INV_9~q\,
	datae => \inst1|inst5|171|sub|ALT_INV_104~0_combout\,
	combout => \inst1|inst5|172|sub|90~combout\);

-- Location: LABCELL_X60_Y10_N36
\inst1|inst5|172|sub|87~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|inst5|172|sub|87~feeder_combout\ = ( \inst1|inst5|172|sub|90~combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \inst1|inst5|172|sub|ALT_INV_90~combout\,
	combout => \inst1|inst5|172|sub|87~feeder_combout\);

-- Location: FF_X60_Y10_N38
\inst1|inst5|172|sub|87\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2~q\,
	d => \inst1|inst5|172|sub|87~feeder_combout\,
	asdata => \DATA[5]~input_o\,
	clrn => \nRESET~input_o\,
	sload => \inst1|inst|Mux34~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|inst5|172|sub|87~q\);

-- Location: FF_X61_Y12_N41
\inst1|inst5|inst1|59\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2~q\,
	asdata => \DATA[5]~input_o\,
	clrn => \nRESET~input_o\,
	sload => VCC,
	ena => \inst1|inst|Mux45~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|inst5|inst1|59~q\);

-- Location: LABCELL_X62_Y10_N51
\inst1|inst5|128|sub|90\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|inst5|128|sub|90~combout\ = ( \inst1|inst5|127|sub|104~0_combout\ & ( !\inst1|inst5|128|sub|87~q\ $ (((!\inst1|inst5|128|sub|9~q\) # (!\inst1|inst5|127|sub|110~q\))) ) ) # ( !\inst1|inst5|127|sub|104~0_combout\ & ( \inst1|inst5|128|sub|87~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100001111001111000000111100111100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \inst1|inst5|128|sub|ALT_INV_9~q\,
	datac => \inst1|inst5|128|sub|ALT_INV_87~q\,
	datad => \inst1|inst5|127|sub|ALT_INV_110~q\,
	dataf => \inst1|inst5|127|sub|ALT_INV_104~0_combout\,
	combout => \inst1|inst5|128|sub|90~combout\);

-- Location: LABCELL_X62_Y12_N36
\inst1|inst5|128|sub|87~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|inst5|128|sub|87~feeder_combout\ = ( \inst1|inst5|128|sub|90~combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \inst1|inst5|128|sub|ALT_INV_90~combout\,
	combout => \inst1|inst5|128|sub|87~feeder_combout\);

-- Location: FF_X62_Y12_N38
\inst1|inst5|128|sub|87\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2~q\,
	d => \inst1|inst5|128|sub|87~feeder_combout\,
	asdata => \DATA[5]~input_o\,
	clrn => \nRESET~input_o\,
	sload => \inst1|inst|Mux41~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|inst5|128|sub|87~q\);

-- Location: LABCELL_X62_Y12_N24
\inst1|inst5|141|sub|78\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|inst5|141|sub|78~combout\ = ( \inst1|inst5|128|sub|87~q\ & ( !\inst1|inst5|inst1|59~q\ $ (((!\inst1|inst5|inst1|58~q\ & (\inst1|inst5|140|sub|107~0_combout\ & \inst1|inst5|128|sub|9~q\)) # (\inst1|inst5|inst1|58~q\ & ((\inst1|inst5|128|sub|9~q\) # 
-- (\inst1|inst5|140|sub|107~0_combout\))))) ) ) # ( !\inst1|inst5|128|sub|87~q\ & ( !\inst1|inst5|inst1|59~q\ $ (((!\inst1|inst5|inst1|58~q\ & ((!\inst1|inst5|140|sub|107~0_combout\) # (!\inst1|inst5|128|sub|9~q\))) # (\inst1|inst5|inst1|58~q\ & 
-- (!\inst1|inst5|140|sub|107~0_combout\ & !\inst1|inst5|128|sub|9~q\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001111001111000000111100111100011100001100001111110000110000111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|inst5|inst1|ALT_INV_58~q\,
	datab => \inst1|inst5|140|sub|ALT_INV_107~0_combout\,
	datac => \inst1|inst5|inst1|ALT_INV_59~q\,
	datad => \inst1|inst5|128|sub|ALT_INV_9~q\,
	dataf => \inst1|inst5|128|sub|ALT_INV_87~q\,
	combout => \inst1|inst5|141|sub|78~combout\);

-- Location: LABCELL_X62_Y11_N33
\inst1|inst5|160|6~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|inst5|160|6~0_combout\ = ( \inst1|inst|Mux36~0_combout\ & ( \inst1|inst|Mux37~0_combout\ & ( \inst1|inst5|141|sub|78~combout\ ) ) ) # ( !\inst1|inst|Mux36~0_combout\ & ( \inst1|inst|Mux37~0_combout\ & ( \inst1|inst5|172|sub|87~q\ ) ) ) # ( 
-- \inst1|inst|Mux36~0_combout\ & ( !\inst1|inst|Mux37~0_combout\ & ( \inst1|inst5|133|sub|78~combout\ ) ) ) # ( !\inst1|inst|Mux36~0_combout\ & ( !\inst1|inst|Mux37~0_combout\ & ( \inst1|inst5|4|sub|87~q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|inst5|4|sub|ALT_INV_87~q\,
	datab => \inst1|inst5|133|sub|ALT_INV_78~combout\,
	datac => \inst1|inst5|172|sub|ALT_INV_87~q\,
	datad => \inst1|inst5|141|sub|ALT_INV_78~combout\,
	datae => \inst1|inst|ALT_INV_Mux36~0_combout\,
	dataf => \inst1|inst|ALT_INV_Mux37~0_combout\,
	combout => \inst1|inst5|160|6~0_combout\);

-- Location: LABCELL_X57_Y10_N45
\inst1|inst5|172|sub|97\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|inst5|172|sub|97~combout\ = ( \inst1|inst5|171|sub|104~0_combout\ & ( !\inst1|inst5|172|sub|99~q\ $ (((!\inst1|inst5|172|sub|9~q\) # (!\inst1|inst5|172|sub|87~q\))) ) ) # ( !\inst1|inst5|171|sub|104~0_combout\ & ( \inst1|inst5|172|sub|99~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000111100001111000001111000011110001111000011110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|inst5|172|sub|ALT_INV_9~q\,
	datab => \inst1|inst5|172|sub|ALT_INV_87~q\,
	datac => \inst1|inst5|172|sub|ALT_INV_99~q\,
	datae => \inst1|inst5|171|sub|ALT_INV_104~0_combout\,
	combout => \inst1|inst5|172|sub|97~combout\);

-- Location: LABCELL_X60_Y10_N9
\inst1|inst5|172|sub|99~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|inst5|172|sub|99~feeder_combout\ = ( \inst1|inst5|172|sub|97~combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \inst1|inst5|172|sub|ALT_INV_97~combout\,
	combout => \inst1|inst5|172|sub|99~feeder_combout\);

-- Location: FF_X60_Y10_N11
\inst1|inst5|172|sub|99\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2~q\,
	d => \inst1|inst5|172|sub|99~feeder_combout\,
	asdata => \DATA[6]~input_o\,
	clrn => \nRESET~input_o\,
	sload => \inst1|inst|Mux34~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|inst5|172|sub|99~q\);

-- Location: FF_X62_Y13_N41
\inst1|inst5|inst1|28\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2~q\,
	asdata => \DATA[6]~input_o\,
	clrn => \nRESET~input_o\,
	sload => VCC,
	ena => \inst1|inst|Mux44~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|inst5|inst1|28~q\);

-- Location: LABCELL_X63_Y11_N21
\inst1|inst5|124|sub|97\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|inst5|124|sub|97~combout\ = ( \inst1|inst5|124|sub|9~q\ & ( \inst1|inst5|123|sub|104~0_combout\ & ( !\inst1|inst5|124|sub|99~q\ $ (((!\inst1|inst5|124|sub|87~q\) # (!\inst1|inst5|123|sub|110~q\))) ) ) ) # ( !\inst1|inst5|124|sub|9~q\ & ( 
-- \inst1|inst5|123|sub|104~0_combout\ & ( \inst1|inst5|124|sub|99~q\ ) ) ) # ( \inst1|inst5|124|sub|9~q\ & ( !\inst1|inst5|123|sub|104~0_combout\ & ( \inst1|inst5|124|sub|99~q\ ) ) ) # ( !\inst1|inst5|124|sub|9~q\ & ( !\inst1|inst5|123|sub|104~0_combout\ & 
-- ( \inst1|inst5|124|sub|99~q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101010101010101010101010101010101010101010101100110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|inst5|124|sub|ALT_INV_99~q\,
	datab => \inst1|inst5|124|sub|ALT_INV_87~q\,
	datad => \inst1|inst5|123|sub|ALT_INV_110~q\,
	datae => \inst1|inst5|124|sub|ALT_INV_9~q\,
	dataf => \inst1|inst5|123|sub|ALT_INV_104~0_combout\,
	combout => \inst1|inst5|124|sub|97~combout\);

-- Location: LABCELL_X62_Y13_N3
\inst1|inst5|124|sub|99~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|inst5|124|sub|99~feeder_combout\ = ( \inst1|inst5|124|sub|97~combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \inst1|inst5|124|sub|ALT_INV_97~combout\,
	combout => \inst1|inst5|124|sub|99~feeder_combout\);

-- Location: FF_X62_Y13_N5
\inst1|inst5|124|sub|99\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2~q\,
	d => \inst1|inst5|124|sub|99~feeder_combout\,
	asdata => \DATA[6]~input_o\,
	clrn => \nRESET~input_o\,
	sload => \inst1|inst|Mux39~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|inst5|124|sub|99~q\);

-- Location: LABCELL_X62_Y13_N54
\inst1|inst5|133|sub|97\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|inst5|133|sub|97~combout\ = ( \inst1|inst5|124|sub|87~q\ & ( \inst1|inst5|inst1|24~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \inst1|inst5|inst1|ALT_INV_24~q\,
	dataf => \inst1|inst5|124|sub|ALT_INV_87~q\,
	combout => \inst1|inst5|133|sub|97~combout\);

-- Location: LABCELL_X62_Y13_N45
\inst1|inst5|133|sub|105~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|inst5|133|sub|105~0_combout\ = ( !\inst1|inst5|inst1|24~q\ & ( !\inst1|inst5|124|sub|87~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000011110000111100001111000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \inst1|inst5|124|sub|ALT_INV_87~q\,
	dataf => \inst1|inst5|inst1|ALT_INV_24~q\,
	combout => \inst1|inst5|133|sub|105~0_combout\);

-- Location: LABCELL_X62_Y13_N30
\inst1|inst5|133|sub|105~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|inst5|133|sub|105~1_combout\ = ( \inst1|inst5|inst1|23~q\ & ( \inst1|inst5|131|sub|106~0_combout\ & ( (!\inst1|inst5|133|sub|105~0_combout\ & (((\inst1|inst5|123|sub|110~q\) # (\inst1|inst5|inst1|22~q\)) # (\inst1|inst5|124|sub|9~q\))) ) ) ) # ( 
-- !\inst1|inst5|inst1|23~q\ & ( \inst1|inst5|131|sub|106~0_combout\ & ( (\inst1|inst5|124|sub|9~q\ & (!\inst1|inst5|133|sub|105~0_combout\ & ((\inst1|inst5|123|sub|110~q\) # (\inst1|inst5|inst1|22~q\)))) ) ) ) # ( \inst1|inst5|inst1|23~q\ & ( 
-- !\inst1|inst5|131|sub|106~0_combout\ & ( (!\inst1|inst5|133|sub|105~0_combout\ & (((\inst1|inst5|inst1|22~q\ & \inst1|inst5|123|sub|110~q\)) # (\inst1|inst5|124|sub|9~q\))) ) ) ) # ( !\inst1|inst5|inst1|23~q\ & ( !\inst1|inst5|131|sub|106~0_combout\ & ( 
-- (\inst1|inst5|124|sub|9~q\ & (\inst1|inst5|inst1|22~q\ & (\inst1|inst5|123|sub|110~q\ & !\inst1|inst5|133|sub|105~0_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100000000010101110000000000010101000000000111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|inst5|124|sub|ALT_INV_9~q\,
	datab => \inst1|inst5|inst1|ALT_INV_22~q\,
	datac => \inst1|inst5|123|sub|ALT_INV_110~q\,
	datad => \inst1|inst5|133|sub|ALT_INV_105~0_combout\,
	datae => \inst1|inst5|inst1|ALT_INV_23~q\,
	dataf => \inst1|inst5|131|sub|ALT_INV_106~0_combout\,
	combout => \inst1|inst5|133|sub|105~1_combout\);

-- Location: LABCELL_X63_Y12_N42
\inst1|inst5|133|sub|105~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|inst5|133|sub|105~2_combout\ = ( !\inst1|inst5|133|sub|105~1_combout\ & ( !\inst1|inst5|133|sub|97~combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101010101010101010101010101000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|inst5|133|sub|ALT_INV_97~combout\,
	dataf => \inst1|inst5|133|sub|ALT_INV_105~1_combout\,
	combout => \inst1|inst5|133|sub|105~2_combout\);

-- Location: LABCELL_X64_Y12_N9
\inst1|inst5|133|sub|80\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|inst5|133|sub|80~combout\ = !\inst1|inst5|inst1|28~q\ $ (!\inst1|inst5|124|sub|99~q\ $ (!\inst1|inst5|133|sub|105~2_combout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1001011010010110100101101001011010010110100101101001011010010110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|inst5|inst1|ALT_INV_28~q\,
	datab => \inst1|inst5|124|sub|ALT_INV_99~q\,
	datac => \inst1|inst5|133|sub|ALT_INV_105~2_combout\,
	combout => \inst1|inst5|133|sub|80~combout\);

-- Location: LABCELL_X64_Y13_N48
\inst1|inst5|4|sub|97\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|inst5|4|sub|97~combout\ = ( \inst1|inst5|4|sub|106~0_combout\ & ( \inst1|inst5|4|sub|99~q\ & ( !\inst1|inst5|4|sub|87~q\ ) ) ) # ( !\inst1|inst5|4|sub|106~0_combout\ & ( \inst1|inst5|4|sub|99~q\ ) ) # ( \inst1|inst5|4|sub|106~0_combout\ & ( 
-- !\inst1|inst5|4|sub|99~q\ & ( \inst1|inst5|4|sub|87~q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000011110000111111111111111111111111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \inst1|inst5|4|sub|ALT_INV_87~q\,
	datae => \inst1|inst5|4|sub|ALT_INV_106~0_combout\,
	dataf => \inst1|inst5|4|sub|ALT_INV_99~q\,
	combout => \inst1|inst5|4|sub|97~combout\);

-- Location: LABCELL_X64_Y13_N30
\inst1|inst5|4|sub|99~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|inst5|4|sub|99~feeder_combout\ = \inst1|inst5|4|sub|97~combout\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \inst1|inst5|4|sub|ALT_INV_97~combout\,
	combout => \inst1|inst5|4|sub|99~feeder_combout\);

-- Location: FF_X64_Y13_N32
\inst1|inst5|4|sub|99\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2~q\,
	d => \inst1|inst5|4|sub|99~feeder_combout\,
	asdata => \DATA[6]~input_o\,
	clrn => \nRESET~input_o\,
	sload => \inst1|inst|Mux46~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|inst5|4|sub|99~q\);

-- Location: LABCELL_X62_Y12_N12
\inst1|inst5|128|sub|97\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|inst5|128|sub|97~combout\ = ( \inst1|inst5|127|sub|104~0_combout\ & ( !\inst1|inst5|128|sub|99~q\ $ (((!\inst1|inst5|127|sub|110~q\) # ((!\inst1|inst5|128|sub|9~q\) # (!\inst1|inst5|128|sub|87~q\)))) ) ) # ( !\inst1|inst5|127|sub|104~0_combout\ & ( 
-- \inst1|inst5|128|sub|99~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111100000001111111100000000111111110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|inst5|127|sub|ALT_INV_110~q\,
	datab => \inst1|inst5|128|sub|ALT_INV_9~q\,
	datac => \inst1|inst5|128|sub|ALT_INV_87~q\,
	datad => \inst1|inst5|128|sub|ALT_INV_99~q\,
	dataf => \inst1|inst5|127|sub|ALT_INV_104~0_combout\,
	combout => \inst1|inst5|128|sub|97~combout\);

-- Location: LABCELL_X62_Y12_N21
\inst1|inst5|128|sub|99~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|inst5|128|sub|99~feeder_combout\ = \inst1|inst5|128|sub|97~combout\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \inst1|inst5|128|sub|ALT_INV_97~combout\,
	combout => \inst1|inst5|128|sub|99~feeder_combout\);

-- Location: FF_X62_Y12_N23
\inst1|inst5|128|sub|99\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2~q\,
	d => \inst1|inst5|128|sub|99~feeder_combout\,
	asdata => \DATA[6]~input_o\,
	clrn => \nRESET~input_o\,
	sload => \inst1|inst|Mux41~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|inst5|128|sub|99~q\);

-- Location: FF_X61_Y12_N59
\inst1|inst5|inst1|60\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2~q\,
	asdata => \DATA[6]~input_o\,
	clrn => \nRESET~input_o\,
	sload => VCC,
	ena => \inst1|inst|Mux45~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|inst5|inst1|60~q\);

-- Location: LABCELL_X61_Y12_N15
\inst1|inst5|141|sub|105~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|inst5|141|sub|105~0_combout\ = ( !\inst1|inst5|128|sub|87~q\ & ( !\inst1|inst5|inst1|59~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000011110000111100001111000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \inst1|inst5|inst1|ALT_INV_59~q\,
	dataf => \inst1|inst5|128|sub|ALT_INV_87~q\,
	combout => \inst1|inst5|141|sub|105~0_combout\);

-- Location: LABCELL_X61_Y12_N6
\inst1|inst5|141|sub|105~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|inst5|141|sub|105~1_combout\ = ( \inst1|inst5|140|sub|106~0_combout\ & ( !\inst1|inst5|141|sub|105~0_combout\ & ( (!\inst1|inst5|128|sub|9~q\ & (\inst1|inst5|inst1|58~q\ & ((\inst1|inst5|inst1|57~q\) # (\inst1|inst5|127|sub|110~q\)))) # 
-- (\inst1|inst5|128|sub|9~q\ & (((\inst1|inst5|inst1|57~q\) # (\inst1|inst5|inst1|58~q\)) # (\inst1|inst5|127|sub|110~q\))) ) ) ) # ( !\inst1|inst5|140|sub|106~0_combout\ & ( !\inst1|inst5|141|sub|105~0_combout\ & ( (!\inst1|inst5|128|sub|9~q\ & 
-- (\inst1|inst5|127|sub|110~q\ & (\inst1|inst5|inst1|58~q\ & \inst1|inst5|inst1|57~q\))) # (\inst1|inst5|128|sub|9~q\ & (((\inst1|inst5|127|sub|110~q\ & \inst1|inst5|inst1|57~q\)) # (\inst1|inst5|inst1|58~q\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100010111000101110011111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|inst5|127|sub|ALT_INV_110~q\,
	datab => \inst1|inst5|128|sub|ALT_INV_9~q\,
	datac => \inst1|inst5|inst1|ALT_INV_58~q\,
	datad => \inst1|inst5|inst1|ALT_INV_57~q\,
	datae => \inst1|inst5|140|sub|ALT_INV_106~0_combout\,
	dataf => \inst1|inst5|141|sub|ALT_INV_105~0_combout\,
	combout => \inst1|inst5|141|sub|105~1_combout\);

-- Location: LABCELL_X61_Y12_N54
\inst1|inst5|141|sub|97\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|inst5|141|sub|97~combout\ = (\inst1|inst5|inst1|59~q\ & \inst1|inst5|128|sub|87~q\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000111100000000000011110000000000001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \inst1|inst5|inst1|ALT_INV_59~q\,
	datad => \inst1|inst5|128|sub|ALT_INV_87~q\,
	combout => \inst1|inst5|141|sub|97~combout\);

-- Location: LABCELL_X64_Y12_N48
\inst1|inst5|141|sub|105~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|inst5|141|sub|105~2_combout\ = ( !\inst1|inst5|141|sub|97~combout\ & ( !\inst1|inst5|141|sub|105~1_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100110011001100110011001100110000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \inst1|inst5|141|sub|ALT_INV_105~1_combout\,
	dataf => \inst1|inst5|141|sub|ALT_INV_97~combout\,
	combout => \inst1|inst5|141|sub|105~2_combout\);

-- Location: LABCELL_X64_Y12_N36
\inst1|inst5|141|sub|80\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|inst5|141|sub|80~combout\ = ( \inst1|inst5|141|sub|105~2_combout\ & ( !\inst1|inst5|128|sub|99~q\ $ (!\inst1|inst5|inst1|60~q\) ) ) # ( !\inst1|inst5|141|sub|105~2_combout\ & ( !\inst1|inst5|128|sub|99~q\ $ (\inst1|inst5|inst1|60~q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1001100110011001100110011001100101100110011001100110011001100110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|inst5|128|sub|ALT_INV_99~q\,
	datab => \inst1|inst5|inst1|ALT_INV_60~q\,
	dataf => \inst1|inst5|141|sub|ALT_INV_105~2_combout\,
	combout => \inst1|inst5|141|sub|80~combout\);

-- Location: LABCELL_X64_Y12_N18
\inst1|inst5|161|6~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|inst5|161|6~0_combout\ = ( \inst1|inst5|4|sub|99~q\ & ( \inst1|inst5|141|sub|80~combout\ & ( (!\inst1|inst|Mux36~0_combout\ & (((!\inst1|inst|Mux37~0_combout\)) # (\inst1|inst5|172|sub|99~q\))) # (\inst1|inst|Mux36~0_combout\ & 
-- (((\inst1|inst|Mux37~0_combout\) # (\inst1|inst5|133|sub|80~combout\)))) ) ) ) # ( !\inst1|inst5|4|sub|99~q\ & ( \inst1|inst5|141|sub|80~combout\ & ( (!\inst1|inst|Mux36~0_combout\ & (\inst1|inst5|172|sub|99~q\ & ((\inst1|inst|Mux37~0_combout\)))) # 
-- (\inst1|inst|Mux36~0_combout\ & (((\inst1|inst|Mux37~0_combout\) # (\inst1|inst5|133|sub|80~combout\)))) ) ) ) # ( \inst1|inst5|4|sub|99~q\ & ( !\inst1|inst5|141|sub|80~combout\ & ( (!\inst1|inst|Mux36~0_combout\ & (((!\inst1|inst|Mux37~0_combout\)) # 
-- (\inst1|inst5|172|sub|99~q\))) # (\inst1|inst|Mux36~0_combout\ & (((\inst1|inst5|133|sub|80~combout\ & !\inst1|inst|Mux37~0_combout\)))) ) ) ) # ( !\inst1|inst5|4|sub|99~q\ & ( !\inst1|inst5|141|sub|80~combout\ & ( (!\inst1|inst|Mux36~0_combout\ & 
-- (\inst1|inst5|172|sub|99~q\ & ((\inst1|inst|Mux37~0_combout\)))) # (\inst1|inst|Mux36~0_combout\ & (((\inst1|inst5|133|sub|80~combout\ & !\inst1|inst|Mux37~0_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001101010000111100110101000000000011010111111111001101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|inst5|172|sub|ALT_INV_99~q\,
	datab => \inst1|inst5|133|sub|ALT_INV_80~combout\,
	datac => \inst1|inst|ALT_INV_Mux36~0_combout\,
	datad => \inst1|inst|ALT_INV_Mux37~0_combout\,
	datae => \inst1|inst5|4|sub|ALT_INV_99~q\,
	dataf => \inst1|inst5|141|sub|ALT_INV_80~combout\,
	combout => \inst1|inst5|161|6~0_combout\);

-- Location: FF_X61_Y12_N17
\inst1|inst5|inst1|61\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2~q\,
	asdata => \DATA[7]~input_o\,
	clrn => \nRESET~input_o\,
	sload => VCC,
	ena => \inst1|inst|Mux45~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|inst5|inst1|61~q\);

-- Location: LABCELL_X62_Y10_N18
\inst1|inst5|128|sub|107\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|inst5|128|sub|107~combout\ = ( \inst1|inst5|127|sub|110~q\ & ( \inst1|inst5|127|sub|104~0_combout\ & ( !\inst1|inst5|128|sub|110~q\ $ (((!\inst1|inst5|128|sub|87~q\) # ((!\inst1|inst5|128|sub|9~q\) # (!\inst1|inst5|128|sub|99~q\)))) ) ) ) # ( 
-- !\inst1|inst5|127|sub|110~q\ & ( \inst1|inst5|127|sub|104~0_combout\ & ( \inst1|inst5|128|sub|110~q\ ) ) ) # ( \inst1|inst5|127|sub|110~q\ & ( !\inst1|inst5|127|sub|104~0_combout\ & ( \inst1|inst5|128|sub|110~q\ ) ) ) # ( !\inst1|inst5|127|sub|110~q\ & ( 
-- !\inst1|inst5|127|sub|104~0_combout\ & ( \inst1|inst5|128|sub|110~q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101010101010101010101010101010101010101010101010110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|inst5|128|sub|ALT_INV_110~q\,
	datab => \inst1|inst5|128|sub|ALT_INV_87~q\,
	datac => \inst1|inst5|128|sub|ALT_INV_9~q\,
	datad => \inst1|inst5|128|sub|ALT_INV_99~q\,
	datae => \inst1|inst5|127|sub|ALT_INV_110~q\,
	dataf => \inst1|inst5|127|sub|ALT_INV_104~0_combout\,
	combout => \inst1|inst5|128|sub|107~combout\);

-- Location: LABCELL_X62_Y12_N48
\inst1|inst5|128|sub|110~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|inst5|128|sub|110~feeder_combout\ = ( \inst1|inst5|128|sub|107~combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \inst1|inst5|128|sub|ALT_INV_107~combout\,
	combout => \inst1|inst5|128|sub|110~feeder_combout\);

-- Location: FF_X62_Y12_N50
\inst1|inst5|128|sub|110\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2~q\,
	d => \inst1|inst5|128|sub|110~feeder_combout\,
	asdata => \DATA[7]~input_o\,
	clrn => \nRESET~input_o\,
	sload => \inst1|inst|Mux41~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|inst5|128|sub|110~q\);

-- Location: LABCELL_X64_Y12_N57
\inst1|inst5|141|sub|82\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|inst5|141|sub|82~combout\ = ( \inst1|inst5|141|sub|105~2_combout\ & ( !\inst1|inst5|inst1|61~q\ $ (!\inst1|inst5|128|sub|110~q\ $ (((\inst1|inst5|inst1|60~q\ & \inst1|inst5|128|sub|99~q\)))) ) ) # ( !\inst1|inst5|141|sub|105~2_combout\ & ( 
-- !\inst1|inst5|inst1|61~q\ $ (!\inst1|inst5|128|sub|110~q\ $ (((\inst1|inst5|128|sub|99~q\) # (\inst1|inst5|inst1|60~q\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110100110011001011010011001100101100110011010010110011001101001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|inst5|inst1|ALT_INV_61~q\,
	datab => \inst1|inst5|128|sub|ALT_INV_110~q\,
	datac => \inst1|inst5|inst1|ALT_INV_60~q\,
	datad => \inst1|inst5|128|sub|ALT_INV_99~q\,
	dataf => \inst1|inst5|141|sub|ALT_INV_105~2_combout\,
	combout => \inst1|inst5|141|sub|82~combout\);

-- Location: LABCELL_X64_Y13_N45
\inst1|inst5|4|sub|107\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|inst5|4|sub|107~combout\ = ( \inst1|inst5|4|sub|106~0_combout\ & ( \inst1|inst5|4|sub|99~q\ & ( !\inst1|inst5|4|sub|87~q\ $ (!\inst1|inst5|4|sub|110~q\) ) ) ) # ( !\inst1|inst5|4|sub|106~0_combout\ & ( \inst1|inst5|4|sub|99~q\ & ( 
-- \inst1|inst5|4|sub|110~q\ ) ) ) # ( \inst1|inst5|4|sub|106~0_combout\ & ( !\inst1|inst5|4|sub|99~q\ & ( \inst1|inst5|4|sub|110~q\ ) ) ) # ( !\inst1|inst5|4|sub|106~0_combout\ & ( !\inst1|inst5|4|sub|99~q\ & ( \inst1|inst5|4|sub|110~q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100001111000011110101101001011010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|inst5|4|sub|ALT_INV_87~q\,
	datac => \inst1|inst5|4|sub|ALT_INV_110~q\,
	datae => \inst1|inst5|4|sub|ALT_INV_106~0_combout\,
	dataf => \inst1|inst5|4|sub|ALT_INV_99~q\,
	combout => \inst1|inst5|4|sub|107~combout\);

-- Location: LABCELL_X64_Y13_N15
\inst1|inst5|4|sub|110~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|inst5|4|sub|110~feeder_combout\ = \inst1|inst5|4|sub|107~combout\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \inst1|inst5|4|sub|ALT_INV_107~combout\,
	combout => \inst1|inst5|4|sub|110~feeder_combout\);

-- Location: FF_X64_Y13_N17
\inst1|inst5|4|sub|110\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2~q\,
	d => \inst1|inst5|4|sub|110~feeder_combout\,
	asdata => \DATA[7]~input_o\,
	clrn => \nRESET~input_o\,
	sload => \inst1|inst|Mux46~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|inst5|4|sub|110~q\);

-- Location: LABCELL_X60_Y10_N27
\inst1|inst5|172|sub|107\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|inst5|172|sub|107~combout\ = ( \inst1|inst5|172|sub|87~q\ & ( !\inst1|inst5|172|sub|110~q\ $ (((!\inst1|inst5|172|sub|99~q\) # ((!\inst1|inst5|172|sub|9~q\) # (!\inst1|inst5|171|sub|104~0_combout\)))) ) ) # ( !\inst1|inst5|172|sub|87~q\ & ( 
-- \inst1|inst5|172|sub|110~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101010101010101010101010101010101100101010101010110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|inst5|172|sub|ALT_INV_110~q\,
	datab => \inst1|inst5|172|sub|ALT_INV_99~q\,
	datac => \inst1|inst5|172|sub|ALT_INV_9~q\,
	datad => \inst1|inst5|171|sub|ALT_INV_104~0_combout\,
	dataf => \inst1|inst5|172|sub|ALT_INV_87~q\,
	combout => \inst1|inst5|172|sub|107~combout\);

-- Location: LABCELL_X60_Y10_N24
\inst1|inst5|172|sub|110~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|inst5|172|sub|110~feeder_combout\ = \inst1|inst5|172|sub|107~combout\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \inst1|inst5|172|sub|ALT_INV_107~combout\,
	combout => \inst1|inst5|172|sub|110~feeder_combout\);

-- Location: FF_X60_Y10_N26
\inst1|inst5|172|sub|110\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2~q\,
	d => \inst1|inst5|172|sub|110~feeder_combout\,
	asdata => \DATA[7]~input_o\,
	clrn => \nRESET~input_o\,
	sload => \inst1|inst|Mux34~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|inst5|172|sub|110~q\);

-- Location: FF_X62_Y13_N26
\inst1|inst5|inst1|33\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2~q\,
	asdata => \DATA[7]~input_o\,
	clrn => \nRESET~input_o\,
	sload => VCC,
	ena => \inst1|inst|Mux44~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|inst5|inst1|33~q\);

-- Location: LABCELL_X63_Y11_N48
\inst1|inst5|124|sub|107\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|inst5|124|sub|107~combout\ = ( \inst1|inst5|124|sub|9~q\ & ( \inst1|inst5|123|sub|104~0_combout\ & ( !\inst1|inst5|124|sub|110~q\ $ (((!\inst1|inst5|123|sub|110~q\) # ((!\inst1|inst5|124|sub|87~q\) # (!\inst1|inst5|124|sub|99~q\)))) ) ) ) # ( 
-- !\inst1|inst5|124|sub|9~q\ & ( \inst1|inst5|123|sub|104~0_combout\ & ( \inst1|inst5|124|sub|110~q\ ) ) ) # ( \inst1|inst5|124|sub|9~q\ & ( !\inst1|inst5|123|sub|104~0_combout\ & ( \inst1|inst5|124|sub|110~q\ ) ) ) # ( !\inst1|inst5|124|sub|9~q\ & ( 
-- !\inst1|inst5|123|sub|104~0_combout\ & ( \inst1|inst5|124|sub|110~q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100001111000011110000111100011110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|inst5|123|sub|ALT_INV_110~q\,
	datab => \inst1|inst5|124|sub|ALT_INV_87~q\,
	datac => \inst1|inst5|124|sub|ALT_INV_110~q\,
	datad => \inst1|inst5|124|sub|ALT_INV_99~q\,
	datae => \inst1|inst5|124|sub|ALT_INV_9~q\,
	dataf => \inst1|inst5|123|sub|ALT_INV_104~0_combout\,
	combout => \inst1|inst5|124|sub|107~combout\);

-- Location: LABCELL_X62_Y13_N18
\inst1|inst5|124|sub|110~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|inst5|124|sub|110~feeder_combout\ = ( \inst1|inst5|124|sub|107~combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \inst1|inst5|124|sub|ALT_INV_107~combout\,
	combout => \inst1|inst5|124|sub|110~feeder_combout\);

-- Location: FF_X62_Y13_N20
\inst1|inst5|124|sub|110\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2~q\,
	d => \inst1|inst5|124|sub|110~feeder_combout\,
	asdata => \DATA[7]~input_o\,
	clrn => \nRESET~input_o\,
	sload => \inst1|inst|Mux39~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|inst5|124|sub|110~q\);

-- Location: LABCELL_X64_Y12_N45
\inst1|inst5|133|sub|82\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|inst5|133|sub|82~combout\ = ( \inst1|inst5|inst1|33~q\ & ( \inst1|inst5|124|sub|110~q\ & ( (!\inst1|inst5|124|sub|99~q\ & (!\inst1|inst5|133|sub|105~2_combout\ & \inst1|inst5|inst1|28~q\)) # (\inst1|inst5|124|sub|99~q\ & 
-- ((!\inst1|inst5|133|sub|105~2_combout\) # (\inst1|inst5|inst1|28~q\))) ) ) ) # ( !\inst1|inst5|inst1|33~q\ & ( \inst1|inst5|124|sub|110~q\ & ( (!\inst1|inst5|124|sub|99~q\ & ((!\inst1|inst5|inst1|28~q\) # (\inst1|inst5|133|sub|105~2_combout\))) # 
-- (\inst1|inst5|124|sub|99~q\ & (\inst1|inst5|133|sub|105~2_combout\ & !\inst1|inst5|inst1|28~q\)) ) ) ) # ( \inst1|inst5|inst1|33~q\ & ( !\inst1|inst5|124|sub|110~q\ & ( (!\inst1|inst5|124|sub|99~q\ & ((!\inst1|inst5|inst1|28~q\) # 
-- (\inst1|inst5|133|sub|105~2_combout\))) # (\inst1|inst5|124|sub|99~q\ & (\inst1|inst5|133|sub|105~2_combout\ & !\inst1|inst5|inst1|28~q\)) ) ) ) # ( !\inst1|inst5|inst1|33~q\ & ( !\inst1|inst5|124|sub|110~q\ & ( (!\inst1|inst5|124|sub|99~q\ & 
-- (!\inst1|inst5|133|sub|105~2_combout\ & \inst1|inst5|inst1|28~q\)) # (\inst1|inst5|124|sub|99~q\ & ((!\inst1|inst5|133|sub|105~2_combout\) # (\inst1|inst5|inst1|28~q\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011000011110011110011110000110011001111000011000011000011110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \inst1|inst5|124|sub|ALT_INV_99~q\,
	datac => \inst1|inst5|133|sub|ALT_INV_105~2_combout\,
	datad => \inst1|inst5|inst1|ALT_INV_28~q\,
	datae => \inst1|inst5|inst1|ALT_INV_33~q\,
	dataf => \inst1|inst5|124|sub|ALT_INV_110~q\,
	combout => \inst1|inst5|133|sub|82~combout\);

-- Location: LABCELL_X64_Y12_N12
\inst1|inst5|162|6~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|inst5|162|6~0_combout\ = ( \inst1|inst5|172|sub|110~q\ & ( \inst1|inst5|133|sub|82~combout\ & ( (!\inst1|inst|Mux37~0_combout\ & (((\inst1|inst|Mux36~0_combout\) # (\inst1|inst5|4|sub|110~q\)))) # (\inst1|inst|Mux37~0_combout\ & 
-- (((!\inst1|inst|Mux36~0_combout\)) # (\inst1|inst5|141|sub|82~combout\))) ) ) ) # ( !\inst1|inst5|172|sub|110~q\ & ( \inst1|inst5|133|sub|82~combout\ & ( (!\inst1|inst|Mux37~0_combout\ & (((\inst1|inst|Mux36~0_combout\) # (\inst1|inst5|4|sub|110~q\)))) # 
-- (\inst1|inst|Mux37~0_combout\ & (\inst1|inst5|141|sub|82~combout\ & ((\inst1|inst|Mux36~0_combout\)))) ) ) ) # ( \inst1|inst5|172|sub|110~q\ & ( !\inst1|inst5|133|sub|82~combout\ & ( (!\inst1|inst|Mux37~0_combout\ & (((\inst1|inst5|4|sub|110~q\ & 
-- !\inst1|inst|Mux36~0_combout\)))) # (\inst1|inst|Mux37~0_combout\ & (((!\inst1|inst|Mux36~0_combout\)) # (\inst1|inst5|141|sub|82~combout\))) ) ) ) # ( !\inst1|inst5|172|sub|110~q\ & ( !\inst1|inst5|133|sub|82~combout\ & ( (!\inst1|inst|Mux37~0_combout\ & 
-- (((\inst1|inst5|4|sub|110~q\ & !\inst1|inst|Mux36~0_combout\)))) # (\inst1|inst|Mux37~0_combout\ & (\inst1|inst5|141|sub|82~combout\ & ((\inst1|inst|Mux36~0_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011000000000101001111110000010100110000111101010011111111110101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|inst5|141|sub|ALT_INV_82~combout\,
	datab => \inst1|inst5|4|sub|ALT_INV_110~q\,
	datac => \inst1|inst|ALT_INV_Mux37~0_combout\,
	datad => \inst1|inst|ALT_INV_Mux36~0_combout\,
	datae => \inst1|inst5|172|sub|ALT_INV_110~q\,
	dataf => \inst1|inst5|133|sub|ALT_INV_82~combout\,
	combout => \inst1|inst5|162|6~0_combout\);

-- Location: LABCELL_X60_Y11_N42
\inst1|inst5|128|sub|89~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|inst5|128|sub|89~0_combout\ = ( \inst1|inst5|127|sub|87~q\ & ( \inst1|inst|Mux33~2_combout\ & ( (\inst1|inst5|127|sub|110~q\ & (\inst1|inst5|127|sub|9~q\ & (\inst1|inst5|128|sub|9~q\ & \inst1|inst5|127|sub|99~q\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|inst5|127|sub|ALT_INV_110~q\,
	datab => \inst1|inst5|127|sub|ALT_INV_9~q\,
	datac => \inst1|inst5|128|sub|ALT_INV_9~q\,
	datad => \inst1|inst5|127|sub|ALT_INV_99~q\,
	datae => \inst1|inst5|127|sub|ALT_INV_87~q\,
	dataf => \inst1|inst|ALT_INV_Mux33~2_combout\,
	combout => \inst1|inst5|128|sub|89~0_combout\);

-- Location: LABCELL_X62_Y10_N39
\inst1|inst5|129|sub|78\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|inst5|129|sub|78~combout\ = ( \inst1|inst5|128|sub|89~0_combout\ & ( !\inst1|inst5|129|sub|9~q\ $ (((!\inst1|inst5|128|sub|110~q\) # ((!\inst1|inst5|128|sub|87~q\) # (!\inst1|inst5|128|sub|99~q\)))) ) ) # ( !\inst1|inst5|128|sub|89~0_combout\ & ( 
-- \inst1|inst5|129|sub|9~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111100000001111111100000000111111110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|inst5|128|sub|ALT_INV_110~q\,
	datab => \inst1|inst5|128|sub|ALT_INV_87~q\,
	datac => \inst1|inst5|128|sub|ALT_INV_99~q\,
	datad => \inst1|inst5|129|sub|ALT_INV_9~q\,
	dataf => \inst1|inst5|128|sub|ALT_INV_89~0_combout\,
	combout => \inst1|inst5|129|sub|78~combout\);

-- Location: LABCELL_X62_Y10_N24
\inst1|inst5|129|sub|9~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|inst5|129|sub|9~feeder_combout\ = ( \inst1|inst5|129|sub|78~combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \inst1|inst5|129|sub|ALT_INV_78~combout\,
	combout => \inst1|inst5|129|sub|9~feeder_combout\);

-- Location: LABCELL_X57_Y11_N18
\inst1|inst|Mux42~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|inst|Mux42~0_combout\ = ( \inst1|inst|Mux41~0_combout\ & ( (!\inst1|inst|state[2]~DUPLICATE_q\ & (\inst1|inst|state[0]~DUPLICATE_q\ & \inst1|inst|state\(1))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000010000000100000001000000010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|inst|ALT_INV_state[2]~DUPLICATE_q\,
	datab => \inst1|inst|ALT_INV_state[0]~DUPLICATE_q\,
	datac => \inst1|inst|ALT_INV_state\(1),
	dataf => \inst1|inst|ALT_INV_Mux41~0_combout\,
	combout => \inst1|inst|Mux42~0_combout\);

-- Location: FF_X62_Y10_N26
\inst1|inst5|129|sub|9\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2~q\,
	d => \inst1|inst5|129|sub|9~feeder_combout\,
	asdata => \DATA[0]~input_o\,
	clrn => \nRESET~input_o\,
	sload => \inst1|inst|Mux42~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|inst5|129|sub|9~q\);

-- Location: LABCELL_X61_Y12_N33
\inst1|inst5|141|sub|107~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|inst5|141|sub|107~0_combout\ = ( \inst1|inst5|141|sub|105~1_combout\ & ( \inst1|inst5|inst1|61~q\ & ( (!\inst1|inst5|128|sub|110~q\ & (!\inst1|inst5|inst1|60~q\ & !\inst1|inst5|128|sub|99~q\)) ) ) ) # ( !\inst1|inst5|141|sub|105~1_combout\ & ( 
-- \inst1|inst5|inst1|61~q\ & ( (!\inst1|inst5|128|sub|110~q\ & ((!\inst1|inst5|inst1|60~q\ & ((!\inst1|inst5|141|sub|97~combout\) # (!\inst1|inst5|128|sub|99~q\))) # (\inst1|inst5|inst1|60~q\ & (!\inst1|inst5|141|sub|97~combout\ & 
-- !\inst1|inst5|128|sub|99~q\)))) ) ) ) # ( \inst1|inst5|141|sub|105~1_combout\ & ( !\inst1|inst5|inst1|61~q\ & ( (!\inst1|inst5|128|sub|110~q\) # ((!\inst1|inst5|inst1|60~q\ & !\inst1|inst5|128|sub|99~q\)) ) ) ) # ( !\inst1|inst5|141|sub|105~1_combout\ & ( 
-- !\inst1|inst5|inst1|61~q\ & ( (!\inst1|inst5|128|sub|110~q\) # ((!\inst1|inst5|inst1|60~q\ & ((!\inst1|inst5|141|sub|97~combout\) # (!\inst1|inst5|128|sub|99~q\))) # (\inst1|inst5|inst1|60~q\ & (!\inst1|inst5|141|sub|97~combout\ & 
-- !\inst1|inst5|128|sub|99~q\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111011101010111011101010101010101000100000001000100000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|inst5|128|sub|ALT_INV_110~q\,
	datab => \inst1|inst5|inst1|ALT_INV_60~q\,
	datac => \inst1|inst5|141|sub|ALT_INV_97~combout\,
	datad => \inst1|inst5|128|sub|ALT_INV_99~q\,
	datae => \inst1|inst5|141|sub|ALT_INV_105~1_combout\,
	dataf => \inst1|inst5|inst1|ALT_INV_61~q\,
	combout => \inst1|inst5|141|sub|107~0_combout\);

-- Location: LABCELL_X62_Y11_N42
\inst1|inst5|142|sub|77\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|inst5|142|sub|77~combout\ = ( \inst1|inst5|141|sub|107~0_combout\ & ( \inst1|inst5|129|sub|9~q\ ) ) # ( !\inst1|inst5|141|sub|107~0_combout\ & ( !\inst1|inst5|129|sub|9~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101010101010101010101010101001010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|inst5|129|sub|ALT_INV_9~q\,
	dataf => \inst1|inst5|141|sub|ALT_INV_107~0_combout\,
	combout => \inst1|inst5|142|sub|77~combout\);

-- Location: LABCELL_X60_Y13_N42
\inst1|inst5|124|sub|89~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|inst5|124|sub|89~0_combout\ = ( \inst1|inst5|123|sub|87~q\ & ( \inst1|inst|Mux32~0_combout\ & ( (\inst1|inst5|124|sub|9~q\ & (\inst1|inst5|123|sub|110~q\ & (\inst1|inst5|123|sub|99~q\ & \inst1|inst5|123|sub|9~q\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|inst5|124|sub|ALT_INV_9~q\,
	datab => \inst1|inst5|123|sub|ALT_INV_110~q\,
	datac => \inst1|inst5|123|sub|ALT_INV_99~q\,
	datad => \inst1|inst5|123|sub|ALT_INV_9~q\,
	datae => \inst1|inst5|123|sub|ALT_INV_87~q\,
	dataf => \inst1|inst|ALT_INV_Mux32~0_combout\,
	combout => \inst1|inst5|124|sub|89~0_combout\);

-- Location: LABCELL_X60_Y13_N3
\inst1|inst5|125|sub|78\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|inst5|125|sub|78~combout\ = ( \inst1|inst5|124|sub|89~0_combout\ & ( !\inst1|inst5|125|sub|9~q\ $ (((!\inst1|inst5|124|sub|87~q\) # ((!\inst1|inst5|124|sub|110~q\) # (!\inst1|inst5|124|sub|99~q\)))) ) ) # ( !\inst1|inst5|124|sub|89~0_combout\ & ( 
-- \inst1|inst5|125|sub|9~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101010101010101010101010101010101100101010101010110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|inst5|125|sub|ALT_INV_9~q\,
	datab => \inst1|inst5|124|sub|ALT_INV_87~q\,
	datac => \inst1|inst5|124|sub|ALT_INV_110~q\,
	datad => \inst1|inst5|124|sub|ALT_INV_99~q\,
	dataf => \inst1|inst5|124|sub|ALT_INV_89~0_combout\,
	combout => \inst1|inst5|125|sub|78~combout\);

-- Location: LABCELL_X60_Y13_N36
\inst1|inst5|125|sub|9~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|inst5|125|sub|9~feeder_combout\ = \inst1|inst5|125|sub|78~combout\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \inst1|inst5|125|sub|ALT_INV_78~combout\,
	combout => \inst1|inst5|125|sub|9~feeder_combout\);

-- Location: LABCELL_X57_Y11_N12
\inst1|inst|Mux40~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|inst|Mux40~0_combout\ = ( \inst1|inst|Mux41~0_combout\ & ( (!\inst1|inst|state[3]~DUPLICATE_q\ & (\inst1|inst|state[0]~DUPLICATE_q\ & (!\inst1|inst|state[2]~DUPLICATE_q\ $ (\inst1|inst|state\(1))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000100001000000000010000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|inst|ALT_INV_state[2]~DUPLICATE_q\,
	datab => \inst1|inst|ALT_INV_state[3]~DUPLICATE_q\,
	datac => \inst1|inst|ALT_INV_state\(1),
	datad => \inst1|inst|ALT_INV_state[0]~DUPLICATE_q\,
	dataf => \inst1|inst|ALT_INV_Mux41~0_combout\,
	combout => \inst1|inst|Mux40~0_combout\);

-- Location: FF_X60_Y13_N38
\inst1|inst5|125|sub|9\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2~q\,
	d => \inst1|inst5|125|sub|9~feeder_combout\,
	asdata => \DATA[0]~input_o\,
	clrn => \nRESET~input_o\,
	sload => \inst1|inst|Mux40~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|inst5|125|sub|9~q\);

-- Location: LABCELL_X57_Y11_N3
\inst1|inst5|173|sub|78\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|inst5|173|sub|78~combout\ = ( \inst1|inst5|172|sub|9~q\ & ( \inst1|inst5|171|sub|104~0_combout\ & ( !\inst1|inst5|173|sub|9~q\ $ (((!\inst1|inst5|172|sub|99~q\) # ((!\inst1|inst5|172|sub|87~q\) # (!\inst1|inst5|172|sub|110~q\)))) ) ) ) # ( 
-- !\inst1|inst5|172|sub|9~q\ & ( \inst1|inst5|171|sub|104~0_combout\ & ( \inst1|inst5|173|sub|9~q\ ) ) ) # ( \inst1|inst5|172|sub|9~q\ & ( !\inst1|inst5|171|sub|104~0_combout\ & ( \inst1|inst5|173|sub|9~q\ ) ) ) # ( !\inst1|inst5|172|sub|9~q\ & ( 
-- !\inst1|inst5|171|sub|104~0_combout\ & ( \inst1|inst5|173|sub|9~q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100001111000011110000111100011110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|inst5|172|sub|ALT_INV_99~q\,
	datab => \inst1|inst5|172|sub|ALT_INV_87~q\,
	datac => \inst1|inst5|173|sub|ALT_INV_9~q\,
	datad => \inst1|inst5|172|sub|ALT_INV_110~q\,
	datae => \inst1|inst5|172|sub|ALT_INV_9~q\,
	dataf => \inst1|inst5|171|sub|ALT_INV_104~0_combout\,
	combout => \inst1|inst5|173|sub|78~combout\);

-- Location: MLABCELL_X59_Y11_N45
\inst1|inst5|173|sub|9~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|inst5|173|sub|9~feeder_combout\ = ( \inst1|inst5|173|sub|78~combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \inst1|inst5|173|sub|ALT_INV_78~combout\,
	combout => \inst1|inst5|173|sub|9~feeder_combout\);

-- Location: LABCELL_X57_Y10_N54
\inst1|inst|Mux35~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|inst|Mux35~0_combout\ = ( !\inst1|inst|state[5]~DUPLICATE_q\ & ( \inst1|inst|state[0]~DUPLICATE_q\ & ( (!\inst1|inst|state[2]~DUPLICATE_q\ & (\inst1|inst|state\(3) & (!\inst1|inst|state\(1) $ (!\inst1|inst|state[4]~DUPLICATE_q\)))) # 
-- (\inst1|inst|state[2]~DUPLICATE_q\ & (!\inst1|inst|state\(1) & (!\inst1|inst|state\(3)))) ) ) ) # ( !\inst1|inst|state[5]~DUPLICATE_q\ & ( !\inst1|inst|state[0]~DUPLICATE_q\ & ( (\inst1|inst|state\(3) & (!\inst1|inst|state[4]~DUPLICATE_q\ & 
-- (!\inst1|inst|state[2]~DUPLICATE_q\ $ (\inst1|inst|state\(1))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100100000000000000000000000001000010010010000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|inst|ALT_INV_state[2]~DUPLICATE_q\,
	datab => \inst1|inst|ALT_INV_state\(1),
	datac => \inst1|inst|ALT_INV_state\(3),
	datad => \inst1|inst|ALT_INV_state[4]~DUPLICATE_q\,
	datae => \inst1|inst|ALT_INV_state[5]~DUPLICATE_q\,
	dataf => \inst1|inst|ALT_INV_state[0]~DUPLICATE_q\,
	combout => \inst1|inst|Mux35~0_combout\);

-- Location: FF_X59_Y11_N47
\inst1|inst5|173|sub|9\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2~q\,
	d => \inst1|inst5|173|sub|9~feeder_combout\,
	asdata => \DATA[0]~input_o\,
	clrn => \nRESET~input_o\,
	sload => \inst1|inst|Mux35~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|inst5|173|sub|9~q\);

-- Location: LABCELL_X62_Y13_N24
\inst1|inst5|133|sub|107~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|inst5|133|sub|107~0_combout\ = ( \inst1|inst5|inst1|33~q\ & ( \inst1|inst5|133|sub|97~combout\ & ( ((\inst1|inst5|124|sub|110~q\) # (\inst1|inst5|inst1|28~q\)) # (\inst1|inst5|124|sub|99~q\) ) ) ) # ( !\inst1|inst5|inst1|33~q\ & ( 
-- \inst1|inst5|133|sub|97~combout\ & ( (\inst1|inst5|124|sub|110~q\ & ((\inst1|inst5|inst1|28~q\) # (\inst1|inst5|124|sub|99~q\))) ) ) ) # ( \inst1|inst5|inst1|33~q\ & ( !\inst1|inst5|133|sub|97~combout\ & ( ((!\inst1|inst5|124|sub|99~q\ & 
-- (\inst1|inst5|inst1|28~q\ & \inst1|inst5|133|sub|105~1_combout\)) # (\inst1|inst5|124|sub|99~q\ & ((\inst1|inst5|133|sub|105~1_combout\) # (\inst1|inst5|inst1|28~q\)))) # (\inst1|inst5|124|sub|110~q\) ) ) ) # ( !\inst1|inst5|inst1|33~q\ & ( 
-- !\inst1|inst5|133|sub|97~combout\ & ( (\inst1|inst5|124|sub|110~q\ & ((!\inst1|inst5|124|sub|99~q\ & (\inst1|inst5|inst1|28~q\ & \inst1|inst5|133|sub|105~1_combout\)) # (\inst1|inst5|124|sub|99~q\ & ((\inst1|inst5|133|sub|105~1_combout\) # 
-- (\inst1|inst5|inst1|28~q\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100000111000111110111111100000111000001110111111101111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|inst5|124|sub|ALT_INV_99~q\,
	datab => \inst1|inst5|inst1|ALT_INV_28~q\,
	datac => \inst1|inst5|124|sub|ALT_INV_110~q\,
	datad => \inst1|inst5|133|sub|ALT_INV_105~1_combout\,
	datae => \inst1|inst5|inst1|ALT_INV_33~q\,
	dataf => \inst1|inst5|133|sub|ALT_INV_97~combout\,
	combout => \inst1|inst5|133|sub|107~0_combout\);

-- Location: LABCELL_X63_Y13_N18
\inst1|inst5|32|sub|9~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|inst5|32|sub|9~0_combout\ = ( \inst1|inst5|4|sub|99~q\ & ( \inst1|inst5|4|sub|106~0_combout\ & ( !\inst1|inst5|32|sub|9~q\ $ (((!\inst1|inst5|4|sub|87~q\) # (!\inst1|inst5|4|sub|110~q\))) ) ) ) # ( !\inst1|inst5|4|sub|99~q\ & ( 
-- \inst1|inst5|4|sub|106~0_combout\ & ( \inst1|inst5|32|sub|9~q\ ) ) ) # ( \inst1|inst5|4|sub|99~q\ & ( !\inst1|inst5|4|sub|106~0_combout\ & ( \inst1|inst5|32|sub|9~q\ ) ) ) # ( !\inst1|inst5|4|sub|99~q\ & ( !\inst1|inst5|4|sub|106~0_combout\ & ( 
-- \inst1|inst5|32|sub|9~q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101010101010101010101010101010101010101011001010110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|inst5|32|sub|ALT_INV_9~q\,
	datab => \inst1|inst5|4|sub|ALT_INV_87~q\,
	datac => \inst1|inst5|4|sub|ALT_INV_110~q\,
	datae => \inst1|inst5|4|sub|ALT_INV_99~q\,
	dataf => \inst1|inst5|4|sub|ALT_INV_106~0_combout\,
	combout => \inst1|inst5|32|sub|9~0_combout\);

-- Location: FF_X63_Y13_N32
\inst1|inst5|32|sub|9\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2~q\,
	asdata => \inst1|inst5|32|sub|9~0_combout\,
	clrn => \nRESET~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|inst5|32|sub|9~q\);

-- Location: LABCELL_X62_Y11_N24
\inst1|inst5|164|6~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|inst5|164|6~0_combout\ = ( !\inst1|inst|Mux36~0_combout\ & ( (!\inst1|inst|Mux37~0_combout\ & (((\inst1|inst5|32|sub|9~q\)))) # (\inst1|inst|Mux37~0_combout\ & ((((\inst1|inst5|173|sub|9~q\))))) ) ) # ( \inst1|inst|Mux36~0_combout\ & ( 
-- (!\inst1|inst|Mux37~0_combout\ & ((!\inst1|inst5|125|sub|9~q\ $ (((!\inst1|inst5|133|sub|107~0_combout\)))))) # (\inst1|inst|Mux37~0_combout\ & (\inst1|inst5|142|sub|77~combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0000101001011111000110110001101100001010010111111011000110110001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|inst|ALT_INV_Mux37~0_combout\,
	datab => \inst1|inst5|142|sub|ALT_INV_77~combout\,
	datac => \inst1|inst5|125|sub|ALT_INV_9~q\,
	datad => \inst1|inst5|173|sub|ALT_INV_9~q\,
	datae => \inst1|inst|ALT_INV_Mux36~0_combout\,
	dataf => \inst1|inst5|133|sub|ALT_INV_107~0_combout\,
	datag => \inst1|inst5|32|sub|ALT_INV_9~q\,
	combout => \inst1|inst5|164|6~0_combout\);

-- Location: MLABCELL_X59_Y11_N27
\inst1|inst5|172|sub|106~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|inst5|172|sub|106~0_combout\ = ( \inst1|inst5|172|sub|9~q\ & ( \inst1|inst|Mux43~1_combout\ & ( (\inst1|inst5|171|sub|9~q\ & (\inst1|inst5|171|sub|87~q\ & (\inst1|inst5|171|sub|99~q\ & \inst1|inst5|171|sub|110~q\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|inst5|171|sub|ALT_INV_9~q\,
	datab => \inst1|inst5|171|sub|ALT_INV_87~q\,
	datac => \inst1|inst5|171|sub|ALT_INV_99~q\,
	datad => \inst1|inst5|171|sub|ALT_INV_110~q\,
	datae => \inst1|inst5|172|sub|ALT_INV_9~q\,
	dataf => \inst1|inst|ALT_INV_Mux43~1_combout\,
	combout => \inst1|inst5|172|sub|106~0_combout\);

-- Location: LABCELL_X57_Y11_N42
\inst1|inst5|173|sub|90\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|inst5|173|sub|90~combout\ = ( \inst1|inst5|173|sub|87~q\ & ( \inst1|inst5|172|sub|106~0_combout\ & ( (!\inst1|inst5|172|sub|99~q\) # ((!\inst1|inst5|173|sub|9~q\) # ((!\inst1|inst5|172|sub|110~q\) # (!\inst1|inst5|172|sub|87~q\))) ) ) ) # ( 
-- !\inst1|inst5|173|sub|87~q\ & ( \inst1|inst5|172|sub|106~0_combout\ & ( (\inst1|inst5|172|sub|99~q\ & (\inst1|inst5|173|sub|9~q\ & (\inst1|inst5|172|sub|110~q\ & \inst1|inst5|172|sub|87~q\))) ) ) ) # ( \inst1|inst5|173|sub|87~q\ & ( 
-- !\inst1|inst5|172|sub|106~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000011111111111111110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|inst5|172|sub|ALT_INV_99~q\,
	datab => \inst1|inst5|173|sub|ALT_INV_9~q\,
	datac => \inst1|inst5|172|sub|ALT_INV_110~q\,
	datad => \inst1|inst5|172|sub|ALT_INV_87~q\,
	datae => \inst1|inst5|173|sub|ALT_INV_87~q\,
	dataf => \inst1|inst5|172|sub|ALT_INV_106~0_combout\,
	combout => \inst1|inst5|173|sub|90~combout\);

-- Location: MLABCELL_X59_Y11_N48
\inst1|inst5|173|sub|87~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|inst5|173|sub|87~feeder_combout\ = ( \inst1|inst5|173|sub|90~combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \inst1|inst5|173|sub|ALT_INV_90~combout\,
	combout => \inst1|inst5|173|sub|87~feeder_combout\);

-- Location: FF_X59_Y11_N50
\inst1|inst5|173|sub|87\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2~q\,
	d => \inst1|inst5|173|sub|87~feeder_combout\,
	asdata => \DATA[1]~input_o\,
	clrn => \nRESET~input_o\,
	sload => \inst1|inst|Mux35~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|inst5|173|sub|87~q\);

-- Location: LABCELL_X60_Y13_N24
\inst1|inst5|125|sub|90\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|inst5|125|sub|90~combout\ = ( \inst1|inst5|124|sub|99~q\ & ( \inst1|inst5|124|sub|89~0_combout\ & ( !\inst1|inst5|125|sub|87~q\ $ (((!\inst1|inst5|124|sub|87~q\) # ((!\inst1|inst5|124|sub|110~q\) # (!\inst1|inst5|125|sub|9~q\)))) ) ) ) # ( 
-- !\inst1|inst5|124|sub|99~q\ & ( \inst1|inst5|124|sub|89~0_combout\ & ( \inst1|inst5|125|sub|87~q\ ) ) ) # ( \inst1|inst5|124|sub|99~q\ & ( !\inst1|inst5|124|sub|89~0_combout\ & ( \inst1|inst5|125|sub|87~q\ ) ) ) # ( !\inst1|inst5|124|sub|99~q\ & ( 
-- !\inst1|inst5|124|sub|89~0_combout\ & ( \inst1|inst5|125|sub|87~q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100001111000011110000111100011110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|inst5|124|sub|ALT_INV_87~q\,
	datab => \inst1|inst5|124|sub|ALT_INV_110~q\,
	datac => \inst1|inst5|125|sub|ALT_INV_87~q\,
	datad => \inst1|inst5|125|sub|ALT_INV_9~q\,
	datae => \inst1|inst5|124|sub|ALT_INV_99~q\,
	dataf => \inst1|inst5|124|sub|ALT_INV_89~0_combout\,
	combout => \inst1|inst5|125|sub|90~combout\);

-- Location: LABCELL_X60_Y13_N54
\inst1|inst5|125|sub|87~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|inst5|125|sub|87~feeder_combout\ = \inst1|inst5|125|sub|90~combout\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \inst1|inst5|125|sub|ALT_INV_90~combout\,
	combout => \inst1|inst5|125|sub|87~feeder_combout\);

-- Location: FF_X60_Y13_N56
\inst1|inst5|125|sub|87\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2~q\,
	d => \inst1|inst5|125|sub|87~feeder_combout\,
	asdata => \DATA[1]~input_o\,
	clrn => \nRESET~input_o\,
	sload => \inst1|inst|Mux40~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|inst5|125|sub|87~q\);

-- Location: LABCELL_X62_Y10_N9
\inst1|inst5|135|sub|79\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|inst5|135|sub|79~combout\ = ( \inst1|inst5|133|sub|107~0_combout\ & ( !\inst1|inst5|125|sub|9~q\ $ (!\inst1|inst5|125|sub|87~q\) ) ) # ( !\inst1|inst5|133|sub|107~0_combout\ & ( \inst1|inst5|125|sub|87~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011001100110011001101100110011001100110011001100110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|inst5|125|sub|ALT_INV_9~q\,
	datab => \inst1|inst5|125|sub|ALT_INV_87~q\,
	dataf => \inst1|inst5|133|sub|ALT_INV_107~0_combout\,
	combout => \inst1|inst5|135|sub|79~combout\);

-- Location: LABCELL_X63_Y13_N9
\inst1|inst5|32|sub|87~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|inst5|32|sub|87~0_combout\ = ( \inst1|inst5|4|sub|99~q\ & ( \inst1|inst5|32|sub|9~q\ & ( !\inst1|inst5|32|sub|87~q\ $ (((!\inst1|inst5|4|sub|106~0_combout\) # ((!\inst1|inst5|4|sub|87~q\) # (!\inst1|inst5|4|sub|110~q\)))) ) ) ) # ( 
-- !\inst1|inst5|4|sub|99~q\ & ( \inst1|inst5|32|sub|9~q\ & ( \inst1|inst5|32|sub|87~q\ ) ) ) # ( \inst1|inst5|4|sub|99~q\ & ( !\inst1|inst5|32|sub|9~q\ & ( \inst1|inst5|32|sub|87~q\ ) ) ) # ( !\inst1|inst5|4|sub|99~q\ & ( !\inst1|inst5|32|sub|9~q\ & ( 
-- \inst1|inst5|32|sub|87~q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100001111000011110000111100011110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|inst5|4|sub|ALT_INV_106~0_combout\,
	datab => \inst1|inst5|4|sub|ALT_INV_87~q\,
	datac => \inst1|inst5|32|sub|ALT_INV_87~q\,
	datad => \inst1|inst5|4|sub|ALT_INV_110~q\,
	datae => \inst1|inst5|4|sub|ALT_INV_99~q\,
	dataf => \inst1|inst5|32|sub|ALT_INV_9~q\,
	combout => \inst1|inst5|32|sub|87~0_combout\);

-- Location: FF_X60_Y13_N29
\inst1|inst5|32|sub|87\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2~q\,
	asdata => \inst1|inst5|32|sub|87~0_combout\,
	clrn => \nRESET~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|inst5|32|sub|87~q\);

-- Location: LABCELL_X62_Y10_N30
\inst1|inst5|129|sub|90\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|inst5|129|sub|90~combout\ = ( \inst1|inst5|129|sub|9~q\ & ( \inst1|inst5|128|sub|89~0_combout\ & ( !\inst1|inst5|129|sub|87~q\ $ (((!\inst1|inst5|128|sub|110~q\) # ((!\inst1|inst5|128|sub|87~q\) # (!\inst1|inst5|128|sub|99~q\)))) ) ) ) # ( 
-- !\inst1|inst5|129|sub|9~q\ & ( \inst1|inst5|128|sub|89~0_combout\ & ( \inst1|inst5|129|sub|87~q\ ) ) ) # ( \inst1|inst5|129|sub|9~q\ & ( !\inst1|inst5|128|sub|89~0_combout\ & ( \inst1|inst5|129|sub|87~q\ ) ) ) # ( !\inst1|inst5|129|sub|9~q\ & ( 
-- !\inst1|inst5|128|sub|89~0_combout\ & ( \inst1|inst5|129|sub|87~q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100001111000011110000111100011110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|inst5|128|sub|ALT_INV_110~q\,
	datab => \inst1|inst5|128|sub|ALT_INV_87~q\,
	datac => \inst1|inst5|129|sub|ALT_INV_87~q\,
	datad => \inst1|inst5|128|sub|ALT_INV_99~q\,
	datae => \inst1|inst5|129|sub|ALT_INV_9~q\,
	dataf => \inst1|inst5|128|sub|ALT_INV_89~0_combout\,
	combout => \inst1|inst5|129|sub|90~combout\);

-- Location: LABCELL_X62_Y10_N57
\inst1|inst5|129|sub|87~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|inst5|129|sub|87~feeder_combout\ = \inst1|inst5|129|sub|90~combout\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \inst1|inst5|129|sub|ALT_INV_90~combout\,
	combout => \inst1|inst5|129|sub|87~feeder_combout\);

-- Location: FF_X62_Y10_N59
\inst1|inst5|129|sub|87\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2~q\,
	d => \inst1|inst5|129|sub|87~feeder_combout\,
	asdata => \DATA[1]~input_o\,
	clrn => \nRESET~input_o\,
	sload => \inst1|inst|Mux42~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|inst5|129|sub|87~q\);

-- Location: LABCELL_X62_Y10_N48
\inst1|inst5|142|sub|79\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|inst5|142|sub|79~combout\ = ( \inst1|inst5|129|sub|9~q\ & ( !\inst1|inst5|141|sub|107~0_combout\ $ (\inst1|inst5|129|sub|87~q\) ) ) # ( !\inst1|inst5|129|sub|9~q\ & ( \inst1|inst5|129|sub|87~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111110100101101001011010010110100101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|inst5|141|sub|ALT_INV_107~0_combout\,
	datac => \inst1|inst5|129|sub|ALT_INV_87~q\,
	dataf => \inst1|inst5|129|sub|ALT_INV_9~q\,
	combout => \inst1|inst5|142|sub|79~combout\);

-- Location: LABCELL_X62_Y10_N0
\inst1|inst5|166|6~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|inst5|166|6~0_combout\ = ( \inst1|inst5|32|sub|87~q\ & ( \inst1|inst5|142|sub|79~combout\ & ( (!\inst1|inst|Mux37~0_combout\ & (((!\inst1|inst|Mux36~0_combout\) # (\inst1|inst5|135|sub|79~combout\)))) # (\inst1|inst|Mux37~0_combout\ & 
-- (((\inst1|inst|Mux36~0_combout\)) # (\inst1|inst5|173|sub|87~q\))) ) ) ) # ( !\inst1|inst5|32|sub|87~q\ & ( \inst1|inst5|142|sub|79~combout\ & ( (!\inst1|inst|Mux37~0_combout\ & (((\inst1|inst5|135|sub|79~combout\ & \inst1|inst|Mux36~0_combout\)))) # 
-- (\inst1|inst|Mux37~0_combout\ & (((\inst1|inst|Mux36~0_combout\)) # (\inst1|inst5|173|sub|87~q\))) ) ) ) # ( \inst1|inst5|32|sub|87~q\ & ( !\inst1|inst5|142|sub|79~combout\ & ( (!\inst1|inst|Mux37~0_combout\ & (((!\inst1|inst|Mux36~0_combout\) # 
-- (\inst1|inst5|135|sub|79~combout\)))) # (\inst1|inst|Mux37~0_combout\ & (\inst1|inst5|173|sub|87~q\ & ((!\inst1|inst|Mux36~0_combout\)))) ) ) ) # ( !\inst1|inst5|32|sub|87~q\ & ( !\inst1|inst5|142|sub|79~combout\ & ( (!\inst1|inst|Mux37~0_combout\ & 
-- (((\inst1|inst5|135|sub|79~combout\ & \inst1|inst|Mux36~0_combout\)))) # (\inst1|inst|Mux37~0_combout\ & (\inst1|inst5|173|sub|87~q\ & ((!\inst1|inst|Mux36~0_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100110000111101010011000000000101001111111111010100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|inst5|173|sub|ALT_INV_87~q\,
	datab => \inst1|inst5|135|sub|ALT_INV_79~combout\,
	datac => \inst1|inst|ALT_INV_Mux37~0_combout\,
	datad => \inst1|inst|ALT_INV_Mux36~0_combout\,
	datae => \inst1|inst5|32|sub|ALT_INV_87~q\,
	dataf => \inst1|inst5|142|sub|ALT_INV_79~combout\,
	combout => \inst1|inst5|166|6~0_combout\);

-- Location: LABCELL_X63_Y13_N30
\inst1|inst5|32|sub|96~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|inst5|32|sub|96~0_combout\ = ( \inst1|inst5|32|sub|9~q\ & ( \inst1|inst5|4|sub|106~0_combout\ & ( (\inst1|inst5|4|sub|87~q\ & (\inst1|inst5|32|sub|87~q\ & (\inst1|inst5|4|sub|110~q\ & \inst1|inst5|4|sub|99~q\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|inst5|4|sub|ALT_INV_87~q\,
	datab => \inst1|inst5|32|sub|ALT_INV_87~q\,
	datac => \inst1|inst5|4|sub|ALT_INV_110~q\,
	datad => \inst1|inst5|4|sub|ALT_INV_99~q\,
	datae => \inst1|inst5|32|sub|ALT_INV_9~q\,
	dataf => \inst1|inst5|4|sub|ALT_INV_106~0_combout\,
	combout => \inst1|inst5|32|sub|96~0_combout\);

-- Location: LABCELL_X63_Y13_N3
\inst1|inst5|32|sub|99~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|inst5|32|sub|99~0_combout\ = ( \inst1|inst5|32|sub|96~0_combout\ & ( !\inst1|inst5|32|sub|99~q\ ) ) # ( !\inst1|inst5|32|sub|96~0_combout\ & ( \inst1|inst5|32|sub|99~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111111110000111100001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \inst1|inst5|32|sub|ALT_INV_99~q\,
	dataf => \inst1|inst5|32|sub|ALT_INV_96~0_combout\,
	combout => \inst1|inst5|32|sub|99~0_combout\);

-- Location: FF_X63_Y13_N26
\inst1|inst5|32|sub|99\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2~q\,
	asdata => \inst1|inst5|32|sub|99~0_combout\,
	clrn => \nRESET~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|inst5|32|sub|99~q\);

-- Location: LABCELL_X60_Y11_N3
\inst1|inst5|128|sub|104~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|inst5|128|sub|104~0_combout\ = ( \inst1|inst5|128|sub|9~q\ & ( \inst1|inst5|127|sub|104~0_combout\ & ( (\inst1|inst5|127|sub|110~q\ & (\inst1|inst5|128|sub|87~q\ & (\inst1|inst5|128|sub|110~q\ & \inst1|inst5|128|sub|99~q\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|inst5|127|sub|ALT_INV_110~q\,
	datab => \inst1|inst5|128|sub|ALT_INV_87~q\,
	datac => \inst1|inst5|128|sub|ALT_INV_110~q\,
	datad => \inst1|inst5|128|sub|ALT_INV_99~q\,
	datae => \inst1|inst5|128|sub|ALT_INV_9~q\,
	dataf => \inst1|inst5|127|sub|ALT_INV_104~0_combout\,
	combout => \inst1|inst5|128|sub|104~0_combout\);

-- Location: LABCELL_X62_Y10_N27
\inst1|inst5|129|sub|97\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|inst5|129|sub|97~combout\ = !\inst1|inst5|129|sub|99~q\ $ (((!\inst1|inst5|129|sub|9~q\) # ((!\inst1|inst5|129|sub|87~q\) # (!\inst1|inst5|128|sub|104~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010110010101010101011001010101010101100101010101010110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|inst5|129|sub|ALT_INV_99~q\,
	datab => \inst1|inst5|129|sub|ALT_INV_9~q\,
	datac => \inst1|inst5|129|sub|ALT_INV_87~q\,
	datad => \inst1|inst5|128|sub|ALT_INV_104~0_combout\,
	combout => \inst1|inst5|129|sub|97~combout\);

-- Location: LABCELL_X62_Y10_N36
\inst1|inst5|129|sub|99~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|inst5|129|sub|99~feeder_combout\ = ( \inst1|inst5|129|sub|97~combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \inst1|inst5|129|sub|ALT_INV_97~combout\,
	combout => \inst1|inst5|129|sub|99~feeder_combout\);

-- Location: FF_X62_Y10_N38
\inst1|inst5|129|sub|99\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2~q\,
	d => \inst1|inst5|129|sub|99~feeder_combout\,
	asdata => \DATA[2]~input_o\,
	clrn => \nRESET~input_o\,
	sload => \inst1|inst|Mux42~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|inst5|129|sub|99~q\);

-- Location: LABCELL_X61_Y12_N18
\inst1|inst5|142|sub|81\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|inst5|142|sub|81~combout\ = ( \inst1|inst5|129|sub|9~q\ & ( !\inst1|inst5|129|sub|99~q\ $ (((!\inst1|inst5|129|sub|87~q\) # (\inst1|inst5|141|sub|107~0_combout\))) ) ) # ( !\inst1|inst5|129|sub|9~q\ & ( \inst1|inst5|129|sub|99~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011001100110011001100110011110000110011001111000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \inst1|inst5|129|sub|ALT_INV_99~q\,
	datac => \inst1|inst5|141|sub|ALT_INV_107~0_combout\,
	datad => \inst1|inst5|129|sub|ALT_INV_87~q\,
	dataf => \inst1|inst5|129|sub|ALT_INV_9~q\,
	combout => \inst1|inst5|142|sub|81~combout\);

-- Location: MLABCELL_X59_Y11_N18
\inst1|inst5|173|sub|106~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|inst5|173|sub|106~0_combout\ = ( \inst1|inst5|172|sub|9~q\ & ( \inst1|inst5|171|sub|104~0_combout\ & ( (\inst1|inst5|172|sub|110~q\ & (\inst1|inst5|173|sub|9~q\ & (\inst1|inst5|172|sub|99~q\ & \inst1|inst5|172|sub|87~q\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|inst5|172|sub|ALT_INV_110~q\,
	datab => \inst1|inst5|173|sub|ALT_INV_9~q\,
	datac => \inst1|inst5|172|sub|ALT_INV_99~q\,
	datad => \inst1|inst5|172|sub|ALT_INV_87~q\,
	datae => \inst1|inst5|172|sub|ALT_INV_9~q\,
	dataf => \inst1|inst5|171|sub|ALT_INV_104~0_combout\,
	combout => \inst1|inst5|173|sub|106~0_combout\);

-- Location: LABCELL_X61_Y10_N18
\inst1|inst5|173|sub|97\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|inst5|173|sub|97~combout\ = ( \inst1|inst5|173|sub|106~0_combout\ & ( !\inst1|inst5|173|sub|87~q\ $ (!\inst1|inst5|173|sub|99~q\) ) ) # ( !\inst1|inst5|173|sub|106~0_combout\ & ( \inst1|inst5|173|sub|99~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111100001111111100000000111111110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \inst1|inst5|173|sub|ALT_INV_87~q\,
	datad => \inst1|inst5|173|sub|ALT_INV_99~q\,
	dataf => \inst1|inst5|173|sub|ALT_INV_106~0_combout\,
	combout => \inst1|inst5|173|sub|97~combout\);

-- Location: LABCELL_X61_Y10_N54
\inst1|inst5|173|sub|99~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|inst5|173|sub|99~feeder_combout\ = ( \inst1|inst5|173|sub|97~combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \inst1|inst5|173|sub|ALT_INV_97~combout\,
	combout => \inst1|inst5|173|sub|99~feeder_combout\);

-- Location: FF_X61_Y10_N56
\inst1|inst5|173|sub|99\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2~q\,
	d => \inst1|inst5|173|sub|99~feeder_combout\,
	asdata => \DATA[2]~input_o\,
	clrn => \nRESET~input_o\,
	sload => \inst1|inst|Mux35~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|inst5|173|sub|99~q\);

-- Location: LABCELL_X63_Y11_N39
\inst1|inst5|124|sub|104~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|inst5|124|sub|104~0_combout\ = ( \inst1|inst5|124|sub|9~q\ & ( \inst1|inst5|123|sub|104~0_combout\ & ( (\inst1|inst5|124|sub|110~q\ & (\inst1|inst5|124|sub|87~q\ & (\inst1|inst5|124|sub|99~q\ & \inst1|inst5|123|sub|110~q\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|inst5|124|sub|ALT_INV_110~q\,
	datab => \inst1|inst5|124|sub|ALT_INV_87~q\,
	datac => \inst1|inst5|124|sub|ALT_INV_99~q\,
	datad => \inst1|inst5|123|sub|ALT_INV_110~q\,
	datae => \inst1|inst5|124|sub|ALT_INV_9~q\,
	dataf => \inst1|inst5|123|sub|ALT_INV_104~0_combout\,
	combout => \inst1|inst5|124|sub|104~0_combout\);

-- Location: LABCELL_X62_Y11_N21
\inst1|inst5|125|sub|97\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|inst5|125|sub|97~combout\ = ( \inst1|inst5|125|sub|99~q\ & ( (!\inst1|inst5|124|sub|104~0_combout\) # ((!\inst1|inst5|125|sub|9~q\) # (!\inst1|inst5|125|sub|87~q\)) ) ) # ( !\inst1|inst5|125|sub|99~q\ & ( (\inst1|inst5|124|sub|104~0_combout\ & 
-- (\inst1|inst5|125|sub|9~q\ & \inst1|inst5|125|sub|87~q\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100000001000000010000000111111110111111101111111011111110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|inst5|124|sub|ALT_INV_104~0_combout\,
	datab => \inst1|inst5|125|sub|ALT_INV_9~q\,
	datac => \inst1|inst5|125|sub|ALT_INV_87~q\,
	dataf => \inst1|inst5|125|sub|ALT_INV_99~q\,
	combout => \inst1|inst5|125|sub|97~combout\);

-- Location: LABCELL_X62_Y11_N18
\inst1|inst5|125|sub|99~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|inst5|125|sub|99~feeder_combout\ = \inst1|inst5|125|sub|97~combout\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \inst1|inst5|125|sub|ALT_INV_97~combout\,
	combout => \inst1|inst5|125|sub|99~feeder_combout\);

-- Location: FF_X62_Y11_N20
\inst1|inst5|125|sub|99\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2~q\,
	d => \inst1|inst5|125|sub|99~feeder_combout\,
	asdata => \DATA[2]~input_o\,
	clrn => \nRESET~input_o\,
	sload => \inst1|inst|Mux40~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|inst5|125|sub|99~q\);

-- Location: LABCELL_X61_Y10_N12
\inst1|inst5|135|sub|81\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|inst5|135|sub|81~combout\ = ( \inst1|inst5|133|sub|107~0_combout\ & ( !\inst1|inst5|125|sub|99~q\ $ (((!\inst1|inst5|125|sub|87~q\) # (!\inst1|inst5|125|sub|9~q\))) ) ) # ( !\inst1|inst5|133|sub|107~0_combout\ & ( \inst1|inst5|125|sub|99~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011001100110011001100110110001101100011011000110110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|inst5|125|sub|ALT_INV_87~q\,
	datab => \inst1|inst5|125|sub|ALT_INV_99~q\,
	datac => \inst1|inst5|125|sub|ALT_INV_9~q\,
	dataf => \inst1|inst5|133|sub|ALT_INV_107~0_combout\,
	combout => \inst1|inst5|135|sub|81~combout\);

-- Location: LABCELL_X61_Y10_N24
\inst1|inst5|168|6~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|inst5|168|6~0_combout\ = ( \inst1|inst5|173|sub|99~q\ & ( \inst1|inst5|135|sub|81~combout\ & ( (!\inst1|inst|Mux36~0_combout\ & (((\inst1|inst|Mux37~0_combout\)) # (\inst1|inst5|32|sub|99~q\))) # (\inst1|inst|Mux36~0_combout\ & 
-- (((!\inst1|inst|Mux37~0_combout\) # (\inst1|inst5|142|sub|81~combout\)))) ) ) ) # ( !\inst1|inst5|173|sub|99~q\ & ( \inst1|inst5|135|sub|81~combout\ & ( (!\inst1|inst|Mux36~0_combout\ & (\inst1|inst5|32|sub|99~q\ & ((!\inst1|inst|Mux37~0_combout\)))) # 
-- (\inst1|inst|Mux36~0_combout\ & (((!\inst1|inst|Mux37~0_combout\) # (\inst1|inst5|142|sub|81~combout\)))) ) ) ) # ( \inst1|inst5|173|sub|99~q\ & ( !\inst1|inst5|135|sub|81~combout\ & ( (!\inst1|inst|Mux36~0_combout\ & (((\inst1|inst|Mux37~0_combout\)) # 
-- (\inst1|inst5|32|sub|99~q\))) # (\inst1|inst|Mux36~0_combout\ & (((\inst1|inst5|142|sub|81~combout\ & \inst1|inst|Mux37~0_combout\)))) ) ) ) # ( !\inst1|inst5|173|sub|99~q\ & ( !\inst1|inst5|135|sub|81~combout\ & ( (!\inst1|inst|Mux36~0_combout\ & 
-- (\inst1|inst5|32|sub|99~q\ & ((!\inst1|inst|Mux37~0_combout\)))) # (\inst1|inst|Mux36~0_combout\ & (((\inst1|inst5|142|sub|81~combout\ & \inst1|inst|Mux37~0_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101000000000011010100001111001101011111000000110101111111110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|inst5|32|sub|ALT_INV_99~q\,
	datab => \inst1|inst5|142|sub|ALT_INV_81~combout\,
	datac => \inst1|inst|ALT_INV_Mux36~0_combout\,
	datad => \inst1|inst|ALT_INV_Mux37~0_combout\,
	datae => \inst1|inst5|173|sub|ALT_INV_99~q\,
	dataf => \inst1|inst5|135|sub|ALT_INV_81~combout\,
	combout => \inst1|inst5|168|6~0_combout\);

-- Location: LABCELL_X62_Y10_N45
\inst1|inst5|129|sub|107\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|inst5|129|sub|107~combout\ = ( \inst1|inst5|129|sub|110~q\ & ( (!\inst1|inst5|129|sub|99~q\) # ((!\inst1|inst5|129|sub|87~q\) # ((!\inst1|inst5|129|sub|9~q\) # (!\inst1|inst5|128|sub|104~0_combout\))) ) ) # ( !\inst1|inst5|129|sub|110~q\ & ( 
-- (\inst1|inst5|129|sub|99~q\ & (\inst1|inst5|129|sub|87~q\ & (\inst1|inst5|129|sub|9~q\ & \inst1|inst5|128|sub|104~0_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000001000000000000000111111111111111101111111111111110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|inst5|129|sub|ALT_INV_99~q\,
	datab => \inst1|inst5|129|sub|ALT_INV_87~q\,
	datac => \inst1|inst5|129|sub|ALT_INV_9~q\,
	datad => \inst1|inst5|128|sub|ALT_INV_104~0_combout\,
	dataf => \inst1|inst5|129|sub|ALT_INV_110~q\,
	combout => \inst1|inst5|129|sub|107~combout\);

-- Location: LABCELL_X62_Y10_N42
\inst1|inst5|129|sub|110~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|inst5|129|sub|110~feeder_combout\ = ( \inst1|inst5|129|sub|107~combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \inst1|inst5|129|sub|ALT_INV_107~combout\,
	combout => \inst1|inst5|129|sub|110~feeder_combout\);

-- Location: FF_X62_Y10_N44
\inst1|inst5|129|sub|110\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2~q\,
	d => \inst1|inst5|129|sub|110~feeder_combout\,
	asdata => \DATA[3]~input_o\,
	clrn => \nRESET~input_o\,
	sload => \inst1|inst|Mux42~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|inst5|129|sub|110~q\);

-- Location: LABCELL_X61_Y12_N12
\inst1|inst5|142|sub|83\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|inst5|142|sub|83~combout\ = ( \inst1|inst5|129|sub|9~q\ & ( !\inst1|inst5|129|sub|110~q\ $ (((!\inst1|inst5|129|sub|99~q\) # ((!\inst1|inst5|129|sub|87~q\) # (\inst1|inst5|141|sub|107~0_combout\)))) ) ) # ( !\inst1|inst5|129|sub|9~q\ & ( 
-- \inst1|inst5|129|sub|110~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101010101010101010101010101011001010101010101100101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|inst5|129|sub|ALT_INV_110~q\,
	datab => \inst1|inst5|129|sub|ALT_INV_99~q\,
	datac => \inst1|inst5|141|sub|ALT_INV_107~0_combout\,
	datad => \inst1|inst5|129|sub|ALT_INV_87~q\,
	dataf => \inst1|inst5|129|sub|ALT_INV_9~q\,
	combout => \inst1|inst5|142|sub|83~combout\);

-- Location: LABCELL_X61_Y13_N57
\inst1|inst5|125|sub|107\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|inst5|125|sub|107~combout\ = ( \inst1|inst5|125|sub|9~q\ & ( !\inst1|inst5|125|sub|110~q\ $ (((!\inst1|inst5|125|sub|87~q\) # ((!\inst1|inst5|124|sub|104~0_combout\) # (!\inst1|inst5|125|sub|99~q\)))) ) ) # ( !\inst1|inst5|125|sub|9~q\ & ( 
-- \inst1|inst5|125|sub|110~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100001111000111100000111100011110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|inst5|125|sub|ALT_INV_87~q\,
	datab => \inst1|inst5|124|sub|ALT_INV_104~0_combout\,
	datac => \inst1|inst5|125|sub|ALT_INV_110~q\,
	datad => \inst1|inst5|125|sub|ALT_INV_99~q\,
	dataf => \inst1|inst5|125|sub|ALT_INV_9~q\,
	combout => \inst1|inst5|125|sub|107~combout\);

-- Location: LABCELL_X60_Y13_N12
\inst1|inst5|125|sub|110~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|inst5|125|sub|110~feeder_combout\ = ( \inst1|inst5|125|sub|107~combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \inst1|inst5|125|sub|ALT_INV_107~combout\,
	combout => \inst1|inst5|125|sub|110~feeder_combout\);

-- Location: FF_X60_Y13_N14
\inst1|inst5|125|sub|110\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2~q\,
	d => \inst1|inst5|125|sub|110~feeder_combout\,
	asdata => \DATA[3]~input_o\,
	clrn => \nRESET~input_o\,
	sload => \inst1|inst|Mux40~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|inst5|125|sub|110~q\);

-- Location: LABCELL_X61_Y10_N42
\inst1|inst5|135|sub|83\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|inst5|135|sub|83~combout\ = ( \inst1|inst5|133|sub|107~0_combout\ & ( !\inst1|inst5|125|sub|110~q\ $ (((!\inst1|inst5|125|sub|9~q\) # ((!\inst1|inst5|125|sub|99~q\) # (!\inst1|inst5|125|sub|87~q\)))) ) ) # ( !\inst1|inst5|133|sub|107~0_combout\ & ( 
-- \inst1|inst5|125|sub|110~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111100000001111111100000000111111110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|inst5|125|sub|ALT_INV_9~q\,
	datab => \inst1|inst5|125|sub|ALT_INV_99~q\,
	datac => \inst1|inst5|125|sub|ALT_INV_87~q\,
	datad => \inst1|inst5|125|sub|ALT_INV_110~q\,
	dataf => \inst1|inst5|133|sub|ALT_INV_107~0_combout\,
	combout => \inst1|inst5|135|sub|83~combout\);

-- Location: LABCELL_X63_Y13_N57
\inst1|inst5|32|sub|110~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|inst5|32|sub|110~0_combout\ = ( \inst1|inst5|32|sub|99~q\ & ( !\inst1|inst5|32|sub|110~q\ $ (!\inst1|inst5|32|sub|96~0_combout\) ) ) # ( !\inst1|inst5|32|sub|99~q\ & ( \inst1|inst5|32|sub|110~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101010101010101010101011010010110100101101001011010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|inst5|32|sub|ALT_INV_110~q\,
	datac => \inst1|inst5|32|sub|ALT_INV_96~0_combout\,
	dataf => \inst1|inst5|32|sub|ALT_INV_99~q\,
	combout => \inst1|inst5|32|sub|110~0_combout\);

-- Location: FF_X62_Y13_N59
\inst1|inst5|32|sub|110\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2~q\,
	asdata => \inst1|inst5|32|sub|110~0_combout\,
	clrn => \nRESET~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|inst5|32|sub|110~q\);

-- Location: LABCELL_X61_Y10_N51
\inst1|inst5|173|sub|107\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|inst5|173|sub|107~combout\ = ( \inst1|inst5|173|sub|99~q\ & ( !\inst1|inst5|173|sub|110~q\ $ (((!\inst1|inst5|173|sub|87~q\) # (!\inst1|inst5|173|sub|106~0_combout\))) ) ) # ( !\inst1|inst5|173|sub|99~q\ & ( \inst1|inst5|173|sub|110~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011001100110011001100110110001101100011011000110110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|inst5|173|sub|ALT_INV_87~q\,
	datab => \inst1|inst5|173|sub|ALT_INV_110~q\,
	datac => \inst1|inst5|173|sub|ALT_INV_106~0_combout\,
	dataf => \inst1|inst5|173|sub|ALT_INV_99~q\,
	combout => \inst1|inst5|173|sub|107~combout\);

-- Location: LABCELL_X61_Y10_N48
\inst1|inst5|173|sub|110~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|inst5|173|sub|110~feeder_combout\ = \inst1|inst5|173|sub|107~combout\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \inst1|inst5|173|sub|ALT_INV_107~combout\,
	combout => \inst1|inst5|173|sub|110~feeder_combout\);

-- Location: FF_X61_Y10_N50
\inst1|inst5|173|sub|110\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2~q\,
	d => \inst1|inst5|173|sub|110~feeder_combout\,
	asdata => \DATA[3]~input_o\,
	clrn => \nRESET~input_o\,
	sload => \inst1|inst|Mux35~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|inst5|173|sub|110~q\);

-- Location: LABCELL_X61_Y10_N0
\inst1|inst5|170|6~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|inst5|170|6~0_combout\ = ( \inst1|inst|Mux36~0_combout\ & ( \inst1|inst5|173|sub|110~q\ & ( (!\inst1|inst|Mux37~0_combout\ & ((\inst1|inst5|135|sub|83~combout\))) # (\inst1|inst|Mux37~0_combout\ & (\inst1|inst5|142|sub|83~combout\)) ) ) ) # ( 
-- !\inst1|inst|Mux36~0_combout\ & ( \inst1|inst5|173|sub|110~q\ & ( (\inst1|inst|Mux37~0_combout\) # (\inst1|inst5|32|sub|110~q\) ) ) ) # ( \inst1|inst|Mux36~0_combout\ & ( !\inst1|inst5|173|sub|110~q\ & ( (!\inst1|inst|Mux37~0_combout\ & 
-- ((\inst1|inst5|135|sub|83~combout\))) # (\inst1|inst|Mux37~0_combout\ & (\inst1|inst5|142|sub|83~combout\)) ) ) ) # ( !\inst1|inst|Mux36~0_combout\ & ( !\inst1|inst5|173|sub|110~q\ & ( (\inst1|inst5|32|sub|110~q\ & !\inst1|inst|Mux37~0_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100000000001100110101010100001111111111110011001101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|inst5|142|sub|ALT_INV_83~combout\,
	datab => \inst1|inst5|135|sub|ALT_INV_83~combout\,
	datac => \inst1|inst5|32|sub|ALT_INV_110~q\,
	datad => \inst1|inst|ALT_INV_Mux37~0_combout\,
	datae => \inst1|inst|ALT_INV_Mux36~0_combout\,
	dataf => \inst1|inst5|173|sub|ALT_INV_110~q\,
	combout => \inst1|inst5|170|6~0_combout\);

-- Location: M10K_X58_Y8_N0
\inst|altsyncram_component|auto_generated|ram_block1a6\ : cyclonev_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init3 => "00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init2 => "00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init1 => "00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init0 => "00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "eprom.mif",
	init_file_layout => "port_a",
	logical_ram_name => "EEPROM:inst|altsyncram:altsyncram_component|altsyncram_7d14:auto_generated|ALTSYNCRAM",
	operation_mode => "rom",
	port_a_address_clear => "none",
	port_a_address_width => 12,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "clock0",
	port_a_data_width => 2,
	port_a_first_address => 0,
	port_a_first_bit_number => 6,
	port_a_last_address => 4095,
	port_a_logical_ram_depth => 4096,
	port_a_logical_ram_width => 8,
	port_a_read_during_write_mode => "new_data_no_nbe_read",
	port_a_write_enable_clock => "none",
	port_b_address_width => 12,
	port_b_data_width => 2,
	ram_block_type => "M20K")
-- pragma translate_on
PORT MAP (
	portare => VCC,
	clk0 => \MCLK~inputCLKENA0_outclk\,
	portaaddr => \inst|altsyncram_component|auto_generated|ram_block1a6_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \inst|altsyncram_component|auto_generated|ram_block1a6_PORTADATAOUT_bus\);

-- Location: LABCELL_X63_Y12_N36
\inst1|inst|Mux38~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|inst|Mux38~0_combout\ = ( \inst1|inst|state[3]~DUPLICATE_q\ & ( \inst1|inst|state[2]~DUPLICATE_q\ & ( ((!\inst1|inst|state[0]~DUPLICATE_q\ $ (!\inst1|inst|state[1]~DUPLICATE_q\)) # (\inst1|inst|state[4]~DUPLICATE_q\)) # (\inst1|inst|state\(5)) ) ) 
-- ) # ( !\inst1|inst|state[3]~DUPLICATE_q\ & ( \inst1|inst|state[2]~DUPLICATE_q\ & ( (!\inst1|inst|state\(5)) # ((!\inst1|inst|state[0]~DUPLICATE_q\) # (\inst1|inst|state[4]~DUPLICATE_q\)) ) ) ) # ( \inst1|inst|state[3]~DUPLICATE_q\ & ( 
-- !\inst1|inst|state[2]~DUPLICATE_q\ & ( (!\inst1|inst|state\(5)) # ((!\inst1|inst|state[0]~DUPLICATE_q\) # (\inst1|inst|state[4]~DUPLICATE_q\)) ) ) ) # ( !\inst1|inst|state[3]~DUPLICATE_q\ & ( !\inst1|inst|state[2]~DUPLICATE_q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111110111111101111111011111110110111111111110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|inst|ALT_INV_state\(5),
	datab => \inst1|inst|ALT_INV_state[4]~DUPLICATE_q\,
	datac => \inst1|inst|ALT_INV_state[0]~DUPLICATE_q\,
	datad => \inst1|inst|ALT_INV_state[1]~DUPLICATE_q\,
	datae => \inst1|inst|ALT_INV_state[3]~DUPLICATE_q\,
	dataf => \inst1|inst|ALT_INV_state[2]~DUPLICATE_q\,
	combout => \inst1|inst|Mux38~0_combout\);

-- Location: LABCELL_X62_Y13_N42
\inst1|inst5|33|sub|9~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|inst5|33|sub|9~0_combout\ = ( \inst1|inst5|32|sub|99~q\ & ( !\inst1|inst5|33|sub|9~q\ $ (((!\inst1|inst5|32|sub|96~0_combout\) # (!\inst1|inst5|32|sub|110~q\))) ) ) # ( !\inst1|inst5|32|sub|99~q\ & ( \inst1|inst5|33|sub|9~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100011110000111100001111000011110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|inst5|32|sub|ALT_INV_96~0_combout\,
	datab => \inst1|inst5|32|sub|ALT_INV_110~q\,
	datac => \inst1|inst5|33|sub|ALT_INV_9~q\,
	dataf => \inst1|inst5|32|sub|ALT_INV_99~q\,
	combout => \inst1|inst5|33|sub|9~0_combout\);

-- Location: FF_X62_Y13_N56
\inst1|inst5|33|sub|9\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2~q\,
	asdata => \inst1|inst5|33|sub|9~0_combout\,
	clrn => \nRESET~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|inst5|33|sub|9~q\);

-- Location: LABCELL_X62_Y10_N12
\inst1|inst5|130|sub|78\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|inst5|130|sub|78~combout\ = ( \inst1|inst5|128|sub|104~0_combout\ & ( \inst1|inst5|129|sub|110~q\ & ( !\inst1|inst5|130|sub|9~q\ $ (((!\inst1|inst5|129|sub|87~q\) # ((!\inst1|inst5|129|sub|99~q\) # (!\inst1|inst5|129|sub|9~q\)))) ) ) ) # ( 
-- !\inst1|inst5|128|sub|104~0_combout\ & ( \inst1|inst5|129|sub|110~q\ & ( \inst1|inst5|130|sub|9~q\ ) ) ) # ( \inst1|inst5|128|sub|104~0_combout\ & ( !\inst1|inst5|129|sub|110~q\ & ( \inst1|inst5|130|sub|9~q\ ) ) ) # ( !\inst1|inst5|128|sub|104~0_combout\ 
-- & ( !\inst1|inst5|129|sub|110~q\ & ( \inst1|inst5|130|sub|9~q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101010101010101010101010101010101010101010101010110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|inst5|130|sub|ALT_INV_9~q\,
	datab => \inst1|inst5|129|sub|ALT_INV_87~q\,
	datac => \inst1|inst5|129|sub|ALT_INV_99~q\,
	datad => \inst1|inst5|129|sub|ALT_INV_9~q\,
	datae => \inst1|inst5|128|sub|ALT_INV_104~0_combout\,
	dataf => \inst1|inst5|129|sub|ALT_INV_110~q\,
	combout => \inst1|inst5|130|sub|78~combout\);

-- Location: LABCELL_X62_Y10_N54
\inst1|inst5|130|sub|9~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|inst5|130|sub|9~feeder_combout\ = ( \inst1|inst5|130|sub|78~combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \inst1|inst5|130|sub|ALT_INV_78~combout\,
	combout => \inst1|inst5|130|sub|9~feeder_combout\);

-- Location: FF_X62_Y10_N56
\inst1|inst5|130|sub|9\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2~q\,
	d => \inst1|inst5|130|sub|9~feeder_combout\,
	asdata => \DATA[4]~input_o\,
	clrn => \nRESET~input_o\,
	sload => \inst1|inst|Mux42~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|inst5|130|sub|9~q\);

-- Location: LABCELL_X61_Y12_N3
\inst1|inst5|143|sub|77\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|inst5|143|sub|77~combout\ = ( \inst1|inst5|129|sub|87~q\ & ( \inst1|inst5|141|sub|107~0_combout\ & ( \inst1|inst5|130|sub|9~q\ ) ) ) # ( !\inst1|inst5|129|sub|87~q\ & ( \inst1|inst5|141|sub|107~0_combout\ & ( \inst1|inst5|130|sub|9~q\ ) ) ) # ( 
-- \inst1|inst5|129|sub|87~q\ & ( !\inst1|inst5|141|sub|107~0_combout\ & ( !\inst1|inst5|130|sub|9~q\ $ (((!\inst1|inst5|129|sub|9~q\) # ((!\inst1|inst5|129|sub|99~q\) # (!\inst1|inst5|129|sub|110~q\)))) ) ) ) # ( !\inst1|inst5|129|sub|87~q\ & ( 
-- !\inst1|inst5|141|sub|107~0_combout\ & ( \inst1|inst5|130|sub|9~q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101010101010101011001010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|inst5|130|sub|ALT_INV_9~q\,
	datab => \inst1|inst5|129|sub|ALT_INV_9~q\,
	datac => \inst1|inst5|129|sub|ALT_INV_99~q\,
	datad => \inst1|inst5|129|sub|ALT_INV_110~q\,
	datae => \inst1|inst5|129|sub|ALT_INV_87~q\,
	dataf => \inst1|inst5|141|sub|ALT_INV_107~0_combout\,
	combout => \inst1|inst5|143|sub|77~combout\);

-- Location: LABCELL_X61_Y10_N36
\inst1|inst5|174|sub|78\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|inst5|174|sub|78~combout\ = ( \inst1|inst5|173|sub|99~q\ & ( !\inst1|inst5|174|sub|9~q\ $ (((!\inst1|inst5|173|sub|87~q\) # ((!\inst1|inst5|173|sub|106~0_combout\) # (!\inst1|inst5|173|sub|110~q\)))) ) ) # ( !\inst1|inst5|173|sub|99~q\ & ( 
-- \inst1|inst5|174|sub|9~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100001111000111100000111100011110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|inst5|173|sub|ALT_INV_87~q\,
	datab => \inst1|inst5|173|sub|ALT_INV_106~0_combout\,
	datac => \inst1|inst5|174|sub|ALT_INV_9~q\,
	datad => \inst1|inst5|173|sub|ALT_INV_110~q\,
	dataf => \inst1|inst5|173|sub|ALT_INV_99~q\,
	combout => \inst1|inst5|174|sub|78~combout\);

-- Location: LABCELL_X61_Y10_N39
\inst1|inst5|174|sub|9~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|inst5|174|sub|9~feeder_combout\ = \inst1|inst5|174|sub|78~combout\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \inst1|inst5|174|sub|ALT_INV_78~combout\,
	combout => \inst1|inst5|174|sub|9~feeder_combout\);

-- Location: FF_X61_Y10_N41
\inst1|inst5|174|sub|9\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2~q\,
	d => \inst1|inst5|174|sub|9~feeder_combout\,
	asdata => \DATA[4]~input_o\,
	clrn => \nRESET~input_o\,
	sload => \inst1|inst|Mux35~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|inst5|174|sub|9~q\);

-- Location: LABCELL_X60_Y13_N6
\inst1|inst5|126|sub|78\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|inst5|126|sub|78~combout\ = ( \inst1|inst5|125|sub|99~q\ & ( \inst1|inst5|124|sub|104~0_combout\ & ( !\inst1|inst5|126|sub|9~q\ $ (((!\inst1|inst5|125|sub|87~q\) # ((!\inst1|inst5|125|sub|9~q\) # (!\inst1|inst5|125|sub|110~q\)))) ) ) ) # ( 
-- !\inst1|inst5|125|sub|99~q\ & ( \inst1|inst5|124|sub|104~0_combout\ & ( \inst1|inst5|126|sub|9~q\ ) ) ) # ( \inst1|inst5|125|sub|99~q\ & ( !\inst1|inst5|124|sub|104~0_combout\ & ( \inst1|inst5|126|sub|9~q\ ) ) ) # ( !\inst1|inst5|125|sub|99~q\ & ( 
-- !\inst1|inst5|124|sub|104~0_combout\ & ( \inst1|inst5|126|sub|9~q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111100000000111111110000000111111110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|inst5|125|sub|ALT_INV_87~q\,
	datab => \inst1|inst5|125|sub|ALT_INV_9~q\,
	datac => \inst1|inst5|125|sub|ALT_INV_110~q\,
	datad => \inst1|inst5|126|sub|ALT_INV_9~q\,
	datae => \inst1|inst5|125|sub|ALT_INV_99~q\,
	dataf => \inst1|inst5|124|sub|ALT_INV_104~0_combout\,
	combout => \inst1|inst5|126|sub|78~combout\);

-- Location: LABCELL_X60_Y13_N39
\inst1|inst5|126|sub|9~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|inst5|126|sub|9~feeder_combout\ = \inst1|inst5|126|sub|78~combout\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \inst1|inst5|126|sub|ALT_INV_78~combout\,
	combout => \inst1|inst5|126|sub|9~feeder_combout\);

-- Location: FF_X60_Y13_N41
\inst1|inst5|126|sub|9\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2~q\,
	d => \inst1|inst5|126|sub|9~feeder_combout\,
	asdata => \DATA[4]~input_o\,
	clrn => \nRESET~input_o\,
	sload => \inst1|inst|Mux40~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|inst5|126|sub|9~q\);

-- Location: LABCELL_X62_Y13_N39
\inst1|inst5|136|sub|77\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|inst5|136|sub|77~combout\ = ( \inst1|inst5|125|sub|87~q\ & ( \inst1|inst5|125|sub|110~q\ & ( !\inst1|inst5|126|sub|9~q\ $ (((!\inst1|inst5|125|sub|9~q\) # ((!\inst1|inst5|133|sub|107~0_combout\) # (!\inst1|inst5|125|sub|99~q\)))) ) ) ) # ( 
-- !\inst1|inst5|125|sub|87~q\ & ( \inst1|inst5|125|sub|110~q\ & ( \inst1|inst5|126|sub|9~q\ ) ) ) # ( \inst1|inst5|125|sub|87~q\ & ( !\inst1|inst5|125|sub|110~q\ & ( \inst1|inst5|126|sub|9~q\ ) ) ) # ( !\inst1|inst5|125|sub|87~q\ & ( 
-- !\inst1|inst5|125|sub|110~q\ & ( \inst1|inst5|126|sub|9~q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100001111000011110000111100011110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|inst5|125|sub|ALT_INV_9~q\,
	datab => \inst1|inst5|133|sub|ALT_INV_107~0_combout\,
	datac => \inst1|inst5|126|sub|ALT_INV_9~q\,
	datad => \inst1|inst5|125|sub|ALT_INV_99~q\,
	datae => \inst1|inst5|125|sub|ALT_INV_87~q\,
	dataf => \inst1|inst5|125|sub|ALT_INV_110~q\,
	combout => \inst1|inst5|136|sub|77~combout\);

-- Location: LABCELL_X61_Y13_N0
\inst1|inst5|163|6~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|inst5|163|6~0_combout\ = ( \inst1|inst5|174|sub|9~q\ & ( \inst1|inst5|136|sub|77~combout\ & ( (!\inst1|inst|Mux36~0_combout\ & (((\inst1|inst|Mux37~0_combout\)) # (\inst1|inst5|33|sub|9~q\))) # (\inst1|inst|Mux36~0_combout\ & 
-- (((!\inst1|inst|Mux37~0_combout\) # (\inst1|inst5|143|sub|77~combout\)))) ) ) ) # ( !\inst1|inst5|174|sub|9~q\ & ( \inst1|inst5|136|sub|77~combout\ & ( (!\inst1|inst|Mux36~0_combout\ & (\inst1|inst5|33|sub|9~q\ & (!\inst1|inst|Mux37~0_combout\))) # 
-- (\inst1|inst|Mux36~0_combout\ & (((!\inst1|inst|Mux37~0_combout\) # (\inst1|inst5|143|sub|77~combout\)))) ) ) ) # ( \inst1|inst5|174|sub|9~q\ & ( !\inst1|inst5|136|sub|77~combout\ & ( (!\inst1|inst|Mux36~0_combout\ & (((\inst1|inst|Mux37~0_combout\)) # 
-- (\inst1|inst5|33|sub|9~q\))) # (\inst1|inst|Mux36~0_combout\ & (((\inst1|inst|Mux37~0_combout\ & \inst1|inst5|143|sub|77~combout\)))) ) ) ) # ( !\inst1|inst5|174|sub|9~q\ & ( !\inst1|inst5|136|sub|77~combout\ & ( (!\inst1|inst|Mux36~0_combout\ & 
-- (\inst1|inst5|33|sub|9~q\ & (!\inst1|inst|Mux37~0_combout\))) # (\inst1|inst|Mux36~0_combout\ & (((\inst1|inst|Mux37~0_combout\ & \inst1|inst5|143|sub|77~combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010000000100101001010100010111101110000011101010111101001111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|inst|ALT_INV_Mux36~0_combout\,
	datab => \inst1|inst5|33|sub|ALT_INV_9~q\,
	datac => \inst1|inst|ALT_INV_Mux37~0_combout\,
	datad => \inst1|inst5|143|sub|ALT_INV_77~combout\,
	datae => \inst1|inst5|174|sub|ALT_INV_9~q\,
	dataf => \inst1|inst5|136|sub|ALT_INV_77~combout\,
	combout => \inst1|inst5|163|6~0_combout\);

-- Location: LABCELL_X60_Y13_N48
\inst1|inst5|125|sub|104~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|inst5|125|sub|104~0_combout\ = ( \inst1|inst5|125|sub|9~q\ & ( \inst1|inst5|124|sub|89~0_combout\ & ( (\inst1|inst5|124|sub|87~q\ & (\inst1|inst5|124|sub|110~q\ & (\inst1|inst5|125|sub|87~q\ & \inst1|inst5|124|sub|99~q\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|inst5|124|sub|ALT_INV_87~q\,
	datab => \inst1|inst5|124|sub|ALT_INV_110~q\,
	datac => \inst1|inst5|125|sub|ALT_INV_87~q\,
	datad => \inst1|inst5|124|sub|ALT_INV_99~q\,
	datae => \inst1|inst5|125|sub|ALT_INV_9~q\,
	dataf => \inst1|inst5|124|sub|ALT_INV_89~0_combout\,
	combout => \inst1|inst5|125|sub|104~0_combout\);

-- Location: LABCELL_X60_Y13_N15
\inst1|inst5|126|sub|90\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|inst5|126|sub|90~combout\ = ( \inst1|inst5|125|sub|104~0_combout\ & ( !\inst1|inst5|126|sub|87~q\ $ (((!\inst1|inst5|125|sub|110~q\) # ((!\inst1|inst5|125|sub|99~q\) # (!\inst1|inst5|126|sub|9~q\)))) ) ) # ( !\inst1|inst5|125|sub|104~0_combout\ & ( 
-- \inst1|inst5|126|sub|87~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111100000001111111100000000111111110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|inst5|125|sub|ALT_INV_110~q\,
	datab => \inst1|inst5|125|sub|ALT_INV_99~q\,
	datac => \inst1|inst5|126|sub|ALT_INV_9~q\,
	datad => \inst1|inst5|126|sub|ALT_INV_87~q\,
	dataf => \inst1|inst5|125|sub|ALT_INV_104~0_combout\,
	combout => \inst1|inst5|126|sub|90~combout\);

-- Location: LABCELL_X60_Y13_N21
\inst1|inst5|126|sub|87~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|inst5|126|sub|87~feeder_combout\ = ( \inst1|inst5|126|sub|90~combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \inst1|inst5|126|sub|ALT_INV_90~combout\,
	combout => \inst1|inst5|126|sub|87~feeder_combout\);

-- Location: FF_X60_Y13_N23
\inst1|inst5|126|sub|87\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2~q\,
	d => \inst1|inst5|126|sub|87~feeder_combout\,
	asdata => \DATA[5]~input_o\,
	clrn => \nRESET~input_o\,
	sload => \inst1|inst|Mux40~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|inst5|126|sub|87~q\);

-- Location: LABCELL_X60_Y13_N30
\inst1|inst5|126|sub|97\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|inst5|126|sub|97~combout\ = ( \inst1|inst5|126|sub|99~q\ & ( \inst1|inst5|125|sub|104~0_combout\ & ( (!\inst1|inst5|125|sub|110~q\) # ((!\inst1|inst5|125|sub|99~q\) # ((!\inst1|inst5|126|sub|87~q\) # (!\inst1|inst5|126|sub|9~q\))) ) ) ) # ( 
-- !\inst1|inst5|126|sub|99~q\ & ( \inst1|inst5|125|sub|104~0_combout\ & ( (\inst1|inst5|125|sub|110~q\ & (\inst1|inst5|125|sub|99~q\ & (\inst1|inst5|126|sub|87~q\ & \inst1|inst5|126|sub|9~q\))) ) ) ) # ( \inst1|inst5|126|sub|99~q\ & ( 
-- !\inst1|inst5|125|sub|104~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000011111111111111110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|inst5|125|sub|ALT_INV_110~q\,
	datab => \inst1|inst5|125|sub|ALT_INV_99~q\,
	datac => \inst1|inst5|126|sub|ALT_INV_87~q\,
	datad => \inst1|inst5|126|sub|ALT_INV_9~q\,
	datae => \inst1|inst5|126|sub|ALT_INV_99~q\,
	dataf => \inst1|inst5|125|sub|ALT_INV_104~0_combout\,
	combout => \inst1|inst5|126|sub|97~combout\);

-- Location: LABCELL_X60_Y13_N57
\inst1|inst5|126|sub|99~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|inst5|126|sub|99~feeder_combout\ = ( \inst1|inst5|126|sub|97~combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \inst1|inst5|126|sub|ALT_INV_97~combout\,
	combout => \inst1|inst5|126|sub|99~feeder_combout\);

-- Location: FF_X60_Y13_N59
\inst1|inst5|126|sub|99\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2~q\,
	d => \inst1|inst5|126|sub|99~feeder_combout\,
	asdata => \DATA[6]~input_o\,
	clrn => \nRESET~input_o\,
	sload => \inst1|inst|Mux40~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|inst5|126|sub|99~q\);

-- Location: LABCELL_X61_Y13_N18
\inst1|inst5|135|sub|98\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|inst5|135|sub|98~combout\ = ( \inst1|inst5|125|sub|9~q\ & ( (\inst1|inst5|133|sub|107~0_combout\ & (\inst1|inst5|125|sub|99~q\ & \inst1|inst5|125|sub|87~q\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000110000000000000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \inst1|inst5|133|sub|ALT_INV_107~0_combout\,
	datac => \inst1|inst5|125|sub|ALT_INV_99~q\,
	datad => \inst1|inst5|125|sub|ALT_INV_87~q\,
	dataf => \inst1|inst5|125|sub|ALT_INV_9~q\,
	combout => \inst1|inst5|135|sub|98~combout\);

-- Location: LABCELL_X62_Y11_N48
\inst1|inst5|125|sub|104~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|inst5|125|sub|104~1_combout\ = ( \inst1|inst5|124|sub|104~0_combout\ & ( (\inst1|inst5|125|sub|87~q\ & (\inst1|inst5|125|sub|9~q\ & (\inst1|inst5|125|sub|99~q\ & \inst1|inst5|125|sub|110~q\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000010000000000000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|inst5|125|sub|ALT_INV_87~q\,
	datab => \inst1|inst5|125|sub|ALT_INV_9~q\,
	datac => \inst1|inst5|125|sub|ALT_INV_99~q\,
	datad => \inst1|inst5|125|sub|ALT_INV_110~q\,
	dataf => \inst1|inst5|124|sub|ALT_INV_104~0_combout\,
	combout => \inst1|inst5|125|sub|104~1_combout\);

-- Location: LABCELL_X61_Y13_N33
\inst1|inst5|126|sub|107\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|inst5|126|sub|107~combout\ = ( \inst1|inst5|125|sub|104~1_combout\ & ( !\inst1|inst5|126|sub|110~q\ $ (((!\inst1|inst5|126|sub|99~q\) # ((!\inst1|inst5|126|sub|9~q\) # (!\inst1|inst5|126|sub|87~q\)))) ) ) # ( !\inst1|inst5|125|sub|104~1_combout\ & 
-- ( \inst1|inst5|126|sub|110~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100001111000111100000111100011110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|inst5|126|sub|ALT_INV_99~q\,
	datab => \inst1|inst5|126|sub|ALT_INV_9~q\,
	datac => \inst1|inst5|126|sub|ALT_INV_110~q\,
	datad => \inst1|inst5|126|sub|ALT_INV_87~q\,
	dataf => \inst1|inst5|125|sub|ALT_INV_104~1_combout\,
	combout => \inst1|inst5|126|sub|107~combout\);

-- Location: LABCELL_X60_Y13_N0
\inst1|inst5|126|sub|110~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|inst5|126|sub|110~feeder_combout\ = ( \inst1|inst5|126|sub|107~combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \inst1|inst5|126|sub|ALT_INV_107~combout\,
	combout => \inst1|inst5|126|sub|110~feeder_combout\);

-- Location: FF_X60_Y13_N2
\inst1|inst5|126|sub|110\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2~q\,
	d => \inst1|inst5|126|sub|110~feeder_combout\,
	asdata => \DATA[7]~input_o\,
	clrn => \nRESET~input_o\,
	sload => \inst1|inst|Mux40~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|inst5|126|sub|110~q\);

-- Location: LABCELL_X61_Y13_N24
\inst1|inst5|136|sub|83\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|inst5|136|sub|83~combout\ = ( \inst1|inst5|126|sub|9~q\ & ( \inst1|inst5|125|sub|110~q\ & ( !\inst1|inst5|126|sub|110~q\ $ (((!\inst1|inst5|126|sub|99~q\) # ((!\inst1|inst5|135|sub|98~combout\) # (!\inst1|inst5|126|sub|87~q\)))) ) ) ) # ( 
-- !\inst1|inst5|126|sub|9~q\ & ( \inst1|inst5|125|sub|110~q\ & ( \inst1|inst5|126|sub|110~q\ ) ) ) # ( \inst1|inst5|126|sub|9~q\ & ( !\inst1|inst5|125|sub|110~q\ & ( \inst1|inst5|126|sub|110~q\ ) ) ) # ( !\inst1|inst5|126|sub|9~q\ & ( 
-- !\inst1|inst5|125|sub|110~q\ & ( \inst1|inst5|126|sub|110~q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111100000000111111110000000111111110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|inst5|126|sub|ALT_INV_99~q\,
	datab => \inst1|inst5|135|sub|ALT_INV_98~combout\,
	datac => \inst1|inst5|126|sub|ALT_INV_87~q\,
	datad => \inst1|inst5|126|sub|ALT_INV_110~q\,
	datae => \inst1|inst5|126|sub|ALT_INV_9~q\,
	dataf => \inst1|inst5|125|sub|ALT_INV_110~q\,
	combout => \inst1|inst5|136|sub|83~combout\);

-- Location: MLABCELL_X59_Y11_N21
\inst1|inst5|173|sub|96~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|inst5|173|sub|96~0_combout\ = ( \inst1|inst5|172|sub|106~0_combout\ & ( \inst1|inst5|173|sub|87~q\ & ( (\inst1|inst5|172|sub|110~q\ & (\inst1|inst5|173|sub|9~q\ & (\inst1|inst5|172|sub|87~q\ & \inst1|inst5|172|sub|99~q\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|inst5|172|sub|ALT_INV_110~q\,
	datab => \inst1|inst5|173|sub|ALT_INV_9~q\,
	datac => \inst1|inst5|172|sub|ALT_INV_87~q\,
	datad => \inst1|inst5|172|sub|ALT_INV_99~q\,
	datae => \inst1|inst5|172|sub|ALT_INV_106~0_combout\,
	dataf => \inst1|inst5|173|sub|ALT_INV_87~q\,
	combout => \inst1|inst5|173|sub|96~0_combout\);

-- Location: LABCELL_X60_Y10_N42
\inst1|inst5|174|sub|90\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|inst5|174|sub|90~combout\ = ( \inst1|inst5|173|sub|106~0_combout\ & ( \inst1|inst5|173|sub|110~q\ & ( !\inst1|inst5|174|sub|87~q\ $ (((!\inst1|inst5|173|sub|87~q\) # ((!\inst1|inst5|174|sub|9~q\) # (!\inst1|inst5|173|sub|99~q\)))) ) ) ) # ( 
-- !\inst1|inst5|173|sub|106~0_combout\ & ( \inst1|inst5|173|sub|110~q\ & ( \inst1|inst5|174|sub|87~q\ ) ) ) # ( \inst1|inst5|173|sub|106~0_combout\ & ( !\inst1|inst5|173|sub|110~q\ & ( \inst1|inst5|174|sub|87~q\ ) ) ) # ( 
-- !\inst1|inst5|173|sub|106~0_combout\ & ( !\inst1|inst5|173|sub|110~q\ & ( \inst1|inst5|174|sub|87~q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011001100110011001100110011001100110011001100110110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|inst5|173|sub|ALT_INV_87~q\,
	datab => \inst1|inst5|174|sub|ALT_INV_87~q\,
	datac => \inst1|inst5|174|sub|ALT_INV_9~q\,
	datad => \inst1|inst5|173|sub|ALT_INV_99~q\,
	datae => \inst1|inst5|173|sub|ALT_INV_106~0_combout\,
	dataf => \inst1|inst5|173|sub|ALT_INV_110~q\,
	combout => \inst1|inst5|174|sub|90~combout\);

-- Location: LABCELL_X61_Y10_N15
\inst1|inst5|174|sub|87~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|inst5|174|sub|87~feeder_combout\ = ( \inst1|inst5|174|sub|90~combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \inst1|inst5|174|sub|ALT_INV_90~combout\,
	combout => \inst1|inst5|174|sub|87~feeder_combout\);

-- Location: FF_X61_Y10_N17
\inst1|inst5|174|sub|87\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2~q\,
	d => \inst1|inst5|174|sub|87~feeder_combout\,
	asdata => \DATA[5]~input_o\,
	clrn => \nRESET~input_o\,
	sload => \inst1|inst|Mux35~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|inst5|174|sub|87~q\);

-- Location: LABCELL_X61_Y10_N30
\inst1|inst5|174|sub|97\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|inst5|174|sub|97~combout\ = ( \inst1|inst5|173|sub|110~q\ & ( \inst1|inst5|174|sub|87~q\ & ( !\inst1|inst5|174|sub|99~q\ $ (((!\inst1|inst5|173|sub|96~0_combout\) # ((!\inst1|inst5|174|sub|9~q\) # (!\inst1|inst5|173|sub|99~q\)))) ) ) ) # ( 
-- !\inst1|inst5|173|sub|110~q\ & ( \inst1|inst5|174|sub|87~q\ & ( \inst1|inst5|174|sub|99~q\ ) ) ) # ( \inst1|inst5|173|sub|110~q\ & ( !\inst1|inst5|174|sub|87~q\ & ( \inst1|inst5|174|sub|99~q\ ) ) ) # ( !\inst1|inst5|173|sub|110~q\ & ( 
-- !\inst1|inst5|174|sub|87~q\ & ( \inst1|inst5|174|sub|99~q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011001100110011001100110011001100110011001100110110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|inst5|173|sub|ALT_INV_96~0_combout\,
	datab => \inst1|inst5|174|sub|ALT_INV_99~q\,
	datac => \inst1|inst5|174|sub|ALT_INV_9~q\,
	datad => \inst1|inst5|173|sub|ALT_INV_99~q\,
	datae => \inst1|inst5|173|sub|ALT_INV_110~q\,
	dataf => \inst1|inst5|174|sub|ALT_INV_87~q\,
	combout => \inst1|inst5|174|sub|97~combout\);

-- Location: LABCELL_X61_Y10_N6
\inst1|inst5|174|sub|99~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|inst5|174|sub|99~feeder_combout\ = \inst1|inst5|174|sub|97~combout\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011001100110011001100110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \inst1|inst5|174|sub|ALT_INV_97~combout\,
	combout => \inst1|inst5|174|sub|99~feeder_combout\);

-- Location: FF_X61_Y10_N8
\inst1|inst5|174|sub|99\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2~q\,
	d => \inst1|inst5|174|sub|99~feeder_combout\,
	asdata => \DATA[6]~input_o\,
	clrn => \nRESET~input_o\,
	sload => \inst1|inst|Mux35~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|inst5|174|sub|99~q\);

-- Location: LABCELL_X61_Y10_N9
\inst1|inst5|173|sub|104~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|inst5|173|sub|104~0_combout\ = ( \inst1|inst5|173|sub|110~q\ & ( (\inst1|inst5|173|sub|99~q\ & (\inst1|inst5|173|sub|106~0_combout\ & \inst1|inst5|173|sub|87~q\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000001010000000000000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|inst5|173|sub|ALT_INV_99~q\,
	datac => \inst1|inst5|173|sub|ALT_INV_106~0_combout\,
	datad => \inst1|inst5|173|sub|ALT_INV_87~q\,
	dataf => \inst1|inst5|173|sub|ALT_INV_110~q\,
	combout => \inst1|inst5|173|sub|104~0_combout\);

-- Location: LABCELL_X61_Y10_N21
\inst1|inst5|174|sub|107\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|inst5|174|sub|107~combout\ = ( \inst1|inst5|173|sub|104~0_combout\ & ( !\inst1|inst5|174|sub|110~q\ $ (((!\inst1|inst5|174|sub|9~q\) # ((!\inst1|inst5|174|sub|99~q\) # (!\inst1|inst5|174|sub|87~q\)))) ) ) # ( !\inst1|inst5|173|sub|104~0_combout\ & 
-- ( \inst1|inst5|174|sub|110~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111100000001111111100000000111111110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|inst5|174|sub|ALT_INV_9~q\,
	datab => \inst1|inst5|174|sub|ALT_INV_99~q\,
	datac => \inst1|inst5|174|sub|ALT_INV_87~q\,
	datad => \inst1|inst5|174|sub|ALT_INV_110~q\,
	dataf => \inst1|inst5|173|sub|ALT_INV_104~0_combout\,
	combout => \inst1|inst5|174|sub|107~combout\);

-- Location: LABCELL_X61_Y10_N45
\inst1|inst5|174|sub|110~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|inst5|174|sub|110~feeder_combout\ = ( \inst1|inst5|174|sub|107~combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \inst1|inst5|174|sub|ALT_INV_107~combout\,
	combout => \inst1|inst5|174|sub|110~feeder_combout\);

-- Location: FF_X61_Y10_N47
\inst1|inst5|174|sub|110\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2~q\,
	d => \inst1|inst5|174|sub|110~feeder_combout\,
	asdata => \DATA[7]~input_o\,
	clrn => \nRESET~input_o\,
	sload => \inst1|inst|Mux35~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|inst5|174|sub|110~q\);

-- Location: LABCELL_X62_Y13_N57
\inst1|inst5|33|sub|87~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|inst5|33|sub|87~0_combout\ = ( \inst1|inst5|32|sub|96~0_combout\ & ( !\inst1|inst5|33|sub|87~q\ $ (((!\inst1|inst5|33|sub|9~q\) # ((!\inst1|inst5|32|sub|99~q\) # (!\inst1|inst5|32|sub|110~q\)))) ) ) # ( !\inst1|inst5|32|sub|96~0_combout\ & ( 
-- \inst1|inst5|33|sub|87~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011001100110011001100110011001101100011001100110110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|inst5|33|sub|ALT_INV_9~q\,
	datab => \inst1|inst5|33|sub|ALT_INV_87~q\,
	datac => \inst1|inst5|32|sub|ALT_INV_99~q\,
	datad => \inst1|inst5|32|sub|ALT_INV_110~q\,
	dataf => \inst1|inst5|32|sub|ALT_INV_96~0_combout\,
	combout => \inst1|inst5|33|sub|87~0_combout\);

-- Location: FF_X60_Y13_N47
\inst1|inst5|33|sub|87\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2~q\,
	asdata => \inst1|inst5|33|sub|87~0_combout\,
	clrn => \nRESET~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|inst5|33|sub|87~q\);

-- Location: LABCELL_X63_Y13_N45
\inst1|inst5|33|sub|99~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|inst5|33|sub|99~0_combout\ = ( \inst1|inst5|32|sub|99~q\ & ( \inst1|inst5|32|sub|96~0_combout\ & ( !\inst1|inst5|33|sub|99~q\ $ (((!\inst1|inst5|32|sub|110~q\) # ((!\inst1|inst5|33|sub|9~q\) # (!\inst1|inst5|33|sub|87~q\)))) ) ) ) # ( 
-- !\inst1|inst5|32|sub|99~q\ & ( \inst1|inst5|32|sub|96~0_combout\ & ( \inst1|inst5|33|sub|99~q\ ) ) ) # ( \inst1|inst5|32|sub|99~q\ & ( !\inst1|inst5|32|sub|96~0_combout\ & ( \inst1|inst5|33|sub|99~q\ ) ) ) # ( !\inst1|inst5|32|sub|99~q\ & ( 
-- !\inst1|inst5|32|sub|96~0_combout\ & ( \inst1|inst5|33|sub|99~q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100001111000011110000111100011110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|inst5|32|sub|ALT_INV_110~q\,
	datab => \inst1|inst5|33|sub|ALT_INV_9~q\,
	datac => \inst1|inst5|33|sub|ALT_INV_99~q\,
	datad => \inst1|inst5|33|sub|ALT_INV_87~q\,
	datae => \inst1|inst5|32|sub|ALT_INV_99~q\,
	dataf => \inst1|inst5|32|sub|ALT_INV_96~0_combout\,
	combout => \inst1|inst5|33|sub|99~0_combout\);

-- Location: FF_X63_Y13_N17
\inst1|inst5|33|sub|99\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2~q\,
	asdata => \inst1|inst5|33|sub|99~0_combout\,
	clrn => \nRESET~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|inst5|33|sub|99~q\);

-- Location: FF_X63_Y13_N8
\inst1|inst5|33|sub|110\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2~q\,
	asdata => \inst1|inst5|33|sub|110~0_combout\,
	clrn => \nRESET~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|inst5|33|sub|110~q\);

-- Location: LABCELL_X63_Y13_N27
\inst1|inst5|33|sub|106~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|inst5|33|sub|106~0_combout\ = ( \inst1|inst5|32|sub|96~0_combout\ & ( (\inst1|inst5|32|sub|99~q\ & (\inst1|inst5|32|sub|110~q\ & \inst1|inst5|33|sub|9~q\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000001010000000000000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|inst5|32|sub|ALT_INV_99~q\,
	datac => \inst1|inst5|32|sub|ALT_INV_110~q\,
	datad => \inst1|inst5|33|sub|ALT_INV_9~q\,
	dataf => \inst1|inst5|32|sub|ALT_INV_96~0_combout\,
	combout => \inst1|inst5|33|sub|106~0_combout\);

-- Location: LABCELL_X63_Y13_N12
\inst1|inst5|33|sub|110~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|inst5|33|sub|110~0_combout\ = ( \inst1|inst5|33|sub|106~0_combout\ & ( !\inst1|inst5|33|sub|110~q\ $ (((!\inst1|inst5|33|sub|99~q\) # (!\inst1|inst5|33|sub|87~q\))) ) ) # ( !\inst1|inst5|33|sub|106~0_combout\ & ( \inst1|inst5|33|sub|110~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000111111110000000000111111110000001111111100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \inst1|inst5|33|sub|ALT_INV_99~q\,
	datac => \inst1|inst5|33|sub|ALT_INV_87~q\,
	datad => \inst1|inst5|33|sub|ALT_INV_110~q\,
	datae => \inst1|inst5|33|sub|ALT_INV_106~0_combout\,
	combout => \inst1|inst5|33|sub|110~0_combout\);

-- Location: FF_X63_Y13_N7
\inst1|inst5|33|sub|110~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2~q\,
	asdata => \inst1|inst5|33|sub|110~0_combout\,
	clrn => \nRESET~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|inst5|33|sub|110~DUPLICATE_q\);

-- Location: LABCELL_X60_Y11_N36
\inst1|inst5|129|sub|104~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|inst5|129|sub|104~0_combout\ = ( \inst1|inst5|129|sub|87~q\ & ( \inst1|inst5|128|sub|89~0_combout\ & ( (\inst1|inst5|129|sub|9~q\ & (\inst1|inst5|128|sub|110~q\ & (\inst1|inst5|128|sub|99~q\ & \inst1|inst5|128|sub|87~q\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|inst5|129|sub|ALT_INV_9~q\,
	datab => \inst1|inst5|128|sub|ALT_INV_110~q\,
	datac => \inst1|inst5|128|sub|ALT_INV_99~q\,
	datad => \inst1|inst5|128|sub|ALT_INV_87~q\,
	datae => \inst1|inst5|129|sub|ALT_INV_87~q\,
	dataf => \inst1|inst5|128|sub|ALT_INV_89~0_combout\,
	combout => \inst1|inst5|129|sub|104~0_combout\);

-- Location: LABCELL_X61_Y12_N57
\inst1|inst5|130|sub|90\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|inst5|130|sub|90~combout\ = ( \inst1|inst5|129|sub|104~0_combout\ & ( !\inst1|inst5|130|sub|87~q\ $ (((!\inst1|inst5|129|sub|99~q\) # ((!\inst1|inst5|129|sub|110~q\) # (!\inst1|inst5|130|sub|9~q\)))) ) ) # ( !\inst1|inst5|129|sub|104~0_combout\ & ( 
-- \inst1|inst5|130|sub|87~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101010101010101010101010101010101100101010101010110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|inst5|130|sub|ALT_INV_87~q\,
	datab => \inst1|inst5|129|sub|ALT_INV_99~q\,
	datac => \inst1|inst5|129|sub|ALT_INV_110~q\,
	datad => \inst1|inst5|130|sub|ALT_INV_9~q\,
	dataf => \inst1|inst5|129|sub|ALT_INV_104~0_combout\,
	combout => \inst1|inst5|130|sub|90~combout\);

-- Location: LABCELL_X61_Y12_N48
\inst1|inst5|130|sub|87~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|inst5|130|sub|87~feeder_combout\ = ( \inst1|inst5|130|sub|90~combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \inst1|inst5|130|sub|ALT_INV_90~combout\,
	combout => \inst1|inst5|130|sub|87~feeder_combout\);

-- Location: FF_X61_Y12_N50
\inst1|inst5|130|sub|87\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2~q\,
	d => \inst1|inst5|130|sub|87~feeder_combout\,
	asdata => \DATA[5]~input_o\,
	clrn => \nRESET~input_o\,
	sload => \inst1|inst|Mux42~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|inst5|130|sub|87~q\);

-- Location: LABCELL_X61_Y12_N36
\inst1|inst5|130|sub|97\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|inst5|130|sub|97~combout\ = ( \inst1|inst5|129|sub|99~q\ & ( \inst1|inst5|129|sub|104~0_combout\ & ( !\inst1|inst5|130|sub|99~q\ $ (((!\inst1|inst5|130|sub|9~q\) # ((!\inst1|inst5|130|sub|87~q\) # (!\inst1|inst5|129|sub|110~q\)))) ) ) ) # ( 
-- !\inst1|inst5|129|sub|99~q\ & ( \inst1|inst5|129|sub|104~0_combout\ & ( \inst1|inst5|130|sub|99~q\ ) ) ) # ( \inst1|inst5|129|sub|99~q\ & ( !\inst1|inst5|129|sub|104~0_combout\ & ( \inst1|inst5|130|sub|99~q\ ) ) ) # ( !\inst1|inst5|129|sub|99~q\ & ( 
-- !\inst1|inst5|129|sub|104~0_combout\ & ( \inst1|inst5|130|sub|99~q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111100000000111111110000000111111110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|inst5|130|sub|ALT_INV_9~q\,
	datab => \inst1|inst5|130|sub|ALT_INV_87~q\,
	datac => \inst1|inst5|129|sub|ALT_INV_110~q\,
	datad => \inst1|inst5|130|sub|ALT_INV_99~q\,
	datae => \inst1|inst5|129|sub|ALT_INV_99~q\,
	dataf => \inst1|inst5|129|sub|ALT_INV_104~0_combout\,
	combout => \inst1|inst5|130|sub|97~combout\);

-- Location: LABCELL_X61_Y12_N42
\inst1|inst5|130|sub|99~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|inst5|130|sub|99~feeder_combout\ = \inst1|inst5|130|sub|97~combout\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \inst1|inst5|130|sub|ALT_INV_97~combout\,
	combout => \inst1|inst5|130|sub|99~feeder_combout\);

-- Location: FF_X61_Y12_N44
\inst1|inst5|130|sub|99\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2~q\,
	d => \inst1|inst5|130|sub|99~feeder_combout\,
	asdata => \DATA[6]~input_o\,
	clrn => \nRESET~input_o\,
	sload => \inst1|inst|Mux42~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|inst5|130|sub|99~q\);

-- Location: LABCELL_X60_Y11_N12
\inst1|inst5|129|sub|104~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|inst5|129|sub|104~1_combout\ = ( \inst1|inst5|129|sub|99~q\ & ( (\inst1|inst5|129|sub|87~q\ & (\inst1|inst5|129|sub|110~q\ & (\inst1|inst5|129|sub|9~q\ & \inst1|inst5|128|sub|104~0_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000010000000000000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|inst5|129|sub|ALT_INV_87~q\,
	datab => \inst1|inst5|129|sub|ALT_INV_110~q\,
	datac => \inst1|inst5|129|sub|ALT_INV_9~q\,
	datad => \inst1|inst5|128|sub|ALT_INV_104~0_combout\,
	dataf => \inst1|inst5|129|sub|ALT_INV_99~q\,
	combout => \inst1|inst5|129|sub|104~1_combout\);

-- Location: LABCELL_X60_Y11_N9
\inst1|inst5|130|sub|107\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|inst5|130|sub|107~combout\ = ( \inst1|inst5|129|sub|104~1_combout\ & ( !\inst1|inst5|130|sub|110~q\ $ (((!\inst1|inst5|130|sub|9~q\) # ((!\inst1|inst5|130|sub|87~q\) # (!\inst1|inst5|130|sub|99~q\)))) ) ) # ( !\inst1|inst5|129|sub|104~1_combout\ & 
-- ( \inst1|inst5|130|sub|110~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101010101010101010101010101010101100101010101010110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|inst5|130|sub|ALT_INV_110~q\,
	datab => \inst1|inst5|130|sub|ALT_INV_9~q\,
	datac => \inst1|inst5|130|sub|ALT_INV_87~q\,
	datad => \inst1|inst5|130|sub|ALT_INV_99~q\,
	dataf => \inst1|inst5|129|sub|ALT_INV_104~1_combout\,
	combout => \inst1|inst5|130|sub|107~combout\);

-- Location: LABCELL_X60_Y11_N24
\inst1|inst5|130|sub|110~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|inst5|130|sub|110~feeder_combout\ = ( \inst1|inst5|130|sub|107~combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \inst1|inst5|130|sub|ALT_INV_107~combout\,
	combout => \inst1|inst5|130|sub|110~feeder_combout\);

-- Location: FF_X60_Y11_N26
\inst1|inst5|130|sub|110\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2~q\,
	d => \inst1|inst5|130|sub|110~feeder_combout\,
	asdata => \DATA[7]~input_o\,
	clrn => \nRESET~input_o\,
	sload => \inst1|inst|Mux42~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|inst5|130|sub|110~q\);

-- Location: LABCELL_X61_Y12_N45
\inst1|inst5|142|sub|98\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|inst5|142|sub|98~combout\ = ( !\inst1|inst5|141|sub|107~0_combout\ & ( (\inst1|inst5|129|sub|87~q\ & (\inst1|inst5|129|sub|9~q\ & \inst1|inst5|129|sub|99~q\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000010001000000000001000100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|inst5|129|sub|ALT_INV_87~q\,
	datab => \inst1|inst5|129|sub|ALT_INV_9~q\,
	datad => \inst1|inst5|129|sub|ALT_INV_99~q\,
	dataf => \inst1|inst5|141|sub|ALT_INV_107~0_combout\,
	combout => \inst1|inst5|142|sub|98~combout\);

-- Location: LABCELL_X61_Y13_N12
\inst1|inst5|143|sub|83\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|inst5|143|sub|83~combout\ = ( \inst1|inst5|130|sub|87~q\ & ( \inst1|inst5|142|sub|98~combout\ & ( !\inst1|inst5|130|sub|110~q\ $ (((!\inst1|inst5|130|sub|99~q\) # ((!\inst1|inst5|129|sub|110~q\) # (!\inst1|inst5|130|sub|9~q\)))) ) ) ) # ( 
-- !\inst1|inst5|130|sub|87~q\ & ( \inst1|inst5|142|sub|98~combout\ & ( \inst1|inst5|130|sub|110~q\ ) ) ) # ( \inst1|inst5|130|sub|87~q\ & ( !\inst1|inst5|142|sub|98~combout\ & ( \inst1|inst5|130|sub|110~q\ ) ) ) # ( !\inst1|inst5|130|sub|87~q\ & ( 
-- !\inst1|inst5|142|sub|98~combout\ & ( \inst1|inst5|130|sub|110~q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100001111000011110000111100011110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|inst5|130|sub|ALT_INV_99~q\,
	datab => \inst1|inst5|129|sub|ALT_INV_110~q\,
	datac => \inst1|inst5|130|sub|ALT_INV_110~q\,
	datad => \inst1|inst5|130|sub|ALT_INV_9~q\,
	datae => \inst1|inst5|130|sub|ALT_INV_87~q\,
	dataf => \inst1|inst5|142|sub|ALT_INV_98~combout\,
	combout => \inst1|inst5|143|sub|83~combout\);

-- Location: LABCELL_X61_Y13_N48
\inst1|inst5|169|6~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|inst5|169|6~0_combout\ = ( \inst1|inst5|33|sub|110~DUPLICATE_q\ & ( \inst1|inst5|143|sub|83~combout\ & ( (!\inst1|inst|Mux37~0_combout\ & (((!\inst1|inst|Mux36~0_combout\)) # (\inst1|inst5|136|sub|83~combout\))) # (\inst1|inst|Mux37~0_combout\ & 
-- (((\inst1|inst5|174|sub|110~q\) # (\inst1|inst|Mux36~0_combout\)))) ) ) ) # ( !\inst1|inst5|33|sub|110~DUPLICATE_q\ & ( \inst1|inst5|143|sub|83~combout\ & ( (!\inst1|inst|Mux37~0_combout\ & (\inst1|inst5|136|sub|83~combout\ & 
-- (\inst1|inst|Mux36~0_combout\))) # (\inst1|inst|Mux37~0_combout\ & (((\inst1|inst5|174|sub|110~q\) # (\inst1|inst|Mux36~0_combout\)))) ) ) ) # ( \inst1|inst5|33|sub|110~DUPLICATE_q\ & ( !\inst1|inst5|143|sub|83~combout\ & ( (!\inst1|inst|Mux37~0_combout\ 
-- & (((!\inst1|inst|Mux36~0_combout\)) # (\inst1|inst5|136|sub|83~combout\))) # (\inst1|inst|Mux37~0_combout\ & (((!\inst1|inst|Mux36~0_combout\ & \inst1|inst5|174|sub|110~q\)))) ) ) ) # ( !\inst1|inst5|33|sub|110~DUPLICATE_q\ & ( 
-- !\inst1|inst5|143|sub|83~combout\ & ( (!\inst1|inst|Mux37~0_combout\ & (\inst1|inst5|136|sub|83~combout\ & (\inst1|inst|Mux36~0_combout\))) # (\inst1|inst|Mux37~0_combout\ & (((!\inst1|inst|Mux36~0_combout\ & \inst1|inst5|174|sub|110~q\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001001010010101000101111001000000111010101111010011111110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|inst|ALT_INV_Mux37~0_combout\,
	datab => \inst1|inst5|136|sub|ALT_INV_83~combout\,
	datac => \inst1|inst|ALT_INV_Mux36~0_combout\,
	datad => \inst1|inst5|174|sub|ALT_INV_110~q\,
	datae => \inst1|inst5|33|sub|ALT_INV_110~DUPLICATE_q\,
	dataf => \inst1|inst5|143|sub|ALT_INV_83~combout\,
	combout => \inst1|inst5|169|6~0_combout\);

-- Location: LABCELL_X61_Y13_N30
\inst1|inst5|136|sub|81\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|inst5|136|sub|81~combout\ = ( \inst1|inst5|125|sub|110~q\ & ( !\inst1|inst5|126|sub|99~q\ $ (((!\inst1|inst5|126|sub|9~q\) # ((!\inst1|inst5|135|sub|98~combout\) # (!\inst1|inst5|126|sub|87~q\)))) ) ) # ( !\inst1|inst5|125|sub|110~q\ & ( 
-- \inst1|inst5|126|sub|99~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101010101010101010101010101010101100101010101010110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|inst5|126|sub|ALT_INV_99~q\,
	datab => \inst1|inst5|126|sub|ALT_INV_9~q\,
	datac => \inst1|inst5|135|sub|ALT_INV_98~combout\,
	datad => \inst1|inst5|126|sub|ALT_INV_87~q\,
	dataf => \inst1|inst5|125|sub|ALT_INV_110~q\,
	combout => \inst1|inst5|136|sub|81~combout\);

-- Location: FF_X63_Y13_N16
\inst1|inst5|33|sub|99~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2~q\,
	asdata => \inst1|inst5|33|sub|99~0_combout\,
	clrn => \nRESET~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|inst5|33|sub|99~DUPLICATE_q\);

-- Location: LABCELL_X61_Y12_N51
\inst1|inst5|143|sub|81\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|inst5|143|sub|81~combout\ = ( \inst1|inst5|142|sub|98~combout\ & ( !\inst1|inst5|130|sub|99~q\ $ (((!\inst1|inst5|130|sub|9~q\) # ((!\inst1|inst5|130|sub|87~q\) # (!\inst1|inst5|129|sub|110~q\)))) ) ) # ( !\inst1|inst5|142|sub|98~combout\ & ( 
-- \inst1|inst5|130|sub|99~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100001111000111100000111100011110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|inst5|130|sub|ALT_INV_9~q\,
	datab => \inst1|inst5|130|sub|ALT_INV_87~q\,
	datac => \inst1|inst5|130|sub|ALT_INV_99~q\,
	datad => \inst1|inst5|129|sub|ALT_INV_110~q\,
	dataf => \inst1|inst5|142|sub|ALT_INV_98~combout\,
	combout => \inst1|inst5|143|sub|81~combout\);

-- Location: LABCELL_X61_Y13_N6
\inst1|inst5|167|6~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|inst5|167|6~0_combout\ = ( \inst1|inst5|174|sub|99~q\ & ( \inst1|inst5|143|sub|81~combout\ & ( ((!\inst1|inst|Mux36~0_combout\ & ((\inst1|inst5|33|sub|99~DUPLICATE_q\))) # (\inst1|inst|Mux36~0_combout\ & (\inst1|inst5|136|sub|81~combout\))) # 
-- (\inst1|inst|Mux37~0_combout\) ) ) ) # ( !\inst1|inst5|174|sub|99~q\ & ( \inst1|inst5|143|sub|81~combout\ & ( (!\inst1|inst|Mux37~0_combout\ & ((!\inst1|inst|Mux36~0_combout\ & ((\inst1|inst5|33|sub|99~DUPLICATE_q\))) # (\inst1|inst|Mux36~0_combout\ & 
-- (\inst1|inst5|136|sub|81~combout\)))) # (\inst1|inst|Mux37~0_combout\ & (((\inst1|inst|Mux36~0_combout\)))) ) ) ) # ( \inst1|inst5|174|sub|99~q\ & ( !\inst1|inst5|143|sub|81~combout\ & ( (!\inst1|inst|Mux37~0_combout\ & ((!\inst1|inst|Mux36~0_combout\ & 
-- ((\inst1|inst5|33|sub|99~DUPLICATE_q\))) # (\inst1|inst|Mux36~0_combout\ & (\inst1|inst5|136|sub|81~combout\)))) # (\inst1|inst|Mux37~0_combout\ & (((!\inst1|inst|Mux36~0_combout\)))) ) ) ) # ( !\inst1|inst5|174|sub|99~q\ & ( 
-- !\inst1|inst5|143|sub|81~combout\ & ( (!\inst1|inst|Mux37~0_combout\ & ((!\inst1|inst|Mux36~0_combout\ & ((\inst1|inst5|33|sub|99~DUPLICATE_q\))) # (\inst1|inst|Mux36~0_combout\ & (\inst1|inst5|136|sub|81~combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001010100010010100101111001000000111101001110101011111110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|inst|ALT_INV_Mux37~0_combout\,
	datab => \inst1|inst5|136|sub|ALT_INV_81~combout\,
	datac => \inst1|inst|ALT_INV_Mux36~0_combout\,
	datad => \inst1|inst5|33|sub|ALT_INV_99~DUPLICATE_q\,
	datae => \inst1|inst5|174|sub|ALT_INV_99~q\,
	dataf => \inst1|inst5|143|sub|ALT_INV_81~combout\,
	combout => \inst1|inst5|167|6~0_combout\);

-- Location: FF_X60_Y13_N46
\inst1|inst5|33|sub|87~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2~q\,
	asdata => \inst1|inst5|33|sub|87~0_combout\,
	clrn => \nRESET~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|inst5|33|sub|87~DUPLICATE_q\);

-- Location: LABCELL_X61_Y13_N21
\inst1|inst5|136|sub|79\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|inst5|136|sub|79~combout\ = ( \inst1|inst5|125|sub|110~q\ & ( !\inst1|inst5|126|sub|87~q\ $ (((!\inst1|inst5|135|sub|98~combout\) # (!\inst1|inst5|126|sub|9~q\))) ) ) # ( !\inst1|inst5|125|sub|110~q\ & ( \inst1|inst5|126|sub|87~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111100000101111110100000010111111010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|inst5|135|sub|ALT_INV_98~combout\,
	datac => \inst1|inst5|126|sub|ALT_INV_9~q\,
	datad => \inst1|inst5|126|sub|ALT_INV_87~q\,
	dataf => \inst1|inst5|125|sub|ALT_INV_110~q\,
	combout => \inst1|inst5|136|sub|79~combout\);

-- Location: LABCELL_X61_Y12_N21
\inst1|inst5|143|sub|79\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|inst5|143|sub|79~combout\ = ( \inst1|inst5|130|sub|87~q\ & ( (!\inst1|inst5|130|sub|9~q\) # ((!\inst1|inst5|142|sub|98~combout\) # (!\inst1|inst5|129|sub|110~q\)) ) ) # ( !\inst1|inst5|130|sub|87~q\ & ( (\inst1|inst5|130|sub|9~q\ & 
-- (\inst1|inst5|142|sub|98~combout\ & \inst1|inst5|129|sub|110~q\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000101000000000000010111111111111110101111111111111010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|inst5|130|sub|ALT_INV_9~q\,
	datac => \inst1|inst5|142|sub|ALT_INV_98~combout\,
	datad => \inst1|inst5|129|sub|ALT_INV_110~q\,
	dataf => \inst1|inst5|130|sub|ALT_INV_87~q\,
	combout => \inst1|inst5|143|sub|79~combout\);

-- Location: LABCELL_X61_Y13_N36
\inst1|inst5|165|6~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|inst5|165|6~0_combout\ = ( \inst1|inst|Mux36~0_combout\ & ( \inst1|inst5|143|sub|79~combout\ & ( (\inst1|inst5|136|sub|79~combout\) # (\inst1|inst|Mux37~0_combout\) ) ) ) # ( !\inst1|inst|Mux36~0_combout\ & ( \inst1|inst5|143|sub|79~combout\ & ( 
-- (!\inst1|inst|Mux37~0_combout\ & ((\inst1|inst5|33|sub|87~DUPLICATE_q\))) # (\inst1|inst|Mux37~0_combout\ & (\inst1|inst5|174|sub|87~q\)) ) ) ) # ( \inst1|inst|Mux36~0_combout\ & ( !\inst1|inst5|143|sub|79~combout\ & ( (!\inst1|inst|Mux37~0_combout\ & 
-- \inst1|inst5|136|sub|79~combout\) ) ) ) # ( !\inst1|inst|Mux36~0_combout\ & ( !\inst1|inst5|143|sub|79~combout\ & ( (!\inst1|inst|Mux37~0_combout\ & ((\inst1|inst5|33|sub|87~DUPLICATE_q\))) # (\inst1|inst|Mux37~0_combout\ & (\inst1|inst5|174|sub|87~q\)) ) 
-- ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011010100110101000000001111000000110101001101010000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|inst5|174|sub|ALT_INV_87~q\,
	datab => \inst1|inst5|33|sub|ALT_INV_87~DUPLICATE_q\,
	datac => \inst1|inst|ALT_INV_Mux37~0_combout\,
	datad => \inst1|inst5|136|sub|ALT_INV_79~combout\,
	datae => \inst1|inst|ALT_INV_Mux36~0_combout\,
	dataf => \inst1|inst5|143|sub|ALT_INV_79~combout\,
	combout => \inst1|inst5|165|6~0_combout\);

-- Location: LABCELL_X60_Y8_N33
inst14 : cyclonev_lcell_comb
-- Equation(s):
-- \inst14~combout\ = ( !\inst1|inst5|167|6~0_combout\ & ( !\inst1|inst5|165|6~0_combout\ & ( (\inst1|inst|Mux38~0_combout\ & (\inst1|inst5|163|6~0_combout\ & !\inst1|inst5|169|6~0_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|inst|ALT_INV_Mux38~0_combout\,
	datac => \inst1|inst5|163|ALT_INV_6~0_combout\,
	datad => \inst1|inst5|169|ALT_INV_6~0_combout\,
	datae => \inst1|inst5|167|ALT_INV_6~0_combout\,
	dataf => \inst1|inst5|165|ALT_INV_6~0_combout\,
	combout => \inst14~combout\);

-- Location: LABCELL_X61_Y13_N45
inst7 : cyclonev_lcell_comb
-- Equation(s):
-- \inst7~combout\ = ( !\inst1|inst5|169|6~0_combout\ & ( (\inst1|inst5|163|6~0_combout\ & (!\inst1|inst5|165|6~0_combout\ & (!\inst1|inst5|167|6~0_combout\ & !\inst1|inst|Mux38~0_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100000000000000010000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|inst5|163|ALT_INV_6~0_combout\,
	datab => \inst1|inst5|165|ALT_INV_6~0_combout\,
	datac => \inst1|inst5|167|ALT_INV_6~0_combout\,
	datad => \inst1|inst|ALT_INV_Mux38~0_combout\,
	dataf => \inst1|inst5|169|ALT_INV_6~0_combout\,
	combout => \inst7~combout\);

-- Location: M10K_X58_Y12_N0
\inst11|altsyncram_component|auto_generated|ram_block1a6\ : cyclonev_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init3 => "00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init2 => "00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000280",
	mem_init1 => "FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
	mem_init0 => "FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "sram.mif",
	init_file_layout => "port_a",
	logical_ram_name => "SRAM:inst11|altsyncram:altsyncram_component|altsyncram_dd14:auto_generated|ALTSYNCRAM",
	operation_mode => "single_port",
	port_a_address_clear => "none",
	port_a_address_width => 12,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "clock0",
	port_a_data_width => 2,
	port_a_first_address => 0,
	port_a_first_bit_number => 6,
	port_a_last_address => 4095,
	port_a_logical_ram_depth => 4096,
	port_a_logical_ram_width => 8,
	port_a_read_during_write_mode => "new_data_no_nbe_read",
	port_b_address_width => 12,
	port_b_data_width => 2,
	ram_block_type => "M20K")
-- pragma translate_on
PORT MAP (
	portawe => \inst7~combout\,
	portare => VCC,
	clk0 => \MCLK~inputCLKENA0_outclk\,
	portadatain => \inst11|altsyncram_component|auto_generated|ram_block1a6_PORTADATAIN_bus\,
	portaaddr => \inst11|altsyncram_component|auto_generated|ram_block1a6_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \inst11|altsyncram_component|auto_generated|ram_block1a6_PORTADATAOUT_bus\);

-- Location: LABCELL_X60_Y8_N48
\32\ : cyclonev_lcell_comb
-- Equation(s):
-- \32~combout\ = ( !\inst1|inst5|167|6~0_combout\ & ( !\inst1|inst5|169|6~0_combout\ & ( (\inst1|inst|Mux38~0_combout\ & (!\inst1|inst5|163|6~0_combout\ & !\inst1|inst5|165|6~0_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100000001000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|inst|ALT_INV_Mux38~0_combout\,
	datab => \inst1|inst5|163|ALT_INV_6~0_combout\,
	datac => \inst1|inst5|165|ALT_INV_6~0_combout\,
	datae => \inst1|inst5|167|ALT_INV_6~0_combout\,
	dataf => \inst1|inst5|169|ALT_INV_6~0_combout\,
	combout => \32~combout\);

-- Location: LABCELL_X60_Y8_N0
\inst4[7]~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst4[7]~8_combout\ = ( \32~combout\ & ( \inst1|inst|Mux38~0_combout\ & ( (\inst|altsyncram_component|auto_generated|q_a\(7) & ((!\inst14~combout\) # (\inst11|altsyncram_component|auto_generated|q_a\(7)))) ) ) ) # ( !\32~combout\ & ( 
-- \inst1|inst|Mux38~0_combout\ & ( (!\inst14~combout\) # (\inst11|altsyncram_component|auto_generated|q_a\(7)) ) ) ) # ( \32~combout\ & ( !\inst1|inst|Mux38~0_combout\ & ( (\inst1|inst6|198|41~1_combout\ & (\inst|altsyncram_component|auto_generated|q_a\(7) 
-- & ((!\inst14~combout\) # (\inst11|altsyncram_component|auto_generated|q_a\(7))))) ) ) ) # ( !\32~combout\ & ( !\inst1|inst|Mux38~0_combout\ & ( (\inst1|inst6|198|41~1_combout\ & ((!\inst14~combout\) # 
-- (\inst11|altsyncram_component|auto_generated|q_a\(7)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101000001010101000100000001000111110000111111110011000000110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|inst6|198|ALT_INV_41~1_combout\,
	datab => \inst|altsyncram_component|auto_generated|ALT_INV_q_a\(7),
	datac => \ALT_INV_inst14~combout\,
	datad => \inst11|altsyncram_component|auto_generated|ALT_INV_q_a\(7),
	datae => \ALT_INV_32~combout\,
	dataf => \inst1|inst|ALT_INV_Mux38~0_combout\,
	combout => \inst4[7]~8_combout\);

-- Location: LABCELL_X63_Y12_N12
\inst4[7]~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst4[7]~9_combout\ = ( !\inst1|inst|Mux38~0_combout\ & ( \inst1|inst5|167|6~0_combout\ ) ) # ( \inst1|inst|Mux38~0_combout\ & ( !\inst1|inst5|167|6~0_combout\ & ( (!\inst1|inst5|165|6~0_combout\ & !\inst1|inst5|169|6~0_combout\) ) ) ) # ( 
-- !\inst1|inst|Mux38~0_combout\ & ( !\inst1|inst5|167|6~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111110000001100000011111111111111110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \inst1|inst5|165|ALT_INV_6~0_combout\,
	datac => \inst1|inst5|169|ALT_INV_6~0_combout\,
	datae => \inst1|inst|ALT_INV_Mux38~0_combout\,
	dataf => \inst1|inst5|167|ALT_INV_6~0_combout\,
	combout => \inst4[7]~9_combout\);

-- Location: LABCELL_X60_Y8_N18
\inst4[6]~10\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst4[6]~10_combout\ = ( \inst|altsyncram_component|auto_generated|q_a\(6) & ( \inst1|inst|Mux38~0_combout\ & ( (!\inst14~combout\) # (\inst11|altsyncram_component|auto_generated|q_a\(6)) ) ) ) # ( !\inst|altsyncram_component|auto_generated|q_a\(6) & ( 
-- \inst1|inst|Mux38~0_combout\ & ( (!\32~combout\ & ((!\inst14~combout\) # (\inst11|altsyncram_component|auto_generated|q_a\(6)))) ) ) ) # ( \inst|altsyncram_component|auto_generated|q_a\(6) & ( !\inst1|inst|Mux38~0_combout\ & ( 
-- (\inst1|inst6|199|41~2_combout\ & ((!\inst14~combout\) # (\inst11|altsyncram_component|auto_generated|q_a\(6)))) ) ) ) # ( !\inst|altsyncram_component|auto_generated|q_a\(6) & ( !\inst1|inst|Mux38~0_combout\ & ( (\inst1|inst6|199|41~2_combout\ & 
-- (!\32~combout\ & ((!\inst14~combout\) # (\inst11|altsyncram_component|auto_generated|q_a\(6))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100000001000100010100000101010111000000110011001111000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|inst6|199|ALT_INV_41~2_combout\,
	datab => \ALT_INV_32~combout\,
	datac => \ALT_INV_inst14~combout\,
	datad => \inst11|altsyncram_component|auto_generated|ALT_INV_q_a\(6),
	datae => \inst|altsyncram_component|auto_generated|ALT_INV_q_a\(6),
	dataf => \inst1|inst|ALT_INV_Mux38~0_combout\,
	combout => \inst4[6]~10_combout\);

-- Location: M10K_X58_Y11_N0
\inst11|altsyncram_component|auto_generated|ram_block1a4\ : cyclonev_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init3 => "00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init2 => "0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000014C",
	mem_init1 => "FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
	mem_init0 => "FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "sram.mif",
	init_file_layout => "port_a",
	logical_ram_name => "SRAM:inst11|altsyncram:altsyncram_component|altsyncram_dd14:auto_generated|ALTSYNCRAM",
	operation_mode => "single_port",
	port_a_address_clear => "none",
	port_a_address_width => 12,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "clock0",
	port_a_data_width => 2,
	port_a_first_address => 0,
	port_a_first_bit_number => 4,
	port_a_last_address => 4095,
	port_a_logical_ram_depth => 4096,
	port_a_logical_ram_width => 8,
	port_a_read_during_write_mode => "new_data_no_nbe_read",
	port_b_address_width => 12,
	port_b_data_width => 2,
	ram_block_type => "M20K")
-- pragma translate_on
PORT MAP (
	portawe => \inst7~combout\,
	portare => VCC,
	clk0 => \MCLK~inputCLKENA0_outclk\,
	portadatain => \inst11|altsyncram_component|auto_generated|ram_block1a4_PORTADATAIN_bus\,
	portaaddr => \inst11|altsyncram_component|auto_generated|ram_block1a4_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \inst11|altsyncram_component|auto_generated|ram_block1a4_PORTADATAOUT_bus\);

-- Location: M10K_X58_Y9_N0
\inst|altsyncram_component|auto_generated|ram_block1a4\ : cyclonev_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init3 => "00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init2 => "00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init1 => "00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init0 => "0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000BC40410",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "eprom.mif",
	init_file_layout => "port_a",
	logical_ram_name => "EEPROM:inst|altsyncram:altsyncram_component|altsyncram_7d14:auto_generated|ALTSYNCRAM",
	operation_mode => "rom",
	port_a_address_clear => "none",
	port_a_address_width => 12,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "clock0",
	port_a_data_width => 2,
	port_a_first_address => 0,
	port_a_first_bit_number => 4,
	port_a_last_address => 4095,
	port_a_logical_ram_depth => 4096,
	port_a_logical_ram_width => 8,
	port_a_read_during_write_mode => "new_data_no_nbe_read",
	port_a_write_enable_clock => "none",
	port_b_address_width => 12,
	port_b_data_width => 2,
	ram_block_type => "M20K")
-- pragma translate_on
PORT MAP (
	portare => VCC,
	clk0 => \MCLK~inputCLKENA0_outclk\,
	portaaddr => \inst|altsyncram_component|auto_generated|ram_block1a4_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \inst|altsyncram_component|auto_generated|ram_block1a4_PORTADATAOUT_bus\);

-- Location: LABCELL_X60_Y8_N24
\inst4[5]~11\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst4[5]~11_combout\ = ( \inst1|inst6|200|41~4_combout\ & ( \inst1|inst|Mux38~0_combout\ & ( (!\inst11|altsyncram_component|auto_generated|q_a\(5) & (!\inst14~combout\ & ((!\32~combout\) # (\inst|altsyncram_component|auto_generated|q_a\(5))))) # 
-- (\inst11|altsyncram_component|auto_generated|q_a\(5) & (((!\32~combout\)) # (\inst|altsyncram_component|auto_generated|q_a\(5)))) ) ) ) # ( !\inst1|inst6|200|41~4_combout\ & ( \inst1|inst|Mux38~0_combout\ & ( 
-- (!\inst11|altsyncram_component|auto_generated|q_a\(5) & (!\inst14~combout\ & ((!\32~combout\) # (\inst|altsyncram_component|auto_generated|q_a\(5))))) # (\inst11|altsyncram_component|auto_generated|q_a\(5) & (((!\32~combout\)) # 
-- (\inst|altsyncram_component|auto_generated|q_a\(5)))) ) ) ) # ( \inst1|inst6|200|41~4_combout\ & ( !\inst1|inst|Mux38~0_combout\ & ( (!\inst11|altsyncram_component|auto_generated|q_a\(5) & (!\inst14~combout\ & ((!\32~combout\) # 
-- (\inst|altsyncram_component|auto_generated|q_a\(5))))) # (\inst11|altsyncram_component|auto_generated|q_a\(5) & (((!\32~combout\)) # (\inst|altsyncram_component|auto_generated|q_a\(5)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111101010011000111110101001100011111010100110001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|altsyncram_component|auto_generated|ALT_INV_q_a\(5),
	datab => \inst|altsyncram_component|auto_generated|ALT_INV_q_a\(5),
	datac => \ALT_INV_inst14~combout\,
	datad => \ALT_INV_32~combout\,
	datae => \inst1|inst6|200|ALT_INV_41~4_combout\,
	dataf => \inst1|inst|ALT_INV_Mux38~0_combout\,
	combout => \inst4[5]~11_combout\);

-- Location: LABCELL_X60_Y8_N42
\inst4[4]~12\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst4[4]~12_combout\ = ( \inst1|inst6|201|41~1_combout\ & ( \inst1|inst|Mux38~0_combout\ & ( (!\32~combout\ & (((!\inst14~combout\)) # (\inst11|altsyncram_component|auto_generated|q_a\(4)))) # (\32~combout\ & 
-- (\inst|altsyncram_component|auto_generated|q_a\(4) & ((!\inst14~combout\) # (\inst11|altsyncram_component|auto_generated|q_a\(4))))) ) ) ) # ( !\inst1|inst6|201|41~1_combout\ & ( \inst1|inst|Mux38~0_combout\ & ( (!\32~combout\ & (((!\inst14~combout\)) # 
-- (\inst11|altsyncram_component|auto_generated|q_a\(4)))) # (\32~combout\ & (\inst|altsyncram_component|auto_generated|q_a\(4) & ((!\inst14~combout\) # (\inst11|altsyncram_component|auto_generated|q_a\(4))))) ) ) ) # ( \inst1|inst6|201|41~1_combout\ & ( 
-- !\inst1|inst|Mux38~0_combout\ & ( (!\32~combout\ & (((!\inst14~combout\)) # (\inst11|altsyncram_component|auto_generated|q_a\(4)))) # (\32~combout\ & (\inst|altsyncram_component|auto_generated|q_a\(4) & ((!\inst14~combout\) # 
-- (\inst11|altsyncram_component|auto_generated|q_a\(4))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000101000101111001110100010111100111010001011110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_32~combout\,
	datab => \inst11|altsyncram_component|auto_generated|ALT_INV_q_a\(4),
	datac => \ALT_INV_inst14~combout\,
	datad => \inst|altsyncram_component|auto_generated|ALT_INV_q_a\(4),
	datae => \inst1|inst6|201|ALT_INV_41~1_combout\,
	dataf => \inst1|inst|ALT_INV_Mux38~0_combout\,
	combout => \inst4[4]~12_combout\);

-- Location: M10K_X58_Y14_N0
\inst11|altsyncram_component|auto_generated|ram_block1a2\ : cyclonev_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init3 => "00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init2 => "000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000003C4",
	mem_init1 => "FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
	mem_init0 => "FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "sram.mif",
	init_file_layout => "port_a",
	logical_ram_name => "SRAM:inst11|altsyncram:altsyncram_component|altsyncram_dd14:auto_generated|ALTSYNCRAM",
	operation_mode => "single_port",
	port_a_address_clear => "none",
	port_a_address_width => 12,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "clock0",
	port_a_data_width => 2,
	port_a_first_address => 0,
	port_a_first_bit_number => 2,
	port_a_last_address => 4095,
	port_a_logical_ram_depth => 4096,
	port_a_logical_ram_width => 8,
	port_a_read_during_write_mode => "new_data_no_nbe_read",
	port_b_address_width => 12,
	port_b_data_width => 2,
	ram_block_type => "M20K")
-- pragma translate_on
PORT MAP (
	portawe => \inst7~combout\,
	portare => VCC,
	clk0 => \MCLK~inputCLKENA0_outclk\,
	portadatain => \inst11|altsyncram_component|auto_generated|ram_block1a2_PORTADATAIN_bus\,
	portaaddr => \inst11|altsyncram_component|auto_generated|ram_block1a2_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \inst11|altsyncram_component|auto_generated|ram_block1a2_PORTADATAOUT_bus\);

-- Location: M10K_X58_Y10_N0
\inst|altsyncram_component|auto_generated|ram_block1a2\ : cyclonev_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init3 => "00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init2 => "00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init1 => "00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init0 => "000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000100038A2",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "eprom.mif",
	init_file_layout => "port_a",
	logical_ram_name => "EEPROM:inst|altsyncram:altsyncram_component|altsyncram_7d14:auto_generated|ALTSYNCRAM",
	operation_mode => "rom",
	port_a_address_clear => "none",
	port_a_address_width => 12,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "clock0",
	port_a_data_width => 2,
	port_a_first_address => 0,
	port_a_first_bit_number => 2,
	port_a_last_address => 4095,
	port_a_logical_ram_depth => 4096,
	port_a_logical_ram_width => 8,
	port_a_read_during_write_mode => "new_data_no_nbe_read",
	port_a_write_enable_clock => "none",
	port_b_address_width => 12,
	port_b_data_width => 2,
	ram_block_type => "M20K")
-- pragma translate_on
PORT MAP (
	portare => VCC,
	clk0 => \MCLK~inputCLKENA0_outclk\,
	portaaddr => \inst|altsyncram_component|auto_generated|ram_block1a2_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \inst|altsyncram_component|auto_generated|ram_block1a2_PORTADATAOUT_bus\);

-- Location: LABCELL_X60_Y8_N12
\inst4[3]~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst4[3]~13_combout\ = ( \inst|altsyncram_component|auto_generated|q_a\(3) & ( \inst1|inst|Mux38~0_combout\ & ( (!\inst14~combout\) # (\inst11|altsyncram_component|auto_generated|q_a\(3)) ) ) ) # ( !\inst|altsyncram_component|auto_generated|q_a\(3) & ( 
-- \inst1|inst|Mux38~0_combout\ & ( (!\32~combout\ & ((!\inst14~combout\) # (\inst11|altsyncram_component|auto_generated|q_a\(3)))) ) ) ) # ( \inst|altsyncram_component|auto_generated|q_a\(3) & ( !\inst1|inst|Mux38~0_combout\ & ( 
-- (\inst1|inst6|196|41~1_combout\ & ((!\inst14~combout\) # (\inst11|altsyncram_component|auto_generated|q_a\(3)))) ) ) ) # ( !\inst|altsyncram_component|auto_generated|q_a\(3) & ( !\inst1|inst|Mux38~0_combout\ & ( (!\32~combout\ & 
-- (\inst1|inst6|196|41~1_combout\ & ((!\inst14~combout\) # (\inst11|altsyncram_component|auto_generated|q_a\(3))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010000000100010001100000011001110100000101010101111000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_32~combout\,
	datab => \inst1|inst6|196|ALT_INV_41~1_combout\,
	datac => \ALT_INV_inst14~combout\,
	datad => \inst11|altsyncram_component|auto_generated|ALT_INV_q_a\(3),
	datae => \inst|altsyncram_component|auto_generated|ALT_INV_q_a\(3),
	dataf => \inst1|inst|ALT_INV_Mux38~0_combout\,
	combout => \inst4[3]~13_combout\);

-- Location: LABCELL_X60_Y8_N6
\inst4[2]~14\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst4[2]~14_combout\ = ( \inst11|altsyncram_component|auto_generated|q_a\(2) & ( \inst1|inst|Mux38~0_combout\ & ( (!\32~combout\) # (\inst|altsyncram_component|auto_generated|q_a\(2)) ) ) ) # ( !\inst11|altsyncram_component|auto_generated|q_a\(2) & ( 
-- \inst1|inst|Mux38~0_combout\ & ( (!\inst14~combout\ & ((!\32~combout\) # (\inst|altsyncram_component|auto_generated|q_a\(2)))) ) ) ) # ( \inst11|altsyncram_component|auto_generated|q_a\(2) & ( !\inst1|inst|Mux38~0_combout\ & ( 
-- (\inst1|inst6|197|41~2_combout\ & ((!\32~combout\) # (\inst|altsyncram_component|auto_generated|q_a\(2)))) ) ) ) # ( !\inst11|altsyncram_component|auto_generated|q_a\(2) & ( !\inst1|inst|Mux38~0_combout\ & ( (!\inst14~combout\ & 
-- (\inst1|inst6|197|41~2_combout\ & ((!\32~combout\) # (\inst|altsyncram_component|auto_generated|q_a\(2))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010110000000000001011101110110000101100001011101110111011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_32~combout\,
	datab => \inst|altsyncram_component|auto_generated|ALT_INV_q_a\(2),
	datac => \ALT_INV_inst14~combout\,
	datad => \inst1|inst6|197|ALT_INV_41~2_combout\,
	datae => \inst11|altsyncram_component|auto_generated|ALT_INV_q_a\(2),
	dataf => \inst1|inst|ALT_INV_Mux38~0_combout\,
	combout => \inst4[2]~14_combout\);

-- Location: M10K_X69_Y11_N0
\inst|altsyncram_component|auto_generated|ram_block1a0\ : cyclonev_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init3 => "00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init2 => "00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init1 => "00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init0 => "000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000250C0440",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "eprom.mif",
	init_file_layout => "port_a",
	logical_ram_name => "EEPROM:inst|altsyncram:altsyncram_component|altsyncram_7d14:auto_generated|ALTSYNCRAM",
	operation_mode => "rom",
	port_a_address_clear => "none",
	port_a_address_width => 12,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "clock0",
	port_a_data_width => 2,
	port_a_first_address => 0,
	port_a_first_bit_number => 0,
	port_a_last_address => 4095,
	port_a_logical_ram_depth => 4096,
	port_a_logical_ram_width => 8,
	port_a_read_during_write_mode => "new_data_no_nbe_read",
	port_a_write_enable_clock => "none",
	port_b_address_width => 12,
	port_b_data_width => 2,
	ram_block_type => "M20K")
-- pragma translate_on
PORT MAP (
	portare => VCC,
	clk0 => \MCLK~inputCLKENA0_outclk\,
	portaaddr => \inst|altsyncram_component|auto_generated|ram_block1a0_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \inst|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\);

-- Location: M10K_X58_Y13_N0
\inst11|altsyncram_component|auto_generated|ram_block1a0\ : cyclonev_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init3 => "00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init2 => "000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000002AA94C",
	mem_init1 => "FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
	mem_init0 => "FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "sram.mif",
	init_file_layout => "port_a",
	logical_ram_name => "SRAM:inst11|altsyncram:altsyncram_component|altsyncram_dd14:auto_generated|ALTSYNCRAM",
	operation_mode => "single_port",
	port_a_address_clear => "none",
	port_a_address_width => 12,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "clock0",
	port_a_data_width => 2,
	port_a_first_address => 0,
	port_a_first_bit_number => 0,
	port_a_last_address => 4095,
	port_a_logical_ram_depth => 4096,
	port_a_logical_ram_width => 8,
	port_a_read_during_write_mode => "new_data_no_nbe_read",
	port_b_address_width => 12,
	port_b_data_width => 2,
	ram_block_type => "M20K")
-- pragma translate_on
PORT MAP (
	portawe => \inst7~combout\,
	portare => VCC,
	clk0 => \MCLK~inputCLKENA0_outclk\,
	portadatain => \inst11|altsyncram_component|auto_generated|ram_block1a0_PORTADATAIN_bus\,
	portaaddr => \inst11|altsyncram_component|auto_generated|ram_block1a0_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \inst11|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\);

-- Location: LABCELL_X60_Y8_N36
\inst4[1]~15\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst4[1]~15_combout\ = ( \inst11|altsyncram_component|auto_generated|q_a\(1) & ( \32~combout\ & ( (\inst|altsyncram_component|auto_generated|q_a\(1) & ((\inst1|inst6|195|41~2_combout\) # (\inst1|inst|Mux38~0_combout\))) ) ) ) # ( 
-- !\inst11|altsyncram_component|auto_generated|q_a\(1) & ( \32~combout\ & ( (!\inst14~combout\ & (\inst|altsyncram_component|auto_generated|q_a\(1) & ((\inst1|inst6|195|41~2_combout\) # (\inst1|inst|Mux38~0_combout\)))) ) ) ) # ( 
-- \inst11|altsyncram_component|auto_generated|q_a\(1) & ( !\32~combout\ & ( (\inst1|inst6|195|41~2_combout\) # (\inst1|inst|Mux38~0_combout\) ) ) ) # ( !\inst11|altsyncram_component|auto_generated|q_a\(1) & ( !\32~combout\ & ( (!\inst14~combout\ & 
-- ((\inst1|inst6|195|41~2_combout\) # (\inst1|inst|Mux38~0_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0111000001110000011101110111011100000000011100000000000001110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|inst|ALT_INV_Mux38~0_combout\,
	datab => \inst1|inst6|195|ALT_INV_41~2_combout\,
	datac => \ALT_INV_inst14~combout\,
	datad => \inst|altsyncram_component|auto_generated|ALT_INV_q_a\(1),
	datae => \inst11|altsyncram_component|auto_generated|ALT_INV_q_a\(1),
	dataf => \ALT_INV_32~combout\,
	combout => \inst4[1]~15_combout\);

-- Location: LABCELL_X60_Y8_N54
\inst4[0]~16\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst4[0]~16_combout\ = ( \inst|altsyncram_component|auto_generated|q_a\(0) & ( \32~combout\ & ( (!\inst11|altsyncram_component|auto_generated|q_a\(0) & (!\inst14~combout\ & ((\inst1|inst|Mux38~0_combout\) # (\inst1|inst6|194|41~4_combout\)))) # 
-- (\inst11|altsyncram_component|auto_generated|q_a\(0) & (((\inst1|inst|Mux38~0_combout\)) # (\inst1|inst6|194|41~4_combout\))) ) ) ) # ( \inst|altsyncram_component|auto_generated|q_a\(0) & ( !\32~combout\ & ( 
-- (!\inst11|altsyncram_component|auto_generated|q_a\(0) & (!\inst14~combout\ & ((\inst1|inst|Mux38~0_combout\) # (\inst1|inst6|194|41~4_combout\)))) # (\inst11|altsyncram_component|auto_generated|q_a\(0) & (((\inst1|inst|Mux38~0_combout\)) # 
-- (\inst1|inst6|194|41~4_combout\))) ) ) ) # ( !\inst|altsyncram_component|auto_generated|q_a\(0) & ( !\32~combout\ & ( (!\inst11|altsyncram_component|auto_generated|q_a\(0) & (!\inst14~combout\ & ((\inst1|inst|Mux38~0_combout\) # 
-- (\inst1|inst6|194|41~4_combout\)))) # (\inst11|altsyncram_component|auto_generated|q_a\(0) & (((\inst1|inst|Mux38~0_combout\)) # (\inst1|inst6|194|41~4_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011000111110101001100011111010100000000000000000011000111110101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|altsyncram_component|auto_generated|ALT_INV_q_a\(0),
	datab => \inst1|inst6|194|ALT_INV_41~4_combout\,
	datac => \ALT_INV_inst14~combout\,
	datad => \inst1|inst|ALT_INV_Mux38~0_combout\,
	datae => \inst|altsyncram_component|auto_generated|ALT_INV_q_a\(0),
	dataf => \ALT_INV_32~combout\,
	combout => \inst4[0]~16_combout\);

-- Location: LABCELL_X56_Y12_N57
\inst1|inst6|161\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|inst6|161~combout\ = ( \inst1|inst6|123~q\ & ( \inst1|inst6|126~q\ ) ) # ( !\inst1|inst6|123~q\ & ( \inst1|inst6|126~q\ ) ) # ( \inst1|inst6|123~q\ & ( !\inst1|inst6|126~q\ ) ) # ( !\inst1|inst6|123~q\ & ( !\inst1|inst6|126~q\ & ( 
-- (!\inst1|inst6|161~0_combout\) # (\inst1|inst6|128~q\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111100001111111111111111111111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \inst1|inst6|ALT_INV_128~q\,
	datad => \inst1|inst6|ALT_INV_161~0_combout\,
	datae => \inst1|inst6|ALT_INV_123~q\,
	dataf => \inst1|inst6|ALT_INV_126~q\,
	combout => \inst1|inst6|161~combout\);

-- Location: LABCELL_X63_Y12_N9
\37\ : cyclonev_lcell_comb
-- Equation(s):
-- \37~combout\ = ( \inst1|inst5|167|6~0_combout\ ) # ( !\inst1|inst5|167|6~0_combout\ & ( ((!\inst1|inst5|163|6~0_combout\) # (\inst1|inst5|165|6~0_combout\)) # (\inst1|inst5|169|6~0_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111101011111111111110101111111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|inst5|169|ALT_INV_6~0_combout\,
	datac => \inst1|inst5|165|ALT_INV_6~0_combout\,
	datad => \inst1|inst5|163|ALT_INV_6~0_combout\,
	dataf => \inst1|inst5|167|ALT_INV_6~0_combout\,
	combout => \37~combout\);

-- Location: LABCELL_X74_Y15_N3
\~QUARTUS_CREATED_GND~I\ : cyclonev_lcell_comb
-- Equation(s):

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
;
END structure;


