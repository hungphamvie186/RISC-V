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

-- DATE "04/16/2024 11:47:27"

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

ENTITY 	ALU IS
    PORT (
	funct7 : IN std_logic;
	alu_op : IN std_logic_vector(2 DOWNTO 0);
	operand_a : IN std_logic_vector(31 DOWNTO 0);
	operand_b : IN std_logic_vector(31 DOWNTO 0);
	alu_data : BUFFER std_logic_vector(31 DOWNTO 0)
	);
END ALU;

-- Design Ports Information
-- alu_data[0]	=>  Location: PIN_R12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- alu_data[1]	=>  Location: PIN_B10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- alu_data[2]	=>  Location: PIN_D10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- alu_data[3]	=>  Location: PIN_T11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- alu_data[4]	=>  Location: PIN_U12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- alu_data[5]	=>  Location: PIN_C10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- alu_data[6]	=>  Location: PIN_C11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- alu_data[7]	=>  Location: PIN_A10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- alu_data[8]	=>  Location: PIN_A8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- alu_data[9]	=>  Location: PIN_N15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- alu_data[10]	=>  Location: PIN_D8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- alu_data[11]	=>  Location: PIN_D9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- alu_data[12]	=>  Location: PIN_A13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- alu_data[13]	=>  Location: PIN_R16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- alu_data[14]	=>  Location: PIN_C8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- alu_data[15]	=>  Location: PIN_A16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- alu_data[16]	=>  Location: PIN_T12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- alu_data[17]	=>  Location: PIN_C9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- alu_data[18]	=>  Location: PIN_R13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- alu_data[19]	=>  Location: PIN_E15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- alu_data[20]	=>  Location: PIN_D11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- alu_data[21]	=>  Location: PIN_G16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- alu_data[22]	=>  Location: PIN_D12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- alu_data[23]	=>  Location: PIN_E10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- alu_data[24]	=>  Location: PIN_K15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- alu_data[25]	=>  Location: PIN_B9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- alu_data[26]	=>  Location: PIN_P16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- alu_data[27]	=>  Location: PIN_B7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- alu_data[28]	=>  Location: PIN_A11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- alu_data[29]	=>  Location: PIN_C17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- alu_data[30]	=>  Location: PIN_N16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- alu_data[31]	=>  Location: PIN_E16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- operand_b[0]	=>  Location: PIN_H18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- operand_a[0]	=>  Location: PIN_J18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- alu_op[1]	=>  Location: PIN_D13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- operand_a[31]	=>  Location: PIN_G17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- funct7	=>  Location: PIN_V11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- operand_b[2]	=>  Location: PIN_V12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- operand_b[3]	=>  Location: PIN_G15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- operand_b[1]	=>  Location: PIN_C12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- operand_b[4]	=>  Location: PIN_F18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- operand_a[15]	=>  Location: PIN_A17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- operand_a[13]	=>  Location: PIN_R14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- operand_a[14]	=>  Location: PIN_K16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- operand_a[12]	=>  Location: PIN_U16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- operand_a[11]	=>  Location: PIN_M16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- operand_a[9]	=>  Location: PIN_H16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- operand_a[10]	=>  Location: PIN_D14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- operand_a[8]	=>  Location: PIN_F15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- operand_a[23]	=>  Location: PIN_F17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- operand_a[21]	=>  Location: PIN_T13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- operand_a[22]	=>  Location: PIN_M18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- operand_a[20]	=>  Location: PIN_T14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- operand_a[19]	=>  Location: PIN_N17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- operand_a[17]	=>  Location: PIN_N18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- operand_a[18]	=>  Location: PIN_L15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- operand_a[16]	=>  Location: PIN_J17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- operand_a[29]	=>  Location: PIN_A15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- operand_a[28]	=>  Location: PIN_C13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- operand_a[30]	=>  Location: PIN_B15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- operand_a[27]	=>  Location: PIN_V14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- operand_a[25]	=>  Location: PIN_B13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- operand_a[26]	=>  Location: PIN_A14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- operand_a[24]	=>  Location: PIN_G18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- operand_a[1]	=>  Location: PIN_C15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- operand_a[3]	=>  Location: PIN_A18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- operand_a[2]	=>  Location: PIN_E12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- operand_a[7]	=>  Location: PIN_F16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- operand_a[6]	=>  Location: PIN_D17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- operand_a[5]	=>  Location: PIN_E18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- operand_a[4]	=>  Location: PIN_C14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- alu_op[0]	=>  Location: PIN_J16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- operand_b[31]	=>  Location: PIN_P13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- operand_b[30]	=>  Location: PIN_D15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- operand_b[29]	=>  Location: PIN_L18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- operand_b[28]	=>  Location: PIN_R11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- operand_b[27]	=>  Location: PIN_P18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- operand_b[26]	=>  Location: PIN_M17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- operand_b[25]	=>  Location: PIN_V15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- operand_b[24]	=>  Location: PIN_B18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- operand_b[23]	=>  Location: PIN_U15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- operand_b[22]	=>  Location: PIN_U18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- operand_b[21]	=>  Location: PIN_C18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- operand_b[20]	=>  Location: PIN_T18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- operand_b[19]	=>  Location: PIN_T16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- operand_b[18]	=>  Location: PIN_L16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- operand_b[17]	=>  Location: PIN_V17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- operand_b[16]	=>  Location: PIN_R18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- operand_b[15]	=>  Location: PIN_V18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- operand_b[14]	=>  Location: PIN_A12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- operand_b[13]	=>  Location: PIN_B12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- operand_b[12]	=>  Location: PIN_T17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- operand_b[11]	=>  Location: PIN_R17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- operand_b[10]	=>  Location: PIN_D16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- operand_b[9]	=>  Location: PIN_P12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- operand_b[8]	=>  Location: PIN_V16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- operand_b[7]	=>  Location: PIN_A9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- operand_b[6]	=>  Location: PIN_B16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- operand_b[5]	=>  Location: PIN_C16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- alu_op[2]	=>  Location: PIN_D18,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF ALU IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_funct7 : std_logic;
SIGNAL ww_alu_op : std_logic_vector(2 DOWNTO 0);
SIGNAL ww_operand_a : std_logic_vector(31 DOWNTO 0);
SIGNAL ww_operand_b : std_logic_vector(31 DOWNTO 0);
SIGNAL ww_alu_data : std_logic_vector(31 DOWNTO 0);
SIGNAL \alu_data[0]~output_o\ : std_logic;
SIGNAL \alu_data[1]~output_o\ : std_logic;
SIGNAL \alu_data[2]~output_o\ : std_logic;
SIGNAL \alu_data[3]~output_o\ : std_logic;
SIGNAL \alu_data[4]~output_o\ : std_logic;
SIGNAL \alu_data[5]~output_o\ : std_logic;
SIGNAL \alu_data[6]~output_o\ : std_logic;
SIGNAL \alu_data[7]~output_o\ : std_logic;
SIGNAL \alu_data[8]~output_o\ : std_logic;
SIGNAL \alu_data[9]~output_o\ : std_logic;
SIGNAL \alu_data[10]~output_o\ : std_logic;
SIGNAL \alu_data[11]~output_o\ : std_logic;
SIGNAL \alu_data[12]~output_o\ : std_logic;
SIGNAL \alu_data[13]~output_o\ : std_logic;
SIGNAL \alu_data[14]~output_o\ : std_logic;
SIGNAL \alu_data[15]~output_o\ : std_logic;
SIGNAL \alu_data[16]~output_o\ : std_logic;
SIGNAL \alu_data[17]~output_o\ : std_logic;
SIGNAL \alu_data[18]~output_o\ : std_logic;
SIGNAL \alu_data[19]~output_o\ : std_logic;
SIGNAL \alu_data[20]~output_o\ : std_logic;
SIGNAL \alu_data[21]~output_o\ : std_logic;
SIGNAL \alu_data[22]~output_o\ : std_logic;
SIGNAL \alu_data[23]~output_o\ : std_logic;
SIGNAL \alu_data[24]~output_o\ : std_logic;
SIGNAL \alu_data[25]~output_o\ : std_logic;
SIGNAL \alu_data[26]~output_o\ : std_logic;
SIGNAL \alu_data[27]~output_o\ : std_logic;
SIGNAL \alu_data[28]~output_o\ : std_logic;
SIGNAL \alu_data[29]~output_o\ : std_logic;
SIGNAL \alu_data[30]~output_o\ : std_logic;
SIGNAL \alu_data[31]~output_o\ : std_logic;
SIGNAL \funct7~input_o\ : std_logic;
SIGNAL \operand_a[0]~input_o\ : std_logic;
SIGNAL \operand_b[0]~input_o\ : std_logic;
SIGNAL \ALU|data_OUT|MUX_Sel|Mux31~1_combout\ : std_logic;
SIGNAL \operand_b[1]~input_o\ : std_logic;
SIGNAL \ALU|data_in|D1_in|SLL|ShiftLeft0~4_combout\ : std_logic;
SIGNAL \operand_b[3]~input_o\ : std_logic;
SIGNAL \operand_b[2]~input_o\ : std_logic;
SIGNAL \ALU|data_in|D1_in|SLL|ShiftLeft0~5_combout\ : std_logic;
SIGNAL \alu_op[0]~input_o\ : std_logic;
SIGNAL \operand_b[4]~input_o\ : std_logic;
SIGNAL \ALU|data_OUT|MUX_Sel|Mux31~2_combout\ : std_logic;
SIGNAL \operand_b[31]~input_o\ : std_logic;
SIGNAL \operand_a[31]~input_o\ : std_logic;
SIGNAL \operand_b[30]~input_o\ : std_logic;
SIGNAL \operand_a[30]~input_o\ : std_logic;
SIGNAL \operand_a[29]~input_o\ : std_logic;
SIGNAL \operand_b[29]~input_o\ : std_logic;
SIGNAL \operand_a[28]~input_o\ : std_logic;
SIGNAL \operand_b[28]~input_o\ : std_logic;
SIGNAL \operand_a[27]~input_o\ : std_logic;
SIGNAL \operand_b[27]~input_o\ : std_logic;
SIGNAL \operand_b[26]~input_o\ : std_logic;
SIGNAL \operand_a[26]~input_o\ : std_logic;
SIGNAL \operand_a[25]~input_o\ : std_logic;
SIGNAL \operand_b[25]~input_o\ : std_logic;
SIGNAL \operand_b[24]~input_o\ : std_logic;
SIGNAL \operand_a[24]~input_o\ : std_logic;
SIGNAL \operand_a[23]~input_o\ : std_logic;
SIGNAL \operand_b[23]~input_o\ : std_logic;
SIGNAL \operand_b[22]~input_o\ : std_logic;
SIGNAL \operand_a[22]~input_o\ : std_logic;
SIGNAL \operand_a[21]~input_o\ : std_logic;
SIGNAL \operand_b[21]~input_o\ : std_logic;
SIGNAL \operand_a[20]~input_o\ : std_logic;
SIGNAL \operand_b[20]~input_o\ : std_logic;
SIGNAL \operand_a[19]~input_o\ : std_logic;
SIGNAL \operand_b[19]~input_o\ : std_logic;
SIGNAL \operand_b[18]~input_o\ : std_logic;
SIGNAL \operand_a[18]~input_o\ : std_logic;
SIGNAL \operand_b[17]~input_o\ : std_logic;
SIGNAL \operand_a[17]~input_o\ : std_logic;
SIGNAL \operand_b[16]~input_o\ : std_logic;
SIGNAL \operand_a[16]~input_o\ : std_logic;
SIGNAL \operand_a[15]~input_o\ : std_logic;
SIGNAL \operand_b[15]~input_o\ : std_logic;
SIGNAL \operand_b[14]~input_o\ : std_logic;
SIGNAL \operand_a[14]~input_o\ : std_logic;
SIGNAL \operand_b[13]~input_o\ : std_logic;
SIGNAL \operand_a[13]~input_o\ : std_logic;
SIGNAL \operand_a[12]~input_o\ : std_logic;
SIGNAL \operand_b[12]~input_o\ : std_logic;
SIGNAL \operand_b[11]~input_o\ : std_logic;
SIGNAL \operand_a[11]~input_o\ : std_logic;
SIGNAL \operand_b[10]~input_o\ : std_logic;
SIGNAL \operand_a[10]~input_o\ : std_logic;
SIGNAL \operand_b[9]~input_o\ : std_logic;
SIGNAL \operand_a[9]~input_o\ : std_logic;
SIGNAL \operand_a[8]~input_o\ : std_logic;
SIGNAL \operand_b[8]~input_o\ : std_logic;
SIGNAL \operand_b[7]~input_o\ : std_logic;
SIGNAL \operand_a[7]~input_o\ : std_logic;
SIGNAL \operand_a[6]~input_o\ : std_logic;
SIGNAL \operand_b[6]~input_o\ : std_logic;
SIGNAL \operand_b[5]~input_o\ : std_logic;
SIGNAL \operand_a[5]~input_o\ : std_logic;
SIGNAL \operand_a[4]~input_o\ : std_logic;
SIGNAL \operand_a[3]~input_o\ : std_logic;
SIGNAL \operand_a[2]~input_o\ : std_logic;
SIGNAL \operand_a[1]~input_o\ : std_logic;
SIGNAL \ALU|data_in|D2_in|LT_inst|LessThan0~1_cout\ : std_logic;
SIGNAL \ALU|data_in|D2_in|LT_inst|LessThan0~3_cout\ : std_logic;
SIGNAL \ALU|data_in|D2_in|LT_inst|LessThan0~5_cout\ : std_logic;
SIGNAL \ALU|data_in|D2_in|LT_inst|LessThan0~7_cout\ : std_logic;
SIGNAL \ALU|data_in|D2_in|LT_inst|LessThan0~9_cout\ : std_logic;
SIGNAL \ALU|data_in|D2_in|LT_inst|LessThan0~11_cout\ : std_logic;
SIGNAL \ALU|data_in|D2_in|LT_inst|LessThan0~13_cout\ : std_logic;
SIGNAL \ALU|data_in|D2_in|LT_inst|LessThan0~15_cout\ : std_logic;
SIGNAL \ALU|data_in|D2_in|LT_inst|LessThan0~17_cout\ : std_logic;
SIGNAL \ALU|data_in|D2_in|LT_inst|LessThan0~19_cout\ : std_logic;
SIGNAL \ALU|data_in|D2_in|LT_inst|LessThan0~21_cout\ : std_logic;
SIGNAL \ALU|data_in|D2_in|LT_inst|LessThan0~23_cout\ : std_logic;
SIGNAL \ALU|data_in|D2_in|LT_inst|LessThan0~25_cout\ : std_logic;
SIGNAL \ALU|data_in|D2_in|LT_inst|LessThan0~27_cout\ : std_logic;
SIGNAL \ALU|data_in|D2_in|LT_inst|LessThan0~29_cout\ : std_logic;
SIGNAL \ALU|data_in|D2_in|LT_inst|LessThan0~31_cout\ : std_logic;
SIGNAL \ALU|data_in|D2_in|LT_inst|LessThan0~33_cout\ : std_logic;
SIGNAL \ALU|data_in|D2_in|LT_inst|LessThan0~35_cout\ : std_logic;
SIGNAL \ALU|data_in|D2_in|LT_inst|LessThan0~37_cout\ : std_logic;
SIGNAL \ALU|data_in|D2_in|LT_inst|LessThan0~39_cout\ : std_logic;
SIGNAL \ALU|data_in|D2_in|LT_inst|LessThan0~41_cout\ : std_logic;
SIGNAL \ALU|data_in|D2_in|LT_inst|LessThan0~43_cout\ : std_logic;
SIGNAL \ALU|data_in|D2_in|LT_inst|LessThan0~45_cout\ : std_logic;
SIGNAL \ALU|data_in|D2_in|LT_inst|LessThan0~47_cout\ : std_logic;
SIGNAL \ALU|data_in|D2_in|LT_inst|LessThan0~49_cout\ : std_logic;
SIGNAL \ALU|data_in|D2_in|LT_inst|LessThan0~51_cout\ : std_logic;
SIGNAL \ALU|data_in|D2_in|LT_inst|LessThan0~53_cout\ : std_logic;
SIGNAL \ALU|data_in|D2_in|LT_inst|LessThan0~55_cout\ : std_logic;
SIGNAL \ALU|data_in|D2_in|LT_inst|LessThan0~57_cout\ : std_logic;
SIGNAL \ALU|data_in|D2_in|LT_inst|LessThan0~59_cout\ : std_logic;
SIGNAL \ALU|data_in|D2_in|LT_inst|LessThan0~61_cout\ : std_logic;
SIGNAL \ALU|data_in|D2_in|LT_inst|LessThan0~62_combout\ : std_logic;
SIGNAL \ALU|data_OUT|MUX_Sel|Mux31~0_combout\ : std_logic;
SIGNAL \alu_op[1]~input_o\ : std_logic;
SIGNAL \ALU|data_OUT|MUX_Sel|Mux31~3_combout\ : std_logic;
SIGNAL \alu_op[2]~input_o\ : std_logic;
SIGNAL \ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~5_combout\ : std_logic;
SIGNAL \ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~4_combout\ : std_logic;
SIGNAL \ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~6_combout\ : std_logic;
SIGNAL \ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~8_combout\ : std_logic;
SIGNAL \ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~7_combout\ : std_logic;
SIGNAL \ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~9_combout\ : std_logic;
SIGNAL \ALU|data_in|D5_in|Sel_SR|Data_out|MUX_Sel|Out[0]~19_combout\ : std_logic;
SIGNAL \ALU|data_in|D5_in|Sel_SR|Data_out|MUX_Sel|Out[0]~20_combout\ : std_logic;
SIGNAL \ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~14_combout\ : std_logic;
SIGNAL \ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~13_combout\ : std_logic;
SIGNAL \ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~15_combout\ : std_logic;
SIGNAL \ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~11_combout\ : std_logic;
SIGNAL \ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~10_combout\ : std_logic;
SIGNAL \ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~12_combout\ : std_logic;
SIGNAL \ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~16_combout\ : std_logic;
SIGNAL \ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~20_combout\ : std_logic;
SIGNAL \ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~21_combout\ : std_logic;
SIGNAL \ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~22_combout\ : std_logic;
SIGNAL \ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~18_combout\ : std_logic;
SIGNAL \ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~17_combout\ : std_logic;
SIGNAL \ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~19_combout\ : std_logic;
SIGNAL \ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~23_combout\ : std_logic;
SIGNAL \ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~24_combout\ : std_logic;
SIGNAL \ALU|data_in|D5_in|Sel_SR|SRA_out|SRA1|Add1~1_combout\ : std_logic;
SIGNAL \ALU|data_in|D5_in|Sel_SR|SRA_out|SRA1|Add1~0_combout\ : std_logic;
SIGNAL \ALU|data_in|D5_in|Sel_SR|Data_out|MUX_Sel|Out[0]~16_combout\ : std_logic;
SIGNAL \ALU|data_in|D5_in|Sel_SR|Data_out|MUX_Sel|Out[1]~17_combout\ : std_logic;
SIGNAL \ALU|data_in|D5_in|Sel_SR|Data_out|MUX_Sel|Out[0]~18_combout\ : std_logic;
SIGNAL \ALU|data_in|D5_in|Sel_SR|Data_out|MUX_Sel|Out[0]~21_combout\ : std_logic;
SIGNAL \ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~25_combout\ : std_logic;
SIGNAL \ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~27_combout\ : std_logic;
SIGNAL \ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~26_combout\ : std_logic;
SIGNAL \ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~28_combout\ : std_logic;
SIGNAL \ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~29_combout\ : std_logic;
SIGNAL \ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~30_combout\ : std_logic;
SIGNAL \ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~31_combout\ : std_logic;
SIGNAL \ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~32_combout\ : std_logic;
SIGNAL \ALU|data_in|D5_in|Sel_SR|Data_out|MUX_Sel|Out[0]~88_combout\ : std_logic;
SIGNAL \ALU|data_OUT|MUX_Sel|Mux31~5_combout\ : std_logic;
SIGNAL \ALU|data_OUT|MUX_Sel|Mux31~6_combout\ : std_logic;
SIGNAL \ALU|data_OUT|MUX_Sel|Mux31~4_combout\ : std_logic;
SIGNAL \ALU|data_OUT|MUX_Sel|Mux30~1_combout\ : std_logic;
SIGNAL \ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~38_combout\ : std_logic;
SIGNAL \ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~39_combout\ : std_logic;
SIGNAL \ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~40_combout\ : std_logic;
SIGNAL \ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~41_combout\ : std_logic;
SIGNAL \ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~42_combout\ : std_logic;
SIGNAL \ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~43_combout\ : std_logic;
SIGNAL \ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~44_combout\ : std_logic;
SIGNAL \ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~45_combout\ : std_logic;
SIGNAL \ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~46_combout\ : std_logic;
SIGNAL \ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~47_combout\ : std_logic;
SIGNAL \ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~48_combout\ : std_logic;
SIGNAL \ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~34_combout\ : std_logic;
SIGNAL \ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~35_combout\ : std_logic;
SIGNAL \ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~36_combout\ : std_logic;
SIGNAL \ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~37_combout\ : std_logic;
SIGNAL \ALU|data_in|D5_in|Sel_SR|Data_out|MUX_Sel|Out[1]~24_combout\ : std_logic;
SIGNAL \ALU|data_in|D5_in|Sel_SR|Data_out|MUX_Sel|Out[3]~22_combout\ : std_logic;
SIGNAL \ALU|data_in|D5_in|Sel_SR|Data_out|MUX_Sel|Out[1]~23_combout\ : std_logic;
SIGNAL \ALU|data_in|D5_in|Sel_SR|Data_out|MUX_Sel|Out[1]~25_combout\ : std_logic;
SIGNAL \ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~49_combout\ : std_logic;
SIGNAL \ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~50_combout\ : std_logic;
SIGNAL \ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~51_combout\ : std_logic;
SIGNAL \ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~52_combout\ : std_logic;
SIGNAL \ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~53_combout\ : std_logic;
SIGNAL \ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~54_combout\ : std_logic;
SIGNAL \ALU|data_in|D5_in|Sel_SR|Data_out|MUX_Sel|Out[1]~89_combout\ : std_logic;
SIGNAL \ALU|data_OUT|MUX_Sel|Mux30~2_combout\ : std_logic;
SIGNAL \ALU|data_in|D1_in|SLL|ShiftLeft0~6_combout\ : std_logic;
SIGNAL \ALU|data_in|D1_in|SLL|ShiftLeft0~96_combout\ : std_logic;
SIGNAL \ALU|data_OUT|MUX_Sel|Mux16~0_combout\ : std_logic;
SIGNAL \ALU|data_OUT|MUX_Sel|Mux30~0_combout\ : std_logic;
SIGNAL \ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~61_combout\ : std_logic;
SIGNAL \ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~62_combout\ : std_logic;
SIGNAL \ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~59_combout\ : std_logic;
SIGNAL \ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~60_combout\ : std_logic;
SIGNAL \ALU|data_in|D5_in|Sel_SR|Data_out|MUX_Sel|Out[10]~27_combout\ : std_logic;
SIGNAL \ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~56_combout\ : std_logic;
SIGNAL \ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~57_combout\ : std_logic;
SIGNAL \ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~58_combout\ : std_logic;
SIGNAL \ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~63_combout\ : std_logic;
SIGNAL \ALU|data_in|D5_in|Sel_SR|Data_out|MUX_Sel|Out[2]~26_combout\ : std_logic;
SIGNAL \ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~64_combout\ : std_logic;
SIGNAL \ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~55_combout\ : std_logic;
SIGNAL \ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~65_combout\ : std_logic;
SIGNAL \ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~66_combout\ : std_logic;
SIGNAL \ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~67_combout\ : std_logic;
SIGNAL \ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~68_combout\ : std_logic;
SIGNAL \ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~71_combout\ : std_logic;
SIGNAL \ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~72_combout\ : std_logic;
SIGNAL \ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~69_combout\ : std_logic;
SIGNAL \ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~70_combout\ : std_logic;
SIGNAL \ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~73_combout\ : std_logic;
SIGNAL \ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~74_combout\ : std_logic;
SIGNAL \ALU|data_in|D5_in|Sel_SR|Data_out|MUX_Sel|Out[2]~28_combout\ : std_logic;
SIGNAL \ALU|data_OUT|MUX_Sel|Mux29~1_combout\ : std_logic;
SIGNAL \ALU|data_OUT|MUX_Sel|Mux29~2_combout\ : std_logic;
SIGNAL \ALU|data_in|D1_in|SLL|ShiftLeft0~7_combout\ : std_logic;
SIGNAL \ALU|data_in|D1_in|SLL|ShiftLeft0~8_combout\ : std_logic;
SIGNAL \ALU|data_in|D1_in|SLL|ShiftLeft0~97_combout\ : std_logic;
SIGNAL \ALU|data_OUT|MUX_Sel|Mux29~0_combout\ : std_logic;
SIGNAL \ALU|data_OUT|MUX_Sel|Mux28~1_combout\ : std_logic;
SIGNAL \ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~78_combout\ : std_logic;
SIGNAL \ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~79_combout\ : std_logic;
SIGNAL \ALU|data_in|D5_in|Sel_SR|Data_out|MUX_Sel|Out[11]~30_combout\ : std_logic;
SIGNAL \ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~75_combout\ : std_logic;
SIGNAL \ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~76_combout\ : std_logic;
SIGNAL \ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~77_combout\ : std_logic;
SIGNAL \ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~80_combout\ : std_logic;
SIGNAL \ALU|data_in|D5_in|Sel_SR|Data_out|MUX_Sel|Out[3]~29_combout\ : std_logic;
SIGNAL \ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~84_combout\ : std_logic;
SIGNAL \ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~83_combout\ : std_logic;
SIGNAL \ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~85_combout\ : std_logic;
SIGNAL \ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~81_combout\ : std_logic;
SIGNAL \ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~82_combout\ : std_logic;
SIGNAL \ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~86_combout\ : std_logic;
SIGNAL \ALU|data_in|D5_in|Sel_SR|Data_out|MUX_Sel|Out[3]~31_combout\ : std_logic;
SIGNAL \ALU|data_OUT|MUX_Sel|Mux28~2_combout\ : std_logic;
SIGNAL \ALU|data_in|D1_in|SLL|ShiftLeft0~9_combout\ : std_logic;
SIGNAL \ALU|data_in|D1_in|SLL|ShiftLeft0~10_combout\ : std_logic;
SIGNAL \ALU|data_OUT|MUX_Sel|Mux28~0_combout\ : std_logic;
SIGNAL \ALU|data_in|D5_in|Sel_SR|Data_out|MUX_Sel|Out[5]~32_combout\ : std_logic;
SIGNAL \ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~87_combout\ : std_logic;
SIGNAL \ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~33_combout\ : std_logic;
SIGNAL \ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~88_combout\ : std_logic;
SIGNAL \ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~89_combout\ : std_logic;
SIGNAL \ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~90_combout\ : std_logic;
SIGNAL \ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~91_combout\ : std_logic;
SIGNAL \ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~92_combout\ : std_logic;
SIGNAL \ALU|data_in|D5_in|Sel_SR|Data_out|MUX_Sel|Out[0]~90_combout\ : std_logic;
SIGNAL \ALU|data_in|D5_in|Sel_SR|Data_out|MUX_Sel|Out[4]~33_combout\ : std_logic;
SIGNAL \ALU|data_OUT|MUX_Sel|Mux27~1_combout\ : std_logic;
SIGNAL \ALU|data_OUT|MUX_Sel|Mux27~2_combout\ : std_logic;
SIGNAL \ALU|data_in|D1_in|SLL|ShiftLeft0~11_combout\ : std_logic;
SIGNAL \ALU|data_in|D1_in|SLL|ShiftLeft0~12_combout\ : std_logic;
SIGNAL \ALU|data_in|D1_in|SLL|ShiftLeft0~13_combout\ : std_logic;
SIGNAL \ALU|data_in|D1_in|SLL|ShiftLeft0~14_combout\ : std_logic;
SIGNAL \ALU|data_OUT|MUX_Sel|Mux26~0_combout\ : std_logic;
SIGNAL \ALU|data_OUT|MUX_Sel|Mux24~0_combout\ : std_logic;
SIGNAL \ALU|data_OUT|MUX_Sel|Mux27~0_combout\ : std_logic;
SIGNAL \ALU|data_in|D5_in|Sel_SR|Data_out|MUX_Sel|Out[5]~34_combout\ : std_logic;
SIGNAL \ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~93_combout\ : std_logic;
SIGNAL \ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~94_combout\ : std_logic;
SIGNAL \ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~95_combout\ : std_logic;
SIGNAL \ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~96_combout\ : std_logic;
SIGNAL \ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~97_combout\ : std_logic;
SIGNAL \ALU|data_in|D5_in|Sel_SR|Data_out|MUX_Sel|Out[5]~35_combout\ : std_logic;
SIGNAL \ALU|data_OUT|MUX_Sel|Mux26~2_combout\ : std_logic;
SIGNAL \ALU|data_OUT|MUX_Sel|Mux26~3_combout\ : std_logic;
SIGNAL \ALU|data_in|D1_in|SLL|ShiftLeft0~15_combout\ : std_logic;
SIGNAL \ALU|data_in|D1_in|SLL|ShiftLeft0~16_combout\ : std_logic;
SIGNAL \ALU|data_in|D1_in|SLL|ShiftLeft0~17_combout\ : std_logic;
SIGNAL \ALU|data_OUT|MUX_Sel|Mux26~1_combout\ : std_logic;
SIGNAL \ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~100_combout\ : std_logic;
SIGNAL \ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~101_combout\ : std_logic;
SIGNAL \ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~98_combout\ : std_logic;
SIGNAL \ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~99_combout\ : std_logic;
SIGNAL \ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~102_combout\ : std_logic;
SIGNAL \ALU|data_in|D5_in|Sel_SR|Data_out|MUX_Sel|Out[6]~91_combout\ : std_logic;
SIGNAL \ALU|data_in|D5_in|Sel_SR|Data_out|MUX_Sel|Out[6]~36_combout\ : std_logic;
SIGNAL \ALU|data_OUT|MUX_Sel|Mux25~1_combout\ : std_logic;
SIGNAL \ALU|data_OUT|MUX_Sel|Mux25~2_combout\ : std_logic;
SIGNAL \ALU|data_in|D1_in|SLL|ShiftLeft0~18_combout\ : std_logic;
SIGNAL \ALU|data_in|D1_in|SLL|ShiftLeft0~19_combout\ : std_logic;
SIGNAL \ALU|data_in|D1_in|SLL|ShiftLeft0~20_combout\ : std_logic;
SIGNAL \ALU|data_OUT|MUX_Sel|Mux25~0_combout\ : std_logic;
SIGNAL \ALU|data_in|D1_in|SLL|ShiftLeft0~22_combout\ : std_logic;
SIGNAL \ALU|data_in|D1_in|SLL|ShiftLeft0~23_combout\ : std_logic;
SIGNAL \ALU|data_in|D1_in|SLL|ShiftLeft0~21_combout\ : std_logic;
SIGNAL \ALU|data_in|D1_in|SLL|ShiftLeft0~24_combout\ : std_logic;
SIGNAL \ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~103_combout\ : std_logic;
SIGNAL \ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~104_combout\ : std_logic;
SIGNAL \ALU|data_in|D1_in|SLL|ShiftLeft0~25_combout\ : std_logic;
SIGNAL \ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~105_combout\ : std_logic;
SIGNAL \ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~106_combout\ : std_logic;
SIGNAL \ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~107_combout\ : std_logic;
SIGNAL \ALU|data_in|D5_in|Sel_SR|Data_out|MUX_Sel|Out[7]~37_combout\ : std_logic;
SIGNAL \ALU|data_OUT|MUX_Sel|Mux24~2_combout\ : std_logic;
SIGNAL \ALU|data_OUT|MUX_Sel|Mux24~3_combout\ : std_logic;
SIGNAL \ALU|data_OUT|MUX_Sel|Mux24~1_combout\ : std_logic;
SIGNAL \ALU|data_in|D1_in|SLL|ShiftLeft0~26_combout\ : std_logic;
SIGNAL \ALU|data_in|D1_in|SLL|ShiftLeft0~27_combout\ : std_logic;
SIGNAL \ALU|data_in|D1_in|SLL|ShiftLeft0~28_combout\ : std_logic;
SIGNAL \ALU|data_in|D1_in|SLL|ShiftLeft0~29_combout\ : std_logic;
SIGNAL \ALU|data_in|D5_in|Sel_SR|Data_out|MUX_Sel|Out[9]~38_combout\ : std_logic;
SIGNAL \ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~108_combout\ : std_logic;
SIGNAL \ALU|data_in|D5_in|Sel_SR|Data_out|MUX_Sel|Out[8]~39_combout\ : std_logic;
SIGNAL \ALU|data_in|D5_in|Sel_SR|Data_out|MUX_Sel|Out[8]~41_combout\ : std_logic;
SIGNAL \ALU|data_in|D5_in|Sel_SR|Data_out|MUX_Sel|Out[8]~40_combout\ : std_logic;
SIGNAL \ALU|data_in|D5_in|Sel_SR|Data_out|MUX_Sel|Out[8]~42_combout\ : std_logic;
SIGNAL \ALU|data_OUT|MUX_Sel|Mux23~1_combout\ : std_logic;
SIGNAL \ALU|data_OUT|MUX_Sel|Mux23~2_combout\ : std_logic;
SIGNAL \ALU|data_OUT|MUX_Sel|Mux23~0_combout\ : std_logic;
SIGNAL \ALU|data_OUT|MUX_Sel|Mux22~1_combout\ : std_logic;
SIGNAL \ALU|data_in|D5_in|Sel_SR|Data_out|MUX_Sel|Out[9]~46_combout\ : std_logic;
SIGNAL \ALU|data_in|D5_in|Sel_SR|Data_out|MUX_Sel|Out[9]~44_combout\ : std_logic;
SIGNAL \ALU|data_in|D5_in|Sel_SR|Data_out|MUX_Sel|Out[9]~43_combout\ : std_logic;
SIGNAL \ALU|data_in|D5_in|Sel_SR|Data_out|MUX_Sel|Out[9]~45_combout\ : std_logic;
SIGNAL \ALU|data_in|D5_in|Sel_SR|Data_out|MUX_Sel|Out[9]~47_combout\ : std_logic;
SIGNAL \ALU|data_OUT|MUX_Sel|Mux22~2_combout\ : std_logic;
SIGNAL \ALU|data_in|D1_in|SLL|ShiftLeft0~30_combout\ : std_logic;
SIGNAL \ALU|data_in|D1_in|SLL|ShiftLeft0~31_combout\ : std_logic;
SIGNAL \ALU|data_in|D1_in|SLL|ShiftLeft0~32_combout\ : std_logic;
SIGNAL \ALU|data_in|D1_in|SLL|ShiftLeft0~33_combout\ : std_logic;
SIGNAL \ALU|data_OUT|MUX_Sel|Mux22~0_combout\ : std_logic;
SIGNAL \ALU|data_in|D5_in|Sel_SR|Data_out|MUX_Sel|Out[10]~48_combout\ : std_logic;
SIGNAL \ALU|data_in|D5_in|Sel_SR|Data_out|MUX_Sel|Out[10]~49_combout\ : std_logic;
SIGNAL \ALU|data_in|D5_in|Sel_SR|Data_out|MUX_Sel|Out[10]~50_combout\ : std_logic;
SIGNAL \ALU|data_OUT|MUX_Sel|Mux21~1_combout\ : std_logic;
SIGNAL \ALU|data_OUT|MUX_Sel|Mux21~2_combout\ : std_logic;
SIGNAL \ALU|data_in|D1_in|SLL|ShiftLeft0~34_combout\ : std_logic;
SIGNAL \ALU|data_in|D1_in|SLL|ShiftLeft0~35_combout\ : std_logic;
SIGNAL \ALU|data_in|D1_in|SLL|ShiftLeft0~36_combout\ : std_logic;
SIGNAL \ALU|data_in|D1_in|SLL|ShiftLeft0~37_combout\ : std_logic;
SIGNAL \ALU|data_OUT|MUX_Sel|Mux21~0_combout\ : std_logic;
SIGNAL \ALU|data_in|D1_in|SLL|ShiftLeft0~38_combout\ : std_logic;
SIGNAL \ALU|data_in|D1_in|SLL|ShiftLeft0~39_combout\ : std_logic;
SIGNAL \ALU|data_in|D1_in|SLL|ShiftLeft0~40_combout\ : std_logic;
SIGNAL \ALU|data_in|D1_in|SLL|ShiftLeft0~41_combout\ : std_logic;
SIGNAL \ALU|data_OUT|MUX_Sel|Mux20~1_combout\ : std_logic;
SIGNAL \ALU|data_in|D5_in|Sel_SR|Data_out|MUX_Sel|Out[11]~51_combout\ : std_logic;
SIGNAL \ALU|data_in|D5_in|Sel_SR|Data_out|MUX_Sel|Out[11]~52_combout\ : std_logic;
SIGNAL \ALU|data_in|D5_in|Sel_SR|Data_out|MUX_Sel|Out[11]~53_combout\ : std_logic;
SIGNAL \ALU|data_OUT|MUX_Sel|Mux20~2_combout\ : std_logic;
SIGNAL \ALU|data_OUT|MUX_Sel|Mux20~0_combout\ : std_logic;
SIGNAL \ALU|data_in|D1_in|SLL|ShiftLeft0~42_combout\ : std_logic;
SIGNAL \ALU|data_in|D1_in|SLL|ShiftLeft0~43_combout\ : std_logic;
SIGNAL \ALU|data_in|D1_in|SLL|ShiftLeft0~44_combout\ : std_logic;
SIGNAL \ALU|data_OUT|MUX_Sel|Mux3~0_combout\ : std_logic;
SIGNAL \ALU|data_in|D5_in|Sel_SR|Data_out|MUX_Sel|Out[12]~56_combout\ : std_logic;
SIGNAL \ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~109_combout\ : std_logic;
SIGNAL \ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~110_combout\ : std_logic;
SIGNAL \ALU|data_in|D5_in|Sel_SR|Data_out|MUX_Sel|Out[12]~54_combout\ : std_logic;
SIGNAL \ALU|data_in|D5_in|Sel_SR|Data_out|MUX_Sel|Out[12]~55_combout\ : std_logic;
SIGNAL \ALU|data_in|D5_in|Sel_SR|Data_out|MUX_Sel|Out[12]~57_combout\ : std_logic;
SIGNAL \ALU|data_OUT|MUX_Sel|Mux19~1_combout\ : std_logic;
SIGNAL \ALU|data_OUT|MUX_Sel|Mux19~2_combout\ : std_logic;
SIGNAL \ALU|data_OUT|MUX_Sel|Mux19~0_combout\ : std_logic;
SIGNAL \ALU|data_in|D5_in|Sel_SR|Data_out|MUX_Sel|Out[13]~60_combout\ : std_logic;
SIGNAL \ALU|data_in|D5_in|Sel_SR|Data_out|MUX_Sel|Out[13]~58_combout\ : std_logic;
SIGNAL \ALU|data_in|D5_in|Sel_SR|Data_out|MUX_Sel|Out[13]~59_combout\ : std_logic;
SIGNAL \ALU|data_in|D5_in|Sel_SR|Data_out|MUX_Sel|Out[13]~61_combout\ : std_logic;
SIGNAL \ALU|data_OUT|MUX_Sel|Mux18~1_combout\ : std_logic;
SIGNAL \ALU|data_OUT|MUX_Sel|Mux18~2_combout\ : std_logic;
SIGNAL \ALU|data_in|D1_in|SLL|ShiftLeft0~45_combout\ : std_logic;
SIGNAL \ALU|data_in|D1_in|SLL|ShiftLeft0~46_combout\ : std_logic;
SIGNAL \ALU|data_in|D1_in|SLL|ShiftLeft0~47_combout\ : std_logic;
SIGNAL \ALU|data_OUT|MUX_Sel|Mux2~0_combout\ : std_logic;
SIGNAL \ALU|data_OUT|MUX_Sel|Mux18~0_combout\ : std_logic;
SIGNAL \ALU|data_in|D1_in|SLL|ShiftLeft0~48_combout\ : std_logic;
SIGNAL \ALU|data_in|D1_in|SLL|ShiftLeft0~49_combout\ : std_logic;
SIGNAL \ALU|data_in|D1_in|SLL|ShiftLeft0~50_combout\ : std_logic;
SIGNAL \ALU|data_in|D1_in|SLL|ShiftLeft0~51_combout\ : std_logic;
SIGNAL \ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~112_combout\ : std_logic;
SIGNAL \ALU|data_in|D5_in|Sel_SR|Data_out|MUX_Sel|Out[14]~62_combout\ : std_logic;
SIGNAL \ALU|data_in|D5_in|Sel_SR|Data_out|MUX_Sel|Out[14]~63_combout\ : std_logic;
SIGNAL \ALU|data_in|D5_in|Sel_SR|Data_out|MUX_Sel|Out[14]~64_combout\ : std_logic;
SIGNAL \ALU|data_OUT|MUX_Sel|Mux17~1_combout\ : std_logic;
SIGNAL \ALU|data_OUT|MUX_Sel|Mux17~2_combout\ : std_logic;
SIGNAL \ALU|data_OUT|MUX_Sel|Mux17~0_combout\ : std_logic;
SIGNAL \ALU|data_OUT|MUX_Sel|Mux16~2_combout\ : std_logic;
SIGNAL \ALU|data_in|D5_in|Sel_SR|Data_out|MUX_Sel|Out[15]~65_combout\ : std_logic;
SIGNAL \ALU|data_in|D5_in|Sel_SR|Data_out|MUX_Sel|Out[15]~66_combout\ : std_logic;
SIGNAL \ALU|data_in|D5_in|Sel_SR|Data_out|MUX_Sel|Out[15]~68_combout\ : std_logic;
SIGNAL \ALU|data_in|D5_in|Sel_SR|Data_out|MUX_Sel|Out[15]~67_combout\ : std_logic;
SIGNAL \ALU|data_in|D5_in|Sel_SR|Data_out|MUX_Sel|Out[15]~69_combout\ : std_logic;
SIGNAL \ALU|data_OUT|MUX_Sel|Mux16~3_combout\ : std_logic;
SIGNAL \ALU|data_in|D1_in|SLL|ShiftLeft0~52_combout\ : std_logic;
SIGNAL \ALU|data_in|D1_in|SLL|ShiftLeft0~53_combout\ : std_logic;
SIGNAL \ALU|data_in|D1_in|SLL|ShiftLeft0~54_combout\ : std_logic;
SIGNAL \ALU|data_in|D1_in|SLL|ShiftLeft0~55_combout\ : std_logic;
SIGNAL \ALU|data_OUT|MUX_Sel|Mux16~1_combout\ : std_logic;
SIGNAL \ALU|data_in|D1_in|SLL|ShiftLeft0~56_combout\ : std_logic;
SIGNAL \ALU|data_in|D1_in|SLL|ShiftLeft0~57_combout\ : std_logic;
SIGNAL \ALU|data_in|D1_in|SLL|ShiftLeft0~58_combout\ : std_logic;
SIGNAL \ALU|data_OUT|MUX_Sel|Mux15~3_combout\ : std_logic;
SIGNAL \ALU|data_in|D5_in|Sel_SR|Data_out|MUX_Sel|Out[16]~92_combout\ : std_logic;
SIGNAL \ALU|data_in|D5_in|Sel_SR|Data_out|MUX_Sel|Out[16]~70_combout\ : std_logic;
SIGNAL \ALU|data_OUT|MUX_Sel|Mux15~6_combout\ : std_logic;
SIGNAL \ALU|data_OUT|MUX_Sel|Mux15~7_combout\ : std_logic;
SIGNAL \ALU|data_OUT|MUX_Sel|Mux15~5_combout\ : std_logic;
SIGNAL \ALU|data_OUT|MUX_Sel|Mux15~4_combout\ : std_logic;
SIGNAL \ALU|data_OUT|MUX_Sel|Mux15~2_combout\ : std_logic;
SIGNAL \ALU|data_OUT|MUX_Sel|Mux15~combout\ : std_logic;
SIGNAL \ALU|data_in|D5_in|Sel_SR|Data_out|MUX_Sel|Out[17]~93_combout\ : std_logic;
SIGNAL \ALU|data_in|D5_in|Sel_SR|Data_out|MUX_Sel|Out[17]~71_combout\ : std_logic;
SIGNAL \ALU|data_OUT|MUX_Sel|Mux14~1_combout\ : std_logic;
SIGNAL \ALU|data_OUT|MUX_Sel|Mux14~2_combout\ : std_logic;
SIGNAL \ALU|data_OUT|MUX_Sel|Mux14~0_combout\ : std_logic;
SIGNAL \ALU|data_in|D1_in|SLL|ShiftLeft0~59_combout\ : std_logic;
SIGNAL \ALU|data_in|D1_in|SLL|ShiftLeft0~60_combout\ : std_logic;
SIGNAL \ALU|data_in|D1_in|SLL|ShiftLeft0~61_combout\ : std_logic;
SIGNAL \ALU|data_OUT|MUX_Sel|Mux14~combout\ : std_logic;
SIGNAL \ALU|data_in|D5_in|Sel_SR|Data_out|MUX_Sel|Out[18]~72_combout\ : std_logic;
SIGNAL \ALU|data_in|D5_in|Sel_SR|Data_out|MUX_Sel|Out[18]~73_combout\ : std_logic;
SIGNAL \ALU|data_OUT|MUX_Sel|Mux13~1_combout\ : std_logic;
SIGNAL \ALU|data_OUT|MUX_Sel|Mux13~2_combout\ : std_logic;
SIGNAL \ALU|data_OUT|MUX_Sel|Mux13~0_combout\ : std_logic;
SIGNAL \ALU|data_in|D1_in|SLL|ShiftLeft0~62_combout\ : std_logic;
SIGNAL \ALU|data_in|D1_in|SLL|ShiftLeft0~63_combout\ : std_logic;
SIGNAL \ALU|data_in|D1_in|SLL|ShiftLeft0~64_combout\ : std_logic;
SIGNAL \ALU|data_OUT|MUX_Sel|Mux13~combout\ : std_logic;
SIGNAL \ALU|data_OUT|MUX_Sel|Mux12~1_combout\ : std_logic;
SIGNAL \ALU|data_in|D5_in|Sel_SR|Data_out|MUX_Sel|Out[19]~74_combout\ : std_logic;
SIGNAL \ALU|data_in|D5_in|Sel_SR|Data_out|MUX_Sel|Out[19]~75_combout\ : std_logic;
SIGNAL \ALU|data_OUT|MUX_Sel|Mux12~2_combout\ : std_logic;
SIGNAL \ALU|data_OUT|MUX_Sel|Mux12~0_combout\ : std_logic;
SIGNAL \ALU|data_in|D1_in|SLL|ShiftLeft0~65_combout\ : std_logic;
SIGNAL \ALU|data_in|D1_in|SLL|ShiftLeft0~66_combout\ : std_logic;
SIGNAL \ALU|data_in|D1_in|SLL|ShiftLeft0~67_combout\ : std_logic;
SIGNAL \ALU|data_OUT|MUX_Sel|Mux12~combout\ : std_logic;
SIGNAL \ALU|data_in|D1_in|SLL|ShiftLeft0~71_combout\ : std_logic;
SIGNAL \ALU|data_in|D5_in|Sel_SR|Data_out|MUX_Sel|Out[20]~76_combout\ : std_logic;
SIGNAL \ALU|data_OUT|MUX_Sel|Mux11~1_combout\ : std_logic;
SIGNAL \ALU|data_OUT|MUX_Sel|Mux11~2_combout\ : std_logic;
SIGNAL \ALU|data_OUT|MUX_Sel|Mux11~0_combout\ : std_logic;
SIGNAL \ALU|data_in|D1_in|SLL|ShiftLeft0~68_combout\ : std_logic;
SIGNAL \ALU|data_in|D1_in|SLL|ShiftLeft0~69_combout\ : std_logic;
SIGNAL \ALU|data_in|D1_in|SLL|ShiftLeft0~70_combout\ : std_logic;
SIGNAL \ALU|data_OUT|MUX_Sel|Mux11~combout\ : std_logic;
SIGNAL \ALU|data_in|D1_in|SLL|ShiftLeft0~75_combout\ : std_logic;
SIGNAL \ALU|data_OUT|MUX_Sel|Mux10~1_combout\ : std_logic;
SIGNAL \ALU|data_in|D5_in|Sel_SR|Data_out|MUX_Sel|Out[21]~77_combout\ : std_logic;
SIGNAL \ALU|data_OUT|MUX_Sel|Mux10~2_combout\ : std_logic;
SIGNAL \ALU|data_OUT|MUX_Sel|Mux10~0_combout\ : std_logic;
SIGNAL \ALU|data_in|D1_in|SLL|ShiftLeft0~72_combout\ : std_logic;
SIGNAL \ALU|data_in|D1_in|SLL|ShiftLeft0~73_combout\ : std_logic;
SIGNAL \ALU|data_in|D1_in|SLL|ShiftLeft0~74_combout\ : std_logic;
SIGNAL \ALU|data_OUT|MUX_Sel|Mux10~combout\ : std_logic;
SIGNAL \ALU|data_in|D1_in|SLL|ShiftLeft0~79_combout\ : std_logic;
SIGNAL \ALU|data_in|D5_in|Sel_SR|Data_out|MUX_Sel|Out[22]~94_combout\ : std_logic;
SIGNAL \ALU|data_in|D5_in|Sel_SR|Data_out|MUX_Sel|Out[22]~78_combout\ : std_logic;
SIGNAL \ALU|data_OUT|MUX_Sel|Mux9~1_combout\ : std_logic;
SIGNAL \ALU|data_OUT|MUX_Sel|Mux9~2_combout\ : std_logic;
SIGNAL \ALU|data_OUT|MUX_Sel|Mux9~0_combout\ : std_logic;
SIGNAL \ALU|data_in|D1_in|SLL|ShiftLeft0~76_combout\ : std_logic;
SIGNAL \ALU|data_in|D1_in|SLL|ShiftLeft0~77_combout\ : std_logic;
SIGNAL \ALU|data_in|D1_in|SLL|ShiftLeft0~78_combout\ : std_logic;
SIGNAL \ALU|data_OUT|MUX_Sel|Mux9~combout\ : std_logic;
SIGNAL \ALU|data_in|D1_in|SLL|ShiftLeft0~83_combout\ : std_logic;
SIGNAL \ALU|data_in|D5_in|Sel_SR|Data_out|MUX_Sel|Out[23]~95_combout\ : std_logic;
SIGNAL \ALU|data_in|D5_in|Sel_SR|Data_out|MUX_Sel|Out[23]~79_combout\ : std_logic;
SIGNAL \ALU|data_OUT|MUX_Sel|Mux8~1_combout\ : std_logic;
SIGNAL \ALU|data_OUT|MUX_Sel|Mux8~2_combout\ : std_logic;
SIGNAL \ALU|data_OUT|MUX_Sel|Mux8~0_combout\ : std_logic;
SIGNAL \ALU|data_in|D1_in|SLL|ShiftLeft0~80_combout\ : std_logic;
SIGNAL \ALU|data_in|D1_in|SLL|ShiftLeft0~81_combout\ : std_logic;
SIGNAL \ALU|data_in|D1_in|SLL|ShiftLeft0~82_combout\ : std_logic;
SIGNAL \ALU|data_OUT|MUX_Sel|Mux8~combout\ : std_logic;
SIGNAL \ALU|data_in|D5_in|Sel_SR|Data_out|MUX_Sel|Out[24]~80_combout\ : std_logic;
SIGNAL \ALU|data_OUT|MUX_Sel|Mux7~3_combout\ : std_logic;
SIGNAL \ALU|data_OUT|MUX_Sel|Mux7~4_combout\ : std_logic;
SIGNAL \ALU|data_in|D1_in|SLL|ShiftLeft0~84_combout\ : std_logic;
SIGNAL \ALU|data_in|D1_in|SLL|ShiftLeft0~85_combout\ : std_logic;
SIGNAL \ALU|data_OUT|MUX_Sel|Mux7~0_combout\ : std_logic;
SIGNAL \ALU|data_OUT|MUX_Sel|Mux7~1_combout\ : std_logic;
SIGNAL \ALU|data_OUT|MUX_Sel|Mux7~2_combout\ : std_logic;
SIGNAL \ALU|data_in|D1_in|SLL|ShiftLeft0~86_combout\ : std_logic;
SIGNAL \ALU|data_in|D1_in|SLL|ShiftLeft0~87_combout\ : std_logic;
SIGNAL \ALU|data_OUT|MUX_Sel|Mux6~0_combout\ : std_logic;
SIGNAL \ALU|data_OUT|MUX_Sel|Mux6~1_combout\ : std_logic;
SIGNAL \ALU|data_OUT|MUX_Sel|Mux6~3_combout\ : std_logic;
SIGNAL \ALU|data_in|D5_in|Sel_SR|Data_out|MUX_Sel|Out[25]~81_combout\ : std_logic;
SIGNAL \ALU|data_OUT|MUX_Sel|Mux6~4_combout\ : std_logic;
SIGNAL \ALU|data_OUT|MUX_Sel|Mux6~2_combout\ : std_logic;
SIGNAL \ALU|data_in|D5_in|Sel_SR|Data_out|MUX_Sel|Out[26]~82_combout\ : std_logic;
SIGNAL \ALU|data_OUT|MUX_Sel|Mux5~3_combout\ : std_logic;
SIGNAL \ALU|data_OUT|MUX_Sel|Mux5~4_combout\ : std_logic;
SIGNAL \ALU|data_in|D1_in|SLL|ShiftLeft0~88_combout\ : std_logic;
SIGNAL \ALU|data_in|D1_in|SLL|ShiftLeft0~89_combout\ : std_logic;
SIGNAL \ALU|data_in|D1_in|SLL|ShiftLeft0~90_combout\ : std_logic;
SIGNAL \ALU|data_OUT|MUX_Sel|Mux5~0_combout\ : std_logic;
SIGNAL \ALU|data_OUT|MUX_Sel|Mux5~1_combout\ : std_logic;
SIGNAL \ALU|data_OUT|MUX_Sel|Mux5~2_combout\ : std_logic;
SIGNAL \ALU|data_in|D1_in|SLL|ShiftLeft0~91_combout\ : std_logic;
SIGNAL \ALU|data_in|D1_in|SLL|ShiftLeft0~92_combout\ : std_logic;
SIGNAL \ALU|data_in|D1_in|SLL|ShiftLeft0~93_combout\ : std_logic;
SIGNAL \ALU|data_OUT|MUX_Sel|Mux4~0_combout\ : std_logic;
SIGNAL \ALU|data_OUT|MUX_Sel|Mux4~1_combout\ : std_logic;
SIGNAL \ALU|data_in|D5_in|Sel_SR|Data_out|MUX_Sel|Out[27]~83_combout\ : std_logic;
SIGNAL \ALU|data_OUT|MUX_Sel|Mux4~3_combout\ : std_logic;
SIGNAL \ALU|data_OUT|MUX_Sel|Mux4~4_combout\ : std_logic;
SIGNAL \ALU|data_OUT|MUX_Sel|Mux4~2_combout\ : std_logic;
SIGNAL \ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~111_combout\ : std_logic;
SIGNAL \ALU|data_in|D5_in|Sel_SR|Data_out|MUX_Sel|Out[28]~84_combout\ : std_logic;
SIGNAL \ALU|data_OUT|MUX_Sel|Mux3~5_combout\ : std_logic;
SIGNAL \ALU|data_OUT|MUX_Sel|Mux3~6_combout\ : std_logic;
SIGNAL \ALU|data_in|D1_in|SLL|ShiftLeft0~94_combout\ : std_logic;
SIGNAL \ALU|data_OUT|MUX_Sel|Mux3~1_combout\ : std_logic;
SIGNAL \ALU|data_OUT|MUX_Sel|Mux3~2_combout\ : std_logic;
SIGNAL \ALU|data_OUT|MUX_Sel|Mux3~3_combout\ : std_logic;
SIGNAL \ALU|data_OUT|MUX_Sel|Mux3~4_combout\ : std_logic;
SIGNAL \ALU|data_in|D5_in|Sel_SR|Data_out|MUX_Sel|Out[29]~85_combout\ : std_logic;
SIGNAL \ALU|data_OUT|MUX_Sel|Mux2~5_combout\ : std_logic;
SIGNAL \ALU|data_OUT|MUX_Sel|Mux2~6_combout\ : std_logic;
SIGNAL \ALU|data_in|D1_in|SLL|ShiftLeft0~95_combout\ : std_logic;
SIGNAL \ALU|data_OUT|MUX_Sel|Mux2~1_combout\ : std_logic;
SIGNAL \ALU|data_OUT|MUX_Sel|Mux2~2_combout\ : std_logic;
SIGNAL \ALU|data_OUT|MUX_Sel|Mux2~3_combout\ : std_logic;
SIGNAL \ALU|data_OUT|MUX_Sel|Mux2~4_combout\ : std_logic;
SIGNAL \ALU|data_OUT|MUX_Sel|Mux1~0_combout\ : std_logic;
SIGNAL \ALU|data_OUT|MUX_Sel|Mux1~1_combout\ : std_logic;
SIGNAL \ALU|data_in|D5_in|Sel_SR|Data_out|MUX_Sel|Out[30]~86_combout\ : std_logic;
SIGNAL \ALU|data_OUT|MUX_Sel|Mux1~3_combout\ : std_logic;
SIGNAL \ALU|data_OUT|MUX_Sel|Mux1~4_combout\ : std_logic;
SIGNAL \ALU|data_OUT|MUX_Sel|Mux1~2_combout\ : std_logic;
SIGNAL \ALU|data_OUT|MUX_Sel|Mux1~combout\ : std_logic;
SIGNAL \ALU|data_OUT|MUX_Sel|Mux0~0_combout\ : std_logic;
SIGNAL \ALU|data_OUT|MUX_Sel|Mux0~1_combout\ : std_logic;
SIGNAL \ALU|data_OUT|MUX_Sel|Mux0~3_combout\ : std_logic;
SIGNAL \ALU|data_in|D5_in|Sel_SR|Data_out|MUX_Sel|Out[31]~87_combout\ : std_logic;
SIGNAL \ALU|data_OUT|MUX_Sel|Mux0~4_combout\ : std_logic;
SIGNAL \ALU|data_OUT|MUX_Sel|Mux0~2_combout\ : std_logic;
SIGNAL \ALU|data_OUT|MUX_Sel|Mux0~combout\ : std_logic;

BEGIN

ww_funct7 <= funct7;
ww_alu_op <= alu_op;
ww_operand_a <= operand_a;
ww_operand_b <= operand_b;
alu_data <= ww_alu_data;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

-- Location: IOOBUF_X36_Y0_N9
\alu_data[0]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALU|data_OUT|MUX_Sel|Mux31~4_combout\,
	devoe => ww_devoe,
	o => \alu_data[0]~output_o\);

-- Location: IOOBUF_X21_Y41_N9
\alu_data[1]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALU|data_OUT|MUX_Sel|Mux30~0_combout\,
	devoe => ww_devoe,
	o => \alu_data[1]~output_o\);

-- Location: IOOBUF_X29_Y41_N2
\alu_data[2]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALU|data_OUT|MUX_Sel|Mux29~0_combout\,
	devoe => ww_devoe,
	o => \alu_data[2]~output_o\);

-- Location: IOOBUF_X31_Y0_N16
\alu_data[3]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALU|data_OUT|MUX_Sel|Mux28~0_combout\,
	devoe => ww_devoe,
	o => \alu_data[3]~output_o\);

-- Location: IOOBUF_X31_Y0_N2
\alu_data[4]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALU|data_OUT|MUX_Sel|Mux27~0_combout\,
	devoe => ww_devoe,
	o => \alu_data[4]~output_o\);

-- Location: IOOBUF_X25_Y41_N2
\alu_data[5]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALU|data_OUT|MUX_Sel|Mux26~1_combout\,
	devoe => ww_devoe,
	o => \alu_data[5]~output_o\);

-- Location: IOOBUF_X25_Y41_N9
\alu_data[6]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALU|data_OUT|MUX_Sel|Mux25~0_combout\,
	devoe => ww_devoe,
	o => \alu_data[6]~output_o\);

-- Location: IOOBUF_X23_Y41_N2
\alu_data[7]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALU|data_OUT|MUX_Sel|Mux24~1_combout\,
	devoe => ww_devoe,
	o => \alu_data[7]~output_o\);

-- Location: IOOBUF_X16_Y41_N2
\alu_data[8]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALU|data_OUT|MUX_Sel|Mux23~0_combout\,
	devoe => ww_devoe,
	o => \alu_data[8]~output_o\);

-- Location: IOOBUF_X52_Y9_N9
\alu_data[9]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALU|data_OUT|MUX_Sel|Mux22~0_combout\,
	devoe => ww_devoe,
	o => \alu_data[9]~output_o\);

-- Location: IOOBUF_X14_Y41_N2
\alu_data[10]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALU|data_OUT|MUX_Sel|Mux21~0_combout\,
	devoe => ww_devoe,
	o => \alu_data[10]~output_o\);

-- Location: IOOBUF_X18_Y41_N9
\alu_data[11]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALU|data_OUT|MUX_Sel|Mux20~0_combout\,
	devoe => ww_devoe,
	o => \alu_data[11]~output_o\);

-- Location: IOOBUF_X31_Y41_N16
\alu_data[12]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALU|data_OUT|MUX_Sel|Mux19~0_combout\,
	devoe => ww_devoe,
	o => \alu_data[12]~output_o\);

-- Location: IOOBUF_X52_Y10_N2
\alu_data[13]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALU|data_OUT|MUX_Sel|Mux18~0_combout\,
	devoe => ww_devoe,
	o => \alu_data[13]~output_o\);

-- Location: IOOBUF_X14_Y41_N9
\alu_data[14]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALU|data_OUT|MUX_Sel|Mux17~0_combout\,
	devoe => ww_devoe,
	o => \alu_data[14]~output_o\);

-- Location: IOOBUF_X38_Y41_N2
\alu_data[15]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALU|data_OUT|MUX_Sel|Mux16~1_combout\,
	devoe => ww_devoe,
	o => \alu_data[15]~output_o\);

-- Location: IOOBUF_X31_Y0_N9
\alu_data[16]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALU|data_OUT|MUX_Sel|Mux15~combout\,
	devoe => ww_devoe,
	o => \alu_data[16]~output_o\);

-- Location: IOOBUF_X18_Y41_N2
\alu_data[17]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALU|data_OUT|MUX_Sel|Mux14~combout\,
	devoe => ww_devoe,
	o => \alu_data[17]~output_o\);

-- Location: IOOBUF_X36_Y0_N2
\alu_data[18]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALU|data_OUT|MUX_Sel|Mux13~combout\,
	devoe => ww_devoe,
	o => \alu_data[18]~output_o\);

-- Location: IOOBUF_X52_Y32_N9
\alu_data[19]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALU|data_OUT|MUX_Sel|Mux12~combout\,
	devoe => ww_devoe,
	o => \alu_data[19]~output_o\);

-- Location: IOOBUF_X31_Y41_N2
\alu_data[20]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALU|data_OUT|MUX_Sel|Mux11~combout\,
	devoe => ww_devoe,
	o => \alu_data[20]~output_o\);

-- Location: IOOBUF_X52_Y27_N2
\alu_data[21]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALU|data_OUT|MUX_Sel|Mux10~combout\,
	devoe => ww_devoe,
	o => \alu_data[21]~output_o\);

-- Location: IOOBUF_X31_Y41_N9
\alu_data[22]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALU|data_OUT|MUX_Sel|Mux9~combout\,
	devoe => ww_devoe,
	o => \alu_data[22]~output_o\);

-- Location: IOOBUF_X29_Y41_N9
\alu_data[23]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALU|data_OUT|MUX_Sel|Mux8~combout\,
	devoe => ww_devoe,
	o => \alu_data[23]~output_o\);

-- Location: IOOBUF_X52_Y18_N2
\alu_data[24]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALU|data_OUT|MUX_Sel|Mux7~2_combout\,
	devoe => ww_devoe,
	o => \alu_data[24]~output_o\);

-- Location: IOOBUF_X21_Y41_N2
\alu_data[25]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALU|data_OUT|MUX_Sel|Mux6~2_combout\,
	devoe => ww_devoe,
	o => \alu_data[25]~output_o\);

-- Location: IOOBUF_X52_Y10_N9
\alu_data[26]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALU|data_OUT|MUX_Sel|Mux5~2_combout\,
	devoe => ww_devoe,
	o => \alu_data[26]~output_o\);

-- Location: IOOBUF_X12_Y41_N9
\alu_data[27]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALU|data_OUT|MUX_Sel|Mux4~2_combout\,
	devoe => ww_devoe,
	o => \alu_data[27]~output_o\);

-- Location: IOOBUF_X23_Y41_N9
\alu_data[28]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALU|data_OUT|MUX_Sel|Mux3~4_combout\,
	devoe => ww_devoe,
	o => \alu_data[28]~output_o\);

-- Location: IOOBUF_X48_Y41_N9
\alu_data[29]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALU|data_OUT|MUX_Sel|Mux2~4_combout\,
	devoe => ww_devoe,
	o => \alu_data[29]~output_o\);

-- Location: IOOBUF_X52_Y9_N2
\alu_data[30]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALU|data_OUT|MUX_Sel|Mux1~combout\,
	devoe => ww_devoe,
	o => \alu_data[30]~output_o\);

-- Location: IOOBUF_X52_Y32_N23
\alu_data[31]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALU|data_OUT|MUX_Sel|Mux0~combout\,
	devoe => ww_devoe,
	o => \alu_data[31]~output_o\);

-- Location: IOIBUF_X27_Y0_N8
\funct7~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_funct7,
	o => \funct7~input_o\);

-- Location: IOIBUF_X52_Y21_N1
\operand_a[0]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_operand_a(0),
	o => \operand_a[0]~input_o\);

-- Location: IOIBUF_X52_Y21_N8
\operand_b[0]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_operand_b(0),
	o => \operand_b[0]~input_o\);

-- Location: LCCOMB_X37_Y24_N10
\ALU|data_OUT|MUX_Sel|Mux31~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ALU|data_OUT|MUX_Sel|Mux31~1_combout\ = \funct7~input_o\ $ (\operand_a[0]~input_o\ $ (\operand_b[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \funct7~input_o\,
	datac => \operand_a[0]~input_o\,
	datad => \operand_b[0]~input_o\,
	combout => \ALU|data_OUT|MUX_Sel|Mux31~1_combout\);

-- Location: IOIBUF_X36_Y41_N1
\operand_b[1]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_operand_b(1),
	o => \operand_b[1]~input_o\);

-- Location: LCCOMB_X37_Y24_N2
\ALU|data_in|D1_in|SLL|ShiftLeft0~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ALU|data_in|D1_in|SLL|ShiftLeft0~4_combout\ = (\operand_b[1]~input_o\) # (\operand_b[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \operand_b[1]~input_o\,
	datad => \operand_b[0]~input_o\,
	combout => \ALU|data_in|D1_in|SLL|ShiftLeft0~4_combout\);

-- Location: IOIBUF_X52_Y28_N8
\operand_b[3]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_operand_b(3),
	o => \operand_b[3]~input_o\);

-- Location: IOIBUF_X27_Y0_N1
\operand_b[2]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_operand_b(2),
	o => \operand_b[2]~input_o\);

-- Location: LCCOMB_X37_Y24_N16
\ALU|data_in|D1_in|SLL|ShiftLeft0~5\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ALU|data_in|D1_in|SLL|ShiftLeft0~5_combout\ = (\operand_a[0]~input_o\ & (!\ALU|data_in|D1_in|SLL|ShiftLeft0~4_combout\ & (!\operand_b[3]~input_o\ & !\operand_b[2]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \operand_a[0]~input_o\,
	datab => \ALU|data_in|D1_in|SLL|ShiftLeft0~4_combout\,
	datac => \operand_b[3]~input_o\,
	datad => \operand_b[2]~input_o\,
	combout => \ALU|data_in|D1_in|SLL|ShiftLeft0~5_combout\);

-- Location: IOIBUF_X52_Y23_N1
\alu_op[0]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_alu_op(0),
	o => \alu_op[0]~input_o\);

-- Location: IOIBUF_X52_Y30_N1
\operand_b[4]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_operand_b(4),
	o => \operand_b[4]~input_o\);

-- Location: LCCOMB_X37_Y24_N20
\ALU|data_OUT|MUX_Sel|Mux31~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ALU|data_OUT|MUX_Sel|Mux31~2_combout\ = (\alu_op[0]~input_o\ & (((\ALU|data_in|D1_in|SLL|ShiftLeft0~5_combout\ & !\operand_b[4]~input_o\)))) # (!\alu_op[0]~input_o\ & (\ALU|data_OUT|MUX_Sel|Mux31~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU|data_OUT|MUX_Sel|Mux31~1_combout\,
	datab => \ALU|data_in|D1_in|SLL|ShiftLeft0~5_combout\,
	datac => \alu_op[0]~input_o\,
	datad => \operand_b[4]~input_o\,
	combout => \ALU|data_OUT|MUX_Sel|Mux31~2_combout\);

-- Location: IOIBUF_X38_Y0_N1
\operand_b[31]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_operand_b(31),
	o => \operand_b[31]~input_o\);

-- Location: IOIBUF_X52_Y27_N8
\operand_a[31]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_operand_a(31),
	o => \operand_a[31]~input_o\);

-- Location: IOIBUF_X46_Y41_N1
\operand_b[30]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_operand_b(30),
	o => \operand_b[30]~input_o\);

-- Location: IOIBUF_X41_Y41_N1
\operand_a[30]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_operand_a(30),
	o => \operand_a[30]~input_o\);

-- Location: IOIBUF_X34_Y41_N8
\operand_a[29]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_operand_a(29),
	o => \operand_a[29]~input_o\);

-- Location: IOIBUF_X52_Y19_N8
\operand_b[29]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_operand_b(29),
	o => \operand_b[29]~input_o\);

-- Location: IOIBUF_X36_Y41_N8
\operand_a[28]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_operand_a(28),
	o => \operand_a[28]~input_o\);

-- Location: IOIBUF_X31_Y0_N22
\operand_b[28]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_operand_b(28),
	o => \operand_b[28]~input_o\);

-- Location: IOIBUF_X34_Y0_N8
\operand_a[27]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_operand_a(27),
	o => \operand_a[27]~input_o\);

-- Location: IOIBUF_X52_Y12_N8
\operand_b[27]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_operand_b(27),
	o => \operand_b[27]~input_o\);

-- Location: IOIBUF_X52_Y15_N8
\operand_b[26]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_operand_b(26),
	o => \operand_b[26]~input_o\);

-- Location: IOIBUF_X34_Y41_N1
\operand_a[26]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_operand_a(26),
	o => \operand_a[26]~input_o\);

-- Location: IOIBUF_X31_Y41_N22
\operand_a[25]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_operand_a(25),
	o => \operand_a[25]~input_o\);

-- Location: IOIBUF_X34_Y0_N1
\operand_b[25]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_operand_b(25),
	o => \operand_b[25]~input_o\);

-- Location: IOIBUF_X50_Y41_N8
\operand_b[24]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_operand_b(24),
	o => \operand_b[24]~input_o\);

-- Location: IOIBUF_X52_Y25_N8
\operand_a[24]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_operand_a(24),
	o => \operand_a[24]~input_o\);

-- Location: IOIBUF_X52_Y25_N1
\operand_a[23]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_operand_a(23),
	o => \operand_a[23]~input_o\);

-- Location: IOIBUF_X41_Y0_N8
\operand_b[23]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_operand_b(23),
	o => \operand_b[23]~input_o\);

-- Location: IOIBUF_X46_Y0_N22
\operand_b[22]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_operand_b(22),
	o => \operand_b[22]~input_o\);

-- Location: IOIBUF_X52_Y19_N1
\operand_a[22]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_operand_a(22),
	o => \operand_a[22]~input_o\);

-- Location: IOIBUF_X41_Y0_N22
\operand_a[21]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_operand_a(21),
	o => \operand_a[21]~input_o\);

-- Location: IOIBUF_X50_Y41_N1
\operand_b[21]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_operand_b(21),
	o => \operand_b[21]~input_o\);

-- Location: IOIBUF_X41_Y0_N15
\operand_a[20]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_operand_a(20),
	o => \operand_a[20]~input_o\);

-- Location: IOIBUF_X52_Y11_N8
\operand_b[20]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_operand_b(20),
	o => \operand_b[20]~input_o\);

-- Location: IOIBUF_X52_Y16_N1
\operand_a[19]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_operand_a(19),
	o => \operand_a[19]~input_o\);

-- Location: IOIBUF_X46_Y0_N8
\operand_b[19]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_operand_b(19),
	o => \operand_b[19]~input_o\);

-- Location: IOIBUF_X52_Y13_N8
\operand_b[18]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_operand_b(18),
	o => \operand_b[18]~input_o\);

-- Location: IOIBUF_X52_Y13_N1
\operand_a[18]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_operand_a(18),
	o => \operand_a[18]~input_o\);

-- Location: IOIBUF_X43_Y0_N1
\operand_b[17]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_operand_b(17),
	o => \operand_b[17]~input_o\);

-- Location: IOIBUF_X52_Y16_N8
\operand_a[17]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_operand_a(17),
	o => \operand_a[17]~input_o\);

-- Location: IOIBUF_X52_Y12_N1
\operand_b[16]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_operand_b(16),
	o => \operand_b[16]~input_o\);

-- Location: IOIBUF_X52_Y23_N8
\operand_a[16]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_operand_a(16),
	o => \operand_a[16]~input_o\);

-- Location: IOIBUF_X46_Y41_N15
\operand_a[15]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_operand_a(15),
	o => \operand_a[15]~input_o\);

-- Location: IOIBUF_X46_Y0_N15
\operand_b[15]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_operand_b(15),
	o => \operand_b[15]~input_o\);

-- Location: IOIBUF_X27_Y41_N1
\operand_b[14]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_operand_b(14),
	o => \operand_b[14]~input_o\);

-- Location: IOIBUF_X52_Y18_N8
\operand_a[14]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_operand_a(14),
	o => \operand_a[14]~input_o\);

-- Location: IOIBUF_X27_Y41_N8
\operand_b[13]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_operand_b(13),
	o => \operand_b[13]~input_o\);

-- Location: IOIBUF_X48_Y0_N8
\operand_a[13]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_operand_a(13),
	o => \operand_a[13]~input_o\);

-- Location: IOIBUF_X41_Y0_N1
\operand_a[12]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_operand_a(12),
	o => \operand_a[12]~input_o\);

-- Location: IOIBUF_X46_Y0_N1
\operand_b[12]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_operand_b(12),
	o => \operand_b[12]~input_o\);

-- Location: IOIBUF_X52_Y11_N1
\operand_b[11]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_operand_b(11),
	o => \operand_b[11]~input_o\);

-- Location: IOIBUF_X52_Y15_N1
\operand_a[11]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_operand_a(11),
	o => \operand_a[11]~input_o\);

-- Location: IOIBUF_X46_Y41_N8
\operand_b[10]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_operand_b(10),
	o => \operand_b[10]~input_o\);

-- Location: IOIBUF_X43_Y41_N8
\operand_a[10]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_operand_a(10),
	o => \operand_a[10]~input_o\);

-- Location: IOIBUF_X38_Y0_N8
\operand_b[9]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_operand_b(9),
	o => \operand_b[9]~input_o\);

-- Location: IOIBUF_X52_Y28_N1
\operand_a[9]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_operand_a(9),
	o => \operand_a[9]~input_o\);

-- Location: IOIBUF_X52_Y32_N1
\operand_a[8]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_operand_a(8),
	o => \operand_a[8]~input_o\);

-- Location: IOIBUF_X43_Y0_N8
\operand_b[8]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_operand_b(8),
	o => \operand_b[8]~input_o\);

-- Location: IOIBUF_X16_Y41_N8
\operand_b[7]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_operand_b(7),
	o => \operand_b[7]~input_o\);

-- Location: IOIBUF_X52_Y32_N15
\operand_a[7]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_operand_a(7),
	o => \operand_a[7]~input_o\);

-- Location: IOIBUF_X52_Y31_N1
\operand_a[6]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_operand_a(6),
	o => \operand_a[6]~input_o\);

-- Location: IOIBUF_X38_Y41_N8
\operand_b[6]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_operand_b(6),
	o => \operand_b[6]~input_o\);

-- Location: IOIBUF_X48_Y41_N1
\operand_b[5]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_operand_b(5),
	o => \operand_b[5]~input_o\);

-- Location: IOIBUF_X52_Y30_N8
\operand_a[5]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_operand_a(5),
	o => \operand_a[5]~input_o\);

-- Location: IOIBUF_X43_Y41_N1
\operand_a[4]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_operand_a(4),
	o => \operand_a[4]~input_o\);

-- Location: IOIBUF_X46_Y41_N22
\operand_a[3]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_operand_a(3),
	o => \operand_a[3]~input_o\);

-- Location: IOIBUF_X41_Y41_N22
\operand_a[2]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_operand_a(2),
	o => \operand_a[2]~input_o\);

-- Location: IOIBUF_X41_Y41_N8
\operand_a[1]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_operand_a(1),
	o => \operand_a[1]~input_o\);

-- Location: LCCOMB_X41_Y25_N0
\ALU|data_in|D2_in|LT_inst|LessThan0~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ALU|data_in|D2_in|LT_inst|LessThan0~1_cout\ = CARRY((\operand_b[0]~input_o\ & !\operand_a[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \operand_b[0]~input_o\,
	datab => \operand_a[0]~input_o\,
	datad => VCC,
	cout => \ALU|data_in|D2_in|LT_inst|LessThan0~1_cout\);

-- Location: LCCOMB_X41_Y25_N2
\ALU|data_in|D2_in|LT_inst|LessThan0~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ALU|data_in|D2_in|LT_inst|LessThan0~3_cout\ = CARRY((\operand_a[1]~input_o\ & ((!\ALU|data_in|D2_in|LT_inst|LessThan0~1_cout\) # (!\operand_b[1]~input_o\))) # (!\operand_a[1]~input_o\ & (!\operand_b[1]~input_o\ & 
-- !\ALU|data_in|D2_in|LT_inst|LessThan0~1_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \operand_a[1]~input_o\,
	datab => \operand_b[1]~input_o\,
	datad => VCC,
	cin => \ALU|data_in|D2_in|LT_inst|LessThan0~1_cout\,
	cout => \ALU|data_in|D2_in|LT_inst|LessThan0~3_cout\);

-- Location: LCCOMB_X41_Y25_N4
\ALU|data_in|D2_in|LT_inst|LessThan0~5\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ALU|data_in|D2_in|LT_inst|LessThan0~5_cout\ = CARRY((\operand_a[2]~input_o\ & (\operand_b[2]~input_o\ & !\ALU|data_in|D2_in|LT_inst|LessThan0~3_cout\)) # (!\operand_a[2]~input_o\ & ((\operand_b[2]~input_o\) # 
-- (!\ALU|data_in|D2_in|LT_inst|LessThan0~3_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \operand_a[2]~input_o\,
	datab => \operand_b[2]~input_o\,
	datad => VCC,
	cin => \ALU|data_in|D2_in|LT_inst|LessThan0~3_cout\,
	cout => \ALU|data_in|D2_in|LT_inst|LessThan0~5_cout\);

-- Location: LCCOMB_X41_Y25_N6
\ALU|data_in|D2_in|LT_inst|LessThan0~7\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ALU|data_in|D2_in|LT_inst|LessThan0~7_cout\ = CARRY((\operand_b[3]~input_o\ & (\operand_a[3]~input_o\ & !\ALU|data_in|D2_in|LT_inst|LessThan0~5_cout\)) # (!\operand_b[3]~input_o\ & ((\operand_a[3]~input_o\) # 
-- (!\ALU|data_in|D2_in|LT_inst|LessThan0~5_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \operand_b[3]~input_o\,
	datab => \operand_a[3]~input_o\,
	datad => VCC,
	cin => \ALU|data_in|D2_in|LT_inst|LessThan0~5_cout\,
	cout => \ALU|data_in|D2_in|LT_inst|LessThan0~7_cout\);

-- Location: LCCOMB_X41_Y25_N8
\ALU|data_in|D2_in|LT_inst|LessThan0~9\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ALU|data_in|D2_in|LT_inst|LessThan0~9_cout\ = CARRY((\operand_a[4]~input_o\ & (\operand_b[4]~input_o\ & !\ALU|data_in|D2_in|LT_inst|LessThan0~7_cout\)) # (!\operand_a[4]~input_o\ & ((\operand_b[4]~input_o\) # 
-- (!\ALU|data_in|D2_in|LT_inst|LessThan0~7_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \operand_a[4]~input_o\,
	datab => \operand_b[4]~input_o\,
	datad => VCC,
	cin => \ALU|data_in|D2_in|LT_inst|LessThan0~7_cout\,
	cout => \ALU|data_in|D2_in|LT_inst|LessThan0~9_cout\);

-- Location: LCCOMB_X41_Y25_N10
\ALU|data_in|D2_in|LT_inst|LessThan0~11\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ALU|data_in|D2_in|LT_inst|LessThan0~11_cout\ = CARRY((\operand_b[5]~input_o\ & (\operand_a[5]~input_o\ & !\ALU|data_in|D2_in|LT_inst|LessThan0~9_cout\)) # (!\operand_b[5]~input_o\ & ((\operand_a[5]~input_o\) # 
-- (!\ALU|data_in|D2_in|LT_inst|LessThan0~9_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \operand_b[5]~input_o\,
	datab => \operand_a[5]~input_o\,
	datad => VCC,
	cin => \ALU|data_in|D2_in|LT_inst|LessThan0~9_cout\,
	cout => \ALU|data_in|D2_in|LT_inst|LessThan0~11_cout\);

-- Location: LCCOMB_X41_Y25_N12
\ALU|data_in|D2_in|LT_inst|LessThan0~13\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ALU|data_in|D2_in|LT_inst|LessThan0~13_cout\ = CARRY((\operand_a[6]~input_o\ & (\operand_b[6]~input_o\ & !\ALU|data_in|D2_in|LT_inst|LessThan0~11_cout\)) # (!\operand_a[6]~input_o\ & ((\operand_b[6]~input_o\) # 
-- (!\ALU|data_in|D2_in|LT_inst|LessThan0~11_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \operand_a[6]~input_o\,
	datab => \operand_b[6]~input_o\,
	datad => VCC,
	cin => \ALU|data_in|D2_in|LT_inst|LessThan0~11_cout\,
	cout => \ALU|data_in|D2_in|LT_inst|LessThan0~13_cout\);

-- Location: LCCOMB_X41_Y25_N14
\ALU|data_in|D2_in|LT_inst|LessThan0~15\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ALU|data_in|D2_in|LT_inst|LessThan0~15_cout\ = CARRY((\operand_b[7]~input_o\ & (\operand_a[7]~input_o\ & !\ALU|data_in|D2_in|LT_inst|LessThan0~13_cout\)) # (!\operand_b[7]~input_o\ & ((\operand_a[7]~input_o\) # 
-- (!\ALU|data_in|D2_in|LT_inst|LessThan0~13_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \operand_b[7]~input_o\,
	datab => \operand_a[7]~input_o\,
	datad => VCC,
	cin => \ALU|data_in|D2_in|LT_inst|LessThan0~13_cout\,
	cout => \ALU|data_in|D2_in|LT_inst|LessThan0~15_cout\);

-- Location: LCCOMB_X41_Y25_N16
\ALU|data_in|D2_in|LT_inst|LessThan0~17\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ALU|data_in|D2_in|LT_inst|LessThan0~17_cout\ = CARRY((\operand_a[8]~input_o\ & (\operand_b[8]~input_o\ & !\ALU|data_in|D2_in|LT_inst|LessThan0~15_cout\)) # (!\operand_a[8]~input_o\ & ((\operand_b[8]~input_o\) # 
-- (!\ALU|data_in|D2_in|LT_inst|LessThan0~15_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \operand_a[8]~input_o\,
	datab => \operand_b[8]~input_o\,
	datad => VCC,
	cin => \ALU|data_in|D2_in|LT_inst|LessThan0~15_cout\,
	cout => \ALU|data_in|D2_in|LT_inst|LessThan0~17_cout\);

-- Location: LCCOMB_X41_Y25_N18
\ALU|data_in|D2_in|LT_inst|LessThan0~19\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ALU|data_in|D2_in|LT_inst|LessThan0~19_cout\ = CARRY((\operand_b[9]~input_o\ & (\operand_a[9]~input_o\ & !\ALU|data_in|D2_in|LT_inst|LessThan0~17_cout\)) # (!\operand_b[9]~input_o\ & ((\operand_a[9]~input_o\) # 
-- (!\ALU|data_in|D2_in|LT_inst|LessThan0~17_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \operand_b[9]~input_o\,
	datab => \operand_a[9]~input_o\,
	datad => VCC,
	cin => \ALU|data_in|D2_in|LT_inst|LessThan0~17_cout\,
	cout => \ALU|data_in|D2_in|LT_inst|LessThan0~19_cout\);

-- Location: LCCOMB_X41_Y25_N20
\ALU|data_in|D2_in|LT_inst|LessThan0~21\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ALU|data_in|D2_in|LT_inst|LessThan0~21_cout\ = CARRY((\operand_b[10]~input_o\ & ((!\ALU|data_in|D2_in|LT_inst|LessThan0~19_cout\) # (!\operand_a[10]~input_o\))) # (!\operand_b[10]~input_o\ & (!\operand_a[10]~input_o\ & 
-- !\ALU|data_in|D2_in|LT_inst|LessThan0~19_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \operand_b[10]~input_o\,
	datab => \operand_a[10]~input_o\,
	datad => VCC,
	cin => \ALU|data_in|D2_in|LT_inst|LessThan0~19_cout\,
	cout => \ALU|data_in|D2_in|LT_inst|LessThan0~21_cout\);

-- Location: LCCOMB_X41_Y25_N22
\ALU|data_in|D2_in|LT_inst|LessThan0~23\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ALU|data_in|D2_in|LT_inst|LessThan0~23_cout\ = CARRY((\operand_b[11]~input_o\ & (\operand_a[11]~input_o\ & !\ALU|data_in|D2_in|LT_inst|LessThan0~21_cout\)) # (!\operand_b[11]~input_o\ & ((\operand_a[11]~input_o\) # 
-- (!\ALU|data_in|D2_in|LT_inst|LessThan0~21_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \operand_b[11]~input_o\,
	datab => \operand_a[11]~input_o\,
	datad => VCC,
	cin => \ALU|data_in|D2_in|LT_inst|LessThan0~21_cout\,
	cout => \ALU|data_in|D2_in|LT_inst|LessThan0~23_cout\);

-- Location: LCCOMB_X41_Y25_N24
\ALU|data_in|D2_in|LT_inst|LessThan0~25\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ALU|data_in|D2_in|LT_inst|LessThan0~25_cout\ = CARRY((\operand_a[12]~input_o\ & (\operand_b[12]~input_o\ & !\ALU|data_in|D2_in|LT_inst|LessThan0~23_cout\)) # (!\operand_a[12]~input_o\ & ((\operand_b[12]~input_o\) # 
-- (!\ALU|data_in|D2_in|LT_inst|LessThan0~23_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \operand_a[12]~input_o\,
	datab => \operand_b[12]~input_o\,
	datad => VCC,
	cin => \ALU|data_in|D2_in|LT_inst|LessThan0~23_cout\,
	cout => \ALU|data_in|D2_in|LT_inst|LessThan0~25_cout\);

-- Location: LCCOMB_X41_Y25_N26
\ALU|data_in|D2_in|LT_inst|LessThan0~27\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ALU|data_in|D2_in|LT_inst|LessThan0~27_cout\ = CARRY((\operand_b[13]~input_o\ & (\operand_a[13]~input_o\ & !\ALU|data_in|D2_in|LT_inst|LessThan0~25_cout\)) # (!\operand_b[13]~input_o\ & ((\operand_a[13]~input_o\) # 
-- (!\ALU|data_in|D2_in|LT_inst|LessThan0~25_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \operand_b[13]~input_o\,
	datab => \operand_a[13]~input_o\,
	datad => VCC,
	cin => \ALU|data_in|D2_in|LT_inst|LessThan0~25_cout\,
	cout => \ALU|data_in|D2_in|LT_inst|LessThan0~27_cout\);

-- Location: LCCOMB_X41_Y25_N28
\ALU|data_in|D2_in|LT_inst|LessThan0~29\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ALU|data_in|D2_in|LT_inst|LessThan0~29_cout\ = CARRY((\operand_b[14]~input_o\ & ((!\ALU|data_in|D2_in|LT_inst|LessThan0~27_cout\) # (!\operand_a[14]~input_o\))) # (!\operand_b[14]~input_o\ & (!\operand_a[14]~input_o\ & 
-- !\ALU|data_in|D2_in|LT_inst|LessThan0~27_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \operand_b[14]~input_o\,
	datab => \operand_a[14]~input_o\,
	datad => VCC,
	cin => \ALU|data_in|D2_in|LT_inst|LessThan0~27_cout\,
	cout => \ALU|data_in|D2_in|LT_inst|LessThan0~29_cout\);

-- Location: LCCOMB_X41_Y25_N30
\ALU|data_in|D2_in|LT_inst|LessThan0~31\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ALU|data_in|D2_in|LT_inst|LessThan0~31_cout\ = CARRY((\operand_a[15]~input_o\ & ((!\ALU|data_in|D2_in|LT_inst|LessThan0~29_cout\) # (!\operand_b[15]~input_o\))) # (!\operand_a[15]~input_o\ & (!\operand_b[15]~input_o\ & 
-- !\ALU|data_in|D2_in|LT_inst|LessThan0~29_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \operand_a[15]~input_o\,
	datab => \operand_b[15]~input_o\,
	datad => VCC,
	cin => \ALU|data_in|D2_in|LT_inst|LessThan0~29_cout\,
	cout => \ALU|data_in|D2_in|LT_inst|LessThan0~31_cout\);

-- Location: LCCOMB_X41_Y24_N0
\ALU|data_in|D2_in|LT_inst|LessThan0~33\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ALU|data_in|D2_in|LT_inst|LessThan0~33_cout\ = CARRY((\operand_b[16]~input_o\ & ((!\ALU|data_in|D2_in|LT_inst|LessThan0~31_cout\) # (!\operand_a[16]~input_o\))) # (!\operand_b[16]~input_o\ & (!\operand_a[16]~input_o\ & 
-- !\ALU|data_in|D2_in|LT_inst|LessThan0~31_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \operand_b[16]~input_o\,
	datab => \operand_a[16]~input_o\,
	datad => VCC,
	cin => \ALU|data_in|D2_in|LT_inst|LessThan0~31_cout\,
	cout => \ALU|data_in|D2_in|LT_inst|LessThan0~33_cout\);

-- Location: LCCOMB_X41_Y24_N2
\ALU|data_in|D2_in|LT_inst|LessThan0~35\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ALU|data_in|D2_in|LT_inst|LessThan0~35_cout\ = CARRY((\operand_b[17]~input_o\ & (\operand_a[17]~input_o\ & !\ALU|data_in|D2_in|LT_inst|LessThan0~33_cout\)) # (!\operand_b[17]~input_o\ & ((\operand_a[17]~input_o\) # 
-- (!\ALU|data_in|D2_in|LT_inst|LessThan0~33_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \operand_b[17]~input_o\,
	datab => \operand_a[17]~input_o\,
	datad => VCC,
	cin => \ALU|data_in|D2_in|LT_inst|LessThan0~33_cout\,
	cout => \ALU|data_in|D2_in|LT_inst|LessThan0~35_cout\);

-- Location: LCCOMB_X41_Y24_N4
\ALU|data_in|D2_in|LT_inst|LessThan0~37\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ALU|data_in|D2_in|LT_inst|LessThan0~37_cout\ = CARRY((\operand_b[18]~input_o\ & ((!\ALU|data_in|D2_in|LT_inst|LessThan0~35_cout\) # (!\operand_a[18]~input_o\))) # (!\operand_b[18]~input_o\ & (!\operand_a[18]~input_o\ & 
-- !\ALU|data_in|D2_in|LT_inst|LessThan0~35_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \operand_b[18]~input_o\,
	datab => \operand_a[18]~input_o\,
	datad => VCC,
	cin => \ALU|data_in|D2_in|LT_inst|LessThan0~35_cout\,
	cout => \ALU|data_in|D2_in|LT_inst|LessThan0~37_cout\);

-- Location: LCCOMB_X41_Y24_N6
\ALU|data_in|D2_in|LT_inst|LessThan0~39\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ALU|data_in|D2_in|LT_inst|LessThan0~39_cout\ = CARRY((\operand_a[19]~input_o\ & ((!\ALU|data_in|D2_in|LT_inst|LessThan0~37_cout\) # (!\operand_b[19]~input_o\))) # (!\operand_a[19]~input_o\ & (!\operand_b[19]~input_o\ & 
-- !\ALU|data_in|D2_in|LT_inst|LessThan0~37_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \operand_a[19]~input_o\,
	datab => \operand_b[19]~input_o\,
	datad => VCC,
	cin => \ALU|data_in|D2_in|LT_inst|LessThan0~37_cout\,
	cout => \ALU|data_in|D2_in|LT_inst|LessThan0~39_cout\);

-- Location: LCCOMB_X41_Y24_N8
\ALU|data_in|D2_in|LT_inst|LessThan0~41\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ALU|data_in|D2_in|LT_inst|LessThan0~41_cout\ = CARRY((\operand_a[20]~input_o\ & (\operand_b[20]~input_o\ & !\ALU|data_in|D2_in|LT_inst|LessThan0~39_cout\)) # (!\operand_a[20]~input_o\ & ((\operand_b[20]~input_o\) # 
-- (!\ALU|data_in|D2_in|LT_inst|LessThan0~39_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \operand_a[20]~input_o\,
	datab => \operand_b[20]~input_o\,
	datad => VCC,
	cin => \ALU|data_in|D2_in|LT_inst|LessThan0~39_cout\,
	cout => \ALU|data_in|D2_in|LT_inst|LessThan0~41_cout\);

-- Location: LCCOMB_X41_Y24_N10
\ALU|data_in|D2_in|LT_inst|LessThan0~43\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ALU|data_in|D2_in|LT_inst|LessThan0~43_cout\ = CARRY((\operand_a[21]~input_o\ & ((!\ALU|data_in|D2_in|LT_inst|LessThan0~41_cout\) # (!\operand_b[21]~input_o\))) # (!\operand_a[21]~input_o\ & (!\operand_b[21]~input_o\ & 
-- !\ALU|data_in|D2_in|LT_inst|LessThan0~41_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \operand_a[21]~input_o\,
	datab => \operand_b[21]~input_o\,
	datad => VCC,
	cin => \ALU|data_in|D2_in|LT_inst|LessThan0~41_cout\,
	cout => \ALU|data_in|D2_in|LT_inst|LessThan0~43_cout\);

-- Location: LCCOMB_X41_Y24_N12
\ALU|data_in|D2_in|LT_inst|LessThan0~45\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ALU|data_in|D2_in|LT_inst|LessThan0~45_cout\ = CARRY((\operand_b[22]~input_o\ & ((!\ALU|data_in|D2_in|LT_inst|LessThan0~43_cout\) # (!\operand_a[22]~input_o\))) # (!\operand_b[22]~input_o\ & (!\operand_a[22]~input_o\ & 
-- !\ALU|data_in|D2_in|LT_inst|LessThan0~43_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \operand_b[22]~input_o\,
	datab => \operand_a[22]~input_o\,
	datad => VCC,
	cin => \ALU|data_in|D2_in|LT_inst|LessThan0~43_cout\,
	cout => \ALU|data_in|D2_in|LT_inst|LessThan0~45_cout\);

-- Location: LCCOMB_X41_Y24_N14
\ALU|data_in|D2_in|LT_inst|LessThan0~47\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ALU|data_in|D2_in|LT_inst|LessThan0~47_cout\ = CARRY((\operand_a[23]~input_o\ & ((!\ALU|data_in|D2_in|LT_inst|LessThan0~45_cout\) # (!\operand_b[23]~input_o\))) # (!\operand_a[23]~input_o\ & (!\operand_b[23]~input_o\ & 
-- !\ALU|data_in|D2_in|LT_inst|LessThan0~45_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \operand_a[23]~input_o\,
	datab => \operand_b[23]~input_o\,
	datad => VCC,
	cin => \ALU|data_in|D2_in|LT_inst|LessThan0~45_cout\,
	cout => \ALU|data_in|D2_in|LT_inst|LessThan0~47_cout\);

-- Location: LCCOMB_X41_Y24_N16
\ALU|data_in|D2_in|LT_inst|LessThan0~49\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ALU|data_in|D2_in|LT_inst|LessThan0~49_cout\ = CARRY((\operand_b[24]~input_o\ & ((!\ALU|data_in|D2_in|LT_inst|LessThan0~47_cout\) # (!\operand_a[24]~input_o\))) # (!\operand_b[24]~input_o\ & (!\operand_a[24]~input_o\ & 
-- !\ALU|data_in|D2_in|LT_inst|LessThan0~47_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \operand_b[24]~input_o\,
	datab => \operand_a[24]~input_o\,
	datad => VCC,
	cin => \ALU|data_in|D2_in|LT_inst|LessThan0~47_cout\,
	cout => \ALU|data_in|D2_in|LT_inst|LessThan0~49_cout\);

-- Location: LCCOMB_X41_Y24_N18
\ALU|data_in|D2_in|LT_inst|LessThan0~51\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ALU|data_in|D2_in|LT_inst|LessThan0~51_cout\ = CARRY((\operand_a[25]~input_o\ & ((!\ALU|data_in|D2_in|LT_inst|LessThan0~49_cout\) # (!\operand_b[25]~input_o\))) # (!\operand_a[25]~input_o\ & (!\operand_b[25]~input_o\ & 
-- !\ALU|data_in|D2_in|LT_inst|LessThan0~49_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \operand_a[25]~input_o\,
	datab => \operand_b[25]~input_o\,
	datad => VCC,
	cin => \ALU|data_in|D2_in|LT_inst|LessThan0~49_cout\,
	cout => \ALU|data_in|D2_in|LT_inst|LessThan0~51_cout\);

-- Location: LCCOMB_X41_Y24_N20
\ALU|data_in|D2_in|LT_inst|LessThan0~53\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ALU|data_in|D2_in|LT_inst|LessThan0~53_cout\ = CARRY((\operand_b[26]~input_o\ & ((!\ALU|data_in|D2_in|LT_inst|LessThan0~51_cout\) # (!\operand_a[26]~input_o\))) # (!\operand_b[26]~input_o\ & (!\operand_a[26]~input_o\ & 
-- !\ALU|data_in|D2_in|LT_inst|LessThan0~51_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \operand_b[26]~input_o\,
	datab => \operand_a[26]~input_o\,
	datad => VCC,
	cin => \ALU|data_in|D2_in|LT_inst|LessThan0~51_cout\,
	cout => \ALU|data_in|D2_in|LT_inst|LessThan0~53_cout\);

-- Location: LCCOMB_X41_Y24_N22
\ALU|data_in|D2_in|LT_inst|LessThan0~55\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ALU|data_in|D2_in|LT_inst|LessThan0~55_cout\ = CARRY((\operand_a[27]~input_o\ & ((!\ALU|data_in|D2_in|LT_inst|LessThan0~53_cout\) # (!\operand_b[27]~input_o\))) # (!\operand_a[27]~input_o\ & (!\operand_b[27]~input_o\ & 
-- !\ALU|data_in|D2_in|LT_inst|LessThan0~53_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \operand_a[27]~input_o\,
	datab => \operand_b[27]~input_o\,
	datad => VCC,
	cin => \ALU|data_in|D2_in|LT_inst|LessThan0~53_cout\,
	cout => \ALU|data_in|D2_in|LT_inst|LessThan0~55_cout\);

-- Location: LCCOMB_X41_Y24_N24
\ALU|data_in|D2_in|LT_inst|LessThan0~57\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ALU|data_in|D2_in|LT_inst|LessThan0~57_cout\ = CARRY((\operand_a[28]~input_o\ & (\operand_b[28]~input_o\ & !\ALU|data_in|D2_in|LT_inst|LessThan0~55_cout\)) # (!\operand_a[28]~input_o\ & ((\operand_b[28]~input_o\) # 
-- (!\ALU|data_in|D2_in|LT_inst|LessThan0~55_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \operand_a[28]~input_o\,
	datab => \operand_b[28]~input_o\,
	datad => VCC,
	cin => \ALU|data_in|D2_in|LT_inst|LessThan0~55_cout\,
	cout => \ALU|data_in|D2_in|LT_inst|LessThan0~57_cout\);

-- Location: LCCOMB_X41_Y24_N26
\ALU|data_in|D2_in|LT_inst|LessThan0~59\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ALU|data_in|D2_in|LT_inst|LessThan0~59_cout\ = CARRY((\operand_a[29]~input_o\ & ((!\ALU|data_in|D2_in|LT_inst|LessThan0~57_cout\) # (!\operand_b[29]~input_o\))) # (!\operand_a[29]~input_o\ & (!\operand_b[29]~input_o\ & 
-- !\ALU|data_in|D2_in|LT_inst|LessThan0~57_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \operand_a[29]~input_o\,
	datab => \operand_b[29]~input_o\,
	datad => VCC,
	cin => \ALU|data_in|D2_in|LT_inst|LessThan0~57_cout\,
	cout => \ALU|data_in|D2_in|LT_inst|LessThan0~59_cout\);

-- Location: LCCOMB_X41_Y24_N28
\ALU|data_in|D2_in|LT_inst|LessThan0~61\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ALU|data_in|D2_in|LT_inst|LessThan0~61_cout\ = CARRY((\operand_b[30]~input_o\ & ((!\ALU|data_in|D2_in|LT_inst|LessThan0~59_cout\) # (!\operand_a[30]~input_o\))) # (!\operand_b[30]~input_o\ & (!\operand_a[30]~input_o\ & 
-- !\ALU|data_in|D2_in|LT_inst|LessThan0~59_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \operand_b[30]~input_o\,
	datab => \operand_a[30]~input_o\,
	datad => VCC,
	cin => \ALU|data_in|D2_in|LT_inst|LessThan0~59_cout\,
	cout => \ALU|data_in|D2_in|LT_inst|LessThan0~61_cout\);

-- Location: LCCOMB_X41_Y24_N30
\ALU|data_in|D2_in|LT_inst|LessThan0~62\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ALU|data_in|D2_in|LT_inst|LessThan0~62_combout\ = (\operand_b[31]~input_o\ & ((\ALU|data_in|D2_in|LT_inst|LessThan0~61_cout\) # (!\operand_a[31]~input_o\))) # (!\operand_b[31]~input_o\ & (\ALU|data_in|D2_in|LT_inst|LessThan0~61_cout\ & 
-- !\operand_a[31]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011111010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \operand_b[31]~input_o\,
	datad => \operand_a[31]~input_o\,
	cin => \ALU|data_in|D2_in|LT_inst|LessThan0~61_cout\,
	combout => \ALU|data_in|D2_in|LT_inst|LessThan0~62_combout\);

-- Location: LCCOMB_X37_Y24_N14
\ALU|data_OUT|MUX_Sel|Mux31~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ALU|data_OUT|MUX_Sel|Mux31~0_combout\ = (\alu_op[0]~input_o\ & (!\operand_b[31]~input_o\ & ((\ALU|data_in|D2_in|LT_inst|LessThan0~62_combout\) # (\operand_a[31]~input_o\)))) # (!\alu_op[0]~input_o\ & (\ALU|data_in|D2_in|LT_inst|LessThan0~62_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011101000101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU|data_in|D2_in|LT_inst|LessThan0~62_combout\,
	datab => \operand_b[31]~input_o\,
	datac => \alu_op[0]~input_o\,
	datad => \operand_a[31]~input_o\,
	combout => \ALU|data_OUT|MUX_Sel|Mux31~0_combout\);

-- Location: IOIBUF_X41_Y41_N15
\alu_op[1]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_alu_op(1),
	o => \alu_op[1]~input_o\);

-- Location: LCCOMB_X37_Y24_N30
\ALU|data_OUT|MUX_Sel|Mux31~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ALU|data_OUT|MUX_Sel|Mux31~3_combout\ = (\alu_op[1]~input_o\ & ((\ALU|data_OUT|MUX_Sel|Mux31~0_combout\))) # (!\alu_op[1]~input_o\ & (\ALU|data_OUT|MUX_Sel|Mux31~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ALU|data_OUT|MUX_Sel|Mux31~2_combout\,
	datac => \ALU|data_OUT|MUX_Sel|Mux31~0_combout\,
	datad => \alu_op[1]~input_o\,
	combout => \ALU|data_OUT|MUX_Sel|Mux31~3_combout\);

-- Location: IOIBUF_X52_Y31_N8
\alu_op[2]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_alu_op(2),
	o => \alu_op[2]~input_o\);

-- Location: LCCOMB_X38_Y23_N8
\ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~5\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~5_combout\ = (\operand_b[1]~input_o\ & (\operand_a[14]~input_o\)) # (!\operand_b[1]~input_o\ & ((\operand_a[12]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \operand_a[14]~input_o\,
	datab => \operand_b[1]~input_o\,
	datac => \operand_a[12]~input_o\,
	combout => \ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~5_combout\);

-- Location: LCCOMB_X39_Y23_N24
\ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~4_combout\ = (\operand_b[1]~input_o\ & ((\operand_a[15]~input_o\))) # (!\operand_b[1]~input_o\ & (\operand_a[13]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \operand_b[1]~input_o\,
	datac => \operand_a[13]~input_o\,
	datad => \operand_a[15]~input_o\,
	combout => \ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~4_combout\);

-- Location: LCCOMB_X38_Y23_N2
\ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~6\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~6_combout\ = (\operand_b[0]~input_o\ & ((\ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~4_combout\))) # (!\operand_b[0]~input_o\ & 
-- (\ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~5_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~5_combout\,
	datac => \operand_b[0]~input_o\,
	datad => \ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~4_combout\,
	combout => \ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~6_combout\);

-- Location: LCCOMB_X39_Y25_N10
\ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~8\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~8_combout\ = (\operand_b[1]~input_o\ & (\operand_a[10]~input_o\)) # (!\operand_b[1]~input_o\ & ((\operand_a[8]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \operand_b[1]~input_o\,
	datac => \operand_a[10]~input_o\,
	datad => \operand_a[8]~input_o\,
	combout => \ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~8_combout\);

-- Location: LCCOMB_X39_Y25_N16
\ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~7\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~7_combout\ = (\operand_b[1]~input_o\ & (\operand_a[11]~input_o\)) # (!\operand_b[1]~input_o\ & ((\operand_a[9]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \operand_a[11]~input_o\,
	datac => \operand_b[1]~input_o\,
	datad => \operand_a[9]~input_o\,
	combout => \ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~7_combout\);

-- Location: LCCOMB_X39_Y25_N20
\ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~9\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~9_combout\ = (\operand_b[0]~input_o\ & ((\ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~7_combout\))) # (!\operand_b[0]~input_o\ & 
-- (\ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~8_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~8_combout\,
	datac => \operand_b[0]~input_o\,
	datad => \ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~7_combout\,
	combout => \ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~9_combout\);

-- Location: LCCOMB_X39_Y27_N0
\ALU|data_in|D5_in|Sel_SR|Data_out|MUX_Sel|Out[0]~19\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ALU|data_in|D5_in|Sel_SR|Data_out|MUX_Sel|Out[0]~19_combout\ = (\operand_b[3]~input_o\ & !\operand_b[4]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \operand_b[3]~input_o\,
	datad => \operand_b[4]~input_o\,
	combout => \ALU|data_in|D5_in|Sel_SR|Data_out|MUX_Sel|Out[0]~19_combout\);

-- Location: LCCOMB_X39_Y27_N2
\ALU|data_in|D5_in|Sel_SR|Data_out|MUX_Sel|Out[0]~20\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ALU|data_in|D5_in|Sel_SR|Data_out|MUX_Sel|Out[0]~20_combout\ = (\ALU|data_in|D5_in|Sel_SR|Data_out|MUX_Sel|Out[0]~19_combout\ & ((\operand_b[2]~input_o\ & (\ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~6_combout\)) # (!\operand_b[2]~input_o\ & 
-- ((\ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~9_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~6_combout\,
	datab => \ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~9_combout\,
	datac => \operand_b[2]~input_o\,
	datad => \ALU|data_in|D5_in|Sel_SR|Data_out|MUX_Sel|Out[0]~19_combout\,
	combout => \ALU|data_in|D5_in|Sel_SR|Data_out|MUX_Sel|Out[0]~20_combout\);

-- Location: LCCOMB_X38_Y24_N10
\ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~14\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~14_combout\ = (\operand_b[1]~input_o\ & (\operand_a[18]~input_o\)) # (!\operand_b[1]~input_o\ & ((\operand_a[16]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \operand_b[1]~input_o\,
	datac => \operand_a[18]~input_o\,
	datad => \operand_a[16]~input_o\,
	combout => \ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~14_combout\);

-- Location: LCCOMB_X39_Y23_N2
\ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~13\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~13_combout\ = (\operand_b[1]~input_o\ & (\operand_a[19]~input_o\)) # (!\operand_b[1]~input_o\ & ((\operand_a[17]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \operand_a[19]~input_o\,
	datac => \operand_b[1]~input_o\,
	datad => \operand_a[17]~input_o\,
	combout => \ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~13_combout\);

-- Location: LCCOMB_X38_Y24_N4
\ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~15\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~15_combout\ = (\operand_b[0]~input_o\ & ((\ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~13_combout\))) # (!\operand_b[0]~input_o\ & 
-- (\ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~14_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~14_combout\,
	datab => \operand_b[0]~input_o\,
	datad => \ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~13_combout\,
	combout => \ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~15_combout\);

-- Location: LCCOMB_X38_Y24_N8
\ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~11\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~11_combout\ = (\operand_b[1]~input_o\ & ((\operand_a[22]~input_o\))) # (!\operand_b[1]~input_o\ & (\operand_a[20]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \operand_b[1]~input_o\,
	datac => \operand_a[20]~input_o\,
	datad => \operand_a[22]~input_o\,
	combout => \ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~11_combout\);

-- Location: LCCOMB_X39_Y24_N24
\ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~10\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~10_combout\ = (\operand_b[1]~input_o\ & ((\operand_a[23]~input_o\))) # (!\operand_b[1]~input_o\ & (\operand_a[21]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \operand_a[21]~input_o\,
	datac => \operand_b[1]~input_o\,
	datad => \operand_a[23]~input_o\,
	combout => \ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~10_combout\);

-- Location: LCCOMB_X39_Y24_N10
\ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~12\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~12_combout\ = (\operand_b[0]~input_o\ & ((\ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~10_combout\))) # (!\operand_b[0]~input_o\ & 
-- (\ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~11_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~11_combout\,
	datac => \operand_b[0]~input_o\,
	datad => \ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~10_combout\,
	combout => \ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~12_combout\);

-- Location: LCCOMB_X39_Y27_N4
\ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~16\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~16_combout\ = (!\operand_b[3]~input_o\ & ((\operand_b[2]~input_o\ & ((\ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~12_combout\))) # (!\operand_b[2]~input_o\ & 
-- (\ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~15_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~15_combout\,
	datab => \operand_b[2]~input_o\,
	datac => \operand_b[3]~input_o\,
	datad => \ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~12_combout\,
	combout => \ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~16_combout\);

-- Location: LCCOMB_X35_Y27_N10
\ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~20\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~20_combout\ = (\operand_b[1]~input_o\ & (\operand_a[27]~input_o\)) # (!\operand_b[1]~input_o\ & ((\operand_a[25]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \operand_a[27]~input_o\,
	datac => \operand_b[1]~input_o\,
	datad => \operand_a[25]~input_o\,
	combout => \ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~20_combout\);

-- Location: LCCOMB_X35_Y27_N4
\ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~21\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~21_combout\ = (\operand_b[1]~input_o\ & (\operand_a[26]~input_o\)) # (!\operand_b[1]~input_o\ & ((\operand_a[24]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \operand_b[1]~input_o\,
	datac => \operand_a[26]~input_o\,
	datad => \operand_a[24]~input_o\,
	combout => \ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~21_combout\);

-- Location: LCCOMB_X35_Y27_N30
\ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~22\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~22_combout\ = (\operand_b[0]~input_o\ & (\ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~20_combout\)) # (!\operand_b[0]~input_o\ & 
-- ((\ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~21_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~20_combout\,
	datab => \ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~21_combout\,
	datac => \operand_b[0]~input_o\,
	combout => \ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~22_combout\);

-- Location: LCCOMB_X37_Y28_N8
\ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~18\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~18_combout\ = (\operand_b[0]~input_o\ & ((\operand_a[31]~input_o\))) # (!\operand_b[0]~input_o\ & (\operand_a[30]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \operand_b[0]~input_o\,
	datab => \operand_a[30]~input_o\,
	datac => \operand_a[31]~input_o\,
	combout => \ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~18_combout\);

-- Location: LCCOMB_X39_Y25_N14
\ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~17\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~17_combout\ = (!\operand_b[1]~input_o\ & ((\operand_b[0]~input_o\ & ((\operand_a[29]~input_o\))) # (!\operand_b[0]~input_o\ & (\operand_a[28]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \operand_b[1]~input_o\,
	datab => \operand_a[28]~input_o\,
	datac => \operand_b[0]~input_o\,
	datad => \operand_a[29]~input_o\,
	combout => \ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~17_combout\);

-- Location: LCCOMB_X39_Y25_N0
\ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~19\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~19_combout\ = (\ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~17_combout\) # ((\ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~18_combout\ & \operand_b[1]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~18_combout\,
	datab => \ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~17_combout\,
	datac => \operand_b[1]~input_o\,
	combout => \ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~19_combout\);

-- Location: LCCOMB_X39_Y27_N30
\ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~23\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~23_combout\ = (\operand_b[2]~input_o\ & ((\ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~19_combout\))) # (!\operand_b[2]~input_o\ & 
-- (\ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~22_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~22_combout\,
	datac => \operand_b[2]~input_o\,
	datad => \ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~19_combout\,
	combout => \ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~23_combout\);

-- Location: LCCOMB_X39_Y27_N8
\ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~24\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~24_combout\ = (\ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~16_combout\) # ((\operand_b[3]~input_o\ & \ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~23_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \operand_b[3]~input_o\,
	datab => \ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~16_combout\,
	datac => \ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~23_combout\,
	combout => \ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~24_combout\);

-- Location: LCCOMB_X35_Y27_N0
\ALU|data_in|D5_in|Sel_SR|SRA_out|SRA1|Add1~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ALU|data_in|D5_in|Sel_SR|SRA_out|SRA1|Add1~1_combout\ = \operand_b[1]~input_o\ $ (\operand_b[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \operand_b[1]~input_o\,
	datac => \operand_b[0]~input_o\,
	combout => \ALU|data_in|D5_in|Sel_SR|SRA_out|SRA1|Add1~1_combout\);

-- Location: LCCOMB_X36_Y24_N18
\ALU|data_in|D5_in|Sel_SR|SRA_out|SRA1|Add1~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ALU|data_in|D5_in|Sel_SR|SRA_out|SRA1|Add1~0_combout\ = \operand_b[4]~input_o\ $ (((\ALU|data_in|D1_in|SLL|ShiftLeft0~4_combout\) # ((\operand_b[2]~input_o\) # (\operand_b[3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU|data_in|D1_in|SLL|ShiftLeft0~4_combout\,
	datab => \operand_b[2]~input_o\,
	datac => \operand_b[3]~input_o\,
	datad => \operand_b[4]~input_o\,
	combout => \ALU|data_in|D5_in|Sel_SR|SRA_out|SRA1|Add1~0_combout\);

-- Location: LCCOMB_X36_Y24_N16
\ALU|data_in|D5_in|Sel_SR|Data_out|MUX_Sel|Out[0]~16\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ALU|data_in|D5_in|Sel_SR|Data_out|MUX_Sel|Out[0]~16_combout\ = (\funct7~input_o\ & (!\operand_b[0]~input_o\ & \operand_a[31]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \funct7~input_o\,
	datac => \operand_b[0]~input_o\,
	datad => \operand_a[31]~input_o\,
	combout => \ALU|data_in|D5_in|Sel_SR|Data_out|MUX_Sel|Out[0]~16_combout\);

-- Location: LCCOMB_X37_Y24_N24
\ALU|data_in|D5_in|Sel_SR|Data_out|MUX_Sel|Out[1]~17\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ALU|data_in|D5_in|Sel_SR|Data_out|MUX_Sel|Out[1]~17_combout\ = (\operand_b[3]~input_o\ & (\operand_b[2]~input_o\ & ((\operand_b[0]~input_o\) # (\operand_b[1]~input_o\)))) # (!\operand_b[3]~input_o\ & (!\operand_b[0]~input_o\ & (!\operand_b[1]~input_o\ & 
-- !\operand_b[2]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \operand_b[0]~input_o\,
	datab => \operand_b[1]~input_o\,
	datac => \operand_b[3]~input_o\,
	datad => \operand_b[2]~input_o\,
	combout => \ALU|data_in|D5_in|Sel_SR|Data_out|MUX_Sel|Out[1]~17_combout\);

-- Location: LCCOMB_X36_Y26_N8
\ALU|data_in|D5_in|Sel_SR|Data_out|MUX_Sel|Out[0]~18\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ALU|data_in|D5_in|Sel_SR|Data_out|MUX_Sel|Out[0]~18_combout\ = (!\ALU|data_in|D5_in|Sel_SR|SRA_out|SRA1|Add1~1_combout\ & (!\ALU|data_in|D5_in|Sel_SR|SRA_out|SRA1|Add1~0_combout\ & (\ALU|data_in|D5_in|Sel_SR|Data_out|MUX_Sel|Out[0]~16_combout\ & 
-- \ALU|data_in|D5_in|Sel_SR|Data_out|MUX_Sel|Out[1]~17_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU|data_in|D5_in|Sel_SR|SRA_out|SRA1|Add1~1_combout\,
	datab => \ALU|data_in|D5_in|Sel_SR|SRA_out|SRA1|Add1~0_combout\,
	datac => \ALU|data_in|D5_in|Sel_SR|Data_out|MUX_Sel|Out[0]~16_combout\,
	datad => \ALU|data_in|D5_in|Sel_SR|Data_out|MUX_Sel|Out[1]~17_combout\,
	combout => \ALU|data_in|D5_in|Sel_SR|Data_out|MUX_Sel|Out[0]~18_combout\);

-- Location: LCCOMB_X37_Y24_N28
\ALU|data_in|D5_in|Sel_SR|Data_out|MUX_Sel|Out[0]~21\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ALU|data_in|D5_in|Sel_SR|Data_out|MUX_Sel|Out[0]~21_combout\ = (\ALU|data_in|D5_in|Sel_SR|Data_out|MUX_Sel|Out[0]~20_combout\) # ((\ALU|data_in|D5_in|Sel_SR|Data_out|MUX_Sel|Out[0]~18_combout\) # 
-- ((\ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~24_combout\ & \operand_b[4]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU|data_in|D5_in|Sel_SR|Data_out|MUX_Sel|Out[0]~20_combout\,
	datab => \ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~24_combout\,
	datac => \ALU|data_in|D5_in|Sel_SR|Data_out|MUX_Sel|Out[0]~18_combout\,
	datad => \operand_b[4]~input_o\,
	combout => \ALU|data_in|D5_in|Sel_SR|Data_out|MUX_Sel|Out[0]~21_combout\);

-- Location: LCCOMB_X37_Y28_N10
\ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~25\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~25_combout\ = (\operand_b[2]~input_o\) # ((!\operand_b[1]~input_o\ & \operand_b[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \operand_b[1]~input_o\,
	datac => \operand_b[2]~input_o\,
	datad => \operand_b[0]~input_o\,
	combout => \ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~25_combout\);

-- Location: LCCOMB_X37_Y28_N28
\ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~27\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~27_combout\ = (\operand_b[2]~input_o\) # (\operand_b[1]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \operand_b[2]~input_o\,
	datad => \operand_b[1]~input_o\,
	combout => \ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~27_combout\);

-- Location: LCCOMB_X39_Y28_N24
\ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~26\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~26_combout\ = (\operand_b[0]~input_o\ & (\operand_a[3]~input_o\)) # (!\operand_b[0]~input_o\ & ((\operand_a[2]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \operand_a[3]~input_o\,
	datac => \operand_b[0]~input_o\,
	datad => \operand_a[2]~input_o\,
	combout => \ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~26_combout\);

-- Location: LCCOMB_X37_Y28_N22
\ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~28\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~28_combout\ = (\ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~25_combout\ & (\ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~27_combout\)) # 
-- (!\ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~25_combout\ & ((\ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~27_combout\ & ((\ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~26_combout\))) # 
-- (!\ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~27_combout\ & (\operand_a[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~25_combout\,
	datab => \ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~27_combout\,
	datac => \operand_a[0]~input_o\,
	datad => \ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~26_combout\,
	combout => \ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~28_combout\);

-- Location: LCCOMB_X41_Y28_N8
\ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~29\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~29_combout\ = (\operand_b[1]~input_o\ & ((\operand_b[0]~input_o\ & ((\operand_a[7]~input_o\))) # (!\operand_b[0]~input_o\ & (\operand_a[6]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \operand_b[0]~input_o\,
	datab => \operand_b[1]~input_o\,
	datac => \operand_a[6]~input_o\,
	datad => \operand_a[7]~input_o\,
	combout => \ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~29_combout\);

-- Location: LCCOMB_X41_Y27_N24
\ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~30\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~30_combout\ = (\operand_b[0]~input_o\ & ((\operand_a[5]~input_o\))) # (!\operand_b[0]~input_o\ & (\operand_a[4]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \operand_a[4]~input_o\,
	datab => \operand_b[0]~input_o\,
	datac => \operand_a[5]~input_o\,
	combout => \ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~30_combout\);

-- Location: LCCOMB_X37_Y28_N24
\ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~31\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~31_combout\ = (\ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~29_combout\) # ((!\operand_b[1]~input_o\ & \ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~30_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \operand_b[1]~input_o\,
	datab => \ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~29_combout\,
	datad => \ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~30_combout\,
	combout => \ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~31_combout\);

-- Location: LCCOMB_X37_Y28_N2
\ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~32\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~32_combout\ = (\ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~28_combout\ & ((\ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~31_combout\) # 
-- ((!\ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~25_combout\)))) # (!\ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~28_combout\ & (((\operand_a[1]~input_o\ & \ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~25_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~28_combout\,
	datab => \ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~31_combout\,
	datac => \operand_a[1]~input_o\,
	datad => \ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~25_combout\,
	combout => \ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~32_combout\);

-- Location: LCCOMB_X37_Y24_N6
\ALU|data_in|D5_in|Sel_SR|Data_out|MUX_Sel|Out[0]~88\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ALU|data_in|D5_in|Sel_SR|Data_out|MUX_Sel|Out[0]~88_combout\ = (\ALU|data_in|D5_in|Sel_SR|Data_out|MUX_Sel|Out[0]~21_combout\) # ((!\operand_b[3]~input_o\ & (\ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~32_combout\ & !\operand_b[4]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \operand_b[3]~input_o\,
	datab => \ALU|data_in|D5_in|Sel_SR|Data_out|MUX_Sel|Out[0]~21_combout\,
	datac => \ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~32_combout\,
	datad => \operand_b[4]~input_o\,
	combout => \ALU|data_in|D5_in|Sel_SR|Data_out|MUX_Sel|Out[0]~88_combout\);

-- Location: LCCOMB_X37_Y24_N12
\ALU|data_OUT|MUX_Sel|Mux31~5\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ALU|data_OUT|MUX_Sel|Mux31~5_combout\ = (\alu_op[0]~input_o\ & (((\operand_a[0]~input_o\ & \operand_b[0]~input_o\)) # (!\alu_op[1]~input_o\))) # (!\alu_op[0]~input_o\ & ((\operand_a[0]~input_o\ & ((\alu_op[1]~input_o\) # (!\operand_b[0]~input_o\))) # 
-- (!\operand_a[0]~input_o\ & (\operand_b[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111011110110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \operand_a[0]~input_o\,
	datab => \operand_b[0]~input_o\,
	datac => \alu_op[0]~input_o\,
	datad => \alu_op[1]~input_o\,
	combout => \ALU|data_OUT|MUX_Sel|Mux31~5_combout\);

-- Location: LCCOMB_X37_Y24_N22
\ALU|data_OUT|MUX_Sel|Mux31~6\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ALU|data_OUT|MUX_Sel|Mux31~6_combout\ = (\ALU|data_OUT|MUX_Sel|Mux31~5_combout\ & ((\ALU|data_in|D5_in|Sel_SR|Data_out|MUX_Sel|Out[0]~88_combout\) # ((\alu_op[1]~input_o\) # (!\alu_op[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU|data_in|D5_in|Sel_SR|Data_out|MUX_Sel|Out[0]~88_combout\,
	datab => \alu_op[0]~input_o\,
	datac => \ALU|data_OUT|MUX_Sel|Mux31~5_combout\,
	datad => \alu_op[1]~input_o\,
	combout => \ALU|data_OUT|MUX_Sel|Mux31~6_combout\);

-- Location: LCCOMB_X37_Y24_N8
\ALU|data_OUT|MUX_Sel|Mux31~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ALU|data_OUT|MUX_Sel|Mux31~4_combout\ = (\alu_op[2]~input_o\ & ((\ALU|data_OUT|MUX_Sel|Mux31~6_combout\))) # (!\alu_op[2]~input_o\ & (\ALU|data_OUT|MUX_Sel|Mux31~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU|data_OUT|MUX_Sel|Mux31~3_combout\,
	datab => \alu_op[2]~input_o\,
	datac => \ALU|data_OUT|MUX_Sel|Mux31~6_combout\,
	combout => \ALU|data_OUT|MUX_Sel|Mux31~4_combout\);

-- Location: LCCOMB_X37_Y27_N12
\ALU|data_OUT|MUX_Sel|Mux30~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ALU|data_OUT|MUX_Sel|Mux30~1_combout\ = (\alu_op[0]~input_o\ & (((\operand_a[1]~input_o\ & \operand_b[1]~input_o\)) # (!\alu_op[1]~input_o\))) # (!\alu_op[0]~input_o\ & ((\operand_a[1]~input_o\ & ((\alu_op[1]~input_o\) # (!\operand_b[1]~input_o\))) # 
-- (!\operand_a[1]~input_o\ & (\operand_b[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001011011110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \operand_a[1]~input_o\,
	datab => \alu_op[0]~input_o\,
	datac => \operand_b[1]~input_o\,
	datad => \alu_op[1]~input_o\,
	combout => \ALU|data_OUT|MUX_Sel|Mux30~1_combout\);

-- Location: LCCOMB_X39_Y24_N20
\ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~38\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~38_combout\ = (\operand_b[1]~input_o\ & ((\operand_a[24]~input_o\))) # (!\operand_b[1]~input_o\ & (\operand_a[22]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \operand_a[22]~input_o\,
	datac => \operand_b[1]~input_o\,
	datad => \operand_a[24]~input_o\,
	combout => \ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~38_combout\);

-- Location: LCCOMB_X39_Y24_N22
\ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~39\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~39_combout\ = (\operand_b[0]~input_o\ & (\ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~38_combout\)) # (!\operand_b[0]~input_o\ & 
-- ((\ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~38_combout\,
	datac => \operand_b[0]~input_o\,
	datad => \ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~10_combout\,
	combout => \ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~39_combout\);

-- Location: LCCOMB_X38_Y24_N6
\ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~40\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~40_combout\ = (\operand_b[1]~input_o\ & ((\operand_a[20]~input_o\))) # (!\operand_b[1]~input_o\ & (\operand_a[18]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \operand_b[1]~input_o\,
	datab => \operand_a[18]~input_o\,
	datac => \operand_a[20]~input_o\,
	combout => \ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~40_combout\);

-- Location: LCCOMB_X38_Y24_N24
\ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~41\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~41_combout\ = (\operand_b[0]~input_o\ & (\ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~40_combout\)) # (!\operand_b[0]~input_o\ & 
-- ((\ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~13_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~40_combout\,
	datab => \operand_b[0]~input_o\,
	datad => \ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~13_combout\,
	combout => \ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~41_combout\);

-- Location: LCCOMB_X37_Y26_N26
\ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~42\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~42_combout\ = (!\operand_b[3]~input_o\ & ((\operand_b[2]~input_o\ & (\ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~39_combout\)) # (!\operand_b[2]~input_o\ & 
-- ((\ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~41_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~39_combout\,
	datab => \ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~41_combout\,
	datac => \operand_b[2]~input_o\,
	datad => \operand_b[3]~input_o\,
	combout => \ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~42_combout\);

-- Location: LCCOMB_X37_Y28_N4
\ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~43\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~43_combout\ = (!\operand_b[0]~input_o\ & ((\operand_b[1]~input_o\ & ((\operand_a[31]~input_o\))) # (!\operand_b[1]~input_o\ & (\operand_a[29]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \operand_b[1]~input_o\,
	datab => \operand_a[29]~input_o\,
	datac => \operand_a[31]~input_o\,
	datad => \operand_b[0]~input_o\,
	combout => \ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~43_combout\);

-- Location: LCCOMB_X37_Y28_N30
\ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~44\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~44_combout\ = (\ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~43_combout\) # ((!\operand_b[1]~input_o\ & (\operand_a[30]~input_o\ & \operand_b[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \operand_b[1]~input_o\,
	datab => \operand_a[30]~input_o\,
	datac => \ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~43_combout\,
	datad => \operand_b[0]~input_o\,
	combout => \ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~44_combout\);

-- Location: LCCOMB_X35_Y27_N16
\ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~45\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~45_combout\ = (\operand_b[1]~input_o\ & ((\operand_a[28]~input_o\))) # (!\operand_b[1]~input_o\ & (\operand_a[26]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \operand_a[26]~input_o\,
	datac => \operand_b[1]~input_o\,
	datad => \operand_a[28]~input_o\,
	combout => \ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~45_combout\);

-- Location: LCCOMB_X35_Y27_N26
\ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~46\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~46_combout\ = (\operand_b[0]~input_o\ & ((\ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~45_combout\))) # (!\operand_b[0]~input_o\ & 
-- (\ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~20_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~20_combout\,
	datac => \operand_b[0]~input_o\,
	datad => \ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~45_combout\,
	combout => \ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~46_combout\);

-- Location: LCCOMB_X38_Y26_N24
\ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~47\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~47_combout\ = (\operand_b[2]~input_o\ & (\ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~44_combout\)) # (!\operand_b[2]~input_o\ & 
-- ((\ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~46_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \operand_b[2]~input_o\,
	datab => \ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~44_combout\,
	datad => \ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~46_combout\,
	combout => \ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~47_combout\);

-- Location: LCCOMB_X37_Y26_N20
\ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~48\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~48_combout\ = (\ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~42_combout\) # ((\operand_b[3]~input_o\ & \ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~47_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~42_combout\,
	datab => \operand_b[3]~input_o\,
	datad => \ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~47_combout\,
	combout => \ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~48_combout\);

-- Location: LCCOMB_X38_Y23_N4
\ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~34\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~34_combout\ = (\operand_b[1]~input_o\ & ((\operand_a[16]~input_o\))) # (!\operand_b[1]~input_o\ & (\operand_a[14]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \operand_a[14]~input_o\,
	datab => \operand_a[16]~input_o\,
	datac => \operand_b[1]~input_o\,
	combout => \ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~34_combout\);

-- Location: LCCOMB_X38_Y23_N6
\ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~35\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~35_combout\ = (\operand_b[0]~input_o\ & (\ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~34_combout\)) # (!\operand_b[0]~input_o\ & 
-- ((\ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~34_combout\,
	datac => \operand_b[0]~input_o\,
	datad => \ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~4_combout\,
	combout => \ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~35_combout\);

-- Location: LCCOMB_X38_Y23_N16
\ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~36\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~36_combout\ = (\operand_b[1]~input_o\ & (\operand_a[12]~input_o\)) # (!\operand_b[1]~input_o\ & ((\operand_a[10]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \operand_b[1]~input_o\,
	datac => \operand_a[12]~input_o\,
	datad => \operand_a[10]~input_o\,
	combout => \ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~36_combout\);

-- Location: LCCOMB_X38_Y23_N18
\ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~37\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~37_combout\ = (\operand_b[0]~input_o\ & (\ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~36_combout\)) # (!\operand_b[0]~input_o\ & 
-- ((\ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~36_combout\,
	datac => \operand_b[0]~input_o\,
	datad => \ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~7_combout\,
	combout => \ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~37_combout\);

-- Location: LCCOMB_X37_Y26_N8
\ALU|data_in|D5_in|Sel_SR|Data_out|MUX_Sel|Out[1]~24\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ALU|data_in|D5_in|Sel_SR|Data_out|MUX_Sel|Out[1]~24_combout\ = (\ALU|data_in|D5_in|Sel_SR|Data_out|MUX_Sel|Out[0]~19_combout\ & ((\operand_b[2]~input_o\ & (\ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~35_combout\)) # (!\operand_b[2]~input_o\ & 
-- ((\ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~37_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~35_combout\,
	datab => \ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~37_combout\,
	datac => \operand_b[2]~input_o\,
	datad => \ALU|data_in|D5_in|Sel_SR|Data_out|MUX_Sel|Out[0]~19_combout\,
	combout => \ALU|data_in|D5_in|Sel_SR|Data_out|MUX_Sel|Out[1]~24_combout\);

-- Location: LCCOMB_X36_Y24_N12
\ALU|data_in|D5_in|Sel_SR|Data_out|MUX_Sel|Out[3]~22\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ALU|data_in|D5_in|Sel_SR|Data_out|MUX_Sel|Out[3]~22_combout\ = (\funct7~input_o\ & (\operand_b[0]~input_o\ & \operand_a[31]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \funct7~input_o\,
	datac => \operand_b[0]~input_o\,
	datad => \operand_a[31]~input_o\,
	combout => \ALU|data_in|D5_in|Sel_SR|Data_out|MUX_Sel|Out[3]~22_combout\);

-- Location: LCCOMB_X36_Y26_N26
\ALU|data_in|D5_in|Sel_SR|Data_out|MUX_Sel|Out[1]~23\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ALU|data_in|D5_in|Sel_SR|Data_out|MUX_Sel|Out[1]~23_combout\ = (\ALU|data_in|D5_in|Sel_SR|Data_out|MUX_Sel|Out[3]~22_combout\ & (!\ALU|data_in|D5_in|Sel_SR|SRA_out|SRA1|Add1~1_combout\ & (!\ALU|data_in|D5_in|Sel_SR|SRA_out|SRA1|Add1~0_combout\ & 
-- \ALU|data_in|D5_in|Sel_SR|Data_out|MUX_Sel|Out[1]~17_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU|data_in|D5_in|Sel_SR|Data_out|MUX_Sel|Out[3]~22_combout\,
	datab => \ALU|data_in|D5_in|Sel_SR|SRA_out|SRA1|Add1~1_combout\,
	datac => \ALU|data_in|D5_in|Sel_SR|SRA_out|SRA1|Add1~0_combout\,
	datad => \ALU|data_in|D5_in|Sel_SR|Data_out|MUX_Sel|Out[1]~17_combout\,
	combout => \ALU|data_in|D5_in|Sel_SR|Data_out|MUX_Sel|Out[1]~23_combout\);

-- Location: LCCOMB_X37_Y26_N30
\ALU|data_in|D5_in|Sel_SR|Data_out|MUX_Sel|Out[1]~25\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ALU|data_in|D5_in|Sel_SR|Data_out|MUX_Sel|Out[1]~25_combout\ = (\ALU|data_in|D5_in|Sel_SR|Data_out|MUX_Sel|Out[1]~24_combout\) # ((\ALU|data_in|D5_in|Sel_SR|Data_out|MUX_Sel|Out[1]~23_combout\) # 
-- ((\ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~48_combout\ & \operand_b[4]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~48_combout\,
	datab => \ALU|data_in|D5_in|Sel_SR|Data_out|MUX_Sel|Out[1]~24_combout\,
	datac => \ALU|data_in|D5_in|Sel_SR|Data_out|MUX_Sel|Out[1]~23_combout\,
	datad => \operand_b[4]~input_o\,
	combout => \ALU|data_in|D5_in|Sel_SR|Data_out|MUX_Sel|Out[1]~25_combout\);

-- Location: LCCOMB_X39_Y28_N20
\ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~49\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~49_combout\ = (\operand_b[0]~input_o\ & ((\operand_a[4]~input_o\))) # (!\operand_b[0]~input_o\ & (\operand_a[3]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \operand_a[3]~input_o\,
	datac => \operand_b[0]~input_o\,
	datad => \operand_a[4]~input_o\,
	combout => \ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~49_combout\);

-- Location: LCCOMB_X37_Y28_N16
\ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~50\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~50_combout\ = (\ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~25_combout\ & (\ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~27_combout\)) # 
-- (!\ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~25_combout\ & ((\ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~27_combout\ & ((\ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~49_combout\))) # 
-- (!\ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~27_combout\ & (\operand_a[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~25_combout\,
	datab => \ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~27_combout\,
	datac => \operand_a[1]~input_o\,
	datad => \ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~49_combout\,
	combout => \ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~50_combout\);

-- Location: LCCOMB_X41_Y28_N10
\ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~51\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~51_combout\ = (\operand_b[1]~input_o\ & ((\operand_b[0]~input_o\ & (\operand_a[8]~input_o\)) # (!\operand_b[0]~input_o\ & ((\operand_a[7]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \operand_b[0]~input_o\,
	datab => \operand_a[8]~input_o\,
	datac => \operand_b[1]~input_o\,
	datad => \operand_a[7]~input_o\,
	combout => \ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~51_combout\);

-- Location: LCCOMB_X41_Y28_N20
\ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~52\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~52_combout\ = (\operand_b[0]~input_o\ & (\operand_a[6]~input_o\)) # (!\operand_b[0]~input_o\ & ((\operand_a[5]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \operand_b[0]~input_o\,
	datac => \operand_a[6]~input_o\,
	datad => \operand_a[5]~input_o\,
	combout => \ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~52_combout\);

-- Location: LCCOMB_X41_Y28_N6
\ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~53\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~53_combout\ = (\ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~51_combout\) # ((!\operand_b[1]~input_o\ & \ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~52_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~51_combout\,
	datac => \operand_b[1]~input_o\,
	datad => \ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~52_combout\,
	combout => \ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~53_combout\);

-- Location: LCCOMB_X37_Y28_N26
\ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~54\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~54_combout\ = (\ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~25_combout\ & ((\ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~50_combout\ & 
-- ((\ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~53_combout\))) # (!\ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~50_combout\ & (\operand_a[2]~input_o\)))) # (!\ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~25_combout\ & 
-- (\ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~50_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110001100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~25_combout\,
	datab => \ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~50_combout\,
	datac => \operand_a[2]~input_o\,
	datad => \ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~53_combout\,
	combout => \ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~54_combout\);

-- Location: LCCOMB_X37_Y26_N14
\ALU|data_in|D5_in|Sel_SR|Data_out|MUX_Sel|Out[1]~89\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ALU|data_in|D5_in|Sel_SR|Data_out|MUX_Sel|Out[1]~89_combout\ = (\ALU|data_in|D5_in|Sel_SR|Data_out|MUX_Sel|Out[1]~25_combout\) # ((!\operand_b[3]~input_o\ & (\ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~54_combout\ & !\operand_b[4]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU|data_in|D5_in|Sel_SR|Data_out|MUX_Sel|Out[1]~25_combout\,
	datab => \operand_b[3]~input_o\,
	datac => \ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~54_combout\,
	datad => \operand_b[4]~input_o\,
	combout => \ALU|data_in|D5_in|Sel_SR|Data_out|MUX_Sel|Out[1]~89_combout\);

-- Location: LCCOMB_X37_Y27_N14
\ALU|data_OUT|MUX_Sel|Mux30~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ALU|data_OUT|MUX_Sel|Mux30~2_combout\ = (\ALU|data_OUT|MUX_Sel|Mux30~1_combout\ & (((\ALU|data_in|D5_in|Sel_SR|Data_out|MUX_Sel|Out[1]~89_combout\) # (\alu_op[1]~input_o\)) # (!\alu_op[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU|data_OUT|MUX_Sel|Mux30~1_combout\,
	datab => \alu_op[0]~input_o\,
	datac => \ALU|data_in|D5_in|Sel_SR|Data_out|MUX_Sel|Out[1]~89_combout\,
	datad => \alu_op[1]~input_o\,
	combout => \ALU|data_OUT|MUX_Sel|Mux30~2_combout\);

-- Location: LCCOMB_X39_Y28_N18
\ALU|data_in|D1_in|SLL|ShiftLeft0~6\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ALU|data_in|D1_in|SLL|ShiftLeft0~6_combout\ = (\operand_b[0]~input_o\ & ((\operand_a[0]~input_o\))) # (!\operand_b[0]~input_o\ & (\operand_a[1]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \operand_a[1]~input_o\,
	datac => \operand_b[0]~input_o\,
	datad => \operand_a[0]~input_o\,
	combout => \ALU|data_in|D1_in|SLL|ShiftLeft0~6_combout\);

-- Location: LCCOMB_X38_Y27_N14
\ALU|data_in|D1_in|SLL|ShiftLeft0~96\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ALU|data_in|D1_in|SLL|ShiftLeft0~96_combout\ = (\ALU|data_in|D1_in|SLL|ShiftLeft0~6_combout\ & (!\operand_b[2]~input_o\ & (!\operand_b[3]~input_o\ & !\operand_b[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU|data_in|D1_in|SLL|ShiftLeft0~6_combout\,
	datab => \operand_b[2]~input_o\,
	datac => \operand_b[3]~input_o\,
	datad => \operand_b[1]~input_o\,
	combout => \ALU|data_in|D1_in|SLL|ShiftLeft0~96_combout\);

-- Location: LCCOMB_X39_Y29_N16
\ALU|data_OUT|MUX_Sel|Mux16~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ALU|data_OUT|MUX_Sel|Mux16~0_combout\ = (\alu_op[0]~input_o\ & (!\alu_op[1]~input_o\ & (!\operand_b[4]~input_o\ & !\alu_op[2]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu_op[0]~input_o\,
	datab => \alu_op[1]~input_o\,
	datac => \operand_b[4]~input_o\,
	datad => \alu_op[2]~input_o\,
	combout => \ALU|data_OUT|MUX_Sel|Mux16~0_combout\);

-- Location: LCCOMB_X38_Y25_N24
\ALU|data_OUT|MUX_Sel|Mux30~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ALU|data_OUT|MUX_Sel|Mux30~0_combout\ = (\ALU|data_OUT|MUX_Sel|Mux30~2_combout\ & ((\alu_op[2]~input_o\) # ((\ALU|data_in|D1_in|SLL|ShiftLeft0~96_combout\ & \ALU|data_OUT|MUX_Sel|Mux16~0_combout\)))) # (!\ALU|data_OUT|MUX_Sel|Mux30~2_combout\ & 
-- (\ALU|data_in|D1_in|SLL|ShiftLeft0~96_combout\ & ((\ALU|data_OUT|MUX_Sel|Mux16~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU|data_OUT|MUX_Sel|Mux30~2_combout\,
	datab => \ALU|data_in|D1_in|SLL|ShiftLeft0~96_combout\,
	datac => \alu_op[2]~input_o\,
	datad => \ALU|data_OUT|MUX_Sel|Mux16~0_combout\,
	combout => \ALU|data_OUT|MUX_Sel|Mux30~0_combout\);

-- Location: LCCOMB_X39_Y24_N26
\ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~61\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~61_combout\ = (\operand_b[1]~input_o\ & (\operand_a[21]~input_o\)) # (!\operand_b[1]~input_o\ & ((\operand_a[19]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \operand_a[21]~input_o\,
	datac => \operand_b[1]~input_o\,
	datad => \operand_a[19]~input_o\,
	combout => \ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~61_combout\);

-- Location: LCCOMB_X38_Y24_N2
\ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~62\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~62_combout\ = (\operand_b[0]~input_o\ & ((\ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~61_combout\))) # (!\operand_b[0]~input_o\ & 
-- (\ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~40_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~40_combout\,
	datab => \ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~61_combout\,
	datad => \operand_b[0]~input_o\,
	combout => \ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~62_combout\);

-- Location: LCCOMB_X35_Y27_N24
\ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~59\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~59_combout\ = (\operand_b[1]~input_o\ & ((\operand_a[25]~input_o\))) # (!\operand_b[1]~input_o\ & (\operand_a[23]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \operand_a[23]~input_o\,
	datab => \operand_b[1]~input_o\,
	datad => \operand_a[25]~input_o\,
	combout => \ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~59_combout\);

-- Location: LCCOMB_X39_Y24_N8
\ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~60\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~60_combout\ = (\operand_b[0]~input_o\ & (\ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~59_combout\)) # (!\operand_b[0]~input_o\ & 
-- ((\ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~38_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~59_combout\,
	datac => \operand_b[0]~input_o\,
	datad => \ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~38_combout\,
	combout => \ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~60_combout\);

-- Location: LCCOMB_X36_Y25_N28
\ALU|data_in|D5_in|Sel_SR|Data_out|MUX_Sel|Out[10]~27\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ALU|data_in|D5_in|Sel_SR|Data_out|MUX_Sel|Out[10]~27_combout\ = (\operand_b[2]~input_o\ & ((\ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~60_combout\))) # (!\operand_b[2]~input_o\ & 
-- (\ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~62_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~62_combout\,
	datac => \operand_b[2]~input_o\,
	datad => \ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~60_combout\,
	combout => \ALU|data_in|D5_in|Sel_SR|Data_out|MUX_Sel|Out[10]~27_combout\);

-- Location: LCCOMB_X35_Y27_N28
\ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~56\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~56_combout\ = (\operand_b[1]~input_o\ & ((\operand_a[29]~input_o\))) # (!\operand_b[1]~input_o\ & (\operand_a[27]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \operand_a[27]~input_o\,
	datab => \operand_b[1]~input_o\,
	datac => \operand_a[29]~input_o\,
	combout => \ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~56_combout\);

-- Location: LCCOMB_X35_Y27_N14
\ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~57\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~57_combout\ = (\operand_b[0]~input_o\ & ((\ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~56_combout\))) # (!\operand_b[0]~input_o\ & 
-- (\ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~45_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~45_combout\,
	datac => \operand_b[0]~input_o\,
	datad => \ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~56_combout\,
	combout => \ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~57_combout\);

-- Location: LCCOMB_X36_Y27_N8
\ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~58\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~58_combout\ = (\operand_b[2]~input_o\ & (((!\operand_b[1]~input_o\ & \ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~18_combout\)))) # (!\operand_b[2]~input_o\ & 
-- (\ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~57_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~57_combout\,
	datab => \operand_b[1]~input_o\,
	datac => \ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~18_combout\,
	datad => \operand_b[2]~input_o\,
	combout => \ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~58_combout\);

-- Location: LCCOMB_X36_Y25_N30
\ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~63\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~63_combout\ = (\operand_b[3]~input_o\ & ((\ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~58_combout\))) # (!\operand_b[3]~input_o\ & 
-- (\ALU|data_in|D5_in|Sel_SR|Data_out|MUX_Sel|Out[10]~27_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ALU|data_in|D5_in|Sel_SR|Data_out|MUX_Sel|Out[10]~27_combout\,
	datac => \operand_b[3]~input_o\,
	datad => \ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~58_combout\,
	combout => \ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~63_combout\);

-- Location: LCCOMB_X36_Y25_N18
\ALU|data_in|D5_in|Sel_SR|Data_out|MUX_Sel|Out[2]~26\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ALU|data_in|D5_in|Sel_SR|Data_out|MUX_Sel|Out[2]~26_combout\ = (\ALU|data_in|D5_in|Sel_SR|Data_out|MUX_Sel|Out[1]~17_combout\ & (!\ALU|data_in|D5_in|Sel_SR|SRA_out|SRA1|Add1~0_combout\ & (\ALU|data_in|D5_in|Sel_SR|Data_out|MUX_Sel|Out[0]~16_combout\ & 
-- \ALU|data_in|D5_in|Sel_SR|SRA_out|SRA1|Add1~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU|data_in|D5_in|Sel_SR|Data_out|MUX_Sel|Out[1]~17_combout\,
	datab => \ALU|data_in|D5_in|Sel_SR|SRA_out|SRA1|Add1~0_combout\,
	datac => \ALU|data_in|D5_in|Sel_SR|Data_out|MUX_Sel|Out[0]~16_combout\,
	datad => \ALU|data_in|D5_in|Sel_SR|SRA_out|SRA1|Add1~1_combout\,
	combout => \ALU|data_in|D5_in|Sel_SR|Data_out|MUX_Sel|Out[2]~26_combout\);

-- Location: LCCOMB_X39_Y25_N18
\ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~64\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~64_combout\ = (\operand_b[3]~input_o\) # ((!\operand_b[2]~input_o\ & \operand_b[1]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \operand_b[2]~input_o\,
	datac => \operand_b[1]~input_o\,
	datad => \operand_b[3]~input_o\,
	combout => \ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~64_combout\);

-- Location: LCCOMB_X36_Y25_N8
\ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~55\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~55_combout\ = (!\operand_b[3]~input_o\ & !\operand_b[2]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \operand_b[3]~input_o\,
	datac => \operand_b[2]~input_o\,
	combout => \ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~55_combout\);

-- Location: LCCOMB_X41_Y28_N16
\ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~65\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~65_combout\ = (!\operand_b[0]~input_o\ & ((\operand_b[1]~input_o\ & (\operand_a[8]~input_o\)) # (!\operand_b[1]~input_o\ & ((\operand_a[6]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \operand_b[1]~input_o\,
	datab => \operand_a[8]~input_o\,
	datac => \operand_a[6]~input_o\,
	datad => \operand_b[0]~input_o\,
	combout => \ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~65_combout\);

-- Location: LCCOMB_X41_Y28_N18
\ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~66\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~66_combout\ = (\operand_b[1]~input_o\ & (\operand_a[9]~input_o\)) # (!\operand_b[1]~input_o\ & ((\operand_a[7]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \operand_b[1]~input_o\,
	datac => \operand_a[9]~input_o\,
	datad => \operand_a[7]~input_o\,
	combout => \ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~66_combout\);

-- Location: LCCOMB_X41_Y28_N28
\ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~67\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~67_combout\ = (\ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~65_combout\) # ((\operand_b[0]~input_o\ & \ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~66_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \operand_b[0]~input_o\,
	datab => \ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~65_combout\,
	datad => \ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~66_combout\,
	combout => \ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~67_combout\);

-- Location: LCCOMB_X36_Y25_N0
\ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~68\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~68_combout\ = (\ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~64_combout\ & (((!\ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~55_combout\)))) # 
-- (!\ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~64_combout\ & ((\ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~55_combout\ & (\ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~26_combout\)) # 
-- (!\ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~55_combout\ & ((\ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~67_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010111100101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~26_combout\,
	datab => \ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~64_combout\,
	datac => \ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~55_combout\,
	datad => \ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~67_combout\,
	combout => \ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~68_combout\);

-- Location: LCCOMB_X39_Y23_N30
\ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~71\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~71_combout\ = (\operand_b[1]~input_o\ & (\operand_a[13]~input_o\)) # (!\operand_b[1]~input_o\ & ((\operand_a[11]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \operand_b[1]~input_o\,
	datac => \operand_a[13]~input_o\,
	datad => \operand_a[11]~input_o\,
	combout => \ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~71_combout\);

-- Location: LCCOMB_X38_Y23_N14
\ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~72\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~72_combout\ = (\operand_b[0]~input_o\ & (\ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~71_combout\)) # (!\operand_b[0]~input_o\ & 
-- ((\ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~36_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~71_combout\,
	datab => \ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~36_combout\,
	datac => \operand_b[0]~input_o\,
	combout => \ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~72_combout\);

-- Location: LCCOMB_X39_Y23_N4
\ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~69\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~69_combout\ = (\operand_b[1]~input_o\ & ((\operand_a[17]~input_o\))) # (!\operand_b[1]~input_o\ & (\operand_a[15]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \operand_a[15]~input_o\,
	datac => \operand_b[1]~input_o\,
	datad => \operand_a[17]~input_o\,
	combout => \ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~69_combout\);

-- Location: LCCOMB_X38_Y23_N12
\ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~70\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~70_combout\ = (\operand_b[0]~input_o\ & ((\ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~69_combout\))) # (!\operand_b[0]~input_o\ & 
-- (\ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~34_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~34_combout\,
	datac => \operand_b[0]~input_o\,
	datad => \ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~69_combout\,
	combout => \ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~70_combout\);

-- Location: LCCOMB_X36_Y25_N26
\ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~73\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~73_combout\ = (\operand_b[2]~input_o\ & ((\ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~70_combout\))) # (!\operand_b[2]~input_o\ & 
-- (\ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~72_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \operand_b[2]~input_o\,
	datab => \ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~72_combout\,
	datac => \ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~70_combout\,
	combout => \ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~73_combout\);

-- Location: LCCOMB_X36_Y25_N4
\ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~74\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~74_combout\ = (\ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~68_combout\ & (((\ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~73_combout\) # 
-- (!\ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~64_combout\)))) # (!\ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~68_combout\ & (\ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~30_combout\ & 
-- ((\ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~64_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~30_combout\,
	datab => \ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~68_combout\,
	datac => \ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~73_combout\,
	datad => \ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~64_combout\,
	combout => \ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~74_combout\);

-- Location: LCCOMB_X36_Y25_N22
\ALU|data_in|D5_in|Sel_SR|Data_out|MUX_Sel|Out[2]~28\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ALU|data_in|D5_in|Sel_SR|Data_out|MUX_Sel|Out[2]~28_combout\ = (\ALU|data_in|D5_in|Sel_SR|Data_out|MUX_Sel|Out[2]~26_combout\) # ((\operand_b[4]~input_o\ & (\ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~63_combout\)) # (!\operand_b[4]~input_o\ & 
-- ((\ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~74_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~63_combout\,
	datab => \ALU|data_in|D5_in|Sel_SR|Data_out|MUX_Sel|Out[2]~26_combout\,
	datac => \ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~74_combout\,
	datad => \operand_b[4]~input_o\,
	combout => \ALU|data_in|D5_in|Sel_SR|Data_out|MUX_Sel|Out[2]~28_combout\);

-- Location: LCCOMB_X38_Y25_N20
\ALU|data_OUT|MUX_Sel|Mux29~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ALU|data_OUT|MUX_Sel|Mux29~1_combout\ = (\alu_op[1]~input_o\ & (\operand_b[2]~input_o\)) # (!\alu_op[1]~input_o\ & ((\alu_op[0]~input_o\ & ((\ALU|data_in|D5_in|Sel_SR|Data_out|MUX_Sel|Out[2]~28_combout\))) # (!\alu_op[0]~input_o\ & 
-- (\operand_b[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu_op[1]~input_o\,
	datab => \operand_b[2]~input_o\,
	datac => \alu_op[0]~input_o\,
	datad => \ALU|data_in|D5_in|Sel_SR|Data_out|MUX_Sel|Out[2]~28_combout\,
	combout => \ALU|data_OUT|MUX_Sel|Mux29~1_combout\);

-- Location: LCCOMB_X38_Y25_N22
\ALU|data_OUT|MUX_Sel|Mux29~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ALU|data_OUT|MUX_Sel|Mux29~2_combout\ = (\alu_op[0]~input_o\ & (\ALU|data_OUT|MUX_Sel|Mux29~1_combout\ & ((\operand_a[2]~input_o\) # (!\alu_op[1]~input_o\)))) # (!\alu_op[0]~input_o\ & ((\operand_a[2]~input_o\ & ((\alu_op[1]~input_o\) # 
-- (!\ALU|data_OUT|MUX_Sel|Mux29~1_combout\))) # (!\operand_a[2]~input_o\ & ((\ALU|data_OUT|MUX_Sel|Mux29~1_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu_op[1]~input_o\,
	datab => \alu_op[0]~input_o\,
	datac => \operand_a[2]~input_o\,
	datad => \ALU|data_OUT|MUX_Sel|Mux29~1_combout\,
	combout => \ALU|data_OUT|MUX_Sel|Mux29~2_combout\);

-- Location: LCCOMB_X39_Y28_N22
\ALU|data_in|D1_in|SLL|ShiftLeft0~7\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ALU|data_in|D1_in|SLL|ShiftLeft0~7_combout\ = (!\operand_b[0]~input_o\ & ((\operand_b[1]~input_o\ & ((\operand_a[0]~input_o\))) # (!\operand_b[1]~input_o\ & (\operand_a[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \operand_b[1]~input_o\,
	datab => \operand_a[2]~input_o\,
	datac => \operand_b[0]~input_o\,
	datad => \operand_a[0]~input_o\,
	combout => \ALU|data_in|D1_in|SLL|ShiftLeft0~7_combout\);

-- Location: LCCOMB_X39_Y28_N0
\ALU|data_in|D1_in|SLL|ShiftLeft0~8\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ALU|data_in|D1_in|SLL|ShiftLeft0~8_combout\ = (\ALU|data_in|D1_in|SLL|ShiftLeft0~7_combout\) # ((\operand_a[1]~input_o\ & (\operand_b[0]~input_o\ & !\operand_b[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \operand_a[1]~input_o\,
	datab => \operand_b[0]~input_o\,
	datac => \ALU|data_in|D1_in|SLL|ShiftLeft0~7_combout\,
	datad => \operand_b[1]~input_o\,
	combout => \ALU|data_in|D1_in|SLL|ShiftLeft0~8_combout\);

-- Location: LCCOMB_X37_Y25_N20
\ALU|data_in|D1_in|SLL|ShiftLeft0~97\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ALU|data_in|D1_in|SLL|ShiftLeft0~97_combout\ = (\ALU|data_in|D1_in|SLL|ShiftLeft0~8_combout\ & (!\operand_b[2]~input_o\ & !\operand_b[3]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU|data_in|D1_in|SLL|ShiftLeft0~8_combout\,
	datab => \operand_b[2]~input_o\,
	datad => \operand_b[3]~input_o\,
	combout => \ALU|data_in|D1_in|SLL|ShiftLeft0~97_combout\);

-- Location: LCCOMB_X38_Y25_N26
\ALU|data_OUT|MUX_Sel|Mux29~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ALU|data_OUT|MUX_Sel|Mux29~0_combout\ = (\ALU|data_OUT|MUX_Sel|Mux29~2_combout\ & ((\alu_op[2]~input_o\) # ((\ALU|data_in|D1_in|SLL|ShiftLeft0~97_combout\ & \ALU|data_OUT|MUX_Sel|Mux16~0_combout\)))) # (!\ALU|data_OUT|MUX_Sel|Mux29~2_combout\ & 
-- (\ALU|data_in|D1_in|SLL|ShiftLeft0~97_combout\ & ((\ALU|data_OUT|MUX_Sel|Mux16~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU|data_OUT|MUX_Sel|Mux29~2_combout\,
	datab => \ALU|data_in|D1_in|SLL|ShiftLeft0~97_combout\,
	datac => \alu_op[2]~input_o\,
	datad => \ALU|data_OUT|MUX_Sel|Mux16~0_combout\,
	combout => \ALU|data_OUT|MUX_Sel|Mux29~0_combout\);

-- Location: LCCOMB_X38_Y26_N4
\ALU|data_OUT|MUX_Sel|Mux28~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ALU|data_OUT|MUX_Sel|Mux28~1_combout\ = (\alu_op[0]~input_o\ & (((\operand_a[3]~input_o\ & \operand_b[3]~input_o\)) # (!\alu_op[1]~input_o\))) # (!\alu_op[0]~input_o\ & ((\operand_a[3]~input_o\ & ((\alu_op[1]~input_o\) # (!\operand_b[3]~input_o\))) # 
-- (!\operand_a[3]~input_o\ & ((\operand_b[3]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010110111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu_op[1]~input_o\,
	datab => \operand_a[3]~input_o\,
	datac => \operand_b[3]~input_o\,
	datad => \alu_op[0]~input_o\,
	combout => \ALU|data_OUT|MUX_Sel|Mux28~1_combout\);

-- Location: LCCOMB_X35_Y27_N6
\ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~78\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~78_combout\ = (\operand_b[0]~input_o\ & (\ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~21_combout\)) # (!\operand_b[0]~input_o\ & 
-- ((\ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~59_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~21_combout\,
	datac => \operand_b[0]~input_o\,
	datad => \ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~59_combout\,
	combout => \ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~78_combout\);

-- Location: LCCOMB_X39_Y24_N28
\ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~79\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~79_combout\ = (\operand_b[0]~input_o\ & ((\ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~11_combout\))) # (!\operand_b[0]~input_o\ & 
-- (\ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~61_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~61_combout\,
	datac => \operand_b[0]~input_o\,
	datad => \ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~11_combout\,
	combout => \ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~79_combout\);

-- Location: LCCOMB_X35_Y26_N24
\ALU|data_in|D5_in|Sel_SR|Data_out|MUX_Sel|Out[11]~30\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ALU|data_in|D5_in|Sel_SR|Data_out|MUX_Sel|Out[11]~30_combout\ = (\operand_b[2]~input_o\ & (\ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~78_combout\)) # (!\operand_b[2]~input_o\ & 
-- ((\ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~79_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \operand_b[2]~input_o\,
	datac => \ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~78_combout\,
	datad => \ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~79_combout\,
	combout => \ALU|data_in|D5_in|Sel_SR|Data_out|MUX_Sel|Out[11]~30_combout\);

-- Location: LCCOMB_X35_Y27_N2
\ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~75\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~75_combout\ = (\operand_b[0]~input_o\ & ((\operand_b[1]~input_o\ & (\operand_a[30]~input_o\)) # (!\operand_b[1]~input_o\ & ((\operand_a[28]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \operand_a[30]~input_o\,
	datab => \operand_b[1]~input_o\,
	datac => \operand_b[0]~input_o\,
	datad => \operand_a[28]~input_o\,
	combout => \ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~75_combout\);

-- Location: LCCOMB_X35_Y27_N12
\ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~76\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~76_combout\ = (\ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~75_combout\) # ((!\operand_b[0]~input_o\ & \ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~56_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~75_combout\,
	datac => \operand_b[0]~input_o\,
	datad => \ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~56_combout\,
	combout => \ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~76_combout\);

-- Location: LCCOMB_X36_Y24_N22
\ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~77\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~77_combout\ = (\operand_b[2]~input_o\ & (!\ALU|data_in|D1_in|SLL|ShiftLeft0~4_combout\ & ((\operand_a[31]~input_o\)))) # (!\operand_b[2]~input_o\ & 
-- (((\ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~76_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111010000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU|data_in|D1_in|SLL|ShiftLeft0~4_combout\,
	datab => \operand_b[2]~input_o\,
	datac => \ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~76_combout\,
	datad => \operand_a[31]~input_o\,
	combout => \ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~77_combout\);

-- Location: LCCOMB_X35_Y26_N10
\ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~80\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~80_combout\ = (\operand_b[3]~input_o\ & ((\ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~77_combout\))) # (!\operand_b[3]~input_o\ & 
-- (\ALU|data_in|D5_in|Sel_SR|Data_out|MUX_Sel|Out[11]~30_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ALU|data_in|D5_in|Sel_SR|Data_out|MUX_Sel|Out[11]~30_combout\,
	datac => \ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~77_combout\,
	datad => \operand_b[3]~input_o\,
	combout => \ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~80_combout\);

-- Location: LCCOMB_X36_Y26_N4
\ALU|data_in|D5_in|Sel_SR|Data_out|MUX_Sel|Out[3]~29\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ALU|data_in|D5_in|Sel_SR|Data_out|MUX_Sel|Out[3]~29_combout\ = (\ALU|data_in|D5_in|Sel_SR|Data_out|MUX_Sel|Out[3]~22_combout\ & (\ALU|data_in|D5_in|Sel_SR|SRA_out|SRA1|Add1~1_combout\ & (!\ALU|data_in|D5_in|Sel_SR|SRA_out|SRA1|Add1~0_combout\ & 
-- \ALU|data_in|D5_in|Sel_SR|Data_out|MUX_Sel|Out[1]~17_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU|data_in|D5_in|Sel_SR|Data_out|MUX_Sel|Out[3]~22_combout\,
	datab => \ALU|data_in|D5_in|Sel_SR|SRA_out|SRA1|Add1~1_combout\,
	datac => \ALU|data_in|D5_in|Sel_SR|SRA_out|SRA1|Add1~0_combout\,
	datad => \ALU|data_in|D5_in|Sel_SR|Data_out|MUX_Sel|Out[1]~17_combout\,
	combout => \ALU|data_in|D5_in|Sel_SR|Data_out|MUX_Sel|Out[3]~29_combout\);

-- Location: LCCOMB_X38_Y23_N0
\ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~84\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~84_combout\ = (\operand_b[0]~input_o\ & ((\ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~5_combout\))) # (!\operand_b[0]~input_o\ & 
-- (\ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~71_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~71_combout\,
	datab => \ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~5_combout\,
	datac => \operand_b[0]~input_o\,
	combout => \ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~84_combout\);

-- Location: LCCOMB_X38_Y24_N28
\ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~83\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~83_combout\ = (\operand_b[0]~input_o\ & (\ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~14_combout\)) # (!\operand_b[0]~input_o\ & 
-- ((\ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~69_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~14_combout\,
	datac => \ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~69_combout\,
	datad => \operand_b[0]~input_o\,
	combout => \ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~83_combout\);

-- Location: LCCOMB_X35_Y26_N30
\ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~85\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~85_combout\ = (\operand_b[2]~input_o\ & ((\ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~83_combout\))) # (!\operand_b[2]~input_o\ & 
-- (\ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~84_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~84_combout\,
	datab => \ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~83_combout\,
	datad => \operand_b[2]~input_o\,
	combout => \ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~85_combout\);

-- Location: LCCOMB_X39_Y25_N28
\ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~81\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~81_combout\ = (\operand_b[0]~input_o\ & (\ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~8_combout\)) # (!\operand_b[0]~input_o\ & 
-- ((\ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~66_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~8_combout\,
	datac => \operand_b[0]~input_o\,
	datad => \ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~66_combout\,
	combout => \ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~81_combout\);

-- Location: LCCOMB_X35_Y26_N12
\ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~82\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~82_combout\ = (\ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~55_combout\ & (((\ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~49_combout\ & 
-- !\ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~64_combout\)))) # (!\ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~55_combout\ & ((\ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~81_combout\) # 
-- ((\ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~64_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~81_combout\,
	datab => \ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~49_combout\,
	datac => \ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~55_combout\,
	datad => \ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~64_combout\,
	combout => \ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~82_combout\);

-- Location: LCCOMB_X35_Y26_N8
\ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~86\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~86_combout\ = (\ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~64_combout\ & ((\ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~82_combout\ & 
-- ((\ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~85_combout\))) # (!\ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~82_combout\ & (\ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~52_combout\)))) # 
-- (!\ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~64_combout\ & (((\ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~82_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~64_combout\,
	datab => \ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~52_combout\,
	datac => \ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~85_combout\,
	datad => \ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~82_combout\,
	combout => \ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~86_combout\);

-- Location: LCCOMB_X35_Y26_N26
\ALU|data_in|D5_in|Sel_SR|Data_out|MUX_Sel|Out[3]~31\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ALU|data_in|D5_in|Sel_SR|Data_out|MUX_Sel|Out[3]~31_combout\ = (\ALU|data_in|D5_in|Sel_SR|Data_out|MUX_Sel|Out[3]~29_combout\) # ((\operand_b[4]~input_o\ & (\ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~80_combout\)) # (!\operand_b[4]~input_o\ & 
-- ((\ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~86_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~80_combout\,
	datab => \ALU|data_in|D5_in|Sel_SR|Data_out|MUX_Sel|Out[3]~29_combout\,
	datac => \ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~86_combout\,
	datad => \operand_b[4]~input_o\,
	combout => \ALU|data_in|D5_in|Sel_SR|Data_out|MUX_Sel|Out[3]~31_combout\);

-- Location: LCCOMB_X38_Y26_N6
\ALU|data_OUT|MUX_Sel|Mux28~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ALU|data_OUT|MUX_Sel|Mux28~2_combout\ = (\ALU|data_OUT|MUX_Sel|Mux28~1_combout\ & ((\alu_op[1]~input_o\) # ((\ALU|data_in|D5_in|Sel_SR|Data_out|MUX_Sel|Out[3]~31_combout\) # (!\alu_op[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu_op[1]~input_o\,
	datab => \ALU|data_OUT|MUX_Sel|Mux28~1_combout\,
	datac => \ALU|data_in|D5_in|Sel_SR|Data_out|MUX_Sel|Out[3]~31_combout\,
	datad => \alu_op[0]~input_o\,
	combout => \ALU|data_OUT|MUX_Sel|Mux28~2_combout\);

-- Location: LCCOMB_X39_Y28_N2
\ALU|data_in|D1_in|SLL|ShiftLeft0~9\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ALU|data_in|D1_in|SLL|ShiftLeft0~9_combout\ = (!\operand_b[1]~input_o\ & ((\operand_b[0]~input_o\ & ((\operand_a[2]~input_o\))) # (!\operand_b[0]~input_o\ & (\operand_a[3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \operand_b[1]~input_o\,
	datab => \operand_a[3]~input_o\,
	datac => \operand_b[0]~input_o\,
	datad => \operand_a[2]~input_o\,
	combout => \ALU|data_in|D1_in|SLL|ShiftLeft0~9_combout\);

-- Location: LCCOMB_X39_Y28_N12
\ALU|data_in|D1_in|SLL|ShiftLeft0~10\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ALU|data_in|D1_in|SLL|ShiftLeft0~10_combout\ = (\ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~55_combout\ & ((\ALU|data_in|D1_in|SLL|ShiftLeft0~9_combout\) # ((\operand_b[1]~input_o\ & \ALU|data_in|D1_in|SLL|ShiftLeft0~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \operand_b[1]~input_o\,
	datab => \ALU|data_in|D1_in|SLL|ShiftLeft0~9_combout\,
	datac => \ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~55_combout\,
	datad => \ALU|data_in|D1_in|SLL|ShiftLeft0~6_combout\,
	combout => \ALU|data_in|D1_in|SLL|ShiftLeft0~10_combout\);

-- Location: LCCOMB_X38_Y26_N18
\ALU|data_OUT|MUX_Sel|Mux28~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ALU|data_OUT|MUX_Sel|Mux28~0_combout\ = (\ALU|data_OUT|MUX_Sel|Mux28~2_combout\ & ((\alu_op[2]~input_o\) # ((\ALU|data_OUT|MUX_Sel|Mux16~0_combout\ & \ALU|data_in|D1_in|SLL|ShiftLeft0~10_combout\)))) # (!\ALU|data_OUT|MUX_Sel|Mux28~2_combout\ & 
-- (\ALU|data_OUT|MUX_Sel|Mux16~0_combout\ & (\ALU|data_in|D1_in|SLL|ShiftLeft0~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU|data_OUT|MUX_Sel|Mux28~2_combout\,
	datab => \ALU|data_OUT|MUX_Sel|Mux16~0_combout\,
	datac => \ALU|data_in|D1_in|SLL|ShiftLeft0~10_combout\,
	datad => \alu_op[2]~input_o\,
	combout => \ALU|data_OUT|MUX_Sel|Mux28~0_combout\);

-- Location: LCCOMB_X35_Y27_N8
\ALU|data_in|D5_in|Sel_SR|Data_out|MUX_Sel|Out[5]~32\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ALU|data_in|D5_in|Sel_SR|Data_out|MUX_Sel|Out[5]~32_combout\ = (\operand_b[3]~input_o\ & (\operand_b[2]~input_o\ $ (((\operand_b[1]~input_o\) # (\operand_b[0]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \operand_b[1]~input_o\,
	datab => \operand_b[3]~input_o\,
	datac => \operand_b[0]~input_o\,
	datad => \operand_b[2]~input_o\,
	combout => \ALU|data_in|D5_in|Sel_SR|Data_out|MUX_Sel|Out[5]~32_combout\);

-- Location: LCCOMB_X35_Y26_N28
\ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~87\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~87_combout\ = (\operand_b[4]~input_o\) # ((\operand_b[2]~input_o\ & !\operand_b[3]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \operand_b[2]~input_o\,
	datab => \operand_b[3]~input_o\,
	datad => \operand_b[4]~input_o\,
	combout => \ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~87_combout\);

-- Location: LCCOMB_X39_Y27_N26
\ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~33\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~33_combout\ = (!\operand_b[3]~input_o\ & !\operand_b[4]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \operand_b[3]~input_o\,
	datad => \operand_b[4]~input_o\,
	combout => \ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~33_combout\);

-- Location: LCCOMB_X39_Y27_N12
\ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~88\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~88_combout\ = (\operand_b[2]~input_o\ & ((\ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~15_combout\))) # (!\operand_b[2]~input_o\ & 
-- (\ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~6_combout\,
	datac => \operand_b[2]~input_o\,
	datad => \ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~15_combout\,
	combout => \ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~88_combout\);

-- Location: LCCOMB_X39_Y27_N22
\ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~89\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~89_combout\ = (\ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~87_combout\ & (((!\ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~33_combout\)))) # 
-- (!\ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~87_combout\ & ((\ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~33_combout\ & (\ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~31_combout\)) # 
-- (!\ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~33_combout\ & ((\ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~88_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100111101001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~87_combout\,
	datab => \ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~31_combout\,
	datac => \ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~33_combout\,
	datad => \ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~88_combout\,
	combout => \ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~89_combout\);

-- Location: LCCOMB_X39_Y27_N24
\ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~90\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~90_combout\ = (!\operand_b[3]~input_o\ & ((\operand_b[2]~input_o\ & (\ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~22_combout\)) # (!\operand_b[2]~input_o\ & 
-- ((\ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~12_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \operand_b[2]~input_o\,
	datab => \ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~22_combout\,
	datac => \operand_b[3]~input_o\,
	datad => \ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~12_combout\,
	combout => \ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~90_combout\);

-- Location: LCCOMB_X39_Y27_N10
\ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~91\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~91_combout\ = (\ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~90_combout\) # ((\operand_b[3]~input_o\ & (\ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~19_combout\ & 
-- !\operand_b[2]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \operand_b[3]~input_o\,
	datab => \ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~19_combout\,
	datac => \operand_b[2]~input_o\,
	datad => \ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~90_combout\,
	combout => \ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~91_combout\);

-- Location: LCCOMB_X39_Y27_N28
\ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~92\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~92_combout\ = (\ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~87_combout\ & ((\ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~89_combout\ & 
-- ((\ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~91_combout\))) # (!\ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~89_combout\ & (\ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~9_combout\)))) # 
-- (!\ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~87_combout\ & (((\ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~89_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~87_combout\,
	datab => \ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~9_combout\,
	datac => \ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~89_combout\,
	datad => \ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~91_combout\,
	combout => \ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~92_combout\);

-- Location: LCCOMB_X36_Y24_N8
\ALU|data_in|D5_in|Sel_SR|Data_out|MUX_Sel|Out[0]~90\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ALU|data_in|D5_in|Sel_SR|Data_out|MUX_Sel|Out[0]~90_combout\ = (!\ALU|data_in|D5_in|Sel_SR|SRA_out|SRA1|Add1~0_combout\ & (\ALU|data_in|D5_in|Sel_SR|Data_out|MUX_Sel|Out[0]~16_combout\ & (\operand_b[1]~input_o\ $ (!\operand_b[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \operand_b[1]~input_o\,
	datab => \ALU|data_in|D5_in|Sel_SR|SRA_out|SRA1|Add1~0_combout\,
	datac => \operand_b[0]~input_o\,
	datad => \ALU|data_in|D5_in|Sel_SR|Data_out|MUX_Sel|Out[0]~16_combout\,
	combout => \ALU|data_in|D5_in|Sel_SR|Data_out|MUX_Sel|Out[0]~90_combout\);

-- Location: LCCOMB_X41_Y27_N26
\ALU|data_in|D5_in|Sel_SR|Data_out|MUX_Sel|Out[4]~33\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ALU|data_in|D5_in|Sel_SR|Data_out|MUX_Sel|Out[4]~33_combout\ = (\ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~92_combout\) # ((\ALU|data_in|D5_in|Sel_SR|Data_out|MUX_Sel|Out[5]~32_combout\ & 
-- \ALU|data_in|D5_in|Sel_SR|Data_out|MUX_Sel|Out[0]~90_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU|data_in|D5_in|Sel_SR|Data_out|MUX_Sel|Out[5]~32_combout\,
	datab => \ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~92_combout\,
	datad => \ALU|data_in|D5_in|Sel_SR|Data_out|MUX_Sel|Out[0]~90_combout\,
	combout => \ALU|data_in|D5_in|Sel_SR|Data_out|MUX_Sel|Out[4]~33_combout\);

-- Location: LCCOMB_X41_Y27_N16
\ALU|data_OUT|MUX_Sel|Mux27~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ALU|data_OUT|MUX_Sel|Mux27~1_combout\ = (\alu_op[1]~input_o\ & (((\operand_b[4]~input_o\)))) # (!\alu_op[1]~input_o\ & ((\alu_op[0]~input_o\ & (\ALU|data_in|D5_in|Sel_SR|Data_out|MUX_Sel|Out[4]~33_combout\)) # (!\alu_op[0]~input_o\ & 
-- ((\operand_b[4]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU|data_in|D5_in|Sel_SR|Data_out|MUX_Sel|Out[4]~33_combout\,
	datab => \alu_op[1]~input_o\,
	datac => \alu_op[0]~input_o\,
	datad => \operand_b[4]~input_o\,
	combout => \ALU|data_OUT|MUX_Sel|Mux27~1_combout\);

-- Location: LCCOMB_X41_Y27_N10
\ALU|data_OUT|MUX_Sel|Mux27~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ALU|data_OUT|MUX_Sel|Mux27~2_combout\ = (\operand_a[4]~input_o\ & ((\ALU|data_OUT|MUX_Sel|Mux27~1_combout\ & ((\alu_op[0]~input_o\) # (\alu_op[1]~input_o\))) # (!\ALU|data_OUT|MUX_Sel|Mux27~1_combout\ & (!\alu_op[0]~input_o\)))) # 
-- (!\operand_a[4]~input_o\ & (\ALU|data_OUT|MUX_Sel|Mux27~1_combout\ & ((!\alu_op[1]~input_o\) # (!\alu_op[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111011000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \operand_a[4]~input_o\,
	datab => \ALU|data_OUT|MUX_Sel|Mux27~1_combout\,
	datac => \alu_op[0]~input_o\,
	datad => \alu_op[1]~input_o\,
	combout => \ALU|data_OUT|MUX_Sel|Mux27~2_combout\);

-- Location: LCCOMB_X39_Y28_N30
\ALU|data_in|D1_in|SLL|ShiftLeft0~11\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ALU|data_in|D1_in|SLL|ShiftLeft0~11_combout\ = (\operand_b[0]~input_o\ & ((\operand_b[1]~input_o\ & (\operand_a[1]~input_o\)) # (!\operand_b[1]~input_o\ & ((\operand_a[3]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \operand_a[1]~input_o\,
	datab => \operand_a[3]~input_o\,
	datac => \operand_b[0]~input_o\,
	datad => \operand_b[1]~input_o\,
	combout => \ALU|data_in|D1_in|SLL|ShiftLeft0~11_combout\);

-- Location: LCCOMB_X39_Y28_N8
\ALU|data_in|D1_in|SLL|ShiftLeft0~12\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ALU|data_in|D1_in|SLL|ShiftLeft0~12_combout\ = (\operand_b[1]~input_o\ & (\operand_a[2]~input_o\)) # (!\operand_b[1]~input_o\ & ((\operand_a[4]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \operand_b[1]~input_o\,
	datac => \operand_a[2]~input_o\,
	datad => \operand_a[4]~input_o\,
	combout => \ALU|data_in|D1_in|SLL|ShiftLeft0~12_combout\);

-- Location: LCCOMB_X39_Y28_N10
\ALU|data_in|D1_in|SLL|ShiftLeft0~13\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ALU|data_in|D1_in|SLL|ShiftLeft0~13_combout\ = (\ALU|data_in|D1_in|SLL|ShiftLeft0~11_combout\) # ((\ALU|data_in|D1_in|SLL|ShiftLeft0~12_combout\ & !\operand_b[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111010101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU|data_in|D1_in|SLL|ShiftLeft0~11_combout\,
	datab => \ALU|data_in|D1_in|SLL|ShiftLeft0~12_combout\,
	datac => \operand_b[0]~input_o\,
	combout => \ALU|data_in|D1_in|SLL|ShiftLeft0~13_combout\);

-- Location: LCCOMB_X37_Y24_N18
\ALU|data_in|D1_in|SLL|ShiftLeft0~14\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ALU|data_in|D1_in|SLL|ShiftLeft0~14_combout\ = (\operand_b[2]~input_o\ & (!\ALU|data_in|D1_in|SLL|ShiftLeft0~4_combout\ & (\operand_a[0]~input_o\))) # (!\operand_b[2]~input_o\ & (((\ALU|data_in|D1_in|SLL|ShiftLeft0~13_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111010100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \operand_b[2]~input_o\,
	datab => \ALU|data_in|D1_in|SLL|ShiftLeft0~4_combout\,
	datac => \operand_a[0]~input_o\,
	datad => \ALU|data_in|D1_in|SLL|ShiftLeft0~13_combout\,
	combout => \ALU|data_in|D1_in|SLL|ShiftLeft0~14_combout\);

-- Location: LCCOMB_X41_Y26_N0
\ALU|data_OUT|MUX_Sel|Mux26~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ALU|data_OUT|MUX_Sel|Mux26~0_combout\ = (!\alu_op[1]~input_o\ & \alu_op[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \alu_op[1]~input_o\,
	datac => \alu_op[0]~input_o\,
	combout => \ALU|data_OUT|MUX_Sel|Mux26~0_combout\);

-- Location: LCCOMB_X37_Y27_N24
\ALU|data_OUT|MUX_Sel|Mux24~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ALU|data_OUT|MUX_Sel|Mux24~0_combout\ = (!\operand_b[4]~input_o\ & (!\operand_b[3]~input_o\ & (!\alu_op[2]~input_o\ & \ALU|data_OUT|MUX_Sel|Mux26~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \operand_b[4]~input_o\,
	datab => \operand_b[3]~input_o\,
	datac => \alu_op[2]~input_o\,
	datad => \ALU|data_OUT|MUX_Sel|Mux26~0_combout\,
	combout => \ALU|data_OUT|MUX_Sel|Mux24~0_combout\);

-- Location: LCCOMB_X37_Y27_N2
\ALU|data_OUT|MUX_Sel|Mux27~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ALU|data_OUT|MUX_Sel|Mux27~0_combout\ = (\ALU|data_OUT|MUX_Sel|Mux27~2_combout\ & ((\alu_op[2]~input_o\) # ((\ALU|data_in|D1_in|SLL|ShiftLeft0~14_combout\ & \ALU|data_OUT|MUX_Sel|Mux24~0_combout\)))) # (!\ALU|data_OUT|MUX_Sel|Mux27~2_combout\ & 
-- (\ALU|data_in|D1_in|SLL|ShiftLeft0~14_combout\ & ((\ALU|data_OUT|MUX_Sel|Mux24~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU|data_OUT|MUX_Sel|Mux27~2_combout\,
	datab => \ALU|data_in|D1_in|SLL|ShiftLeft0~14_combout\,
	datac => \alu_op[2]~input_o\,
	datad => \ALU|data_OUT|MUX_Sel|Mux24~0_combout\,
	combout => \ALU|data_OUT|MUX_Sel|Mux27~0_combout\);

-- Location: LCCOMB_X37_Y24_N4
\ALU|data_in|D5_in|Sel_SR|Data_out|MUX_Sel|Out[5]~34\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ALU|data_in|D5_in|Sel_SR|Data_out|MUX_Sel|Out[5]~34_combout\ = (\operand_b[3]~input_o\ & (\operand_b[4]~input_o\ & (\operand_b[2]~input_o\ $ (\ALU|data_in|D1_in|SLL|ShiftLeft0~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \operand_b[2]~input_o\,
	datab => \ALU|data_in|D1_in|SLL|ShiftLeft0~4_combout\,
	datac => \operand_b[3]~input_o\,
	datad => \operand_b[4]~input_o\,
	combout => \ALU|data_in|D5_in|Sel_SR|Data_out|MUX_Sel|Out[5]~34_combout\);

-- Location: LCCOMB_X37_Y26_N24
\ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~93\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~93_combout\ = (\operand_b[2]~input_o\ & ((\ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~41_combout\))) # (!\operand_b[2]~input_o\ & 
-- (\ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~35_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~35_combout\,
	datac => \operand_b[2]~input_o\,
	datad => \ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~41_combout\,
	combout => \ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~93_combout\);

-- Location: LCCOMB_X37_Y26_N2
\ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~94\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~94_combout\ = (\ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~33_combout\ & (((!\ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~87_combout\ & 
-- \ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~53_combout\)))) # (!\ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~33_combout\ & ((\ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~93_combout\) # 
-- ((\ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~87_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111001010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~33_combout\,
	datab => \ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~93_combout\,
	datac => \ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~87_combout\,
	datad => \ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~53_combout\,
	combout => \ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~94_combout\);

-- Location: LCCOMB_X37_Y26_N4
\ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~95\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~95_combout\ = (!\operand_b[3]~input_o\ & ((\operand_b[2]~input_o\ & ((\ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~46_combout\))) # (!\operand_b[2]~input_o\ & 
-- (\ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~39_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~39_combout\,
	datab => \operand_b[2]~input_o\,
	datac => \ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~46_combout\,
	datad => \operand_b[3]~input_o\,
	combout => \ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~95_combout\);

-- Location: LCCOMB_X37_Y26_N22
\ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~96\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~96_combout\ = (\ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~95_combout\) # ((!\operand_b[2]~input_o\ & (\ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~44_combout\ & 
-- \operand_b[3]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~95_combout\,
	datab => \operand_b[2]~input_o\,
	datac => \ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~44_combout\,
	datad => \operand_b[3]~input_o\,
	combout => \ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~96_combout\);

-- Location: LCCOMB_X37_Y26_N16
\ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~97\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~97_combout\ = (\ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~87_combout\ & ((\ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~94_combout\ & 
-- (\ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~96_combout\)) # (!\ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~94_combout\ & ((\ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~37_combout\))))) # 
-- (!\ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~87_combout\ & (\ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~94_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~87_combout\,
	datab => \ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~94_combout\,
	datac => \ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~96_combout\,
	datad => \ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~37_combout\,
	combout => \ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~97_combout\);

-- Location: LCCOMB_X36_Y26_N30
\ALU|data_in|D5_in|Sel_SR|Data_out|MUX_Sel|Out[5]~35\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ALU|data_in|D5_in|Sel_SR|Data_out|MUX_Sel|Out[5]~35_combout\ = (\ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~97_combout\) # ((\ALU|data_in|D5_in|Sel_SR|Data_out|MUX_Sel|Out[3]~22_combout\ & 
-- (\ALU|data_in|D5_in|Sel_SR|Data_out|MUX_Sel|Out[5]~34_combout\ & !\ALU|data_in|D5_in|Sel_SR|SRA_out|SRA1|Add1~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU|data_in|D5_in|Sel_SR|Data_out|MUX_Sel|Out[3]~22_combout\,
	datab => \ALU|data_in|D5_in|Sel_SR|Data_out|MUX_Sel|Out[5]~34_combout\,
	datac => \ALU|data_in|D5_in|Sel_SR|SRA_out|SRA1|Add1~1_combout\,
	datad => \ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~97_combout\,
	combout => \ALU|data_in|D5_in|Sel_SR|Data_out|MUX_Sel|Out[5]~35_combout\);

-- Location: LCCOMB_X41_Y27_N20
\ALU|data_OUT|MUX_Sel|Mux26~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ALU|data_OUT|MUX_Sel|Mux26~2_combout\ = (\alu_op[0]~input_o\ & (((\operand_b[5]~input_o\ & \operand_a[5]~input_o\)) # (!\alu_op[1]~input_o\))) # (!\alu_op[0]~input_o\ & ((\operand_b[5]~input_o\ & ((\alu_op[1]~input_o\) # (!\operand_a[5]~input_o\))) # 
-- (!\operand_b[5]~input_o\ & (\operand_a[5]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001011011110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \operand_b[5]~input_o\,
	datab => \alu_op[0]~input_o\,
	datac => \operand_a[5]~input_o\,
	datad => \alu_op[1]~input_o\,
	combout => \ALU|data_OUT|MUX_Sel|Mux26~2_combout\);

-- Location: LCCOMB_X41_Y27_N22
\ALU|data_OUT|MUX_Sel|Mux26~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ALU|data_OUT|MUX_Sel|Mux26~3_combout\ = (\ALU|data_OUT|MUX_Sel|Mux26~2_combout\ & ((\ALU|data_in|D5_in|Sel_SR|Data_out|MUX_Sel|Out[5]~35_combout\) # ((\alu_op[1]~input_o\) # (!\alu_op[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU|data_in|D5_in|Sel_SR|Data_out|MUX_Sel|Out[5]~35_combout\,
	datab => \ALU|data_OUT|MUX_Sel|Mux26~2_combout\,
	datac => \alu_op[0]~input_o\,
	datad => \alu_op[1]~input_o\,
	combout => \ALU|data_OUT|MUX_Sel|Mux26~3_combout\);

-- Location: LCCOMB_X39_Y28_N4
\ALU|data_in|D1_in|SLL|ShiftLeft0~15\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ALU|data_in|D1_in|SLL|ShiftLeft0~15_combout\ = (\operand_b[1]~input_o\ & (\operand_a[3]~input_o\)) # (!\operand_b[1]~input_o\ & ((\operand_a[5]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \operand_b[1]~input_o\,
	datac => \operand_a[3]~input_o\,
	datad => \operand_a[5]~input_o\,
	combout => \ALU|data_in|D1_in|SLL|ShiftLeft0~15_combout\);

-- Location: LCCOMB_X39_Y28_N6
\ALU|data_in|D1_in|SLL|ShiftLeft0~16\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ALU|data_in|D1_in|SLL|ShiftLeft0~16_combout\ = (\operand_b[0]~input_o\ & (\ALU|data_in|D1_in|SLL|ShiftLeft0~12_combout\)) # (!\operand_b[0]~input_o\ & ((\ALU|data_in|D1_in|SLL|ShiftLeft0~15_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ALU|data_in|D1_in|SLL|ShiftLeft0~12_combout\,
	datac => \operand_b[0]~input_o\,
	datad => \ALU|data_in|D1_in|SLL|ShiftLeft0~15_combout\,
	combout => \ALU|data_in|D1_in|SLL|ShiftLeft0~16_combout\);

-- Location: LCCOMB_X38_Y27_N24
\ALU|data_in|D1_in|SLL|ShiftLeft0~17\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ALU|data_in|D1_in|SLL|ShiftLeft0~17_combout\ = (\operand_b[2]~input_o\ & (\ALU|data_in|D1_in|SLL|ShiftLeft0~6_combout\ & (!\operand_b[1]~input_o\))) # (!\operand_b[2]~input_o\ & (((\ALU|data_in|D1_in|SLL|ShiftLeft0~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010111100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU|data_in|D1_in|SLL|ShiftLeft0~6_combout\,
	datab => \operand_b[1]~input_o\,
	datac => \operand_b[2]~input_o\,
	datad => \ALU|data_in|D1_in|SLL|ShiftLeft0~16_combout\,
	combout => \ALU|data_in|D1_in|SLL|ShiftLeft0~17_combout\);

-- Location: LCCOMB_X37_Y27_N28
\ALU|data_OUT|MUX_Sel|Mux26~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ALU|data_OUT|MUX_Sel|Mux26~1_combout\ = (\ALU|data_OUT|MUX_Sel|Mux26~3_combout\ & ((\alu_op[2]~input_o\) # ((\ALU|data_in|D1_in|SLL|ShiftLeft0~17_combout\ & \ALU|data_OUT|MUX_Sel|Mux24~0_combout\)))) # (!\ALU|data_OUT|MUX_Sel|Mux26~3_combout\ & 
-- (\ALU|data_in|D1_in|SLL|ShiftLeft0~17_combout\ & ((\ALU|data_OUT|MUX_Sel|Mux24~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU|data_OUT|MUX_Sel|Mux26~3_combout\,
	datab => \ALU|data_in|D1_in|SLL|ShiftLeft0~17_combout\,
	datac => \alu_op[2]~input_o\,
	datad => \ALU|data_OUT|MUX_Sel|Mux24~0_combout\,
	combout => \ALU|data_OUT|MUX_Sel|Mux26~1_combout\);

-- Location: LCCOMB_X36_Y27_N12
\ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~100\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~100_combout\ = (!\operand_b[3]~input_o\ & ((\operand_b[2]~input_o\ & ((\ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~57_combout\))) # (!\operand_b[2]~input_o\ & 
-- (\ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~60_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \operand_b[3]~input_o\,
	datab => \operand_b[2]~input_o\,
	datac => \ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~60_combout\,
	datad => \ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~57_combout\,
	combout => \ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~100_combout\);

-- Location: LCCOMB_X36_Y27_N22
\ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~101\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~101_combout\ = (\ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~100_combout\) # ((!\ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~27_combout\ & 
-- (\ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~18_combout\ & \operand_b[3]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~100_combout\,
	datab => \ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~27_combout\,
	datac => \ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~18_combout\,
	datad => \operand_b[3]~input_o\,
	combout => \ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~101_combout\);

-- Location: LCCOMB_X36_Y25_N16
\ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~98\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~98_combout\ = (\operand_b[2]~input_o\ & ((\ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~62_combout\))) # (!\operand_b[2]~input_o\ & 
-- (\ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~70_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~70_combout\,
	datac => \operand_b[2]~input_o\,
	datad => \ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~62_combout\,
	combout => \ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~98_combout\);

-- Location: LCCOMB_X36_Y27_N18
\ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~99\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~99_combout\ = (\ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~87_combout\ & (!\ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~33_combout\)) # 
-- (!\ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~87_combout\ & ((\ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~33_combout\ & ((\ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~67_combout\))) # 
-- (!\ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~33_combout\ & (\ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~98_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011000110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~87_combout\,
	datab => \ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~33_combout\,
	datac => \ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~98_combout\,
	datad => \ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~67_combout\,
	combout => \ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~99_combout\);

-- Location: LCCOMB_X36_Y27_N24
\ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~102\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~102_combout\ = (\ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~87_combout\ & ((\ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~99_combout\ & 
-- ((\ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~101_combout\))) # (!\ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~99_combout\ & (\ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~72_combout\)))) # 
-- (!\ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~87_combout\ & (((\ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~99_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~87_combout\,
	datab => \ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~72_combout\,
	datac => \ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~101_combout\,
	datad => \ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~99_combout\,
	combout => \ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~102_combout\);

-- Location: LCCOMB_X36_Y27_N10
\ALU|data_in|D5_in|Sel_SR|Data_out|MUX_Sel|Out[6]~91\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ALU|data_in|D5_in|Sel_SR|Data_out|MUX_Sel|Out[6]~91_combout\ = (!\ALU|data_in|D5_in|Sel_SR|SRA_out|SRA1|Add1~0_combout\ & (\ALU|data_in|D5_in|Sel_SR|Data_out|MUX_Sel|Out[0]~16_combout\ & (\operand_b[1]~input_o\ $ (\operand_b[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU|data_in|D5_in|Sel_SR|SRA_out|SRA1|Add1~0_combout\,
	datab => \ALU|data_in|D5_in|Sel_SR|Data_out|MUX_Sel|Out[0]~16_combout\,
	datac => \operand_b[1]~input_o\,
	datad => \operand_b[0]~input_o\,
	combout => \ALU|data_in|D5_in|Sel_SR|Data_out|MUX_Sel|Out[6]~91_combout\);

-- Location: LCCOMB_X36_Y27_N26
\ALU|data_in|D5_in|Sel_SR|Data_out|MUX_Sel|Out[6]~36\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ALU|data_in|D5_in|Sel_SR|Data_out|MUX_Sel|Out[6]~36_combout\ = (\ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~102_combout\) # ((\ALU|data_in|D5_in|Sel_SR|Data_out|MUX_Sel|Out[5]~32_combout\ & 
-- \ALU|data_in|D5_in|Sel_SR|Data_out|MUX_Sel|Out[6]~91_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU|data_in|D5_in|Sel_SR|Data_out|MUX_Sel|Out[5]~32_combout\,
	datab => \ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~102_combout\,
	datad => \ALU|data_in|D5_in|Sel_SR|Data_out|MUX_Sel|Out[6]~91_combout\,
	combout => \ALU|data_in|D5_in|Sel_SR|Data_out|MUX_Sel|Out[6]~36_combout\);

-- Location: LCCOMB_X37_Y27_N8
\ALU|data_OUT|MUX_Sel|Mux25~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ALU|data_OUT|MUX_Sel|Mux25~1_combout\ = (\alu_op[1]~input_o\ & (\operand_b[6]~input_o\)) # (!\alu_op[1]~input_o\ & ((\alu_op[0]~input_o\ & ((\ALU|data_in|D5_in|Sel_SR|Data_out|MUX_Sel|Out[6]~36_combout\))) # (!\alu_op[0]~input_o\ & 
-- (\operand_b[6]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu_op[1]~input_o\,
	datab => \operand_b[6]~input_o\,
	datac => \ALU|data_in|D5_in|Sel_SR|Data_out|MUX_Sel|Out[6]~36_combout\,
	datad => \alu_op[0]~input_o\,
	combout => \ALU|data_OUT|MUX_Sel|Mux25~1_combout\);

-- Location: LCCOMB_X37_Y27_N26
\ALU|data_OUT|MUX_Sel|Mux25~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ALU|data_OUT|MUX_Sel|Mux25~2_combout\ = (\ALU|data_OUT|MUX_Sel|Mux25~1_combout\ & ((\alu_op[1]~input_o\ & ((\operand_a[6]~input_o\) # (!\alu_op[0]~input_o\))) # (!\alu_op[1]~input_o\ & ((\alu_op[0]~input_o\) # (!\operand_a[6]~input_o\))))) # 
-- (!\ALU|data_OUT|MUX_Sel|Mux25~1_combout\ & (((\operand_a[6]~input_o\ & !\alu_op[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010010111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu_op[1]~input_o\,
	datab => \ALU|data_OUT|MUX_Sel|Mux25~1_combout\,
	datac => \operand_a[6]~input_o\,
	datad => \alu_op[0]~input_o\,
	combout => \ALU|data_OUT|MUX_Sel|Mux25~2_combout\);

-- Location: LCCOMB_X39_Y28_N16
\ALU|data_in|D1_in|SLL|ShiftLeft0~18\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ALU|data_in|D1_in|SLL|ShiftLeft0~18_combout\ = (\operand_b[1]~input_o\ & (\operand_a[4]~input_o\)) # (!\operand_b[1]~input_o\ & ((\operand_a[6]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \operand_b[1]~input_o\,
	datab => \operand_a[4]~input_o\,
	datad => \operand_a[6]~input_o\,
	combout => \ALU|data_in|D1_in|SLL|ShiftLeft0~18_combout\);

-- Location: LCCOMB_X39_Y28_N26
\ALU|data_in|D1_in|SLL|ShiftLeft0~19\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ALU|data_in|D1_in|SLL|ShiftLeft0~19_combout\ = (\operand_b[0]~input_o\ & ((\ALU|data_in|D1_in|SLL|ShiftLeft0~15_combout\))) # (!\operand_b[0]~input_o\ & (\ALU|data_in|D1_in|SLL|ShiftLeft0~18_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ALU|data_in|D1_in|SLL|ShiftLeft0~18_combout\,
	datac => \operand_b[0]~input_o\,
	datad => \ALU|data_in|D1_in|SLL|ShiftLeft0~15_combout\,
	combout => \ALU|data_in|D1_in|SLL|ShiftLeft0~19_combout\);

-- Location: LCCOMB_X37_Y25_N16
\ALU|data_in|D1_in|SLL|ShiftLeft0~20\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ALU|data_in|D1_in|SLL|ShiftLeft0~20_combout\ = (\operand_b[2]~input_o\ & ((\ALU|data_in|D1_in|SLL|ShiftLeft0~8_combout\))) # (!\operand_b[2]~input_o\ & (\ALU|data_in|D1_in|SLL|ShiftLeft0~19_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \operand_b[2]~input_o\,
	datac => \ALU|data_in|D1_in|SLL|ShiftLeft0~19_combout\,
	datad => \ALU|data_in|D1_in|SLL|ShiftLeft0~8_combout\,
	combout => \ALU|data_in|D1_in|SLL|ShiftLeft0~20_combout\);

-- Location: LCCOMB_X37_Y27_N22
\ALU|data_OUT|MUX_Sel|Mux25~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ALU|data_OUT|MUX_Sel|Mux25~0_combout\ = (\ALU|data_OUT|MUX_Sel|Mux25~2_combout\ & ((\alu_op[2]~input_o\) # ((\ALU|data_OUT|MUX_Sel|Mux24~0_combout\ & \ALU|data_in|D1_in|SLL|ShiftLeft0~20_combout\)))) # (!\ALU|data_OUT|MUX_Sel|Mux25~2_combout\ & 
-- (\ALU|data_OUT|MUX_Sel|Mux24~0_combout\ & ((\ALU|data_in|D1_in|SLL|ShiftLeft0~20_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU|data_OUT|MUX_Sel|Mux25~2_combout\,
	datab => \ALU|data_OUT|MUX_Sel|Mux24~0_combout\,
	datac => \alu_op[2]~input_o\,
	datad => \ALU|data_in|D1_in|SLL|ShiftLeft0~20_combout\,
	combout => \ALU|data_OUT|MUX_Sel|Mux25~0_combout\);

-- Location: LCCOMB_X41_Y28_N14
\ALU|data_in|D1_in|SLL|ShiftLeft0~22\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ALU|data_in|D1_in|SLL|ShiftLeft0~22_combout\ = (\operand_b[1]~input_o\ & (\operand_a[5]~input_o\)) # (!\operand_b[1]~input_o\ & ((\operand_a[7]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \operand_a[5]~input_o\,
	datac => \operand_b[1]~input_o\,
	datad => \operand_a[7]~input_o\,
	combout => \ALU|data_in|D1_in|SLL|ShiftLeft0~22_combout\);

-- Location: LCCOMB_X39_Y28_N14
\ALU|data_in|D1_in|SLL|ShiftLeft0~23\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ALU|data_in|D1_in|SLL|ShiftLeft0~23_combout\ = (\operand_b[0]~input_o\ & (\ALU|data_in|D1_in|SLL|ShiftLeft0~18_combout\)) # (!\operand_b[0]~input_o\ & ((\ALU|data_in|D1_in|SLL|ShiftLeft0~22_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ALU|data_in|D1_in|SLL|ShiftLeft0~18_combout\,
	datac => \operand_b[0]~input_o\,
	datad => \ALU|data_in|D1_in|SLL|ShiftLeft0~22_combout\,
	combout => \ALU|data_in|D1_in|SLL|ShiftLeft0~23_combout\);

-- Location: LCCOMB_X39_Y28_N28
\ALU|data_in|D1_in|SLL|ShiftLeft0~21\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ALU|data_in|D1_in|SLL|ShiftLeft0~21_combout\ = (\ALU|data_in|D1_in|SLL|ShiftLeft0~9_combout\) # ((\operand_b[1]~input_o\ & \ALU|data_in|D1_in|SLL|ShiftLeft0~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \operand_b[1]~input_o\,
	datab => \ALU|data_in|D1_in|SLL|ShiftLeft0~9_combout\,
	datad => \ALU|data_in|D1_in|SLL|ShiftLeft0~6_combout\,
	combout => \ALU|data_in|D1_in|SLL|ShiftLeft0~21_combout\);

-- Location: LCCOMB_X38_Y28_N24
\ALU|data_in|D1_in|SLL|ShiftLeft0~24\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ALU|data_in|D1_in|SLL|ShiftLeft0~24_combout\ = (\operand_b[2]~input_o\ & ((\ALU|data_in|D1_in|SLL|ShiftLeft0~21_combout\))) # (!\operand_b[2]~input_o\ & (\ALU|data_in|D1_in|SLL|ShiftLeft0~23_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \operand_b[2]~input_o\,
	datac => \ALU|data_in|D1_in|SLL|ShiftLeft0~23_combout\,
	datad => \ALU|data_in|D1_in|SLL|ShiftLeft0~21_combout\,
	combout => \ALU|data_in|D1_in|SLL|ShiftLeft0~24_combout\);

-- Location: LCCOMB_X35_Y26_N22
\ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~103\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~103_combout\ = (\operand_b[2]~input_o\ & ((\ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~79_combout\))) # (!\operand_b[2]~input_o\ & 
-- (\ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~83_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \operand_b[2]~input_o\,
	datab => \ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~83_combout\,
	datad => \ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~79_combout\,
	combout => \ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~103_combout\);

-- Location: LCCOMB_X35_Y26_N0
\ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~104\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~104_combout\ = (\ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~87_combout\ & (((!\ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~33_combout\)))) # 
-- (!\ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~87_combout\ & ((\ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~33_combout\ & (\ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~81_combout\)) # 
-- (!\ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~33_combout\ & ((\ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~103_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~81_combout\,
	datab => \ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~87_combout\,
	datac => \ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~103_combout\,
	datad => \ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~33_combout\,
	combout => \ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~104_combout\);

-- Location: LCCOMB_X36_Y24_N24
\ALU|data_in|D1_in|SLL|ShiftLeft0~25\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ALU|data_in|D1_in|SLL|ShiftLeft0~25_combout\ = (!\operand_b[1]~input_o\ & (!\operand_b[0]~input_o\ & (\operand_b[3]~input_o\ & !\operand_b[2]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \operand_b[1]~input_o\,
	datab => \operand_b[0]~input_o\,
	datac => \operand_b[3]~input_o\,
	datad => \operand_b[2]~input_o\,
	combout => \ALU|data_in|D1_in|SLL|ShiftLeft0~25_combout\);

-- Location: LCCOMB_X36_Y24_N10
\ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~105\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~105_combout\ = (\ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~55_combout\ & ((\ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~78_combout\) # ((\ALU|data_in|D1_in|SLL|ShiftLeft0~25_combout\ & 
-- \operand_a[31]~input_o\)))) # (!\ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~55_combout\ & (\ALU|data_in|D1_in|SLL|ShiftLeft0~25_combout\ & ((\operand_a[31]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~55_combout\,
	datab => \ALU|data_in|D1_in|SLL|ShiftLeft0~25_combout\,
	datac => \ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~78_combout\,
	datad => \operand_a[31]~input_o\,
	combout => \ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~105_combout\);

-- Location: LCCOMB_X35_Y26_N2
\ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~106\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~106_combout\ = (\ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~105_combout\) # ((\operand_b[2]~input_o\ & (\ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~76_combout\ & 
-- !\operand_b[3]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \operand_b[2]~input_o\,
	datab => \ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~76_combout\,
	datac => \ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~105_combout\,
	datad => \operand_b[3]~input_o\,
	combout => \ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~106_combout\);

-- Location: LCCOMB_X35_Y26_N4
\ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~107\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~107_combout\ = (\ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~104_combout\ & (((\ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~106_combout\) # 
-- (!\ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~87_combout\)))) # (!\ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~104_combout\ & (\ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~84_combout\ & 
-- ((\ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~87_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~84_combout\,
	datab => \ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~104_combout\,
	datac => \ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~106_combout\,
	datad => \ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~87_combout\,
	combout => \ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~107_combout\);

-- Location: LCCOMB_X36_Y26_N0
\ALU|data_in|D5_in|Sel_SR|Data_out|MUX_Sel|Out[7]~37\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ALU|data_in|D5_in|Sel_SR|Data_out|MUX_Sel|Out[7]~37_combout\ = (\ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~107_combout\) # ((\ALU|data_in|D5_in|Sel_SR|Data_out|MUX_Sel|Out[3]~22_combout\ & (\ALU|data_in|D5_in|Sel_SR|SRA_out|SRA1|Add1~1_combout\ 
-- & \ALU|data_in|D5_in|Sel_SR|Data_out|MUX_Sel|Out[5]~34_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU|data_in|D5_in|Sel_SR|Data_out|MUX_Sel|Out[3]~22_combout\,
	datab => \ALU|data_in|D5_in|Sel_SR|SRA_out|SRA1|Add1~1_combout\,
	datac => \ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~107_combout\,
	datad => \ALU|data_in|D5_in|Sel_SR|Data_out|MUX_Sel|Out[5]~34_combout\,
	combout => \ALU|data_in|D5_in|Sel_SR|Data_out|MUX_Sel|Out[7]~37_combout\);

-- Location: LCCOMB_X37_Y27_N4
\ALU|data_OUT|MUX_Sel|Mux24~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ALU|data_OUT|MUX_Sel|Mux24~2_combout\ = (\alu_op[0]~input_o\ & (((\operand_b[7]~input_o\ & \operand_a[7]~input_o\)) # (!\alu_op[1]~input_o\))) # (!\alu_op[0]~input_o\ & ((\operand_b[7]~input_o\ & ((\alu_op[1]~input_o\) # (!\operand_a[7]~input_o\))) # 
-- (!\operand_b[7]~input_o\ & ((\operand_a[7]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011101110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu_op[1]~input_o\,
	datab => \alu_op[0]~input_o\,
	datac => \operand_b[7]~input_o\,
	datad => \operand_a[7]~input_o\,
	combout => \ALU|data_OUT|MUX_Sel|Mux24~2_combout\);

-- Location: LCCOMB_X37_Y27_N6
\ALU|data_OUT|MUX_Sel|Mux24~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ALU|data_OUT|MUX_Sel|Mux24~3_combout\ = (\ALU|data_OUT|MUX_Sel|Mux24~2_combout\ & ((\alu_op[1]~input_o\) # ((\ALU|data_in|D5_in|Sel_SR|Data_out|MUX_Sel|Out[7]~37_combout\) # (!\alu_op[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu_op[1]~input_o\,
	datab => \ALU|data_in|D5_in|Sel_SR|Data_out|MUX_Sel|Out[7]~37_combout\,
	datac => \ALU|data_OUT|MUX_Sel|Mux24~2_combout\,
	datad => \alu_op[0]~input_o\,
	combout => \ALU|data_OUT|MUX_Sel|Mux24~3_combout\);

-- Location: LCCOMB_X37_Y27_N0
\ALU|data_OUT|MUX_Sel|Mux24~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ALU|data_OUT|MUX_Sel|Mux24~1_combout\ = (\ALU|data_in|D1_in|SLL|ShiftLeft0~24_combout\ & ((\ALU|data_OUT|MUX_Sel|Mux24~0_combout\) # ((\alu_op[2]~input_o\ & \ALU|data_OUT|MUX_Sel|Mux24~3_combout\)))) # (!\ALU|data_in|D1_in|SLL|ShiftLeft0~24_combout\ & 
-- (((\alu_op[2]~input_o\ & \ALU|data_OUT|MUX_Sel|Mux24~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU|data_in|D1_in|SLL|ShiftLeft0~24_combout\,
	datab => \ALU|data_OUT|MUX_Sel|Mux24~0_combout\,
	datac => \alu_op[2]~input_o\,
	datad => \ALU|data_OUT|MUX_Sel|Mux24~3_combout\,
	combout => \ALU|data_OUT|MUX_Sel|Mux24~1_combout\);

-- Location: LCCOMB_X41_Y28_N24
\ALU|data_in|D1_in|SLL|ShiftLeft0~26\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ALU|data_in|D1_in|SLL|ShiftLeft0~26_combout\ = (\operand_b[1]~input_o\ & ((\operand_a[6]~input_o\))) # (!\operand_b[1]~input_o\ & (\operand_a[8]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \operand_b[1]~input_o\,
	datab => \operand_a[8]~input_o\,
	datac => \operand_a[6]~input_o\,
	combout => \ALU|data_in|D1_in|SLL|ShiftLeft0~26_combout\);

-- Location: LCCOMB_X41_Y28_N26
\ALU|data_in|D1_in|SLL|ShiftLeft0~27\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ALU|data_in|D1_in|SLL|ShiftLeft0~27_combout\ = (\operand_b[0]~input_o\ & ((\ALU|data_in|D1_in|SLL|ShiftLeft0~22_combout\))) # (!\operand_b[0]~input_o\ & (\ALU|data_in|D1_in|SLL|ShiftLeft0~26_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ALU|data_in|D1_in|SLL|ShiftLeft0~26_combout\,
	datac => \ALU|data_in|D1_in|SLL|ShiftLeft0~22_combout\,
	datad => \operand_b[0]~input_o\,
	combout => \ALU|data_in|D1_in|SLL|ShiftLeft0~27_combout\);

-- Location: LCCOMB_X39_Y26_N16
\ALU|data_in|D1_in|SLL|ShiftLeft0~28\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ALU|data_in|D1_in|SLL|ShiftLeft0~28_combout\ = (\operand_b[2]~input_o\ & (\ALU|data_in|D1_in|SLL|ShiftLeft0~13_combout\)) # (!\operand_b[2]~input_o\ & ((\ALU|data_in|D1_in|SLL|ShiftLeft0~27_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ALU|data_in|D1_in|SLL|ShiftLeft0~13_combout\,
	datac => \operand_b[2]~input_o\,
	datad => \ALU|data_in|D1_in|SLL|ShiftLeft0~27_combout\,
	combout => \ALU|data_in|D1_in|SLL|ShiftLeft0~28_combout\);

-- Location: LCCOMB_X39_Y26_N10
\ALU|data_in|D1_in|SLL|ShiftLeft0~29\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ALU|data_in|D1_in|SLL|ShiftLeft0~29_combout\ = (\operand_b[3]~input_o\ & (\ALU|data_in|D1_in|SLL|ShiftLeft0~25_combout\ & (\operand_a[0]~input_o\))) # (!\operand_b[3]~input_o\ & ((\ALU|data_in|D1_in|SLL|ShiftLeft0~28_combout\) # 
-- ((\ALU|data_in|D1_in|SLL|ShiftLeft0~25_combout\ & \operand_a[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \operand_b[3]~input_o\,
	datab => \ALU|data_in|D1_in|SLL|ShiftLeft0~25_combout\,
	datac => \operand_a[0]~input_o\,
	datad => \ALU|data_in|D1_in|SLL|ShiftLeft0~28_combout\,
	combout => \ALU|data_in|D1_in|SLL|ShiftLeft0~29_combout\);

-- Location: LCCOMB_X39_Y25_N30
\ALU|data_in|D5_in|Sel_SR|Data_out|MUX_Sel|Out[9]~38\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ALU|data_in|D5_in|Sel_SR|Data_out|MUX_Sel|Out[9]~38_combout\ = (\operand_b[2]~input_o\ & (!\operand_b[3]~input_o\ & ((\operand_b[1]~input_o\) # (\operand_b[0]~input_o\)))) # (!\operand_b[2]~input_o\ & (!\operand_b[1]~input_o\ & (!\operand_b[0]~input_o\ & 
-- \operand_b[3]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \operand_b[1]~input_o\,
	datab => \operand_b[2]~input_o\,
	datac => \operand_b[0]~input_o\,
	datad => \operand_b[3]~input_o\,
	combout => \ALU|data_in|D5_in|Sel_SR|Data_out|MUX_Sel|Out[9]~38_combout\);

-- Location: LCCOMB_X36_Y26_N2
\ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~108\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~108_combout\ = (!\operand_b[3]~input_o\ & \operand_b[4]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \operand_b[3]~input_o\,
	datad => \operand_b[4]~input_o\,
	combout => \ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~108_combout\);

-- Location: LCCOMB_X36_Y26_N12
\ALU|data_in|D5_in|Sel_SR|Data_out|MUX_Sel|Out[8]~39\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ALU|data_in|D5_in|Sel_SR|Data_out|MUX_Sel|Out[8]~39_combout\ = (\ALU|data_in|D5_in|Sel_SR|Data_out|MUX_Sel|Out[9]~38_combout\ & ((\ALU|data_in|D5_in|Sel_SR|Data_out|MUX_Sel|Out[0]~90_combout\) # 
-- ((\ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~23_combout\ & \ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~108_combout\)))) # (!\ALU|data_in|D5_in|Sel_SR|Data_out|MUX_Sel|Out[9]~38_combout\ & 
-- (((\ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~23_combout\ & \ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~108_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU|data_in|D5_in|Sel_SR|Data_out|MUX_Sel|Out[9]~38_combout\,
	datab => \ALU|data_in|D5_in|Sel_SR|Data_out|MUX_Sel|Out[0]~90_combout\,
	datac => \ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~23_combout\,
	datad => \ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~108_combout\,
	combout => \ALU|data_in|D5_in|Sel_SR|Data_out|MUX_Sel|Out[8]~39_combout\);

-- Location: LCCOMB_X39_Y27_N16
\ALU|data_in|D5_in|Sel_SR|Data_out|MUX_Sel|Out[8]~41\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ALU|data_in|D5_in|Sel_SR|Data_out|MUX_Sel|Out[8]~41_combout\ = (!\operand_b[2]~input_o\ & ((\operand_b[3]~input_o\ & ((\ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~15_combout\))) # (!\operand_b[3]~input_o\ & 
-- (\ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \operand_b[2]~input_o\,
	datab => \ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~9_combout\,
	datac => \operand_b[3]~input_o\,
	datad => \ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~15_combout\,
	combout => \ALU|data_in|D5_in|Sel_SR|Data_out|MUX_Sel|Out[8]~41_combout\);

-- Location: LCCOMB_X39_Y27_N14
\ALU|data_in|D5_in|Sel_SR|Data_out|MUX_Sel|Out[8]~40\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ALU|data_in|D5_in|Sel_SR|Data_out|MUX_Sel|Out[8]~40_combout\ = (\operand_b[2]~input_o\ & ((\operand_b[3]~input_o\ & ((\ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~12_combout\))) # (!\operand_b[3]~input_o\ & 
-- (\ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~6_combout\,
	datab => \operand_b[2]~input_o\,
	datac => \operand_b[3]~input_o\,
	datad => \ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~12_combout\,
	combout => \ALU|data_in|D5_in|Sel_SR|Data_out|MUX_Sel|Out[8]~40_combout\);

-- Location: LCCOMB_X39_Y29_N18
\ALU|data_in|D5_in|Sel_SR|Data_out|MUX_Sel|Out[8]~42\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ALU|data_in|D5_in|Sel_SR|Data_out|MUX_Sel|Out[8]~42_combout\ = (\ALU|data_in|D5_in|Sel_SR|Data_out|MUX_Sel|Out[8]~39_combout\) # ((!\operand_b[4]~input_o\ & ((\ALU|data_in|D5_in|Sel_SR|Data_out|MUX_Sel|Out[8]~41_combout\) # 
-- (\ALU|data_in|D5_in|Sel_SR|Data_out|MUX_Sel|Out[8]~40_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU|data_in|D5_in|Sel_SR|Data_out|MUX_Sel|Out[8]~39_combout\,
	datab => \ALU|data_in|D5_in|Sel_SR|Data_out|MUX_Sel|Out[8]~41_combout\,
	datac => \operand_b[4]~input_o\,
	datad => \ALU|data_in|D5_in|Sel_SR|Data_out|MUX_Sel|Out[8]~40_combout\,
	combout => \ALU|data_in|D5_in|Sel_SR|Data_out|MUX_Sel|Out[8]~42_combout\);

-- Location: LCCOMB_X39_Y29_N12
\ALU|data_OUT|MUX_Sel|Mux23~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ALU|data_OUT|MUX_Sel|Mux23~1_combout\ = (\alu_op[1]~input_o\ & (\operand_b[8]~input_o\)) # (!\alu_op[1]~input_o\ & ((\alu_op[0]~input_o\ & ((\ALU|data_in|D5_in|Sel_SR|Data_out|MUX_Sel|Out[8]~42_combout\))) # (!\alu_op[0]~input_o\ & 
-- (\operand_b[8]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \operand_b[8]~input_o\,
	datab => \alu_op[1]~input_o\,
	datac => \alu_op[0]~input_o\,
	datad => \ALU|data_in|D5_in|Sel_SR|Data_out|MUX_Sel|Out[8]~42_combout\,
	combout => \ALU|data_OUT|MUX_Sel|Mux23~1_combout\);

-- Location: LCCOMB_X39_Y29_N14
\ALU|data_OUT|MUX_Sel|Mux23~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ALU|data_OUT|MUX_Sel|Mux23~2_combout\ = (\ALU|data_OUT|MUX_Sel|Mux23~1_combout\ & ((\alu_op[1]~input_o\ & ((\operand_a[8]~input_o\) # (!\alu_op[0]~input_o\))) # (!\alu_op[1]~input_o\ & ((\alu_op[0]~input_o\) # (!\operand_a[8]~input_o\))))) # 
-- (!\ALU|data_OUT|MUX_Sel|Mux23~1_combout\ & (((!\alu_op[0]~input_o\ & \operand_a[8]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110100101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU|data_OUT|MUX_Sel|Mux23~1_combout\,
	datab => \alu_op[1]~input_o\,
	datac => \alu_op[0]~input_o\,
	datad => \operand_a[8]~input_o\,
	combout => \ALU|data_OUT|MUX_Sel|Mux23~2_combout\);

-- Location: LCCOMB_X39_Y29_N4
\ALU|data_OUT|MUX_Sel|Mux23~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ALU|data_OUT|MUX_Sel|Mux23~0_combout\ = (\ALU|data_in|D1_in|SLL|ShiftLeft0~29_combout\ & ((\ALU|data_OUT|MUX_Sel|Mux16~0_combout\) # ((\ALU|data_OUT|MUX_Sel|Mux23~2_combout\ & \alu_op[2]~input_o\)))) # (!\ALU|data_in|D1_in|SLL|ShiftLeft0~29_combout\ & 
-- (((\ALU|data_OUT|MUX_Sel|Mux23~2_combout\ & \alu_op[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU|data_in|D1_in|SLL|ShiftLeft0~29_combout\,
	datab => \ALU|data_OUT|MUX_Sel|Mux16~0_combout\,
	datac => \ALU|data_OUT|MUX_Sel|Mux23~2_combout\,
	datad => \alu_op[2]~input_o\,
	combout => \ALU|data_OUT|MUX_Sel|Mux23~0_combout\);

-- Location: LCCOMB_X38_Y25_N0
\ALU|data_OUT|MUX_Sel|Mux22~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ALU|data_OUT|MUX_Sel|Mux22~1_combout\ = (\alu_op[0]~input_o\ & (((\operand_b[9]~input_o\ & \operand_a[9]~input_o\)) # (!\alu_op[1]~input_o\))) # (!\alu_op[0]~input_o\ & ((\operand_b[9]~input_o\ & ((\alu_op[1]~input_o\) # (!\operand_a[9]~input_o\))) # 
-- (!\operand_b[9]~input_o\ & (\operand_a[9]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001011011110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \operand_b[9]~input_o\,
	datab => \alu_op[0]~input_o\,
	datac => \operand_a[9]~input_o\,
	datad => \alu_op[1]~input_o\,
	combout => \ALU|data_OUT|MUX_Sel|Mux22~1_combout\);

-- Location: LCCOMB_X36_Y26_N22
\ALU|data_in|D5_in|Sel_SR|Data_out|MUX_Sel|Out[9]~46\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ALU|data_in|D5_in|Sel_SR|Data_out|MUX_Sel|Out[9]~46_combout\ = (\ALU|data_in|D5_in|Sel_SR|Data_out|MUX_Sel|Out[9]~38_combout\ & (!\ALU|data_in|D5_in|Sel_SR|SRA_out|SRA1|Add1~1_combout\ & (!\ALU|data_in|D5_in|Sel_SR|SRA_out|SRA1|Add1~0_combout\ & 
-- \ALU|data_in|D5_in|Sel_SR|Data_out|MUX_Sel|Out[3]~22_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU|data_in|D5_in|Sel_SR|Data_out|MUX_Sel|Out[9]~38_combout\,
	datab => \ALU|data_in|D5_in|Sel_SR|SRA_out|SRA1|Add1~1_combout\,
	datac => \ALU|data_in|D5_in|Sel_SR|SRA_out|SRA1|Add1~0_combout\,
	datad => \ALU|data_in|D5_in|Sel_SR|Data_out|MUX_Sel|Out[3]~22_combout\,
	combout => \ALU|data_in|D5_in|Sel_SR|Data_out|MUX_Sel|Out[9]~46_combout\);

-- Location: LCCOMB_X37_Y26_N28
\ALU|data_in|D5_in|Sel_SR|Data_out|MUX_Sel|Out[9]~44\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ALU|data_in|D5_in|Sel_SR|Data_out|MUX_Sel|Out[9]~44_combout\ = (\operand_b[2]~input_o\ & ((\operand_b[3]~input_o\ & (\ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~39_combout\)) # (!\operand_b[3]~input_o\ & 
-- ((\ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~35_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~39_combout\,
	datab => \operand_b[2]~input_o\,
	datac => \ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~35_combout\,
	datad => \operand_b[3]~input_o\,
	combout => \ALU|data_in|D5_in|Sel_SR|Data_out|MUX_Sel|Out[9]~44_combout\);

-- Location: LCCOMB_X37_Y26_N18
\ALU|data_in|D5_in|Sel_SR|Data_out|MUX_Sel|Out[9]~43\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ALU|data_in|D5_in|Sel_SR|Data_out|MUX_Sel|Out[9]~43_combout\ = (!\operand_b[2]~input_o\ & ((\operand_b[3]~input_o\ & ((\ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~41_combout\))) # (!\operand_b[3]~input_o\ & 
-- (\ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~37_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~37_combout\,
	datab => \operand_b[3]~input_o\,
	datac => \operand_b[2]~input_o\,
	datad => \ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~41_combout\,
	combout => \ALU|data_in|D5_in|Sel_SR|Data_out|MUX_Sel|Out[9]~43_combout\);

-- Location: LCCOMB_X37_Y26_N6
\ALU|data_in|D5_in|Sel_SR|Data_out|MUX_Sel|Out[9]~45\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ALU|data_in|D5_in|Sel_SR|Data_out|MUX_Sel|Out[9]~45_combout\ = (!\operand_b[4]~input_o\ & ((\ALU|data_in|D5_in|Sel_SR|Data_out|MUX_Sel|Out[9]~44_combout\) # (\ALU|data_in|D5_in|Sel_SR|Data_out|MUX_Sel|Out[9]~43_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010001010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \operand_b[4]~input_o\,
	datab => \ALU|data_in|D5_in|Sel_SR|Data_out|MUX_Sel|Out[9]~44_combout\,
	datac => \ALU|data_in|D5_in|Sel_SR|Data_out|MUX_Sel|Out[9]~43_combout\,
	combout => \ALU|data_in|D5_in|Sel_SR|Data_out|MUX_Sel|Out[9]~45_combout\);

-- Location: LCCOMB_X36_Y26_N16
\ALU|data_in|D5_in|Sel_SR|Data_out|MUX_Sel|Out[9]~47\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ALU|data_in|D5_in|Sel_SR|Data_out|MUX_Sel|Out[9]~47_combout\ = (\ALU|data_in|D5_in|Sel_SR|Data_out|MUX_Sel|Out[9]~46_combout\) # ((\ALU|data_in|D5_in|Sel_SR|Data_out|MUX_Sel|Out[9]~45_combout\) # 
-- ((\ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~108_combout\ & \ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~47_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU|data_in|D5_in|Sel_SR|Data_out|MUX_Sel|Out[9]~46_combout\,
	datab => \ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~108_combout\,
	datac => \ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~47_combout\,
	datad => \ALU|data_in|D5_in|Sel_SR|Data_out|MUX_Sel|Out[9]~45_combout\,
	combout => \ALU|data_in|D5_in|Sel_SR|Data_out|MUX_Sel|Out[9]~47_combout\);

-- Location: LCCOMB_X38_Y25_N10
\ALU|data_OUT|MUX_Sel|Mux22~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ALU|data_OUT|MUX_Sel|Mux22~2_combout\ = (\ALU|data_OUT|MUX_Sel|Mux22~1_combout\ & ((\alu_op[1]~input_o\) # ((\ALU|data_in|D5_in|Sel_SR|Data_out|MUX_Sel|Out[9]~47_combout\) # (!\alu_op[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu_op[1]~input_o\,
	datab => \ALU|data_OUT|MUX_Sel|Mux22~1_combout\,
	datac => \alu_op[0]~input_o\,
	datad => \ALU|data_in|D5_in|Sel_SR|Data_out|MUX_Sel|Out[9]~47_combout\,
	combout => \ALU|data_OUT|MUX_Sel|Mux22~2_combout\);

-- Location: LCCOMB_X41_Y28_N12
\ALU|data_in|D1_in|SLL|ShiftLeft0~30\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ALU|data_in|D1_in|SLL|ShiftLeft0~30_combout\ = (\operand_b[1]~input_o\ & ((\operand_a[7]~input_o\))) # (!\operand_b[1]~input_o\ & (\operand_a[9]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \operand_b[1]~input_o\,
	datac => \operand_a[9]~input_o\,
	datad => \operand_a[7]~input_o\,
	combout => \ALU|data_in|D1_in|SLL|ShiftLeft0~30_combout\);

-- Location: LCCOMB_X41_Y28_N30
\ALU|data_in|D1_in|SLL|ShiftLeft0~31\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ALU|data_in|D1_in|SLL|ShiftLeft0~31_combout\ = (\operand_b[0]~input_o\ & ((\ALU|data_in|D1_in|SLL|ShiftLeft0~26_combout\))) # (!\operand_b[0]~input_o\ & (\ALU|data_in|D1_in|SLL|ShiftLeft0~30_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU|data_in|D1_in|SLL|ShiftLeft0~30_combout\,
	datab => \ALU|data_in|D1_in|SLL|ShiftLeft0~26_combout\,
	datad => \operand_b[0]~input_o\,
	combout => \ALU|data_in|D1_in|SLL|ShiftLeft0~31_combout\);

-- Location: LCCOMB_X38_Y27_N2
\ALU|data_in|D1_in|SLL|ShiftLeft0~32\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ALU|data_in|D1_in|SLL|ShiftLeft0~32_combout\ = (\operand_b[2]~input_o\ & ((\ALU|data_in|D1_in|SLL|ShiftLeft0~16_combout\))) # (!\operand_b[2]~input_o\ & (\ALU|data_in|D1_in|SLL|ShiftLeft0~31_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \operand_b[2]~input_o\,
	datac => \ALU|data_in|D1_in|SLL|ShiftLeft0~31_combout\,
	datad => \ALU|data_in|D1_in|SLL|ShiftLeft0~16_combout\,
	combout => \ALU|data_in|D1_in|SLL|ShiftLeft0~32_combout\);

-- Location: LCCOMB_X38_Y27_N12
\ALU|data_in|D1_in|SLL|ShiftLeft0~33\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ALU|data_in|D1_in|SLL|ShiftLeft0~33_combout\ = (\operand_b[3]~input_o\ & (!\ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~27_combout\ & ((\ALU|data_in|D1_in|SLL|ShiftLeft0~6_combout\)))) # (!\operand_b[3]~input_o\ & 
-- (((\ALU|data_in|D1_in|SLL|ShiftLeft0~32_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~27_combout\,
	datab => \ALU|data_in|D1_in|SLL|ShiftLeft0~32_combout\,
	datac => \operand_b[3]~input_o\,
	datad => \ALU|data_in|D1_in|SLL|ShiftLeft0~6_combout\,
	combout => \ALU|data_in|D1_in|SLL|ShiftLeft0~33_combout\);

-- Location: LCCOMB_X38_Y25_N4
\ALU|data_OUT|MUX_Sel|Mux22~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ALU|data_OUT|MUX_Sel|Mux22~0_combout\ = (\ALU|data_OUT|MUX_Sel|Mux22~2_combout\ & ((\alu_op[2]~input_o\) # ((\ALU|data_in|D1_in|SLL|ShiftLeft0~33_combout\ & \ALU|data_OUT|MUX_Sel|Mux16~0_combout\)))) # (!\ALU|data_OUT|MUX_Sel|Mux22~2_combout\ & 
-- (\ALU|data_in|D1_in|SLL|ShiftLeft0~33_combout\ & ((\ALU|data_OUT|MUX_Sel|Mux16~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU|data_OUT|MUX_Sel|Mux22~2_combout\,
	datab => \ALU|data_in|D1_in|SLL|ShiftLeft0~33_combout\,
	datac => \alu_op[2]~input_o\,
	datad => \ALU|data_OUT|MUX_Sel|Mux16~0_combout\,
	combout => \ALU|data_OUT|MUX_Sel|Mux22~0_combout\);

-- Location: LCCOMB_X36_Y25_N2
\ALU|data_in|D5_in|Sel_SR|Data_out|MUX_Sel|Out[10]~48\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ALU|data_in|D5_in|Sel_SR|Data_out|MUX_Sel|Out[10]~48_combout\ = (!\operand_b[3]~input_o\ & ((\operand_b[4]~input_o\ & ((\ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~58_combout\))) # (!\operand_b[4]~input_o\ & 
-- (\ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~73_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~73_combout\,
	datab => \operand_b[4]~input_o\,
	datac => \operand_b[3]~input_o\,
	datad => \ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~58_combout\,
	combout => \ALU|data_in|D5_in|Sel_SR|Data_out|MUX_Sel|Out[10]~48_combout\);

-- Location: LCCOMB_X36_Y25_N12
\ALU|data_in|D5_in|Sel_SR|Data_out|MUX_Sel|Out[10]~49\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ALU|data_in|D5_in|Sel_SR|Data_out|MUX_Sel|Out[10]~49_combout\ = (\ALU|data_in|D5_in|Sel_SR|Data_out|MUX_Sel|Out[9]~38_combout\ & (!\ALU|data_in|D5_in|Sel_SR|SRA_out|SRA1|Add1~0_combout\ & (\ALU|data_in|D5_in|Sel_SR|Data_out|MUX_Sel|Out[0]~16_combout\ & 
-- \ALU|data_in|D5_in|Sel_SR|SRA_out|SRA1|Add1~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU|data_in|D5_in|Sel_SR|Data_out|MUX_Sel|Out[9]~38_combout\,
	datab => \ALU|data_in|D5_in|Sel_SR|SRA_out|SRA1|Add1~0_combout\,
	datac => \ALU|data_in|D5_in|Sel_SR|Data_out|MUX_Sel|Out[0]~16_combout\,
	datad => \ALU|data_in|D5_in|Sel_SR|SRA_out|SRA1|Add1~1_combout\,
	combout => \ALU|data_in|D5_in|Sel_SR|Data_out|MUX_Sel|Out[10]~49_combout\);

-- Location: LCCOMB_X36_Y25_N6
\ALU|data_in|D5_in|Sel_SR|Data_out|MUX_Sel|Out[10]~50\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ALU|data_in|D5_in|Sel_SR|Data_out|MUX_Sel|Out[10]~50_combout\ = (\ALU|data_in|D5_in|Sel_SR|Data_out|MUX_Sel|Out[10]~48_combout\) # ((\ALU|data_in|D5_in|Sel_SR|Data_out|MUX_Sel|Out[10]~49_combout\) # 
-- ((\ALU|data_in|D5_in|Sel_SR|Data_out|MUX_Sel|Out[0]~19_combout\ & \ALU|data_in|D5_in|Sel_SR|Data_out|MUX_Sel|Out[10]~27_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU|data_in|D5_in|Sel_SR|Data_out|MUX_Sel|Out[0]~19_combout\,
	datab => \ALU|data_in|D5_in|Sel_SR|Data_out|MUX_Sel|Out[10]~48_combout\,
	datac => \ALU|data_in|D5_in|Sel_SR|Data_out|MUX_Sel|Out[10]~49_combout\,
	datad => \ALU|data_in|D5_in|Sel_SR|Data_out|MUX_Sel|Out[10]~27_combout\,
	combout => \ALU|data_in|D5_in|Sel_SR|Data_out|MUX_Sel|Out[10]~50_combout\);

-- Location: LCCOMB_X39_Y29_N0
\ALU|data_OUT|MUX_Sel|Mux21~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ALU|data_OUT|MUX_Sel|Mux21~1_combout\ = (\alu_op[0]~input_o\ & ((\alu_op[1]~input_o\ & (\operand_b[10]~input_o\)) # (!\alu_op[1]~input_o\ & ((\ALU|data_in|D5_in|Sel_SR|Data_out|MUX_Sel|Out[10]~50_combout\))))) # (!\alu_op[0]~input_o\ & 
-- (\operand_b[10]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu_op[0]~input_o\,
	datab => \operand_b[10]~input_o\,
	datac => \alu_op[1]~input_o\,
	datad => \ALU|data_in|D5_in|Sel_SR|Data_out|MUX_Sel|Out[10]~50_combout\,
	combout => \ALU|data_OUT|MUX_Sel|Mux21~1_combout\);

-- Location: LCCOMB_X39_Y29_N2
\ALU|data_OUT|MUX_Sel|Mux21~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ALU|data_OUT|MUX_Sel|Mux21~2_combout\ = (\operand_a[10]~input_o\ & ((\alu_op[0]~input_o\ & ((\ALU|data_OUT|MUX_Sel|Mux21~1_combout\))) # (!\alu_op[0]~input_o\ & ((\alu_op[1]~input_o\) # (!\ALU|data_OUT|MUX_Sel|Mux21~1_combout\))))) # 
-- (!\operand_a[10]~input_o\ & (\ALU|data_OUT|MUX_Sel|Mux21~1_combout\ & ((!\alu_op[0]~input_o\) # (!\alu_op[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110100001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \operand_a[10]~input_o\,
	datab => \alu_op[1]~input_o\,
	datac => \alu_op[0]~input_o\,
	datad => \ALU|data_OUT|MUX_Sel|Mux21~1_combout\,
	combout => \ALU|data_OUT|MUX_Sel|Mux21~2_combout\);

-- Location: LCCOMB_X39_Y25_N8
\ALU|data_in|D1_in|SLL|ShiftLeft0~34\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ALU|data_in|D1_in|SLL|ShiftLeft0~34_combout\ = (\operand_b[1]~input_o\ & ((\operand_a[8]~input_o\))) # (!\operand_b[1]~input_o\ & (\operand_a[10]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \operand_b[1]~input_o\,
	datac => \operand_a[10]~input_o\,
	datad => \operand_a[8]~input_o\,
	combout => \ALU|data_in|D1_in|SLL|ShiftLeft0~34_combout\);

-- Location: LCCOMB_X41_Y28_N0
\ALU|data_in|D1_in|SLL|ShiftLeft0~35\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ALU|data_in|D1_in|SLL|ShiftLeft0~35_combout\ = (\operand_b[0]~input_o\ & (\ALU|data_in|D1_in|SLL|ShiftLeft0~30_combout\)) # (!\operand_b[0]~input_o\ & ((\ALU|data_in|D1_in|SLL|ShiftLeft0~34_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU|data_in|D1_in|SLL|ShiftLeft0~30_combout\,
	datac => \ALU|data_in|D1_in|SLL|ShiftLeft0~34_combout\,
	datad => \operand_b[0]~input_o\,
	combout => \ALU|data_in|D1_in|SLL|ShiftLeft0~35_combout\);

-- Location: LCCOMB_X37_Y25_N18
\ALU|data_in|D1_in|SLL|ShiftLeft0~36\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ALU|data_in|D1_in|SLL|ShiftLeft0~36_combout\ = (\operand_b[2]~input_o\ & (\ALU|data_in|D1_in|SLL|ShiftLeft0~19_combout\)) # (!\operand_b[2]~input_o\ & ((\ALU|data_in|D1_in|SLL|ShiftLeft0~35_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \operand_b[2]~input_o\,
	datac => \ALU|data_in|D1_in|SLL|ShiftLeft0~19_combout\,
	datad => \ALU|data_in|D1_in|SLL|ShiftLeft0~35_combout\,
	combout => \ALU|data_in|D1_in|SLL|ShiftLeft0~36_combout\);

-- Location: LCCOMB_X37_Y25_N4
\ALU|data_in|D1_in|SLL|ShiftLeft0~37\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ALU|data_in|D1_in|SLL|ShiftLeft0~37_combout\ = (\operand_b[3]~input_o\ & (\ALU|data_in|D1_in|SLL|ShiftLeft0~8_combout\ & ((!\operand_b[2]~input_o\)))) # (!\operand_b[3]~input_o\ & (((\ALU|data_in|D1_in|SLL|ShiftLeft0~36_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU|data_in|D1_in|SLL|ShiftLeft0~8_combout\,
	datab => \ALU|data_in|D1_in|SLL|ShiftLeft0~36_combout\,
	datac => \operand_b[2]~input_o\,
	datad => \operand_b[3]~input_o\,
	combout => \ALU|data_in|D1_in|SLL|ShiftLeft0~37_combout\);

-- Location: LCCOMB_X39_Y29_N6
\ALU|data_OUT|MUX_Sel|Mux21~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ALU|data_OUT|MUX_Sel|Mux21~0_combout\ = (\ALU|data_OUT|MUX_Sel|Mux16~0_combout\ & ((\ALU|data_in|D1_in|SLL|ShiftLeft0~37_combout\) # ((\ALU|data_OUT|MUX_Sel|Mux21~2_combout\ & \alu_op[2]~input_o\)))) # (!\ALU|data_OUT|MUX_Sel|Mux16~0_combout\ & 
-- (\ALU|data_OUT|MUX_Sel|Mux21~2_combout\ & ((\alu_op[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU|data_OUT|MUX_Sel|Mux16~0_combout\,
	datab => \ALU|data_OUT|MUX_Sel|Mux21~2_combout\,
	datac => \ALU|data_in|D1_in|SLL|ShiftLeft0~37_combout\,
	datad => \alu_op[2]~input_o\,
	combout => \ALU|data_OUT|MUX_Sel|Mux21~0_combout\);

-- Location: LCCOMB_X39_Y25_N26
\ALU|data_in|D1_in|SLL|ShiftLeft0~38\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ALU|data_in|D1_in|SLL|ShiftLeft0~38_combout\ = (\operand_b[1]~input_o\ & ((\operand_a[9]~input_o\))) # (!\operand_b[1]~input_o\ & (\operand_a[11]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \operand_a[11]~input_o\,
	datac => \operand_b[1]~input_o\,
	datad => \operand_a[9]~input_o\,
	combout => \ALU|data_in|D1_in|SLL|ShiftLeft0~38_combout\);

-- Location: LCCOMB_X39_Y25_N4
\ALU|data_in|D1_in|SLL|ShiftLeft0~39\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ALU|data_in|D1_in|SLL|ShiftLeft0~39_combout\ = (\operand_b[0]~input_o\ & ((\ALU|data_in|D1_in|SLL|ShiftLeft0~34_combout\))) # (!\operand_b[0]~input_o\ & (\ALU|data_in|D1_in|SLL|ShiftLeft0~38_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU|data_in|D1_in|SLL|ShiftLeft0~38_combout\,
	datab => \ALU|data_in|D1_in|SLL|ShiftLeft0~34_combout\,
	datac => \operand_b[0]~input_o\,
	combout => \ALU|data_in|D1_in|SLL|ShiftLeft0~39_combout\);

-- Location: LCCOMB_X38_Y28_N10
\ALU|data_in|D1_in|SLL|ShiftLeft0~40\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ALU|data_in|D1_in|SLL|ShiftLeft0~40_combout\ = (\operand_b[2]~input_o\ & ((\ALU|data_in|D1_in|SLL|ShiftLeft0~23_combout\))) # (!\operand_b[2]~input_o\ & (\ALU|data_in|D1_in|SLL|ShiftLeft0~39_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU|data_in|D1_in|SLL|ShiftLeft0~39_combout\,
	datab => \operand_b[2]~input_o\,
	datac => \ALU|data_in|D1_in|SLL|ShiftLeft0~23_combout\,
	combout => \ALU|data_in|D1_in|SLL|ShiftLeft0~40_combout\);

-- Location: LCCOMB_X38_Y28_N20
\ALU|data_in|D1_in|SLL|ShiftLeft0~41\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ALU|data_in|D1_in|SLL|ShiftLeft0~41_combout\ = (\operand_b[3]~input_o\ & (((\ALU|data_in|D1_in|SLL|ShiftLeft0~21_combout\ & !\operand_b[2]~input_o\)))) # (!\operand_b[3]~input_o\ & (\ALU|data_in|D1_in|SLL|ShiftLeft0~40_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU|data_in|D1_in|SLL|ShiftLeft0~40_combout\,
	datab => \ALU|data_in|D1_in|SLL|ShiftLeft0~21_combout\,
	datac => \operand_b[2]~input_o\,
	datad => \operand_b[3]~input_o\,
	combout => \ALU|data_in|D1_in|SLL|ShiftLeft0~41_combout\);

-- Location: LCCOMB_X39_Y23_N20
\ALU|data_OUT|MUX_Sel|Mux20~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ALU|data_OUT|MUX_Sel|Mux20~1_combout\ = (\alu_op[0]~input_o\ & (((\operand_a[11]~input_o\ & \operand_b[11]~input_o\)) # (!\alu_op[1]~input_o\))) # (!\alu_op[0]~input_o\ & ((\operand_a[11]~input_o\ & ((\alu_op[1]~input_o\) # (!\operand_b[11]~input_o\))) # 
-- (!\operand_a[11]~input_o\ & ((\operand_b[11]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101101011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu_op[1]~input_o\,
	datab => \operand_a[11]~input_o\,
	datac => \alu_op[0]~input_o\,
	datad => \operand_b[11]~input_o\,
	combout => \ALU|data_OUT|MUX_Sel|Mux20~1_combout\);

-- Location: LCCOMB_X35_Y26_N6
\ALU|data_in|D5_in|Sel_SR|Data_out|MUX_Sel|Out[11]~51\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ALU|data_in|D5_in|Sel_SR|Data_out|MUX_Sel|Out[11]~51_combout\ = (!\operand_b[3]~input_o\ & ((\operand_b[4]~input_o\ & (\ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~77_combout\)) # (!\operand_b[4]~input_o\ & 
-- ((\ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~85_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~77_combout\,
	datab => \operand_b[3]~input_o\,
	datac => \ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~85_combout\,
	datad => \operand_b[4]~input_o\,
	combout => \ALU|data_in|D5_in|Sel_SR|Data_out|MUX_Sel|Out[11]~51_combout\);

-- Location: LCCOMB_X36_Y26_N10
\ALU|data_in|D5_in|Sel_SR|Data_out|MUX_Sel|Out[11]~52\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ALU|data_in|D5_in|Sel_SR|Data_out|MUX_Sel|Out[11]~52_combout\ = (\ALU|data_in|D5_in|Sel_SR|Data_out|MUX_Sel|Out[9]~38_combout\ & (\ALU|data_in|D5_in|Sel_SR|SRA_out|SRA1|Add1~1_combout\ & (!\ALU|data_in|D5_in|Sel_SR|SRA_out|SRA1|Add1~0_combout\ & 
-- \ALU|data_in|D5_in|Sel_SR|Data_out|MUX_Sel|Out[3]~22_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU|data_in|D5_in|Sel_SR|Data_out|MUX_Sel|Out[9]~38_combout\,
	datab => \ALU|data_in|D5_in|Sel_SR|SRA_out|SRA1|Add1~1_combout\,
	datac => \ALU|data_in|D5_in|Sel_SR|SRA_out|SRA1|Add1~0_combout\,
	datad => \ALU|data_in|D5_in|Sel_SR|Data_out|MUX_Sel|Out[3]~22_combout\,
	combout => \ALU|data_in|D5_in|Sel_SR|Data_out|MUX_Sel|Out[11]~52_combout\);

-- Location: LCCOMB_X35_Y26_N16
\ALU|data_in|D5_in|Sel_SR|Data_out|MUX_Sel|Out[11]~53\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ALU|data_in|D5_in|Sel_SR|Data_out|MUX_Sel|Out[11]~53_combout\ = (\ALU|data_in|D5_in|Sel_SR|Data_out|MUX_Sel|Out[11]~51_combout\) # ((\ALU|data_in|D5_in|Sel_SR|Data_out|MUX_Sel|Out[11]~52_combout\) # 
-- ((\ALU|data_in|D5_in|Sel_SR|Data_out|MUX_Sel|Out[11]~30_combout\ & \ALU|data_in|D5_in|Sel_SR|Data_out|MUX_Sel|Out[0]~19_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU|data_in|D5_in|Sel_SR|Data_out|MUX_Sel|Out[11]~51_combout\,
	datab => \ALU|data_in|D5_in|Sel_SR|Data_out|MUX_Sel|Out[11]~30_combout\,
	datac => \ALU|data_in|D5_in|Sel_SR|Data_out|MUX_Sel|Out[11]~52_combout\,
	datad => \ALU|data_in|D5_in|Sel_SR|Data_out|MUX_Sel|Out[0]~19_combout\,
	combout => \ALU|data_in|D5_in|Sel_SR|Data_out|MUX_Sel|Out[11]~53_combout\);

-- Location: LCCOMB_X39_Y23_N22
\ALU|data_OUT|MUX_Sel|Mux20~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ALU|data_OUT|MUX_Sel|Mux20~2_combout\ = (\ALU|data_OUT|MUX_Sel|Mux20~1_combout\ & ((\alu_op[1]~input_o\) # ((\ALU|data_in|D5_in|Sel_SR|Data_out|MUX_Sel|Out[11]~53_combout\) # (!\alu_op[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu_op[1]~input_o\,
	datab => \ALU|data_OUT|MUX_Sel|Mux20~1_combout\,
	datac => \alu_op[0]~input_o\,
	datad => \ALU|data_in|D5_in|Sel_SR|Data_out|MUX_Sel|Out[11]~53_combout\,
	combout => \ALU|data_OUT|MUX_Sel|Mux20~2_combout\);

-- Location: LCCOMB_X38_Y25_N6
\ALU|data_OUT|MUX_Sel|Mux20~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ALU|data_OUT|MUX_Sel|Mux20~0_combout\ = (\ALU|data_in|D1_in|SLL|ShiftLeft0~41_combout\ & ((\ALU|data_OUT|MUX_Sel|Mux16~0_combout\) # ((\ALU|data_OUT|MUX_Sel|Mux20~2_combout\ & \alu_op[2]~input_o\)))) # (!\ALU|data_in|D1_in|SLL|ShiftLeft0~41_combout\ & 
-- (\ALU|data_OUT|MUX_Sel|Mux20~2_combout\ & (\alu_op[2]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU|data_in|D1_in|SLL|ShiftLeft0~41_combout\,
	datab => \ALU|data_OUT|MUX_Sel|Mux20~2_combout\,
	datac => \alu_op[2]~input_o\,
	datad => \ALU|data_OUT|MUX_Sel|Mux16~0_combout\,
	combout => \ALU|data_OUT|MUX_Sel|Mux20~0_combout\);

-- Location: LCCOMB_X38_Y23_N26
\ALU|data_in|D1_in|SLL|ShiftLeft0~42\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ALU|data_in|D1_in|SLL|ShiftLeft0~42_combout\ = (\operand_b[1]~input_o\ & ((\operand_a[10]~input_o\))) # (!\operand_b[1]~input_o\ & (\operand_a[12]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \operand_b[1]~input_o\,
	datac => \operand_a[12]~input_o\,
	datad => \operand_a[10]~input_o\,
	combout => \ALU|data_in|D1_in|SLL|ShiftLeft0~42_combout\);

-- Location: LCCOMB_X39_Y25_N6
\ALU|data_in|D1_in|SLL|ShiftLeft0~43\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ALU|data_in|D1_in|SLL|ShiftLeft0~43_combout\ = (\operand_b[0]~input_o\ & (\ALU|data_in|D1_in|SLL|ShiftLeft0~38_combout\)) # (!\operand_b[0]~input_o\ & ((\ALU|data_in|D1_in|SLL|ShiftLeft0~42_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU|data_in|D1_in|SLL|ShiftLeft0~38_combout\,
	datac => \operand_b[0]~input_o\,
	datad => \ALU|data_in|D1_in|SLL|ShiftLeft0~42_combout\,
	combout => \ALU|data_in|D1_in|SLL|ShiftLeft0~43_combout\);

-- Location: LCCOMB_X39_Y26_N12
\ALU|data_in|D1_in|SLL|ShiftLeft0~44\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ALU|data_in|D1_in|SLL|ShiftLeft0~44_combout\ = (\operand_b[2]~input_o\ & ((\ALU|data_in|D1_in|SLL|ShiftLeft0~27_combout\))) # (!\operand_b[2]~input_o\ & (\ALU|data_in|D1_in|SLL|ShiftLeft0~43_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ALU|data_in|D1_in|SLL|ShiftLeft0~43_combout\,
	datac => \operand_b[2]~input_o\,
	datad => \ALU|data_in|D1_in|SLL|ShiftLeft0~27_combout\,
	combout => \ALU|data_in|D1_in|SLL|ShiftLeft0~44_combout\);

-- Location: LCCOMB_X39_Y26_N6
\ALU|data_OUT|MUX_Sel|Mux3~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ALU|data_OUT|MUX_Sel|Mux3~0_combout\ = (\operand_b[3]~input_o\ & (\ALU|data_in|D1_in|SLL|ShiftLeft0~14_combout\)) # (!\operand_b[3]~input_o\ & ((\ALU|data_in|D1_in|SLL|ShiftLeft0~44_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \operand_b[3]~input_o\,
	datac => \ALU|data_in|D1_in|SLL|ShiftLeft0~14_combout\,
	datad => \ALU|data_in|D1_in|SLL|ShiftLeft0~44_combout\,
	combout => \ALU|data_OUT|MUX_Sel|Mux3~0_combout\);

-- Location: LCCOMB_X39_Y25_N2
\ALU|data_in|D5_in|Sel_SR|Data_out|MUX_Sel|Out[12]~56\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ALU|data_in|D5_in|Sel_SR|Data_out|MUX_Sel|Out[12]~56_combout\ = (!\operand_b[3]~input_o\ & (\operand_b[2]~input_o\ $ (((\operand_b[1]~input_o\) # (\operand_b[0]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \operand_b[1]~input_o\,
	datab => \operand_b[2]~input_o\,
	datac => \operand_b[0]~input_o\,
	datad => \operand_b[3]~input_o\,
	combout => \ALU|data_in|D5_in|Sel_SR|Data_out|MUX_Sel|Out[12]~56_combout\);

-- Location: LCCOMB_X38_Y26_N12
\ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~109\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~109_combout\ = (!\operand_b[2]~input_o\ & (!\operand_b[3]~input_o\ & \operand_b[4]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \operand_b[2]~input_o\,
	datac => \operand_b[3]~input_o\,
	datad => \operand_b[4]~input_o\,
	combout => \ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~109_combout\);

-- Location: LCCOMB_X39_Y25_N24
\ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~110\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~110_combout\ = (\ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~109_combout\ & ((\ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~17_combout\) # ((\operand_b[1]~input_o\ & 
-- \ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~18_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \operand_b[1]~input_o\,
	datab => \ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~109_combout\,
	datac => \ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~17_combout\,
	datad => \ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~18_combout\,
	combout => \ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~110_combout\);

-- Location: LCCOMB_X39_Y27_N18
\ALU|data_in|D5_in|Sel_SR|Data_out|MUX_Sel|Out[12]~54\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ALU|data_in|D5_in|Sel_SR|Data_out|MUX_Sel|Out[12]~54_combout\ = (\operand_b[3]~input_o\ & ((\operand_b[2]~input_o\ & (\ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~22_combout\)) # (!\operand_b[2]~input_o\ & 
-- ((\ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~12_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \operand_b[2]~input_o\,
	datab => \ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~22_combout\,
	datac => \operand_b[3]~input_o\,
	datad => \ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~12_combout\,
	combout => \ALU|data_in|D5_in|Sel_SR|Data_out|MUX_Sel|Out[12]~54_combout\);

-- Location: LCCOMB_X39_Y27_N20
\ALU|data_in|D5_in|Sel_SR|Data_out|MUX_Sel|Out[12]~55\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ALU|data_in|D5_in|Sel_SR|Data_out|MUX_Sel|Out[12]~55_combout\ = (!\operand_b[4]~input_o\ & ((\ALU|data_in|D5_in|Sel_SR|Data_out|MUX_Sel|Out[12]~54_combout\) # ((\ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~88_combout\ & 
-- !\operand_b[3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~88_combout\,
	datab => \ALU|data_in|D5_in|Sel_SR|Data_out|MUX_Sel|Out[12]~54_combout\,
	datac => \operand_b[3]~input_o\,
	datad => \operand_b[4]~input_o\,
	combout => \ALU|data_in|D5_in|Sel_SR|Data_out|MUX_Sel|Out[12]~55_combout\);

-- Location: LCCOMB_X39_Y25_N12
\ALU|data_in|D5_in|Sel_SR|Data_out|MUX_Sel|Out[12]~57\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ALU|data_in|D5_in|Sel_SR|Data_out|MUX_Sel|Out[12]~57_combout\ = (\ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~110_combout\) # ((\ALU|data_in|D5_in|Sel_SR|Data_out|MUX_Sel|Out[12]~55_combout\) # 
-- ((\ALU|data_in|D5_in|Sel_SR|Data_out|MUX_Sel|Out[12]~56_combout\ & \ALU|data_in|D5_in|Sel_SR|Data_out|MUX_Sel|Out[0]~90_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU|data_in|D5_in|Sel_SR|Data_out|MUX_Sel|Out[12]~56_combout\,
	datab => \ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~110_combout\,
	datac => \ALU|data_in|D5_in|Sel_SR|Data_out|MUX_Sel|Out[0]~90_combout\,
	datad => \ALU|data_in|D5_in|Sel_SR|Data_out|MUX_Sel|Out[12]~55_combout\,
	combout => \ALU|data_in|D5_in|Sel_SR|Data_out|MUX_Sel|Out[12]~57_combout\);

-- Location: LCCOMB_X38_Y25_N28
\ALU|data_OUT|MUX_Sel|Mux19~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ALU|data_OUT|MUX_Sel|Mux19~1_combout\ = (\alu_op[1]~input_o\ & (((\operand_b[12]~input_o\)))) # (!\alu_op[1]~input_o\ & ((\alu_op[0]~input_o\ & (\ALU|data_in|D5_in|Sel_SR|Data_out|MUX_Sel|Out[12]~57_combout\)) # (!\alu_op[0]~input_o\ & 
-- ((\operand_b[12]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu_op[1]~input_o\,
	datab => \ALU|data_in|D5_in|Sel_SR|Data_out|MUX_Sel|Out[12]~57_combout\,
	datac => \alu_op[0]~input_o\,
	datad => \operand_b[12]~input_o\,
	combout => \ALU|data_OUT|MUX_Sel|Mux19~1_combout\);

-- Location: LCCOMB_X38_Y25_N14
\ALU|data_OUT|MUX_Sel|Mux19~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ALU|data_OUT|MUX_Sel|Mux19~2_combout\ = (\ALU|data_OUT|MUX_Sel|Mux19~1_combout\ & ((\alu_op[1]~input_o\ & ((\operand_a[12]~input_o\) # (!\alu_op[0]~input_o\))) # (!\alu_op[1]~input_o\ & ((\alu_op[0]~input_o\) # (!\operand_a[12]~input_o\))))) # 
-- (!\ALU|data_OUT|MUX_Sel|Mux19~1_combout\ & (((!\alu_op[0]~input_o\ & \operand_a[12]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101101001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu_op[1]~input_o\,
	datab => \ALU|data_OUT|MUX_Sel|Mux19~1_combout\,
	datac => \alu_op[0]~input_o\,
	datad => \operand_a[12]~input_o\,
	combout => \ALU|data_OUT|MUX_Sel|Mux19~2_combout\);

-- Location: LCCOMB_X38_Y26_N14
\ALU|data_OUT|MUX_Sel|Mux19~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ALU|data_OUT|MUX_Sel|Mux19~0_combout\ = (\ALU|data_OUT|MUX_Sel|Mux3~0_combout\ & ((\ALU|data_OUT|MUX_Sel|Mux16~0_combout\) # ((\ALU|data_OUT|MUX_Sel|Mux19~2_combout\ & \alu_op[2]~input_o\)))) # (!\ALU|data_OUT|MUX_Sel|Mux3~0_combout\ & 
-- (((\ALU|data_OUT|MUX_Sel|Mux19~2_combout\ & \alu_op[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU|data_OUT|MUX_Sel|Mux3~0_combout\,
	datab => \ALU|data_OUT|MUX_Sel|Mux16~0_combout\,
	datac => \ALU|data_OUT|MUX_Sel|Mux19~2_combout\,
	datad => \alu_op[2]~input_o\,
	combout => \ALU|data_OUT|MUX_Sel|Mux19~0_combout\);

-- Location: LCCOMB_X36_Y26_N28
\ALU|data_in|D5_in|Sel_SR|Data_out|MUX_Sel|Out[13]~60\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ALU|data_in|D5_in|Sel_SR|Data_out|MUX_Sel|Out[13]~60_combout\ = (\ALU|data_in|D5_in|Sel_SR|Data_out|MUX_Sel|Out[3]~22_combout\ & (!\ALU|data_in|D5_in|Sel_SR|SRA_out|SRA1|Add1~1_combout\ & (!\ALU|data_in|D5_in|Sel_SR|SRA_out|SRA1|Add1~0_combout\ & 
-- \ALU|data_in|D5_in|Sel_SR|Data_out|MUX_Sel|Out[12]~56_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU|data_in|D5_in|Sel_SR|Data_out|MUX_Sel|Out[3]~22_combout\,
	datab => \ALU|data_in|D5_in|Sel_SR|SRA_out|SRA1|Add1~1_combout\,
	datac => \ALU|data_in|D5_in|Sel_SR|SRA_out|SRA1|Add1~0_combout\,
	datad => \ALU|data_in|D5_in|Sel_SR|Data_out|MUX_Sel|Out[12]~56_combout\,
	combout => \ALU|data_in|D5_in|Sel_SR|Data_out|MUX_Sel|Out[13]~60_combout\);

-- Location: LCCOMB_X37_Y26_N0
\ALU|data_in|D5_in|Sel_SR|Data_out|MUX_Sel|Out[13]~58\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ALU|data_in|D5_in|Sel_SR|Data_out|MUX_Sel|Out[13]~58_combout\ = (\operand_b[3]~input_o\ & ((\operand_b[2]~input_o\ & ((\ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~46_combout\))) # (!\operand_b[2]~input_o\ & 
-- (\ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~39_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~39_combout\,
	datab => \operand_b[2]~input_o\,
	datac => \ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~46_combout\,
	datad => \operand_b[3]~input_o\,
	combout => \ALU|data_in|D5_in|Sel_SR|Data_out|MUX_Sel|Out[13]~58_combout\);

-- Location: LCCOMB_X37_Y26_N10
\ALU|data_in|D5_in|Sel_SR|Data_out|MUX_Sel|Out[13]~59\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ALU|data_in|D5_in|Sel_SR|Data_out|MUX_Sel|Out[13]~59_combout\ = (!\operand_b[4]~input_o\ & ((\ALU|data_in|D5_in|Sel_SR|Data_out|MUX_Sel|Out[13]~58_combout\) # ((!\operand_b[3]~input_o\ & 
-- \ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~93_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU|data_in|D5_in|Sel_SR|Data_out|MUX_Sel|Out[13]~58_combout\,
	datab => \operand_b[3]~input_o\,
	datac => \ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~93_combout\,
	datad => \operand_b[4]~input_o\,
	combout => \ALU|data_in|D5_in|Sel_SR|Data_out|MUX_Sel|Out[13]~59_combout\);

-- Location: LCCOMB_X38_Y26_N16
\ALU|data_in|D5_in|Sel_SR|Data_out|MUX_Sel|Out[13]~61\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ALU|data_in|D5_in|Sel_SR|Data_out|MUX_Sel|Out[13]~61_combout\ = (\ALU|data_in|D5_in|Sel_SR|Data_out|MUX_Sel|Out[13]~60_combout\) # ((\ALU|data_in|D5_in|Sel_SR|Data_out|MUX_Sel|Out[13]~59_combout\) # 
-- ((\ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~109_combout\ & \ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~44_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~109_combout\,
	datab => \ALU|data_in|D5_in|Sel_SR|Data_out|MUX_Sel|Out[13]~60_combout\,
	datac => \ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~44_combout\,
	datad => \ALU|data_in|D5_in|Sel_SR|Data_out|MUX_Sel|Out[13]~59_combout\,
	combout => \ALU|data_in|D5_in|Sel_SR|Data_out|MUX_Sel|Out[13]~61_combout\);

-- Location: LCCOMB_X39_Y23_N18
\ALU|data_OUT|MUX_Sel|Mux18~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ALU|data_OUT|MUX_Sel|Mux18~1_combout\ = (\alu_op[0]~input_o\ & (((\operand_a[13]~input_o\ & \operand_b[13]~input_o\)) # (!\alu_op[1]~input_o\))) # (!\alu_op[0]~input_o\ & ((\operand_a[13]~input_o\ & ((\alu_op[1]~input_o\) # (!\operand_b[13]~input_o\))) # 
-- (!\operand_a[13]~input_o\ & ((\operand_b[13]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011101110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu_op[1]~input_o\,
	datab => \alu_op[0]~input_o\,
	datac => \operand_a[13]~input_o\,
	datad => \operand_b[13]~input_o\,
	combout => \ALU|data_OUT|MUX_Sel|Mux18~1_combout\);

-- Location: LCCOMB_X38_Y26_N10
\ALU|data_OUT|MUX_Sel|Mux18~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ALU|data_OUT|MUX_Sel|Mux18~2_combout\ = (\ALU|data_OUT|MUX_Sel|Mux18~1_combout\ & ((\alu_op[1]~input_o\) # ((\ALU|data_in|D5_in|Sel_SR|Data_out|MUX_Sel|Out[13]~61_combout\) # (!\alu_op[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu_op[1]~input_o\,
	datab => \ALU|data_in|D5_in|Sel_SR|Data_out|MUX_Sel|Out[13]~61_combout\,
	datac => \ALU|data_OUT|MUX_Sel|Mux18~1_combout\,
	datad => \alu_op[0]~input_o\,
	combout => \ALU|data_OUT|MUX_Sel|Mux18~2_combout\);

-- Location: LCCOMB_X39_Y23_N0
\ALU|data_in|D1_in|SLL|ShiftLeft0~45\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ALU|data_in|D1_in|SLL|ShiftLeft0~45_combout\ = (\operand_b[1]~input_o\ & ((\operand_a[11]~input_o\))) # (!\operand_b[1]~input_o\ & (\operand_a[13]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \operand_b[1]~input_o\,
	datac => \operand_a[13]~input_o\,
	datad => \operand_a[11]~input_o\,
	combout => \ALU|data_in|D1_in|SLL|ShiftLeft0~45_combout\);

-- Location: LCCOMB_X38_Y23_N28
\ALU|data_in|D1_in|SLL|ShiftLeft0~46\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ALU|data_in|D1_in|SLL|ShiftLeft0~46_combout\ = (\operand_b[0]~input_o\ & (\ALU|data_in|D1_in|SLL|ShiftLeft0~42_combout\)) # (!\operand_b[0]~input_o\ & ((\ALU|data_in|D1_in|SLL|ShiftLeft0~45_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU|data_in|D1_in|SLL|ShiftLeft0~42_combout\,
	datab => \ALU|data_in|D1_in|SLL|ShiftLeft0~45_combout\,
	datac => \operand_b[0]~input_o\,
	combout => \ALU|data_in|D1_in|SLL|ShiftLeft0~46_combout\);

-- Location: LCCOMB_X38_Y27_N22
\ALU|data_in|D1_in|SLL|ShiftLeft0~47\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ALU|data_in|D1_in|SLL|ShiftLeft0~47_combout\ = (\operand_b[2]~input_o\ & ((\ALU|data_in|D1_in|SLL|ShiftLeft0~31_combout\))) # (!\operand_b[2]~input_o\ & (\ALU|data_in|D1_in|SLL|ShiftLeft0~46_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU|data_in|D1_in|SLL|ShiftLeft0~46_combout\,
	datab => \operand_b[2]~input_o\,
	datac => \ALU|data_in|D1_in|SLL|ShiftLeft0~31_combout\,
	combout => \ALU|data_in|D1_in|SLL|ShiftLeft0~47_combout\);

-- Location: LCCOMB_X38_Y27_N16
\ALU|data_OUT|MUX_Sel|Mux2~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ALU|data_OUT|MUX_Sel|Mux2~0_combout\ = (\operand_b[3]~input_o\ & ((\ALU|data_in|D1_in|SLL|ShiftLeft0~17_combout\))) # (!\operand_b[3]~input_o\ & (\ALU|data_in|D1_in|SLL|ShiftLeft0~47_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU|data_in|D1_in|SLL|ShiftLeft0~47_combout\,
	datac => \operand_b[3]~input_o\,
	datad => \ALU|data_in|D1_in|SLL|ShiftLeft0~17_combout\,
	combout => \ALU|data_OUT|MUX_Sel|Mux2~0_combout\);

-- Location: LCCOMB_X38_Y26_N2
\ALU|data_OUT|MUX_Sel|Mux18~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ALU|data_OUT|MUX_Sel|Mux18~0_combout\ = (\ALU|data_OUT|MUX_Sel|Mux18~2_combout\ & ((\alu_op[2]~input_o\) # ((\ALU|data_OUT|MUX_Sel|Mux16~0_combout\ & \ALU|data_OUT|MUX_Sel|Mux2~0_combout\)))) # (!\ALU|data_OUT|MUX_Sel|Mux18~2_combout\ & 
-- (\ALU|data_OUT|MUX_Sel|Mux16~0_combout\ & (\ALU|data_OUT|MUX_Sel|Mux2~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU|data_OUT|MUX_Sel|Mux18~2_combout\,
	datab => \ALU|data_OUT|MUX_Sel|Mux16~0_combout\,
	datac => \ALU|data_OUT|MUX_Sel|Mux2~0_combout\,
	datad => \alu_op[2]~input_o\,
	combout => \ALU|data_OUT|MUX_Sel|Mux18~0_combout\);

-- Location: LCCOMB_X38_Y23_N30
\ALU|data_in|D1_in|SLL|ShiftLeft0~48\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ALU|data_in|D1_in|SLL|ShiftLeft0~48_combout\ = (\operand_b[1]~input_o\ & ((\operand_a[12]~input_o\))) # (!\operand_b[1]~input_o\ & (\operand_a[14]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \operand_a[14]~input_o\,
	datab => \operand_b[1]~input_o\,
	datac => \operand_a[12]~input_o\,
	combout => \ALU|data_in|D1_in|SLL|ShiftLeft0~48_combout\);

-- Location: LCCOMB_X38_Y23_N24
\ALU|data_in|D1_in|SLL|ShiftLeft0~49\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ALU|data_in|D1_in|SLL|ShiftLeft0~49_combout\ = (\operand_b[0]~input_o\ & ((\ALU|data_in|D1_in|SLL|ShiftLeft0~45_combout\))) # (!\operand_b[0]~input_o\ & (\ALU|data_in|D1_in|SLL|ShiftLeft0~48_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU|data_in|D1_in|SLL|ShiftLeft0~48_combout\,
	datab => \ALU|data_in|D1_in|SLL|ShiftLeft0~45_combout\,
	datac => \operand_b[0]~input_o\,
	combout => \ALU|data_in|D1_in|SLL|ShiftLeft0~49_combout\);

-- Location: LCCOMB_X37_Y25_N14
\ALU|data_in|D1_in|SLL|ShiftLeft0~50\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ALU|data_in|D1_in|SLL|ShiftLeft0~50_combout\ = (\operand_b[2]~input_o\ & (\ALU|data_in|D1_in|SLL|ShiftLeft0~35_combout\)) # (!\operand_b[2]~input_o\ & ((\ALU|data_in|D1_in|SLL|ShiftLeft0~49_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU|data_in|D1_in|SLL|ShiftLeft0~35_combout\,
	datab => \operand_b[2]~input_o\,
	datad => \ALU|data_in|D1_in|SLL|ShiftLeft0~49_combout\,
	combout => \ALU|data_in|D1_in|SLL|ShiftLeft0~50_combout\);

-- Location: LCCOMB_X37_Y25_N24
\ALU|data_in|D1_in|SLL|ShiftLeft0~51\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ALU|data_in|D1_in|SLL|ShiftLeft0~51_combout\ = (\operand_b[3]~input_o\ & (\ALU|data_in|D1_in|SLL|ShiftLeft0~20_combout\)) # (!\operand_b[3]~input_o\ & ((\ALU|data_in|D1_in|SLL|ShiftLeft0~50_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ALU|data_in|D1_in|SLL|ShiftLeft0~20_combout\,
	datac => \ALU|data_in|D1_in|SLL|ShiftLeft0~50_combout\,
	datad => \operand_b[3]~input_o\,
	combout => \ALU|data_in|D1_in|SLL|ShiftLeft0~51_combout\);

-- Location: LCCOMB_X36_Y27_N4
\ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~112\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~112_combout\ = (!\ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~27_combout\ & ((\operand_b[0]~input_o\ & ((\operand_a[31]~input_o\))) # (!\operand_b[0]~input_o\ & (\operand_a[30]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \operand_b[0]~input_o\,
	datab => \operand_a[30]~input_o\,
	datac => \operand_a[31]~input_o\,
	datad => \ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~27_combout\,
	combout => \ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~112_combout\);

-- Location: LCCOMB_X36_Y27_N28
\ALU|data_in|D5_in|Sel_SR|Data_out|MUX_Sel|Out[14]~62\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ALU|data_in|D5_in|Sel_SR|Data_out|MUX_Sel|Out[14]~62_combout\ = (!\operand_b[3]~input_o\ & ((\operand_b[4]~input_o\ & ((\ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~112_combout\))) # (!\operand_b[4]~input_o\ & 
-- (\ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~98_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \operand_b[3]~input_o\,
	datab => \ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~98_combout\,
	datac => \ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~112_combout\,
	datad => \operand_b[4]~input_o\,
	combout => \ALU|data_in|D5_in|Sel_SR|Data_out|MUX_Sel|Out[14]~62_combout\);

-- Location: LCCOMB_X36_Y27_N6
\ALU|data_in|D5_in|Sel_SR|Data_out|MUX_Sel|Out[14]~63\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ALU|data_in|D5_in|Sel_SR|Data_out|MUX_Sel|Out[14]~63_combout\ = (\ALU|data_in|D5_in|Sel_SR|Data_out|MUX_Sel|Out[0]~19_combout\ & ((\operand_b[2]~input_o\ & (\ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~57_combout\)) # (!\operand_b[2]~input_o\ & 
-- ((\ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~60_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~57_combout\,
	datab => \operand_b[2]~input_o\,
	datac => \ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~60_combout\,
	datad => \ALU|data_in|D5_in|Sel_SR|Data_out|MUX_Sel|Out[0]~19_combout\,
	combout => \ALU|data_in|D5_in|Sel_SR|Data_out|MUX_Sel|Out[14]~63_combout\);

-- Location: LCCOMB_X36_Y27_N0
\ALU|data_in|D5_in|Sel_SR|Data_out|MUX_Sel|Out[14]~64\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ALU|data_in|D5_in|Sel_SR|Data_out|MUX_Sel|Out[14]~64_combout\ = (\ALU|data_in|D5_in|Sel_SR|Data_out|MUX_Sel|Out[14]~62_combout\) # ((\ALU|data_in|D5_in|Sel_SR|Data_out|MUX_Sel|Out[14]~63_combout\) # 
-- ((\ALU|data_in|D5_in|Sel_SR|Data_out|MUX_Sel|Out[6]~91_combout\ & \ALU|data_in|D5_in|Sel_SR|Data_out|MUX_Sel|Out[12]~56_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU|data_in|D5_in|Sel_SR|Data_out|MUX_Sel|Out[6]~91_combout\,
	datab => \ALU|data_in|D5_in|Sel_SR|Data_out|MUX_Sel|Out[14]~62_combout\,
	datac => \ALU|data_in|D5_in|Sel_SR|Data_out|MUX_Sel|Out[12]~56_combout\,
	datad => \ALU|data_in|D5_in|Sel_SR|Data_out|MUX_Sel|Out[14]~63_combout\,
	combout => \ALU|data_in|D5_in|Sel_SR|Data_out|MUX_Sel|Out[14]~64_combout\);

-- Location: LCCOMB_X39_Y29_N28
\ALU|data_OUT|MUX_Sel|Mux17~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ALU|data_OUT|MUX_Sel|Mux17~1_combout\ = (\alu_op[1]~input_o\ & (((\operand_b[14]~input_o\)))) # (!\alu_op[1]~input_o\ & ((\alu_op[0]~input_o\ & (\ALU|data_in|D5_in|Sel_SR|Data_out|MUX_Sel|Out[14]~64_combout\)) # (!\alu_op[0]~input_o\ & 
-- ((\operand_b[14]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU|data_in|D5_in|Sel_SR|Data_out|MUX_Sel|Out[14]~64_combout\,
	datab => \alu_op[1]~input_o\,
	datac => \alu_op[0]~input_o\,
	datad => \operand_b[14]~input_o\,
	combout => \ALU|data_OUT|MUX_Sel|Mux17~1_combout\);

-- Location: LCCOMB_X39_Y29_N30
\ALU|data_OUT|MUX_Sel|Mux17~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ALU|data_OUT|MUX_Sel|Mux17~2_combout\ = (\operand_a[14]~input_o\ & ((\alu_op[0]~input_o\ & ((\ALU|data_OUT|MUX_Sel|Mux17~1_combout\))) # (!\alu_op[0]~input_o\ & ((\alu_op[1]~input_o\) # (!\ALU|data_OUT|MUX_Sel|Mux17~1_combout\))))) # 
-- (!\operand_a[14]~input_o\ & (\ALU|data_OUT|MUX_Sel|Mux17~1_combout\ & ((!\alu_op[0]~input_o\) # (!\alu_op[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110100001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \operand_a[14]~input_o\,
	datab => \alu_op[1]~input_o\,
	datac => \alu_op[0]~input_o\,
	datad => \ALU|data_OUT|MUX_Sel|Mux17~1_combout\,
	combout => \ALU|data_OUT|MUX_Sel|Mux17~2_combout\);

-- Location: LCCOMB_X39_Y29_N24
\ALU|data_OUT|MUX_Sel|Mux17~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ALU|data_OUT|MUX_Sel|Mux17~0_combout\ = (\ALU|data_OUT|MUX_Sel|Mux16~0_combout\ & ((\ALU|data_in|D1_in|SLL|ShiftLeft0~51_combout\) # ((\ALU|data_OUT|MUX_Sel|Mux17~2_combout\ & \alu_op[2]~input_o\)))) # (!\ALU|data_OUT|MUX_Sel|Mux16~0_combout\ & 
-- (((\ALU|data_OUT|MUX_Sel|Mux17~2_combout\ & \alu_op[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU|data_OUT|MUX_Sel|Mux16~0_combout\,
	datab => \ALU|data_in|D1_in|SLL|ShiftLeft0~51_combout\,
	datac => \ALU|data_OUT|MUX_Sel|Mux17~2_combout\,
	datad => \alu_op[2]~input_o\,
	combout => \ALU|data_OUT|MUX_Sel|Mux17~0_combout\);

-- Location: LCCOMB_X39_Y29_N8
\ALU|data_OUT|MUX_Sel|Mux16~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ALU|data_OUT|MUX_Sel|Mux16~2_combout\ = (\alu_op[0]~input_o\ & (((\operand_a[15]~input_o\ & \operand_b[15]~input_o\)) # (!\alu_op[1]~input_o\))) # (!\alu_op[0]~input_o\ & ((\operand_a[15]~input_o\ & ((\alu_op[1]~input_o\) # (!\operand_b[15]~input_o\))) # 
-- (!\operand_a[15]~input_o\ & ((\operand_b[15]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110100111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \operand_a[15]~input_o\,
	datab => \alu_op[1]~input_o\,
	datac => \alu_op[0]~input_o\,
	datad => \operand_b[15]~input_o\,
	combout => \ALU|data_OUT|MUX_Sel|Mux16~2_combout\);

-- Location: LCCOMB_X36_Y24_N20
\ALU|data_in|D5_in|Sel_SR|Data_out|MUX_Sel|Out[15]~65\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ALU|data_in|D5_in|Sel_SR|Data_out|MUX_Sel|Out[15]~65_combout\ = (!\operand_b[3]~input_o\ & (!\operand_b[2]~input_o\ & ((\funct7~input_o\) # (!\operand_b[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000100000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \operand_b[3]~input_o\,
	datab => \operand_b[2]~input_o\,
	datac => \operand_b[0]~input_o\,
	datad => \funct7~input_o\,
	combout => \ALU|data_in|D5_in|Sel_SR|Data_out|MUX_Sel|Out[15]~65_combout\);

-- Location: LCCOMB_X36_Y24_N6
\ALU|data_in|D5_in|Sel_SR|Data_out|MUX_Sel|Out[15]~66\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ALU|data_in|D5_in|Sel_SR|Data_out|MUX_Sel|Out[15]~66_combout\ = (\ALU|data_in|D5_in|Sel_SR|Data_out|MUX_Sel|Out[15]~65_combout\ & (!\operand_b[1]~input_o\ & \operand_a[31]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ALU|data_in|D5_in|Sel_SR|Data_out|MUX_Sel|Out[15]~65_combout\,
	datac => \operand_b[1]~input_o\,
	datad => \operand_a[31]~input_o\,
	combout => \ALU|data_in|D5_in|Sel_SR|Data_out|MUX_Sel|Out[15]~66_combout\);

-- Location: LCCOMB_X36_Y24_N26
\ALU|data_in|D5_in|Sel_SR|Data_out|MUX_Sel|Out[15]~68\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ALU|data_in|D5_in|Sel_SR|Data_out|MUX_Sel|Out[15]~68_combout\ = (\operand_b[3]~input_o\ & ((\operand_b[2]~input_o\ & (\ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~76_combout\)) # (!\operand_b[2]~input_o\ & 
-- ((\ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~78_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \operand_b[3]~input_o\,
	datab => \ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~76_combout\,
	datac => \ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~78_combout\,
	datad => \operand_b[2]~input_o\,
	combout => \ALU|data_in|D5_in|Sel_SR|Data_out|MUX_Sel|Out[15]~68_combout\);

-- Location: LCCOMB_X36_Y24_N0
\ALU|data_in|D5_in|Sel_SR|Data_out|MUX_Sel|Out[15]~67\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ALU|data_in|D5_in|Sel_SR|Data_out|MUX_Sel|Out[15]~67_combout\ = (!\operand_b[3]~input_o\ & ((\operand_b[2]~input_o\ & ((\ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~79_combout\))) # (!\operand_b[2]~input_o\ & 
-- (\ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~83_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \operand_b[3]~input_o\,
	datab => \ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~83_combout\,
	datac => \ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~79_combout\,
	datad => \operand_b[2]~input_o\,
	combout => \ALU|data_in|D5_in|Sel_SR|Data_out|MUX_Sel|Out[15]~67_combout\);

-- Location: LCCOMB_X36_Y24_N4
\ALU|data_in|D5_in|Sel_SR|Data_out|MUX_Sel|Out[15]~69\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ALU|data_in|D5_in|Sel_SR|Data_out|MUX_Sel|Out[15]~69_combout\ = (\operand_b[4]~input_o\ & (\ALU|data_in|D5_in|Sel_SR|Data_out|MUX_Sel|Out[15]~66_combout\)) # (!\operand_b[4]~input_o\ & (((\ALU|data_in|D5_in|Sel_SR|Data_out|MUX_Sel|Out[15]~68_combout\) # 
-- (\ALU|data_in|D5_in|Sel_SR|Data_out|MUX_Sel|Out[15]~67_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU|data_in|D5_in|Sel_SR|Data_out|MUX_Sel|Out[15]~66_combout\,
	datab => \operand_b[4]~input_o\,
	datac => \ALU|data_in|D5_in|Sel_SR|Data_out|MUX_Sel|Out[15]~68_combout\,
	datad => \ALU|data_in|D5_in|Sel_SR|Data_out|MUX_Sel|Out[15]~67_combout\,
	combout => \ALU|data_in|D5_in|Sel_SR|Data_out|MUX_Sel|Out[15]~69_combout\);

-- Location: LCCOMB_X39_Y29_N26
\ALU|data_OUT|MUX_Sel|Mux16~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ALU|data_OUT|MUX_Sel|Mux16~3_combout\ = (\ALU|data_OUT|MUX_Sel|Mux16~2_combout\ & (((\alu_op[1]~input_o\) # (\ALU|data_in|D5_in|Sel_SR|Data_out|MUX_Sel|Out[15]~69_combout\)) # (!\alu_op[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu_op[0]~input_o\,
	datab => \ALU|data_OUT|MUX_Sel|Mux16~2_combout\,
	datac => \alu_op[1]~input_o\,
	datad => \ALU|data_in|D5_in|Sel_SR|Data_out|MUX_Sel|Out[15]~69_combout\,
	combout => \ALU|data_OUT|MUX_Sel|Mux16~3_combout\);

-- Location: LCCOMB_X39_Y23_N10
\ALU|data_in|D1_in|SLL|ShiftLeft0~52\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ALU|data_in|D1_in|SLL|ShiftLeft0~52_combout\ = (\operand_b[1]~input_o\ & (\operand_a[13]~input_o\)) # (!\operand_b[1]~input_o\ & ((\operand_a[15]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \operand_b[1]~input_o\,
	datac => \operand_a[13]~input_o\,
	datad => \operand_a[15]~input_o\,
	combout => \ALU|data_in|D1_in|SLL|ShiftLeft0~52_combout\);

-- Location: LCCOMB_X38_Y23_N10
\ALU|data_in|D1_in|SLL|ShiftLeft0~53\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ALU|data_in|D1_in|SLL|ShiftLeft0~53_combout\ = (\operand_b[0]~input_o\ & (\ALU|data_in|D1_in|SLL|ShiftLeft0~48_combout\)) # (!\operand_b[0]~input_o\ & ((\ALU|data_in|D1_in|SLL|ShiftLeft0~52_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU|data_in|D1_in|SLL|ShiftLeft0~48_combout\,
	datab => \ALU|data_in|D1_in|SLL|ShiftLeft0~52_combout\,
	datac => \operand_b[0]~input_o\,
	combout => \ALU|data_in|D1_in|SLL|ShiftLeft0~53_combout\);

-- Location: LCCOMB_X38_Y28_N30
\ALU|data_in|D1_in|SLL|ShiftLeft0~54\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ALU|data_in|D1_in|SLL|ShiftLeft0~54_combout\ = (\operand_b[2]~input_o\ & ((\ALU|data_in|D1_in|SLL|ShiftLeft0~39_combout\))) # (!\operand_b[2]~input_o\ & (\ALU|data_in|D1_in|SLL|ShiftLeft0~53_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU|data_in|D1_in|SLL|ShiftLeft0~53_combout\,
	datab => \operand_b[2]~input_o\,
	datad => \ALU|data_in|D1_in|SLL|ShiftLeft0~39_combout\,
	combout => \ALU|data_in|D1_in|SLL|ShiftLeft0~54_combout\);

-- Location: LCCOMB_X38_Y28_N16
\ALU|data_in|D1_in|SLL|ShiftLeft0~55\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ALU|data_in|D1_in|SLL|ShiftLeft0~55_combout\ = (\operand_b[3]~input_o\ & (\ALU|data_in|D1_in|SLL|ShiftLeft0~24_combout\)) # (!\operand_b[3]~input_o\ & ((\ALU|data_in|D1_in|SLL|ShiftLeft0~54_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ALU|data_in|D1_in|SLL|ShiftLeft0~24_combout\,
	datac => \ALU|data_in|D1_in|SLL|ShiftLeft0~54_combout\,
	datad => \operand_b[3]~input_o\,
	combout => \ALU|data_in|D1_in|SLL|ShiftLeft0~55_combout\);

-- Location: LCCOMB_X39_Y29_N10
\ALU|data_OUT|MUX_Sel|Mux16~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ALU|data_OUT|MUX_Sel|Mux16~1_combout\ = (\ALU|data_OUT|MUX_Sel|Mux16~3_combout\ & ((\alu_op[2]~input_o\) # ((\ALU|data_OUT|MUX_Sel|Mux16~0_combout\ & \ALU|data_in|D1_in|SLL|ShiftLeft0~55_combout\)))) # (!\ALU|data_OUT|MUX_Sel|Mux16~3_combout\ & 
-- (\ALU|data_OUT|MUX_Sel|Mux16~0_combout\ & (\ALU|data_in|D1_in|SLL|ShiftLeft0~55_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU|data_OUT|MUX_Sel|Mux16~3_combout\,
	datab => \ALU|data_OUT|MUX_Sel|Mux16~0_combout\,
	datac => \ALU|data_in|D1_in|SLL|ShiftLeft0~55_combout\,
	datad => \alu_op[2]~input_o\,
	combout => \ALU|data_OUT|MUX_Sel|Mux16~1_combout\);

-- Location: LCCOMB_X38_Y23_N20
\ALU|data_in|D1_in|SLL|ShiftLeft0~56\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ALU|data_in|D1_in|SLL|ShiftLeft0~56_combout\ = (\operand_b[1]~input_o\ & (\operand_a[14]~input_o\)) # (!\operand_b[1]~input_o\ & ((\operand_a[16]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \operand_a[14]~input_o\,
	datab => \operand_a[16]~input_o\,
	datac => \operand_b[1]~input_o\,
	combout => \ALU|data_in|D1_in|SLL|ShiftLeft0~56_combout\);

-- Location: LCCOMB_X38_Y23_N22
\ALU|data_in|D1_in|SLL|ShiftLeft0~57\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ALU|data_in|D1_in|SLL|ShiftLeft0~57_combout\ = (\operand_b[0]~input_o\ & (\ALU|data_in|D1_in|SLL|ShiftLeft0~52_combout\)) # (!\operand_b[0]~input_o\ & ((\ALU|data_in|D1_in|SLL|ShiftLeft0~56_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ALU|data_in|D1_in|SLL|ShiftLeft0~52_combout\,
	datac => \operand_b[0]~input_o\,
	datad => \ALU|data_in|D1_in|SLL|ShiftLeft0~56_combout\,
	combout => \ALU|data_in|D1_in|SLL|ShiftLeft0~57_combout\);

-- Location: LCCOMB_X39_Y26_N24
\ALU|data_in|D1_in|SLL|ShiftLeft0~58\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ALU|data_in|D1_in|SLL|ShiftLeft0~58_combout\ = (\operand_b[2]~input_o\ & ((\ALU|data_in|D1_in|SLL|ShiftLeft0~43_combout\))) # (!\operand_b[2]~input_o\ & (\ALU|data_in|D1_in|SLL|ShiftLeft0~57_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ALU|data_in|D1_in|SLL|ShiftLeft0~57_combout\,
	datac => \operand_b[2]~input_o\,
	datad => \ALU|data_in|D1_in|SLL|ShiftLeft0~43_combout\,
	combout => \ALU|data_in|D1_in|SLL|ShiftLeft0~58_combout\);

-- Location: LCCOMB_X37_Y27_N10
\ALU|data_OUT|MUX_Sel|Mux15~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ALU|data_OUT|MUX_Sel|Mux15~3_combout\ = (\alu_op[2]~input_o\) # ((!\operand_b[4]~input_o\ & (\operand_b[3]~input_o\ & \ALU|data_OUT|MUX_Sel|Mux26~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \operand_b[4]~input_o\,
	datab => \operand_b[3]~input_o\,
	datac => \alu_op[2]~input_o\,
	datad => \ALU|data_OUT|MUX_Sel|Mux26~0_combout\,
	combout => \ALU|data_OUT|MUX_Sel|Mux15~3_combout\);

-- Location: LCCOMB_X36_Y24_N2
\ALU|data_in|D5_in|Sel_SR|Data_out|MUX_Sel|Out[16]~92\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ALU|data_in|D5_in|Sel_SR|Data_out|MUX_Sel|Out[16]~92_combout\ = (\ALU|data_in|D5_in|Sel_SR|SRA_out|SRA1|Add1~0_combout\ & (\ALU|data_in|D5_in|Sel_SR|Data_out|MUX_Sel|Out[0]~16_combout\ & (\operand_b[1]~input_o\ $ (!\operand_b[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \operand_b[1]~input_o\,
	datab => \ALU|data_in|D5_in|Sel_SR|SRA_out|SRA1|Add1~0_combout\,
	datac => \operand_b[0]~input_o\,
	datad => \ALU|data_in|D5_in|Sel_SR|Data_out|MUX_Sel|Out[0]~16_combout\,
	combout => \ALU|data_in|D5_in|Sel_SR|Data_out|MUX_Sel|Out[16]~92_combout\);

-- Location: LCCOMB_X36_Y26_N14
\ALU|data_in|D5_in|Sel_SR|Data_out|MUX_Sel|Out[16]~70\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ALU|data_in|D5_in|Sel_SR|Data_out|MUX_Sel|Out[16]~70_combout\ = (\operand_b[4]~input_o\ & (((\ALU|data_in|D5_in|Sel_SR|Data_out|MUX_Sel|Out[16]~92_combout\ & \ALU|data_in|D5_in|Sel_SR|Data_out|MUX_Sel|Out[1]~17_combout\)))) # (!\operand_b[4]~input_o\ & 
-- ((\ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~24_combout\) # ((\ALU|data_in|D5_in|Sel_SR|Data_out|MUX_Sel|Out[16]~92_combout\ & \ALU|data_in|D5_in|Sel_SR|Data_out|MUX_Sel|Out[1]~17_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \operand_b[4]~input_o\,
	datab => \ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~24_combout\,
	datac => \ALU|data_in|D5_in|Sel_SR|Data_out|MUX_Sel|Out[16]~92_combout\,
	datad => \ALU|data_in|D5_in|Sel_SR|Data_out|MUX_Sel|Out[1]~17_combout\,
	combout => \ALU|data_in|D5_in|Sel_SR|Data_out|MUX_Sel|Out[16]~70_combout\);

-- Location: LCCOMB_X39_Y23_N16
\ALU|data_OUT|MUX_Sel|Mux15~6\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ALU|data_OUT|MUX_Sel|Mux15~6_combout\ = (\alu_op[1]~input_o\ & (((\operand_b[16]~input_o\)))) # (!\alu_op[1]~input_o\ & ((\alu_op[0]~input_o\ & (\ALU|data_in|D5_in|Sel_SR|Data_out|MUX_Sel|Out[16]~70_combout\)) # (!\alu_op[0]~input_o\ & 
-- ((\operand_b[16]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu_op[1]~input_o\,
	datab => \ALU|data_in|D5_in|Sel_SR|Data_out|MUX_Sel|Out[16]~70_combout\,
	datac => \alu_op[0]~input_o\,
	datad => \operand_b[16]~input_o\,
	combout => \ALU|data_OUT|MUX_Sel|Mux15~6_combout\);

-- Location: LCCOMB_X38_Y25_N2
\ALU|data_OUT|MUX_Sel|Mux15~7\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ALU|data_OUT|MUX_Sel|Mux15~7_combout\ = (\ALU|data_OUT|MUX_Sel|Mux15~6_combout\ & ((\alu_op[1]~input_o\ & ((\operand_a[16]~input_o\) # (!\alu_op[0]~input_o\))) # (!\alu_op[1]~input_o\ & ((\alu_op[0]~input_o\) # (!\operand_a[16]~input_o\))))) # 
-- (!\ALU|data_OUT|MUX_Sel|Mux15~6_combout\ & (((!\alu_op[0]~input_o\ & \operand_a[16]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101101001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu_op[1]~input_o\,
	datab => \ALU|data_OUT|MUX_Sel|Mux15~6_combout\,
	datac => \alu_op[0]~input_o\,
	datad => \operand_a[16]~input_o\,
	combout => \ALU|data_OUT|MUX_Sel|Mux15~7_combout\);

-- Location: LCCOMB_X39_Y29_N22
\ALU|data_OUT|MUX_Sel|Mux15~5\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ALU|data_OUT|MUX_Sel|Mux15~5_combout\ = (\alu_op[2]~input_o\) # ((\alu_op[0]~input_o\ & (!\alu_op[1]~input_o\ & \operand_b[4]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu_op[0]~input_o\,
	datab => \alu_op[1]~input_o\,
	datac => \operand_b[4]~input_o\,
	datad => \alu_op[2]~input_o\,
	combout => \ALU|data_OUT|MUX_Sel|Mux15~5_combout\);

-- Location: LCCOMB_X39_Y26_N2
\ALU|data_OUT|MUX_Sel|Mux15~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ALU|data_OUT|MUX_Sel|Mux15~4_combout\ = (\ALU|data_OUT|MUX_Sel|Mux15~3_combout\ & ((\ALU|data_OUT|MUX_Sel|Mux15~7_combout\) # ((!\ALU|data_OUT|MUX_Sel|Mux15~5_combout\)))) # (!\ALU|data_OUT|MUX_Sel|Mux15~3_combout\ & 
-- (((\ALU|data_OUT|MUX_Sel|Mux15~5_combout\ & \ALU|data_in|D1_in|SLL|ShiftLeft0~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101010001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU|data_OUT|MUX_Sel|Mux15~3_combout\,
	datab => \ALU|data_OUT|MUX_Sel|Mux15~7_combout\,
	datac => \ALU|data_OUT|MUX_Sel|Mux15~5_combout\,
	datad => \ALU|data_in|D1_in|SLL|ShiftLeft0~5_combout\,
	combout => \ALU|data_OUT|MUX_Sel|Mux15~4_combout\);

-- Location: LCCOMB_X39_Y29_N20
\ALU|data_OUT|MUX_Sel|Mux15~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ALU|data_OUT|MUX_Sel|Mux15~2_combout\ = ((\alu_op[1]~input_o\) # ((\operand_b[4]~input_o\) # (\alu_op[2]~input_o\))) # (!\alu_op[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu_op[0]~input_o\,
	datab => \alu_op[1]~input_o\,
	datac => \operand_b[4]~input_o\,
	datad => \alu_op[2]~input_o\,
	combout => \ALU|data_OUT|MUX_Sel|Mux15~2_combout\);

-- Location: LCCOMB_X39_Y26_N20
\ALU|data_OUT|MUX_Sel|Mux15\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ALU|data_OUT|MUX_Sel|Mux15~combout\ = (\ALU|data_OUT|MUX_Sel|Mux15~4_combout\ & ((\ALU|data_in|D1_in|SLL|ShiftLeft0~28_combout\) # ((\ALU|data_OUT|MUX_Sel|Mux15~2_combout\)))) # (!\ALU|data_OUT|MUX_Sel|Mux15~4_combout\ & 
-- (((\ALU|data_in|D1_in|SLL|ShiftLeft0~58_combout\ & !\ALU|data_OUT|MUX_Sel|Mux15~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU|data_in|D1_in|SLL|ShiftLeft0~28_combout\,
	datab => \ALU|data_in|D1_in|SLL|ShiftLeft0~58_combout\,
	datac => \ALU|data_OUT|MUX_Sel|Mux15~4_combout\,
	datad => \ALU|data_OUT|MUX_Sel|Mux15~2_combout\,
	combout => \ALU|data_OUT|MUX_Sel|Mux15~combout\);

-- Location: LCCOMB_X36_Y24_N28
\ALU|data_in|D5_in|Sel_SR|Data_out|MUX_Sel|Out[17]~93\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ALU|data_in|D5_in|Sel_SR|Data_out|MUX_Sel|Out[17]~93_combout\ = (\ALU|data_in|D5_in|Sel_SR|SRA_out|SRA1|Add1~0_combout\ & (\ALU|data_in|D5_in|Sel_SR|Data_out|MUX_Sel|Out[3]~22_combout\ & (\operand_b[1]~input_o\ $ (!\operand_b[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \operand_b[1]~input_o\,
	datab => \ALU|data_in|D5_in|Sel_SR|SRA_out|SRA1|Add1~0_combout\,
	datac => \operand_b[0]~input_o\,
	datad => \ALU|data_in|D5_in|Sel_SR|Data_out|MUX_Sel|Out[3]~22_combout\,
	combout => \ALU|data_in|D5_in|Sel_SR|Data_out|MUX_Sel|Out[17]~93_combout\);

-- Location: LCCOMB_X36_Y26_N24
\ALU|data_in|D5_in|Sel_SR|Data_out|MUX_Sel|Out[17]~71\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ALU|data_in|D5_in|Sel_SR|Data_out|MUX_Sel|Out[17]~71_combout\ = (\ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~48_combout\ & (((\ALU|data_in|D5_in|Sel_SR|Data_out|MUX_Sel|Out[1]~17_combout\ & 
-- \ALU|data_in|D5_in|Sel_SR|Data_out|MUX_Sel|Out[17]~93_combout\)) # (!\operand_b[4]~input_o\))) # (!\ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~48_combout\ & (\ALU|data_in|D5_in|Sel_SR|Data_out|MUX_Sel|Out[1]~17_combout\ & 
-- (\ALU|data_in|D5_in|Sel_SR|Data_out|MUX_Sel|Out[17]~93_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~48_combout\,
	datab => \ALU|data_in|D5_in|Sel_SR|Data_out|MUX_Sel|Out[1]~17_combout\,
	datac => \ALU|data_in|D5_in|Sel_SR|Data_out|MUX_Sel|Out[17]~93_combout\,
	datad => \operand_b[4]~input_o\,
	combout => \ALU|data_in|D5_in|Sel_SR|Data_out|MUX_Sel|Out[17]~71_combout\);

-- Location: LCCOMB_X39_Y23_N12
\ALU|data_OUT|MUX_Sel|Mux14~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ALU|data_OUT|MUX_Sel|Mux14~1_combout\ = (\alu_op[0]~input_o\ & (((\operand_b[17]~input_o\ & \operand_a[17]~input_o\)) # (!\alu_op[1]~input_o\))) # (!\alu_op[0]~input_o\ & ((\operand_b[17]~input_o\ & ((\alu_op[1]~input_o\) # (!\operand_a[17]~input_o\))) # 
-- (!\operand_b[17]~input_o\ & ((\operand_a[17]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101101011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu_op[1]~input_o\,
	datab => \operand_b[17]~input_o\,
	datac => \alu_op[0]~input_o\,
	datad => \operand_a[17]~input_o\,
	combout => \ALU|data_OUT|MUX_Sel|Mux14~1_combout\);

-- Location: LCCOMB_X39_Y23_N6
\ALU|data_OUT|MUX_Sel|Mux14~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ALU|data_OUT|MUX_Sel|Mux14~2_combout\ = (\ALU|data_OUT|MUX_Sel|Mux14~1_combout\ & ((\alu_op[1]~input_o\) # ((\ALU|data_in|D5_in|Sel_SR|Data_out|MUX_Sel|Out[17]~71_combout\) # (!\alu_op[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu_op[1]~input_o\,
	datab => \ALU|data_in|D5_in|Sel_SR|Data_out|MUX_Sel|Out[17]~71_combout\,
	datac => \alu_op[0]~input_o\,
	datad => \ALU|data_OUT|MUX_Sel|Mux14~1_combout\,
	combout => \ALU|data_OUT|MUX_Sel|Mux14~2_combout\);

-- Location: LCCOMB_X38_Y27_N28
\ALU|data_OUT|MUX_Sel|Mux14~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ALU|data_OUT|MUX_Sel|Mux14~0_combout\ = (\ALU|data_OUT|MUX_Sel|Mux15~3_combout\ & ((\ALU|data_OUT|MUX_Sel|Mux14~2_combout\) # ((!\ALU|data_OUT|MUX_Sel|Mux15~5_combout\)))) # (!\ALU|data_OUT|MUX_Sel|Mux15~3_combout\ & 
-- (((\ALU|data_OUT|MUX_Sel|Mux15~5_combout\ & \ALU|data_in|D1_in|SLL|ShiftLeft0~96_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101010001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU|data_OUT|MUX_Sel|Mux15~3_combout\,
	datab => \ALU|data_OUT|MUX_Sel|Mux14~2_combout\,
	datac => \ALU|data_OUT|MUX_Sel|Mux15~5_combout\,
	datad => \ALU|data_in|D1_in|SLL|ShiftLeft0~96_combout\,
	combout => \ALU|data_OUT|MUX_Sel|Mux14~0_combout\);

-- Location: LCCOMB_X39_Y23_N28
\ALU|data_in|D1_in|SLL|ShiftLeft0~59\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ALU|data_in|D1_in|SLL|ShiftLeft0~59_combout\ = (\operand_b[1]~input_o\ & (\operand_a[15]~input_o\)) # (!\operand_b[1]~input_o\ & ((\operand_a[17]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \operand_a[15]~input_o\,
	datac => \operand_b[1]~input_o\,
	datad => \operand_a[17]~input_o\,
	combout => \ALU|data_in|D1_in|SLL|ShiftLeft0~59_combout\);

-- Location: LCCOMB_X38_Y24_N14
\ALU|data_in|D1_in|SLL|ShiftLeft0~60\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ALU|data_in|D1_in|SLL|ShiftLeft0~60_combout\ = (\operand_b[0]~input_o\ & (\ALU|data_in|D1_in|SLL|ShiftLeft0~56_combout\)) # (!\operand_b[0]~input_o\ & ((\ALU|data_in|D1_in|SLL|ShiftLeft0~59_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU|data_in|D1_in|SLL|ShiftLeft0~56_combout\,
	datab => \ALU|data_in|D1_in|SLL|ShiftLeft0~59_combout\,
	datad => \operand_b[0]~input_o\,
	combout => \ALU|data_in|D1_in|SLL|ShiftLeft0~60_combout\);

-- Location: LCCOMB_X38_Y27_N18
\ALU|data_in|D1_in|SLL|ShiftLeft0~61\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ALU|data_in|D1_in|SLL|ShiftLeft0~61_combout\ = (\operand_b[2]~input_o\ & (\ALU|data_in|D1_in|SLL|ShiftLeft0~46_combout\)) # (!\operand_b[2]~input_o\ & ((\ALU|data_in|D1_in|SLL|ShiftLeft0~60_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \operand_b[2]~input_o\,
	datac => \ALU|data_in|D1_in|SLL|ShiftLeft0~46_combout\,
	datad => \ALU|data_in|D1_in|SLL|ShiftLeft0~60_combout\,
	combout => \ALU|data_in|D1_in|SLL|ShiftLeft0~61_combout\);

-- Location: LCCOMB_X38_Y27_N6
\ALU|data_OUT|MUX_Sel|Mux14\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ALU|data_OUT|MUX_Sel|Mux14~combout\ = (\ALU|data_OUT|MUX_Sel|Mux14~0_combout\ & (((\ALU|data_OUT|MUX_Sel|Mux15~2_combout\) # (\ALU|data_in|D1_in|SLL|ShiftLeft0~32_combout\)))) # (!\ALU|data_OUT|MUX_Sel|Mux14~0_combout\ & 
-- (\ALU|data_in|D1_in|SLL|ShiftLeft0~61_combout\ & (!\ALU|data_OUT|MUX_Sel|Mux15~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU|data_OUT|MUX_Sel|Mux14~0_combout\,
	datab => \ALU|data_in|D1_in|SLL|ShiftLeft0~61_combout\,
	datac => \ALU|data_OUT|MUX_Sel|Mux15~2_combout\,
	datad => \ALU|data_in|D1_in|SLL|ShiftLeft0~32_combout\,
	combout => \ALU|data_OUT|MUX_Sel|Mux14~combout\);

-- Location: LCCOMB_X36_Y25_N24
\ALU|data_in|D5_in|Sel_SR|Data_out|MUX_Sel|Out[18]~72\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ALU|data_in|D5_in|Sel_SR|Data_out|MUX_Sel|Out[18]~72_combout\ = (\ALU|data_in|D5_in|Sel_SR|Data_out|MUX_Sel|Out[1]~17_combout\ & (\ALU|data_in|D5_in|Sel_SR|SRA_out|SRA1|Add1~0_combout\ & (\ALU|data_in|D5_in|Sel_SR|Data_out|MUX_Sel|Out[0]~16_combout\ & 
-- \ALU|data_in|D5_in|Sel_SR|SRA_out|SRA1|Add1~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU|data_in|D5_in|Sel_SR|Data_out|MUX_Sel|Out[1]~17_combout\,
	datab => \ALU|data_in|D5_in|Sel_SR|SRA_out|SRA1|Add1~0_combout\,
	datac => \ALU|data_in|D5_in|Sel_SR|Data_out|MUX_Sel|Out[0]~16_combout\,
	datad => \ALU|data_in|D5_in|Sel_SR|SRA_out|SRA1|Add1~1_combout\,
	combout => \ALU|data_in|D5_in|Sel_SR|Data_out|MUX_Sel|Out[18]~72_combout\);

-- Location: LCCOMB_X36_Y25_N10
\ALU|data_in|D5_in|Sel_SR|Data_out|MUX_Sel|Out[18]~73\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ALU|data_in|D5_in|Sel_SR|Data_out|MUX_Sel|Out[18]~73_combout\ = (\ALU|data_in|D5_in|Sel_SR|Data_out|MUX_Sel|Out[18]~72_combout\) # ((\ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~63_combout\ & !\operand_b[4]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~63_combout\,
	datab => \ALU|data_in|D5_in|Sel_SR|Data_out|MUX_Sel|Out[18]~72_combout\,
	datad => \operand_b[4]~input_o\,
	combout => \ALU|data_in|D5_in|Sel_SR|Data_out|MUX_Sel|Out[18]~73_combout\);

-- Location: LCCOMB_X38_Y25_N30
\ALU|data_OUT|MUX_Sel|Mux13~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ALU|data_OUT|MUX_Sel|Mux13~1_combout\ = (\alu_op[1]~input_o\ & (((\operand_b[18]~input_o\)))) # (!\alu_op[1]~input_o\ & ((\alu_op[0]~input_o\ & ((\ALU|data_in|D5_in|Sel_SR|Data_out|MUX_Sel|Out[18]~73_combout\))) # (!\alu_op[0]~input_o\ & 
-- (\operand_b[18]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu_op[1]~input_o\,
	datab => \alu_op[0]~input_o\,
	datac => \operand_b[18]~input_o\,
	datad => \ALU|data_in|D5_in|Sel_SR|Data_out|MUX_Sel|Out[18]~73_combout\,
	combout => \ALU|data_OUT|MUX_Sel|Mux13~1_combout\);

-- Location: LCCOMB_X38_Y25_N16
\ALU|data_OUT|MUX_Sel|Mux13~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ALU|data_OUT|MUX_Sel|Mux13~2_combout\ = (\ALU|data_OUT|MUX_Sel|Mux13~1_combout\ & ((\operand_a[18]~input_o\ & ((\alu_op[0]~input_o\) # (\alu_op[1]~input_o\))) # (!\operand_a[18]~input_o\ & ((!\alu_op[1]~input_o\) # (!\alu_op[0]~input_o\))))) # 
-- (!\ALU|data_OUT|MUX_Sel|Mux13~1_combout\ & (\operand_a[18]~input_o\ & (!\alu_op[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111010100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU|data_OUT|MUX_Sel|Mux13~1_combout\,
	datab => \operand_a[18]~input_o\,
	datac => \alu_op[0]~input_o\,
	datad => \alu_op[1]~input_o\,
	combout => \ALU|data_OUT|MUX_Sel|Mux13~2_combout\);

-- Location: LCCOMB_X37_Y25_N28
\ALU|data_OUT|MUX_Sel|Mux13~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ALU|data_OUT|MUX_Sel|Mux13~0_combout\ = (\ALU|data_OUT|MUX_Sel|Mux15~5_combout\ & ((\ALU|data_OUT|MUX_Sel|Mux15~3_combout\ & ((\ALU|data_OUT|MUX_Sel|Mux13~2_combout\))) # (!\ALU|data_OUT|MUX_Sel|Mux15~3_combout\ & 
-- (\ALU|data_in|D1_in|SLL|ShiftLeft0~97_combout\)))) # (!\ALU|data_OUT|MUX_Sel|Mux15~5_combout\ & (((\ALU|data_OUT|MUX_Sel|Mux15~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU|data_OUT|MUX_Sel|Mux15~5_combout\,
	datab => \ALU|data_in|D1_in|SLL|ShiftLeft0~97_combout\,
	datac => \ALU|data_OUT|MUX_Sel|Mux15~3_combout\,
	datad => \ALU|data_OUT|MUX_Sel|Mux13~2_combout\,
	combout => \ALU|data_OUT|MUX_Sel|Mux13~0_combout\);

-- Location: LCCOMB_X38_Y25_N8
\ALU|data_in|D1_in|SLL|ShiftLeft0~62\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ALU|data_in|D1_in|SLL|ShiftLeft0~62_combout\ = (\operand_b[1]~input_o\ & ((\operand_a[16]~input_o\))) # (!\operand_b[1]~input_o\ & (\operand_a[18]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \operand_a[18]~input_o\,
	datac => \operand_b[1]~input_o\,
	datad => \operand_a[16]~input_o\,
	combout => \ALU|data_in|D1_in|SLL|ShiftLeft0~62_combout\);

-- Location: LCCOMB_X38_Y24_N0
\ALU|data_in|D1_in|SLL|ShiftLeft0~63\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ALU|data_in|D1_in|SLL|ShiftLeft0~63_combout\ = (\operand_b[0]~input_o\ & ((\ALU|data_in|D1_in|SLL|ShiftLeft0~59_combout\))) # (!\operand_b[0]~input_o\ & (\ALU|data_in|D1_in|SLL|ShiftLeft0~62_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ALU|data_in|D1_in|SLL|ShiftLeft0~62_combout\,
	datac => \ALU|data_in|D1_in|SLL|ShiftLeft0~59_combout\,
	datad => \operand_b[0]~input_o\,
	combout => \ALU|data_in|D1_in|SLL|ShiftLeft0~63_combout\);

-- Location: LCCOMB_X37_Y25_N2
\ALU|data_in|D1_in|SLL|ShiftLeft0~64\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ALU|data_in|D1_in|SLL|ShiftLeft0~64_combout\ = (\operand_b[2]~input_o\ & ((\ALU|data_in|D1_in|SLL|ShiftLeft0~49_combout\))) # (!\operand_b[2]~input_o\ & (\ALU|data_in|D1_in|SLL|ShiftLeft0~63_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \operand_b[2]~input_o\,
	datac => \ALU|data_in|D1_in|SLL|ShiftLeft0~63_combout\,
	datad => \ALU|data_in|D1_in|SLL|ShiftLeft0~49_combout\,
	combout => \ALU|data_in|D1_in|SLL|ShiftLeft0~64_combout\);

-- Location: LCCOMB_X37_Y25_N6
\ALU|data_OUT|MUX_Sel|Mux13\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ALU|data_OUT|MUX_Sel|Mux13~combout\ = (\ALU|data_OUT|MUX_Sel|Mux13~0_combout\ & ((\ALU|data_in|D1_in|SLL|ShiftLeft0~36_combout\) # ((\ALU|data_OUT|MUX_Sel|Mux15~2_combout\)))) # (!\ALU|data_OUT|MUX_Sel|Mux13~0_combout\ & 
-- (((\ALU|data_in|D1_in|SLL|ShiftLeft0~64_combout\ & !\ALU|data_OUT|MUX_Sel|Mux15~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU|data_OUT|MUX_Sel|Mux13~0_combout\,
	datab => \ALU|data_in|D1_in|SLL|ShiftLeft0~36_combout\,
	datac => \ALU|data_in|D1_in|SLL|ShiftLeft0~64_combout\,
	datad => \ALU|data_OUT|MUX_Sel|Mux15~2_combout\,
	combout => \ALU|data_OUT|MUX_Sel|Mux13~combout\);

-- Location: LCCOMB_X39_Y23_N8
\ALU|data_OUT|MUX_Sel|Mux12~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ALU|data_OUT|MUX_Sel|Mux12~1_combout\ = (\alu_op[0]~input_o\ & (((\operand_b[19]~input_o\ & \operand_a[19]~input_o\)) # (!\alu_op[1]~input_o\))) # (!\alu_op[0]~input_o\ & ((\operand_b[19]~input_o\ & ((\alu_op[1]~input_o\) # (!\operand_a[19]~input_o\))) # 
-- (!\operand_b[19]~input_o\ & ((\operand_a[19]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101101011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu_op[1]~input_o\,
	datab => \operand_b[19]~input_o\,
	datac => \alu_op[0]~input_o\,
	datad => \operand_a[19]~input_o\,
	combout => \ALU|data_OUT|MUX_Sel|Mux12~1_combout\);

-- Location: LCCOMB_X36_Y26_N18
\ALU|data_in|D5_in|Sel_SR|Data_out|MUX_Sel|Out[19]~74\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ALU|data_in|D5_in|Sel_SR|Data_out|MUX_Sel|Out[19]~74_combout\ = (\ALU|data_in|D5_in|Sel_SR|Data_out|MUX_Sel|Out[3]~22_combout\ & (\ALU|data_in|D5_in|Sel_SR|SRA_out|SRA1|Add1~1_combout\ & (\ALU|data_in|D5_in|Sel_SR|SRA_out|SRA1|Add1~0_combout\ & 
-- \ALU|data_in|D5_in|Sel_SR|Data_out|MUX_Sel|Out[1]~17_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU|data_in|D5_in|Sel_SR|Data_out|MUX_Sel|Out[3]~22_combout\,
	datab => \ALU|data_in|D5_in|Sel_SR|SRA_out|SRA1|Add1~1_combout\,
	datac => \ALU|data_in|D5_in|Sel_SR|SRA_out|SRA1|Add1~0_combout\,
	datad => \ALU|data_in|D5_in|Sel_SR|Data_out|MUX_Sel|Out[1]~17_combout\,
	combout => \ALU|data_in|D5_in|Sel_SR|Data_out|MUX_Sel|Out[19]~74_combout\);

-- Location: LCCOMB_X35_Y26_N18
\ALU|data_in|D5_in|Sel_SR|Data_out|MUX_Sel|Out[19]~75\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ALU|data_in|D5_in|Sel_SR|Data_out|MUX_Sel|Out[19]~75_combout\ = (\ALU|data_in|D5_in|Sel_SR|Data_out|MUX_Sel|Out[19]~74_combout\) # ((\ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~80_combout\ & !\operand_b[4]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~80_combout\,
	datab => \ALU|data_in|D5_in|Sel_SR|Data_out|MUX_Sel|Out[19]~74_combout\,
	datad => \operand_b[4]~input_o\,
	combout => \ALU|data_in|D5_in|Sel_SR|Data_out|MUX_Sel|Out[19]~75_combout\);

-- Location: LCCOMB_X39_Y23_N26
\ALU|data_OUT|MUX_Sel|Mux12~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ALU|data_OUT|MUX_Sel|Mux12~2_combout\ = (\ALU|data_OUT|MUX_Sel|Mux12~1_combout\ & ((\alu_op[1]~input_o\) # ((\ALU|data_in|D5_in|Sel_SR|Data_out|MUX_Sel|Out[19]~75_combout\) # (!\alu_op[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu_op[1]~input_o\,
	datab => \ALU|data_OUT|MUX_Sel|Mux12~1_combout\,
	datac => \alu_op[0]~input_o\,
	datad => \ALU|data_in|D5_in|Sel_SR|Data_out|MUX_Sel|Out[19]~75_combout\,
	combout => \ALU|data_OUT|MUX_Sel|Mux12~2_combout\);

-- Location: LCCOMB_X38_Y28_N28
\ALU|data_OUT|MUX_Sel|Mux12~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ALU|data_OUT|MUX_Sel|Mux12~0_combout\ = (\ALU|data_OUT|MUX_Sel|Mux15~3_combout\ & (((\ALU|data_OUT|MUX_Sel|Mux12~2_combout\) # (!\ALU|data_OUT|MUX_Sel|Mux15~5_combout\)))) # (!\ALU|data_OUT|MUX_Sel|Mux15~3_combout\ & 
-- (\ALU|data_in|D1_in|SLL|ShiftLeft0~10_combout\ & ((\ALU|data_OUT|MUX_Sel|Mux15~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU|data_OUT|MUX_Sel|Mux15~3_combout\,
	datab => \ALU|data_in|D1_in|SLL|ShiftLeft0~10_combout\,
	datac => \ALU|data_OUT|MUX_Sel|Mux12~2_combout\,
	datad => \ALU|data_OUT|MUX_Sel|Mux15~5_combout\,
	combout => \ALU|data_OUT|MUX_Sel|Mux12~0_combout\);

-- Location: LCCOMB_X39_Y23_N14
\ALU|data_in|D1_in|SLL|ShiftLeft0~65\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ALU|data_in|D1_in|SLL|ShiftLeft0~65_combout\ = (\operand_b[1]~input_o\ & ((\operand_a[17]~input_o\))) # (!\operand_b[1]~input_o\ & (\operand_a[19]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \operand_a[19]~input_o\,
	datac => \operand_b[1]~input_o\,
	datad => \operand_a[17]~input_o\,
	combout => \ALU|data_in|D1_in|SLL|ShiftLeft0~65_combout\);

-- Location: LCCOMB_X38_Y24_N26
\ALU|data_in|D1_in|SLL|ShiftLeft0~66\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ALU|data_in|D1_in|SLL|ShiftLeft0~66_combout\ = (\operand_b[0]~input_o\ & (\ALU|data_in|D1_in|SLL|ShiftLeft0~62_combout\)) # (!\operand_b[0]~input_o\ & ((\ALU|data_in|D1_in|SLL|ShiftLeft0~65_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ALU|data_in|D1_in|SLL|ShiftLeft0~62_combout\,
	datac => \ALU|data_in|D1_in|SLL|ShiftLeft0~65_combout\,
	datad => \operand_b[0]~input_o\,
	combout => \ALU|data_in|D1_in|SLL|ShiftLeft0~66_combout\);

-- Location: LCCOMB_X38_Y28_N26
\ALU|data_in|D1_in|SLL|ShiftLeft0~67\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ALU|data_in|D1_in|SLL|ShiftLeft0~67_combout\ = (\operand_b[2]~input_o\ & ((\ALU|data_in|D1_in|SLL|ShiftLeft0~53_combout\))) # (!\operand_b[2]~input_o\ & (\ALU|data_in|D1_in|SLL|ShiftLeft0~66_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU|data_in|D1_in|SLL|ShiftLeft0~66_combout\,
	datab => \operand_b[2]~input_o\,
	datad => \ALU|data_in|D1_in|SLL|ShiftLeft0~53_combout\,
	combout => \ALU|data_in|D1_in|SLL|ShiftLeft0~67_combout\);

-- Location: LCCOMB_X38_Y28_N6
\ALU|data_OUT|MUX_Sel|Mux12\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ALU|data_OUT|MUX_Sel|Mux12~combout\ = (\ALU|data_OUT|MUX_Sel|Mux12~0_combout\ & ((\ALU|data_in|D1_in|SLL|ShiftLeft0~40_combout\) # ((\ALU|data_OUT|MUX_Sel|Mux15~2_combout\)))) # (!\ALU|data_OUT|MUX_Sel|Mux12~0_combout\ & 
-- (((\ALU|data_in|D1_in|SLL|ShiftLeft0~67_combout\ & !\ALU|data_OUT|MUX_Sel|Mux15~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU|data_in|D1_in|SLL|ShiftLeft0~40_combout\,
	datab => \ALU|data_OUT|MUX_Sel|Mux12~0_combout\,
	datac => \ALU|data_in|D1_in|SLL|ShiftLeft0~67_combout\,
	datad => \ALU|data_OUT|MUX_Sel|Mux15~2_combout\,
	combout => \ALU|data_OUT|MUX_Sel|Mux12~combout\);

-- Location: LCCOMB_X39_Y26_N8
\ALU|data_in|D1_in|SLL|ShiftLeft0~71\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ALU|data_in|D1_in|SLL|ShiftLeft0~71_combout\ = (\ALU|data_in|D1_in|SLL|ShiftLeft0~14_combout\ & !\operand_b[3]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU|data_in|D1_in|SLL|ShiftLeft0~14_combout\,
	datad => \operand_b[3]~input_o\,
	combout => \ALU|data_in|D1_in|SLL|ShiftLeft0~71_combout\);

-- Location: LCCOMB_X41_Y27_N28
\ALU|data_in|D5_in|Sel_SR|Data_out|MUX_Sel|Out[20]~76\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ALU|data_in|D5_in|Sel_SR|Data_out|MUX_Sel|Out[20]~76_combout\ = (\ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~91_combout\ & (((\ALU|data_in|D5_in|Sel_SR|Data_out|MUX_Sel|Out[16]~92_combout\ & 
-- \ALU|data_in|D5_in|Sel_SR|Data_out|MUX_Sel|Out[5]~32_combout\)) # (!\operand_b[4]~input_o\))) # (!\ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~91_combout\ & (((\ALU|data_in|D5_in|Sel_SR|Data_out|MUX_Sel|Out[16]~92_combout\ & 
-- \ALU|data_in|D5_in|Sel_SR|Data_out|MUX_Sel|Out[5]~32_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~91_combout\,
	datab => \operand_b[4]~input_o\,
	datac => \ALU|data_in|D5_in|Sel_SR|Data_out|MUX_Sel|Out[16]~92_combout\,
	datad => \ALU|data_in|D5_in|Sel_SR|Data_out|MUX_Sel|Out[5]~32_combout\,
	combout => \ALU|data_in|D5_in|Sel_SR|Data_out|MUX_Sel|Out[20]~76_combout\);

-- Location: LCCOMB_X41_Y27_N8
\ALU|data_OUT|MUX_Sel|Mux11~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ALU|data_OUT|MUX_Sel|Mux11~1_combout\ = (\alu_op[0]~input_o\ & ((\alu_op[1]~input_o\ & (\operand_b[20]~input_o\)) # (!\alu_op[1]~input_o\ & ((\ALU|data_in|D5_in|Sel_SR|Data_out|MUX_Sel|Out[20]~76_combout\))))) # (!\alu_op[0]~input_o\ & 
-- (\operand_b[20]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \operand_b[20]~input_o\,
	datab => \ALU|data_in|D5_in|Sel_SR|Data_out|MUX_Sel|Out[20]~76_combout\,
	datac => \alu_op[0]~input_o\,
	datad => \alu_op[1]~input_o\,
	combout => \ALU|data_OUT|MUX_Sel|Mux11~1_combout\);

-- Location: LCCOMB_X41_Y27_N18
\ALU|data_OUT|MUX_Sel|Mux11~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ALU|data_OUT|MUX_Sel|Mux11~2_combout\ = (\operand_a[20]~input_o\ & ((\ALU|data_OUT|MUX_Sel|Mux11~1_combout\ & ((\alu_op[0]~input_o\) # (\alu_op[1]~input_o\))) # (!\ALU|data_OUT|MUX_Sel|Mux11~1_combout\ & (!\alu_op[0]~input_o\)))) # 
-- (!\operand_a[20]~input_o\ & (\ALU|data_OUT|MUX_Sel|Mux11~1_combout\ & ((!\alu_op[1]~input_o\) # (!\alu_op[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111011000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \operand_a[20]~input_o\,
	datab => \ALU|data_OUT|MUX_Sel|Mux11~1_combout\,
	datac => \alu_op[0]~input_o\,
	datad => \alu_op[1]~input_o\,
	combout => \ALU|data_OUT|MUX_Sel|Mux11~2_combout\);

-- Location: LCCOMB_X39_Y26_N18
\ALU|data_OUT|MUX_Sel|Mux11~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ALU|data_OUT|MUX_Sel|Mux11~0_combout\ = (\ALU|data_OUT|MUX_Sel|Mux15~5_combout\ & ((\ALU|data_OUT|MUX_Sel|Mux15~3_combout\ & ((\ALU|data_OUT|MUX_Sel|Mux11~2_combout\))) # (!\ALU|data_OUT|MUX_Sel|Mux15~3_combout\ & 
-- (\ALU|data_in|D1_in|SLL|ShiftLeft0~71_combout\)))) # (!\ALU|data_OUT|MUX_Sel|Mux15~5_combout\ & (((\ALU|data_OUT|MUX_Sel|Mux15~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU|data_OUT|MUX_Sel|Mux15~5_combout\,
	datab => \ALU|data_in|D1_in|SLL|ShiftLeft0~71_combout\,
	datac => \ALU|data_OUT|MUX_Sel|Mux15~3_combout\,
	datad => \ALU|data_OUT|MUX_Sel|Mux11~2_combout\,
	combout => \ALU|data_OUT|MUX_Sel|Mux11~0_combout\);

-- Location: LCCOMB_X38_Y24_N20
\ALU|data_in|D1_in|SLL|ShiftLeft0~68\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ALU|data_in|D1_in|SLL|ShiftLeft0~68_combout\ = (\operand_b[1]~input_o\ & (\operand_a[18]~input_o\)) # (!\operand_b[1]~input_o\ & ((\operand_a[20]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \operand_b[1]~input_o\,
	datab => \operand_a[18]~input_o\,
	datac => \operand_a[20]~input_o\,
	combout => \ALU|data_in|D1_in|SLL|ShiftLeft0~68_combout\);

-- Location: LCCOMB_X38_Y24_N22
\ALU|data_in|D1_in|SLL|ShiftLeft0~69\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ALU|data_in|D1_in|SLL|ShiftLeft0~69_combout\ = (\operand_b[0]~input_o\ & ((\ALU|data_in|D1_in|SLL|ShiftLeft0~65_combout\))) # (!\operand_b[0]~input_o\ & (\ALU|data_in|D1_in|SLL|ShiftLeft0~68_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ALU|data_in|D1_in|SLL|ShiftLeft0~68_combout\,
	datac => \ALU|data_in|D1_in|SLL|ShiftLeft0~65_combout\,
	datad => \operand_b[0]~input_o\,
	combout => \ALU|data_in|D1_in|SLL|ShiftLeft0~69_combout\);

-- Location: LCCOMB_X39_Y26_N14
\ALU|data_in|D1_in|SLL|ShiftLeft0~70\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ALU|data_in|D1_in|SLL|ShiftLeft0~70_combout\ = (\operand_b[2]~input_o\ & ((\ALU|data_in|D1_in|SLL|ShiftLeft0~57_combout\))) # (!\operand_b[2]~input_o\ & (\ALU|data_in|D1_in|SLL|ShiftLeft0~69_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \operand_b[2]~input_o\,
	datac => \ALU|data_in|D1_in|SLL|ShiftLeft0~69_combout\,
	datad => \ALU|data_in|D1_in|SLL|ShiftLeft0~57_combout\,
	combout => \ALU|data_in|D1_in|SLL|ShiftLeft0~70_combout\);

-- Location: LCCOMB_X39_Y26_N4
\ALU|data_OUT|MUX_Sel|Mux11\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ALU|data_OUT|MUX_Sel|Mux11~combout\ = (\ALU|data_OUT|MUX_Sel|Mux11~0_combout\ & ((\ALU|data_in|D1_in|SLL|ShiftLeft0~44_combout\) # ((\ALU|data_OUT|MUX_Sel|Mux15~2_combout\)))) # (!\ALU|data_OUT|MUX_Sel|Mux11~0_combout\ & 
-- (((\ALU|data_in|D1_in|SLL|ShiftLeft0~70_combout\ & !\ALU|data_OUT|MUX_Sel|Mux15~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU|data_in|D1_in|SLL|ShiftLeft0~44_combout\,
	datab => \ALU|data_OUT|MUX_Sel|Mux11~0_combout\,
	datac => \ALU|data_in|D1_in|SLL|ShiftLeft0~70_combout\,
	datad => \ALU|data_OUT|MUX_Sel|Mux15~2_combout\,
	combout => \ALU|data_OUT|MUX_Sel|Mux11~combout\);

-- Location: LCCOMB_X37_Y27_N20
\ALU|data_in|D1_in|SLL|ShiftLeft0~75\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ALU|data_in|D1_in|SLL|ShiftLeft0~75_combout\ = (\ALU|data_in|D1_in|SLL|ShiftLeft0~17_combout\ & !\operand_b[3]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ALU|data_in|D1_in|SLL|ShiftLeft0~17_combout\,
	datac => \operand_b[3]~input_o\,
	combout => \ALU|data_in|D1_in|SLL|ShiftLeft0~75_combout\);

-- Location: LCCOMB_X41_Y27_N12
\ALU|data_OUT|MUX_Sel|Mux10~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ALU|data_OUT|MUX_Sel|Mux10~1_combout\ = (\alu_op[0]~input_o\ & (((\operand_a[21]~input_o\ & \operand_b[21]~input_o\)) # (!\alu_op[1]~input_o\))) # (!\alu_op[0]~input_o\ & ((\operand_a[21]~input_o\ & ((\alu_op[1]~input_o\) # (!\operand_b[21]~input_o\))) # 
-- (!\operand_a[21]~input_o\ & (\operand_b[21]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111011110110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \operand_a[21]~input_o\,
	datab => \operand_b[21]~input_o\,
	datac => \alu_op[0]~input_o\,
	datad => \alu_op[1]~input_o\,
	combout => \ALU|data_OUT|MUX_Sel|Mux10~1_combout\);

-- Location: LCCOMB_X37_Y26_N12
\ALU|data_in|D5_in|Sel_SR|Data_out|MUX_Sel|Out[21]~77\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ALU|data_in|D5_in|Sel_SR|Data_out|MUX_Sel|Out[21]~77_combout\ = (\ALU|data_in|D5_in|Sel_SR|Data_out|MUX_Sel|Out[5]~32_combout\ & ((\ALU|data_in|D5_in|Sel_SR|Data_out|MUX_Sel|Out[17]~93_combout\) # 
-- ((\ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~96_combout\ & !\operand_b[4]~input_o\)))) # (!\ALU|data_in|D5_in|Sel_SR|Data_out|MUX_Sel|Out[5]~32_combout\ & (((\ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~96_combout\ & 
-- !\operand_b[4]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU|data_in|D5_in|Sel_SR|Data_out|MUX_Sel|Out[5]~32_combout\,
	datab => \ALU|data_in|D5_in|Sel_SR|Data_out|MUX_Sel|Out[17]~93_combout\,
	datac => \ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~96_combout\,
	datad => \operand_b[4]~input_o\,
	combout => \ALU|data_in|D5_in|Sel_SR|Data_out|MUX_Sel|Out[21]~77_combout\);

-- Location: LCCOMB_X41_Y27_N30
\ALU|data_OUT|MUX_Sel|Mux10~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ALU|data_OUT|MUX_Sel|Mux10~2_combout\ = (\ALU|data_OUT|MUX_Sel|Mux10~1_combout\ & ((\ALU|data_in|D5_in|Sel_SR|Data_out|MUX_Sel|Out[21]~77_combout\) # ((\alu_op[1]~input_o\) # (!\alu_op[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU|data_OUT|MUX_Sel|Mux10~1_combout\,
	datab => \ALU|data_in|D5_in|Sel_SR|Data_out|MUX_Sel|Out[21]~77_combout\,
	datac => \alu_op[0]~input_o\,
	datad => \alu_op[1]~input_o\,
	combout => \ALU|data_OUT|MUX_Sel|Mux10~2_combout\);

-- Location: LCCOMB_X38_Y27_N26
\ALU|data_OUT|MUX_Sel|Mux10~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ALU|data_OUT|MUX_Sel|Mux10~0_combout\ = (\ALU|data_OUT|MUX_Sel|Mux15~3_combout\ & (((\ALU|data_OUT|MUX_Sel|Mux10~2_combout\) # (!\ALU|data_OUT|MUX_Sel|Mux15~5_combout\)))) # (!\ALU|data_OUT|MUX_Sel|Mux15~3_combout\ & 
-- (\ALU|data_in|D1_in|SLL|ShiftLeft0~75_combout\ & (\ALU|data_OUT|MUX_Sel|Mux15~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU|data_OUT|MUX_Sel|Mux15~3_combout\,
	datab => \ALU|data_in|D1_in|SLL|ShiftLeft0~75_combout\,
	datac => \ALU|data_OUT|MUX_Sel|Mux15~5_combout\,
	datad => \ALU|data_OUT|MUX_Sel|Mux10~2_combout\,
	combout => \ALU|data_OUT|MUX_Sel|Mux10~0_combout\);

-- Location: LCCOMB_X39_Y24_N6
\ALU|data_in|D1_in|SLL|ShiftLeft0~72\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ALU|data_in|D1_in|SLL|ShiftLeft0~72_combout\ = (\operand_b[1]~input_o\ & ((\operand_a[19]~input_o\))) # (!\operand_b[1]~input_o\ & (\operand_a[21]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \operand_a[21]~input_o\,
	datac => \operand_b[1]~input_o\,
	datad => \operand_a[19]~input_o\,
	combout => \ALU|data_in|D1_in|SLL|ShiftLeft0~72_combout\);

-- Location: LCCOMB_X38_Y24_N16
\ALU|data_in|D1_in|SLL|ShiftLeft0~73\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ALU|data_in|D1_in|SLL|ShiftLeft0~73_combout\ = (\operand_b[0]~input_o\ & ((\ALU|data_in|D1_in|SLL|ShiftLeft0~68_combout\))) # (!\operand_b[0]~input_o\ & (\ALU|data_in|D1_in|SLL|ShiftLeft0~72_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU|data_in|D1_in|SLL|ShiftLeft0~72_combout\,
	datab => \ALU|data_in|D1_in|SLL|ShiftLeft0~68_combout\,
	datad => \operand_b[0]~input_o\,
	combout => \ALU|data_in|D1_in|SLL|ShiftLeft0~73_combout\);

-- Location: LCCOMB_X38_Y27_N0
\ALU|data_in|D1_in|SLL|ShiftLeft0~74\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ALU|data_in|D1_in|SLL|ShiftLeft0~74_combout\ = (\operand_b[2]~input_o\ & (\ALU|data_in|D1_in|SLL|ShiftLeft0~60_combout\)) # (!\operand_b[2]~input_o\ & ((\ALU|data_in|D1_in|SLL|ShiftLeft0~73_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU|data_in|D1_in|SLL|ShiftLeft0~60_combout\,
	datab => \operand_b[2]~input_o\,
	datad => \ALU|data_in|D1_in|SLL|ShiftLeft0~73_combout\,
	combout => \ALU|data_in|D1_in|SLL|ShiftLeft0~74_combout\);

-- Location: LCCOMB_X38_Y27_N4
\ALU|data_OUT|MUX_Sel|Mux10\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ALU|data_OUT|MUX_Sel|Mux10~combout\ = (\ALU|data_OUT|MUX_Sel|Mux10~0_combout\ & ((\ALU|data_OUT|MUX_Sel|Mux15~2_combout\) # ((\ALU|data_in|D1_in|SLL|ShiftLeft0~47_combout\)))) # (!\ALU|data_OUT|MUX_Sel|Mux10~0_combout\ & 
-- (!\ALU|data_OUT|MUX_Sel|Mux15~2_combout\ & ((\ALU|data_in|D1_in|SLL|ShiftLeft0~74_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU|data_OUT|MUX_Sel|Mux10~0_combout\,
	datab => \ALU|data_OUT|MUX_Sel|Mux15~2_combout\,
	datac => \ALU|data_in|D1_in|SLL|ShiftLeft0~47_combout\,
	datad => \ALU|data_in|D1_in|SLL|ShiftLeft0~74_combout\,
	combout => \ALU|data_OUT|MUX_Sel|Mux10~combout\);

-- Location: LCCOMB_X37_Y25_N10
\ALU|data_in|D1_in|SLL|ShiftLeft0~79\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ALU|data_in|D1_in|SLL|ShiftLeft0~79_combout\ = (!\operand_b[3]~input_o\ & ((\operand_b[2]~input_o\ & (\ALU|data_in|D1_in|SLL|ShiftLeft0~8_combout\)) # (!\operand_b[2]~input_o\ & ((\ALU|data_in|D1_in|SLL|ShiftLeft0~19_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU|data_in|D1_in|SLL|ShiftLeft0~8_combout\,
	datab => \operand_b[2]~input_o\,
	datac => \ALU|data_in|D1_in|SLL|ShiftLeft0~19_combout\,
	datad => \operand_b[3]~input_o\,
	combout => \ALU|data_in|D1_in|SLL|ShiftLeft0~79_combout\);

-- Location: LCCOMB_X36_Y27_N14
\ALU|data_in|D5_in|Sel_SR|Data_out|MUX_Sel|Out[22]~94\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ALU|data_in|D5_in|Sel_SR|Data_out|MUX_Sel|Out[22]~94_combout\ = (\ALU|data_in|D5_in|Sel_SR|SRA_out|SRA1|Add1~0_combout\ & (\ALU|data_in|D5_in|Sel_SR|Data_out|MUX_Sel|Out[0]~16_combout\ & (\operand_b[1]~input_o\ $ (\operand_b[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU|data_in|D5_in|Sel_SR|SRA_out|SRA1|Add1~0_combout\,
	datab => \ALU|data_in|D5_in|Sel_SR|Data_out|MUX_Sel|Out[0]~16_combout\,
	datac => \operand_b[1]~input_o\,
	datad => \operand_b[0]~input_o\,
	combout => \ALU|data_in|D5_in|Sel_SR|Data_out|MUX_Sel|Out[22]~94_combout\);

-- Location: LCCOMB_X36_Y27_N2
\ALU|data_in|D5_in|Sel_SR|Data_out|MUX_Sel|Out[22]~78\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ALU|data_in|D5_in|Sel_SR|Data_out|MUX_Sel|Out[22]~78_combout\ = (\ALU|data_in|D5_in|Sel_SR|Data_out|MUX_Sel|Out[5]~32_combout\ & ((\ALU|data_in|D5_in|Sel_SR|Data_out|MUX_Sel|Out[22]~94_combout\) # 
-- ((\ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~101_combout\ & !\operand_b[4]~input_o\)))) # (!\ALU|data_in|D5_in|Sel_SR|Data_out|MUX_Sel|Out[5]~32_combout\ & (((\ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~101_combout\ & 
-- !\operand_b[4]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU|data_in|D5_in|Sel_SR|Data_out|MUX_Sel|Out[5]~32_combout\,
	datab => \ALU|data_in|D5_in|Sel_SR|Data_out|MUX_Sel|Out[22]~94_combout\,
	datac => \ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~101_combout\,
	datad => \operand_b[4]~input_o\,
	combout => \ALU|data_in|D5_in|Sel_SR|Data_out|MUX_Sel|Out[22]~78_combout\);

-- Location: LCCOMB_X38_Y25_N18
\ALU|data_OUT|MUX_Sel|Mux9~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ALU|data_OUT|MUX_Sel|Mux9~1_combout\ = (\alu_op[1]~input_o\ & (\operand_b[22]~input_o\)) # (!\alu_op[1]~input_o\ & ((\alu_op[0]~input_o\ & ((\ALU|data_in|D5_in|Sel_SR|Data_out|MUX_Sel|Out[22]~78_combout\))) # (!\alu_op[0]~input_o\ & 
-- (\operand_b[22]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu_op[1]~input_o\,
	datab => \operand_b[22]~input_o\,
	datac => \alu_op[0]~input_o\,
	datad => \ALU|data_in|D5_in|Sel_SR|Data_out|MUX_Sel|Out[22]~78_combout\,
	combout => \ALU|data_OUT|MUX_Sel|Mux9~1_combout\);

-- Location: LCCOMB_X38_Y25_N12
\ALU|data_OUT|MUX_Sel|Mux9~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ALU|data_OUT|MUX_Sel|Mux9~2_combout\ = (\operand_a[22]~input_o\ & ((\alu_op[0]~input_o\ & ((\ALU|data_OUT|MUX_Sel|Mux9~1_combout\))) # (!\alu_op[0]~input_o\ & ((\alu_op[1]~input_o\) # (!\ALU|data_OUT|MUX_Sel|Mux9~1_combout\))))) # 
-- (!\operand_a[22]~input_o\ & (\ALU|data_OUT|MUX_Sel|Mux9~1_combout\ & ((!\alu_op[0]~input_o\) # (!\alu_op[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101100001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu_op[1]~input_o\,
	datab => \operand_a[22]~input_o\,
	datac => \alu_op[0]~input_o\,
	datad => \ALU|data_OUT|MUX_Sel|Mux9~1_combout\,
	combout => \ALU|data_OUT|MUX_Sel|Mux9~2_combout\);

-- Location: LCCOMB_X37_Y25_N12
\ALU|data_OUT|MUX_Sel|Mux9~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ALU|data_OUT|MUX_Sel|Mux9~0_combout\ = (\ALU|data_OUT|MUX_Sel|Mux15~3_combout\ & (((\ALU|data_OUT|MUX_Sel|Mux9~2_combout\) # (!\ALU|data_OUT|MUX_Sel|Mux15~5_combout\)))) # (!\ALU|data_OUT|MUX_Sel|Mux15~3_combout\ & 
-- (\ALU|data_in|D1_in|SLL|ShiftLeft0~79_combout\ & ((\ALU|data_OUT|MUX_Sel|Mux15~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU|data_in|D1_in|SLL|ShiftLeft0~79_combout\,
	datab => \ALU|data_OUT|MUX_Sel|Mux9~2_combout\,
	datac => \ALU|data_OUT|MUX_Sel|Mux15~3_combout\,
	datad => \ALU|data_OUT|MUX_Sel|Mux15~5_combout\,
	combout => \ALU|data_OUT|MUX_Sel|Mux9~0_combout\);

-- Location: LCCOMB_X38_Y24_N18
\ALU|data_in|D1_in|SLL|ShiftLeft0~76\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ALU|data_in|D1_in|SLL|ShiftLeft0~76_combout\ = (\operand_b[1]~input_o\ & (\operand_a[20]~input_o\)) # (!\operand_b[1]~input_o\ & ((\operand_a[22]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \operand_b[1]~input_o\,
	datac => \operand_a[20]~input_o\,
	datad => \operand_a[22]~input_o\,
	combout => \ALU|data_in|D1_in|SLL|ShiftLeft0~76_combout\);

-- Location: LCCOMB_X38_Y24_N12
\ALU|data_in|D1_in|SLL|ShiftLeft0~77\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ALU|data_in|D1_in|SLL|ShiftLeft0~77_combout\ = (\operand_b[0]~input_o\ & (\ALU|data_in|D1_in|SLL|ShiftLeft0~72_combout\)) # (!\operand_b[0]~input_o\ & ((\ALU|data_in|D1_in|SLL|ShiftLeft0~76_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU|data_in|D1_in|SLL|ShiftLeft0~72_combout\,
	datab => \ALU|data_in|D1_in|SLL|ShiftLeft0~76_combout\,
	datad => \operand_b[0]~input_o\,
	combout => \ALU|data_in|D1_in|SLL|ShiftLeft0~77_combout\);

-- Location: LCCOMB_X37_Y25_N8
\ALU|data_in|D1_in|SLL|ShiftLeft0~78\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ALU|data_in|D1_in|SLL|ShiftLeft0~78_combout\ = (\operand_b[2]~input_o\ & (\ALU|data_in|D1_in|SLL|ShiftLeft0~63_combout\)) # (!\operand_b[2]~input_o\ & ((\ALU|data_in|D1_in|SLL|ShiftLeft0~77_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \operand_b[2]~input_o\,
	datac => \ALU|data_in|D1_in|SLL|ShiftLeft0~63_combout\,
	datad => \ALU|data_in|D1_in|SLL|ShiftLeft0~77_combout\,
	combout => \ALU|data_in|D1_in|SLL|ShiftLeft0~78_combout\);

-- Location: LCCOMB_X37_Y25_N22
\ALU|data_OUT|MUX_Sel|Mux9\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ALU|data_OUT|MUX_Sel|Mux9~combout\ = (\ALU|data_OUT|MUX_Sel|Mux9~0_combout\ & ((\ALU|data_in|D1_in|SLL|ShiftLeft0~50_combout\) # ((\ALU|data_OUT|MUX_Sel|Mux15~2_combout\)))) # (!\ALU|data_OUT|MUX_Sel|Mux9~0_combout\ & 
-- (((\ALU|data_in|D1_in|SLL|ShiftLeft0~78_combout\ & !\ALU|data_OUT|MUX_Sel|Mux15~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU|data_OUT|MUX_Sel|Mux9~0_combout\,
	datab => \ALU|data_in|D1_in|SLL|ShiftLeft0~50_combout\,
	datac => \ALU|data_in|D1_in|SLL|ShiftLeft0~78_combout\,
	datad => \ALU|data_OUT|MUX_Sel|Mux15~2_combout\,
	combout => \ALU|data_OUT|MUX_Sel|Mux9~combout\);

-- Location: LCCOMB_X38_Y28_N18
\ALU|data_in|D1_in|SLL|ShiftLeft0~83\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ALU|data_in|D1_in|SLL|ShiftLeft0~83_combout\ = (!\operand_b[3]~input_o\ & ((\operand_b[2]~input_o\ & ((\ALU|data_in|D1_in|SLL|ShiftLeft0~21_combout\))) # (!\operand_b[2]~input_o\ & (\ALU|data_in|D1_in|SLL|ShiftLeft0~23_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \operand_b[3]~input_o\,
	datab => \operand_b[2]~input_o\,
	datac => \ALU|data_in|D1_in|SLL|ShiftLeft0~23_combout\,
	datad => \ALU|data_in|D1_in|SLL|ShiftLeft0~21_combout\,
	combout => \ALU|data_in|D1_in|SLL|ShiftLeft0~83_combout\);

-- Location: LCCOMB_X36_Y24_N14
\ALU|data_in|D5_in|Sel_SR|Data_out|MUX_Sel|Out[23]~95\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ALU|data_in|D5_in|Sel_SR|Data_out|MUX_Sel|Out[23]~95_combout\ = (\ALU|data_in|D5_in|Sel_SR|SRA_out|SRA1|Add1~0_combout\ & (\ALU|data_in|D5_in|Sel_SR|Data_out|MUX_Sel|Out[3]~22_combout\ & (\operand_b[1]~input_o\ $ (\operand_b[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \operand_b[1]~input_o\,
	datab => \ALU|data_in|D5_in|Sel_SR|SRA_out|SRA1|Add1~0_combout\,
	datac => \operand_b[0]~input_o\,
	datad => \ALU|data_in|D5_in|Sel_SR|Data_out|MUX_Sel|Out[3]~22_combout\,
	combout => \ALU|data_in|D5_in|Sel_SR|Data_out|MUX_Sel|Out[23]~95_combout\);

-- Location: LCCOMB_X41_Y27_N6
\ALU|data_in|D5_in|Sel_SR|Data_out|MUX_Sel|Out[23]~79\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ALU|data_in|D5_in|Sel_SR|Data_out|MUX_Sel|Out[23]~79_combout\ = (\ALU|data_in|D5_in|Sel_SR|Data_out|MUX_Sel|Out[23]~95_combout\ & ((\ALU|data_in|D5_in|Sel_SR|Data_out|MUX_Sel|Out[5]~32_combout\) # 
-- ((\ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~106_combout\ & !\operand_b[4]~input_o\)))) # (!\ALU|data_in|D5_in|Sel_SR|Data_out|MUX_Sel|Out[23]~95_combout\ & (((\ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~106_combout\ & 
-- !\operand_b[4]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU|data_in|D5_in|Sel_SR|Data_out|MUX_Sel|Out[23]~95_combout\,
	datab => \ALU|data_in|D5_in|Sel_SR|Data_out|MUX_Sel|Out[5]~32_combout\,
	datac => \ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~106_combout\,
	datad => \operand_b[4]~input_o\,
	combout => \ALU|data_in|D5_in|Sel_SR|Data_out|MUX_Sel|Out[23]~79_combout\);

-- Location: LCCOMB_X41_Y27_N0
\ALU|data_OUT|MUX_Sel|Mux8~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ALU|data_OUT|MUX_Sel|Mux8~1_combout\ = (\alu_op[0]~input_o\ & (((\operand_b[23]~input_o\ & \operand_a[23]~input_o\)) # (!\alu_op[1]~input_o\))) # (!\alu_op[0]~input_o\ & ((\operand_b[23]~input_o\ & ((\alu_op[1]~input_o\) # (!\operand_a[23]~input_o\))) # 
-- (!\operand_b[23]~input_o\ & (\operand_a[23]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111011110110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \operand_b[23]~input_o\,
	datab => \operand_a[23]~input_o\,
	datac => \alu_op[0]~input_o\,
	datad => \alu_op[1]~input_o\,
	combout => \ALU|data_OUT|MUX_Sel|Mux8~1_combout\);

-- Location: LCCOMB_X41_Y27_N2
\ALU|data_OUT|MUX_Sel|Mux8~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ALU|data_OUT|MUX_Sel|Mux8~2_combout\ = (\ALU|data_OUT|MUX_Sel|Mux8~1_combout\ & ((\ALU|data_in|D5_in|Sel_SR|Data_out|MUX_Sel|Out[23]~79_combout\) # ((\alu_op[1]~input_o\) # (!\alu_op[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU|data_in|D5_in|Sel_SR|Data_out|MUX_Sel|Out[23]~79_combout\,
	datab => \ALU|data_OUT|MUX_Sel|Mux8~1_combout\,
	datac => \alu_op[0]~input_o\,
	datad => \alu_op[1]~input_o\,
	combout => \ALU|data_OUT|MUX_Sel|Mux8~2_combout\);

-- Location: LCCOMB_X38_Y28_N12
\ALU|data_OUT|MUX_Sel|Mux8~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ALU|data_OUT|MUX_Sel|Mux8~0_combout\ = (\ALU|data_OUT|MUX_Sel|Mux15~3_combout\ & (((\ALU|data_OUT|MUX_Sel|Mux8~2_combout\) # (!\ALU|data_OUT|MUX_Sel|Mux15~5_combout\)))) # (!\ALU|data_OUT|MUX_Sel|Mux15~3_combout\ & 
-- (\ALU|data_in|D1_in|SLL|ShiftLeft0~83_combout\ & ((\ALU|data_OUT|MUX_Sel|Mux15~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU|data_OUT|MUX_Sel|Mux15~3_combout\,
	datab => \ALU|data_in|D1_in|SLL|ShiftLeft0~83_combout\,
	datac => \ALU|data_OUT|MUX_Sel|Mux8~2_combout\,
	datad => \ALU|data_OUT|MUX_Sel|Mux15~5_combout\,
	combout => \ALU|data_OUT|MUX_Sel|Mux8~0_combout\);

-- Location: LCCOMB_X39_Y24_N0
\ALU|data_in|D1_in|SLL|ShiftLeft0~80\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ALU|data_in|D1_in|SLL|ShiftLeft0~80_combout\ = (\operand_b[1]~input_o\ & (\operand_a[21]~input_o\)) # (!\operand_b[1]~input_o\ & ((\operand_a[23]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \operand_a[21]~input_o\,
	datac => \operand_b[1]~input_o\,
	datad => \operand_a[23]~input_o\,
	combout => \ALU|data_in|D1_in|SLL|ShiftLeft0~80_combout\);

-- Location: LCCOMB_X38_Y24_N30
\ALU|data_in|D1_in|SLL|ShiftLeft0~81\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ALU|data_in|D1_in|SLL|ShiftLeft0~81_combout\ = (\operand_b[0]~input_o\ & (\ALU|data_in|D1_in|SLL|ShiftLeft0~76_combout\)) # (!\operand_b[0]~input_o\ & ((\ALU|data_in|D1_in|SLL|ShiftLeft0~80_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ALU|data_in|D1_in|SLL|ShiftLeft0~76_combout\,
	datac => \ALU|data_in|D1_in|SLL|ShiftLeft0~80_combout\,
	datad => \operand_b[0]~input_o\,
	combout => \ALU|data_in|D1_in|SLL|ShiftLeft0~81_combout\);

-- Location: LCCOMB_X38_Y28_N0
\ALU|data_in|D1_in|SLL|ShiftLeft0~82\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ALU|data_in|D1_in|SLL|ShiftLeft0~82_combout\ = (\operand_b[2]~input_o\ & ((\ALU|data_in|D1_in|SLL|ShiftLeft0~66_combout\))) # (!\operand_b[2]~input_o\ & (\ALU|data_in|D1_in|SLL|ShiftLeft0~81_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU|data_in|D1_in|SLL|ShiftLeft0~81_combout\,
	datab => \operand_b[2]~input_o\,
	datac => \ALU|data_in|D1_in|SLL|ShiftLeft0~66_combout\,
	combout => \ALU|data_in|D1_in|SLL|ShiftLeft0~82_combout\);

-- Location: LCCOMB_X38_Y28_N14
\ALU|data_OUT|MUX_Sel|Mux8\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ALU|data_OUT|MUX_Sel|Mux8~combout\ = (\ALU|data_OUT|MUX_Sel|Mux8~0_combout\ & (((\ALU|data_in|D1_in|SLL|ShiftLeft0~54_combout\) # (\ALU|data_OUT|MUX_Sel|Mux15~2_combout\)))) # (!\ALU|data_OUT|MUX_Sel|Mux8~0_combout\ & 
-- (\ALU|data_in|D1_in|SLL|ShiftLeft0~82_combout\ & ((!\ALU|data_OUT|MUX_Sel|Mux15~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU|data_OUT|MUX_Sel|Mux8~0_combout\,
	datab => \ALU|data_in|D1_in|SLL|ShiftLeft0~82_combout\,
	datac => \ALU|data_in|D1_in|SLL|ShiftLeft0~54_combout\,
	datad => \ALU|data_OUT|MUX_Sel|Mux15~2_combout\,
	combout => \ALU|data_OUT|MUX_Sel|Mux8~combout\);

-- Location: LCCOMB_X36_Y26_N20
\ALU|data_in|D5_in|Sel_SR|Data_out|MUX_Sel|Out[24]~80\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ALU|data_in|D5_in|Sel_SR|Data_out|MUX_Sel|Out[24]~80_combout\ = (\ALU|data_in|D5_in|Sel_SR|Data_out|MUX_Sel|Out[9]~38_combout\ & ((\ALU|data_in|D5_in|Sel_SR|Data_out|MUX_Sel|Out[16]~92_combout\) # 
-- ((\ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~23_combout\ & \ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~33_combout\)))) # (!\ALU|data_in|D5_in|Sel_SR|Data_out|MUX_Sel|Out[9]~38_combout\ & 
-- (((\ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~23_combout\ & \ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~33_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU|data_in|D5_in|Sel_SR|Data_out|MUX_Sel|Out[9]~38_combout\,
	datab => \ALU|data_in|D5_in|Sel_SR|Data_out|MUX_Sel|Out[16]~92_combout\,
	datac => \ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~23_combout\,
	datad => \ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~33_combout\,
	combout => \ALU|data_in|D5_in|Sel_SR|Data_out|MUX_Sel|Out[24]~80_combout\);

-- Location: LCCOMB_X41_Y26_N2
\ALU|data_OUT|MUX_Sel|Mux7~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ALU|data_OUT|MUX_Sel|Mux7~3_combout\ = (\alu_op[1]~input_o\ & (((\operand_b[24]~input_o\)))) # (!\alu_op[1]~input_o\ & ((\alu_op[0]~input_o\ & (\ALU|data_in|D5_in|Sel_SR|Data_out|MUX_Sel|Out[24]~80_combout\)) # (!\alu_op[0]~input_o\ & 
-- ((\operand_b[24]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU|data_in|D5_in|Sel_SR|Data_out|MUX_Sel|Out[24]~80_combout\,
	datab => \alu_op[1]~input_o\,
	datac => \alu_op[0]~input_o\,
	datad => \operand_b[24]~input_o\,
	combout => \ALU|data_OUT|MUX_Sel|Mux7~3_combout\);

-- Location: LCCOMB_X41_Y26_N12
\ALU|data_OUT|MUX_Sel|Mux7~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ALU|data_OUT|MUX_Sel|Mux7~4_combout\ = (\alu_op[0]~input_o\ & (\ALU|data_OUT|MUX_Sel|Mux7~3_combout\ & ((\operand_a[24]~input_o\) # (!\alu_op[1]~input_o\)))) # (!\alu_op[0]~input_o\ & ((\ALU|data_OUT|MUX_Sel|Mux7~3_combout\ & ((\alu_op[1]~input_o\) # 
-- (!\operand_a[24]~input_o\))) # (!\ALU|data_OUT|MUX_Sel|Mux7~3_combout\ & ((\operand_a[24]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100101001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu_op[0]~input_o\,
	datab => \ALU|data_OUT|MUX_Sel|Mux7~3_combout\,
	datac => \alu_op[1]~input_o\,
	datad => \operand_a[24]~input_o\,
	combout => \ALU|data_OUT|MUX_Sel|Mux7~4_combout\);

-- Location: LCCOMB_X39_Y24_N18
\ALU|data_in|D1_in|SLL|ShiftLeft0~84\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ALU|data_in|D1_in|SLL|ShiftLeft0~84_combout\ = (\operand_b[1]~input_o\ & (\operand_a[22]~input_o\)) # (!\operand_b[1]~input_o\ & ((\operand_a[24]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \operand_a[22]~input_o\,
	datac => \operand_b[1]~input_o\,
	datad => \operand_a[24]~input_o\,
	combout => \ALU|data_in|D1_in|SLL|ShiftLeft0~84_combout\);

-- Location: LCCOMB_X39_Y24_N4
\ALU|data_in|D1_in|SLL|ShiftLeft0~85\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ALU|data_in|D1_in|SLL|ShiftLeft0~85_combout\ = (\operand_b[0]~input_o\ & ((\ALU|data_in|D1_in|SLL|ShiftLeft0~80_combout\))) # (!\operand_b[0]~input_o\ & (\ALU|data_in|D1_in|SLL|ShiftLeft0~84_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ALU|data_in|D1_in|SLL|ShiftLeft0~84_combout\,
	datac => \operand_b[0]~input_o\,
	datad => \ALU|data_in|D1_in|SLL|ShiftLeft0~80_combout\,
	combout => \ALU|data_in|D1_in|SLL|ShiftLeft0~85_combout\);

-- Location: LCCOMB_X39_Y26_N22
\ALU|data_OUT|MUX_Sel|Mux7~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ALU|data_OUT|MUX_Sel|Mux7~0_combout\ = (\ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~87_combout\ & (((\ALU|data_in|D1_in|SLL|ShiftLeft0~69_combout\) # (!\ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~33_combout\)))) # 
-- (!\ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~87_combout\ & (\ALU|data_in|D1_in|SLL|ShiftLeft0~85_combout\ & ((\ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~33_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU|data_in|D1_in|SLL|ShiftLeft0~85_combout\,
	datab => \ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~87_combout\,
	datac => \ALU|data_in|D1_in|SLL|ShiftLeft0~69_combout\,
	datad => \ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~33_combout\,
	combout => \ALU|data_OUT|MUX_Sel|Mux7~0_combout\);

-- Location: LCCOMB_X39_Y26_N0
\ALU|data_OUT|MUX_Sel|Mux7~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ALU|data_OUT|MUX_Sel|Mux7~1_combout\ = (\ALU|data_OUT|MUX_Sel|Mux7~0_combout\ & ((\ALU|data_in|D1_in|SLL|ShiftLeft0~29_combout\) # ((\ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~33_combout\)))) # (!\ALU|data_OUT|MUX_Sel|Mux7~0_combout\ & 
-- (((\ALU|data_in|D1_in|SLL|ShiftLeft0~58_combout\ & !\ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~33_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU|data_in|D1_in|SLL|ShiftLeft0~29_combout\,
	datab => \ALU|data_in|D1_in|SLL|ShiftLeft0~58_combout\,
	datac => \ALU|data_OUT|MUX_Sel|Mux7~0_combout\,
	datad => \ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~33_combout\,
	combout => \ALU|data_OUT|MUX_Sel|Mux7~1_combout\);

-- Location: LCCOMB_X41_Y26_N10
\ALU|data_OUT|MUX_Sel|Mux7~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ALU|data_OUT|MUX_Sel|Mux7~2_combout\ = (\alu_op[2]~input_o\ & (\ALU|data_OUT|MUX_Sel|Mux7~4_combout\)) # (!\alu_op[2]~input_o\ & (((\ALU|data_OUT|MUX_Sel|Mux26~0_combout\ & \ALU|data_OUT|MUX_Sel|Mux7~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU|data_OUT|MUX_Sel|Mux7~4_combout\,
	datab => \ALU|data_OUT|MUX_Sel|Mux26~0_combout\,
	datac => \ALU|data_OUT|MUX_Sel|Mux7~1_combout\,
	datad => \alu_op[2]~input_o\,
	combout => \ALU|data_OUT|MUX_Sel|Mux7~2_combout\);

-- Location: LCCOMB_X39_Y24_N30
\ALU|data_in|D1_in|SLL|ShiftLeft0~86\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ALU|data_in|D1_in|SLL|ShiftLeft0~86_combout\ = (!\operand_b[0]~input_o\ & ((\operand_b[1]~input_o\ & ((\operand_a[23]~input_o\))) # (!\operand_b[1]~input_o\ & (\operand_a[25]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \operand_a[25]~input_o\,
	datab => \operand_b[1]~input_o\,
	datac => \operand_b[0]~input_o\,
	datad => \operand_a[23]~input_o\,
	combout => \ALU|data_in|D1_in|SLL|ShiftLeft0~86_combout\);

-- Location: LCCOMB_X39_Y24_N16
\ALU|data_in|D1_in|SLL|ShiftLeft0~87\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ALU|data_in|D1_in|SLL|ShiftLeft0~87_combout\ = (\ALU|data_in|D1_in|SLL|ShiftLeft0~86_combout\) # ((\ALU|data_in|D1_in|SLL|ShiftLeft0~84_combout\ & \operand_b[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU|data_in|D1_in|SLL|ShiftLeft0~86_combout\,
	datab => \ALU|data_in|D1_in|SLL|ShiftLeft0~84_combout\,
	datac => \operand_b[0]~input_o\,
	combout => \ALU|data_in|D1_in|SLL|ShiftLeft0~87_combout\);

-- Location: LCCOMB_X38_Y27_N30
\ALU|data_OUT|MUX_Sel|Mux6~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ALU|data_OUT|MUX_Sel|Mux6~0_combout\ = (\ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~87_combout\ & (((!\ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~33_combout\)))) # (!\ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~87_combout\ & 
-- ((\ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~33_combout\ & ((\ALU|data_in|D1_in|SLL|ShiftLeft0~87_combout\))) # (!\ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~33_combout\ & (\ALU|data_in|D1_in|SLL|ShiftLeft0~61_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU|data_in|D1_in|SLL|ShiftLeft0~61_combout\,
	datab => \ALU|data_in|D1_in|SLL|ShiftLeft0~87_combout\,
	datac => \ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~87_combout\,
	datad => \ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~33_combout\,
	combout => \ALU|data_OUT|MUX_Sel|Mux6~0_combout\);

-- Location: LCCOMB_X38_Y27_N8
\ALU|data_OUT|MUX_Sel|Mux6~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ALU|data_OUT|MUX_Sel|Mux6~1_combout\ = (\ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~87_combout\ & ((\ALU|data_OUT|MUX_Sel|Mux6~0_combout\ & ((\ALU|data_in|D1_in|SLL|ShiftLeft0~33_combout\))) # (!\ALU|data_OUT|MUX_Sel|Mux6~0_combout\ & 
-- (\ALU|data_in|D1_in|SLL|ShiftLeft0~73_combout\)))) # (!\ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~87_combout\ & (((\ALU|data_OUT|MUX_Sel|Mux6~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU|data_in|D1_in|SLL|ShiftLeft0~73_combout\,
	datab => \ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~87_combout\,
	datac => \ALU|data_OUT|MUX_Sel|Mux6~0_combout\,
	datad => \ALU|data_in|D1_in|SLL|ShiftLeft0~33_combout\,
	combout => \ALU|data_OUT|MUX_Sel|Mux6~1_combout\);

-- Location: LCCOMB_X37_Y27_N16
\ALU|data_OUT|MUX_Sel|Mux6~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ALU|data_OUT|MUX_Sel|Mux6~3_combout\ = (\alu_op[0]~input_o\ & (((\operand_a[25]~input_o\ & \operand_b[25]~input_o\)) # (!\alu_op[1]~input_o\))) # (!\alu_op[0]~input_o\ & ((\operand_a[25]~input_o\ & ((\alu_op[1]~input_o\) # (!\operand_b[25]~input_o\))) # 
-- (!\operand_a[25]~input_o\ & ((\operand_b[25]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010110111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu_op[1]~input_o\,
	datab => \operand_a[25]~input_o\,
	datac => \operand_b[25]~input_o\,
	datad => \alu_op[0]~input_o\,
	combout => \ALU|data_OUT|MUX_Sel|Mux6~3_combout\);

-- Location: LCCOMB_X36_Y26_N6
\ALU|data_in|D5_in|Sel_SR|Data_out|MUX_Sel|Out[25]~81\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ALU|data_in|D5_in|Sel_SR|Data_out|MUX_Sel|Out[25]~81_combout\ = (\ALU|data_in|D5_in|Sel_SR|Data_out|MUX_Sel|Out[17]~93_combout\ & ((\ALU|data_in|D5_in|Sel_SR|Data_out|MUX_Sel|Out[9]~38_combout\) # 
-- ((\ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~47_combout\ & \ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~33_combout\)))) # (!\ALU|data_in|D5_in|Sel_SR|Data_out|MUX_Sel|Out[17]~93_combout\ & 
-- (\ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~47_combout\ & ((\ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~33_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU|data_in|D5_in|Sel_SR|Data_out|MUX_Sel|Out[17]~93_combout\,
	datab => \ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~47_combout\,
	datac => \ALU|data_in|D5_in|Sel_SR|Data_out|MUX_Sel|Out[9]~38_combout\,
	datad => \ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~33_combout\,
	combout => \ALU|data_in|D5_in|Sel_SR|Data_out|MUX_Sel|Out[25]~81_combout\);

-- Location: LCCOMB_X37_Y27_N18
\ALU|data_OUT|MUX_Sel|Mux6~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ALU|data_OUT|MUX_Sel|Mux6~4_combout\ = (\ALU|data_OUT|MUX_Sel|Mux6~3_combout\ & ((\alu_op[1]~input_o\) # ((\ALU|data_in|D5_in|Sel_SR|Data_out|MUX_Sel|Out[25]~81_combout\) # (!\alu_op[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu_op[1]~input_o\,
	datab => \ALU|data_OUT|MUX_Sel|Mux6~3_combout\,
	datac => \ALU|data_in|D5_in|Sel_SR|Data_out|MUX_Sel|Out[25]~81_combout\,
	datad => \alu_op[0]~input_o\,
	combout => \ALU|data_OUT|MUX_Sel|Mux6~4_combout\);

-- Location: LCCOMB_X37_Y27_N30
\ALU|data_OUT|MUX_Sel|Mux6~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ALU|data_OUT|MUX_Sel|Mux6~2_combout\ = (\alu_op[2]~input_o\ & (((\ALU|data_OUT|MUX_Sel|Mux6~4_combout\)))) # (!\alu_op[2]~input_o\ & (\ALU|data_OUT|MUX_Sel|Mux6~1_combout\ & (\ALU|data_OUT|MUX_Sel|Mux26~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU|data_OUT|MUX_Sel|Mux6~1_combout\,
	datab => \ALU|data_OUT|MUX_Sel|Mux26~0_combout\,
	datac => \alu_op[2]~input_o\,
	datad => \ALU|data_OUT|MUX_Sel|Mux6~4_combout\,
	combout => \ALU|data_OUT|MUX_Sel|Mux6~2_combout\);

-- Location: LCCOMB_X36_Y27_N20
\ALU|data_in|D5_in|Sel_SR|Data_out|MUX_Sel|Out[26]~82\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ALU|data_in|D5_in|Sel_SR|Data_out|MUX_Sel|Out[26]~82_combout\ = (\ALU|data_in|D5_in|Sel_SR|Data_out|MUX_Sel|Out[9]~38_combout\ & ((\ALU|data_in|D5_in|Sel_SR|Data_out|MUX_Sel|Out[22]~94_combout\) # 
-- ((\ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~58_combout\ & \ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~33_combout\)))) # (!\ALU|data_in|D5_in|Sel_SR|Data_out|MUX_Sel|Out[9]~38_combout\ & 
-- (\ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~58_combout\ & ((\ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~33_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU|data_in|D5_in|Sel_SR|Data_out|MUX_Sel|Out[9]~38_combout\,
	datab => \ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~58_combout\,
	datac => \ALU|data_in|D5_in|Sel_SR|Data_out|MUX_Sel|Out[22]~94_combout\,
	datad => \ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~33_combout\,
	combout => \ALU|data_in|D5_in|Sel_SR|Data_out|MUX_Sel|Out[26]~82_combout\);

-- Location: LCCOMB_X41_Y26_N30
\ALU|data_OUT|MUX_Sel|Mux5~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ALU|data_OUT|MUX_Sel|Mux5~3_combout\ = (\alu_op[1]~input_o\ & (((\operand_b[26]~input_o\)))) # (!\alu_op[1]~input_o\ & ((\alu_op[0]~input_o\ & (\ALU|data_in|D5_in|Sel_SR|Data_out|MUX_Sel|Out[26]~82_combout\)) # (!\alu_op[0]~input_o\ & 
-- ((\operand_b[26]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU|data_in|D5_in|Sel_SR|Data_out|MUX_Sel|Out[26]~82_combout\,
	datab => \alu_op[1]~input_o\,
	datac => \alu_op[0]~input_o\,
	datad => \operand_b[26]~input_o\,
	combout => \ALU|data_OUT|MUX_Sel|Mux5~3_combout\);

-- Location: LCCOMB_X41_Y26_N24
\ALU|data_OUT|MUX_Sel|Mux5~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ALU|data_OUT|MUX_Sel|Mux5~4_combout\ = (\ALU|data_OUT|MUX_Sel|Mux5~3_combout\ & ((\alu_op[1]~input_o\ & ((\operand_a[26]~input_o\) # (!\alu_op[0]~input_o\))) # (!\alu_op[1]~input_o\ & ((\alu_op[0]~input_o\) # (!\operand_a[26]~input_o\))))) # 
-- (!\ALU|data_OUT|MUX_Sel|Mux5~3_combout\ & (((!\alu_op[0]~input_o\ & \operand_a[26]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110100101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU|data_OUT|MUX_Sel|Mux5~3_combout\,
	datab => \alu_op[1]~input_o\,
	datac => \alu_op[0]~input_o\,
	datad => \operand_a[26]~input_o\,
	combout => \ALU|data_OUT|MUX_Sel|Mux5~4_combout\);

-- Location: LCCOMB_X39_Y24_N2
\ALU|data_in|D1_in|SLL|ShiftLeft0~88\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ALU|data_in|D1_in|SLL|ShiftLeft0~88_combout\ = (\operand_b[1]~input_o\ & ((\operand_b[0]~input_o\ & (\operand_a[23]~input_o\)) # (!\operand_b[0]~input_o\ & ((\operand_a[24]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \operand_b[0]~input_o\,
	datab => \operand_a[23]~input_o\,
	datac => \operand_b[1]~input_o\,
	datad => \operand_a[24]~input_o\,
	combout => \ALU|data_in|D1_in|SLL|ShiftLeft0~88_combout\);

-- Location: LCCOMB_X39_Y24_N12
\ALU|data_in|D1_in|SLL|ShiftLeft0~89\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ALU|data_in|D1_in|SLL|ShiftLeft0~89_combout\ = (\operand_b[0]~input_o\ & (\operand_a[25]~input_o\)) # (!\operand_b[0]~input_o\ & ((\operand_a[26]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \operand_a[25]~input_o\,
	datab => \operand_a[26]~input_o\,
	datac => \operand_b[0]~input_o\,
	combout => \ALU|data_in|D1_in|SLL|ShiftLeft0~89_combout\);

-- Location: LCCOMB_X39_Y24_N14
\ALU|data_in|D1_in|SLL|ShiftLeft0~90\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ALU|data_in|D1_in|SLL|ShiftLeft0~90_combout\ = (\ALU|data_in|D1_in|SLL|ShiftLeft0~88_combout\) # ((!\operand_b[1]~input_o\ & \ALU|data_in|D1_in|SLL|ShiftLeft0~89_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ALU|data_in|D1_in|SLL|ShiftLeft0~88_combout\,
	datac => \operand_b[1]~input_o\,
	datad => \ALU|data_in|D1_in|SLL|ShiftLeft0~89_combout\,
	combout => \ALU|data_in|D1_in|SLL|ShiftLeft0~90_combout\);

-- Location: LCCOMB_X36_Y28_N0
\ALU|data_OUT|MUX_Sel|Mux5~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ALU|data_OUT|MUX_Sel|Mux5~0_combout\ = (\ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~87_combout\ & ((\ALU|data_in|D1_in|SLL|ShiftLeft0~77_combout\) # ((!\ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~33_combout\)))) # 
-- (!\ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~87_combout\ & (((\ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~33_combout\ & \ALU|data_in|D1_in|SLL|ShiftLeft0~90_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101010001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~87_combout\,
	datab => \ALU|data_in|D1_in|SLL|ShiftLeft0~77_combout\,
	datac => \ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~33_combout\,
	datad => \ALU|data_in|D1_in|SLL|ShiftLeft0~90_combout\,
	combout => \ALU|data_OUT|MUX_Sel|Mux5~0_combout\);

-- Location: LCCOMB_X36_Y28_N18
\ALU|data_OUT|MUX_Sel|Mux5~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ALU|data_OUT|MUX_Sel|Mux5~1_combout\ = (\ALU|data_OUT|MUX_Sel|Mux5~0_combout\ & (((\ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~33_combout\) # (\ALU|data_in|D1_in|SLL|ShiftLeft0~37_combout\)))) # (!\ALU|data_OUT|MUX_Sel|Mux5~0_combout\ & 
-- (\ALU|data_in|D1_in|SLL|ShiftLeft0~64_combout\ & (!\ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~33_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU|data_in|D1_in|SLL|ShiftLeft0~64_combout\,
	datab => \ALU|data_OUT|MUX_Sel|Mux5~0_combout\,
	datac => \ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~33_combout\,
	datad => \ALU|data_in|D1_in|SLL|ShiftLeft0~37_combout\,
	combout => \ALU|data_OUT|MUX_Sel|Mux5~1_combout\);

-- Location: LCCOMB_X41_Y26_N4
\ALU|data_OUT|MUX_Sel|Mux5~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ALU|data_OUT|MUX_Sel|Mux5~2_combout\ = (\alu_op[2]~input_o\ & (\ALU|data_OUT|MUX_Sel|Mux5~4_combout\)) # (!\alu_op[2]~input_o\ & (((\ALU|data_OUT|MUX_Sel|Mux5~1_combout\ & \ALU|data_OUT|MUX_Sel|Mux26~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu_op[2]~input_o\,
	datab => \ALU|data_OUT|MUX_Sel|Mux5~4_combout\,
	datac => \ALU|data_OUT|MUX_Sel|Mux5~1_combout\,
	datad => \ALU|data_OUT|MUX_Sel|Mux26~0_combout\,
	combout => \ALU|data_OUT|MUX_Sel|Mux5~2_combout\);

-- Location: LCCOMB_X35_Y27_N18
\ALU|data_in|D1_in|SLL|ShiftLeft0~91\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ALU|data_in|D1_in|SLL|ShiftLeft0~91_combout\ = (\operand_b[1]~input_o\ & ((\operand_b[0]~input_o\ & (\operand_a[24]~input_o\)) # (!\operand_b[0]~input_o\ & ((\operand_a[25]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \operand_a[24]~input_o\,
	datab => \operand_b[0]~input_o\,
	datac => \operand_b[1]~input_o\,
	datad => \operand_a[25]~input_o\,
	combout => \ALU|data_in|D1_in|SLL|ShiftLeft0~91_combout\);

-- Location: LCCOMB_X35_Y27_N20
\ALU|data_in|D1_in|SLL|ShiftLeft0~92\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ALU|data_in|D1_in|SLL|ShiftLeft0~92_combout\ = (\operand_b[0]~input_o\ & ((\operand_a[26]~input_o\))) # (!\operand_b[0]~input_o\ & (\operand_a[27]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \operand_a[27]~input_o\,
	datab => \operand_a[26]~input_o\,
	datac => \operand_b[0]~input_o\,
	combout => \ALU|data_in|D1_in|SLL|ShiftLeft0~92_combout\);

-- Location: LCCOMB_X35_Y27_N22
\ALU|data_in|D1_in|SLL|ShiftLeft0~93\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ALU|data_in|D1_in|SLL|ShiftLeft0~93_combout\ = (\ALU|data_in|D1_in|SLL|ShiftLeft0~91_combout\) # ((!\operand_b[1]~input_o\ & \ALU|data_in|D1_in|SLL|ShiftLeft0~92_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ALU|data_in|D1_in|SLL|ShiftLeft0~91_combout\,
	datac => \operand_b[1]~input_o\,
	datad => \ALU|data_in|D1_in|SLL|ShiftLeft0~92_combout\,
	combout => \ALU|data_in|D1_in|SLL|ShiftLeft0~93_combout\);

-- Location: LCCOMB_X38_Y28_N8
\ALU|data_OUT|MUX_Sel|Mux4~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ALU|data_OUT|MUX_Sel|Mux4~0_combout\ = (\ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~33_combout\ & (((\ALU|data_in|D1_in|SLL|ShiftLeft0~93_combout\ & !\ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~87_combout\)))) # 
-- (!\ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~33_combout\ & ((\ALU|data_in|D1_in|SLL|ShiftLeft0~67_combout\) # ((\ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~87_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU|data_in|D1_in|SLL|ShiftLeft0~67_combout\,
	datab => \ALU|data_in|D1_in|SLL|ShiftLeft0~93_combout\,
	datac => \ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~33_combout\,
	datad => \ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~87_combout\,
	combout => \ALU|data_OUT|MUX_Sel|Mux4~0_combout\);

-- Location: LCCOMB_X38_Y28_N2
\ALU|data_OUT|MUX_Sel|Mux4~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ALU|data_OUT|MUX_Sel|Mux4~1_combout\ = (\ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~87_combout\ & ((\ALU|data_OUT|MUX_Sel|Mux4~0_combout\ & ((\ALU|data_in|D1_in|SLL|ShiftLeft0~41_combout\))) # (!\ALU|data_OUT|MUX_Sel|Mux4~0_combout\ & 
-- (\ALU|data_in|D1_in|SLL|ShiftLeft0~81_combout\)))) # (!\ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~87_combout\ & (\ALU|data_OUT|MUX_Sel|Mux4~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110001100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~87_combout\,
	datab => \ALU|data_OUT|MUX_Sel|Mux4~0_combout\,
	datac => \ALU|data_in|D1_in|SLL|ShiftLeft0~81_combout\,
	datad => \ALU|data_in|D1_in|SLL|ShiftLeft0~41_combout\,
	combout => \ALU|data_OUT|MUX_Sel|Mux4~1_combout\);

-- Location: LCCOMB_X35_Y26_N20
\ALU|data_in|D5_in|Sel_SR|Data_out|MUX_Sel|Out[27]~83\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ALU|data_in|D5_in|Sel_SR|Data_out|MUX_Sel|Out[27]~83_combout\ = (\ALU|data_in|D5_in|Sel_SR|Data_out|MUX_Sel|Out[9]~38_combout\ & ((\ALU|data_in|D5_in|Sel_SR|Data_out|MUX_Sel|Out[23]~95_combout\) # 
-- ((\ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~77_combout\ & \ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~33_combout\)))) # (!\ALU|data_in|D5_in|Sel_SR|Data_out|MUX_Sel|Out[9]~38_combout\ & 
-- (\ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~77_combout\ & ((\ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~33_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU|data_in|D5_in|Sel_SR|Data_out|MUX_Sel|Out[9]~38_combout\,
	datab => \ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~77_combout\,
	datac => \ALU|data_in|D5_in|Sel_SR|Data_out|MUX_Sel|Out[23]~95_combout\,
	datad => \ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~33_combout\,
	combout => \ALU|data_in|D5_in|Sel_SR|Data_out|MUX_Sel|Out[27]~83_combout\);

-- Location: LCCOMB_X41_Y26_N18
\ALU|data_OUT|MUX_Sel|Mux4~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ALU|data_OUT|MUX_Sel|Mux4~3_combout\ = (\alu_op[0]~input_o\ & (((\operand_b[27]~input_o\ & \operand_a[27]~input_o\)) # (!\alu_op[1]~input_o\))) # (!\alu_op[0]~input_o\ & ((\operand_b[27]~input_o\ & ((\alu_op[1]~input_o\) # (!\operand_a[27]~input_o\))) # 
-- (!\operand_b[27]~input_o\ & ((\operand_a[27]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101101001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu_op[0]~input_o\,
	datab => \operand_b[27]~input_o\,
	datac => \alu_op[1]~input_o\,
	datad => \operand_a[27]~input_o\,
	combout => \ALU|data_OUT|MUX_Sel|Mux4~3_combout\);

-- Location: LCCOMB_X41_Y26_N28
\ALU|data_OUT|MUX_Sel|Mux4~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ALU|data_OUT|MUX_Sel|Mux4~4_combout\ = (\ALU|data_OUT|MUX_Sel|Mux4~3_combout\ & ((\ALU|data_in|D5_in|Sel_SR|Data_out|MUX_Sel|Out[27]~83_combout\) # ((\alu_op[1]~input_o\) # (!\alu_op[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU|data_in|D5_in|Sel_SR|Data_out|MUX_Sel|Out[27]~83_combout\,
	datab => \alu_op[1]~input_o\,
	datac => \alu_op[0]~input_o\,
	datad => \ALU|data_OUT|MUX_Sel|Mux4~3_combout\,
	combout => \ALU|data_OUT|MUX_Sel|Mux4~4_combout\);

-- Location: LCCOMB_X41_Y26_N22
\ALU|data_OUT|MUX_Sel|Mux4~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ALU|data_OUT|MUX_Sel|Mux4~2_combout\ = (\alu_op[2]~input_o\ & (((\ALU|data_OUT|MUX_Sel|Mux4~4_combout\)))) # (!\alu_op[2]~input_o\ & (\ALU|data_OUT|MUX_Sel|Mux4~1_combout\ & ((\ALU|data_OUT|MUX_Sel|Mux26~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu_op[2]~input_o\,
	datab => \ALU|data_OUT|MUX_Sel|Mux4~1_combout\,
	datac => \ALU|data_OUT|MUX_Sel|Mux4~4_combout\,
	datad => \ALU|data_OUT|MUX_Sel|Mux26~0_combout\,
	combout => \ALU|data_OUT|MUX_Sel|Mux4~2_combout\);

-- Location: LCCOMB_X36_Y27_N30
\ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~111\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~111_combout\ = (!\operand_b[3]~input_o\ & (!\operand_b[2]~input_o\ & !\operand_b[4]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \operand_b[3]~input_o\,
	datab => \operand_b[2]~input_o\,
	datad => \operand_b[4]~input_o\,
	combout => \ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~111_combout\);

-- Location: LCCOMB_X38_Y26_N20
\ALU|data_in|D5_in|Sel_SR|Data_out|MUX_Sel|Out[28]~84\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ALU|data_in|D5_in|Sel_SR|Data_out|MUX_Sel|Out[28]~84_combout\ = (\ALU|data_in|D5_in|Sel_SR|Data_out|MUX_Sel|Out[16]~92_combout\ & ((\ALU|data_in|D5_in|Sel_SR|Data_out|MUX_Sel|Out[12]~56_combout\) # 
-- ((\ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~111_combout\ & \ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~19_combout\)))) # (!\ALU|data_in|D5_in|Sel_SR|Data_out|MUX_Sel|Out[16]~92_combout\ & 
-- (\ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~111_combout\ & ((\ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~19_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU|data_in|D5_in|Sel_SR|Data_out|MUX_Sel|Out[16]~92_combout\,
	datab => \ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~111_combout\,
	datac => \ALU|data_in|D5_in|Sel_SR|Data_out|MUX_Sel|Out[12]~56_combout\,
	datad => \ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~19_combout\,
	combout => \ALU|data_in|D5_in|Sel_SR|Data_out|MUX_Sel|Out[28]~84_combout\);

-- Location: LCCOMB_X38_Y26_N30
\ALU|data_OUT|MUX_Sel|Mux3~5\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ALU|data_OUT|MUX_Sel|Mux3~5_combout\ = (\alu_op[1]~input_o\ & (((\operand_b[28]~input_o\)))) # (!\alu_op[1]~input_o\ & ((\alu_op[0]~input_o\ & (\ALU|data_in|D5_in|Sel_SR|Data_out|MUX_Sel|Out[28]~84_combout\)) # (!\alu_op[0]~input_o\ & 
-- ((\operand_b[28]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu_op[1]~input_o\,
	datab => \ALU|data_in|D5_in|Sel_SR|Data_out|MUX_Sel|Out[28]~84_combout\,
	datac => \operand_b[28]~input_o\,
	datad => \alu_op[0]~input_o\,
	combout => \ALU|data_OUT|MUX_Sel|Mux3~5_combout\);

-- Location: LCCOMB_X38_Y26_N8
\ALU|data_OUT|MUX_Sel|Mux3~6\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ALU|data_OUT|MUX_Sel|Mux3~6_combout\ = (\operand_a[28]~input_o\ & ((\ALU|data_OUT|MUX_Sel|Mux3~5_combout\ & ((\alu_op[1]~input_o\) # (\alu_op[0]~input_o\))) # (!\ALU|data_OUT|MUX_Sel|Mux3~5_combout\ & ((!\alu_op[0]~input_o\))))) # 
-- (!\operand_a[28]~input_o\ & (\ALU|data_OUT|MUX_Sel|Mux3~5_combout\ & ((!\alu_op[0]~input_o\) # (!\alu_op[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000010111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu_op[1]~input_o\,
	datab => \operand_a[28]~input_o\,
	datac => \ALU|data_OUT|MUX_Sel|Mux3~5_combout\,
	datad => \alu_op[0]~input_o\,
	combout => \ALU|data_OUT|MUX_Sel|Mux3~6_combout\);

-- Location: LCCOMB_X37_Y28_N20
\ALU|data_in|D1_in|SLL|ShiftLeft0~94\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ALU|data_in|D1_in|SLL|ShiftLeft0~94_combout\ = (\operand_b[0]~input_o\ & (\operand_a[27]~input_o\)) # (!\operand_b[0]~input_o\ & ((\operand_a[28]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \operand_a[27]~input_o\,
	datab => \operand_a[28]~input_o\,
	datad => \operand_b[0]~input_o\,
	combout => \ALU|data_in|D1_in|SLL|ShiftLeft0~94_combout\);

-- Location: LCCOMB_X39_Y26_N26
\ALU|data_OUT|MUX_Sel|Mux3~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ALU|data_OUT|MUX_Sel|Mux3~1_combout\ = (\ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~64_combout\ & (((!\ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~55_combout\)))) # (!\ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~64_combout\ & 
-- ((\ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~55_combout\ & ((\ALU|data_in|D1_in|SLL|ShiftLeft0~94_combout\))) # (!\ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~55_combout\ & (\ALU|data_in|D1_in|SLL|ShiftLeft0~85_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU|data_in|D1_in|SLL|ShiftLeft0~85_combout\,
	datab => \ALU|data_in|D1_in|SLL|ShiftLeft0~94_combout\,
	datac => \ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~64_combout\,
	datad => \ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~55_combout\,
	combout => \ALU|data_OUT|MUX_Sel|Mux3~1_combout\);

-- Location: LCCOMB_X39_Y26_N28
\ALU|data_OUT|MUX_Sel|Mux3~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ALU|data_OUT|MUX_Sel|Mux3~2_combout\ = (\ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~64_combout\ & ((\ALU|data_OUT|MUX_Sel|Mux3~1_combout\ & (\ALU|data_in|D1_in|SLL|ShiftLeft0~70_combout\)) # (!\ALU|data_OUT|MUX_Sel|Mux3~1_combout\ & 
-- ((\ALU|data_in|D1_in|SLL|ShiftLeft0~89_combout\))))) # (!\ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~64_combout\ & (((\ALU|data_OUT|MUX_Sel|Mux3~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~64_combout\,
	datab => \ALU|data_in|D1_in|SLL|ShiftLeft0~70_combout\,
	datac => \ALU|data_OUT|MUX_Sel|Mux3~1_combout\,
	datad => \ALU|data_in|D1_in|SLL|ShiftLeft0~89_combout\,
	combout => \ALU|data_OUT|MUX_Sel|Mux3~2_combout\);

-- Location: LCCOMB_X38_Y26_N22
\ALU|data_OUT|MUX_Sel|Mux3~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ALU|data_OUT|MUX_Sel|Mux3~3_combout\ = (\operand_b[4]~input_o\ & (\ALU|data_OUT|MUX_Sel|Mux3~0_combout\)) # (!\operand_b[4]~input_o\ & ((\ALU|data_OUT|MUX_Sel|Mux3~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU|data_OUT|MUX_Sel|Mux3~0_combout\,
	datab => \ALU|data_OUT|MUX_Sel|Mux3~2_combout\,
	datad => \operand_b[4]~input_o\,
	combout => \ALU|data_OUT|MUX_Sel|Mux3~3_combout\);

-- Location: LCCOMB_X38_Y26_N0
\ALU|data_OUT|MUX_Sel|Mux3~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ALU|data_OUT|MUX_Sel|Mux3~4_combout\ = (\alu_op[2]~input_o\ & (((\ALU|data_OUT|MUX_Sel|Mux3~6_combout\)))) # (!\alu_op[2]~input_o\ & (\ALU|data_OUT|MUX_Sel|Mux26~0_combout\ & ((\ALU|data_OUT|MUX_Sel|Mux3~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU|data_OUT|MUX_Sel|Mux26~0_combout\,
	datab => \ALU|data_OUT|MUX_Sel|Mux3~6_combout\,
	datac => \ALU|data_OUT|MUX_Sel|Mux3~3_combout\,
	datad => \alu_op[2]~input_o\,
	combout => \ALU|data_OUT|MUX_Sel|Mux3~4_combout\);

-- Location: LCCOMB_X38_Y26_N26
\ALU|data_in|D5_in|Sel_SR|Data_out|MUX_Sel|Out[29]~85\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ALU|data_in|D5_in|Sel_SR|Data_out|MUX_Sel|Out[29]~85_combout\ = (\ALU|data_in|D5_in|Sel_SR|Data_out|MUX_Sel|Out[12]~56_combout\ & ((\ALU|data_in|D5_in|Sel_SR|Data_out|MUX_Sel|Out[17]~93_combout\) # 
-- ((\ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~111_combout\ & \ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~44_combout\)))) # (!\ALU|data_in|D5_in|Sel_SR|Data_out|MUX_Sel|Out[12]~56_combout\ & 
-- (\ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~111_combout\ & (\ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~44_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU|data_in|D5_in|Sel_SR|Data_out|MUX_Sel|Out[12]~56_combout\,
	datab => \ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~111_combout\,
	datac => \ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~44_combout\,
	datad => \ALU|data_in|D5_in|Sel_SR|Data_out|MUX_Sel|Out[17]~93_combout\,
	combout => \ALU|data_in|D5_in|Sel_SR|Data_out|MUX_Sel|Out[29]~85_combout\);

-- Location: LCCOMB_X41_Y26_N6
\ALU|data_OUT|MUX_Sel|Mux2~5\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ALU|data_OUT|MUX_Sel|Mux2~5_combout\ = (\alu_op[0]~input_o\ & (((\operand_a[29]~input_o\ & \operand_b[29]~input_o\)) # (!\alu_op[1]~input_o\))) # (!\alu_op[0]~input_o\ & ((\operand_a[29]~input_o\ & ((\alu_op[1]~input_o\) # (!\operand_b[29]~input_o\))) # 
-- (!\operand_a[29]~input_o\ & ((\operand_b[29]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110100111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \operand_a[29]~input_o\,
	datab => \alu_op[1]~input_o\,
	datac => \alu_op[0]~input_o\,
	datad => \operand_b[29]~input_o\,
	combout => \ALU|data_OUT|MUX_Sel|Mux2~5_combout\);

-- Location: LCCOMB_X41_Y26_N8
\ALU|data_OUT|MUX_Sel|Mux2~6\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ALU|data_OUT|MUX_Sel|Mux2~6_combout\ = (\ALU|data_OUT|MUX_Sel|Mux2~5_combout\ & ((\ALU|data_in|D5_in|Sel_SR|Data_out|MUX_Sel|Out[29]~85_combout\) # ((\alu_op[1]~input_o\) # (!\alu_op[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU|data_in|D5_in|Sel_SR|Data_out|MUX_Sel|Out[29]~85_combout\,
	datab => \alu_op[1]~input_o\,
	datac => \alu_op[0]~input_o\,
	datad => \ALU|data_OUT|MUX_Sel|Mux2~5_combout\,
	combout => \ALU|data_OUT|MUX_Sel|Mux2~6_combout\);

-- Location: LCCOMB_X37_Y28_N6
\ALU|data_in|D1_in|SLL|ShiftLeft0~95\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ALU|data_in|D1_in|SLL|ShiftLeft0~95_combout\ = (\operand_b[0]~input_o\ & ((\operand_a[28]~input_o\))) # (!\operand_b[0]~input_o\ & (\operand_a[29]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \operand_b[0]~input_o\,
	datab => \operand_a[29]~input_o\,
	datad => \operand_a[28]~input_o\,
	combout => \ALU|data_in|D1_in|SLL|ShiftLeft0~95_combout\);

-- Location: LCCOMB_X38_Y27_N10
\ALU|data_OUT|MUX_Sel|Mux2~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ALU|data_OUT|MUX_Sel|Mux2~1_combout\ = (\ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~55_combout\ & (\ALU|data_in|D1_in|SLL|ShiftLeft0~95_combout\ & ((!\ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~64_combout\)))) # 
-- (!\ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~55_combout\ & (((\ALU|data_in|D1_in|SLL|ShiftLeft0~87_combout\) # (\ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~64_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111110101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU|data_in|D1_in|SLL|ShiftLeft0~95_combout\,
	datab => \ALU|data_in|D1_in|SLL|ShiftLeft0~87_combout\,
	datac => \ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~55_combout\,
	datad => \ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~64_combout\,
	combout => \ALU|data_OUT|MUX_Sel|Mux2~1_combout\);

-- Location: LCCOMB_X38_Y27_N20
\ALU|data_OUT|MUX_Sel|Mux2~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ALU|data_OUT|MUX_Sel|Mux2~2_combout\ = (\ALU|data_OUT|MUX_Sel|Mux2~1_combout\ & ((\ALU|data_in|D1_in|SLL|ShiftLeft0~74_combout\) # ((!\ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~64_combout\)))) # (!\ALU|data_OUT|MUX_Sel|Mux2~1_combout\ & 
-- (((\ALU|data_in|D1_in|SLL|ShiftLeft0~92_combout\ & \ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~64_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU|data_OUT|MUX_Sel|Mux2~1_combout\,
	datab => \ALU|data_in|D1_in|SLL|ShiftLeft0~74_combout\,
	datac => \ALU|data_in|D1_in|SLL|ShiftLeft0~92_combout\,
	datad => \ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~64_combout\,
	combout => \ALU|data_OUT|MUX_Sel|Mux2~2_combout\);

-- Location: LCCOMB_X38_Y26_N28
\ALU|data_OUT|MUX_Sel|Mux2~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ALU|data_OUT|MUX_Sel|Mux2~3_combout\ = (\operand_b[4]~input_o\ & ((\ALU|data_OUT|MUX_Sel|Mux2~0_combout\))) # (!\operand_b[4]~input_o\ & (\ALU|data_OUT|MUX_Sel|Mux2~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU|data_OUT|MUX_Sel|Mux2~2_combout\,
	datac => \ALU|data_OUT|MUX_Sel|Mux2~0_combout\,
	datad => \operand_b[4]~input_o\,
	combout => \ALU|data_OUT|MUX_Sel|Mux2~3_combout\);

-- Location: LCCOMB_X41_Y26_N16
\ALU|data_OUT|MUX_Sel|Mux2~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ALU|data_OUT|MUX_Sel|Mux2~4_combout\ = (\alu_op[2]~input_o\ & (\ALU|data_OUT|MUX_Sel|Mux2~6_combout\)) # (!\alu_op[2]~input_o\ & (((\ALU|data_OUT|MUX_Sel|Mux2~3_combout\ & \ALU|data_OUT|MUX_Sel|Mux26~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu_op[2]~input_o\,
	datab => \ALU|data_OUT|MUX_Sel|Mux2~6_combout\,
	datac => \ALU|data_OUT|MUX_Sel|Mux2~3_combout\,
	datad => \ALU|data_OUT|MUX_Sel|Mux26~0_combout\,
	combout => \ALU|data_OUT|MUX_Sel|Mux2~4_combout\);

-- Location: LCCOMB_X37_Y28_N0
\ALU|data_OUT|MUX_Sel|Mux1~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ALU|data_OUT|MUX_Sel|Mux1~0_combout\ = (\ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~25_combout\ & (((\ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~27_combout\)))) # (!\ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~25_combout\ & 
-- ((\ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~27_combout\ & (\ALU|data_in|D1_in|SLL|ShiftLeft0~94_combout\)) # (!\ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~27_combout\ & ((\operand_a[30]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~25_combout\,
	datab => \ALU|data_in|D1_in|SLL|ShiftLeft0~94_combout\,
	datac => \ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~27_combout\,
	datad => \operand_a[30]~input_o\,
	combout => \ALU|data_OUT|MUX_Sel|Mux1~0_combout\);

-- Location: LCCOMB_X37_Y28_N18
\ALU|data_OUT|MUX_Sel|Mux1~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ALU|data_OUT|MUX_Sel|Mux1~1_combout\ = (\ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~25_combout\ & ((\ALU|data_OUT|MUX_Sel|Mux1~0_combout\ & ((\ALU|data_in|D1_in|SLL|ShiftLeft0~90_combout\))) # (!\ALU|data_OUT|MUX_Sel|Mux1~0_combout\ & 
-- (\operand_a[29]~input_o\)))) # (!\ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~25_combout\ & (\ALU|data_OUT|MUX_Sel|Mux1~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110001100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~25_combout\,
	datab => \ALU|data_OUT|MUX_Sel|Mux1~0_combout\,
	datac => \operand_a[29]~input_o\,
	datad => \ALU|data_in|D1_in|SLL|ShiftLeft0~90_combout\,
	combout => \ALU|data_OUT|MUX_Sel|Mux1~1_combout\);

-- Location: LCCOMB_X36_Y27_N16
\ALU|data_in|D5_in|Sel_SR|Data_out|MUX_Sel|Out[30]~86\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ALU|data_in|D5_in|Sel_SR|Data_out|MUX_Sel|Out[30]~86_combout\ = (\ALU|data_in|D5_in|Sel_SR|Data_out|MUX_Sel|Out[12]~56_combout\ & ((\ALU|data_in|D5_in|Sel_SR|Data_out|MUX_Sel|Out[22]~94_combout\) # 
-- ((\ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~112_combout\ & \ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~33_combout\)))) # (!\ALU|data_in|D5_in|Sel_SR|Data_out|MUX_Sel|Out[12]~56_combout\ & 
-- (((\ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~112_combout\ & \ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~33_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU|data_in|D5_in|Sel_SR|Data_out|MUX_Sel|Out[12]~56_combout\,
	datab => \ALU|data_in|D5_in|Sel_SR|Data_out|MUX_Sel|Out[22]~94_combout\,
	datac => \ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~112_combout\,
	datad => \ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~33_combout\,
	combout => \ALU|data_in|D5_in|Sel_SR|Data_out|MUX_Sel|Out[30]~86_combout\);

-- Location: LCCOMB_X41_Y26_N26
\ALU|data_OUT|MUX_Sel|Mux1~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ALU|data_OUT|MUX_Sel|Mux1~3_combout\ = (\alu_op[0]~input_o\ & ((\alu_op[1]~input_o\ & (\operand_b[30]~input_o\)) # (!\alu_op[1]~input_o\ & ((\ALU|data_in|D5_in|Sel_SR|Data_out|MUX_Sel|Out[30]~86_combout\))))) # (!\alu_op[0]~input_o\ & 
-- (\operand_b[30]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu_op[0]~input_o\,
	datab => \operand_b[30]~input_o\,
	datac => \alu_op[1]~input_o\,
	datad => \ALU|data_in|D5_in|Sel_SR|Data_out|MUX_Sel|Out[30]~86_combout\,
	combout => \ALU|data_OUT|MUX_Sel|Mux1~3_combout\);

-- Location: LCCOMB_X41_Y26_N20
\ALU|data_OUT|MUX_Sel|Mux1~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ALU|data_OUT|MUX_Sel|Mux1~4_combout\ = (\ALU|data_OUT|MUX_Sel|Mux1~3_combout\ & ((\alu_op[1]~input_o\ & ((\operand_a[30]~input_o\) # (!\alu_op[0]~input_o\))) # (!\alu_op[1]~input_o\ & ((\alu_op[0]~input_o\) # (!\operand_a[30]~input_o\))))) # 
-- (!\ALU|data_OUT|MUX_Sel|Mux1~3_combout\ & (((!\alu_op[0]~input_o\ & \operand_a[30]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110100101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU|data_OUT|MUX_Sel|Mux1~3_combout\,
	datab => \alu_op[1]~input_o\,
	datac => \alu_op[0]~input_o\,
	datad => \operand_a[30]~input_o\,
	combout => \ALU|data_OUT|MUX_Sel|Mux1~4_combout\);

-- Location: LCCOMB_X37_Y25_N0
\ALU|data_OUT|MUX_Sel|Mux1~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ALU|data_OUT|MUX_Sel|Mux1~2_combout\ = (\ALU|data_OUT|MUX_Sel|Mux15~5_combout\ & ((\ALU|data_OUT|MUX_Sel|Mux15~3_combout\ & ((\ALU|data_OUT|MUX_Sel|Mux1~4_combout\))) # (!\ALU|data_OUT|MUX_Sel|Mux15~3_combout\ & 
-- (\ALU|data_in|D1_in|SLL|ShiftLeft0~51_combout\)))) # (!\ALU|data_OUT|MUX_Sel|Mux15~5_combout\ & (((\ALU|data_OUT|MUX_Sel|Mux15~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU|data_OUT|MUX_Sel|Mux15~5_combout\,
	datab => \ALU|data_in|D1_in|SLL|ShiftLeft0~51_combout\,
	datac => \ALU|data_OUT|MUX_Sel|Mux15~3_combout\,
	datad => \ALU|data_OUT|MUX_Sel|Mux1~4_combout\,
	combout => \ALU|data_OUT|MUX_Sel|Mux1~2_combout\);

-- Location: LCCOMB_X37_Y25_N26
\ALU|data_OUT|MUX_Sel|Mux1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ALU|data_OUT|MUX_Sel|Mux1~combout\ = (\ALU|data_OUT|MUX_Sel|Mux1~2_combout\ & (((\ALU|data_in|D1_in|SLL|ShiftLeft0~78_combout\) # (\ALU|data_OUT|MUX_Sel|Mux15~2_combout\)))) # (!\ALU|data_OUT|MUX_Sel|Mux1~2_combout\ & 
-- (\ALU|data_OUT|MUX_Sel|Mux1~1_combout\ & ((!\ALU|data_OUT|MUX_Sel|Mux15~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU|data_OUT|MUX_Sel|Mux1~1_combout\,
	datab => \ALU|data_OUT|MUX_Sel|Mux1~2_combout\,
	datac => \ALU|data_in|D1_in|SLL|ShiftLeft0~78_combout\,
	datad => \ALU|data_OUT|MUX_Sel|Mux15~2_combout\,
	combout => \ALU|data_OUT|MUX_Sel|Mux1~combout\);

-- Location: LCCOMB_X37_Y28_N12
\ALU|data_OUT|MUX_Sel|Mux0~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ALU|data_OUT|MUX_Sel|Mux0~0_combout\ = (\ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~25_combout\ & ((\ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~27_combout\) # ((\operand_a[30]~input_o\)))) # 
-- (!\ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~25_combout\ & (!\ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~27_combout\ & (\operand_a[31]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~25_combout\,
	datab => \ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~27_combout\,
	datac => \operand_a[31]~input_o\,
	datad => \operand_a[30]~input_o\,
	combout => \ALU|data_OUT|MUX_Sel|Mux0~0_combout\);

-- Location: LCCOMB_X37_Y28_N14
\ALU|data_OUT|MUX_Sel|Mux0~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ALU|data_OUT|MUX_Sel|Mux0~1_combout\ = (\ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~27_combout\ & ((\ALU|data_OUT|MUX_Sel|Mux0~0_combout\ & (\ALU|data_in|D1_in|SLL|ShiftLeft0~93_combout\)) # (!\ALU|data_OUT|MUX_Sel|Mux0~0_combout\ & 
-- ((\ALU|data_in|D1_in|SLL|ShiftLeft0~95_combout\))))) # (!\ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~27_combout\ & (((\ALU|data_OUT|MUX_Sel|Mux0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU|data_in|D1_in|SLL|ShiftLeft0~93_combout\,
	datab => \ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~27_combout\,
	datac => \ALU|data_in|D1_in|SLL|ShiftLeft0~95_combout\,
	datad => \ALU|data_OUT|MUX_Sel|Mux0~0_combout\,
	combout => \ALU|data_OUT|MUX_Sel|Mux0~1_combout\);

-- Location: LCCOMB_X37_Y24_N0
\ALU|data_OUT|MUX_Sel|Mux0~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ALU|data_OUT|MUX_Sel|Mux0~3_combout\ = (\alu_op[0]~input_o\ & (((\operand_b[31]~input_o\ & \operand_a[31]~input_o\)) # (!\alu_op[1]~input_o\))) # (!\alu_op[0]~input_o\ & ((\operand_b[31]~input_o\ & ((\alu_op[1]~input_o\) # (!\operand_a[31]~input_o\))) # 
-- (!\operand_b[31]~input_o\ & ((\operand_a[31]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101101011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu_op[1]~input_o\,
	datab => \operand_b[31]~input_o\,
	datac => \alu_op[0]~input_o\,
	datad => \operand_a[31]~input_o\,
	combout => \ALU|data_OUT|MUX_Sel|Mux0~3_combout\);

-- Location: LCCOMB_X36_Y24_N30
\ALU|data_in|D5_in|Sel_SR|Data_out|MUX_Sel|Out[31]~87\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ALU|data_in|D5_in|Sel_SR|Data_out|MUX_Sel|Out[31]~87_combout\ = (\ALU|data_in|D5_in|Sel_SR|Data_out|MUX_Sel|Out[15]~65_combout\ & (\operand_a[31]~input_o\ & (!\operand_b[1]~input_o\ & !\operand_b[4]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU|data_in|D5_in|Sel_SR|Data_out|MUX_Sel|Out[15]~65_combout\,
	datab => \operand_a[31]~input_o\,
	datac => \operand_b[1]~input_o\,
	datad => \operand_b[4]~input_o\,
	combout => \ALU|data_in|D5_in|Sel_SR|Data_out|MUX_Sel|Out[31]~87_combout\);

-- Location: LCCOMB_X37_Y24_N26
\ALU|data_OUT|MUX_Sel|Mux0~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ALU|data_OUT|MUX_Sel|Mux0~4_combout\ = (\ALU|data_OUT|MUX_Sel|Mux0~3_combout\ & ((\alu_op[1]~input_o\) # ((\ALU|data_in|D5_in|Sel_SR|Data_out|MUX_Sel|Out[31]~87_combout\) # (!\alu_op[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu_op[1]~input_o\,
	datab => \ALU|data_OUT|MUX_Sel|Mux0~3_combout\,
	datac => \alu_op[0]~input_o\,
	datad => \ALU|data_in|D5_in|Sel_SR|Data_out|MUX_Sel|Out[31]~87_combout\,
	combout => \ALU|data_OUT|MUX_Sel|Mux0~4_combout\);

-- Location: LCCOMB_X38_Y28_N4
\ALU|data_OUT|MUX_Sel|Mux0~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ALU|data_OUT|MUX_Sel|Mux0~2_combout\ = (\ALU|data_OUT|MUX_Sel|Mux15~3_combout\ & (((\ALU|data_OUT|MUX_Sel|Mux0~4_combout\) # (!\ALU|data_OUT|MUX_Sel|Mux15~5_combout\)))) # (!\ALU|data_OUT|MUX_Sel|Mux15~3_combout\ & 
-- (\ALU|data_in|D1_in|SLL|ShiftLeft0~55_combout\ & ((\ALU|data_OUT|MUX_Sel|Mux15~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU|data_OUT|MUX_Sel|Mux15~3_combout\,
	datab => \ALU|data_in|D1_in|SLL|ShiftLeft0~55_combout\,
	datac => \ALU|data_OUT|MUX_Sel|Mux0~4_combout\,
	datad => \ALU|data_OUT|MUX_Sel|Mux15~5_combout\,
	combout => \ALU|data_OUT|MUX_Sel|Mux0~2_combout\);

-- Location: LCCOMB_X38_Y28_N22
\ALU|data_OUT|MUX_Sel|Mux0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ALU|data_OUT|MUX_Sel|Mux0~combout\ = (\ALU|data_OUT|MUX_Sel|Mux0~2_combout\ & (((\ALU|data_in|D1_in|SLL|ShiftLeft0~82_combout\) # (\ALU|data_OUT|MUX_Sel|Mux15~2_combout\)))) # (!\ALU|data_OUT|MUX_Sel|Mux0~2_combout\ & 
-- (\ALU|data_OUT|MUX_Sel|Mux0~1_combout\ & ((!\ALU|data_OUT|MUX_Sel|Mux15~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU|data_OUT|MUX_Sel|Mux0~1_combout\,
	datab => \ALU|data_in|D1_in|SLL|ShiftLeft0~82_combout\,
	datac => \ALU|data_OUT|MUX_Sel|Mux0~2_combout\,
	datad => \ALU|data_OUT|MUX_Sel|Mux15~2_combout\,
	combout => \ALU|data_OUT|MUX_Sel|Mux0~combout\);

ww_alu_data(0) <= \alu_data[0]~output_o\;

ww_alu_data(1) <= \alu_data[1]~output_o\;

ww_alu_data(2) <= \alu_data[2]~output_o\;

ww_alu_data(3) <= \alu_data[3]~output_o\;

ww_alu_data(4) <= \alu_data[4]~output_o\;

ww_alu_data(5) <= \alu_data[5]~output_o\;

ww_alu_data(6) <= \alu_data[6]~output_o\;

ww_alu_data(7) <= \alu_data[7]~output_o\;

ww_alu_data(8) <= \alu_data[8]~output_o\;

ww_alu_data(9) <= \alu_data[9]~output_o\;

ww_alu_data(10) <= \alu_data[10]~output_o\;

ww_alu_data(11) <= \alu_data[11]~output_o\;

ww_alu_data(12) <= \alu_data[12]~output_o\;

ww_alu_data(13) <= \alu_data[13]~output_o\;

ww_alu_data(14) <= \alu_data[14]~output_o\;

ww_alu_data(15) <= \alu_data[15]~output_o\;

ww_alu_data(16) <= \alu_data[16]~output_o\;

ww_alu_data(17) <= \alu_data[17]~output_o\;

ww_alu_data(18) <= \alu_data[18]~output_o\;

ww_alu_data(19) <= \alu_data[19]~output_o\;

ww_alu_data(20) <= \alu_data[20]~output_o\;

ww_alu_data(21) <= \alu_data[21]~output_o\;

ww_alu_data(22) <= \alu_data[22]~output_o\;

ww_alu_data(23) <= \alu_data[23]~output_o\;

ww_alu_data(24) <= \alu_data[24]~output_o\;

ww_alu_data(25) <= \alu_data[25]~output_o\;

ww_alu_data(26) <= \alu_data[26]~output_o\;

ww_alu_data(27) <= \alu_data[27]~output_o\;

ww_alu_data(28) <= \alu_data[28]~output_o\;

ww_alu_data(29) <= \alu_data[29]~output_o\;

ww_alu_data(30) <= \alu_data[30]~output_o\;

ww_alu_data(31) <= \alu_data[31]~output_o\;
END structure;


