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

-- DATE "05/30/2024 00:22:40"

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

ENTITY 	BranchComp IS
    PORT (
	DataA : IN std_logic_vector(31 DOWNTO 0);
	DataB : IN std_logic_vector(31 DOWNTO 0);
	BrUn : BUFFER std_logic;
	BrLT : BUFFER std_logic;
	BrEq : BUFFER std_logic
	);
END BranchComp;

-- Design Ports Information
-- BrUn	=>  Location: PIN_C6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- BrLT	=>  Location: PIN_R13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- BrEq	=>  Location: PIN_N6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DataB[31]	=>  Location: PIN_V11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DataA[31]	=>  Location: PIN_V12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DataA[30]	=>  Location: PIN_U13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DataA[29]	=>  Location: PIN_M7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DataA[28]	=>  Location: PIN_U10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DataA[27]	=>  Location: PIN_A8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DataA[26]	=>  Location: PIN_A6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DataA[25]	=>  Location: PIN_R9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DataA[24]	=>  Location: PIN_B9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DataA[23]	=>  Location: PIN_B10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DataA[22]	=>  Location: PIN_P6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DataA[21]	=>  Location: PIN_N7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DataA[20]	=>  Location: PIN_U9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DataA[19]	=>  Location: PIN_T11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DataA[18]	=>  Location: PIN_V13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DataA[17]	=>  Location: PIN_U6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DataA[16]	=>  Location: PIN_L16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DataA[15]	=>  Location: PIN_V14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DataA[14]	=>  Location: PIN_T13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DataA[13]	=>  Location: PIN_R17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DataA[12]	=>  Location: PIN_D7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DataA[11]	=>  Location: PIN_U12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DataA[10]	=>  Location: PIN_C9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DataA[9]	=>  Location: PIN_U7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DataA[8]	=>  Location: PIN_R11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DataA[7]	=>  Location: PIN_A11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DataA[6]	=>  Location: PIN_P12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DataA[5]	=>  Location: PIN_B6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DataA[4]	=>  Location: PIN_K16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DataA[3]	=>  Location: PIN_R7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DataA[2]	=>  Location: PIN_D6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DataA[1]	=>  Location: PIN_K15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DataA[0]	=>  Location: PIN_B7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DataB[30]	=>  Location: PIN_M18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DataB[29]	=>  Location: PIN_A9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DataB[28]	=>  Location: PIN_D8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DataB[27]	=>  Location: PIN_V9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DataB[26]	=>  Location: PIN_T10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DataB[25]	=>  Location: PIN_V15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DataB[24]	=>  Location: PIN_D9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DataB[23]	=>  Location: PIN_V10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DataB[22]	=>  Location: PIN_P10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DataB[21]	=>  Location: PIN_T7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DataB[20]	=>  Location: PIN_T12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DataB[19]	=>  Location: PIN_V5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DataB[18]	=>  Location: PIN_V6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DataB[17]	=>  Location: PIN_R8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DataB[16]	=>  Location: PIN_R10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DataB[15]	=>  Location: PIN_V8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DataB[14]	=>  Location: PIN_T9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DataB[13]	=>  Location: PIN_T6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DataB[12]	=>  Location: PIN_C8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DataB[11]	=>  Location: PIN_A7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DataB[10]	=>  Location: PIN_D12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DataB[9]	=>  Location: PIN_T8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DataB[8]	=>  Location: PIN_T14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DataB[7]	=>  Location: PIN_V7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DataB[6]	=>  Location: PIN_B5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DataB[5]	=>  Location: PIN_R12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DataB[4]	=>  Location: PIN_A10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DataB[3]	=>  Location: PIN_N18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DataB[2]	=>  Location: PIN_C11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DataB[1]	=>  Location: PIN_T15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DataB[0]	=>  Location: PIN_C7,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF BranchComp IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_DataA : std_logic_vector(31 DOWNTO 0);
SIGNAL ww_DataB : std_logic_vector(31 DOWNTO 0);
SIGNAL ww_BrUn : std_logic;
SIGNAL ww_BrLT : std_logic;
SIGNAL ww_BrEq : std_logic;
SIGNAL \BrUn~output_o\ : std_logic;
SIGNAL \BrLT~output_o\ : std_logic;
SIGNAL \BrEq~output_o\ : std_logic;
SIGNAL \DataA[31]~input_o\ : std_logic;
SIGNAL \DataB[31]~input_o\ : std_logic;
SIGNAL \DataB[30]~input_o\ : std_logic;
SIGNAL \DataA[30]~input_o\ : std_logic;
SIGNAL \DataA[29]~input_o\ : std_logic;
SIGNAL \DataB[29]~input_o\ : std_logic;
SIGNAL \DataB[28]~input_o\ : std_logic;
SIGNAL \DataA[28]~input_o\ : std_logic;
SIGNAL \DataA[27]~input_o\ : std_logic;
SIGNAL \DataB[27]~input_o\ : std_logic;
SIGNAL \DataB[26]~input_o\ : std_logic;
SIGNAL \DataA[26]~input_o\ : std_logic;
SIGNAL \DataB[25]~input_o\ : std_logic;
SIGNAL \DataA[25]~input_o\ : std_logic;
SIGNAL \DataA[24]~input_o\ : std_logic;
SIGNAL \DataB[24]~input_o\ : std_logic;
SIGNAL \DataA[23]~input_o\ : std_logic;
SIGNAL \DataB[23]~input_o\ : std_logic;
SIGNAL \DataA[22]~input_o\ : std_logic;
SIGNAL \DataB[22]~input_o\ : std_logic;
SIGNAL \DataA[21]~input_o\ : std_logic;
SIGNAL \DataB[21]~input_o\ : std_logic;
SIGNAL \DataB[20]~input_o\ : std_logic;
SIGNAL \DataA[20]~input_o\ : std_logic;
SIGNAL \DataB[19]~input_o\ : std_logic;
SIGNAL \DataA[19]~input_o\ : std_logic;
SIGNAL \DataA[18]~input_o\ : std_logic;
SIGNAL \DataB[18]~input_o\ : std_logic;
SIGNAL \DataA[17]~input_o\ : std_logic;
SIGNAL \DataB[17]~input_o\ : std_logic;
SIGNAL \DataB[16]~input_o\ : std_logic;
SIGNAL \DataA[16]~input_o\ : std_logic;
SIGNAL \DataB[15]~input_o\ : std_logic;
SIGNAL \DataA[15]~input_o\ : std_logic;
SIGNAL \DataA[14]~input_o\ : std_logic;
SIGNAL \DataB[14]~input_o\ : std_logic;
SIGNAL \DataA[13]~input_o\ : std_logic;
SIGNAL \DataB[13]~input_o\ : std_logic;
SIGNAL \DataA[12]~input_o\ : std_logic;
SIGNAL \DataB[12]~input_o\ : std_logic;
SIGNAL \DataB[11]~input_o\ : std_logic;
SIGNAL \DataA[11]~input_o\ : std_logic;
SIGNAL \DataA[10]~input_o\ : std_logic;
SIGNAL \DataB[10]~input_o\ : std_logic;
SIGNAL \DataB[9]~input_o\ : std_logic;
SIGNAL \DataA[9]~input_o\ : std_logic;
SIGNAL \DataA[8]~input_o\ : std_logic;
SIGNAL \DataB[8]~input_o\ : std_logic;
SIGNAL \DataA[7]~input_o\ : std_logic;
SIGNAL \DataB[7]~input_o\ : std_logic;
SIGNAL \DataB[6]~input_o\ : std_logic;
SIGNAL \DataA[6]~input_o\ : std_logic;
SIGNAL \DataA[5]~input_o\ : std_logic;
SIGNAL \DataB[5]~input_o\ : std_logic;
SIGNAL \DataB[4]~input_o\ : std_logic;
SIGNAL \DataA[4]~input_o\ : std_logic;
SIGNAL \DataB[3]~input_o\ : std_logic;
SIGNAL \DataA[3]~input_o\ : std_logic;
SIGNAL \DataA[2]~input_o\ : std_logic;
SIGNAL \DataB[2]~input_o\ : std_logic;
SIGNAL \DataB[1]~input_o\ : std_logic;
SIGNAL \DataA[1]~input_o\ : std_logic;
SIGNAL \DataB[0]~input_o\ : std_logic;
SIGNAL \DataA[0]~input_o\ : std_logic;
SIGNAL \comp|LessThan1~1_cout\ : std_logic;
SIGNAL \comp|LessThan1~3_cout\ : std_logic;
SIGNAL \comp|LessThan1~5_cout\ : std_logic;
SIGNAL \comp|LessThan1~7_cout\ : std_logic;
SIGNAL \comp|LessThan1~9_cout\ : std_logic;
SIGNAL \comp|LessThan1~11_cout\ : std_logic;
SIGNAL \comp|LessThan1~13_cout\ : std_logic;
SIGNAL \comp|LessThan1~15_cout\ : std_logic;
SIGNAL \comp|LessThan1~17_cout\ : std_logic;
SIGNAL \comp|LessThan1~19_cout\ : std_logic;
SIGNAL \comp|LessThan1~21_cout\ : std_logic;
SIGNAL \comp|LessThan1~23_cout\ : std_logic;
SIGNAL \comp|LessThan1~25_cout\ : std_logic;
SIGNAL \comp|LessThan1~27_cout\ : std_logic;
SIGNAL \comp|LessThan1~29_cout\ : std_logic;
SIGNAL \comp|LessThan1~31_cout\ : std_logic;
SIGNAL \comp|LessThan1~33_cout\ : std_logic;
SIGNAL \comp|LessThan1~35_cout\ : std_logic;
SIGNAL \comp|LessThan1~37_cout\ : std_logic;
SIGNAL \comp|LessThan1~39_cout\ : std_logic;
SIGNAL \comp|LessThan1~41_cout\ : std_logic;
SIGNAL \comp|LessThan1~43_cout\ : std_logic;
SIGNAL \comp|LessThan1~45_cout\ : std_logic;
SIGNAL \comp|LessThan1~47_cout\ : std_logic;
SIGNAL \comp|LessThan1~49_cout\ : std_logic;
SIGNAL \comp|LessThan1~51_cout\ : std_logic;
SIGNAL \comp|LessThan1~53_cout\ : std_logic;
SIGNAL \comp|LessThan1~55_cout\ : std_logic;
SIGNAL \comp|LessThan1~57_cout\ : std_logic;
SIGNAL \comp|LessThan1~59_cout\ : std_logic;
SIGNAL \comp|LessThan1~61_cout\ : std_logic;
SIGNAL \comp|LessThan1~62_combout\ : std_logic;
SIGNAL \comp|comp2|A1[0]~1_cout\ : std_logic;
SIGNAL \comp|comp2|A1[1]~3\ : std_logic;
SIGNAL \comp|comp2|A1[2]~5\ : std_logic;
SIGNAL \comp|comp2|A1[3]~7\ : std_logic;
SIGNAL \comp|comp2|A1[4]~9\ : std_logic;
SIGNAL \comp|comp2|A1[5]~11\ : std_logic;
SIGNAL \comp|comp2|A1[6]~13\ : std_logic;
SIGNAL \comp|comp2|A1[7]~15\ : std_logic;
SIGNAL \comp|comp2|A1[8]~17\ : std_logic;
SIGNAL \comp|comp2|A1[9]~19\ : std_logic;
SIGNAL \comp|comp2|A1[10]~21\ : std_logic;
SIGNAL \comp|comp2|A1[11]~23\ : std_logic;
SIGNAL \comp|comp2|A1[12]~25\ : std_logic;
SIGNAL \comp|comp2|A1[13]~27\ : std_logic;
SIGNAL \comp|comp2|A1[14]~29\ : std_logic;
SIGNAL \comp|comp2|A1[15]~31\ : std_logic;
SIGNAL \comp|comp2|A1[16]~33\ : std_logic;
SIGNAL \comp|comp2|A1[17]~35\ : std_logic;
SIGNAL \comp|comp2|A1[18]~37\ : std_logic;
SIGNAL \comp|comp2|A1[19]~39\ : std_logic;
SIGNAL \comp|comp2|A1[20]~41\ : std_logic;
SIGNAL \comp|comp2|A1[21]~43\ : std_logic;
SIGNAL \comp|comp2|A1[22]~45\ : std_logic;
SIGNAL \comp|comp2|A1[23]~47\ : std_logic;
SIGNAL \comp|comp2|A1[24]~49\ : std_logic;
SIGNAL \comp|comp2|A1[25]~51\ : std_logic;
SIGNAL \comp|comp2|A1[26]~53\ : std_logic;
SIGNAL \comp|comp2|A1[27]~55\ : std_logic;
SIGNAL \comp|comp2|A1[28]~57\ : std_logic;
SIGNAL \comp|comp2|A1[29]~59\ : std_logic;
SIGNAL \comp|comp2|A1[30]~61\ : std_logic;
SIGNAL \comp|comp2|A1[31]~62_combout\ : std_logic;
SIGNAL \comp|comp2|B1[0]~1_cout\ : std_logic;
SIGNAL \comp|comp2|B1[1]~3\ : std_logic;
SIGNAL \comp|comp2|B1[2]~5\ : std_logic;
SIGNAL \comp|comp2|B1[3]~7\ : std_logic;
SIGNAL \comp|comp2|B1[4]~9\ : std_logic;
SIGNAL \comp|comp2|B1[5]~11\ : std_logic;
SIGNAL \comp|comp2|B1[6]~13\ : std_logic;
SIGNAL \comp|comp2|B1[7]~15\ : std_logic;
SIGNAL \comp|comp2|B1[8]~17\ : std_logic;
SIGNAL \comp|comp2|B1[9]~19\ : std_logic;
SIGNAL \comp|comp2|B1[10]~21\ : std_logic;
SIGNAL \comp|comp2|B1[11]~23\ : std_logic;
SIGNAL \comp|comp2|B1[12]~25\ : std_logic;
SIGNAL \comp|comp2|B1[13]~27\ : std_logic;
SIGNAL \comp|comp2|B1[14]~29\ : std_logic;
SIGNAL \comp|comp2|B1[15]~31\ : std_logic;
SIGNAL \comp|comp2|B1[16]~33\ : std_logic;
SIGNAL \comp|comp2|B1[17]~35\ : std_logic;
SIGNAL \comp|comp2|B1[18]~37\ : std_logic;
SIGNAL \comp|comp2|B1[19]~39\ : std_logic;
SIGNAL \comp|comp2|B1[20]~41\ : std_logic;
SIGNAL \comp|comp2|B1[21]~43\ : std_logic;
SIGNAL \comp|comp2|B1[22]~45\ : std_logic;
SIGNAL \comp|comp2|B1[23]~47\ : std_logic;
SIGNAL \comp|comp2|B1[24]~49\ : std_logic;
SIGNAL \comp|comp2|B1[25]~51\ : std_logic;
SIGNAL \comp|comp2|B1[26]~53\ : std_logic;
SIGNAL \comp|comp2|B1[27]~55\ : std_logic;
SIGNAL \comp|comp2|B1[28]~57\ : std_logic;
SIGNAL \comp|comp2|B1[29]~59\ : std_logic;
SIGNAL \comp|comp2|B1[30]~61\ : std_logic;
SIGNAL \comp|comp2|B1[31]~62_combout\ : std_logic;
SIGNAL \comp|comp2|B1[30]~60_combout\ : std_logic;
SIGNAL \comp|comp2|A1[30]~60_combout\ : std_logic;
SIGNAL \comp|comp2|B1[29]~58_combout\ : std_logic;
SIGNAL \comp|comp2|A1[29]~58_combout\ : std_logic;
SIGNAL \comp|comp2|A1[28]~56_combout\ : std_logic;
SIGNAL \comp|comp2|B1[28]~56_combout\ : std_logic;
SIGNAL \comp|comp2|A1[27]~54_combout\ : std_logic;
SIGNAL \comp|comp2|B1[27]~54_combout\ : std_logic;
SIGNAL \comp|comp2|B1[26]~52_combout\ : std_logic;
SIGNAL \comp|comp2|A1[26]~52_combout\ : std_logic;
SIGNAL \comp|comp2|B1[25]~50_combout\ : std_logic;
SIGNAL \comp|comp2|A1[25]~50_combout\ : std_logic;
SIGNAL \comp|comp2|A1[24]~48_combout\ : std_logic;
SIGNAL \comp|comp2|B1[24]~48_combout\ : std_logic;
SIGNAL \comp|comp2|A1[23]~46_combout\ : std_logic;
SIGNAL \comp|comp2|B1[23]~46_combout\ : std_logic;
SIGNAL \comp|comp2|B1[22]~44_combout\ : std_logic;
SIGNAL \comp|comp2|A1[22]~44_combout\ : std_logic;
SIGNAL \comp|comp2|A1[21]~42_combout\ : std_logic;
SIGNAL \comp|comp2|B1[21]~42_combout\ : std_logic;
SIGNAL \comp|comp2|B1[20]~40_combout\ : std_logic;
SIGNAL \comp|comp2|A1[20]~40_combout\ : std_logic;
SIGNAL \comp|comp2|B1[19]~38_combout\ : std_logic;
SIGNAL \comp|comp2|A1[19]~38_combout\ : std_logic;
SIGNAL \comp|comp2|A1[18]~36_combout\ : std_logic;
SIGNAL \comp|comp2|B1[18]~36_combout\ : std_logic;
SIGNAL \comp|comp2|A1[17]~34_combout\ : std_logic;
SIGNAL \comp|comp2|B1[17]~34_combout\ : std_logic;
SIGNAL \comp|comp2|A1[16]~32_combout\ : std_logic;
SIGNAL \comp|comp2|B1[16]~32_combout\ : std_logic;
SIGNAL \comp|comp2|B1[15]~30_combout\ : std_logic;
SIGNAL \comp|comp2|A1[15]~30_combout\ : std_logic;
SIGNAL \comp|comp2|B1[14]~28_combout\ : std_logic;
SIGNAL \comp|comp2|A1[14]~28_combout\ : std_logic;
SIGNAL \comp|comp2|A1[13]~26_combout\ : std_logic;
SIGNAL \comp|comp2|B1[13]~26_combout\ : std_logic;
SIGNAL \comp|comp2|B1[12]~24_combout\ : std_logic;
SIGNAL \comp|comp2|A1[12]~24_combout\ : std_logic;
SIGNAL \comp|comp2|A1[11]~22_combout\ : std_logic;
SIGNAL \comp|comp2|B1[11]~22_combout\ : std_logic;
SIGNAL \comp|comp2|A1[10]~20_combout\ : std_logic;
SIGNAL \comp|comp2|B1[10]~20_combout\ : std_logic;
SIGNAL \comp|comp2|B1[9]~18_combout\ : std_logic;
SIGNAL \comp|comp2|A1[9]~18_combout\ : std_logic;
SIGNAL \comp|comp2|A1[8]~16_combout\ : std_logic;
SIGNAL \comp|comp2|B1[8]~16_combout\ : std_logic;
SIGNAL \comp|comp2|A1[7]~14_combout\ : std_logic;
SIGNAL \comp|comp2|B1[7]~14_combout\ : std_logic;
SIGNAL \comp|comp2|B1[6]~12_combout\ : std_logic;
SIGNAL \comp|comp2|A1[6]~12_combout\ : std_logic;
SIGNAL \comp|comp2|A1[5]~10_combout\ : std_logic;
SIGNAL \comp|comp2|B1[5]~10_combout\ : std_logic;
SIGNAL \comp|comp2|A1[4]~8_combout\ : std_logic;
SIGNAL \comp|comp2|B1[4]~8_combout\ : std_logic;
SIGNAL \comp|comp2|B1[3]~6_combout\ : std_logic;
SIGNAL \comp|comp2|A1[3]~6_combout\ : std_logic;
SIGNAL \comp|comp2|A1[2]~4_combout\ : std_logic;
SIGNAL \comp|comp2|B1[2]~4_combout\ : std_logic;
SIGNAL \comp|comp2|B1[1]~2_combout\ : std_logic;
SIGNAL \comp|comp2|A1[1]~2_combout\ : std_logic;
SIGNAL \comp|LessThan3~1_cout\ : std_logic;
SIGNAL \comp|LessThan3~3_cout\ : std_logic;
SIGNAL \comp|LessThan3~5_cout\ : std_logic;
SIGNAL \comp|LessThan3~7_cout\ : std_logic;
SIGNAL \comp|LessThan3~9_cout\ : std_logic;
SIGNAL \comp|LessThan3~11_cout\ : std_logic;
SIGNAL \comp|LessThan3~13_cout\ : std_logic;
SIGNAL \comp|LessThan3~15_cout\ : std_logic;
SIGNAL \comp|LessThan3~17_cout\ : std_logic;
SIGNAL \comp|LessThan3~19_cout\ : std_logic;
SIGNAL \comp|LessThan3~21_cout\ : std_logic;
SIGNAL \comp|LessThan3~23_cout\ : std_logic;
SIGNAL \comp|LessThan3~25_cout\ : std_logic;
SIGNAL \comp|LessThan3~27_cout\ : std_logic;
SIGNAL \comp|LessThan3~29_cout\ : std_logic;
SIGNAL \comp|LessThan3~31_cout\ : std_logic;
SIGNAL \comp|LessThan3~33_cout\ : std_logic;
SIGNAL \comp|LessThan3~35_cout\ : std_logic;
SIGNAL \comp|LessThan3~37_cout\ : std_logic;
SIGNAL \comp|LessThan3~39_cout\ : std_logic;
SIGNAL \comp|LessThan3~41_cout\ : std_logic;
SIGNAL \comp|LessThan3~43_cout\ : std_logic;
SIGNAL \comp|LessThan3~45_cout\ : std_logic;
SIGNAL \comp|LessThan3~47_cout\ : std_logic;
SIGNAL \comp|LessThan3~49_cout\ : std_logic;
SIGNAL \comp|LessThan3~51_cout\ : std_logic;
SIGNAL \comp|LessThan3~53_cout\ : std_logic;
SIGNAL \comp|LessThan3~55_cout\ : std_logic;
SIGNAL \comp|LessThan3~57_cout\ : std_logic;
SIGNAL \comp|LessThan3~59_cout\ : std_logic;
SIGNAL \comp|LessThan3~61_cout\ : std_logic;
SIGNAL \comp|LessThan3~62_combout\ : std_logic;
SIGNAL \comp|Mux2~0_combout\ : std_logic;
SIGNAL \comp|LessThan2~1_cout\ : std_logic;
SIGNAL \comp|LessThan2~3_cout\ : std_logic;
SIGNAL \comp|LessThan2~5_cout\ : std_logic;
SIGNAL \comp|LessThan2~7_cout\ : std_logic;
SIGNAL \comp|LessThan2~9_cout\ : std_logic;
SIGNAL \comp|LessThan2~11_cout\ : std_logic;
SIGNAL \comp|LessThan2~13_cout\ : std_logic;
SIGNAL \comp|LessThan2~15_cout\ : std_logic;
SIGNAL \comp|LessThan2~17_cout\ : std_logic;
SIGNAL \comp|LessThan2~19_cout\ : std_logic;
SIGNAL \comp|LessThan2~21_cout\ : std_logic;
SIGNAL \comp|LessThan2~23_cout\ : std_logic;
SIGNAL \comp|LessThan2~25_cout\ : std_logic;
SIGNAL \comp|LessThan2~27_cout\ : std_logic;
SIGNAL \comp|LessThan2~29_cout\ : std_logic;
SIGNAL \comp|LessThan2~31_cout\ : std_logic;
SIGNAL \comp|LessThan2~33_cout\ : std_logic;
SIGNAL \comp|LessThan2~35_cout\ : std_logic;
SIGNAL \comp|LessThan2~37_cout\ : std_logic;
SIGNAL \comp|LessThan2~39_cout\ : std_logic;
SIGNAL \comp|LessThan2~41_cout\ : std_logic;
SIGNAL \comp|LessThan2~43_cout\ : std_logic;
SIGNAL \comp|LessThan2~45_cout\ : std_logic;
SIGNAL \comp|LessThan2~47_cout\ : std_logic;
SIGNAL \comp|LessThan2~49_cout\ : std_logic;
SIGNAL \comp|LessThan2~51_cout\ : std_logic;
SIGNAL \comp|LessThan2~53_cout\ : std_logic;
SIGNAL \comp|LessThan2~55_cout\ : std_logic;
SIGNAL \comp|LessThan2~57_cout\ : std_logic;
SIGNAL \comp|LessThan2~59_cout\ : std_logic;
SIGNAL \comp|LessThan2~61_cout\ : std_logic;
SIGNAL \comp|LessThan2~62_combout\ : std_logic;
SIGNAL \comp|LessThan0~1_cout\ : std_logic;
SIGNAL \comp|LessThan0~3_cout\ : std_logic;
SIGNAL \comp|LessThan0~5_cout\ : std_logic;
SIGNAL \comp|LessThan0~7_cout\ : std_logic;
SIGNAL \comp|LessThan0~9_cout\ : std_logic;
SIGNAL \comp|LessThan0~11_cout\ : std_logic;
SIGNAL \comp|LessThan0~13_cout\ : std_logic;
SIGNAL \comp|LessThan0~15_cout\ : std_logic;
SIGNAL \comp|LessThan0~17_cout\ : std_logic;
SIGNAL \comp|LessThan0~19_cout\ : std_logic;
SIGNAL \comp|LessThan0~21_cout\ : std_logic;
SIGNAL \comp|LessThan0~23_cout\ : std_logic;
SIGNAL \comp|LessThan0~25_cout\ : std_logic;
SIGNAL \comp|LessThan0~27_cout\ : std_logic;
SIGNAL \comp|LessThan0~29_cout\ : std_logic;
SIGNAL \comp|LessThan0~31_cout\ : std_logic;
SIGNAL \comp|LessThan0~33_cout\ : std_logic;
SIGNAL \comp|LessThan0~35_cout\ : std_logic;
SIGNAL \comp|LessThan0~37_cout\ : std_logic;
SIGNAL \comp|LessThan0~39_cout\ : std_logic;
SIGNAL \comp|LessThan0~41_cout\ : std_logic;
SIGNAL \comp|LessThan0~43_cout\ : std_logic;
SIGNAL \comp|LessThan0~45_cout\ : std_logic;
SIGNAL \comp|LessThan0~47_cout\ : std_logic;
SIGNAL \comp|LessThan0~49_cout\ : std_logic;
SIGNAL \comp|LessThan0~51_cout\ : std_logic;
SIGNAL \comp|LessThan0~53_cout\ : std_logic;
SIGNAL \comp|LessThan0~55_cout\ : std_logic;
SIGNAL \comp|LessThan0~57_cout\ : std_logic;
SIGNAL \comp|LessThan0~59_cout\ : std_logic;
SIGNAL \comp|LessThan0~61_cout\ : std_logic;
SIGNAL \comp|LessThan0~62_combout\ : std_logic;
SIGNAL \comp|Mux0~0_combout\ : std_logic;
SIGNAL \comp|Mux1~34_combout\ : std_logic;
SIGNAL \comp|Mux1~31_combout\ : std_logic;
SIGNAL \comp|Mux1~32_combout\ : std_logic;
SIGNAL \comp|Mux1~33_combout\ : std_logic;
SIGNAL \comp|Mux1~35_combout\ : std_logic;
SIGNAL \comp|Mux1~22_combout\ : std_logic;
SIGNAL \comp|Mux1~23_combout\ : std_logic;
SIGNAL \comp|Mux1~1_combout\ : std_logic;
SIGNAL \comp|Mux1~24_combout\ : std_logic;
SIGNAL \comp|Mux1~25_combout\ : std_logic;
SIGNAL \comp|Mux1~29_combout\ : std_logic;
SIGNAL \comp|Mux1~26_combout\ : std_logic;
SIGNAL \comp|Mux1~27_combout\ : std_logic;
SIGNAL \comp|Mux1~28_combout\ : std_logic;
SIGNAL \comp|Mux1~30_combout\ : std_logic;
SIGNAL \comp|Mux1~38_combout\ : std_logic;
SIGNAL \comp|Mux1~37_combout\ : std_logic;
SIGNAL \comp|Mux1~39_combout\ : std_logic;
SIGNAL \comp|Mux1~36_combout\ : std_logic;
SIGNAL \comp|Mux1~40_combout\ : std_logic;
SIGNAL \comp|Mux1~41_combout\ : std_logic;
SIGNAL \comp|Mux1~0_combout\ : std_logic;
SIGNAL \comp|Mux1~18_combout\ : std_logic;
SIGNAL \comp|Mux1~17_combout\ : std_logic;
SIGNAL \comp|Mux1~19_combout\ : std_logic;
SIGNAL \comp|Mux1~16_combout\ : std_logic;
SIGNAL \comp|Mux1~20_combout\ : std_logic;
SIGNAL \comp|Mux1~4_combout\ : std_logic;
SIGNAL \comp|Mux1~2_combout\ : std_logic;
SIGNAL \comp|Mux1~3_combout\ : std_logic;
SIGNAL \comp|Mux1~5_combout\ : std_logic;
SIGNAL \comp|Mux1~14_combout\ : std_logic;
SIGNAL \comp|Mux1~11_combout\ : std_logic;
SIGNAL \comp|Mux1~13_combout\ : std_logic;
SIGNAL \comp|Mux1~12_combout\ : std_logic;
SIGNAL \comp|Mux1~15_combout\ : std_logic;
SIGNAL \comp|Mux1~8_combout\ : std_logic;
SIGNAL \comp|Mux1~7_combout\ : std_logic;
SIGNAL \comp|Mux1~9_combout\ : std_logic;
SIGNAL \comp|Mux1~6_combout\ : std_logic;
SIGNAL \comp|Mux1~10_combout\ : std_logic;
SIGNAL \comp|Mux1~21_combout\ : std_logic;
SIGNAL \comp|Mux1~42_combout\ : std_logic;

