-- Copyright (C) 1991-2013 Altera Corporation
-- Your use of Altera Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Altera Program License 
-- Subscription Agreement, Altera MegaCore Function License 
-- Agreement, or other applicable license agreement, including, 
-- without limitation, that your use is for the sole purpose of 
-- programming logic devices manufactured by Altera and sold by 
-- Altera or its authorized distributors.  Please refer to the 
-- applicable agreement for further details.

-- VENDOR "Altera"
-- PROGRAM "Quartus II 64-Bit"
-- VERSION "Version 13.1.0 Build 162 10/23/2013 SJ Web Edition"

-- DATE "04/24/2024 10:00:05"

-- 
-- Device: Altera EP4CGX22CF19C6 Package FBGA324
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY CYCLONEIV;
LIBRARY IEEE;
USE CYCLONEIV.CYCLONEIV_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	Adder IS
    PORT (
	A : IN std_logic_vector(31 DOWNTO 0);
	B : IN std_logic_vector(31 DOWNTO 0);
	C_in : IN std_logic;
	Sum : OUT std_logic_vector(31 DOWNTO 0)
	);
END Adder;

-- Design Ports Information
-- Sum[0]	=>  Location: PIN_T11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Sum[1]	=>  Location: PIN_T10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Sum[2]	=>  Location: PIN_R9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Sum[3]	=>  Location: PIN_U9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Sum[4]	=>  Location: PIN_R10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Sum[5]	=>  Location: PIN_V9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Sum[6]	=>  Location: PIN_U10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Sum[7]	=>  Location: PIN_T15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Sum[8]	=>  Location: PIN_T17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Sum[9]	=>  Location: PIN_V14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Sum[10]	=>  Location: PIN_T14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Sum[11]	=>  Location: PIN_P12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Sum[12]	=>  Location: PIN_P13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Sum[13]	=>  Location: PIN_C16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Sum[14]	=>  Location: PIN_D18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Sum[15]	=>  Location: PIN_D17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Sum[16]	=>  Location: PIN_D13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Sum[17]	=>  Location: PIN_B15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Sum[18]	=>  Location: PIN_C17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Sum[19]	=>  Location: PIN_C12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Sum[20]	=>  Location: PIN_C13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Sum[21]	=>  Location: PIN_J16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Sum[22]	=>  Location: PIN_E18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Sum[23]	=>  Location: PIN_R18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Sum[24]	=>  Location: PIN_M16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Sum[25]	=>  Location: PIN_L18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Sum[26]	=>  Location: PIN_K16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Sum[27]	=>  Location: PIN_L16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Sum[28]	=>  Location: PIN_D12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Sum[29]	=>  Location: PIN_C9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Sum[30]	=>  Location: PIN_B9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Sum[31]	=>  Location: PIN_A11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[0]	=>  Location: PIN_H18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[0]	=>  Location: PIN_J18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- C_in	=>  Location: PIN_U12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[1]	=>  Location: PIN_V10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[1]	=>  Location: PIN_V11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[2]	=>  Location: PIN_V12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[2]	=>  Location: PIN_T8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[3]	=>  Location: PIN_U13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[3]	=>  Location: PIN_V13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[4]	=>  Location: PIN_V8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[4]	=>  Location: PIN_C10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[5]	=>  Location: PIN_R11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[5]	=>  Location: PIN_P10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[6]	=>  Location: PIN_T12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[6]	=>  Location: PIN_T9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[7]	=>  Location: PIN_R15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[7]	=>  Location: PIN_N16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[8]	=>  Location: PIN_V18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[8]	=>  Location: PIN_U18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[9]	=>  Location: PIN_R13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[9]	=>  Location: PIN_U15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[10]	=>  Location: PIN_V16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[10]	=>  Location: PIN_T13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[11]	=>  Location: PIN_U16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[11]	=>  Location: PIN_T16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[12]	=>  Location: PIN_V17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[12]	=>  Location: PIN_A15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[13]	=>  Location: PIN_F18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[13]	=>  Location: PIN_F15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[14]	=>  Location: PIN_E15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[14]	=>  Location: PIN_C18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[15]	=>  Location: PIN_E16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[15]	=>  Location: PIN_F16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[16]	=>  Location: PIN_D14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[16]	=>  Location: PIN_C14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[17]	=>  Location: PIN_A16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[17]	=>  Location: PIN_D16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[18]	=>  Location: PIN_C15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[18]	=>  Location: PIN_D15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[19]	=>  Location: PIN_B16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[19]	=>  Location: PIN_A17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[20]	=>  Location: PIN_A18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[20]	=>  Location: PIN_E12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[21]	=>  Location: PIN_N18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[21]	=>  Location: PIN_M17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[22]	=>  Location: PIN_M18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[22]	=>  Location: PIN_G15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[23]	=>  Location: PIN_H16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[23]	=>  Location: PIN_L15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[24]	=>  Location: PIN_N17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[24]	=>  Location: PIN_G16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[25]	=>  Location: PIN_K15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[25]	=>  Location: PIN_J17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[26]	=>  Location: PIN_G17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[26]	=>  Location: PIN_G18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[27]	=>  Location: PIN_B18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[27]	=>  Location: PIN_F17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[28]	=>  Location: PIN_A12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[28]	=>  Location: PIN_B12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[29]	=>  Location: PIN_D8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[29]	=>  Location: PIN_C11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[30]	=>  Location: PIN_D9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[30]	=>  Location: PIN_B10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[31]	=>  Location: PIN_A10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[31]	=>  Location: PIN_A9,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF Adder IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_A : std_logic_vector(31 DOWNTO 0);
SIGNAL ww_B : std_logic_vector(31 DOWNTO 0);
SIGNAL ww_C_in : std_logic;
SIGNAL ww_Sum : std_logic_vector(31 DOWNTO 0);
SIGNAL \Sum[0]~output_o\ : std_logic;
SIGNAL \Sum[1]~output_o\ : std_logic;
SIGNAL \Sum[2]~output_o\ : std_logic;
SIGNAL \Sum[3]~output_o\ : std_logic;
SIGNAL \Sum[4]~output_o\ : std_logic;
SIGNAL \Sum[5]~output_o\ : std_logic;
SIGNAL \Sum[6]~output_o\ : std_logic;
SIGNAL \Sum[7]~output_o\ : std_logic;
SIGNAL \Sum[8]~output_o\ : std_logic;
SIGNAL \Sum[9]~output_o\ : std_logic;
SIGNAL \Sum[10]~output_o\ : std_logic;
SIGNAL \Sum[11]~output_o\ : std_logic;
SIGNAL \Sum[12]~output_o\ : std_logic;
SIGNAL \Sum[13]~output_o\ : std_logic;
SIGNAL \Sum[14]~output_o\ : std_logic;
SIGNAL \Sum[15]~output_o\ : std_logic;
SIGNAL \Sum[16]~output_o\ : std_logic;
SIGNAL \Sum[17]~output_o\ : std_logic;
SIGNAL \Sum[18]~output_o\ : std_logic;
SIGNAL \Sum[19]~output_o\ : std_logic;
SIGNAL \Sum[20]~output_o\ : std_logic;
SIGNAL \Sum[21]~output_o\ : std_logic;
SIGNAL \Sum[22]~output_o\ : std_logic;
SIGNAL \Sum[23]~output_o\ : std_logic;
SIGNAL \Sum[24]~output_o\ : std_logic;
SIGNAL \Sum[25]~output_o\ : std_logic;
SIGNAL \Sum[26]~output_o\ : std_logic;
SIGNAL \Sum[27]~output_o\ : std_logic;
SIGNAL \Sum[28]~output_o\ : std_logic;
SIGNAL \Sum[29]~output_o\ : std_logic;
SIGNAL \Sum[30]~output_o\ : std_logic;
SIGNAL \Sum[31]~output_o\ : std_logic;
SIGNAL \C_in~input_o\ : std_logic;
SIGNAL \B[0]~input_o\ : std_logic;
SIGNAL \A[0]~input_o\ : std_logic;
SIGNAL \adder_loop[0].full_adder|S~0_combout\ : std_logic;
SIGNAL \B[1]~input_o\ : std_logic;
SIGNAL \adder_loop[0].full_adder|Cout~0_combout\ : std_logic;
SIGNAL \A[1]~input_o\ : std_logic;
SIGNAL \adder_loop[1].full_adder|S~combout\ : std_logic;
SIGNAL \A[2]~input_o\ : std_logic;
SIGNAL \B[2]~input_o\ : std_logic;
SIGNAL \adder_loop[2].full_adder|S~0_combout\ : std_logic;
SIGNAL \adder_loop[2].full_adder|S~combout\ : std_logic;
SIGNAL \adder_loop[2].full_adder|Cout~0_combout\ : std_logic;
SIGNAL \B[3]~input_o\ : std_logic;
SIGNAL \adder_loop[2].full_adder|Cout~1_combout\ : std_logic;
SIGNAL \adder_loop[2].full_adder|Cout~2_combout\ : std_logic;
SIGNAL \A[3]~input_o\ : std_logic;
SIGNAL \adder_loop[3].full_adder|S~combout\ : std_logic;
SIGNAL \A[4]~input_o\ : std_logic;
SIGNAL \B[4]~input_o\ : std_logic;
SIGNAL \adder_loop[3].full_adder|Cout~0_combout\ : std_logic;
SIGNAL \adder_loop[4].full_adder|S~combout\ : std_logic;
SIGNAL \B[5]~input_o\ : std_logic;
SIGNAL \A[5]~input_o\ : std_logic;
SIGNAL \adder_loop[4].full_adder|Cout~0_combout\ : std_logic;
SIGNAL \adder_loop[5].full_adder|S~combout\ : std_logic;
SIGNAL \adder_loop[5].full_adder|Cout~0_combout\ : std_logic;
SIGNAL \B[6]~input_o\ : std_logic;
SIGNAL \A[6]~input_o\ : std_logic;
SIGNAL \adder_loop[6].full_adder|S~combout\ : std_logic;
SIGNAL \adder_loop[6].full_adder|Cout~0_combout\ : std_logic;
SIGNAL \B[7]~input_o\ : std_logic;
SIGNAL \A[7]~input_o\ : std_logic;
SIGNAL \adder_loop[7].full_adder|S~combout\ : std_logic;
SIGNAL \B[8]~input_o\ : std_logic;
SIGNAL \A[8]~input_o\ : std_logic;
SIGNAL \adder_loop[7].full_adder|Cout~0_combout\ : std_logic;
SIGNAL \adder_loop[8].full_adder|S~combout\ : std_logic;
SIGNAL \B[9]~input_o\ : std_logic;
SIGNAL \A[9]~input_o\ : std_logic;
SIGNAL \adder_loop[8].full_adder|Cout~0_combout\ : std_logic;
SIGNAL \adder_loop[9].full_adder|S~combout\ : std_logic;
SIGNAL \B[10]~input_o\ : std_logic;
SIGNAL \A[10]~input_o\ : std_logic;
SIGNAL \adder_loop[10].full_adder|S~0_combout\ : std_logic;
SIGNAL \adder_loop[10].full_adder|S~combout\ : std_logic;
SIGNAL \adder_loop[10].full_adder|Cout~1_combout\ : std_logic;
SIGNAL \adder_loop[10].full_adder|Cout~2_combout\ : std_logic;
SIGNAL \A[11]~input_o\ : std_logic;
SIGNAL \adder_loop[10].full_adder|Cout~0_combout\ : std_logic;
SIGNAL \B[11]~input_o\ : std_logic;
SIGNAL \adder_loop[11].full_adder|S~combout\ : std_logic;
SIGNAL \B[12]~input_o\ : std_logic;
SIGNAL \A[12]~input_o\ : std_logic;
SIGNAL \adder_loop[11].full_adder|Cout~0_combout\ : std_logic;
SIGNAL \adder_loop[12].full_adder|S~combout\ : std_logic;
SIGNAL \adder_loop[12].full_adder|Cout~0_combout\ : std_logic;
SIGNAL \A[13]~input_o\ : std_logic;
SIGNAL \B[13]~input_o\ : std_logic;
SIGNAL \adder_loop[13].full_adder|S~combout\ : std_logic;
SIGNAL \B[14]~input_o\ : std_logic;
SIGNAL \A[14]~input_o\ : std_logic;
SIGNAL \adder_loop[14].full_adder|S~0_combout\ : std_logic;
SIGNAL \adder_loop[14].full_adder|S~combout\ : std_logic;
SIGNAL \adder_loop[14].full_adder|Cout~1_combout\ : std_logic;
SIGNAL \adder_loop[14].full_adder|Cout~2_combout\ : std_logic;
SIGNAL \B[15]~input_o\ : std_logic;
SIGNAL \adder_loop[14].full_adder|Cout~0_combout\ : std_logic;
SIGNAL \A[15]~input_o\ : std_logic;
SIGNAL \adder_loop[15].full_adder|S~combout\ : std_logic;
SIGNAL \A[16]~input_o\ : std_logic;
SIGNAL \B[16]~input_o\ : std_logic;
SIGNAL \adder_loop[15].full_adder|Cout~0_combout\ : std_logic;
SIGNAL \adder_loop[16].full_adder|S~combout\ : std_logic;
SIGNAL \adder_loop[16].full_adder|Cout~0_combout\ : std_logic;
SIGNAL \A[17]~input_o\ : std_logic;
SIGNAL \B[17]~input_o\ : std_logic;
SIGNAL \adder_loop[17].full_adder|S~combout\ : std_logic;
SIGNAL \adder_loop[17].full_adder|Cout~0_combout\ : std_logic;
SIGNAL \B[18]~input_o\ : std_logic;
SIGNAL \A[18]~input_o\ : std_logic;
SIGNAL \adder_loop[18].full_adder|S~combout\ : std_logic;
SIGNAL \adder_loop[18].full_adder|Cout~0_combout\ : std_logic;
SIGNAL \A[19]~input_o\ : std_logic;
SIGNAL \B[19]~input_o\ : std_logic;
SIGNAL \adder_loop[19].full_adder|S~combout\ : std_logic;
SIGNAL \B[20]~input_o\ : std_logic;
SIGNAL \adder_loop[19].full_adder|Cout~0_combout\ : std_logic;
SIGNAL \A[20]~input_o\ : std_logic;
SIGNAL \adder_loop[20].full_adder|S~combout\ : std_logic;
SIGNAL \adder_loop[20].full_adder|Cout~0_combout\ : std_logic;
SIGNAL \B[21]~input_o\ : std_logic;
SIGNAL \A[21]~input_o\ : std_logic;
SIGNAL \adder_loop[21].full_adder|S~combout\ : std_logic;
SIGNAL \A[22]~input_o\ : std_logic;
SIGNAL \B[22]~input_o\ : std_logic;
SIGNAL \adder_loop[22].full_adder|S~0_combout\ : std_logic;
SIGNAL \adder_loop[22].full_adder|S~combout\ : std_logic;
SIGNAL \adder_loop[22].full_adder|Cout~1_combout\ : std_logic;
SIGNAL \adder_loop[22].full_adder|Cout~2_combout\ : std_logic;
SIGNAL \B[23]~input_o\ : std_logic;
SIGNAL \adder_loop[22].full_adder|Cout~0_combout\ : std_logic;
SIGNAL \A[23]~input_o\ : std_logic;
SIGNAL \adder_loop[23].full_adder|S~combout\ : std_logic;
SIGNAL \adder_loop[23].full_adder|Cout~0_combout\ : std_logic;
SIGNAL \A[24]~input_o\ : std_logic;
SIGNAL \B[24]~input_o\ : std_logic;
SIGNAL \adder_loop[24].full_adder|S~combout\ : std_logic;
SIGNAL \A[25]~input_o\ : std_logic;
SIGNAL \adder_loop[24].full_adder|Cout~0_combout\ : std_logic;
SIGNAL \B[25]~input_o\ : std_logic;
SIGNAL \adder_loop[25].full_adder|S~combout\ : std_logic;
SIGNAL \adder_loop[25].full_adder|Cout~0_combout\ : std_logic;
SIGNAL \A[26]~input_o\ : std_logic;
SIGNAL \B[26]~input_o\ : std_logic;
SIGNAL \adder_loop[26].full_adder|S~combout\ : std_logic;
SIGNAL \A[27]~input_o\ : std_logic;
SIGNAL \adder_loop[26].full_adder|Cout~0_combout\ : std_logic;
SIGNAL \B[27]~input_o\ : std_logic;
SIGNAL \adder_loop[27].full_adder|S~combout\ : std_logic;
SIGNAL \A[28]~input_o\ : std_logic;
SIGNAL \B[28]~input_o\ : std_logic;
SIGNAL \adder_loop[27].full_adder|Cout~0_combout\ : std_logic;
SIGNAL \adder_loop[28].full_adder|S~combout\ : std_logic;
SIGNAL \adder_loop[28].full_adder|Cout~0_combout\ : std_logic;
SIGNAL \A[29]~input_o\ : std_logic;
SIGNAL \B[29]~input_o\ : std_logic;
SIGNAL \adder_loop[29].full_adder|S~combout\ : std_logic;
SIGNAL \A[30]~input_o\ : std_logic;
SIGNAL \B[30]~input_o\ : std_logic;
SIGNAL \adder_loop[29].full_adder|Cout~0_combout\ : std_logic;
SIGNAL \adder_loop[30].full_adder|S~combout\ : std_logic;
SIGNAL \B[31]~input_o\ : std_logic;
SIGNAL \A[31]~input_o\ : std_logic;
SIGNAL \adder_loop[31].full_adder|S~0_combout\ : std_logic;
SIGNAL \adder_loop[31].full_adder|S~combout\ : std_logic;

