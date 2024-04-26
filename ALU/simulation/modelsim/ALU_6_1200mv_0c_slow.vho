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

-- DATE "04/25/2024 23:57:48"

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
-- alu_data[0]	=>  Location: PIN_T18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- alu_data[1]	=>  Location: PIN_P15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- alu_data[2]	=>  Location: PIN_V16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- alu_data[3]	=>  Location: PIN_V15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- alu_data[4]	=>  Location: PIN_R16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- alu_data[5]	=>  Location: PIN_B9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- alu_data[6]	=>  Location: PIN_U12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- alu_data[7]	=>  Location: PIN_U18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- alu_data[8]	=>  Location: PIN_V13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- alu_data[9]	=>  Location: PIN_N15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- alu_data[10]	=>  Location: PIN_A9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- alu_data[11]	=>  Location: PIN_E12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- alu_data[12]	=>  Location: PIN_B13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- alu_data[13]	=>  Location: PIN_B16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- alu_data[14]	=>  Location: PIN_A18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- alu_data[15]	=>  Location: PIN_T10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- alu_data[16]	=>  Location: PIN_R10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- alu_data[17]	=>  Location: PIN_C10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- alu_data[18]	=>  Location: PIN_A10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- alu_data[19]	=>  Location: PIN_F16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- alu_data[20]	=>  Location: PIN_F18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- alu_data[21]	=>  Location: PIN_G17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- alu_data[22]	=>  Location: PIN_A15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- alu_data[23]	=>  Location: PIN_F15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- alu_data[24]	=>  Location: PIN_P10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- alu_data[25]	=>  Location: PIN_D13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- alu_data[26]	=>  Location: PIN_P12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- alu_data[27]	=>  Location: PIN_J17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- alu_data[28]	=>  Location: PIN_A7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- alu_data[29]	=>  Location: PIN_T12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- alu_data[30]	=>  Location: PIN_R18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- alu_data[31]	=>  Location: PIN_V10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- funct7	=>  Location: PIN_H18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- operand_a[31]	=>  Location: PIN_J18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- operand_b[0]	=>  Location: PIN_R11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- operand_b[3]	=>  Location: PIN_N17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- operand_b[2]	=>  Location: PIN_V11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- operand_b[1]	=>  Location: PIN_V12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- operand_b[4]	=>  Location: PIN_V14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- operand_a[15]	=>  Location: PIN_T11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- operand_a[13]	=>  Location: PIN_B10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- operand_a[14]	=>  Location: PIN_R9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- operand_a[12]	=>  Location: PIN_D11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- operand_a[11]	=>  Location: PIN_D10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- operand_a[9]	=>  Location: PIN_K16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- operand_a[10]	=>  Location: PIN_U16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- operand_a[8]	=>  Location: PIN_G15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- operand_a[1]	=>  Location: PIN_U13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- operand_a[3]	=>  Location: PIN_R13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- operand_a[2]	=>  Location: PIN_G16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- operand_a[0]	=>  Location: PIN_K15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- operand_a[7]	=>  Location: PIN_C13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- operand_a[6]	=>  Location: PIN_E18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- operand_a[5]	=>  Location: PIN_D12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- operand_a[4]	=>  Location: PIN_C12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- operand_a[23]	=>  Location: PIN_J16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- operand_a[21]	=>  Location: PIN_U10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- operand_a[22]	=>  Location: PIN_T13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- operand_a[20]	=>  Location: PIN_E10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- operand_a[19]	=>  Location: PIN_C9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- operand_a[17]	=>  Location: PIN_D14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- operand_a[18]	=>  Location: PIN_G18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- operand_a[16]	=>  Location: PIN_R12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- operand_a[29]	=>  Location: PIN_D16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- operand_a[28]	=>  Location: PIN_P13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- operand_a[30]	=>  Location: PIN_E15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- operand_a[27]	=>  Location: PIN_L16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- operand_a[25]	=>  Location: PIN_M18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- operand_a[26]	=>  Location: PIN_C15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- operand_a[24]	=>  Location: PIN_M16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- alu_op[0]	=>  Location: PIN_F17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- alu_op[1]	=>  Location: PIN_L18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- operand_b[31]	=>  Location: PIN_R17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- operand_b[30]	=>  Location: PIN_M17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- operand_b[29]	=>  Location: PIN_A17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- operand_b[28]	=>  Location: PIN_T16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- operand_b[27]	=>  Location: PIN_D18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- operand_b[26]	=>  Location: PIN_U15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- operand_b[25]	=>  Location: PIN_T14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- operand_b[24]	=>  Location: PIN_H16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- operand_b[23]	=>  Location: PIN_V17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- operand_b[22]	=>  Location: PIN_A11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- operand_b[21]	=>  Location: PIN_E16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- operand_b[20]	=>  Location: PIN_D15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- operand_b[19]	=>  Location: PIN_B15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- operand_b[18]	=>  Location: PIN_A8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- operand_b[17]	=>  Location: PIN_C14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- operand_b[16]	=>  Location: PIN_P18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- operand_b[15]	=>  Location: PIN_C11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- operand_b[14]	=>  Location: PIN_A12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- operand_b[13]	=>  Location: PIN_B12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- operand_b[12]	=>  Location: PIN_D17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- operand_b[11]	=>  Location: PIN_A14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- operand_b[10]	=>  Location: PIN_A13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- operand_b[9]	=>  Location: PIN_D9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- operand_b[8]	=>  Location: PIN_V18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- operand_b[7]	=>  Location: PIN_L15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- operand_b[6]	=>  Location: PIN_A16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- operand_b[5]	=>  Location: PIN_N16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- alu_op[2]	=>  Location: PIN_N18,	 I/O Standard: 2.5 V,	 Current Strength: Default


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
SIGNAL \operand_a[0]~input_o\ : std_logic;
SIGNAL \alu_op[1]~input_o\ : std_logic;
SIGNAL \alu_op[0]~input_o\ : std_logic;
SIGNAL \operand_b[0]~input_o\ : std_logic;
SIGNAL \operand_a[20]~input_o\ : std_logic;
SIGNAL \operand_b[1]~input_o\ : std_logic;
SIGNAL \operand_a[22]~input_o\ : std_logic;
SIGNAL \ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~21_combout\ : std_logic;
SIGNAL \operand_a[21]~input_o\ : std_logic;
SIGNAL \operand_a[23]~input_o\ : std_logic;
SIGNAL \ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~20_combout\ : std_logic;
SIGNAL \ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~22_combout\ : std_logic;
SIGNAL \operand_b[2]~input_o\ : std_logic;
SIGNAL \operand_b[3]~input_o\ : std_logic;
SIGNAL \operand_a[16]~input_o\ : std_logic;
SIGNAL \operand_a[18]~input_o\ : std_logic;
SIGNAL \ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~24_combout\ : std_logic;
SIGNAL \operand_a[19]~input_o\ : std_logic;
SIGNAL \operand_a[17]~input_o\ : std_logic;
SIGNAL \ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~23_combout\ : std_logic;
SIGNAL \ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~25_combout\ : std_logic;
SIGNAL \ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~26_combout\ : std_logic;
SIGNAL \operand_a[27]~input_o\ : std_logic;
SIGNAL \operand_a[25]~input_o\ : std_logic;
SIGNAL \ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~30_combout\ : std_logic;
SIGNAL \operand_a[24]~input_o\ : std_logic;
SIGNAL \operand_a[26]~input_o\ : std_logic;
SIGNAL \ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~31_combout\ : std_logic;
SIGNAL \ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~32_combout\ : std_logic;
SIGNAL \operand_a[28]~input_o\ : std_logic;
SIGNAL \operand_a[29]~input_o\ : std_logic;
SIGNAL \ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~27_combout\ : std_logic;
SIGNAL \operand_a[31]~input_o\ : std_logic;
SIGNAL \operand_a[30]~input_o\ : std_logic;
SIGNAL \ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~28_combout\ : std_logic;
SIGNAL \ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~29_combout\ : std_logic;
SIGNAL \ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~33_combout\ : std_logic;
SIGNAL \ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~34_combout\ : std_logic;
SIGNAL \operand_a[9]~input_o\ : std_logic;
SIGNAL \operand_a[11]~input_o\ : std_logic;
SIGNAL \ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~9_combout\ : std_logic;
SIGNAL \operand_a[10]~input_o\ : std_logic;
SIGNAL \operand_a[8]~input_o\ : std_logic;
SIGNAL \ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~10_combout\ : std_logic;
SIGNAL \ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~11_combout\ : std_logic;
SIGNAL \operand_a[13]~input_o\ : std_logic;
SIGNAL \operand_a[15]~input_o\ : std_logic;
SIGNAL \ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~6_combout\ : std_logic;
SIGNAL \operand_a[14]~input_o\ : std_logic;
SIGNAL \operand_a[12]~input_o\ : std_logic;
SIGNAL \ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~7_combout\ : std_logic;
SIGNAL \ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~8_combout\ : std_logic;
SIGNAL \ALU|data_in|D5_in|Sel_SR|Data_out|MUX_Sel|Out[0]~11_combout\ : std_logic;
SIGNAL \operand_a[5]~input_o\ : std_logic;
SIGNAL \operand_a[4]~input_o\ : std_logic;
SIGNAL \ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~17_combout\ : std_logic;
SIGNAL \operand_a[6]~input_o\ : std_logic;
SIGNAL \operand_a[7]~input_o\ : std_logic;
SIGNAL \ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~16_combout\ : std_logic;
SIGNAL \ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~18_combout\ : std_logic;
SIGNAL \operand_a[1]~input_o\ : std_logic;
SIGNAL \ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~12_combout\ : std_logic;
SIGNAL \ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~14_combout\ : std_logic;
SIGNAL \operand_a[3]~input_o\ : std_logic;
SIGNAL \operand_a[2]~input_o\ : std_logic;
SIGNAL \ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~13_combout\ : std_logic;
SIGNAL \ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~15_combout\ : std_logic;
SIGNAL \ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~19_combout\ : std_logic;
SIGNAL \operand_b[4]~input_o\ : std_logic;
SIGNAL \ALU|data_in|D5_in|Sel_SR|Data_out|MUX_Sel|Out[0]~12_combout\ : std_logic;
SIGNAL \ALU|data_in|D5_in|Sel_SR|SRA_out|SRA1|Add1~1_combout\ : std_logic;
SIGNAL \funct7~input_o\ : std_logic;
SIGNAL \ALU|data_in|D5_in|Sel_SR|Data_out|MUX_Sel|Out[0]~8_combout\ : std_logic;
SIGNAL \ALU|data_in|D5_in|Sel_SR|Data_out|MUX_Sel|Out[1]~9_combout\ : std_logic;
SIGNAL \ALU|data_in|D1_in|SLL|ShiftLeft0~4_combout\ : std_logic;
SIGNAL \ALU|data_in|D5_in|Sel_SR|SRA_out|SRA1|Add1~0_combout\ : std_logic;
SIGNAL \ALU|data_in|D5_in|Sel_SR|Data_out|MUX_Sel|Out[0]~10_combout\ : std_logic;
SIGNAL \ALU|data_in|D5_in|Sel_SR|Data_out|MUX_Sel|Out[0]~13_combout\ : std_logic;
SIGNAL \ALU|data_OUT|MUX_Sel|Mux31~3_combout\ : std_logic;
SIGNAL \ALU|data_OUT|MUX_Sel|Mux31~4_combout\ : std_logic;
SIGNAL \alu_op[2]~input_o\ : std_logic;
SIGNAL \operand_b[31]~input_o\ : std_logic;
SIGNAL \operand_b[30]~input_o\ : std_logic;
SIGNAL \operand_b[29]~input_o\ : std_logic;
SIGNAL \operand_b[28]~input_o\ : std_logic;
SIGNAL \operand_b[27]~input_o\ : std_logic;
SIGNAL \operand_b[26]~input_o\ : std_logic;
SIGNAL \operand_b[25]~input_o\ : std_logic;
SIGNAL \operand_b[24]~input_o\ : std_logic;
SIGNAL \operand_b[23]~input_o\ : std_logic;
SIGNAL \operand_b[22]~input_o\ : std_logic;
SIGNAL \operand_b[21]~input_o\ : std_logic;
SIGNAL \operand_b[20]~input_o\ : std_logic;
SIGNAL \operand_b[19]~input_o\ : std_logic;
SIGNAL \operand_b[18]~input_o\ : std_logic;
SIGNAL \operand_b[17]~input_o\ : std_logic;
SIGNAL \operand_b[16]~input_o\ : std_logic;
SIGNAL \operand_b[15]~input_o\ : std_logic;
SIGNAL \operand_b[14]~input_o\ : std_logic;
SIGNAL \operand_b[13]~input_o\ : std_logic;
SIGNAL \operand_b[12]~input_o\ : std_logic;
SIGNAL \operand_b[11]~input_o\ : std_logic;
SIGNAL \operand_b[10]~input_o\ : std_logic;
SIGNAL \operand_b[9]~input_o\ : std_logic;
SIGNAL \operand_b[8]~input_o\ : std_logic;
SIGNAL \operand_b[7]~input_o\ : std_logic;
SIGNAL \operand_b[6]~input_o\ : std_logic;
SIGNAL \operand_b[5]~input_o\ : std_logic;
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
SIGNAL \ALU|data_in|D3_in|SLTU|Mux0~0_combout\ : std_logic;
SIGNAL \ALU|data_in|D1_in|SLL|ShiftLeft0~5_combout\ : std_logic;
SIGNAL \ALU|data_in|D0_in|AddSub|adder_inst|adder_loop[0].full_adder|S~0_combout\ : std_logic;
SIGNAL \ALU|data_OUT|MUX_Sel|Mux31~0_combout\ : std_logic;
SIGNAL \ALU|data_OUT|MUX_Sel|Mux31~1_combout\ : std_logic;
SIGNAL \ALU|data_OUT|MUX_Sel|Mux31~2_combout\ : std_logic;
SIGNAL \ALU|data_in|D5_in|Sel_SR|Data_out|MUX_Sel|Out[3]~14_combout\ : std_logic;
SIGNAL \ALU|data_in|D5_in|Sel_SR|Data_out|MUX_Sel|Out[1]~15_combout\ : std_logic;
SIGNAL \ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~50_combout\ : std_logic;
SIGNAL \ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~51_combout\ : std_logic;
SIGNAL \ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~52_combout\ : std_logic;
SIGNAL \ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~53_combout\ : std_logic;
SIGNAL \ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~54_combout\ : std_logic;
SIGNAL \ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~45_combout\ : std_logic;
SIGNAL \ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~46_combout\ : std_logic;
SIGNAL \ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~47_combout\ : std_logic;
SIGNAL \ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~48_combout\ : std_logic;
SIGNAL \ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~49_combout\ : std_logic;
SIGNAL \ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~55_combout\ : std_logic;
SIGNAL \ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~41_combout\ : std_logic;
SIGNAL \ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~42_combout\ : std_logic;
SIGNAL \ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~43_combout\ : std_logic;
SIGNAL \ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~39_combout\ : std_logic;
SIGNAL \ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~40_combout\ : std_logic;
SIGNAL \ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~44_combout\ : std_logic;
SIGNAL \ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~37_combout\ : std_logic;
SIGNAL \ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~38_combout\ : std_logic;
SIGNAL \ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~35_combout\ : std_logic;
SIGNAL \ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~36_combout\ : std_logic;
SIGNAL \ALU|data_in|D5_in|Sel_SR|Data_out|MUX_Sel|Out[1]~16_combout\ : std_logic;
SIGNAL \ALU|data_in|D5_in|Sel_SR|Data_out|MUX_Sel|Out[1]~17_combout\ : std_logic;
SIGNAL \ALU|data_in|D5_in|Sel_SR|Data_out|MUX_Sel|Out[1]~18_combout\ : std_logic;
SIGNAL \ALU|data_OUT|MUX_Sel|Mux30~6_combout\ : std_logic;
SIGNAL \ALU|data_OUT|MUX_Sel|Mux30~7_combout\ : std_logic;
SIGNAL \ALU|data_in|D1_in|SLL|ShiftLeft0~6_combout\ : std_logic;
SIGNAL \ALU|data_in|D1_in|SLL|ShiftLeft0~100_combout\ : std_logic;
SIGNAL \ALU|data_in|D0_in|AddSub|adder_inst|adder_loop[0].full_adder|Cout~0_combout\ : std_logic;
SIGNAL \ALU|data_OUT|MUX_Sel|Mux30~2_combout\ : std_logic;
SIGNAL \ALU|data_OUT|MUX_Sel|Mux30~5_combout\ : std_logic;
SIGNAL \ALU|data_OUT|MUX_Sel|Mux30~4_combout\ : std_logic;
SIGNAL \ALU|data_in|D0_in|AddSub|adder_inst|adder_loop[1].full_adder|Cout~0_combout\ : std_logic;
SIGNAL \ALU|data_OUT|MUX_Sel|Mux29~2_combout\ : std_logic;
SIGNAL \ALU|data_in|D1_in|SLL|ShiftLeft0~8_combout\ : std_logic;
SIGNAL \ALU|data_in|D1_in|SLL|ShiftLeft0~9_combout\ : std_logic;
SIGNAL \ALU|data_in|D1_in|SLL|ShiftLeft0~101_combout\ : std_logic;
SIGNAL \ALU|data_OUT|MUX_Sel|Mux29~4_combout\ : std_logic;
SIGNAL \ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~59_combout\ : std_logic;
SIGNAL \ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~60_combout\ : std_logic;
SIGNAL \ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~61_combout\ : std_logic;
SIGNAL \ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~62_combout\ : std_logic;
SIGNAL \ALU|data_in|D5_in|Sel_SR|Data_out|MUX_Sel|Out[10]~20_combout\ : std_logic;
SIGNAL \ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~56_combout\ : std_logic;
SIGNAL \ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~57_combout\ : std_logic;
SIGNAL \ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~58_combout\ : std_logic;
SIGNAL \ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~63_combout\ : std_logic;
SIGNAL \ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~65_combout\ : std_logic;
SIGNAL \ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~66_combout\ : std_logic;
SIGNAL \ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~67_combout\ : std_logic;
SIGNAL \ALU|data_in|D1_in|SLL|ShiftLeft0~7_combout\ : std_logic;
SIGNAL \ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~64_combout\ : std_logic;
SIGNAL \ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~68_combout\ : std_logic;
SIGNAL \ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~69_combout\ : std_logic;
SIGNAL \ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~70_combout\ : std_logic;
SIGNAL \ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~71_combout\ : std_logic;
SIGNAL \ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~72_combout\ : std_logic;
SIGNAL \ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~73_combout\ : std_logic;
SIGNAL \ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~74_combout\ : std_logic;
SIGNAL \ALU|data_in|D5_in|Sel_SR|Data_out|MUX_Sel|Out[2]~19_combout\ : std_logic;
SIGNAL \ALU|data_in|D5_in|Sel_SR|Data_out|MUX_Sel|Out[2]~21_combout\ : std_logic;
SIGNAL \ALU|data_OUT|MUX_Sel|Mux29~5_combout\ : std_logic;
SIGNAL \ALU|data_OUT|MUX_Sel|Mux29~6_combout\ : std_logic;
SIGNAL \ALU|data_OUT|MUX_Sel|Mux29~3_combout\ : std_logic;
SIGNAL \ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~78_combout\ : std_logic;
SIGNAL \ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~79_combout\ : std_logic;
SIGNAL \ALU|data_in|D5_in|Sel_SR|Data_out|MUX_Sel|Out[11]~23_combout\ : std_logic;
SIGNAL \ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~75_combout\ : std_logic;
SIGNAL \ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~76_combout\ : std_logic;
SIGNAL \ALU|data_in|D1_in|SLL|ShiftLeft0~10_combout\ : std_logic;
SIGNAL \ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~77_combout\ : std_logic;
SIGNAL \ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~80_combout\ : std_logic;
SIGNAL \ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~84_combout\ : std_logic;
SIGNAL \ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~83_combout\ : std_logic;
SIGNAL \ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~85_combout\ : std_logic;
SIGNAL \ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~81_combout\ : std_logic;
SIGNAL \ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~82_combout\ : std_logic;
SIGNAL \ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~86_combout\ : std_logic;
SIGNAL \ALU|data_in|D5_in|Sel_SR|Data_out|MUX_Sel|Out[3]~22_combout\ : std_logic;
SIGNAL \ALU|data_in|D5_in|Sel_SR|Data_out|MUX_Sel|Out[3]~24_combout\ : std_logic;
SIGNAL \ALU|data_OUT|MUX_Sel|Mux28~5_combout\ : std_logic;
SIGNAL \ALU|data_OUT|MUX_Sel|Mux28~6_combout\ : std_logic;
SIGNAL \ALU|data_in|D1_in|SLL|ShiftLeft0~11_combout\ : std_logic;
SIGNAL \ALU|data_in|D1_in|SLL|ShiftLeft0~12_combout\ : std_logic;
SIGNAL \ALU|data_in|D0_in|AddSub|adder_inst|adder_loop[2].full_adder|Cout~0_combout\ : std_logic;
SIGNAL \ALU|data_OUT|MUX_Sel|Mux28~2_combout\ : std_logic;
SIGNAL \ALU|data_OUT|MUX_Sel|Mux28~4_combout\ : std_logic;
SIGNAL \ALU|data_OUT|MUX_Sel|Mux28~3_combout\ : std_logic;
SIGNAL \ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~87_combout\ : std_logic;
SIGNAL \ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~91_combout\ : std_logic;
SIGNAL \ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~92_combout\ : std_logic;
SIGNAL \ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~88_combout\ : std_logic;
SIGNAL \ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~89_combout\ : std_logic;
SIGNAL \ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~90_combout\ : std_logic;
SIGNAL \ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~93_combout\ : std_logic;
SIGNAL \ALU|data_in|D5_in|Sel_SR|Data_out|MUX_Sel|Out[0]~83_combout\ : std_logic;
SIGNAL \ALU|data_in|D5_in|Sel_SR|Data_out|MUX_Sel|Out[5]~25_combout\ : std_logic;
SIGNAL \ALU|data_in|D5_in|Sel_SR|Data_out|MUX_Sel|Out[4]~26_combout\ : std_logic;
SIGNAL \ALU|data_OUT|MUX_Sel|Mux27~3_combout\ : std_logic;
SIGNAL \ALU|data_OUT|MUX_Sel|Mux27~4_combout\ : std_logic;
SIGNAL \ALU|data_in|D1_in|SLL|ShiftLeft0~13_combout\ : std_logic;
SIGNAL \ALU|data_in|D1_in|SLL|ShiftLeft0~14_combout\ : std_logic;
SIGNAL \ALU|data_in|D1_in|SLL|ShiftLeft0~15_combout\ : std_logic;
SIGNAL \ALU|data_in|D1_in|SLL|ShiftLeft0~16_combout\ : std_logic;
SIGNAL \ALU|data_in|D0_in|AddSub|adder_inst|adder_loop[3].full_adder|Cout~0_combout\ : std_logic;
SIGNAL \ALU|data_OUT|MUX_Sel|Mux27~0_combout\ : std_logic;
SIGNAL \ALU|data_OUT|MUX_Sel|Mux27~1_combout\ : std_logic;
SIGNAL \ALU|data_OUT|MUX_Sel|Mux27~2_combout\ : std_logic;
SIGNAL \ALU|data_in|D1_in|SLL|ShiftLeft0~17_combout\ : std_logic;
SIGNAL \ALU|data_in|D1_in|SLL|ShiftLeft0~18_combout\ : std_logic;
SIGNAL \ALU|data_in|D1_in|SLL|ShiftLeft0~19_combout\ : std_logic;
SIGNAL \ALU|data_in|D0_in|AddSub|adder_inst|adder_loop[4].full_adder|Cout~0_combout\ : std_logic;
SIGNAL \ALU|data_OUT|MUX_Sel|Mux26~0_combout\ : std_logic;
SIGNAL \ALU|data_OUT|MUX_Sel|Mux26~1_combout\ : std_logic;
SIGNAL \ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~96_combout\ : std_logic;
SIGNAL \ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~97_combout\ : std_logic;
SIGNAL \ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~94_combout\ : std_logic;
SIGNAL \ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~95_combout\ : std_logic;
SIGNAL \ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~98_combout\ : std_logic;
SIGNAL \ALU|data_in|D5_in|Sel_SR|Data_out|MUX_Sel|Out[5]~27_combout\ : std_logic;
SIGNAL \ALU|data_in|D5_in|Sel_SR|Data_out|MUX_Sel|Out[5]~28_combout\ : std_logic;
SIGNAL \ALU|data_OUT|MUX_Sel|Mux26~3_combout\ : std_logic;
SIGNAL \ALU|data_OUT|MUX_Sel|Mux26~4_combout\ : std_logic;
SIGNAL \ALU|data_OUT|MUX_Sel|Mux26~2_combout\ : std_logic;
SIGNAL \ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~99_combout\ : std_logic;
SIGNAL \ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~100_combout\ : std_logic;
SIGNAL \ALU|data_in|D5_in|Sel_SR|Data_out|MUX_Sel|Out[14]~29_combout\ : std_logic;
SIGNAL \ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~109_combout\ : std_logic;
SIGNAL \ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~101_combout\ : std_logic;
SIGNAL \ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~102_combout\ : std_logic;
SIGNAL \ALU|data_in|D5_in|Sel_SR|Data_out|MUX_Sel|Out[6]~30_combout\ : std_logic;
SIGNAL \ALU|data_in|D5_in|Sel_SR|Data_out|MUX_Sel|Out[6]~31_combout\ : std_logic;
SIGNAL \ALU|data_OUT|MUX_Sel|Mux25~3_combout\ : std_logic;
SIGNAL \ALU|data_OUT|MUX_Sel|Mux25~4_combout\ : std_logic;
SIGNAL \ALU|data_in|D0_in|AddSub|adder_inst|adder_loop[5].full_adder|Cout~0_combout\ : std_logic;
SIGNAL \ALU|data_OUT|MUX_Sel|Mux25~0_combout\ : std_logic;
SIGNAL \ALU|data_in|D1_in|SLL|ShiftLeft0~20_combout\ : std_logic;
SIGNAL \ALU|data_in|D1_in|SLL|ShiftLeft0~21_combout\ : std_logic;
SIGNAL \ALU|data_in|D1_in|SLL|ShiftLeft0~22_combout\ : std_logic;
SIGNAL \ALU|data_OUT|MUX_Sel|Mux25~1_combout\ : std_logic;
SIGNAL \ALU|data_OUT|MUX_Sel|Mux25~2_combout\ : std_logic;
SIGNAL \ALU|data_in|D5_in|Sel_SR|Data_out|MUX_Sel|Out[15]~32_combout\ : std_logic;
SIGNAL \ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~105_combout\ : std_logic;
SIGNAL \ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~103_combout\ : std_logic;
SIGNAL \ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~104_combout\ : std_logic;
SIGNAL \ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~106_combout\ : std_logic;
SIGNAL \ALU|data_in|D5_in|Sel_SR|Data_out|MUX_Sel|Out[7]~33_combout\ : std_logic;
SIGNAL \ALU|data_OUT|MUX_Sel|Mux24~3_combout\ : std_logic;
SIGNAL \ALU|data_OUT|MUX_Sel|Mux24~4_combout\ : std_logic;
SIGNAL \ALU|data_in|D1_in|SLL|ShiftLeft0~24_combout\ : std_logic;
SIGNAL \ALU|data_in|D1_in|SLL|ShiftLeft0~25_combout\ : std_logic;
SIGNAL \ALU|data_in|D1_in|SLL|ShiftLeft0~23_combout\ : std_logic;
SIGNAL \ALU|data_in|D1_in|SLL|ShiftLeft0~26_combout\ : std_logic;
SIGNAL \ALU|data_in|D0_in|AddSub|adder_inst|adder_loop[6].full_adder|Cout~0_combout\ : std_logic;
SIGNAL \ALU|data_OUT|MUX_Sel|Mux24~0_combout\ : std_logic;
SIGNAL \ALU|data_OUT|MUX_Sel|Mux24~1_combout\ : std_logic;
SIGNAL \ALU|data_OUT|MUX_Sel|Mux24~2_combout\ : std_logic;
SIGNAL \ALU|data_in|D5_in|Sel_SR|Data_out|MUX_Sel|Out[8]~36_combout\ : std_logic;
SIGNAL \ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~107_combout\ : std_logic;
SIGNAL \ALU|data_in|D5_in|Sel_SR|Data_out|MUX_Sel|Out[9]~34_combout\ : std_logic;
SIGNAL \ALU|data_in|D5_in|Sel_SR|Data_out|MUX_Sel|Out[8]~35_combout\ : std_logic;
SIGNAL \ALU|data_in|D5_in|Sel_SR|Data_out|MUX_Sel|Out[8]~37_combout\ : std_logic;
SIGNAL \ALU|data_in|D5_in|Sel_SR|Data_out|MUX_Sel|Out[8]~38_combout\ : std_logic;
SIGNAL \ALU|data_OUT|MUX_Sel|Mux23~2_combout\ : std_logic;
SIGNAL \ALU|data_OUT|MUX_Sel|Mux23~3_combout\ : std_logic;
SIGNAL \ALU|data_in|D0_in|AddSub|adder_inst|adder_loop[7].full_adder|Cout~0_combout\ : std_logic;
SIGNAL \ALU|data_OUT|MUX_Sel|Mux23~4_combout\ : std_logic;
SIGNAL \ALU|data_in|D1_in|SLL|ShiftLeft0~27_combout\ : std_logic;
SIGNAL \ALU|data_in|D1_in|SLL|ShiftLeft0~28_combout\ : std_logic;
SIGNAL \ALU|data_in|D1_in|SLL|ShiftLeft0~29_combout\ : std_logic;
SIGNAL \ALU|data_in|D1_in|SLL|ShiftLeft0~30_combout\ : std_logic;
SIGNAL \ALU|data_OUT|MUX_Sel|Mux23~6_combout\ : std_logic;
SIGNAL \ALU|data_OUT|MUX_Sel|Mux23~5_combout\ : std_logic;
SIGNAL \ALU|data_in|D1_in|SLL|ShiftLeft0~31_combout\ : std_logic;
SIGNAL \ALU|data_in|D1_in|SLL|ShiftLeft0~32_combout\ : std_logic;
SIGNAL \ALU|data_in|D1_in|SLL|ShiftLeft0~33_combout\ : std_logic;
SIGNAL \ALU|data_in|D1_in|SLL|ShiftLeft0~34_combout\ : std_logic;
SIGNAL \ALU|data_in|D0_in|AddSub|adder_inst|adder_loop[8].full_adder|Cout~0_combout\ : std_logic;
SIGNAL \ALU|data_in|D0_in|AddSub|adder_inst|adder_loop[8].full_adder|Cout~1_combout\ : std_logic;
SIGNAL \ALU|data_in|D0_in|AddSub|adder_inst|adder_loop[9].full_adder|S~combout\ : std_logic;
SIGNAL \ALU|data_OUT|MUX_Sel|Mux22~3_combout\ : std_logic;
SIGNAL \ALU|data_in|D5_in|Sel_SR|Data_out|MUX_Sel|Out[9]~40_combout\ : std_logic;
SIGNAL \ALU|data_in|D5_in|Sel_SR|Data_out|MUX_Sel|Out[9]~39_combout\ : std_logic;
SIGNAL \ALU|data_in|D5_in|Sel_SR|Data_out|MUX_Sel|Out[9]~84_combout\ : std_logic;
SIGNAL \ALU|data_in|D5_in|Sel_SR|Data_out|MUX_Sel|Out[9]~41_combout\ : std_logic;
SIGNAL \ALU|data_in|D5_in|Sel_SR|Data_out|MUX_Sel|Out[9]~42_combout\ : std_logic;
SIGNAL \ALU|data_OUT|MUX_Sel|Mux22~4_combout\ : std_logic;
SIGNAL \ALU|data_OUT|MUX_Sel|Mux22~5_combout\ : std_logic;
SIGNAL \ALU|data_OUT|MUX_Sel|Mux22~2_combout\ : std_logic;
SIGNAL \ALU|data_in|D0_in|AddSub|adder_inst|adder_loop[9].full_adder|Cout~0_combout\ : std_logic;
SIGNAL \ALU|data_OUT|MUX_Sel|Mux21~2_combout\ : std_logic;
SIGNAL \ALU|data_in|D1_in|SLL|ShiftLeft0~35_combout\ : std_logic;
SIGNAL \ALU|data_in|D1_in|SLL|ShiftLeft0~36_combout\ : std_logic;
SIGNAL \ALU|data_in|D1_in|SLL|ShiftLeft0~37_combout\ : std_logic;
SIGNAL \ALU|data_in|D1_in|SLL|ShiftLeft0~38_combout\ : std_logic;
SIGNAL \ALU|data_OUT|MUX_Sel|Mux21~4_combout\ : std_logic;
SIGNAL \ALU|data_OUT|MUX_Sel|Mux21~5_combout\ : std_logic;
SIGNAL \ALU|data_in|D5_in|Sel_SR|Data_out|MUX_Sel|Out[10]~44_combout\ : std_logic;
SIGNAL \ALU|data_in|D5_in|Sel_SR|Data_out|MUX_Sel|Out[10]~45_combout\ : std_logic;
SIGNAL \ALU|data_in|D5_in|Sel_SR|Data_out|MUX_Sel|Out[10]~43_combout\ : std_logic;
SIGNAL \ALU|data_in|D5_in|Sel_SR|Data_out|MUX_Sel|Out[10]~46_combout\ : std_logic;
SIGNAL \ALU|data_OUT|MUX_Sel|Mux21~6_combout\ : std_logic;
SIGNAL \ALU|data_OUT|MUX_Sel|Mux21~3_combout\ : std_logic;
SIGNAL \ALU|data_in|D0_in|AddSub|adder_inst|adder_loop[10].full_adder|Cout~0_combout\ : std_logic;
SIGNAL \ALU|data_OUT|MUX_Sel|Mux20~4_combout\ : std_logic;
SIGNAL \ALU|data_in|D1_in|SLL|ShiftLeft0~39_combout\ : std_logic;
SIGNAL \ALU|data_in|D1_in|SLL|ShiftLeft0~40_combout\ : std_logic;
SIGNAL \ALU|data_in|D1_in|SLL|ShiftLeft0~41_combout\ : std_logic;
SIGNAL \ALU|data_in|D1_in|SLL|ShiftLeft0~42_combout\ : std_logic;
SIGNAL \ALU|data_OUT|MUX_Sel|Mux20~6_combout\ : std_logic;
SIGNAL \ALU|data_in|D5_in|Sel_SR|Data_out|MUX_Sel|Out[11]~48_combout\ : std_logic;
SIGNAL \ALU|data_in|D5_in|Sel_SR|Data_out|MUX_Sel|Out[11]~47_combout\ : std_logic;
SIGNAL \ALU|data_in|D5_in|Sel_SR|Data_out|MUX_Sel|Out[11]~49_combout\ : std_logic;
SIGNAL \ALU|data_OUT|MUX_Sel|Mux20~2_combout\ : std_logic;
SIGNAL \ALU|data_OUT|MUX_Sel|Mux20~3_combout\ : std_logic;
SIGNAL \ALU|data_OUT|MUX_Sel|Mux20~5_combout\ : std_logic;
SIGNAL \ALU|data_in|D5_in|Sel_SR|Data_out|MUX_Sel|Out[13]~52_combout\ : std_logic;
SIGNAL \ALU|data_in|D5_in|Sel_SR|Data_out|MUX_Sel|Out[12]~50_combout\ : std_logic;
SIGNAL \ALU|data_in|D5_in|Sel_SR|Data_out|MUX_Sel|Out[12]~51_combout\ : std_logic;
SIGNAL \ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~110_combout\ : std_logic;
SIGNAL \ALU|data_in|D5_in|Sel_SR|Data_out|MUX_Sel|Out[12]~53_combout\ : std_logic;
SIGNAL \ALU|data_in|D4_in|Xor1|S[12]~0_combout\ : std_logic;
SIGNAL \ALU|data_OUT|MUX_Sel|Mux19~2_combout\ : std_logic;
SIGNAL \ALU|data_OUT|MUX_Sel|Mux19~3_combout\ : std_logic;
SIGNAL \ALU|data_in|D0_in|AddSub|adder_inst|adder_loop[11].full_adder|Cout~0_combout\ : std_logic;
SIGNAL \ALU|data_in|D0_in|AddSub|adder_inst|adder_loop[12].full_adder|S~combout\ : std_logic;
SIGNAL \ALU|data_in|D1_in|SLL|ShiftLeft0~43_combout\ : std_logic;
SIGNAL \ALU|data_in|D1_in|SLL|ShiftLeft0~44_combout\ : std_logic;
SIGNAL \ALU|data_in|D1_in|SLL|ShiftLeft0~45_combout\ : std_logic;
SIGNAL \ALU|data_in|D1_in|SLL|ShiftLeft0~46_combout\ : std_logic;
SIGNAL \ALU|data_OUT|MUX_Sel|Mux19~5_combout\ : std_logic;
SIGNAL \ALU|data_OUT|MUX_Sel|Mux19~4_combout\ : std_logic;
SIGNAL \ALU|data_in|D0_in|AddSub|adder_inst|adder_loop[11].full_adder|Cout~1_combout\ : std_logic;
SIGNAL \ALU|data_in|D0_in|AddSub|adder_inst|adder_loop[12].full_adder|Cout~0_combout\ : std_logic;
SIGNAL \ALU|data_OUT|MUX_Sel|Mux18~2_combout\ : std_logic;
SIGNAL \ALU|data_in|D1_in|SLL|ShiftLeft0~47_combout\ : std_logic;
SIGNAL \ALU|data_in|D1_in|SLL|ShiftLeft0~48_combout\ : std_logic;
SIGNAL \ALU|data_in|D1_in|SLL|ShiftLeft0~49_combout\ : std_logic;
SIGNAL \ALU|data_in|D1_in|SLL|ShiftLeft0~50_combout\ : std_logic;
SIGNAL \ALU|data_OUT|MUX_Sel|Mux18~4_combout\ : std_logic;
SIGNAL \ALU|data_in|D5_in|Sel_SR|Data_out|MUX_Sel|Out[13]~54_combout\ : std_logic;
SIGNAL \ALU|data_in|D5_in|Sel_SR|Data_out|MUX_Sel|Out[13]~55_combout\ : std_logic;
SIGNAL \ALU|data_in|D5_in|Sel_SR|Data_out|MUX_Sel|Out[13]~56_combout\ : std_logic;
SIGNAL \ALU|data_in|D5_in|Sel_SR|Data_out|MUX_Sel|Out[13]~57_combout\ : std_logic;
SIGNAL \ALU|data_OUT|MUX_Sel|Mux18~5_combout\ : std_logic;
SIGNAL \ALU|data_OUT|MUX_Sel|Mux18~6_combout\ : std_logic;
SIGNAL \ALU|data_OUT|MUX_Sel|Mux18~3_combout\ : std_logic;
SIGNAL \ALU|data_in|D4_in|Xor1|S[14]~1_combout\ : std_logic;
SIGNAL \ALU|data_in|D0_in|AddSub|adder_inst|adder_loop[13].full_adder|Cout~0_combout\ : std_logic;
SIGNAL \ALU|data_in|D1_in|SLL|ShiftLeft0~51_combout\ : std_logic;
SIGNAL \ALU|data_in|D1_in|SLL|ShiftLeft0~52_combout\ : std_logic;
SIGNAL \ALU|data_in|D1_in|SLL|ShiftLeft0~53_combout\ : std_logic;
SIGNAL \ALU|data_OUT|MUX_Sel|Mux30~3_combout\ : std_logic;
SIGNAL \ALU|data_OUT|MUX_Sel|Mux17~2_combout\ : std_logic;
SIGNAL \ALU|data_OUT|MUX_Sel|Mux17~3_combout\ : std_logic;
SIGNAL \ALU|data_in|D5_in|Sel_SR|Data_out|MUX_Sel|Out[14]~59_combout\ : std_logic;
SIGNAL \ALU|data_in|D5_in|Sel_SR|Data_out|MUX_Sel|Out[14]~58_combout\ : std_logic;
SIGNAL \ALU|data_in|D5_in|Sel_SR|Data_out|MUX_Sel|Out[14]~60_combout\ : std_logic;
SIGNAL \ALU|data_OUT|MUX_Sel|Mux17~0_combout\ : std_logic;
SIGNAL \ALU|data_OUT|MUX_Sel|Mux17~1_combout\ : std_logic;
SIGNAL \ALU|data_OUT|MUX_Sel|Mux17~4_combout\ : std_logic;
SIGNAL \ALU|data_in|D5_in|Sel_SR|Data_out|MUX_Sel|Out[15]~61_combout\ : std_logic;
SIGNAL \ALU|data_in|D5_in|Sel_SR|Data_out|MUX_Sel|Out[15]~62_combout\ : std_logic;
SIGNAL \ALU|data_in|D5_in|Sel_SR|Data_out|MUX_Sel|Out[15]~63_combout\ : std_logic;
SIGNAL \ALU|data_OUT|MUX_Sel|Mux16~5_combout\ : std_logic;
SIGNAL \ALU|data_OUT|MUX_Sel|Mux16~6_combout\ : std_logic;
SIGNAL \ALU|data_in|D0_in|AddSub|adder_inst|adder_loop[14].full_adder|Cout~0_combout\ : std_logic;
SIGNAL \ALU|data_OUT|MUX_Sel|Mux16~2_combout\ : std_logic;
SIGNAL \ALU|data_in|D1_in|SLL|ShiftLeft0~54_combout\ : std_logic;
SIGNAL \ALU|data_in|D1_in|SLL|ShiftLeft0~55_combout\ : std_logic;
SIGNAL \ALU|data_in|D1_in|SLL|ShiftLeft0~56_combout\ : std_logic;
SIGNAL \ALU|data_in|D1_in|SLL|ShiftLeft0~57_combout\ : std_logic;
SIGNAL \ALU|data_OUT|MUX_Sel|Mux16~4_combout\ : std_logic;
SIGNAL \ALU|data_OUT|MUX_Sel|Mux16~3_combout\ : std_logic;
SIGNAL \ALU|data_in|D1_in|SLL|ShiftLeft0~61_combout\ : std_logic;
SIGNAL \ALU|data_OUT|MUX_Sel|Mux15~2_combout\ : std_logic;
SIGNAL \ALU|data_in|D4_in|Xor1|S[16]~2_combout\ : std_logic;
SIGNAL \ALU|data_in|D0_in|AddSub|adder_inst|adder_loop[16].full_adder|S~combout\ : std_logic;
SIGNAL \ALU|data_in|D1_in|SLL|ShiftLeft0~58_combout\ : std_logic;
SIGNAL \ALU|data_in|D1_in|SLL|ShiftLeft0~59_combout\ : std_logic;
SIGNAL \ALU|data_in|D1_in|SLL|ShiftLeft0~60_combout\ : std_logic;
SIGNAL \ALU|data_OUT|MUX_Sel|Mux15~3_combout\ : std_logic;
SIGNAL \ALU|data_OUT|MUX_Sel|Mux15~4_combout\ : std_logic;
SIGNAL \ALU|data_in|D5_in|Sel_SR|Data_out|MUX_Sel|Out[16]~64_combout\ : std_logic;
SIGNAL \ALU|data_in|D5_in|Sel_SR|Data_out|MUX_Sel|Out[16]~65_combout\ : std_logic;
SIGNAL \ALU|data_OUT|MUX_Sel|Mux15~0_combout\ : std_logic;
SIGNAL \ALU|data_OUT|MUX_Sel|Mux15~1_combout\ : std_logic;
SIGNAL \ALU|data_OUT|MUX_Sel|Mux15~5_combout\ : std_logic;
SIGNAL \ALU|data_in|D5_in|Sel_SR|Data_out|MUX_Sel|Out[17]~85_combout\ : std_logic;
SIGNAL \ALU|data_in|D5_in|Sel_SR|Data_out|MUX_Sel|Out[17]~66_combout\ : std_logic;
SIGNAL \ALU|data_OUT|MUX_Sel|Mux14~3_combout\ : std_logic;
SIGNAL \ALU|data_OUT|MUX_Sel|Mux14~4_combout\ : std_logic;
SIGNAL \ALU|data_in|D1_in|SLL|ShiftLeft0~62_combout\ : std_logic;
SIGNAL \ALU|data_in|D1_in|SLL|ShiftLeft0~63_combout\ : std_logic;
SIGNAL \ALU|data_in|D1_in|SLL|ShiftLeft0~64_combout\ : std_logic;
SIGNAL \ALU|data_OUT|MUX_Sel|Mux14~0_combout\ : std_logic;
SIGNAL \ALU|data_in|D0_in|AddSub|adder_inst|adder_loop[15].full_adder|Cout~0_combout\ : std_logic;
SIGNAL \ALU|data_in|D0_in|AddSub|adder_inst|adder_loop[16].full_adder|Cout~0_combout\ : std_logic;
SIGNAL \ALU|data_in|D0_in|AddSub|adder_inst|adder_loop[17].full_adder|S~combout\ : std_logic;
SIGNAL \ALU|data_OUT|MUX_Sel|Mux14~1_combout\ : std_logic;
SIGNAL \ALU|data_OUT|MUX_Sel|Mux14~2_combout\ : std_logic;
SIGNAL \ALU|data_in|D4_in|Xor1|S[18]~3_combout\ : std_logic;
SIGNAL \ALU|data_in|D5_in|Sel_SR|Data_out|MUX_Sel|Out[18]~67_combout\ : std_logic;
SIGNAL \ALU|data_in|D5_in|Sel_SR|Data_out|MUX_Sel|Out[18]~68_combout\ : std_logic;
SIGNAL \ALU|data_OUT|MUX_Sel|Mux13~0_combout\ : std_logic;
SIGNAL \ALU|data_OUT|MUX_Sel|Mux13~1_combout\ : std_logic;
SIGNAL \ALU|data_in|D1_in|SLL|ShiftLeft0~65_combout\ : std_logic;
SIGNAL \ALU|data_in|D1_in|SLL|ShiftLeft0~66_combout\ : std_logic;
SIGNAL \ALU|data_in|D1_in|SLL|ShiftLeft0~67_combout\ : std_logic;
SIGNAL \ALU|data_in|D0_in|AddSub|adder_inst|adder_loop[18].full_adder|S~combout\ : std_logic;
SIGNAL \ALU|data_OUT|MUX_Sel|Mux13~2_combout\ : std_logic;
SIGNAL \ALU|data_OUT|MUX_Sel|Mux13~3_combout\ : std_logic;
SIGNAL \ALU|data_OUT|MUX_Sel|Mux13~4_combout\ : std_logic;
SIGNAL \ALU|data_in|D5_in|Sel_SR|Data_out|MUX_Sel|Out[19]~69_combout\ : std_logic;
SIGNAL \ALU|data_in|D5_in|Sel_SR|Data_out|MUX_Sel|Out[19]~70_combout\ : std_logic;
SIGNAL \ALU|data_OUT|MUX_Sel|Mux12~3_combout\ : std_logic;
SIGNAL \ALU|data_OUT|MUX_Sel|Mux12~4_combout\ : std_logic;
SIGNAL \ALU|data_in|D0_in|AddSub|adder_inst|adder_loop[18].full_adder|Cout~0_combout\ : std_logic;
SIGNAL \ALU|data_in|D0_in|AddSub|adder_inst|adder_loop[18].full_adder|Cout~1_combout\ : std_logic;
SIGNAL \ALU|data_in|D0_in|AddSub|adder_inst|adder_loop[19].full_adder|S~combout\ : std_logic;
SIGNAL \ALU|data_in|D1_in|SLL|ShiftLeft0~68_combout\ : std_logic;
SIGNAL \ALU|data_in|D1_in|SLL|ShiftLeft0~69_combout\ : std_logic;
SIGNAL \ALU|data_in|D1_in|SLL|ShiftLeft0~70_combout\ : std_logic;
SIGNAL \ALU|data_OUT|MUX_Sel|Mux12~0_combout\ : std_logic;
SIGNAL \ALU|data_OUT|MUX_Sel|Mux12~1_combout\ : std_logic;
SIGNAL \ALU|data_OUT|MUX_Sel|Mux12~2_combout\ : std_logic;
SIGNAL \ALU|data_in|D4_in|Xor1|S[20]~4_combout\ : std_logic;
SIGNAL \ALU|data_in|D0_in|AddSub|adder_inst|adder_loop[17].full_adder|Cout~0_combout\ : std_logic;
SIGNAL \ALU|data_in|D0_in|AddSub|adder_inst|adder_loop[18].full_adder|Cout~2_combout\ : std_logic;
SIGNAL \ALU|data_in|D0_in|AddSub|adder_inst|adder_loop[20].full_adder|S~combout\ : std_logic;
SIGNAL \ALU|data_in|D1_in|SLL|ShiftLeft0~71_combout\ : std_logic;
SIGNAL \ALU|data_in|D1_in|SLL|ShiftLeft0~72_combout\ : std_logic;
SIGNAL \ALU|data_in|D1_in|SLL|ShiftLeft0~73_combout\ : std_logic;
SIGNAL \ALU|data_OUT|MUX_Sel|Mux11~2_combout\ : std_logic;
SIGNAL \ALU|data_in|D1_in|SLL|ShiftLeft0~74_combout\ : std_logic;
SIGNAL \ALU|data_OUT|MUX_Sel|Mux11~3_combout\ : std_logic;
SIGNAL \ALU|data_in|D5_in|Sel_SR|Data_out|MUX_Sel|Out[20]~71_combout\ : std_logic;
SIGNAL \ALU|data_OUT|MUX_Sel|Mux11~0_combout\ : std_logic;
SIGNAL \ALU|data_OUT|MUX_Sel|Mux11~1_combout\ : std_logic;
SIGNAL \ALU|data_OUT|MUX_Sel|Mux11~4_combout\ : std_logic;
SIGNAL \ALU|data_in|D5_in|Sel_SR|Data_out|MUX_Sel|Out[21]~72_combout\ : std_logic;
SIGNAL \ALU|data_OUT|MUX_Sel|Mux10~0_combout\ : std_logic;
SIGNAL \ALU|data_OUT|MUX_Sel|Mux10~1_combout\ : std_logic;
SIGNAL \ALU|data_in|D1_in|SLL|ShiftLeft0~75_combout\ : std_logic;
SIGNAL \ALU|data_in|D1_in|SLL|ShiftLeft0~76_combout\ : std_logic;
SIGNAL \ALU|data_in|D1_in|SLL|ShiftLeft0~77_combout\ : std_logic;
SIGNAL \ALU|data_OUT|MUX_Sel|Mux10~2_combout\ : std_logic;
SIGNAL \ALU|data_in|D0_in|AddSub|adder_inst|adder_loop[19].full_adder|Cout~0_combout\ : std_logic;
SIGNAL \ALU|data_in|D0_in|AddSub|adder_inst|adder_loop[20].full_adder|Cout~0_combout\ : std_logic;
SIGNAL \ALU|data_in|D0_in|AddSub|adder_inst|adder_loop[21].full_adder|S~combout\ : std_logic;
SIGNAL \ALU|data_in|D1_in|SLL|ShiftLeft0~78_combout\ : std_logic;
SIGNAL \ALU|data_OUT|MUX_Sel|Mux10~3_combout\ : std_logic;
SIGNAL \ALU|data_OUT|MUX_Sel|Mux10~4_combout\ : std_logic;
SIGNAL \ALU|data_in|D4_in|Xor1|S[22]~5_combout\ : std_logic;
SIGNAL \ALU|data_in|D0_in|AddSub|adder_inst|adder_loop[22].full_adder|S~combout\ : std_logic;
SIGNAL \ALU|data_in|D1_in|SLL|ShiftLeft0~79_combout\ : std_logic;
SIGNAL \ALU|data_in|D1_in|SLL|ShiftLeft0~80_combout\ : std_logic;
SIGNAL \ALU|data_in|D1_in|SLL|ShiftLeft0~81_combout\ : std_logic;
SIGNAL \ALU|data_OUT|MUX_Sel|Mux9~2_combout\ : std_logic;
SIGNAL \ALU|data_in|D1_in|SLL|ShiftLeft0~82_combout\ : std_logic;
SIGNAL \ALU|data_OUT|MUX_Sel|Mux9~3_combout\ : std_logic;
SIGNAL \ALU|data_in|D5_in|Sel_SR|Data_out|MUX_Sel|Out[22]~73_combout\ : std_logic;
SIGNAL \ALU|data_in|D5_in|Sel_SR|Data_out|MUX_Sel|Out[22]~74_combout\ : std_logic;
SIGNAL \ALU|data_OUT|MUX_Sel|Mux9~0_combout\ : std_logic;
SIGNAL \ALU|data_OUT|MUX_Sel|Mux9~1_combout\ : std_logic;
SIGNAL \ALU|data_OUT|MUX_Sel|Mux9~4_combout\ : std_logic;
SIGNAL \ALU|data_in|D5_in|Sel_SR|Data_out|MUX_Sel|Out[23]~86_combout\ : std_logic;
SIGNAL \ALU|data_in|D5_in|Sel_SR|Data_out|MUX_Sel|Out[23]~75_combout\ : std_logic;
SIGNAL \ALU|data_OUT|MUX_Sel|Mux8~3_combout\ : std_logic;
SIGNAL \ALU|data_OUT|MUX_Sel|Mux8~4_combout\ : std_logic;
SIGNAL \ALU|data_in|D1_in|SLL|ShiftLeft0~86_combout\ : std_logic;
SIGNAL \ALU|data_in|D0_in|AddSub|adder_inst|adder_loop[22].full_adder|Cout~0_combout\ : std_logic;
SIGNAL \ALU|data_in|D0_in|AddSub|adder_inst|adder_loop[22].full_adder|Cout~1_combout\ : std_logic;
SIGNAL \ALU|data_in|D0_in|AddSub|adder_inst|adder_loop[23].full_adder|S~combout\ : std_logic;
SIGNAL \ALU|data_in|D1_in|SLL|ShiftLeft0~83_combout\ : std_logic;
SIGNAL \ALU|data_in|D1_in|SLL|ShiftLeft0~84_combout\ : std_logic;
SIGNAL \ALU|data_in|D1_in|SLL|ShiftLeft0~85_combout\ : std_logic;
SIGNAL \ALU|data_OUT|MUX_Sel|Mux8~0_combout\ : std_logic;
SIGNAL \ALU|data_OUT|MUX_Sel|Mux8~1_combout\ : std_logic;
SIGNAL \ALU|data_OUT|MUX_Sel|Mux8~2_combout\ : std_logic;
SIGNAL \ALU|data_in|D5_in|Sel_SR|Data_out|MUX_Sel|Out[24]~76_combout\ : std_logic;
SIGNAL \ALU|data_in|D4_in|Xor1|S[24]~6_combout\ : std_logic;
SIGNAL \ALU|data_OUT|MUX_Sel|Mux7~0_combout\ : std_logic;
SIGNAL \ALU|data_OUT|MUX_Sel|Mux7~1_combout\ : std_logic;
SIGNAL \ALU|data_in|D0_in|AddSub|adder_inst|adder_loop[23].full_adder|Cout~0_combout\ : std_logic;
SIGNAL \ALU|data_in|D1_in|SLL|ShiftLeft0~87_combout\ : std_logic;
SIGNAL \ALU|data_in|D1_in|SLL|ShiftLeft0~88_combout\ : std_logic;
SIGNAL \ALU|data_OUT|MUX_Sel|Mux7~2_combout\ : std_logic;
SIGNAL \ALU|data_OUT|MUX_Sel|Mux7~3_combout\ : std_logic;
SIGNAL \ALU|data_OUT|MUX_Sel|Mux7~4_combout\ : std_logic;
SIGNAL \ALU|data_OUT|MUX_Sel|Mux7~5_combout\ : std_logic;
SIGNAL \ALU|data_in|D0_in|AddSub|adder_inst|adder_loop[24].full_adder|Cout~0_combout\ : std_logic;
SIGNAL \ALU|data_in|D0_in|AddSub|adder_inst|adder_loop[25].full_adder|S~0_combout\ : std_logic;
SIGNAL \ALU|data_in|D1_in|SLL|ShiftLeft0~89_combout\ : std_logic;
SIGNAL \ALU|data_in|D1_in|SLL|ShiftLeft0~90_combout\ : std_logic;
SIGNAL \ALU|data_OUT|MUX_Sel|Mux6~2_combout\ : std_logic;
SIGNAL \ALU|data_OUT|MUX_Sel|Mux6~3_combout\ : std_logic;
SIGNAL \ALU|data_OUT|MUX_Sel|Mux6~4_combout\ : std_logic;
SIGNAL \ALU|data_in|D5_in|Sel_SR|Data_out|MUX_Sel|Out[25]~77_combout\ : std_logic;
SIGNAL \ALU|data_OUT|MUX_Sel|Mux6~0_combout\ : std_logic;
SIGNAL \ALU|data_OUT|MUX_Sel|Mux6~1_combout\ : std_logic;
SIGNAL \ALU|data_OUT|MUX_Sel|Mux6~5_combout\ : std_logic;
SIGNAL \ALU|data_OUT|MUX_Sel|Mux5~9_combout\ : std_logic;
SIGNAL \ALU|data_in|D1_in|SLL|ShiftLeft0~91_combout\ : std_logic;
SIGNAL \ALU|data_in|D1_in|SLL|ShiftLeft0~92_combout\ : std_logic;
SIGNAL \ALU|data_in|D1_in|SLL|ShiftLeft0~93_combout\ : std_logic;
SIGNAL \ALU|data_OUT|MUX_Sel|Mux5~6_combout\ : std_logic;
SIGNAL \ALU|data_OUT|MUX_Sel|Mux5~7_combout\ : std_logic;
SIGNAL \ALU|data_OUT|MUX_Sel|Mux5~8_combout\ : std_logic;
SIGNAL \ALU|data_OUT|MUX_Sel|Mux5~5_combout\ : std_logic;
SIGNAL \ALU|data_OUT|MUX_Sel|Mux5~4_combout\ : std_logic;
SIGNAL \ALU|data_OUT|MUX_Sel|Mux5~10_combout\ : std_logic;
SIGNAL \ALU|data_OUT|MUX_Sel|Mux5~11_combout\ : std_logic;
SIGNAL \ALU|data_OUT|MUX_Sel|Mux4~4_combout\ : std_logic;
SIGNAL \ALU|data_in|D0_in|AddSub|adder_inst|adder_loop[25].full_adder|Cout~0_combout\ : std_logic;
SIGNAL \ALU|data_in|D0_in|AddSub|adder_inst|adder_loop[26].full_adder|Cout~0_combout\ : std_logic;
SIGNAL \ALU|data_OUT|MUX_Sel|Mux4~3_combout\ : std_logic;
SIGNAL \ALU|data_OUT|MUX_Sel|Mux4~5_combout\ : std_logic;
SIGNAL \ALU|data_in|D1_in|SLL|ShiftLeft0~94_combout\ : std_logic;
SIGNAL \ALU|data_in|D1_in|SLL|ShiftLeft0~95_combout\ : std_logic;
SIGNAL \ALU|data_in|D1_in|SLL|ShiftLeft0~96_combout\ : std_logic;
SIGNAL \ALU|data_OUT|MUX_Sel|Mux4~0_combout\ : std_logic;
SIGNAL \ALU|data_OUT|MUX_Sel|Mux4~1_combout\ : std_logic;
SIGNAL \ALU|data_in|D5_in|Sel_SR|Data_out|MUX_Sel|Out[27]~78_combout\ : std_logic;
SIGNAL \ALU|data_OUT|MUX_Sel|Mux4~2_combout\ : std_logic;
SIGNAL \ALU|data_OUT|MUX_Sel|Mux4~6_combout\ : std_logic;
SIGNAL \ALU|data_in|D4_in|Xor1|S[28]~7_combout\ : std_logic;
SIGNAL \ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~108_combout\ : std_logic;
SIGNAL \ALU|data_in|D5_in|Sel_SR|Data_out|MUX_Sel|Out[28]~79_combout\ : std_logic;
SIGNAL \ALU|data_OUT|MUX_Sel|Mux3~2_combout\ : std_logic;
SIGNAL \ALU|data_OUT|MUX_Sel|Mux3~3_combout\ : std_logic;
SIGNAL \ALU|data_OUT|MUX_Sel|Mux2~2_combout\ : std_logic;
SIGNAL \ALU|data_OUT|MUX_Sel|Mux2~1_combout\ : std_logic;
SIGNAL \ALU|data_in|D0_in|AddSub|adder_inst|adder_loop[28].full_adder|S~combout\ : std_logic;
SIGNAL \ALU|data_OUT|MUX_Sel|Mux3~4_combout\ : std_logic;
SIGNAL \ALU|data_in|D1_in|SLL|ShiftLeft0~97_combout\ : std_logic;
SIGNAL \ALU|data_OUT|MUX_Sel|Mux3~0_combout\ : std_logic;
SIGNAL \ALU|data_OUT|MUX_Sel|Mux3~1_combout\ : std_logic;
SIGNAL \ALU|data_OUT|MUX_Sel|Mux2~0_combout\ : std_logic;
SIGNAL \ALU|data_OUT|MUX_Sel|Mux3~combout\ : std_logic;
SIGNAL \ALU|data_in|D5_in|Sel_SR|Data_out|MUX_Sel|Out[29]~80_combout\ : std_logic;
SIGNAL \ALU|data_OUT|MUX_Sel|Mux2~6_combout\ : std_logic;
SIGNAL \ALU|data_OUT|MUX_Sel|Mux2~7_combout\ : std_logic;
SIGNAL \ALU|data_in|D0_in|AddSub|adder_inst|adder_loop[27].full_adder|Cout~0_combout\ : std_logic;
SIGNAL \ALU|data_in|D0_in|AddSub|adder_inst|adder_loop[28].full_adder|Cout~0_combout\ : std_logic;
SIGNAL \ALU|data_in|D0_in|AddSub|adder_inst|adder_loop[29].full_adder|S~combout\ : std_logic;
SIGNAL \ALU|data_OUT|MUX_Sel|Mux2~5_combout\ : std_logic;
SIGNAL \ALU|data_in|D1_in|SLL|ShiftLeft0~98_combout\ : std_logic;
SIGNAL \ALU|data_OUT|MUX_Sel|Mux2~3_combout\ : std_logic;
SIGNAL \ALU|data_OUT|MUX_Sel|Mux2~4_combout\ : std_logic;
SIGNAL \ALU|data_OUT|MUX_Sel|Mux2~combout\ : std_logic;
SIGNAL \ALU|data_in|D1_in|SLL|ShiftLeft0~99_combout\ : std_logic;
SIGNAL \ALU|data_OUT|MUX_Sel|Mux1~2_combout\ : std_logic;
SIGNAL \ALU|data_OUT|MUX_Sel|Mux1~3_combout\ : std_logic;
SIGNAL \ALU|data_in|D4_in|Xor1|S[30]~8_combout\ : std_logic;
SIGNAL \ALU|data_in|D0_in|AddSub|adder_inst|adder_loop[30].full_adder|S~combout\ : std_logic;
SIGNAL \ALU|data_OUT|MUX_Sel|Mux1~4_combout\ : std_logic;
SIGNAL \ALU|data_OUT|MUX_Sel|Mux1~5_combout\ : std_logic;
SIGNAL \ALU|data_in|D5_in|Sel_SR|Data_out|MUX_Sel|Out[30]~81_combout\ : std_logic;
SIGNAL \ALU|data_OUT|MUX_Sel|Mux1~0_combout\ : std_logic;
SIGNAL \ALU|data_OUT|MUX_Sel|Mux1~1_combout\ : std_logic;
SIGNAL \ALU|data_OUT|MUX_Sel|Mux1~6_combout\ : std_logic;
SIGNAL \ALU|data_in|D5_in|Sel_SR|Data_out|MUX_Sel|Out[31]~82_combout\ : std_logic;
SIGNAL \ALU|data_OUT|MUX_Sel|Mux0~5_combout\ : std_logic;
SIGNAL \ALU|data_OUT|MUX_Sel|Mux0~6_combout\ : std_logic;
SIGNAL \ALU|data_OUT|MUX_Sel|Mux0~0_combout\ : std_logic;
SIGNAL \ALU|data_OUT|MUX_Sel|Mux0~1_combout\ : std_logic;
SIGNAL \ALU|data_OUT|MUX_Sel|Mux0~2_combout\ : std_logic;
SIGNAL \ALU|data_in|D0_in|AddSub|adder_inst|adder_loop[31].full_adder|S~0_combout\ : std_logic;
SIGNAL \ALU|data_in|D0_in|AddSub|adder_inst|adder_loop[29].full_adder|Cout~0_combout\ : std_logic;
SIGNAL \ALU|data_in|D0_in|AddSub|adder_inst|adder_loop[31].full_adder|S~combout\ : std_logic;
SIGNAL \ALU|data_OUT|MUX_Sel|Mux0~3_combout\ : std_logic;
SIGNAL \ALU|data_OUT|MUX_Sel|Mux0~4_combout\ : std_logic;
SIGNAL \ALU|data_in|D7_in|AND_9|S\ : std_logic_vector(31 DOWNTO 0);

BEGIN

ww_funct7 <= funct7;
ww_alu_op <= alu_op;
ww_operand_a <= operand_a;
ww_operand_b <= operand_b;
alu_data <= ww_alu_data;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

-- Location: IOOBUF_X52_Y11_N9
\alu_data[0]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALU|data_OUT|MUX_Sel|Mux31~2_combout\,
	devoe => ww_devoe,
	o => \alu_data[0]~output_o\);

-- Location: IOOBUF_X50_Y0_N9
\alu_data[1]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALU|data_OUT|MUX_Sel|Mux30~4_combout\,
	devoe => ww_devoe,
	o => \alu_data[1]~output_o\);

-- Location: IOOBUF_X43_Y0_N9
\alu_data[2]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALU|data_OUT|MUX_Sel|Mux29~3_combout\,
	devoe => ww_devoe,
	o => \alu_data[2]~output_o\);

-- Location: IOOBUF_X34_Y0_N2
\alu_data[3]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALU|data_OUT|MUX_Sel|Mux28~3_combout\,
	devoe => ww_devoe,
	o => \alu_data[3]~output_o\);

-- Location: IOOBUF_X52_Y10_N2
\alu_data[4]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALU|data_OUT|MUX_Sel|Mux27~2_combout\,
	devoe => ww_devoe,
	o => \alu_data[4]~output_o\);

-- Location: IOOBUF_X21_Y41_N2
\alu_data[5]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALU|data_OUT|MUX_Sel|Mux26~2_combout\,
	devoe => ww_devoe,
	o => \alu_data[5]~output_o\);

-- Location: IOOBUF_X31_Y0_N2
\alu_data[6]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALU|data_OUT|MUX_Sel|Mux25~2_combout\,
	devoe => ww_devoe,
	o => \alu_data[6]~output_o\);

-- Location: IOOBUF_X46_Y0_N23
\alu_data[7]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALU|data_OUT|MUX_Sel|Mux24~2_combout\,
	devoe => ww_devoe,
	o => \alu_data[7]~output_o\);

-- Location: IOOBUF_X29_Y0_N2
\alu_data[8]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALU|data_OUT|MUX_Sel|Mux23~5_combout\,
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
	i => \ALU|data_OUT|MUX_Sel|Mux22~2_combout\,
	devoe => ww_devoe,
	o => \alu_data[9]~output_o\);

-- Location: IOOBUF_X16_Y41_N9
\alu_data[10]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALU|data_OUT|MUX_Sel|Mux21~3_combout\,
	devoe => ww_devoe,
	o => \alu_data[10]~output_o\);

-- Location: IOOBUF_X41_Y41_N23
\alu_data[11]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALU|data_OUT|MUX_Sel|Mux20~5_combout\,
	devoe => ww_devoe,
	o => \alu_data[11]~output_o\);

-- Location: IOOBUF_X31_Y41_N23
\alu_data[12]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALU|data_OUT|MUX_Sel|Mux19~4_combout\,
	devoe => ww_devoe,
	o => \alu_data[12]~output_o\);

-- Location: IOOBUF_X38_Y41_N9
\alu_data[13]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALU|data_OUT|MUX_Sel|Mux18~3_combout\,
	devoe => ww_devoe,
	o => \alu_data[13]~output_o\);

-- Location: IOOBUF_X46_Y41_N23
\alu_data[14]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALU|data_OUT|MUX_Sel|Mux17~4_combout\,
	devoe => ww_devoe,
	o => \alu_data[14]~output_o\);

-- Location: IOOBUF_X23_Y0_N9
\alu_data[15]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALU|data_OUT|MUX_Sel|Mux16~3_combout\,
	devoe => ww_devoe,
	o => \alu_data[15]~output_o\);

-- Location: IOOBUF_X25_Y0_N2
\alu_data[16]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALU|data_OUT|MUX_Sel|Mux15~5_combout\,
	devoe => ww_devoe,
	o => \alu_data[16]~output_o\);

-- Location: IOOBUF_X25_Y41_N2
\alu_data[17]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALU|data_OUT|MUX_Sel|Mux14~2_combout\,
	devoe => ww_devoe,
	o => \alu_data[17]~output_o\);

-- Location: IOOBUF_X23_Y41_N2
\alu_data[18]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALU|data_OUT|MUX_Sel|Mux13~4_combout\,
	devoe => ww_devoe,
	o => \alu_data[18]~output_o\);

-- Location: IOOBUF_X52_Y32_N16
\alu_data[19]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALU|data_OUT|MUX_Sel|Mux12~2_combout\,
	devoe => ww_devoe,
	o => \alu_data[19]~output_o\);

-- Location: IOOBUF_X52_Y30_N2
\alu_data[20]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALU|data_OUT|MUX_Sel|Mux11~4_combout\,
	devoe => ww_devoe,
	o => \alu_data[20]~output_o\);

-- Location: IOOBUF_X52_Y27_N9
\alu_data[21]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALU|data_OUT|MUX_Sel|Mux10~4_combout\,
	devoe => ww_devoe,
	o => \alu_data[21]~output_o\);

-- Location: IOOBUF_X34_Y41_N9
\alu_data[22]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALU|data_OUT|MUX_Sel|Mux9~4_combout\,
	devoe => ww_devoe,
	o => \alu_data[22]~output_o\);

-- Location: IOOBUF_X52_Y32_N2
\alu_data[23]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALU|data_OUT|MUX_Sel|Mux8~2_combout\,
	devoe => ww_devoe,
	o => \alu_data[23]~output_o\);

-- Location: IOOBUF_X25_Y0_N9
\alu_data[24]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALU|data_OUT|MUX_Sel|Mux7~5_combout\,
	devoe => ww_devoe,
	o => \alu_data[24]~output_o\);

-- Location: IOOBUF_X41_Y41_N16
\alu_data[25]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALU|data_OUT|MUX_Sel|Mux6~5_combout\,
	devoe => ww_devoe,
	o => \alu_data[25]~output_o\);

-- Location: IOOBUF_X38_Y0_N9
\alu_data[26]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALU|data_OUT|MUX_Sel|Mux5~11_combout\,
	devoe => ww_devoe,
	o => \alu_data[26]~output_o\);

-- Location: IOOBUF_X52_Y23_N9
\alu_data[27]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALU|data_OUT|MUX_Sel|Mux4~6_combout\,
	devoe => ww_devoe,
	o => \alu_data[27]~output_o\);

-- Location: IOOBUF_X12_Y41_N2
\alu_data[28]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALU|data_OUT|MUX_Sel|Mux3~combout\,
	devoe => ww_devoe,
	o => \alu_data[28]~output_o\);

-- Location: IOOBUF_X31_Y0_N9
\alu_data[29]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALU|data_OUT|MUX_Sel|Mux2~combout\,
	devoe => ww_devoe,
	o => \alu_data[29]~output_o\);

-- Location: IOOBUF_X52_Y12_N2
\alu_data[30]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALU|data_OUT|MUX_Sel|Mux1~6_combout\,
	devoe => ww_devoe,
	o => \alu_data[30]~output_o\);

-- Location: IOOBUF_X21_Y0_N2
\alu_data[31]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALU|data_OUT|MUX_Sel|Mux0~4_combout\,
	devoe => ww_devoe,
	o => \alu_data[31]~output_o\);

-- Location: IOIBUF_X52_Y18_N1
\operand_a[0]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_operand_a(0),
	o => \operand_a[0]~input_o\);

-- Location: IOIBUF_X52_Y19_N8
\alu_op[1]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_alu_op(1),
	o => \alu_op[1]~input_o\);

-- Location: IOIBUF_X52_Y25_N1
\alu_op[0]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_alu_op(0),
	o => \alu_op[0]~input_o\);

-- Location: IOIBUF_X31_Y0_N22
\operand_b[0]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_operand_b(0),
	o => \operand_b[0]~input_o\);

-- Location: IOIBUF_X29_Y41_N8
\operand_a[20]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_operand_a(20),
	o => \operand_a[20]~input_o\);

-- Location: IOIBUF_X27_Y0_N1
\operand_b[1]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_operand_b(1),
	o => \operand_b[1]~input_o\);

-- Location: IOIBUF_X41_Y0_N22
\operand_a[22]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_operand_a(22),
	o => \operand_a[22]~input_o\);

-- Location: LCCOMB_X29_Y20_N10
\ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~21\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~21_combout\ = (\operand_b[1]~input_o\ & ((\operand_a[22]~input_o\))) # (!\operand_b[1]~input_o\ & (\operand_a[20]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \operand_a[20]~input_o\,
	datac => \operand_b[1]~input_o\,
	datad => \operand_a[22]~input_o\,
	combout => \ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~21_combout\);

-- Location: IOIBUF_X23_Y0_N1
\operand_a[21]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_operand_a(21),
	o => \operand_a[21]~input_o\);

-- Location: IOIBUF_X52_Y23_N1
\operand_a[23]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_operand_a(23),
	o => \operand_a[23]~input_o\);

-- Location: LCCOMB_X29_Y20_N0
\ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~20\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~20_combout\ = (\operand_b[1]~input_o\ & ((\operand_a[23]~input_o\))) # (!\operand_b[1]~input_o\ & (\operand_a[21]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \operand_a[21]~input_o\,
	datab => \operand_b[1]~input_o\,
	datac => \operand_a[23]~input_o\,
	combout => \ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~20_combout\);

-- Location: LCCOMB_X29_Y20_N28
\ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~22\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~22_combout\ = (\operand_b[0]~input_o\ & ((\ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~20_combout\))) # (!\operand_b[0]~input_o\ & 
-- (\ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~21_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~21_combout\,
	datab => \ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~20_combout\,
	datad => \operand_b[0]~input_o\,
	combout => \ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~22_combout\);

-- Location: IOIBUF_X27_Y0_N8
\operand_b[2]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_operand_b(2),
	o => \operand_b[2]~input_o\);

-- Location: IOIBUF_X52_Y16_N1
\operand_b[3]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_operand_b(3),
	o => \operand_b[3]~input_o\);

-- Location: IOIBUF_X36_Y0_N8
\operand_a[16]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_operand_a(16),
	o => \operand_a[16]~input_o\);

-- Location: IOIBUF_X52_Y25_N8
\operand_a[18]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_operand_a(18),
	o => \operand_a[18]~input_o\);

-- Location: LCCOMB_X30_Y22_N26
\ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~24\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~24_combout\ = (\operand_b[1]~input_o\ & ((\operand_a[18]~input_o\))) # (!\operand_b[1]~input_o\ & (\operand_a[16]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \operand_a[16]~input_o\,
	datac => \operand_a[18]~input_o\,
	datad => \operand_b[1]~input_o\,
	combout => \ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~24_combout\);

-- Location: IOIBUF_X18_Y41_N1
\operand_a[19]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_operand_a(19),
	o => \operand_a[19]~input_o\);

-- Location: IOIBUF_X43_Y41_N8
\operand_a[17]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_operand_a(17),
	o => \operand_a[17]~input_o\);

-- Location: LCCOMB_X30_Y22_N0
\ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~23\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~23_combout\ = (\operand_b[1]~input_o\ & (\operand_a[19]~input_o\)) # (!\operand_b[1]~input_o\ & ((\operand_a[17]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \operand_b[1]~input_o\,
	datac => \operand_a[19]~input_o\,
	datad => \operand_a[17]~input_o\,
	combout => \ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~23_combout\);

-- Location: LCCOMB_X30_Y22_N20
\ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~25\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~25_combout\ = (\operand_b[0]~input_o\ & ((\ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~23_combout\))) # (!\operand_b[0]~input_o\ & 
-- (\ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~24_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~24_combout\,
	datab => \ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~23_combout\,
	datac => \operand_b[0]~input_o\,
	combout => \ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~25_combout\);

-- Location: LCCOMB_X31_Y17_N2
\ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~26\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~26_combout\ = (!\operand_b[3]~input_o\ & ((\operand_b[2]~input_o\ & (\ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~22_combout\)) # (!\operand_b[2]~input_o\ & 
-- ((\ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~25_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~22_combout\,
	datab => \operand_b[2]~input_o\,
	datac => \operand_b[3]~input_o\,
	datad => \ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~25_combout\,
	combout => \ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~26_combout\);

-- Location: IOIBUF_X52_Y13_N8
\operand_a[27]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_operand_a(27),
	o => \operand_a[27]~input_o\);

-- Location: IOIBUF_X52_Y19_N1
\operand_a[25]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_operand_a(25),
	o => \operand_a[25]~input_o\);

-- Location: LCCOMB_X32_Y17_N18
\ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~30\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~30_combout\ = (\operand_b[1]~input_o\ & (\operand_a[27]~input_o\)) # (!\operand_b[1]~input_o\ & ((\operand_a[25]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \operand_a[27]~input_o\,
	datab => \operand_b[1]~input_o\,
	datad => \operand_a[25]~input_o\,
	combout => \ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~30_combout\);

-- Location: IOIBUF_X52_Y15_N1
\operand_a[24]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_operand_a(24),
	o => \operand_a[24]~input_o\);

-- Location: IOIBUF_X41_Y41_N8
\operand_a[26]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_operand_a(26),
	o => \operand_a[26]~input_o\);

-- Location: LCCOMB_X32_Y17_N28
\ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~31\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~31_combout\ = (\operand_b[1]~input_o\ & ((\operand_a[26]~input_o\))) # (!\operand_b[1]~input_o\ & (\operand_a[24]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \operand_a[24]~input_o\,
	datab => \operand_b[1]~input_o\,
	datad => \operand_a[26]~input_o\,
	combout => \ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~31_combout\);

-- Location: LCCOMB_X32_Y17_N14
\ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~32\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~32_combout\ = (\operand_b[0]~input_o\ & (\ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~30_combout\)) # (!\operand_b[0]~input_o\ & 
-- ((\ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~31_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \operand_b[0]~input_o\,
	datab => \ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~30_combout\,
	datad => \ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~31_combout\,
	combout => \ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~32_combout\);

-- Location: IOIBUF_X38_Y0_N1
\operand_a[28]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_operand_a(28),
	o => \operand_a[28]~input_o\);

-- Location: IOIBUF_X46_Y41_N8
\operand_a[29]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_operand_a(29),
	o => \operand_a[29]~input_o\);

-- Location: LCCOMB_X32_Y17_N0
\ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~27\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~27_combout\ = (!\operand_b[1]~input_o\ & ((\operand_b[0]~input_o\ & ((\operand_a[29]~input_o\))) # (!\operand_b[0]~input_o\ & (\operand_a[28]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \operand_b[0]~input_o\,
	datab => \operand_b[1]~input_o\,
	datac => \operand_a[28]~input_o\,
	datad => \operand_a[29]~input_o\,
	combout => \ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~27_combout\);

-- Location: IOIBUF_X52_Y21_N1
\operand_a[31]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_operand_a(31),
	o => \operand_a[31]~input_o\);

-- Location: IOIBUF_X52_Y32_N8
\operand_a[30]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_operand_a(30),
	o => \operand_a[30]~input_o\);

-- Location: LCCOMB_X32_Y18_N16
\ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~28\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~28_combout\ = (\operand_b[0]~input_o\ & (\operand_a[31]~input_o\)) # (!\operand_b[0]~input_o\ & ((\operand_a[30]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \operand_b[0]~input_o\,
	datab => \operand_a[31]~input_o\,
	datad => \operand_a[30]~input_o\,
	combout => \ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~28_combout\);

-- Location: LCCOMB_X30_Y18_N8
\ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~29\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~29_combout\ = (\ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~27_combout\) # ((\operand_b[1]~input_o\ & \ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~28_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~27_combout\,
	datac => \operand_b[1]~input_o\,
	datad => \ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~28_combout\,
	combout => \ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~29_combout\);

-- Location: LCCOMB_X31_Y17_N12
\ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~33\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~33_combout\ = (\operand_b[2]~input_o\ & ((\ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~29_combout\))) # (!\operand_b[2]~input_o\ & 
-- (\ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~32_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \operand_b[2]~input_o\,
	datac => \ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~32_combout\,
	datad => \ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~29_combout\,
	combout => \ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~33_combout\);

-- Location: LCCOMB_X31_Y17_N14
\ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~34\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~34_combout\ = (\ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~26_combout\) # ((\operand_b[3]~input_o\ & \ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~33_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~26_combout\,
	datac => \operand_b[3]~input_o\,
	datad => \ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~33_combout\,
	combout => \ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~34_combout\);

-- Location: IOIBUF_X52_Y18_N8
\operand_a[9]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_operand_a(9),
	o => \operand_a[9]~input_o\);

-- Location: IOIBUF_X29_Y41_N1
\operand_a[11]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_operand_a(11),
	o => \operand_a[11]~input_o\);

-- Location: LCCOMB_X31_Y20_N24
\ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~9\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~9_combout\ = (\operand_b[1]~input_o\ & ((\operand_a[11]~input_o\))) # (!\operand_b[1]~input_o\ & (\operand_a[9]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \operand_b[1]~input_o\,
	datac => \operand_a[9]~input_o\,
	datad => \operand_a[11]~input_o\,
	combout => \ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~9_combout\);

-- Location: IOIBUF_X41_Y0_N1
\operand_a[10]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_operand_a(10),
	o => \operand_a[10]~input_o\);

-- Location: IOIBUF_X52_Y28_N8
\operand_a[8]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_operand_a(8),
	o => \operand_a[8]~input_o\);

-- Location: LCCOMB_X31_Y20_N18
\ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~10\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~10_combout\ = (\operand_b[1]~input_o\ & (\operand_a[10]~input_o\)) # (!\operand_b[1]~input_o\ & ((\operand_a[8]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \operand_b[1]~input_o\,
	datac => \operand_a[10]~input_o\,
	datad => \operand_a[8]~input_o\,
	combout => \ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~10_combout\);

-- Location: LCCOMB_X31_Y20_N4
\ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~11\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~11_combout\ = (\operand_b[0]~input_o\ & (\ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~9_combout\)) # (!\operand_b[0]~input_o\ & 
-- ((\ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \operand_b[0]~input_o\,
	datab => \ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~9_combout\,
	datad => \ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~10_combout\,
	combout => \ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~11_combout\);

-- Location: IOIBUF_X21_Y41_N8
\operand_a[13]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_operand_a(13),
	o => \operand_a[13]~input_o\);

-- Location: IOIBUF_X31_Y0_N15
\operand_a[15]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_operand_a(15),
	o => \operand_a[15]~input_o\);

-- Location: LCCOMB_X29_Y22_N24
\ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~6\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~6_combout\ = (\operand_b[1]~input_o\ & ((\operand_a[15]~input_o\))) # (!\operand_b[1]~input_o\ & (\operand_a[13]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \operand_a[13]~input_o\,
	datab => \operand_b[1]~input_o\,
	datac => \operand_a[15]~input_o\,
	combout => \ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~6_combout\);

-- Location: IOIBUF_X18_Y0_N8
\operand_a[14]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_operand_a(14),
	o => \operand_a[14]~input_o\);

-- Location: IOIBUF_X31_Y41_N1
\operand_a[12]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_operand_a(12),
	o => \operand_a[12]~input_o\);

-- Location: LCCOMB_X29_Y22_N2
\ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~7\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~7_combout\ = (\operand_b[1]~input_o\ & (\operand_a[14]~input_o\)) # (!\operand_b[1]~input_o\ & ((\operand_a[12]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \operand_b[1]~input_o\,
	datac => \operand_a[14]~input_o\,
	datad => \operand_a[12]~input_o\,
	combout => \ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~7_combout\);

-- Location: LCCOMB_X29_Y22_N20
\ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~8\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~8_combout\ = (\operand_b[0]~input_o\ & (\ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~6_combout\)) # (!\operand_b[0]~input_o\ & 
-- ((\ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~6_combout\,
	datac => \operand_b[0]~input_o\,
	datad => \ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~7_combout\,
	combout => \ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~8_combout\);

-- Location: LCCOMB_X31_Y17_N16
\ALU|data_in|D5_in|Sel_SR|Data_out|MUX_Sel|Out[0]~11\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ALU|data_in|D5_in|Sel_SR|Data_out|MUX_Sel|Out[0]~11_combout\ = (\operand_b[3]~input_o\ & ((\operand_b[2]~input_o\ & ((\ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~8_combout\))) # (!\operand_b[2]~input_o\ & 
-- (\ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~11_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~11_combout\,
	datab => \operand_b[2]~input_o\,
	datac => \operand_b[3]~input_o\,
	datad => \ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~8_combout\,
	combout => \ALU|data_in|D5_in|Sel_SR|Data_out|MUX_Sel|Out[0]~11_combout\);

-- Location: IOIBUF_X31_Y41_N8
\operand_a[5]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_operand_a(5),
	o => \operand_a[5]~input_o\);

-- Location: IOIBUF_X36_Y41_N1
\operand_a[4]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_operand_a(4),
	o => \operand_a[4]~input_o\);

-- Location: LCCOMB_X31_Y19_N26
\ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~17\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~17_combout\ = (\operand_b[0]~input_o\ & (\operand_a[5]~input_o\)) # (!\operand_b[0]~input_o\ & ((\operand_a[4]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \operand_a[5]~input_o\,
	datac => \operand_b[0]~input_o\,
	datad => \operand_a[4]~input_o\,
	combout => \ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~17_combout\);

-- Location: IOIBUF_X52_Y30_N8
\operand_a[6]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_operand_a(6),
	o => \operand_a[6]~input_o\);

-- Location: IOIBUF_X36_Y41_N8
\operand_a[7]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_operand_a(7),
	o => \operand_a[7]~input_o\);

-- Location: LCCOMB_X31_Y19_N24
\ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~16\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~16_combout\ = (\operand_b[1]~input_o\ & ((\operand_b[0]~input_o\ & ((\operand_a[7]~input_o\))) # (!\operand_b[0]~input_o\ & (\operand_a[6]~input_o\))))

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
	combout => \ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~16_combout\);

-- Location: LCCOMB_X31_Y19_N4
\ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~18\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~18_combout\ = (\ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~16_combout\) # ((!\operand_b[1]~input_o\ & \ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~17_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \operand_b[1]~input_o\,
	datac => \ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~17_combout\,
	datad => \ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~16_combout\,
	combout => \ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~18_combout\);

-- Location: IOIBUF_X29_Y0_N8
\operand_a[1]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_operand_a(1),
	o => \operand_a[1]~input_o\);

-- Location: LCCOMB_X32_Y19_N8
\ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~12\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~12_combout\ = (\operand_b[2]~input_o\) # ((!\operand_b[1]~input_o\ & \operand_b[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \operand_b[1]~input_o\,
	datac => \operand_b[2]~input_o\,
	datad => \operand_b[0]~input_o\,
	combout => \ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~12_combout\);

-- Location: LCCOMB_X32_Y20_N10
\ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~14\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~14_combout\ = (!\operand_b[2]~input_o\ & !\operand_b[1]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \operand_b[2]~input_o\,
	datad => \operand_b[1]~input_o\,
	combout => \ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~14_combout\);

-- Location: IOIBUF_X36_Y0_N1
\operand_a[3]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_operand_a(3),
	o => \operand_a[3]~input_o\);

-- Location: IOIBUF_X52_Y27_N1
\operand_a[2]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_operand_a(2),
	o => \operand_a[2]~input_o\);

-- Location: LCCOMB_X32_Y19_N2
\ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~13\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~13_combout\ = (\operand_b[0]~input_o\ & (\operand_a[3]~input_o\)) # (!\operand_b[0]~input_o\ & ((\operand_a[2]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \operand_b[0]~input_o\,
	datac => \operand_a[3]~input_o\,
	datad => \operand_a[2]~input_o\,
	combout => \ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~13_combout\);

-- Location: LCCOMB_X32_Y19_N28
\ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~15\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~15_combout\ = (\ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~14_combout\ & (((\operand_a[0]~input_o\ & !\ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~12_combout\)))) # 
-- (!\ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~14_combout\ & ((\ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~13_combout\) # ((\ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010111100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~14_combout\,
	datab => \ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~13_combout\,
	datac => \operand_a[0]~input_o\,
	datad => \ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~12_combout\,
	combout => \ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~15_combout\);

-- Location: LCCOMB_X32_Y19_N22
\ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~19\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~19_combout\ = (\ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~12_combout\ & ((\ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~15_combout\ & 
-- (\ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~18_combout\)) # (!\ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~15_combout\ & ((\operand_a[1]~input_o\))))) # (!\ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~12_combout\ & 
-- (((\ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~15_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~18_combout\,
	datab => \operand_a[1]~input_o\,
	datac => \ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~12_combout\,
	datad => \ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~15_combout\,
	combout => \ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~19_combout\);

-- Location: IOIBUF_X34_Y0_N8
\operand_b[4]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_operand_b(4),
	o => \operand_b[4]~input_o\);

-- Location: LCCOMB_X29_Y19_N16
\ALU|data_in|D5_in|Sel_SR|Data_out|MUX_Sel|Out[0]~12\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ALU|data_in|D5_in|Sel_SR|Data_out|MUX_Sel|Out[0]~12_combout\ = (!\operand_b[4]~input_o\ & ((\ALU|data_in|D5_in|Sel_SR|Data_out|MUX_Sel|Out[0]~11_combout\) # ((!\operand_b[3]~input_o\ & \ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~19_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU|data_in|D5_in|Sel_SR|Data_out|MUX_Sel|Out[0]~11_combout\,
	datab => \operand_b[3]~input_o\,
	datac => \ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~19_combout\,
	datad => \operand_b[4]~input_o\,
	combout => \ALU|data_in|D5_in|Sel_SR|Data_out|MUX_Sel|Out[0]~12_combout\);

-- Location: LCCOMB_X32_Y20_N8
\ALU|data_in|D5_in|Sel_SR|SRA_out|SRA1|Add1~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ALU|data_in|D5_in|Sel_SR|SRA_out|SRA1|Add1~1_combout\ = \operand_b[1]~input_o\ $ (\operand_b[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \operand_b[1]~input_o\,
	datad => \operand_b[0]~input_o\,
	combout => \ALU|data_in|D5_in|Sel_SR|SRA_out|SRA1|Add1~1_combout\);

-- Location: IOIBUF_X52_Y21_N8
\funct7~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_funct7,
	o => \funct7~input_o\);

-- Location: LCCOMB_X34_Y18_N0
\ALU|data_in|D5_in|Sel_SR|Data_out|MUX_Sel|Out[0]~8\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ALU|data_in|D5_in|Sel_SR|Data_out|MUX_Sel|Out[0]~8_combout\ = (\operand_a[31]~input_o\ & (!\operand_b[0]~input_o\ & \funct7~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \operand_a[31]~input_o\,
	datab => \operand_b[0]~input_o\,
	datad => \funct7~input_o\,
	combout => \ALU|data_in|D5_in|Sel_SR|Data_out|MUX_Sel|Out[0]~8_combout\);

-- Location: LCCOMB_X34_Y20_N8
\ALU|data_in|D5_in|Sel_SR|Data_out|MUX_Sel|Out[1]~9\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ALU|data_in|D5_in|Sel_SR|Data_out|MUX_Sel|Out[1]~9_combout\ = (\operand_b[2]~input_o\ & (\operand_b[3]~input_o\ & ((\operand_b[0]~input_o\) # (\operand_b[1]~input_o\)))) # (!\operand_b[2]~input_o\ & (!\operand_b[0]~input_o\ & (!\operand_b[1]~input_o\ & 
-- !\operand_b[3]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \operand_b[2]~input_o\,
	datab => \operand_b[0]~input_o\,
	datac => \operand_b[1]~input_o\,
	datad => \operand_b[3]~input_o\,
	combout => \ALU|data_in|D5_in|Sel_SR|Data_out|MUX_Sel|Out[1]~9_combout\);

-- Location: LCCOMB_X34_Y18_N2
\ALU|data_in|D1_in|SLL|ShiftLeft0~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ALU|data_in|D1_in|SLL|ShiftLeft0~4_combout\ = (\operand_b[1]~input_o\) # ((\operand_b[2]~input_o\) # (\operand_b[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \operand_b[1]~input_o\,
	datac => \operand_b[2]~input_o\,
	datad => \operand_b[0]~input_o\,
	combout => \ALU|data_in|D1_in|SLL|ShiftLeft0~4_combout\);

-- Location: LCCOMB_X34_Y18_N20
\ALU|data_in|D5_in|Sel_SR|SRA_out|SRA1|Add1~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ALU|data_in|D5_in|Sel_SR|SRA_out|SRA1|Add1~0_combout\ = \operand_b[4]~input_o\ $ (((\ALU|data_in|D1_in|SLL|ShiftLeft0~4_combout\) # (\operand_b[3]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001111111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ALU|data_in|D1_in|SLL|ShiftLeft0~4_combout\,
	datac => \operand_b[3]~input_o\,
	datad => \operand_b[4]~input_o\,
	combout => \ALU|data_in|D5_in|Sel_SR|SRA_out|SRA1|Add1~0_combout\);

-- Location: LCCOMB_X34_Y19_N8
\ALU|data_in|D5_in|Sel_SR|Data_out|MUX_Sel|Out[0]~10\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ALU|data_in|D5_in|Sel_SR|Data_out|MUX_Sel|Out[0]~10_combout\ = (!\ALU|data_in|D5_in|Sel_SR|SRA_out|SRA1|Add1~1_combout\ & (\ALU|data_in|D5_in|Sel_SR|Data_out|MUX_Sel|Out[0]~8_combout\ & (\ALU|data_in|D5_in|Sel_SR|Data_out|MUX_Sel|Out[1]~9_combout\ & 
-- !\ALU|data_in|D5_in|Sel_SR|SRA_out|SRA1|Add1~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU|data_in|D5_in|Sel_SR|SRA_out|SRA1|Add1~1_combout\,
	datab => \ALU|data_in|D5_in|Sel_SR|Data_out|MUX_Sel|Out[0]~8_combout\,
	datac => \ALU|data_in|D5_in|Sel_SR|Data_out|MUX_Sel|Out[1]~9_combout\,
	datad => \ALU|data_in|D5_in|Sel_SR|SRA_out|SRA1|Add1~0_combout\,
	combout => \ALU|data_in|D5_in|Sel_SR|Data_out|MUX_Sel|Out[0]~10_combout\);

-- Location: LCCOMB_X29_Y19_N2
\ALU|data_in|D5_in|Sel_SR|Data_out|MUX_Sel|Out[0]~13\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ALU|data_in|D5_in|Sel_SR|Data_out|MUX_Sel|Out[0]~13_combout\ = (\ALU|data_in|D5_in|Sel_SR|Data_out|MUX_Sel|Out[0]~12_combout\) # ((\ALU|data_in|D5_in|Sel_SR|Data_out|MUX_Sel|Out[0]~10_combout\) # 
-- ((\ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~34_combout\ & \operand_b[4]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~34_combout\,
	datab => \ALU|data_in|D5_in|Sel_SR|Data_out|MUX_Sel|Out[0]~12_combout\,
	datac => \ALU|data_in|D5_in|Sel_SR|Data_out|MUX_Sel|Out[0]~10_combout\,
	datad => \operand_b[4]~input_o\,
	combout => \ALU|data_in|D5_in|Sel_SR|Data_out|MUX_Sel|Out[0]~13_combout\);

-- Location: LCCOMB_X31_Y22_N24
\ALU|data_OUT|MUX_Sel|Mux31~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ALU|data_OUT|MUX_Sel|Mux31~3_combout\ = (\alu_op[0]~input_o\ & ((\alu_op[1]~input_o\ & (\operand_b[0]~input_o\)) # (!\alu_op[1]~input_o\ & ((\ALU|data_in|D5_in|Sel_SR|Data_out|MUX_Sel|Out[0]~13_combout\))))) # (!\alu_op[0]~input_o\ & 
-- (\operand_b[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu_op[0]~input_o\,
	datab => \operand_b[0]~input_o\,
	datac => \ALU|data_in|D5_in|Sel_SR|Data_out|MUX_Sel|Out[0]~13_combout\,
	datad => \alu_op[1]~input_o\,
	combout => \ALU|data_OUT|MUX_Sel|Mux31~3_combout\);

-- Location: LCCOMB_X31_Y22_N2
\ALU|data_OUT|MUX_Sel|Mux31~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ALU|data_OUT|MUX_Sel|Mux31~4_combout\ = (\operand_a[0]~input_o\ & ((\ALU|data_OUT|MUX_Sel|Mux31~3_combout\ & ((\alu_op[1]~input_o\) # (\alu_op[0]~input_o\))) # (!\ALU|data_OUT|MUX_Sel|Mux31~3_combout\ & ((!\alu_op[0]~input_o\))))) # 
-- (!\operand_a[0]~input_o\ & (\ALU|data_OUT|MUX_Sel|Mux31~3_combout\ & ((!\alu_op[0]~input_o\) # (!\alu_op[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000011011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \operand_a[0]~input_o\,
	datab => \alu_op[1]~input_o\,
	datac => \ALU|data_OUT|MUX_Sel|Mux31~3_combout\,
	datad => \alu_op[0]~input_o\,
	combout => \ALU|data_OUT|MUX_Sel|Mux31~4_combout\);

-- Location: IOIBUF_X52_Y16_N8
\alu_op[2]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_alu_op(2),
	o => \alu_op[2]~input_o\);

-- Location: IOIBUF_X52_Y11_N1
\operand_b[31]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_operand_b(31),
	o => \operand_b[31]~input_o\);

-- Location: IOIBUF_X52_Y15_N8
\operand_b[30]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_operand_b(30),
	o => \operand_b[30]~input_o\);

-- Location: IOIBUF_X46_Y41_N15
\operand_b[29]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_operand_b(29),
	o => \operand_b[29]~input_o\);

-- Location: IOIBUF_X46_Y0_N8
\operand_b[28]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_operand_b(28),
	o => \operand_b[28]~input_o\);

-- Location: IOIBUF_X52_Y31_N8
\operand_b[27]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_operand_b(27),
	o => \operand_b[27]~input_o\);

-- Location: IOIBUF_X41_Y0_N8
\operand_b[26]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_operand_b(26),
	o => \operand_b[26]~input_o\);

-- Location: IOIBUF_X41_Y0_N15
\operand_b[25]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_operand_b(25),
	o => \operand_b[25]~input_o\);

-- Location: IOIBUF_X52_Y28_N1
\operand_b[24]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_operand_b(24),
	o => \operand_b[24]~input_o\);

-- Location: IOIBUF_X43_Y0_N1
\operand_b[23]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_operand_b(23),
	o => \operand_b[23]~input_o\);

-- Location: IOIBUF_X23_Y41_N8
\operand_b[22]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_operand_b(22),
	o => \operand_b[22]~input_o\);

-- Location: IOIBUF_X52_Y32_N22
\operand_b[21]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_operand_b(21),
	o => \operand_b[21]~input_o\);

-- Location: IOIBUF_X46_Y41_N1
\operand_b[20]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_operand_b(20),
	o => \operand_b[20]~input_o\);

-- Location: IOIBUF_X41_Y41_N1
\operand_b[19]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_operand_b(19),
	o => \operand_b[19]~input_o\);

-- Location: IOIBUF_X16_Y41_N1
\operand_b[18]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_operand_b(18),
	o => \operand_b[18]~input_o\);

-- Location: IOIBUF_X43_Y41_N1
\operand_b[17]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_operand_b(17),
	o => \operand_b[17]~input_o\);

-- Location: IOIBUF_X52_Y12_N8
\operand_b[16]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_operand_b(16),
	o => \operand_b[16]~input_o\);

-- Location: IOIBUF_X25_Y41_N8
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

-- Location: IOIBUF_X52_Y31_N1
\operand_b[12]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_operand_b(12),
	o => \operand_b[12]~input_o\);

-- Location: IOIBUF_X34_Y41_N1
\operand_b[11]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_operand_b(11),
	o => \operand_b[11]~input_o\);

-- Location: IOIBUF_X31_Y41_N15
\operand_b[10]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_operand_b(10),
	o => \operand_b[10]~input_o\);

-- Location: IOIBUF_X18_Y41_N8
\operand_b[9]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_operand_b(9),
	o => \operand_b[9]~input_o\);

-- Location: IOIBUF_X46_Y0_N15
\operand_b[8]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_operand_b(8),
	o => \operand_b[8]~input_o\);

-- Location: IOIBUF_X52_Y13_N1
\operand_b[7]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_operand_b(7),
	o => \operand_b[7]~input_o\);

-- Location: IOIBUF_X38_Y41_N1
\operand_b[6]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_operand_b(6),
	o => \operand_b[6]~input_o\);

-- Location: IOIBUF_X52_Y9_N1
\operand_b[5]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_operand_b(5),
	o => \operand_b[5]~input_o\);

-- Location: LCCOMB_X35_Y22_N0
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

-- Location: LCCOMB_X35_Y22_N2
\ALU|data_in|D2_in|LT_inst|LessThan0~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ALU|data_in|D2_in|LT_inst|LessThan0~3_cout\ = CARRY((\operand_b[1]~input_o\ & (\operand_a[1]~input_o\ & !\ALU|data_in|D2_in|LT_inst|LessThan0~1_cout\)) # (!\operand_b[1]~input_o\ & ((\operand_a[1]~input_o\) # 
-- (!\ALU|data_in|D2_in|LT_inst|LessThan0~1_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \operand_b[1]~input_o\,
	datab => \operand_a[1]~input_o\,
	datad => VCC,
	cin => \ALU|data_in|D2_in|LT_inst|LessThan0~1_cout\,
	cout => \ALU|data_in|D2_in|LT_inst|LessThan0~3_cout\);

-- Location: LCCOMB_X35_Y22_N4
\ALU|data_in|D2_in|LT_inst|LessThan0~5\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ALU|data_in|D2_in|LT_inst|LessThan0~5_cout\ = CARRY((\operand_b[2]~input_o\ & ((!\ALU|data_in|D2_in|LT_inst|LessThan0~3_cout\) # (!\operand_a[2]~input_o\))) # (!\operand_b[2]~input_o\ & (!\operand_a[2]~input_o\ & 
-- !\ALU|data_in|D2_in|LT_inst|LessThan0~3_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \operand_b[2]~input_o\,
	datab => \operand_a[2]~input_o\,
	datad => VCC,
	cin => \ALU|data_in|D2_in|LT_inst|LessThan0~3_cout\,
	cout => \ALU|data_in|D2_in|LT_inst|LessThan0~5_cout\);

-- Location: LCCOMB_X35_Y22_N6
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

-- Location: LCCOMB_X35_Y22_N8
\ALU|data_in|D2_in|LT_inst|LessThan0~9\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ALU|data_in|D2_in|LT_inst|LessThan0~9_cout\ = CARRY((\operand_b[4]~input_o\ & ((!\ALU|data_in|D2_in|LT_inst|LessThan0~7_cout\) # (!\operand_a[4]~input_o\))) # (!\operand_b[4]~input_o\ & (!\operand_a[4]~input_o\ & 
-- !\ALU|data_in|D2_in|LT_inst|LessThan0~7_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \operand_b[4]~input_o\,
	datab => \operand_a[4]~input_o\,
	datad => VCC,
	cin => \ALU|data_in|D2_in|LT_inst|LessThan0~7_cout\,
	cout => \ALU|data_in|D2_in|LT_inst|LessThan0~9_cout\);

-- Location: LCCOMB_X35_Y22_N10
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

-- Location: LCCOMB_X35_Y22_N12
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

-- Location: LCCOMB_X35_Y22_N14
\ALU|data_in|D2_in|LT_inst|LessThan0~15\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ALU|data_in|D2_in|LT_inst|LessThan0~15_cout\ = CARRY((\operand_a[7]~input_o\ & ((!\ALU|data_in|D2_in|LT_inst|LessThan0~13_cout\) # (!\operand_b[7]~input_o\))) # (!\operand_a[7]~input_o\ & (!\operand_b[7]~input_o\ & 
-- !\ALU|data_in|D2_in|LT_inst|LessThan0~13_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \operand_a[7]~input_o\,
	datab => \operand_b[7]~input_o\,
	datad => VCC,
	cin => \ALU|data_in|D2_in|LT_inst|LessThan0~13_cout\,
	cout => \ALU|data_in|D2_in|LT_inst|LessThan0~15_cout\);

-- Location: LCCOMB_X35_Y22_N16
\ALU|data_in|D2_in|LT_inst|LessThan0~17\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ALU|data_in|D2_in|LT_inst|LessThan0~17_cout\ = CARRY((\operand_b[8]~input_o\ & ((!\ALU|data_in|D2_in|LT_inst|LessThan0~15_cout\) # (!\operand_a[8]~input_o\))) # (!\operand_b[8]~input_o\ & (!\operand_a[8]~input_o\ & 
-- !\ALU|data_in|D2_in|LT_inst|LessThan0~15_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \operand_b[8]~input_o\,
	datab => \operand_a[8]~input_o\,
	datad => VCC,
	cin => \ALU|data_in|D2_in|LT_inst|LessThan0~15_cout\,
	cout => \ALU|data_in|D2_in|LT_inst|LessThan0~17_cout\);

-- Location: LCCOMB_X35_Y22_N18
\ALU|data_in|D2_in|LT_inst|LessThan0~19\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ALU|data_in|D2_in|LT_inst|LessThan0~19_cout\ = CARRY((\operand_a[9]~input_o\ & ((!\ALU|data_in|D2_in|LT_inst|LessThan0~17_cout\) # (!\operand_b[9]~input_o\))) # (!\operand_a[9]~input_o\ & (!\operand_b[9]~input_o\ & 
-- !\ALU|data_in|D2_in|LT_inst|LessThan0~17_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \operand_a[9]~input_o\,
	datab => \operand_b[9]~input_o\,
	datad => VCC,
	cin => \ALU|data_in|D2_in|LT_inst|LessThan0~17_cout\,
	cout => \ALU|data_in|D2_in|LT_inst|LessThan0~19_cout\);

-- Location: LCCOMB_X35_Y22_N20
\ALU|data_in|D2_in|LT_inst|LessThan0~21\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ALU|data_in|D2_in|LT_inst|LessThan0~21_cout\ = CARRY((\operand_a[10]~input_o\ & (\operand_b[10]~input_o\ & !\ALU|data_in|D2_in|LT_inst|LessThan0~19_cout\)) # (!\operand_a[10]~input_o\ & ((\operand_b[10]~input_o\) # 
-- (!\ALU|data_in|D2_in|LT_inst|LessThan0~19_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \operand_a[10]~input_o\,
	datab => \operand_b[10]~input_o\,
	datad => VCC,
	cin => \ALU|data_in|D2_in|LT_inst|LessThan0~19_cout\,
	cout => \ALU|data_in|D2_in|LT_inst|LessThan0~21_cout\);

-- Location: LCCOMB_X35_Y22_N22
\ALU|data_in|D2_in|LT_inst|LessThan0~23\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ALU|data_in|D2_in|LT_inst|LessThan0~23_cout\ = CARRY((\operand_a[11]~input_o\ & ((!\ALU|data_in|D2_in|LT_inst|LessThan0~21_cout\) # (!\operand_b[11]~input_o\))) # (!\operand_a[11]~input_o\ & (!\operand_b[11]~input_o\ & 
-- !\ALU|data_in|D2_in|LT_inst|LessThan0~21_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \operand_a[11]~input_o\,
	datab => \operand_b[11]~input_o\,
	datad => VCC,
	cin => \ALU|data_in|D2_in|LT_inst|LessThan0~21_cout\,
	cout => \ALU|data_in|D2_in|LT_inst|LessThan0~23_cout\);

-- Location: LCCOMB_X35_Y22_N24
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

-- Location: LCCOMB_X35_Y22_N26
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

-- Location: LCCOMB_X35_Y22_N28
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

-- Location: LCCOMB_X35_Y22_N30
\ALU|data_in|D2_in|LT_inst|LessThan0~31\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ALU|data_in|D2_in|LT_inst|LessThan0~31_cout\ = CARRY((\operand_b[15]~input_o\ & (\operand_a[15]~input_o\ & !\ALU|data_in|D2_in|LT_inst|LessThan0~29_cout\)) # (!\operand_b[15]~input_o\ & ((\operand_a[15]~input_o\) # 
-- (!\ALU|data_in|D2_in|LT_inst|LessThan0~29_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \operand_b[15]~input_o\,
	datab => \operand_a[15]~input_o\,
	datad => VCC,
	cin => \ALU|data_in|D2_in|LT_inst|LessThan0~29_cout\,
	cout => \ALU|data_in|D2_in|LT_inst|LessThan0~31_cout\);

-- Location: LCCOMB_X35_Y21_N0
\ALU|data_in|D2_in|LT_inst|LessThan0~33\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ALU|data_in|D2_in|LT_inst|LessThan0~33_cout\ = CARRY((\operand_a[16]~input_o\ & (\operand_b[16]~input_o\ & !\ALU|data_in|D2_in|LT_inst|LessThan0~31_cout\)) # (!\operand_a[16]~input_o\ & ((\operand_b[16]~input_o\) # 
-- (!\ALU|data_in|D2_in|LT_inst|LessThan0~31_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \operand_a[16]~input_o\,
	datab => \operand_b[16]~input_o\,
	datad => VCC,
	cin => \ALU|data_in|D2_in|LT_inst|LessThan0~31_cout\,
	cout => \ALU|data_in|D2_in|LT_inst|LessThan0~33_cout\);

-- Location: LCCOMB_X35_Y21_N2
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

-- Location: LCCOMB_X35_Y21_N4
\ALU|data_in|D2_in|LT_inst|LessThan0~37\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ALU|data_in|D2_in|LT_inst|LessThan0~37_cout\ = CARRY((\operand_a[18]~input_o\ & (\operand_b[18]~input_o\ & !\ALU|data_in|D2_in|LT_inst|LessThan0~35_cout\)) # (!\operand_a[18]~input_o\ & ((\operand_b[18]~input_o\) # 
-- (!\ALU|data_in|D2_in|LT_inst|LessThan0~35_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \operand_a[18]~input_o\,
	datab => \operand_b[18]~input_o\,
	datad => VCC,
	cin => \ALU|data_in|D2_in|LT_inst|LessThan0~35_cout\,
	cout => \ALU|data_in|D2_in|LT_inst|LessThan0~37_cout\);

-- Location: LCCOMB_X35_Y21_N6
\ALU|data_in|D2_in|LT_inst|LessThan0~39\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ALU|data_in|D2_in|LT_inst|LessThan0~39_cout\ = CARRY((\operand_b[19]~input_o\ & (\operand_a[19]~input_o\ & !\ALU|data_in|D2_in|LT_inst|LessThan0~37_cout\)) # (!\operand_b[19]~input_o\ & ((\operand_a[19]~input_o\) # 
-- (!\ALU|data_in|D2_in|LT_inst|LessThan0~37_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \operand_b[19]~input_o\,
	datab => \operand_a[19]~input_o\,
	datad => VCC,
	cin => \ALU|data_in|D2_in|LT_inst|LessThan0~37_cout\,
	cout => \ALU|data_in|D2_in|LT_inst|LessThan0~39_cout\);

-- Location: LCCOMB_X35_Y21_N8
\ALU|data_in|D2_in|LT_inst|LessThan0~41\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ALU|data_in|D2_in|LT_inst|LessThan0~41_cout\ = CARRY((\operand_b[20]~input_o\ & ((!\ALU|data_in|D2_in|LT_inst|LessThan0~39_cout\) # (!\operand_a[20]~input_o\))) # (!\operand_b[20]~input_o\ & (!\operand_a[20]~input_o\ & 
-- !\ALU|data_in|D2_in|LT_inst|LessThan0~39_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \operand_b[20]~input_o\,
	datab => \operand_a[20]~input_o\,
	datad => VCC,
	cin => \ALU|data_in|D2_in|LT_inst|LessThan0~39_cout\,
	cout => \ALU|data_in|D2_in|LT_inst|LessThan0~41_cout\);

-- Location: LCCOMB_X35_Y21_N10
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

-- Location: LCCOMB_X35_Y21_N12
\ALU|data_in|D2_in|LT_inst|LessThan0~45\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ALU|data_in|D2_in|LT_inst|LessThan0~45_cout\ = CARRY((\operand_a[22]~input_o\ & (\operand_b[22]~input_o\ & !\ALU|data_in|D2_in|LT_inst|LessThan0~43_cout\)) # (!\operand_a[22]~input_o\ & ((\operand_b[22]~input_o\) # 
-- (!\ALU|data_in|D2_in|LT_inst|LessThan0~43_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \operand_a[22]~input_o\,
	datab => \operand_b[22]~input_o\,
	datad => VCC,
	cin => \ALU|data_in|D2_in|LT_inst|LessThan0~43_cout\,
	cout => \ALU|data_in|D2_in|LT_inst|LessThan0~45_cout\);

-- Location: LCCOMB_X35_Y21_N14
\ALU|data_in|D2_in|LT_inst|LessThan0~47\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ALU|data_in|D2_in|LT_inst|LessThan0~47_cout\ = CARRY((\operand_b[23]~input_o\ & (\operand_a[23]~input_o\ & !\ALU|data_in|D2_in|LT_inst|LessThan0~45_cout\)) # (!\operand_b[23]~input_o\ & ((\operand_a[23]~input_o\) # 
-- (!\ALU|data_in|D2_in|LT_inst|LessThan0~45_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \operand_b[23]~input_o\,
	datab => \operand_a[23]~input_o\,
	datad => VCC,
	cin => \ALU|data_in|D2_in|LT_inst|LessThan0~45_cout\,
	cout => \ALU|data_in|D2_in|LT_inst|LessThan0~47_cout\);

-- Location: LCCOMB_X35_Y21_N16
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

-- Location: LCCOMB_X35_Y21_N18
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

-- Location: LCCOMB_X35_Y21_N20
\ALU|data_in|D2_in|LT_inst|LessThan0~53\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ALU|data_in|D2_in|LT_inst|LessThan0~53_cout\ = CARRY((\operand_a[26]~input_o\ & (\operand_b[26]~input_o\ & !\ALU|data_in|D2_in|LT_inst|LessThan0~51_cout\)) # (!\operand_a[26]~input_o\ & ((\operand_b[26]~input_o\) # 
-- (!\ALU|data_in|D2_in|LT_inst|LessThan0~51_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \operand_a[26]~input_o\,
	datab => \operand_b[26]~input_o\,
	datad => VCC,
	cin => \ALU|data_in|D2_in|LT_inst|LessThan0~51_cout\,
	cout => \ALU|data_in|D2_in|LT_inst|LessThan0~53_cout\);

-- Location: LCCOMB_X35_Y21_N22
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

-- Location: LCCOMB_X35_Y21_N24
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

-- Location: LCCOMB_X35_Y21_N26
\ALU|data_in|D2_in|LT_inst|LessThan0~59\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ALU|data_in|D2_in|LT_inst|LessThan0~59_cout\ = CARRY((\operand_b[29]~input_o\ & (\operand_a[29]~input_o\ & !\ALU|data_in|D2_in|LT_inst|LessThan0~57_cout\)) # (!\operand_b[29]~input_o\ & ((\operand_a[29]~input_o\) # 
-- (!\ALU|data_in|D2_in|LT_inst|LessThan0~57_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \operand_b[29]~input_o\,
	datab => \operand_a[29]~input_o\,
	datad => VCC,
	cin => \ALU|data_in|D2_in|LT_inst|LessThan0~57_cout\,
	cout => \ALU|data_in|D2_in|LT_inst|LessThan0~59_cout\);

-- Location: LCCOMB_X35_Y21_N28
\ALU|data_in|D2_in|LT_inst|LessThan0~61\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ALU|data_in|D2_in|LT_inst|LessThan0~61_cout\ = CARRY((\operand_a[30]~input_o\ & (\operand_b[30]~input_o\ & !\ALU|data_in|D2_in|LT_inst|LessThan0~59_cout\)) # (!\operand_a[30]~input_o\ & ((\operand_b[30]~input_o\) # 
-- (!\ALU|data_in|D2_in|LT_inst|LessThan0~59_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \operand_a[30]~input_o\,
	datab => \operand_b[30]~input_o\,
	datad => VCC,
	cin => \ALU|data_in|D2_in|LT_inst|LessThan0~59_cout\,
	cout => \ALU|data_in|D2_in|LT_inst|LessThan0~61_cout\);

-- Location: LCCOMB_X35_Y21_N30
\ALU|data_in|D2_in|LT_inst|LessThan0~62\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ALU|data_in|D2_in|LT_inst|LessThan0~62_combout\ = (\operand_b[31]~input_o\ & ((\ALU|data_in|D2_in|LT_inst|LessThan0~61_cout\) # (!\operand_a[31]~input_o\))) # (!\operand_b[31]~input_o\ & (!\operand_a[31]~input_o\ & 
-- \ALU|data_in|D2_in|LT_inst|LessThan0~61_cout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001010110010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \operand_b[31]~input_o\,
	datab => \operand_a[31]~input_o\,
	cin => \ALU|data_in|D2_in|LT_inst|LessThan0~61_cout\,
	combout => \ALU|data_in|D2_in|LT_inst|LessThan0~62_combout\);

-- Location: LCCOMB_X34_Y18_N12
\ALU|data_in|D3_in|SLTU|Mux0~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ALU|data_in|D3_in|SLTU|Mux0~0_combout\ = (!\operand_b[31]~input_o\ & ((\ALU|data_in|D2_in|LT_inst|LessThan0~62_combout\) # (\operand_a[31]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ALU|data_in|D2_in|LT_inst|LessThan0~62_combout\,
	datac => \operand_b[31]~input_o\,
	datad => \operand_a[31]~input_o\,
	combout => \ALU|data_in|D3_in|SLTU|Mux0~0_combout\);

-- Location: LCCOMB_X34_Y18_N22
\ALU|data_in|D1_in|SLL|ShiftLeft0~5\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ALU|data_in|D1_in|SLL|ShiftLeft0~5_combout\ = (\operand_a[0]~input_o\ & (!\ALU|data_in|D1_in|SLL|ShiftLeft0~4_combout\ & (!\operand_b[3]~input_o\ & !\operand_b[4]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \operand_a[0]~input_o\,
	datab => \ALU|data_in|D1_in|SLL|ShiftLeft0~4_combout\,
	datac => \operand_b[3]~input_o\,
	datad => \operand_b[4]~input_o\,
	combout => \ALU|data_in|D1_in|SLL|ShiftLeft0~5_combout\);

-- Location: LCCOMB_X34_Y18_N8
\ALU|data_in|D0_in|AddSub|adder_inst|adder_loop[0].full_adder|S~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ALU|data_in|D0_in|AddSub|adder_inst|adder_loop[0].full_adder|S~0_combout\ = \operand_b[0]~input_o\ $ (\operand_a[0]~input_o\ $ (\funct7~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \operand_b[0]~input_o\,
	datac => \operand_a[0]~input_o\,
	datad => \funct7~input_o\,
	combout => \ALU|data_in|D0_in|AddSub|adder_inst|adder_loop[0].full_adder|S~0_combout\);

-- Location: LCCOMB_X34_Y18_N18
\ALU|data_OUT|MUX_Sel|Mux31~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ALU|data_OUT|MUX_Sel|Mux31~0_combout\ = (\alu_op[1]~input_o\ & (((\alu_op[0]~input_o\)))) # (!\alu_op[1]~input_o\ & ((\alu_op[0]~input_o\ & (\ALU|data_in|D1_in|SLL|ShiftLeft0~5_combout\)) # (!\alu_op[0]~input_o\ & 
-- ((\ALU|data_in|D0_in|AddSub|adder_inst|adder_loop[0].full_adder|S~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU|data_in|D1_in|SLL|ShiftLeft0~5_combout\,
	datab => \ALU|data_in|D0_in|AddSub|adder_inst|adder_loop[0].full_adder|S~0_combout\,
	datac => \alu_op[1]~input_o\,
	datad => \alu_op[0]~input_o\,
	combout => \ALU|data_OUT|MUX_Sel|Mux31~0_combout\);

-- Location: LCCOMB_X34_Y18_N6
\ALU|data_OUT|MUX_Sel|Mux31~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ALU|data_OUT|MUX_Sel|Mux31~1_combout\ = (\ALU|data_OUT|MUX_Sel|Mux31~0_combout\ & ((\ALU|data_in|D3_in|SLTU|Mux0~0_combout\) # ((!\alu_op[1]~input_o\)))) # (!\ALU|data_OUT|MUX_Sel|Mux31~0_combout\ & (((\alu_op[1]~input_o\ & 
-- \ALU|data_in|D2_in|LT_inst|LessThan0~62_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU|data_in|D3_in|SLTU|Mux0~0_combout\,
	datab => \ALU|data_OUT|MUX_Sel|Mux31~0_combout\,
	datac => \alu_op[1]~input_o\,
	datad => \ALU|data_in|D2_in|LT_inst|LessThan0~62_combout\,
	combout => \ALU|data_OUT|MUX_Sel|Mux31~1_combout\);

-- Location: LCCOMB_X31_Y22_N0
\ALU|data_OUT|MUX_Sel|Mux31~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ALU|data_OUT|MUX_Sel|Mux31~2_combout\ = (\alu_op[2]~input_o\ & (\ALU|data_OUT|MUX_Sel|Mux31~4_combout\)) # (!\alu_op[2]~input_o\ & ((\ALU|data_OUT|MUX_Sel|Mux31~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ALU|data_OUT|MUX_Sel|Mux31~4_combout\,
	datac => \alu_op[2]~input_o\,
	datad => \ALU|data_OUT|MUX_Sel|Mux31~1_combout\,
	combout => \ALU|data_OUT|MUX_Sel|Mux31~2_combout\);

-- Location: LCCOMB_X34_Y18_N16
\ALU|data_in|D5_in|Sel_SR|Data_out|MUX_Sel|Out[3]~14\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ALU|data_in|D5_in|Sel_SR|Data_out|MUX_Sel|Out[3]~14_combout\ = (\operand_a[31]~input_o\ & (\operand_b[0]~input_o\ & \funct7~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \operand_a[31]~input_o\,
	datab => \operand_b[0]~input_o\,
	datad => \funct7~input_o\,
	combout => \ALU|data_in|D5_in|Sel_SR|Data_out|MUX_Sel|Out[3]~14_combout\);

-- Location: LCCOMB_X34_Y19_N2
\ALU|data_in|D5_in|Sel_SR|Data_out|MUX_Sel|Out[1]~15\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ALU|data_in|D5_in|Sel_SR|Data_out|MUX_Sel|Out[1]~15_combout\ = (!\ALU|data_in|D5_in|Sel_SR|SRA_out|SRA1|Add1~1_combout\ & (\ALU|data_in|D5_in|Sel_SR|Data_out|MUX_Sel|Out[3]~14_combout\ & (\ALU|data_in|D5_in|Sel_SR|Data_out|MUX_Sel|Out[1]~9_combout\ & 
-- !\ALU|data_in|D5_in|Sel_SR|SRA_out|SRA1|Add1~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU|data_in|D5_in|Sel_SR|SRA_out|SRA1|Add1~1_combout\,
	datab => \ALU|data_in|D5_in|Sel_SR|Data_out|MUX_Sel|Out[3]~14_combout\,
	datac => \ALU|data_in|D5_in|Sel_SR|Data_out|MUX_Sel|Out[1]~9_combout\,
	datad => \ALU|data_in|D5_in|Sel_SR|SRA_out|SRA1|Add1~0_combout\,
	combout => \ALU|data_in|D5_in|Sel_SR|Data_out|MUX_Sel|Out[1]~15_combout\);

-- Location: LCCOMB_X34_Y18_N26
\ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~50\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~50_combout\ = (!\operand_b[0]~input_o\ & ((\operand_b[1]~input_o\ & (\operand_a[31]~input_o\)) # (!\operand_b[1]~input_o\ & ((\operand_a[29]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \operand_a[31]~input_o\,
	datab => \operand_b[0]~input_o\,
	datac => \operand_a[29]~input_o\,
	datad => \operand_b[1]~input_o\,
	combout => \ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~50_combout\);

-- Location: LCCOMB_X34_Y18_N28
\ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~51\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~51_combout\ = (\ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~50_combout\) # ((\operand_a[30]~input_o\ & (\operand_b[0]~input_o\ & !\operand_b[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \operand_a[30]~input_o\,
	datab => \operand_b[0]~input_o\,
	datac => \ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~50_combout\,
	datad => \operand_b[1]~input_o\,
	combout => \ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~51_combout\);

-- Location: LCCOMB_X32_Y17_N24
\ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~52\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~52_combout\ = (\operand_b[1]~input_o\ & (\operand_a[28]~input_o\)) # (!\operand_b[1]~input_o\ & ((\operand_a[26]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \operand_a[28]~input_o\,
	datac => \operand_b[1]~input_o\,
	datad => \operand_a[26]~input_o\,
	combout => \ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~52_combout\);

-- Location: LCCOMB_X32_Y17_N26
\ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~53\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~53_combout\ = (\operand_b[0]~input_o\ & ((\ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~52_combout\))) # (!\operand_b[0]~input_o\ & 
-- (\ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~30_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \operand_b[0]~input_o\,
	datab => \ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~30_combout\,
	datad => \ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~52_combout\,
	combout => \ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~53_combout\);

-- Location: LCCOMB_X34_Y20_N2
\ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~54\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~54_combout\ = (\operand_b[2]~input_o\ & (\ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~51_combout\)) # (!\operand_b[2]~input_o\ & 
-- ((\ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~53_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \operand_b[2]~input_o\,
	datab => \ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~51_combout\,
	datac => \ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~53_combout\,
	combout => \ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~54_combout\);

-- Location: LCCOMB_X29_Y20_N14
\ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~45\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~45_combout\ = (\operand_b[1]~input_o\ & ((\operand_a[24]~input_o\))) # (!\operand_b[1]~input_o\ & (\operand_a[22]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \operand_a[22]~input_o\,
	datac => \operand_b[1]~input_o\,
	datad => \operand_a[24]~input_o\,
	combout => \ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~45_combout\);

-- Location: LCCOMB_X29_Y20_N24
\ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~46\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~46_combout\ = (\operand_b[0]~input_o\ & ((\ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~45_combout\))) # (!\operand_b[0]~input_o\ & 
-- (\ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~20_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~20_combout\,
	datac => \ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~45_combout\,
	datad => \operand_b[0]~input_o\,
	combout => \ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~46_combout\);

-- Location: LCCOMB_X30_Y22_N30
\ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~47\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~47_combout\ = (\operand_b[1]~input_o\ & (\operand_a[20]~input_o\)) # (!\operand_b[1]~input_o\ & ((\operand_a[18]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \operand_a[20]~input_o\,
	datac => \operand_a[18]~input_o\,
	datad => \operand_b[1]~input_o\,
	combout => \ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~47_combout\);

-- Location: LCCOMB_X30_Y22_N8
\ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~48\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~48_combout\ = (\operand_b[0]~input_o\ & ((\ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~47_combout\))) # (!\operand_b[0]~input_o\ & 
-- (\ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~23_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \operand_b[0]~input_o\,
	datab => \ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~23_combout\,
	datac => \ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~47_combout\,
	combout => \ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~48_combout\);

-- Location: LCCOMB_X35_Y19_N20
\ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~49\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~49_combout\ = (!\operand_b[3]~input_o\ & ((\operand_b[2]~input_o\ & (\ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~46_combout\)) # (!\operand_b[2]~input_o\ & 
-- ((\ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~48_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \operand_b[2]~input_o\,
	datab => \ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~46_combout\,
	datac => \operand_b[3]~input_o\,
	datad => \ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~48_combout\,
	combout => \ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~49_combout\);

-- Location: LCCOMB_X35_Y19_N30
\ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~55\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~55_combout\ = (\ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~49_combout\) # ((\ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~54_combout\ & \operand_b[3]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~54_combout\,
	datac => \operand_b[3]~input_o\,
	datad => \ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~49_combout\,
	combout => \ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~55_combout\);

-- Location: LCCOMB_X31_Y19_N22
\ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~41\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~41_combout\ = (\operand_b[1]~input_o\ & ((\operand_b[0]~input_o\ & ((\operand_a[8]~input_o\))) # (!\operand_b[0]~input_o\ & (\operand_a[7]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \operand_a[7]~input_o\,
	datab => \operand_b[1]~input_o\,
	datac => \operand_b[0]~input_o\,
	datad => \operand_a[8]~input_o\,
	combout => \ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~41_combout\);

-- Location: LCCOMB_X31_Y19_N16
\ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~42\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~42_combout\ = (\operand_b[0]~input_o\ & ((\operand_a[6]~input_o\))) # (!\operand_b[0]~input_o\ & (\operand_a[5]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \operand_b[0]~input_o\,
	datab => \operand_a[5]~input_o\,
	datac => \operand_a[6]~input_o\,
	combout => \ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~42_combout\);

-- Location: LCCOMB_X31_Y19_N10
\ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~43\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~43_combout\ = (\ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~41_combout\) # ((!\operand_b[1]~input_o\ & \ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~42_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \operand_b[1]~input_o\,
	datac => \ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~41_combout\,
	datad => \ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~42_combout\,
	combout => \ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~43_combout\);

-- Location: LCCOMB_X32_Y19_N16
\ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~39\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~39_combout\ = (\operand_b[0]~input_o\ & ((\operand_a[4]~input_o\))) # (!\operand_b[0]~input_o\ & (\operand_a[3]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \operand_b[0]~input_o\,
	datac => \operand_a[3]~input_o\,
	datad => \operand_a[4]~input_o\,
	combout => \ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~39_combout\);

-- Location: LCCOMB_X32_Y19_N18
\ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~40\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~40_combout\ = (\ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~12_combout\ & (((!\ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~14_combout\)))) # 
-- (!\ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~12_combout\ & ((\ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~14_combout\ & (\operand_a[1]~input_o\)) # (!\ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~14_combout\ & 
-- ((\ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~39_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100111101001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~12_combout\,
	datab => \operand_a[1]~input_o\,
	datac => \ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~14_combout\,
	datad => \ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~39_combout\,
	combout => \ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~40_combout\);

-- Location: LCCOMB_X32_Y19_N12
\ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~44\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~44_combout\ = (\ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~40_combout\ & ((\ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~43_combout\) # 
-- ((!\ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~12_combout\)))) # (!\ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~40_combout\ & (((\ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~12_combout\ & \operand_a[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~43_combout\,
	datab => \ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~40_combout\,
	datac => \ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~12_combout\,
	datad => \operand_a[2]~input_o\,
	combout => \ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~44_combout\);

-- Location: LCCOMB_X31_Y20_N6
\ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~37\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~37_combout\ = (\operand_b[1]~input_o\ & (\operand_a[12]~input_o\)) # (!\operand_b[1]~input_o\ & ((\operand_a[10]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \operand_b[1]~input_o\,
	datab => \operand_a[12]~input_o\,
	datac => \operand_a[10]~input_o\,
	combout => \ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~37_combout\);

-- Location: LCCOMB_X31_Y20_N16
\ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~38\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~38_combout\ = (\operand_b[0]~input_o\ & ((\ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~37_combout\))) # (!\operand_b[0]~input_o\ & 
-- (\ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~9_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \operand_b[0]~input_o\,
	datab => \ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~9_combout\,
	datad => \ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~37_combout\,
	combout => \ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~38_combout\);

-- Location: LCCOMB_X29_Y22_N22
\ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~35\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~35_combout\ = (\operand_b[1]~input_o\ & (\operand_a[16]~input_o\)) # (!\operand_b[1]~input_o\ & ((\operand_a[14]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \operand_a[16]~input_o\,
	datab => \operand_b[1]~input_o\,
	datac => \operand_a[14]~input_o\,
	combout => \ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~35_combout\);

-- Location: LCCOMB_X29_Y22_N16
\ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~36\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~36_combout\ = (\operand_b[0]~input_o\ & ((\ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~35_combout\))) # (!\operand_b[0]~input_o\ & 
-- (\ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \operand_b[0]~input_o\,
	datab => \ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~6_combout\,
	datac => \ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~35_combout\,
	combout => \ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~36_combout\);

-- Location: LCCOMB_X35_Y19_N0
\ALU|data_in|D5_in|Sel_SR|Data_out|MUX_Sel|Out[1]~16\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ALU|data_in|D5_in|Sel_SR|Data_out|MUX_Sel|Out[1]~16_combout\ = (\operand_b[3]~input_o\ & ((\operand_b[2]~input_o\ & ((\ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~36_combout\))) # (!\operand_b[2]~input_o\ & 
-- (\ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~38_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \operand_b[2]~input_o\,
	datab => \operand_b[3]~input_o\,
	datac => \ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~38_combout\,
	datad => \ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~36_combout\,
	combout => \ALU|data_in|D5_in|Sel_SR|Data_out|MUX_Sel|Out[1]~16_combout\);

-- Location: LCCOMB_X35_Y19_N18
\ALU|data_in|D5_in|Sel_SR|Data_out|MUX_Sel|Out[1]~17\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ALU|data_in|D5_in|Sel_SR|Data_out|MUX_Sel|Out[1]~17_combout\ = (!\operand_b[4]~input_o\ & ((\ALU|data_in|D5_in|Sel_SR|Data_out|MUX_Sel|Out[1]~16_combout\) # ((\ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~44_combout\ & !\operand_b[3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~44_combout\,
	datab => \operand_b[4]~input_o\,
	datac => \operand_b[3]~input_o\,
	datad => \ALU|data_in|D5_in|Sel_SR|Data_out|MUX_Sel|Out[1]~16_combout\,
	combout => \ALU|data_in|D5_in|Sel_SR|Data_out|MUX_Sel|Out[1]~17_combout\);

-- Location: LCCOMB_X35_Y19_N24
\ALU|data_in|D5_in|Sel_SR|Data_out|MUX_Sel|Out[1]~18\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ALU|data_in|D5_in|Sel_SR|Data_out|MUX_Sel|Out[1]~18_combout\ = (\ALU|data_in|D5_in|Sel_SR|Data_out|MUX_Sel|Out[1]~15_combout\) # ((\ALU|data_in|D5_in|Sel_SR|Data_out|MUX_Sel|Out[1]~17_combout\) # ((\operand_b[4]~input_o\ & 
-- \ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~55_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU|data_in|D5_in|Sel_SR|Data_out|MUX_Sel|Out[1]~15_combout\,
	datab => \operand_b[4]~input_o\,
	datac => \ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~55_combout\,
	datad => \ALU|data_in|D5_in|Sel_SR|Data_out|MUX_Sel|Out[1]~17_combout\,
	combout => \ALU|data_in|D5_in|Sel_SR|Data_out|MUX_Sel|Out[1]~18_combout\);

-- Location: LCCOMB_X35_Y18_N12
\ALU|data_OUT|MUX_Sel|Mux30~6\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ALU|data_OUT|MUX_Sel|Mux30~6_combout\ = (\alu_op[1]~input_o\ & (((\operand_b[1]~input_o\)))) # (!\alu_op[1]~input_o\ & ((\alu_op[0]~input_o\ & (\ALU|data_in|D5_in|Sel_SR|Data_out|MUX_Sel|Out[1]~18_combout\)) # (!\alu_op[0]~input_o\ & 
-- ((\operand_b[1]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU|data_in|D5_in|Sel_SR|Data_out|MUX_Sel|Out[1]~18_combout\,
	datab => \alu_op[1]~input_o\,
	datac => \operand_b[1]~input_o\,
	datad => \alu_op[0]~input_o\,
	combout => \ALU|data_OUT|MUX_Sel|Mux30~6_combout\);

-- Location: LCCOMB_X35_Y18_N22
\ALU|data_OUT|MUX_Sel|Mux30~7\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ALU|data_OUT|MUX_Sel|Mux30~7_combout\ = (\ALU|data_OUT|MUX_Sel|Mux30~6_combout\ & ((\alu_op[1]~input_o\ & ((\operand_a[1]~input_o\) # (!\alu_op[0]~input_o\))) # (!\alu_op[1]~input_o\ & ((\alu_op[0]~input_o\) # (!\operand_a[1]~input_o\))))) # 
-- (!\ALU|data_OUT|MUX_Sel|Mux30~6_combout\ & (((\operand_a[1]~input_o\ & !\alu_op[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001011011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU|data_OUT|MUX_Sel|Mux30~6_combout\,
	datab => \alu_op[1]~input_o\,
	datac => \operand_a[1]~input_o\,
	datad => \alu_op[0]~input_o\,
	combout => \ALU|data_OUT|MUX_Sel|Mux30~7_combout\);

-- Location: LCCOMB_X32_Y19_N30
\ALU|data_in|D1_in|SLL|ShiftLeft0~6\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ALU|data_in|D1_in|SLL|ShiftLeft0~6_combout\ = (\operand_b[0]~input_o\ & ((\operand_a[0]~input_o\))) # (!\operand_b[0]~input_o\ & (\operand_a[1]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \operand_a[1]~input_o\,
	datac => \operand_a[0]~input_o\,
	datad => \operand_b[0]~input_o\,
	combout => \ALU|data_in|D1_in|SLL|ShiftLeft0~6_combout\);

-- Location: LCCOMB_X32_Y20_N2
\ALU|data_in|D1_in|SLL|ShiftLeft0~100\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ALU|data_in|D1_in|SLL|ShiftLeft0~100_combout\ = (!\operand_b[1]~input_o\ & (!\operand_b[2]~input_o\ & (\ALU|data_in|D1_in|SLL|ShiftLeft0~6_combout\ & !\operand_b[3]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \operand_b[1]~input_o\,
	datab => \operand_b[2]~input_o\,
	datac => \ALU|data_in|D1_in|SLL|ShiftLeft0~6_combout\,
	datad => \operand_b[3]~input_o\,
	combout => \ALU|data_in|D1_in|SLL|ShiftLeft0~100_combout\);

-- Location: LCCOMB_X34_Y18_N14
\ALU|data_in|D0_in|AddSub|adder_inst|adder_loop[0].full_adder|Cout~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ALU|data_in|D0_in|AddSub|adder_inst|adder_loop[0].full_adder|Cout~0_combout\ = (\operand_b[0]~input_o\ & ((\operand_a[0]~input_o\) # (\funct7~input_o\))) # (!\operand_b[0]~input_o\ & (\operand_a[0]~input_o\ & \funct7~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \operand_b[0]~input_o\,
	datac => \operand_a[0]~input_o\,
	datad => \funct7~input_o\,
	combout => \ALU|data_in|D0_in|AddSub|adder_inst|adder_loop[0].full_adder|Cout~0_combout\);

-- Location: LCCOMB_X35_Y18_N8
\ALU|data_OUT|MUX_Sel|Mux30~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ALU|data_OUT|MUX_Sel|Mux30~2_combout\ = (!\alu_op[0]~input_o\ & (\ALU|data_in|D0_in|AddSub|adder_inst|adder_loop[0].full_adder|Cout~0_combout\ $ (\operand_b[1]~input_o\ $ (\operand_a[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU|data_in|D0_in|AddSub|adder_inst|adder_loop[0].full_adder|Cout~0_combout\,
	datab => \operand_b[1]~input_o\,
	datac => \operand_a[1]~input_o\,
	datad => \alu_op[0]~input_o\,
	combout => \ALU|data_OUT|MUX_Sel|Mux30~2_combout\);

-- Location: LCCOMB_X35_Y18_N10
\ALU|data_OUT|MUX_Sel|Mux30~5\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ALU|data_OUT|MUX_Sel|Mux30~5_combout\ = (\ALU|data_OUT|MUX_Sel|Mux30~2_combout\) # ((\ALU|data_in|D1_in|SLL|ShiftLeft0~100_combout\ & (!\operand_b[4]~input_o\ & \alu_op[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU|data_in|D1_in|SLL|ShiftLeft0~100_combout\,
	datab => \operand_b[4]~input_o\,
	datac => \ALU|data_OUT|MUX_Sel|Mux30~2_combout\,
	datad => \alu_op[0]~input_o\,
	combout => \ALU|data_OUT|MUX_Sel|Mux30~5_combout\);

-- Location: LCCOMB_X35_Y18_N2
\ALU|data_OUT|MUX_Sel|Mux30~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ALU|data_OUT|MUX_Sel|Mux30~4_combout\ = (\alu_op[2]~input_o\ & (\ALU|data_OUT|MUX_Sel|Mux30~7_combout\)) # (!\alu_op[2]~input_o\ & (((!\alu_op[1]~input_o\ & \ALU|data_OUT|MUX_Sel|Mux30~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU|data_OUT|MUX_Sel|Mux30~7_combout\,
	datab => \alu_op[1]~input_o\,
	datac => \alu_op[2]~input_o\,
	datad => \ALU|data_OUT|MUX_Sel|Mux30~5_combout\,
	combout => \ALU|data_OUT|MUX_Sel|Mux30~4_combout\);

-- Location: LCCOMB_X35_Y18_N14
\ALU|data_in|D0_in|AddSub|adder_inst|adder_loop[1].full_adder|Cout~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ALU|data_in|D0_in|AddSub|adder_inst|adder_loop[1].full_adder|Cout~0_combout\ = (\operand_a[1]~input_o\ & ((\operand_b[1]~input_o\) # (\ALU|data_in|D0_in|AddSub|adder_inst|adder_loop[0].full_adder|Cout~0_combout\))) # (!\operand_a[1]~input_o\ & 
-- (\operand_b[1]~input_o\ & \ALU|data_in|D0_in|AddSub|adder_inst|adder_loop[0].full_adder|Cout~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \operand_a[1]~input_o\,
	datab => \operand_b[1]~input_o\,
	datad => \ALU|data_in|D0_in|AddSub|adder_inst|adder_loop[0].full_adder|Cout~0_combout\,
	combout => \ALU|data_in|D0_in|AddSub|adder_inst|adder_loop[1].full_adder|Cout~0_combout\);

-- Location: LCCOMB_X35_Y18_N24
\ALU|data_OUT|MUX_Sel|Mux29~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ALU|data_OUT|MUX_Sel|Mux29~2_combout\ = (!\alu_op[0]~input_o\ & (\ALU|data_in|D0_in|AddSub|adder_inst|adder_loop[1].full_adder|Cout~0_combout\ $ (\operand_b[2]~input_o\ $ (\operand_a[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000100010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu_op[0]~input_o\,
	datab => \ALU|data_in|D0_in|AddSub|adder_inst|adder_loop[1].full_adder|Cout~0_combout\,
	datac => \operand_b[2]~input_o\,
	datad => \operand_a[2]~input_o\,
	combout => \ALU|data_OUT|MUX_Sel|Mux29~2_combout\);

-- Location: LCCOMB_X35_Y18_N26
\ALU|data_in|D1_in|SLL|ShiftLeft0~8\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ALU|data_in|D1_in|SLL|ShiftLeft0~8_combout\ = (!\operand_b[0]~input_o\ & ((\operand_b[1]~input_o\ & (\operand_a[0]~input_o\)) # (!\operand_b[1]~input_o\ & ((\operand_a[2]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \operand_a[0]~input_o\,
	datab => \operand_b[1]~input_o\,
	datac => \operand_b[0]~input_o\,
	datad => \operand_a[2]~input_o\,
	combout => \ALU|data_in|D1_in|SLL|ShiftLeft0~8_combout\);

-- Location: LCCOMB_X35_Y18_N20
\ALU|data_in|D1_in|SLL|ShiftLeft0~9\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ALU|data_in|D1_in|SLL|ShiftLeft0~9_combout\ = (\ALU|data_in|D1_in|SLL|ShiftLeft0~8_combout\) # ((\operand_b[0]~input_o\ & (!\operand_b[1]~input_o\ & \operand_a[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \operand_b[0]~input_o\,
	datab => \operand_b[1]~input_o\,
	datac => \ALU|data_in|D1_in|SLL|ShiftLeft0~8_combout\,
	datad => \operand_a[1]~input_o\,
	combout => \ALU|data_in|D1_in|SLL|ShiftLeft0~9_combout\);

-- Location: LCCOMB_X35_Y18_N28
\ALU|data_in|D1_in|SLL|ShiftLeft0~101\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ALU|data_in|D1_in|SLL|ShiftLeft0~101_combout\ = (!\operand_b[2]~input_o\ & (!\operand_b[3]~input_o\ & \ALU|data_in|D1_in|SLL|ShiftLeft0~9_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \operand_b[2]~input_o\,
	datac => \operand_b[3]~input_o\,
	datad => \ALU|data_in|D1_in|SLL|ShiftLeft0~9_combout\,
	combout => \ALU|data_in|D1_in|SLL|ShiftLeft0~101_combout\);

-- Location: LCCOMB_X35_Y18_N30
\ALU|data_OUT|MUX_Sel|Mux29~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ALU|data_OUT|MUX_Sel|Mux29~4_combout\ = (\ALU|data_OUT|MUX_Sel|Mux29~2_combout\) # ((\alu_op[0]~input_o\ & (!\operand_b[4]~input_o\ & \ALU|data_in|D1_in|SLL|ShiftLeft0~101_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu_op[0]~input_o\,
	datab => \ALU|data_OUT|MUX_Sel|Mux29~2_combout\,
	datac => \operand_b[4]~input_o\,
	datad => \ALU|data_in|D1_in|SLL|ShiftLeft0~101_combout\,
	combout => \ALU|data_OUT|MUX_Sel|Mux29~4_combout\);

-- Location: LCCOMB_X29_Y20_N2
\ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~59\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~59_combout\ = (\operand_b[1]~input_o\ & ((\operand_a[25]~input_o\))) # (!\operand_b[1]~input_o\ & (\operand_a[23]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \operand_b[1]~input_o\,
	datac => \operand_a[23]~input_o\,
	datad => \operand_a[25]~input_o\,
	combout => \ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~59_combout\);

-- Location: LCCOMB_X29_Y20_N20
\ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~60\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~60_combout\ = (\operand_b[0]~input_o\ & (\ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~59_combout\)) # (!\operand_b[0]~input_o\ & 
-- ((\ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~45_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~59_combout\,
	datac => \ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~45_combout\,
	datad => \operand_b[0]~input_o\,
	combout => \ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~60_combout\);

-- Location: LCCOMB_X29_Y20_N30
\ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~61\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~61_combout\ = (\operand_b[1]~input_o\ & (\operand_a[21]~input_o\)) # (!\operand_b[1]~input_o\ & ((\operand_a[19]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \operand_a[21]~input_o\,
	datab => \operand_a[19]~input_o\,
	datac => \operand_b[1]~input_o\,
	combout => \ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~61_combout\);

-- Location: LCCOMB_X30_Y22_N18
\ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~62\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~62_combout\ = (\operand_b[0]~input_o\ & (\ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~61_combout\)) # (!\operand_b[0]~input_o\ & 
-- ((\ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~47_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \operand_b[0]~input_o\,
	datab => \ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~61_combout\,
	datac => \ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~47_combout\,
	combout => \ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~62_combout\);

-- Location: LCCOMB_X30_Y18_N4
\ALU|data_in|D5_in|Sel_SR|Data_out|MUX_Sel|Out[10]~20\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ALU|data_in|D5_in|Sel_SR|Data_out|MUX_Sel|Out[10]~20_combout\ = (\operand_b[2]~input_o\ & (\ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~60_combout\)) # (!\operand_b[2]~input_o\ & 
-- ((\ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~62_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~60_combout\,
	datac => \operand_b[2]~input_o\,
	datad => \ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~62_combout\,
	combout => \ALU|data_in|D5_in|Sel_SR|Data_out|MUX_Sel|Out[10]~20_combout\);

-- Location: LCCOMB_X32_Y17_N4
\ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~56\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~56_combout\ = (\operand_b[1]~input_o\ & ((\operand_a[29]~input_o\))) # (!\operand_b[1]~input_o\ & (\operand_a[27]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \operand_a[27]~input_o\,
	datab => \operand_b[1]~input_o\,
	datad => \operand_a[29]~input_o\,
	combout => \ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~56_combout\);

-- Location: LCCOMB_X32_Y17_N22
\ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~57\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~57_combout\ = (\operand_b[0]~input_o\ & ((\ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~56_combout\))) # (!\operand_b[0]~input_o\ & 
-- (\ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~52_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \operand_b[0]~input_o\,
	datab => \ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~52_combout\,
	datac => \ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~56_combout\,
	combout => \ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~57_combout\);

-- Location: LCCOMB_X30_Y18_N10
\ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~58\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~58_combout\ = (\operand_b[2]~input_o\ & (((!\operand_b[1]~input_o\ & \ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~28_combout\)))) # (!\operand_b[2]~input_o\ & 
-- (\ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~57_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \operand_b[2]~input_o\,
	datab => \ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~57_combout\,
	datac => \operand_b[1]~input_o\,
	datad => \ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~28_combout\,
	combout => \ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~58_combout\);

-- Location: LCCOMB_X30_Y18_N14
\ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~63\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~63_combout\ = (\operand_b[3]~input_o\ & ((\ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~58_combout\))) # (!\operand_b[3]~input_o\ & 
-- (\ALU|data_in|D5_in|Sel_SR|Data_out|MUX_Sel|Out[10]~20_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ALU|data_in|D5_in|Sel_SR|Data_out|MUX_Sel|Out[10]~20_combout\,
	datac => \operand_b[3]~input_o\,
	datad => \ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~58_combout\,
	combout => \ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~63_combout\);

-- Location: LCCOMB_X31_Y19_N12
\ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~65\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~65_combout\ = (!\operand_b[0]~input_o\ & ((\operand_b[1]~input_o\ & (\operand_a[8]~input_o\)) # (!\operand_b[1]~input_o\ & ((\operand_a[6]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \operand_b[0]~input_o\,
	datab => \operand_a[8]~input_o\,
	datac => \operand_a[6]~input_o\,
	datad => \operand_b[1]~input_o\,
	combout => \ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~65_combout\);

-- Location: LCCOMB_X31_Y20_N26
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

-- Location: LCCOMB_X31_Y20_N20
\ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~67\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~67_combout\ = (\ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~65_combout\) # ((\operand_b[0]~input_o\ & \ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~66_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \operand_b[0]~input_o\,
	datab => \ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~65_combout\,
	datac => \ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~66_combout\,
	combout => \ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~67_combout\);

-- Location: LCCOMB_X32_Y20_N30
\ALU|data_in|D1_in|SLL|ShiftLeft0~7\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ALU|data_in|D1_in|SLL|ShiftLeft0~7_combout\ = (!\operand_b[2]~input_o\ & !\operand_b[3]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \operand_b[2]~input_o\,
	datad => \operand_b[3]~input_o\,
	combout => \ALU|data_in|D1_in|SLL|ShiftLeft0~7_combout\);

-- Location: LCCOMB_X32_Y20_N28
\ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~64\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~64_combout\ = (\operand_b[3]~input_o\) # ((\operand_b[1]~input_o\ & !\operand_b[2]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \operand_b[1]~input_o\,
	datac => \operand_b[2]~input_o\,
	datad => \operand_b[3]~input_o\,
	combout => \ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~64_combout\);

-- Location: LCCOMB_X32_Y20_N24
\ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~68\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~68_combout\ = (\ALU|data_in|D1_in|SLL|ShiftLeft0~7_combout\ & (((\ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~13_combout\ & !\ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~64_combout\)))) 
-- # (!\ALU|data_in|D1_in|SLL|ShiftLeft0~7_combout\ & ((\ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~67_combout\) # ((\ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~64_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~67_combout\,
	datab => \ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~13_combout\,
	datac => \ALU|data_in|D1_in|SLL|ShiftLeft0~7_combout\,
	datad => \ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~64_combout\,
	combout => \ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~68_combout\);

-- Location: LCCOMB_X29_Y22_N10
\ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~69\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~69_combout\ = (\operand_b[1]~input_o\ & ((\operand_a[17]~input_o\))) # (!\operand_b[1]~input_o\ & (\operand_a[15]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \operand_b[1]~input_o\,
	datac => \operand_a[15]~input_o\,
	datad => \operand_a[17]~input_o\,
	combout => \ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~69_combout\);

-- Location: LCCOMB_X29_Y22_N28
\ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~70\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~70_combout\ = (\operand_b[0]~input_o\ & ((\ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~69_combout\))) # (!\operand_b[0]~input_o\ & 
-- (\ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~35_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~35_combout\,
	datac => \operand_b[0]~input_o\,
	datad => \ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~69_combout\,
	combout => \ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~70_combout\);

-- Location: LCCOMB_X30_Y22_N28
\ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~71\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~71_combout\ = (\operand_b[1]~input_o\ & ((\operand_a[13]~input_o\))) # (!\operand_b[1]~input_o\ & (\operand_a[11]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \operand_a[11]~input_o\,
	datab => \operand_b[1]~input_o\,
	datac => \operand_a[13]~input_o\,
	combout => \ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~71_combout\);

-- Location: LCCOMB_X30_Y20_N0
\ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~72\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~72_combout\ = (\operand_b[0]~input_o\ & (\ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~71_combout\)) # (!\operand_b[0]~input_o\ & 
-- ((\ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~37_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \operand_b[0]~input_o\,
	datac => \ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~71_combout\,
	datad => \ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~37_combout\,
	combout => \ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~72_combout\);

-- Location: LCCOMB_X30_Y20_N26
\ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~73\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~73_combout\ = (\operand_b[2]~input_o\ & (\ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~70_combout\)) # (!\operand_b[2]~input_o\ & 
-- ((\ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~72_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~70_combout\,
	datac => \operand_b[2]~input_o\,
	datad => \ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~72_combout\,
	combout => \ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~73_combout\);

-- Location: LCCOMB_X31_Y19_N30
\ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~74\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~74_combout\ = (\ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~68_combout\ & ((\ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~73_combout\) # 
-- ((!\ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~64_combout\)))) # (!\ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~68_combout\ & (((\ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~17_combout\ & 
-- \ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~64_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~68_combout\,
	datab => \ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~73_combout\,
	datac => \ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~17_combout\,
	datad => \ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~64_combout\,
	combout => \ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~74_combout\);

-- Location: LCCOMB_X34_Y19_N12
\ALU|data_in|D5_in|Sel_SR|Data_out|MUX_Sel|Out[2]~19\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ALU|data_in|D5_in|Sel_SR|Data_out|MUX_Sel|Out[2]~19_combout\ = (\ALU|data_in|D5_in|Sel_SR|SRA_out|SRA1|Add1~1_combout\ & (\ALU|data_in|D5_in|Sel_SR|Data_out|MUX_Sel|Out[0]~8_combout\ & (\ALU|data_in|D5_in|Sel_SR|Data_out|MUX_Sel|Out[1]~9_combout\ & 
-- !\ALU|data_in|D5_in|Sel_SR|SRA_out|SRA1|Add1~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU|data_in|D5_in|Sel_SR|SRA_out|SRA1|Add1~1_combout\,
	datab => \ALU|data_in|D5_in|Sel_SR|Data_out|MUX_Sel|Out[0]~8_combout\,
	datac => \ALU|data_in|D5_in|Sel_SR|Data_out|MUX_Sel|Out[1]~9_combout\,
	datad => \ALU|data_in|D5_in|Sel_SR|SRA_out|SRA1|Add1~0_combout\,
	combout => \ALU|data_in|D5_in|Sel_SR|Data_out|MUX_Sel|Out[2]~19_combout\);

-- Location: LCCOMB_X35_Y18_N4
\ALU|data_in|D5_in|Sel_SR|Data_out|MUX_Sel|Out[2]~21\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ALU|data_in|D5_in|Sel_SR|Data_out|MUX_Sel|Out[2]~21_combout\ = (\ALU|data_in|D5_in|Sel_SR|Data_out|MUX_Sel|Out[2]~19_combout\) # ((\operand_b[4]~input_o\ & (\ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~63_combout\)) # (!\operand_b[4]~input_o\ & 
-- ((\ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~74_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~63_combout\,
	datab => \ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~74_combout\,
	datac => \operand_b[4]~input_o\,
	datad => \ALU|data_in|D5_in|Sel_SR|Data_out|MUX_Sel|Out[2]~19_combout\,
	combout => \ALU|data_in|D5_in|Sel_SR|Data_out|MUX_Sel|Out[2]~21_combout\);

-- Location: LCCOMB_X35_Y18_N0
\ALU|data_OUT|MUX_Sel|Mux29~5\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ALU|data_OUT|MUX_Sel|Mux29~5_combout\ = (\alu_op[0]~input_o\ & ((\alu_op[1]~input_o\ & ((\operand_b[2]~input_o\))) # (!\alu_op[1]~input_o\ & (\ALU|data_in|D5_in|Sel_SR|Data_out|MUX_Sel|Out[2]~21_combout\)))) # (!\alu_op[0]~input_o\ & 
-- (((\operand_b[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu_op[0]~input_o\,
	datab => \ALU|data_in|D5_in|Sel_SR|Data_out|MUX_Sel|Out[2]~21_combout\,
	datac => \operand_b[2]~input_o\,
	datad => \alu_op[1]~input_o\,
	combout => \ALU|data_OUT|MUX_Sel|Mux29~5_combout\);

-- Location: LCCOMB_X35_Y18_N18
\ALU|data_OUT|MUX_Sel|Mux29~6\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ALU|data_OUT|MUX_Sel|Mux29~6_combout\ = (\alu_op[0]~input_o\ & (\ALU|data_OUT|MUX_Sel|Mux29~5_combout\ & ((\operand_a[2]~input_o\) # (!\alu_op[1]~input_o\)))) # (!\alu_op[0]~input_o\ & ((\ALU|data_OUT|MUX_Sel|Mux29~5_combout\ & ((\alu_op[1]~input_o\) # 
-- (!\operand_a[2]~input_o\))) # (!\ALU|data_OUT|MUX_Sel|Mux29~5_combout\ & ((\operand_a[2]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010101110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu_op[0]~input_o\,
	datab => \alu_op[1]~input_o\,
	datac => \ALU|data_OUT|MUX_Sel|Mux29~5_combout\,
	datad => \operand_a[2]~input_o\,
	combout => \ALU|data_OUT|MUX_Sel|Mux29~6_combout\);

-- Location: LCCOMB_X35_Y18_N6
\ALU|data_OUT|MUX_Sel|Mux29~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ALU|data_OUT|MUX_Sel|Mux29~3_combout\ = (\alu_op[2]~input_o\ & (((\ALU|data_OUT|MUX_Sel|Mux29~6_combout\)))) # (!\alu_op[2]~input_o\ & (\ALU|data_OUT|MUX_Sel|Mux29~4_combout\ & ((!\alu_op[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU|data_OUT|MUX_Sel|Mux29~4_combout\,
	datab => \ALU|data_OUT|MUX_Sel|Mux29~6_combout\,
	datac => \alu_op[2]~input_o\,
	datad => \alu_op[1]~input_o\,
	combout => \ALU|data_OUT|MUX_Sel|Mux29~3_combout\);

-- Location: LCCOMB_X32_Y17_N12
\ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~78\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~78_combout\ = (\operand_b[0]~input_o\ & ((\ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~31_combout\))) # (!\operand_b[0]~input_o\ & 
-- (\ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~59_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~59_combout\,
	datab => \ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~31_combout\,
	datad => \operand_b[0]~input_o\,
	combout => \ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~78_combout\);

-- Location: LCCOMB_X29_Y20_N8
\ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~79\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~79_combout\ = (\operand_b[0]~input_o\ & (\ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~21_combout\)) # (!\operand_b[0]~input_o\ & 
-- ((\ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~61_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~21_combout\,
	datac => \ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~61_combout\,
	datad => \operand_b[0]~input_o\,
	combout => \ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~79_combout\);

-- Location: LCCOMB_X31_Y18_N26
\ALU|data_in|D5_in|Sel_SR|Data_out|MUX_Sel|Out[11]~23\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ALU|data_in|D5_in|Sel_SR|Data_out|MUX_Sel|Out[11]~23_combout\ = (\operand_b[2]~input_o\ & (\ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~78_combout\)) # (!\operand_b[2]~input_o\ & 
-- ((\ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~79_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \operand_b[2]~input_o\,
	datac => \ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~78_combout\,
	datad => \ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~79_combout\,
	combout => \ALU|data_in|D5_in|Sel_SR|Data_out|MUX_Sel|Out[11]~23_combout\);

-- Location: LCCOMB_X32_Y17_N8
\ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~75\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~75_combout\ = (\operand_b[0]~input_o\ & ((\operand_b[1]~input_o\ & ((\operand_a[30]~input_o\))) # (!\operand_b[1]~input_o\ & (\operand_a[28]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \operand_b[0]~input_o\,
	datab => \operand_b[1]~input_o\,
	datac => \operand_a[28]~input_o\,
	datad => \operand_a[30]~input_o\,
	combout => \ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~75_combout\);

-- Location: LCCOMB_X32_Y17_N10
\ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~76\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~76_combout\ = (\ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~75_combout\) # ((!\operand_b[0]~input_o\ & \ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~56_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010011110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \operand_b[0]~input_o\,
	datab => \ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~56_combout\,
	datac => \ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~75_combout\,
	combout => \ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~76_combout\);

-- Location: LCCOMB_X32_Y19_N0
\ALU|data_in|D1_in|SLL|ShiftLeft0~10\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ALU|data_in|D1_in|SLL|ShiftLeft0~10_combout\ = (\operand_b[1]~input_o\) # (\operand_b[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \operand_b[1]~input_o\,
	datad => \operand_b[0]~input_o\,
	combout => \ALU|data_in|D1_in|SLL|ShiftLeft0~10_combout\);

-- Location: LCCOMB_X31_Y18_N24
\ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~77\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~77_combout\ = (\operand_b[2]~input_o\ & (((!\ALU|data_in|D1_in|SLL|ShiftLeft0~10_combout\ & \operand_a[31]~input_o\)))) # (!\operand_b[2]~input_o\ & 
-- (\ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~76_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~76_combout\,
	datab => \operand_b[2]~input_o\,
	datac => \ALU|data_in|D1_in|SLL|ShiftLeft0~10_combout\,
	datad => \operand_a[31]~input_o\,
	combout => \ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~77_combout\);

-- Location: LCCOMB_X31_Y18_N12
\ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~80\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~80_combout\ = (\operand_b[3]~input_o\ & ((\ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~77_combout\))) # (!\operand_b[3]~input_o\ & 
-- (\ALU|data_in|D5_in|Sel_SR|Data_out|MUX_Sel|Out[11]~23_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU|data_in|D5_in|Sel_SR|Data_out|MUX_Sel|Out[11]~23_combout\,
	datab => \ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~77_combout\,
	datac => \operand_b[3]~input_o\,
	combout => \ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~80_combout\);

-- Location: LCCOMB_X30_Y20_N28
\ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~84\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~84_combout\ = (\operand_b[0]~input_o\ & (\ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~7_combout\)) # (!\operand_b[0]~input_o\ & 
-- ((\ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~71_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~7_combout\,
	datac => \ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~71_combout\,
	datad => \operand_b[0]~input_o\,
	combout => \ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~84_combout\);

-- Location: LCCOMB_X30_Y22_N14
\ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~83\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~83_combout\ = (\operand_b[0]~input_o\ & (\ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~24_combout\)) # (!\operand_b[0]~input_o\ & 
-- ((\ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~69_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~24_combout\,
	datac => \operand_b[0]~input_o\,
	datad => \ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~69_combout\,
	combout => \ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~83_combout\);

-- Location: LCCOMB_X30_Y20_N30
\ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~85\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~85_combout\ = (\operand_b[2]~input_o\ & ((\ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~83_combout\))) # (!\operand_b[2]~input_o\ & 
-- (\ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~84_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~84_combout\,
	datac => \operand_b[2]~input_o\,
	datad => \ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~83_combout\,
	combout => \ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~85_combout\);

-- Location: LCCOMB_X31_Y20_N14
\ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~81\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~81_combout\ = (\operand_b[0]~input_o\ & (\ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~10_combout\)) # (!\operand_b[0]~input_o\ & 
-- ((\ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~66_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \operand_b[0]~input_o\,
	datab => \ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~10_combout\,
	datac => \ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~66_combout\,
	combout => \ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~81_combout\);

-- Location: LCCOMB_X32_Y20_N18
\ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~82\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~82_combout\ = (\ALU|data_in|D1_in|SLL|ShiftLeft0~7_combout\ & (((\ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~39_combout\ & !\ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~64_combout\)))) 
-- # (!\ALU|data_in|D1_in|SLL|ShiftLeft0~7_combout\ & ((\ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~81_combout\) # ((\ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~64_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~81_combout\,
	datab => \ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~39_combout\,
	datac => \ALU|data_in|D1_in|SLL|ShiftLeft0~7_combout\,
	datad => \ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~64_combout\,
	combout => \ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~82_combout\);

-- Location: LCCOMB_X31_Y18_N14
\ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~86\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~86_combout\ = (\ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~64_combout\ & ((\ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~82_combout\ & 
-- (\ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~85_combout\)) # (!\ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~82_combout\ & ((\ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~42_combout\))))) # 
-- (!\ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~64_combout\ & (((\ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~82_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~85_combout\,
	datab => \ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~64_combout\,
	datac => \ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~42_combout\,
	datad => \ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~82_combout\,
	combout => \ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~86_combout\);

-- Location: LCCOMB_X34_Y19_N30
\ALU|data_in|D5_in|Sel_SR|Data_out|MUX_Sel|Out[3]~22\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ALU|data_in|D5_in|Sel_SR|Data_out|MUX_Sel|Out[3]~22_combout\ = (\ALU|data_in|D5_in|Sel_SR|SRA_out|SRA1|Add1~1_combout\ & (\ALU|data_in|D5_in|Sel_SR|Data_out|MUX_Sel|Out[3]~14_combout\ & (\ALU|data_in|D5_in|Sel_SR|Data_out|MUX_Sel|Out[1]~9_combout\ & 
-- !\ALU|data_in|D5_in|Sel_SR|SRA_out|SRA1|Add1~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU|data_in|D5_in|Sel_SR|SRA_out|SRA1|Add1~1_combout\,
	datab => \ALU|data_in|D5_in|Sel_SR|Data_out|MUX_Sel|Out[3]~14_combout\,
	datac => \ALU|data_in|D5_in|Sel_SR|Data_out|MUX_Sel|Out[1]~9_combout\,
	datad => \ALU|data_in|D5_in|Sel_SR|SRA_out|SRA1|Add1~0_combout\,
	combout => \ALU|data_in|D5_in|Sel_SR|Data_out|MUX_Sel|Out[3]~22_combout\);

-- Location: LCCOMB_X31_Y18_N0
\ALU|data_in|D5_in|Sel_SR|Data_out|MUX_Sel|Out[3]~24\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ALU|data_in|D5_in|Sel_SR|Data_out|MUX_Sel|Out[3]~24_combout\ = (\ALU|data_in|D5_in|Sel_SR|Data_out|MUX_Sel|Out[3]~22_combout\) # ((\operand_b[4]~input_o\ & (\ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~80_combout\)) # (!\operand_b[4]~input_o\ & 
-- ((\ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~86_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~80_combout\,
	datab => \ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~86_combout\,
	datac => \ALU|data_in|D5_in|Sel_SR|Data_out|MUX_Sel|Out[3]~22_combout\,
	datad => \operand_b[4]~input_o\,
	combout => \ALU|data_in|D5_in|Sel_SR|Data_out|MUX_Sel|Out[3]~24_combout\);

-- Location: LCCOMB_X31_Y18_N20
\ALU|data_OUT|MUX_Sel|Mux28~5\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ALU|data_OUT|MUX_Sel|Mux28~5_combout\ = (\alu_op[1]~input_o\ & (((\operand_b[3]~input_o\)))) # (!\alu_op[1]~input_o\ & ((\alu_op[0]~input_o\ & (\ALU|data_in|D5_in|Sel_SR|Data_out|MUX_Sel|Out[3]~24_combout\)) # (!\alu_op[0]~input_o\ & 
-- ((\operand_b[3]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu_op[1]~input_o\,
	datab => \ALU|data_in|D5_in|Sel_SR|Data_out|MUX_Sel|Out[3]~24_combout\,
	datac => \operand_b[3]~input_o\,
	datad => \alu_op[0]~input_o\,
	combout => \ALU|data_OUT|MUX_Sel|Mux28~5_combout\);

-- Location: LCCOMB_X34_Y17_N12
\ALU|data_OUT|MUX_Sel|Mux28~6\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ALU|data_OUT|MUX_Sel|Mux28~6_combout\ = (\ALU|data_OUT|MUX_Sel|Mux28~5_combout\ & ((\alu_op[1]~input_o\ & ((\operand_a[3]~input_o\) # (!\alu_op[0]~input_o\))) # (!\alu_op[1]~input_o\ & ((\alu_op[0]~input_o\) # (!\operand_a[3]~input_o\))))) # 
-- (!\ALU|data_OUT|MUX_Sel|Mux28~5_combout\ & (((\operand_a[3]~input_o\ & !\alu_op[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001011011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU|data_OUT|MUX_Sel|Mux28~5_combout\,
	datab => \alu_op[1]~input_o\,
	datac => \operand_a[3]~input_o\,
	datad => \alu_op[0]~input_o\,
	combout => \ALU|data_OUT|MUX_Sel|Mux28~6_combout\);

-- Location: LCCOMB_X32_Y19_N26
\ALU|data_in|D1_in|SLL|ShiftLeft0~11\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ALU|data_in|D1_in|SLL|ShiftLeft0~11_combout\ = (!\operand_b[1]~input_o\ & ((\operand_b[0]~input_o\ & ((\operand_a[2]~input_o\))) # (!\operand_b[0]~input_o\ & (\operand_a[3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \operand_a[3]~input_o\,
	datab => \operand_b[0]~input_o\,
	datac => \operand_b[1]~input_o\,
	datad => \operand_a[2]~input_o\,
	combout => \ALU|data_in|D1_in|SLL|ShiftLeft0~11_combout\);

-- Location: LCCOMB_X32_Y19_N4
\ALU|data_in|D1_in|SLL|ShiftLeft0~12\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ALU|data_in|D1_in|SLL|ShiftLeft0~12_combout\ = (\ALU|data_in|D1_in|SLL|ShiftLeft0~7_combout\ & ((\ALU|data_in|D1_in|SLL|ShiftLeft0~11_combout\) # ((\operand_b[1]~input_o\ & \ALU|data_in|D1_in|SLL|ShiftLeft0~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU|data_in|D1_in|SLL|ShiftLeft0~11_combout\,
	datab => \operand_b[1]~input_o\,
	datac => \ALU|data_in|D1_in|SLL|ShiftLeft0~7_combout\,
	datad => \ALU|data_in|D1_in|SLL|ShiftLeft0~6_combout\,
	combout => \ALU|data_in|D1_in|SLL|ShiftLeft0~12_combout\);

-- Location: LCCOMB_X35_Y18_N16
\ALU|data_in|D0_in|AddSub|adder_inst|adder_loop[2].full_adder|Cout~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ALU|data_in|D0_in|AddSub|adder_inst|adder_loop[2].full_adder|Cout~0_combout\ = (\ALU|data_in|D0_in|AddSub|adder_inst|adder_loop[1].full_adder|Cout~0_combout\ & ((\operand_b[2]~input_o\) # (\operand_a[2]~input_o\))) # 
-- (!\ALU|data_in|D0_in|AddSub|adder_inst|adder_loop[1].full_adder|Cout~0_combout\ & (\operand_b[2]~input_o\ & \operand_a[2]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ALU|data_in|D0_in|AddSub|adder_inst|adder_loop[1].full_adder|Cout~0_combout\,
	datac => \operand_b[2]~input_o\,
	datad => \operand_a[2]~input_o\,
	combout => \ALU|data_in|D0_in|AddSub|adder_inst|adder_loop[2].full_adder|Cout~0_combout\);

-- Location: LCCOMB_X34_Y17_N24
\ALU|data_OUT|MUX_Sel|Mux28~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ALU|data_OUT|MUX_Sel|Mux28~2_combout\ = (!\alu_op[0]~input_o\ & (\ALU|data_in|D0_in|AddSub|adder_inst|adder_loop[2].full_adder|Cout~0_combout\ $ (\operand_a[3]~input_o\ $ (\operand_b[3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000100010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU|data_in|D0_in|AddSub|adder_inst|adder_loop[2].full_adder|Cout~0_combout\,
	datab => \alu_op[0]~input_o\,
	datac => \operand_a[3]~input_o\,
	datad => \operand_b[3]~input_o\,
	combout => \ALU|data_OUT|MUX_Sel|Mux28~2_combout\);

-- Location: LCCOMB_X34_Y17_N22
\ALU|data_OUT|MUX_Sel|Mux28~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ALU|data_OUT|MUX_Sel|Mux28~4_combout\ = (\ALU|data_OUT|MUX_Sel|Mux28~2_combout\) # ((\ALU|data_in|D1_in|SLL|ShiftLeft0~12_combout\ & (!\operand_b[4]~input_o\ & \alu_op[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU|data_in|D1_in|SLL|ShiftLeft0~12_combout\,
	datab => \ALU|data_OUT|MUX_Sel|Mux28~2_combout\,
	datac => \operand_b[4]~input_o\,
	datad => \alu_op[0]~input_o\,
	combout => \ALU|data_OUT|MUX_Sel|Mux28~4_combout\);

-- Location: LCCOMB_X34_Y17_N2
\ALU|data_OUT|MUX_Sel|Mux28~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ALU|data_OUT|MUX_Sel|Mux28~3_combout\ = (\alu_op[2]~input_o\ & (\ALU|data_OUT|MUX_Sel|Mux28~6_combout\)) # (!\alu_op[2]~input_o\ & (((\ALU|data_OUT|MUX_Sel|Mux28~4_combout\ & !\alu_op[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU|data_OUT|MUX_Sel|Mux28~6_combout\,
	datab => \alu_op[2]~input_o\,
	datac => \ALU|data_OUT|MUX_Sel|Mux28~4_combout\,
	datad => \alu_op[1]~input_o\,
	combout => \ALU|data_OUT|MUX_Sel|Mux28~3_combout\);

-- Location: LCCOMB_X30_Y20_N8
\ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~87\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~87_combout\ = (\operand_b[4]~input_o\) # ((\operand_b[2]~input_o\ & !\operand_b[3]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111010101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \operand_b[4]~input_o\,
	datab => \operand_b[2]~input_o\,
	datac => \operand_b[3]~input_o\,
	combout => \ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~87_combout\);

-- Location: LCCOMB_X31_Y17_N26
\ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~91\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~91_combout\ = (!\operand_b[2]~input_o\ & ((\operand_b[3]~input_o\ & ((\ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~29_combout\))) # (!\operand_b[3]~input_o\ & 
-- (\ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~22_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~22_combout\,
	datab => \operand_b[2]~input_o\,
	datac => \operand_b[3]~input_o\,
	datad => \ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~29_combout\,
	combout => \ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~91_combout\);

-- Location: LCCOMB_X31_Y17_N20
\ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~92\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~92_combout\ = (\ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~91_combout\) # ((\ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~32_combout\ & (!\operand_b[3]~input_o\ & 
-- \operand_b[2]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~91_combout\,
	datab => \ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~32_combout\,
	datac => \operand_b[3]~input_o\,
	datad => \operand_b[2]~input_o\,
	combout => \ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~92_combout\);

-- Location: LCCOMB_X31_Y17_N24
\ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~88\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~88_combout\ = (\operand_b[2]~input_o\ & ((\ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~25_combout\))) # (!\operand_b[2]~input_o\ & 
-- (\ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~8_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~8_combout\,
	datac => \operand_b[2]~input_o\,
	datad => \ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~25_combout\,
	combout => \ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~88_combout\);

-- Location: LCCOMB_X35_Y19_N2
\ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~89\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~89_combout\ = (!\operand_b[4]~input_o\ & !\operand_b[3]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \operand_b[4]~input_o\,
	datac => \operand_b[3]~input_o\,
	combout => \ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~89_combout\);

-- Location: LCCOMB_X34_Y17_N28
\ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~90\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~90_combout\ = (\ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~87_combout\ & (((!\ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~89_combout\)))) # 
-- (!\ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~87_combout\ & ((\ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~89_combout\ & ((\ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~18_combout\))) # 
-- (!\ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~89_combout\ & (\ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~88_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111000001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~87_combout\,
	datab => \ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~88_combout\,
	datac => \ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~89_combout\,
	datad => \ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~18_combout\,
	combout => \ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~90_combout\);

-- Location: LCCOMB_X34_Y17_N6
\ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~93\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~93_combout\ = (\ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~87_combout\ & ((\ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~90_combout\ & 
-- (\ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~92_combout\)) # (!\ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~90_combout\ & ((\ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~11_combout\))))) # 
-- (!\ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~87_combout\ & (((\ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~90_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~87_combout\,
	datab => \ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~92_combout\,
	datac => \ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~11_combout\,
	datad => \ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~90_combout\,
	combout => \ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~93_combout\);

-- Location: LCCOMB_X34_Y19_N18
\ALU|data_in|D5_in|Sel_SR|Data_out|MUX_Sel|Out[0]~83\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ALU|data_in|D5_in|Sel_SR|Data_out|MUX_Sel|Out[0]~83_combout\ = (!\ALU|data_in|D5_in|Sel_SR|SRA_out|SRA1|Add1~0_combout\ & (\ALU|data_in|D5_in|Sel_SR|Data_out|MUX_Sel|Out[0]~8_combout\ & (\operand_b[0]~input_o\ $ (!\operand_b[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU|data_in|D5_in|Sel_SR|SRA_out|SRA1|Add1~0_combout\,
	datab => \operand_b[0]~input_o\,
	datac => \operand_b[1]~input_o\,
	datad => \ALU|data_in|D5_in|Sel_SR|Data_out|MUX_Sel|Out[0]~8_combout\,
	combout => \ALU|data_in|D5_in|Sel_SR|Data_out|MUX_Sel|Out[0]~83_combout\);

-- Location: LCCOMB_X34_Y20_N20
\ALU|data_in|D5_in|Sel_SR|Data_out|MUX_Sel|Out[5]~25\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ALU|data_in|D5_in|Sel_SR|Data_out|MUX_Sel|Out[5]~25_combout\ = (\operand_b[3]~input_o\ & (\operand_b[2]~input_o\ $ (((\operand_b[0]~input_o\) # (\operand_b[1]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101011000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \operand_b[2]~input_o\,
	datab => \operand_b[0]~input_o\,
	datac => \operand_b[1]~input_o\,
	datad => \operand_b[3]~input_o\,
	combout => \ALU|data_in|D5_in|Sel_SR|Data_out|MUX_Sel|Out[5]~25_combout\);

-- Location: LCCOMB_X34_Y17_N16
\ALU|data_in|D5_in|Sel_SR|Data_out|MUX_Sel|Out[4]~26\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ALU|data_in|D5_in|Sel_SR|Data_out|MUX_Sel|Out[4]~26_combout\ = (\ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~93_combout\) # ((\ALU|data_in|D5_in|Sel_SR|Data_out|MUX_Sel|Out[0]~83_combout\ & 
-- \ALU|data_in|D5_in|Sel_SR|Data_out|MUX_Sel|Out[5]~25_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~93_combout\,
	datab => \ALU|data_in|D5_in|Sel_SR|Data_out|MUX_Sel|Out[0]~83_combout\,
	datac => \ALU|data_in|D5_in|Sel_SR|Data_out|MUX_Sel|Out[5]~25_combout\,
	combout => \ALU|data_in|D5_in|Sel_SR|Data_out|MUX_Sel|Out[4]~26_combout\);

-- Location: LCCOMB_X34_Y17_N0
\ALU|data_OUT|MUX_Sel|Mux27~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ALU|data_OUT|MUX_Sel|Mux27~3_combout\ = (\alu_op[1]~input_o\ & (((\operand_b[4]~input_o\)))) # (!\alu_op[1]~input_o\ & ((\alu_op[0]~input_o\ & (\ALU|data_in|D5_in|Sel_SR|Data_out|MUX_Sel|Out[4]~26_combout\)) # (!\alu_op[0]~input_o\ & 
-- ((\operand_b[4]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU|data_in|D5_in|Sel_SR|Data_out|MUX_Sel|Out[4]~26_combout\,
	datab => \alu_op[1]~input_o\,
	datac => \operand_b[4]~input_o\,
	datad => \alu_op[0]~input_o\,
	combout => \ALU|data_OUT|MUX_Sel|Mux27~3_combout\);

-- Location: LCCOMB_X34_Y17_N18
\ALU|data_OUT|MUX_Sel|Mux27~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ALU|data_OUT|MUX_Sel|Mux27~4_combout\ = (\operand_a[4]~input_o\ & ((\ALU|data_OUT|MUX_Sel|Mux27~3_combout\ & ((\alu_op[1]~input_o\) # (\alu_op[0]~input_o\))) # (!\ALU|data_OUT|MUX_Sel|Mux27~3_combout\ & ((!\alu_op[0]~input_o\))))) # 
-- (!\operand_a[4]~input_o\ & (\ALU|data_OUT|MUX_Sel|Mux27~3_combout\ & ((!\alu_op[0]~input_o\) # (!\alu_op[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000011011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \operand_a[4]~input_o\,
	datab => \alu_op[1]~input_o\,
	datac => \ALU|data_OUT|MUX_Sel|Mux27~3_combout\,
	datad => \alu_op[0]~input_o\,
	combout => \ALU|data_OUT|MUX_Sel|Mux27~4_combout\);

-- Location: LCCOMB_X32_Y19_N14
\ALU|data_in|D1_in|SLL|ShiftLeft0~13\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ALU|data_in|D1_in|SLL|ShiftLeft0~13_combout\ = (\operand_b[0]~input_o\ & ((\operand_b[1]~input_o\ & (\operand_a[1]~input_o\)) # (!\operand_b[1]~input_o\ & ((\operand_a[3]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \operand_b[1]~input_o\,
	datab => \operand_a[1]~input_o\,
	datac => \operand_a[3]~input_o\,
	datad => \operand_b[0]~input_o\,
	combout => \ALU|data_in|D1_in|SLL|ShiftLeft0~13_combout\);

-- Location: LCCOMB_X32_Y19_N24
\ALU|data_in|D1_in|SLL|ShiftLeft0~14\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ALU|data_in|D1_in|SLL|ShiftLeft0~14_combout\ = (\operand_b[1]~input_o\ & ((\operand_a[2]~input_o\))) # (!\operand_b[1]~input_o\ & (\operand_a[4]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \operand_a[4]~input_o\,
	datac => \operand_b[1]~input_o\,
	datad => \operand_a[2]~input_o\,
	combout => \ALU|data_in|D1_in|SLL|ShiftLeft0~14_combout\);

-- Location: LCCOMB_X32_Y19_N10
\ALU|data_in|D1_in|SLL|ShiftLeft0~15\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ALU|data_in|D1_in|SLL|ShiftLeft0~15_combout\ = (\ALU|data_in|D1_in|SLL|ShiftLeft0~13_combout\) # ((!\operand_b[0]~input_o\ & \ALU|data_in|D1_in|SLL|ShiftLeft0~14_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \operand_b[0]~input_o\,
	datac => \ALU|data_in|D1_in|SLL|ShiftLeft0~13_combout\,
	datad => \ALU|data_in|D1_in|SLL|ShiftLeft0~14_combout\,
	combout => \ALU|data_in|D1_in|SLL|ShiftLeft0~15_combout\);

-- Location: LCCOMB_X32_Y19_N20
\ALU|data_in|D1_in|SLL|ShiftLeft0~16\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ALU|data_in|D1_in|SLL|ShiftLeft0~16_combout\ = (\operand_b[2]~input_o\ & (!\ALU|data_in|D1_in|SLL|ShiftLeft0~10_combout\ & (\operand_a[0]~input_o\))) # (!\operand_b[2]~input_o\ & (((\ALU|data_in|D1_in|SLL|ShiftLeft0~15_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111010100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \operand_b[2]~input_o\,
	datab => \ALU|data_in|D1_in|SLL|ShiftLeft0~10_combout\,
	datac => \operand_a[0]~input_o\,
	datad => \ALU|data_in|D1_in|SLL|ShiftLeft0~15_combout\,
	combout => \ALU|data_in|D1_in|SLL|ShiftLeft0~16_combout\);

-- Location: LCCOMB_X34_Y17_N10
\ALU|data_in|D0_in|AddSub|adder_inst|adder_loop[3].full_adder|Cout~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ALU|data_in|D0_in|AddSub|adder_inst|adder_loop[3].full_adder|Cout~0_combout\ = (\ALU|data_in|D0_in|AddSub|adder_inst|adder_loop[2].full_adder|Cout~0_combout\ & ((\operand_a[3]~input_o\) # (\operand_b[3]~input_o\))) # 
-- (!\ALU|data_in|D0_in|AddSub|adder_inst|adder_loop[2].full_adder|Cout~0_combout\ & (\operand_a[3]~input_o\ & \operand_b[3]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU|data_in|D0_in|AddSub|adder_inst|adder_loop[2].full_adder|Cout~0_combout\,
	datac => \operand_a[3]~input_o\,
	datad => \operand_b[3]~input_o\,
	combout => \ALU|data_in|D0_in|AddSub|adder_inst|adder_loop[3].full_adder|Cout~0_combout\);

-- Location: LCCOMB_X34_Y17_N20
\ALU|data_OUT|MUX_Sel|Mux27~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ALU|data_OUT|MUX_Sel|Mux27~0_combout\ = (!\alu_op[0]~input_o\ & (\ALU|data_in|D0_in|AddSub|adder_inst|adder_loop[3].full_adder|Cout~0_combout\ $ (\operand_b[4]~input_o\ $ (\operand_a[4]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000100010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU|data_in|D0_in|AddSub|adder_inst|adder_loop[3].full_adder|Cout~0_combout\,
	datab => \alu_op[0]~input_o\,
	datac => \operand_b[4]~input_o\,
	datad => \operand_a[4]~input_o\,
	combout => \ALU|data_OUT|MUX_Sel|Mux27~0_combout\);

-- Location: LCCOMB_X34_Y17_N14
\ALU|data_OUT|MUX_Sel|Mux27~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ALU|data_OUT|MUX_Sel|Mux27~1_combout\ = (\ALU|data_OUT|MUX_Sel|Mux27~0_combout\) # ((\ALU|data_in|D1_in|SLL|ShiftLeft0~16_combout\ & (\ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~89_combout\ & \alu_op[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU|data_in|D1_in|SLL|ShiftLeft0~16_combout\,
	datab => \ALU|data_OUT|MUX_Sel|Mux27~0_combout\,
	datac => \ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~89_combout\,
	datad => \alu_op[0]~input_o\,
	combout => \ALU|data_OUT|MUX_Sel|Mux27~1_combout\);

-- Location: LCCOMB_X34_Y17_N8
\ALU|data_OUT|MUX_Sel|Mux27~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ALU|data_OUT|MUX_Sel|Mux27~2_combout\ = (\alu_op[2]~input_o\ & (\ALU|data_OUT|MUX_Sel|Mux27~4_combout\)) # (!\alu_op[2]~input_o\ & (((\ALU|data_OUT|MUX_Sel|Mux27~1_combout\ & !\alu_op[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU|data_OUT|MUX_Sel|Mux27~4_combout\,
	datab => \ALU|data_OUT|MUX_Sel|Mux27~1_combout\,
	datac => \alu_op[2]~input_o\,
	datad => \alu_op[1]~input_o\,
	combout => \ALU|data_OUT|MUX_Sel|Mux27~2_combout\);

-- Location: LCCOMB_X31_Y19_N0
\ALU|data_in|D1_in|SLL|ShiftLeft0~17\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ALU|data_in|D1_in|SLL|ShiftLeft0~17_combout\ = (\operand_b[1]~input_o\ & (\operand_a[3]~input_o\)) # (!\operand_b[1]~input_o\ & ((\operand_a[5]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \operand_a[3]~input_o\,
	datab => \operand_b[1]~input_o\,
	datac => \operand_a[5]~input_o\,
	combout => \ALU|data_in|D1_in|SLL|ShiftLeft0~17_combout\);

-- Location: LCCOMB_X31_Y19_N18
\ALU|data_in|D1_in|SLL|ShiftLeft0~18\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ALU|data_in|D1_in|SLL|ShiftLeft0~18_combout\ = (\operand_b[0]~input_o\ & ((\ALU|data_in|D1_in|SLL|ShiftLeft0~14_combout\))) # (!\operand_b[0]~input_o\ & (\ALU|data_in|D1_in|SLL|ShiftLeft0~17_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ALU|data_in|D1_in|SLL|ShiftLeft0~17_combout\,
	datac => \operand_b[0]~input_o\,
	datad => \ALU|data_in|D1_in|SLL|ShiftLeft0~14_combout\,
	combout => \ALU|data_in|D1_in|SLL|ShiftLeft0~18_combout\);

-- Location: LCCOMB_X31_Y23_N2
\ALU|data_in|D1_in|SLL|ShiftLeft0~19\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ALU|data_in|D1_in|SLL|ShiftLeft0~19_combout\ = (\operand_b[2]~input_o\ & (!\operand_b[1]~input_o\ & (\ALU|data_in|D1_in|SLL|ShiftLeft0~6_combout\))) # (!\operand_b[2]~input_o\ & (((\ALU|data_in|D1_in|SLL|ShiftLeft0~18_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111010100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \operand_b[2]~input_o\,
	datab => \operand_b[1]~input_o\,
	datac => \ALU|data_in|D1_in|SLL|ShiftLeft0~6_combout\,
	datad => \ALU|data_in|D1_in|SLL|ShiftLeft0~18_combout\,
	combout => \ALU|data_in|D1_in|SLL|ShiftLeft0~19_combout\);

-- Location: LCCOMB_X34_Y17_N26
\ALU|data_in|D0_in|AddSub|adder_inst|adder_loop[4].full_adder|Cout~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ALU|data_in|D0_in|AddSub|adder_inst|adder_loop[4].full_adder|Cout~0_combout\ = (\ALU|data_in|D0_in|AddSub|adder_inst|adder_loop[3].full_adder|Cout~0_combout\ & ((\operand_b[4]~input_o\) # (\operand_a[4]~input_o\))) # 
-- (!\ALU|data_in|D0_in|AddSub|adder_inst|adder_loop[3].full_adder|Cout~0_combout\ & (\operand_b[4]~input_o\ & \operand_a[4]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU|data_in|D0_in|AddSub|adder_inst|adder_loop[3].full_adder|Cout~0_combout\,
	datac => \operand_b[4]~input_o\,
	datad => \operand_a[4]~input_o\,
	combout => \ALU|data_in|D0_in|AddSub|adder_inst|adder_loop[4].full_adder|Cout~0_combout\);

-- Location: LCCOMB_X31_Y23_N0
\ALU|data_OUT|MUX_Sel|Mux26~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ALU|data_OUT|MUX_Sel|Mux26~0_combout\ = (!\alu_op[0]~input_o\ & (\operand_b[5]~input_o\ $ (\operand_a[5]~input_o\ $ (\ALU|data_in|D0_in|AddSub|adder_inst|adder_loop[4].full_adder|Cout~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \operand_b[5]~input_o\,
	datab => \operand_a[5]~input_o\,
	datac => \ALU|data_in|D0_in|AddSub|adder_inst|adder_loop[4].full_adder|Cout~0_combout\,
	datad => \alu_op[0]~input_o\,
	combout => \ALU|data_OUT|MUX_Sel|Mux26~0_combout\);

-- Location: LCCOMB_X31_Y23_N12
\ALU|data_OUT|MUX_Sel|Mux26~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ALU|data_OUT|MUX_Sel|Mux26~1_combout\ = (\ALU|data_OUT|MUX_Sel|Mux26~0_combout\) # ((\ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~89_combout\ & (\ALU|data_in|D1_in|SLL|ShiftLeft0~19_combout\ & \alu_op[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~89_combout\,
	datab => \ALU|data_in|D1_in|SLL|ShiftLeft0~19_combout\,
	datac => \ALU|data_OUT|MUX_Sel|Mux26~0_combout\,
	datad => \alu_op[0]~input_o\,
	combout => \ALU|data_OUT|MUX_Sel|Mux26~1_combout\);

-- Location: LCCOMB_X34_Y20_N6
\ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~96\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~96_combout\ = (!\operand_b[2]~input_o\ & ((\operand_b[3]~input_o\ & ((\ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~51_combout\))) # (!\operand_b[3]~input_o\ & 
-- (\ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~46_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \operand_b[2]~input_o\,
	datab => \ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~46_combout\,
	datac => \ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~51_combout\,
	datad => \operand_b[3]~input_o\,
	combout => \ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~96_combout\);

-- Location: LCCOMB_X34_Y20_N16
\ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~97\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~97_combout\ = (\ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~96_combout\) # ((!\operand_b[3]~input_o\ & (\ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~53_combout\ & 
-- \operand_b[2]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~96_combout\,
	datab => \operand_b[3]~input_o\,
	datac => \ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~53_combout\,
	datad => \operand_b[2]~input_o\,
	combout => \ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~97_combout\);

-- Location: LCCOMB_X35_Y19_N12
\ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~94\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~94_combout\ = (\operand_b[2]~input_o\ & ((\ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~48_combout\))) # (!\operand_b[2]~input_o\ & 
-- (\ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~36_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~36_combout\,
	datac => \operand_b[2]~input_o\,
	datad => \ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~48_combout\,
	combout => \ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~94_combout\);

-- Location: LCCOMB_X35_Y19_N6
\ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~95\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~95_combout\ = (\ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~89_combout\ & (\ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~43_combout\ & 
-- (!\ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~87_combout\))) # (!\ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~89_combout\ & (((\ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~87_combout\) # 
-- (\ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~94_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011101100111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~43_combout\,
	datab => \ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~89_combout\,
	datac => \ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~87_combout\,
	datad => \ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~94_combout\,
	combout => \ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~95_combout\);

-- Location: LCCOMB_X35_Y19_N8
\ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~98\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~98_combout\ = (\ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~87_combout\ & ((\ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~95_combout\ & 
-- ((\ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~97_combout\))) # (!\ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~95_combout\ & (\ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~38_combout\)))) # 
-- (!\ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~87_combout\ & (((\ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~95_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~38_combout\,
	datab => \ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~97_combout\,
	datac => \ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~87_combout\,
	datad => \ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~95_combout\,
	combout => \ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~98_combout\);

-- Location: LCCOMB_X30_Y20_N18
\ALU|data_in|D5_in|Sel_SR|Data_out|MUX_Sel|Out[5]~27\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ALU|data_in|D5_in|Sel_SR|Data_out|MUX_Sel|Out[5]~27_combout\ = (\ALU|data_in|D5_in|Sel_SR|Data_out|MUX_Sel|Out[5]~25_combout\ & (\operand_b[4]~input_o\ $ (((!\ALU|data_in|D1_in|SLL|ShiftLeft0~4_combout\ & !\operand_b[3]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \operand_b[4]~input_o\,
	datab => \ALU|data_in|D1_in|SLL|ShiftLeft0~4_combout\,
	datac => \operand_b[3]~input_o\,
	datad => \ALU|data_in|D5_in|Sel_SR|Data_out|MUX_Sel|Out[5]~25_combout\,
	combout => \ALU|data_in|D5_in|Sel_SR|Data_out|MUX_Sel|Out[5]~27_combout\);

-- Location: LCCOMB_X34_Y19_N16
\ALU|data_in|D5_in|Sel_SR|Data_out|MUX_Sel|Out[5]~28\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ALU|data_in|D5_in|Sel_SR|Data_out|MUX_Sel|Out[5]~28_combout\ = (\ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~98_combout\) # ((!\ALU|data_in|D5_in|Sel_SR|SRA_out|SRA1|Add1~1_combout\ & (\ALU|data_in|D5_in|Sel_SR|Data_out|MUX_Sel|Out[5]~27_combout\ 
-- & \ALU|data_in|D5_in|Sel_SR|Data_out|MUX_Sel|Out[3]~14_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU|data_in|D5_in|Sel_SR|SRA_out|SRA1|Add1~1_combout\,
	datab => \ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~98_combout\,
	datac => \ALU|data_in|D5_in|Sel_SR|Data_out|MUX_Sel|Out[5]~27_combout\,
	datad => \ALU|data_in|D5_in|Sel_SR|Data_out|MUX_Sel|Out[3]~14_combout\,
	combout => \ALU|data_in|D5_in|Sel_SR|Data_out|MUX_Sel|Out[5]~28_combout\);

-- Location: LCCOMB_X29_Y21_N0
\ALU|data_OUT|MUX_Sel|Mux26~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ALU|data_OUT|MUX_Sel|Mux26~3_combout\ = (\alu_op[1]~input_o\ & (\operand_b[5]~input_o\)) # (!\alu_op[1]~input_o\ & ((\alu_op[0]~input_o\ & ((\ALU|data_in|D5_in|Sel_SR|Data_out|MUX_Sel|Out[5]~28_combout\))) # (!\alu_op[0]~input_o\ & 
-- (\operand_b[5]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \operand_b[5]~input_o\,
	datab => \ALU|data_in|D5_in|Sel_SR|Data_out|MUX_Sel|Out[5]~28_combout\,
	datac => \alu_op[1]~input_o\,
	datad => \alu_op[0]~input_o\,
	combout => \ALU|data_OUT|MUX_Sel|Mux26~3_combout\);

-- Location: LCCOMB_X29_Y21_N18
\ALU|data_OUT|MUX_Sel|Mux26~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ALU|data_OUT|MUX_Sel|Mux26~4_combout\ = (\operand_a[5]~input_o\ & ((\ALU|data_OUT|MUX_Sel|Mux26~3_combout\ & ((\alu_op[1]~input_o\) # (\alu_op[0]~input_o\))) # (!\ALU|data_OUT|MUX_Sel|Mux26~3_combout\ & ((!\alu_op[0]~input_o\))))) # 
-- (!\operand_a[5]~input_o\ & (\ALU|data_OUT|MUX_Sel|Mux26~3_combout\ & ((!\alu_op[0]~input_o\) # (!\alu_op[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110011100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \operand_a[5]~input_o\,
	datab => \ALU|data_OUT|MUX_Sel|Mux26~3_combout\,
	datac => \alu_op[1]~input_o\,
	datad => \alu_op[0]~input_o\,
	combout => \ALU|data_OUT|MUX_Sel|Mux26~4_combout\);

-- Location: LCCOMB_X29_Y21_N24
\ALU|data_OUT|MUX_Sel|Mux26~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ALU|data_OUT|MUX_Sel|Mux26~2_combout\ = (\alu_op[2]~input_o\ & (((\ALU|data_OUT|MUX_Sel|Mux26~4_combout\)))) # (!\alu_op[2]~input_o\ & (\ALU|data_OUT|MUX_Sel|Mux26~1_combout\ & ((!\alu_op[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU|data_OUT|MUX_Sel|Mux26~1_combout\,
	datab => \ALU|data_OUT|MUX_Sel|Mux26~4_combout\,
	datac => \alu_op[1]~input_o\,
	datad => \alu_op[2]~input_o\,
	combout => \ALU|data_OUT|MUX_Sel|Mux26~2_combout\);

-- Location: LCCOMB_X30_Y20_N12
\ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~99\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~99_combout\ = (\operand_b[2]~input_o\ & ((\ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~62_combout\))) # (!\operand_b[2]~input_o\ & 
-- (\ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~70_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~70_combout\,
	datab => \ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~62_combout\,
	datac => \operand_b[2]~input_o\,
	combout => \ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~99_combout\);

-- Location: LCCOMB_X30_Y20_N6
\ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~100\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~100_combout\ = (\ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~87_combout\ & (!\ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~89_combout\)) # 
-- (!\ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~87_combout\ & ((\ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~89_combout\ & (\ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~67_combout\)) # 
-- (!\ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~89_combout\ & ((\ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~99_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111001101100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~87_combout\,
	datab => \ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~89_combout\,
	datac => \ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~67_combout\,
	datad => \ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~99_combout\,
	combout => \ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~100_combout\);

-- Location: LCCOMB_X30_Y18_N0
\ALU|data_in|D5_in|Sel_SR|Data_out|MUX_Sel|Out[14]~29\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ALU|data_in|D5_in|Sel_SR|Data_out|MUX_Sel|Out[14]~29_combout\ = (\operand_b[2]~input_o\ & ((\ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~57_combout\))) # (!\operand_b[2]~input_o\ & 
-- (\ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~60_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~60_combout\,
	datab => \ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~57_combout\,
	datac => \operand_b[2]~input_o\,
	combout => \ALU|data_in|D5_in|Sel_SR|Data_out|MUX_Sel|Out[14]~29_combout\);

-- Location: LCCOMB_X32_Y18_N28
\ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~109\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~109_combout\ = (\ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~14_combout\ & ((\operand_b[0]~input_o\ & (\operand_a[31]~input_o\)) # (!\operand_b[0]~input_o\ & ((\operand_a[30]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \operand_b[0]~input_o\,
	datab => \ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~14_combout\,
	datac => \operand_a[31]~input_o\,
	datad => \operand_a[30]~input_o\,
	combout => \ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~109_combout\);

-- Location: LCCOMB_X30_Y18_N2
\ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~101\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~101_combout\ = (\operand_b[3]~input_o\ & ((\ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~109_combout\))) # (!\operand_b[3]~input_o\ & 
-- (\ALU|data_in|D5_in|Sel_SR|Data_out|MUX_Sel|Out[14]~29_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ALU|data_in|D5_in|Sel_SR|Data_out|MUX_Sel|Out[14]~29_combout\,
	datac => \operand_b[3]~input_o\,
	datad => \ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~109_combout\,
	combout => \ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~101_combout\);

-- Location: LCCOMB_X30_Y20_N24
\ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~102\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~102_combout\ = (\ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~100_combout\ & (((\ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~101_combout\) # 
-- (!\ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~87_combout\)))) # (!\ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~100_combout\ & (\ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~72_combout\ & 
-- ((\ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~87_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~100_combout\,
	datab => \ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~72_combout\,
	datac => \ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~101_combout\,
	datad => \ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~87_combout\,
	combout => \ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~102_combout\);

-- Location: LCCOMB_X34_Y18_N24
\ALU|data_in|D5_in|Sel_SR|Data_out|MUX_Sel|Out[6]~30\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ALU|data_in|D5_in|Sel_SR|Data_out|MUX_Sel|Out[6]~30_combout\ = (\operand_a[31]~input_o\ & (!\operand_b[0]~input_o\ & (\operand_b[1]~input_o\ & \funct7~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \operand_a[31]~input_o\,
	datab => \operand_b[0]~input_o\,
	datac => \operand_b[1]~input_o\,
	datad => \funct7~input_o\,
	combout => \ALU|data_in|D5_in|Sel_SR|Data_out|MUX_Sel|Out[6]~30_combout\);

-- Location: LCCOMB_X30_Y20_N2
\ALU|data_in|D5_in|Sel_SR|Data_out|MUX_Sel|Out[6]~31\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ALU|data_in|D5_in|Sel_SR|Data_out|MUX_Sel|Out[6]~31_combout\ = (\ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~102_combout\) # ((!\ALU|data_in|D5_in|Sel_SR|SRA_out|SRA1|Add1~0_combout\ & 
-- (\ALU|data_in|D5_in|Sel_SR|Data_out|MUX_Sel|Out[6]~30_combout\ & \ALU|data_in|D5_in|Sel_SR|Data_out|MUX_Sel|Out[5]~25_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU|data_in|D5_in|Sel_SR|SRA_out|SRA1|Add1~0_combout\,
	datab => \ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~102_combout\,
	datac => \ALU|data_in|D5_in|Sel_SR|Data_out|MUX_Sel|Out[6]~30_combout\,
	datad => \ALU|data_in|D5_in|Sel_SR|Data_out|MUX_Sel|Out[5]~25_combout\,
	combout => \ALU|data_in|D5_in|Sel_SR|Data_out|MUX_Sel|Out[6]~31_combout\);

-- Location: LCCOMB_X34_Y21_N10
\ALU|data_OUT|MUX_Sel|Mux25~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ALU|data_OUT|MUX_Sel|Mux25~3_combout\ = (\alu_op[1]~input_o\ & (((\operand_b[6]~input_o\)))) # (!\alu_op[1]~input_o\ & ((\alu_op[0]~input_o\ & (\ALU|data_in|D5_in|Sel_SR|Data_out|MUX_Sel|Out[6]~31_combout\)) # (!\alu_op[0]~input_o\ & 
-- ((\operand_b[6]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu_op[1]~input_o\,
	datab => \ALU|data_in|D5_in|Sel_SR|Data_out|MUX_Sel|Out[6]~31_combout\,
	datac => \operand_b[6]~input_o\,
	datad => \alu_op[0]~input_o\,
	combout => \ALU|data_OUT|MUX_Sel|Mux25~3_combout\);

-- Location: LCCOMB_X34_Y21_N12
\ALU|data_OUT|MUX_Sel|Mux25~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ALU|data_OUT|MUX_Sel|Mux25~4_combout\ = (\alu_op[0]~input_o\ & (\ALU|data_OUT|MUX_Sel|Mux25~3_combout\ & ((\operand_a[6]~input_o\) # (!\alu_op[1]~input_o\)))) # (!\alu_op[0]~input_o\ & ((\ALU|data_OUT|MUX_Sel|Mux25~3_combout\ & ((\alu_op[1]~input_o\) # 
-- (!\operand_a[6]~input_o\))) # (!\ALU|data_OUT|MUX_Sel|Mux25~3_combout\ & ((\operand_a[6]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001101110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu_op[1]~input_o\,
	datab => \alu_op[0]~input_o\,
	datac => \ALU|data_OUT|MUX_Sel|Mux25~3_combout\,
	datad => \operand_a[6]~input_o\,
	combout => \ALU|data_OUT|MUX_Sel|Mux25~4_combout\);

-- Location: LCCOMB_X31_Y23_N22
\ALU|data_in|D0_in|AddSub|adder_inst|adder_loop[5].full_adder|Cout~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ALU|data_in|D0_in|AddSub|adder_inst|adder_loop[5].full_adder|Cout~0_combout\ = (\operand_a[5]~input_o\ & ((\ALU|data_in|D0_in|AddSub|adder_inst|adder_loop[4].full_adder|Cout~0_combout\) # (\operand_b[5]~input_o\))) # (!\operand_a[5]~input_o\ & 
-- (\ALU|data_in|D0_in|AddSub|adder_inst|adder_loop[4].full_adder|Cout~0_combout\ & \operand_b[5]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \operand_a[5]~input_o\,
	datac => \ALU|data_in|D0_in|AddSub|adder_inst|adder_loop[4].full_adder|Cout~0_combout\,
	datad => \operand_b[5]~input_o\,
	combout => \ALU|data_in|D0_in|AddSub|adder_inst|adder_loop[5].full_adder|Cout~0_combout\);

-- Location: LCCOMB_X34_Y21_N0
\ALU|data_OUT|MUX_Sel|Mux25~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ALU|data_OUT|MUX_Sel|Mux25~0_combout\ = (!\alu_op[0]~input_o\ & (\operand_b[6]~input_o\ $ (\ALU|data_in|D0_in|AddSub|adder_inst|adder_loop[5].full_adder|Cout~0_combout\ $ (\operand_a[6]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000100010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \operand_b[6]~input_o\,
	datab => \alu_op[0]~input_o\,
	datac => \ALU|data_in|D0_in|AddSub|adder_inst|adder_loop[5].full_adder|Cout~0_combout\,
	datad => \operand_a[6]~input_o\,
	combout => \ALU|data_OUT|MUX_Sel|Mux25~0_combout\);

-- Location: LCCOMB_X31_Y19_N20
\ALU|data_in|D1_in|SLL|ShiftLeft0~20\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ALU|data_in|D1_in|SLL|ShiftLeft0~20_combout\ = (\operand_b[1]~input_o\ & ((\operand_a[4]~input_o\))) # (!\operand_b[1]~input_o\ & (\operand_a[6]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \operand_b[1]~input_o\,
	datac => \operand_a[6]~input_o\,
	datad => \operand_a[4]~input_o\,
	combout => \ALU|data_in|D1_in|SLL|ShiftLeft0~20_combout\);

-- Location: LCCOMB_X31_Y19_N14
\ALU|data_in|D1_in|SLL|ShiftLeft0~21\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ALU|data_in|D1_in|SLL|ShiftLeft0~21_combout\ = (\operand_b[0]~input_o\ & ((\ALU|data_in|D1_in|SLL|ShiftLeft0~17_combout\))) # (!\operand_b[0]~input_o\ & (\ALU|data_in|D1_in|SLL|ShiftLeft0~20_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ALU|data_in|D1_in|SLL|ShiftLeft0~20_combout\,
	datac => \operand_b[0]~input_o\,
	datad => \ALU|data_in|D1_in|SLL|ShiftLeft0~17_combout\,
	combout => \ALU|data_in|D1_in|SLL|ShiftLeft0~21_combout\);

-- Location: LCCOMB_X32_Y22_N0
\ALU|data_in|D1_in|SLL|ShiftLeft0~22\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ALU|data_in|D1_in|SLL|ShiftLeft0~22_combout\ = (\operand_b[2]~input_o\ & ((\ALU|data_in|D1_in|SLL|ShiftLeft0~9_combout\))) # (!\operand_b[2]~input_o\ & (\ALU|data_in|D1_in|SLL|ShiftLeft0~21_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU|data_in|D1_in|SLL|ShiftLeft0~21_combout\,
	datac => \operand_b[2]~input_o\,
	datad => \ALU|data_in|D1_in|SLL|ShiftLeft0~9_combout\,
	combout => \ALU|data_in|D1_in|SLL|ShiftLeft0~22_combout\);

-- Location: LCCOMB_X34_Y21_N26
\ALU|data_OUT|MUX_Sel|Mux25~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ALU|data_OUT|MUX_Sel|Mux25~1_combout\ = (\ALU|data_OUT|MUX_Sel|Mux25~0_combout\) # ((\ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~89_combout\ & (\ALU|data_in|D1_in|SLL|ShiftLeft0~22_combout\ & \alu_op[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~89_combout\,
	datab => \ALU|data_OUT|MUX_Sel|Mux25~0_combout\,
	datac => \ALU|data_in|D1_in|SLL|ShiftLeft0~22_combout\,
	datad => \alu_op[0]~input_o\,
	combout => \ALU|data_OUT|MUX_Sel|Mux25~1_combout\);

-- Location: LCCOMB_X34_Y21_N20
\ALU|data_OUT|MUX_Sel|Mux25~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ALU|data_OUT|MUX_Sel|Mux25~2_combout\ = (\alu_op[2]~input_o\ & (\ALU|data_OUT|MUX_Sel|Mux25~4_combout\)) # (!\alu_op[2]~input_o\ & (((\ALU|data_OUT|MUX_Sel|Mux25~1_combout\ & !\alu_op[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU|data_OUT|MUX_Sel|Mux25~4_combout\,
	datab => \ALU|data_OUT|MUX_Sel|Mux25~1_combout\,
	datac => \alu_op[2]~input_o\,
	datad => \alu_op[1]~input_o\,
	combout => \ALU|data_OUT|MUX_Sel|Mux25~2_combout\);

-- Location: LCCOMB_X31_Y18_N2
\ALU|data_in|D5_in|Sel_SR|Data_out|MUX_Sel|Out[15]~32\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ALU|data_in|D5_in|Sel_SR|Data_out|MUX_Sel|Out[15]~32_combout\ = (\operand_b[2]~input_o\ & ((\ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~76_combout\))) # (!\operand_b[2]~input_o\ & 
-- (\ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~78_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \operand_b[2]~input_o\,
	datac => \ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~78_combout\,
	datad => \ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~76_combout\,
	combout => \ALU|data_in|D5_in|Sel_SR|Data_out|MUX_Sel|Out[15]~32_combout\);

-- Location: LCCOMB_X30_Y20_N16
\ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~105\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~105_combout\ = (\operand_b[3]~input_o\ & (((!\ALU|data_in|D1_in|SLL|ShiftLeft0~4_combout\ & \operand_a[31]~input_o\)))) # (!\operand_b[3]~input_o\ & 
-- (\ALU|data_in|D5_in|Sel_SR|Data_out|MUX_Sel|Out[15]~32_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU|data_in|D5_in|Sel_SR|Data_out|MUX_Sel|Out[15]~32_combout\,
	datab => \ALU|data_in|D1_in|SLL|ShiftLeft0~4_combout\,
	datac => \operand_b[3]~input_o\,
	datad => \operand_a[31]~input_o\,
	combout => \ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~105_combout\);

-- Location: LCCOMB_X30_Y20_N4
\ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~103\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~103_combout\ = (\operand_b[2]~input_o\ & (\ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~79_combout\)) # (!\operand_b[2]~input_o\ & 
-- ((\ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~83_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~79_combout\,
	datac => \operand_b[2]~input_o\,
	datad => \ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~83_combout\,
	combout => \ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~103_combout\);

-- Location: LCCOMB_X30_Y20_N22
\ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~104\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~104_combout\ = (\ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~87_combout\ & (((!\ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~89_combout\)))) # 
-- (!\ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~87_combout\ & ((\ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~89_combout\ & ((\ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~81_combout\))) # 
-- (!\ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~89_combout\ & (\ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~103_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111000001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~87_combout\,
	datab => \ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~103_combout\,
	datac => \ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~89_combout\,
	datad => \ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~81_combout\,
	combout => \ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~104_combout\);

-- Location: LCCOMB_X30_Y20_N10
\ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~106\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~106_combout\ = (\ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~87_combout\ & ((\ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~104_combout\ & 
-- (\ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~105_combout\)) # (!\ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~104_combout\ & ((\ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~84_combout\))))) # 
-- (!\ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~87_combout\ & (((\ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~104_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~87_combout\,
	datab => \ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~105_combout\,
	datac => \ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~104_combout\,
	datad => \ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~84_combout\,
	combout => \ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~106_combout\);

-- Location: LCCOMB_X34_Y19_N26
\ALU|data_in|D5_in|Sel_SR|Data_out|MUX_Sel|Out[7]~33\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ALU|data_in|D5_in|Sel_SR|Data_out|MUX_Sel|Out[7]~33_combout\ = (\ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~106_combout\) # ((\ALU|data_in|D5_in|Sel_SR|SRA_out|SRA1|Add1~1_combout\ & (\ALU|data_in|D5_in|Sel_SR|Data_out|MUX_Sel|Out[5]~27_combout\ 
-- & \ALU|data_in|D5_in|Sel_SR|Data_out|MUX_Sel|Out[3]~14_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU|data_in|D5_in|Sel_SR|SRA_out|SRA1|Add1~1_combout\,
	datab => \ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~106_combout\,
	datac => \ALU|data_in|D5_in|Sel_SR|Data_out|MUX_Sel|Out[5]~27_combout\,
	datad => \ALU|data_in|D5_in|Sel_SR|Data_out|MUX_Sel|Out[3]~14_combout\,
	combout => \ALU|data_in|D5_in|Sel_SR|Data_out|MUX_Sel|Out[7]~33_combout\);

-- Location: LCCOMB_X34_Y21_N6
\ALU|data_OUT|MUX_Sel|Mux24~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ALU|data_OUT|MUX_Sel|Mux24~3_combout\ = (\alu_op[1]~input_o\ & (((\operand_b[7]~input_o\)))) # (!\alu_op[1]~input_o\ & ((\alu_op[0]~input_o\ & (\ALU|data_in|D5_in|Sel_SR|Data_out|MUX_Sel|Out[7]~33_combout\)) # (!\alu_op[0]~input_o\ & 
-- ((\operand_b[7]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu_op[1]~input_o\,
	datab => \ALU|data_in|D5_in|Sel_SR|Data_out|MUX_Sel|Out[7]~33_combout\,
	datac => \operand_b[7]~input_o\,
	datad => \alu_op[0]~input_o\,
	combout => \ALU|data_OUT|MUX_Sel|Mux24~3_combout\);

-- Location: LCCOMB_X34_Y21_N24
\ALU|data_OUT|MUX_Sel|Mux24~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ALU|data_OUT|MUX_Sel|Mux24~4_combout\ = (\ALU|data_OUT|MUX_Sel|Mux24~3_combout\ & ((\alu_op[0]~input_o\ & ((\operand_a[7]~input_o\) # (!\alu_op[1]~input_o\))) # (!\alu_op[0]~input_o\ & ((\alu_op[1]~input_o\) # (!\operand_a[7]~input_o\))))) # 
-- (!\ALU|data_OUT|MUX_Sel|Mux24~3_combout\ & (!\alu_op[0]~input_o\ & (\operand_a[7]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001010011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU|data_OUT|MUX_Sel|Mux24~3_combout\,
	datab => \alu_op[0]~input_o\,
	datac => \operand_a[7]~input_o\,
	datad => \alu_op[1]~input_o\,
	combout => \ALU|data_OUT|MUX_Sel|Mux24~4_combout\);

-- Location: LCCOMB_X31_Y19_N8
\ALU|data_in|D1_in|SLL|ShiftLeft0~24\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ALU|data_in|D1_in|SLL|ShiftLeft0~24_combout\ = (\operand_b[1]~input_o\ & (\operand_a[5]~input_o\)) # (!\operand_b[1]~input_o\ & ((\operand_a[7]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \operand_b[1]~input_o\,
	datac => \operand_a[5]~input_o\,
	datad => \operand_a[7]~input_o\,
	combout => \ALU|data_in|D1_in|SLL|ShiftLeft0~24_combout\);

-- Location: LCCOMB_X31_Y19_N2
\ALU|data_in|D1_in|SLL|ShiftLeft0~25\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ALU|data_in|D1_in|SLL|ShiftLeft0~25_combout\ = (\operand_b[0]~input_o\ & ((\ALU|data_in|D1_in|SLL|ShiftLeft0~20_combout\))) # (!\operand_b[0]~input_o\ & (\ALU|data_in|D1_in|SLL|ShiftLeft0~24_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ALU|data_in|D1_in|SLL|ShiftLeft0~24_combout\,
	datac => \operand_b[0]~input_o\,
	datad => \ALU|data_in|D1_in|SLL|ShiftLeft0~20_combout\,
	combout => \ALU|data_in|D1_in|SLL|ShiftLeft0~25_combout\);

-- Location: LCCOMB_X32_Y19_N6
\ALU|data_in|D1_in|SLL|ShiftLeft0~23\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ALU|data_in|D1_in|SLL|ShiftLeft0~23_combout\ = (\ALU|data_in|D1_in|SLL|ShiftLeft0~11_combout\) # ((\operand_b[1]~input_o\ & \ALU|data_in|D1_in|SLL|ShiftLeft0~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU|data_in|D1_in|SLL|ShiftLeft0~11_combout\,
	datac => \operand_b[1]~input_o\,
	datad => \ALU|data_in|D1_in|SLL|ShiftLeft0~6_combout\,
	combout => \ALU|data_in|D1_in|SLL|ShiftLeft0~23_combout\);

-- Location: LCCOMB_X31_Y21_N0
\ALU|data_in|D1_in|SLL|ShiftLeft0~26\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ALU|data_in|D1_in|SLL|ShiftLeft0~26_combout\ = (\operand_b[2]~input_o\ & ((\ALU|data_in|D1_in|SLL|ShiftLeft0~23_combout\))) # (!\operand_b[2]~input_o\ & (\ALU|data_in|D1_in|SLL|ShiftLeft0~25_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU|data_in|D1_in|SLL|ShiftLeft0~25_combout\,
	datac => \operand_b[2]~input_o\,
	datad => \ALU|data_in|D1_in|SLL|ShiftLeft0~23_combout\,
	combout => \ALU|data_in|D1_in|SLL|ShiftLeft0~26_combout\);

-- Location: LCCOMB_X34_Y21_N14
\ALU|data_in|D0_in|AddSub|adder_inst|adder_loop[6].full_adder|Cout~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ALU|data_in|D0_in|AddSub|adder_inst|adder_loop[6].full_adder|Cout~0_combout\ = (\operand_b[6]~input_o\ & ((\ALU|data_in|D0_in|AddSub|adder_inst|adder_loop[5].full_adder|Cout~0_combout\) # (\operand_a[6]~input_o\))) # (!\operand_b[6]~input_o\ & 
-- (\ALU|data_in|D0_in|AddSub|adder_inst|adder_loop[5].full_adder|Cout~0_combout\ & \operand_a[6]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \operand_b[6]~input_o\,
	datac => \ALU|data_in|D0_in|AddSub|adder_inst|adder_loop[5].full_adder|Cout~0_combout\,
	datad => \operand_a[6]~input_o\,
	combout => \ALU|data_in|D0_in|AddSub|adder_inst|adder_loop[6].full_adder|Cout~0_combout\);

-- Location: LCCOMB_X34_Y21_N16
\ALU|data_OUT|MUX_Sel|Mux24~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ALU|data_OUT|MUX_Sel|Mux24~0_combout\ = (!\alu_op[0]~input_o\ & (\operand_a[7]~input_o\ $ (\ALU|data_in|D0_in|AddSub|adder_inst|adder_loop[6].full_adder|Cout~0_combout\ $ (\operand_b[7]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \operand_a[7]~input_o\,
	datab => \ALU|data_in|D0_in|AddSub|adder_inst|adder_loop[6].full_adder|Cout~0_combout\,
	datac => \operand_b[7]~input_o\,
	datad => \alu_op[0]~input_o\,
	combout => \ALU|data_OUT|MUX_Sel|Mux24~0_combout\);

-- Location: LCCOMB_X34_Y21_N18
\ALU|data_OUT|MUX_Sel|Mux24~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ALU|data_OUT|MUX_Sel|Mux24~1_combout\ = (\ALU|data_OUT|MUX_Sel|Mux24~0_combout\) # ((\ALU|data_in|D1_in|SLL|ShiftLeft0~26_combout\ & (\ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~89_combout\ & \alu_op[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU|data_in|D1_in|SLL|ShiftLeft0~26_combout\,
	datab => \ALU|data_OUT|MUX_Sel|Mux24~0_combout\,
	datac => \ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~89_combout\,
	datad => \alu_op[0]~input_o\,
	combout => \ALU|data_OUT|MUX_Sel|Mux24~1_combout\);

-- Location: LCCOMB_X34_Y21_N28
\ALU|data_OUT|MUX_Sel|Mux24~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ALU|data_OUT|MUX_Sel|Mux24~2_combout\ = (\alu_op[2]~input_o\ & (((\ALU|data_OUT|MUX_Sel|Mux24~4_combout\)))) # (!\alu_op[2]~input_o\ & (!\alu_op[1]~input_o\ & ((\ALU|data_OUT|MUX_Sel|Mux24~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu_op[1]~input_o\,
	datab => \ALU|data_OUT|MUX_Sel|Mux24~4_combout\,
	datac => \alu_op[2]~input_o\,
	datad => \ALU|data_OUT|MUX_Sel|Mux24~1_combout\,
	combout => \ALU|data_OUT|MUX_Sel|Mux24~2_combout\);

-- Location: LCCOMB_X29_Y21_N12
\ALU|data_in|D7_in|AND_9|S[8]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ALU|data_in|D7_in|AND_9|S\(8) = (\operand_a[8]~input_o\ & \operand_b[8]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \operand_a[8]~input_o\,
	datad => \operand_b[8]~input_o\,
	combout => \ALU|data_in|D7_in|AND_9|S\(8));

-- Location: LCCOMB_X31_Y17_N10
\ALU|data_in|D5_in|Sel_SR|Data_out|MUX_Sel|Out[8]~36\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ALU|data_in|D5_in|Sel_SR|Data_out|MUX_Sel|Out[8]~36_combout\ = (\operand_b[2]~input_o\ & ((\operand_b[3]~input_o\ & (\ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~22_combout\)) # (!\operand_b[3]~input_o\ & 
-- ((\ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~8_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~22_combout\,
	datab => \operand_b[2]~input_o\,
	datac => \operand_b[3]~input_o\,
	datad => \ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~8_combout\,
	combout => \ALU|data_in|D5_in|Sel_SR|Data_out|MUX_Sel|Out[8]~36_combout\);

-- Location: LCCOMB_X31_Y17_N30
\ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~107\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~107_combout\ = (\operand_b[4]~input_o\ & !\operand_b[3]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \operand_b[4]~input_o\,
	datac => \operand_b[3]~input_o\,
	combout => \ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~107_combout\);

-- Location: LCCOMB_X34_Y20_N18
\ALU|data_in|D5_in|Sel_SR|Data_out|MUX_Sel|Out[9]~34\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ALU|data_in|D5_in|Sel_SR|Data_out|MUX_Sel|Out[9]~34_combout\ = (\operand_b[2]~input_o\ & (!\operand_b[3]~input_o\ & ((\operand_b[0]~input_o\) # (\operand_b[1]~input_o\)))) # (!\operand_b[2]~input_o\ & (!\operand_b[0]~input_o\ & (!\operand_b[1]~input_o\ & 
-- \operand_b[3]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \operand_b[2]~input_o\,
	datab => \operand_b[0]~input_o\,
	datac => \operand_b[1]~input_o\,
	datad => \operand_b[3]~input_o\,
	combout => \ALU|data_in|D5_in|Sel_SR|Data_out|MUX_Sel|Out[9]~34_combout\);

-- Location: LCCOMB_X31_Y17_N8
\ALU|data_in|D5_in|Sel_SR|Data_out|MUX_Sel|Out[8]~35\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ALU|data_in|D5_in|Sel_SR|Data_out|MUX_Sel|Out[8]~35_combout\ = (\ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~33_combout\ & ((\ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~107_combout\) # 
-- ((\ALU|data_in|D5_in|Sel_SR|Data_out|MUX_Sel|Out[0]~83_combout\ & \ALU|data_in|D5_in|Sel_SR|Data_out|MUX_Sel|Out[9]~34_combout\)))) # (!\ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~33_combout\ & 
-- (\ALU|data_in|D5_in|Sel_SR|Data_out|MUX_Sel|Out[0]~83_combout\ & ((\ALU|data_in|D5_in|Sel_SR|Data_out|MUX_Sel|Out[9]~34_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~33_combout\,
	datab => \ALU|data_in|D5_in|Sel_SR|Data_out|MUX_Sel|Out[0]~83_combout\,
	datac => \ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~107_combout\,
	datad => \ALU|data_in|D5_in|Sel_SR|Data_out|MUX_Sel|Out[9]~34_combout\,
	combout => \ALU|data_in|D5_in|Sel_SR|Data_out|MUX_Sel|Out[8]~35_combout\);

-- Location: LCCOMB_X31_Y17_N28
\ALU|data_in|D5_in|Sel_SR|Data_out|MUX_Sel|Out[8]~37\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ALU|data_in|D5_in|Sel_SR|Data_out|MUX_Sel|Out[8]~37_combout\ = (!\operand_b[2]~input_o\ & ((\operand_b[3]~input_o\ & ((\ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~25_combout\))) # (!\operand_b[3]~input_o\ & 
-- (\ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~11_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~11_combout\,
	datab => \operand_b[2]~input_o\,
	datac => \operand_b[3]~input_o\,
	datad => \ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~25_combout\,
	combout => \ALU|data_in|D5_in|Sel_SR|Data_out|MUX_Sel|Out[8]~37_combout\);

-- Location: LCCOMB_X31_Y17_N6
\ALU|data_in|D5_in|Sel_SR|Data_out|MUX_Sel|Out[8]~38\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ALU|data_in|D5_in|Sel_SR|Data_out|MUX_Sel|Out[8]~38_combout\ = (\ALU|data_in|D5_in|Sel_SR|Data_out|MUX_Sel|Out[8]~35_combout\) # ((!\operand_b[4]~input_o\ & ((\ALU|data_in|D5_in|Sel_SR|Data_out|MUX_Sel|Out[8]~36_combout\) # 
-- (\ALU|data_in|D5_in|Sel_SR|Data_out|MUX_Sel|Out[8]~37_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU|data_in|D5_in|Sel_SR|Data_out|MUX_Sel|Out[8]~36_combout\,
	datab => \ALU|data_in|D5_in|Sel_SR|Data_out|MUX_Sel|Out[8]~35_combout\,
	datac => \operand_b[4]~input_o\,
	datad => \ALU|data_in|D5_in|Sel_SR|Data_out|MUX_Sel|Out[8]~37_combout\,
	combout => \ALU|data_in|D5_in|Sel_SR|Data_out|MUX_Sel|Out[8]~38_combout\);

-- Location: LCCOMB_X29_Y21_N10
\ALU|data_OUT|MUX_Sel|Mux23~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ALU|data_OUT|MUX_Sel|Mux23~2_combout\ = (\alu_op[0]~input_o\ & (((\alu_op[1]~input_o\)))) # (!\alu_op[0]~input_o\ & ((\operand_a[8]~input_o\ & ((\alu_op[1]~input_o\) # (!\operand_b[8]~input_o\))) # (!\operand_a[8]~input_o\ & (\operand_b[8]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \operand_a[8]~input_o\,
	datab => \operand_b[8]~input_o\,
	datac => \alu_op[1]~input_o\,
	datad => \alu_op[0]~input_o\,
	combout => \ALU|data_OUT|MUX_Sel|Mux23~2_combout\);

-- Location: LCCOMB_X29_Y21_N6
\ALU|data_OUT|MUX_Sel|Mux23~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ALU|data_OUT|MUX_Sel|Mux23~3_combout\ = (\alu_op[0]~input_o\ & ((\ALU|data_OUT|MUX_Sel|Mux23~2_combout\ & (\ALU|data_in|D7_in|AND_9|S\(8))) # (!\ALU|data_OUT|MUX_Sel|Mux23~2_combout\ & ((\ALU|data_in|D5_in|Sel_SR|Data_out|MUX_Sel|Out[8]~38_combout\))))) 
-- # (!\alu_op[0]~input_o\ & (((\ALU|data_OUT|MUX_Sel|Mux23~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU|data_in|D7_in|AND_9|S\(8),
	datab => \alu_op[0]~input_o\,
	datac => \ALU|data_in|D5_in|Sel_SR|Data_out|MUX_Sel|Out[8]~38_combout\,
	datad => \ALU|data_OUT|MUX_Sel|Mux23~2_combout\,
	combout => \ALU|data_OUT|MUX_Sel|Mux23~3_combout\);

-- Location: LCCOMB_X34_Y21_N22
\ALU|data_in|D0_in|AddSub|adder_inst|adder_loop[7].full_adder|Cout~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ALU|data_in|D0_in|AddSub|adder_inst|adder_loop[7].full_adder|Cout~0_combout\ = (\operand_a[7]~input_o\ & ((\ALU|data_in|D0_in|AddSub|adder_inst|adder_loop[6].full_adder|Cout~0_combout\) # (\operand_b[7]~input_o\))) # (!\operand_a[7]~input_o\ & 
-- (\ALU|data_in|D0_in|AddSub|adder_inst|adder_loop[6].full_adder|Cout~0_combout\ & \operand_b[7]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \operand_a[7]~input_o\,
	datab => \ALU|data_in|D0_in|AddSub|adder_inst|adder_loop[6].full_adder|Cout~0_combout\,
	datac => \operand_b[7]~input_o\,
	combout => \ALU|data_in|D0_in|AddSub|adder_inst|adder_loop[7].full_adder|Cout~0_combout\);

-- Location: LCCOMB_X34_Y21_N8
\ALU|data_OUT|MUX_Sel|Mux23~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ALU|data_OUT|MUX_Sel|Mux23~4_combout\ = (!\alu_op[0]~input_o\ & (\ALU|data_in|D0_in|AddSub|adder_inst|adder_loop[7].full_adder|Cout~0_combout\ $ (\operand_b[8]~input_o\ $ (\operand_a[8]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100100000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU|data_in|D0_in|AddSub|adder_inst|adder_loop[7].full_adder|Cout~0_combout\,
	datab => \operand_b[8]~input_o\,
	datac => \alu_op[0]~input_o\,
	datad => \operand_a[8]~input_o\,
	combout => \ALU|data_OUT|MUX_Sel|Mux23~4_combout\);

-- Location: LCCOMB_X31_Y19_N28
\ALU|data_in|D1_in|SLL|ShiftLeft0~27\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ALU|data_in|D1_in|SLL|ShiftLeft0~27_combout\ = (\operand_b[1]~input_o\ & ((\operand_a[6]~input_o\))) # (!\operand_b[1]~input_o\ & (\operand_a[8]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \operand_a[8]~input_o\,
	datac => \operand_a[6]~input_o\,
	datad => \operand_b[1]~input_o\,
	combout => \ALU|data_in|D1_in|SLL|ShiftLeft0~27_combout\);

-- Location: LCCOMB_X31_Y19_N6
\ALU|data_in|D1_in|SLL|ShiftLeft0~28\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ALU|data_in|D1_in|SLL|ShiftLeft0~28_combout\ = (\operand_b[0]~input_o\ & (\ALU|data_in|D1_in|SLL|ShiftLeft0~24_combout\)) # (!\operand_b[0]~input_o\ & ((\ALU|data_in|D1_in|SLL|ShiftLeft0~27_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ALU|data_in|D1_in|SLL|ShiftLeft0~24_combout\,
	datac => \operand_b[0]~input_o\,
	datad => \ALU|data_in|D1_in|SLL|ShiftLeft0~27_combout\,
	combout => \ALU|data_in|D1_in|SLL|ShiftLeft0~28_combout\);

-- Location: LCCOMB_X30_Y19_N8
\ALU|data_in|D1_in|SLL|ShiftLeft0~29\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ALU|data_in|D1_in|SLL|ShiftLeft0~29_combout\ = (\operand_b[2]~input_o\ & ((\ALU|data_in|D1_in|SLL|ShiftLeft0~15_combout\))) # (!\operand_b[2]~input_o\ & (\ALU|data_in|D1_in|SLL|ShiftLeft0~28_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU|data_in|D1_in|SLL|ShiftLeft0~28_combout\,
	datac => \operand_b[2]~input_o\,
	datad => \ALU|data_in|D1_in|SLL|ShiftLeft0~15_combout\,
	combout => \ALU|data_in|D1_in|SLL|ShiftLeft0~29_combout\);

-- Location: LCCOMB_X30_Y19_N2
\ALU|data_in|D1_in|SLL|ShiftLeft0~30\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ALU|data_in|D1_in|SLL|ShiftLeft0~30_combout\ = (\operand_b[3]~input_o\ & (\operand_a[0]~input_o\ & ((!\ALU|data_in|D1_in|SLL|ShiftLeft0~4_combout\)))) # (!\operand_b[3]~input_o\ & (((\ALU|data_in|D1_in|SLL|ShiftLeft0~29_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \operand_a[0]~input_o\,
	datab => \ALU|data_in|D1_in|SLL|ShiftLeft0~29_combout\,
	datac => \operand_b[3]~input_o\,
	datad => \ALU|data_in|D1_in|SLL|ShiftLeft0~4_combout\,
	combout => \ALU|data_in|D1_in|SLL|ShiftLeft0~30_combout\);

-- Location: LCCOMB_X29_Y21_N16
\ALU|data_OUT|MUX_Sel|Mux23~6\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ALU|data_OUT|MUX_Sel|Mux23~6_combout\ = (\ALU|data_OUT|MUX_Sel|Mux23~4_combout\) # ((\ALU|data_in|D1_in|SLL|ShiftLeft0~30_combout\ & (!\operand_b[4]~input_o\ & \alu_op[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU|data_OUT|MUX_Sel|Mux23~4_combout\,
	datab => \ALU|data_in|D1_in|SLL|ShiftLeft0~30_combout\,
	datac => \operand_b[4]~input_o\,
	datad => \alu_op[0]~input_o\,
	combout => \ALU|data_OUT|MUX_Sel|Mux23~6_combout\);

-- Location: LCCOMB_X29_Y21_N8
\ALU|data_OUT|MUX_Sel|Mux23~5\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ALU|data_OUT|MUX_Sel|Mux23~5_combout\ = (\alu_op[2]~input_o\ & (\ALU|data_OUT|MUX_Sel|Mux23~3_combout\)) # (!\alu_op[2]~input_o\ & (((\ALU|data_OUT|MUX_Sel|Mux23~6_combout\ & !\alu_op[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU|data_OUT|MUX_Sel|Mux23~3_combout\,
	datab => \ALU|data_OUT|MUX_Sel|Mux23~6_combout\,
	datac => \alu_op[1]~input_o\,
	datad => \alu_op[2]~input_o\,
	combout => \ALU|data_OUT|MUX_Sel|Mux23~5_combout\);

-- Location: LCCOMB_X31_Y20_N8
\ALU|data_in|D1_in|SLL|ShiftLeft0~31\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ALU|data_in|D1_in|SLL|ShiftLeft0~31_combout\ = (\operand_b[1]~input_o\ & ((\operand_a[7]~input_o\))) # (!\operand_b[1]~input_o\ & (\operand_a[9]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \operand_b[1]~input_o\,
	datac => \operand_a[9]~input_o\,
	datad => \operand_a[7]~input_o\,
	combout => \ALU|data_in|D1_in|SLL|ShiftLeft0~31_combout\);

-- Location: LCCOMB_X31_Y20_N2
\ALU|data_in|D1_in|SLL|ShiftLeft0~32\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ALU|data_in|D1_in|SLL|ShiftLeft0~32_combout\ = (\operand_b[0]~input_o\ & ((\ALU|data_in|D1_in|SLL|ShiftLeft0~27_combout\))) # (!\operand_b[0]~input_o\ & (\ALU|data_in|D1_in|SLL|ShiftLeft0~31_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \operand_b[0]~input_o\,
	datab => \ALU|data_in|D1_in|SLL|ShiftLeft0~31_combout\,
	datad => \ALU|data_in|D1_in|SLL|ShiftLeft0~27_combout\,
	combout => \ALU|data_in|D1_in|SLL|ShiftLeft0~32_combout\);

-- Location: LCCOMB_X31_Y23_N24
\ALU|data_in|D1_in|SLL|ShiftLeft0~33\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ALU|data_in|D1_in|SLL|ShiftLeft0~33_combout\ = (\operand_b[2]~input_o\ & (\ALU|data_in|D1_in|SLL|ShiftLeft0~18_combout\)) # (!\operand_b[2]~input_o\ & ((\ALU|data_in|D1_in|SLL|ShiftLeft0~32_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \operand_b[2]~input_o\,
	datab => \ALU|data_in|D1_in|SLL|ShiftLeft0~18_combout\,
	datac => \ALU|data_in|D1_in|SLL|ShiftLeft0~32_combout\,
	combout => \ALU|data_in|D1_in|SLL|ShiftLeft0~33_combout\);

-- Location: LCCOMB_X32_Y20_N12
\ALU|data_in|D1_in|SLL|ShiftLeft0~34\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ALU|data_in|D1_in|SLL|ShiftLeft0~34_combout\ = (\operand_b[3]~input_o\ & (\ALU|data_in|D1_in|SLL|ShiftLeft0~6_combout\ & ((\ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~14_combout\)))) # (!\operand_b[3]~input_o\ & 
-- (((\ALU|data_in|D1_in|SLL|ShiftLeft0~33_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU|data_in|D1_in|SLL|ShiftLeft0~6_combout\,
	datab => \ALU|data_in|D1_in|SLL|ShiftLeft0~33_combout\,
	datac => \ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~14_combout\,
	datad => \operand_b[3]~input_o\,
	combout => \ALU|data_in|D1_in|SLL|ShiftLeft0~34_combout\);

-- Location: LCCOMB_X34_Y21_N2
\ALU|data_in|D0_in|AddSub|adder_inst|adder_loop[8].full_adder|Cout~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ALU|data_in|D0_in|AddSub|adder_inst|adder_loop[8].full_adder|Cout~0_combout\ = (\operand_a[8]~input_o\) # (\operand_b[8]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \operand_a[8]~input_o\,
	datad => \operand_b[8]~input_o\,
	combout => \ALU|data_in|D0_in|AddSub|adder_inst|adder_loop[8].full_adder|Cout~0_combout\);

-- Location: LCCOMB_X34_Y21_N4
\ALU|data_in|D0_in|AddSub|adder_inst|adder_loop[8].full_adder|Cout~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ALU|data_in|D0_in|AddSub|adder_inst|adder_loop[8].full_adder|Cout~1_combout\ = (\ALU|data_in|D0_in|AddSub|adder_inst|adder_loop[8].full_adder|Cout~0_combout\ & ((\operand_a[7]~input_o\ & 
-- ((\ALU|data_in|D0_in|AddSub|adder_inst|adder_loop[6].full_adder|Cout~0_combout\) # (\operand_b[7]~input_o\))) # (!\operand_a[7]~input_o\ & (\ALU|data_in|D0_in|AddSub|adder_inst|adder_loop[6].full_adder|Cout~0_combout\ & \operand_b[7]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \operand_a[7]~input_o\,
	datab => \ALU|data_in|D0_in|AddSub|adder_inst|adder_loop[6].full_adder|Cout~0_combout\,
	datac => \operand_b[7]~input_o\,
	datad => \ALU|data_in|D0_in|AddSub|adder_inst|adder_loop[8].full_adder|Cout~0_combout\,
	combout => \ALU|data_in|D0_in|AddSub|adder_inst|adder_loop[8].full_adder|Cout~1_combout\);

-- Location: LCCOMB_X29_Y21_N2
\ALU|data_in|D0_in|AddSub|adder_inst|adder_loop[9].full_adder|S\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ALU|data_in|D0_in|AddSub|adder_inst|adder_loop[9].full_adder|S~combout\ = \operand_b[9]~input_o\ $ (\operand_a[9]~input_o\ $ (((\ALU|data_in|D7_in|AND_9|S\(8)) # (\ALU|data_in|D0_in|AddSub|adder_inst|adder_loop[8].full_adder|Cout~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100100110110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU|data_in|D7_in|AND_9|S\(8),
	datab => \operand_b[9]~input_o\,
	datac => \ALU|data_in|D0_in|AddSub|adder_inst|adder_loop[8].full_adder|Cout~1_combout\,
	datad => \operand_a[9]~input_o\,
	combout => \ALU|data_in|D0_in|AddSub|adder_inst|adder_loop[9].full_adder|S~combout\);

-- Location: LCCOMB_X29_Y21_N26
\ALU|data_OUT|MUX_Sel|Mux22~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ALU|data_OUT|MUX_Sel|Mux22~3_combout\ = (\alu_op[0]~input_o\ & (\ALU|data_in|D1_in|SLL|ShiftLeft0~34_combout\ & ((!\operand_b[4]~input_o\)))) # (!\alu_op[0]~input_o\ & (((\ALU|data_in|D0_in|AddSub|adder_inst|adder_loop[9].full_adder|S~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU|data_in|D1_in|SLL|ShiftLeft0~34_combout\,
	datab => \ALU|data_in|D0_in|AddSub|adder_inst|adder_loop[9].full_adder|S~combout\,
	datac => \operand_b[4]~input_o\,
	datad => \alu_op[0]~input_o\,
	combout => \ALU|data_OUT|MUX_Sel|Mux22~3_combout\);

-- Location: LCCOMB_X35_Y19_N10
\ALU|data_in|D5_in|Sel_SR|Data_out|MUX_Sel|Out[9]~40\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ALU|data_in|D5_in|Sel_SR|Data_out|MUX_Sel|Out[9]~40_combout\ = (\operand_b[2]~input_o\ & ((\operand_b[3]~input_o\ & (\ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~46_combout\)) # (!\operand_b[3]~input_o\ & 
-- ((\ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~36_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \operand_b[2]~input_o\,
	datab => \ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~46_combout\,
	datac => \operand_b[3]~input_o\,
	datad => \ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~36_combout\,
	combout => \ALU|data_in|D5_in|Sel_SR|Data_out|MUX_Sel|Out[9]~40_combout\);

-- Location: LCCOMB_X34_Y19_N20
\ALU|data_in|D5_in|Sel_SR|Data_out|MUX_Sel|Out[9]~39\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ALU|data_in|D5_in|Sel_SR|Data_out|MUX_Sel|Out[9]~39_combout\ = (!\ALU|data_in|D5_in|Sel_SR|SRA_out|SRA1|Add1~0_combout\ & (\ALU|data_in|D5_in|Sel_SR|Data_out|MUX_Sel|Out[3]~14_combout\ & (!\ALU|data_in|D5_in|Sel_SR|SRA_out|SRA1|Add1~1_combout\ & 
-- \ALU|data_in|D5_in|Sel_SR|Data_out|MUX_Sel|Out[9]~34_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU|data_in|D5_in|Sel_SR|SRA_out|SRA1|Add1~0_combout\,
	datab => \ALU|data_in|D5_in|Sel_SR|Data_out|MUX_Sel|Out[3]~14_combout\,
	datac => \ALU|data_in|D5_in|Sel_SR|SRA_out|SRA1|Add1~1_combout\,
	datad => \ALU|data_in|D5_in|Sel_SR|Data_out|MUX_Sel|Out[9]~34_combout\,
	combout => \ALU|data_in|D5_in|Sel_SR|Data_out|MUX_Sel|Out[9]~39_combout\);

-- Location: LCCOMB_X35_Y19_N26
\ALU|data_in|D5_in|Sel_SR|Data_out|MUX_Sel|Out[9]~84\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ALU|data_in|D5_in|Sel_SR|Data_out|MUX_Sel|Out[9]~84_combout\ = (\ALU|data_in|D5_in|Sel_SR|Data_out|MUX_Sel|Out[9]~39_combout\) # ((\ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~54_combout\ & (\operand_b[4]~input_o\ & !\operand_b[3]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~54_combout\,
	datab => \operand_b[4]~input_o\,
	datac => \operand_b[3]~input_o\,
	datad => \ALU|data_in|D5_in|Sel_SR|Data_out|MUX_Sel|Out[9]~39_combout\,
	combout => \ALU|data_in|D5_in|Sel_SR|Data_out|MUX_Sel|Out[9]~84_combout\);

-- Location: LCCOMB_X35_Y19_N28
\ALU|data_in|D5_in|Sel_SR|Data_out|MUX_Sel|Out[9]~41\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ALU|data_in|D5_in|Sel_SR|Data_out|MUX_Sel|Out[9]~41_combout\ = (!\operand_b[2]~input_o\ & ((\operand_b[3]~input_o\ & ((\ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~48_combout\))) # (!\operand_b[3]~input_o\ & 
-- (\ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~38_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \operand_b[2]~input_o\,
	datab => \operand_b[3]~input_o\,
	datac => \ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~38_combout\,
	datad => \ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~48_combout\,
	combout => \ALU|data_in|D5_in|Sel_SR|Data_out|MUX_Sel|Out[9]~41_combout\);

-- Location: LCCOMB_X35_Y19_N22
\ALU|data_in|D5_in|Sel_SR|Data_out|MUX_Sel|Out[9]~42\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ALU|data_in|D5_in|Sel_SR|Data_out|MUX_Sel|Out[9]~42_combout\ = (\ALU|data_in|D5_in|Sel_SR|Data_out|MUX_Sel|Out[9]~84_combout\) # ((!\operand_b[4]~input_o\ & ((\ALU|data_in|D5_in|Sel_SR|Data_out|MUX_Sel|Out[9]~40_combout\) # 
-- (\ALU|data_in|D5_in|Sel_SR|Data_out|MUX_Sel|Out[9]~41_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU|data_in|D5_in|Sel_SR|Data_out|MUX_Sel|Out[9]~40_combout\,
	datab => \operand_b[4]~input_o\,
	datac => \ALU|data_in|D5_in|Sel_SR|Data_out|MUX_Sel|Out[9]~84_combout\,
	datad => \ALU|data_in|D5_in|Sel_SR|Data_out|MUX_Sel|Out[9]~41_combout\,
	combout => \ALU|data_in|D5_in|Sel_SR|Data_out|MUX_Sel|Out[9]~42_combout\);

-- Location: LCCOMB_X29_Y21_N20
\ALU|data_OUT|MUX_Sel|Mux22~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ALU|data_OUT|MUX_Sel|Mux22~4_combout\ = (\alu_op[1]~input_o\ & (((\operand_b[9]~input_o\)))) # (!\alu_op[1]~input_o\ & ((\alu_op[0]~input_o\ & (\ALU|data_in|D5_in|Sel_SR|Data_out|MUX_Sel|Out[9]~42_combout\)) # (!\alu_op[0]~input_o\ & 
-- ((\operand_b[9]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU|data_in|D5_in|Sel_SR|Data_out|MUX_Sel|Out[9]~42_combout\,
	datab => \operand_b[9]~input_o\,
	datac => \alu_op[1]~input_o\,
	datad => \alu_op[0]~input_o\,
	combout => \ALU|data_OUT|MUX_Sel|Mux22~4_combout\);

-- Location: LCCOMB_X29_Y21_N30
\ALU|data_OUT|MUX_Sel|Mux22~5\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ALU|data_OUT|MUX_Sel|Mux22~5_combout\ = (\operand_a[9]~input_o\ & ((\ALU|data_OUT|MUX_Sel|Mux22~4_combout\ & ((\alu_op[1]~input_o\) # (\alu_op[0]~input_o\))) # (!\ALU|data_OUT|MUX_Sel|Mux22~4_combout\ & ((!\alu_op[0]~input_o\))))) # 
-- (!\operand_a[9]~input_o\ & (\ALU|data_OUT|MUX_Sel|Mux22~4_combout\ & ((!\alu_op[0]~input_o\) # (!\alu_op[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110011100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \operand_a[9]~input_o\,
	datab => \ALU|data_OUT|MUX_Sel|Mux22~4_combout\,
	datac => \alu_op[1]~input_o\,
	datad => \alu_op[0]~input_o\,
	combout => \ALU|data_OUT|MUX_Sel|Mux22~5_combout\);

-- Location: LCCOMB_X29_Y21_N28
\ALU|data_OUT|MUX_Sel|Mux22~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ALU|data_OUT|MUX_Sel|Mux22~2_combout\ = (\alu_op[2]~input_o\ & (((\ALU|data_OUT|MUX_Sel|Mux22~5_combout\)))) # (!\alu_op[2]~input_o\ & (\ALU|data_OUT|MUX_Sel|Mux22~3_combout\ & (!\alu_op[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU|data_OUT|MUX_Sel|Mux22~3_combout\,
	datab => \alu_op[1]~input_o\,
	datac => \ALU|data_OUT|MUX_Sel|Mux22~5_combout\,
	datad => \alu_op[2]~input_o\,
	combout => \ALU|data_OUT|MUX_Sel|Mux22~2_combout\);

-- Location: LCCOMB_X29_Y21_N22
\ALU|data_in|D0_in|AddSub|adder_inst|adder_loop[9].full_adder|Cout~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ALU|data_in|D0_in|AddSub|adder_inst|adder_loop[9].full_adder|Cout~0_combout\ = (\operand_b[9]~input_o\ & ((\ALU|data_in|D7_in|AND_9|S\(8)) # ((\ALU|data_in|D0_in|AddSub|adder_inst|adder_loop[8].full_adder|Cout~1_combout\) # (\operand_a[9]~input_o\)))) # 
-- (!\operand_b[9]~input_o\ & (\operand_a[9]~input_o\ & ((\ALU|data_in|D7_in|AND_9|S\(8)) # (\ALU|data_in|D0_in|AddSub|adder_inst|adder_loop[8].full_adder|Cout~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU|data_in|D7_in|AND_9|S\(8),
	datab => \operand_b[9]~input_o\,
	datac => \ALU|data_in|D0_in|AddSub|adder_inst|adder_loop[8].full_adder|Cout~1_combout\,
	datad => \operand_a[9]~input_o\,
	combout => \ALU|data_in|D0_in|AddSub|adder_inst|adder_loop[9].full_adder|Cout~0_combout\);

-- Location: LCCOMB_X32_Y25_N0
\ALU|data_OUT|MUX_Sel|Mux21~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ALU|data_OUT|MUX_Sel|Mux21~2_combout\ = \operand_b[10]~input_o\ $ (\operand_a[10]~input_o\ $ (\ALU|data_in|D0_in|AddSub|adder_inst|adder_loop[9].full_adder|Cout~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \operand_b[10]~input_o\,
	datac => \operand_a[10]~input_o\,
	datad => \ALU|data_in|D0_in|AddSub|adder_inst|adder_loop[9].full_adder|Cout~0_combout\,
	combout => \ALU|data_OUT|MUX_Sel|Mux21~2_combout\);

-- Location: LCCOMB_X31_Y20_N28
\ALU|data_in|D1_in|SLL|ShiftLeft0~35\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ALU|data_in|D1_in|SLL|ShiftLeft0~35_combout\ = (\operand_b[1]~input_o\ & ((\operand_a[8]~input_o\))) # (!\operand_b[1]~input_o\ & (\operand_a[10]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \operand_b[1]~input_o\,
	datac => \operand_a[10]~input_o\,
	datad => \operand_a[8]~input_o\,
	combout => \ALU|data_in|D1_in|SLL|ShiftLeft0~35_combout\);

-- Location: LCCOMB_X31_Y20_N22
\ALU|data_in|D1_in|SLL|ShiftLeft0~36\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ALU|data_in|D1_in|SLL|ShiftLeft0~36_combout\ = (\operand_b[0]~input_o\ & (\ALU|data_in|D1_in|SLL|ShiftLeft0~31_combout\)) # (!\operand_b[0]~input_o\ & ((\ALU|data_in|D1_in|SLL|ShiftLeft0~35_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \operand_b[0]~input_o\,
	datac => \ALU|data_in|D1_in|SLL|ShiftLeft0~31_combout\,
	datad => \ALU|data_in|D1_in|SLL|ShiftLeft0~35_combout\,
	combout => \ALU|data_in|D1_in|SLL|ShiftLeft0~36_combout\);

-- Location: LCCOMB_X32_Y22_N26
\ALU|data_in|D1_in|SLL|ShiftLeft0~37\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ALU|data_in|D1_in|SLL|ShiftLeft0~37_combout\ = (\operand_b[2]~input_o\ & (\ALU|data_in|D1_in|SLL|ShiftLeft0~21_combout\)) # (!\operand_b[2]~input_o\ & ((\ALU|data_in|D1_in|SLL|ShiftLeft0~36_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU|data_in|D1_in|SLL|ShiftLeft0~21_combout\,
	datac => \operand_b[2]~input_o\,
	datad => \ALU|data_in|D1_in|SLL|ShiftLeft0~36_combout\,
	combout => \ALU|data_in|D1_in|SLL|ShiftLeft0~37_combout\);

-- Location: LCCOMB_X32_Y22_N12
\ALU|data_in|D1_in|SLL|ShiftLeft0~38\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ALU|data_in|D1_in|SLL|ShiftLeft0~38_combout\ = (\operand_b[3]~input_o\ & (((\ALU|data_in|D1_in|SLL|ShiftLeft0~9_combout\ & !\operand_b[2]~input_o\)))) # (!\operand_b[3]~input_o\ & (\ALU|data_in|D1_in|SLL|ShiftLeft0~37_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU|data_in|D1_in|SLL|ShiftLeft0~37_combout\,
	datab => \ALU|data_in|D1_in|SLL|ShiftLeft0~9_combout\,
	datac => \operand_b[3]~input_o\,
	datad => \operand_b[2]~input_o\,
	combout => \ALU|data_in|D1_in|SLL|ShiftLeft0~38_combout\);

-- Location: LCCOMB_X32_Y25_N24
\ALU|data_OUT|MUX_Sel|Mux21~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ALU|data_OUT|MUX_Sel|Mux21~4_combout\ = (\alu_op[0]~input_o\ & (!\operand_b[4]~input_o\ & ((\ALU|data_in|D1_in|SLL|ShiftLeft0~38_combout\)))) # (!\alu_op[0]~input_o\ & (((\ALU|data_OUT|MUX_Sel|Mux21~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \operand_b[4]~input_o\,
	datab => \ALU|data_OUT|MUX_Sel|Mux21~2_combout\,
	datac => \ALU|data_in|D1_in|SLL|ShiftLeft0~38_combout\,
	datad => \alu_op[0]~input_o\,
	combout => \ALU|data_OUT|MUX_Sel|Mux21~4_combout\);

-- Location: LCCOMB_X32_Y25_N10
\ALU|data_OUT|MUX_Sel|Mux21~5\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ALU|data_OUT|MUX_Sel|Mux21~5_combout\ = (\alu_op[0]~input_o\ & (((\operand_b[10]~input_o\ & \operand_a[10]~input_o\)) # (!\alu_op[1]~input_o\))) # (!\alu_op[0]~input_o\ & ((\operand_b[10]~input_o\ & ((\alu_op[1]~input_o\) # (!\operand_a[10]~input_o\))) # 
-- (!\operand_b[10]~input_o\ & ((\operand_a[10]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001111011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \operand_b[10]~input_o\,
	datab => \alu_op[1]~input_o\,
	datac => \operand_a[10]~input_o\,
	datad => \alu_op[0]~input_o\,
	combout => \ALU|data_OUT|MUX_Sel|Mux21~5_combout\);

-- Location: LCCOMB_X30_Y18_N30
\ALU|data_in|D5_in|Sel_SR|Data_out|MUX_Sel|Out[10]~44\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ALU|data_in|D5_in|Sel_SR|Data_out|MUX_Sel|Out[10]~44_combout\ = (\ALU|data_in|D5_in|Sel_SR|Data_out|MUX_Sel|Out[6]~30_combout\ & (!\ALU|data_in|D5_in|Sel_SR|SRA_out|SRA1|Add1~0_combout\ & \ALU|data_in|D5_in|Sel_SR|Data_out|MUX_Sel|Out[9]~34_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ALU|data_in|D5_in|Sel_SR|Data_out|MUX_Sel|Out[6]~30_combout\,
	datac => \ALU|data_in|D5_in|Sel_SR|SRA_out|SRA1|Add1~0_combout\,
	datad => \ALU|data_in|D5_in|Sel_SR|Data_out|MUX_Sel|Out[9]~34_combout\,
	combout => \ALU|data_in|D5_in|Sel_SR|Data_out|MUX_Sel|Out[10]~44_combout\);

-- Location: LCCOMB_X30_Y18_N24
\ALU|data_in|D5_in|Sel_SR|Data_out|MUX_Sel|Out[10]~45\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ALU|data_in|D5_in|Sel_SR|Data_out|MUX_Sel|Out[10]~45_combout\ = (\operand_b[3]~input_o\ & !\operand_b[4]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \operand_b[3]~input_o\,
	datad => \operand_b[4]~input_o\,
	combout => \ALU|data_in|D5_in|Sel_SR|Data_out|MUX_Sel|Out[10]~45_combout\);

-- Location: LCCOMB_X30_Y18_N20
\ALU|data_in|D5_in|Sel_SR|Data_out|MUX_Sel|Out[10]~43\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ALU|data_in|D5_in|Sel_SR|Data_out|MUX_Sel|Out[10]~43_combout\ = (!\operand_b[3]~input_o\ & ((\operand_b[4]~input_o\ & (\ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~58_combout\)) # (!\operand_b[4]~input_o\ & 
-- ((\ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~73_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~58_combout\,
	datab => \ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~73_combout\,
	datac => \operand_b[3]~input_o\,
	datad => \operand_b[4]~input_o\,
	combout => \ALU|data_in|D5_in|Sel_SR|Data_out|MUX_Sel|Out[10]~43_combout\);

-- Location: LCCOMB_X30_Y18_N26
\ALU|data_in|D5_in|Sel_SR|Data_out|MUX_Sel|Out[10]~46\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ALU|data_in|D5_in|Sel_SR|Data_out|MUX_Sel|Out[10]~46_combout\ = (\ALU|data_in|D5_in|Sel_SR|Data_out|MUX_Sel|Out[10]~44_combout\) # ((\ALU|data_in|D5_in|Sel_SR|Data_out|MUX_Sel|Out[10]~43_combout\) # 
-- ((\ALU|data_in|D5_in|Sel_SR|Data_out|MUX_Sel|Out[10]~45_combout\ & \ALU|data_in|D5_in|Sel_SR|Data_out|MUX_Sel|Out[10]~20_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU|data_in|D5_in|Sel_SR|Data_out|MUX_Sel|Out[10]~44_combout\,
	datab => \ALU|data_in|D5_in|Sel_SR|Data_out|MUX_Sel|Out[10]~45_combout\,
	datac => \ALU|data_in|D5_in|Sel_SR|Data_out|MUX_Sel|Out[10]~20_combout\,
	datad => \ALU|data_in|D5_in|Sel_SR|Data_out|MUX_Sel|Out[10]~43_combout\,
	combout => \ALU|data_in|D5_in|Sel_SR|Data_out|MUX_Sel|Out[10]~46_combout\);

-- Location: LCCOMB_X32_Y25_N4
\ALU|data_OUT|MUX_Sel|Mux21~6\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ALU|data_OUT|MUX_Sel|Mux21~6_combout\ = (\ALU|data_OUT|MUX_Sel|Mux21~5_combout\ & ((\alu_op[1]~input_o\) # ((\ALU|data_in|D5_in|Sel_SR|Data_out|MUX_Sel|Out[10]~46_combout\) # (!\alu_op[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU|data_OUT|MUX_Sel|Mux21~5_combout\,
	datab => \alu_op[1]~input_o\,
	datac => \ALU|data_in|D5_in|Sel_SR|Data_out|MUX_Sel|Out[10]~46_combout\,
	datad => \alu_op[0]~input_o\,
	combout => \ALU|data_OUT|MUX_Sel|Mux21~6_combout\);

-- Location: LCCOMB_X32_Y25_N26
\ALU|data_OUT|MUX_Sel|Mux21~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ALU|data_OUT|MUX_Sel|Mux21~3_combout\ = (\alu_op[2]~input_o\ & (((\ALU|data_OUT|MUX_Sel|Mux21~6_combout\)))) # (!\alu_op[2]~input_o\ & (\ALU|data_OUT|MUX_Sel|Mux21~4_combout\ & ((!\alu_op[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu_op[2]~input_o\,
	datab => \ALU|data_OUT|MUX_Sel|Mux21~4_combout\,
	datac => \ALU|data_OUT|MUX_Sel|Mux21~6_combout\,
	datad => \alu_op[1]~input_o\,
	combout => \ALU|data_OUT|MUX_Sel|Mux21~3_combout\);

-- Location: LCCOMB_X32_Y25_N18
\ALU|data_in|D0_in|AddSub|adder_inst|adder_loop[10].full_adder|Cout~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ALU|data_in|D0_in|AddSub|adder_inst|adder_loop[10].full_adder|Cout~0_combout\ = (\operand_b[10]~input_o\ & ((\operand_a[10]~input_o\) # (\ALU|data_in|D0_in|AddSub|adder_inst|adder_loop[9].full_adder|Cout~0_combout\))) # (!\operand_b[10]~input_o\ & 
-- (\operand_a[10]~input_o\ & \ALU|data_in|D0_in|AddSub|adder_inst|adder_loop[9].full_adder|Cout~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \operand_b[10]~input_o\,
	datac => \operand_a[10]~input_o\,
	datad => \ALU|data_in|D0_in|AddSub|adder_inst|adder_loop[9].full_adder|Cout~0_combout\,
	combout => \ALU|data_in|D0_in|AddSub|adder_inst|adder_loop[10].full_adder|Cout~0_combout\);

-- Location: LCCOMB_X32_Y25_N20
\ALU|data_OUT|MUX_Sel|Mux20~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ALU|data_OUT|MUX_Sel|Mux20~4_combout\ = (!\alu_op[0]~input_o\ & (\operand_a[11]~input_o\ $ (\ALU|data_in|D0_in|AddSub|adder_inst|adder_loop[10].full_adder|Cout~0_combout\ $ (\operand_b[11]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \operand_a[11]~input_o\,
	datab => \ALU|data_in|D0_in|AddSub|adder_inst|adder_loop[10].full_adder|Cout~0_combout\,
	datac => \operand_b[11]~input_o\,
	datad => \alu_op[0]~input_o\,
	combout => \ALU|data_OUT|MUX_Sel|Mux20~4_combout\);

-- Location: LCCOMB_X31_Y20_N0
\ALU|data_in|D1_in|SLL|ShiftLeft0~39\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ALU|data_in|D1_in|SLL|ShiftLeft0~39_combout\ = (\operand_b[1]~input_o\ & (\operand_a[9]~input_o\)) # (!\operand_b[1]~input_o\ & ((\operand_a[11]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \operand_b[1]~input_o\,
	datac => \operand_a[9]~input_o\,
	datad => \operand_a[11]~input_o\,
	combout => \ALU|data_in|D1_in|SLL|ShiftLeft0~39_combout\);

-- Location: LCCOMB_X31_Y20_N10
\ALU|data_in|D1_in|SLL|ShiftLeft0~40\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ALU|data_in|D1_in|SLL|ShiftLeft0~40_combout\ = (\operand_b[0]~input_o\ & ((\ALU|data_in|D1_in|SLL|ShiftLeft0~35_combout\))) # (!\operand_b[0]~input_o\ & (\ALU|data_in|D1_in|SLL|ShiftLeft0~39_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \operand_b[0]~input_o\,
	datab => \ALU|data_in|D1_in|SLL|ShiftLeft0~39_combout\,
	datad => \ALU|data_in|D1_in|SLL|ShiftLeft0~35_combout\,
	combout => \ALU|data_in|D1_in|SLL|ShiftLeft0~40_combout\);

-- Location: LCCOMB_X31_Y21_N26
\ALU|data_in|D1_in|SLL|ShiftLeft0~41\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ALU|data_in|D1_in|SLL|ShiftLeft0~41_combout\ = (\operand_b[2]~input_o\ & (\ALU|data_in|D1_in|SLL|ShiftLeft0~25_combout\)) # (!\operand_b[2]~input_o\ & ((\ALU|data_in|D1_in|SLL|ShiftLeft0~40_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU|data_in|D1_in|SLL|ShiftLeft0~25_combout\,
	datac => \operand_b[2]~input_o\,
	datad => \ALU|data_in|D1_in|SLL|ShiftLeft0~40_combout\,
	combout => \ALU|data_in|D1_in|SLL|ShiftLeft0~41_combout\);

-- Location: LCCOMB_X31_Y21_N4
\ALU|data_in|D1_in|SLL|ShiftLeft0~42\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ALU|data_in|D1_in|SLL|ShiftLeft0~42_combout\ = (\operand_b[3]~input_o\ & (((!\operand_b[2]~input_o\ & \ALU|data_in|D1_in|SLL|ShiftLeft0~23_combout\)))) # (!\operand_b[3]~input_o\ & (\ALU|data_in|D1_in|SLL|ShiftLeft0~41_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU|data_in|D1_in|SLL|ShiftLeft0~41_combout\,
	datab => \operand_b[2]~input_o\,
	datac => \operand_b[3]~input_o\,
	datad => \ALU|data_in|D1_in|SLL|ShiftLeft0~23_combout\,
	combout => \ALU|data_in|D1_in|SLL|ShiftLeft0~42_combout\);

-- Location: LCCOMB_X31_Y21_N28
\ALU|data_OUT|MUX_Sel|Mux20~6\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ALU|data_OUT|MUX_Sel|Mux20~6_combout\ = (\ALU|data_OUT|MUX_Sel|Mux20~4_combout\) # ((!\operand_b[4]~input_o\ & (\ALU|data_in|D1_in|SLL|ShiftLeft0~42_combout\ & \alu_op[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \operand_b[4]~input_o\,
	datab => \ALU|data_OUT|MUX_Sel|Mux20~4_combout\,
	datac => \ALU|data_in|D1_in|SLL|ShiftLeft0~42_combout\,
	datad => \alu_op[0]~input_o\,
	combout => \ALU|data_OUT|MUX_Sel|Mux20~6_combout\);

-- Location: LCCOMB_X32_Y25_N14
\ALU|data_in|D7_in|AND_9|S[11]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ALU|data_in|D7_in|AND_9|S\(11) = (\operand_a[11]~input_o\ & \operand_b[11]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \operand_a[11]~input_o\,
	datac => \operand_b[11]~input_o\,
	combout => \ALU|data_in|D7_in|AND_9|S\(11));

-- Location: LCCOMB_X34_Y19_N14
\ALU|data_in|D5_in|Sel_SR|Data_out|MUX_Sel|Out[11]~48\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ALU|data_in|D5_in|Sel_SR|Data_out|MUX_Sel|Out[11]~48_combout\ = (!\ALU|data_in|D5_in|Sel_SR|SRA_out|SRA1|Add1~0_combout\ & (\ALU|data_in|D5_in|Sel_SR|Data_out|MUX_Sel|Out[3]~14_combout\ & (\ALU|data_in|D5_in|Sel_SR|SRA_out|SRA1|Add1~1_combout\ & 
-- \ALU|data_in|D5_in|Sel_SR|Data_out|MUX_Sel|Out[9]~34_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU|data_in|D5_in|Sel_SR|SRA_out|SRA1|Add1~0_combout\,
	datab => \ALU|data_in|D5_in|Sel_SR|Data_out|MUX_Sel|Out[3]~14_combout\,
	datac => \ALU|data_in|D5_in|Sel_SR|SRA_out|SRA1|Add1~1_combout\,
	datad => \ALU|data_in|D5_in|Sel_SR|Data_out|MUX_Sel|Out[9]~34_combout\,
	combout => \ALU|data_in|D5_in|Sel_SR|Data_out|MUX_Sel|Out[11]~48_combout\);

-- Location: LCCOMB_X31_Y18_N28
\ALU|data_in|D5_in|Sel_SR|Data_out|MUX_Sel|Out[11]~47\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ALU|data_in|D5_in|Sel_SR|Data_out|MUX_Sel|Out[11]~47_combout\ = (!\operand_b[3]~input_o\ & ((\operand_b[4]~input_o\ & ((\ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~77_combout\))) # (!\operand_b[4]~input_o\ & 
-- (\ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~85_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~85_combout\,
	datab => \ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~77_combout\,
	datac => \operand_b[3]~input_o\,
	datad => \operand_b[4]~input_o\,
	combout => \ALU|data_in|D5_in|Sel_SR|Data_out|MUX_Sel|Out[11]~47_combout\);

-- Location: LCCOMB_X31_Y18_N22
\ALU|data_in|D5_in|Sel_SR|Data_out|MUX_Sel|Out[11]~49\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ALU|data_in|D5_in|Sel_SR|Data_out|MUX_Sel|Out[11]~49_combout\ = (\ALU|data_in|D5_in|Sel_SR|Data_out|MUX_Sel|Out[11]~48_combout\) # ((\ALU|data_in|D5_in|Sel_SR|Data_out|MUX_Sel|Out[11]~47_combout\) # 
-- ((\ALU|data_in|D5_in|Sel_SR|Data_out|MUX_Sel|Out[11]~23_combout\ & \ALU|data_in|D5_in|Sel_SR|Data_out|MUX_Sel|Out[10]~45_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU|data_in|D5_in|Sel_SR|Data_out|MUX_Sel|Out[11]~23_combout\,
	datab => \ALU|data_in|D5_in|Sel_SR|Data_out|MUX_Sel|Out[10]~45_combout\,
	datac => \ALU|data_in|D5_in|Sel_SR|Data_out|MUX_Sel|Out[11]~48_combout\,
	datad => \ALU|data_in|D5_in|Sel_SR|Data_out|MUX_Sel|Out[11]~47_combout\,
	combout => \ALU|data_in|D5_in|Sel_SR|Data_out|MUX_Sel|Out[11]~49_combout\);

-- Location: LCCOMB_X32_Y25_N28
\ALU|data_OUT|MUX_Sel|Mux20~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ALU|data_OUT|MUX_Sel|Mux20~2_combout\ = (\alu_op[0]~input_o\ & (((\alu_op[1]~input_o\)))) # (!\alu_op[0]~input_o\ & ((\operand_a[11]~input_o\ & ((\alu_op[1]~input_o\) # (!\operand_b[11]~input_o\))) # (!\operand_a[11]~input_o\ & 
-- ((\operand_b[11]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \operand_a[11]~input_o\,
	datab => \alu_op[1]~input_o\,
	datac => \operand_b[11]~input_o\,
	datad => \alu_op[0]~input_o\,
	combout => \ALU|data_OUT|MUX_Sel|Mux20~2_combout\);

-- Location: LCCOMB_X32_Y25_N8
\ALU|data_OUT|MUX_Sel|Mux20~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ALU|data_OUT|MUX_Sel|Mux20~3_combout\ = (\alu_op[0]~input_o\ & ((\ALU|data_OUT|MUX_Sel|Mux20~2_combout\ & (\ALU|data_in|D7_in|AND_9|S\(11))) # (!\ALU|data_OUT|MUX_Sel|Mux20~2_combout\ & 
-- ((\ALU|data_in|D5_in|Sel_SR|Data_out|MUX_Sel|Out[11]~49_combout\))))) # (!\alu_op[0]~input_o\ & (((\ALU|data_OUT|MUX_Sel|Mux20~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu_op[0]~input_o\,
	datab => \ALU|data_in|D7_in|AND_9|S\(11),
	datac => \ALU|data_in|D5_in|Sel_SR|Data_out|MUX_Sel|Out[11]~49_combout\,
	datad => \ALU|data_OUT|MUX_Sel|Mux20~2_combout\,
	combout => \ALU|data_OUT|MUX_Sel|Mux20~3_combout\);

-- Location: LCCOMB_X32_Y25_N22
\ALU|data_OUT|MUX_Sel|Mux20~5\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ALU|data_OUT|MUX_Sel|Mux20~5_combout\ = (\alu_op[2]~input_o\ & (((\ALU|data_OUT|MUX_Sel|Mux20~3_combout\)))) # (!\alu_op[2]~input_o\ & (\ALU|data_OUT|MUX_Sel|Mux20~6_combout\ & ((!\alu_op[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu_op[2]~input_o\,
	datab => \ALU|data_OUT|MUX_Sel|Mux20~6_combout\,
	datac => \ALU|data_OUT|MUX_Sel|Mux20~3_combout\,
	datad => \alu_op[1]~input_o\,
	combout => \ALU|data_OUT|MUX_Sel|Mux20~5_combout\);

-- Location: LCCOMB_X34_Y20_N28
\ALU|data_in|D5_in|Sel_SR|Data_out|MUX_Sel|Out[13]~52\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ALU|data_in|D5_in|Sel_SR|Data_out|MUX_Sel|Out[13]~52_combout\ = (!\operand_b[3]~input_o\ & (\operand_b[2]~input_o\ $ (((\operand_b[0]~input_o\) # (\operand_b[1]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \operand_b[2]~input_o\,
	datab => \operand_b[0]~input_o\,
	datac => \operand_b[1]~input_o\,
	datad => \operand_b[3]~input_o\,
	combout => \ALU|data_in|D5_in|Sel_SR|Data_out|MUX_Sel|Out[13]~52_combout\);

-- Location: LCCOMB_X31_Y17_N0
\ALU|data_in|D5_in|Sel_SR|Data_out|MUX_Sel|Out[12]~50\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ALU|data_in|D5_in|Sel_SR|Data_out|MUX_Sel|Out[12]~50_combout\ = (\operand_b[3]~input_o\ & ((\operand_b[2]~input_o\ & ((\ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~32_combout\))) # (!\operand_b[2]~input_o\ & 
-- (\ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~22_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~22_combout\,
	datab => \ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~32_combout\,
	datac => \operand_b[3]~input_o\,
	datad => \operand_b[2]~input_o\,
	combout => \ALU|data_in|D5_in|Sel_SR|Data_out|MUX_Sel|Out[12]~50_combout\);

-- Location: LCCOMB_X31_Y17_N18
\ALU|data_in|D5_in|Sel_SR|Data_out|MUX_Sel|Out[12]~51\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ALU|data_in|D5_in|Sel_SR|Data_out|MUX_Sel|Out[12]~51_combout\ = (!\operand_b[4]~input_o\ & ((\ALU|data_in|D5_in|Sel_SR|Data_out|MUX_Sel|Out[12]~50_combout\) # ((!\operand_b[3]~input_o\ & 
-- \ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~88_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010101000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \operand_b[4]~input_o\,
	datab => \ALU|data_in|D5_in|Sel_SR|Data_out|MUX_Sel|Out[12]~50_combout\,
	datac => \operand_b[3]~input_o\,
	datad => \ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~88_combout\,
	combout => \ALU|data_in|D5_in|Sel_SR|Data_out|MUX_Sel|Out[12]~51_combout\);

-- Location: LCCOMB_X31_Y17_N22
\ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~110\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~110_combout\ = (\operand_b[4]~input_o\ & (!\operand_b[2]~input_o\ & (!\operand_b[3]~input_o\ & \ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~29_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \operand_b[4]~input_o\,
	datab => \operand_b[2]~input_o\,
	datac => \operand_b[3]~input_o\,
	datad => \ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~29_combout\,
	combout => \ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~110_combout\);

-- Location: LCCOMB_X31_Y17_N4
\ALU|data_in|D5_in|Sel_SR|Data_out|MUX_Sel|Out[12]~53\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ALU|data_in|D5_in|Sel_SR|Data_out|MUX_Sel|Out[12]~53_combout\ = (\ALU|data_in|D5_in|Sel_SR|Data_out|MUX_Sel|Out[12]~51_combout\) # ((\ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~110_combout\) # 
-- ((\ALU|data_in|D5_in|Sel_SR|Data_out|MUX_Sel|Out[13]~52_combout\ & \ALU|data_in|D5_in|Sel_SR|Data_out|MUX_Sel|Out[0]~83_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU|data_in|D5_in|Sel_SR|Data_out|MUX_Sel|Out[13]~52_combout\,
	datab => \ALU|data_in|D5_in|Sel_SR|Data_out|MUX_Sel|Out[12]~51_combout\,
	datac => \ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~110_combout\,
	datad => \ALU|data_in|D5_in|Sel_SR|Data_out|MUX_Sel|Out[0]~83_combout\,
	combout => \ALU|data_in|D5_in|Sel_SR|Data_out|MUX_Sel|Out[12]~53_combout\);

-- Location: LCCOMB_X32_Y21_N16
\ALU|data_in|D4_in|Xor1|S[12]~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ALU|data_in|D4_in|Xor1|S[12]~0_combout\ = \operand_a[12]~input_o\ $ (\operand_b[12]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \operand_a[12]~input_o\,
	datad => \operand_b[12]~input_o\,
	combout => \ALU|data_in|D4_in|Xor1|S[12]~0_combout\);

-- Location: LCCOMB_X32_Y21_N2
\ALU|data_OUT|MUX_Sel|Mux19~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ALU|data_OUT|MUX_Sel|Mux19~2_combout\ = (\alu_op[1]~input_o\ & (((\alu_op[0]~input_o\)))) # (!\alu_op[1]~input_o\ & ((\alu_op[0]~input_o\ & (\ALU|data_in|D5_in|Sel_SR|Data_out|MUX_Sel|Out[12]~53_combout\)) # (!\alu_op[0]~input_o\ & 
-- ((\ALU|data_in|D4_in|Xor1|S[12]~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU|data_in|D5_in|Sel_SR|Data_out|MUX_Sel|Out[12]~53_combout\,
	datab => \ALU|data_in|D4_in|Xor1|S[12]~0_combout\,
	datac => \alu_op[1]~input_o\,
	datad => \alu_op[0]~input_o\,
	combout => \ALU|data_OUT|MUX_Sel|Mux19~2_combout\);

-- Location: LCCOMB_X32_Y21_N12
\ALU|data_OUT|MUX_Sel|Mux19~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ALU|data_OUT|MUX_Sel|Mux19~3_combout\ = (\ALU|data_OUT|MUX_Sel|Mux19~2_combout\ & (((\operand_a[12]~input_o\ & \operand_b[12]~input_o\)) # (!\alu_op[1]~input_o\))) # (!\ALU|data_OUT|MUX_Sel|Mux19~2_combout\ & (\alu_op[1]~input_o\ & 
-- ((\operand_a[12]~input_o\) # (\operand_b[12]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110000101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \operand_a[12]~input_o\,
	datab => \ALU|data_OUT|MUX_Sel|Mux19~2_combout\,
	datac => \alu_op[1]~input_o\,
	datad => \operand_b[12]~input_o\,
	combout => \ALU|data_OUT|MUX_Sel|Mux19~3_combout\);

-- Location: LCCOMB_X32_Y25_N16
\ALU|data_in|D0_in|AddSub|adder_inst|adder_loop[11].full_adder|Cout~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ALU|data_in|D0_in|AddSub|adder_inst|adder_loop[11].full_adder|Cout~0_combout\ = (\operand_a[11]~input_o\) # (\operand_b[11]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \operand_a[11]~input_o\,
	datac => \operand_b[11]~input_o\,
	combout => \ALU|data_in|D0_in|AddSub|adder_inst|adder_loop[11].full_adder|Cout~0_combout\);

-- Location: LCCOMB_X32_Y25_N2
\ALU|data_in|D0_in|AddSub|adder_inst|adder_loop[12].full_adder|S\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ALU|data_in|D0_in|AddSub|adder_inst|adder_loop[12].full_adder|S~combout\ = \ALU|data_in|D4_in|Xor1|S[12]~0_combout\ $ (((\ALU|data_in|D7_in|AND_9|S\(11)) # ((\ALU|data_in|D0_in|AddSub|adder_inst|adder_loop[11].full_adder|Cout~0_combout\ & 
-- \ALU|data_in|D0_in|AddSub|adder_inst|adder_loop[10].full_adder|Cout~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101011001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU|data_in|D4_in|Xor1|S[12]~0_combout\,
	datab => \ALU|data_in|D0_in|AddSub|adder_inst|adder_loop[11].full_adder|Cout~0_combout\,
	datac => \ALU|data_in|D7_in|AND_9|S\(11),
	datad => \ALU|data_in|D0_in|AddSub|adder_inst|adder_loop[10].full_adder|Cout~0_combout\,
	combout => \ALU|data_in|D0_in|AddSub|adder_inst|adder_loop[12].full_adder|S~combout\);

-- Location: LCCOMB_X31_Y20_N12
\ALU|data_in|D1_in|SLL|ShiftLeft0~43\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ALU|data_in|D1_in|SLL|ShiftLeft0~43_combout\ = (\operand_b[1]~input_o\ & ((\operand_a[10]~input_o\))) # (!\operand_b[1]~input_o\ & (\operand_a[12]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \operand_b[1]~input_o\,
	datab => \operand_a[12]~input_o\,
	datac => \operand_a[10]~input_o\,
	combout => \ALU|data_in|D1_in|SLL|ShiftLeft0~43_combout\);

-- Location: LCCOMB_X31_Y20_N30
\ALU|data_in|D1_in|SLL|ShiftLeft0~44\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ALU|data_in|D1_in|SLL|ShiftLeft0~44_combout\ = (\operand_b[0]~input_o\ & (\ALU|data_in|D1_in|SLL|ShiftLeft0~39_combout\)) # (!\operand_b[0]~input_o\ & ((\ALU|data_in|D1_in|SLL|ShiftLeft0~43_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \operand_b[0]~input_o\,
	datab => \ALU|data_in|D1_in|SLL|ShiftLeft0~39_combout\,
	datad => \ALU|data_in|D1_in|SLL|ShiftLeft0~43_combout\,
	combout => \ALU|data_in|D1_in|SLL|ShiftLeft0~44_combout\);

-- Location: LCCOMB_X30_Y19_N20
\ALU|data_in|D1_in|SLL|ShiftLeft0~45\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ALU|data_in|D1_in|SLL|ShiftLeft0~45_combout\ = (\operand_b[2]~input_o\ & ((\ALU|data_in|D1_in|SLL|ShiftLeft0~28_combout\))) # (!\operand_b[2]~input_o\ & (\ALU|data_in|D1_in|SLL|ShiftLeft0~44_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \operand_b[2]~input_o\,
	datac => \ALU|data_in|D1_in|SLL|ShiftLeft0~44_combout\,
	datad => \ALU|data_in|D1_in|SLL|ShiftLeft0~28_combout\,
	combout => \ALU|data_in|D1_in|SLL|ShiftLeft0~45_combout\);

-- Location: LCCOMB_X30_Y19_N22
\ALU|data_in|D1_in|SLL|ShiftLeft0~46\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ALU|data_in|D1_in|SLL|ShiftLeft0~46_combout\ = (\operand_b[3]~input_o\ & ((\ALU|data_in|D1_in|SLL|ShiftLeft0~16_combout\))) # (!\operand_b[3]~input_o\ & (\ALU|data_in|D1_in|SLL|ShiftLeft0~45_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ALU|data_in|D1_in|SLL|ShiftLeft0~45_combout\,
	datac => \operand_b[3]~input_o\,
	datad => \ALU|data_in|D1_in|SLL|ShiftLeft0~16_combout\,
	combout => \ALU|data_in|D1_in|SLL|ShiftLeft0~46_combout\);

-- Location: LCCOMB_X32_Y21_N20
\ALU|data_OUT|MUX_Sel|Mux19~5\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ALU|data_OUT|MUX_Sel|Mux19~5_combout\ = (\alu_op[0]~input_o\ & (!\operand_b[4]~input_o\ & ((\ALU|data_in|D1_in|SLL|ShiftLeft0~46_combout\)))) # (!\alu_op[0]~input_o\ & (((\ALU|data_in|D0_in|AddSub|adder_inst|adder_loop[12].full_adder|S~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \operand_b[4]~input_o\,
	datab => \ALU|data_in|D0_in|AddSub|adder_inst|adder_loop[12].full_adder|S~combout\,
	datac => \ALU|data_in|D1_in|SLL|ShiftLeft0~46_combout\,
	datad => \alu_op[0]~input_o\,
	combout => \ALU|data_OUT|MUX_Sel|Mux19~5_combout\);

-- Location: LCCOMB_X32_Y21_N14
\ALU|data_OUT|MUX_Sel|Mux19~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ALU|data_OUT|MUX_Sel|Mux19~4_combout\ = (\alu_op[2]~input_o\ & (\ALU|data_OUT|MUX_Sel|Mux19~3_combout\)) # (!\alu_op[2]~input_o\ & (((\ALU|data_OUT|MUX_Sel|Mux19~5_combout\ & !\alu_op[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU|data_OUT|MUX_Sel|Mux19~3_combout\,
	datab => \ALU|data_OUT|MUX_Sel|Mux19~5_combout\,
	datac => \alu_op[1]~input_o\,
	datad => \alu_op[2]~input_o\,
	combout => \ALU|data_OUT|MUX_Sel|Mux19~4_combout\);

-- Location: LCCOMB_X32_Y25_N12
\ALU|data_in|D0_in|AddSub|adder_inst|adder_loop[11].full_adder|Cout~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ALU|data_in|D0_in|AddSub|adder_inst|adder_loop[11].full_adder|Cout~1_combout\ = (\ALU|data_in|D0_in|AddSub|adder_inst|adder_loop[11].full_adder|Cout~0_combout\ & ((\operand_b[10]~input_o\ & 
-- ((\ALU|data_in|D0_in|AddSub|adder_inst|adder_loop[9].full_adder|Cout~0_combout\) # (\operand_a[10]~input_o\))) # (!\operand_b[10]~input_o\ & (\ALU|data_in|D0_in|AddSub|adder_inst|adder_loop[9].full_adder|Cout~0_combout\ & \operand_a[10]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \operand_b[10]~input_o\,
	datab => \ALU|data_in|D0_in|AddSub|adder_inst|adder_loop[9].full_adder|Cout~0_combout\,
	datac => \operand_a[10]~input_o\,
	datad => \ALU|data_in|D0_in|AddSub|adder_inst|adder_loop[11].full_adder|Cout~0_combout\,
	combout => \ALU|data_in|D0_in|AddSub|adder_inst|adder_loop[11].full_adder|Cout~1_combout\);

-- Location: LCCOMB_X32_Y25_N6
\ALU|data_in|D0_in|AddSub|adder_inst|adder_loop[12].full_adder|Cout~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ALU|data_in|D0_in|AddSub|adder_inst|adder_loop[12].full_adder|Cout~0_combout\ = (\operand_a[12]~input_o\ & ((\ALU|data_in|D0_in|AddSub|adder_inst|adder_loop[11].full_adder|Cout~1_combout\) # ((\ALU|data_in|D7_in|AND_9|S\(11)) # 
-- (\operand_b[12]~input_o\)))) # (!\operand_a[12]~input_o\ & (\operand_b[12]~input_o\ & ((\ALU|data_in|D0_in|AddSub|adder_inst|adder_loop[11].full_adder|Cout~1_combout\) # (\ALU|data_in|D7_in|AND_9|S\(11)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU|data_in|D0_in|AddSub|adder_inst|adder_loop[11].full_adder|Cout~1_combout\,
	datab => \operand_a[12]~input_o\,
	datac => \ALU|data_in|D7_in|AND_9|S\(11),
	datad => \operand_b[12]~input_o\,
	combout => \ALU|data_in|D0_in|AddSub|adder_inst|adder_loop[12].full_adder|Cout~0_combout\);

-- Location: LCCOMB_X34_Y22_N10
\ALU|data_OUT|MUX_Sel|Mux18~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ALU|data_OUT|MUX_Sel|Mux18~2_combout\ = (!\alu_op[0]~input_o\ & (\ALU|data_in|D0_in|AddSub|adder_inst|adder_loop[12].full_adder|Cout~0_combout\ $ (\operand_b[13]~input_o\ $ (\operand_a[13]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU|data_in|D0_in|AddSub|adder_inst|adder_loop[12].full_adder|Cout~0_combout\,
	datab => \operand_b[13]~input_o\,
	datac => \operand_a[13]~input_o\,
	datad => \alu_op[0]~input_o\,
	combout => \ALU|data_OUT|MUX_Sel|Mux18~2_combout\);

-- Location: LCCOMB_X30_Y22_N16
\ALU|data_in|D1_in|SLL|ShiftLeft0~47\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ALU|data_in|D1_in|SLL|ShiftLeft0~47_combout\ = (\operand_b[1]~input_o\ & (\operand_a[11]~input_o\)) # (!\operand_b[1]~input_o\ & ((\operand_a[13]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \operand_a[11]~input_o\,
	datab => \operand_b[1]~input_o\,
	datac => \operand_a[13]~input_o\,
	combout => \ALU|data_in|D1_in|SLL|ShiftLeft0~47_combout\);

-- Location: LCCOMB_X30_Y22_N2
\ALU|data_in|D1_in|SLL|ShiftLeft0~48\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ALU|data_in|D1_in|SLL|ShiftLeft0~48_combout\ = (\operand_b[0]~input_o\ & ((\ALU|data_in|D1_in|SLL|ShiftLeft0~43_combout\))) # (!\operand_b[0]~input_o\ & (\ALU|data_in|D1_in|SLL|ShiftLeft0~47_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ALU|data_in|D1_in|SLL|ShiftLeft0~47_combout\,
	datac => \operand_b[0]~input_o\,
	datad => \ALU|data_in|D1_in|SLL|ShiftLeft0~43_combout\,
	combout => \ALU|data_in|D1_in|SLL|ShiftLeft0~48_combout\);

-- Location: LCCOMB_X31_Y23_N10
\ALU|data_in|D1_in|SLL|ShiftLeft0~49\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ALU|data_in|D1_in|SLL|ShiftLeft0~49_combout\ = (\operand_b[2]~input_o\ & ((\ALU|data_in|D1_in|SLL|ShiftLeft0~32_combout\))) # (!\operand_b[2]~input_o\ & (\ALU|data_in|D1_in|SLL|ShiftLeft0~48_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \operand_b[2]~input_o\,
	datab => \ALU|data_in|D1_in|SLL|ShiftLeft0~48_combout\,
	datac => \ALU|data_in|D1_in|SLL|ShiftLeft0~32_combout\,
	combout => \ALU|data_in|D1_in|SLL|ShiftLeft0~49_combout\);

-- Location: LCCOMB_X31_Y23_N28
\ALU|data_in|D1_in|SLL|ShiftLeft0~50\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ALU|data_in|D1_in|SLL|ShiftLeft0~50_combout\ = (\operand_b[3]~input_o\ & ((\ALU|data_in|D1_in|SLL|ShiftLeft0~19_combout\))) # (!\operand_b[3]~input_o\ & (\ALU|data_in|D1_in|SLL|ShiftLeft0~49_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU|data_in|D1_in|SLL|ShiftLeft0~49_combout\,
	datab => \ALU|data_in|D1_in|SLL|ShiftLeft0~19_combout\,
	datad => \operand_b[3]~input_o\,
	combout => \ALU|data_in|D1_in|SLL|ShiftLeft0~50_combout\);

-- Location: LCCOMB_X34_Y22_N12
\ALU|data_OUT|MUX_Sel|Mux18~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ALU|data_OUT|MUX_Sel|Mux18~4_combout\ = (\ALU|data_OUT|MUX_Sel|Mux18~2_combout\) # ((!\operand_b[4]~input_o\ & (\ALU|data_in|D1_in|SLL|ShiftLeft0~50_combout\ & \alu_op[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU|data_OUT|MUX_Sel|Mux18~2_combout\,
	datab => \operand_b[4]~input_o\,
	datac => \ALU|data_in|D1_in|SLL|ShiftLeft0~50_combout\,
	datad => \alu_op[0]~input_o\,
	combout => \ALU|data_OUT|MUX_Sel|Mux18~4_combout\);

-- Location: LCCOMB_X34_Y19_N0
\ALU|data_in|D5_in|Sel_SR|Data_out|MUX_Sel|Out[13]~54\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ALU|data_in|D5_in|Sel_SR|Data_out|MUX_Sel|Out[13]~54_combout\ = (!\ALU|data_in|D5_in|Sel_SR|SRA_out|SRA1|Add1~1_combout\ & (\ALU|data_in|D5_in|Sel_SR|Data_out|MUX_Sel|Out[3]~14_combout\ & (\ALU|data_in|D5_in|Sel_SR|Data_out|MUX_Sel|Out[13]~52_combout\ & 
-- !\ALU|data_in|D5_in|Sel_SR|SRA_out|SRA1|Add1~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU|data_in|D5_in|Sel_SR|SRA_out|SRA1|Add1~1_combout\,
	datab => \ALU|data_in|D5_in|Sel_SR|Data_out|MUX_Sel|Out[3]~14_combout\,
	datac => \ALU|data_in|D5_in|Sel_SR|Data_out|MUX_Sel|Out[13]~52_combout\,
	datad => \ALU|data_in|D5_in|Sel_SR|SRA_out|SRA1|Add1~0_combout\,
	combout => \ALU|data_in|D5_in|Sel_SR|Data_out|MUX_Sel|Out[13]~54_combout\);

-- Location: LCCOMB_X34_Y20_N22
\ALU|data_in|D5_in|Sel_SR|Data_out|MUX_Sel|Out[13]~55\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ALU|data_in|D5_in|Sel_SR|Data_out|MUX_Sel|Out[13]~55_combout\ = (\operand_b[2]~input_o\ & (((\ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~53_combout\) # (\operand_b[4]~input_o\)))) # (!\operand_b[2]~input_o\ & 
-- (\ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~46_combout\ & ((!\operand_b[4]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \operand_b[2]~input_o\,
	datab => \ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~46_combout\,
	datac => \ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~53_combout\,
	datad => \operand_b[4]~input_o\,
	combout => \ALU|data_in|D5_in|Sel_SR|Data_out|MUX_Sel|Out[13]~55_combout\);

-- Location: LCCOMB_X34_Y20_N0
\ALU|data_in|D5_in|Sel_SR|Data_out|MUX_Sel|Out[13]~56\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ALU|data_in|D5_in|Sel_SR|Data_out|MUX_Sel|Out[13]~56_combout\ = (\operand_b[4]~input_o\ & (((\ALU|data_in|D5_in|Sel_SR|Data_out|MUX_Sel|Out[13]~55_combout\) # (\operand_b[3]~input_o\)))) # (!\operand_b[4]~input_o\ & ((\operand_b[3]~input_o\ & 
-- ((\ALU|data_in|D5_in|Sel_SR|Data_out|MUX_Sel|Out[13]~55_combout\))) # (!\operand_b[3]~input_o\ & (\ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~94_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~94_combout\,
	datab => \operand_b[4]~input_o\,
	datac => \ALU|data_in|D5_in|Sel_SR|Data_out|MUX_Sel|Out[13]~55_combout\,
	datad => \operand_b[3]~input_o\,
	combout => \ALU|data_in|D5_in|Sel_SR|Data_out|MUX_Sel|Out[13]~56_combout\);

-- Location: LCCOMB_X34_Y20_N10
\ALU|data_in|D5_in|Sel_SR|Data_out|MUX_Sel|Out[13]~57\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ALU|data_in|D5_in|Sel_SR|Data_out|MUX_Sel|Out[13]~57_combout\ = (\ALU|data_in|D5_in|Sel_SR|Data_out|MUX_Sel|Out[13]~54_combout\) # ((\operand_b[4]~input_o\ & (\ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~51_combout\ & 
-- !\ALU|data_in|D5_in|Sel_SR|Data_out|MUX_Sel|Out[13]~56_combout\)) # (!\operand_b[4]~input_o\ & ((\ALU|data_in|D5_in|Sel_SR|Data_out|MUX_Sel|Out[13]~56_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110111101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \operand_b[4]~input_o\,
	datab => \ALU|data_in|D5_in|Sel_SR|Data_out|MUX_Sel|Out[13]~54_combout\,
	datac => \ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~51_combout\,
	datad => \ALU|data_in|D5_in|Sel_SR|Data_out|MUX_Sel|Out[13]~56_combout\,
	combout => \ALU|data_in|D5_in|Sel_SR|Data_out|MUX_Sel|Out[13]~57_combout\);

-- Location: LCCOMB_X34_Y22_N14
\ALU|data_OUT|MUX_Sel|Mux18~5\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ALU|data_OUT|MUX_Sel|Mux18~5_combout\ = (\alu_op[1]~input_o\ & (((\operand_b[13]~input_o\)))) # (!\alu_op[1]~input_o\ & ((\alu_op[0]~input_o\ & (\ALU|data_in|D5_in|Sel_SR|Data_out|MUX_Sel|Out[13]~57_combout\)) # (!\alu_op[0]~input_o\ & 
-- ((\operand_b[13]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU|data_in|D5_in|Sel_SR|Data_out|MUX_Sel|Out[13]~57_combout\,
	datab => \operand_b[13]~input_o\,
	datac => \alu_op[1]~input_o\,
	datad => \alu_op[0]~input_o\,
	combout => \ALU|data_OUT|MUX_Sel|Mux18~5_combout\);

-- Location: LCCOMB_X34_Y22_N0
\ALU|data_OUT|MUX_Sel|Mux18~6\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ALU|data_OUT|MUX_Sel|Mux18~6_combout\ = (\ALU|data_OUT|MUX_Sel|Mux18~5_combout\ & ((\alu_op[1]~input_o\ & ((\operand_a[13]~input_o\) # (!\alu_op[0]~input_o\))) # (!\alu_op[1]~input_o\ & ((\alu_op[0]~input_o\) # (!\operand_a[13]~input_o\))))) # 
-- (!\ALU|data_OUT|MUX_Sel|Mux18~5_combout\ & (((\operand_a[13]~input_o\ & !\alu_op[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010010111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu_op[1]~input_o\,
	datab => \ALU|data_OUT|MUX_Sel|Mux18~5_combout\,
	datac => \operand_a[13]~input_o\,
	datad => \alu_op[0]~input_o\,
	combout => \ALU|data_OUT|MUX_Sel|Mux18~6_combout\);

-- Location: LCCOMB_X34_Y22_N28
\ALU|data_OUT|MUX_Sel|Mux18~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ALU|data_OUT|MUX_Sel|Mux18~3_combout\ = (\alu_op[2]~input_o\ & (((\ALU|data_OUT|MUX_Sel|Mux18~6_combout\)))) # (!\alu_op[2]~input_o\ & (\ALU|data_OUT|MUX_Sel|Mux18~4_combout\ & ((!\alu_op[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU|data_OUT|MUX_Sel|Mux18~4_combout\,
	datab => \ALU|data_OUT|MUX_Sel|Mux18~6_combout\,
	datac => \alu_op[1]~input_o\,
	datad => \alu_op[2]~input_o\,
	combout => \ALU|data_OUT|MUX_Sel|Mux18~3_combout\);

-- Location: LCCOMB_X34_Y22_N6
\ALU|data_in|D4_in|Xor1|S[14]~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ALU|data_in|D4_in|Xor1|S[14]~1_combout\ = \operand_a[14]~input_o\ $ (\operand_b[14]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \operand_a[14]~input_o\,
	datac => \operand_b[14]~input_o\,
	combout => \ALU|data_in|D4_in|Xor1|S[14]~1_combout\);

-- Location: LCCOMB_X34_Y22_N20
\ALU|data_in|D0_in|AddSub|adder_inst|adder_loop[13].full_adder|Cout~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ALU|data_in|D0_in|AddSub|adder_inst|adder_loop[13].full_adder|Cout~0_combout\ = (\operand_b[13]~input_o\ & ((\operand_a[13]~input_o\) # (\ALU|data_in|D0_in|AddSub|adder_inst|adder_loop[12].full_adder|Cout~0_combout\))) # (!\operand_b[13]~input_o\ & 
-- (\operand_a[13]~input_o\ & \ALU|data_in|D0_in|AddSub|adder_inst|adder_loop[12].full_adder|Cout~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \operand_b[13]~input_o\,
	datac => \operand_a[13]~input_o\,
	datad => \ALU|data_in|D0_in|AddSub|adder_inst|adder_loop[12].full_adder|Cout~0_combout\,
	combout => \ALU|data_in|D0_in|AddSub|adder_inst|adder_loop[13].full_adder|Cout~0_combout\);

-- Location: LCCOMB_X29_Y22_N14
\ALU|data_in|D1_in|SLL|ShiftLeft0~51\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ALU|data_in|D1_in|SLL|ShiftLeft0~51_combout\ = (\operand_b[1]~input_o\ & ((\operand_a[12]~input_o\))) # (!\operand_b[1]~input_o\ & (\operand_a[14]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \operand_b[1]~input_o\,
	datac => \operand_a[14]~input_o\,
	datad => \operand_a[12]~input_o\,
	combout => \ALU|data_in|D1_in|SLL|ShiftLeft0~51_combout\);

-- Location: LCCOMB_X30_Y22_N4
\ALU|data_in|D1_in|SLL|ShiftLeft0~52\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ALU|data_in|D1_in|SLL|ShiftLeft0~52_combout\ = (\operand_b[0]~input_o\ & ((\ALU|data_in|D1_in|SLL|ShiftLeft0~47_combout\))) # (!\operand_b[0]~input_o\ & (\ALU|data_in|D1_in|SLL|ShiftLeft0~51_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU|data_in|D1_in|SLL|ShiftLeft0~51_combout\,
	datab => \ALU|data_in|D1_in|SLL|ShiftLeft0~47_combout\,
	datac => \operand_b[0]~input_o\,
	combout => \ALU|data_in|D1_in|SLL|ShiftLeft0~52_combout\);

-- Location: LCCOMB_X32_Y22_N22
\ALU|data_in|D1_in|SLL|ShiftLeft0~53\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ALU|data_in|D1_in|SLL|ShiftLeft0~53_combout\ = (\operand_b[2]~input_o\ & ((\ALU|data_in|D1_in|SLL|ShiftLeft0~36_combout\))) # (!\operand_b[2]~input_o\ & (\ALU|data_in|D1_in|SLL|ShiftLeft0~52_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ALU|data_in|D1_in|SLL|ShiftLeft0~52_combout\,
	datac => \operand_b[2]~input_o\,
	datad => \ALU|data_in|D1_in|SLL|ShiftLeft0~36_combout\,
	combout => \ALU|data_in|D1_in|SLL|ShiftLeft0~53_combout\);

-- Location: LCCOMB_X34_Y22_N8
\ALU|data_OUT|MUX_Sel|Mux30~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ALU|data_OUT|MUX_Sel|Mux30~3_combout\ = (!\operand_b[4]~input_o\ & \alu_op[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \operand_b[4]~input_o\,
	datad => \alu_op[0]~input_o\,
	combout => \ALU|data_OUT|MUX_Sel|Mux30~3_combout\);

-- Location: LCCOMB_X32_Y22_N8
\ALU|data_OUT|MUX_Sel|Mux17~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ALU|data_OUT|MUX_Sel|Mux17~2_combout\ = (\ALU|data_OUT|MUX_Sel|Mux30~3_combout\ & ((\operand_b[3]~input_o\ & ((\ALU|data_in|D1_in|SLL|ShiftLeft0~22_combout\))) # (!\operand_b[3]~input_o\ & (\ALU|data_in|D1_in|SLL|ShiftLeft0~53_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU|data_in|D1_in|SLL|ShiftLeft0~53_combout\,
	datab => \ALU|data_in|D1_in|SLL|ShiftLeft0~22_combout\,
	datac => \operand_b[3]~input_o\,
	datad => \ALU|data_OUT|MUX_Sel|Mux30~3_combout\,
	combout => \ALU|data_OUT|MUX_Sel|Mux17~2_combout\);

-- Location: LCCOMB_X34_Y22_N22
\ALU|data_OUT|MUX_Sel|Mux17~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ALU|data_OUT|MUX_Sel|Mux17~3_combout\ = (\ALU|data_OUT|MUX_Sel|Mux17~2_combout\) # ((!\alu_op[0]~input_o\ & (\ALU|data_in|D4_in|Xor1|S[14]~1_combout\ $ (\ALU|data_in|D0_in|AddSub|adder_inst|adder_loop[13].full_adder|Cout~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU|data_in|D4_in|Xor1|S[14]~1_combout\,
	datab => \ALU|data_in|D0_in|AddSub|adder_inst|adder_loop[13].full_adder|Cout~0_combout\,
	datac => \ALU|data_OUT|MUX_Sel|Mux17~2_combout\,
	datad => \alu_op[0]~input_o\,
	combout => \ALU|data_OUT|MUX_Sel|Mux17~3_combout\);

-- Location: LCCOMB_X30_Y18_N6
\ALU|data_in|D5_in|Sel_SR|Data_out|MUX_Sel|Out[14]~59\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ALU|data_in|D5_in|Sel_SR|Data_out|MUX_Sel|Out[14]~59_combout\ = (\ALU|data_in|D5_in|Sel_SR|Data_out|MUX_Sel|Out[6]~30_combout\ & (!\ALU|data_in|D5_in|Sel_SR|SRA_out|SRA1|Add1~0_combout\ & \ALU|data_in|D5_in|Sel_SR|Data_out|MUX_Sel|Out[13]~52_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ALU|data_in|D5_in|Sel_SR|Data_out|MUX_Sel|Out[6]~30_combout\,
	datac => \ALU|data_in|D5_in|Sel_SR|SRA_out|SRA1|Add1~0_combout\,
	datad => \ALU|data_in|D5_in|Sel_SR|Data_out|MUX_Sel|Out[13]~52_combout\,
	combout => \ALU|data_in|D5_in|Sel_SR|Data_out|MUX_Sel|Out[14]~59_combout\);

-- Location: LCCOMB_X30_Y18_N12
\ALU|data_in|D5_in|Sel_SR|Data_out|MUX_Sel|Out[14]~58\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ALU|data_in|D5_in|Sel_SR|Data_out|MUX_Sel|Out[14]~58_combout\ = (!\operand_b[3]~input_o\ & ((\operand_b[4]~input_o\ & ((\ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~109_combout\))) # (!\operand_b[4]~input_o\ & 
-- (\ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~99_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \operand_b[4]~input_o\,
	datab => \ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~99_combout\,
	datac => \operand_b[3]~input_o\,
	datad => \ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~109_combout\,
	combout => \ALU|data_in|D5_in|Sel_SR|Data_out|MUX_Sel|Out[14]~58_combout\);

-- Location: LCCOMB_X30_Y18_N16
\ALU|data_in|D5_in|Sel_SR|Data_out|MUX_Sel|Out[14]~60\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ALU|data_in|D5_in|Sel_SR|Data_out|MUX_Sel|Out[14]~60_combout\ = (\ALU|data_in|D5_in|Sel_SR|Data_out|MUX_Sel|Out[14]~59_combout\) # ((\ALU|data_in|D5_in|Sel_SR|Data_out|MUX_Sel|Out[14]~58_combout\) # 
-- ((\ALU|data_in|D5_in|Sel_SR|Data_out|MUX_Sel|Out[14]~29_combout\ & \ALU|data_in|D5_in|Sel_SR|Data_out|MUX_Sel|Out[10]~45_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU|data_in|D5_in|Sel_SR|Data_out|MUX_Sel|Out[14]~59_combout\,
	datab => \ALU|data_in|D5_in|Sel_SR|Data_out|MUX_Sel|Out[14]~29_combout\,
	datac => \ALU|data_in|D5_in|Sel_SR|Data_out|MUX_Sel|Out[10]~45_combout\,
	datad => \ALU|data_in|D5_in|Sel_SR|Data_out|MUX_Sel|Out[14]~58_combout\,
	combout => \ALU|data_in|D5_in|Sel_SR|Data_out|MUX_Sel|Out[14]~60_combout\);

-- Location: LCCOMB_X34_Y22_N16
\ALU|data_OUT|MUX_Sel|Mux17~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ALU|data_OUT|MUX_Sel|Mux17~0_combout\ = (\alu_op[0]~input_o\ & ((\ALU|data_in|D5_in|Sel_SR|Data_out|MUX_Sel|Out[14]~60_combout\) # ((\alu_op[1]~input_o\)))) # (!\alu_op[0]~input_o\ & (((!\alu_op[1]~input_o\ & \ALU|data_in|D4_in|Xor1|S[14]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU|data_in|D5_in|Sel_SR|Data_out|MUX_Sel|Out[14]~60_combout\,
	datab => \alu_op[0]~input_o\,
	datac => \alu_op[1]~input_o\,
	datad => \ALU|data_in|D4_in|Xor1|S[14]~1_combout\,
	combout => \ALU|data_OUT|MUX_Sel|Mux17~0_combout\);

-- Location: LCCOMB_X34_Y22_N18
\ALU|data_OUT|MUX_Sel|Mux17~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ALU|data_OUT|MUX_Sel|Mux17~1_combout\ = (\alu_op[1]~input_o\ & ((\operand_a[14]~input_o\ & ((\operand_b[14]~input_o\) # (!\ALU|data_OUT|MUX_Sel|Mux17~0_combout\))) # (!\operand_a[14]~input_o\ & (\operand_b[14]~input_o\ & 
-- !\ALU|data_OUT|MUX_Sel|Mux17~0_combout\)))) # (!\alu_op[1]~input_o\ & (((\ALU|data_OUT|MUX_Sel|Mux17~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \operand_a[14]~input_o\,
	datab => \operand_b[14]~input_o\,
	datac => \alu_op[1]~input_o\,
	datad => \ALU|data_OUT|MUX_Sel|Mux17~0_combout\,
	combout => \ALU|data_OUT|MUX_Sel|Mux17~1_combout\);

-- Location: LCCOMB_X34_Y22_N24
\ALU|data_OUT|MUX_Sel|Mux17~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ALU|data_OUT|MUX_Sel|Mux17~4_combout\ = (\alu_op[2]~input_o\ & (((\ALU|data_OUT|MUX_Sel|Mux17~1_combout\)))) # (!\alu_op[2]~input_o\ & (\ALU|data_OUT|MUX_Sel|Mux17~3_combout\ & ((!\alu_op[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU|data_OUT|MUX_Sel|Mux17~3_combout\,
	datab => \ALU|data_OUT|MUX_Sel|Mux17~1_combout\,
	datac => \alu_op[1]~input_o\,
	datad => \alu_op[2]~input_o\,
	combout => \ALU|data_OUT|MUX_Sel|Mux17~4_combout\);

-- Location: LCCOMB_X34_Y18_N10
\ALU|data_in|D5_in|Sel_SR|Data_out|MUX_Sel|Out[15]~61\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ALU|data_in|D5_in|Sel_SR|Data_out|MUX_Sel|Out[15]~61_combout\ = (!\operand_b[1]~input_o\ & (!\operand_b[2]~input_o\ & ((\funct7~input_o\) # (!\operand_b[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \operand_b[1]~input_o\,
	datab => \operand_b[0]~input_o\,
	datac => \operand_b[2]~input_o\,
	datad => \funct7~input_o\,
	combout => \ALU|data_in|D5_in|Sel_SR|Data_out|MUX_Sel|Out[15]~61_combout\);

-- Location: LCCOMB_X31_Y18_N16
\ALU|data_in|D5_in|Sel_SR|Data_out|MUX_Sel|Out[15]~62\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ALU|data_in|D5_in|Sel_SR|Data_out|MUX_Sel|Out[15]~62_combout\ = (\operand_b[4]~input_o\ & (\ALU|data_in|D5_in|Sel_SR|Data_out|MUX_Sel|Out[15]~61_combout\ & (!\operand_b[3]~input_o\ & \operand_a[31]~input_o\))) # (!\operand_b[4]~input_o\ & 
-- (((\operand_b[3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011100000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU|data_in|D5_in|Sel_SR|Data_out|MUX_Sel|Out[15]~61_combout\,
	datab => \operand_b[4]~input_o\,
	datac => \operand_b[3]~input_o\,
	datad => \operand_a[31]~input_o\,
	combout => \ALU|data_in|D5_in|Sel_SR|Data_out|MUX_Sel|Out[15]~62_combout\);

-- Location: LCCOMB_X30_Y20_N20
\ALU|data_in|D5_in|Sel_SR|Data_out|MUX_Sel|Out[15]~63\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ALU|data_in|D5_in|Sel_SR|Data_out|MUX_Sel|Out[15]~63_combout\ = (\ALU|data_in|D5_in|Sel_SR|Data_out|MUX_Sel|Out[15]~62_combout\ & (((\operand_b[4]~input_o\) # (\ALU|data_in|D5_in|Sel_SR|Data_out|MUX_Sel|Out[15]~32_combout\)))) # 
-- (!\ALU|data_in|D5_in|Sel_SR|Data_out|MUX_Sel|Out[15]~62_combout\ & (\ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~103_combout\ & (!\operand_b[4]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~103_combout\,
	datab => \ALU|data_in|D5_in|Sel_SR|Data_out|MUX_Sel|Out[15]~62_combout\,
	datac => \operand_b[4]~input_o\,
	datad => \ALU|data_in|D5_in|Sel_SR|Data_out|MUX_Sel|Out[15]~32_combout\,
	combout => \ALU|data_in|D5_in|Sel_SR|Data_out|MUX_Sel|Out[15]~63_combout\);

-- Location: LCCOMB_X29_Y19_N10
\ALU|data_OUT|MUX_Sel|Mux16~5\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ALU|data_OUT|MUX_Sel|Mux16~5_combout\ = (\alu_op[1]~input_o\ & (\operand_b[15]~input_o\)) # (!\alu_op[1]~input_o\ & ((\alu_op[0]~input_o\ & ((\ALU|data_in|D5_in|Sel_SR|Data_out|MUX_Sel|Out[15]~63_combout\))) # (!\alu_op[0]~input_o\ & 
-- (\operand_b[15]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \operand_b[15]~input_o\,
	datab => \alu_op[1]~input_o\,
	datac => \ALU|data_in|D5_in|Sel_SR|Data_out|MUX_Sel|Out[15]~63_combout\,
	datad => \alu_op[0]~input_o\,
	combout => \ALU|data_OUT|MUX_Sel|Mux16~5_combout\);

-- Location: LCCOMB_X29_Y19_N12
\ALU|data_OUT|MUX_Sel|Mux16~6\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ALU|data_OUT|MUX_Sel|Mux16~6_combout\ = (\ALU|data_OUT|MUX_Sel|Mux16~5_combout\ & ((\alu_op[1]~input_o\ & ((\operand_a[15]~input_o\) # (!\alu_op[0]~input_o\))) # (!\alu_op[1]~input_o\ & ((\alu_op[0]~input_o\) # (!\operand_a[15]~input_o\))))) # 
-- (!\ALU|data_OUT|MUX_Sel|Mux16~5_combout\ & (((\operand_a[15]~input_o\ & !\alu_op[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001011011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU|data_OUT|MUX_Sel|Mux16~5_combout\,
	datab => \alu_op[1]~input_o\,
	datac => \operand_a[15]~input_o\,
	datad => \alu_op[0]~input_o\,
	combout => \ALU|data_OUT|MUX_Sel|Mux16~6_combout\);

-- Location: LCCOMB_X34_Y22_N26
\ALU|data_in|D0_in|AddSub|adder_inst|adder_loop[14].full_adder|Cout~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ALU|data_in|D0_in|AddSub|adder_inst|adder_loop[14].full_adder|Cout~0_combout\ = (\operand_a[14]~input_o\ & ((\operand_b[14]~input_o\) # (\ALU|data_in|D0_in|AddSub|adder_inst|adder_loop[13].full_adder|Cout~0_combout\))) # (!\operand_a[14]~input_o\ & 
-- (\operand_b[14]~input_o\ & \ALU|data_in|D0_in|AddSub|adder_inst|adder_loop[13].full_adder|Cout~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \operand_a[14]~input_o\,
	datac => \operand_b[14]~input_o\,
	datad => \ALU|data_in|D0_in|AddSub|adder_inst|adder_loop[13].full_adder|Cout~0_combout\,
	combout => \ALU|data_in|D0_in|AddSub|adder_inst|adder_loop[14].full_adder|Cout~0_combout\);

-- Location: LCCOMB_X29_Y19_N28
\ALU|data_OUT|MUX_Sel|Mux16~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ALU|data_OUT|MUX_Sel|Mux16~2_combout\ = (!\alu_op[0]~input_o\ & (\operand_b[15]~input_o\ $ (\ALU|data_in|D0_in|AddSub|adder_inst|adder_loop[14].full_adder|Cout~0_combout\ $ (\operand_a[15]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \operand_b[15]~input_o\,
	datab => \ALU|data_in|D0_in|AddSub|adder_inst|adder_loop[14].full_adder|Cout~0_combout\,
	datac => \operand_a[15]~input_o\,
	datad => \alu_op[0]~input_o\,
	combout => \ALU|data_OUT|MUX_Sel|Mux16~2_combout\);

-- Location: LCCOMB_X29_Y22_N0
\ALU|data_in|D1_in|SLL|ShiftLeft0~54\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ALU|data_in|D1_in|SLL|ShiftLeft0~54_combout\ = (\operand_b[1]~input_o\ & (\operand_a[13]~input_o\)) # (!\operand_b[1]~input_o\ & ((\operand_a[15]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \operand_a[13]~input_o\,
	datab => \operand_b[1]~input_o\,
	datac => \operand_a[15]~input_o\,
	combout => \ALU|data_in|D1_in|SLL|ShiftLeft0~54_combout\);

-- Location: LCCOMB_X29_Y22_N18
\ALU|data_in|D1_in|SLL|ShiftLeft0~55\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ALU|data_in|D1_in|SLL|ShiftLeft0~55_combout\ = (\operand_b[0]~input_o\ & ((\ALU|data_in|D1_in|SLL|ShiftLeft0~51_combout\))) # (!\operand_b[0]~input_o\ & (\ALU|data_in|D1_in|SLL|ShiftLeft0~54_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \operand_b[0]~input_o\,
	datab => \ALU|data_in|D1_in|SLL|ShiftLeft0~54_combout\,
	datac => \ALU|data_in|D1_in|SLL|ShiftLeft0~51_combout\,
	combout => \ALU|data_in|D1_in|SLL|ShiftLeft0~55_combout\);

-- Location: LCCOMB_X31_Y21_N22
\ALU|data_in|D1_in|SLL|ShiftLeft0~56\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ALU|data_in|D1_in|SLL|ShiftLeft0~56_combout\ = (\operand_b[2]~input_o\ & ((\ALU|data_in|D1_in|SLL|ShiftLeft0~40_combout\))) # (!\operand_b[2]~input_o\ & (\ALU|data_in|D1_in|SLL|ShiftLeft0~55_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ALU|data_in|D1_in|SLL|ShiftLeft0~55_combout\,
	datac => \operand_b[2]~input_o\,
	datad => \ALU|data_in|D1_in|SLL|ShiftLeft0~40_combout\,
	combout => \ALU|data_in|D1_in|SLL|ShiftLeft0~56_combout\);

-- Location: LCCOMB_X31_Y21_N8
\ALU|data_in|D1_in|SLL|ShiftLeft0~57\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ALU|data_in|D1_in|SLL|ShiftLeft0~57_combout\ = (\operand_b[3]~input_o\ & ((\ALU|data_in|D1_in|SLL|ShiftLeft0~26_combout\))) # (!\operand_b[3]~input_o\ & (\ALU|data_in|D1_in|SLL|ShiftLeft0~56_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU|data_in|D1_in|SLL|ShiftLeft0~56_combout\,
	datac => \operand_b[3]~input_o\,
	datad => \ALU|data_in|D1_in|SLL|ShiftLeft0~26_combout\,
	combout => \ALU|data_in|D1_in|SLL|ShiftLeft0~57_combout\);

-- Location: LCCOMB_X29_Y19_N8
\ALU|data_OUT|MUX_Sel|Mux16~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ALU|data_OUT|MUX_Sel|Mux16~4_combout\ = (\ALU|data_OUT|MUX_Sel|Mux16~2_combout\) # ((!\operand_b[4]~input_o\ & (\ALU|data_in|D1_in|SLL|ShiftLeft0~57_combout\ & \alu_op[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \operand_b[4]~input_o\,
	datab => \ALU|data_OUT|MUX_Sel|Mux16~2_combout\,
	datac => \ALU|data_in|D1_in|SLL|ShiftLeft0~57_combout\,
	datad => \alu_op[0]~input_o\,
	combout => \ALU|data_OUT|MUX_Sel|Mux16~4_combout\);

-- Location: LCCOMB_X29_Y19_N6
\ALU|data_OUT|MUX_Sel|Mux16~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ALU|data_OUT|MUX_Sel|Mux16~3_combout\ = (\alu_op[2]~input_o\ & (\ALU|data_OUT|MUX_Sel|Mux16~6_combout\)) # (!\alu_op[2]~input_o\ & (((\ALU|data_OUT|MUX_Sel|Mux16~4_combout\ & !\alu_op[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU|data_OUT|MUX_Sel|Mux16~6_combout\,
	datab => \alu_op[2]~input_o\,
	datac => \ALU|data_OUT|MUX_Sel|Mux16~4_combout\,
	datad => \alu_op[1]~input_o\,
	combout => \ALU|data_OUT|MUX_Sel|Mux16~3_combout\);

-- Location: LCCOMB_X30_Y19_N12
\ALU|data_in|D1_in|SLL|ShiftLeft0~61\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ALU|data_in|D1_in|SLL|ShiftLeft0~61_combout\ = (!\ALU|data_in|D1_in|SLL|ShiftLeft0~4_combout\ & (!\operand_b[3]~input_o\ & \operand_a[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ALU|data_in|D1_in|SLL|ShiftLeft0~4_combout\,
	datac => \operand_b[3]~input_o\,
	datad => \operand_a[0]~input_o\,
	combout => \ALU|data_in|D1_in|SLL|ShiftLeft0~61_combout\);

-- Location: LCCOMB_X31_Y18_N10
\ALU|data_OUT|MUX_Sel|Mux15~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ALU|data_OUT|MUX_Sel|Mux15~2_combout\ = (\alu_op[0]~input_o\ & ((\operand_b[4]~input_o\) # (\operand_b[3]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \operand_b[4]~input_o\,
	datac => \operand_b[3]~input_o\,
	datad => \alu_op[0]~input_o\,
	combout => \ALU|data_OUT|MUX_Sel|Mux15~2_combout\);

-- Location: LCCOMB_X29_Y19_N18
\ALU|data_in|D4_in|Xor1|S[16]~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ALU|data_in|D4_in|Xor1|S[16]~2_combout\ = \operand_b[16]~input_o\ $ (\operand_a[16]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \operand_b[16]~input_o\,
	datad => \operand_a[16]~input_o\,
	combout => \ALU|data_in|D4_in|Xor1|S[16]~2_combout\);

-- Location: LCCOMB_X29_Y19_N24
\ALU|data_in|D0_in|AddSub|adder_inst|adder_loop[16].full_adder|S\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ALU|data_in|D0_in|AddSub|adder_inst|adder_loop[16].full_adder|S~combout\ = \ALU|data_in|D4_in|Xor1|S[16]~2_combout\ $ (((\operand_b[15]~input_o\ & ((\operand_a[15]~input_o\) # 
-- (\ALU|data_in|D0_in|AddSub|adder_inst|adder_loop[14].full_adder|Cout~0_combout\))) # (!\operand_b[15]~input_o\ & (\operand_a[15]~input_o\ & \ALU|data_in|D0_in|AddSub|adder_inst|adder_loop[14].full_adder|Cout~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011011001101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \operand_b[15]~input_o\,
	datab => \ALU|data_in|D4_in|Xor1|S[16]~2_combout\,
	datac => \operand_a[15]~input_o\,
	datad => \ALU|data_in|D0_in|AddSub|adder_inst|adder_loop[14].full_adder|Cout~0_combout\,
	combout => \ALU|data_in|D0_in|AddSub|adder_inst|adder_loop[16].full_adder|S~combout\);

-- Location: LCCOMB_X29_Y22_N4
\ALU|data_in|D1_in|SLL|ShiftLeft0~58\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ALU|data_in|D1_in|SLL|ShiftLeft0~58_combout\ = (\operand_b[1]~input_o\ & ((\operand_a[14]~input_o\))) # (!\operand_b[1]~input_o\ & (\operand_a[16]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \operand_a[16]~input_o\,
	datab => \operand_b[1]~input_o\,
	datac => \operand_a[14]~input_o\,
	combout => \ALU|data_in|D1_in|SLL|ShiftLeft0~58_combout\);

-- Location: LCCOMB_X29_Y22_N30
\ALU|data_in|D1_in|SLL|ShiftLeft0~59\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ALU|data_in|D1_in|SLL|ShiftLeft0~59_combout\ = (\operand_b[0]~input_o\ & (\ALU|data_in|D1_in|SLL|ShiftLeft0~54_combout\)) # (!\operand_b[0]~input_o\ & ((\ALU|data_in|D1_in|SLL|ShiftLeft0~58_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ALU|data_in|D1_in|SLL|ShiftLeft0~54_combout\,
	datac => \operand_b[0]~input_o\,
	datad => \ALU|data_in|D1_in|SLL|ShiftLeft0~58_combout\,
	combout => \ALU|data_in|D1_in|SLL|ShiftLeft0~59_combout\);

-- Location: LCCOMB_X30_Y19_N24
\ALU|data_in|D1_in|SLL|ShiftLeft0~60\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ALU|data_in|D1_in|SLL|ShiftLeft0~60_combout\ = (\operand_b[2]~input_o\ & (\ALU|data_in|D1_in|SLL|ShiftLeft0~44_combout\)) # (!\operand_b[2]~input_o\ & ((\ALU|data_in|D1_in|SLL|ShiftLeft0~59_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \operand_b[2]~input_o\,
	datac => \ALU|data_in|D1_in|SLL|ShiftLeft0~44_combout\,
	datad => \ALU|data_in|D1_in|SLL|ShiftLeft0~59_combout\,
	combout => \ALU|data_in|D1_in|SLL|ShiftLeft0~60_combout\);

-- Location: LCCOMB_X30_Y19_N26
\ALU|data_OUT|MUX_Sel|Mux15~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ALU|data_OUT|MUX_Sel|Mux15~3_combout\ = (\ALU|data_OUT|MUX_Sel|Mux15~2_combout\ & (((!\ALU|data_OUT|MUX_Sel|Mux30~3_combout\)))) # (!\ALU|data_OUT|MUX_Sel|Mux15~2_combout\ & ((\ALU|data_OUT|MUX_Sel|Mux30~3_combout\ & 
-- ((\ALU|data_in|D1_in|SLL|ShiftLeft0~60_combout\))) # (!\ALU|data_OUT|MUX_Sel|Mux30~3_combout\ & (\ALU|data_in|D0_in|AddSub|adder_inst|adder_loop[16].full_adder|S~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU|data_in|D0_in|AddSub|adder_inst|adder_loop[16].full_adder|S~combout\,
	datab => \ALU|data_in|D1_in|SLL|ShiftLeft0~60_combout\,
	datac => \ALU|data_OUT|MUX_Sel|Mux15~2_combout\,
	datad => \ALU|data_OUT|MUX_Sel|Mux30~3_combout\,
	combout => \ALU|data_OUT|MUX_Sel|Mux15~3_combout\);

-- Location: LCCOMB_X30_Y19_N6
\ALU|data_OUT|MUX_Sel|Mux15~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ALU|data_OUT|MUX_Sel|Mux15~4_combout\ = (\ALU|data_OUT|MUX_Sel|Mux15~2_combout\ & ((\ALU|data_OUT|MUX_Sel|Mux15~3_combout\ & (\ALU|data_in|D1_in|SLL|ShiftLeft0~61_combout\)) # (!\ALU|data_OUT|MUX_Sel|Mux15~3_combout\ & 
-- ((\ALU|data_in|D1_in|SLL|ShiftLeft0~29_combout\))))) # (!\ALU|data_OUT|MUX_Sel|Mux15~2_combout\ & (((\ALU|data_OUT|MUX_Sel|Mux15~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU|data_in|D1_in|SLL|ShiftLeft0~61_combout\,
	datab => \ALU|data_OUT|MUX_Sel|Mux15~2_combout\,
	datac => \ALU|data_OUT|MUX_Sel|Mux15~3_combout\,
	datad => \ALU|data_in|D1_in|SLL|ShiftLeft0~29_combout\,
	combout => \ALU|data_OUT|MUX_Sel|Mux15~4_combout\);

-- Location: LCCOMB_X34_Y19_N10
\ALU|data_in|D5_in|Sel_SR|Data_out|MUX_Sel|Out[16]~64\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ALU|data_in|D5_in|Sel_SR|Data_out|MUX_Sel|Out[16]~64_combout\ = (\ALU|data_in|D5_in|Sel_SR|SRA_out|SRA1|Add1~0_combout\ & (\ALU|data_in|D5_in|Sel_SR|Data_out|MUX_Sel|Out[0]~8_combout\ & (\operand_b[0]~input_o\ $ (!\operand_b[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU|data_in|D5_in|Sel_SR|SRA_out|SRA1|Add1~0_combout\,
	datab => \operand_b[0]~input_o\,
	datac => \operand_b[1]~input_o\,
	datad => \ALU|data_in|D5_in|Sel_SR|Data_out|MUX_Sel|Out[0]~8_combout\,
	combout => \ALU|data_in|D5_in|Sel_SR|Data_out|MUX_Sel|Out[16]~64_combout\);

-- Location: LCCOMB_X29_Y19_N0
\ALU|data_in|D5_in|Sel_SR|Data_out|MUX_Sel|Out[16]~65\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ALU|data_in|D5_in|Sel_SR|Data_out|MUX_Sel|Out[16]~65_combout\ = (\ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~34_combout\ & (((\ALU|data_in|D5_in|Sel_SR|Data_out|MUX_Sel|Out[16]~64_combout\ & 
-- \ALU|data_in|D5_in|Sel_SR|Data_out|MUX_Sel|Out[1]~9_combout\)) # (!\operand_b[4]~input_o\))) # (!\ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~34_combout\ & (\ALU|data_in|D5_in|Sel_SR|Data_out|MUX_Sel|Out[16]~64_combout\ & 
-- (\ALU|data_in|D5_in|Sel_SR|Data_out|MUX_Sel|Out[1]~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~34_combout\,
	datab => \ALU|data_in|D5_in|Sel_SR|Data_out|MUX_Sel|Out[16]~64_combout\,
	datac => \ALU|data_in|D5_in|Sel_SR|Data_out|MUX_Sel|Out[1]~9_combout\,
	datad => \operand_b[4]~input_o\,
	combout => \ALU|data_in|D5_in|Sel_SR|Data_out|MUX_Sel|Out[16]~65_combout\);

-- Location: LCCOMB_X29_Y19_N20
\ALU|data_OUT|MUX_Sel|Mux15~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ALU|data_OUT|MUX_Sel|Mux15~0_combout\ = (\alu_op[1]~input_o\ & (((\alu_op[0]~input_o\)))) # (!\alu_op[1]~input_o\ & ((\alu_op[0]~input_o\ & (\ALU|data_in|D5_in|Sel_SR|Data_out|MUX_Sel|Out[16]~65_combout\)) # (!\alu_op[0]~input_o\ & 
-- ((\ALU|data_in|D4_in|Xor1|S[16]~2_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu_op[1]~input_o\,
	datab => \ALU|data_in|D5_in|Sel_SR|Data_out|MUX_Sel|Out[16]~65_combout\,
	datac => \ALU|data_in|D4_in|Xor1|S[16]~2_combout\,
	datad => \alu_op[0]~input_o\,
	combout => \ALU|data_OUT|MUX_Sel|Mux15~0_combout\);

-- Location: LCCOMB_X29_Y19_N14
\ALU|data_OUT|MUX_Sel|Mux15~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ALU|data_OUT|MUX_Sel|Mux15~1_combout\ = (\ALU|data_OUT|MUX_Sel|Mux15~0_combout\ & (((\operand_a[16]~input_o\ & \operand_b[16]~input_o\)) # (!\alu_op[1]~input_o\))) # (!\ALU|data_OUT|MUX_Sel|Mux15~0_combout\ & (\alu_op[1]~input_o\ & 
-- ((\operand_a[16]~input_o\) # (\operand_b[16]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU|data_OUT|MUX_Sel|Mux15~0_combout\,
	datab => \operand_a[16]~input_o\,
	datac => \operand_b[16]~input_o\,
	datad => \alu_op[1]~input_o\,
	combout => \ALU|data_OUT|MUX_Sel|Mux15~1_combout\);

-- Location: LCCOMB_X29_Y19_N26
\ALU|data_OUT|MUX_Sel|Mux15~5\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ALU|data_OUT|MUX_Sel|Mux15~5_combout\ = (\alu_op[2]~input_o\ & (((\ALU|data_OUT|MUX_Sel|Mux15~1_combout\)))) # (!\alu_op[2]~input_o\ & (\ALU|data_OUT|MUX_Sel|Mux15~4_combout\ & ((!\alu_op[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU|data_OUT|MUX_Sel|Mux15~4_combout\,
	datab => \alu_op[2]~input_o\,
	datac => \ALU|data_OUT|MUX_Sel|Mux15~1_combout\,
	datad => \alu_op[1]~input_o\,
	combout => \ALU|data_OUT|MUX_Sel|Mux15~5_combout\);

-- Location: LCCOMB_X34_Y19_N28
\ALU|data_in|D5_in|Sel_SR|Data_out|MUX_Sel|Out[17]~85\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ALU|data_in|D5_in|Sel_SR|Data_out|MUX_Sel|Out[17]~85_combout\ = (\ALU|data_in|D5_in|Sel_SR|SRA_out|SRA1|Add1~0_combout\ & (\ALU|data_in|D5_in|Sel_SR|Data_out|MUX_Sel|Out[3]~14_combout\ & (\operand_b[0]~input_o\ $ (!\operand_b[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU|data_in|D5_in|Sel_SR|SRA_out|SRA1|Add1~0_combout\,
	datab => \operand_b[0]~input_o\,
	datac => \operand_b[1]~input_o\,
	datad => \ALU|data_in|D5_in|Sel_SR|Data_out|MUX_Sel|Out[3]~14_combout\,
	combout => \ALU|data_in|D5_in|Sel_SR|Data_out|MUX_Sel|Out[17]~85_combout\);

-- Location: LCCOMB_X35_Y19_N16
\ALU|data_in|D5_in|Sel_SR|Data_out|MUX_Sel|Out[17]~66\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ALU|data_in|D5_in|Sel_SR|Data_out|MUX_Sel|Out[17]~66_combout\ = (\ALU|data_in|D5_in|Sel_SR|Data_out|MUX_Sel|Out[1]~9_combout\ & ((\ALU|data_in|D5_in|Sel_SR|Data_out|MUX_Sel|Out[17]~85_combout\) # ((!\operand_b[4]~input_o\ & 
-- \ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~55_combout\)))) # (!\ALU|data_in|D5_in|Sel_SR|Data_out|MUX_Sel|Out[1]~9_combout\ & (!\operand_b[4]~input_o\ & (\ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~55_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU|data_in|D5_in|Sel_SR|Data_out|MUX_Sel|Out[1]~9_combout\,
	datab => \operand_b[4]~input_o\,
	datac => \ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~55_combout\,
	datad => \ALU|data_in|D5_in|Sel_SR|Data_out|MUX_Sel|Out[17]~85_combout\,
	combout => \ALU|data_in|D5_in|Sel_SR|Data_out|MUX_Sel|Out[17]~66_combout\);

-- Location: LCCOMB_X32_Y23_N12
\ALU|data_OUT|MUX_Sel|Mux14~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ALU|data_OUT|MUX_Sel|Mux14~3_combout\ = (\alu_op[1]~input_o\ & (\operand_b[17]~input_o\)) # (!\alu_op[1]~input_o\ & ((\alu_op[0]~input_o\ & ((\ALU|data_in|D5_in|Sel_SR|Data_out|MUX_Sel|Out[17]~66_combout\))) # (!\alu_op[0]~input_o\ & 
-- (\operand_b[17]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \operand_b[17]~input_o\,
	datab => \ALU|data_in|D5_in|Sel_SR|Data_out|MUX_Sel|Out[17]~66_combout\,
	datac => \alu_op[1]~input_o\,
	datad => \alu_op[0]~input_o\,
	combout => \ALU|data_OUT|MUX_Sel|Mux14~3_combout\);

-- Location: LCCOMB_X32_Y23_N6
\ALU|data_OUT|MUX_Sel|Mux14~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ALU|data_OUT|MUX_Sel|Mux14~4_combout\ = (\operand_a[17]~input_o\ & ((\alu_op[0]~input_o\ & ((\ALU|data_OUT|MUX_Sel|Mux14~3_combout\))) # (!\alu_op[0]~input_o\ & ((\alu_op[1]~input_o\) # (!\ALU|data_OUT|MUX_Sel|Mux14~3_combout\))))) # 
-- (!\operand_a[17]~input_o\ & (\ALU|data_OUT|MUX_Sel|Mux14~3_combout\ & ((!\alu_op[1]~input_o\) # (!\alu_op[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110100100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \operand_a[17]~input_o\,
	datab => \alu_op[0]~input_o\,
	datac => \alu_op[1]~input_o\,
	datad => \ALU|data_OUT|MUX_Sel|Mux14~3_combout\,
	combout => \ALU|data_OUT|MUX_Sel|Mux14~4_combout\);

-- Location: LCCOMB_X29_Y22_N8
\ALU|data_in|D1_in|SLL|ShiftLeft0~62\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ALU|data_in|D1_in|SLL|ShiftLeft0~62_combout\ = (\operand_b[1]~input_o\ & (\operand_a[15]~input_o\)) # (!\operand_b[1]~input_o\ & ((\operand_a[17]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \operand_b[1]~input_o\,
	datac => \operand_a[15]~input_o\,
	datad => \operand_a[17]~input_o\,
	combout => \ALU|data_in|D1_in|SLL|ShiftLeft0~62_combout\);

-- Location: LCCOMB_X29_Y22_N26
\ALU|data_in|D1_in|SLL|ShiftLeft0~63\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ALU|data_in|D1_in|SLL|ShiftLeft0~63_combout\ = (\operand_b[0]~input_o\ & ((\ALU|data_in|D1_in|SLL|ShiftLeft0~58_combout\))) # (!\operand_b[0]~input_o\ & (\ALU|data_in|D1_in|SLL|ShiftLeft0~62_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ALU|data_in|D1_in|SLL|ShiftLeft0~62_combout\,
	datac => \operand_b[0]~input_o\,
	datad => \ALU|data_in|D1_in|SLL|ShiftLeft0~58_combout\,
	combout => \ALU|data_in|D1_in|SLL|ShiftLeft0~63_combout\);

-- Location: LCCOMB_X31_Y23_N14
\ALU|data_in|D1_in|SLL|ShiftLeft0~64\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ALU|data_in|D1_in|SLL|ShiftLeft0~64_combout\ = (\operand_b[2]~input_o\ & ((\ALU|data_in|D1_in|SLL|ShiftLeft0~48_combout\))) # (!\operand_b[2]~input_o\ & (\ALU|data_in|D1_in|SLL|ShiftLeft0~63_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \operand_b[2]~input_o\,
	datac => \ALU|data_in|D1_in|SLL|ShiftLeft0~63_combout\,
	datad => \ALU|data_in|D1_in|SLL|ShiftLeft0~48_combout\,
	combout => \ALU|data_in|D1_in|SLL|ShiftLeft0~64_combout\);

-- Location: LCCOMB_X32_Y23_N2
\ALU|data_OUT|MUX_Sel|Mux14~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ALU|data_OUT|MUX_Sel|Mux14~0_combout\ = (\ALU|data_OUT|MUX_Sel|Mux15~2_combout\ & (((\ALU|data_in|D1_in|SLL|ShiftLeft0~33_combout\) # (!\ALU|data_OUT|MUX_Sel|Mux30~3_combout\)))) # (!\ALU|data_OUT|MUX_Sel|Mux15~2_combout\ & 
-- (\ALU|data_in|D1_in|SLL|ShiftLeft0~64_combout\ & ((\ALU|data_OUT|MUX_Sel|Mux30~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU|data_in|D1_in|SLL|ShiftLeft0~64_combout\,
	datab => \ALU|data_in|D1_in|SLL|ShiftLeft0~33_combout\,
	datac => \ALU|data_OUT|MUX_Sel|Mux15~2_combout\,
	datad => \ALU|data_OUT|MUX_Sel|Mux30~3_combout\,
	combout => \ALU|data_OUT|MUX_Sel|Mux14~0_combout\);

-- Location: LCCOMB_X29_Y19_N4
\ALU|data_in|D0_in|AddSub|adder_inst|adder_loop[15].full_adder|Cout~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ALU|data_in|D0_in|AddSub|adder_inst|adder_loop[15].full_adder|Cout~0_combout\ = (\operand_b[15]~input_o\ & ((\operand_a[15]~input_o\) # (\ALU|data_in|D0_in|AddSub|adder_inst|adder_loop[14].full_adder|Cout~0_combout\))) # (!\operand_b[15]~input_o\ & 
-- (\operand_a[15]~input_o\ & \ALU|data_in|D0_in|AddSub|adder_inst|adder_loop[14].full_adder|Cout~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \operand_b[15]~input_o\,
	datac => \operand_a[15]~input_o\,
	datad => \ALU|data_in|D0_in|AddSub|adder_inst|adder_loop[14].full_adder|Cout~0_combout\,
	combout => \ALU|data_in|D0_in|AddSub|adder_inst|adder_loop[15].full_adder|Cout~0_combout\);

-- Location: LCCOMB_X29_Y19_N22
\ALU|data_in|D0_in|AddSub|adder_inst|adder_loop[16].full_adder|Cout~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ALU|data_in|D0_in|AddSub|adder_inst|adder_loop[16].full_adder|Cout~0_combout\ = (\ALU|data_in|D0_in|AddSub|adder_inst|adder_loop[15].full_adder|Cout~0_combout\ & ((\operand_b[16]~input_o\) # (\operand_a[16]~input_o\))) # 
-- (!\ALU|data_in|D0_in|AddSub|adder_inst|adder_loop[15].full_adder|Cout~0_combout\ & (\operand_b[16]~input_o\ & \operand_a[16]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ALU|data_in|D0_in|AddSub|adder_inst|adder_loop[15].full_adder|Cout~0_combout\,
	datac => \operand_b[16]~input_o\,
	datad => \operand_a[16]~input_o\,
	combout => \ALU|data_in|D0_in|AddSub|adder_inst|adder_loop[16].full_adder|Cout~0_combout\);

-- Location: LCCOMB_X32_Y23_N8
\ALU|data_in|D0_in|AddSub|adder_inst|adder_loop[17].full_adder|S\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ALU|data_in|D0_in|AddSub|adder_inst|adder_loop[17].full_adder|S~combout\ = \ALU|data_in|D0_in|AddSub|adder_inst|adder_loop[16].full_adder|Cout~0_combout\ $ (\operand_a[17]~input_o\ $ (\operand_b[17]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ALU|data_in|D0_in|AddSub|adder_inst|adder_loop[16].full_adder|Cout~0_combout\,
	datac => \operand_a[17]~input_o\,
	datad => \operand_b[17]~input_o\,
	combout => \ALU|data_in|D0_in|AddSub|adder_inst|adder_loop[17].full_adder|S~combout\);

-- Location: LCCOMB_X32_Y23_N4
\ALU|data_OUT|MUX_Sel|Mux14~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ALU|data_OUT|MUX_Sel|Mux14~1_combout\ = (\ALU|data_OUT|MUX_Sel|Mux14~0_combout\ & ((\ALU|data_in|D1_in|SLL|ShiftLeft0~100_combout\) # ((\ALU|data_OUT|MUX_Sel|Mux30~3_combout\)))) # (!\ALU|data_OUT|MUX_Sel|Mux14~0_combout\ & 
-- (((\ALU|data_in|D0_in|AddSub|adder_inst|adder_loop[17].full_adder|S~combout\ & !\ALU|data_OUT|MUX_Sel|Mux30~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU|data_in|D1_in|SLL|ShiftLeft0~100_combout\,
	datab => \ALU|data_OUT|MUX_Sel|Mux14~0_combout\,
	datac => \ALU|data_in|D0_in|AddSub|adder_inst|adder_loop[17].full_adder|S~combout\,
	datad => \ALU|data_OUT|MUX_Sel|Mux30~3_combout\,
	combout => \ALU|data_OUT|MUX_Sel|Mux14~1_combout\);

-- Location: LCCOMB_X32_Y23_N22
\ALU|data_OUT|MUX_Sel|Mux14~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ALU|data_OUT|MUX_Sel|Mux14~2_combout\ = (\alu_op[2]~input_o\ & (\ALU|data_OUT|MUX_Sel|Mux14~4_combout\)) # (!\alu_op[2]~input_o\ & (((\ALU|data_OUT|MUX_Sel|Mux14~1_combout\ & !\alu_op[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU|data_OUT|MUX_Sel|Mux14~4_combout\,
	datab => \ALU|data_OUT|MUX_Sel|Mux14~1_combout\,
	datac => \alu_op[1]~input_o\,
	datad => \alu_op[2]~input_o\,
	combout => \ALU|data_OUT|MUX_Sel|Mux14~2_combout\);

-- Location: LCCOMB_X32_Y23_N26
\ALU|data_in|D4_in|Xor1|S[18]~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ALU|data_in|D4_in|Xor1|S[18]~3_combout\ = \operand_b[18]~input_o\ $ (\operand_a[18]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \operand_b[18]~input_o\,
	datad => \operand_a[18]~input_o\,
	combout => \ALU|data_in|D4_in|Xor1|S[18]~3_combout\);

-- Location: LCCOMB_X34_Y19_N4
\ALU|data_in|D5_in|Sel_SR|Data_out|MUX_Sel|Out[18]~67\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ALU|data_in|D5_in|Sel_SR|Data_out|MUX_Sel|Out[18]~67_combout\ = (\ALU|data_in|D5_in|Sel_SR|SRA_out|SRA1|Add1~1_combout\ & (\ALU|data_in|D5_in|Sel_SR|Data_out|MUX_Sel|Out[0]~8_combout\ & (\ALU|data_in|D5_in|Sel_SR|Data_out|MUX_Sel|Out[1]~9_combout\ & 
-- \ALU|data_in|D5_in|Sel_SR|SRA_out|SRA1|Add1~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU|data_in|D5_in|Sel_SR|SRA_out|SRA1|Add1~1_combout\,
	datab => \ALU|data_in|D5_in|Sel_SR|Data_out|MUX_Sel|Out[0]~8_combout\,
	datac => \ALU|data_in|D5_in|Sel_SR|Data_out|MUX_Sel|Out[1]~9_combout\,
	datad => \ALU|data_in|D5_in|Sel_SR|SRA_out|SRA1|Add1~0_combout\,
	combout => \ALU|data_in|D5_in|Sel_SR|Data_out|MUX_Sel|Out[18]~67_combout\);

-- Location: LCCOMB_X32_Y23_N16
\ALU|data_in|D5_in|Sel_SR|Data_out|MUX_Sel|Out[18]~68\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ALU|data_in|D5_in|Sel_SR|Data_out|MUX_Sel|Out[18]~68_combout\ = (\ALU|data_in|D5_in|Sel_SR|Data_out|MUX_Sel|Out[18]~67_combout\) # ((\ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~63_combout\ & !\operand_b[4]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~63_combout\,
	datab => \operand_b[4]~input_o\,
	datac => \ALU|data_in|D5_in|Sel_SR|Data_out|MUX_Sel|Out[18]~67_combout\,
	combout => \ALU|data_in|D5_in|Sel_SR|Data_out|MUX_Sel|Out[18]~68_combout\);

-- Location: LCCOMB_X32_Y23_N28
\ALU|data_OUT|MUX_Sel|Mux13~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ALU|data_OUT|MUX_Sel|Mux13~0_combout\ = (\alu_op[1]~input_o\ & (((\alu_op[0]~input_o\)))) # (!\alu_op[1]~input_o\ & ((\alu_op[0]~input_o\ & ((\ALU|data_in|D5_in|Sel_SR|Data_out|MUX_Sel|Out[18]~68_combout\))) # (!\alu_op[0]~input_o\ & 
-- (\ALU|data_in|D4_in|Xor1|S[18]~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU|data_in|D4_in|Xor1|S[18]~3_combout\,
	datab => \ALU|data_in|D5_in|Sel_SR|Data_out|MUX_Sel|Out[18]~68_combout\,
	datac => \alu_op[1]~input_o\,
	datad => \alu_op[0]~input_o\,
	combout => \ALU|data_OUT|MUX_Sel|Mux13~0_combout\);

-- Location: LCCOMB_X32_Y23_N30
\ALU|data_OUT|MUX_Sel|Mux13~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ALU|data_OUT|MUX_Sel|Mux13~1_combout\ = (\ALU|data_OUT|MUX_Sel|Mux13~0_combout\ & (((\operand_b[18]~input_o\ & \operand_a[18]~input_o\)) # (!\alu_op[1]~input_o\))) # (!\ALU|data_OUT|MUX_Sel|Mux13~0_combout\ & (\alu_op[1]~input_o\ & 
-- ((\operand_b[18]~input_o\) # (\operand_a[18]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110000101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \operand_b[18]~input_o\,
	datab => \ALU|data_OUT|MUX_Sel|Mux13~0_combout\,
	datac => \alu_op[1]~input_o\,
	datad => \operand_a[18]~input_o\,
	combout => \ALU|data_OUT|MUX_Sel|Mux13~1_combout\);

-- Location: LCCOMB_X30_Y22_N22
\ALU|data_in|D1_in|SLL|ShiftLeft0~65\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ALU|data_in|D1_in|SLL|ShiftLeft0~65_combout\ = (\operand_b[1]~input_o\ & (\operand_a[16]~input_o\)) # (!\operand_b[1]~input_o\ & ((\operand_a[18]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \operand_a[16]~input_o\,
	datac => \operand_a[18]~input_o\,
	datad => \operand_b[1]~input_o\,
	combout => \ALU|data_in|D1_in|SLL|ShiftLeft0~65_combout\);

-- Location: LCCOMB_X29_Y22_N12
\ALU|data_in|D1_in|SLL|ShiftLeft0~66\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ALU|data_in|D1_in|SLL|ShiftLeft0~66_combout\ = (\operand_b[0]~input_o\ & ((\ALU|data_in|D1_in|SLL|ShiftLeft0~62_combout\))) # (!\operand_b[0]~input_o\ & (\ALU|data_in|D1_in|SLL|ShiftLeft0~65_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \operand_b[0]~input_o\,
	datab => \ALU|data_in|D1_in|SLL|ShiftLeft0~65_combout\,
	datac => \ALU|data_in|D1_in|SLL|ShiftLeft0~62_combout\,
	combout => \ALU|data_in|D1_in|SLL|ShiftLeft0~66_combout\);

-- Location: LCCOMB_X32_Y22_N18
\ALU|data_in|D1_in|SLL|ShiftLeft0~67\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ALU|data_in|D1_in|SLL|ShiftLeft0~67_combout\ = (\operand_b[2]~input_o\ & ((\ALU|data_in|D1_in|SLL|ShiftLeft0~52_combout\))) # (!\operand_b[2]~input_o\ & (\ALU|data_in|D1_in|SLL|ShiftLeft0~66_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \operand_b[2]~input_o\,
	datab => \ALU|data_in|D1_in|SLL|ShiftLeft0~66_combout\,
	datac => \ALU|data_in|D1_in|SLL|ShiftLeft0~52_combout\,
	combout => \ALU|data_in|D1_in|SLL|ShiftLeft0~67_combout\);

-- Location: LCCOMB_X32_Y23_N24
\ALU|data_in|D0_in|AddSub|adder_inst|adder_loop[18].full_adder|S\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ALU|data_in|D0_in|AddSub|adder_inst|adder_loop[18].full_adder|S~combout\ = \ALU|data_in|D4_in|Xor1|S[18]~3_combout\ $ (((\ALU|data_in|D0_in|AddSub|adder_inst|adder_loop[16].full_adder|Cout~0_combout\ & ((\operand_a[17]~input_o\) # 
-- (\operand_b[17]~input_o\))) # (!\ALU|data_in|D0_in|AddSub|adder_inst|adder_loop[16].full_adder|Cout~0_combout\ & (\operand_a[17]~input_o\ & \operand_b[17]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101011001101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU|data_in|D4_in|Xor1|S[18]~3_combout\,
	datab => \ALU|data_in|D0_in|AddSub|adder_inst|adder_loop[16].full_adder|Cout~0_combout\,
	datac => \operand_a[17]~input_o\,
	datad => \operand_b[17]~input_o\,
	combout => \ALU|data_in|D0_in|AddSub|adder_inst|adder_loop[18].full_adder|S~combout\);

-- Location: LCCOMB_X32_Y23_N18
\ALU|data_OUT|MUX_Sel|Mux13~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ALU|data_OUT|MUX_Sel|Mux13~2_combout\ = (\ALU|data_OUT|MUX_Sel|Mux15~2_combout\ & (((!\ALU|data_OUT|MUX_Sel|Mux30~3_combout\)))) # (!\ALU|data_OUT|MUX_Sel|Mux15~2_combout\ & ((\ALU|data_OUT|MUX_Sel|Mux30~3_combout\ & 
-- (\ALU|data_in|D1_in|SLL|ShiftLeft0~67_combout\)) # (!\ALU|data_OUT|MUX_Sel|Mux30~3_combout\ & ((\ALU|data_in|D0_in|AddSub|adder_inst|adder_loop[18].full_adder|S~combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU|data_in|D1_in|SLL|ShiftLeft0~67_combout\,
	datab => \ALU|data_in|D0_in|AddSub|adder_inst|adder_loop[18].full_adder|S~combout\,
	datac => \ALU|data_OUT|MUX_Sel|Mux15~2_combout\,
	datad => \ALU|data_OUT|MUX_Sel|Mux30~3_combout\,
	combout => \ALU|data_OUT|MUX_Sel|Mux13~2_combout\);

-- Location: LCCOMB_X32_Y23_N20
\ALU|data_OUT|MUX_Sel|Mux13~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ALU|data_OUT|MUX_Sel|Mux13~3_combout\ = (\ALU|data_OUT|MUX_Sel|Mux15~2_combout\ & ((\ALU|data_OUT|MUX_Sel|Mux13~2_combout\ & (\ALU|data_in|D1_in|SLL|ShiftLeft0~101_combout\)) # (!\ALU|data_OUT|MUX_Sel|Mux13~2_combout\ & 
-- ((\ALU|data_in|D1_in|SLL|ShiftLeft0~37_combout\))))) # (!\ALU|data_OUT|MUX_Sel|Mux15~2_combout\ & (((\ALU|data_OUT|MUX_Sel|Mux13~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU|data_in|D1_in|SLL|ShiftLeft0~101_combout\,
	datab => \ALU|data_in|D1_in|SLL|ShiftLeft0~37_combout\,
	datac => \ALU|data_OUT|MUX_Sel|Mux15~2_combout\,
	datad => \ALU|data_OUT|MUX_Sel|Mux13~2_combout\,
	combout => \ALU|data_OUT|MUX_Sel|Mux13~3_combout\);

-- Location: LCCOMB_X32_Y23_N14
\ALU|data_OUT|MUX_Sel|Mux13~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ALU|data_OUT|MUX_Sel|Mux13~4_combout\ = (\alu_op[2]~input_o\ & (\ALU|data_OUT|MUX_Sel|Mux13~1_combout\)) # (!\alu_op[2]~input_o\ & (((\ALU|data_OUT|MUX_Sel|Mux13~3_combout\ & !\alu_op[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU|data_OUT|MUX_Sel|Mux13~1_combout\,
	datab => \ALU|data_OUT|MUX_Sel|Mux13~3_combout\,
	datac => \alu_op[1]~input_o\,
	datad => \alu_op[2]~input_o\,
	combout => \ALU|data_OUT|MUX_Sel|Mux13~4_combout\);

-- Location: LCCOMB_X34_Y19_N22
\ALU|data_in|D5_in|Sel_SR|Data_out|MUX_Sel|Out[19]~69\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ALU|data_in|D5_in|Sel_SR|Data_out|MUX_Sel|Out[19]~69_combout\ = (\ALU|data_in|D5_in|Sel_SR|SRA_out|SRA1|Add1~1_combout\ & (\ALU|data_in|D5_in|Sel_SR|Data_out|MUX_Sel|Out[3]~14_combout\ & (\ALU|data_in|D5_in|Sel_SR|Data_out|MUX_Sel|Out[1]~9_combout\ & 
-- \ALU|data_in|D5_in|Sel_SR|SRA_out|SRA1|Add1~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU|data_in|D5_in|Sel_SR|SRA_out|SRA1|Add1~1_combout\,
	datab => \ALU|data_in|D5_in|Sel_SR|Data_out|MUX_Sel|Out[3]~14_combout\,
	datac => \ALU|data_in|D5_in|Sel_SR|Data_out|MUX_Sel|Out[1]~9_combout\,
	datad => \ALU|data_in|D5_in|Sel_SR|SRA_out|SRA1|Add1~0_combout\,
	combout => \ALU|data_in|D5_in|Sel_SR|Data_out|MUX_Sel|Out[19]~69_combout\);

-- Location: LCCOMB_X31_Y18_N4
\ALU|data_in|D5_in|Sel_SR|Data_out|MUX_Sel|Out[19]~70\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ALU|data_in|D5_in|Sel_SR|Data_out|MUX_Sel|Out[19]~70_combout\ = (\ALU|data_in|D5_in|Sel_SR|Data_out|MUX_Sel|Out[19]~69_combout\) # ((\ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~80_combout\ & !\operand_b[4]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~80_combout\,
	datac => \ALU|data_in|D5_in|Sel_SR|Data_out|MUX_Sel|Out[19]~69_combout\,
	datad => \operand_b[4]~input_o\,
	combout => \ALU|data_in|D5_in|Sel_SR|Data_out|MUX_Sel|Out[19]~70_combout\);

-- Location: LCCOMB_X31_Y24_N18
\ALU|data_OUT|MUX_Sel|Mux12~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ALU|data_OUT|MUX_Sel|Mux12~3_combout\ = (\alu_op[1]~input_o\ & (\operand_b[19]~input_o\)) # (!\alu_op[1]~input_o\ & ((\alu_op[0]~input_o\ & ((\ALU|data_in|D5_in|Sel_SR|Data_out|MUX_Sel|Out[19]~70_combout\))) # (!\alu_op[0]~input_o\ & 
-- (\operand_b[19]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \operand_b[19]~input_o\,
	datab => \ALU|data_in|D5_in|Sel_SR|Data_out|MUX_Sel|Out[19]~70_combout\,
	datac => \alu_op[1]~input_o\,
	datad => \alu_op[0]~input_o\,
	combout => \ALU|data_OUT|MUX_Sel|Mux12~3_combout\);

-- Location: LCCOMB_X31_Y24_N12
\ALU|data_OUT|MUX_Sel|Mux12~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ALU|data_OUT|MUX_Sel|Mux12~4_combout\ = (\operand_a[19]~input_o\ & ((\ALU|data_OUT|MUX_Sel|Mux12~3_combout\ & ((\alu_op[1]~input_o\) # (\alu_op[0]~input_o\))) # (!\ALU|data_OUT|MUX_Sel|Mux12~3_combout\ & ((!\alu_op[0]~input_o\))))) # 
-- (!\operand_a[19]~input_o\ & (\ALU|data_OUT|MUX_Sel|Mux12~3_combout\ & ((!\alu_op[0]~input_o\) # (!\alu_op[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110011100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \operand_a[19]~input_o\,
	datab => \ALU|data_OUT|MUX_Sel|Mux12~3_combout\,
	datac => \alu_op[1]~input_o\,
	datad => \alu_op[0]~input_o\,
	combout => \ALU|data_OUT|MUX_Sel|Mux12~4_combout\);

-- Location: LCCOMB_X31_Y24_N2
\ALU|data_in|D0_in|AddSub|adder_inst|adder_loop[18].full_adder|Cout~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ALU|data_in|D0_in|AddSub|adder_inst|adder_loop[18].full_adder|Cout~0_combout\ = (\operand_b[18]~input_o\) # (\operand_a[18]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \operand_b[18]~input_o\,
	datad => \operand_a[18]~input_o\,
	combout => \ALU|data_in|D0_in|AddSub|adder_inst|adder_loop[18].full_adder|Cout~0_combout\);

-- Location: LCCOMB_X32_Y23_N0
\ALU|data_in|D0_in|AddSub|adder_inst|adder_loop[18].full_adder|Cout~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ALU|data_in|D0_in|AddSub|adder_inst|adder_loop[18].full_adder|Cout~1_combout\ = (\ALU|data_in|D0_in|AddSub|adder_inst|adder_loop[18].full_adder|Cout~0_combout\ & ((\ALU|data_in|D0_in|AddSub|adder_inst|adder_loop[16].full_adder|Cout~0_combout\ & 
-- ((\operand_a[17]~input_o\) # (\operand_b[17]~input_o\))) # (!\ALU|data_in|D0_in|AddSub|adder_inst|adder_loop[16].full_adder|Cout~0_combout\ & (\operand_a[17]~input_o\ & \operand_b[17]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU|data_in|D0_in|AddSub|adder_inst|adder_loop[18].full_adder|Cout~0_combout\,
	datab => \ALU|data_in|D0_in|AddSub|adder_inst|adder_loop[16].full_adder|Cout~0_combout\,
	datac => \operand_a[17]~input_o\,
	datad => \operand_b[17]~input_o\,
	combout => \ALU|data_in|D0_in|AddSub|adder_inst|adder_loop[18].full_adder|Cout~1_combout\);

-- Location: LCCOMB_X31_Y24_N0
\ALU|data_in|D7_in|AND_9|S[18]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ALU|data_in|D7_in|AND_9|S\(18) = (\operand_b[18]~input_o\ & \operand_a[18]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \operand_b[18]~input_o\,
	datad => \operand_a[18]~input_o\,
	combout => \ALU|data_in|D7_in|AND_9|S\(18));

-- Location: LCCOMB_X31_Y24_N20
\ALU|data_in|D0_in|AddSub|adder_inst|adder_loop[19].full_adder|S\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ALU|data_in|D0_in|AddSub|adder_inst|adder_loop[19].full_adder|S~combout\ = \operand_a[19]~input_o\ $ (\operand_b[19]~input_o\ $ (((\ALU|data_in|D0_in|AddSub|adder_inst|adder_loop[18].full_adder|Cout~1_combout\) # (\ALU|data_in|D7_in|AND_9|S\(18)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100011110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU|data_in|D0_in|AddSub|adder_inst|adder_loop[18].full_adder|Cout~1_combout\,
	datab => \ALU|data_in|D7_in|AND_9|S\(18),
	datac => \operand_a[19]~input_o\,
	datad => \operand_b[19]~input_o\,
	combout => \ALU|data_in|D0_in|AddSub|adder_inst|adder_loop[19].full_adder|S~combout\);

-- Location: LCCOMB_X30_Y22_N24
\ALU|data_in|D1_in|SLL|ShiftLeft0~68\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ALU|data_in|D1_in|SLL|ShiftLeft0~68_combout\ = (\operand_b[1]~input_o\ & ((\operand_a[17]~input_o\))) # (!\operand_b[1]~input_o\ & (\operand_a[19]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \operand_b[1]~input_o\,
	datac => \operand_a[19]~input_o\,
	datad => \operand_a[17]~input_o\,
	combout => \ALU|data_in|D1_in|SLL|ShiftLeft0~68_combout\);

-- Location: LCCOMB_X30_Y22_N10
\ALU|data_in|D1_in|SLL|ShiftLeft0~69\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ALU|data_in|D1_in|SLL|ShiftLeft0~69_combout\ = (\operand_b[0]~input_o\ & ((\ALU|data_in|D1_in|SLL|ShiftLeft0~65_combout\))) # (!\operand_b[0]~input_o\ & (\ALU|data_in|D1_in|SLL|ShiftLeft0~68_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \operand_b[0]~input_o\,
	datab => \ALU|data_in|D1_in|SLL|ShiftLeft0~68_combout\,
	datac => \ALU|data_in|D1_in|SLL|ShiftLeft0~65_combout\,
	combout => \ALU|data_in|D1_in|SLL|ShiftLeft0~69_combout\);

-- Location: LCCOMB_X31_Y21_N18
\ALU|data_in|D1_in|SLL|ShiftLeft0~70\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ALU|data_in|D1_in|SLL|ShiftLeft0~70_combout\ = (\operand_b[2]~input_o\ & (\ALU|data_in|D1_in|SLL|ShiftLeft0~55_combout\)) # (!\operand_b[2]~input_o\ & ((\ALU|data_in|D1_in|SLL|ShiftLeft0~69_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ALU|data_in|D1_in|SLL|ShiftLeft0~55_combout\,
	datac => \operand_b[2]~input_o\,
	datad => \ALU|data_in|D1_in|SLL|ShiftLeft0~69_combout\,
	combout => \ALU|data_in|D1_in|SLL|ShiftLeft0~70_combout\);

-- Location: LCCOMB_X31_Y21_N20
\ALU|data_OUT|MUX_Sel|Mux12~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ALU|data_OUT|MUX_Sel|Mux12~0_combout\ = (\ALU|data_OUT|MUX_Sel|Mux15~2_combout\ & ((\ALU|data_in|D1_in|SLL|ShiftLeft0~41_combout\) # ((!\ALU|data_OUT|MUX_Sel|Mux30~3_combout\)))) # (!\ALU|data_OUT|MUX_Sel|Mux15~2_combout\ & 
-- (((\ALU|data_OUT|MUX_Sel|Mux30~3_combout\ & \ALU|data_in|D1_in|SLL|ShiftLeft0~70_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU|data_in|D1_in|SLL|ShiftLeft0~41_combout\,
	datab => \ALU|data_OUT|MUX_Sel|Mux15~2_combout\,
	datac => \ALU|data_OUT|MUX_Sel|Mux30~3_combout\,
	datad => \ALU|data_in|D1_in|SLL|ShiftLeft0~70_combout\,
	combout => \ALU|data_OUT|MUX_Sel|Mux12~0_combout\);

-- Location: LCCOMB_X31_Y24_N14
\ALU|data_OUT|MUX_Sel|Mux12~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ALU|data_OUT|MUX_Sel|Mux12~1_combout\ = (\ALU|data_OUT|MUX_Sel|Mux30~3_combout\ & (((\ALU|data_OUT|MUX_Sel|Mux12~0_combout\)))) # (!\ALU|data_OUT|MUX_Sel|Mux30~3_combout\ & ((\ALU|data_OUT|MUX_Sel|Mux12~0_combout\ & 
-- ((\ALU|data_in|D1_in|SLL|ShiftLeft0~12_combout\))) # (!\ALU|data_OUT|MUX_Sel|Mux12~0_combout\ & (\ALU|data_in|D0_in|AddSub|adder_inst|adder_loop[19].full_adder|S~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU|data_OUT|MUX_Sel|Mux30~3_combout\,
	datab => \ALU|data_in|D0_in|AddSub|adder_inst|adder_loop[19].full_adder|S~combout\,
	datac => \ALU|data_OUT|MUX_Sel|Mux12~0_combout\,
	datad => \ALU|data_in|D1_in|SLL|ShiftLeft0~12_combout\,
	combout => \ALU|data_OUT|MUX_Sel|Mux12~1_combout\);

-- Location: LCCOMB_X31_Y24_N16
\ALU|data_OUT|MUX_Sel|Mux12~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ALU|data_OUT|MUX_Sel|Mux12~2_combout\ = (\alu_op[2]~input_o\ & (\ALU|data_OUT|MUX_Sel|Mux12~4_combout\)) # (!\alu_op[2]~input_o\ & (((\ALU|data_OUT|MUX_Sel|Mux12~1_combout\ & !\alu_op[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU|data_OUT|MUX_Sel|Mux12~4_combout\,
	datab => \ALU|data_OUT|MUX_Sel|Mux12~1_combout\,
	datac => \alu_op[1]~input_o\,
	datad => \alu_op[2]~input_o\,
	combout => \ALU|data_OUT|MUX_Sel|Mux12~2_combout\);

-- Location: LCCOMB_X31_Y24_N10
\ALU|data_in|D4_in|Xor1|S[20]~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ALU|data_in|D4_in|Xor1|S[20]~4_combout\ = \operand_a[20]~input_o\ $ (\operand_b[20]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \operand_a[20]~input_o\,
	datad => \operand_b[20]~input_o\,
	combout => \ALU|data_in|D4_in|Xor1|S[20]~4_combout\);

-- Location: LCCOMB_X32_Y23_N10
\ALU|data_in|D0_in|AddSub|adder_inst|adder_loop[17].full_adder|Cout~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ALU|data_in|D0_in|AddSub|adder_inst|adder_loop[17].full_adder|Cout~0_combout\ = (\ALU|data_in|D0_in|AddSub|adder_inst|adder_loop[16].full_adder|Cout~0_combout\ & ((\operand_a[17]~input_o\) # (\operand_b[17]~input_o\))) # 
-- (!\ALU|data_in|D0_in|AddSub|adder_inst|adder_loop[16].full_adder|Cout~0_combout\ & (\operand_a[17]~input_o\ & \operand_b[17]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ALU|data_in|D0_in|AddSub|adder_inst|adder_loop[16].full_adder|Cout~0_combout\,
	datac => \operand_a[17]~input_o\,
	datad => \operand_b[17]~input_o\,
	combout => \ALU|data_in|D0_in|AddSub|adder_inst|adder_loop[17].full_adder|Cout~0_combout\);

-- Location: LCCOMB_X31_Y24_N8
\ALU|data_in|D0_in|AddSub|adder_inst|adder_loop[18].full_adder|Cout~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ALU|data_in|D0_in|AddSub|adder_inst|adder_loop[18].full_adder|Cout~2_combout\ = (\operand_b[18]~input_o\ & ((\ALU|data_in|D0_in|AddSub|adder_inst|adder_loop[17].full_adder|Cout~0_combout\) # (\operand_a[18]~input_o\))) # (!\operand_b[18]~input_o\ & 
-- (\ALU|data_in|D0_in|AddSub|adder_inst|adder_loop[17].full_adder|Cout~0_combout\ & \operand_a[18]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \operand_b[18]~input_o\,
	datac => \ALU|data_in|D0_in|AddSub|adder_inst|adder_loop[17].full_adder|Cout~0_combout\,
	datad => \operand_a[18]~input_o\,
	combout => \ALU|data_in|D0_in|AddSub|adder_inst|adder_loop[18].full_adder|Cout~2_combout\);

-- Location: LCCOMB_X31_Y24_N26
\ALU|data_in|D0_in|AddSub|adder_inst|adder_loop[20].full_adder|S\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ALU|data_in|D0_in|AddSub|adder_inst|adder_loop[20].full_adder|S~combout\ = \ALU|data_in|D4_in|Xor1|S[20]~4_combout\ $ (((\ALU|data_in|D0_in|AddSub|adder_inst|adder_loop[18].full_adder|Cout~2_combout\ & ((\operand_a[19]~input_o\) # 
-- (\operand_b[19]~input_o\))) # (!\ALU|data_in|D0_in|AddSub|adder_inst|adder_loop[18].full_adder|Cout~2_combout\ & (\operand_a[19]~input_o\ & \operand_b[19]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101011001101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU|data_in|D4_in|Xor1|S[20]~4_combout\,
	datab => \ALU|data_in|D0_in|AddSub|adder_inst|adder_loop[18].full_adder|Cout~2_combout\,
	datac => \operand_a[19]~input_o\,
	datad => \operand_b[19]~input_o\,
	combout => \ALU|data_in|D0_in|AddSub|adder_inst|adder_loop[20].full_adder|S~combout\);

-- Location: LCCOMB_X30_Y22_N12
\ALU|data_in|D1_in|SLL|ShiftLeft0~71\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ALU|data_in|D1_in|SLL|ShiftLeft0~71_combout\ = (\operand_b[1]~input_o\ & ((\operand_a[18]~input_o\))) # (!\operand_b[1]~input_o\ & (\operand_a[20]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \operand_a[20]~input_o\,
	datac => \operand_a[18]~input_o\,
	datad => \operand_b[1]~input_o\,
	combout => \ALU|data_in|D1_in|SLL|ShiftLeft0~71_combout\);

-- Location: LCCOMB_X30_Y22_N6
\ALU|data_in|D1_in|SLL|ShiftLeft0~72\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ALU|data_in|D1_in|SLL|ShiftLeft0~72_combout\ = (\operand_b[0]~input_o\ & ((\ALU|data_in|D1_in|SLL|ShiftLeft0~68_combout\))) # (!\operand_b[0]~input_o\ & (\ALU|data_in|D1_in|SLL|ShiftLeft0~71_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU|data_in|D1_in|SLL|ShiftLeft0~71_combout\,
	datab => \ALU|data_in|D1_in|SLL|ShiftLeft0~68_combout\,
	datac => \operand_b[0]~input_o\,
	combout => \ALU|data_in|D1_in|SLL|ShiftLeft0~72_combout\);

-- Location: LCCOMB_X30_Y19_N0
\ALU|data_in|D1_in|SLL|ShiftLeft0~73\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ALU|data_in|D1_in|SLL|ShiftLeft0~73_combout\ = (\operand_b[2]~input_o\ & ((\ALU|data_in|D1_in|SLL|ShiftLeft0~59_combout\))) # (!\operand_b[2]~input_o\ & (\ALU|data_in|D1_in|SLL|ShiftLeft0~72_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \operand_b[2]~input_o\,
	datac => \ALU|data_in|D1_in|SLL|ShiftLeft0~72_combout\,
	datad => \ALU|data_in|D1_in|SLL|ShiftLeft0~59_combout\,
	combout => \ALU|data_in|D1_in|SLL|ShiftLeft0~73_combout\);

-- Location: LCCOMB_X30_Y19_N18
\ALU|data_OUT|MUX_Sel|Mux11~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ALU|data_OUT|MUX_Sel|Mux11~2_combout\ = (\ALU|data_OUT|MUX_Sel|Mux15~2_combout\ & (((!\ALU|data_OUT|MUX_Sel|Mux30~3_combout\)))) # (!\ALU|data_OUT|MUX_Sel|Mux15~2_combout\ & ((\ALU|data_OUT|MUX_Sel|Mux30~3_combout\ & 
-- ((\ALU|data_in|D1_in|SLL|ShiftLeft0~73_combout\))) # (!\ALU|data_OUT|MUX_Sel|Mux30~3_combout\ & (\ALU|data_in|D0_in|AddSub|adder_inst|adder_loop[20].full_adder|S~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU|data_in|D0_in|AddSub|adder_inst|adder_loop[20].full_adder|S~combout\,
	datab => \ALU|data_in|D1_in|SLL|ShiftLeft0~73_combout\,
	datac => \ALU|data_OUT|MUX_Sel|Mux15~2_combout\,
	datad => \ALU|data_OUT|MUX_Sel|Mux30~3_combout\,
	combout => \ALU|data_OUT|MUX_Sel|Mux11~2_combout\);

-- Location: LCCOMB_X30_Y19_N28
\ALU|data_in|D1_in|SLL|ShiftLeft0~74\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ALU|data_in|D1_in|SLL|ShiftLeft0~74_combout\ = (!\operand_b[3]~input_o\ & \ALU|data_in|D1_in|SLL|ShiftLeft0~16_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \operand_b[3]~input_o\,
	datad => \ALU|data_in|D1_in|SLL|ShiftLeft0~16_combout\,
	combout => \ALU|data_in|D1_in|SLL|ShiftLeft0~74_combout\);

-- Location: LCCOMB_X30_Y19_N14
\ALU|data_OUT|MUX_Sel|Mux11~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ALU|data_OUT|MUX_Sel|Mux11~3_combout\ = (\ALU|data_OUT|MUX_Sel|Mux11~2_combout\ & ((\ALU|data_in|D1_in|SLL|ShiftLeft0~74_combout\) # ((!\ALU|data_OUT|MUX_Sel|Mux15~2_combout\)))) # (!\ALU|data_OUT|MUX_Sel|Mux11~2_combout\ & 
-- (((\ALU|data_OUT|MUX_Sel|Mux15~2_combout\ & \ALU|data_in|D1_in|SLL|ShiftLeft0~45_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101010001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU|data_OUT|MUX_Sel|Mux11~2_combout\,
	datab => \ALU|data_in|D1_in|SLL|ShiftLeft0~74_combout\,
	datac => \ALU|data_OUT|MUX_Sel|Mux15~2_combout\,
	datad => \ALU|data_in|D1_in|SLL|ShiftLeft0~45_combout\,
	combout => \ALU|data_OUT|MUX_Sel|Mux11~3_combout\);

-- Location: LCCOMB_X34_Y17_N4
\ALU|data_in|D5_in|Sel_SR|Data_out|MUX_Sel|Out[20]~71\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ALU|data_in|D5_in|Sel_SR|Data_out|MUX_Sel|Out[20]~71_combout\ = (\ALU|data_in|D5_in|Sel_SR|Data_out|MUX_Sel|Out[16]~64_combout\ & ((\ALU|data_in|D5_in|Sel_SR|Data_out|MUX_Sel|Out[5]~25_combout\) # 
-- ((\ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~92_combout\ & !\operand_b[4]~input_o\)))) # (!\ALU|data_in|D5_in|Sel_SR|Data_out|MUX_Sel|Out[16]~64_combout\ & (\ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~92_combout\ & 
-- ((!\operand_b[4]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU|data_in|D5_in|Sel_SR|Data_out|MUX_Sel|Out[16]~64_combout\,
	datab => \ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~92_combout\,
	datac => \ALU|data_in|D5_in|Sel_SR|Data_out|MUX_Sel|Out[5]~25_combout\,
	datad => \operand_b[4]~input_o\,
	combout => \ALU|data_in|D5_in|Sel_SR|Data_out|MUX_Sel|Out[20]~71_combout\);

-- Location: LCCOMB_X31_Y24_N28
\ALU|data_OUT|MUX_Sel|Mux11~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ALU|data_OUT|MUX_Sel|Mux11~0_combout\ = (\alu_op[1]~input_o\ & (((\alu_op[0]~input_o\)))) # (!\alu_op[1]~input_o\ & ((\alu_op[0]~input_o\ & ((\ALU|data_in|D5_in|Sel_SR|Data_out|MUX_Sel|Out[20]~71_combout\))) # (!\alu_op[0]~input_o\ & 
-- (\ALU|data_in|D4_in|Xor1|S[20]~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU|data_in|D4_in|Xor1|S[20]~4_combout\,
	datab => \ALU|data_in|D5_in|Sel_SR|Data_out|MUX_Sel|Out[20]~71_combout\,
	datac => \alu_op[1]~input_o\,
	datad => \alu_op[0]~input_o\,
	combout => \ALU|data_OUT|MUX_Sel|Mux11~0_combout\);

-- Location: LCCOMB_X31_Y24_N6
\ALU|data_OUT|MUX_Sel|Mux11~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ALU|data_OUT|MUX_Sel|Mux11~1_combout\ = (\alu_op[1]~input_o\ & ((\operand_b[20]~input_o\ & ((\operand_a[20]~input_o\) # (!\ALU|data_OUT|MUX_Sel|Mux11~0_combout\))) # (!\operand_b[20]~input_o\ & (\operand_a[20]~input_o\ & 
-- !\ALU|data_OUT|MUX_Sel|Mux11~0_combout\)))) # (!\alu_op[1]~input_o\ & (((\ALU|data_OUT|MUX_Sel|Mux11~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \operand_b[20]~input_o\,
	datab => \operand_a[20]~input_o\,
	datac => \alu_op[1]~input_o\,
	datad => \ALU|data_OUT|MUX_Sel|Mux11~0_combout\,
	combout => \ALU|data_OUT|MUX_Sel|Mux11~1_combout\);

-- Location: LCCOMB_X31_Y24_N4
\ALU|data_OUT|MUX_Sel|Mux11~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ALU|data_OUT|MUX_Sel|Mux11~4_combout\ = (\alu_op[2]~input_o\ & (((\ALU|data_OUT|MUX_Sel|Mux11~1_combout\)))) # (!\alu_op[2]~input_o\ & (\ALU|data_OUT|MUX_Sel|Mux11~3_combout\ & (!\alu_op[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU|data_OUT|MUX_Sel|Mux11~3_combout\,
	datab => \alu_op[2]~input_o\,
	datac => \alu_op[1]~input_o\,
	datad => \ALU|data_OUT|MUX_Sel|Mux11~1_combout\,
	combout => \ALU|data_OUT|MUX_Sel|Mux11~4_combout\);

-- Location: LCCOMB_X34_Y20_N4
\ALU|data_in|D5_in|Sel_SR|Data_out|MUX_Sel|Out[21]~72\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ALU|data_in|D5_in|Sel_SR|Data_out|MUX_Sel|Out[21]~72_combout\ = (\ALU|data_in|D5_in|Sel_SR|Data_out|MUX_Sel|Out[5]~25_combout\ & ((\ALU|data_in|D5_in|Sel_SR|Data_out|MUX_Sel|Out[17]~85_combout\) # ((!\operand_b[4]~input_o\ & 
-- \ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~97_combout\)))) # (!\ALU|data_in|D5_in|Sel_SR|Data_out|MUX_Sel|Out[5]~25_combout\ & (!\operand_b[4]~input_o\ & ((\ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~97_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU|data_in|D5_in|Sel_SR|Data_out|MUX_Sel|Out[5]~25_combout\,
	datab => \operand_b[4]~input_o\,
	datac => \ALU|data_in|D5_in|Sel_SR|Data_out|MUX_Sel|Out[17]~85_combout\,
	datad => \ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~97_combout\,
	combout => \ALU|data_in|D5_in|Sel_SR|Data_out|MUX_Sel|Out[21]~72_combout\);

-- Location: LCCOMB_X31_Y22_N20
\ALU|data_in|D7_in|AND_9|S[21]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ALU|data_in|D7_in|AND_9|S\(21) = (\operand_b[21]~input_o\ & \operand_a[21]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \operand_b[21]~input_o\,
	datac => \operand_a[21]~input_o\,
	combout => \ALU|data_in|D7_in|AND_9|S\(21));

-- Location: LCCOMB_X31_Y22_N26
\ALU|data_OUT|MUX_Sel|Mux10~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ALU|data_OUT|MUX_Sel|Mux10~0_combout\ = (\alu_op[0]~input_o\ & (((\alu_op[1]~input_o\)))) # (!\alu_op[0]~input_o\ & ((\operand_a[21]~input_o\ & ((\alu_op[1]~input_o\) # (!\operand_b[21]~input_o\))) # (!\operand_a[21]~input_o\ & 
-- (\operand_b[21]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu_op[0]~input_o\,
	datab => \operand_a[21]~input_o\,
	datac => \operand_b[21]~input_o\,
	datad => \alu_op[1]~input_o\,
	combout => \ALU|data_OUT|MUX_Sel|Mux10~0_combout\);

-- Location: LCCOMB_X31_Y22_N6
\ALU|data_OUT|MUX_Sel|Mux10~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ALU|data_OUT|MUX_Sel|Mux10~1_combout\ = (\ALU|data_OUT|MUX_Sel|Mux10~0_combout\ & (((\ALU|data_in|D7_in|AND_9|S\(21)) # (!\alu_op[0]~input_o\)))) # (!\ALU|data_OUT|MUX_Sel|Mux10~0_combout\ & (\ALU|data_in|D5_in|Sel_SR|Data_out|MUX_Sel|Out[21]~72_combout\ 
-- & ((\alu_op[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU|data_in|D5_in|Sel_SR|Data_out|MUX_Sel|Out[21]~72_combout\,
	datab => \ALU|data_in|D7_in|AND_9|S\(21),
	datac => \ALU|data_OUT|MUX_Sel|Mux10~0_combout\,
	datad => \alu_op[0]~input_o\,
	combout => \ALU|data_OUT|MUX_Sel|Mux10~1_combout\);

-- Location: LCCOMB_X29_Y20_N18
\ALU|data_in|D1_in|SLL|ShiftLeft0~75\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ALU|data_in|D1_in|SLL|ShiftLeft0~75_combout\ = (\operand_b[1]~input_o\ & ((\operand_a[19]~input_o\))) # (!\operand_b[1]~input_o\ & (\operand_a[21]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \operand_a[21]~input_o\,
	datab => \operand_a[19]~input_o\,
	datac => \operand_b[1]~input_o\,
	combout => \ALU|data_in|D1_in|SLL|ShiftLeft0~75_combout\);

-- Location: LCCOMB_X31_Y23_N26
\ALU|data_in|D1_in|SLL|ShiftLeft0~76\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ALU|data_in|D1_in|SLL|ShiftLeft0~76_combout\ = (\operand_b[0]~input_o\ & (\ALU|data_in|D1_in|SLL|ShiftLeft0~71_combout\)) # (!\operand_b[0]~input_o\ & ((\ALU|data_in|D1_in|SLL|ShiftLeft0~75_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \operand_b[0]~input_o\,
	datab => \ALU|data_in|D1_in|SLL|ShiftLeft0~71_combout\,
	datac => \ALU|data_in|D1_in|SLL|ShiftLeft0~75_combout\,
	combout => \ALU|data_in|D1_in|SLL|ShiftLeft0~76_combout\);

-- Location: LCCOMB_X31_Y23_N20
\ALU|data_in|D1_in|SLL|ShiftLeft0~77\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ALU|data_in|D1_in|SLL|ShiftLeft0~77_combout\ = (\operand_b[2]~input_o\ & (\ALU|data_in|D1_in|SLL|ShiftLeft0~63_combout\)) # (!\operand_b[2]~input_o\ & ((\ALU|data_in|D1_in|SLL|ShiftLeft0~76_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \operand_b[2]~input_o\,
	datab => \ALU|data_in|D1_in|SLL|ShiftLeft0~63_combout\,
	datac => \ALU|data_in|D1_in|SLL|ShiftLeft0~76_combout\,
	combout => \ALU|data_in|D1_in|SLL|ShiftLeft0~77_combout\);

-- Location: LCCOMB_X31_Y23_N30
\ALU|data_OUT|MUX_Sel|Mux10~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ALU|data_OUT|MUX_Sel|Mux10~2_combout\ = (\ALU|data_OUT|MUX_Sel|Mux15~2_combout\ & ((\ALU|data_in|D1_in|SLL|ShiftLeft0~49_combout\) # ((!\ALU|data_OUT|MUX_Sel|Mux30~3_combout\)))) # (!\ALU|data_OUT|MUX_Sel|Mux15~2_combout\ & 
-- (((\ALU|data_OUT|MUX_Sel|Mux30~3_combout\ & \ALU|data_in|D1_in|SLL|ShiftLeft0~77_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU|data_in|D1_in|SLL|ShiftLeft0~49_combout\,
	datab => \ALU|data_OUT|MUX_Sel|Mux15~2_combout\,
	datac => \ALU|data_OUT|MUX_Sel|Mux30~3_combout\,
	datad => \ALU|data_in|D1_in|SLL|ShiftLeft0~77_combout\,
	combout => \ALU|data_OUT|MUX_Sel|Mux10~2_combout\);

-- Location: LCCOMB_X31_Y24_N22
\ALU|data_in|D0_in|AddSub|adder_inst|adder_loop[19].full_adder|Cout~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ALU|data_in|D0_in|AddSub|adder_inst|adder_loop[19].full_adder|Cout~0_combout\ = (\operand_a[19]~input_o\ & ((\ALU|data_in|D0_in|AddSub|adder_inst|adder_loop[18].full_adder|Cout~1_combout\) # ((\ALU|data_in|D7_in|AND_9|S\(18)) # 
-- (\operand_b[19]~input_o\)))) # (!\operand_a[19]~input_o\ & (\operand_b[19]~input_o\ & ((\ALU|data_in|D0_in|AddSub|adder_inst|adder_loop[18].full_adder|Cout~1_combout\) # (\ALU|data_in|D7_in|AND_9|S\(18)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU|data_in|D0_in|AddSub|adder_inst|adder_loop[18].full_adder|Cout~1_combout\,
	datab => \ALU|data_in|D7_in|AND_9|S\(18),
	datac => \operand_a[19]~input_o\,
	datad => \operand_b[19]~input_o\,
	combout => \ALU|data_in|D0_in|AddSub|adder_inst|adder_loop[19].full_adder|Cout~0_combout\);

-- Location: LCCOMB_X31_Y24_N24
\ALU|data_in|D0_in|AddSub|adder_inst|adder_loop[20].full_adder|Cout~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ALU|data_in|D0_in|AddSub|adder_inst|adder_loop[20].full_adder|Cout~0_combout\ = (\ALU|data_in|D0_in|AddSub|adder_inst|adder_loop[19].full_adder|Cout~0_combout\ & ((\operand_a[20]~input_o\) # (\operand_b[20]~input_o\))) # 
-- (!\ALU|data_in|D0_in|AddSub|adder_inst|adder_loop[19].full_adder|Cout~0_combout\ & (\operand_a[20]~input_o\ & \operand_b[20]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU|data_in|D0_in|AddSub|adder_inst|adder_loop[19].full_adder|Cout~0_combout\,
	datab => \operand_a[20]~input_o\,
	datad => \operand_b[20]~input_o\,
	combout => \ALU|data_in|D0_in|AddSub|adder_inst|adder_loop[20].full_adder|Cout~0_combout\);

-- Location: LCCOMB_X31_Y23_N8
\ALU|data_in|D0_in|AddSub|adder_inst|adder_loop[21].full_adder|S\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ALU|data_in|D0_in|AddSub|adder_inst|adder_loop[21].full_adder|S~combout\ = \operand_a[21]~input_o\ $ (\operand_b[21]~input_o\ $ (\ALU|data_in|D0_in|AddSub|adder_inst|adder_loop[20].full_adder|Cout~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \operand_a[21]~input_o\,
	datab => \operand_b[21]~input_o\,
	datac => \ALU|data_in|D0_in|AddSub|adder_inst|adder_loop[20].full_adder|Cout~0_combout\,
	combout => \ALU|data_in|D0_in|AddSub|adder_inst|adder_loop[21].full_adder|S~combout\);

-- Location: LCCOMB_X31_Y23_N16
\ALU|data_in|D1_in|SLL|ShiftLeft0~78\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ALU|data_in|D1_in|SLL|ShiftLeft0~78_combout\ = (\ALU|data_in|D1_in|SLL|ShiftLeft0~19_combout\ & !\operand_b[3]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ALU|data_in|D1_in|SLL|ShiftLeft0~19_combout\,
	datad => \operand_b[3]~input_o\,
	combout => \ALU|data_in|D1_in|SLL|ShiftLeft0~78_combout\);

-- Location: LCCOMB_X31_Y23_N18
\ALU|data_OUT|MUX_Sel|Mux10~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ALU|data_OUT|MUX_Sel|Mux10~3_combout\ = (\ALU|data_OUT|MUX_Sel|Mux10~2_combout\ & ((\ALU|data_OUT|MUX_Sel|Mux30~3_combout\) # ((\ALU|data_in|D1_in|SLL|ShiftLeft0~78_combout\)))) # (!\ALU|data_OUT|MUX_Sel|Mux10~2_combout\ & 
-- (!\ALU|data_OUT|MUX_Sel|Mux30~3_combout\ & (\ALU|data_in|D0_in|AddSub|adder_inst|adder_loop[21].full_adder|S~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU|data_OUT|MUX_Sel|Mux10~2_combout\,
	datab => \ALU|data_OUT|MUX_Sel|Mux30~3_combout\,
	datac => \ALU|data_in|D0_in|AddSub|adder_inst|adder_loop[21].full_adder|S~combout\,
	datad => \ALU|data_in|D1_in|SLL|ShiftLeft0~78_combout\,
	combout => \ALU|data_OUT|MUX_Sel|Mux10~3_combout\);

-- Location: LCCOMB_X31_Y22_N16
\ALU|data_OUT|MUX_Sel|Mux10~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ALU|data_OUT|MUX_Sel|Mux10~4_combout\ = (\alu_op[2]~input_o\ & (\ALU|data_OUT|MUX_Sel|Mux10~1_combout\)) # (!\alu_op[2]~input_o\ & (((\ALU|data_OUT|MUX_Sel|Mux10~3_combout\ & !\alu_op[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU|data_OUT|MUX_Sel|Mux10~1_combout\,
	datab => \alu_op[2]~input_o\,
	datac => \ALU|data_OUT|MUX_Sel|Mux10~3_combout\,
	datad => \alu_op[1]~input_o\,
	combout => \ALU|data_OUT|MUX_Sel|Mux10~4_combout\);

-- Location: LCCOMB_X31_Y22_N18
\ALU|data_in|D4_in|Xor1|S[22]~5\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ALU|data_in|D4_in|Xor1|S[22]~5_combout\ = \operand_b[22]~input_o\ $ (\operand_a[22]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \operand_b[22]~input_o\,
	datad => \operand_a[22]~input_o\,
	combout => \ALU|data_in|D4_in|Xor1|S[22]~5_combout\);

-- Location: LCCOMB_X31_Y22_N8
\ALU|data_in|D0_in|AddSub|adder_inst|adder_loop[22].full_adder|S\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ALU|data_in|D0_in|AddSub|adder_inst|adder_loop[22].full_adder|S~combout\ = \ALU|data_in|D4_in|Xor1|S[22]~5_combout\ $ (((\ALU|data_in|D0_in|AddSub|adder_inst|adder_loop[20].full_adder|Cout~0_combout\ & ((\operand_a[21]~input_o\) # 
-- (\operand_b[21]~input_o\))) # (!\ALU|data_in|D0_in|AddSub|adder_inst|adder_loop[20].full_adder|Cout~0_combout\ & (\operand_a[21]~input_o\ & \operand_b[21]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001011111101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU|data_in|D0_in|AddSub|adder_inst|adder_loop[20].full_adder|Cout~0_combout\,
	datab => \operand_a[21]~input_o\,
	datac => \operand_b[21]~input_o\,
	datad => \ALU|data_in|D4_in|Xor1|S[22]~5_combout\,
	combout => \ALU|data_in|D0_in|AddSub|adder_inst|adder_loop[22].full_adder|S~combout\);

-- Location: LCCOMB_X29_Y20_N4
\ALU|data_in|D1_in|SLL|ShiftLeft0~79\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ALU|data_in|D1_in|SLL|ShiftLeft0~79_combout\ = (\operand_b[1]~input_o\ & (\operand_a[20]~input_o\)) # (!\operand_b[1]~input_o\ & ((\operand_a[22]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \operand_a[20]~input_o\,
	datac => \operand_b[1]~input_o\,
	datad => \operand_a[22]~input_o\,
	combout => \ALU|data_in|D1_in|SLL|ShiftLeft0~79_combout\);

-- Location: LCCOMB_X29_Y20_N22
\ALU|data_in|D1_in|SLL|ShiftLeft0~80\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ALU|data_in|D1_in|SLL|ShiftLeft0~80_combout\ = (\operand_b[0]~input_o\ & (\ALU|data_in|D1_in|SLL|ShiftLeft0~75_combout\)) # (!\operand_b[0]~input_o\ & ((\ALU|data_in|D1_in|SLL|ShiftLeft0~79_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ALU|data_in|D1_in|SLL|ShiftLeft0~75_combout\,
	datac => \ALU|data_in|D1_in|SLL|ShiftLeft0~79_combout\,
	datad => \operand_b[0]~input_o\,
	combout => \ALU|data_in|D1_in|SLL|ShiftLeft0~80_combout\);

-- Location: LCCOMB_X32_Y22_N4
\ALU|data_in|D1_in|SLL|ShiftLeft0~81\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ALU|data_in|D1_in|SLL|ShiftLeft0~81_combout\ = (\operand_b[2]~input_o\ & ((\ALU|data_in|D1_in|SLL|ShiftLeft0~66_combout\))) # (!\operand_b[2]~input_o\ & (\ALU|data_in|D1_in|SLL|ShiftLeft0~80_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU|data_in|D1_in|SLL|ShiftLeft0~80_combout\,
	datab => \ALU|data_in|D1_in|SLL|ShiftLeft0~66_combout\,
	datac => \operand_b[2]~input_o\,
	combout => \ALU|data_in|D1_in|SLL|ShiftLeft0~81_combout\);

-- Location: LCCOMB_X32_Y22_N14
\ALU|data_OUT|MUX_Sel|Mux9~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ALU|data_OUT|MUX_Sel|Mux9~2_combout\ = (\ALU|data_OUT|MUX_Sel|Mux30~3_combout\ & (((\ALU|data_in|D1_in|SLL|ShiftLeft0~81_combout\ & !\ALU|data_OUT|MUX_Sel|Mux15~2_combout\)))) # (!\ALU|data_OUT|MUX_Sel|Mux30~3_combout\ & 
-- ((\ALU|data_in|D0_in|AddSub|adder_inst|adder_loop[22].full_adder|S~combout\) # ((\ALU|data_OUT|MUX_Sel|Mux15~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU|data_in|D0_in|AddSub|adder_inst|adder_loop[22].full_adder|S~combout\,
	datab => \ALU|data_OUT|MUX_Sel|Mux30~3_combout\,
	datac => \ALU|data_in|D1_in|SLL|ShiftLeft0~81_combout\,
	datad => \ALU|data_OUT|MUX_Sel|Mux15~2_combout\,
	combout => \ALU|data_OUT|MUX_Sel|Mux9~2_combout\);

-- Location: LCCOMB_X32_Y22_N24
\ALU|data_in|D1_in|SLL|ShiftLeft0~82\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ALU|data_in|D1_in|SLL|ShiftLeft0~82_combout\ = (!\operand_b[3]~input_o\ & ((\operand_b[2]~input_o\ & (\ALU|data_in|D1_in|SLL|ShiftLeft0~9_combout\)) # (!\operand_b[2]~input_o\ & ((\ALU|data_in|D1_in|SLL|ShiftLeft0~21_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \operand_b[2]~input_o\,
	datab => \ALU|data_in|D1_in|SLL|ShiftLeft0~9_combout\,
	datac => \operand_b[3]~input_o\,
	datad => \ALU|data_in|D1_in|SLL|ShiftLeft0~21_combout\,
	combout => \ALU|data_in|D1_in|SLL|ShiftLeft0~82_combout\);

-- Location: LCCOMB_X32_Y22_N2
\ALU|data_OUT|MUX_Sel|Mux9~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ALU|data_OUT|MUX_Sel|Mux9~3_combout\ = (\ALU|data_OUT|MUX_Sel|Mux15~2_combout\ & ((\ALU|data_OUT|MUX_Sel|Mux9~2_combout\ & ((\ALU|data_in|D1_in|SLL|ShiftLeft0~82_combout\))) # (!\ALU|data_OUT|MUX_Sel|Mux9~2_combout\ & 
-- (\ALU|data_in|D1_in|SLL|ShiftLeft0~53_combout\)))) # (!\ALU|data_OUT|MUX_Sel|Mux15~2_combout\ & (\ALU|data_OUT|MUX_Sel|Mux9~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110001100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU|data_OUT|MUX_Sel|Mux15~2_combout\,
	datab => \ALU|data_OUT|MUX_Sel|Mux9~2_combout\,
	datac => \ALU|data_in|D1_in|SLL|ShiftLeft0~53_combout\,
	datad => \ALU|data_in|D1_in|SLL|ShiftLeft0~82_combout\,
	combout => \ALU|data_OUT|MUX_Sel|Mux9~3_combout\);

-- Location: LCCOMB_X34_Y19_N24
\ALU|data_in|D5_in|Sel_SR|Data_out|MUX_Sel|Out[22]~73\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ALU|data_in|D5_in|Sel_SR|Data_out|MUX_Sel|Out[22]~73_combout\ = (\ALU|data_in|D5_in|Sel_SR|SRA_out|SRA1|Add1~0_combout\ & (\ALU|data_in|D5_in|Sel_SR|Data_out|MUX_Sel|Out[0]~8_combout\ & (\operand_b[0]~input_o\ $ (\operand_b[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU|data_in|D5_in|Sel_SR|SRA_out|SRA1|Add1~0_combout\,
	datab => \operand_b[0]~input_o\,
	datac => \operand_b[1]~input_o\,
	datad => \ALU|data_in|D5_in|Sel_SR|Data_out|MUX_Sel|Out[0]~8_combout\,
	combout => \ALU|data_in|D5_in|Sel_SR|Data_out|MUX_Sel|Out[22]~73_combout\);

-- Location: LCCOMB_X30_Y18_N18
\ALU|data_in|D5_in|Sel_SR|Data_out|MUX_Sel|Out[22]~74\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ALU|data_in|D5_in|Sel_SR|Data_out|MUX_Sel|Out[22]~74_combout\ = (\operand_b[4]~input_o\ & (((\ALU|data_in|D5_in|Sel_SR|Data_out|MUX_Sel|Out[5]~25_combout\ & \ALU|data_in|D5_in|Sel_SR|Data_out|MUX_Sel|Out[22]~73_combout\)))) # (!\operand_b[4]~input_o\ & 
-- ((\ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~101_combout\) # ((\ALU|data_in|D5_in|Sel_SR|Data_out|MUX_Sel|Out[5]~25_combout\ & \ALU|data_in|D5_in|Sel_SR|Data_out|MUX_Sel|Out[22]~73_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \operand_b[4]~input_o\,
	datab => \ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~101_combout\,
	datac => \ALU|data_in|D5_in|Sel_SR|Data_out|MUX_Sel|Out[5]~25_combout\,
	datad => \ALU|data_in|D5_in|Sel_SR|Data_out|MUX_Sel|Out[22]~73_combout\,
	combout => \ALU|data_in|D5_in|Sel_SR|Data_out|MUX_Sel|Out[22]~74_combout\);

-- Location: LCCOMB_X31_Y22_N12
\ALU|data_OUT|MUX_Sel|Mux9~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ALU|data_OUT|MUX_Sel|Mux9~0_combout\ = (\alu_op[0]~input_o\ & (((\ALU|data_in|D5_in|Sel_SR|Data_out|MUX_Sel|Out[22]~74_combout\) # (\alu_op[1]~input_o\)))) # (!\alu_op[0]~input_o\ & (\ALU|data_in|D4_in|Xor1|S[22]~5_combout\ & ((!\alu_op[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu_op[0]~input_o\,
	datab => \ALU|data_in|D4_in|Xor1|S[22]~5_combout\,
	datac => \ALU|data_in|D5_in|Sel_SR|Data_out|MUX_Sel|Out[22]~74_combout\,
	datad => \alu_op[1]~input_o\,
	combout => \ALU|data_OUT|MUX_Sel|Mux9~0_combout\);

-- Location: LCCOMB_X31_Y22_N22
\ALU|data_OUT|MUX_Sel|Mux9~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ALU|data_OUT|MUX_Sel|Mux9~1_combout\ = (\ALU|data_OUT|MUX_Sel|Mux9~0_combout\ & (((\operand_a[22]~input_o\ & \operand_b[22]~input_o\)) # (!\alu_op[1]~input_o\))) # (!\ALU|data_OUT|MUX_Sel|Mux9~0_combout\ & (\alu_op[1]~input_o\ & 
-- ((\operand_a[22]~input_o\) # (\operand_b[22]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \operand_a[22]~input_o\,
	datab => \operand_b[22]~input_o\,
	datac => \ALU|data_OUT|MUX_Sel|Mux9~0_combout\,
	datad => \alu_op[1]~input_o\,
	combout => \ALU|data_OUT|MUX_Sel|Mux9~1_combout\);

-- Location: LCCOMB_X31_Y22_N10
\ALU|data_OUT|MUX_Sel|Mux9~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ALU|data_OUT|MUX_Sel|Mux9~4_combout\ = (\alu_op[2]~input_o\ & (((\ALU|data_OUT|MUX_Sel|Mux9~1_combout\)))) # (!\alu_op[2]~input_o\ & (\ALU|data_OUT|MUX_Sel|Mux9~3_combout\ & ((!\alu_op[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU|data_OUT|MUX_Sel|Mux9~3_combout\,
	datab => \alu_op[2]~input_o\,
	datac => \ALU|data_OUT|MUX_Sel|Mux9~1_combout\,
	datad => \alu_op[1]~input_o\,
	combout => \ALU|data_OUT|MUX_Sel|Mux9~4_combout\);

-- Location: LCCOMB_X34_Y19_N6
\ALU|data_in|D5_in|Sel_SR|Data_out|MUX_Sel|Out[23]~86\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ALU|data_in|D5_in|Sel_SR|Data_out|MUX_Sel|Out[23]~86_combout\ = (\ALU|data_in|D5_in|Sel_SR|SRA_out|SRA1|Add1~0_combout\ & (\ALU|data_in|D5_in|Sel_SR|Data_out|MUX_Sel|Out[3]~14_combout\ & (\operand_b[0]~input_o\ $ (\operand_b[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU|data_in|D5_in|Sel_SR|SRA_out|SRA1|Add1~0_combout\,
	datab => \operand_b[0]~input_o\,
	datac => \operand_b[1]~input_o\,
	datad => \ALU|data_in|D5_in|Sel_SR|Data_out|MUX_Sel|Out[3]~14_combout\,
	combout => \ALU|data_in|D5_in|Sel_SR|Data_out|MUX_Sel|Out[23]~86_combout\);

-- Location: LCCOMB_X30_Y20_N14
\ALU|data_in|D5_in|Sel_SR|Data_out|MUX_Sel|Out[23]~75\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ALU|data_in|D5_in|Sel_SR|Data_out|MUX_Sel|Out[23]~75_combout\ = (\ALU|data_in|D5_in|Sel_SR|Data_out|MUX_Sel|Out[23]~86_combout\ & ((\ALU|data_in|D5_in|Sel_SR|Data_out|MUX_Sel|Out[5]~25_combout\) # 
-- ((\ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~105_combout\ & !\operand_b[4]~input_o\)))) # (!\ALU|data_in|D5_in|Sel_SR|Data_out|MUX_Sel|Out[23]~86_combout\ & (\ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~105_combout\ & 
-- (!\operand_b[4]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU|data_in|D5_in|Sel_SR|Data_out|MUX_Sel|Out[23]~86_combout\,
	datab => \ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~105_combout\,
	datac => \operand_b[4]~input_o\,
	datad => \ALU|data_in|D5_in|Sel_SR|Data_out|MUX_Sel|Out[5]~25_combout\,
	combout => \ALU|data_in|D5_in|Sel_SR|Data_out|MUX_Sel|Out[23]~75_combout\);

-- Location: LCCOMB_X30_Y21_N12
\ALU|data_OUT|MUX_Sel|Mux8~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ALU|data_OUT|MUX_Sel|Mux8~3_combout\ = (\alu_op[1]~input_o\ & (((\operand_b[23]~input_o\)))) # (!\alu_op[1]~input_o\ & ((\alu_op[0]~input_o\ & (\ALU|data_in|D5_in|Sel_SR|Data_out|MUX_Sel|Out[23]~75_combout\)) # (!\alu_op[0]~input_o\ & 
-- ((\operand_b[23]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU|data_in|D5_in|Sel_SR|Data_out|MUX_Sel|Out[23]~75_combout\,
	datab => \alu_op[1]~input_o\,
	datac => \operand_b[23]~input_o\,
	datad => \alu_op[0]~input_o\,
	combout => \ALU|data_OUT|MUX_Sel|Mux8~3_combout\);

-- Location: LCCOMB_X30_Y21_N22
\ALU|data_OUT|MUX_Sel|Mux8~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ALU|data_OUT|MUX_Sel|Mux8~4_combout\ = (\ALU|data_OUT|MUX_Sel|Mux8~3_combout\ & ((\alu_op[1]~input_o\ & ((\operand_a[23]~input_o\) # (!\alu_op[0]~input_o\))) # (!\alu_op[1]~input_o\ & ((\alu_op[0]~input_o\) # (!\operand_a[23]~input_o\))))) # 
-- (!\ALU|data_OUT|MUX_Sel|Mux8~3_combout\ & (((\operand_a[23]~input_o\ & !\alu_op[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001011011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU|data_OUT|MUX_Sel|Mux8~3_combout\,
	datab => \alu_op[1]~input_o\,
	datac => \operand_a[23]~input_o\,
	datad => \alu_op[0]~input_o\,
	combout => \ALU|data_OUT|MUX_Sel|Mux8~4_combout\);

-- Location: LCCOMB_X31_Y21_N2
\ALU|data_in|D1_in|SLL|ShiftLeft0~86\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ALU|data_in|D1_in|SLL|ShiftLeft0~86_combout\ = (!\operand_b[3]~input_o\ & ((\operand_b[2]~input_o\ & ((\ALU|data_in|D1_in|SLL|ShiftLeft0~23_combout\))) # (!\operand_b[2]~input_o\ & (\ALU|data_in|D1_in|SLL|ShiftLeft0~25_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU|data_in|D1_in|SLL|ShiftLeft0~25_combout\,
	datab => \operand_b[2]~input_o\,
	datac => \operand_b[3]~input_o\,
	datad => \ALU|data_in|D1_in|SLL|ShiftLeft0~23_combout\,
	combout => \ALU|data_in|D1_in|SLL|ShiftLeft0~86_combout\);

-- Location: LCCOMB_X31_Y22_N28
\ALU|data_in|D0_in|AddSub|adder_inst|adder_loop[22].full_adder|Cout~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ALU|data_in|D0_in|AddSub|adder_inst|adder_loop[22].full_adder|Cout~0_combout\ = (\ALU|data_in|D0_in|AddSub|adder_inst|adder_loop[20].full_adder|Cout~0_combout\ & ((\operand_a[21]~input_o\) # (\operand_b[21]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU|data_in|D0_in|AddSub|adder_inst|adder_loop[20].full_adder|Cout~0_combout\,
	datab => \operand_a[21]~input_o\,
	datac => \operand_b[21]~input_o\,
	combout => \ALU|data_in|D0_in|AddSub|adder_inst|adder_loop[22].full_adder|Cout~0_combout\);

-- Location: LCCOMB_X31_Y22_N30
\ALU|data_in|D0_in|AddSub|adder_inst|adder_loop[22].full_adder|Cout~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ALU|data_in|D0_in|AddSub|adder_inst|adder_loop[22].full_adder|Cout~1_combout\ = (\operand_a[22]~input_o\ & ((\operand_b[22]~input_o\) # ((\ALU|data_in|D0_in|AddSub|adder_inst|adder_loop[22].full_adder|Cout~0_combout\) # 
-- (\ALU|data_in|D7_in|AND_9|S\(21))))) # (!\operand_a[22]~input_o\ & (\operand_b[22]~input_o\ & ((\ALU|data_in|D0_in|AddSub|adder_inst|adder_loop[22].full_adder|Cout~0_combout\) # (\ALU|data_in|D7_in|AND_9|S\(21)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \operand_a[22]~input_o\,
	datab => \operand_b[22]~input_o\,
	datac => \ALU|data_in|D0_in|AddSub|adder_inst|adder_loop[22].full_adder|Cout~0_combout\,
	datad => \ALU|data_in|D7_in|AND_9|S\(21),
	combout => \ALU|data_in|D0_in|AddSub|adder_inst|adder_loop[22].full_adder|Cout~1_combout\);

-- Location: LCCOMB_X30_Y21_N24
\ALU|data_in|D0_in|AddSub|adder_inst|adder_loop[23].full_adder|S\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ALU|data_in|D0_in|AddSub|adder_inst|adder_loop[23].full_adder|S~combout\ = \ALU|data_in|D0_in|AddSub|adder_inst|adder_loop[22].full_adder|Cout~1_combout\ $ (\operand_b[23]~input_o\ $ (\operand_a[23]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ALU|data_in|D0_in|AddSub|adder_inst|adder_loop[22].full_adder|Cout~1_combout\,
	datac => \operand_b[23]~input_o\,
	datad => \operand_a[23]~input_o\,
	combout => \ALU|data_in|D0_in|AddSub|adder_inst|adder_loop[23].full_adder|S~combout\);

-- Location: LCCOMB_X32_Y20_N14
\ALU|data_in|D1_in|SLL|ShiftLeft0~83\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ALU|data_in|D1_in|SLL|ShiftLeft0~83_combout\ = (\operand_b[1]~input_o\ & (\operand_a[21]~input_o\)) # (!\operand_b[1]~input_o\ & ((\operand_a[23]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \operand_b[1]~input_o\,
	datab => \operand_a[21]~input_o\,
	datad => \operand_a[23]~input_o\,
	combout => \ALU|data_in|D1_in|SLL|ShiftLeft0~83_combout\);

-- Location: LCCOMB_X29_Y20_N16
\ALU|data_in|D1_in|SLL|ShiftLeft0~84\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ALU|data_in|D1_in|SLL|ShiftLeft0~84_combout\ = (\operand_b[0]~input_o\ & (\ALU|data_in|D1_in|SLL|ShiftLeft0~79_combout\)) # (!\operand_b[0]~input_o\ & ((\ALU|data_in|D1_in|SLL|ShiftLeft0~83_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \operand_b[0]~input_o\,
	datac => \ALU|data_in|D1_in|SLL|ShiftLeft0~79_combout\,
	datad => \ALU|data_in|D1_in|SLL|ShiftLeft0~83_combout\,
	combout => \ALU|data_in|D1_in|SLL|ShiftLeft0~84_combout\);

-- Location: LCCOMB_X31_Y21_N14
\ALU|data_in|D1_in|SLL|ShiftLeft0~85\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ALU|data_in|D1_in|SLL|ShiftLeft0~85_combout\ = (\operand_b[2]~input_o\ & ((\ALU|data_in|D1_in|SLL|ShiftLeft0~69_combout\))) # (!\operand_b[2]~input_o\ & (\ALU|data_in|D1_in|SLL|ShiftLeft0~84_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ALU|data_in|D1_in|SLL|ShiftLeft0~84_combout\,
	datac => \operand_b[2]~input_o\,
	datad => \ALU|data_in|D1_in|SLL|ShiftLeft0~69_combout\,
	combout => \ALU|data_in|D1_in|SLL|ShiftLeft0~85_combout\);

-- Location: LCCOMB_X31_Y21_N24
\ALU|data_OUT|MUX_Sel|Mux8~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ALU|data_OUT|MUX_Sel|Mux8~0_combout\ = (\ALU|data_OUT|MUX_Sel|Mux30~3_combout\ & ((\ALU|data_OUT|MUX_Sel|Mux15~2_combout\ & ((\ALU|data_in|D1_in|SLL|ShiftLeft0~56_combout\))) # (!\ALU|data_OUT|MUX_Sel|Mux15~2_combout\ & 
-- (\ALU|data_in|D1_in|SLL|ShiftLeft0~85_combout\)))) # (!\ALU|data_OUT|MUX_Sel|Mux30~3_combout\ & (((\ALU|data_OUT|MUX_Sel|Mux15~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU|data_OUT|MUX_Sel|Mux30~3_combout\,
	datab => \ALU|data_in|D1_in|SLL|ShiftLeft0~85_combout\,
	datac => \ALU|data_OUT|MUX_Sel|Mux15~2_combout\,
	datad => \ALU|data_in|D1_in|SLL|ShiftLeft0~56_combout\,
	combout => \ALU|data_OUT|MUX_Sel|Mux8~0_combout\);

-- Location: LCCOMB_X30_Y21_N18
\ALU|data_OUT|MUX_Sel|Mux8~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ALU|data_OUT|MUX_Sel|Mux8~1_combout\ = (\ALU|data_OUT|MUX_Sel|Mux30~3_combout\ & (((\ALU|data_OUT|MUX_Sel|Mux8~0_combout\)))) # (!\ALU|data_OUT|MUX_Sel|Mux30~3_combout\ & ((\ALU|data_OUT|MUX_Sel|Mux8~0_combout\ & 
-- (\ALU|data_in|D1_in|SLL|ShiftLeft0~86_combout\)) # (!\ALU|data_OUT|MUX_Sel|Mux8~0_combout\ & ((\ALU|data_in|D0_in|AddSub|adder_inst|adder_loop[23].full_adder|S~combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU|data_in|D1_in|SLL|ShiftLeft0~86_combout\,
	datab => \ALU|data_in|D0_in|AddSub|adder_inst|adder_loop[23].full_adder|S~combout\,
	datac => \ALU|data_OUT|MUX_Sel|Mux30~3_combout\,
	datad => \ALU|data_OUT|MUX_Sel|Mux8~0_combout\,
	combout => \ALU|data_OUT|MUX_Sel|Mux8~1_combout\);

-- Location: LCCOMB_X30_Y21_N28
\ALU|data_OUT|MUX_Sel|Mux8~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ALU|data_OUT|MUX_Sel|Mux8~2_combout\ = (\alu_op[2]~input_o\ & (\ALU|data_OUT|MUX_Sel|Mux8~4_combout\)) # (!\alu_op[2]~input_o\ & (((\ALU|data_OUT|MUX_Sel|Mux8~1_combout\ & !\alu_op[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU|data_OUT|MUX_Sel|Mux8~4_combout\,
	datab => \ALU|data_OUT|MUX_Sel|Mux8~1_combout\,
	datac => \alu_op[1]~input_o\,
	datad => \alu_op[2]~input_o\,
	combout => \ALU|data_OUT|MUX_Sel|Mux8~2_combout\);

-- Location: LCCOMB_X30_Y21_N14
\ALU|data_in|D5_in|Sel_SR|Data_out|MUX_Sel|Out[24]~76\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ALU|data_in|D5_in|Sel_SR|Data_out|MUX_Sel|Out[24]~76_combout\ = (\ALU|data_in|D5_in|Sel_SR|Data_out|MUX_Sel|Out[9]~34_combout\ & ((\ALU|data_in|D5_in|Sel_SR|Data_out|MUX_Sel|Out[16]~64_combout\) # 
-- ((\ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~33_combout\ & \ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~89_combout\)))) # (!\ALU|data_in|D5_in|Sel_SR|Data_out|MUX_Sel|Out[9]~34_combout\ & 
-- (((\ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~33_combout\ & \ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~89_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU|data_in|D5_in|Sel_SR|Data_out|MUX_Sel|Out[9]~34_combout\,
	datab => \ALU|data_in|D5_in|Sel_SR|Data_out|MUX_Sel|Out[16]~64_combout\,
	datac => \ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~33_combout\,
	datad => \ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~89_combout\,
	combout => \ALU|data_in|D5_in|Sel_SR|Data_out|MUX_Sel|Out[24]~76_combout\);

-- Location: LCCOMB_X30_Y21_N16
\ALU|data_in|D4_in|Xor1|S[24]~6\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ALU|data_in|D4_in|Xor1|S[24]~6_combout\ = \operand_a[24]~input_o\ $ (\operand_b[24]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \operand_a[24]~input_o\,
	datad => \operand_b[24]~input_o\,
	combout => \ALU|data_in|D4_in|Xor1|S[24]~6_combout\);

-- Location: LCCOMB_X30_Y21_N10
\ALU|data_OUT|MUX_Sel|Mux7~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ALU|data_OUT|MUX_Sel|Mux7~0_combout\ = (\alu_op[0]~input_o\ & ((\ALU|data_in|D5_in|Sel_SR|Data_out|MUX_Sel|Out[24]~76_combout\) # ((\alu_op[1]~input_o\)))) # (!\alu_op[0]~input_o\ & (((!\alu_op[1]~input_o\ & \ALU|data_in|D4_in|Xor1|S[24]~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu_op[0]~input_o\,
	datab => \ALU|data_in|D5_in|Sel_SR|Data_out|MUX_Sel|Out[24]~76_combout\,
	datac => \alu_op[1]~input_o\,
	datad => \ALU|data_in|D4_in|Xor1|S[24]~6_combout\,
	combout => \ALU|data_OUT|MUX_Sel|Mux7~0_combout\);

-- Location: LCCOMB_X30_Y21_N20
\ALU|data_OUT|MUX_Sel|Mux7~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ALU|data_OUT|MUX_Sel|Mux7~1_combout\ = (\ALU|data_OUT|MUX_Sel|Mux7~0_combout\ & (((\operand_a[24]~input_o\ & \operand_b[24]~input_o\)) # (!\alu_op[1]~input_o\))) # (!\ALU|data_OUT|MUX_Sel|Mux7~0_combout\ & (\alu_op[1]~input_o\ & 
-- ((\operand_a[24]~input_o\) # (\operand_b[24]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110000101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \operand_a[24]~input_o\,
	datab => \ALU|data_OUT|MUX_Sel|Mux7~0_combout\,
	datac => \alu_op[1]~input_o\,
	datad => \operand_b[24]~input_o\,
	combout => \ALU|data_OUT|MUX_Sel|Mux7~1_combout\);

-- Location: LCCOMB_X30_Y21_N6
\ALU|data_in|D0_in|AddSub|adder_inst|adder_loop[23].full_adder|Cout~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ALU|data_in|D0_in|AddSub|adder_inst|adder_loop[23].full_adder|Cout~0_combout\ = (\ALU|data_in|D0_in|AddSub|adder_inst|adder_loop[22].full_adder|Cout~1_combout\ & ((\operand_b[23]~input_o\) # (\operand_a[23]~input_o\))) # 
-- (!\ALU|data_in|D0_in|AddSub|adder_inst|adder_loop[22].full_adder|Cout~1_combout\ & (\operand_b[23]~input_o\ & \operand_a[23]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ALU|data_in|D0_in|AddSub|adder_inst|adder_loop[22].full_adder|Cout~1_combout\,
	datac => \operand_b[23]~input_o\,
	datad => \operand_a[23]~input_o\,
	combout => \ALU|data_in|D0_in|AddSub|adder_inst|adder_loop[23].full_adder|Cout~0_combout\);

-- Location: LCCOMB_X32_Y20_N16
\ALU|data_in|D1_in|SLL|ShiftLeft0~87\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ALU|data_in|D1_in|SLL|ShiftLeft0~87_combout\ = (\operand_b[1]~input_o\ & (\operand_a[22]~input_o\)) # (!\operand_b[1]~input_o\ & ((\operand_a[24]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \operand_b[1]~input_o\,
	datab => \operand_a[22]~input_o\,
	datad => \operand_a[24]~input_o\,
	combout => \ALU|data_in|D1_in|SLL|ShiftLeft0~87_combout\);

-- Location: LCCOMB_X32_Y20_N26
\ALU|data_in|D1_in|SLL|ShiftLeft0~88\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ALU|data_in|D1_in|SLL|ShiftLeft0~88_combout\ = (\operand_b[0]~input_o\ & ((\ALU|data_in|D1_in|SLL|ShiftLeft0~83_combout\))) # (!\operand_b[0]~input_o\ & (\ALU|data_in|D1_in|SLL|ShiftLeft0~87_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \operand_b[0]~input_o\,
	datab => \ALU|data_in|D1_in|SLL|ShiftLeft0~87_combout\,
	datac => \ALU|data_in|D1_in|SLL|ShiftLeft0~83_combout\,
	combout => \ALU|data_in|D1_in|SLL|ShiftLeft0~88_combout\);

-- Location: LCCOMB_X30_Y19_N16
\ALU|data_OUT|MUX_Sel|Mux7~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ALU|data_OUT|MUX_Sel|Mux7~2_combout\ = (\ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~87_combout\ & (((!\ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~89_combout\)))) # (!\ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~87_combout\ & 
-- ((\ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~89_combout\ & (\ALU|data_in|D1_in|SLL|ShiftLeft0~88_combout\)) # (!\ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~89_combout\ & ((\ALU|data_in|D1_in|SLL|ShiftLeft0~60_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU|data_in|D1_in|SLL|ShiftLeft0~88_combout\,
	datab => \ALU|data_in|D1_in|SLL|ShiftLeft0~60_combout\,
	datac => \ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~87_combout\,
	datad => \ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~89_combout\,
	combout => \ALU|data_OUT|MUX_Sel|Mux7~2_combout\);

-- Location: LCCOMB_X30_Y19_N10
\ALU|data_OUT|MUX_Sel|Mux7~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ALU|data_OUT|MUX_Sel|Mux7~3_combout\ = (\ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~87_combout\ & ((\ALU|data_OUT|MUX_Sel|Mux7~2_combout\ & (\ALU|data_in|D1_in|SLL|ShiftLeft0~30_combout\)) # (!\ALU|data_OUT|MUX_Sel|Mux7~2_combout\ & 
-- ((\ALU|data_in|D1_in|SLL|ShiftLeft0~72_combout\))))) # (!\ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~87_combout\ & (((\ALU|data_OUT|MUX_Sel|Mux7~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU|data_in|D1_in|SLL|ShiftLeft0~30_combout\,
	datab => \ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~87_combout\,
	datac => \ALU|data_in|D1_in|SLL|ShiftLeft0~72_combout\,
	datad => \ALU|data_OUT|MUX_Sel|Mux7~2_combout\,
	combout => \ALU|data_OUT|MUX_Sel|Mux7~3_combout\);

-- Location: LCCOMB_X30_Y21_N0
\ALU|data_OUT|MUX_Sel|Mux7~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ALU|data_OUT|MUX_Sel|Mux7~4_combout\ = (\alu_op[0]~input_o\ & (((\ALU|data_OUT|MUX_Sel|Mux7~3_combout\)))) # (!\alu_op[0]~input_o\ & (\ALU|data_in|D0_in|AddSub|adder_inst|adder_loop[23].full_adder|Cout~0_combout\ $ 
-- ((\ALU|data_in|D4_in|Xor1|S[24]~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000001100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU|data_in|D0_in|AddSub|adder_inst|adder_loop[23].full_adder|Cout~0_combout\,
	datab => \ALU|data_in|D4_in|Xor1|S[24]~6_combout\,
	datac => \ALU|data_OUT|MUX_Sel|Mux7~3_combout\,
	datad => \alu_op[0]~input_o\,
	combout => \ALU|data_OUT|MUX_Sel|Mux7~4_combout\);

-- Location: LCCOMB_X30_Y21_N26
\ALU|data_OUT|MUX_Sel|Mux7~5\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ALU|data_OUT|MUX_Sel|Mux7~5_combout\ = (\alu_op[2]~input_o\ & (\ALU|data_OUT|MUX_Sel|Mux7~1_combout\)) # (!\alu_op[2]~input_o\ & (((!\alu_op[1]~input_o\ & \ALU|data_OUT|MUX_Sel|Mux7~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu_op[2]~input_o\,
	datab => \ALU|data_OUT|MUX_Sel|Mux7~1_combout\,
	datac => \alu_op[1]~input_o\,
	datad => \ALU|data_OUT|MUX_Sel|Mux7~4_combout\,
	combout => \ALU|data_OUT|MUX_Sel|Mux7~5_combout\);

-- Location: LCCOMB_X35_Y20_N6
\ALU|data_in|D0_in|AddSub|adder_inst|adder_loop[24].full_adder|Cout~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ALU|data_in|D0_in|AddSub|adder_inst|adder_loop[24].full_adder|Cout~0_combout\ = (\ALU|data_in|D0_in|AddSub|adder_inst|adder_loop[23].full_adder|Cout~0_combout\ & ((\operand_a[24]~input_o\) # (\operand_b[24]~input_o\))) # 
-- (!\ALU|data_in|D0_in|AddSub|adder_inst|adder_loop[23].full_adder|Cout~0_combout\ & (\operand_a[24]~input_o\ & \operand_b[24]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ALU|data_in|D0_in|AddSub|adder_inst|adder_loop[23].full_adder|Cout~0_combout\,
	datac => \operand_a[24]~input_o\,
	datad => \operand_b[24]~input_o\,
	combout => \ALU|data_in|D0_in|AddSub|adder_inst|adder_loop[24].full_adder|Cout~0_combout\);

-- Location: LCCOMB_X35_Y20_N16
\ALU|data_in|D0_in|AddSub|adder_inst|adder_loop[25].full_adder|S~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ALU|data_in|D0_in|AddSub|adder_inst|adder_loop[25].full_adder|S~0_combout\ = \operand_a[25]~input_o\ $ (\operand_b[25]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \operand_a[25]~input_o\,
	datad => \operand_b[25]~input_o\,
	combout => \ALU|data_in|D0_in|AddSub|adder_inst|adder_loop[25].full_adder|S~0_combout\);

-- Location: LCCOMB_X29_Y20_N26
\ALU|data_in|D1_in|SLL|ShiftLeft0~89\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ALU|data_in|D1_in|SLL|ShiftLeft0~89_combout\ = (!\operand_b[0]~input_o\ & ((\operand_b[1]~input_o\ & (\operand_a[23]~input_o\)) # (!\operand_b[1]~input_o\ & ((\operand_a[25]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \operand_b[0]~input_o\,
	datab => \operand_b[1]~input_o\,
	datac => \operand_a[23]~input_o\,
	datad => \operand_a[25]~input_o\,
	combout => \ALU|data_in|D1_in|SLL|ShiftLeft0~89_combout\);

-- Location: LCCOMB_X32_Y20_N20
\ALU|data_in|D1_in|SLL|ShiftLeft0~90\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ALU|data_in|D1_in|SLL|ShiftLeft0~90_combout\ = (\ALU|data_in|D1_in|SLL|ShiftLeft0~89_combout\) # ((\operand_b[0]~input_o\ & \ALU|data_in|D1_in|SLL|ShiftLeft0~87_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \operand_b[0]~input_o\,
	datac => \ALU|data_in|D1_in|SLL|ShiftLeft0~89_combout\,
	datad => \ALU|data_in|D1_in|SLL|ShiftLeft0~87_combout\,
	combout => \ALU|data_in|D1_in|SLL|ShiftLeft0~90_combout\);

-- Location: LCCOMB_X31_Y23_N4
\ALU|data_OUT|MUX_Sel|Mux6~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ALU|data_OUT|MUX_Sel|Mux6~2_combout\ = (\ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~87_combout\ & (((!\ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~89_combout\)))) # (!\ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~87_combout\ & 
-- ((\ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~89_combout\ & ((\ALU|data_in|D1_in|SLL|ShiftLeft0~90_combout\))) # (!\ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~89_combout\ & (\ALU|data_in|D1_in|SLL|ShiftLeft0~64_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~87_combout\,
	datab => \ALU|data_in|D1_in|SLL|ShiftLeft0~64_combout\,
	datac => \ALU|data_in|D1_in|SLL|ShiftLeft0~90_combout\,
	datad => \ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~89_combout\,
	combout => \ALU|data_OUT|MUX_Sel|Mux6~2_combout\);

-- Location: LCCOMB_X31_Y23_N6
\ALU|data_OUT|MUX_Sel|Mux6~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ALU|data_OUT|MUX_Sel|Mux6~3_combout\ = (\ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~87_combout\ & ((\ALU|data_OUT|MUX_Sel|Mux6~2_combout\ & ((\ALU|data_in|D1_in|SLL|ShiftLeft0~34_combout\))) # (!\ALU|data_OUT|MUX_Sel|Mux6~2_combout\ & 
-- (\ALU|data_in|D1_in|SLL|ShiftLeft0~76_combout\)))) # (!\ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~87_combout\ & (\ALU|data_OUT|MUX_Sel|Mux6~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110001100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~87_combout\,
	datab => \ALU|data_OUT|MUX_Sel|Mux6~2_combout\,
	datac => \ALU|data_in|D1_in|SLL|ShiftLeft0~76_combout\,
	datad => \ALU|data_in|D1_in|SLL|ShiftLeft0~34_combout\,
	combout => \ALU|data_OUT|MUX_Sel|Mux6~3_combout\);

-- Location: LCCOMB_X35_Y20_N10
\ALU|data_OUT|MUX_Sel|Mux6~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ALU|data_OUT|MUX_Sel|Mux6~4_combout\ = (\alu_op[0]~input_o\ & (((\ALU|data_OUT|MUX_Sel|Mux6~3_combout\)))) # (!\alu_op[0]~input_o\ & (\ALU|data_in|D0_in|AddSub|adder_inst|adder_loop[24].full_adder|Cout~0_combout\ $ 
-- ((\ALU|data_in|D0_in|AddSub|adder_inst|adder_loop[25].full_adder|S~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000001100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU|data_in|D0_in|AddSub|adder_inst|adder_loop[24].full_adder|Cout~0_combout\,
	datab => \ALU|data_in|D0_in|AddSub|adder_inst|adder_loop[25].full_adder|S~0_combout\,
	datac => \ALU|data_OUT|MUX_Sel|Mux6~3_combout\,
	datad => \alu_op[0]~input_o\,
	combout => \ALU|data_OUT|MUX_Sel|Mux6~4_combout\);

-- Location: LCCOMB_X34_Y20_N14
\ALU|data_in|D5_in|Sel_SR|Data_out|MUX_Sel|Out[25]~77\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ALU|data_in|D5_in|Sel_SR|Data_out|MUX_Sel|Out[25]~77_combout\ = (\ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~54_combout\ & ((\ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~89_combout\) # 
-- ((\ALU|data_in|D5_in|Sel_SR|Data_out|MUX_Sel|Out[9]~34_combout\ & \ALU|data_in|D5_in|Sel_SR|Data_out|MUX_Sel|Out[17]~85_combout\)))) # (!\ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~54_combout\ & 
-- (\ALU|data_in|D5_in|Sel_SR|Data_out|MUX_Sel|Out[9]~34_combout\ & (\ALU|data_in|D5_in|Sel_SR|Data_out|MUX_Sel|Out[17]~85_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~54_combout\,
	datab => \ALU|data_in|D5_in|Sel_SR|Data_out|MUX_Sel|Out[9]~34_combout\,
	datac => \ALU|data_in|D5_in|Sel_SR|Data_out|MUX_Sel|Out[17]~85_combout\,
	datad => \ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~89_combout\,
	combout => \ALU|data_in|D5_in|Sel_SR|Data_out|MUX_Sel|Out[25]~77_combout\);

-- Location: LCCOMB_X35_Y20_N8
\ALU|data_OUT|MUX_Sel|Mux6~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ALU|data_OUT|MUX_Sel|Mux6~0_combout\ = (\alu_op[0]~input_o\ & (((\alu_op[1]~input_o\)))) # (!\alu_op[0]~input_o\ & ((\operand_b[25]~input_o\ & ((\alu_op[1]~input_o\) # (!\operand_a[25]~input_o\))) # (!\operand_b[25]~input_o\ & 
-- (\operand_a[25]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \operand_b[25]~input_o\,
	datab => \alu_op[0]~input_o\,
	datac => \operand_a[25]~input_o\,
	datad => \alu_op[1]~input_o\,
	combout => \ALU|data_OUT|MUX_Sel|Mux6~0_combout\);

-- Location: LCCOMB_X35_Y20_N26
\ALU|data_in|D7_in|AND_9|S[25]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ALU|data_in|D7_in|AND_9|S\(25) = (\operand_a[25]~input_o\ & \operand_b[25]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \operand_a[25]~input_o\,
	datad => \operand_b[25]~input_o\,
	combout => \ALU|data_in|D7_in|AND_9|S\(25));

-- Location: LCCOMB_X35_Y20_N4
\ALU|data_OUT|MUX_Sel|Mux6~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ALU|data_OUT|MUX_Sel|Mux6~1_combout\ = (\ALU|data_OUT|MUX_Sel|Mux6~0_combout\ & (((\ALU|data_in|D7_in|AND_9|S\(25)) # (!\alu_op[0]~input_o\)))) # (!\ALU|data_OUT|MUX_Sel|Mux6~0_combout\ & (\ALU|data_in|D5_in|Sel_SR|Data_out|MUX_Sel|Out[25]~77_combout\ & 
-- ((\alu_op[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU|data_in|D5_in|Sel_SR|Data_out|MUX_Sel|Out[25]~77_combout\,
	datab => \ALU|data_OUT|MUX_Sel|Mux6~0_combout\,
	datac => \ALU|data_in|D7_in|AND_9|S\(25),
	datad => \alu_op[0]~input_o\,
	combout => \ALU|data_OUT|MUX_Sel|Mux6~1_combout\);

-- Location: LCCOMB_X35_Y20_N12
\ALU|data_OUT|MUX_Sel|Mux6~5\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ALU|data_OUT|MUX_Sel|Mux6~5_combout\ = (\alu_op[2]~input_o\ & (((\ALU|data_OUT|MUX_Sel|Mux6~1_combout\)))) # (!\alu_op[2]~input_o\ & (\ALU|data_OUT|MUX_Sel|Mux6~4_combout\ & ((!\alu_op[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU|data_OUT|MUX_Sel|Mux6~4_combout\,
	datab => \ALU|data_OUT|MUX_Sel|Mux6~1_combout\,
	datac => \alu_op[2]~input_o\,
	datad => \alu_op[1]~input_o\,
	combout => \ALU|data_OUT|MUX_Sel|Mux6~5_combout\);

-- Location: LCCOMB_X35_Y20_N24
\ALU|data_OUT|MUX_Sel|Mux5~9\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ALU|data_OUT|MUX_Sel|Mux5~9_combout\ = \operand_b[26]~input_o\ $ (((\ALU|data_in|D0_in|AddSub|adder_inst|adder_loop[24].full_adder|Cout~0_combout\ & ((\operand_a[25]~input_o\) # (\operand_b[25]~input_o\))) # 
-- (!\ALU|data_in|D0_in|AddSub|adder_inst|adder_loop[24].full_adder|Cout~0_combout\ & (\operand_a[25]~input_o\ & \operand_b[25]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011011001101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU|data_in|D0_in|AddSub|adder_inst|adder_loop[24].full_adder|Cout~0_combout\,
	datab => \operand_b[26]~input_o\,
	datac => \operand_a[25]~input_o\,
	datad => \operand_b[25]~input_o\,
	combout => \ALU|data_OUT|MUX_Sel|Mux5~9_combout\);

-- Location: LCCOMB_X29_Y20_N12
\ALU|data_in|D1_in|SLL|ShiftLeft0~91\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ALU|data_in|D1_in|SLL|ShiftLeft0~91_combout\ = (\operand_b[1]~input_o\ & ((\operand_b[0]~input_o\ & (\operand_a[23]~input_o\)) # (!\operand_b[0]~input_o\ & ((\operand_a[24]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \operand_b[0]~input_o\,
	datab => \operand_b[1]~input_o\,
	datac => \operand_a[23]~input_o\,
	datad => \operand_a[24]~input_o\,
	combout => \ALU|data_in|D1_in|SLL|ShiftLeft0~91_combout\);

-- Location: LCCOMB_X35_Y20_N0
\ALU|data_in|D1_in|SLL|ShiftLeft0~92\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ALU|data_in|D1_in|SLL|ShiftLeft0~92_combout\ = (\operand_b[0]~input_o\ & ((\operand_a[25]~input_o\))) # (!\operand_b[0]~input_o\ & (\operand_a[26]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \operand_a[26]~input_o\,
	datac => \operand_a[25]~input_o\,
	datad => \operand_b[0]~input_o\,
	combout => \ALU|data_in|D1_in|SLL|ShiftLeft0~92_combout\);

-- Location: LCCOMB_X29_Y20_N6
\ALU|data_in|D1_in|SLL|ShiftLeft0~93\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ALU|data_in|D1_in|SLL|ShiftLeft0~93_combout\ = (\ALU|data_in|D1_in|SLL|ShiftLeft0~91_combout\) # ((!\operand_b[1]~input_o\ & \ALU|data_in|D1_in|SLL|ShiftLeft0~92_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU|data_in|D1_in|SLL|ShiftLeft0~91_combout\,
	datac => \operand_b[1]~input_o\,
	datad => \ALU|data_in|D1_in|SLL|ShiftLeft0~92_combout\,
	combout => \ALU|data_in|D1_in|SLL|ShiftLeft0~93_combout\);

-- Location: LCCOMB_X32_Y22_N28
\ALU|data_OUT|MUX_Sel|Mux5~6\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ALU|data_OUT|MUX_Sel|Mux5~6_combout\ = (\ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~87_combout\ & (((!\ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~89_combout\)))) # (!\ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~87_combout\ & 
-- ((\ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~89_combout\ & ((\ALU|data_in|D1_in|SLL|ShiftLeft0~93_combout\))) # (!\ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~89_combout\ & (\ALU|data_in|D1_in|SLL|ShiftLeft0~67_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~87_combout\,
	datab => \ALU|data_in|D1_in|SLL|ShiftLeft0~67_combout\,
	datac => \ALU|data_in|D1_in|SLL|ShiftLeft0~93_combout\,
	datad => \ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~89_combout\,
	combout => \ALU|data_OUT|MUX_Sel|Mux5~6_combout\);

-- Location: LCCOMB_X32_Y22_N6
\ALU|data_OUT|MUX_Sel|Mux5~7\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ALU|data_OUT|MUX_Sel|Mux5~7_combout\ = (\ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~87_combout\ & ((\ALU|data_OUT|MUX_Sel|Mux5~6_combout\ & ((\ALU|data_in|D1_in|SLL|ShiftLeft0~38_combout\))) # (!\ALU|data_OUT|MUX_Sel|Mux5~6_combout\ & 
-- (\ALU|data_in|D1_in|SLL|ShiftLeft0~80_combout\)))) # (!\ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~87_combout\ & (\ALU|data_OUT|MUX_Sel|Mux5~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110001100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~87_combout\,
	datab => \ALU|data_OUT|MUX_Sel|Mux5~6_combout\,
	datac => \ALU|data_in|D1_in|SLL|ShiftLeft0~80_combout\,
	datad => \ALU|data_in|D1_in|SLL|ShiftLeft0~38_combout\,
	combout => \ALU|data_OUT|MUX_Sel|Mux5~7_combout\);

-- Location: LCCOMB_X35_Y20_N28
\ALU|data_OUT|MUX_Sel|Mux5~8\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ALU|data_OUT|MUX_Sel|Mux5~8_combout\ = (\alu_op[0]~input_o\ & (((\ALU|data_OUT|MUX_Sel|Mux5~7_combout\)))) # (!\alu_op[0]~input_o\ & (\operand_a[26]~input_o\ $ ((\ALU|data_OUT|MUX_Sel|Mux5~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000001100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \operand_a[26]~input_o\,
	datab => \ALU|data_OUT|MUX_Sel|Mux5~9_combout\,
	datac => \ALU|data_OUT|MUX_Sel|Mux5~7_combout\,
	datad => \alu_op[0]~input_o\,
	combout => \ALU|data_OUT|MUX_Sel|Mux5~8_combout\);

-- Location: LCCOMB_X35_Y20_N14
\ALU|data_OUT|MUX_Sel|Mux5~5\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ALU|data_OUT|MUX_Sel|Mux5~5_combout\ = (\operand_b[26]~input_o\ & ((\operand_a[26]~input_o\ & (\alu_op[1]~input_o\)) # (!\operand_a[26]~input_o\ & ((!\alu_op[0]~input_o\))))) # (!\operand_b[26]~input_o\ & (((\operand_a[26]~input_o\ & 
-- !\alu_op[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000010111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu_op[1]~input_o\,
	datab => \operand_b[26]~input_o\,
	datac => \operand_a[26]~input_o\,
	datad => \alu_op[0]~input_o\,
	combout => \ALU|data_OUT|MUX_Sel|Mux5~5_combout\);

-- Location: LCCOMB_X30_Y18_N28
\ALU|data_OUT|MUX_Sel|Mux5~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ALU|data_OUT|MUX_Sel|Mux5~4_combout\ = (\ALU|data_in|D5_in|Sel_SR|Data_out|MUX_Sel|Out[22]~73_combout\ & ((\ALU|data_in|D5_in|Sel_SR|Data_out|MUX_Sel|Out[9]~34_combout\) # ((\ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~58_combout\ & 
-- \ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~89_combout\)))) # (!\ALU|data_in|D5_in|Sel_SR|Data_out|MUX_Sel|Out[22]~73_combout\ & (((\ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~58_combout\ & 
-- \ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~89_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU|data_in|D5_in|Sel_SR|Data_out|MUX_Sel|Out[22]~73_combout\,
	datab => \ALU|data_in|D5_in|Sel_SR|Data_out|MUX_Sel|Out[9]~34_combout\,
	datac => \ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~58_combout\,
	datad => \ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~89_combout\,
	combout => \ALU|data_OUT|MUX_Sel|Mux5~4_combout\);

-- Location: LCCOMB_X35_Y20_N2
\ALU|data_OUT|MUX_Sel|Mux5~10\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ALU|data_OUT|MUX_Sel|Mux5~10_combout\ = (\alu_op[1]~input_o\ & (\ALU|data_OUT|MUX_Sel|Mux5~5_combout\)) # (!\alu_op[1]~input_o\ & ((\ALU|data_OUT|MUX_Sel|Mux5~5_combout\ & ((!\alu_op[0]~input_o\))) # (!\ALU|data_OUT|MUX_Sel|Mux5~5_combout\ & 
-- (\ALU|data_OUT|MUX_Sel|Mux5~4_combout\ & \alu_op[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu_op[1]~input_o\,
	datab => \ALU|data_OUT|MUX_Sel|Mux5~5_combout\,
	datac => \ALU|data_OUT|MUX_Sel|Mux5~4_combout\,
	datad => \alu_op[0]~input_o\,
	combout => \ALU|data_OUT|MUX_Sel|Mux5~10_combout\);

-- Location: LCCOMB_X35_Y20_N20
\ALU|data_OUT|MUX_Sel|Mux5~11\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ALU|data_OUT|MUX_Sel|Mux5~11_combout\ = (\alu_op[2]~input_o\ & (((\ALU|data_OUT|MUX_Sel|Mux5~10_combout\)))) # (!\alu_op[2]~input_o\ & (!\alu_op[1]~input_o\ & (\ALU|data_OUT|MUX_Sel|Mux5~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu_op[1]~input_o\,
	datab => \ALU|data_OUT|MUX_Sel|Mux5~8_combout\,
	datac => \alu_op[2]~input_o\,
	datad => \ALU|data_OUT|MUX_Sel|Mux5~10_combout\,
	combout => \ALU|data_OUT|MUX_Sel|Mux5~11_combout\);

-- Location: LCCOMB_X37_Y19_N12
\ALU|data_OUT|MUX_Sel|Mux4~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ALU|data_OUT|MUX_Sel|Mux4~4_combout\ = (\operand_a[27]~input_o\ & (!\operand_b[27]~input_o\ & (\alu_op[1]~input_o\ $ (!\alu_op[0]~input_o\)))) # (!\operand_a[27]~input_o\ & (\alu_op[1]~input_o\ $ (((\operand_b[27]~input_o\ & !\alu_op[0]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100110000010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \operand_a[27]~input_o\,
	datab => \alu_op[1]~input_o\,
	datac => \operand_b[27]~input_o\,
	datad => \alu_op[0]~input_o\,
	combout => \ALU|data_OUT|MUX_Sel|Mux4~4_combout\);

-- Location: LCCOMB_X35_Y20_N18
\ALU|data_in|D0_in|AddSub|adder_inst|adder_loop[25].full_adder|Cout~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ALU|data_in|D0_in|AddSub|adder_inst|adder_loop[25].full_adder|Cout~0_combout\ = (\ALU|data_in|D0_in|AddSub|adder_inst|adder_loop[24].full_adder|Cout~0_combout\ & ((\operand_a[25]~input_o\) # (\operand_b[25]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU|data_in|D0_in|AddSub|adder_inst|adder_loop[24].full_adder|Cout~0_combout\,
	datac => \operand_a[25]~input_o\,
	datad => \operand_b[25]~input_o\,
	combout => \ALU|data_in|D0_in|AddSub|adder_inst|adder_loop[25].full_adder|Cout~0_combout\);

-- Location: LCCOMB_X35_Y20_N22
\ALU|data_in|D0_in|AddSub|adder_inst|adder_loop[26].full_adder|Cout~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ALU|data_in|D0_in|AddSub|adder_inst|adder_loop[26].full_adder|Cout~0_combout\ = (\operand_a[26]~input_o\ & ((\ALU|data_in|D0_in|AddSub|adder_inst|adder_loop[25].full_adder|Cout~0_combout\) # ((\operand_b[26]~input_o\) # 
-- (\ALU|data_in|D7_in|AND_9|S\(25))))) # (!\operand_a[26]~input_o\ & (\operand_b[26]~input_o\ & ((\ALU|data_in|D0_in|AddSub|adder_inst|adder_loop[25].full_adder|Cout~0_combout\) # (\ALU|data_in|D7_in|AND_9|S\(25)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \operand_a[26]~input_o\,
	datab => \ALU|data_in|D0_in|AddSub|adder_inst|adder_loop[25].full_adder|Cout~0_combout\,
	datac => \operand_b[26]~input_o\,
	datad => \ALU|data_in|D7_in|AND_9|S\(25),
	combout => \ALU|data_in|D0_in|AddSub|adder_inst|adder_loop[26].full_adder|Cout~0_combout\);

-- Location: LCCOMB_X37_Y19_N2
\ALU|data_OUT|MUX_Sel|Mux4~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ALU|data_OUT|MUX_Sel|Mux4~3_combout\ = (\alu_op[2]~input_o\ & ((\alu_op[1]~input_o\))) # (!\alu_op[2]~input_o\ & (\ALU|data_in|D0_in|AddSub|adder_inst|adder_loop[26].full_adder|Cout~0_combout\ & !\alu_op[1]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU|data_in|D0_in|AddSub|adder_inst|adder_loop[26].full_adder|Cout~0_combout\,
	datac => \alu_op[2]~input_o\,
	datad => \alu_op[1]~input_o\,
	combout => \ALU|data_OUT|MUX_Sel|Mux4~3_combout\);

-- Location: LCCOMB_X37_Y19_N22
\ALU|data_OUT|MUX_Sel|Mux4~5\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ALU|data_OUT|MUX_Sel|Mux4~5_combout\ = (\operand_a[27]~input_o\ & (\alu_op[0]~input_o\ & ((!\operand_b[27]~input_o\) # (!\alu_op[1]~input_o\)))) # (!\operand_a[27]~input_o\ & ((\alu_op[0]~input_o\) # ((\alu_op[1]~input_o\ & !\operand_b[27]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111100000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \operand_a[27]~input_o\,
	datab => \alu_op[1]~input_o\,
	datac => \operand_b[27]~input_o\,
	datad => \alu_op[0]~input_o\,
	combout => \ALU|data_OUT|MUX_Sel|Mux4~5_combout\);

-- Location: LCCOMB_X32_Y17_N6
\ALU|data_in|D1_in|SLL|ShiftLeft0~94\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ALU|data_in|D1_in|SLL|ShiftLeft0~94_combout\ = (\operand_b[1]~input_o\ & ((\operand_b[0]~input_o\ & (\operand_a[24]~input_o\)) # (!\operand_b[0]~input_o\ & ((\operand_a[25]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \operand_a[24]~input_o\,
	datab => \operand_b[1]~input_o\,
	datac => \operand_b[0]~input_o\,
	datad => \operand_a[25]~input_o\,
	combout => \ALU|data_in|D1_in|SLL|ShiftLeft0~94_combout\);

-- Location: LCCOMB_X32_Y17_N16
\ALU|data_in|D1_in|SLL|ShiftLeft0~95\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ALU|data_in|D1_in|SLL|ShiftLeft0~95_combout\ = (\operand_b[0]~input_o\ & (\operand_a[26]~input_o\)) # (!\operand_b[0]~input_o\ & ((\operand_a[27]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \operand_a[26]~input_o\,
	datac => \operand_b[0]~input_o\,
	datad => \operand_a[27]~input_o\,
	combout => \ALU|data_in|D1_in|SLL|ShiftLeft0~95_combout\);

-- Location: LCCOMB_X32_Y17_N2
\ALU|data_in|D1_in|SLL|ShiftLeft0~96\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ALU|data_in|D1_in|SLL|ShiftLeft0~96_combout\ = (\ALU|data_in|D1_in|SLL|ShiftLeft0~94_combout\) # ((!\operand_b[1]~input_o\ & \ALU|data_in|D1_in|SLL|ShiftLeft0~95_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU|data_in|D1_in|SLL|ShiftLeft0~94_combout\,
	datac => \operand_b[1]~input_o\,
	datad => \ALU|data_in|D1_in|SLL|ShiftLeft0~95_combout\,
	combout => \ALU|data_in|D1_in|SLL|ShiftLeft0~96_combout\);

-- Location: LCCOMB_X31_Y21_N12
\ALU|data_OUT|MUX_Sel|Mux4~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ALU|data_OUT|MUX_Sel|Mux4~0_combout\ = (\ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~89_combout\ & (\ALU|data_in|D1_in|SLL|ShiftLeft0~96_combout\ & ((!\ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~87_combout\)))) # 
-- (!\ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~89_combout\ & (((\ALU|data_in|D1_in|SLL|ShiftLeft0~70_combout\) # (\ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~87_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111110101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU|data_in|D1_in|SLL|ShiftLeft0~96_combout\,
	datab => \ALU|data_in|D1_in|SLL|ShiftLeft0~70_combout\,
	datac => \ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~89_combout\,
	datad => \ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~87_combout\,
	combout => \ALU|data_OUT|MUX_Sel|Mux4~0_combout\);

-- Location: LCCOMB_X31_Y21_N30
\ALU|data_OUT|MUX_Sel|Mux4~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ALU|data_OUT|MUX_Sel|Mux4~1_combout\ = (\ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~87_combout\ & ((\ALU|data_OUT|MUX_Sel|Mux4~0_combout\ & ((\ALU|data_in|D1_in|SLL|ShiftLeft0~42_combout\))) # (!\ALU|data_OUT|MUX_Sel|Mux4~0_combout\ & 
-- (\ALU|data_in|D1_in|SLL|ShiftLeft0~84_combout\)))) # (!\ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~87_combout\ & (((\ALU|data_OUT|MUX_Sel|Mux4~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~87_combout\,
	datab => \ALU|data_in|D1_in|SLL|ShiftLeft0~84_combout\,
	datac => \ALU|data_in|D1_in|SLL|ShiftLeft0~42_combout\,
	datad => \ALU|data_OUT|MUX_Sel|Mux4~0_combout\,
	combout => \ALU|data_OUT|MUX_Sel|Mux4~1_combout\);

-- Location: LCCOMB_X31_Y18_N30
\ALU|data_in|D5_in|Sel_SR|Data_out|MUX_Sel|Out[27]~78\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ALU|data_in|D5_in|Sel_SR|Data_out|MUX_Sel|Out[27]~78_combout\ = (\ALU|data_in|D5_in|Sel_SR|Data_out|MUX_Sel|Out[9]~34_combout\ & ((\ALU|data_in|D5_in|Sel_SR|Data_out|MUX_Sel|Out[23]~86_combout\) # 
-- ((\ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~77_combout\ & \ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~89_combout\)))) # (!\ALU|data_in|D5_in|Sel_SR|Data_out|MUX_Sel|Out[9]~34_combout\ & 
-- (\ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~77_combout\ & ((\ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~89_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU|data_in|D5_in|Sel_SR|Data_out|MUX_Sel|Out[9]~34_combout\,
	datab => \ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~77_combout\,
	datac => \ALU|data_in|D5_in|Sel_SR|Data_out|MUX_Sel|Out[23]~86_combout\,
	datad => \ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~89_combout\,
	combout => \ALU|data_in|D5_in|Sel_SR|Data_out|MUX_Sel|Out[27]~78_combout\);

-- Location: LCCOMB_X37_Y19_N0
\ALU|data_OUT|MUX_Sel|Mux4~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ALU|data_OUT|MUX_Sel|Mux4~2_combout\ = (\alu_op[2]~input_o\ & ((\ALU|data_in|D5_in|Sel_SR|Data_out|MUX_Sel|Out[27]~78_combout\))) # (!\alu_op[2]~input_o\ & (\ALU|data_OUT|MUX_Sel|Mux4~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU|data_OUT|MUX_Sel|Mux4~1_combout\,
	datab => \ALU|data_in|D5_in|Sel_SR|Data_out|MUX_Sel|Out[27]~78_combout\,
	datac => \alu_op[2]~input_o\,
	combout => \ALU|data_OUT|MUX_Sel|Mux4~2_combout\);

-- Location: LCCOMB_X37_Y19_N8
\ALU|data_OUT|MUX_Sel|Mux4~6\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ALU|data_OUT|MUX_Sel|Mux4~6_combout\ = (\ALU|data_OUT|MUX_Sel|Mux4~5_combout\ & (!\ALU|data_OUT|MUX_Sel|Mux4~4_combout\ & ((\ALU|data_OUT|MUX_Sel|Mux4~2_combout\)))) # (!\ALU|data_OUT|MUX_Sel|Mux4~5_combout\ & (\ALU|data_OUT|MUX_Sel|Mux4~4_combout\ $ 
-- ((\ALU|data_OUT|MUX_Sel|Mux4~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101011000000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU|data_OUT|MUX_Sel|Mux4~4_combout\,
	datab => \ALU|data_OUT|MUX_Sel|Mux4~3_combout\,
	datac => \ALU|data_OUT|MUX_Sel|Mux4~5_combout\,
	datad => \ALU|data_OUT|MUX_Sel|Mux4~2_combout\,
	combout => \ALU|data_OUT|MUX_Sel|Mux4~6_combout\);

-- Location: LCCOMB_X37_Y19_N26
\ALU|data_in|D4_in|Xor1|S[28]~7\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ALU|data_in|D4_in|Xor1|S[28]~7_combout\ = \operand_b[28]~input_o\ $ (\operand_a[28]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \operand_b[28]~input_o\,
	datac => \operand_a[28]~input_o\,
	combout => \ALU|data_in|D4_in|Xor1|S[28]~7_combout\);

-- Location: LCCOMB_X34_Y20_N24
\ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~108\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~108_combout\ = (!\operand_b[2]~input_o\ & (!\operand_b[4]~input_o\ & !\operand_b[3]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \operand_b[2]~input_o\,
	datab => \operand_b[4]~input_o\,
	datad => \operand_b[3]~input_o\,
	combout => \ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~108_combout\);

-- Location: LCCOMB_X34_Y20_N26
\ALU|data_in|D5_in|Sel_SR|Data_out|MUX_Sel|Out[28]~79\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ALU|data_in|D5_in|Sel_SR|Data_out|MUX_Sel|Out[28]~79_combout\ = (\ALU|data_in|D5_in|Sel_SR|Data_out|MUX_Sel|Out[16]~64_combout\ & ((\ALU|data_in|D5_in|Sel_SR|Data_out|MUX_Sel|Out[13]~52_combout\) # 
-- ((\ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~108_combout\ & \ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~29_combout\)))) # (!\ALU|data_in|D5_in|Sel_SR|Data_out|MUX_Sel|Out[16]~64_combout\ & 
-- (\ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~108_combout\ & (\ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~29_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU|data_in|D5_in|Sel_SR|Data_out|MUX_Sel|Out[16]~64_combout\,
	datab => \ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~108_combout\,
	datac => \ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~29_combout\,
	datad => \ALU|data_in|D5_in|Sel_SR|Data_out|MUX_Sel|Out[13]~52_combout\,
	combout => \ALU|data_in|D5_in|Sel_SR|Data_out|MUX_Sel|Out[28]~79_combout\);

-- Location: LCCOMB_X37_Y19_N6
\ALU|data_OUT|MUX_Sel|Mux3~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ALU|data_OUT|MUX_Sel|Mux3~2_combout\ = (\alu_op[1]~input_o\ & (((\alu_op[0]~input_o\)))) # (!\alu_op[1]~input_o\ & ((\alu_op[0]~input_o\ & ((\ALU|data_in|D5_in|Sel_SR|Data_out|MUX_Sel|Out[28]~79_combout\))) # (!\alu_op[0]~input_o\ & 
-- (\ALU|data_in|D4_in|Xor1|S[28]~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU|data_in|D4_in|Xor1|S[28]~7_combout\,
	datab => \alu_op[1]~input_o\,
	datac => \ALU|data_in|D5_in|Sel_SR|Data_out|MUX_Sel|Out[28]~79_combout\,
	datad => \alu_op[0]~input_o\,
	combout => \ALU|data_OUT|MUX_Sel|Mux3~2_combout\);

-- Location: LCCOMB_X37_Y19_N24
\ALU|data_OUT|MUX_Sel|Mux3~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ALU|data_OUT|MUX_Sel|Mux3~3_combout\ = (\ALU|data_OUT|MUX_Sel|Mux3~2_combout\ & (((\operand_b[28]~input_o\ & \operand_a[28]~input_o\)) # (!\alu_op[1]~input_o\))) # (!\ALU|data_OUT|MUX_Sel|Mux3~2_combout\ & (\alu_op[1]~input_o\ & 
-- ((\operand_b[28]~input_o\) # (\operand_a[28]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU|data_OUT|MUX_Sel|Mux3~2_combout\,
	datab => \operand_b[28]~input_o\,
	datac => \operand_a[28]~input_o\,
	datad => \alu_op[1]~input_o\,
	combout => \ALU|data_OUT|MUX_Sel|Mux3~3_combout\);

-- Location: LCCOMB_X32_Y21_N28
\ALU|data_OUT|MUX_Sel|Mux2~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ALU|data_OUT|MUX_Sel|Mux2~2_combout\ = (\alu_op[2]~input_o\) # ((\operand_b[4]~input_o\ & (!\alu_op[1]~input_o\ & \alu_op[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu_op[2]~input_o\,
	datab => \operand_b[4]~input_o\,
	datac => \alu_op[1]~input_o\,
	datad => \alu_op[0]~input_o\,
	combout => \ALU|data_OUT|MUX_Sel|Mux2~2_combout\);

-- Location: LCCOMB_X32_Y21_N26
\ALU|data_OUT|MUX_Sel|Mux2~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ALU|data_OUT|MUX_Sel|Mux2~1_combout\ = (\alu_op[2]~input_o\) # ((!\alu_op[1]~input_o\ & !\alu_op[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu_op[2]~input_o\,
	datac => \alu_op[1]~input_o\,
	datad => \alu_op[0]~input_o\,
	combout => \ALU|data_OUT|MUX_Sel|Mux2~1_combout\);

-- Location: LCCOMB_X37_Y19_N28
\ALU|data_in|D0_in|AddSub|adder_inst|adder_loop[28].full_adder|S\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ALU|data_in|D0_in|AddSub|adder_inst|adder_loop[28].full_adder|S~combout\ = \ALU|data_in|D4_in|Xor1|S[28]~7_combout\ $ (((\operand_b[27]~input_o\ & ((\ALU|data_in|D0_in|AddSub|adder_inst|adder_loop[26].full_adder|Cout~0_combout\) # 
-- (\operand_a[27]~input_o\))) # (!\operand_b[27]~input_o\ & (\ALU|data_in|D0_in|AddSub|adder_inst|adder_loop[26].full_adder|Cout~0_combout\ & \operand_a[27]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101011001101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU|data_in|D4_in|Xor1|S[28]~7_combout\,
	datab => \operand_b[27]~input_o\,
	datac => \ALU|data_in|D0_in|AddSub|adder_inst|adder_loop[26].full_adder|Cout~0_combout\,
	datad => \operand_a[27]~input_o\,
	combout => \ALU|data_in|D0_in|AddSub|adder_inst|adder_loop[28].full_adder|S~combout\);

-- Location: LCCOMB_X32_Y21_N30
\ALU|data_OUT|MUX_Sel|Mux3~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ALU|data_OUT|MUX_Sel|Mux3~4_combout\ = (\ALU|data_OUT|MUX_Sel|Mux2~2_combout\ & ((\ALU|data_OUT|MUX_Sel|Mux3~3_combout\) # ((!\ALU|data_OUT|MUX_Sel|Mux2~1_combout\)))) # (!\ALU|data_OUT|MUX_Sel|Mux2~2_combout\ & (((\ALU|data_OUT|MUX_Sel|Mux2~1_combout\ & 
-- \ALU|data_in|D0_in|AddSub|adder_inst|adder_loop[28].full_adder|S~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU|data_OUT|MUX_Sel|Mux3~3_combout\,
	datab => \ALU|data_OUT|MUX_Sel|Mux2~2_combout\,
	datac => \ALU|data_OUT|MUX_Sel|Mux2~1_combout\,
	datad => \ALU|data_in|D0_in|AddSub|adder_inst|adder_loop[28].full_adder|S~combout\,
	combout => \ALU|data_OUT|MUX_Sel|Mux3~4_combout\);

-- Location: LCCOMB_X32_Y17_N20
\ALU|data_in|D1_in|SLL|ShiftLeft0~97\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ALU|data_in|D1_in|SLL|ShiftLeft0~97_combout\ = (\operand_b[0]~input_o\ & ((\operand_a[27]~input_o\))) # (!\operand_b[0]~input_o\ & (\operand_a[28]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \operand_b[0]~input_o\,
	datac => \operand_a[28]~input_o\,
	datad => \operand_a[27]~input_o\,
	combout => \ALU|data_in|D1_in|SLL|ShiftLeft0~97_combout\);

-- Location: LCCOMB_X32_Y20_N22
\ALU|data_OUT|MUX_Sel|Mux3~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ALU|data_OUT|MUX_Sel|Mux3~0_combout\ = (\ALU|data_in|D1_in|SLL|ShiftLeft0~7_combout\ & (((\ALU|data_in|D1_in|SLL|ShiftLeft0~97_combout\ & !\ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~64_combout\)))) # 
-- (!\ALU|data_in|D1_in|SLL|ShiftLeft0~7_combout\ & ((\ALU|data_in|D1_in|SLL|ShiftLeft0~88_combout\) # ((\ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~64_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU|data_in|D1_in|SLL|ShiftLeft0~88_combout\,
	datab => \ALU|data_in|D1_in|SLL|ShiftLeft0~97_combout\,
	datac => \ALU|data_in|D1_in|SLL|ShiftLeft0~7_combout\,
	datad => \ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~64_combout\,
	combout => \ALU|data_OUT|MUX_Sel|Mux3~0_combout\);

-- Location: LCCOMB_X32_Y20_N0
\ALU|data_OUT|MUX_Sel|Mux3~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ALU|data_OUT|MUX_Sel|Mux3~1_combout\ = (\ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~64_combout\ & ((\ALU|data_OUT|MUX_Sel|Mux3~0_combout\ & (\ALU|data_in|D1_in|SLL|ShiftLeft0~73_combout\)) # (!\ALU|data_OUT|MUX_Sel|Mux3~0_combout\ & 
-- ((\ALU|data_in|D1_in|SLL|ShiftLeft0~92_combout\))))) # (!\ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~64_combout\ & (((\ALU|data_OUT|MUX_Sel|Mux3~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU|data_in|D1_in|SLL|ShiftLeft0~73_combout\,
	datab => \ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~64_combout\,
	datac => \ALU|data_in|D1_in|SLL|ShiftLeft0~92_combout\,
	datad => \ALU|data_OUT|MUX_Sel|Mux3~0_combout\,
	combout => \ALU|data_OUT|MUX_Sel|Mux3~1_combout\);

-- Location: LCCOMB_X32_Y21_N0
\ALU|data_OUT|MUX_Sel|Mux2~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ALU|data_OUT|MUX_Sel|Mux2~0_combout\ = (!\alu_op[2]~input_o\ & (!\alu_op[1]~input_o\ & \alu_op[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu_op[2]~input_o\,
	datac => \alu_op[1]~input_o\,
	datad => \alu_op[0]~input_o\,
	combout => \ALU|data_OUT|MUX_Sel|Mux2~0_combout\);

-- Location: LCCOMB_X32_Y21_N24
\ALU|data_OUT|MUX_Sel|Mux3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ALU|data_OUT|MUX_Sel|Mux3~combout\ = (\ALU|data_OUT|MUX_Sel|Mux3~4_combout\ & (((\ALU|data_in|D1_in|SLL|ShiftLeft0~46_combout\) # (!\ALU|data_OUT|MUX_Sel|Mux2~0_combout\)))) # (!\ALU|data_OUT|MUX_Sel|Mux3~4_combout\ & 
-- (\ALU|data_OUT|MUX_Sel|Mux3~1_combout\ & ((\ALU|data_OUT|MUX_Sel|Mux2~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU|data_OUT|MUX_Sel|Mux3~4_combout\,
	datab => \ALU|data_OUT|MUX_Sel|Mux3~1_combout\,
	datac => \ALU|data_in|D1_in|SLL|ShiftLeft0~46_combout\,
	datad => \ALU|data_OUT|MUX_Sel|Mux2~0_combout\,
	combout => \ALU|data_OUT|MUX_Sel|Mux3~combout\);

-- Location: LCCOMB_X34_Y20_N12
\ALU|data_in|D5_in|Sel_SR|Data_out|MUX_Sel|Out[29]~80\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ALU|data_in|D5_in|Sel_SR|Data_out|MUX_Sel|Out[29]~80_combout\ = (\ALU|data_in|D5_in|Sel_SR|Data_out|MUX_Sel|Out[17]~85_combout\ & ((\ALU|data_in|D5_in|Sel_SR|Data_out|MUX_Sel|Out[13]~52_combout\) # 
-- ((\ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~108_combout\ & \ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~51_combout\)))) # (!\ALU|data_in|D5_in|Sel_SR|Data_out|MUX_Sel|Out[17]~85_combout\ & 
-- (\ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~108_combout\ & (\ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~51_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU|data_in|D5_in|Sel_SR|Data_out|MUX_Sel|Out[17]~85_combout\,
	datab => \ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~108_combout\,
	datac => \ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~51_combout\,
	datad => \ALU|data_in|D5_in|Sel_SR|Data_out|MUX_Sel|Out[13]~52_combout\,
	combout => \ALU|data_in|D5_in|Sel_SR|Data_out|MUX_Sel|Out[29]~80_combout\);

-- Location: LCCOMB_X34_Y20_N30
\ALU|data_OUT|MUX_Sel|Mux2~6\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ALU|data_OUT|MUX_Sel|Mux2~6_combout\ = (\alu_op[1]~input_o\ & (((\operand_b[29]~input_o\)))) # (!\alu_op[1]~input_o\ & ((\alu_op[0]~input_o\ & (\ALU|data_in|D5_in|Sel_SR|Data_out|MUX_Sel|Out[29]~80_combout\)) # (!\alu_op[0]~input_o\ & 
-- ((\operand_b[29]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU|data_in|D5_in|Sel_SR|Data_out|MUX_Sel|Out[29]~80_combout\,
	datab => \operand_b[29]~input_o\,
	datac => \alu_op[1]~input_o\,
	datad => \alu_op[0]~input_o\,
	combout => \ALU|data_OUT|MUX_Sel|Mux2~6_combout\);

-- Location: LCCOMB_X32_Y21_N22
\ALU|data_OUT|MUX_Sel|Mux2~7\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ALU|data_OUT|MUX_Sel|Mux2~7_combout\ = (\operand_a[29]~input_o\ & ((\ALU|data_OUT|MUX_Sel|Mux2~6_combout\ & ((\alu_op[1]~input_o\) # (\alu_op[0]~input_o\))) # (!\ALU|data_OUT|MUX_Sel|Mux2~6_combout\ & ((!\alu_op[0]~input_o\))))) # 
-- (!\operand_a[29]~input_o\ & (\ALU|data_OUT|MUX_Sel|Mux2~6_combout\ & ((!\alu_op[0]~input_o\) # (!\alu_op[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110011100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \operand_a[29]~input_o\,
	datab => \ALU|data_OUT|MUX_Sel|Mux2~6_combout\,
	datac => \alu_op[1]~input_o\,
	datad => \alu_op[0]~input_o\,
	combout => \ALU|data_OUT|MUX_Sel|Mux2~7_combout\);

-- Location: LCCOMB_X37_Y19_N10
\ALU|data_in|D0_in|AddSub|adder_inst|adder_loop[27].full_adder|Cout~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ALU|data_in|D0_in|AddSub|adder_inst|adder_loop[27].full_adder|Cout~0_combout\ = (\operand_a[27]~input_o\ & ((\operand_b[27]~input_o\) # (\ALU|data_in|D0_in|AddSub|adder_inst|adder_loop[26].full_adder|Cout~0_combout\))) # (!\operand_a[27]~input_o\ & 
-- (\operand_b[27]~input_o\ & \ALU|data_in|D0_in|AddSub|adder_inst|adder_loop[26].full_adder|Cout~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \operand_a[27]~input_o\,
	datab => \operand_b[27]~input_o\,
	datac => \ALU|data_in|D0_in|AddSub|adder_inst|adder_loop[26].full_adder|Cout~0_combout\,
	combout => \ALU|data_in|D0_in|AddSub|adder_inst|adder_loop[27].full_adder|Cout~0_combout\);

-- Location: LCCOMB_X37_Y19_N20
\ALU|data_in|D0_in|AddSub|adder_inst|adder_loop[28].full_adder|Cout~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ALU|data_in|D0_in|AddSub|adder_inst|adder_loop[28].full_adder|Cout~0_combout\ = (\ALU|data_in|D0_in|AddSub|adder_inst|adder_loop[27].full_adder|Cout~0_combout\ & ((\operand_b[28]~input_o\) # (\operand_a[28]~input_o\))) # 
-- (!\ALU|data_in|D0_in|AddSub|adder_inst|adder_loop[27].full_adder|Cout~0_combout\ & (\operand_b[28]~input_o\ & \operand_a[28]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU|data_in|D0_in|AddSub|adder_inst|adder_loop[27].full_adder|Cout~0_combout\,
	datab => \operand_b[28]~input_o\,
	datac => \operand_a[28]~input_o\,
	combout => \ALU|data_in|D0_in|AddSub|adder_inst|adder_loop[28].full_adder|Cout~0_combout\);

-- Location: LCCOMB_X32_Y21_N6
\ALU|data_in|D0_in|AddSub|adder_inst|adder_loop[29].full_adder|S\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ALU|data_in|D0_in|AddSub|adder_inst|adder_loop[29].full_adder|S~combout\ = \ALU|data_in|D0_in|AddSub|adder_inst|adder_loop[28].full_adder|Cout~0_combout\ $ (\operand_a[29]~input_o\ $ (\operand_b[29]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ALU|data_in|D0_in|AddSub|adder_inst|adder_loop[28].full_adder|Cout~0_combout\,
	datac => \operand_a[29]~input_o\,
	datad => \operand_b[29]~input_o\,
	combout => \ALU|data_in|D0_in|AddSub|adder_inst|adder_loop[29].full_adder|S~combout\);

-- Location: LCCOMB_X32_Y21_N8
\ALU|data_OUT|MUX_Sel|Mux2~5\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ALU|data_OUT|MUX_Sel|Mux2~5_combout\ = (\ALU|data_OUT|MUX_Sel|Mux2~2_combout\ & ((\ALU|data_OUT|MUX_Sel|Mux2~7_combout\) # ((!\ALU|data_OUT|MUX_Sel|Mux2~1_combout\)))) # (!\ALU|data_OUT|MUX_Sel|Mux2~2_combout\ & (((\ALU|data_OUT|MUX_Sel|Mux2~1_combout\ & 
-- \ALU|data_in|D0_in|AddSub|adder_inst|adder_loop[29].full_adder|S~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU|data_OUT|MUX_Sel|Mux2~7_combout\,
	datab => \ALU|data_OUT|MUX_Sel|Mux2~2_combout\,
	datac => \ALU|data_OUT|MUX_Sel|Mux2~1_combout\,
	datad => \ALU|data_in|D0_in|AddSub|adder_inst|adder_loop[29].full_adder|S~combout\,
	combout => \ALU|data_OUT|MUX_Sel|Mux2~5_combout\);

-- Location: LCCOMB_X32_Y17_N30
\ALU|data_in|D1_in|SLL|ShiftLeft0~98\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ALU|data_in|D1_in|SLL|ShiftLeft0~98_combout\ = (\operand_b[0]~input_o\ & (\operand_a[28]~input_o\)) # (!\operand_b[0]~input_o\ & ((\operand_a[29]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \operand_b[0]~input_o\,
	datab => \operand_a[28]~input_o\,
	datad => \operand_a[29]~input_o\,
	combout => \ALU|data_in|D1_in|SLL|ShiftLeft0~98_combout\);

-- Location: LCCOMB_X32_Y21_N10
\ALU|data_OUT|MUX_Sel|Mux2~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ALU|data_OUT|MUX_Sel|Mux2~3_combout\ = (\ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~64_combout\ & (((!\ALU|data_in|D1_in|SLL|ShiftLeft0~7_combout\)))) # (!\ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~64_combout\ & 
-- ((\ALU|data_in|D1_in|SLL|ShiftLeft0~7_combout\ & (\ALU|data_in|D1_in|SLL|ShiftLeft0~98_combout\)) # (!\ALU|data_in|D1_in|SLL|ShiftLeft0~7_combout\ & ((\ALU|data_in|D1_in|SLL|ShiftLeft0~90_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~64_combout\,
	datab => \ALU|data_in|D1_in|SLL|ShiftLeft0~98_combout\,
	datac => \ALU|data_in|D1_in|SLL|ShiftLeft0~90_combout\,
	datad => \ALU|data_in|D1_in|SLL|ShiftLeft0~7_combout\,
	combout => \ALU|data_OUT|MUX_Sel|Mux2~3_combout\);

-- Location: LCCOMB_X32_Y21_N4
\ALU|data_OUT|MUX_Sel|Mux2~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ALU|data_OUT|MUX_Sel|Mux2~4_combout\ = (\ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~64_combout\ & ((\ALU|data_OUT|MUX_Sel|Mux2~3_combout\ & (\ALU|data_in|D1_in|SLL|ShiftLeft0~77_combout\)) # (!\ALU|data_OUT|MUX_Sel|Mux2~3_combout\ & 
-- ((\ALU|data_in|D1_in|SLL|ShiftLeft0~95_combout\))))) # (!\ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~64_combout\ & (((\ALU|data_OUT|MUX_Sel|Mux2~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~64_combout\,
	datab => \ALU|data_in|D1_in|SLL|ShiftLeft0~77_combout\,
	datac => \ALU|data_in|D1_in|SLL|ShiftLeft0~95_combout\,
	datad => \ALU|data_OUT|MUX_Sel|Mux2~3_combout\,
	combout => \ALU|data_OUT|MUX_Sel|Mux2~4_combout\);

-- Location: LCCOMB_X32_Y21_N18
\ALU|data_OUT|MUX_Sel|Mux2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ALU|data_OUT|MUX_Sel|Mux2~combout\ = (\ALU|data_OUT|MUX_Sel|Mux2~5_combout\ & ((\ALU|data_in|D1_in|SLL|ShiftLeft0~50_combout\) # ((!\ALU|data_OUT|MUX_Sel|Mux2~0_combout\)))) # (!\ALU|data_OUT|MUX_Sel|Mux2~5_combout\ & 
-- (((\ALU|data_OUT|MUX_Sel|Mux2~4_combout\ & \ALU|data_OUT|MUX_Sel|Mux2~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU|data_in|D1_in|SLL|ShiftLeft0~50_combout\,
	datab => \ALU|data_OUT|MUX_Sel|Mux2~5_combout\,
	datac => \ALU|data_OUT|MUX_Sel|Mux2~4_combout\,
	datad => \ALU|data_OUT|MUX_Sel|Mux2~0_combout\,
	combout => \ALU|data_OUT|MUX_Sel|Mux2~combout\);

-- Location: LCCOMB_X32_Y22_N10
\ALU|data_in|D1_in|SLL|ShiftLeft0~99\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ALU|data_in|D1_in|SLL|ShiftLeft0~99_combout\ = (\operand_b[3]~input_o\ & ((\ALU|data_in|D1_in|SLL|ShiftLeft0~22_combout\))) # (!\operand_b[3]~input_o\ & (\ALU|data_in|D1_in|SLL|ShiftLeft0~53_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU|data_in|D1_in|SLL|ShiftLeft0~53_combout\,
	datab => \ALU|data_in|D1_in|SLL|ShiftLeft0~22_combout\,
	datac => \operand_b[3]~input_o\,
	combout => \ALU|data_in|D1_in|SLL|ShiftLeft0~99_combout\);

-- Location: LCCOMB_X32_Y18_N10
\ALU|data_OUT|MUX_Sel|Mux1~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ALU|data_OUT|MUX_Sel|Mux1~2_combout\ = (\ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~12_combout\ & (!\ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~14_combout\)) # (!\ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~12_combout\ & 
-- ((\ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~14_combout\ & ((\operand_a[30]~input_o\))) # (!\ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~14_combout\ & (\ALU|data_in|D1_in|SLL|ShiftLeft0~97_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011000110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~12_combout\,
	datab => \ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~14_combout\,
	datac => \ALU|data_in|D1_in|SLL|ShiftLeft0~97_combout\,
	datad => \operand_a[30]~input_o\,
	combout => \ALU|data_OUT|MUX_Sel|Mux1~2_combout\);

-- Location: LCCOMB_X32_Y18_N20
\ALU|data_OUT|MUX_Sel|Mux1~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ALU|data_OUT|MUX_Sel|Mux1~3_combout\ = (\ALU|data_OUT|MUX_Sel|Mux1~2_combout\ & ((\ALU|data_in|D1_in|SLL|ShiftLeft0~93_combout\) # ((!\ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~12_combout\)))) # (!\ALU|data_OUT|MUX_Sel|Mux1~2_combout\ & 
-- (((\ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~12_combout\ & \operand_a[29]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101010001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU|data_OUT|MUX_Sel|Mux1~2_combout\,
	datab => \ALU|data_in|D1_in|SLL|ShiftLeft0~93_combout\,
	datac => \ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~12_combout\,
	datad => \operand_a[29]~input_o\,
	combout => \ALU|data_OUT|MUX_Sel|Mux1~3_combout\);

-- Location: LCCOMB_X32_Y18_N26
\ALU|data_in|D4_in|Xor1|S[30]~8\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ALU|data_in|D4_in|Xor1|S[30]~8_combout\ = \operand_a[30]~input_o\ $ (\operand_b[30]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \operand_a[30]~input_o\,
	datad => \operand_b[30]~input_o\,
	combout => \ALU|data_in|D4_in|Xor1|S[30]~8_combout\);

-- Location: LCCOMB_X32_Y18_N0
\ALU|data_in|D0_in|AddSub|adder_inst|adder_loop[30].full_adder|S\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ALU|data_in|D0_in|AddSub|adder_inst|adder_loop[30].full_adder|S~combout\ = \ALU|data_in|D4_in|Xor1|S[30]~8_combout\ $ (((\ALU|data_in|D0_in|AddSub|adder_inst|adder_loop[28].full_adder|Cout~0_combout\ & ((\operand_b[29]~input_o\) # 
-- (\operand_a[29]~input_o\))) # (!\ALU|data_in|D0_in|AddSub|adder_inst|adder_loop[28].full_adder|Cout~0_combout\ & (\operand_b[29]~input_o\ & \operand_a[29]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101011001101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU|data_in|D4_in|Xor1|S[30]~8_combout\,
	datab => \ALU|data_in|D0_in|AddSub|adder_inst|adder_loop[28].full_adder|Cout~0_combout\,
	datac => \operand_b[29]~input_o\,
	datad => \operand_a[29]~input_o\,
	combout => \ALU|data_in|D0_in|AddSub|adder_inst|adder_loop[30].full_adder|S~combout\);

-- Location: LCCOMB_X32_Y22_N16
\ALU|data_OUT|MUX_Sel|Mux1~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ALU|data_OUT|MUX_Sel|Mux1~4_combout\ = (\ALU|data_OUT|MUX_Sel|Mux15~2_combout\ & (((!\ALU|data_OUT|MUX_Sel|Mux30~3_combout\)))) # (!\ALU|data_OUT|MUX_Sel|Mux15~2_combout\ & ((\ALU|data_OUT|MUX_Sel|Mux30~3_combout\ & 
-- (\ALU|data_OUT|MUX_Sel|Mux1~3_combout\)) # (!\ALU|data_OUT|MUX_Sel|Mux30~3_combout\ & ((\ALU|data_in|D0_in|AddSub|adder_inst|adder_loop[30].full_adder|S~combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU|data_OUT|MUX_Sel|Mux15~2_combout\,
	datab => \ALU|data_OUT|MUX_Sel|Mux1~3_combout\,
	datac => \ALU|data_in|D0_in|AddSub|adder_inst|adder_loop[30].full_adder|S~combout\,
	datad => \ALU|data_OUT|MUX_Sel|Mux30~3_combout\,
	combout => \ALU|data_OUT|MUX_Sel|Mux1~4_combout\);

-- Location: LCCOMB_X32_Y22_N20
\ALU|data_OUT|MUX_Sel|Mux1~5\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ALU|data_OUT|MUX_Sel|Mux1~5_combout\ = (\ALU|data_OUT|MUX_Sel|Mux1~4_combout\ & ((\ALU|data_in|D1_in|SLL|ShiftLeft0~99_combout\) # ((!\ALU|data_OUT|MUX_Sel|Mux15~2_combout\)))) # (!\ALU|data_OUT|MUX_Sel|Mux1~4_combout\ & 
-- (((\ALU|data_in|D1_in|SLL|ShiftLeft0~81_combout\ & \ALU|data_OUT|MUX_Sel|Mux15~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU|data_in|D1_in|SLL|ShiftLeft0~99_combout\,
	datab => \ALU|data_OUT|MUX_Sel|Mux1~4_combout\,
	datac => \ALU|data_in|D1_in|SLL|ShiftLeft0~81_combout\,
	datad => \ALU|data_OUT|MUX_Sel|Mux15~2_combout\,
	combout => \ALU|data_OUT|MUX_Sel|Mux1~5_combout\);

-- Location: LCCOMB_X30_Y18_N22
\ALU|data_in|D5_in|Sel_SR|Data_out|MUX_Sel|Out[30]~81\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ALU|data_in|D5_in|Sel_SR|Data_out|MUX_Sel|Out[30]~81_combout\ = (\ALU|data_in|D5_in|Sel_SR|Data_out|MUX_Sel|Out[22]~73_combout\ & ((\ALU|data_in|D5_in|Sel_SR|Data_out|MUX_Sel|Out[13]~52_combout\) # 
-- ((\ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~89_combout\ & \ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~109_combout\)))) # (!\ALU|data_in|D5_in|Sel_SR|Data_out|MUX_Sel|Out[22]~73_combout\ & 
-- (((\ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~89_combout\ & \ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~109_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU|data_in|D5_in|Sel_SR|Data_out|MUX_Sel|Out[22]~73_combout\,
	datab => \ALU|data_in|D5_in|Sel_SR|Data_out|MUX_Sel|Out[13]~52_combout\,
	datac => \ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~89_combout\,
	datad => \ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~109_combout\,
	combout => \ALU|data_in|D5_in|Sel_SR|Data_out|MUX_Sel|Out[30]~81_combout\);

-- Location: LCCOMB_X32_Y18_N12
\ALU|data_OUT|MUX_Sel|Mux1~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ALU|data_OUT|MUX_Sel|Mux1~0_combout\ = (\alu_op[1]~input_o\ & (((\alu_op[0]~input_o\)))) # (!\alu_op[1]~input_o\ & ((\alu_op[0]~input_o\ & ((\ALU|data_in|D5_in|Sel_SR|Data_out|MUX_Sel|Out[30]~81_combout\))) # (!\alu_op[0]~input_o\ & 
-- (\ALU|data_in|D4_in|Xor1|S[30]~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU|data_in|D4_in|Xor1|S[30]~8_combout\,
	datab => \ALU|data_in|D5_in|Sel_SR|Data_out|MUX_Sel|Out[30]~81_combout\,
	datac => \alu_op[1]~input_o\,
	datad => \alu_op[0]~input_o\,
	combout => \ALU|data_OUT|MUX_Sel|Mux1~0_combout\);

-- Location: LCCOMB_X32_Y18_N22
\ALU|data_OUT|MUX_Sel|Mux1~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ALU|data_OUT|MUX_Sel|Mux1~1_combout\ = (\ALU|data_OUT|MUX_Sel|Mux1~0_combout\ & (((\operand_a[30]~input_o\ & \operand_b[30]~input_o\)) # (!\alu_op[1]~input_o\))) # (!\ALU|data_OUT|MUX_Sel|Mux1~0_combout\ & (\alu_op[1]~input_o\ & 
-- ((\operand_a[30]~input_o\) # (\operand_b[30]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101001001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU|data_OUT|MUX_Sel|Mux1~0_combout\,
	datab => \operand_a[30]~input_o\,
	datac => \alu_op[1]~input_o\,
	datad => \operand_b[30]~input_o\,
	combout => \ALU|data_OUT|MUX_Sel|Mux1~1_combout\);

-- Location: LCCOMB_X32_Y18_N30
\ALU|data_OUT|MUX_Sel|Mux1~6\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ALU|data_OUT|MUX_Sel|Mux1~6_combout\ = (\alu_op[2]~input_o\ & (((\ALU|data_OUT|MUX_Sel|Mux1~1_combout\)))) # (!\alu_op[2]~input_o\ & (\ALU|data_OUT|MUX_Sel|Mux1~5_combout\ & (!\alu_op[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU|data_OUT|MUX_Sel|Mux1~5_combout\,
	datab => \alu_op[2]~input_o\,
	datac => \alu_op[1]~input_o\,
	datad => \ALU|data_OUT|MUX_Sel|Mux1~1_combout\,
	combout => \ALU|data_OUT|MUX_Sel|Mux1~6_combout\);

-- Location: LCCOMB_X31_Y18_N8
\ALU|data_in|D5_in|Sel_SR|Data_out|MUX_Sel|Out[31]~82\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ALU|data_in|D5_in|Sel_SR|Data_out|MUX_Sel|Out[31]~82_combout\ = (\ALU|data_in|D5_in|Sel_SR|Data_out|MUX_Sel|Out[15]~61_combout\ & (!\operand_b[4]~input_o\ & (!\operand_b[3]~input_o\ & \operand_a[31]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU|data_in|D5_in|Sel_SR|Data_out|MUX_Sel|Out[15]~61_combout\,
	datab => \operand_b[4]~input_o\,
	datac => \operand_b[3]~input_o\,
	datad => \operand_a[31]~input_o\,
	combout => \ALU|data_in|D5_in|Sel_SR|Data_out|MUX_Sel|Out[31]~82_combout\);

-- Location: LCCOMB_X31_Y18_N18
\ALU|data_OUT|MUX_Sel|Mux0~5\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ALU|data_OUT|MUX_Sel|Mux0~5_combout\ = (\alu_op[1]~input_o\ & (\operand_a[31]~input_o\)) # (!\alu_op[1]~input_o\ & ((\alu_op[0]~input_o\ & ((\ALU|data_in|D5_in|Sel_SR|Data_out|MUX_Sel|Out[31]~82_combout\))) # (!\alu_op[0]~input_o\ & 
-- (\operand_a[31]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \operand_a[31]~input_o\,
	datab => \ALU|data_in|D5_in|Sel_SR|Data_out|MUX_Sel|Out[31]~82_combout\,
	datac => \alu_op[1]~input_o\,
	datad => \alu_op[0]~input_o\,
	combout => \ALU|data_OUT|MUX_Sel|Mux0~5_combout\);

-- Location: LCCOMB_X32_Y18_N6
\ALU|data_OUT|MUX_Sel|Mux0~6\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ALU|data_OUT|MUX_Sel|Mux0~6_combout\ = (\operand_b[31]~input_o\ & ((\ALU|data_OUT|MUX_Sel|Mux0~5_combout\ & ((\alu_op[1]~input_o\) # (\alu_op[0]~input_o\))) # (!\ALU|data_OUT|MUX_Sel|Mux0~5_combout\ & ((!\alu_op[0]~input_o\))))) # 
-- (!\operand_b[31]~input_o\ & (\ALU|data_OUT|MUX_Sel|Mux0~5_combout\ & ((!\alu_op[0]~input_o\) # (!\alu_op[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110011100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \operand_b[31]~input_o\,
	datab => \ALU|data_OUT|MUX_Sel|Mux0~5_combout\,
	datac => \alu_op[1]~input_o\,
	datad => \alu_op[0]~input_o\,
	combout => \ALU|data_OUT|MUX_Sel|Mux0~6_combout\);

-- Location: LCCOMB_X32_Y18_N14
\ALU|data_OUT|MUX_Sel|Mux0~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ALU|data_OUT|MUX_Sel|Mux0~0_combout\ = (\ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~12_combout\ & (((\operand_a[30]~input_o\)) # (!\ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~14_combout\))) # 
-- (!\ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~12_combout\ & (\ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~14_combout\ & (\operand_a[31]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~12_combout\,
	datab => \ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~14_combout\,
	datac => \operand_a[31]~input_o\,
	datad => \operand_a[30]~input_o\,
	combout => \ALU|data_OUT|MUX_Sel|Mux0~0_combout\);

-- Location: LCCOMB_X31_Y21_N16
\ALU|data_OUT|MUX_Sel|Mux0~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ALU|data_OUT|MUX_Sel|Mux0~1_combout\ = (\ALU|data_OUT|MUX_Sel|Mux0~0_combout\ & ((\ALU|data_in|D1_in|SLL|ShiftLeft0~96_combout\) # ((\ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~14_combout\)))) # (!\ALU|data_OUT|MUX_Sel|Mux0~0_combout\ & 
-- (((\ALU|data_in|D1_in|SLL|ShiftLeft0~98_combout\ & !\ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU|data_in|D1_in|SLL|ShiftLeft0~96_combout\,
	datab => \ALU|data_OUT|MUX_Sel|Mux0~0_combout\,
	datac => \ALU|data_in|D1_in|SLL|ShiftLeft0~98_combout\,
	datad => \ALU|data_in|D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~14_combout\,
	combout => \ALU|data_OUT|MUX_Sel|Mux0~1_combout\);

-- Location: LCCOMB_X31_Y21_N10
\ALU|data_OUT|MUX_Sel|Mux0~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ALU|data_OUT|MUX_Sel|Mux0~2_combout\ = (\ALU|data_OUT|MUX_Sel|Mux30~3_combout\ & ((\ALU|data_OUT|MUX_Sel|Mux15~2_combout\ & (\ALU|data_in|D1_in|SLL|ShiftLeft0~85_combout\)) # (!\ALU|data_OUT|MUX_Sel|Mux15~2_combout\ & 
-- ((\ALU|data_OUT|MUX_Sel|Mux0~1_combout\))))) # (!\ALU|data_OUT|MUX_Sel|Mux30~3_combout\ & (\ALU|data_OUT|MUX_Sel|Mux15~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU|data_OUT|MUX_Sel|Mux30~3_combout\,
	datab => \ALU|data_OUT|MUX_Sel|Mux15~2_combout\,
	datac => \ALU|data_in|D1_in|SLL|ShiftLeft0~85_combout\,
	datad => \ALU|data_OUT|MUX_Sel|Mux0~1_combout\,
	combout => \ALU|data_OUT|MUX_Sel|Mux0~2_combout\);

-- Location: LCCOMB_X32_Y18_N18
\ALU|data_in|D0_in|AddSub|adder_inst|adder_loop[31].full_adder|S~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ALU|data_in|D0_in|AddSub|adder_inst|adder_loop[31].full_adder|S~0_combout\ = \operand_a[31]~input_o\ $ (\operand_b[31]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \operand_a[31]~input_o\,
	datac => \operand_b[31]~input_o\,
	combout => \ALU|data_in|D0_in|AddSub|adder_inst|adder_loop[31].full_adder|S~0_combout\);

-- Location: LCCOMB_X32_Y18_N8
\ALU|data_in|D0_in|AddSub|adder_inst|adder_loop[29].full_adder|Cout~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ALU|data_in|D0_in|AddSub|adder_inst|adder_loop[29].full_adder|Cout~0_combout\ = (\ALU|data_in|D0_in|AddSub|adder_inst|adder_loop[28].full_adder|Cout~0_combout\ & ((\operand_b[29]~input_o\) # (\operand_a[29]~input_o\))) # 
-- (!\ALU|data_in|D0_in|AddSub|adder_inst|adder_loop[28].full_adder|Cout~0_combout\ & (\operand_b[29]~input_o\ & \operand_a[29]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ALU|data_in|D0_in|AddSub|adder_inst|adder_loop[28].full_adder|Cout~0_combout\,
	datac => \operand_b[29]~input_o\,
	datad => \operand_a[29]~input_o\,
	combout => \ALU|data_in|D0_in|AddSub|adder_inst|adder_loop[29].full_adder|Cout~0_combout\);

-- Location: LCCOMB_X32_Y18_N4
\ALU|data_in|D0_in|AddSub|adder_inst|adder_loop[31].full_adder|S\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ALU|data_in|D0_in|AddSub|adder_inst|adder_loop[31].full_adder|S~combout\ = \ALU|data_in|D0_in|AddSub|adder_inst|adder_loop[31].full_adder|S~0_combout\ $ (((\operand_b[30]~input_o\ & 
-- ((\ALU|data_in|D0_in|AddSub|adder_inst|adder_loop[29].full_adder|Cout~0_combout\) # (\operand_a[30]~input_o\))) # (!\operand_b[30]~input_o\ & (\ALU|data_in|D0_in|AddSub|adder_inst|adder_loop[29].full_adder|Cout~0_combout\ & \operand_a[30]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101011001101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU|data_in|D0_in|AddSub|adder_inst|adder_loop[31].full_adder|S~0_combout\,
	datab => \operand_b[30]~input_o\,
	datac => \ALU|data_in|D0_in|AddSub|adder_inst|adder_loop[29].full_adder|Cout~0_combout\,
	datad => \operand_a[30]~input_o\,
	combout => \ALU|data_in|D0_in|AddSub|adder_inst|adder_loop[31].full_adder|S~combout\);

-- Location: LCCOMB_X32_Y18_N24
\ALU|data_OUT|MUX_Sel|Mux0~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ALU|data_OUT|MUX_Sel|Mux0~3_combout\ = (\ALU|data_OUT|MUX_Sel|Mux0~2_combout\ & (((\ALU|data_in|D1_in|SLL|ShiftLeft0~57_combout\) # (\ALU|data_OUT|MUX_Sel|Mux30~3_combout\)))) # (!\ALU|data_OUT|MUX_Sel|Mux0~2_combout\ & 
-- (\ALU|data_in|D0_in|AddSub|adder_inst|adder_loop[31].full_adder|S~combout\ & ((!\ALU|data_OUT|MUX_Sel|Mux30~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU|data_OUT|MUX_Sel|Mux0~2_combout\,
	datab => \ALU|data_in|D0_in|AddSub|adder_inst|adder_loop[31].full_adder|S~combout\,
	datac => \ALU|data_in|D1_in|SLL|ShiftLeft0~57_combout\,
	datad => \ALU|data_OUT|MUX_Sel|Mux30~3_combout\,
	combout => \ALU|data_OUT|MUX_Sel|Mux0~3_combout\);

-- Location: LCCOMB_X32_Y18_N2
\ALU|data_OUT|MUX_Sel|Mux0~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ALU|data_OUT|MUX_Sel|Mux0~4_combout\ = (\alu_op[2]~input_o\ & (\ALU|data_OUT|MUX_Sel|Mux0~6_combout\)) # (!\alu_op[2]~input_o\ & (((!\alu_op[1]~input_o\ & \ALU|data_OUT|MUX_Sel|Mux0~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU|data_OUT|MUX_Sel|Mux0~6_combout\,
	datab => \alu_op[2]~input_o\,
	datac => \alu_op[1]~input_o\,
	datad => \ALU|data_OUT|MUX_Sel|Mux0~3_combout\,
	combout => \ALU|data_OUT|MUX_Sel|Mux0~4_combout\);

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