BEGIN

ww_DataA <= DataA;
ww_DataB <= DataB;
BrUn <= ww_BrUn;
BrLT <= ww_BrLT;
BrEq <= ww_BrEq;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

-- Location: IOOBUF_X7_Y41_N16
\BrUn~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \comp|Mux2~0_combout\,
	devoe => ww_devoe,
	o => \BrUn~output_o\);

-- Location: IOOBUF_X36_Y0_N2
\BrLT~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \comp|Mux0~0_combout\,
	devoe => ww_devoe,
	o => \BrLT~output_o\);

-- Location: IOOBUF_X1_Y0_N2
\BrEq~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \comp|Mux1~42_combout\,
	devoe => ww_devoe,
	o => \BrEq~output_o\);

-- Location: IOIBUF_X27_Y0_N1
\DataA[31]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DataA(31),
	o => \DataA[31]~input_o\);

-- Location: IOIBUF_X27_Y0_N8
\DataB[31]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DataB(31),
	o => \DataB[31]~input_o\);

-- Location: IOIBUF_X52_Y19_N1
\DataB[30]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DataB(30),
	o => \DataB[30]~input_o\);

-- Location: IOIBUF_X29_Y0_N8
\DataA[30]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DataA(30),
	o => \DataA[30]~input_o\);

-- Location: IOIBUF_X10_Y0_N8
\DataA[29]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DataA(29),
	o => \DataA[29]~input_o\);

-- Location: IOIBUF_X16_Y41_N8
\DataB[29]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DataB(29),
	o => \DataB[29]~input_o\);

-- Location: IOIBUF_X14_Y41_N1
\DataB[28]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DataB(28),
	o => \DataB[28]~input_o\);

-- Location: IOIBUF_X23_Y0_N1
\DataA[28]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DataA(28),
	o => \DataA[28]~input_o\);

-- Location: IOIBUF_X16_Y41_N1
\DataA[27]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DataA(27),
	o => \DataA[27]~input_o\);

-- Location: IOIBUF_X21_Y0_N8
\DataB[27]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DataB(27),
	o => \DataB[27]~input_o\);

-- Location: IOIBUF_X23_Y0_N8
\DataB[26]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DataB(26),
	o => \DataB[26]~input_o\);

-- Location: IOIBUF_X7_Y41_N1
\DataA[26]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DataA(26),
	o => \DataA[26]~input_o\);

-- Location: IOIBUF_X34_Y0_N1
\DataB[25]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DataB(25),
	o => \DataB[25]~input_o\);

-- Location: IOIBUF_X18_Y0_N8
\DataA[25]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DataA(25),
	o => \DataA[25]~input_o\);

-- Location: IOIBUF_X21_Y41_N1
\DataA[24]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DataA(24),
	o => \DataA[24]~input_o\);

-- Location: IOIBUF_X18_Y41_N8
\DataB[24]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DataB(24),
	o => \DataB[24]~input_o\);

-- Location: IOIBUF_X21_Y41_N8
\DataA[23]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DataA(23),
	o => \DataA[23]~input_o\);

-- Location: IOIBUF_X21_Y0_N1
\DataB[23]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DataB(23),
	o => \DataB[23]~input_o\);

-- Location: IOIBUF_X3_Y0_N8
\DataA[22]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DataA(22),
	o => \DataA[22]~input_o\);

-- Location: IOIBUF_X25_Y0_N8
\DataB[22]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DataB(22),
	o => \DataB[22]~input_o\);

-- Location: IOIBUF_X10_Y0_N1
\DataA[21]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DataA(21),
	o => \DataA[21]~input_o\);

-- Location: IOIBUF_X7_Y0_N1
\DataB[21]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DataB(21),
	o => \DataB[21]~input_o\);

-- Location: IOIBUF_X31_Y0_N8
\DataB[20]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DataB(20),
	o => \DataB[20]~input_o\);

-- Location: IOIBUF_X16_Y0_N8
\DataA[20]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DataA(20),
	o => \DataA[20]~input_o\);

-- Location: IOIBUF_X7_Y0_N22
\DataB[19]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DataB(19),
	o => \DataB[19]~input_o\);

-- Location: IOIBUF_X31_Y0_N15
\DataA[19]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DataA(19),
	o => \DataA[19]~input_o\);

-- Location: IOIBUF_X29_Y0_N1
\DataA[18]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DataA(18),
	o => \DataA[18]~input_o\);

-- Location: IOIBUF_X7_Y0_N15
\DataB[18]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DataB(18),
	o => \DataB[18]~input_o\);

-- Location: IOIBUF_X5_Y0_N1
\DataA[17]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DataA(17),
	o => \DataA[17]~input_o\);

-- Location: IOIBUF_X14_Y0_N1
\DataB[17]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DataB(17),
	o => \DataB[17]~input_o\);

-- Location: IOIBUF_X25_Y0_N1
\DataB[16]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DataB(16),
	o => \DataB[16]~input_o\);

-- Location: IOIBUF_X52_Y13_N8
\DataA[16]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DataA(16),
	o => \DataA[16]~input_o\);

-- Location: IOIBUF_X16_Y0_N1
\DataB[15]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DataB(15),
	o => \DataB[15]~input_o\);

-- Location: IOIBUF_X34_Y0_N8
\DataA[15]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DataA(15),
	o => \DataA[15]~input_o\);

-- Location: IOIBUF_X41_Y0_N22
\DataA[14]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DataA(14),
	o => \DataA[14]~input_o\);

-- Location: IOIBUF_X18_Y0_N1
\DataB[14]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DataB(14),
	o => \DataB[14]~input_o\);

-- Location: IOIBUF_X52_Y11_N1
\DataA[13]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DataA(13),
	o => \DataA[13]~input_o\);

-- Location: IOIBUF_X5_Y0_N8
\DataB[13]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DataB(13),
	o => \DataB[13]~input_o\);

-- Location: IOIBUF_X10_Y41_N8
\DataA[12]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DataA(12),
	o => \DataA[12]~input_o\);

-- Location: IOIBUF_X14_Y41_N8
\DataB[12]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DataB(12),
	o => \DataB[12]~input_o\);

-- Location: IOIBUF_X12_Y41_N1
\DataB[11]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DataB(11),
	o => \DataB[11]~input_o\);

-- Location: IOIBUF_X31_Y0_N1
\DataA[11]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DataA(11),
	o => \DataA[11]~input_o\);

-- Location: IOIBUF_X18_Y41_N1
\DataA[10]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DataA(10),
	o => \DataA[10]~input_o\);

-- Location: IOIBUF_X31_Y41_N8
\DataB[10]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DataB(10),
	o => \DataB[10]~input_o\);

-- Location: IOIBUF_X14_Y0_N8
\DataB[9]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DataB(9),
	o => \DataB[9]~input_o\);

-- Location: IOIBUF_X12_Y0_N8
\DataA[9]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DataA(9),
	o => \DataA[9]~input_o\);

-- Location: IOIBUF_X31_Y0_N22
\DataA[8]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DataA(8),
	o => \DataA[8]~input_o\);

-- Location: IOIBUF_X41_Y0_N15
\DataB[8]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DataB(8),
	o => \DataB[8]~input_o\);

-- Location: IOIBUF_X23_Y41_N8
\DataA[7]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DataA(7),
	o => \DataA[7]~input_o\);

-- Location: IOIBUF_X12_Y0_N1
\DataB[7]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DataB(7),
	o => \DataB[7]~input_o\);

-- Location: IOIBUF_X5_Y41_N8
\DataB[6]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DataB(6),
	o => \DataB[6]~input_o\);

-- Location: IOIBUF_X38_Y0_N8
\DataA[6]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DataA(6),
	o => \DataA[6]~input_o\);

-- Location: IOIBUF_X7_Y41_N8
\DataA[5]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DataA(5),
	o => \DataA[5]~input_o\);

-- Location: IOIBUF_X36_Y0_N8
\DataB[5]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DataB(5),
	o => \DataB[5]~input_o\);

-- Location: IOIBUF_X23_Y41_N1
\DataB[4]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DataB(4),
	o => \DataB[4]~input_o\);

-- Location: IOIBUF_X52_Y18_N8
\DataA[4]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DataA(4),
	o => \DataA[4]~input_o\);

-- Location: IOIBUF_X52_Y16_N8
\DataB[3]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DataB(3),
	o => \DataB[3]~input_o\);

-- Location: IOIBUF_X7_Y0_N8
\DataA[3]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DataA(3),
	o => \DataA[3]~input_o\);

-- Location: IOIBUF_X7_Y41_N22
\DataA[2]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DataA(2),
	o => \DataA[2]~input_o\);

-- Location: IOIBUF_X25_Y41_N8
\DataB[2]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DataB(2),
	o => \DataB[2]~input_o\);

-- Location: IOIBUF_X48_Y0_N1
\DataB[1]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DataB(1),
	o => \DataB[1]~input_o\);

-- Location: IOIBUF_X52_Y18_N1
\DataA[1]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DataA(1),
	o => \DataA[1]~input_o\);

-- Location: IOIBUF_X10_Y41_N1
\DataB[0]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DataB(0),
	o => \DataB[0]~input_o\);

-- Location: IOIBUF_X12_Y41_N8
\DataA[0]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DataA(0),
	o => \DataA[0]~input_o\);