BEGIN

ww_A <= A;
ww_B <= B;
ww_C_in <= C_in;
Sum <= ww_Sum;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

-- Location: IOOBUF_X31_Y0_N16
\Sum[0]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \adder_loop[0].full_adder|S~0_combout\,
	devoe => ww_devoe,
	o => \Sum[0]~output_o\);

-- Location: IOOBUF_X23_Y0_N9
\Sum[1]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \adder_loop[1].full_adder|S~combout\,
	devoe => ww_devoe,
	o => \Sum[1]~output_o\);

-- Location: IOOBUF_X18_Y0_N9
\Sum[2]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \adder_loop[2].full_adder|S~combout\,
	devoe => ww_devoe,
	o => \Sum[2]~output_o\);

-- Location: IOOBUF_X16_Y0_N9
\Sum[3]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \adder_loop[3].full_adder|S~combout\,
	devoe => ww_devoe,
	o => \Sum[3]~output_o\);

-- Location: IOOBUF_X25_Y0_N2
\Sum[4]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \adder_loop[4].full_adder|S~combout\,
	devoe => ww_devoe,
	o => \Sum[4]~output_o\);

-- Location: IOOBUF_X21_Y0_N9
\Sum[5]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \adder_loop[5].full_adder|S~combout\,
	devoe => ww_devoe,
	o => \Sum[5]~output_o\);