-- Location: LCCOMB_X16_Y17_N0
\comp|LessThan1~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \comp|LessThan1~1_cout\ = CARRY((!\DataB[0]~input_o\ & \DataA[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \DataB[0]~input_o\,
	datab => \DataA[0]~input_o\,
	datad => VCC,
	cout => \comp|LessThan1~1_cout\);

-- Location: LCCOMB_X16_Y17_N2
\comp|LessThan1~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \comp|LessThan1~3_cout\ = CARRY((\DataB[1]~input_o\ & ((!\comp|LessThan1~1_cout\) # (!\DataA[1]~input_o\))) # (!\DataB[1]~input_o\ & (!\DataA[1]~input_o\ & !\comp|LessThan1~1_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \DataB[1]~input_o\,
	datab => \DataA[1]~input_o\,
	datad => VCC,
	cin => \comp|LessThan1~1_cout\,
	cout => \comp|LessThan1~3_cout\);

-- Location: LCCOMB_X16_Y17_N4
\comp|LessThan1~5\ : cycloneiv_lcell_comb
-- Equation(s):
-- \comp|LessThan1~5_cout\ = CARRY((\DataA[2]~input_o\ & ((!\comp|LessThan1~3_cout\) # (!\DataB[2]~input_o\))) # (!\DataA[2]~input_o\ & (!\DataB[2]~input_o\ & !\comp|LessThan1~3_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \DataA[2]~input_o\,
	datab => \DataB[2]~input_o\,
	datad => VCC,
	cin => \comp|LessThan1~3_cout\,
	cout => \comp|LessThan1~5_cout\);

-- Location: LCCOMB_X16_Y17_N6
\comp|LessThan1~7\ : cycloneiv_lcell_comb
-- Equation(s):
-- \comp|LessThan1~7_cout\ = CARRY((\DataB[3]~input_o\ & ((!\comp|LessThan1~5_cout\) # (!\DataA[3]~input_o\))) # (!\DataB[3]~input_o\ & (!\DataA[3]~input_o\ & !\comp|LessThan1~5_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \DataB[3]~input_o\,
	datab => \DataA[3]~input_o\,
	datad => VCC,
	cin => \comp|LessThan1~5_cout\,
	cout => \comp|LessThan1~7_cout\);

-- Location: LCCOMB_X16_Y17_N8
\comp|LessThan1~9\ : cycloneiv_lcell_comb
-- Equation(s):
-- \comp|LessThan1~9_cout\ = CARRY((\DataB[4]~input_o\ & (\DataA[4]~input_o\ & !\comp|LessThan1~7_cout\)) # (!\DataB[4]~input_o\ & ((\DataA[4]~input_o\) # (!\comp|LessThan1~7_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \DataB[4]~input_o\,
	datab => \DataA[4]~input_o\,
	datad => VCC,
	cin => \comp|LessThan1~7_cout\,
	cout => \comp|LessThan1~9_cout\);

-- Location: LCCOMB_X16_Y17_N10
\comp|LessThan1~11\ : cycloneiv_lcell_comb
-- Equation(s):
-- \comp|LessThan1~11_cout\ = CARRY((\DataA[5]~input_o\ & (\DataB[5]~input_o\ & !\comp|LessThan1~9_cout\)) # (!\DataA[5]~input_o\ & ((\DataB[5]~input_o\) # (!\comp|LessThan1~9_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \DataA[5]~input_o\,
	datab => \DataB[5]~input_o\,
	datad => VCC,
	cin => \comp|LessThan1~9_cout\,
	cout => \comp|LessThan1~11_cout\);

-- Location: LCCOMB_X16_Y17_N12
\comp|LessThan1~13\ : cycloneiv_lcell_comb
-- Equation(s):
-- \comp|LessThan1~13_cout\ = CARRY((\DataB[6]~input_o\ & (\DataA[6]~input_o\ & !\comp|LessThan1~11_cout\)) # (!\DataB[6]~input_o\ & ((\DataA[6]~input_o\) # (!\comp|LessThan1~11_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \DataB[6]~input_o\,
	datab => \DataA[6]~input_o\,
	datad => VCC,
	cin => \comp|LessThan1~11_cout\,
	cout => \comp|LessThan1~13_cout\);

-- Location: LCCOMB_X16_Y17_N14
\comp|LessThan1~15\ : cycloneiv_lcell_comb
-- Equation(s):
-- \comp|LessThan1~15_cout\ = CARRY((\DataA[7]~input_o\ & (\DataB[7]~input_o\ & !\comp|LessThan1~13_cout\)) # (!\DataA[7]~input_o\ & ((\DataB[7]~input_o\) # (!\comp|LessThan1~13_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \DataA[7]~input_o\,
	datab => \DataB[7]~input_o\,
	datad => VCC,
	cin => \comp|LessThan1~13_cout\,
	cout => \comp|LessThan1~15_cout\);

-- Location: LCCOMB_X16_Y17_N16
\comp|LessThan1~17\ : cycloneiv_lcell_comb
-- Equation(s):
-- \comp|LessThan1~17_cout\ = CARRY((\DataA[8]~input_o\ & ((!\comp|LessThan1~15_cout\) # (!\DataB[8]~input_o\))) # (!\DataA[8]~input_o\ & (!\DataB[8]~input_o\ & !\comp|LessThan1~15_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \DataA[8]~input_o\,
	datab => \DataB[8]~input_o\,
	datad => VCC,
	cin => \comp|LessThan1~15_cout\,
	cout => \comp|LessThan1~17_cout\);

-- Location: LCCOMB_X16_Y17_N18
\comp|LessThan1~19\ : cycloneiv_lcell_comb
-- Equation(s):
-- \comp|LessThan1~19_cout\ = CARRY((\DataB[9]~input_o\ & ((!\comp|LessThan1~17_cout\) # (!\DataA[9]~input_o\))) # (!\DataB[9]~input_o\ & (!\DataA[9]~input_o\ & !\comp|LessThan1~17_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \DataB[9]~input_o\,
	datab => \DataA[9]~input_o\,
	datad => VCC,
	cin => \comp|LessThan1~17_cout\,
	cout => \comp|LessThan1~19_cout\);

-- Location: LCCOMB_X16_Y17_N20
\comp|LessThan1~21\ : cycloneiv_lcell_comb
-- Equation(s):
-- \comp|LessThan1~21_cout\ = CARRY((\DataA[10]~input_o\ & ((!\comp|LessThan1~19_cout\) # (!\DataB[10]~input_o\))) # (!\DataA[10]~input_o\ & (!\DataB[10]~input_o\ & !\comp|LessThan1~19_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \DataA[10]~input_o\,
	datab => \DataB[10]~input_o\,
	datad => VCC,
	cin => \comp|LessThan1~19_cout\,
	cout => \comp|LessThan1~21_cout\);

-- Location: LCCOMB_X16_Y17_N22
\comp|LessThan1~23\ : cycloneiv_lcell_comb
-- Equation(s):
-- \comp|LessThan1~23_cout\ = CARRY((\DataB[11]~input_o\ & ((!\comp|LessThan1~21_cout\) # (!\DataA[11]~input_o\))) # (!\DataB[11]~input_o\ & (!\DataA[11]~input_o\ & !\comp|LessThan1~21_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \DataB[11]~input_o\,
	datab => \DataA[11]~input_o\,
	datad => VCC,
	cin => \comp|LessThan1~21_cout\,
	cout => \comp|LessThan1~23_cout\);

-- Location: LCCOMB_X16_Y17_N24
\comp|LessThan1~25\ : cycloneiv_lcell_comb
-- Equation(s):
-- \comp|LessThan1~25_cout\ = CARRY((\DataA[12]~input_o\ & ((!\comp|LessThan1~23_cout\) # (!\DataB[12]~input_o\))) # (!\DataA[12]~input_o\ & (!\DataB[12]~input_o\ & !\comp|LessThan1~23_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \DataA[12]~input_o\,
	datab => \DataB[12]~input_o\,
	datad => VCC,
	cin => \comp|LessThan1~23_cout\,
	cout => \comp|LessThan1~25_cout\);

-- Location: LCCOMB_X16_Y17_N26
\comp|LessThan1~27\ : cycloneiv_lcell_comb
-- Equation(s):
-- \comp|LessThan1~27_cout\ = CARRY((\DataA[13]~input_o\ & (\DataB[13]~input_o\ & !\comp|LessThan1~25_cout\)) # (!\DataA[13]~input_o\ & ((\DataB[13]~input_o\) # (!\comp|LessThan1~25_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \DataA[13]~input_o\,
	datab => \DataB[13]~input_o\,
	datad => VCC,
	cin => \comp|LessThan1~25_cout\,
	cout => \comp|LessThan1~27_cout\);

-- Location: LCCOMB_X16_Y17_N28
\comp|LessThan1~29\ : cycloneiv_lcell_comb
-- Equation(s):
-- \comp|LessThan1~29_cout\ = CARRY((\DataA[14]~input_o\ & ((!\comp|LessThan1~27_cout\) # (!\DataB[14]~input_o\))) # (!\DataA[14]~input_o\ & (!\DataB[14]~input_o\ & !\comp|LessThan1~27_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \DataA[14]~input_o\,
	datab => \DataB[14]~input_o\,
	datad => VCC,
	cin => \comp|LessThan1~27_cout\,
	cout => \comp|LessThan1~29_cout\);

-- Location: LCCOMB_X16_Y17_N30
\comp|LessThan1~31\ : cycloneiv_lcell_comb
-- Equation(s):
-- \comp|LessThan1~31_cout\ = CARRY((\DataB[15]~input_o\ & ((!\comp|LessThan1~29_cout\) # (!\DataA[15]~input_o\))) # (!\DataB[15]~input_o\ & (!\DataA[15]~input_o\ & !\comp|LessThan1~29_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \DataB[15]~input_o\,
	datab => \DataA[15]~input_o\,
	datad => VCC,
	cin => \comp|LessThan1~29_cout\,
	cout => \comp|LessThan1~31_cout\);

-- Location: LCCOMB_X16_Y16_N0
\comp|LessThan1~33\ : cycloneiv_lcell_comb
-- Equation(s):
-- \comp|LessThan1~33_cout\ = CARRY((\DataB[16]~input_o\ & (\DataA[16]~input_o\ & !\comp|LessThan1~31_cout\)) # (!\DataB[16]~input_o\ & ((\DataA[16]~input_o\) # (!\comp|LessThan1~31_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \DataB[16]~input_o\,
	datab => \DataA[16]~input_o\,
	datad => VCC,
	cin => \comp|LessThan1~31_cout\,
	cout => \comp|LessThan1~33_cout\);

-- Location: LCCOMB_X16_Y16_N2
\comp|LessThan1~35\ : cycloneiv_lcell_comb
-- Equation(s):
-- \comp|LessThan1~35_cout\ = CARRY((\DataA[17]~input_o\ & (\DataB[17]~input_o\ & !\comp|LessThan1~33_cout\)) # (!\DataA[17]~input_o\ & ((\DataB[17]~input_o\) # (!\comp|LessThan1~33_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \DataA[17]~input_o\,
	datab => \DataB[17]~input_o\,
	datad => VCC,
	cin => \comp|LessThan1~33_cout\,
	cout => \comp|LessThan1~35_cout\);

-- Location: LCCOMB_X16_Y16_N4
\comp|LessThan1~37\ : cycloneiv_lcell_comb
-- Equation(s):
-- \comp|LessThan1~37_cout\ = CARRY((\DataA[18]~input_o\ & ((!\comp|LessThan1~35_cout\) # (!\DataB[18]~input_o\))) # (!\DataA[18]~input_o\ & (!\DataB[18]~input_o\ & !\comp|LessThan1~35_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \DataA[18]~input_o\,
	datab => \DataB[18]~input_o\,
	datad => VCC,
	cin => \comp|LessThan1~35_cout\,
	cout => \comp|LessThan1~37_cout\);

-- Location: LCCOMB_X16_Y16_N6
\comp|LessThan1~39\ : cycloneiv_lcell_comb
-- Equation(s):
-- \comp|LessThan1~39_cout\ = CARRY((\DataB[19]~input_o\ & ((!\comp|LessThan1~37_cout\) # (!\DataA[19]~input_o\))) # (!\DataB[19]~input_o\ & (!\DataA[19]~input_o\ & !\comp|LessThan1~37_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \DataB[19]~input_o\,
	datab => \DataA[19]~input_o\,
	datad => VCC,
	cin => \comp|LessThan1~37_cout\,
	cout => \comp|LessThan1~39_cout\);

-- Location: LCCOMB_X16_Y16_N8
\comp|LessThan1~41\ : cycloneiv_lcell_comb
-- Equation(s):
-- \comp|LessThan1~41_cout\ = CARRY((\DataB[20]~input_o\ & (\DataA[20]~input_o\ & !\comp|LessThan1~39_cout\)) # (!\DataB[20]~input_o\ & ((\DataA[20]~input_o\) # (!\comp|LessThan1~39_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \DataB[20]~input_o\,
	datab => \DataA[20]~input_o\,
	datad => VCC,
	cin => \comp|LessThan1~39_cout\,
	cout => \comp|LessThan1~41_cout\);

-- Location: LCCOMB_X16_Y16_N10
\comp|LessThan1~43\ : cycloneiv_lcell_comb
-- Equation(s):
-- \comp|LessThan1~43_cout\ = CARRY((\DataA[21]~input_o\ & (\DataB[21]~input_o\ & !\comp|LessThan1~41_cout\)) # (!\DataA[21]~input_o\ & ((\DataB[21]~input_o\) # (!\comp|LessThan1~41_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \DataA[21]~input_o\,
	datab => \DataB[21]~input_o\,
	datad => VCC,
	cin => \comp|LessThan1~41_cout\,
	cout => \comp|LessThan1~43_cout\);

-- Location: LCCOMB_X16_Y16_N12
\comp|LessThan1~45\ : cycloneiv_lcell_comb
-- Equation(s):
-- \comp|LessThan1~45_cout\ = CARRY((\DataA[22]~input_o\ & ((!\comp|LessThan1~43_cout\) # (!\DataB[22]~input_o\))) # (!\DataA[22]~input_o\ & (!\DataB[22]~input_o\ & !\comp|LessThan1~43_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \DataA[22]~input_o\,
	datab => \DataB[22]~input_o\,
	datad => VCC,
	cin => \comp|LessThan1~43_cout\,
	cout => \comp|LessThan1~45_cout\);

-- Location: LCCOMB_X16_Y16_N14
\comp|LessThan1~47\ : cycloneiv_lcell_comb
-- Equation(s):
-- \comp|LessThan1~47_cout\ = CARRY((\DataA[23]~input_o\ & (\DataB[23]~input_o\ & !\comp|LessThan1~45_cout\)) # (!\DataA[23]~input_o\ & ((\DataB[23]~input_o\) # (!\comp|LessThan1~45_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \DataA[23]~input_o\,
	datab => \DataB[23]~input_o\,
	datad => VCC,
	cin => \comp|LessThan1~45_cout\,
	cout => \comp|LessThan1~47_cout\);

-- Location: LCCOMB_X16_Y16_N16
\comp|LessThan1~49\ : cycloneiv_lcell_comb
-- Equation(s):
-- \comp|LessThan1~49_cout\ = CARRY((\DataA[24]~input_o\ & ((!\comp|LessThan1~47_cout\) # (!\DataB[24]~input_o\))) # (!\DataA[24]~input_o\ & (!\DataB[24]~input_o\ & !\comp|LessThan1~47_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \DataA[24]~input_o\,
	datab => \DataB[24]~input_o\,
	datad => VCC,
	cin => \comp|LessThan1~47_cout\,
	cout => \comp|LessThan1~49_cout\);

-- Location: LCCOMB_X16_Y16_N18
\comp|LessThan1~51\ : cycloneiv_lcell_comb
-- Equation(s):
-- \comp|LessThan1~51_cout\ = CARRY((\DataB[25]~input_o\ & ((!\comp|LessThan1~49_cout\) # (!\DataA[25]~input_o\))) # (!\DataB[25]~input_o\ & (!\DataA[25]~input_o\ & !\comp|LessThan1~49_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \DataB[25]~input_o\,
	datab => \DataA[25]~input_o\,
	datad => VCC,
	cin => \comp|LessThan1~49_cout\,
	cout => \comp|LessThan1~51_cout\);

-- Location: LCCOMB_X16_Y16_N20
\comp|LessThan1~53\ : cycloneiv_lcell_comb
-- Equation(s):
-- \comp|LessThan1~53_cout\ = CARRY((\DataB[26]~input_o\ & (\DataA[26]~input_o\ & !\comp|LessThan1~51_cout\)) # (!\DataB[26]~input_o\ & ((\DataA[26]~input_o\) # (!\comp|LessThan1~51_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \DataB[26]~input_o\,
	datab => \DataA[26]~input_o\,
	datad => VCC,
	cin => \comp|LessThan1~51_cout\,
	cout => \comp|LessThan1~53_cout\);

-- Location: LCCOMB_X16_Y16_N22
\comp|LessThan1~55\ : cycloneiv_lcell_comb
-- Equation(s):
-- \comp|LessThan1~55_cout\ = CARRY((\DataA[27]~input_o\ & (\DataB[27]~input_o\ & !\comp|LessThan1~53_cout\)) # (!\DataA[27]~input_o\ & ((\DataB[27]~input_o\) # (!\comp|LessThan1~53_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \DataA[27]~input_o\,
	datab => \DataB[27]~input_o\,
	datad => VCC,
	cin => \comp|LessThan1~53_cout\,
	cout => \comp|LessThan1~55_cout\);

-- Location: LCCOMB_X16_Y16_N24
\comp|LessThan1~57\ : cycloneiv_lcell_comb
-- Equation(s):
-- \comp|LessThan1~57_cout\ = CARRY((\DataB[28]~input_o\ & (\DataA[28]~input_o\ & !\comp|LessThan1~55_cout\)) # (!\DataB[28]~input_o\ & ((\DataA[28]~input_o\) # (!\comp|LessThan1~55_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \DataB[28]~input_o\,
	datab => \DataA[28]~input_o\,
	datad => VCC,
	cin => \comp|LessThan1~55_cout\,
	cout => \comp|LessThan1~57_cout\);

-- Location: LCCOMB_X16_Y16_N26
\comp|LessThan1~59\ : cycloneiv_lcell_comb
-- Equation(s):
-- \comp|LessThan1~59_cout\ = CARRY((\DataA[29]~input_o\ & (\DataB[29]~input_o\ & !\comp|LessThan1~57_cout\)) # (!\DataA[29]~input_o\ & ((\DataB[29]~input_o\) # (!\comp|LessThan1~57_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \DataA[29]~input_o\,
	datab => \DataB[29]~input_o\,
	datad => VCC,
	cin => \comp|LessThan1~57_cout\,
	cout => \comp|LessThan1~59_cout\);

-- Location: LCCOMB_X16_Y16_N28
\comp|LessThan1~61\ : cycloneiv_lcell_comb
-- Equation(s):
-- \comp|LessThan1~61_cout\ = CARRY((\DataB[30]~input_o\ & (\DataA[30]~input_o\ & !\comp|LessThan1~59_cout\)) # (!\DataB[30]~input_o\ & ((\DataA[30]~input_o\) # (!\comp|LessThan1~59_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \DataB[30]~input_o\,
	datab => \DataA[30]~input_o\,
	datad => VCC,
	cin => \comp|LessThan1~59_cout\,
	cout => \comp|LessThan1~61_cout\);

-- Location: LCCOMB_X16_Y16_N30
\comp|LessThan1~62\ : cycloneiv_lcell_comb
-- Equation(s):
-- \comp|LessThan1~62_combout\ = (\DataA[31]~input_o\ & ((\comp|LessThan1~61_cout\) # (!\DataB[31]~input_o\))) # (!\DataA[31]~input_o\ & (\comp|LessThan1~61_cout\ & !\DataB[31]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011111010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \DataA[31]~input_o\,
	datad => \DataB[31]~input_o\,
	cin => \comp|LessThan1~61_cout\,
	combout => \comp|LessThan1~62_combout\);

-- Location: LCCOMB_X15_Y20_N0
\comp|comp2|A1[0]~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \comp|comp2|A1[0]~1_cout\ = CARRY(!\DataA[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \DataA[0]~input_o\,
	datad => VCC,
	cout => \comp|comp2|A1[0]~1_cout\);

-- Location: LCCOMB_X15_Y20_N2
\comp|comp2|A1[1]~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \comp|comp2|A1[1]~2_combout\ = (\DataA[1]~input_o\ & ((\comp|comp2|A1[0]~1_cout\) # (GND))) # (!\DataA[1]~input_o\ & (!\comp|comp2|A1[0]~1_cout\))
-- \comp|comp2|A1[1]~3\ = CARRY((\DataA[1]~input_o\) # (!\comp|comp2|A1[0]~1_cout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \DataA[1]~input_o\,
	datad => VCC,
	cin => \comp|comp2|A1[0]~1_cout\,
	combout => \comp|comp2|A1[1]~2_combout\,
	cout => \comp|comp2|A1[1]~3\);

-- Location: LCCOMB_X15_Y20_N4
\comp|comp2|A1[2]~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \comp|comp2|A1[2]~4_combout\ = (\DataA[2]~input_o\ & (!\comp|comp2|A1[1]~3\ & VCC)) # (!\DataA[2]~input_o\ & (\comp|comp2|A1[1]~3\ $ (GND)))
-- \comp|comp2|A1[2]~5\ = CARRY((!\DataA[2]~input_o\ & !\comp|comp2|A1[1]~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101000000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \DataA[2]~input_o\,
	datad => VCC,
	cin => \comp|comp2|A1[1]~3\,
	combout => \comp|comp2|A1[2]~4_combout\,
	cout => \comp|comp2|A1[2]~5\);

-- Location: LCCOMB_X15_Y20_N6
\comp|comp2|A1[3]~6\ : cycloneiv_lcell_comb
-- Equation(s):
-- \comp|comp2|A1[3]~6_combout\ = (\DataA[3]~input_o\ & ((\comp|comp2|A1[2]~5\) # (GND))) # (!\DataA[3]~input_o\ & (!\comp|comp2|A1[2]~5\))
-- \comp|comp2|A1[3]~7\ = CARRY((\DataA[3]~input_o\) # (!\comp|comp2|A1[2]~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \DataA[3]~input_o\,
	datad => VCC,
	cin => \comp|comp2|A1[2]~5\,
	combout => \comp|comp2|A1[3]~6_combout\,
	cout => \comp|comp2|A1[3]~7\);

-- Location: LCCOMB_X15_Y20_N8
\comp|comp2|A1[4]~8\ : cycloneiv_lcell_comb
-- Equation(s):
-- \comp|comp2|A1[4]~8_combout\ = (\DataA[4]~input_o\ & (!\comp|comp2|A1[3]~7\ & VCC)) # (!\DataA[4]~input_o\ & (\comp|comp2|A1[3]~7\ $ (GND)))
-- \comp|comp2|A1[4]~9\ = CARRY((!\DataA[4]~input_o\ & !\comp|comp2|A1[3]~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \DataA[4]~input_o\,
	datad => VCC,
	cin => \comp|comp2|A1[3]~7\,
	combout => \comp|comp2|A1[4]~8_combout\,
	cout => \comp|comp2|A1[4]~9\);

-- Location: LCCOMB_X15_Y20_N10
\comp|comp2|A1[5]~10\ : cycloneiv_lcell_comb
-- Equation(s):
-- \comp|comp2|A1[5]~10_combout\ = (\DataA[5]~input_o\ & ((\comp|comp2|A1[4]~9\) # (GND))) # (!\DataA[5]~input_o\ & (!\comp|comp2|A1[4]~9\))
-- \comp|comp2|A1[5]~11\ = CARRY((\DataA[5]~input_o\) # (!\comp|comp2|A1[4]~9\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \DataA[5]~input_o\,
	datad => VCC,
	cin => \comp|comp2|A1[4]~9\,
	combout => \comp|comp2|A1[5]~10_combout\,
	cout => \comp|comp2|A1[5]~11\);

-- Location: LCCOMB_X15_Y20_N12
\comp|comp2|A1[6]~12\ : cycloneiv_lcell_comb
-- Equation(s):
-- \comp|comp2|A1[6]~12_combout\ = (\DataA[6]~input_o\ & (!\comp|comp2|A1[5]~11\ & VCC)) # (!\DataA[6]~input_o\ & (\comp|comp2|A1[5]~11\ $ (GND)))
-- \comp|comp2|A1[6]~13\ = CARRY((!\DataA[6]~input_o\ & !\comp|comp2|A1[5]~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \DataA[6]~input_o\,
	datad => VCC,
	cin => \comp|comp2|A1[5]~11\,
	combout => \comp|comp2|A1[6]~12_combout\,
	cout => \comp|comp2|A1[6]~13\);

-- Location: LCCOMB_X15_Y20_N14
\comp|comp2|A1[7]~14\ : cycloneiv_lcell_comb
-- Equation(s):
-- \comp|comp2|A1[7]~14_combout\ = (\DataA[7]~input_o\ & ((\comp|comp2|A1[6]~13\) # (GND))) # (!\DataA[7]~input_o\ & (!\comp|comp2|A1[6]~13\))
-- \comp|comp2|A1[7]~15\ = CARRY((\DataA[7]~input_o\) # (!\comp|comp2|A1[6]~13\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001111001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \DataA[7]~input_o\,
	datad => VCC,
	cin => \comp|comp2|A1[6]~13\,
	combout => \comp|comp2|A1[7]~14_combout\,
	cout => \comp|comp2|A1[7]~15\);

-- Location: LCCOMB_X15_Y20_N16
\comp|comp2|A1[8]~16\ : cycloneiv_lcell_comb
-- Equation(s):
-- \comp|comp2|A1[8]~16_combout\ = (\DataA[8]~input_o\ & (!\comp|comp2|A1[7]~15\ & VCC)) # (!\DataA[8]~input_o\ & (\comp|comp2|A1[7]~15\ $ (GND)))
-- \comp|comp2|A1[8]~17\ = CARRY((!\DataA[8]~input_o\ & !\comp|comp2|A1[7]~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101000000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \DataA[8]~input_o\,
	datad => VCC,
	cin => \comp|comp2|A1[7]~15\,
	combout => \comp|comp2|A1[8]~16_combout\,
	cout => \comp|comp2|A1[8]~17\);

-- Location: LCCOMB_X15_Y20_N18
\comp|comp2|A1[9]~18\ : cycloneiv_lcell_comb
-- Equation(s):
-- \comp|comp2|A1[9]~18_combout\ = (\DataA[9]~input_o\ & ((\comp|comp2|A1[8]~17\) # (GND))) # (!\DataA[9]~input_o\ & (!\comp|comp2|A1[8]~17\))
-- \comp|comp2|A1[9]~19\ = CARRY((\DataA[9]~input_o\) # (!\comp|comp2|A1[8]~17\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \DataA[9]~input_o\,
	datad => VCC,
	cin => \comp|comp2|A1[8]~17\,
	combout => \comp|comp2|A1[9]~18_combout\,
	cout => \comp|comp2|A1[9]~19\);

-- Location: LCCOMB_X15_Y20_N20
\comp|comp2|A1[10]~20\ : cycloneiv_lcell_comb
-- Equation(s):
-- \comp|comp2|A1[10]~20_combout\ = (\DataA[10]~input_o\ & (!\comp|comp2|A1[9]~19\ & VCC)) # (!\DataA[10]~input_o\ & (\comp|comp2|A1[9]~19\ $ (GND)))
-- \comp|comp2|A1[10]~21\ = CARRY((!\DataA[10]~input_o\ & !\comp|comp2|A1[9]~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \DataA[10]~input_o\,
	datad => VCC,
	cin => \comp|comp2|A1[9]~19\,
	combout => \comp|comp2|A1[10]~20_combout\,
	cout => \comp|comp2|A1[10]~21\);

-- Location: LCCOMB_X15_Y20_N22
\comp|comp2|A1[11]~22\ : cycloneiv_lcell_comb
-- Equation(s):
-- \comp|comp2|A1[11]~22_combout\ = (\DataA[11]~input_o\ & ((\comp|comp2|A1[10]~21\) # (GND))) # (!\DataA[11]~input_o\ & (!\comp|comp2|A1[10]~21\))
-- \comp|comp2|A1[11]~23\ = CARRY((\DataA[11]~input_o\) # (!\comp|comp2|A1[10]~21\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001111001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \DataA[11]~input_o\,
	datad => VCC,
	cin => \comp|comp2|A1[10]~21\,
	combout => \comp|comp2|A1[11]~22_combout\,
	cout => \comp|comp2|A1[11]~23\);

-- Location: LCCOMB_X15_Y20_N24
\comp|comp2|A1[12]~24\ : cycloneiv_lcell_comb
-- Equation(s):
-- \comp|comp2|A1[12]~24_combout\ = (\DataA[12]~input_o\ & (!\comp|comp2|A1[11]~23\ & VCC)) # (!\DataA[12]~input_o\ & (\comp|comp2|A1[11]~23\ $ (GND)))
-- \comp|comp2|A1[12]~25\ = CARRY((!\DataA[12]~input_o\ & !\comp|comp2|A1[11]~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101000000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \DataA[12]~input_o\,
	datad => VCC,
	cin => \comp|comp2|A1[11]~23\,
	combout => \comp|comp2|A1[12]~24_combout\,
	cout => \comp|comp2|A1[12]~25\);

-- Location: LCCOMB_X15_Y20_N26
\comp|comp2|A1[13]~26\ : cycloneiv_lcell_comb
-- Equation(s):
-- \comp|comp2|A1[13]~26_combout\ = (\DataA[13]~input_o\ & ((\comp|comp2|A1[12]~25\) # (GND))) # (!\DataA[13]~input_o\ & (!\comp|comp2|A1[12]~25\))
-- \comp|comp2|A1[13]~27\ = CARRY((\DataA[13]~input_o\) # (!\comp|comp2|A1[12]~25\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001111001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \DataA[13]~input_o\,
	datad => VCC,
	cin => \comp|comp2|A1[12]~25\,
	combout => \comp|comp2|A1[13]~26_combout\,
	cout => \comp|comp2|A1[13]~27\);

-- Location: LCCOMB_X15_Y20_N28
\comp|comp2|A1[14]~28\ : cycloneiv_lcell_comb
-- Equation(s):
-- \comp|comp2|A1[14]~28_combout\ = (\DataA[14]~input_o\ & (!\comp|comp2|A1[13]~27\ & VCC)) # (!\DataA[14]~input_o\ & (\comp|comp2|A1[13]~27\ $ (GND)))
-- \comp|comp2|A1[14]~29\ = CARRY((!\DataA[14]~input_o\ & !\comp|comp2|A1[13]~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101000000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \DataA[14]~input_o\,
	datad => VCC,
	cin => \comp|comp2|A1[13]~27\,
	combout => \comp|comp2|A1[14]~28_combout\,
	cout => \comp|comp2|A1[14]~29\);

-- Location: LCCOMB_X15_Y20_N30
\comp|comp2|A1[15]~30\ : cycloneiv_lcell_comb
-- Equation(s):
-- \comp|comp2|A1[15]~30_combout\ = (\DataA[15]~input_o\ & ((\comp|comp2|A1[14]~29\) # (GND))) # (!\DataA[15]~input_o\ & (!\comp|comp2|A1[14]~29\))
-- \comp|comp2|A1[15]~31\ = CARRY((\DataA[15]~input_o\) # (!\comp|comp2|A1[14]~29\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \DataA[15]~input_o\,
	datad => VCC,
	cin => \comp|comp2|A1[14]~29\,
	combout => \comp|comp2|A1[15]~30_combout\,
	cout => \comp|comp2|A1[15]~31\);

-- Location: LCCOMB_X15_Y19_N0
\comp|comp2|A1[16]~32\ : cycloneiv_lcell_comb
-- Equation(s):
-- \comp|comp2|A1[16]~32_combout\ = (\DataA[16]~input_o\ & (!\comp|comp2|A1[15]~31\ & VCC)) # (!\DataA[16]~input_o\ & (\comp|comp2|A1[15]~31\ $ (GND)))
-- \comp|comp2|A1[16]~33\ = CARRY((!\DataA[16]~input_o\ & !\comp|comp2|A1[15]~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \DataA[16]~input_o\,
	datad => VCC,
	cin => \comp|comp2|A1[15]~31\,
	combout => \comp|comp2|A1[16]~32_combout\,
	cout => \comp|comp2|A1[16]~33\);

-- Location: LCCOMB_X15_Y19_N2
\comp|comp2|A1[17]~34\ : cycloneiv_lcell_comb
-- Equation(s):
-- \comp|comp2|A1[17]~34_combout\ = (\DataA[17]~input_o\ & ((\comp|comp2|A1[16]~33\) # (GND))) # (!\DataA[17]~input_o\ & (!\comp|comp2|A1[16]~33\))
-- \comp|comp2|A1[17]~35\ = CARRY((\DataA[17]~input_o\) # (!\comp|comp2|A1[16]~33\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001111001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \DataA[17]~input_o\,
	datad => VCC,
	cin => \comp|comp2|A1[16]~33\,
	combout => \comp|comp2|A1[17]~34_combout\,
	cout => \comp|comp2|A1[17]~35\);

-- Location: LCCOMB_X15_Y19_N4
\comp|comp2|A1[18]~36\ : cycloneiv_lcell_comb
-- Equation(s):
-- \comp|comp2|A1[18]~36_combout\ = (\DataA[18]~input_o\ & (!\comp|comp2|A1[17]~35\ & VCC)) # (!\DataA[18]~input_o\ & (\comp|comp2|A1[17]~35\ $ (GND)))
-- \comp|comp2|A1[18]~37\ = CARRY((!\DataA[18]~input_o\ & !\comp|comp2|A1[17]~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \DataA[18]~input_o\,
	datad => VCC,
	cin => \comp|comp2|A1[17]~35\,
	combout => \comp|comp2|A1[18]~36_combout\,
	cout => \comp|comp2|A1[18]~37\);

-- Location: LCCOMB_X15_Y19_N6
\comp|comp2|A1[19]~38\ : cycloneiv_lcell_comb
-- Equation(s):
-- \comp|comp2|A1[19]~38_combout\ = (\DataA[19]~input_o\ & ((\comp|comp2|A1[18]~37\) # (GND))) # (!\DataA[19]~input_o\ & (!\comp|comp2|A1[18]~37\))
-- \comp|comp2|A1[19]~39\ = CARRY((\DataA[19]~input_o\) # (!\comp|comp2|A1[18]~37\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001111001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \DataA[19]~input_o\,
	datad => VCC,
	cin => \comp|comp2|A1[18]~37\,
	combout => \comp|comp2|A1[19]~38_combout\,
	cout => \comp|comp2|A1[19]~39\);

-- Location: LCCOMB_X15_Y19_N8
\comp|comp2|A1[20]~40\ : cycloneiv_lcell_comb
-- Equation(s):
-- \comp|comp2|A1[20]~40_combout\ = (\DataA[20]~input_o\ & (!\comp|comp2|A1[19]~39\ & VCC)) # (!\DataA[20]~input_o\ & (\comp|comp2|A1[19]~39\ $ (GND)))
-- \comp|comp2|A1[20]~41\ = CARRY((!\DataA[20]~input_o\ & !\comp|comp2|A1[19]~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101000000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \DataA[20]~input_o\,
	datad => VCC,
	cin => \comp|comp2|A1[19]~39\,
	combout => \comp|comp2|A1[20]~40_combout\,
	cout => \comp|comp2|A1[20]~41\);

-- Location: LCCOMB_X15_Y19_N10
\comp|comp2|A1[21]~42\ : cycloneiv_lcell_comb
-- Equation(s):
-- \comp|comp2|A1[21]~42_combout\ = (\DataA[21]~input_o\ & ((\comp|comp2|A1[20]~41\) # (GND))) # (!\DataA[21]~input_o\ & (!\comp|comp2|A1[20]~41\))
-- \comp|comp2|A1[21]~43\ = CARRY((\DataA[21]~input_o\) # (!\comp|comp2|A1[20]~41\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001111001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \DataA[21]~input_o\,
	datad => VCC,
	cin => \comp|comp2|A1[20]~41\,
	combout => \comp|comp2|A1[21]~42_combout\,
	cout => \comp|comp2|A1[21]~43\);

-- Location: LCCOMB_X15_Y19_N12
\comp|comp2|A1[22]~44\ : cycloneiv_lcell_comb
-- Equation(s):
-- \comp|comp2|A1[22]~44_combout\ = (\DataA[22]~input_o\ & (!\comp|comp2|A1[21]~43\ & VCC)) # (!\DataA[22]~input_o\ & (\comp|comp2|A1[21]~43\ $ (GND)))
-- \comp|comp2|A1[22]~45\ = CARRY((!\DataA[22]~input_o\ & !\comp|comp2|A1[21]~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \DataA[22]~input_o\,
	datad => VCC,
	cin => \comp|comp2|A1[21]~43\,
	combout => \comp|comp2|A1[22]~44_combout\,
	cout => \comp|comp2|A1[22]~45\);

-- Location: LCCOMB_X15_Y19_N14
\comp|comp2|A1[23]~46\ : cycloneiv_lcell_comb
-- Equation(s):
-- \comp|comp2|A1[23]~46_combout\ = (\DataA[23]~input_o\ & ((\comp|comp2|A1[22]~45\) # (GND))) # (!\DataA[23]~input_o\ & (!\comp|comp2|A1[22]~45\))
-- \comp|comp2|A1[23]~47\ = CARRY((\DataA[23]~input_o\) # (!\comp|comp2|A1[22]~45\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001111001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \DataA[23]~input_o\,
	datad => VCC,
	cin => \comp|comp2|A1[22]~45\,
	combout => \comp|comp2|A1[23]~46_combout\,
	cout => \comp|comp2|A1[23]~47\);

-- Location: LCCOMB_X15_Y19_N16
\comp|comp2|A1[24]~48\ : cycloneiv_lcell_comb
-- Equation(s):
-- \comp|comp2|A1[24]~48_combout\ = (\DataA[24]~input_o\ & (!\comp|comp2|A1[23]~47\ & VCC)) # (!\DataA[24]~input_o\ & (\comp|comp2|A1[23]~47\ $ (GND)))
-- \comp|comp2|A1[24]~49\ = CARRY((!\DataA[24]~input_o\ & !\comp|comp2|A1[23]~47\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101000000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \DataA[24]~input_o\,
	datad => VCC,
	cin => \comp|comp2|A1[23]~47\,
	combout => \comp|comp2|A1[24]~48_combout\,
	cout => \comp|comp2|A1[24]~49\);

-- Location: LCCOMB_X15_Y19_N18
\comp|comp2|A1[25]~50\ : cycloneiv_lcell_comb
-- Equation(s):
-- \comp|comp2|A1[25]~50_combout\ = (\DataA[25]~input_o\ & ((\comp|comp2|A1[24]~49\) # (GND))) # (!\DataA[25]~input_o\ & (!\comp|comp2|A1[24]~49\))
-- \comp|comp2|A1[25]~51\ = CARRY((\DataA[25]~input_o\) # (!\comp|comp2|A1[24]~49\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001111001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \DataA[25]~input_o\,
	datad => VCC,
	cin => \comp|comp2|A1[24]~49\,
	combout => \comp|comp2|A1[25]~50_combout\,
	cout => \comp|comp2|A1[25]~51\);

-- Location: LCCOMB_X15_Y19_N20
\comp|comp2|A1[26]~52\ : cycloneiv_lcell_comb
-- Equation(s):
-- \comp|comp2|A1[26]~52_combout\ = (\DataA[26]~input_o\ & (!\comp|comp2|A1[25]~51\ & VCC)) # (!\DataA[26]~input_o\ & (\comp|comp2|A1[25]~51\ $ (GND)))
-- \comp|comp2|A1[26]~53\ = CARRY((!\DataA[26]~input_o\ & !\comp|comp2|A1[25]~51\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101000000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \DataA[26]~input_o\,
	datad => VCC,
	cin => \comp|comp2|A1[25]~51\,
	combout => \comp|comp2|A1[26]~52_combout\,
	cout => \comp|comp2|A1[26]~53\);

-- Location: LCCOMB_X15_Y19_N22
\comp|comp2|A1[27]~54\ : cycloneiv_lcell_comb
-- Equation(s):
-- \comp|comp2|A1[27]~54_combout\ = (\DataA[27]~input_o\ & ((\comp|comp2|A1[26]~53\) # (GND))) # (!\DataA[27]~input_o\ & (!\comp|comp2|A1[26]~53\))
-- \comp|comp2|A1[27]~55\ = CARRY((\DataA[27]~input_o\) # (!\comp|comp2|A1[26]~53\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \DataA[27]~input_o\,
	datad => VCC,
	cin => \comp|comp2|A1[26]~53\,
	combout => \comp|comp2|A1[27]~54_combout\,
	cout => \comp|comp2|A1[27]~55\);

-- Location: LCCOMB_X15_Y19_N24
\comp|comp2|A1[28]~56\ : cycloneiv_lcell_comb
-- Equation(s):
-- \comp|comp2|A1[28]~56_combout\ = (\DataA[28]~input_o\ & (!\comp|comp2|A1[27]~55\ & VCC)) # (!\DataA[28]~input_o\ & (\comp|comp2|A1[27]~55\ $ (GND)))
-- \comp|comp2|A1[28]~57\ = CARRY((!\DataA[28]~input_o\ & !\comp|comp2|A1[27]~55\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \DataA[28]~input_o\,
	datad => VCC,
	cin => \comp|comp2|A1[27]~55\,
	combout => \comp|comp2|A1[28]~56_combout\,
	cout => \comp|comp2|A1[28]~57\);

-- Location: LCCOMB_X15_Y19_N26
\comp|comp2|A1[29]~58\ : cycloneiv_lcell_comb
-- Equation(s):
-- \comp|comp2|A1[29]~58_combout\ = (\DataA[29]~input_o\ & ((\comp|comp2|A1[28]~57\) # (GND))) # (!\DataA[29]~input_o\ & (!\comp|comp2|A1[28]~57\))
-- \comp|comp2|A1[29]~59\ = CARRY((\DataA[29]~input_o\) # (!\comp|comp2|A1[28]~57\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \DataA[29]~input_o\,
	datad => VCC,
	cin => \comp|comp2|A1[28]~57\,
	combout => \comp|comp2|A1[29]~58_combout\,
	cout => \comp|comp2|A1[29]~59\);

-- Location: LCCOMB_X15_Y19_N28
\comp|comp2|A1[30]~60\ : cycloneiv_lcell_comb
-- Equation(s):
-- \comp|comp2|A1[30]~60_combout\ = (\DataA[30]~input_o\ & (!\comp|comp2|A1[29]~59\ & VCC)) # (!\DataA[30]~input_o\ & (\comp|comp2|A1[29]~59\ $ (GND)))
-- \comp|comp2|A1[30]~61\ = CARRY((!\DataA[30]~input_o\ & !\comp|comp2|A1[29]~59\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101000000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \DataA[30]~input_o\,
	datad => VCC,
	cin => \comp|comp2|A1[29]~59\,
	combout => \comp|comp2|A1[30]~60_combout\,
	cout => \comp|comp2|A1[30]~61\);

-- Location: LCCOMB_X15_Y19_N30
\comp|comp2|A1[31]~62\ : cycloneiv_lcell_comb
-- Equation(s):
-- \comp|comp2|A1[31]~62_combout\ = \DataA[31]~input_o\ $ (!\comp|comp2|A1[30]~61\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001111000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \DataA[31]~input_o\,
	cin => \comp|comp2|A1[30]~61\,
	combout => \comp|comp2|A1[31]~62_combout\);

-- Location: LCCOMB_X14_Y19_N0
\comp|comp2|B1[0]~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \comp|comp2|B1[0]~1_cout\ = CARRY(!\DataB[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DataB[0]~input_o\,
	datad => VCC,
	cout => \comp|comp2|B1[0]~1_cout\);

-- Location: LCCOMB_X14_Y19_N2
\comp|comp2|B1[1]~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \comp|comp2|B1[1]~2_combout\ = (\DataB[1]~input_o\ & ((\comp|comp2|B1[0]~1_cout\) # (GND))) # (!\DataB[1]~input_o\ & (!\comp|comp2|B1[0]~1_cout\))
-- \comp|comp2|B1[1]~3\ = CARRY((\DataB[1]~input_o\) # (!\comp|comp2|B1[0]~1_cout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001111001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \DataB[1]~input_o\,
	datad => VCC,
	cin => \comp|comp2|B1[0]~1_cout\,
	combout => \comp|comp2|B1[1]~2_combout\,
	cout => \comp|comp2|B1[1]~3\);

-- Location: LCCOMB_X14_Y19_N4
\comp|comp2|B1[2]~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \comp|comp2|B1[2]~4_combout\ = (\DataB[2]~input_o\ & (!\comp|comp2|B1[1]~3\ & VCC)) # (!\DataB[2]~input_o\ & (\comp|comp2|B1[1]~3\ $ (GND)))
-- \comp|comp2|B1[2]~5\ = CARRY((!\DataB[2]~input_o\ & !\comp|comp2|B1[1]~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \DataB[2]~input_o\,
	datad => VCC,
	cin => \comp|comp2|B1[1]~3\,
	combout => \comp|comp2|B1[2]~4_combout\,
	cout => \comp|comp2|B1[2]~5\);

-- Location: LCCOMB_X14_Y19_N6
\comp|comp2|B1[3]~6\ : cycloneiv_lcell_comb
-- Equation(s):
-- \comp|comp2|B1[3]~6_combout\ = (\DataB[3]~input_o\ & ((\comp|comp2|B1[2]~5\) # (GND))) # (!\DataB[3]~input_o\ & (!\comp|comp2|B1[2]~5\))
-- \comp|comp2|B1[3]~7\ = CARRY((\DataB[3]~input_o\) # (!\comp|comp2|B1[2]~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \DataB[3]~input_o\,
	datad => VCC,
	cin => \comp|comp2|B1[2]~5\,
	combout => \comp|comp2|B1[3]~6_combout\,
	cout => \comp|comp2|B1[3]~7\);

-- Location: LCCOMB_X14_Y19_N8
\comp|comp2|B1[4]~8\ : cycloneiv_lcell_comb
-- Equation(s):
-- \comp|comp2|B1[4]~8_combout\ = (\DataB[4]~input_o\ & (!\comp|comp2|B1[3]~7\ & VCC)) # (!\DataB[4]~input_o\ & (\comp|comp2|B1[3]~7\ $ (GND)))
-- \comp|comp2|B1[4]~9\ = CARRY((!\DataB[4]~input_o\ & !\comp|comp2|B1[3]~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \DataB[4]~input_o\,
	datad => VCC,
	cin => \comp|comp2|B1[3]~7\,
	combout => \comp|comp2|B1[4]~8_combout\,
	cout => \comp|comp2|B1[4]~9\);

-- Location: LCCOMB_X14_Y19_N10
\comp|comp2|B1[5]~10\ : cycloneiv_lcell_comb
-- Equation(s):
-- \comp|comp2|B1[5]~10_combout\ = (\DataB[5]~input_o\ & ((\comp|comp2|B1[4]~9\) # (GND))) # (!\DataB[5]~input_o\ & (!\comp|comp2|B1[4]~9\))
-- \comp|comp2|B1[5]~11\ = CARRY((\DataB[5]~input_o\) # (!\comp|comp2|B1[4]~9\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001111001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \DataB[5]~input_o\,
	datad => VCC,
	cin => \comp|comp2|B1[4]~9\,
	combout => \comp|comp2|B1[5]~10_combout\,
	cout => \comp|comp2|B1[5]~11\);

-- Location: LCCOMB_X14_Y19_N12
\comp|comp2|B1[6]~12\ : cycloneiv_lcell_comb
-- Equation(s):
-- \comp|comp2|B1[6]~12_combout\ = (\DataB[6]~input_o\ & (!\comp|comp2|B1[5]~11\ & VCC)) # (!\DataB[6]~input_o\ & (\comp|comp2|B1[5]~11\ $ (GND)))
-- \comp|comp2|B1[6]~13\ = CARRY((!\DataB[6]~input_o\ & !\comp|comp2|B1[5]~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \DataB[6]~input_o\,
	datad => VCC,
	cin => \comp|comp2|B1[5]~11\,
	combout => \comp|comp2|B1[6]~12_combout\,
	cout => \comp|comp2|B1[6]~13\);

-- Location: LCCOMB_X14_Y19_N14
\comp|comp2|B1[7]~14\ : cycloneiv_lcell_comb
-- Equation(s):
-- \comp|comp2|B1[7]~14_combout\ = (\DataB[7]~input_o\ & ((\comp|comp2|B1[6]~13\) # (GND))) # (!\DataB[7]~input_o\ & (!\comp|comp2|B1[6]~13\))
-- \comp|comp2|B1[7]~15\ = CARRY((\DataB[7]~input_o\) # (!\comp|comp2|B1[6]~13\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \DataB[7]~input_o\,
	datad => VCC,
	cin => \comp|comp2|B1[6]~13\,
	combout => \comp|comp2|B1[7]~14_combout\,
	cout => \comp|comp2|B1[7]~15\);

-- Location: LCCOMB_X14_Y19_N16
\comp|comp2|B1[8]~16\ : cycloneiv_lcell_comb
-- Equation(s):
-- \comp|comp2|B1[8]~16_combout\ = (\DataB[8]~input_o\ & (!\comp|comp2|B1[7]~15\ & VCC)) # (!\DataB[8]~input_o\ & (\comp|comp2|B1[7]~15\ $ (GND)))
-- \comp|comp2|B1[8]~17\ = CARRY((!\DataB[8]~input_o\ & !\comp|comp2|B1[7]~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101000000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \DataB[8]~input_o\,
	datad => VCC,
	cin => \comp|comp2|B1[7]~15\,
	combout => \comp|comp2|B1[8]~16_combout\,
	cout => \comp|comp2|B1[8]~17\);

-- Location: LCCOMB_X14_Y19_N18
\comp|comp2|B1[9]~18\ : cycloneiv_lcell_comb
-- Equation(s):
-- \comp|comp2|B1[9]~18_combout\ = (\DataB[9]~input_o\ & ((\comp|comp2|B1[8]~17\) # (GND))) # (!\DataB[9]~input_o\ & (!\comp|comp2|B1[8]~17\))
-- \comp|comp2|B1[9]~19\ = CARRY((\DataB[9]~input_o\) # (!\comp|comp2|B1[8]~17\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001111001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \DataB[9]~input_o\,
	datad => VCC,
	cin => \comp|comp2|B1[8]~17\,
	combout => \comp|comp2|B1[9]~18_combout\,
	cout => \comp|comp2|B1[9]~19\);

-- Location: LCCOMB_X14_Y19_N20
\comp|comp2|B1[10]~20\ : cycloneiv_lcell_comb
-- Equation(s):
-- \comp|comp2|B1[10]~20_combout\ = (\DataB[10]~input_o\ & (!\comp|comp2|B1[9]~19\ & VCC)) # (!\DataB[10]~input_o\ & (\comp|comp2|B1[9]~19\ $ (GND)))
-- \comp|comp2|B1[10]~21\ = CARRY((!\DataB[10]~input_o\ & !\comp|comp2|B1[9]~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101000000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \DataB[10]~input_o\,
	datad => VCC,
	cin => \comp|comp2|B1[9]~19\,
	combout => \comp|comp2|B1[10]~20_combout\,
	cout => \comp|comp2|B1[10]~21\);

-- Location: LCCOMB_X14_Y19_N22
\comp|comp2|B1[11]~22\ : cycloneiv_lcell_comb
-- Equation(s):
-- \comp|comp2|B1[11]~22_combout\ = (\DataB[11]~input_o\ & ((\comp|comp2|B1[10]~21\) # (GND))) # (!\DataB[11]~input_o\ & (!\comp|comp2|B1[10]~21\))
-- \comp|comp2|B1[11]~23\ = CARRY((\DataB[11]~input_o\) # (!\comp|comp2|B1[10]~21\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \DataB[11]~input_o\,
	datad => VCC,
	cin => \comp|comp2|B1[10]~21\,
	combout => \comp|comp2|B1[11]~22_combout\,
	cout => \comp|comp2|B1[11]~23\);

-- Location: LCCOMB_X14_Y19_N24
\comp|comp2|B1[12]~24\ : cycloneiv_lcell_comb
-- Equation(s):
-- \comp|comp2|B1[12]~24_combout\ = (\DataB[12]~input_o\ & (!\comp|comp2|B1[11]~23\ & VCC)) # (!\DataB[12]~input_o\ & (\comp|comp2|B1[11]~23\ $ (GND)))
-- \comp|comp2|B1[12]~25\ = CARRY((!\DataB[12]~input_o\ & !\comp|comp2|B1[11]~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101000000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \DataB[12]~input_o\,
	datad => VCC,
	cin => \comp|comp2|B1[11]~23\,
	combout => \comp|comp2|B1[12]~24_combout\,
	cout => \comp|comp2|B1[12]~25\);

-- Location: LCCOMB_X14_Y19_N26
\comp|comp2|B1[13]~26\ : cycloneiv_lcell_comb
-- Equation(s):
-- \comp|comp2|B1[13]~26_combout\ = (\DataB[13]~input_o\ & ((\comp|comp2|B1[12]~25\) # (GND))) # (!\DataB[13]~input_o\ & (!\comp|comp2|B1[12]~25\))
-- \comp|comp2|B1[13]~27\ = CARRY((\DataB[13]~input_o\) # (!\comp|comp2|B1[12]~25\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \DataB[13]~input_o\,
	datad => VCC,
	cin => \comp|comp2|B1[12]~25\,
	combout => \comp|comp2|B1[13]~26_combout\,
	cout => \comp|comp2|B1[13]~27\);

-- Location: LCCOMB_X14_Y19_N28
\comp|comp2|B1[14]~28\ : cycloneiv_lcell_comb
-- Equation(s):
-- \comp|comp2|B1[14]~28_combout\ = (\DataB[14]~input_o\ & (!\comp|comp2|B1[13]~27\ & VCC)) # (!\DataB[14]~input_o\ & (\comp|comp2|B1[13]~27\ $ (GND)))
-- \comp|comp2|B1[14]~29\ = CARRY((!\DataB[14]~input_o\ & !\comp|comp2|B1[13]~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101000000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \DataB[14]~input_o\,
	datad => VCC,
	cin => \comp|comp2|B1[13]~27\,
	combout => \comp|comp2|B1[14]~28_combout\,
	cout => \comp|comp2|B1[14]~29\);

-- Location: LCCOMB_X14_Y19_N30
\comp|comp2|B1[15]~30\ : cycloneiv_lcell_comb
-- Equation(s):
-- \comp|comp2|B1[15]~30_combout\ = (\DataB[15]~input_o\ & ((\comp|comp2|B1[14]~29\) # (GND))) # (!\DataB[15]~input_o\ & (!\comp|comp2|B1[14]~29\))
-- \comp|comp2|B1[15]~31\ = CARRY((\DataB[15]~input_o\) # (!\comp|comp2|B1[14]~29\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \DataB[15]~input_o\,
	datad => VCC,
	cin => \comp|comp2|B1[14]~29\,
	combout => \comp|comp2|B1[15]~30_combout\,
	cout => \comp|comp2|B1[15]~31\);

-- Location: LCCOMB_X14_Y18_N0
\comp|comp2|B1[16]~32\ : cycloneiv_lcell_comb
-- Equation(s):
-- \comp|comp2|B1[16]~32_combout\ = (\DataB[16]~input_o\ & (!\comp|comp2|B1[15]~31\ & VCC)) # (!\DataB[16]~input_o\ & (\comp|comp2|B1[15]~31\ $ (GND)))
-- \comp|comp2|B1[16]~33\ = CARRY((!\DataB[16]~input_o\ & !\comp|comp2|B1[15]~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101000000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \DataB[16]~input_o\,
	datad => VCC,
	cin => \comp|comp2|B1[15]~31\,
	combout => \comp|comp2|B1[16]~32_combout\,
	cout => \comp|comp2|B1[16]~33\);

-- Location: LCCOMB_X14_Y18_N2
\comp|comp2|B1[17]~34\ : cycloneiv_lcell_comb
-- Equation(s):
-- \comp|comp2|B1[17]~34_combout\ = (\DataB[17]~input_o\ & ((\comp|comp2|B1[16]~33\) # (GND))) # (!\DataB[17]~input_o\ & (!\comp|comp2|B1[16]~33\))
-- \comp|comp2|B1[17]~35\ = CARRY((\DataB[17]~input_o\) # (!\comp|comp2|B1[16]~33\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001111001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \DataB[17]~input_o\,
	datad => VCC,
	cin => \comp|comp2|B1[16]~33\,
	combout => \comp|comp2|B1[17]~34_combout\,
	cout => \comp|comp2|B1[17]~35\);

-- Location: LCCOMB_X14_Y18_N4
\comp|comp2|B1[18]~36\ : cycloneiv_lcell_comb
-- Equation(s):
-- \comp|comp2|B1[18]~36_combout\ = (\DataB[18]~input_o\ & (!\comp|comp2|B1[17]~35\ & VCC)) # (!\DataB[18]~input_o\ & (\comp|comp2|B1[17]~35\ $ (GND)))
-- \comp|comp2|B1[18]~37\ = CARRY((!\DataB[18]~input_o\ & !\comp|comp2|B1[17]~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \DataB[18]~input_o\,
	datad => VCC,
	cin => \comp|comp2|B1[17]~35\,
	combout => \comp|comp2|B1[18]~36_combout\,
	cout => \comp|comp2|B1[18]~37\);

-- Location: LCCOMB_X14_Y18_N6
\comp|comp2|B1[19]~38\ : cycloneiv_lcell_comb
-- Equation(s):
-- \comp|comp2|B1[19]~38_combout\ = (\DataB[19]~input_o\ & ((\comp|comp2|B1[18]~37\) # (GND))) # (!\DataB[19]~input_o\ & (!\comp|comp2|B1[18]~37\))
-- \comp|comp2|B1[19]~39\ = CARRY((\DataB[19]~input_o\) # (!\comp|comp2|B1[18]~37\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001111001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \DataB[19]~input_o\,
	datad => VCC,
	cin => \comp|comp2|B1[18]~37\,
	combout => \comp|comp2|B1[19]~38_combout\,
	cout => \comp|comp2|B1[19]~39\);

-- Location: LCCOMB_X14_Y18_N8
\comp|comp2|B1[20]~40\ : cycloneiv_lcell_comb
-- Equation(s):
-- \comp|comp2|B1[20]~40_combout\ = (\DataB[20]~input_o\ & (!\comp|comp2|B1[19]~39\ & VCC)) # (!\DataB[20]~input_o\ & (\comp|comp2|B1[19]~39\ $ (GND)))
-- \comp|comp2|B1[20]~41\ = CARRY((!\DataB[20]~input_o\ & !\comp|comp2|B1[19]~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101000000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \DataB[20]~input_o\,
	datad => VCC,
	cin => \comp|comp2|B1[19]~39\,
	combout => \comp|comp2|B1[20]~40_combout\,
	cout => \comp|comp2|B1[20]~41\);

-- Location: LCCOMB_X14_Y18_N10
\comp|comp2|B1[21]~42\ : cycloneiv_lcell_comb
-- Equation(s):
-- \comp|comp2|B1[21]~42_combout\ = (\DataB[21]~input_o\ & ((\comp|comp2|B1[20]~41\) # (GND))) # (!\DataB[21]~input_o\ & (!\comp|comp2|B1[20]~41\))
-- \comp|comp2|B1[21]~43\ = CARRY((\DataB[21]~input_o\) # (!\comp|comp2|B1[20]~41\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \DataB[21]~input_o\,
	datad => VCC,
	cin => \comp|comp2|B1[20]~41\,
	combout => \comp|comp2|B1[21]~42_combout\,
	cout => \comp|comp2|B1[21]~43\);

-- Location: LCCOMB_X14_Y18_N12
\comp|comp2|B1[22]~44\ : cycloneiv_lcell_comb
-- Equation(s):
-- \comp|comp2|B1[22]~44_combout\ = (\DataB[22]~input_o\ & (!\comp|comp2|B1[21]~43\ & VCC)) # (!\DataB[22]~input_o\ & (\comp|comp2|B1[21]~43\ $ (GND)))
-- \comp|comp2|B1[22]~45\ = CARRY((!\DataB[22]~input_o\ & !\comp|comp2|B1[21]~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \DataB[22]~input_o\,
	datad => VCC,
	cin => \comp|comp2|B1[21]~43\,
	combout => \comp|comp2|B1[22]~44_combout\,
	cout => \comp|comp2|B1[22]~45\);

-- Location: LCCOMB_X14_Y18_N14
\comp|comp2|B1[23]~46\ : cycloneiv_lcell_comb
-- Equation(s):
-- \comp|comp2|B1[23]~46_combout\ = (\DataB[23]~input_o\ & ((\comp|comp2|B1[22]~45\) # (GND))) # (!\DataB[23]~input_o\ & (!\comp|comp2|B1[22]~45\))
-- \comp|comp2|B1[23]~47\ = CARRY((\DataB[23]~input_o\) # (!\comp|comp2|B1[22]~45\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001111001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \DataB[23]~input_o\,
	datad => VCC,
	cin => \comp|comp2|B1[22]~45\,
	combout => \comp|comp2|B1[23]~46_combout\,
	cout => \comp|comp2|B1[23]~47\);

-- Location: LCCOMB_X14_Y18_N16
\comp|comp2|B1[24]~48\ : cycloneiv_lcell_comb
-- Equation(s):
-- \comp|comp2|B1[24]~48_combout\ = (\DataB[24]~input_o\ & (!\comp|comp2|B1[23]~47\ & VCC)) # (!\DataB[24]~input_o\ & (\comp|comp2|B1[23]~47\ $ (GND)))
-- \comp|comp2|B1[24]~49\ = CARRY((!\DataB[24]~input_o\ & !\comp|comp2|B1[23]~47\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101000000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \DataB[24]~input_o\,
	datad => VCC,
	cin => \comp|comp2|B1[23]~47\,
	combout => \comp|comp2|B1[24]~48_combout\,
	cout => \comp|comp2|B1[24]~49\);

-- Location: LCCOMB_X14_Y18_N18
\comp|comp2|B1[25]~50\ : cycloneiv_lcell_comb
-- Equation(s):
-- \comp|comp2|B1[25]~50_combout\ = (\DataB[25]~input_o\ & ((\comp|comp2|B1[24]~49\) # (GND))) # (!\DataB[25]~input_o\ & (!\comp|comp2|B1[24]~49\))
-- \comp|comp2|B1[25]~51\ = CARRY((\DataB[25]~input_o\) # (!\comp|comp2|B1[24]~49\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \DataB[25]~input_o\,
	datad => VCC,
	cin => \comp|comp2|B1[24]~49\,
	combout => \comp|comp2|B1[25]~50_combout\,
	cout => \comp|comp2|B1[25]~51\);

-- Location: LCCOMB_X14_Y18_N20
\comp|comp2|B1[26]~52\ : cycloneiv_lcell_comb
-- Equation(s):
-- \comp|comp2|B1[26]~52_combout\ = (\DataB[26]~input_o\ & (!\comp|comp2|B1[25]~51\ & VCC)) # (!\DataB[26]~input_o\ & (\comp|comp2|B1[25]~51\ $ (GND)))
-- \comp|comp2|B1[26]~53\ = CARRY((!\DataB[26]~input_o\ & !\comp|comp2|B1[25]~51\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101000000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \DataB[26]~input_o\,
	datad => VCC,
	cin => \comp|comp2|B1[25]~51\,
	combout => \comp|comp2|B1[26]~52_combout\,
	cout => \comp|comp2|B1[26]~53\);

-- Location: LCCOMB_X14_Y18_N22
\comp|comp2|B1[27]~54\ : cycloneiv_lcell_comb
-- Equation(s):
-- \comp|comp2|B1[27]~54_combout\ = (\DataB[27]~input_o\ & ((\comp|comp2|B1[26]~53\) # (GND))) # (!\DataB[27]~input_o\ & (!\comp|comp2|B1[26]~53\))
-- \comp|comp2|B1[27]~55\ = CARRY((\DataB[27]~input_o\) # (!\comp|comp2|B1[26]~53\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \DataB[27]~input_o\,
	datad => VCC,
	cin => \comp|comp2|B1[26]~53\,
	combout => \comp|comp2|B1[27]~54_combout\,
	cout => \comp|comp2|B1[27]~55\);

-- Location: LCCOMB_X14_Y18_N24
\comp|comp2|B1[28]~56\ : cycloneiv_lcell_comb
-- Equation(s):
-- \comp|comp2|B1[28]~56_combout\ = (\DataB[28]~input_o\ & (!\comp|comp2|B1[27]~55\ & VCC)) # (!\DataB[28]~input_o\ & (\comp|comp2|B1[27]~55\ $ (GND)))
-- \comp|comp2|B1[28]~57\ = CARRY((!\DataB[28]~input_o\ & !\comp|comp2|B1[27]~55\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \DataB[28]~input_o\,
	datad => VCC,
	cin => \comp|comp2|B1[27]~55\,
	combout => \comp|comp2|B1[28]~56_combout\,
	cout => \comp|comp2|B1[28]~57\);

-- Location: LCCOMB_X14_Y18_N26
\comp|comp2|B1[29]~58\ : cycloneiv_lcell_comb
-- Equation(s):
-- \comp|comp2|B1[29]~58_combout\ = (\DataB[29]~input_o\ & ((\comp|comp2|B1[28]~57\) # (GND))) # (!\DataB[29]~input_o\ & (!\comp|comp2|B1[28]~57\))
-- \comp|comp2|B1[29]~59\ = CARRY((\DataB[29]~input_o\) # (!\comp|comp2|B1[28]~57\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \DataB[29]~input_o\,
	datad => VCC,
	cin => \comp|comp2|B1[28]~57\,
	combout => \comp|comp2|B1[29]~58_combout\,
	cout => \comp|comp2|B1[29]~59\);

-- Location: LCCOMB_X14_Y18_N28
\comp|comp2|B1[30]~60\ : cycloneiv_lcell_comb
-- Equation(s):
-- \comp|comp2|B1[30]~60_combout\ = (\DataB[30]~input_o\ & (!\comp|comp2|B1[29]~59\ & VCC)) # (!\DataB[30]~input_o\ & (\comp|comp2|B1[29]~59\ $ (GND)))
-- \comp|comp2|B1[30]~61\ = CARRY((!\DataB[30]~input_o\ & !\comp|comp2|B1[29]~59\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101000000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \DataB[30]~input_o\,
	datad => VCC,
	cin => \comp|comp2|B1[29]~59\,
	combout => \comp|comp2|B1[30]~60_combout\,
	cout => \comp|comp2|B1[30]~61\);

-- Location: LCCOMB_X14_Y18_N30
\comp|comp2|B1[31]~62\ : cycloneiv_lcell_comb
-- Equation(s):
-- \comp|comp2|B1[31]~62_combout\ = \comp|comp2|B1[30]~61\ $ (!\DataB[31]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \DataB[31]~input_o\,
	cin => \comp|comp2|B1[30]~61\,
	combout => \comp|comp2|B1[31]~62_combout\);

-- Location: LCCOMB_X14_Y21_N0
\comp|LessThan3~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \comp|LessThan3~1_cout\ = CARRY((\DataB[0]~input_o\ & !\DataA[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \DataB[0]~input_o\,
	datab => \DataA[0]~input_o\,
	datad => VCC,
	cout => \comp|LessThan3~1_cout\);

-- Location: LCCOMB_X14_Y21_N2
\comp|LessThan3~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \comp|LessThan3~3_cout\ = CARRY((\comp|comp2|B1[1]~2_combout\ & (\comp|comp2|A1[1]~2_combout\ & !\comp|LessThan3~1_cout\)) # (!\comp|comp2|B1[1]~2_combout\ & ((\comp|comp2|A1[1]~2_combout\) # (!\comp|LessThan3~1_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \comp|comp2|B1[1]~2_combout\,
	datab => \comp|comp2|A1[1]~2_combout\,
	datad => VCC,
	cin => \comp|LessThan3~1_cout\,
	cout => \comp|LessThan3~3_cout\);

-- Location: LCCOMB_X14_Y21_N4
\comp|LessThan3~5\ : cycloneiv_lcell_comb
-- Equation(s):
-- \comp|LessThan3~5_cout\ = CARRY((\comp|comp2|A1[2]~4_combout\ & (\comp|comp2|B1[2]~4_combout\ & !\comp|LessThan3~3_cout\)) # (!\comp|comp2|A1[2]~4_combout\ & ((\comp|comp2|B1[2]~4_combout\) # (!\comp|LessThan3~3_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \comp|comp2|A1[2]~4_combout\,
	datab => \comp|comp2|B1[2]~4_combout\,
	datad => VCC,
	cin => \comp|LessThan3~3_cout\,
	cout => \comp|LessThan3~5_cout\);

-- Location: LCCOMB_X14_Y21_N6
\comp|LessThan3~7\ : cycloneiv_lcell_comb
-- Equation(s):
-- \comp|LessThan3~7_cout\ = CARRY((\comp|comp2|B1[3]~6_combout\ & (\comp|comp2|A1[3]~6_combout\ & !\comp|LessThan3~5_cout\)) # (!\comp|comp2|B1[3]~6_combout\ & ((\comp|comp2|A1[3]~6_combout\) # (!\comp|LessThan3~5_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \comp|comp2|B1[3]~6_combout\,
	datab => \comp|comp2|A1[3]~6_combout\,
	datad => VCC,
	cin => \comp|LessThan3~5_cout\,
	cout => \comp|LessThan3~7_cout\);

-- Location: LCCOMB_X14_Y21_N8
\comp|LessThan3~9\ : cycloneiv_lcell_comb
-- Equation(s):
-- \comp|LessThan3~9_cout\ = CARRY((\comp|comp2|A1[4]~8_combout\ & (\comp|comp2|B1[4]~8_combout\ & !\comp|LessThan3~7_cout\)) # (!\comp|comp2|A1[4]~8_combout\ & ((\comp|comp2|B1[4]~8_combout\) # (!\comp|LessThan3~7_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \comp|comp2|A1[4]~8_combout\,
	datab => \comp|comp2|B1[4]~8_combout\,
	datad => VCC,
	cin => \comp|LessThan3~7_cout\,
	cout => \comp|LessThan3~9_cout\);

-- Location: LCCOMB_X14_Y21_N10
\comp|LessThan3~11\ : cycloneiv_lcell_comb
-- Equation(s):
-- \comp|LessThan3~11_cout\ = CARRY((\comp|comp2|A1[5]~10_combout\ & ((!\comp|LessThan3~9_cout\) # (!\comp|comp2|B1[5]~10_combout\))) # (!\comp|comp2|A1[5]~10_combout\ & (!\comp|comp2|B1[5]~10_combout\ & !\comp|LessThan3~9_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \comp|comp2|A1[5]~10_combout\,
	datab => \comp|comp2|B1[5]~10_combout\,
	datad => VCC,
	cin => \comp|LessThan3~9_cout\,
	cout => \comp|LessThan3~11_cout\);

-- Location: LCCOMB_X14_Y21_N12
\comp|LessThan3~13\ : cycloneiv_lcell_comb
-- Equation(s):
-- \comp|LessThan3~13_cout\ = CARRY((\comp|comp2|B1[6]~12_combout\ & ((!\comp|LessThan3~11_cout\) # (!\comp|comp2|A1[6]~12_combout\))) # (!\comp|comp2|B1[6]~12_combout\ & (!\comp|comp2|A1[6]~12_combout\ & !\comp|LessThan3~11_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \comp|comp2|B1[6]~12_combout\,
	datab => \comp|comp2|A1[6]~12_combout\,
	datad => VCC,
	cin => \comp|LessThan3~11_cout\,
	cout => \comp|LessThan3~13_cout\);

-- Location: LCCOMB_X14_Y21_N14
\comp|LessThan3~15\ : cycloneiv_lcell_comb
-- Equation(s):
-- \comp|LessThan3~15_cout\ = CARRY((\comp|comp2|A1[7]~14_combout\ & ((!\comp|LessThan3~13_cout\) # (!\comp|comp2|B1[7]~14_combout\))) # (!\comp|comp2|A1[7]~14_combout\ & (!\comp|comp2|B1[7]~14_combout\ & !\comp|LessThan3~13_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \comp|comp2|A1[7]~14_combout\,
	datab => \comp|comp2|B1[7]~14_combout\,
	datad => VCC,
	cin => \comp|LessThan3~13_cout\,
	cout => \comp|LessThan3~15_cout\);

-- Location: LCCOMB_X14_Y21_N16
\comp|LessThan3~17\ : cycloneiv_lcell_comb
-- Equation(s):
-- \comp|LessThan3~17_cout\ = CARRY((\comp|comp2|A1[8]~16_combout\ & (\comp|comp2|B1[8]~16_combout\ & !\comp|LessThan3~15_cout\)) # (!\comp|comp2|A1[8]~16_combout\ & ((\comp|comp2|B1[8]~16_combout\) # (!\comp|LessThan3~15_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \comp|comp2|A1[8]~16_combout\,
	datab => \comp|comp2|B1[8]~16_combout\,
	datad => VCC,
	cin => \comp|LessThan3~15_cout\,
	cout => \comp|LessThan3~17_cout\);

-- Location: LCCOMB_X14_Y21_N18
\comp|LessThan3~19\ : cycloneiv_lcell_comb
-- Equation(s):
-- \comp|LessThan3~19_cout\ = CARRY((\comp|comp2|B1[9]~18_combout\ & (\comp|comp2|A1[9]~18_combout\ & !\comp|LessThan3~17_cout\)) # (!\comp|comp2|B1[9]~18_combout\ & ((\comp|comp2|A1[9]~18_combout\) # (!\comp|LessThan3~17_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \comp|comp2|B1[9]~18_combout\,
	datab => \comp|comp2|A1[9]~18_combout\,
	datad => VCC,
	cin => \comp|LessThan3~17_cout\,
	cout => \comp|LessThan3~19_cout\);

-- Location: LCCOMB_X14_Y21_N20
\comp|LessThan3~21\ : cycloneiv_lcell_comb
-- Equation(s):
-- \comp|LessThan3~21_cout\ = CARRY((\comp|comp2|A1[10]~20_combout\ & (\comp|comp2|B1[10]~20_combout\ & !\comp|LessThan3~19_cout\)) # (!\comp|comp2|A1[10]~20_combout\ & ((\comp|comp2|B1[10]~20_combout\) # (!\comp|LessThan3~19_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \comp|comp2|A1[10]~20_combout\,
	datab => \comp|comp2|B1[10]~20_combout\,
	datad => VCC,
	cin => \comp|LessThan3~19_cout\,
	cout => \comp|LessThan3~21_cout\);

-- Location: LCCOMB_X14_Y21_N22
\comp|LessThan3~23\ : cycloneiv_lcell_comb
-- Equation(s):
-- \comp|LessThan3~23_cout\ = CARRY((\comp|comp2|A1[11]~22_combout\ & ((!\comp|LessThan3~21_cout\) # (!\comp|comp2|B1[11]~22_combout\))) # (!\comp|comp2|A1[11]~22_combout\ & (!\comp|comp2|B1[11]~22_combout\ & !\comp|LessThan3~21_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \comp|comp2|A1[11]~22_combout\,
	datab => \comp|comp2|B1[11]~22_combout\,
	datad => VCC,
	cin => \comp|LessThan3~21_cout\,
	cout => \comp|LessThan3~23_cout\);

-- Location: LCCOMB_X14_Y21_N24
\comp|LessThan3~25\ : cycloneiv_lcell_comb
-- Equation(s):
-- \comp|LessThan3~25_cout\ = CARRY((\comp|comp2|B1[12]~24_combout\ & ((!\comp|LessThan3~23_cout\) # (!\comp|comp2|A1[12]~24_combout\))) # (!\comp|comp2|B1[12]~24_combout\ & (!\comp|comp2|A1[12]~24_combout\ & !\comp|LessThan3~23_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \comp|comp2|B1[12]~24_combout\,
	datab => \comp|comp2|A1[12]~24_combout\,
	datad => VCC,
	cin => \comp|LessThan3~23_cout\,
	cout => \comp|LessThan3~25_cout\);

-- Location: LCCOMB_X14_Y21_N26
\comp|LessThan3~27\ : cycloneiv_lcell_comb
-- Equation(s):
-- \comp|LessThan3~27_cout\ = CARRY((\comp|comp2|A1[13]~26_combout\ & ((!\comp|LessThan3~25_cout\) # (!\comp|comp2|B1[13]~26_combout\))) # (!\comp|comp2|A1[13]~26_combout\ & (!\comp|comp2|B1[13]~26_combout\ & !\comp|LessThan3~25_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \comp|comp2|A1[13]~26_combout\,
	datab => \comp|comp2|B1[13]~26_combout\,
	datad => VCC,
	cin => \comp|LessThan3~25_cout\,
	cout => \comp|LessThan3~27_cout\);

-- Location: LCCOMB_X14_Y21_N28
\comp|LessThan3~29\ : cycloneiv_lcell_comb
-- Equation(s):
-- \comp|LessThan3~29_cout\ = CARRY((\comp|comp2|B1[14]~28_combout\ & ((!\comp|LessThan3~27_cout\) # (!\comp|comp2|A1[14]~28_combout\))) # (!\comp|comp2|B1[14]~28_combout\ & (!\comp|comp2|A1[14]~28_combout\ & !\comp|LessThan3~27_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \comp|comp2|B1[14]~28_combout\,
	datab => \comp|comp2|A1[14]~28_combout\,
	datad => VCC,
	cin => \comp|LessThan3~27_cout\,
	cout => \comp|LessThan3~29_cout\);

-- Location: LCCOMB_X14_Y21_N30
\comp|LessThan3~31\ : cycloneiv_lcell_comb
-- Equation(s):
-- \comp|LessThan3~31_cout\ = CARRY((\comp|comp2|B1[15]~30_combout\ & (\comp|comp2|A1[15]~30_combout\ & !\comp|LessThan3~29_cout\)) # (!\comp|comp2|B1[15]~30_combout\ & ((\comp|comp2|A1[15]~30_combout\) # (!\comp|LessThan3~29_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \comp|comp2|B1[15]~30_combout\,
	datab => \comp|comp2|A1[15]~30_combout\,
	datad => VCC,
	cin => \comp|LessThan3~29_cout\,
	cout => \comp|LessThan3~31_cout\);

-- Location: LCCOMB_X14_Y20_N0
\comp|LessThan3~33\ : cycloneiv_lcell_comb
-- Equation(s):
-- \comp|LessThan3~33_cout\ = CARRY((\comp|comp2|A1[16]~32_combout\ & (\comp|comp2|B1[16]~32_combout\ & !\comp|LessThan3~31_cout\)) # (!\comp|comp2|A1[16]~32_combout\ & ((\comp|comp2|B1[16]~32_combout\) # (!\comp|LessThan3~31_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \comp|comp2|A1[16]~32_combout\,
	datab => \comp|comp2|B1[16]~32_combout\,
	datad => VCC,
	cin => \comp|LessThan3~31_cout\,
	cout => \comp|LessThan3~33_cout\);

-- Location: LCCOMB_X14_Y20_N2
\comp|LessThan3~35\ : cycloneiv_lcell_comb
-- Equation(s):
-- \comp|LessThan3~35_cout\ = CARRY((\comp|comp2|A1[17]~34_combout\ & ((!\comp|LessThan3~33_cout\) # (!\comp|comp2|B1[17]~34_combout\))) # (!\comp|comp2|A1[17]~34_combout\ & (!\comp|comp2|B1[17]~34_combout\ & !\comp|LessThan3~33_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \comp|comp2|A1[17]~34_combout\,
	datab => \comp|comp2|B1[17]~34_combout\,
	datad => VCC,
	cin => \comp|LessThan3~33_cout\,
	cout => \comp|LessThan3~35_cout\);

-- Location: LCCOMB_X14_Y20_N4
\comp|LessThan3~37\ : cycloneiv_lcell_comb
-- Equation(s):
-- \comp|LessThan3~37_cout\ = CARRY((\comp|comp2|A1[18]~36_combout\ & (\comp|comp2|B1[18]~36_combout\ & !\comp|LessThan3~35_cout\)) # (!\comp|comp2|A1[18]~36_combout\ & ((\comp|comp2|B1[18]~36_combout\) # (!\comp|LessThan3~35_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \comp|comp2|A1[18]~36_combout\,
	datab => \comp|comp2|B1[18]~36_combout\,
	datad => VCC,
	cin => \comp|LessThan3~35_cout\,
	cout => \comp|LessThan3~37_cout\);

-- Location: LCCOMB_X14_Y20_N6
\comp|LessThan3~39\ : cycloneiv_lcell_comb
-- Equation(s):
-- \comp|LessThan3~39_cout\ = CARRY((\comp|comp2|B1[19]~38_combout\ & (\comp|comp2|A1[19]~38_combout\ & !\comp|LessThan3~37_cout\)) # (!\comp|comp2|B1[19]~38_combout\ & ((\comp|comp2|A1[19]~38_combout\) # (!\comp|LessThan3~37_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \comp|comp2|B1[19]~38_combout\,
	datab => \comp|comp2|A1[19]~38_combout\,
	datad => VCC,
	cin => \comp|LessThan3~37_cout\,
	cout => \comp|LessThan3~39_cout\);

-- Location: LCCOMB_X14_Y20_N8
\comp|LessThan3~41\ : cycloneiv_lcell_comb
-- Equation(s):
-- \comp|LessThan3~41_cout\ = CARRY((\comp|comp2|B1[20]~40_combout\ & ((!\comp|LessThan3~39_cout\) # (!\comp|comp2|A1[20]~40_combout\))) # (!\comp|comp2|B1[20]~40_combout\ & (!\comp|comp2|A1[20]~40_combout\ & !\comp|LessThan3~39_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \comp|comp2|B1[20]~40_combout\,
	datab => \comp|comp2|A1[20]~40_combout\,
	datad => VCC,
	cin => \comp|LessThan3~39_cout\,
	cout => \comp|LessThan3~41_cout\);

-- Location: LCCOMB_X14_Y20_N10
\comp|LessThan3~43\ : cycloneiv_lcell_comb
-- Equation(s):
-- \comp|LessThan3~43_cout\ = CARRY((\comp|comp2|A1[21]~42_combout\ & ((!\comp|LessThan3~41_cout\) # (!\comp|comp2|B1[21]~42_combout\))) # (!\comp|comp2|A1[21]~42_combout\ & (!\comp|comp2|B1[21]~42_combout\ & !\comp|LessThan3~41_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \comp|comp2|A1[21]~42_combout\,
	datab => \comp|comp2|B1[21]~42_combout\,
	datad => VCC,
	cin => \comp|LessThan3~41_cout\,
	cout => \comp|LessThan3~43_cout\);

-- Location: LCCOMB_X14_Y20_N12
\comp|LessThan3~45\ : cycloneiv_lcell_comb
-- Equation(s):
-- \comp|LessThan3~45_cout\ = CARRY((\comp|comp2|B1[22]~44_combout\ & ((!\comp|LessThan3~43_cout\) # (!\comp|comp2|A1[22]~44_combout\))) # (!\comp|comp2|B1[22]~44_combout\ & (!\comp|comp2|A1[22]~44_combout\ & !\comp|LessThan3~43_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \comp|comp2|B1[22]~44_combout\,
	datab => \comp|comp2|A1[22]~44_combout\,
	datad => VCC,
	cin => \comp|LessThan3~43_cout\,
	cout => \comp|LessThan3~45_cout\);

-- Location: LCCOMB_X14_Y20_N14
\comp|LessThan3~47\ : cycloneiv_lcell_comb
-- Equation(s):
-- \comp|LessThan3~47_cout\ = CARRY((\comp|comp2|A1[23]~46_combout\ & ((!\comp|LessThan3~45_cout\) # (!\comp|comp2|B1[23]~46_combout\))) # (!\comp|comp2|A1[23]~46_combout\ & (!\comp|comp2|B1[23]~46_combout\ & !\comp|LessThan3~45_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \comp|comp2|A1[23]~46_combout\,
	datab => \comp|comp2|B1[23]~46_combout\,
	datad => VCC,
	cin => \comp|LessThan3~45_cout\,
	cout => \comp|LessThan3~47_cout\);

-- Location: LCCOMB_X14_Y20_N16
\comp|LessThan3~49\ : cycloneiv_lcell_comb
-- Equation(s):
-- \comp|LessThan3~49_cout\ = CARRY((\comp|comp2|A1[24]~48_combout\ & (\comp|comp2|B1[24]~48_combout\ & !\comp|LessThan3~47_cout\)) # (!\comp|comp2|A1[24]~48_combout\ & ((\comp|comp2|B1[24]~48_combout\) # (!\comp|LessThan3~47_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \comp|comp2|A1[24]~48_combout\,
	datab => \comp|comp2|B1[24]~48_combout\,
	datad => VCC,
	cin => \comp|LessThan3~47_cout\,
	cout => \comp|LessThan3~49_cout\);

-- Location: LCCOMB_X14_Y20_N18
\comp|LessThan3~51\ : cycloneiv_lcell_comb
-- Equation(s):
-- \comp|LessThan3~51_cout\ = CARRY((\comp|comp2|B1[25]~50_combout\ & (\comp|comp2|A1[25]~50_combout\ & !\comp|LessThan3~49_cout\)) # (!\comp|comp2|B1[25]~50_combout\ & ((\comp|comp2|A1[25]~50_combout\) # (!\comp|LessThan3~49_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \comp|comp2|B1[25]~50_combout\,
	datab => \comp|comp2|A1[25]~50_combout\,
	datad => VCC,
	cin => \comp|LessThan3~49_cout\,
	cout => \comp|LessThan3~51_cout\);

-- Location: LCCOMB_X14_Y20_N20
\comp|LessThan3~53\ : cycloneiv_lcell_comb
-- Equation(s):
-- \comp|LessThan3~53_cout\ = CARRY((\comp|comp2|B1[26]~52_combout\ & ((!\comp|LessThan3~51_cout\) # (!\comp|comp2|A1[26]~52_combout\))) # (!\comp|comp2|B1[26]~52_combout\ & (!\comp|comp2|A1[26]~52_combout\ & !\comp|LessThan3~51_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \comp|comp2|B1[26]~52_combout\,
	datab => \comp|comp2|A1[26]~52_combout\,
	datad => VCC,
	cin => \comp|LessThan3~51_cout\,
	cout => \comp|LessThan3~53_cout\);

-- Location: LCCOMB_X14_Y20_N22
\comp|LessThan3~55\ : cycloneiv_lcell_comb
-- Equation(s):
-- \comp|LessThan3~55_cout\ = CARRY((\comp|comp2|A1[27]~54_combout\ & ((!\comp|LessThan3~53_cout\) # (!\comp|comp2|B1[27]~54_combout\))) # (!\comp|comp2|A1[27]~54_combout\ & (!\comp|comp2|B1[27]~54_combout\ & !\comp|LessThan3~53_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \comp|comp2|A1[27]~54_combout\,
	datab => \comp|comp2|B1[27]~54_combout\,
	datad => VCC,
	cin => \comp|LessThan3~53_cout\,
	cout => \comp|LessThan3~55_cout\);

-- Location: LCCOMB_X14_Y20_N24
\comp|LessThan3~57\ : cycloneiv_lcell_comb
-- Equation(s):
-- \comp|LessThan3~57_cout\ = CARRY((\comp|comp2|A1[28]~56_combout\ & (\comp|comp2|B1[28]~56_combout\ & !\comp|LessThan3~55_cout\)) # (!\comp|comp2|A1[28]~56_combout\ & ((\comp|comp2|B1[28]~56_combout\) # (!\comp|LessThan3~55_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \comp|comp2|A1[28]~56_combout\,
	datab => \comp|comp2|B1[28]~56_combout\,
	datad => VCC,
	cin => \comp|LessThan3~55_cout\,
	cout => \comp|LessThan3~57_cout\);

-- Location: LCCOMB_X14_Y20_N26
\comp|LessThan3~59\ : cycloneiv_lcell_comb
-- Equation(s):
-- \comp|LessThan3~59_cout\ = CARRY((\comp|comp2|B1[29]~58_combout\ & (\comp|comp2|A1[29]~58_combout\ & !\comp|LessThan3~57_cout\)) # (!\comp|comp2|B1[29]~58_combout\ & ((\comp|comp2|A1[29]~58_combout\) # (!\comp|LessThan3~57_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \comp|comp2|B1[29]~58_combout\,
	datab => \comp|comp2|A1[29]~58_combout\,
	datad => VCC,
	cin => \comp|LessThan3~57_cout\,
	cout => \comp|LessThan3~59_cout\);

-- Location: LCCOMB_X14_Y20_N28
\comp|LessThan3~61\ : cycloneiv_lcell_comb
-- Equation(s):
-- \comp|LessThan3~61_cout\ = CARRY((\comp|comp2|B1[30]~60_combout\ & ((!\comp|LessThan3~59_cout\) # (!\comp|comp2|A1[30]~60_combout\))) # (!\comp|comp2|B1[30]~60_combout\ & (!\comp|comp2|A1[30]~60_combout\ & !\comp|LessThan3~59_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \comp|comp2|B1[30]~60_combout\,
	datab => \comp|comp2|A1[30]~60_combout\,
	datad => VCC,
	cin => \comp|LessThan3~59_cout\,
	cout => \comp|LessThan3~61_cout\);

-- Location: LCCOMB_X14_Y20_N30
\comp|LessThan3~62\ : cycloneiv_lcell_comb
-- Equation(s):
-- \comp|LessThan3~62_combout\ = (\comp|comp2|A1[31]~62_combout\ & (\comp|LessThan3~61_cout\ & \comp|comp2|B1[31]~62_combout\)) # (!\comp|comp2|A1[31]~62_combout\ & ((\comp|LessThan3~61_cout\) # (\comp|comp2|B1[31]~62_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001100110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \comp|comp2|A1[31]~62_combout\,
	datad => \comp|comp2|B1[31]~62_combout\,
	cin => \comp|LessThan3~61_cout\,
	combout => \comp|LessThan3~62_combout\);

-- Location: LCCOMB_X13_Y18_N16
\comp|Mux2~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \comp|Mux2~0_combout\ = (\DataA[31]~input_o\ & (((\comp|LessThan3~62_combout\ & \DataB[31]~input_o\)))) # (!\DataA[31]~input_o\ & ((\comp|LessThan1~62_combout\) # ((\DataB[31]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111100001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comp|LessThan1~62_combout\,
	datab => \comp|LessThan3~62_combout\,
	datac => \DataA[31]~input_o\,
	datad => \DataB[31]~input_o\,
	combout => \comp|Mux2~0_combout\);

-- Location: LCCOMB_X13_Y21_N0
\comp|LessThan2~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \comp|LessThan2~1_cout\ = CARRY((!\DataB[0]~input_o\ & \DataA[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \DataB[0]~input_o\,
	datab => \DataA[0]~input_o\,
	datad => VCC,
	cout => \comp|LessThan2~1_cout\);

-- Location: LCCOMB_X13_Y21_N2
\comp|LessThan2~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \comp|LessThan2~3_cout\ = CARRY((\comp|comp2|A1[1]~2_combout\ & (\comp|comp2|B1[1]~2_combout\ & !\comp|LessThan2~1_cout\)) # (!\comp|comp2|A1[1]~2_combout\ & ((\comp|comp2|B1[1]~2_combout\) # (!\comp|LessThan2~1_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \comp|comp2|A1[1]~2_combout\,
	datab => \comp|comp2|B1[1]~2_combout\,
	datad => VCC,
	cin => \comp|LessThan2~1_cout\,
	cout => \comp|LessThan2~3_cout\);

-- Location: LCCOMB_X13_Y21_N4
\comp|LessThan2~5\ : cycloneiv_lcell_comb
-- Equation(s):
-- \comp|LessThan2~5_cout\ = CARRY((\comp|comp2|A1[2]~4_combout\ & ((!\comp|LessThan2~3_cout\) # (!\comp|comp2|B1[2]~4_combout\))) # (!\comp|comp2|A1[2]~4_combout\ & (!\comp|comp2|B1[2]~4_combout\ & !\comp|LessThan2~3_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \comp|comp2|A1[2]~4_combout\,
	datab => \comp|comp2|B1[2]~4_combout\,
	datad => VCC,
	cin => \comp|LessThan2~3_cout\,
	cout => \comp|LessThan2~5_cout\);

-- Location: LCCOMB_X13_Y21_N6
\comp|LessThan2~7\ : cycloneiv_lcell_comb
-- Equation(s):
-- \comp|LessThan2~7_cout\ = CARRY((\comp|comp2|B1[3]~6_combout\ & ((!\comp|LessThan2~5_cout\) # (!\comp|comp2|A1[3]~6_combout\))) # (!\comp|comp2|B1[3]~6_combout\ & (!\comp|comp2|A1[3]~6_combout\ & !\comp|LessThan2~5_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \comp|comp2|B1[3]~6_combout\,
	datab => \comp|comp2|A1[3]~6_combout\,
	datad => VCC,
	cin => \comp|LessThan2~5_cout\,
	cout => \comp|LessThan2~7_cout\);

-- Location: LCCOMB_X13_Y21_N8
\comp|LessThan2~9\ : cycloneiv_lcell_comb
-- Equation(s):
-- \comp|LessThan2~9_cout\ = CARRY((\comp|comp2|A1[4]~8_combout\ & ((!\comp|LessThan2~7_cout\) # (!\comp|comp2|B1[4]~8_combout\))) # (!\comp|comp2|A1[4]~8_combout\ & (!\comp|comp2|B1[4]~8_combout\ & !\comp|LessThan2~7_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \comp|comp2|A1[4]~8_combout\,
	datab => \comp|comp2|B1[4]~8_combout\,
	datad => VCC,
	cin => \comp|LessThan2~7_cout\,
	cout => \comp|LessThan2~9_cout\);

-- Location: LCCOMB_X13_Y21_N10
\comp|LessThan2~11\ : cycloneiv_lcell_comb
-- Equation(s):
-- \comp|LessThan2~11_cout\ = CARRY((\comp|comp2|B1[5]~10_combout\ & ((!\comp|LessThan2~9_cout\) # (!\comp|comp2|A1[5]~10_combout\))) # (!\comp|comp2|B1[5]~10_combout\ & (!\comp|comp2|A1[5]~10_combout\ & !\comp|LessThan2~9_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \comp|comp2|B1[5]~10_combout\,
	datab => \comp|comp2|A1[5]~10_combout\,
	datad => VCC,
	cin => \comp|LessThan2~9_cout\,
	cout => \comp|LessThan2~11_cout\);

-- Location: LCCOMB_X13_Y21_N12
\comp|LessThan2~13\ : cycloneiv_lcell_comb
-- Equation(s):
-- \comp|LessThan2~13_cout\ = CARRY((\comp|comp2|A1[6]~12_combout\ & ((!\comp|LessThan2~11_cout\) # (!\comp|comp2|B1[6]~12_combout\))) # (!\comp|comp2|A1[6]~12_combout\ & (!\comp|comp2|B1[6]~12_combout\ & !\comp|LessThan2~11_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \comp|comp2|A1[6]~12_combout\,
	datab => \comp|comp2|B1[6]~12_combout\,
	datad => VCC,
	cin => \comp|LessThan2~11_cout\,
	cout => \comp|LessThan2~13_cout\);

-- Location: LCCOMB_X13_Y21_N14
\comp|LessThan2~15\ : cycloneiv_lcell_comb
-- Equation(s):
-- \comp|LessThan2~15_cout\ = CARRY((\comp|comp2|A1[7]~14_combout\ & (\comp|comp2|B1[7]~14_combout\ & !\comp|LessThan2~13_cout\)) # (!\comp|comp2|A1[7]~14_combout\ & ((\comp|comp2|B1[7]~14_combout\) # (!\comp|LessThan2~13_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \comp|comp2|A1[7]~14_combout\,
	datab => \comp|comp2|B1[7]~14_combout\,
	datad => VCC,
	cin => \comp|LessThan2~13_cout\,
	cout => \comp|LessThan2~15_cout\);

-- Location: LCCOMB_X13_Y21_N16
\comp|LessThan2~17\ : cycloneiv_lcell_comb
-- Equation(s):
-- \comp|LessThan2~17_cout\ = CARRY((\comp|comp2|A1[8]~16_combout\ & ((!\comp|LessThan2~15_cout\) # (!\comp|comp2|B1[8]~16_combout\))) # (!\comp|comp2|A1[8]~16_combout\ & (!\comp|comp2|B1[8]~16_combout\ & !\comp|LessThan2~15_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \comp|comp2|A1[8]~16_combout\,
	datab => \comp|comp2|B1[8]~16_combout\,
	datad => VCC,
	cin => \comp|LessThan2~15_cout\,
	cout => \comp|LessThan2~17_cout\);

-- Location: LCCOMB_X13_Y21_N18
\comp|LessThan2~19\ : cycloneiv_lcell_comb
-- Equation(s):
-- \comp|LessThan2~19_cout\ = CARRY((\comp|comp2|B1[9]~18_combout\ & ((!\comp|LessThan2~17_cout\) # (!\comp|comp2|A1[9]~18_combout\))) # (!\comp|comp2|B1[9]~18_combout\ & (!\comp|comp2|A1[9]~18_combout\ & !\comp|LessThan2~17_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \comp|comp2|B1[9]~18_combout\,
	datab => \comp|comp2|A1[9]~18_combout\,
	datad => VCC,
	cin => \comp|LessThan2~17_cout\,
	cout => \comp|LessThan2~19_cout\);

-- Location: LCCOMB_X13_Y21_N20
\comp|LessThan2~21\ : cycloneiv_lcell_comb
-- Equation(s):
-- \comp|LessThan2~21_cout\ = CARRY((\comp|comp2|A1[10]~20_combout\ & ((!\comp|LessThan2~19_cout\) # (!\comp|comp2|B1[10]~20_combout\))) # (!\comp|comp2|A1[10]~20_combout\ & (!\comp|comp2|B1[10]~20_combout\ & !\comp|LessThan2~19_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \comp|comp2|A1[10]~20_combout\,
	datab => \comp|comp2|B1[10]~20_combout\,
	datad => VCC,
	cin => \comp|LessThan2~19_cout\,
	cout => \comp|LessThan2~21_cout\);

-- Location: LCCOMB_X13_Y21_N22
\comp|LessThan2~23\ : cycloneiv_lcell_comb
-- Equation(s):
-- \comp|LessThan2~23_cout\ = CARRY((\comp|comp2|A1[11]~22_combout\ & (\comp|comp2|B1[11]~22_combout\ & !\comp|LessThan2~21_cout\)) # (!\comp|comp2|A1[11]~22_combout\ & ((\comp|comp2|B1[11]~22_combout\) # (!\comp|LessThan2~21_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \comp|comp2|A1[11]~22_combout\,
	datab => \comp|comp2|B1[11]~22_combout\,
	datad => VCC,
	cin => \comp|LessThan2~21_cout\,
	cout => \comp|LessThan2~23_cout\);

-- Location: LCCOMB_X13_Y21_N24
\comp|LessThan2~25\ : cycloneiv_lcell_comb
-- Equation(s):
-- \comp|LessThan2~25_cout\ = CARRY((\comp|comp2|A1[12]~24_combout\ & ((!\comp|LessThan2~23_cout\) # (!\comp|comp2|B1[12]~24_combout\))) # (!\comp|comp2|A1[12]~24_combout\ & (!\comp|comp2|B1[12]~24_combout\ & !\comp|LessThan2~23_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \comp|comp2|A1[12]~24_combout\,
	datab => \comp|comp2|B1[12]~24_combout\,
	datad => VCC,
	cin => \comp|LessThan2~23_cout\,
	cout => \comp|LessThan2~25_cout\);

-- Location: LCCOMB_X13_Y21_N26
\comp|LessThan2~27\ : cycloneiv_lcell_comb
-- Equation(s):
-- \comp|LessThan2~27_cout\ = CARRY((\comp|comp2|A1[13]~26_combout\ & (\comp|comp2|B1[13]~26_combout\ & !\comp|LessThan2~25_cout\)) # (!\comp|comp2|A1[13]~26_combout\ & ((\comp|comp2|B1[13]~26_combout\) # (!\comp|LessThan2~25_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \comp|comp2|A1[13]~26_combout\,
	datab => \comp|comp2|B1[13]~26_combout\,
	datad => VCC,
	cin => \comp|LessThan2~25_cout\,
	cout => \comp|LessThan2~27_cout\);

-- Location: LCCOMB_X13_Y21_N28
\comp|LessThan2~29\ : cycloneiv_lcell_comb
-- Equation(s):
-- \comp|LessThan2~29_cout\ = CARRY((\comp|comp2|B1[14]~28_combout\ & (\comp|comp2|A1[14]~28_combout\ & !\comp|LessThan2~27_cout\)) # (!\comp|comp2|B1[14]~28_combout\ & ((\comp|comp2|A1[14]~28_combout\) # (!\comp|LessThan2~27_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \comp|comp2|B1[14]~28_combout\,
	datab => \comp|comp2|A1[14]~28_combout\,
	datad => VCC,
	cin => \comp|LessThan2~27_cout\,
	cout => \comp|LessThan2~29_cout\);

-- Location: LCCOMB_X13_Y21_N30
\comp|LessThan2~31\ : cycloneiv_lcell_comb
-- Equation(s):
-- \comp|LessThan2~31_cout\ = CARRY((\comp|comp2|B1[15]~30_combout\ & ((!\comp|LessThan2~29_cout\) # (!\comp|comp2|A1[15]~30_combout\))) # (!\comp|comp2|B1[15]~30_combout\ & (!\comp|comp2|A1[15]~30_combout\ & !\comp|LessThan2~29_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \comp|comp2|B1[15]~30_combout\,
	datab => \comp|comp2|A1[15]~30_combout\,
	datad => VCC,
	cin => \comp|LessThan2~29_cout\,
	cout => \comp|LessThan2~31_cout\);

-- Location: LCCOMB_X13_Y20_N0
\comp|LessThan2~33\ : cycloneiv_lcell_comb
-- Equation(s):
-- \comp|LessThan2~33_cout\ = CARRY((\comp|comp2|A1[16]~32_combout\ & ((!\comp|LessThan2~31_cout\) # (!\comp|comp2|B1[16]~32_combout\))) # (!\comp|comp2|A1[16]~32_combout\ & (!\comp|comp2|B1[16]~32_combout\ & !\comp|LessThan2~31_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \comp|comp2|A1[16]~32_combout\,
	datab => \comp|comp2|B1[16]~32_combout\,
	datad => VCC,
	cin => \comp|LessThan2~31_cout\,
	cout => \comp|LessThan2~33_cout\);

-- Location: LCCOMB_X13_Y20_N2
\comp|LessThan2~35\ : cycloneiv_lcell_comb
-- Equation(s):
-- \comp|LessThan2~35_cout\ = CARRY((\comp|comp2|B1[17]~34_combout\ & ((!\comp|LessThan2~33_cout\) # (!\comp|comp2|A1[17]~34_combout\))) # (!\comp|comp2|B1[17]~34_combout\ & (!\comp|comp2|A1[17]~34_combout\ & !\comp|LessThan2~33_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \comp|comp2|B1[17]~34_combout\,
	datab => \comp|comp2|A1[17]~34_combout\,
	datad => VCC,
	cin => \comp|LessThan2~33_cout\,
	cout => \comp|LessThan2~35_cout\);

-- Location: LCCOMB_X13_Y20_N4
\comp|LessThan2~37\ : cycloneiv_lcell_comb
-- Equation(s):
-- \comp|LessThan2~37_cout\ = CARRY((\comp|comp2|A1[18]~36_combout\ & ((!\comp|LessThan2~35_cout\) # (!\comp|comp2|B1[18]~36_combout\))) # (!\comp|comp2|A1[18]~36_combout\ & (!\comp|comp2|B1[18]~36_combout\ & !\comp|LessThan2~35_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \comp|comp2|A1[18]~36_combout\,
	datab => \comp|comp2|B1[18]~36_combout\,
	datad => VCC,
	cin => \comp|LessThan2~35_cout\,
	cout => \comp|LessThan2~37_cout\);

-- Location: LCCOMB_X13_Y20_N6
\comp|LessThan2~39\ : cycloneiv_lcell_comb
-- Equation(s):
-- \comp|LessThan2~39_cout\ = CARRY((\comp|comp2|A1[19]~38_combout\ & (\comp|comp2|B1[19]~38_combout\ & !\comp|LessThan2~37_cout\)) # (!\comp|comp2|A1[19]~38_combout\ & ((\comp|comp2|B1[19]~38_combout\) # (!\comp|LessThan2~37_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \comp|comp2|A1[19]~38_combout\,
	datab => \comp|comp2|B1[19]~38_combout\,
	datad => VCC,
	cin => \comp|LessThan2~37_cout\,
	cout => \comp|LessThan2~39_cout\);

-- Location: LCCOMB_X13_Y20_N8
\comp|LessThan2~41\ : cycloneiv_lcell_comb
-- Equation(s):
-- \comp|LessThan2~41_cout\ = CARRY((\comp|comp2|B1[20]~40_combout\ & (\comp|comp2|A1[20]~40_combout\ & !\comp|LessThan2~39_cout\)) # (!\comp|comp2|B1[20]~40_combout\ & ((\comp|comp2|A1[20]~40_combout\) # (!\comp|LessThan2~39_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \comp|comp2|B1[20]~40_combout\,
	datab => \comp|comp2|A1[20]~40_combout\,
	datad => VCC,
	cin => \comp|LessThan2~39_cout\,
	cout => \comp|LessThan2~41_cout\);

-- Location: LCCOMB_X13_Y20_N10
\comp|LessThan2~43\ : cycloneiv_lcell_comb
-- Equation(s):
-- \comp|LessThan2~43_cout\ = CARRY((\comp|comp2|B1[21]~42_combout\ & ((!\comp|LessThan2~41_cout\) # (!\comp|comp2|A1[21]~42_combout\))) # (!\comp|comp2|B1[21]~42_combout\ & (!\comp|comp2|A1[21]~42_combout\ & !\comp|LessThan2~41_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \comp|comp2|B1[21]~42_combout\,
	datab => \comp|comp2|A1[21]~42_combout\,
	datad => VCC,
	cin => \comp|LessThan2~41_cout\,
	cout => \comp|LessThan2~43_cout\);

-- Location: LCCOMB_X13_Y20_N12
\comp|LessThan2~45\ : cycloneiv_lcell_comb
-- Equation(s):
-- \comp|LessThan2~45_cout\ = CARRY((\comp|comp2|A1[22]~44_combout\ & ((!\comp|LessThan2~43_cout\) # (!\comp|comp2|B1[22]~44_combout\))) # (!\comp|comp2|A1[22]~44_combout\ & (!\comp|comp2|B1[22]~44_combout\ & !\comp|LessThan2~43_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \comp|comp2|A1[22]~44_combout\,
	datab => \comp|comp2|B1[22]~44_combout\,
	datad => VCC,
	cin => \comp|LessThan2~43_cout\,
	cout => \comp|LessThan2~45_cout\);

-- Location: LCCOMB_X13_Y20_N14
\comp|LessThan2~47\ : cycloneiv_lcell_comb
-- Equation(s):
-- \comp|LessThan2~47_cout\ = CARRY((\comp|comp2|A1[23]~46_combout\ & (\comp|comp2|B1[23]~46_combout\ & !\comp|LessThan2~45_cout\)) # (!\comp|comp2|A1[23]~46_combout\ & ((\comp|comp2|B1[23]~46_combout\) # (!\comp|LessThan2~45_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \comp|comp2|A1[23]~46_combout\,
	datab => \comp|comp2|B1[23]~46_combout\,
	datad => VCC,
	cin => \comp|LessThan2~45_cout\,
	cout => \comp|LessThan2~47_cout\);

-- Location: LCCOMB_X13_Y20_N16
\comp|LessThan2~49\ : cycloneiv_lcell_comb
-- Equation(s):
-- \comp|LessThan2~49_cout\ = CARRY((\comp|comp2|A1[24]~48_combout\ & ((!\comp|LessThan2~47_cout\) # (!\comp|comp2|B1[24]~48_combout\))) # (!\comp|comp2|A1[24]~48_combout\ & (!\comp|comp2|B1[24]~48_combout\ & !\comp|LessThan2~47_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \comp|comp2|A1[24]~48_combout\,
	datab => \comp|comp2|B1[24]~48_combout\,
	datad => VCC,
	cin => \comp|LessThan2~47_cout\,
	cout => \comp|LessThan2~49_cout\);

-- Location: LCCOMB_X13_Y20_N18
\comp|LessThan2~51\ : cycloneiv_lcell_comb
-- Equation(s):
-- \comp|LessThan2~51_cout\ = CARRY((\comp|comp2|B1[25]~50_combout\ & ((!\comp|LessThan2~49_cout\) # (!\comp|comp2|A1[25]~50_combout\))) # (!\comp|comp2|B1[25]~50_combout\ & (!\comp|comp2|A1[25]~50_combout\ & !\comp|LessThan2~49_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \comp|comp2|B1[25]~50_combout\,
	datab => \comp|comp2|A1[25]~50_combout\,
	datad => VCC,
	cin => \comp|LessThan2~49_cout\,
	cout => \comp|LessThan2~51_cout\);

-- Location: LCCOMB_X13_Y20_N20
\comp|LessThan2~53\ : cycloneiv_lcell_comb
-- Equation(s):
-- \comp|LessThan2~53_cout\ = CARRY((\comp|comp2|B1[26]~52_combout\ & (\comp|comp2|A1[26]~52_combout\ & !\comp|LessThan2~51_cout\)) # (!\comp|comp2|B1[26]~52_combout\ & ((\comp|comp2|A1[26]~52_combout\) # (!\comp|LessThan2~51_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \comp|comp2|B1[26]~52_combout\,
	datab => \comp|comp2|A1[26]~52_combout\,
	datad => VCC,
	cin => \comp|LessThan2~51_cout\,
	cout => \comp|LessThan2~53_cout\);

-- Location: LCCOMB_X13_Y20_N22
\comp|LessThan2~55\ : cycloneiv_lcell_comb
-- Equation(s):
-- \comp|LessThan2~55_cout\ = CARRY((\comp|comp2|B1[27]~54_combout\ & ((!\comp|LessThan2~53_cout\) # (!\comp|comp2|A1[27]~54_combout\))) # (!\comp|comp2|B1[27]~54_combout\ & (!\comp|comp2|A1[27]~54_combout\ & !\comp|LessThan2~53_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \comp|comp2|B1[27]~54_combout\,
	datab => \comp|comp2|A1[27]~54_combout\,
	datad => VCC,
	cin => \comp|LessThan2~53_cout\,
	cout => \comp|LessThan2~55_cout\);

-- Location: LCCOMB_X13_Y20_N24
\comp|LessThan2~57\ : cycloneiv_lcell_comb
-- Equation(s):
-- \comp|LessThan2~57_cout\ = CARRY((\comp|comp2|A1[28]~56_combout\ & ((!\comp|LessThan2~55_cout\) # (!\comp|comp2|B1[28]~56_combout\))) # (!\comp|comp2|A1[28]~56_combout\ & (!\comp|comp2|B1[28]~56_combout\ & !\comp|LessThan2~55_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \comp|comp2|A1[28]~56_combout\,
	datab => \comp|comp2|B1[28]~56_combout\,
	datad => VCC,
	cin => \comp|LessThan2~55_cout\,
	cout => \comp|LessThan2~57_cout\);

-- Location: LCCOMB_X13_Y20_N26
\comp|LessThan2~59\ : cycloneiv_lcell_comb
-- Equation(s):
-- \comp|LessThan2~59_cout\ = CARRY((\comp|comp2|A1[29]~58_combout\ & (\comp|comp2|B1[29]~58_combout\ & !\comp|LessThan2~57_cout\)) # (!\comp|comp2|A1[29]~58_combout\ & ((\comp|comp2|B1[29]~58_combout\) # (!\comp|LessThan2~57_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \comp|comp2|A1[29]~58_combout\,
	datab => \comp|comp2|B1[29]~58_combout\,
	datad => VCC,
	cin => \comp|LessThan2~57_cout\,
	cout => \comp|LessThan2~59_cout\);

-- Location: LCCOMB_X13_Y20_N28
\comp|LessThan2~61\ : cycloneiv_lcell_comb
-- Equation(s):
-- \comp|LessThan2~61_cout\ = CARRY((\comp|comp2|B1[30]~60_combout\ & (\comp|comp2|A1[30]~60_combout\ & !\comp|LessThan2~59_cout\)) # (!\comp|comp2|B1[30]~60_combout\ & ((\comp|comp2|A1[30]~60_combout\) # (!\comp|LessThan2~59_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \comp|comp2|B1[30]~60_combout\,
	datab => \comp|comp2|A1[30]~60_combout\,
	datad => VCC,
	cin => \comp|LessThan2~59_cout\,
	cout => \comp|LessThan2~61_cout\);

-- Location: LCCOMB_X13_Y20_N30
\comp|LessThan2~62\ : cycloneiv_lcell_comb
-- Equation(s):
-- \comp|LessThan2~62_combout\ = (\comp|comp2|B1[31]~62_combout\ & (\comp|LessThan2~61_cout\ & \comp|comp2|A1[31]~62_combout\)) # (!\comp|comp2|B1[31]~62_combout\ & ((\comp|LessThan2~61_cout\) # (\comp|comp2|A1[31]~62_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001100110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \comp|comp2|B1[31]~62_combout\,
	datad => \comp|comp2|A1[31]~62_combout\,
	cin => \comp|LessThan2~61_cout\,
	combout => \comp|LessThan2~62_combout\);

-- Location: LCCOMB_X15_Y17_N0
\comp|LessThan0~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \comp|LessThan0~1_cout\ = CARRY((!\DataA[0]~input_o\ & \DataB[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \DataA[0]~input_o\,
	datab => \DataB[0]~input_o\,
	datad => VCC,
	cout => \comp|LessThan0~1_cout\);

-- Location: LCCOMB_X15_Y17_N2
\comp|LessThan0~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \comp|LessThan0~3_cout\ = CARRY((\DataB[1]~input_o\ & (\DataA[1]~input_o\ & !\comp|LessThan0~1_cout\)) # (!\DataB[1]~input_o\ & ((\DataA[1]~input_o\) # (!\comp|LessThan0~1_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \DataB[1]~input_o\,
	datab => \DataA[1]~input_o\,
	datad => VCC,
	cin => \comp|LessThan0~1_cout\,
	cout => \comp|LessThan0~3_cout\);

-- Location: LCCOMB_X15_Y17_N4
\comp|LessThan0~5\ : cycloneiv_lcell_comb
-- Equation(s):
-- \comp|LessThan0~5_cout\ = CARRY((\DataB[2]~input_o\ & ((!\comp|LessThan0~3_cout\) # (!\DataA[2]~input_o\))) # (!\DataB[2]~input_o\ & (!\DataA[2]~input_o\ & !\comp|LessThan0~3_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \DataB[2]~input_o\,
	datab => \DataA[2]~input_o\,
	datad => VCC,
	cin => \comp|LessThan0~3_cout\,
	cout => \comp|LessThan0~5_cout\);

-- Location: LCCOMB_X15_Y17_N6
\comp|LessThan0~7\ : cycloneiv_lcell_comb
-- Equation(s):
-- \comp|LessThan0~7_cout\ = CARRY((\DataB[3]~input_o\ & (\DataA[3]~input_o\ & !\comp|LessThan0~5_cout\)) # (!\DataB[3]~input_o\ & ((\DataA[3]~input_o\) # (!\comp|LessThan0~5_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \DataB[3]~input_o\,
	datab => \DataA[3]~input_o\,
	datad => VCC,
	cin => \comp|LessThan0~5_cout\,
	cout => \comp|LessThan0~7_cout\);

-- Location: LCCOMB_X15_Y17_N8
\comp|LessThan0~9\ : cycloneiv_lcell_comb
-- Equation(s):
-- \comp|LessThan0~9_cout\ = CARRY((\DataB[4]~input_o\ & ((!\comp|LessThan0~7_cout\) # (!\DataA[4]~input_o\))) # (!\DataB[4]~input_o\ & (!\DataA[4]~input_o\ & !\comp|LessThan0~7_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \DataB[4]~input_o\,
	datab => \DataA[4]~input_o\,
	datad => VCC,
	cin => \comp|LessThan0~7_cout\,
	cout => \comp|LessThan0~9_cout\);

-- Location: LCCOMB_X15_Y17_N10
\comp|LessThan0~11\ : cycloneiv_lcell_comb
-- Equation(s):
-- \comp|LessThan0~11_cout\ = CARRY((\DataB[5]~input_o\ & (\DataA[5]~input_o\ & !\comp|LessThan0~9_cout\)) # (!\DataB[5]~input_o\ & ((\DataA[5]~input_o\) # (!\comp|LessThan0~9_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \DataB[5]~input_o\,
	datab => \DataA[5]~input_o\,
	datad => VCC,
	cin => \comp|LessThan0~9_cout\,
	cout => \comp|LessThan0~11_cout\);

-- Location: LCCOMB_X15_Y17_N12
\comp|LessThan0~13\ : cycloneiv_lcell_comb
-- Equation(s):
-- \comp|LessThan0~13_cout\ = CARRY((\DataB[6]~input_o\ & ((!\comp|LessThan0~11_cout\) # (!\DataA[6]~input_o\))) # (!\DataB[6]~input_o\ & (!\DataA[6]~input_o\ & !\comp|LessThan0~11_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \DataB[6]~input_o\,
	datab => \DataA[6]~input_o\,
	datad => VCC,
	cin => \comp|LessThan0~11_cout\,
	cout => \comp|LessThan0~13_cout\);

-- Location: LCCOMB_X15_Y17_N14
\comp|LessThan0~15\ : cycloneiv_lcell_comb
-- Equation(s):
-- \comp|LessThan0~15_cout\ = CARRY((\DataB[7]~input_o\ & (\DataA[7]~input_o\ & !\comp|LessThan0~13_cout\)) # (!\DataB[7]~input_o\ & ((\DataA[7]~input_o\) # (!\comp|LessThan0~13_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \DataB[7]~input_o\,
	datab => \DataA[7]~input_o\,
	datad => VCC,
	cin => \comp|LessThan0~13_cout\,
	cout => \comp|LessThan0~15_cout\);

-- Location: LCCOMB_X15_Y17_N16
\comp|LessThan0~17\ : cycloneiv_lcell_comb
-- Equation(s):
-- \comp|LessThan0~17_cout\ = CARRY((\DataA[8]~input_o\ & (\DataB[8]~input_o\ & !\comp|LessThan0~15_cout\)) # (!\DataA[8]~input_o\ & ((\DataB[8]~input_o\) # (!\comp|LessThan0~15_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \DataA[8]~input_o\,
	datab => \DataB[8]~input_o\,
	datad => VCC,
	cin => \comp|LessThan0~15_cout\,
	cout => \comp|LessThan0~17_cout\);

-- Location: LCCOMB_X15_Y17_N18
\comp|LessThan0~19\ : cycloneiv_lcell_comb
-- Equation(s):
-- \comp|LessThan0~19_cout\ = CARRY((\DataA[9]~input_o\ & ((!\comp|LessThan0~17_cout\) # (!\DataB[9]~input_o\))) # (!\DataA[9]~input_o\ & (!\DataB[9]~input_o\ & !\comp|LessThan0~17_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \DataA[9]~input_o\,
	datab => \DataB[9]~input_o\,
	datad => VCC,
	cin => \comp|LessThan0~17_cout\,
	cout => \comp|LessThan0~19_cout\);

-- Location: LCCOMB_X15_Y17_N20
\comp|LessThan0~21\ : cycloneiv_lcell_comb
-- Equation(s):
-- \comp|LessThan0~21_cout\ = CARRY((\DataB[10]~input_o\ & ((!\comp|LessThan0~19_cout\) # (!\DataA[10]~input_o\))) # (!\DataB[10]~input_o\ & (!\DataA[10]~input_o\ & !\comp|LessThan0~19_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \DataB[10]~input_o\,
	datab => \DataA[10]~input_o\,
	datad => VCC,
	cin => \comp|LessThan0~19_cout\,
	cout => \comp|LessThan0~21_cout\);

-- Location: LCCOMB_X15_Y17_N22
\comp|LessThan0~23\ : cycloneiv_lcell_comb
-- Equation(s):
-- \comp|LessThan0~23_cout\ = CARRY((\DataB[11]~input_o\ & (\DataA[11]~input_o\ & !\comp|LessThan0~21_cout\)) # (!\DataB[11]~input_o\ & ((\DataA[11]~input_o\) # (!\comp|LessThan0~21_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \DataB[11]~input_o\,
	datab => \DataA[11]~input_o\,
	datad => VCC,
	cin => \comp|LessThan0~21_cout\,
	cout => \comp|LessThan0~23_cout\);

-- Location: LCCOMB_X15_Y17_N24
\comp|LessThan0~25\ : cycloneiv_lcell_comb
-- Equation(s):
-- \comp|LessThan0~25_cout\ = CARRY((\DataA[12]~input_o\ & (\DataB[12]~input_o\ & !\comp|LessThan0~23_cout\)) # (!\DataA[12]~input_o\ & ((\DataB[12]~input_o\) # (!\comp|LessThan0~23_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \DataA[12]~input_o\,
	datab => \DataB[12]~input_o\,
	datad => VCC,
	cin => \comp|LessThan0~23_cout\,
	cout => \comp|LessThan0~25_cout\);

-- Location: LCCOMB_X15_Y17_N26
\comp|LessThan0~27\ : cycloneiv_lcell_comb
-- Equation(s):
-- \comp|LessThan0~27_cout\ = CARRY((\DataB[13]~input_o\ & (\DataA[13]~input_o\ & !\comp|LessThan0~25_cout\)) # (!\DataB[13]~input_o\ & ((\DataA[13]~input_o\) # (!\comp|LessThan0~25_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \DataB[13]~input_o\,
	datab => \DataA[13]~input_o\,
	datad => VCC,
	cin => \comp|LessThan0~25_cout\,
	cout => \comp|LessThan0~27_cout\);

-- Location: LCCOMB_X15_Y17_N28
\comp|LessThan0~29\ : cycloneiv_lcell_comb
-- Equation(s):
-- \comp|LessThan0~29_cout\ = CARRY((\DataB[14]~input_o\ & ((!\comp|LessThan0~27_cout\) # (!\DataA[14]~input_o\))) # (!\DataB[14]~input_o\ & (!\DataA[14]~input_o\ & !\comp|LessThan0~27_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \DataB[14]~input_o\,
	datab => \DataA[14]~input_o\,
	datad => VCC,
	cin => \comp|LessThan0~27_cout\,
	cout => \comp|LessThan0~29_cout\);

-- Location: LCCOMB_X15_Y17_N30
\comp|LessThan0~31\ : cycloneiv_lcell_comb
-- Equation(s):
-- \comp|LessThan0~31_cout\ = CARRY((\DataB[15]~input_o\ & (\DataA[15]~input_o\ & !\comp|LessThan0~29_cout\)) # (!\DataB[15]~input_o\ & ((\DataA[15]~input_o\) # (!\comp|LessThan0~29_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \DataB[15]~input_o\,
	datab => \DataA[15]~input_o\,
	datad => VCC,
	cin => \comp|LessThan0~29_cout\,
	cout => \comp|LessThan0~31_cout\);

-- Location: LCCOMB_X15_Y16_N0
\comp|LessThan0~33\ : cycloneiv_lcell_comb
-- Equation(s):
-- \comp|LessThan0~33_cout\ = CARRY((\DataA[16]~input_o\ & (\DataB[16]~input_o\ & !\comp|LessThan0~31_cout\)) # (!\DataA[16]~input_o\ & ((\DataB[16]~input_o\) # (!\comp|LessThan0~31_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \DataA[16]~input_o\,
	datab => \DataB[16]~input_o\,
	datad => VCC,
	cin => \comp|LessThan0~31_cout\,
	cout => \comp|LessThan0~33_cout\);

-- Location: LCCOMB_X15_Y16_N2
\comp|LessThan0~35\ : cycloneiv_lcell_comb
-- Equation(s):
-- \comp|LessThan0~35_cout\ = CARRY((\DataB[17]~input_o\ & (\DataA[17]~input_o\ & !\comp|LessThan0~33_cout\)) # (!\DataB[17]~input_o\ & ((\DataA[17]~input_o\) # (!\comp|LessThan0~33_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \DataB[17]~input_o\,
	datab => \DataA[17]~input_o\,
	datad => VCC,
	cin => \comp|LessThan0~33_cout\,
	cout => \comp|LessThan0~35_cout\);

-- Location: LCCOMB_X15_Y16_N4
\comp|LessThan0~37\ : cycloneiv_lcell_comb
-- Equation(s):
-- \comp|LessThan0~37_cout\ = CARRY((\DataB[18]~input_o\ & ((!\comp|LessThan0~35_cout\) # (!\DataA[18]~input_o\))) # (!\DataB[18]~input_o\ & (!\DataA[18]~input_o\ & !\comp|LessThan0~35_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \DataB[18]~input_o\,
	datab => \DataA[18]~input_o\,
	datad => VCC,
	cin => \comp|LessThan0~35_cout\,
	cout => \comp|LessThan0~37_cout\);

-- Location: LCCOMB_X15_Y16_N6
\comp|LessThan0~39\ : cycloneiv_lcell_comb
-- Equation(s):
-- \comp|LessThan0~39_cout\ = CARRY((\DataB[19]~input_o\ & (\DataA[19]~input_o\ & !\comp|LessThan0~37_cout\)) # (!\DataB[19]~input_o\ & ((\DataA[19]~input_o\) # (!\comp|LessThan0~37_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \DataB[19]~input_o\,
	datab => \DataA[19]~input_o\,
	datad => VCC,
	cin => \comp|LessThan0~37_cout\,
	cout => \comp|LessThan0~39_cout\);

-- Location: LCCOMB_X15_Y16_N8
\comp|LessThan0~41\ : cycloneiv_lcell_comb
-- Equation(s):
-- \comp|LessThan0~41_cout\ = CARRY((\DataA[20]~input_o\ & (\DataB[20]~input_o\ & !\comp|LessThan0~39_cout\)) # (!\DataA[20]~input_o\ & ((\DataB[20]~input_o\) # (!\comp|LessThan0~39_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \DataA[20]~input_o\,
	datab => \DataB[20]~input_o\,
	datad => VCC,
	cin => \comp|LessThan0~39_cout\,
	cout => \comp|LessThan0~41_cout\);

-- Location: LCCOMB_X15_Y16_N10
\comp|LessThan0~43\ : cycloneiv_lcell_comb
-- Equation(s):
-- \comp|LessThan0~43_cout\ = CARRY((\DataA[21]~input_o\ & ((!\comp|LessThan0~41_cout\) # (!\DataB[21]~input_o\))) # (!\DataA[21]~input_o\ & (!\DataB[21]~input_o\ & !\comp|LessThan0~41_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \DataA[21]~input_o\,
	datab => \DataB[21]~input_o\,
	datad => VCC,
	cin => \comp|LessThan0~41_cout\,
	cout => \comp|LessThan0~43_cout\);

-- Location: LCCOMB_X15_Y16_N12
\comp|LessThan0~45\ : cycloneiv_lcell_comb
-- Equation(s):
-- \comp|LessThan0~45_cout\ = CARRY((\DataB[22]~input_o\ & ((!\comp|LessThan0~43_cout\) # (!\DataA[22]~input_o\))) # (!\DataB[22]~input_o\ & (!\DataA[22]~input_o\ & !\comp|LessThan0~43_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \DataB[22]~input_o\,
	datab => \DataA[22]~input_o\,
	datad => VCC,
	cin => \comp|LessThan0~43_cout\,
	cout => \comp|LessThan0~45_cout\);

-- Location: LCCOMB_X15_Y16_N14
\comp|LessThan0~47\ : cycloneiv_lcell_comb
-- Equation(s):
-- \comp|LessThan0~47_cout\ = CARRY((\DataB[23]~input_o\ & (\DataA[23]~input_o\ & !\comp|LessThan0~45_cout\)) # (!\DataB[23]~input_o\ & ((\DataA[23]~input_o\) # (!\comp|LessThan0~45_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \DataB[23]~input_o\,
	datab => \DataA[23]~input_o\,
	datad => VCC,
	cin => \comp|LessThan0~45_cout\,
	cout => \comp|LessThan0~47_cout\);

-- Location: LCCOMB_X15_Y16_N16
\comp|LessThan0~49\ : cycloneiv_lcell_comb
-- Equation(s):
-- \comp|LessThan0~49_cout\ = CARRY((\DataA[24]~input_o\ & (\DataB[24]~input_o\ & !\comp|LessThan0~47_cout\)) # (!\DataA[24]~input_o\ & ((\DataB[24]~input_o\) # (!\comp|LessThan0~47_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \DataA[24]~input_o\,
	datab => \DataB[24]~input_o\,
	datad => VCC,
	cin => \comp|LessThan0~47_cout\,
	cout => \comp|LessThan0~49_cout\);

-- Location: LCCOMB_X15_Y16_N18
\comp|LessThan0~51\ : cycloneiv_lcell_comb
-- Equation(s):
-- \comp|LessThan0~51_cout\ = CARRY((\DataA[25]~input_o\ & ((!\comp|LessThan0~49_cout\) # (!\DataB[25]~input_o\))) # (!\DataA[25]~input_o\ & (!\DataB[25]~input_o\ & !\comp|LessThan0~49_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \DataA[25]~input_o\,
	datab => \DataB[25]~input_o\,
	datad => VCC,
	cin => \comp|LessThan0~49_cout\,
	cout => \comp|LessThan0~51_cout\);

-- Location: LCCOMB_X15_Y16_N20
\comp|LessThan0~53\ : cycloneiv_lcell_comb
-- Equation(s):
-- \comp|LessThan0~53_cout\ = CARRY((\DataA[26]~input_o\ & (\DataB[26]~input_o\ & !\comp|LessThan0~51_cout\)) # (!\DataA[26]~input_o\ & ((\DataB[26]~input_o\) # (!\comp|LessThan0~51_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \DataA[26]~input_o\,
	datab => \DataB[26]~input_o\,
	datad => VCC,
	cin => \comp|LessThan0~51_cout\,
	cout => \comp|LessThan0~53_cout\);

-- Location: LCCOMB_X15_Y16_N22
\comp|LessThan0~55\ : cycloneiv_lcell_comb
-- Equation(s):
-- \comp|LessThan0~55_cout\ = CARRY((\DataA[27]~input_o\ & ((!\comp|LessThan0~53_cout\) # (!\DataB[27]~input_o\))) # (!\DataA[27]~input_o\ & (!\DataB[27]~input_o\ & !\comp|LessThan0~53_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \DataA[27]~input_o\,
	datab => \DataB[27]~input_o\,
	datad => VCC,
	cin => \comp|LessThan0~53_cout\,
	cout => \comp|LessThan0~55_cout\);

-- Location: LCCOMB_X15_Y16_N24
\comp|LessThan0~57\ : cycloneiv_lcell_comb
-- Equation(s):
-- \comp|LessThan0~57_cout\ = CARRY((\DataA[28]~input_o\ & (\DataB[28]~input_o\ & !\comp|LessThan0~55_cout\)) # (!\DataA[28]~input_o\ & ((\DataB[28]~input_o\) # (!\comp|LessThan0~55_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \DataA[28]~input_o\,
	datab => \DataB[28]~input_o\,
	datad => VCC,
	cin => \comp|LessThan0~55_cout\,
	cout => \comp|LessThan0~57_cout\);

-- Location: LCCOMB_X15_Y16_N26
\comp|LessThan0~59\ : cycloneiv_lcell_comb
-- Equation(s):
-- \comp|LessThan0~59_cout\ = CARRY((\DataB[29]~input_o\ & (\DataA[29]~input_o\ & !\comp|LessThan0~57_cout\)) # (!\DataB[29]~input_o\ & ((\DataA[29]~input_o\) # (!\comp|LessThan0~57_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \DataB[29]~input_o\,
	datab => \DataA[29]~input_o\,
	datad => VCC,
	cin => \comp|LessThan0~57_cout\,
	cout => \comp|LessThan0~59_cout\);

-- Location: LCCOMB_X15_Y16_N28
\comp|LessThan0~61\ : cycloneiv_lcell_comb
-- Equation(s):
-- \comp|LessThan0~61_cout\ = CARRY((\DataB[30]~input_o\ & ((!\comp|LessThan0~59_cout\) # (!\DataA[30]~input_o\))) # (!\DataB[30]~input_o\ & (!\DataA[30]~input_o\ & !\comp|LessThan0~59_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \DataB[30]~input_o\,
	datab => \DataA[30]~input_o\,
	datad => VCC,
	cin => \comp|LessThan0~59_cout\,
	cout => \comp|LessThan0~61_cout\);

-- Location: LCCOMB_X15_Y16_N30
\comp|LessThan0~62\ : cycloneiv_lcell_comb
-- Equation(s):
-- \comp|LessThan0~62_combout\ = (\DataB[31]~input_o\ & ((\comp|LessThan0~61_cout\) # (!\DataA[31]~input_o\))) # (!\DataB[31]~input_o\ & (!\DataA[31]~input_o\ & \comp|LessThan0~61_cout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001010110010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \DataB[31]~input_o\,
	datab => \DataA[31]~input_o\,
	cin => \comp|LessThan0~61_cout\,
	combout => \comp|LessThan0~62_combout\);

-- Location: LCCOMB_X17_Y19_N8
\comp|Mux0~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \comp|Mux0~0_combout\ = (\DataA[31]~input_o\ & ((\comp|LessThan2~62_combout\) # ((!\DataB[31]~input_o\)))) # (!\DataA[31]~input_o\ & (((!\DataB[31]~input_o\ & \comp|LessThan0~62_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111110001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comp|LessThan2~62_combout\,
	datab => \DataA[31]~input_o\,
	datac => \DataB[31]~input_o\,
	datad => \comp|LessThan0~62_combout\,
	combout => \comp|Mux0~0_combout\);

-- Location: LCCOMB_X15_Y15_N6
\comp|Mux1~34\ : cycloneiv_lcell_comb
-- Equation(s):
-- \comp|Mux1~34_combout\ = (\DataA[21]~input_o\ & (\DataB[21]~input_o\ & (\DataA[22]~input_o\ $ (!\DataB[22]~input_o\)))) # (!\DataA[21]~input_o\ & (!\DataB[21]~input_o\ & (\DataA[22]~input_o\ $ (!\DataB[22]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001000000001001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DataA[21]~input_o\,
	datab => \DataB[21]~input_o\,
	datac => \DataA[22]~input_o\,
	datad => \DataB[22]~input_o\,
	combout => \comp|Mux1~34_combout\);

-- Location: LCCOMB_X15_Y15_N0
\comp|Mux1~31\ : cycloneiv_lcell_comb
-- Equation(s):
-- \comp|Mux1~31_combout\ = (\DataB[15]~input_o\ & (\DataA[15]~input_o\ & (\DataB[16]~input_o\ $ (!\DataA[16]~input_o\)))) # (!\DataB[15]~input_o\ & (!\DataA[15]~input_o\ & (\DataB[16]~input_o\ $ (!\DataA[16]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010000100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DataB[15]~input_o\,
	datab => \DataB[16]~input_o\,
	datac => \DataA[15]~input_o\,
	datad => \DataA[16]~input_o\,
	combout => \comp|Mux1~31_combout\);

-- Location: LCCOMB_X15_Y15_N2
\comp|Mux1~32\ : cycloneiv_lcell_comb
-- Equation(s):
-- \comp|Mux1~32_combout\ = (\DataB[18]~input_o\ & (\DataA[18]~input_o\ & (\DataB[17]~input_o\ $ (!\DataA[17]~input_o\)))) # (!\DataB[18]~input_o\ & (!\DataA[18]~input_o\ & (\DataB[17]~input_o\ $ (!\DataA[17]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001000000001001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DataB[18]~input_o\,
	datab => \DataA[18]~input_o\,
	datac => \DataB[17]~input_o\,
	datad => \DataA[17]~input_o\,
	combout => \comp|Mux1~32_combout\);

-- Location: LCCOMB_X15_Y15_N12
\comp|Mux1~33\ : cycloneiv_lcell_comb
-- Equation(s):
-- \comp|Mux1~33_combout\ = (\DataB[20]~input_o\ & (\DataA[20]~input_o\ & (\DataB[19]~input_o\ $ (!\DataA[19]~input_o\)))) # (!\DataB[20]~input_o\ & (!\DataA[20]~input_o\ & (\DataB[19]~input_o\ $ (!\DataA[19]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001001000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DataB[20]~input_o\,
	datab => \DataB[19]~input_o\,
	datac => \DataA[19]~input_o\,
	datad => \DataA[20]~input_o\,
	combout => \comp|Mux1~33_combout\);

-- Location: LCCOMB_X15_Y15_N16
\comp|Mux1~35\ : cycloneiv_lcell_comb
-- Equation(s):
-- \comp|Mux1~35_combout\ = (\comp|Mux1~34_combout\ & (\comp|Mux1~31_combout\ & (\comp|Mux1~32_combout\ & \comp|Mux1~33_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comp|Mux1~34_combout\,
	datab => \comp|Mux1~31_combout\,
	datac => \comp|Mux1~32_combout\,
	datad => \comp|Mux1~33_combout\,
	combout => \comp|Mux1~35_combout\);

-- Location: LCCOMB_X13_Y22_N16
\comp|Mux1~22\ : cycloneiv_lcell_comb
-- Equation(s):
-- \comp|Mux1~22_combout\ = (\DataB[1]~input_o\ & (\DataA[1]~input_o\ & (\DataA[2]~input_o\ $ (!\DataB[2]~input_o\)))) # (!\DataB[1]~input_o\ & (!\DataA[1]~input_o\ & (\DataA[2]~input_o\ $ (!\DataB[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001001000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DataB[1]~input_o\,
	datab => \DataA[2]~input_o\,
	datac => \DataB[2]~input_o\,
	datad => \DataA[1]~input_o\,
	combout => \comp|Mux1~22_combout\);

-- Location: LCCOMB_X13_Y18_N24
\comp|Mux1~23\ : cycloneiv_lcell_comb
-- Equation(s):
-- \comp|Mux1~23_combout\ = (\DataB[4]~input_o\ & (\DataA[4]~input_o\ & (\DataB[3]~input_o\ $ (!\DataA[3]~input_o\)))) # (!\DataB[4]~input_o\ & (!\DataA[4]~input_o\ & (\DataB[3]~input_o\ $ (!\DataA[3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001001000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DataB[4]~input_o\,
	datab => \DataB[3]~input_o\,
	datac => \DataA[3]~input_o\,
	datad => \DataA[4]~input_o\,
	combout => \comp|Mux1~23_combout\);

-- Location: LCCOMB_X13_Y18_N4
\comp|Mux1~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \comp|Mux1~1_combout\ = (\DataB[0]~input_o\ & (\DataA[0]~input_o\ & (\DataA[31]~input_o\ $ (!\DataB[31]~input_o\)))) # (!\DataB[0]~input_o\ & (!\DataA[0]~input_o\ & (\DataA[31]~input_o\ $ (!\DataB[31]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001000000001001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DataB[0]~input_o\,
	datab => \DataA[0]~input_o\,
	datac => \DataA[31]~input_o\,
	datad => \DataB[31]~input_o\,
	combout => \comp|Mux1~1_combout\);

-- Location: LCCOMB_X13_Y17_N0
\comp|Mux1~24\ : cycloneiv_lcell_comb
-- Equation(s):
-- \comp|Mux1~24_combout\ = (\DataB[6]~input_o\ & (\DataA[6]~input_o\ & (\DataA[5]~input_o\ $ (!\DataB[5]~input_o\)))) # (!\DataB[6]~input_o\ & (!\DataA[6]~input_o\ & (\DataA[5]~input_o\ $ (!\DataB[5]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010000100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DataB[6]~input_o\,
	datab => \DataA[5]~input_o\,
	datac => \DataA[6]~input_o\,
	datad => \DataB[5]~input_o\,
	combout => \comp|Mux1~24_combout\);

-- Location: LCCOMB_X13_Y18_N2
\comp|Mux1~25\ : cycloneiv_lcell_comb
-- Equation(s):
-- \comp|Mux1~25_combout\ = (\comp|Mux1~22_combout\ & (\comp|Mux1~23_combout\ & (\comp|Mux1~1_combout\ & \comp|Mux1~24_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comp|Mux1~22_combout\,
	datab => \comp|Mux1~23_combout\,
	datac => \comp|Mux1~1_combout\,
	datad => \comp|Mux1~24_combout\,
	combout => \comp|Mux1~25_combout\);

-- Location: LCCOMB_X15_Y14_N6
\comp|Mux1~29\ : cycloneiv_lcell_comb
-- Equation(s):
-- \comp|Mux1~29_combout\ = (\DataB[14]~input_o\ & (\DataA[14]~input_o\ & (\DataB[13]~input_o\ $ (!\DataA[13]~input_o\)))) # (!\DataB[14]~input_o\ & (!\DataA[14]~input_o\ & (\DataB[13]~input_o\ $ (!\DataA[13]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001000000001001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DataB[14]~input_o\,
	datab => \DataA[14]~input_o\,
	datac => \DataB[13]~input_o\,
	datad => \DataA[13]~input_o\,
	combout => \comp|Mux1~29_combout\);

-- Location: LCCOMB_X15_Y14_N0
\comp|Mux1~26\ : cycloneiv_lcell_comb
-- Equation(s):
-- \comp|Mux1~26_combout\ = (\DataA[7]~input_o\ & (\DataB[7]~input_o\ & (\DataA[8]~input_o\ $ (!\DataB[8]~input_o\)))) # (!\DataA[7]~input_o\ & (!\DataB[7]~input_o\ & (\DataA[8]~input_o\ $ (!\DataB[8]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001000000001001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DataA[7]~input_o\,
	datab => \DataB[7]~input_o\,
	datac => \DataA[8]~input_o\,
	datad => \DataB[8]~input_o\,
	combout => \comp|Mux1~26_combout\);

-- Location: LCCOMB_X15_Y14_N2
\comp|Mux1~27\ : cycloneiv_lcell_comb
-- Equation(s):
-- \comp|Mux1~27_combout\ = (\DataB[9]~input_o\ & (\DataA[9]~input_o\ & (\DataA[10]~input_o\ $ (!\DataB[10]~input_o\)))) # (!\DataB[9]~input_o\ & (!\DataA[9]~input_o\ & (\DataA[10]~input_o\ $ (!\DataB[10]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001000000001001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DataB[9]~input_o\,
	datab => \DataA[9]~input_o\,
	datac => \DataA[10]~input_o\,
	datad => \DataB[10]~input_o\,
	combout => \comp|Mux1~27_combout\);

-- Location: LCCOMB_X15_Y14_N12
\comp|Mux1~28\ : cycloneiv_lcell_comb
-- Equation(s):
-- \comp|Mux1~28_combout\ = (\DataB[11]~input_o\ & (\DataA[11]~input_o\ & (\DataA[12]~input_o\ $ (!\DataB[12]~input_o\)))) # (!\DataB[11]~input_o\ & (!\DataA[11]~input_o\ & (\DataA[12]~input_o\ $ (!\DataB[12]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010000100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DataB[11]~input_o\,
	datab => \DataA[12]~input_o\,
	datac => \DataA[11]~input_o\,
	datad => \DataB[12]~input_o\,
	combout => \comp|Mux1~28_combout\);

-- Location: LCCOMB_X15_Y14_N16
\comp|Mux1~30\ : cycloneiv_lcell_comb
-- Equation(s):
-- \comp|Mux1~30_combout\ = (\comp|Mux1~29_combout\ & (\comp|Mux1~26_combout\ & (\comp|Mux1~27_combout\ & \comp|Mux1~28_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comp|Mux1~29_combout\,
	datab => \comp|Mux1~26_combout\,
	datac => \comp|Mux1~27_combout\,
	datad => \comp|Mux1~28_combout\,
	combout => \comp|Mux1~30_combout\);

-- Location: LCCOMB_X16_Y19_N12
\comp|Mux1~38\ : cycloneiv_lcell_comb
-- Equation(s):
-- \comp|Mux1~38_combout\ = (\DataB[27]~input_o\ & (\DataA[27]~input_o\ & (\DataA[28]~input_o\ $ (!\DataB[28]~input_o\)))) # (!\DataB[27]~input_o\ & (!\DataA[27]~input_o\ & (\DataA[28]~input_o\ $ (!\DataB[28]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001000000001001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DataB[27]~input_o\,
	datab => \DataA[27]~input_o\,
	datac => \DataA[28]~input_o\,
	datad => \DataB[28]~input_o\,
	combout => \comp|Mux1~38_combout\);

-- Location: LCCOMB_X16_Y19_N2
\comp|Mux1~37\ : cycloneiv_lcell_comb
-- Equation(s):
-- \comp|Mux1~37_combout\ = (\DataA[26]~input_o\ & (\DataB[26]~input_o\ & (\DataA[25]~input_o\ $ (!\DataB[25]~input_o\)))) # (!\DataA[26]~input_o\ & (!\DataB[26]~input_o\ & (\DataA[25]~input_o\ $ (!\DataB[25]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010000100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DataA[26]~input_o\,
	datab => \DataA[25]~input_o\,
	datac => \DataB[26]~input_o\,
	datad => \DataB[25]~input_o\,
	combout => \comp|Mux1~37_combout\);

-- Location: LCCOMB_X16_Y19_N6
\comp|Mux1~39\ : cycloneiv_lcell_comb
-- Equation(s):
-- \comp|Mux1~39_combout\ = (\DataB[29]~input_o\ & (\DataA[29]~input_o\ & (\DataA[30]~input_o\ $ (!\DataB[30]~input_o\)))) # (!\DataB[29]~input_o\ & (!\DataA[29]~input_o\ & (\DataA[30]~input_o\ $ (!\DataB[30]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001000000001001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DataB[29]~input_o\,
	datab => \DataA[29]~input_o\,
	datac => \DataA[30]~input_o\,
	datad => \DataB[30]~input_o\,
	combout => \comp|Mux1~39_combout\);

-- Location: LCCOMB_X16_Y19_N0
\comp|Mux1~36\ : cycloneiv_lcell_comb
-- Equation(s):
-- \comp|Mux1~36_combout\ = (\DataB[24]~input_o\ & (\DataA[24]~input_o\ & (\DataB[23]~input_o\ $ (!\DataA[23]~input_o\)))) # (!\DataB[24]~input_o\ & (!\DataA[24]~input_o\ & (\DataB[23]~input_o\ $ (!\DataA[23]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001001000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DataB[24]~input_o\,
	datab => \DataB[23]~input_o\,
	datac => \DataA[23]~input_o\,
	datad => \DataA[24]~input_o\,
	combout => \comp|Mux1~36_combout\);

-- Location: LCCOMB_X16_Y19_N8
\comp|Mux1~40\ : cycloneiv_lcell_comb
-- Equation(s):
-- \comp|Mux1~40_combout\ = (\comp|Mux1~38_combout\ & (\comp|Mux1~37_combout\ & (\comp|Mux1~39_combout\ & \comp|Mux1~36_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comp|Mux1~38_combout\,
	datab => \comp|Mux1~37_combout\,
	datac => \comp|Mux1~39_combout\,
	datad => \comp|Mux1~36_combout\,
	combout => \comp|Mux1~40_combout\);

-- Location: LCCOMB_X13_Y18_N12
\comp|Mux1~41\ : cycloneiv_lcell_comb
-- Equation(s):
-- \comp|Mux1~41_combout\ = (\comp|Mux1~35_combout\ & (\comp|Mux1~25_combout\ & (\comp|Mux1~30_combout\ & \comp|Mux1~40_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comp|Mux1~35_combout\,
	datab => \comp|Mux1~25_combout\,
	datac => \comp|Mux1~30_combout\,
	datad => \comp|Mux1~40_combout\,
	combout => \comp|Mux1~41_combout\);

-- Location: LCCOMB_X13_Y18_N18
\comp|Mux1~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \comp|Mux1~0_combout\ = (\DataA[31]~input_o\ & (\comp|comp2|A1[31]~62_combout\ $ (!\comp|comp2|B1[31]~62_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \comp|comp2|A1[31]~62_combout\,
	datac => \DataA[31]~input_o\,
	datad => \comp|comp2|B1[31]~62_combout\,
	combout => \comp|Mux1~0_combout\);

-- Location: LCCOMB_X15_Y18_N12
\comp|Mux1~18\ : cycloneiv_lcell_comb
-- Equation(s):
-- \comp|Mux1~18_combout\ = (\comp|comp2|A1[28]~56_combout\ & (\comp|comp2|B1[28]~56_combout\ & (\comp|comp2|B1[27]~54_combout\ $ (!\comp|comp2|A1[27]~54_combout\)))) # (!\comp|comp2|A1[28]~56_combout\ & (!\comp|comp2|B1[28]~56_combout\ & 
-- (\comp|comp2|B1[27]~54_combout\ $ (!\comp|comp2|A1[27]~54_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001001000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comp|comp2|A1[28]~56_combout\,
	datab => \comp|comp2|B1[27]~54_combout\,
	datac => \comp|comp2|A1[27]~54_combout\,
	datad => \comp|comp2|B1[28]~56_combout\,
	combout => \comp|Mux1~18_combout\);

-- Location: LCCOMB_X15_Y18_N2
\comp|Mux1~17\ : cycloneiv_lcell_comb
-- Equation(s):
-- \comp|Mux1~17_combout\ = (\comp|comp2|A1[26]~52_combout\ & (\comp|comp2|B1[26]~52_combout\ & (\comp|comp2|B1[25]~50_combout\ $ (!\comp|comp2|A1[25]~50_combout\)))) # (!\comp|comp2|A1[26]~52_combout\ & (!\comp|comp2|B1[26]~52_combout\ & 
-- (\comp|comp2|B1[25]~50_combout\ $ (!\comp|comp2|A1[25]~50_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010000100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comp|comp2|A1[26]~52_combout\,
	datab => \comp|comp2|B1[25]~50_combout\,
	datac => \comp|comp2|B1[26]~52_combout\,
	datad => \comp|comp2|A1[25]~50_combout\,
	combout => \comp|Mux1~17_combout\);

-- Location: LCCOMB_X15_Y18_N30
\comp|Mux1~19\ : cycloneiv_lcell_comb
-- Equation(s):
-- \comp|Mux1~19_combout\ = (\comp|comp2|B1[29]~58_combout\ & (\comp|comp2|A1[29]~58_combout\ & (\comp|comp2|A1[30]~60_combout\ $ (!\comp|comp2|B1[30]~60_combout\)))) # (!\comp|comp2|B1[29]~58_combout\ & (!\comp|comp2|A1[29]~58_combout\ & 
-- (\comp|comp2|A1[30]~60_combout\ $ (!\comp|comp2|B1[30]~60_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010000100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comp|comp2|B1[29]~58_combout\,
	datab => \comp|comp2|A1[30]~60_combout\,
	datac => \comp|comp2|A1[29]~58_combout\,
	datad => \comp|comp2|B1[30]~60_combout\,
	combout => \comp|Mux1~19_combout\);

-- Location: LCCOMB_X15_Y18_N0
\comp|Mux1~16\ : cycloneiv_lcell_comb
-- Equation(s):
-- \comp|Mux1~16_combout\ = (\comp|comp2|B1[23]~46_combout\ & (\comp|comp2|A1[23]~46_combout\ & (\comp|comp2|B1[24]~48_combout\ $ (!\comp|comp2|A1[24]~48_combout\)))) # (!\comp|comp2|B1[23]~46_combout\ & (!\comp|comp2|A1[23]~46_combout\ & 
-- (\comp|comp2|B1[24]~48_combout\ $ (!\comp|comp2|A1[24]~48_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001001000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comp|comp2|B1[23]~46_combout\,
	datab => \comp|comp2|B1[24]~48_combout\,
	datac => \comp|comp2|A1[24]~48_combout\,
	datad => \comp|comp2|A1[23]~46_combout\,
	combout => \comp|Mux1~16_combout\);

-- Location: LCCOMB_X15_Y18_N24
\comp|Mux1~20\ : cycloneiv_lcell_comb
-- Equation(s):
-- \comp|Mux1~20_combout\ = (\comp|Mux1~18_combout\ & (\comp|Mux1~17_combout\ & (\comp|Mux1~19_combout\ & \comp|Mux1~16_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comp|Mux1~18_combout\,
	datab => \comp|Mux1~17_combout\,
	datac => \comp|Mux1~19_combout\,
	datad => \comp|Mux1~16_combout\,
	combout => \comp|Mux1~20_combout\);

-- Location: LCCOMB_X13_Y18_N10
\comp|Mux1~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \comp|Mux1~4_combout\ = (\comp|comp2|A1[5]~10_combout\ & (\comp|comp2|B1[5]~10_combout\ & (\comp|comp2|B1[6]~12_combout\ $ (!\comp|comp2|A1[6]~12_combout\)))) # (!\comp|comp2|A1[5]~10_combout\ & (!\comp|comp2|B1[5]~10_combout\ & 
-- (\comp|comp2|B1[6]~12_combout\ $ (!\comp|comp2|A1[6]~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010000100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comp|comp2|A1[5]~10_combout\,
	datab => \comp|comp2|B1[6]~12_combout\,
	datac => \comp|comp2|B1[5]~10_combout\,
	datad => \comp|comp2|A1[6]~12_combout\,
	combout => \comp|Mux1~4_combout\);

-- Location: LCCOMB_X13_Y18_N14
\comp|Mux1~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \comp|Mux1~2_combout\ = (\comp|comp2|A1[2]~4_combout\ & (\comp|comp2|B1[2]~4_combout\ & (\comp|comp2|B1[1]~2_combout\ $ (!\comp|comp2|A1[1]~2_combout\)))) # (!\comp|comp2|A1[2]~4_combout\ & (!\comp|comp2|B1[2]~4_combout\ & (\comp|comp2|B1[1]~2_combout\ $ 
-- (!\comp|comp2|A1[1]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001000000001001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comp|comp2|A1[2]~4_combout\,
	datab => \comp|comp2|B1[2]~4_combout\,
	datac => \comp|comp2|B1[1]~2_combout\,
	datad => \comp|comp2|A1[1]~2_combout\,
	combout => \comp|Mux1~2_combout\);

-- Location: LCCOMB_X13_Y18_N0
\comp|Mux1~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \comp|Mux1~3_combout\ = (\comp|comp2|A1[3]~6_combout\ & (\comp|comp2|B1[3]~6_combout\ & (\comp|comp2|B1[4]~8_combout\ $ (!\comp|comp2|A1[4]~8_combout\)))) # (!\comp|comp2|A1[3]~6_combout\ & (!\comp|comp2|B1[3]~6_combout\ & (\comp|comp2|B1[4]~8_combout\ $ 
-- (!\comp|comp2|A1[4]~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001001000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comp|comp2|A1[3]~6_combout\,
	datab => \comp|comp2|B1[4]~8_combout\,
	datac => \comp|comp2|A1[4]~8_combout\,
	datad => \comp|comp2|B1[3]~6_combout\,
	combout => \comp|Mux1~3_combout\);

-- Location: LCCOMB_X13_Y18_N20
\comp|Mux1~5\ : cycloneiv_lcell_comb
-- Equation(s):
-- \comp|Mux1~5_combout\ = (\comp|Mux1~4_combout\ & (\comp|Mux1~1_combout\ & (\comp|Mux1~2_combout\ & \comp|Mux1~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comp|Mux1~4_combout\,
	datab => \comp|Mux1~1_combout\,
	datac => \comp|Mux1~2_combout\,
	datad => \comp|Mux1~3_combout\,
	combout => \comp|Mux1~5_combout\);

-- Location: LCCOMB_X13_Y19_N6
\comp|Mux1~14\ : cycloneiv_lcell_comb
-- Equation(s):
-- \comp|Mux1~14_combout\ = (\comp|comp2|B1[21]~42_combout\ & (\comp|comp2|A1[21]~42_combout\ & (\comp|comp2|A1[22]~44_combout\ $ (!\comp|comp2|B1[22]~44_combout\)))) # (!\comp|comp2|B1[21]~42_combout\ & (!\comp|comp2|A1[21]~42_combout\ & 
-- (\comp|comp2|A1[22]~44_combout\ $ (!\comp|comp2|B1[22]~44_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001001000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comp|comp2|B1[21]~42_combout\,
	datab => \comp|comp2|A1[22]~44_combout\,
	datac => \comp|comp2|B1[22]~44_combout\,
	datad => \comp|comp2|A1[21]~42_combout\,
	combout => \comp|Mux1~14_combout\);

-- Location: LCCOMB_X13_Y19_N0
\comp|Mux1~11\ : cycloneiv_lcell_comb
-- Equation(s):
-- \comp|Mux1~11_combout\ = (\comp|comp2|B1[15]~30_combout\ & (\comp|comp2|A1[15]~30_combout\ & (\comp|comp2|A1[16]~32_combout\ $ (!\comp|comp2|B1[16]~32_combout\)))) # (!\comp|comp2|B1[15]~30_combout\ & (!\comp|comp2|A1[15]~30_combout\ & 
-- (\comp|comp2|A1[16]~32_combout\ $ (!\comp|comp2|B1[16]~32_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010000100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comp|comp2|B1[15]~30_combout\,
	datab => \comp|comp2|A1[16]~32_combout\,
	datac => \comp|comp2|A1[15]~30_combout\,
	datad => \comp|comp2|B1[16]~32_combout\,
	combout => \comp|Mux1~11_combout\);

-- Location: LCCOMB_X13_Y19_N28
\comp|Mux1~13\ : cycloneiv_lcell_comb
-- Equation(s):
-- \comp|Mux1~13_combout\ = (\comp|comp2|A1[20]~40_combout\ & (\comp|comp2|B1[20]~40_combout\ & (\comp|comp2|B1[19]~38_combout\ $ (!\comp|comp2|A1[19]~38_combout\)))) # (!\comp|comp2|A1[20]~40_combout\ & (!\comp|comp2|B1[20]~40_combout\ & 
-- (\comp|comp2|B1[19]~38_combout\ $ (!\comp|comp2|A1[19]~38_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010000100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comp|comp2|A1[20]~40_combout\,
	datab => \comp|comp2|B1[19]~38_combout\,
	datac => \comp|comp2|B1[20]~40_combout\,
	datad => \comp|comp2|A1[19]~38_combout\,
	combout => \comp|Mux1~13_combout\);

-- Location: LCCOMB_X13_Y19_N2
\comp|Mux1~12\ : cycloneiv_lcell_comb
-- Equation(s):
-- \comp|Mux1~12_combout\ = (\comp|comp2|B1[18]~36_combout\ & (\comp|comp2|A1[18]~36_combout\ & (\comp|comp2|B1[17]~34_combout\ $ (!\comp|comp2|A1[17]~34_combout\)))) # (!\comp|comp2|B1[18]~36_combout\ & (!\comp|comp2|A1[18]~36_combout\ & 
-- (\comp|comp2|B1[17]~34_combout\ $ (!\comp|comp2|A1[17]~34_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010000100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comp|comp2|B1[18]~36_combout\,
	datab => \comp|comp2|B1[17]~34_combout\,
	datac => \comp|comp2|A1[18]~36_combout\,
	datad => \comp|comp2|A1[17]~34_combout\,
	combout => \comp|Mux1~12_combout\);

-- Location: LCCOMB_X13_Y19_N24
\comp|Mux1~15\ : cycloneiv_lcell_comb
-- Equation(s):
-- \comp|Mux1~15_combout\ = (\comp|Mux1~14_combout\ & (\comp|Mux1~11_combout\ & (\comp|Mux1~13_combout\ & \comp|Mux1~12_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comp|Mux1~14_combout\,
	datab => \comp|Mux1~11_combout\,
	datac => \comp|Mux1~13_combout\,
	datad => \comp|Mux1~12_combout\,
	combout => \comp|Mux1~15_combout\);

-- Location: LCCOMB_X15_Y21_N12
\comp|Mux1~8\ : cycloneiv_lcell_comb
-- Equation(s):
-- \comp|Mux1~8_combout\ = (\comp|comp2|A1[12]~24_combout\ & (\comp|comp2|B1[12]~24_combout\ & (\comp|comp2|B1[11]~22_combout\ $ (!\comp|comp2|A1[11]~22_combout\)))) # (!\comp|comp2|A1[12]~24_combout\ & (!\comp|comp2|B1[12]~24_combout\ & 
-- (\comp|comp2|B1[11]~22_combout\ $ (!\comp|comp2|A1[11]~22_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001000000001001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comp|comp2|A1[12]~24_combout\,
	datab => \comp|comp2|B1[12]~24_combout\,
	datac => \comp|comp2|B1[11]~22_combout\,
	datad => \comp|comp2|A1[11]~22_combout\,
	combout => \comp|Mux1~8_combout\);

-- Location: LCCOMB_X15_Y21_N2
\comp|Mux1~7\ : cycloneiv_lcell_comb
-- Equation(s):
-- \comp|Mux1~7_combout\ = (\comp|comp2|A1[10]~20_combout\ & (\comp|comp2|B1[10]~20_combout\ & (\comp|comp2|B1[9]~18_combout\ $ (!\comp|comp2|A1[9]~18_combout\)))) # (!\comp|comp2|A1[10]~20_combout\ & (!\comp|comp2|B1[10]~20_combout\ & 
-- (\comp|comp2|B1[9]~18_combout\ $ (!\comp|comp2|A1[9]~18_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010000100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comp|comp2|A1[10]~20_combout\,
	datab => \comp|comp2|B1[9]~18_combout\,
	datac => \comp|comp2|B1[10]~20_combout\,
	datad => \comp|comp2|A1[9]~18_combout\,
	combout => \comp|Mux1~7_combout\);

-- Location: LCCOMB_X15_Y21_N30
\comp|Mux1~9\ : cycloneiv_lcell_comb
-- Equation(s):
-- \comp|Mux1~9_combout\ = (\comp|comp2|B1[14]~28_combout\ & (\comp|comp2|A1[14]~28_combout\ & (\comp|comp2|B1[13]~26_combout\ $ (!\comp|comp2|A1[13]~26_combout\)))) # (!\comp|comp2|B1[14]~28_combout\ & (!\comp|comp2|A1[14]~28_combout\ & 
-- (\comp|comp2|B1[13]~26_combout\ $ (!\comp|comp2|A1[13]~26_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010000100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comp|comp2|B1[14]~28_combout\,
	datab => \comp|comp2|B1[13]~26_combout\,
	datac => \comp|comp2|A1[14]~28_combout\,
	datad => \comp|comp2|A1[13]~26_combout\,
	combout => \comp|Mux1~9_combout\);

-- Location: LCCOMB_X15_Y21_N0
\comp|Mux1~6\ : cycloneiv_lcell_comb
-- Equation(s):
-- \comp|Mux1~6_combout\ = (\comp|comp2|B1[8]~16_combout\ & (\comp|comp2|A1[8]~16_combout\ & (\comp|comp2|B1[7]~14_combout\ $ (!\comp|comp2|A1[7]~14_combout\)))) # (!\comp|comp2|B1[8]~16_combout\ & (!\comp|comp2|A1[8]~16_combout\ & 
-- (\comp|comp2|B1[7]~14_combout\ $ (!\comp|comp2|A1[7]~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001000000001001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comp|comp2|B1[8]~16_combout\,
	datab => \comp|comp2|A1[8]~16_combout\,
	datac => \comp|comp2|B1[7]~14_combout\,
	datad => \comp|comp2|A1[7]~14_combout\,
	combout => \comp|Mux1~6_combout\);

-- Location: LCCOMB_X15_Y21_N16
\comp|Mux1~10\ : cycloneiv_lcell_comb
-- Equation(s):
-- \comp|Mux1~10_combout\ = (\comp|Mux1~8_combout\ & (\comp|Mux1~7_combout\ & (\comp|Mux1~9_combout\ & \comp|Mux1~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comp|Mux1~8_combout\,
	datab => \comp|Mux1~7_combout\,
	datac => \comp|Mux1~9_combout\,
	datad => \comp|Mux1~6_combout\,
	combout => \comp|Mux1~10_combout\);

-- Location: LCCOMB_X13_Y18_N6
\comp|Mux1~21\ : cycloneiv_lcell_comb
-- Equation(s):
-- \comp|Mux1~21_combout\ = (\comp|Mux1~20_combout\ & (\comp|Mux1~5_combout\ & (\comp|Mux1~15_combout\ & \comp|Mux1~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comp|Mux1~20_combout\,
	datab => \comp|Mux1~5_combout\,
	datac => \comp|Mux1~15_combout\,
	datad => \comp|Mux1~10_combout\,
	combout => \comp|Mux1~21_combout\);

-- Location: LCCOMB_X13_Y18_N22
\comp|Mux1~42\ : cycloneiv_lcell_comb
-- Equation(s):
-- \comp|Mux1~42_combout\ = (\comp|Mux1~41_combout\ & (((\comp|Mux1~0_combout\ & \comp|Mux1~21_combout\)) # (!\DataA[31]~input_o\))) # (!\comp|Mux1~41_combout\ & (\comp|Mux1~0_combout\ & ((\comp|Mux1~21_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comp|Mux1~41_combout\,
	datab => \comp|Mux1~0_combout\,
	datac => \DataA[31]~input_o\,
	datad => \comp|Mux1~21_combout\,
	combout => \comp|Mux1~42_combout\);

ww_BrUn <= \BrUn~output_o\;

ww_BrLT <= \BrLT~output_o\;

ww_BrEq <= \BrEq~output_o\;
END structure;