-- Location: IOOBUF_X23_Y0_N2
\Sum[6]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \adder_loop[6].full_adder|S~combout\,
	devoe => ww_devoe,
	o => \Sum[6]~output_o\);

-- Location: IOOBUF_X48_Y0_N2
\Sum[7]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \adder_loop[7].full_adder|S~combout\,
	devoe => ww_devoe,
	o => \Sum[7]~output_o\);

-- Location: IOOBUF_X46_Y0_N2
\Sum[8]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \adder_loop[8].full_adder|S~combout\,
	devoe => ww_devoe,
	o => \Sum[8]~output_o\);

-- Location: IOOBUF_X34_Y0_N9
\Sum[9]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \adder_loop[9].full_adder|S~combout\,
	devoe => ww_devoe,
	o => \Sum[9]~output_o\);

-- Location: IOOBUF_X41_Y0_N16
\Sum[10]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \adder_loop[10].full_adder|S~combout\,
	devoe => ww_devoe,
	o => \Sum[10]~output_o\);

-- Location: IOOBUF_X38_Y0_N9
\Sum[11]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \adder_loop[11].full_adder|S~combout\,
	devoe => ww_devoe,
	o => \Sum[11]~output_o\);

-- Location: IOOBUF_X38_Y0_N2
\Sum[12]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \adder_loop[12].full_adder|S~combout\,
	devoe => ww_devoe,
	o => \Sum[12]~output_o\);

-- Location: IOOBUF_X48_Y41_N2
\Sum[13]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \adder_loop[13].full_adder|S~combout\,
	devoe => ww_devoe,
	o => \Sum[13]~output_o\);

-- Location: IOOBUF_X52_Y31_N9
\Sum[14]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \adder_loop[14].full_adder|S~combout\,
	devoe => ww_devoe,
	o => \Sum[14]~output_o\);

-- Location: IOOBUF_X52_Y31_N2
\Sum[15]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \adder_loop[15].full_adder|S~combout\,
	devoe => ww_devoe,
	o => \Sum[15]~output_o\);

-- Location: IOOBUF_X41_Y41_N16
\Sum[16]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \adder_loop[16].full_adder|S~combout\,
	devoe => ww_devoe,
	o => \Sum[16]~output_o\);

-- Location: IOOBUF_X41_Y41_N2
\Sum[17]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \adder_loop[17].full_adder|S~combout\,
	devoe => ww_devoe,
	o => \Sum[17]~output_o\);

-- Location: IOOBUF_X48_Y41_N9
\Sum[18]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \adder_loop[18].full_adder|S~combout\,
	devoe => ww_devoe,
	o => \Sum[18]~output_o\);

-- Location: IOOBUF_X36_Y41_N2
\Sum[19]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \adder_loop[19].full_adder|S~combout\,
	devoe => ww_devoe,
	o => \Sum[19]~output_o\);

-- Location: IOOBUF_X36_Y41_N9
\Sum[20]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \adder_loop[20].full_adder|S~combout\,
	devoe => ww_devoe,
	o => \Sum[20]~output_o\);

-- Location: IOOBUF_X52_Y23_N2
\Sum[21]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \adder_loop[21].full_adder|S~combout\,
	devoe => ww_devoe,
	o => \Sum[21]~output_o\);

-- Location: IOOBUF_X52_Y30_N9
\Sum[22]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \adder_loop[22].full_adder|S~combout\,
	devoe => ww_devoe,
	o => \Sum[22]~output_o\);

-- Location: IOOBUF_X52_Y12_N2
\Sum[23]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \adder_loop[23].full_adder|S~combout\,
	devoe => ww_devoe,
	o => \Sum[23]~output_o\);

-- Location: IOOBUF_X52_Y15_N2
\Sum[24]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \adder_loop[24].full_adder|S~combout\,
	devoe => ww_devoe,
	o => \Sum[24]~output_o\);

-- Location: IOOBUF_X52_Y19_N9
\Sum[25]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \adder_loop[25].full_adder|S~combout\,
	devoe => ww_devoe,
	o => \Sum[25]~output_o\);

-- Location: IOOBUF_X52_Y18_N9
\Sum[26]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \adder_loop[26].full_adder|S~combout\,
	devoe => ww_devoe,
	o => \Sum[26]~output_o\);

-- Location: IOOBUF_X52_Y13_N9
\Sum[27]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \adder_loop[27].full_adder|S~combout\,
	devoe => ww_devoe,
	o => \Sum[27]~output_o\);

-- Location: IOOBUF_X31_Y41_N9
\Sum[28]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \adder_loop[28].full_adder|S~combout\,
	devoe => ww_devoe,
	o => \Sum[28]~output_o\);

-- Location: IOOBUF_X18_Y41_N2
\Sum[29]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \adder_loop[29].full_adder|S~combout\,
	devoe => ww_devoe,
	o => \Sum[29]~output_o\);

-- Location: IOOBUF_X21_Y41_N2
\Sum[30]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \adder_loop[30].full_adder|S~combout\,
	devoe => ww_devoe,
	o => \Sum[30]~output_o\);

-- Location: IOOBUF_X23_Y41_N9
\Sum[31]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \adder_loop[31].full_adder|S~combout\,
	devoe => ww_devoe,
	o => \Sum[31]~output_o\);

-- Location: IOIBUF_X31_Y0_N1
\C_in~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_C_in,
	o => \C_in~input_o\);

-- Location: IOIBUF_X52_Y21_N1
\B[0]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(0),
	o => \B[0]~input_o\);

-- Location: IOIBUF_X52_Y21_N8
\A[0]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(0),
	o => \A[0]~input_o\);

-- Location: LCCOMB_X26_Y1_N0
\adder_loop[0].full_adder|S~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \adder_loop[0].full_adder|S~0_combout\ = \C_in~input_o\ $ (\B[0]~input_o\ $ (\A[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \C_in~input_o\,
	datac => \B[0]~input_o\,
	datad => \A[0]~input_o\,
	combout => \adder_loop[0].full_adder|S~0_combout\);

-- Location: IOIBUF_X21_Y0_N1
\B[1]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(1),
	o => \B[1]~input_o\);

-- Location: LCCOMB_X26_Y1_N2
\adder_loop[0].full_adder|Cout~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \adder_loop[0].full_adder|Cout~0_combout\ = (\C_in~input_o\ & ((\B[0]~input_o\) # (\A[0]~input_o\))) # (!\C_in~input_o\ & (\B[0]~input_o\ & \A[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \C_in~input_o\,
	datac => \B[0]~input_o\,
	datad => \A[0]~input_o\,
	combout => \adder_loop[0].full_adder|Cout~0_combout\);

-- Location: IOIBUF_X27_Y0_N8
\A[1]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(1),
	o => \A[1]~input_o\);

-- Location: LCCOMB_X26_Y1_N28
\adder_loop[1].full_adder|S\ : cycloneiv_lcell_comb
-- Equation(s):
-- \adder_loop[1].full_adder|S~combout\ = \B[1]~input_o\ $ (\adder_loop[0].full_adder|Cout~0_combout\ $ (\A[1]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100101100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[1]~input_o\,
	datab => \adder_loop[0].full_adder|Cout~0_combout\,
	datad => \A[1]~input_o\,
	combout => \adder_loop[1].full_adder|S~combout\);

-- Location: IOIBUF_X27_Y0_N1
\A[2]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(2),
	o => \A[2]~input_o\);

-- Location: IOIBUF_X14_Y0_N8
\B[2]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(2),
	o => \B[2]~input_o\);

-- Location: LCCOMB_X26_Y1_N22
\adder_loop[2].full_adder|S~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \adder_loop[2].full_adder|S~0_combout\ = \A[2]~input_o\ $ (\B[2]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \A[2]~input_o\,
	datac => \B[2]~input_o\,
	combout => \adder_loop[2].full_adder|S~0_combout\);

-- Location: LCCOMB_X26_Y1_N16
\adder_loop[2].full_adder|S\ : cycloneiv_lcell_comb
-- Equation(s):
-- \adder_loop[2].full_adder|S~combout\ = \adder_loop[2].full_adder|S~0_combout\ $ (((\B[1]~input_o\ & ((\adder_loop[0].full_adder|Cout~0_combout\) # (\A[1]~input_o\))) # (!\B[1]~input_o\ & (\adder_loop[0].full_adder|Cout~0_combout\ & \A[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111001111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[1]~input_o\,
	datab => \adder_loop[0].full_adder|Cout~0_combout\,
	datac => \adder_loop[2].full_adder|S~0_combout\,
	datad => \A[1]~input_o\,
	combout => \adder_loop[2].full_adder|S~combout\);

-- Location: LCCOMB_X26_Y1_N10
\adder_loop[2].full_adder|Cout~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \adder_loop[2].full_adder|Cout~0_combout\ = (\A[2]~input_o\ & \B[2]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \A[2]~input_o\,
	datac => \B[2]~input_o\,
	combout => \adder_loop[2].full_adder|Cout~0_combout\);

-- Location: IOIBUF_X29_Y0_N1
\B[3]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(3),
	o => \B[3]~input_o\);

-- Location: LCCOMB_X26_Y1_N4
\adder_loop[2].full_adder|Cout~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \adder_loop[2].full_adder|Cout~1_combout\ = (\A[2]~input_o\) # (\B[2]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \A[2]~input_o\,
	datac => \B[2]~input_o\,
	combout => \adder_loop[2].full_adder|Cout~1_combout\);

-- Location: LCCOMB_X26_Y1_N30
\adder_loop[2].full_adder|Cout~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \adder_loop[2].full_adder|Cout~2_combout\ = (\adder_loop[2].full_adder|Cout~1_combout\ & ((\B[1]~input_o\ & ((\adder_loop[0].full_adder|Cout~0_combout\) # (\A[1]~input_o\))) # (!\B[1]~input_o\ & (\adder_loop[0].full_adder|Cout~0_combout\ & 
-- \A[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[1]~input_o\,
	datab => \adder_loop[0].full_adder|Cout~0_combout\,
	datac => \adder_loop[2].full_adder|Cout~1_combout\,
	datad => \A[1]~input_o\,
	combout => \adder_loop[2].full_adder|Cout~2_combout\);

-- Location: IOIBUF_X29_Y0_N8
\A[3]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(3),
	o => \A[3]~input_o\);

-- Location: LCCOMB_X26_Y1_N8
\adder_loop[3].full_adder|S\ : cycloneiv_lcell_comb
-- Equation(s):
-- \adder_loop[3].full_adder|S~combout\ = \B[3]~input_o\ $ (\A[3]~input_o\ $ (((\adder_loop[2].full_adder|Cout~0_combout\) # (\adder_loop[2].full_adder|Cout~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100100110110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \adder_loop[2].full_adder|Cout~0_combout\,
	datab => \B[3]~input_o\,
	datac => \adder_loop[2].full_adder|Cout~2_combout\,
	datad => \A[3]~input_o\,
	combout => \adder_loop[3].full_adder|S~combout\);

-- Location: IOIBUF_X16_Y0_N1
\A[4]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(4),
	o => \A[4]~input_o\);

-- Location: IOIBUF_X25_Y41_N1
\B[4]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(4),
	o => \B[4]~input_o\);

-- Location: LCCOMB_X26_Y1_N18
\adder_loop[3].full_adder|Cout~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \adder_loop[3].full_adder|Cout~0_combout\ = (\B[3]~input_o\ & ((\adder_loop[2].full_adder|Cout~0_combout\) # ((\adder_loop[2].full_adder|Cout~2_combout\) # (\A[3]~input_o\)))) # (!\B[3]~input_o\ & (\A[3]~input_o\ & 
-- ((\adder_loop[2].full_adder|Cout~0_combout\) # (\adder_loop[2].full_adder|Cout~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \adder_loop[2].full_adder|Cout~0_combout\,
	datab => \B[3]~input_o\,
	datac => \adder_loop[2].full_adder|Cout~2_combout\,
	datad => \A[3]~input_o\,
	combout => \adder_loop[3].full_adder|Cout~0_combout\);

-- Location: LCCOMB_X26_Y1_N12
\adder_loop[4].full_adder|S\ : cycloneiv_lcell_comb
-- Equation(s):
-- \adder_loop[4].full_adder|S~combout\ = \A[4]~input_o\ $ (\B[4]~input_o\ $ (\adder_loop[3].full_adder|Cout~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \A[4]~input_o\,
	datac => \B[4]~input_o\,
	datad => \adder_loop[3].full_adder|Cout~0_combout\,
	combout => \adder_loop[4].full_adder|S~combout\);

-- Location: IOIBUF_X25_Y0_N8
\B[5]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(5),
	o => \B[5]~input_o\);

-- Location: IOIBUF_X31_Y0_N22
\A[5]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(5),
	o => \A[5]~input_o\);

-- Location: LCCOMB_X26_Y1_N6
\adder_loop[4].full_adder|Cout~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \adder_loop[4].full_adder|Cout~0_combout\ = (\A[4]~input_o\ & ((\B[4]~input_o\) # (\adder_loop[3].full_adder|Cout~0_combout\))) # (!\A[4]~input_o\ & (\B[4]~input_o\ & \adder_loop[3].full_adder|Cout~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \A[4]~input_o\,
	datac => \B[4]~input_o\,
	datad => \adder_loop[3].full_adder|Cout~0_combout\,
	combout => \adder_loop[4].full_adder|Cout~0_combout\);

-- Location: LCCOMB_X26_Y1_N24
\adder_loop[5].full_adder|S\ : cycloneiv_lcell_comb
-- Equation(s):
-- \adder_loop[5].full_adder|S~combout\ = \B[5]~input_o\ $ (\A[5]~input_o\ $ (\adder_loop[4].full_adder|Cout~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100101100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[5]~input_o\,
	datab => \A[5]~input_o\,
	datad => \adder_loop[4].full_adder|Cout~0_combout\,
	combout => \adder_loop[5].full_adder|S~combout\);

-- Location: LCCOMB_X26_Y1_N26
\adder_loop[5].full_adder|Cout~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \adder_loop[5].full_adder|Cout~0_combout\ = (\B[5]~input_o\ & ((\A[5]~input_o\) # (\adder_loop[4].full_adder|Cout~0_combout\))) # (!\B[5]~input_o\ & (\A[5]~input_o\ & \adder_loop[4].full_adder|Cout~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[5]~input_o\,
	datab => \A[5]~input_o\,
	datad => \adder_loop[4].full_adder|Cout~0_combout\,
	combout => \adder_loop[5].full_adder|Cout~0_combout\);

-- Location: IOIBUF_X18_Y0_N1
\B[6]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(6),
	o => \B[6]~input_o\);

-- Location: IOIBUF_X31_Y0_N8
\A[6]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(6),
	o => \A[6]~input_o\);

-- Location: LCCOMB_X26_Y1_N20
\adder_loop[6].full_adder|S\ : cycloneiv_lcell_comb
-- Equation(s):
-- \adder_loop[6].full_adder|S~combout\ = \adder_loop[5].full_adder|Cout~0_combout\ $ (\B[6]~input_o\ $ (\A[6]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \adder_loop[5].full_adder|Cout~0_combout\,
	datac => \B[6]~input_o\,
	datad => \A[6]~input_o\,
	combout => \adder_loop[6].full_adder|S~combout\);

-- Location: LCCOMB_X26_Y1_N14
\adder_loop[6].full_adder|Cout~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \adder_loop[6].full_adder|Cout~0_combout\ = (\adder_loop[5].full_adder|Cout~0_combout\ & ((\B[6]~input_o\) # (\A[6]~input_o\))) # (!\adder_loop[5].full_adder|Cout~0_combout\ & (\B[6]~input_o\ & \A[6]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \adder_loop[5].full_adder|Cout~0_combout\,
	datac => \B[6]~input_o\,
	datad => \A[6]~input_o\,
	combout => \adder_loop[6].full_adder|Cout~0_combout\);

-- Location: IOIBUF_X52_Y9_N1
\B[7]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(7),
	o => \B[7]~input_o\);

-- Location: IOIBUF_X50_Y0_N1
\A[7]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(7),
	o => \A[7]~input_o\);

-- Location: LCCOMB_X46_Y1_N24
\adder_loop[7].full_adder|S\ : cycloneiv_lcell_comb
-- Equation(s):
-- \adder_loop[7].full_adder|S~combout\ = \adder_loop[6].full_adder|Cout~0_combout\ $ (\B[7]~input_o\ $ (\A[7]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \adder_loop[6].full_adder|Cout~0_combout\,
	datac => \B[7]~input_o\,
	datad => \A[7]~input_o\,
	combout => \adder_loop[7].full_adder|S~combout\);

-- Location: IOIBUF_X46_Y0_N22
\B[8]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(8),
	o => \B[8]~input_o\);

-- Location: IOIBUF_X46_Y0_N15
\A[8]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(8),
	o => \A[8]~input_o\);

-- Location: LCCOMB_X46_Y1_N2
\adder_loop[7].full_adder|Cout~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \adder_loop[7].full_adder|Cout~0_combout\ = (\adder_loop[6].full_adder|Cout~0_combout\ & ((\B[7]~input_o\) # (\A[7]~input_o\))) # (!\adder_loop[6].full_adder|Cout~0_combout\ & (\B[7]~input_o\ & \A[7]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \adder_loop[6].full_adder|Cout~0_combout\,
	datac => \B[7]~input_o\,
	datad => \A[7]~input_o\,
	combout => \adder_loop[7].full_adder|Cout~0_combout\);

-- Location: LCCOMB_X46_Y1_N12
\adder_loop[8].full_adder|S\ : cycloneiv_lcell_comb
-- Equation(s):
-- \adder_loop[8].full_adder|S~combout\ = \B[8]~input_o\ $ (\A[8]~input_o\ $ (\adder_loop[7].full_adder|Cout~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[8]~input_o\,
	datac => \A[8]~input_o\,
	datad => \adder_loop[7].full_adder|Cout~0_combout\,
	combout => \adder_loop[8].full_adder|S~combout\);

-- Location: IOIBUF_X41_Y0_N8
\B[9]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(9),
	o => \B[9]~input_o\);

-- Location: IOIBUF_X36_Y0_N1
\A[9]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(9),
	o => \A[9]~input_o\);

-- Location: LCCOMB_X46_Y1_N6
\adder_loop[8].full_adder|Cout~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \adder_loop[8].full_adder|Cout~0_combout\ = (\B[8]~input_o\ & ((\A[8]~input_o\) # (\adder_loop[7].full_adder|Cout~0_combout\))) # (!\B[8]~input_o\ & (\A[8]~input_o\ & \adder_loop[7].full_adder|Cout~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[8]~input_o\,
	datac => \A[8]~input_o\,
	datad => \adder_loop[7].full_adder|Cout~0_combout\,
	combout => \adder_loop[8].full_adder|Cout~0_combout\);

-- Location: LCCOMB_X42_Y1_N16
\adder_loop[9].full_adder|S\ : cycloneiv_lcell_comb
-- Equation(s):
-- \adder_loop[9].full_adder|S~combout\ = \B[9]~input_o\ $ (\A[9]~input_o\ $ (\adder_loop[8].full_adder|Cout~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[9]~input_o\,
	datac => \A[9]~input_o\,
	datad => \adder_loop[8].full_adder|Cout~0_combout\,
	combout => \adder_loop[9].full_adder|S~combout\);

-- Location: IOIBUF_X41_Y0_N22
\B[10]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(10),
	o => \B[10]~input_o\);

-- Location: IOIBUF_X43_Y0_N8
\A[10]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(10),
	o => \A[10]~input_o\);

-- Location: LCCOMB_X42_Y1_N2
\adder_loop[10].full_adder|S~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \adder_loop[10].full_adder|S~0_combout\ = \B[10]~input_o\ $ (\A[10]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[10]~input_o\,
	datad => \A[10]~input_o\,
	combout => \adder_loop[10].full_adder|S~0_combout\);

-- Location: LCCOMB_X42_Y1_N28
\adder_loop[10].full_adder|S\ : cycloneiv_lcell_comb
-- Equation(s):
-- \adder_loop[10].full_adder|S~combout\ = \adder_loop[10].full_adder|S~0_combout\ $ (((\B[9]~input_o\ & ((\A[9]~input_o\) # (\adder_loop[8].full_adder|Cout~0_combout\))) # (!\B[9]~input_o\ & (\A[9]~input_o\ & \adder_loop[8].full_adder|Cout~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011011001101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[9]~input_o\,
	datab => \adder_loop[10].full_adder|S~0_combout\,
	datac => \A[9]~input_o\,
	datad => \adder_loop[8].full_adder|Cout~0_combout\,
	combout => \adder_loop[10].full_adder|S~combout\);

-- Location: LCCOMB_X42_Y1_N24
\adder_loop[10].full_adder|Cout~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \adder_loop[10].full_adder|Cout~1_combout\ = (\B[10]~input_o\) # (\A[10]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[10]~input_o\,
	datad => \A[10]~input_o\,
	combout => \adder_loop[10].full_adder|Cout~1_combout\);

-- Location: LCCOMB_X42_Y1_N26
\adder_loop[10].full_adder|Cout~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \adder_loop[10].full_adder|Cout~2_combout\ = (\adder_loop[10].full_adder|Cout~1_combout\ & ((\B[9]~input_o\ & ((\A[9]~input_o\) # (\adder_loop[8].full_adder|Cout~0_combout\))) # (!\B[9]~input_o\ & (\A[9]~input_o\ & 
-- \adder_loop[8].full_adder|Cout~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[9]~input_o\,
	datab => \adder_loop[10].full_adder|Cout~1_combout\,
	datac => \A[9]~input_o\,
	datad => \adder_loop[8].full_adder|Cout~0_combout\,
	combout => \adder_loop[10].full_adder|Cout~2_combout\);

-- Location: IOIBUF_X41_Y0_N1
\A[11]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(11),
	o => \A[11]~input_o\);

-- Location: LCCOMB_X42_Y1_N22
\adder_loop[10].full_adder|Cout~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \adder_loop[10].full_adder|Cout~0_combout\ = (\B[10]~input_o\ & \A[10]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[10]~input_o\,
	datad => \A[10]~input_o\,
	combout => \adder_loop[10].full_adder|Cout~0_combout\);

-- Location: IOIBUF_X46_Y0_N8
\B[11]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(11),
	o => \B[11]~input_o\);

-- Location: LCCOMB_X42_Y1_N4
\adder_loop[11].full_adder|S\ : cycloneiv_lcell_comb
-- Equation(s):
-- \adder_loop[11].full_adder|S~combout\ = \A[11]~input_o\ $ (\B[11]~input_o\ $ (((\adder_loop[10].full_adder|Cout~2_combout\) # (\adder_loop[10].full_adder|Cout~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100100110110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \adder_loop[10].full_adder|Cout~2_combout\,
	datab => \A[11]~input_o\,
	datac => \adder_loop[10].full_adder|Cout~0_combout\,
	datad => \B[11]~input_o\,
	combout => \adder_loop[11].full_adder|S~combout\);

-- Location: IOIBUF_X34_Y41_N8
\B[12]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(12),
	o => \B[12]~input_o\);

-- Location: IOIBUF_X43_Y0_N1
\A[12]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(12),
	o => \A[12]~input_o\);

-- Location: LCCOMB_X42_Y1_N6
\adder_loop[11].full_adder|Cout~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \adder_loop[11].full_adder|Cout~0_combout\ = (\A[11]~input_o\ & ((\adder_loop[10].full_adder|Cout~2_combout\) # ((\adder_loop[10].full_adder|Cout~0_combout\) # (\B[11]~input_o\)))) # (!\A[11]~input_o\ & (\B[11]~input_o\ & 
-- ((\adder_loop[10].full_adder|Cout~2_combout\) # (\adder_loop[10].full_adder|Cout~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \adder_loop[10].full_adder|Cout~2_combout\,
	datab => \A[11]~input_o\,
	datac => \adder_loop[10].full_adder|Cout~0_combout\,
	datad => \B[11]~input_o\,
	combout => \adder_loop[11].full_adder|Cout~0_combout\);

-- Location: LCCOMB_X42_Y1_N0
\adder_loop[12].full_adder|S\ : cycloneiv_lcell_comb
-- Equation(s):
-- \adder_loop[12].full_adder|S~combout\ = \B[12]~input_o\ $ (\A[12]~input_o\ $ (\adder_loop[11].full_adder|Cout~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[12]~input_o\,
	datac => \A[12]~input_o\,
	datad => \adder_loop[11].full_adder|Cout~0_combout\,
	combout => \adder_loop[12].full_adder|S~combout\);

-- Location: LCCOMB_X42_Y1_N10
\adder_loop[12].full_adder|Cout~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \adder_loop[12].full_adder|Cout~0_combout\ = (\B[12]~input_o\ & ((\A[12]~input_o\) # (\adder_loop[11].full_adder|Cout~0_combout\))) # (!\B[12]~input_o\ & (\A[12]~input_o\ & \adder_loop[11].full_adder|Cout~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[12]~input_o\,
	datac => \A[12]~input_o\,
	datad => \adder_loop[11].full_adder|Cout~0_combout\,
	combout => \adder_loop[12].full_adder|Cout~0_combout\);

-- Location: IOIBUF_X52_Y30_N1
\A[13]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(13),
	o => \A[13]~input_o\);

-- Location: IOIBUF_X52_Y32_N1
\B[13]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(13),
	o => \B[13]~input_o\);

-- Location: LCCOMB_X51_Y32_N0
\adder_loop[13].full_adder|S\ : cycloneiv_lcell_comb
-- Equation(s):
-- \adder_loop[13].full_adder|S~combout\ = \adder_loop[12].full_adder|Cout~0_combout\ $ (\A[13]~input_o\ $ (\B[13]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \adder_loop[12].full_adder|Cout~0_combout\,
	datac => \A[13]~input_o\,
	datad => \B[13]~input_o\,
	combout => \adder_loop[13].full_adder|S~combout\);

-- Location: IOIBUF_X50_Y41_N1
\B[14]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(14),
	o => \B[14]~input_o\);

-- Location: IOIBUF_X52_Y32_N8
\A[14]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(14),
	o => \A[14]~input_o\);

-- Location: LCCOMB_X51_Y32_N2
\adder_loop[14].full_adder|S~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \adder_loop[14].full_adder|S~0_combout\ = \B[14]~input_o\ $ (\A[14]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B[14]~input_o\,
	datad => \A[14]~input_o\,
	combout => \adder_loop[14].full_adder|S~0_combout\);

-- Location: LCCOMB_X51_Y32_N20
\adder_loop[14].full_adder|S\ : cycloneiv_lcell_comb
-- Equation(s):
-- \adder_loop[14].full_adder|S~combout\ = \adder_loop[14].full_adder|S~0_combout\ $ (((\adder_loop[12].full_adder|Cout~0_combout\ & ((\A[13]~input_o\) # (\B[13]~input_o\))) # (!\adder_loop[12].full_adder|Cout~0_combout\ & (\A[13]~input_o\ & 
-- \B[13]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011011001101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \adder_loop[12].full_adder|Cout~0_combout\,
	datab => \adder_loop[14].full_adder|S~0_combout\,
	datac => \A[13]~input_o\,
	datad => \B[13]~input_o\,
	combout => \adder_loop[14].full_adder|S~combout\);

-- Location: LCCOMB_X51_Y32_N24
\adder_loop[14].full_adder|Cout~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \adder_loop[14].full_adder|Cout~1_combout\ = (\B[14]~input_o\) # (\A[14]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B[14]~input_o\,
	datad => \A[14]~input_o\,
	combout => \adder_loop[14].full_adder|Cout~1_combout\);

-- Location: LCCOMB_X51_Y32_N10
\adder_loop[14].full_adder|Cout~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \adder_loop[14].full_adder|Cout~2_combout\ = (\adder_loop[14].full_adder|Cout~1_combout\ & ((\adder_loop[12].full_adder|Cout~0_combout\ & ((\A[13]~input_o\) # (\B[13]~input_o\))) # (!\adder_loop[12].full_adder|Cout~0_combout\ & (\A[13]~input_o\ & 
-- \B[13]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \adder_loop[12].full_adder|Cout~0_combout\,
	datab => \adder_loop[14].full_adder|Cout~1_combout\,
	datac => \A[13]~input_o\,
	datad => \B[13]~input_o\,
	combout => \adder_loop[14].full_adder|Cout~2_combout\);

-- Location: IOIBUF_X52_Y32_N15
\B[15]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(15),
	o => \B[15]~input_o\);

-- Location: LCCOMB_X51_Y32_N22
\adder_loop[14].full_adder|Cout~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \adder_loop[14].full_adder|Cout~0_combout\ = (\B[14]~input_o\ & \A[14]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B[14]~input_o\,
	datad => \A[14]~input_o\,
	combout => \adder_loop[14].full_adder|Cout~0_combout\);

-- Location: IOIBUF_X52_Y32_N22
\A[15]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(15),
	o => \A[15]~input_o\);

-- Location: LCCOMB_X51_Y32_N12
\adder_loop[15].full_adder|S\ : cycloneiv_lcell_comb
-- Equation(s):
-- \adder_loop[15].full_adder|S~combout\ = \B[15]~input_o\ $ (\A[15]~input_o\ $ (((\adder_loop[14].full_adder|Cout~2_combout\) # (\adder_loop[14].full_adder|Cout~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100100110110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \adder_loop[14].full_adder|Cout~2_combout\,
	datab => \B[15]~input_o\,
	datac => \adder_loop[14].full_adder|Cout~0_combout\,
	datad => \A[15]~input_o\,
	combout => \adder_loop[15].full_adder|S~combout\);

-- Location: IOIBUF_X43_Y41_N8
\A[16]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(16),
	o => \A[16]~input_o\);

-- Location: IOIBUF_X43_Y41_N1
\B[16]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(16),
	o => \B[16]~input_o\);

-- Location: LCCOMB_X51_Y32_N30
\adder_loop[15].full_adder|Cout~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \adder_loop[15].full_adder|Cout~0_combout\ = (\B[15]~input_o\ & ((\adder_loop[14].full_adder|Cout~2_combout\) # ((\adder_loop[14].full_adder|Cout~0_combout\) # (\A[15]~input_o\)))) # (!\B[15]~input_o\ & (\A[15]~input_o\ & 
-- ((\adder_loop[14].full_adder|Cout~2_combout\) # (\adder_loop[14].full_adder|Cout~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \adder_loop[14].full_adder|Cout~2_combout\,
	datab => \B[15]~input_o\,
	datac => \adder_loop[14].full_adder|Cout~0_combout\,
	datad => \A[15]~input_o\,
	combout => \adder_loop[15].full_adder|Cout~0_combout\);

-- Location: LCCOMB_X42_Y40_N8
\adder_loop[16].full_adder|S\ : cycloneiv_lcell_comb
-- Equation(s):
-- \adder_loop[16].full_adder|S~combout\ = \A[16]~input_o\ $ (\B[16]~input_o\ $ (\adder_loop[15].full_adder|Cout~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \A[16]~input_o\,
	datac => \B[16]~input_o\,
	datad => \adder_loop[15].full_adder|Cout~0_combout\,
	combout => \adder_loop[16].full_adder|S~combout\);

-- Location: LCCOMB_X42_Y40_N2
\adder_loop[16].full_adder|Cout~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \adder_loop[16].full_adder|Cout~0_combout\ = (\A[16]~input_o\ & ((\B[16]~input_o\) # (\adder_loop[15].full_adder|Cout~0_combout\))) # (!\A[16]~input_o\ & (\B[16]~input_o\ & \adder_loop[15].full_adder|Cout~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \A[16]~input_o\,
	datac => \B[16]~input_o\,
	datad => \adder_loop[15].full_adder|Cout~0_combout\,
	combout => \adder_loop[16].full_adder|Cout~0_combout\);

-- Location: IOIBUF_X38_Y41_N1
\A[17]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(17),
	o => \A[17]~input_o\);

-- Location: IOIBUF_X46_Y41_N8
\B[17]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(17),
	o => \B[17]~input_o\);

-- Location: LCCOMB_X42_Y40_N12
\adder_loop[17].full_adder|S\ : cycloneiv_lcell_comb
-- Equation(s):
-- \adder_loop[17].full_adder|S~combout\ = \adder_loop[16].full_adder|Cout~0_combout\ $ (\A[17]~input_o\ $ (\B[17]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \adder_loop[16].full_adder|Cout~0_combout\,
	datac => \A[17]~input_o\,
	datad => \B[17]~input_o\,
	combout => \adder_loop[17].full_adder|S~combout\);

-- Location: LCCOMB_X42_Y40_N6
\adder_loop[17].full_adder|Cout~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \adder_loop[17].full_adder|Cout~0_combout\ = (\adder_loop[16].full_adder|Cout~0_combout\ & ((\A[17]~input_o\) # (\B[17]~input_o\))) # (!\adder_loop[16].full_adder|Cout~0_combout\ & (\A[17]~input_o\ & \B[17]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \adder_loop[16].full_adder|Cout~0_combout\,
	datac => \A[17]~input_o\,
	datad => \B[17]~input_o\,
	combout => \adder_loop[17].full_adder|Cout~0_combout\);

-- Location: IOIBUF_X46_Y41_N1
\B[18]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(18),
	o => \B[18]~input_o\);

-- Location: IOIBUF_X41_Y41_N8
\A[18]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(18),
	o => \A[18]~input_o\);

-- Location: LCCOMB_X42_Y40_N24
\adder_loop[18].full_adder|S\ : cycloneiv_lcell_comb
-- Equation(s):
-- \adder_loop[18].full_adder|S~combout\ = \adder_loop[17].full_adder|Cout~0_combout\ $ (\B[18]~input_o\ $ (\A[18]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \adder_loop[17].full_adder|Cout~0_combout\,
	datab => \B[18]~input_o\,
	datac => \A[18]~input_o\,
	combout => \adder_loop[18].full_adder|S~combout\);

-- Location: LCCOMB_X42_Y40_N10
\adder_loop[18].full_adder|Cout~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \adder_loop[18].full_adder|Cout~0_combout\ = (\adder_loop[17].full_adder|Cout~0_combout\ & ((\B[18]~input_o\) # (\A[18]~input_o\))) # (!\adder_loop[17].full_adder|Cout~0_combout\ & (\B[18]~input_o\ & \A[18]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \adder_loop[17].full_adder|Cout~0_combout\,
	datab => \B[18]~input_o\,
	datac => \A[18]~input_o\,
	combout => \adder_loop[18].full_adder|Cout~0_combout\);

-- Location: IOIBUF_X38_Y41_N8
\A[19]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(19),
	o => \A[19]~input_o\);

-- Location: IOIBUF_X46_Y41_N15
\B[19]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(19),
	o => \B[19]~input_o\);

-- Location: LCCOMB_X42_Y40_N4
\adder_loop[19].full_adder|S\ : cycloneiv_lcell_comb
-- Equation(s):
-- \adder_loop[19].full_adder|S~combout\ = \adder_loop[18].full_adder|Cout~0_combout\ $ (\A[19]~input_o\ $ (\B[19]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100101100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \adder_loop[18].full_adder|Cout~0_combout\,
	datab => \A[19]~input_o\,
	datad => \B[19]~input_o\,
	combout => \adder_loop[19].full_adder|S~combout\);

-- Location: IOIBUF_X41_Y41_N22
\B[20]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(20),
	o => \B[20]~input_o\);

-- Location: LCCOMB_X42_Y40_N22
\adder_loop[19].full_adder|Cout~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \adder_loop[19].full_adder|Cout~0_combout\ = (\adder_loop[18].full_adder|Cout~0_combout\ & ((\A[19]~input_o\) # (\B[19]~input_o\))) # (!\adder_loop[18].full_adder|Cout~0_combout\ & (\A[19]~input_o\ & \B[19]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \adder_loop[18].full_adder|Cout~0_combout\,
	datab => \A[19]~input_o\,
	datad => \B[19]~input_o\,
	combout => \adder_loop[19].full_adder|Cout~0_combout\);

-- Location: IOIBUF_X46_Y41_N22
\A[20]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(20),
	o => \A[20]~input_o\);

-- Location: LCCOMB_X42_Y40_N16
\adder_loop[20].full_adder|S\ : cycloneiv_lcell_comb
-- Equation(s):
-- \adder_loop[20].full_adder|S~combout\ = \B[20]~input_o\ $ (\adder_loop[19].full_adder|Cout~0_combout\ $ (\A[20]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[20]~input_o\,
	datac => \adder_loop[19].full_adder|Cout~0_combout\,
	datad => \A[20]~input_o\,
	combout => \adder_loop[20].full_adder|S~combout\);

-- Location: LCCOMB_X42_Y40_N18
\adder_loop[20].full_adder|Cout~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \adder_loop[20].full_adder|Cout~0_combout\ = (\B[20]~input_o\ & ((\adder_loop[19].full_adder|Cout~0_combout\) # (\A[20]~input_o\))) # (!\B[20]~input_o\ & (\adder_loop[19].full_adder|Cout~0_combout\ & \A[20]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[20]~input_o\,
	datac => \adder_loop[19].full_adder|Cout~0_combout\,
	datad => \A[20]~input_o\,
	combout => \adder_loop[20].full_adder|Cout~0_combout\);

-- Location: IOIBUF_X52_Y15_N8
\B[21]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(21),
	o => \B[21]~input_o\);

-- Location: IOIBUF_X52_Y16_N8
\A[21]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(21),
	o => \A[21]~input_o\);

-- Location: LCCOMB_X51_Y23_N24
\adder_loop[21].full_adder|S\ : cycloneiv_lcell_comb
-- Equation(s):
-- \adder_loop[21].full_adder|S~combout\ = \adder_loop[20].full_adder|Cout~0_combout\ $ (\B[21]~input_o\ $ (\A[21]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \adder_loop[20].full_adder|Cout~0_combout\,
	datac => \B[21]~input_o\,
	datad => \A[21]~input_o\,
	combout => \adder_loop[21].full_adder|S~combout\);

-- Location: IOIBUF_X52_Y19_N1
\A[22]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(22),
	o => \A[22]~input_o\);

-- Location: IOIBUF_X52_Y28_N8
\B[22]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(22),
	o => \B[22]~input_o\);

-- Location: LCCOMB_X51_Y23_N18
\adder_loop[22].full_adder|S~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \adder_loop[22].full_adder|S~0_combout\ = \A[22]~input_o\ $ (\B[22]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[22]~input_o\,
	datac => \B[22]~input_o\,
	combout => \adder_loop[22].full_adder|S~0_combout\);

-- Location: LCCOMB_X51_Y23_N4
\adder_loop[22].full_adder|S\ : cycloneiv_lcell_comb
-- Equation(s):
-- \adder_loop[22].full_adder|S~combout\ = \adder_loop[22].full_adder|S~0_combout\ $ (((\adder_loop[20].full_adder|Cout~0_combout\ & ((\B[21]~input_o\) # (\A[21]~input_o\))) # (!\adder_loop[20].full_adder|Cout~0_combout\ & (\B[21]~input_o\ & 
-- \A[21]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011011001101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \adder_loop[20].full_adder|Cout~0_combout\,
	datab => \adder_loop[22].full_adder|S~0_combout\,
	datac => \B[21]~input_o\,
	datad => \A[21]~input_o\,
	combout => \adder_loop[22].full_adder|S~combout\);

-- Location: LCCOMB_X51_Y23_N0
\adder_loop[22].full_adder|Cout~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \adder_loop[22].full_adder|Cout~1_combout\ = (\A[22]~input_o\) # (\B[22]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[22]~input_o\,
	datac => \B[22]~input_o\,
	combout => \adder_loop[22].full_adder|Cout~1_combout\);

-- Location: LCCOMB_X51_Y23_N10
\adder_loop[22].full_adder|Cout~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \adder_loop[22].full_adder|Cout~2_combout\ = (\adder_loop[22].full_adder|Cout~1_combout\ & ((\adder_loop[20].full_adder|Cout~0_combout\ & ((\B[21]~input_o\) # (\A[21]~input_o\))) # (!\adder_loop[20].full_adder|Cout~0_combout\ & (\B[21]~input_o\ & 
-- \A[21]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \adder_loop[20].full_adder|Cout~0_combout\,
	datab => \adder_loop[22].full_adder|Cout~1_combout\,
	datac => \B[21]~input_o\,
	datad => \A[21]~input_o\,
	combout => \adder_loop[22].full_adder|Cout~2_combout\);

-- Location: IOIBUF_X52_Y13_N1
\B[23]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(23),
	o => \B[23]~input_o\);

-- Location: LCCOMB_X51_Y23_N30
\adder_loop[22].full_adder|Cout~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \adder_loop[22].full_adder|Cout~0_combout\ = (\A[22]~input_o\ & \B[22]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[22]~input_o\,
	datac => \B[22]~input_o\,
	combout => \adder_loop[22].full_adder|Cout~0_combout\);

-- Location: IOIBUF_X52_Y28_N1
\A[23]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(23),
	o => \A[23]~input_o\);

-- Location: LCCOMB_X51_Y23_N20
\adder_loop[23].full_adder|S\ : cycloneiv_lcell_comb
-- Equation(s):
-- \adder_loop[23].full_adder|S~combout\ = \B[23]~input_o\ $ (\A[23]~input_o\ $ (((\adder_loop[22].full_adder|Cout~2_combout\) # (\adder_loop[22].full_adder|Cout~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100100110110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \adder_loop[22].full_adder|Cout~2_combout\,
	datab => \B[23]~input_o\,
	datac => \adder_loop[22].full_adder|Cout~0_combout\,
	datad => \A[23]~input_o\,
	combout => \adder_loop[23].full_adder|S~combout\);

-- Location: LCCOMB_X51_Y23_N6
\adder_loop[23].full_adder|Cout~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \adder_loop[23].full_adder|Cout~0_combout\ = (\B[23]~input_o\ & ((\adder_loop[22].full_adder|Cout~2_combout\) # ((\adder_loop[22].full_adder|Cout~0_combout\) # (\A[23]~input_o\)))) # (!\B[23]~input_o\ & (\A[23]~input_o\ & 
-- ((\adder_loop[22].full_adder|Cout~2_combout\) # (\adder_loop[22].full_adder|Cout~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \adder_loop[22].full_adder|Cout~2_combout\,
	datab => \B[23]~input_o\,
	datac => \adder_loop[22].full_adder|Cout~0_combout\,
	datad => \A[23]~input_o\,
	combout => \adder_loop[23].full_adder|Cout~0_combout\);

-- Location: IOIBUF_X52_Y16_N1
\A[24]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(24),
	o => \A[24]~input_o\);

-- Location: IOIBUF_X52_Y27_N1
\B[24]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(24),
	o => \B[24]~input_o\);

-- Location: LCCOMB_X51_Y23_N16
\adder_loop[24].full_adder|S\ : cycloneiv_lcell_comb
-- Equation(s):
-- \adder_loop[24].full_adder|S~combout\ = \adder_loop[23].full_adder|Cout~0_combout\ $ (\A[24]~input_o\ $ (\B[24]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \adder_loop[23].full_adder|Cout~0_combout\,
	datac => \A[24]~input_o\,
	datad => \B[24]~input_o\,
	combout => \adder_loop[24].full_adder|S~combout\);

-- Location: IOIBUF_X52_Y18_N1
\A[25]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(25),
	o => \A[25]~input_o\);

-- Location: LCCOMB_X51_Y23_N26
\adder_loop[24].full_adder|Cout~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \adder_loop[24].full_adder|Cout~0_combout\ = (\adder_loop[23].full_adder|Cout~0_combout\ & ((\A[24]~input_o\) # (\B[24]~input_o\))) # (!\adder_loop[23].full_adder|Cout~0_combout\ & (\A[24]~input_o\ & \B[24]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \adder_loop[23].full_adder|Cout~0_combout\,
	datac => \A[24]~input_o\,
	datad => \B[24]~input_o\,
	combout => \adder_loop[24].full_adder|Cout~0_combout\);

-- Location: IOIBUF_X52_Y23_N8
\B[25]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(25),
	o => \B[25]~input_o\);

-- Location: LCCOMB_X51_Y23_N28
\adder_loop[25].full_adder|S\ : cycloneiv_lcell_comb
-- Equation(s):
-- \adder_loop[25].full_adder|S~combout\ = \A[25]~input_o\ $ (\adder_loop[24].full_adder|Cout~0_combout\ $ (\B[25]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \A[25]~input_o\,
	datac => \adder_loop[24].full_adder|Cout~0_combout\,
	datad => \B[25]~input_o\,
	combout => \adder_loop[25].full_adder|S~combout\);

-- Location: LCCOMB_X51_Y23_N14
\adder_loop[25].full_adder|Cout~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \adder_loop[25].full_adder|Cout~0_combout\ = (\A[25]~input_o\ & ((\adder_loop[24].full_adder|Cout~0_combout\) # (\B[25]~input_o\))) # (!\A[25]~input_o\ & (\adder_loop[24].full_adder|Cout~0_combout\ & \B[25]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \A[25]~input_o\,
	datac => \adder_loop[24].full_adder|Cout~0_combout\,
	datad => \B[25]~input_o\,
	combout => \adder_loop[25].full_adder|Cout~0_combout\);

-- Location: IOIBUF_X52_Y27_N8
\A[26]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(26),
	o => \A[26]~input_o\);

-- Location: IOIBUF_X52_Y25_N8
\B[26]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(26),
	o => \B[26]~input_o\);

-- Location: LCCOMB_X51_Y23_N8
\adder_loop[26].full_adder|S\ : cycloneiv_lcell_comb
-- Equation(s):
-- \adder_loop[26].full_adder|S~combout\ = \adder_loop[25].full_adder|Cout~0_combout\ $ (\A[26]~input_o\ $ (\B[26]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \adder_loop[25].full_adder|Cout~0_combout\,
	datac => \A[26]~input_o\,
	datad => \B[26]~input_o\,
	combout => \adder_loop[26].full_adder|S~combout\);

-- Location: IOIBUF_X50_Y41_N8
\A[27]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(27),
	o => \A[27]~input_o\);

-- Location: LCCOMB_X51_Y23_N2
\adder_loop[26].full_adder|Cout~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \adder_loop[26].full_adder|Cout~0_combout\ = (\adder_loop[25].full_adder|Cout~0_combout\ & ((\A[26]~input_o\) # (\B[26]~input_o\))) # (!\adder_loop[25].full_adder|Cout~0_combout\ & (\A[26]~input_o\ & \B[26]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \adder_loop[25].full_adder|Cout~0_combout\,
	datac => \A[26]~input_o\,
	datad => \B[26]~input_o\,
	combout => \adder_loop[26].full_adder|Cout~0_combout\);

-- Location: IOIBUF_X52_Y25_N1
\B[27]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(27),
	o => \B[27]~input_o\);

-- Location: LCCOMB_X51_Y23_N12
\adder_loop[27].full_adder|S\ : cycloneiv_lcell_comb
-- Equation(s):
-- \adder_loop[27].full_adder|S~combout\ = \A[27]~input_o\ $ (\adder_loop[26].full_adder|Cout~0_combout\ $ (\B[27]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[27]~input_o\,
	datab => \adder_loop[26].full_adder|Cout~0_combout\,
	datac => \B[27]~input_o\,
	combout => \adder_loop[27].full_adder|S~combout\);

-- Location: IOIBUF_X27_Y41_N1
\A[28]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(28),
	o => \A[28]~input_o\);

-- Location: IOIBUF_X27_Y41_N8
\B[28]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(28),
	o => \B[28]~input_o\);

-- Location: LCCOMB_X51_Y23_N22
\adder_loop[27].full_adder|Cout~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \adder_loop[27].full_adder|Cout~0_combout\ = (\A[27]~input_o\ & ((\adder_loop[26].full_adder|Cout~0_combout\) # (\B[27]~input_o\))) # (!\A[27]~input_o\ & (\adder_loop[26].full_adder|Cout~0_combout\ & \B[27]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[27]~input_o\,
	datab => \adder_loop[26].full_adder|Cout~0_combout\,
	datac => \B[27]~input_o\,
	combout => \adder_loop[27].full_adder|Cout~0_combout\);

-- Location: LCCOMB_X22_Y40_N0
\adder_loop[28].full_adder|S\ : cycloneiv_lcell_comb
-- Equation(s):
-- \adder_loop[28].full_adder|S~combout\ = \A[28]~input_o\ $ (\B[28]~input_o\ $ (\adder_loop[27].full_adder|Cout~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[28]~input_o\,
	datac => \B[28]~input_o\,
	datad => \adder_loop[27].full_adder|Cout~0_combout\,
	combout => \adder_loop[28].full_adder|S~combout\);

-- Location: LCCOMB_X22_Y40_N10
\adder_loop[28].full_adder|Cout~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \adder_loop[28].full_adder|Cout~0_combout\ = (\A[28]~input_o\ & ((\B[28]~input_o\) # (\adder_loop[27].full_adder|Cout~0_combout\))) # (!\A[28]~input_o\ & (\B[28]~input_o\ & \adder_loop[27].full_adder|Cout~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[28]~input_o\,
	datac => \B[28]~input_o\,
	datad => \adder_loop[27].full_adder|Cout~0_combout\,
	combout => \adder_loop[28].full_adder|Cout~0_combout\);

-- Location: IOIBUF_X14_Y41_N1
\A[29]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(29),
	o => \A[29]~input_o\);

-- Location: IOIBUF_X25_Y41_N8
\B[29]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(29),
	o => \B[29]~input_o\);

-- Location: LCCOMB_X22_Y40_N28
\adder_loop[29].full_adder|S\ : cycloneiv_lcell_comb
-- Equation(s):
-- \adder_loop[29].full_adder|S~combout\ = \adder_loop[28].full_adder|Cout~0_combout\ $ (\A[29]~input_o\ $ (\B[29]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100101100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \adder_loop[28].full_adder|Cout~0_combout\,
	datab => \A[29]~input_o\,
	datad => \B[29]~input_o\,
	combout => \adder_loop[29].full_adder|S~combout\);

-- Location: IOIBUF_X18_Y41_N8
\A[30]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(30),
	o => \A[30]~input_o\);

-- Location: IOIBUF_X21_Y41_N8
\B[30]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(30),
	o => \B[30]~input_o\);

-- Location: LCCOMB_X22_Y40_N6
\adder_loop[29].full_adder|Cout~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \adder_loop[29].full_adder|Cout~0_combout\ = (\adder_loop[28].full_adder|Cout~0_combout\ & ((\A[29]~input_o\) # (\B[29]~input_o\))) # (!\adder_loop[28].full_adder|Cout~0_combout\ & (\A[29]~input_o\ & \B[29]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \adder_loop[28].full_adder|Cout~0_combout\,
	datab => \A[29]~input_o\,
	datad => \B[29]~input_o\,
	combout => \adder_loop[29].full_adder|Cout~0_combout\);

-- Location: LCCOMB_X22_Y40_N16
\adder_loop[30].full_adder|S\ : cycloneiv_lcell_comb
-- Equation(s):
-- \adder_loop[30].full_adder|S~combout\ = \A[30]~input_o\ $ (\B[30]~input_o\ $ (\adder_loop[29].full_adder|Cout~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100101100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[30]~input_o\,
	datab => \B[30]~input_o\,
	datad => \adder_loop[29].full_adder|Cout~0_combout\,
	combout => \adder_loop[30].full_adder|S~combout\);

-- Location: IOIBUF_X16_Y41_N8
\B[31]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(31),
	o => \B[31]~input_o\);

-- Location: IOIBUF_X23_Y41_N1
\A[31]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(31),
	o => \A[31]~input_o\);

-- Location: LCCOMB_X22_Y40_N2
\adder_loop[31].full_adder|S~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \adder_loop[31].full_adder|S~0_combout\ = \B[31]~input_o\ $ (\A[31]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \B[31]~input_o\,
	datad => \A[31]~input_o\,
	combout => \adder_loop[31].full_adder|S~0_combout\);

-- Location: LCCOMB_X22_Y40_N12
\adder_loop[31].full_adder|S\ : cycloneiv_lcell_comb
-- Equation(s):
-- \adder_loop[31].full_adder|S~combout\ = \adder_loop[31].full_adder|S~0_combout\ $ (((\adder_loop[29].full_adder|Cout~0_combout\ & ((\B[30]~input_o\) # (\A[30]~input_o\))) # (!\adder_loop[29].full_adder|Cout~0_combout\ & (\B[30]~input_o\ & 
-- \A[30]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111001111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \adder_loop[29].full_adder|Cout~0_combout\,
	datab => \B[30]~input_o\,
	datac => \adder_loop[31].full_adder|S~0_combout\,
	datad => \A[30]~input_o\,
	combout => \adder_loop[31].full_adder|S~combout\);

ww_Sum(0) <= \Sum[0]~output_o\;

ww_Sum(1) <= \Sum[1]~output_o\;

ww_Sum(2) <= \Sum[2]~output_o\;

ww_Sum(3) <= \Sum[3]~output_o\;

ww_Sum(4) <= \Sum[4]~output_o\;

ww_Sum(5) <= \Sum[5]~output_o\;

ww_Sum(6) <= \Sum[6]~output_o\;

ww_Sum(7) <= \Sum[7]~output_o\;

ww_Sum(8) <= \Sum[8]~output_o\;

ww_Sum(9) <= \Sum[9]~output_o\;

ww_Sum(10) <= \Sum[10]~output_o\;

ww_Sum(11) <= \Sum[11]~output_o\;

ww_Sum(12) <= \Sum[12]~output_o\;

ww_Sum(13) <= \Sum[13]~output_o\;

ww_Sum(14) <= \Sum[14]~output_o\;

ww_Sum(15) <= \Sum[15]~output_o\;

ww_Sum(16) <= \Sum[16]~output_o\;

ww_Sum(17) <= \Sum[17]~output_o\;

ww_Sum(18) <= \Sum[18]~output_o\;

ww_Sum(19) <= \Sum[19]~output_o\;

ww_Sum(20) <= \Sum[20]~output_o\;

ww_Sum(21) <= \Sum[21]~output_o\;

ww_Sum(22) <= \Sum[22]~output_o\;

ww_Sum(23) <= \Sum[23]~output_o\;

ww_Sum(24) <= \Sum[24]~output_o\;

ww_Sum(25) <= \Sum[25]~output_o\;

ww_Sum(26) <= \Sum[26]~output_o\;

ww_Sum(27) <= \Sum[27]~output_o\;

ww_Sum(28) <= \Sum[28]~output_o\;

ww_Sum(29) <= \Sum[29]~output_o\;

ww_Sum(30) <= \Sum[30]~output_o\;

ww_Sum(31) <= \Sum[31]~output_o\;
END structure;


