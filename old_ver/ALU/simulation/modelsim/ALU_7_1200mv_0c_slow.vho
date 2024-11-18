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

-- DATE "05/26/2024 20:17:59"

-- 
-- Device: Altera EP4CGX110DF27C7 Package FBGA672
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY CYCLONEIV;
LIBRARY IEEE;
USE CYCLONEIV.CYCLONEIV_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	alu IS
    PORT (
	D0 : IN std_logic_vector(31 DOWNTO 0);
	D1 : IN std_logic_vector(31 DOWNTO 0);
	D2 : IN std_logic_vector(31 DOWNTO 0);
	D3 : IN std_logic_vector(31 DOWNTO 0);
	D4 : IN std_logic_vector(31 DOWNTO 0);
	D5 : IN std_logic_vector(31 DOWNTO 0);
	D6 : IN std_logic_vector(31 DOWNTO 0);
	D7 : IN std_logic_vector(31 DOWNTO 0);
	Sel : IN std_logic_vector(2 DOWNTO 0);
	\Out\ : OUT std_logic_vector(31 DOWNTO 0)
	);
END alu;

-- Design Ports Information
-- Out[0]	=>  Location: PIN_AA9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Out[1]	=>  Location: PIN_V11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Out[2]	=>  Location: PIN_W9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Out[3]	=>  Location: PIN_AC8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Out[4]	=>  Location: PIN_J13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Out[5]	=>  Location: PIN_AD17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Out[6]	=>  Location: PIN_W12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Out[7]	=>  Location: PIN_C17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Out[8]	=>  Location: PIN_E12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Out[9]	=>  Location: PIN_D19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Out[10]	=>  Location: PIN_E18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Out[11]	=>  Location: PIN_V18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Out[12]	=>  Location: PIN_AF15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Out[13]	=>  Location: PIN_AF19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Out[14]	=>  Location: PIN_L24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Out[15]	=>  Location: PIN_Y25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Out[16]	=>  Location: PIN_M22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Out[17]	=>  Location: PIN_J23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Out[18]	=>  Location: PIN_B25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Out[19]	=>  Location: PIN_T24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Out[20]	=>  Location: PIN_U25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Out[21]	=>  Location: PIN_B19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Out[22]	=>  Location: PIN_G14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Out[23]	=>  Location: PIN_F24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Out[24]	=>  Location: PIN_N23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Out[25]	=>  Location: PIN_B22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Out[26]	=>  Location: PIN_AC19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Out[27]	=>  Location: PIN_V21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Out[28]	=>  Location: PIN_D23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Out[29]	=>  Location: PIN_U26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Out[30]	=>  Location: PIN_A11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Out[31]	=>  Location: PIN_AA25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D5[0]	=>  Location: PIN_AF5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Sel[0]	=>  Location: PIN_E11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D6[0]	=>  Location: PIN_Y9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Sel[1]	=>  Location: PIN_C11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D4[0]	=>  Location: PIN_K12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D7[0]	=>  Location: PIN_AE5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D2[0]	=>  Location: PIN_AC10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D1[0]	=>  Location: PIN_Y12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D0[0]	=>  Location: PIN_Y14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D3[0]	=>  Location: PIN_W10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Sel[2]	=>  Location: PIN_AF24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D5[1]	=>  Location: PIN_B7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D6[1]	=>  Location: PIN_AD11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D4[1]	=>  Location: PIN_AD8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D7[1]	=>  Location: PIN_AD5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D2[1]	=>  Location: PIN_AC11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D1[1]	=>  Location: PIN_AF4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D0[1]	=>  Location: PIN_U12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D3[1]	=>  Location: PIN_P26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D5[2]	=>  Location: PIN_R26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D6[2]	=>  Location: PIN_Y10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D4[2]	=>  Location: PIN_W11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D7[2]	=>  Location: PIN_AD6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D2[2]	=>  Location: PIN_AE6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D1[2]	=>  Location: PIN_AD7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D0[2]	=>  Location: PIN_V12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D3[2]	=>  Location: PIN_AC9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D5[3]	=>  Location: PIN_AF9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D6[3]	=>  Location: PIN_AE13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D4[3]	=>  Location: PIN_AD13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D7[3]	=>  Location: PIN_V13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D2[3]	=>  Location: PIN_Y13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D1[3]	=>  Location: PIN_AC24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D0[3]	=>  Location: PIN_Y22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D3[3]	=>  Location: PIN_W14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D5[4]	=>  Location: PIN_AB9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D6[4]	=>  Location: PIN_AE9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D4[4]	=>  Location: PIN_AD10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D7[4]	=>  Location: PIN_AC13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D2[4]	=>  Location: PIN_AE11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D1[4]	=>  Location: PIN_Y11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D0[4]	=>  Location: PIN_AB11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D3[4]	=>  Location: PIN_AA8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D5[5]	=>  Location: PIN_W16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D6[5]	=>  Location: PIN_V15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D4[5]	=>  Location: PIN_AE10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D7[5]	=>  Location: PIN_AB15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D2[5]	=>  Location: PIN_U16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D1[5]	=>  Location: PIN_AE15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D0[5]	=>  Location: PIN_AE17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D3[5]	=>  Location: PIN_AD14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D5[6]	=>  Location: PIN_AE7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D6[6]	=>  Location: PIN_AF8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D4[6]	=>  Location: PIN_AF12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D7[6]	=>  Location: PIN_AF7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D2[6]	=>  Location: PIN_AF10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D1[6]	=>  Location: PIN_AD12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D0[6]	=>  Location: PIN_AC12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D3[6]	=>  Location: PIN_AF6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D5[7]	=>  Location: PIN_AC17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D6[7]	=>  Location: PIN_AA17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D4[7]	=>  Location: PIN_AF17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D7[7]	=>  Location: PIN_AF11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D2[7]	=>  Location: PIN_AD16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D1[7]	=>  Location: PIN_AF16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D0[7]	=>  Location: PIN_AA15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D3[7]	=>  Location: PIN_V17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D5[8]	=>  Location: PIN_AB12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D6[8]	=>  Location: PIN_V14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D4[8]	=>  Location: PIN_W13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D7[8]	=>  Location: PIN_E14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D2[8]	=>  Location: PIN_AE14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D1[8]	=>  Location: PIN_J19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D0[8]	=>  Location: PIN_C22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D3[8]	=>  Location: PIN_Y17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D5[9]	=>  Location: PIN_A25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D6[9]	=>  Location: PIN_A23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D4[9]	=>  Location: PIN_H16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D7[9]	=>  Location: PIN_D20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D2[9]	=>  Location: PIN_C20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D1[9]	=>  Location: PIN_J18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D0[9]	=>  Location: PIN_E20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D3[9]	=>  Location: PIN_C21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D5[10]	=>  Location: PIN_B21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D6[10]	=>  Location: PIN_B23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D4[10]	=>  Location: PIN_H15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D7[10]	=>  Location: PIN_E19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D2[10]	=>  Location: PIN_G17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D1[10]	=>  Location: PIN_F15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D0[10]	=>  Location: PIN_D22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D3[10]	=>  Location: PIN_AF13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D5[11]	=>  Location: PIN_AF14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D6[11]	=>  Location: PIN_AD18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D4[11]	=>  Location: PIN_AA20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D7[11]	=>  Location: PIN_W18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D2[11]	=>  Location: PIN_AC18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D1[11]	=>  Location: PIN_W17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D0[11]	=>  Location: PIN_U18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D3[11]	=>  Location: PIN_AD19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D5[12]	=>  Location: PIN_W15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D6[12]	=>  Location: PIN_AD15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D4[12]	=>  Location: PIN_AE18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D7[12]	=>  Location: PIN_AC16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D2[12]	=>  Location: PIN_AB14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D1[12]	=>  Location: PIN_AC15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D0[12]	=>  Location: PIN_AC14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D3[12]	=>  Location: PIN_V16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D5[13]	=>  Location: PIN_AD20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D6[13]	=>  Location: PIN_AE22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D4[13]	=>  Location: PIN_AE21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D7[13]	=>  Location: PIN_AF20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D2[13]	=>  Location: PIN_AE19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D1[13]	=>  Location: PIN_AB20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D0[13]	=>  Location: PIN_AC20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D3[13]	=>  Location: PIN_AB18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D5[14]	=>  Location: PIN_M23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D6[14]	=>  Location: PIN_J25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D4[14]	=>  Location: PIN_M25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D7[14]	=>  Location: PIN_K20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D2[14]	=>  Location: PIN_N24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D1[14]	=>  Location: PIN_M19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D0[14]	=>  Location: PIN_K22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D3[14]	=>  Location: PIN_J24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D5[15]	=>  Location: PIN_AE26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D6[15]	=>  Location: PIN_V24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D4[15]	=>  Location: PIN_Y24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D7[15]	=>  Location: PIN_AB21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D2[15]	=>  Location: PIN_AD25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D1[15]	=>  Location: PIN_AC25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D0[15]	=>  Location: PIN_AB26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D3[15]	=>  Location: PIN_Y23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D5[16]	=>  Location: PIN_L21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D6[16]	=>  Location: PIN_L19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D4[16]	=>  Location: PIN_K24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D7[16]	=>  Location: PIN_H26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D2[16]	=>  Location: PIN_K21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D1[16]	=>  Location: PIN_L25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D0[16]	=>  Location: PIN_J26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D3[16]	=>  Location: PIN_K26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D5[17]	=>  Location: PIN_E25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D6[17]	=>  Location: PIN_K23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D4[17]	=>  Location: PIN_C26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D7[17]	=>  Location: PIN_G25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D2[17]	=>  Location: PIN_E21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D1[17]	=>  Location: PIN_E23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D0[17]	=>  Location: PIN_C23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D3[17]	=>  Location: PIN_C24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D5[18]	=>  Location: PIN_H22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D6[18]	=>  Location: PIN_D25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D4[18]	=>  Location: PIN_D26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D7[18]	=>  Location: PIN_H18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D2[18]	=>  Location: PIN_F23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D1[18]	=>  Location: PIN_T23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D0[18]	=>  Location: PIN_P19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D3[18]	=>  Location: PIN_H23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D5[19]	=>  Location: PIN_P20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D6[19]	=>  Location: PIN_P24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D4[19]	=>  Location: PIN_P23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D7[19]	=>  Location: PIN_T22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D2[19]	=>  Location: PIN_AA26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D1[19]	=>  Location: PIN_R19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D0[19]	=>  Location: PIN_T25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D3[19]	=>  Location: PIN_R23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D5[20]	=>  Location: PIN_U24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D6[20]	=>  Location: PIN_V26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D4[20]	=>  Location: PIN_W24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D7[20]	=>  Location: PIN_R20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D2[20]	=>  Location: PIN_N22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D1[20]	=>  Location: PIN_R24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D0[20]	=>  Location: PIN_W26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D3[20]	=>  Location: PIN_U19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D5[21]	=>  Location: PIN_D15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D6[21]	=>  Location: PIN_E16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D4[21]	=>  Location: PIN_D17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D7[21]	=>  Location: PIN_C15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D2[21]	=>  Location: PIN_J14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D1[21]	=>  Location: PIN_A19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D0[21]	=>  Location: PIN_C16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D3[21]	=>  Location: PIN_B17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D5[22]	=>  Location: PIN_B11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D6[22]	=>  Location: PIN_C18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D4[22]	=>  Location: PIN_D16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D7[22]	=>  Location: PIN_A17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D2[22]	=>  Location: PIN_C14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D1[22]	=>  Location: PIN_A12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D0[22]	=>  Location: PIN_A18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D3[22]	=>  Location: PIN_B15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D5[23]	=>  Location: PIN_C25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D6[23]	=>  Location: PIN_A15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D4[23]	=>  Location: PIN_C13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D7[23]	=>  Location: PIN_D24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D2[23]	=>  Location: PIN_H24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D1[23]	=>  Location: PIN_E26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D0[23]	=>  Location: PIN_G24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D3[23]	=>  Location: PIN_G23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D5[24]	=>  Location: PIN_G26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D6[24]	=>  Location: PIN_AF22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D4[24]	=>  Location: PIN_AF21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D7[24]	=>  Location: PIN_H25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D2[24]	=>  Location: PIN_L23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D1[24]	=>  Location: PIN_J20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D0[24]	=>  Location: PIN_L22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D3[24]	=>  Location: PIN_K19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D5[25]	=>  Location: PIN_G15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D6[25]	=>  Location: PIN_D21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D4[25]	=>  Location: PIN_J16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D7[25]	=>  Location: PIN_A21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D2[25]	=>  Location: PIN_H17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D1[25]	=>  Location: PIN_A22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D0[25]	=>  Location: PIN_A24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D3[25]	=>  Location: PIN_J15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D5[26]	=>  Location: PIN_AF23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D6[26]	=>  Location: PIN_A14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D4[26]	=>  Location: PIN_B14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D7[26]	=>  Location: PIN_AE23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D2[26]	=>  Location: PIN_AF18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D1[26]	=>  Location: PIN_AC22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D0[26]	=>  Location: PIN_N26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D3[26]	=>  Location: PIN_N25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D5[27]	=>  Location: PIN_AA23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D6[27]	=>  Location: PIN_AA22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D4[27]	=>  Location: PIN_V22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D7[27]	=>  Location: PIN_T21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D2[27]	=>  Location: PIN_AE25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D1[27]	=>  Location: PIN_AC23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D0[27]	=>  Location: PIN_V23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D3[27]	=>  Location: PIN_AB24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D5[28]	=>  Location: PIN_B26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D6[28]	=>  Location: PIN_F21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D4[28]	=>  Location: PIN_E24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D7[28]	=>  Location: PIN_G22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D2[28]	=>  Location: PIN_L26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D1[28]	=>  Location: PIN_M24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D0[28]	=>  Location: PIN_F26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D3[28]	=>  Location: PIN_M26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D5[29]	=>  Location: PIN_N19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D6[29]	=>  Location: PIN_T19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D4[29]	=>  Location: PIN_T26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D7[29]	=>  Location: PIN_W25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D2[29]	=>  Location: PIN_R22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D1[29]	=>  Location: PIN_Y26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D0[29]	=>  Location: PIN_N20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D3[29]	=>  Location: PIN_R25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D5[30]	=>  Location: PIN_A13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D6[30]	=>  Location: PIN_A16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D4[30]	=>  Location: PIN_E15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D7[30]	=>  Location: PIN_B10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D2[30]	=>  Location: PIN_B13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D1[30]	=>  Location: PIN_H14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D0[30]	=>  Location: PIN_D14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D3[30]	=>  Location: PIN_B18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D5[31]	=>  Location: PIN_AB23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D6[31]	=>  Location: PIN_AA24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D4[31]	=>  Location: PIN_W23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D7[31]	=>  Location: PIN_U22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D2[31]	=>  Location: PIN_U23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D1[31]	=>  Location: PIN_AC26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D0[31]	=>  Location: PIN_W22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D3[31]	=>  Location: PIN_AD26,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF alu IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_D0 : std_logic_vector(31 DOWNTO 0);
SIGNAL ww_D1 : std_logic_vector(31 DOWNTO 0);
SIGNAL ww_D2 : std_logic_vector(31 DOWNTO 0);
SIGNAL ww_D3 : std_logic_vector(31 DOWNTO 0);
SIGNAL ww_D4 : std_logic_vector(31 DOWNTO 0);
SIGNAL ww_D5 : std_logic_vector(31 DOWNTO 0);
SIGNAL ww_D6 : std_logic_vector(31 DOWNTO 0);
SIGNAL ww_D7 : std_logic_vector(31 DOWNTO 0);
SIGNAL ww_Sel : std_logic_vector(2 DOWNTO 0);
SIGNAL \ww_Out\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \Out[0]~output_o\ : std_logic;
SIGNAL \Out[1]~output_o\ : std_logic;
SIGNAL \Out[2]~output_o\ : std_logic;
SIGNAL \Out[3]~output_o\ : std_logic;
SIGNAL \Out[4]~output_o\ : std_logic;
SIGNAL \Out[5]~output_o\ : std_logic;
SIGNAL \Out[6]~output_o\ : std_logic;
SIGNAL \Out[7]~output_o\ : std_logic;
SIGNAL \Out[8]~output_o\ : std_logic;
SIGNAL \Out[9]~output_o\ : std_logic;
SIGNAL \Out[10]~output_o\ : std_logic;
SIGNAL \Out[11]~output_o\ : std_logic;
SIGNAL \Out[12]~output_o\ : std_logic;
SIGNAL \Out[13]~output_o\ : std_logic;
SIGNAL \Out[14]~output_o\ : std_logic;
SIGNAL \Out[15]~output_o\ : std_logic;
SIGNAL \Out[16]~output_o\ : std_logic;
SIGNAL \Out[17]~output_o\ : std_logic;
SIGNAL \Out[18]~output_o\ : std_logic;
SIGNAL \Out[19]~output_o\ : std_logic;
SIGNAL \Out[20]~output_o\ : std_logic;
SIGNAL \Out[21]~output_o\ : std_logic;
SIGNAL \Out[22]~output_o\ : std_logic;
SIGNAL \Out[23]~output_o\ : std_logic;
SIGNAL \Out[24]~output_o\ : std_logic;
SIGNAL \Out[25]~output_o\ : std_logic;
SIGNAL \Out[26]~output_o\ : std_logic;
SIGNAL \Out[27]~output_o\ : std_logic;
SIGNAL \Out[28]~output_o\ : std_logic;
SIGNAL \Out[29]~output_o\ : std_logic;
SIGNAL \Out[30]~output_o\ : std_logic;
SIGNAL \Out[31]~output_o\ : std_logic;
SIGNAL \Sel[2]~input_o\ : std_logic;
SIGNAL \D5[0]~input_o\ : std_logic;
SIGNAL \Sel[0]~input_o\ : std_logic;
SIGNAL \D6[0]~input_o\ : std_logic;
SIGNAL \D4[0]~input_o\ : std_logic;
SIGNAL \Sel[1]~input_o\ : std_logic;
SIGNAL \Mux31~0_combout\ : std_logic;
SIGNAL \D7[0]~input_o\ : std_logic;
SIGNAL \Mux31~1_combout\ : std_logic;
SIGNAL \D0[0]~input_o\ : std_logic;
SIGNAL \D1[0]~input_o\ : std_logic;
SIGNAL \Mux31~2_combout\ : std_logic;
SIGNAL \D2[0]~input_o\ : std_logic;
SIGNAL \D3[0]~input_o\ : std_logic;
SIGNAL \Mux31~3_combout\ : std_logic;
SIGNAL \Mux31~4_combout\ : std_logic;
SIGNAL \D0[1]~input_o\ : std_logic;
SIGNAL \D1[1]~input_o\ : std_logic;
SIGNAL \Mux30~2_combout\ : std_logic;
SIGNAL \D3[1]~input_o\ : std_logic;
SIGNAL \D2[1]~input_o\ : std_logic;
SIGNAL \Mux30~3_combout\ : std_logic;
SIGNAL \D4[1]~input_o\ : std_logic;
SIGNAL \D6[1]~input_o\ : std_logic;
SIGNAL \Mux30~0_combout\ : std_logic;
SIGNAL \D5[1]~input_o\ : std_logic;
SIGNAL \D7[1]~input_o\ : std_logic;
SIGNAL \Mux30~1_combout\ : std_logic;
SIGNAL \Mux30~4_combout\ : std_logic;
SIGNAL \D3[2]~input_o\ : std_logic;
SIGNAL \D2[2]~input_o\ : std_logic;
SIGNAL \D0[2]~input_o\ : std_logic;
SIGNAL \D1[2]~input_o\ : std_logic;
SIGNAL \Mux29~2_combout\ : std_logic;
SIGNAL \Mux29~3_combout\ : std_logic;
SIGNAL \D5[2]~input_o\ : std_logic;
SIGNAL \D7[2]~input_o\ : std_logic;
SIGNAL \D6[2]~input_o\ : std_logic;
SIGNAL \D4[2]~input_o\ : std_logic;
SIGNAL \Mux29~0_combout\ : std_logic;
SIGNAL \Mux29~1_combout\ : std_logic;
SIGNAL \Mux29~4_combout\ : std_logic;
SIGNAL \D3[3]~input_o\ : std_logic;
SIGNAL \D2[3]~input_o\ : std_logic;
SIGNAL \D1[3]~input_o\ : std_logic;
SIGNAL \D0[3]~input_o\ : std_logic;
SIGNAL \Mux28~2_combout\ : std_logic;
SIGNAL \Mux28~3_combout\ : std_logic;
SIGNAL \D7[3]~input_o\ : std_logic;
SIGNAL \D5[3]~input_o\ : std_logic;
SIGNAL \D6[3]~input_o\ : std_logic;
SIGNAL \D4[3]~input_o\ : std_logic;
SIGNAL \Mux28~0_combout\ : std_logic;
SIGNAL \Mux28~1_combout\ : std_logic;
SIGNAL \Mux28~4_combout\ : std_logic;
SIGNAL \D5[4]~input_o\ : std_logic;
SIGNAL \D7[4]~input_o\ : std_logic;
SIGNAL \D4[4]~input_o\ : std_logic;
SIGNAL \D6[4]~input_o\ : std_logic;
SIGNAL \Mux27~0_combout\ : std_logic;
SIGNAL \Mux27~1_combout\ : std_logic;
SIGNAL \D1[4]~input_o\ : std_logic;
SIGNAL \D0[4]~input_o\ : std_logic;
SIGNAL \Mux27~2_combout\ : std_logic;
SIGNAL \D3[4]~input_o\ : std_logic;
SIGNAL \D2[4]~input_o\ : std_logic;
SIGNAL \Mux27~3_combout\ : std_logic;
SIGNAL \Mux27~4_combout\ : std_logic;
SIGNAL \D7[5]~input_o\ : std_logic;
SIGNAL \D6[5]~input_o\ : std_logic;
SIGNAL \D4[5]~input_o\ : std_logic;
SIGNAL \Mux26~0_combout\ : std_logic;
SIGNAL \D5[5]~input_o\ : std_logic;
SIGNAL \Mux26~1_combout\ : std_logic;
SIGNAL \D2[5]~input_o\ : std_logic;
SIGNAL \D3[5]~input_o\ : std_logic;
SIGNAL \D1[5]~input_o\ : std_logic;
SIGNAL \D0[5]~input_o\ : std_logic;
SIGNAL \Mux26~2_combout\ : std_logic;
SIGNAL \Mux26~3_combout\ : std_logic;
SIGNAL \Mux26~4_combout\ : std_logic;
SIGNAL \D7[6]~input_o\ : std_logic;
SIGNAL \D5[6]~input_o\ : std_logic;
SIGNAL \D4[6]~input_o\ : std_logic;
SIGNAL \D6[6]~input_o\ : std_logic;
SIGNAL \Mux25~0_combout\ : std_logic;
SIGNAL \Mux25~1_combout\ : std_logic;
SIGNAL \D3[6]~input_o\ : std_logic;
SIGNAL \D0[6]~input_o\ : std_logic;
SIGNAL \D1[6]~input_o\ : std_logic;
SIGNAL \Mux25~2_combout\ : std_logic;
SIGNAL \D2[6]~input_o\ : std_logic;
SIGNAL \Mux25~3_combout\ : std_logic;
SIGNAL \Mux25~4_combout\ : std_logic;
SIGNAL \D5[7]~input_o\ : std_logic;
SIGNAL \D7[7]~input_o\ : std_logic;
SIGNAL \D4[7]~input_o\ : std_logic;
SIGNAL \D6[7]~input_o\ : std_logic;
SIGNAL \Mux24~0_combout\ : std_logic;
SIGNAL \Mux24~1_combout\ : std_logic;
SIGNAL \D0[7]~input_o\ : std_logic;
SIGNAL \D1[7]~input_o\ : std_logic;
SIGNAL \Mux24~2_combout\ : std_logic;
SIGNAL \D2[7]~input_o\ : std_logic;
SIGNAL \D3[7]~input_o\ : std_logic;
SIGNAL \Mux24~3_combout\ : std_logic;
SIGNAL \Mux24~4_combout\ : std_logic;
SIGNAL \D7[8]~input_o\ : std_logic;
SIGNAL \D5[8]~input_o\ : std_logic;
SIGNAL \D6[8]~input_o\ : std_logic;
SIGNAL \D4[8]~input_o\ : std_logic;
SIGNAL \Mux23~0_combout\ : std_logic;
SIGNAL \Mux23~1_combout\ : std_logic;
SIGNAL \D2[8]~input_o\ : std_logic;
SIGNAL \D3[8]~input_o\ : std_logic;
SIGNAL \D0[8]~input_o\ : std_logic;
SIGNAL \D1[8]~input_o\ : std_logic;
SIGNAL \Mux23~2_combout\ : std_logic;
SIGNAL \Mux23~3_combout\ : std_logic;
SIGNAL \Mux23~4_combout\ : std_logic;
SIGNAL \D3[9]~input_o\ : std_logic;
SIGNAL \D0[9]~input_o\ : std_logic;
SIGNAL \D1[9]~input_o\ : std_logic;
SIGNAL \Mux22~2_combout\ : std_logic;
SIGNAL \D2[9]~input_o\ : std_logic;
SIGNAL \Mux22~3_combout\ : std_logic;
SIGNAL \D4[9]~input_o\ : std_logic;
SIGNAL \D6[9]~input_o\ : std_logic;
SIGNAL \Mux22~0_combout\ : std_logic;
SIGNAL \D7[9]~input_o\ : std_logic;
SIGNAL \D5[9]~input_o\ : std_logic;
SIGNAL \Mux22~1_combout\ : std_logic;
SIGNAL \Mux22~4_combout\ : std_logic;
SIGNAL \D1[10]~input_o\ : std_logic;
SIGNAL \D0[10]~input_o\ : std_logic;
SIGNAL \Mux21~2_combout\ : std_logic;
SIGNAL \D3[10]~input_o\ : std_logic;
SIGNAL \D2[10]~input_o\ : std_logic;
SIGNAL \Mux21~3_combout\ : std_logic;
SIGNAL \D5[10]~input_o\ : std_logic;
SIGNAL \D7[10]~input_o\ : std_logic;
SIGNAL \D4[10]~input_o\ : std_logic;
SIGNAL \D6[10]~input_o\ : std_logic;
SIGNAL \Mux21~0_combout\ : std_logic;
SIGNAL \Mux21~1_combout\ : std_logic;
SIGNAL \Mux21~4_combout\ : std_logic;
SIGNAL \D7[11]~input_o\ : std_logic;
SIGNAL \D5[11]~input_o\ : std_logic;
SIGNAL \D6[11]~input_o\ : std_logic;
SIGNAL \D4[11]~input_o\ : std_logic;
SIGNAL \Mux20~0_combout\ : std_logic;
SIGNAL \Mux20~1_combout\ : std_logic;
SIGNAL \D3[11]~input_o\ : std_logic;
SIGNAL \D2[11]~input_o\ : std_logic;
SIGNAL \D1[11]~input_o\ : std_logic;
SIGNAL \D0[11]~input_o\ : std_logic;
SIGNAL \Mux20~2_combout\ : std_logic;
SIGNAL \Mux20~3_combout\ : std_logic;
SIGNAL \Mux20~4_combout\ : std_logic;
SIGNAL \D0[12]~input_o\ : std_logic;
SIGNAL \D1[12]~input_o\ : std_logic;
SIGNAL \Mux19~2_combout\ : std_logic;
SIGNAL \D2[12]~input_o\ : std_logic;
SIGNAL \D3[12]~input_o\ : std_logic;
SIGNAL \Mux19~3_combout\ : std_logic;
SIGNAL \D6[12]~input_o\ : std_logic;
SIGNAL \D4[12]~input_o\ : std_logic;
SIGNAL \Mux19~0_combout\ : std_logic;
SIGNAL \D5[12]~input_o\ : std_logic;
SIGNAL \D7[12]~input_o\ : std_logic;
SIGNAL \Mux19~1_combout\ : std_logic;
SIGNAL \Mux19~4_combout\ : std_logic;
SIGNAL \D4[13]~input_o\ : std_logic;
SIGNAL \D6[13]~input_o\ : std_logic;
SIGNAL \Mux18~0_combout\ : std_logic;
SIGNAL \D7[13]~input_o\ : std_logic;
SIGNAL \D5[13]~input_o\ : std_logic;
SIGNAL \Mux18~1_combout\ : std_logic;
SIGNAL \D2[13]~input_o\ : std_logic;
SIGNAL \D1[13]~input_o\ : std_logic;
SIGNAL \D0[13]~input_o\ : std_logic;
SIGNAL \Mux18~2_combout\ : std_logic;
SIGNAL \D3[13]~input_o\ : std_logic;
SIGNAL \Mux18~3_combout\ : std_logic;
SIGNAL \Mux18~4_combout\ : std_logic;
SIGNAL \D3[14]~input_o\ : std_logic;
SIGNAL \D1[14]~input_o\ : std_logic;
SIGNAL \D0[14]~input_o\ : std_logic;
SIGNAL \Mux17~2_combout\ : std_logic;
SIGNAL \D2[14]~input_o\ : std_logic;
SIGNAL \Mux17~3_combout\ : std_logic;
SIGNAL \D5[14]~input_o\ : std_logic;
SIGNAL \D4[14]~input_o\ : std_logic;
SIGNAL \D6[14]~input_o\ : std_logic;
SIGNAL \Mux17~0_combout\ : std_logic;
SIGNAL \D7[14]~input_o\ : std_logic;
SIGNAL \Mux17~1_combout\ : std_logic;
SIGNAL \Mux17~4_combout\ : std_logic;
SIGNAL \D1[15]~input_o\ : std_logic;
SIGNAL \D0[15]~input_o\ : std_logic;
SIGNAL \Mux16~2_combout\ : std_logic;
SIGNAL \D3[15]~input_o\ : std_logic;
SIGNAL \D2[15]~input_o\ : std_logic;
SIGNAL \Mux16~3_combout\ : std_logic;
SIGNAL \D7[15]~input_o\ : std_logic;
SIGNAL \D6[15]~input_o\ : std_logic;
SIGNAL \D4[15]~input_o\ : std_logic;
SIGNAL \Mux16~0_combout\ : std_logic;
SIGNAL \D5[15]~input_o\ : std_logic;
SIGNAL \Mux16~1_combout\ : std_logic;
SIGNAL \Mux16~4_combout\ : std_logic;
SIGNAL \D1[16]~input_o\ : std_logic;
SIGNAL \D0[16]~input_o\ : std_logic;
SIGNAL \Mux15~2_combout\ : std_logic;
SIGNAL \D3[16]~input_o\ : std_logic;
SIGNAL \D2[16]~input_o\ : std_logic;
SIGNAL \Mux15~3_combout\ : std_logic;
SIGNAL \D6[16]~input_o\ : std_logic;
SIGNAL \D4[16]~input_o\ : std_logic;
SIGNAL \Mux15~0_combout\ : std_logic;
SIGNAL \D5[16]~input_o\ : std_logic;
SIGNAL \D7[16]~input_o\ : std_logic;
SIGNAL \Mux15~1_combout\ : std_logic;
SIGNAL \Mux15~4_combout\ : std_logic;
SIGNAL \D0[17]~input_o\ : std_logic;
SIGNAL \D1[17]~input_o\ : std_logic;
SIGNAL \Mux14~2_combout\ : std_logic;
SIGNAL \D2[17]~input_o\ : std_logic;
SIGNAL \D3[17]~input_o\ : std_logic;
SIGNAL \Mux14~3_combout\ : std_logic;
SIGNAL \D7[17]~input_o\ : std_logic;
SIGNAL \D6[17]~input_o\ : std_logic;
SIGNAL \D4[17]~input_o\ : std_logic;
SIGNAL \Mux14~0_combout\ : std_logic;
SIGNAL \D5[17]~input_o\ : std_logic;
SIGNAL \Mux14~1_combout\ : std_logic;
SIGNAL \Mux14~4_combout\ : std_logic;
SIGNAL \D1[18]~input_o\ : std_logic;
SIGNAL \D0[18]~input_o\ : std_logic;
SIGNAL \Mux13~2_combout\ : std_logic;
SIGNAL \D3[18]~input_o\ : std_logic;
SIGNAL \D2[18]~input_o\ : std_logic;
SIGNAL \Mux13~3_combout\ : std_logic;
SIGNAL \D6[18]~input_o\ : std_logic;
SIGNAL \D4[18]~input_o\ : std_logic;
SIGNAL \Mux13~0_combout\ : std_logic;
SIGNAL \D7[18]~input_o\ : std_logic;
SIGNAL \D5[18]~input_o\ : std_logic;
SIGNAL \Mux13~1_combout\ : std_logic;
SIGNAL \Mux13~4_combout\ : std_logic;
SIGNAL \D0[19]~input_o\ : std_logic;
SIGNAL \D1[19]~input_o\ : std_logic;
SIGNAL \Mux12~2_combout\ : std_logic;
SIGNAL \D2[19]~input_o\ : std_logic;
SIGNAL \D3[19]~input_o\ : std_logic;
SIGNAL \Mux12~3_combout\ : std_logic;
SIGNAL \D5[19]~input_o\ : std_logic;
SIGNAL \D6[19]~input_o\ : std_logic;
SIGNAL \D4[19]~input_o\ : std_logic;
SIGNAL \Mux12~0_combout\ : std_logic;
SIGNAL \D7[19]~input_o\ : std_logic;
SIGNAL \Mux12~1_combout\ : std_logic;
SIGNAL \Mux12~4_combout\ : std_logic;
SIGNAL \D3[20]~input_o\ : std_logic;
SIGNAL \D0[20]~input_o\ : std_logic;
SIGNAL \D1[20]~input_o\ : std_logic;
SIGNAL \Mux11~2_combout\ : std_logic;
SIGNAL \D2[20]~input_o\ : std_logic;
SIGNAL \Mux11~3_combout\ : std_logic;
SIGNAL \D7[20]~input_o\ : std_logic;
SIGNAL \D6[20]~input_o\ : std_logic;
SIGNAL \D4[20]~input_o\ : std_logic;
SIGNAL \Mux11~0_combout\ : std_logic;
SIGNAL \D5[20]~input_o\ : std_logic;
SIGNAL \Mux11~1_combout\ : std_logic;
SIGNAL \Mux11~4_combout\ : std_logic;
SIGNAL \D7[21]~input_o\ : std_logic;
SIGNAL \D4[21]~input_o\ : std_logic;
SIGNAL \D6[21]~input_o\ : std_logic;
SIGNAL \Mux10~0_combout\ : std_logic;
SIGNAL \D5[21]~input_o\ : std_logic;
SIGNAL \Mux10~1_combout\ : std_logic;
SIGNAL \D3[21]~input_o\ : std_logic;
SIGNAL \D1[21]~input_o\ : std_logic;
SIGNAL \D0[21]~input_o\ : std_logic;
SIGNAL \Mux10~2_combout\ : std_logic;
SIGNAL \D2[21]~input_o\ : std_logic;
SIGNAL \Mux10~3_combout\ : std_logic;
SIGNAL \Mux10~4_combout\ : std_logic;
SIGNAL \D0[22]~input_o\ : std_logic;
SIGNAL \D1[22]~input_o\ : std_logic;
SIGNAL \Mux9~2_combout\ : std_logic;
SIGNAL \D3[22]~input_o\ : std_logic;
SIGNAL \D2[22]~input_o\ : std_logic;
SIGNAL \Mux9~3_combout\ : std_logic;
SIGNAL \D4[22]~input_o\ : std_logic;
SIGNAL \D6[22]~input_o\ : std_logic;
SIGNAL \Mux9~0_combout\ : std_logic;
SIGNAL \D5[22]~input_o\ : std_logic;
SIGNAL \D7[22]~input_o\ : std_logic;
SIGNAL \Mux9~1_combout\ : std_logic;
SIGNAL \Mux9~4_combout\ : std_logic;
SIGNAL \D1[23]~input_o\ : std_logic;
SIGNAL \D0[23]~input_o\ : std_logic;
SIGNAL \Mux8~2_combout\ : std_logic;
SIGNAL \D2[23]~input_o\ : std_logic;
SIGNAL \D3[23]~input_o\ : std_logic;
SIGNAL \Mux8~3_combout\ : std_logic;
SIGNAL \D4[23]~input_o\ : std_logic;
SIGNAL \D6[23]~input_o\ : std_logic;
SIGNAL \Mux8~0_combout\ : std_logic;
SIGNAL \D5[23]~input_o\ : std_logic;
SIGNAL \D7[23]~input_o\ : std_logic;
SIGNAL \Mux8~1_combout\ : std_logic;
SIGNAL \Mux8~4_combout\ : std_logic;
SIGNAL \D7[24]~input_o\ : std_logic;
SIGNAL \D6[24]~input_o\ : std_logic;
SIGNAL \D4[24]~input_o\ : std_logic;
SIGNAL \Mux7~0_combout\ : std_logic;
SIGNAL \D5[24]~input_o\ : std_logic;
SIGNAL \Mux7~1_combout\ : std_logic;
SIGNAL \D1[24]~input_o\ : std_logic;
SIGNAL \D0[24]~input_o\ : std_logic;
SIGNAL \Mux7~2_combout\ : std_logic;
SIGNAL \D3[24]~input_o\ : std_logic;
SIGNAL \D2[24]~input_o\ : std_logic;
SIGNAL \Mux7~3_combout\ : std_logic;
SIGNAL \Mux7~4_combout\ : std_logic;
SIGNAL \D5[25]~input_o\ : std_logic;
SIGNAL \D4[25]~input_o\ : std_logic;
SIGNAL \D6[25]~input_o\ : std_logic;
SIGNAL \Mux6~0_combout\ : std_logic;
SIGNAL \D7[25]~input_o\ : std_logic;
SIGNAL \Mux6~1_combout\ : std_logic;
SIGNAL \D2[25]~input_o\ : std_logic;
SIGNAL \D3[25]~input_o\ : std_logic;
SIGNAL \D1[25]~input_o\ : std_logic;
SIGNAL \D0[25]~input_o\ : std_logic;
SIGNAL \Mux6~2_combout\ : std_logic;
SIGNAL \Mux6~3_combout\ : std_logic;
SIGNAL \Mux6~4_combout\ : std_logic;
SIGNAL \D2[26]~input_o\ : std_logic;
SIGNAL \D0[26]~input_o\ : std_logic;
SIGNAL \D1[26]~input_o\ : std_logic;
SIGNAL \Mux5~2_combout\ : std_logic;
SIGNAL \D3[26]~input_o\ : std_logic;
SIGNAL \Mux5~3_combout\ : std_logic;
SIGNAL \D6[26]~input_o\ : std_logic;
SIGNAL \D4[26]~input_o\ : std_logic;
SIGNAL \Mux5~0_combout\ : std_logic;
SIGNAL \D5[26]~input_o\ : std_logic;
SIGNAL \D7[26]~input_o\ : std_logic;
SIGNAL \Mux5~1_combout\ : std_logic;
SIGNAL \Mux5~4_combout\ : std_logic;
SIGNAL \D3[27]~input_o\ : std_logic;
SIGNAL \D1[27]~input_o\ : std_logic;
SIGNAL \D0[27]~input_o\ : std_logic;
SIGNAL \Mux4~2_combout\ : std_logic;
SIGNAL \D2[27]~input_o\ : std_logic;
SIGNAL \Mux4~3_combout\ : std_logic;
SIGNAL \D7[27]~input_o\ : std_logic;
SIGNAL \D5[27]~input_o\ : std_logic;
SIGNAL \D6[27]~input_o\ : std_logic;
SIGNAL \D4[27]~input_o\ : std_logic;
SIGNAL \Mux4~0_combout\ : std_logic;
SIGNAL \Mux4~1_combout\ : std_logic;
SIGNAL \Mux4~4_combout\ : std_logic;
SIGNAL \D3[28]~input_o\ : std_logic;
SIGNAL \D1[28]~input_o\ : std_logic;
SIGNAL \D0[28]~input_o\ : std_logic;
SIGNAL \Mux3~2_combout\ : std_logic;
SIGNAL \D2[28]~input_o\ : std_logic;
SIGNAL \Mux3~3_combout\ : std_logic;
SIGNAL \D6[28]~input_o\ : std_logic;
SIGNAL \D4[28]~input_o\ : std_logic;
SIGNAL \Mux3~0_combout\ : std_logic;
SIGNAL \D5[28]~input_o\ : std_logic;
SIGNAL \D7[28]~input_o\ : std_logic;
SIGNAL \Mux3~1_combout\ : std_logic;
SIGNAL \Mux3~4_combout\ : std_logic;
SIGNAL \D1[29]~input_o\ : std_logic;
SIGNAL \D0[29]~input_o\ : std_logic;
SIGNAL \Mux2~2_combout\ : std_logic;
SIGNAL \D3[29]~input_o\ : std_logic;
SIGNAL \D2[29]~input_o\ : std_logic;
SIGNAL \Mux2~3_combout\ : std_logic;
SIGNAL \D6[29]~input_o\ : std_logic;
SIGNAL \D4[29]~input_o\ : std_logic;
SIGNAL \Mux2~0_combout\ : std_logic;
SIGNAL \D7[29]~input_o\ : std_logic;
SIGNAL \D5[29]~input_o\ : std_logic;
SIGNAL \Mux2~1_combout\ : std_logic;
SIGNAL \Mux2~4_combout\ : std_logic;
SIGNAL \D4[30]~input_o\ : std_logic;
SIGNAL \D6[30]~input_o\ : std_logic;
SIGNAL \Mux1~0_combout\ : std_logic;
SIGNAL \D5[30]~input_o\ : std_logic;
SIGNAL \D7[30]~input_o\ : std_logic;
SIGNAL \Mux1~1_combout\ : std_logic;
SIGNAL \D2[30]~input_o\ : std_logic;
SIGNAL \D3[30]~input_o\ : std_logic;
SIGNAL \D0[30]~input_o\ : std_logic;
SIGNAL \D1[30]~input_o\ : std_logic;
SIGNAL \Mux1~2_combout\ : std_logic;
SIGNAL \Mux1~3_combout\ : std_logic;
SIGNAL \Mux1~4_combout\ : std_logic;
SIGNAL \D2[31]~input_o\ : std_logic;
SIGNAL \D3[31]~input_o\ : std_logic;
SIGNAL \D1[31]~input_o\ : std_logic;
SIGNAL \D0[31]~input_o\ : std_logic;
SIGNAL \Mux0~2_combout\ : std_logic;
SIGNAL \Mux0~3_combout\ : std_logic;
SIGNAL \D4[31]~input_o\ : std_logic;
SIGNAL \D6[31]~input_o\ : std_logic;
SIGNAL \Mux0~0_combout\ : std_logic;
SIGNAL \D5[31]~input_o\ : std_logic;
SIGNAL \D7[31]~input_o\ : std_logic;
SIGNAL \Mux0~1_combout\ : std_logic;
SIGNAL \Mux0~4_combout\ : std_logic;

BEGIN

ww_D0 <= D0;
ww_D1 <= D1;
ww_D2 <= D2;
ww_D3 <= D3;
ww_D4 <= D4;
ww_D5 <= D5;
ww_D6 <= D6;
ww_D7 <= D7;
ww_Sel <= Sel;
\Out\ <= \ww_Out\;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

-- Location: IOOBUF_X26_Y0_N2
\Out[0]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux31~4_combout\,
	devoe => ww_devoe,
	o => \Out[0]~output_o\);

-- Location: IOOBUF_X26_Y0_N23
\Out[1]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux30~4_combout\,
	devoe => ww_devoe,
	o => \Out[1]~output_o\);

-- Location: IOOBUF_X17_Y0_N16
\Out[2]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux29~4_combout\,
	devoe => ww_devoe,
	o => \Out[2]~output_o\);

-- Location: IOOBUF_X12_Y0_N9
\Out[3]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux28~4_combout\,
	devoe => ww_devoe,
	o => \Out[3]~output_o\);

-- Location: IOOBUF_X39_Y91_N9
\Out[4]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux27~4_combout\,
	devoe => ww_devoe,
	o => \Out[4]~output_o\);

-- Location: IOOBUF_X75_Y0_N9
\Out[5]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux26~4_combout\,
	devoe => ww_devoe,
	o => \Out[5]~output_o\);

-- Location: IOOBUF_X34_Y0_N23
\Out[6]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux25~4_combout\,
	devoe => ww_devoe,
	o => \Out[6]~output_o\);

-- Location: IOOBUF_X75_Y91_N9
\Out[7]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux24~4_combout\,
	devoe => ww_devoe,
	o => \Out[7]~output_o\);

-- Location: IOOBUF_X39_Y91_N23
\Out[8]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux23~4_combout\,
	devoe => ww_devoe,
	o => \Out[8]~output_o\);

-- Location: IOOBUF_X95_Y91_N23
\Out[9]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux22~4_combout\,
	devoe => ww_devoe,
	o => \Out[9]~output_o\);

-- Location: IOOBUF_X99_Y91_N16
\Out[10]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux21~4_combout\,
	devoe => ww_devoe,
	o => \Out[10]~output_o\);

-- Location: IOOBUF_X99_Y0_N16
\Out[11]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux20~4_combout\,
	devoe => ww_devoe,
	o => \Out[11]~output_o\);

-- Location: IOOBUF_X66_Y0_N2
\Out[12]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux19~4_combout\,
	devoe => ww_devoe,
	o => \Out[12]~output_o\);

-- Location: IOOBUF_X86_Y0_N2
\Out[13]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux18~4_combout\,
	devoe => ww_devoe,
	o => \Out[13]~output_o\);

-- Location: IOOBUF_X117_Y57_N2
\Out[14]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux17~4_combout\,
	devoe => ww_devoe,
	o => \Out[14]~output_o\);

-- Location: IOOBUF_X117_Y24_N9
\Out[15]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux16~4_combout\,
	devoe => ww_devoe,
	o => \Out[15]~output_o\);

-- Location: IOOBUF_X117_Y56_N9
\Out[16]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux15~4_combout\,
	devoe => ww_devoe,
	o => \Out[16]~output_o\);

-- Location: IOOBUF_X117_Y69_N9
\Out[17]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux14~4_combout\,
	devoe => ww_devoe,
	o => \Out[17]~output_o\);

-- Location: IOOBUF_X117_Y83_N2
\Out[18]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux13~4_combout\,
	devoe => ww_devoe,
	o => \Out[18]~output_o\);

-- Location: IOOBUF_X117_Y36_N9
\Out[19]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux12~4_combout\,
	devoe => ww_devoe,
	o => \Out[19]~output_o\);

-- Location: IOOBUF_X117_Y35_N9
\Out[20]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux11~4_combout\,
	devoe => ww_devoe,
	o => \Out[20]~output_o\);

-- Location: IOOBUF_X82_Y91_N2
\Out[21]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux10~4_combout\,
	devoe => ww_devoe,
	o => \Out[21]~output_o\);

-- Location: IOOBUF_X70_Y91_N2
\Out[22]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux9~4_combout\,
	devoe => ww_devoe,
	o => \Out[22]~output_o\);

-- Location: IOOBUF_X117_Y80_N2
\Out[23]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux8~4_combout\,
	devoe => ww_devoe,
	o => \Out[23]~output_o\);

-- Location: IOOBUF_X117_Y49_N9
\Out[24]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux7~4_combout\,
	devoe => ww_devoe,
	o => \Out[24]~output_o\);

-- Location: IOOBUF_X95_Y91_N2
\Out[25]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux6~4_combout\,
	devoe => ww_devoe,
	o => \Out[25]~output_o\);

-- Location: IOOBUF_X90_Y0_N9
\Out[26]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux5~4_combout\,
	devoe => ww_devoe,
	o => \Out[26]~output_o\);

-- Location: IOOBUF_X117_Y15_N2
\Out[27]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux4~4_combout\,
	devoe => ww_devoe,
	o => \Out[27]~output_o\);

-- Location: IOOBUF_X115_Y91_N9
\Out[28]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux3~4_combout\,
	devoe => ww_devoe,
	o => \Out[28]~output_o\);

-- Location: IOOBUF_X117_Y34_N2
\Out[29]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux2~4_combout\,
	devoe => ww_devoe,
	o => \Out[29]~output_o\);

-- Location: IOOBUF_X50_Y91_N16
\Out[30]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux1~4_combout\,
	devoe => ww_devoe,
	o => \Out[30]~output_o\);

-- Location: IOOBUF_X117_Y22_N2
\Out[31]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux0~4_combout\,
	devoe => ww_devoe,
	o => \Out[31]~output_o\);

-- Location: IOIBUF_X108_Y0_N22
\Sel[2]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Sel(2),
	o => \Sel[2]~input_o\);

-- Location: IOIBUF_X24_Y0_N15
\D5[0]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_D5(0),
	o => \D5[0]~input_o\);

-- Location: IOIBUF_X32_Y91_N8
\Sel[0]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Sel(0),
	o => \Sel[0]~input_o\);

-- Location: IOIBUF_X17_Y0_N8
\D6[0]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_D6(0),
	o => \D6[0]~input_o\);

-- Location: IOIBUF_X34_Y91_N22
\D4[0]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_D4(0),
	o => \D4[0]~input_o\);

-- Location: IOIBUF_X37_Y91_N1
\Sel[1]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Sel(1),
	o => \Sel[1]~input_o\);

-- Location: LCCOMB_X33_Y1_N8
\Mux31~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux31~0_combout\ = (\Sel[1]~input_o\ & ((\D6[0]~input_o\) # ((\Sel[0]~input_o\)))) # (!\Sel[1]~input_o\ & (((\D4[0]~input_o\ & !\Sel[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \D6[0]~input_o\,
	datab => \D4[0]~input_o\,
	datac => \Sel[1]~input_o\,
	datad => \Sel[0]~input_o\,
	combout => \Mux31~0_combout\);

-- Location: IOIBUF_X21_Y0_N15
\D7[0]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_D7(0),
	o => \D7[0]~input_o\);

-- Location: LCCOMB_X33_Y1_N18
\Mux31~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux31~1_combout\ = (\Sel[0]~input_o\ & ((\Mux31~0_combout\ & ((\D7[0]~input_o\))) # (!\Mux31~0_combout\ & (\D5[0]~input_o\)))) # (!\Sel[0]~input_o\ & (((\Mux31~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \D5[0]~input_o\,
	datab => \Sel[0]~input_o\,
	datac => \Mux31~0_combout\,
	datad => \D7[0]~input_o\,
	combout => \Mux31~1_combout\);

-- Location: IOIBUF_X50_Y0_N15
\D0[0]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_D0(0),
	o => \D0[0]~input_o\);

-- Location: IOIBUF_X34_Y0_N15
\D1[0]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_D1(0),
	o => \D1[0]~input_o\);

-- Location: LCCOMB_X33_Y1_N12
\Mux31~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux31~2_combout\ = (\Sel[0]~input_o\ & (((\Sel[1]~input_o\) # (\D1[0]~input_o\)))) # (!\Sel[0]~input_o\ & (\D0[0]~input_o\ & (!\Sel[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \D0[0]~input_o\,
	datab => \Sel[0]~input_o\,
	datac => \Sel[1]~input_o\,
	datad => \D1[0]~input_o\,
	combout => \Mux31~2_combout\);

-- Location: IOIBUF_X34_Y0_N8
\D2[0]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_D2(0),
	o => \D2[0]~input_o\);

-- Location: IOIBUF_X26_Y0_N15
\D3[0]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_D3(0),
	o => \D3[0]~input_o\);

-- Location: LCCOMB_X33_Y1_N30
\Mux31~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux31~3_combout\ = (\Mux31~2_combout\ & (((\D3[0]~input_o\) # (!\Sel[1]~input_o\)))) # (!\Mux31~2_combout\ & (\D2[0]~input_o\ & (\Sel[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux31~2_combout\,
	datab => \D2[0]~input_o\,
	datac => \Sel[1]~input_o\,
	datad => \D3[0]~input_o\,
	combout => \Mux31~3_combout\);

-- Location: LCCOMB_X33_Y1_N16
\Mux31~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux31~4_combout\ = (\Sel[2]~input_o\ & (\Mux31~1_combout\)) # (!\Sel[2]~input_o\ & ((\Mux31~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Sel[2]~input_o\,
	datab => \Mux31~1_combout\,
	datac => \Mux31~3_combout\,
	combout => \Mux31~4_combout\);

-- Location: IOIBUF_X28_Y0_N8
\D0[1]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_D0(1),
	o => \D0[1]~input_o\);

-- Location: IOIBUF_X21_Y0_N1
\D1[1]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_D1(1),
	o => \D1[1]~input_o\);

-- Location: LCCOMB_X33_Y1_N22
\Mux30~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux30~2_combout\ = (\Sel[1]~input_o\ & (((\Sel[0]~input_o\)))) # (!\Sel[1]~input_o\ & ((\Sel[0]~input_o\ & ((\D1[1]~input_o\))) # (!\Sel[0]~input_o\ & (\D0[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \D0[1]~input_o\,
	datab => \D1[1]~input_o\,
	datac => \Sel[1]~input_o\,
	datad => \Sel[0]~input_o\,
	combout => \Mux30~2_combout\);

-- Location: IOIBUF_X117_Y46_N22
\D3[1]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_D3(1),
	o => \D3[1]~input_o\);

-- Location: IOIBUF_X32_Y0_N1
\D2[1]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_D2(1),
	o => \D2[1]~input_o\);

-- Location: LCCOMB_X33_Y1_N0
\Mux30~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux30~3_combout\ = (\Mux30~2_combout\ & (((\D3[1]~input_o\)) # (!\Sel[1]~input_o\))) # (!\Mux30~2_combout\ & (\Sel[1]~input_o\ & ((\D2[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux30~2_combout\,
	datab => \Sel[1]~input_o\,
	datac => \D3[1]~input_o\,
	datad => \D2[1]~input_o\,
	combout => \Mux30~3_combout\);

-- Location: IOIBUF_X19_Y0_N15
\D4[1]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_D4(1),
	o => \D4[1]~input_o\);

-- Location: IOIBUF_X32_Y0_N15
\D6[1]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_D6(1),
	o => \D6[1]~input_o\);

-- Location: LCCOMB_X33_Y1_N26
\Mux30~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux30~0_combout\ = (\Sel[1]~input_o\ & (((\D6[1]~input_o\) # (\Sel[0]~input_o\)))) # (!\Sel[1]~input_o\ & (\D4[1]~input_o\ & ((!\Sel[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \D4[1]~input_o\,
	datab => \D6[1]~input_o\,
	datac => \Sel[1]~input_o\,
	datad => \Sel[0]~input_o\,
	combout => \Mux30~0_combout\);

-- Location: IOIBUF_X30_Y91_N15
\D5[1]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_D5(1),
	o => \D5[1]~input_o\);

-- Location: IOIBUF_X19_Y0_N8
\D7[1]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_D7(1),
	o => \D7[1]~input_o\);

-- Location: LCCOMB_X33_Y1_N4
\Mux30~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux30~1_combout\ = (\Mux30~0_combout\ & (((\D7[1]~input_o\) # (!\Sel[0]~input_o\)))) # (!\Mux30~0_combout\ & (\D5[1]~input_o\ & ((\Sel[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux30~0_combout\,
	datab => \D5[1]~input_o\,
	datac => \D7[1]~input_o\,
	datad => \Sel[0]~input_o\,
	combout => \Mux30~1_combout\);

-- Location: LCCOMB_X33_Y1_N2
\Mux30~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux30~4_combout\ = (\Sel[2]~input_o\ & ((\Mux30~1_combout\))) # (!\Sel[2]~input_o\ & (\Mux30~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Sel[2]~input_o\,
	datab => \Mux30~3_combout\,
	datac => \Mux30~1_combout\,
	combout => \Mux30~4_combout\);

-- Location: IOIBUF_X15_Y0_N8
\D3[2]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_D3(2),
	o => \D3[2]~input_o\);

-- Location: IOIBUF_X21_Y0_N8
\D2[2]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_D2(2),
	o => \D2[2]~input_o\);

-- Location: IOIBUF_X28_Y0_N1
\D0[2]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_D0(2),
	o => \D0[2]~input_o\);

-- Location: IOIBUF_X17_Y0_N1
\D1[2]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_D1(2),
	o => \D1[2]~input_o\);

-- Location: LCCOMB_X33_Y1_N24
\Mux29~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux29~2_combout\ = (\Sel[1]~input_o\ & (((\Sel[0]~input_o\)))) # (!\Sel[1]~input_o\ & ((\Sel[0]~input_o\ & ((\D1[2]~input_o\))) # (!\Sel[0]~input_o\ & (\D0[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \D0[2]~input_o\,
	datab => \D1[2]~input_o\,
	datac => \Sel[1]~input_o\,
	datad => \Sel[0]~input_o\,
	combout => \Mux29~2_combout\);

-- Location: LCCOMB_X33_Y1_N10
\Mux29~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux29~3_combout\ = (\Sel[1]~input_o\ & ((\Mux29~2_combout\ & (\D3[2]~input_o\)) # (!\Mux29~2_combout\ & ((\D2[2]~input_o\))))) # (!\Sel[1]~input_o\ & (((\Mux29~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \D3[2]~input_o\,
	datab => \D2[2]~input_o\,
	datac => \Sel[1]~input_o\,
	datad => \Mux29~2_combout\,
	combout => \Mux29~3_combout\);

-- Location: IOIBUF_X117_Y46_N15
\D5[2]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_D5(2),
	o => \D5[2]~input_o\);

-- Location: IOIBUF_X19_Y0_N1
\D7[2]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_D7(2),
	o => \D7[2]~input_o\);

-- Location: IOIBUF_X26_Y0_N8
\D6[2]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_D6(2),
	o => \D6[2]~input_o\);

-- Location: IOIBUF_X28_Y0_N22
\D4[2]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_D4(2),
	o => \D4[2]~input_o\);

-- Location: LCCOMB_X33_Y1_N20
\Mux29~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux29~0_combout\ = (\Sel[1]~input_o\ & ((\D6[2]~input_o\) # ((\Sel[0]~input_o\)))) # (!\Sel[1]~input_o\ & (((\D4[2]~input_o\ & !\Sel[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \D6[2]~input_o\,
	datab => \D4[2]~input_o\,
	datac => \Sel[1]~input_o\,
	datad => \Sel[0]~input_o\,
	combout => \Mux29~0_combout\);

-- Location: LCCOMB_X33_Y1_N14
\Mux29~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux29~1_combout\ = (\Sel[0]~input_o\ & ((\Mux29~0_combout\ & ((\D7[2]~input_o\))) # (!\Mux29~0_combout\ & (\D5[2]~input_o\)))) # (!\Sel[0]~input_o\ & (((\Mux29~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \D5[2]~input_o\,
	datab => \Sel[0]~input_o\,
	datac => \D7[2]~input_o\,
	datad => \Mux29~0_combout\,
	combout => \Mux29~1_combout\);

-- Location: LCCOMB_X33_Y1_N28
\Mux29~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux29~4_combout\ = (\Sel[2]~input_o\ & ((\Mux29~1_combout\))) # (!\Sel[2]~input_o\ & (\Mux29~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux29~3_combout\,
	datab => \Mux29~1_combout\,
	datac => \Sel[2]~input_o\,
	combout => \Mux29~4_combout\);

-- Location: IOIBUF_X48_Y0_N1
\D3[3]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_D3(3),
	o => \D3[3]~input_o\);

-- Location: IOIBUF_X46_Y0_N15
\D2[3]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_D2(3),
	o => \D2[3]~input_o\);

-- Location: IOIBUF_X117_Y8_N1
\D1[3]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_D1(3),
	o => \D1[3]~input_o\);

-- Location: IOIBUF_X117_Y5_N8
\D0[3]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_D0(3),
	o => \D0[3]~input_o\);

-- Location: LCCOMB_X116_Y17_N24
\Mux28~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux28~2_combout\ = (\Sel[0]~input_o\ & ((\Sel[1]~input_o\) # ((\D1[3]~input_o\)))) # (!\Sel[0]~input_o\ & (!\Sel[1]~input_o\ & ((\D0[3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Sel[0]~input_o\,
	datab => \Sel[1]~input_o\,
	datac => \D1[3]~input_o\,
	datad => \D0[3]~input_o\,
	combout => \Mux28~2_combout\);

-- Location: LCCOMB_X42_Y1_N20
\Mux28~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux28~3_combout\ = (\Sel[1]~input_o\ & ((\Mux28~2_combout\ & (\D3[3]~input_o\)) # (!\Mux28~2_combout\ & ((\D2[3]~input_o\))))) # (!\Sel[1]~input_o\ & (((\Mux28~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \D3[3]~input_o\,
	datab => \D2[3]~input_o\,
	datac => \Sel[1]~input_o\,
	datad => \Mux28~2_combout\,
	combout => \Mux28~3_combout\);

-- Location: IOIBUF_X41_Y0_N22
\D7[3]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_D7(3),
	o => \D7[3]~input_o\);

-- Location: IOIBUF_X50_Y0_N1
\D5[3]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_D5(3),
	o => \D5[3]~input_o\);

-- Location: IOIBUF_X48_Y0_N8
\D6[3]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_D6(3),
	o => \D6[3]~input_o\);

-- Location: IOIBUF_X48_Y0_N15
\D4[3]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_D4(3),
	o => \D4[3]~input_o\);

-- Location: LCCOMB_X42_Y1_N24
\Mux28~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux28~0_combout\ = (\Sel[0]~input_o\ & (((\Sel[1]~input_o\)))) # (!\Sel[0]~input_o\ & ((\Sel[1]~input_o\ & (\D6[3]~input_o\)) # (!\Sel[1]~input_o\ & ((\D4[3]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \D6[3]~input_o\,
	datab => \Sel[0]~input_o\,
	datac => \Sel[1]~input_o\,
	datad => \D4[3]~input_o\,
	combout => \Mux28~0_combout\);

-- Location: LCCOMB_X42_Y1_N2
\Mux28~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux28~1_combout\ = (\Sel[0]~input_o\ & ((\Mux28~0_combout\ & (\D7[3]~input_o\)) # (!\Mux28~0_combout\ & ((\D5[3]~input_o\))))) # (!\Sel[0]~input_o\ & (((\Mux28~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \D7[3]~input_o\,
	datab => \Sel[0]~input_o\,
	datac => \D5[3]~input_o\,
	datad => \Mux28~0_combout\,
	combout => \Mux28~1_combout\);

-- Location: LCCOMB_X42_Y1_N14
\Mux28~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux28~4_combout\ = (\Sel[2]~input_o\ & ((\Mux28~1_combout\))) # (!\Sel[2]~input_o\ & (\Mux28~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Mux28~3_combout\,
	datac => \Sel[2]~input_o\,
	datad => \Mux28~1_combout\,
	combout => \Mux28~4_combout\);

-- Location: IOIBUF_X15_Y0_N15
\D5[4]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_D5(4),
	o => \D5[4]~input_o\);

-- Location: IOIBUF_X48_Y0_N22
\D7[4]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_D7(4),
	o => \D7[4]~input_o\);

-- Location: IOIBUF_X34_Y0_N1
\D4[4]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_D4(4),
	o => \D4[4]~input_o\);

-- Location: IOIBUF_X50_Y0_N8
\D6[4]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_D6(4),
	o => \D6[4]~input_o\);

-- Location: LCCOMB_X42_Y1_N0
\Mux27~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux27~0_combout\ = (\Sel[0]~input_o\ & (((\Sel[1]~input_o\)))) # (!\Sel[0]~input_o\ & ((\Sel[1]~input_o\ & ((\D6[4]~input_o\))) # (!\Sel[1]~input_o\ & (\D4[4]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \D4[4]~input_o\,
	datab => \Sel[0]~input_o\,
	datac => \Sel[1]~input_o\,
	datad => \D6[4]~input_o\,
	combout => \Mux27~0_combout\);

-- Location: LCCOMB_X42_Y1_N26
\Mux27~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux27~1_combout\ = (\Sel[0]~input_o\ & ((\Mux27~0_combout\ & ((\D7[4]~input_o\))) # (!\Mux27~0_combout\ & (\D5[4]~input_o\)))) # (!\Sel[0]~input_o\ & (((\Mux27~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \D5[4]~input_o\,
	datab => \Sel[0]~input_o\,
	datac => \D7[4]~input_o\,
	datad => \Mux27~0_combout\,
	combout => \Mux27~1_combout\);

-- Location: IOIBUF_X28_Y0_N15
\D1[4]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_D1(4),
	o => \D1[4]~input_o\);

-- Location: IOIBUF_X32_Y0_N8
\D0[4]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_D0(4),
	o => \D0[4]~input_o\);

-- Location: LCCOMB_X33_Y1_N6
\Mux27~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux27~2_combout\ = (\Sel[1]~input_o\ & (((\Sel[0]~input_o\)))) # (!\Sel[1]~input_o\ & ((\Sel[0]~input_o\ & (\D1[4]~input_o\)) # (!\Sel[0]~input_o\ & ((\D0[4]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \D1[4]~input_o\,
	datab => \D0[4]~input_o\,
	datac => \Sel[1]~input_o\,
	datad => \Sel[0]~input_o\,
	combout => \Mux27~2_combout\);

-- Location: IOIBUF_X10_Y0_N8
\D3[4]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_D3(4),
	o => \D3[4]~input_o\);

-- Location: IOIBUF_X44_Y0_N15
\D2[4]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_D2(4),
	o => \D2[4]~input_o\);

-- Location: LCCOMB_X42_Y1_N28
\Mux27~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux27~3_combout\ = (\Mux27~2_combout\ & (((\D3[4]~input_o\)) # (!\Sel[1]~input_o\))) # (!\Mux27~2_combout\ & (\Sel[1]~input_o\ & ((\D2[4]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux27~2_combout\,
	datab => \Sel[1]~input_o\,
	datac => \D3[4]~input_o\,
	datad => \D2[4]~input_o\,
	combout => \Mux27~3_combout\);

-- Location: LCCOMB_X42_Y1_N22
\Mux27~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux27~4_combout\ = (\Sel[2]~input_o\ & (\Mux27~1_combout\)) # (!\Sel[2]~input_o\ & ((\Mux27~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux27~1_combout\,
	datab => \Mux27~3_combout\,
	datac => \Sel[2]~input_o\,
	combout => \Mux27~4_combout\);

-- Location: IOIBUF_X70_Y0_N8
\D7[5]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_D7(5),
	o => \D7[5]~input_o\);

-- Location: IOIBUF_X77_Y0_N15
\D6[5]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_D6(5),
	o => \D6[5]~input_o\);

-- Location: IOIBUF_X53_Y0_N22
\D4[5]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_D4(5),
	o => \D4[5]~input_o\);

-- Location: LCCOMB_X69_Y1_N8
\Mux26~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux26~0_combout\ = (\Sel[1]~input_o\ & ((\D6[5]~input_o\) # ((\Sel[0]~input_o\)))) # (!\Sel[1]~input_o\ & (((!\Sel[0]~input_o\ & \D4[5]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \D6[5]~input_o\,
	datab => \Sel[1]~input_o\,
	datac => \Sel[0]~input_o\,
	datad => \D4[5]~input_o\,
	combout => \Mux26~0_combout\);

-- Location: IOIBUF_X82_Y0_N22
\D5[5]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_D5(5),
	o => \D5[5]~input_o\);

-- Location: LCCOMB_X69_Y1_N2
\Mux26~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux26~1_combout\ = (\Mux26~0_combout\ & ((\D7[5]~input_o\) # ((!\Sel[0]~input_o\)))) # (!\Mux26~0_combout\ & (((\Sel[0]~input_o\ & \D5[5]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \D7[5]~input_o\,
	datab => \Mux26~0_combout\,
	datac => \Sel[0]~input_o\,
	datad => \D5[5]~input_o\,
	combout => \Mux26~1_combout\);

-- Location: IOIBUF_X82_Y0_N15
\D2[5]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_D2(5),
	o => \D2[5]~input_o\);

-- Location: IOIBUF_X61_Y0_N15
\D3[5]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_D3(5),
	o => \D3[5]~input_o\);

-- Location: IOIBUF_X63_Y0_N15
\D1[5]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_D1(5),
	o => \D1[5]~input_o\);

-- Location: IOIBUF_X75_Y0_N1
\D0[5]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_D0(5),
	o => \D0[5]~input_o\);

-- Location: LCCOMB_X69_Y1_N4
\Mux26~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux26~2_combout\ = (\Sel[1]~input_o\ & (((\Sel[0]~input_o\)))) # (!\Sel[1]~input_o\ & ((\Sel[0]~input_o\ & (\D1[5]~input_o\)) # (!\Sel[0]~input_o\ & ((\D0[5]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \D1[5]~input_o\,
	datab => \Sel[1]~input_o\,
	datac => \Sel[0]~input_o\,
	datad => \D0[5]~input_o\,
	combout => \Mux26~2_combout\);

-- Location: LCCOMB_X69_Y1_N14
\Mux26~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux26~3_combout\ = (\Mux26~2_combout\ & (((\D3[5]~input_o\) # (!\Sel[1]~input_o\)))) # (!\Mux26~2_combout\ & (\D2[5]~input_o\ & ((\Sel[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \D2[5]~input_o\,
	datab => \D3[5]~input_o\,
	datac => \Mux26~2_combout\,
	datad => \Sel[1]~input_o\,
	combout => \Mux26~3_combout\);

-- Location: LCCOMB_X69_Y1_N24
\Mux26~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux26~4_combout\ = (\Sel[2]~input_o\ & (\Mux26~1_combout\)) # (!\Sel[2]~input_o\ & ((\Mux26~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Mux26~1_combout\,
	datac => \Mux26~3_combout\,
	datad => \Sel[2]~input_o\,
	combout => \Mux26~4_combout\);

-- Location: IOIBUF_X41_Y0_N8
\D7[6]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_D7(6),
	o => \D7[6]~input_o\);

-- Location: IOIBUF_X39_Y0_N8
\D5[6]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_D5(6),
	o => \D5[6]~input_o\);

-- Location: IOIBUF_X53_Y0_N1
\D4[6]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_D4(6),
	o => \D4[6]~input_o\);

-- Location: IOIBUF_X41_Y0_N1
\D6[6]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_D6(6),
	o => \D6[6]~input_o\);

-- Location: LCCOMB_X42_Y1_N16
\Mux25~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux25~0_combout\ = (\Sel[0]~input_o\ & (((\Sel[1]~input_o\)))) # (!\Sel[0]~input_o\ & ((\Sel[1]~input_o\ & ((\D6[6]~input_o\))) # (!\Sel[1]~input_o\ & (\D4[6]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \D4[6]~input_o\,
	datab => \Sel[0]~input_o\,
	datac => \Sel[1]~input_o\,
	datad => \D6[6]~input_o\,
	combout => \Mux25~0_combout\);

-- Location: LCCOMB_X42_Y1_N10
\Mux25~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux25~1_combout\ = (\Sel[0]~input_o\ & ((\Mux25~0_combout\ & (\D7[6]~input_o\)) # (!\Mux25~0_combout\ & ((\D5[6]~input_o\))))) # (!\Sel[0]~input_o\ & (((\Mux25~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \D7[6]~input_o\,
	datab => \Sel[0]~input_o\,
	datac => \D5[6]~input_o\,
	datad => \Mux25~0_combout\,
	combout => \Mux25~1_combout\);

-- Location: IOIBUF_X39_Y0_N1
\D3[6]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_D3(6),
	o => \D3[6]~input_o\);

-- Location: IOIBUF_X37_Y0_N1
\D0[6]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_D0(6),
	o => \D0[6]~input_o\);

-- Location: IOIBUF_X44_Y0_N22
\D1[6]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_D1(6),
	o => \D1[6]~input_o\);

-- Location: LCCOMB_X42_Y1_N4
\Mux25~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux25~2_combout\ = (\Sel[0]~input_o\ & (((\Sel[1]~input_o\) # (\D1[6]~input_o\)))) # (!\Sel[0]~input_o\ & (\D0[6]~input_o\ & (!\Sel[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \D0[6]~input_o\,
	datab => \Sel[0]~input_o\,
	datac => \Sel[1]~input_o\,
	datad => \D1[6]~input_o\,
	combout => \Mux25~2_combout\);

-- Location: IOIBUF_X53_Y0_N15
\D2[6]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_D2(6),
	o => \D2[6]~input_o\);

-- Location: LCCOMB_X42_Y1_N30
\Mux25~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux25~3_combout\ = (\Sel[1]~input_o\ & ((\Mux25~2_combout\ & (\D3[6]~input_o\)) # (!\Mux25~2_combout\ & ((\D2[6]~input_o\))))) # (!\Sel[1]~input_o\ & (((\Mux25~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \D3[6]~input_o\,
	datab => \Sel[1]~input_o\,
	datac => \Mux25~2_combout\,
	datad => \D2[6]~input_o\,
	combout => \Mux25~3_combout\);

-- Location: LCCOMB_X42_Y1_N8
\Mux25~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux25~4_combout\ = (\Sel[2]~input_o\ & (\Mux25~1_combout\)) # (!\Sel[2]~input_o\ & ((\Mux25~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux25~1_combout\,
	datab => \Sel[2]~input_o\,
	datac => \Mux25~3_combout\,
	combout => \Mux25~4_combout\);

-- Location: IOIBUF_X75_Y0_N15
\D5[7]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_D5(7),
	o => \D5[7]~input_o\);

-- Location: IOIBUF_X53_Y0_N8
\D7[7]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_D7(7),
	o => \D7[7]~input_o\);

-- Location: IOIBUF_X77_Y0_N22
\D4[7]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_D4(7),
	o => \D4[7]~input_o\);

-- Location: IOIBUF_X84_Y0_N8
\D6[7]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_D6(7),
	o => \D6[7]~input_o\);

-- Location: LCCOMB_X69_Y1_N18
\Mux24~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux24~0_combout\ = (\Sel[1]~input_o\ & (((\Sel[0]~input_o\) # (\D6[7]~input_o\)))) # (!\Sel[1]~input_o\ & (\D4[7]~input_o\ & (!\Sel[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \D4[7]~input_o\,
	datab => \Sel[1]~input_o\,
	datac => \Sel[0]~input_o\,
	datad => \D6[7]~input_o\,
	combout => \Mux24~0_combout\);

-- Location: LCCOMB_X69_Y1_N12
\Mux24~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux24~1_combout\ = (\Sel[0]~input_o\ & ((\Mux24~0_combout\ & ((\D7[7]~input_o\))) # (!\Mux24~0_combout\ & (\D5[7]~input_o\)))) # (!\Sel[0]~input_o\ & (((\Mux24~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \D5[7]~input_o\,
	datab => \Sel[0]~input_o\,
	datac => \D7[7]~input_o\,
	datad => \Mux24~0_combout\,
	combout => \Mux24~1_combout\);

-- Location: IOIBUF_X70_Y0_N15
\D0[7]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_D0(7),
	o => \D0[7]~input_o\);

-- Location: IOIBUF_X68_Y0_N22
\D1[7]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_D1(7),
	o => \D1[7]~input_o\);

-- Location: LCCOMB_X69_Y1_N6
\Mux24~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux24~2_combout\ = (\Sel[0]~input_o\ & (((\D1[7]~input_o\) # (\Sel[1]~input_o\)))) # (!\Sel[0]~input_o\ & (\D0[7]~input_o\ & ((!\Sel[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \D0[7]~input_o\,
	datab => \Sel[0]~input_o\,
	datac => \D1[7]~input_o\,
	datad => \Sel[1]~input_o\,
	combout => \Mux24~2_combout\);

-- Location: IOIBUF_X68_Y0_N8
\D2[7]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_D2(7),
	o => \D2[7]~input_o\);

-- Location: IOIBUF_X82_Y0_N8
\D3[7]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_D3(7),
	o => \D3[7]~input_o\);

-- Location: LCCOMB_X69_Y1_N16
\Mux24~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux24~3_combout\ = (\Mux24~2_combout\ & (((\D3[7]~input_o\)) # (!\Sel[1]~input_o\))) # (!\Mux24~2_combout\ & (\Sel[1]~input_o\ & (\D2[7]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux24~2_combout\,
	datab => \Sel[1]~input_o\,
	datac => \D2[7]~input_o\,
	datad => \D3[7]~input_o\,
	combout => \Mux24~3_combout\);

-- Location: LCCOMB_X69_Y1_N10
\Mux24~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux24~4_combout\ = (\Sel[2]~input_o\ & (\Mux24~1_combout\)) # (!\Sel[2]~input_o\ & ((\Mux24~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux24~1_combout\,
	datab => \Mux24~3_combout\,
	datad => \Sel[2]~input_o\,
	combout => \Mux24~4_combout\);

-- Location: IOIBUF_X41_Y91_N8
\D7[8]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_D7(8),
	o => \D7[8]~input_o\);

-- Location: IOIBUF_X37_Y0_N8
\D5[8]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_D5(8),
	o => \D5[8]~input_o\);

-- Location: IOIBUF_X41_Y0_N15
\D6[8]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_D6(8),
	o => \D6[8]~input_o\);

-- Location: IOIBUF_X46_Y0_N22
\D4[8]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_D4(8),
	o => \D4[8]~input_o\);

-- Location: LCCOMB_X42_Y1_N18
\Mux23~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux23~0_combout\ = (\Sel[0]~input_o\ & (((\Sel[1]~input_o\)))) # (!\Sel[0]~input_o\ & ((\Sel[1]~input_o\ & (\D6[8]~input_o\)) # (!\Sel[1]~input_o\ & ((\D4[8]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \D6[8]~input_o\,
	datab => \Sel[0]~input_o\,
	datac => \Sel[1]~input_o\,
	datad => \D4[8]~input_o\,
	combout => \Mux23~0_combout\);

-- Location: LCCOMB_X42_Y1_N12
\Mux23~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux23~1_combout\ = (\Sel[0]~input_o\ & ((\Mux23~0_combout\ & (\D7[8]~input_o\)) # (!\Mux23~0_combout\ & ((\D5[8]~input_o\))))) # (!\Sel[0]~input_o\ & (((\Mux23~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \D7[8]~input_o\,
	datab => \Sel[0]~input_o\,
	datac => \D5[8]~input_o\,
	datad => \Mux23~0_combout\,
	combout => \Mux23~1_combout\);

-- Location: IOIBUF_X63_Y0_N22
\D2[8]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_D2(8),
	o => \D2[8]~input_o\);

-- Location: IOIBUF_X84_Y0_N15
\D3[8]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_D3(8),
	o => \D3[8]~input_o\);

-- Location: IOIBUF_X108_Y91_N1
\D0[8]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_D0(8),
	o => \D0[8]~input_o\);

-- Location: IOIBUF_X111_Y91_N22
\D1[8]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_D1(8),
	o => \D1[8]~input_o\);

-- Location: LCCOMB_X100_Y90_N24
\Mux23~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux23~2_combout\ = (\Sel[0]~input_o\ & (((\Sel[1]~input_o\) # (\D1[8]~input_o\)))) # (!\Sel[0]~input_o\ & (\D0[8]~input_o\ & (!\Sel[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Sel[0]~input_o\,
	datab => \D0[8]~input_o\,
	datac => \Sel[1]~input_o\,
	datad => \D1[8]~input_o\,
	combout => \Mux23~2_combout\);

-- Location: LCCOMB_X69_Y1_N20
\Mux23~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux23~3_combout\ = (\Sel[1]~input_o\ & ((\Mux23~2_combout\ & ((\D3[8]~input_o\))) # (!\Mux23~2_combout\ & (\D2[8]~input_o\)))) # (!\Sel[1]~input_o\ & (((\Mux23~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \D2[8]~input_o\,
	datab => \Sel[1]~input_o\,
	datac => \D3[8]~input_o\,
	datad => \Mux23~2_combout\,
	combout => \Mux23~3_combout\);

-- Location: LCCOMB_X42_Y1_N6
\Mux23~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux23~4_combout\ = (\Sel[2]~input_o\ & (\Mux23~1_combout\)) # (!\Sel[2]~input_o\ & ((\Mux23~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux23~1_combout\,
	datab => \Sel[2]~input_o\,
	datac => \Mux23~3_combout\,
	combout => \Mux23~4_combout\);

-- Location: IOIBUF_X95_Y91_N8
\D3[9]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_D3(9),
	o => \D3[9]~input_o\);

-- Location: IOIBUF_X106_Y91_N1
\D0[9]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_D0(9),
	o => \D0[9]~input_o\);

-- Location: IOIBUF_X111_Y91_N15
\D1[9]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_D1(9),
	o => \D1[9]~input_o\);

-- Location: LCCOMB_X100_Y90_N22
\Mux22~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux22~2_combout\ = (\Sel[0]~input_o\ & (((\Sel[1]~input_o\) # (\D1[9]~input_o\)))) # (!\Sel[0]~input_o\ & (\D0[9]~input_o\ & (!\Sel[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Sel[0]~input_o\,
	datab => \D0[9]~input_o\,
	datac => \Sel[1]~input_o\,
	datad => \D1[9]~input_o\,
	combout => \Mux22~2_combout\);

-- Location: IOIBUF_X95_Y91_N15
\D2[9]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_D2(9),
	o => \D2[9]~input_o\);

-- Location: LCCOMB_X100_Y90_N8
\Mux22~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux22~3_combout\ = (\Sel[1]~input_o\ & ((\Mux22~2_combout\ & (\D3[9]~input_o\)) # (!\Mux22~2_combout\ & ((\D2[9]~input_o\))))) # (!\Sel[1]~input_o\ & (((\Mux22~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Sel[1]~input_o\,
	datab => \D3[9]~input_o\,
	datac => \Mux22~2_combout\,
	datad => \D2[9]~input_o\,
	combout => \Mux22~3_combout\);

-- Location: IOIBUF_X99_Y91_N1
\D4[9]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_D4(9),
	o => \D4[9]~input_o\);

-- Location: IOIBUF_X104_Y91_N1
\D6[9]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_D6(9),
	o => \D6[9]~input_o\);

-- Location: LCCOMB_X100_Y90_N2
\Mux22~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux22~0_combout\ = (\Sel[1]~input_o\ & (((\D6[9]~input_o\) # (\Sel[0]~input_o\)))) # (!\Sel[1]~input_o\ & (\D4[9]~input_o\ & ((!\Sel[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Sel[1]~input_o\,
	datab => \D4[9]~input_o\,
	datac => \D6[9]~input_o\,
	datad => \Sel[0]~input_o\,
	combout => \Mux22~0_combout\);

-- Location: IOIBUF_X101_Y91_N1
\D7[9]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_D7(9),
	o => \D7[9]~input_o\);

-- Location: IOIBUF_X108_Y91_N22
\D5[9]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_D5(9),
	o => \D5[9]~input_o\);

-- Location: LCCOMB_X100_Y90_N20
\Mux22~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux22~1_combout\ = (\Sel[0]~input_o\ & ((\Mux22~0_combout\ & (\D7[9]~input_o\)) # (!\Mux22~0_combout\ & ((\D5[9]~input_o\))))) # (!\Sel[0]~input_o\ & (\Mux22~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Sel[0]~input_o\,
	datab => \Mux22~0_combout\,
	datac => \D7[9]~input_o\,
	datad => \D5[9]~input_o\,
	combout => \Mux22~1_combout\);

-- Location: LCCOMB_X100_Y90_N26
\Mux22~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux22~4_combout\ = (\Sel[2]~input_o\ & ((\Mux22~1_combout\))) # (!\Sel[2]~input_o\ & (\Mux22~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Mux22~3_combout\,
	datac => \Sel[2]~input_o\,
	datad => \Mux22~1_combout\,
	combout => \Mux22~4_combout\);

-- Location: IOIBUF_X92_Y91_N1
\D1[10]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_D1(10),
	o => \D1[10]~input_o\);

-- Location: IOIBUF_X108_Y91_N8
\D0[10]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_D0(10),
	o => \D0[10]~input_o\);

-- Location: LCCOMB_X100_Y90_N16
\Mux21~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux21~2_combout\ = (\Sel[0]~input_o\ & ((\D1[10]~input_o\) # ((\Sel[1]~input_o\)))) # (!\Sel[0]~input_o\ & (((!\Sel[1]~input_o\ & \D0[10]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Sel[0]~input_o\,
	datab => \D1[10]~input_o\,
	datac => \Sel[1]~input_o\,
	datad => \D0[10]~input_o\,
	combout => \Mux21~2_combout\);

-- Location: IOIBUF_X57_Y0_N8
\D3[10]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_D3(10),
	o => \D3[10]~input_o\);

-- Location: IOIBUF_X106_Y91_N8
\D2[10]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_D2(10),
	o => \D2[10]~input_o\);

-- Location: LCCOMB_X100_Y90_N10
\Mux21~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux21~3_combout\ = (\Sel[1]~input_o\ & ((\Mux21~2_combout\ & (\D3[10]~input_o\)) # (!\Mux21~2_combout\ & ((\D2[10]~input_o\))))) # (!\Sel[1]~input_o\ & (\Mux21~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Sel[1]~input_o\,
	datab => \Mux21~2_combout\,
	datac => \D3[10]~input_o\,
	datad => \D2[10]~input_o\,
	combout => \Mux21~3_combout\);

-- Location: IOIBUF_X88_Y91_N8
\D5[10]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_D5(10),
	o => \D5[10]~input_o\);

-- Location: IOIBUF_X99_Y91_N22
\D7[10]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_D7(10),
	o => \D7[10]~input_o\);

-- Location: IOIBUF_X97_Y91_N1
\D4[10]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_D4(10),
	o => \D4[10]~input_o\);

-- Location: IOIBUF_X104_Y91_N8
\D6[10]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_D6(10),
	o => \D6[10]~input_o\);

-- Location: LCCOMB_X100_Y90_N28
\Mux21~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux21~0_combout\ = (\Sel[0]~input_o\ & (((\Sel[1]~input_o\)))) # (!\Sel[0]~input_o\ & ((\Sel[1]~input_o\ & ((\D6[10]~input_o\))) # (!\Sel[1]~input_o\ & (\D4[10]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Sel[0]~input_o\,
	datab => \D4[10]~input_o\,
	datac => \Sel[1]~input_o\,
	datad => \D6[10]~input_o\,
	combout => \Mux21~0_combout\);

-- Location: LCCOMB_X100_Y90_N6
\Mux21~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux21~1_combout\ = (\Sel[0]~input_o\ & ((\Mux21~0_combout\ & ((\D7[10]~input_o\))) # (!\Mux21~0_combout\ & (\D5[10]~input_o\)))) # (!\Sel[0]~input_o\ & (((\Mux21~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Sel[0]~input_o\,
	datab => \D5[10]~input_o\,
	datac => \D7[10]~input_o\,
	datad => \Mux21~0_combout\,
	combout => \Mux21~1_combout\);

-- Location: LCCOMB_X100_Y90_N4
\Mux21~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux21~4_combout\ = (\Sel[2]~input_o\ & ((\Mux21~1_combout\))) # (!\Sel[2]~input_o\ & (\Mux21~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux21~3_combout\,
	datac => \Sel[2]~input_o\,
	datad => \Mux21~1_combout\,
	combout => \Mux21~4_combout\);

-- Location: IOIBUF_X88_Y0_N1
\D7[11]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_D7(11),
	o => \D7[11]~input_o\);

-- Location: IOIBUF_X57_Y0_N1
\D5[11]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_D5(11),
	o => \D5[11]~input_o\);

-- Location: IOIBUF_X86_Y0_N15
\D6[11]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_D6(11),
	o => \D6[11]~input_o\);

-- Location: IOIBUF_X99_Y0_N8
\D4[11]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_D4(11),
	o => \D4[11]~input_o\);

-- Location: LCCOMB_X92_Y1_N16
\Mux20~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux20~0_combout\ = (\Sel[0]~input_o\ & (((\Sel[1]~input_o\)))) # (!\Sel[0]~input_o\ & ((\Sel[1]~input_o\ & (\D6[11]~input_o\)) # (!\Sel[1]~input_o\ & ((\D4[11]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \D6[11]~input_o\,
	datab => \Sel[0]~input_o\,
	datac => \Sel[1]~input_o\,
	datad => \D4[11]~input_o\,
	combout => \Mux20~0_combout\);

-- Location: LCCOMB_X92_Y1_N2
\Mux20~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux20~1_combout\ = (\Sel[0]~input_o\ & ((\Mux20~0_combout\ & (\D7[11]~input_o\)) # (!\Mux20~0_combout\ & ((\D5[11]~input_o\))))) # (!\Sel[0]~input_o\ & (((\Mux20~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \D7[11]~input_o\,
	datab => \Sel[0]~input_o\,
	datac => \D5[11]~input_o\,
	datad => \Mux20~0_combout\,
	combout => \Mux20~1_combout\);

-- Location: IOIBUF_X90_Y0_N1
\D3[11]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_D3(11),
	o => \D3[11]~input_o\);

-- Location: IOIBUF_X86_Y0_N22
\D2[11]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_D2(11),
	o => \D2[11]~input_o\);

-- Location: IOIBUF_X88_Y0_N8
\D1[11]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_D1(11),
	o => \D1[11]~input_o\);

-- Location: IOIBUF_X97_Y0_N1
\D0[11]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_D0(11),
	o => \D0[11]~input_o\);

-- Location: LCCOMB_X92_Y1_N28
\Mux20~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux20~2_combout\ = (\Sel[0]~input_o\ & ((\D1[11]~input_o\) # ((\Sel[1]~input_o\)))) # (!\Sel[0]~input_o\ & (((!\Sel[1]~input_o\ & \D0[11]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \D1[11]~input_o\,
	datab => \Sel[0]~input_o\,
	datac => \Sel[1]~input_o\,
	datad => \D0[11]~input_o\,
	combout => \Mux20~2_combout\);

-- Location: LCCOMB_X92_Y1_N14
\Mux20~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux20~3_combout\ = (\Sel[1]~input_o\ & ((\Mux20~2_combout\ & (\D3[11]~input_o\)) # (!\Mux20~2_combout\ & ((\D2[11]~input_o\))))) # (!\Sel[1]~input_o\ & (((\Mux20~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \D3[11]~input_o\,
	datab => \D2[11]~input_o\,
	datac => \Sel[1]~input_o\,
	datad => \Mux20~2_combout\,
	combout => \Mux20~3_combout\);

-- Location: LCCOMB_X92_Y1_N24
\Mux20~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux20~4_combout\ = (\Sel[2]~input_o\ & (\Mux20~1_combout\)) # (!\Sel[2]~input_o\ & ((\Mux20~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Sel[2]~input_o\,
	datab => \Mux20~1_combout\,
	datac => \Mux20~3_combout\,
	combout => \Mux20~4_combout\);

-- Location: IOIBUF_X61_Y0_N22
\D0[12]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_D0(12),
	o => \D0[12]~input_o\);

-- Location: IOIBUF_X66_Y0_N15
\D1[12]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_D1(12),
	o => \D1[12]~input_o\);

-- Location: LCCOMB_X69_Y1_N26
\Mux19~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux19~2_combout\ = (\Sel[1]~input_o\ & (((\Sel[0]~input_o\)))) # (!\Sel[1]~input_o\ & ((\Sel[0]~input_o\ & ((\D1[12]~input_o\))) # (!\Sel[0]~input_o\ & (\D0[12]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \D0[12]~input_o\,
	datab => \Sel[1]~input_o\,
	datac => \Sel[0]~input_o\,
	datad => \D1[12]~input_o\,
	combout => \Mux19~2_combout\);

-- Location: IOIBUF_X66_Y0_N22
\D2[12]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_D2(12),
	o => \D2[12]~input_o\);

-- Location: IOIBUF_X77_Y0_N1
\D3[12]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_D3(12),
	o => \D3[12]~input_o\);

-- Location: LCCOMB_X69_Y1_N28
\Mux19~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux19~3_combout\ = (\Mux19~2_combout\ & (((\D3[12]~input_o\)) # (!\Sel[1]~input_o\))) # (!\Mux19~2_combout\ & (\Sel[1]~input_o\ & (\D2[12]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux19~2_combout\,
	datab => \Sel[1]~input_o\,
	datac => \D2[12]~input_o\,
	datad => \D3[12]~input_o\,
	combout => \Mux19~3_combout\);

-- Location: IOIBUF_X66_Y0_N8
\D6[12]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_D6(12),
	o => \D6[12]~input_o\);

-- Location: IOIBUF_X82_Y0_N1
\D4[12]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_D4(12),
	o => \D4[12]~input_o\);

-- Location: LCCOMB_X69_Y1_N22
\Mux19~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux19~0_combout\ = (\Sel[1]~input_o\ & ((\D6[12]~input_o\) # ((\Sel[0]~input_o\)))) # (!\Sel[1]~input_o\ & (((!\Sel[0]~input_o\ & \D4[12]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \D6[12]~input_o\,
	datab => \Sel[1]~input_o\,
	datac => \Sel[0]~input_o\,
	datad => \D4[12]~input_o\,
	combout => \Mux19~0_combout\);

-- Location: IOIBUF_X77_Y0_N8
\D5[12]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_D5(12),
	o => \D5[12]~input_o\);

-- Location: IOIBUF_X68_Y0_N15
\D7[12]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_D7(12),
	o => \D7[12]~input_o\);

-- Location: LCCOMB_X69_Y1_N0
\Mux19~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux19~1_combout\ = (\Mux19~0_combout\ & (((\D7[12]~input_o\)) # (!\Sel[0]~input_o\))) # (!\Mux19~0_combout\ & (\Sel[0]~input_o\ & (\D5[12]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux19~0_combout\,
	datab => \Sel[0]~input_o\,
	datac => \D5[12]~input_o\,
	datad => \D7[12]~input_o\,
	combout => \Mux19~1_combout\);

-- Location: LCCOMB_X69_Y1_N30
\Mux19~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux19~4_combout\ = (\Sel[2]~input_o\ & ((\Mux19~1_combout\))) # (!\Sel[2]~input_o\ & (\Mux19~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Sel[2]~input_o\,
	datab => \Mux19~3_combout\,
	datad => \Mux19~1_combout\,
	combout => \Mux19~4_combout\);

-- Location: IOIBUF_X95_Y0_N8
\D4[13]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_D4(13),
	o => \D4[13]~input_o\);

-- Location: IOIBUF_X95_Y0_N1
\D6[13]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_D6(13),
	o => \D6[13]~input_o\);

-- Location: LCCOMB_X92_Y1_N26
\Mux18~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux18~0_combout\ = (\Sel[0]~input_o\ & (((\Sel[1]~input_o\)))) # (!\Sel[0]~input_o\ & ((\Sel[1]~input_o\ & ((\D6[13]~input_o\))) # (!\Sel[1]~input_o\ & (\D4[13]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \D4[13]~input_o\,
	datab => \Sel[0]~input_o\,
	datac => \Sel[1]~input_o\,
	datad => \D6[13]~input_o\,
	combout => \Mux18~0_combout\);

-- Location: IOIBUF_X92_Y0_N22
\D7[13]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_D7(13),
	o => \D7[13]~input_o\);

-- Location: IOIBUF_X95_Y0_N15
\D5[13]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_D5(13),
	o => \D5[13]~input_o\);

-- Location: LCCOMB_X92_Y1_N4
\Mux18~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux18~1_combout\ = (\Mux18~0_combout\ & (((\D7[13]~input_o\)) # (!\Sel[0]~input_o\))) # (!\Mux18~0_combout\ & (\Sel[0]~input_o\ & ((\D5[13]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux18~0_combout\,
	datab => \Sel[0]~input_o\,
	datac => \D7[13]~input_o\,
	datad => \D5[13]~input_o\,
	combout => \Mux18~1_combout\);

-- Location: IOIBUF_X86_Y0_N8
\D2[13]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_D2(13),
	o => \D2[13]~input_o\);

-- Location: IOIBUF_X99_Y0_N1
\D1[13]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_D1(13),
	o => \D1[13]~input_o\);

-- Location: IOIBUF_X104_Y0_N8
\D0[13]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_D0(13),
	o => \D0[13]~input_o\);

-- Location: LCCOMB_X92_Y1_N30
\Mux18~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux18~2_combout\ = (\Sel[0]~input_o\ & ((\D1[13]~input_o\) # ((\Sel[1]~input_o\)))) # (!\Sel[0]~input_o\ & (((!\Sel[1]~input_o\ & \D0[13]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \D1[13]~input_o\,
	datab => \Sel[0]~input_o\,
	datac => \Sel[1]~input_o\,
	datad => \D0[13]~input_o\,
	combout => \Mux18~2_combout\);

-- Location: IOIBUF_X84_Y0_N1
\D3[13]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_D3(13),
	o => \D3[13]~input_o\);

-- Location: LCCOMB_X92_Y1_N8
\Mux18~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux18~3_combout\ = (\Sel[1]~input_o\ & ((\Mux18~2_combout\ & ((\D3[13]~input_o\))) # (!\Mux18~2_combout\ & (\D2[13]~input_o\)))) # (!\Sel[1]~input_o\ & (((\Mux18~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \D2[13]~input_o\,
	datab => \Sel[1]~input_o\,
	datac => \Mux18~2_combout\,
	datad => \D3[13]~input_o\,
	combout => \Mux18~3_combout\);

-- Location: LCCOMB_X92_Y1_N10
\Mux18~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux18~4_combout\ = (\Sel[2]~input_o\ & (\Mux18~1_combout\)) # (!\Sel[2]~input_o\ & ((\Mux18~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Sel[2]~input_o\,
	datab => \Mux18~1_combout\,
	datac => \Mux18~3_combout\,
	combout => \Mux18~4_combout\);

-- Location: IOIBUF_X117_Y68_N1
\D3[14]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_D3(14),
	o => \D3[14]~input_o\);

-- Location: IOIBUF_X117_Y51_N1
\D1[14]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_D1(14),
	o => \D1[14]~input_o\);

-- Location: IOIBUF_X117_Y62_N8
\D0[14]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_D0(14),
	o => \D0[14]~input_o\);

-- Location: LCCOMB_X116_Y60_N20
\Mux17~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux17~2_combout\ = (\Sel[0]~input_o\ & ((\Sel[1]~input_o\) # ((\D1[14]~input_o\)))) # (!\Sel[0]~input_o\ & (!\Sel[1]~input_o\ & ((\D0[14]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Sel[0]~input_o\,
	datab => \Sel[1]~input_o\,
	datac => \D1[14]~input_o\,
	datad => \D0[14]~input_o\,
	combout => \Mux17~2_combout\);

-- Location: IOIBUF_X117_Y50_N1
\D2[14]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_D2(14),
	o => \D2[14]~input_o\);

-- Location: LCCOMB_X116_Y60_N6
\Mux17~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux17~3_combout\ = (\Mux17~2_combout\ & ((\D3[14]~input_o\) # ((!\Sel[1]~input_o\)))) # (!\Mux17~2_combout\ & (((\Sel[1]~input_o\ & \D2[14]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \D3[14]~input_o\,
	datab => \Mux17~2_combout\,
	datac => \Sel[1]~input_o\,
	datad => \D2[14]~input_o\,
	combout => \Mux17~3_combout\);

-- Location: IOIBUF_X117_Y53_N8
\D5[14]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_D5(14),
	o => \D5[14]~input_o\);

-- Location: IOIBUF_X117_Y55_N8
\D4[14]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_D4(14),
	o => \D4[14]~input_o\);

-- Location: IOIBUF_X117_Y61_N8
\D6[14]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_D6(14),
	o => \D6[14]~input_o\);

-- Location: LCCOMB_X116_Y60_N24
\Mux17~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux17~0_combout\ = (\Sel[0]~input_o\ & (((\Sel[1]~input_o\)))) # (!\Sel[0]~input_o\ & ((\Sel[1]~input_o\ & ((\D6[14]~input_o\))) # (!\Sel[1]~input_o\ & (\D4[14]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Sel[0]~input_o\,
	datab => \D4[14]~input_o\,
	datac => \Sel[1]~input_o\,
	datad => \D6[14]~input_o\,
	combout => \Mux17~0_combout\);

-- Location: IOIBUF_X117_Y60_N1
\D7[14]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_D7(14),
	o => \D7[14]~input_o\);

-- Location: LCCOMB_X116_Y60_N2
\Mux17~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux17~1_combout\ = (\Mux17~0_combout\ & (((\D7[14]~input_o\) # (!\Sel[0]~input_o\)))) # (!\Mux17~0_combout\ & (\D5[14]~input_o\ & (\Sel[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110000101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \D5[14]~input_o\,
	datab => \Mux17~0_combout\,
	datac => \Sel[0]~input_o\,
	datad => \D7[14]~input_o\,
	combout => \Mux17~1_combout\);

-- Location: LCCOMB_X116_Y60_N8
\Mux17~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux17~4_combout\ = (\Sel[2]~input_o\ & ((\Mux17~1_combout\))) # (!\Sel[2]~input_o\ & (\Mux17~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux17~3_combout\,
	datac => \Sel[2]~input_o\,
	datad => \Mux17~1_combout\,
	combout => \Mux17~4_combout\);

-- Location: IOIBUF_X117_Y21_N1
\D1[15]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_D1(15),
	o => \D1[15]~input_o\);

-- Location: IOIBUF_X117_Y22_N8
\D0[15]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_D0(15),
	o => \D0[15]~input_o\);

-- Location: LCCOMB_X116_Y17_N22
\Mux16~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux16~2_combout\ = (\Sel[1]~input_o\ & (((\Sel[0]~input_o\)))) # (!\Sel[1]~input_o\ & ((\Sel[0]~input_o\ & (\D1[15]~input_o\)) # (!\Sel[0]~input_o\ & ((\D0[15]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \D1[15]~input_o\,
	datab => \Sel[1]~input_o\,
	datac => \Sel[0]~input_o\,
	datad => \D0[15]~input_o\,
	combout => \Mux16~2_combout\);

-- Location: IOIBUF_X117_Y5_N1
\D3[15]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_D3(15),
	o => \D3[15]~input_o\);

-- Location: IOIBUF_X117_Y17_N1
\D2[15]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_D2(15),
	o => \D2[15]~input_o\);

-- Location: LCCOMB_X116_Y17_N8
\Mux16~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux16~3_combout\ = (\Mux16~2_combout\ & ((\D3[15]~input_o\) # ((!\Sel[1]~input_o\)))) # (!\Mux16~2_combout\ & (((\Sel[1]~input_o\ & \D2[15]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101010001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux16~2_combout\,
	datab => \D3[15]~input_o\,
	datac => \Sel[1]~input_o\,
	datad => \D2[15]~input_o\,
	combout => \Mux16~3_combout\);

-- Location: IOIBUF_X115_Y0_N15
\D7[15]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_D7(15),
	o => \D7[15]~input_o\);

-- Location: IOIBUF_X117_Y19_N8
\D6[15]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_D6(15),
	o => \D6[15]~input_o\);

-- Location: IOIBUF_X117_Y24_N1
\D4[15]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_D4(15),
	o => \D4[15]~input_o\);

-- Location: LCCOMB_X116_Y17_N18
\Mux16~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux16~0_combout\ = (\Sel[1]~input_o\ & ((\D6[15]~input_o\) # ((\Sel[0]~input_o\)))) # (!\Sel[1]~input_o\ & (((!\Sel[0]~input_o\ & \D4[15]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \D6[15]~input_o\,
	datab => \Sel[1]~input_o\,
	datac => \Sel[0]~input_o\,
	datad => \D4[15]~input_o\,
	combout => \Mux16~0_combout\);

-- Location: IOIBUF_X117_Y11_N1
\D5[15]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_D5(15),
	o => \D5[15]~input_o\);

-- Location: LCCOMB_X116_Y17_N12
\Mux16~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux16~1_combout\ = (\Mux16~0_combout\ & ((\D7[15]~input_o\) # ((!\Sel[0]~input_o\)))) # (!\Mux16~0_combout\ & (((\Sel[0]~input_o\ & \D5[15]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \D7[15]~input_o\,
	datab => \Mux16~0_combout\,
	datac => \Sel[0]~input_o\,
	datad => \D5[15]~input_o\,
	combout => \Mux16~1_combout\);

-- Location: LCCOMB_X116_Y17_N2
\Mux16~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux16~4_combout\ = (\Sel[2]~input_o\ & ((\Mux16~1_combout\))) # (!\Sel[2]~input_o\ & (\Mux16~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Mux16~3_combout\,
	datac => \Sel[2]~input_o\,
	datad => \Mux16~1_combout\,
	combout => \Mux16~4_combout\);

-- Location: IOIBUF_X117_Y57_N8
\D1[16]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_D1(16),
	o => \D1[16]~input_o\);

-- Location: IOIBUF_X117_Y60_N15
\D0[16]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_D0(16),
	o => \D0[16]~input_o\);

-- Location: LCCOMB_X116_Y60_N30
\Mux15~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux15~2_combout\ = (\Sel[1]~input_o\ & (((\Sel[0]~input_o\)))) # (!\Sel[1]~input_o\ & ((\Sel[0]~input_o\ & (\D1[16]~input_o\)) # (!\Sel[0]~input_o\ & ((\D0[16]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \D1[16]~input_o\,
	datab => \Sel[1]~input_o\,
	datac => \Sel[0]~input_o\,
	datad => \D0[16]~input_o\,
	combout => \Mux15~2_combout\);

-- Location: IOIBUF_X117_Y59_N1
\D3[16]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_D3(16),
	o => \D3[16]~input_o\);

-- Location: IOIBUF_X117_Y62_N1
\D2[16]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_D2(16),
	o => \D2[16]~input_o\);

-- Location: LCCOMB_X116_Y60_N0
\Mux15~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux15~3_combout\ = (\Mux15~2_combout\ & ((\D3[16]~input_o\) # ((!\Sel[1]~input_o\)))) # (!\Mux15~2_combout\ & (((\Sel[1]~input_o\ & \D2[16]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101010001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux15~2_combout\,
	datab => \D3[16]~input_o\,
	datac => \Sel[1]~input_o\,
	datad => \D2[16]~input_o\,
	combout => \Mux15~3_combout\);

-- Location: IOIBUF_X117_Y51_N8
\D6[16]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_D6(16),
	o => \D6[16]~input_o\);

-- Location: IOIBUF_X117_Y61_N1
\D4[16]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_D4(16),
	o => \D4[16]~input_o\);

-- Location: LCCOMB_X116_Y60_N10
\Mux15~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux15~0_combout\ = (\Sel[0]~input_o\ & (\Sel[1]~input_o\)) # (!\Sel[0]~input_o\ & ((\Sel[1]~input_o\ & (\D6[16]~input_o\)) # (!\Sel[1]~input_o\ & ((\D4[16]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Sel[0]~input_o\,
	datab => \Sel[1]~input_o\,
	datac => \D6[16]~input_o\,
	datad => \D4[16]~input_o\,
	combout => \Mux15~0_combout\);

-- Location: IOIBUF_X117_Y60_N8
\D5[16]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_D5(16),
	o => \D5[16]~input_o\);

-- Location: IOIBUF_X117_Y65_N8
\D7[16]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_D7(16),
	o => \D7[16]~input_o\);

-- Location: LCCOMB_X116_Y60_N12
\Mux15~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux15~1_combout\ = (\Mux15~0_combout\ & (((\D7[16]~input_o\) # (!\Sel[0]~input_o\)))) # (!\Mux15~0_combout\ & (\D5[16]~input_o\ & (\Sel[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux15~0_combout\,
	datab => \D5[16]~input_o\,
	datac => \Sel[0]~input_o\,
	datad => \D7[16]~input_o\,
	combout => \Mux15~1_combout\);

-- Location: LCCOMB_X116_Y60_N18
\Mux15~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux15~4_combout\ = (\Sel[2]~input_o\ & ((\Mux15~1_combout\))) # (!\Sel[2]~input_o\ & (\Mux15~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Mux15~3_combout\,
	datac => \Sel[2]~input_o\,
	datad => \Mux15~1_combout\,
	combout => \Mux15~4_combout\);

-- Location: IOIBUF_X113_Y91_N1
\D0[17]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_D0(17),
	o => \D0[17]~input_o\);

-- Location: IOIBUF_X115_Y91_N1
\D1[17]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_D1(17),
	o => \D1[17]~input_o\);

-- Location: LCCOMB_X116_Y80_N20
\Mux14~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux14~2_combout\ = (\Sel[1]~input_o\ & (((\Sel[0]~input_o\)))) # (!\Sel[1]~input_o\ & ((\Sel[0]~input_o\ & ((\D1[17]~input_o\))) # (!\Sel[0]~input_o\ & (\D0[17]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Sel[1]~input_o\,
	datab => \D0[17]~input_o\,
	datac => \Sel[0]~input_o\,
	datad => \D1[17]~input_o\,
	combout => \Mux14~2_combout\);

-- Location: IOIBUF_X115_Y91_N15
\D2[17]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_D2(17),
	o => \D2[17]~input_o\);

-- Location: IOIBUF_X117_Y84_N8
\D3[17]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_D3(17),
	o => \D3[17]~input_o\);

-- Location: LCCOMB_X116_Y80_N6
\Mux14~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux14~3_combout\ = (\Sel[1]~input_o\ & ((\Mux14~2_combout\ & ((\D3[17]~input_o\))) # (!\Mux14~2_combout\ & (\D2[17]~input_o\)))) # (!\Sel[1]~input_o\ & (\Mux14~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110001100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Sel[1]~input_o\,
	datab => \Mux14~2_combout\,
	datac => \D2[17]~input_o\,
	datad => \D3[17]~input_o\,
	combout => \Mux14~3_combout\);

-- Location: IOIBUF_X117_Y70_N8
\D7[17]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_D7(17),
	o => \D7[17]~input_o\);

-- Location: IOIBUF_X117_Y69_N1
\D6[17]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_D6(17),
	o => \D6[17]~input_o\);

-- Location: IOIBUF_X117_Y81_N8
\D4[17]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_D4(17),
	o => \D4[17]~input_o\);

-- Location: LCCOMB_X116_Y80_N0
\Mux14~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux14~0_combout\ = (\Sel[0]~input_o\ & (((\Sel[1]~input_o\)))) # (!\Sel[0]~input_o\ & ((\Sel[1]~input_o\ & (\D6[17]~input_o\)) # (!\Sel[1]~input_o\ & ((\D4[17]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Sel[0]~input_o\,
	datab => \D6[17]~input_o\,
	datac => \D4[17]~input_o\,
	datad => \Sel[1]~input_o\,
	combout => \Mux14~0_combout\);

-- Location: IOIBUF_X117_Y72_N1
\D5[17]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_D5(17),
	o => \D5[17]~input_o\);

-- Location: LCCOMB_X116_Y80_N2
\Mux14~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux14~1_combout\ = (\Mux14~0_combout\ & ((\D7[17]~input_o\) # ((!\Sel[0]~input_o\)))) # (!\Mux14~0_combout\ & (((\Sel[0]~input_o\ & \D5[17]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \D7[17]~input_o\,
	datab => \Mux14~0_combout\,
	datac => \Sel[0]~input_o\,
	datad => \D5[17]~input_o\,
	combout => \Mux14~1_combout\);

-- Location: LCCOMB_X116_Y80_N24
\Mux14~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux14~4_combout\ = (\Sel[2]~input_o\ & ((\Mux14~1_combout\))) # (!\Sel[2]~input_o\ & (\Mux14~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux14~3_combout\,
	datac => \Sel[2]~input_o\,
	datad => \Mux14~1_combout\,
	combout => \Mux14~4_combout\);

-- Location: IOIBUF_X117_Y33_N1
\D1[18]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_D1(18),
	o => \D1[18]~input_o\);

-- Location: IOIBUF_X117_Y43_N1
\D0[18]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_D0(18),
	o => \D0[18]~input_o\);

-- Location: LCCOMB_X116_Y38_N16
\Mux13~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux13~2_combout\ = (\Sel[0]~input_o\ & ((\D1[18]~input_o\) # ((\Sel[1]~input_o\)))) # (!\Sel[0]~input_o\ & (((!\Sel[1]~input_o\ & \D0[18]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \D1[18]~input_o\,
	datab => \Sel[0]~input_o\,
	datac => \Sel[1]~input_o\,
	datad => \D0[18]~input_o\,
	combout => \Mux13~2_combout\);

-- Location: IOIBUF_X117_Y74_N8
\D3[18]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_D3(18),
	o => \D3[18]~input_o\);

-- Location: IOIBUF_X117_Y77_N1
\D2[18]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_D2(18),
	o => \D2[18]~input_o\);

-- Location: LCCOMB_X116_Y80_N14
\Mux13~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux13~3_combout\ = (\Sel[1]~input_o\ & ((\Mux13~2_combout\ & (\D3[18]~input_o\)) # (!\Mux13~2_combout\ & ((\D2[18]~input_o\))))) # (!\Sel[1]~input_o\ & (\Mux13~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Sel[1]~input_o\,
	datab => \Mux13~2_combout\,
	datac => \D3[18]~input_o\,
	datad => \D2[18]~input_o\,
	combout => \Mux13~3_combout\);

-- Location: IOIBUF_X117_Y73_N1
\D6[18]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_D6(18),
	o => \D6[18]~input_o\);

-- Location: IOIBUF_X117_Y73_N8
\D4[18]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_D4(18),
	o => \D4[18]~input_o\);

-- Location: LCCOMB_X116_Y80_N18
\Mux13~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux13~0_combout\ = (\Sel[1]~input_o\ & ((\D6[18]~input_o\) # ((\Sel[0]~input_o\)))) # (!\Sel[1]~input_o\ & (((!\Sel[0]~input_o\ & \D4[18]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Sel[1]~input_o\,
	datab => \D6[18]~input_o\,
	datac => \Sel[0]~input_o\,
	datad => \D4[18]~input_o\,
	combout => \Mux13~0_combout\);

-- Location: IOIBUF_X113_Y91_N15
\D7[18]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_D7(18),
	o => \D7[18]~input_o\);

-- Location: IOIBUF_X117_Y74_N1
\D5[18]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_D5(18),
	o => \D5[18]~input_o\);

-- Location: LCCOMB_X116_Y80_N12
\Mux13~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux13~1_combout\ = (\Sel[0]~input_o\ & ((\Mux13~0_combout\ & (\D7[18]~input_o\)) # (!\Mux13~0_combout\ & ((\D5[18]~input_o\))))) # (!\Sel[0]~input_o\ & (\Mux13~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Sel[0]~input_o\,
	datab => \Mux13~0_combout\,
	datac => \D7[18]~input_o\,
	datad => \D5[18]~input_o\,
	combout => \Mux13~1_combout\);

-- Location: LCCOMB_X116_Y80_N16
\Mux13~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux13~4_combout\ = (\Sel[2]~input_o\ & ((\Mux13~1_combout\))) # (!\Sel[2]~input_o\ & (\Mux13~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Mux13~3_combout\,
	datac => \Sel[2]~input_o\,
	datad => \Mux13~1_combout\,
	combout => \Mux13~4_combout\);

-- Location: IOIBUF_X117_Y35_N1
\D0[19]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_D0(19),
	o => \D0[19]~input_o\);

-- Location: IOIBUF_X117_Y38_N8
\D1[19]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_D1(19),
	o => \D1[19]~input_o\);

-- Location: LCCOMB_X116_Y38_N22
\Mux12~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux12~2_combout\ = (\Sel[1]~input_o\ & (((\Sel[0]~input_o\)))) # (!\Sel[1]~input_o\ & ((\Sel[0]~input_o\ & ((\D1[19]~input_o\))) # (!\Sel[0]~input_o\ & (\D0[19]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \D0[19]~input_o\,
	datab => \Sel[1]~input_o\,
	datac => \D1[19]~input_o\,
	datad => \Sel[0]~input_o\,
	combout => \Mux12~2_combout\);

-- Location: IOIBUF_X117_Y26_N1
\D2[19]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_D2(19),
	o => \D2[19]~input_o\);

-- Location: IOIBUF_X117_Y41_N1
\D3[19]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_D3(19),
	o => \D3[19]~input_o\);

-- Location: LCCOMB_X116_Y38_N8
\Mux12~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux12~3_combout\ = (\Mux12~2_combout\ & (((\D3[19]~input_o\)) # (!\Sel[1]~input_o\))) # (!\Mux12~2_combout\ & (\Sel[1]~input_o\ & (\D2[19]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux12~2_combout\,
	datab => \Sel[1]~input_o\,
	datac => \D2[19]~input_o\,
	datad => \D3[19]~input_o\,
	combout => \Mux12~3_combout\);

-- Location: IOIBUF_X117_Y43_N8
\D5[19]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_D5(19),
	o => \D5[19]~input_o\);

-- Location: IOIBUF_X117_Y44_N8
\D6[19]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_D6(19),
	o => \D6[19]~input_o\);

-- Location: IOIBUF_X117_Y44_N1
\D4[19]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_D4(19),
	o => \D4[19]~input_o\);

-- Location: LCCOMB_X116_Y38_N2
\Mux12~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux12~0_combout\ = (\Sel[0]~input_o\ & (((\Sel[1]~input_o\)))) # (!\Sel[0]~input_o\ & ((\Sel[1]~input_o\ & (\D6[19]~input_o\)) # (!\Sel[1]~input_o\ & ((\D4[19]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \D6[19]~input_o\,
	datab => \Sel[0]~input_o\,
	datac => \Sel[1]~input_o\,
	datad => \D4[19]~input_o\,
	combout => \Mux12~0_combout\);

-- Location: IOIBUF_X117_Y34_N8
\D7[19]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_D7(19),
	o => \D7[19]~input_o\);

-- Location: LCCOMB_X116_Y38_N12
\Mux12~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux12~1_combout\ = (\Mux12~0_combout\ & (((\D7[19]~input_o\) # (!\Sel[0]~input_o\)))) # (!\Mux12~0_combout\ & (\D5[19]~input_o\ & ((\Sel[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \D5[19]~input_o\,
	datab => \Mux12~0_combout\,
	datac => \D7[19]~input_o\,
	datad => \Sel[0]~input_o\,
	combout => \Mux12~1_combout\);

-- Location: LCCOMB_X116_Y38_N18
\Mux12~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux12~4_combout\ = (\Sel[2]~input_o\ & ((\Mux12~1_combout\))) # (!\Sel[2]~input_o\ & (\Mux12~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Sel[2]~input_o\,
	datac => \Mux12~3_combout\,
	datad => \Mux12~1_combout\,
	combout => \Mux12~4_combout\);

-- Location: IOIBUF_X117_Y27_N1
\D3[20]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_D3(20),
	o => \D3[20]~input_o\);

-- Location: IOIBUF_X117_Y32_N8
\D0[20]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_D0(20),
	o => \D0[20]~input_o\);

-- Location: IOIBUF_X117_Y42_N1
\D1[20]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_D1(20),
	o => \D1[20]~input_o\);

-- Location: LCCOMB_X116_Y38_N24
\Mux11~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux11~2_combout\ = (\Sel[0]~input_o\ & (((\Sel[1]~input_o\) # (\D1[20]~input_o\)))) # (!\Sel[0]~input_o\ & (\D0[20]~input_o\ & (!\Sel[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \D0[20]~input_o\,
	datab => \Sel[0]~input_o\,
	datac => \Sel[1]~input_o\,
	datad => \D1[20]~input_o\,
	combout => \Mux11~2_combout\);

-- Location: IOIBUF_X117_Y49_N1
\D2[20]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_D2(20),
	o => \D2[20]~input_o\);

-- Location: LCCOMB_X116_Y38_N10
\Mux11~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux11~3_combout\ = (\Mux11~2_combout\ & ((\D3[20]~input_o\) # ((!\Sel[1]~input_o\)))) # (!\Mux11~2_combout\ & (((\Sel[1]~input_o\ & \D2[20]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \D3[20]~input_o\,
	datab => \Mux11~2_combout\,
	datac => \Sel[1]~input_o\,
	datad => \D2[20]~input_o\,
	combout => \Mux11~3_combout\);

-- Location: IOIBUF_X117_Y36_N1
\D7[20]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_D7(20),
	o => \D7[20]~input_o\);

-- Location: IOIBUF_X117_Y31_N1
\D6[20]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_D6(20),
	o => \D6[20]~input_o\);

-- Location: IOIBUF_X117_Y31_N8
\D4[20]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_D4(20),
	o => \D4[20]~input_o\);

-- Location: LCCOMB_X116_Y38_N4
\Mux11~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux11~0_combout\ = (\Sel[0]~input_o\ & (((\Sel[1]~input_o\)))) # (!\Sel[0]~input_o\ & ((\Sel[1]~input_o\ & (\D6[20]~input_o\)) # (!\Sel[1]~input_o\ & ((\D4[20]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \D6[20]~input_o\,
	datab => \Sel[0]~input_o\,
	datac => \Sel[1]~input_o\,
	datad => \D4[20]~input_o\,
	combout => \Mux11~0_combout\);

-- Location: IOIBUF_X117_Y28_N8
\D5[20]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_D5(20),
	o => \D5[20]~input_o\);

-- Location: LCCOMB_X116_Y38_N14
\Mux11~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux11~1_combout\ = (\Sel[0]~input_o\ & ((\Mux11~0_combout\ & (\D7[20]~input_o\)) # (!\Mux11~0_combout\ & ((\D5[20]~input_o\))))) # (!\Sel[0]~input_o\ & (((\Mux11~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \D7[20]~input_o\,
	datab => \Sel[0]~input_o\,
	datac => \Mux11~0_combout\,
	datad => \D5[20]~input_o\,
	combout => \Mux11~1_combout\);

-- Location: LCCOMB_X116_Y38_N20
\Mux11~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux11~4_combout\ = (\Sel[2]~input_o\ & ((\Mux11~1_combout\))) # (!\Sel[2]~input_o\ & (\Mux11~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux11~3_combout\,
	datab => \Sel[2]~input_o\,
	datac => \Mux11~1_combout\,
	combout => \Mux11~4_combout\);

-- Location: IOIBUF_X61_Y91_N8
\D7[21]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_D7(21),
	o => \D7[21]~input_o\);

-- Location: IOIBUF_X77_Y91_N1
\D4[21]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_D4(21),
	o => \D4[21]~input_o\);

-- Location: IOIBUF_X77_Y91_N8
\D6[21]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_D6(21),
	o => \D6[21]~input_o\);

-- Location: LCCOMB_X67_Y90_N8
\Mux10~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux10~0_combout\ = (\Sel[1]~input_o\ & ((\Sel[0]~input_o\) # ((\D6[21]~input_o\)))) # (!\Sel[1]~input_o\ & (!\Sel[0]~input_o\ & (\D4[21]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Sel[1]~input_o\,
	datab => \Sel[0]~input_o\,
	datac => \D4[21]~input_o\,
	datad => \D6[21]~input_o\,
	combout => \Mux10~0_combout\);

-- Location: IOIBUF_X63_Y91_N15
\D5[21]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_D5(21),
	o => \D5[21]~input_o\);

-- Location: LCCOMB_X67_Y90_N10
\Mux10~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux10~1_combout\ = (\Sel[0]~input_o\ & ((\Mux10~0_combout\ & (\D7[21]~input_o\)) # (!\Mux10~0_combout\ & ((\D5[21]~input_o\))))) # (!\Sel[0]~input_o\ & (((\Mux10~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \D7[21]~input_o\,
	datab => \Sel[0]~input_o\,
	datac => \Mux10~0_combout\,
	datad => \D5[21]~input_o\,
	combout => \Mux10~1_combout\);

-- Location: IOIBUF_X66_Y91_N1
\D3[21]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_D3(21),
	o => \D3[21]~input_o\);

-- Location: IOIBUF_X79_Y91_N22
\D1[21]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_D1(21),
	o => \D1[21]~input_o\);

-- Location: IOIBUF_X66_Y91_N8
\D0[21]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_D0(21),
	o => \D0[21]~input_o\);

-- Location: LCCOMB_X67_Y90_N4
\Mux10~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux10~2_combout\ = (\Sel[1]~input_o\ & (\Sel[0]~input_o\)) # (!\Sel[1]~input_o\ & ((\Sel[0]~input_o\ & (\D1[21]~input_o\)) # (!\Sel[0]~input_o\ & ((\D0[21]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Sel[1]~input_o\,
	datab => \Sel[0]~input_o\,
	datac => \D1[21]~input_o\,
	datad => \D0[21]~input_o\,
	combout => \Mux10~2_combout\);

-- Location: IOIBUF_X44_Y91_N1
\D2[21]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_D2(21),
	o => \D2[21]~input_o\);

-- Location: LCCOMB_X67_Y90_N22
\Mux10~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux10~3_combout\ = (\Sel[1]~input_o\ & ((\Mux10~2_combout\ & (\D3[21]~input_o\)) # (!\Mux10~2_combout\ & ((\D2[21]~input_o\))))) # (!\Sel[1]~input_o\ & (((\Mux10~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Sel[1]~input_o\,
	datab => \D3[21]~input_o\,
	datac => \Mux10~2_combout\,
	datad => \D2[21]~input_o\,
	combout => \Mux10~3_combout\);

-- Location: LCCOMB_X67_Y90_N0
\Mux10~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux10~4_combout\ = (\Sel[2]~input_o\ & (\Mux10~1_combout\)) # (!\Sel[2]~input_o\ & ((\Mux10~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux10~1_combout\,
	datac => \Mux10~3_combout\,
	datad => \Sel[2]~input_o\,
	combout => \Mux10~4_combout\);

-- Location: IOIBUF_X79_Y91_N15
\D0[22]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_D0(22),
	o => \D0[22]~input_o\);

-- Location: IOIBUF_X53_Y91_N15
\D1[22]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_D1(22),
	o => \D1[22]~input_o\);

-- Location: LCCOMB_X67_Y90_N14
\Mux9~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux9~2_combout\ = (\Sel[1]~input_o\ & (\Sel[0]~input_o\)) # (!\Sel[1]~input_o\ & ((\Sel[0]~input_o\ & ((\D1[22]~input_o\))) # (!\Sel[0]~input_o\ & (\D0[22]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Sel[1]~input_o\,
	datab => \Sel[0]~input_o\,
	datac => \D0[22]~input_o\,
	datad => \D1[22]~input_o\,
	combout => \Mux9~2_combout\);

-- Location: IOIBUF_X66_Y91_N22
\D3[22]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_D3(22),
	o => \D3[22]~input_o\);

-- Location: IOIBUF_X61_Y91_N1
\D2[22]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_D2(22),
	o => \D2[22]~input_o\);

-- Location: LCCOMB_X67_Y90_N24
\Mux9~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux9~3_combout\ = (\Sel[1]~input_o\ & ((\Mux9~2_combout\ & (\D3[22]~input_o\)) # (!\Mux9~2_combout\ & ((\D2[22]~input_o\))))) # (!\Sel[1]~input_o\ & (\Mux9~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Sel[1]~input_o\,
	datab => \Mux9~2_combout\,
	datac => \D3[22]~input_o\,
	datad => \D2[22]~input_o\,
	combout => \Mux9~3_combout\);

-- Location: IOIBUF_X68_Y91_N15
\D4[22]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_D4(22),
	o => \D4[22]~input_o\);

-- Location: IOIBUF_X79_Y91_N1
\D6[22]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_D6(22),
	o => \D6[22]~input_o\);

-- Location: LCCOMB_X67_Y90_N26
\Mux9~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux9~0_combout\ = (\Sel[1]~input_o\ & ((\Sel[0]~input_o\) # ((\D6[22]~input_o\)))) # (!\Sel[1]~input_o\ & (!\Sel[0]~input_o\ & (\D4[22]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Sel[1]~input_o\,
	datab => \Sel[0]~input_o\,
	datac => \D4[22]~input_o\,
	datad => \D6[22]~input_o\,
	combout => \Mux9~0_combout\);

-- Location: IOIBUF_X50_Y91_N22
\D5[22]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_D5(22),
	o => \D5[22]~input_o\);

-- Location: IOIBUF_X68_Y91_N8
\D7[22]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_D7(22),
	o => \D7[22]~input_o\);

-- Location: LCCOMB_X67_Y90_N28
\Mux9~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux9~1_combout\ = (\Mux9~0_combout\ & (((\D7[22]~input_o\)) # (!\Sel[0]~input_o\))) # (!\Mux9~0_combout\ & (\Sel[0]~input_o\ & (\D5[22]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux9~0_combout\,
	datab => \Sel[0]~input_o\,
	datac => \D5[22]~input_o\,
	datad => \D7[22]~input_o\,
	combout => \Mux9~1_combout\);

-- Location: LCCOMB_X67_Y90_N2
\Mux9~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux9~4_combout\ = (\Sel[2]~input_o\ & ((\Mux9~1_combout\))) # (!\Sel[2]~input_o\ & (\Mux9~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Sel[2]~input_o\,
	datab => \Mux9~3_combout\,
	datad => \Mux9~1_combout\,
	combout => \Mux9~4_combout\);

-- Location: IOIBUF_X117_Y72_N8
\D1[23]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_D1(23),
	o => \D1[23]~input_o\);

-- Location: IOIBUF_X117_Y77_N8
\D0[23]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_D0(23),
	o => \D0[23]~input_o\);

-- Location: LCCOMB_X116_Y80_N28
\Mux8~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux8~2_combout\ = (\Sel[1]~input_o\ & (((\Sel[0]~input_o\)))) # (!\Sel[1]~input_o\ & ((\Sel[0]~input_o\ & (\D1[23]~input_o\)) # (!\Sel[0]~input_o\ & ((\D0[23]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Sel[1]~input_o\,
	datab => \D1[23]~input_o\,
	datac => \Sel[0]~input_o\,
	datad => \D0[23]~input_o\,
	combout => \Mux8~2_combout\);

-- Location: IOIBUF_X117_Y70_N1
\D2[23]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_D2(23),
	o => \D2[23]~input_o\);

-- Location: IOIBUF_X117_Y78_N1
\D3[23]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_D3(23),
	o => \D3[23]~input_o\);

-- Location: LCCOMB_X116_Y80_N30
\Mux8~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux8~3_combout\ = (\Sel[1]~input_o\ & ((\Mux8~2_combout\ & ((\D3[23]~input_o\))) # (!\Mux8~2_combout\ & (\D2[23]~input_o\)))) # (!\Sel[1]~input_o\ & (\Mux8~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110001100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Sel[1]~input_o\,
	datab => \Mux8~2_combout\,
	datac => \D2[23]~input_o\,
	datad => \D3[23]~input_o\,
	combout => \Mux8~3_combout\);

-- Location: IOIBUF_X53_Y91_N8
\D4[23]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_D4(23),
	o => \D4[23]~input_o\);

-- Location: IOIBUF_X66_Y91_N15
\D6[23]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_D6(23),
	o => \D6[23]~input_o\);

-- Location: LCCOMB_X67_Y90_N20
\Mux8~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux8~0_combout\ = (\Sel[1]~input_o\ & ((\Sel[0]~input_o\) # ((\D6[23]~input_o\)))) # (!\Sel[1]~input_o\ & (!\Sel[0]~input_o\ & (\D4[23]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Sel[1]~input_o\,
	datab => \Sel[0]~input_o\,
	datac => \D4[23]~input_o\,
	datad => \D6[23]~input_o\,
	combout => \Mux8~0_combout\);

-- Location: IOIBUF_X117_Y81_N1
\D5[23]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_D5(23),
	o => \D5[23]~input_o\);

-- Location: IOIBUF_X117_Y84_N1
\D7[23]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_D7(23),
	o => \D7[23]~input_o\);

-- Location: LCCOMB_X116_Y80_N26
\Mux8~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux8~1_combout\ = (\Mux8~0_combout\ & (((\D7[23]~input_o\) # (!\Sel[0]~input_o\)))) # (!\Mux8~0_combout\ & (\D5[23]~input_o\ & (\Sel[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux8~0_combout\,
	datab => \D5[23]~input_o\,
	datac => \Sel[0]~input_o\,
	datad => \D7[23]~input_o\,
	combout => \Mux8~1_combout\);

-- Location: LCCOMB_X116_Y80_N8
\Mux8~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux8~4_combout\ = (\Sel[2]~input_o\ & ((\Mux8~1_combout\))) # (!\Sel[2]~input_o\ & (\Mux8~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux8~3_combout\,
	datac => \Mux8~1_combout\,
	datad => \Sel[2]~input_o\,
	combout => \Mux8~4_combout\);

-- Location: IOIBUF_X117_Y65_N1
\D7[24]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_D7(24),
	o => \D7[24]~input_o\);

-- Location: IOIBUF_X97_Y0_N8
\D6[24]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_D6(24),
	o => \D6[24]~input_o\);

-- Location: IOIBUF_X92_Y0_N15
\D4[24]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_D4(24),
	o => \D4[24]~input_o\);

-- Location: LCCOMB_X92_Y1_N12
\Mux7~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux7~0_combout\ = (\Sel[0]~input_o\ & (((\Sel[1]~input_o\)))) # (!\Sel[0]~input_o\ & ((\Sel[1]~input_o\ & (\D6[24]~input_o\)) # (!\Sel[1]~input_o\ & ((\D4[24]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \D6[24]~input_o\,
	datab => \Sel[0]~input_o\,
	datac => \Sel[1]~input_o\,
	datad => \D4[24]~input_o\,
	combout => \Mux7~0_combout\);

-- Location: IOIBUF_X117_Y66_N1
\D5[24]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_D5(24),
	o => \D5[24]~input_o\);

-- Location: LCCOMB_X116_Y60_N4
\Mux7~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux7~1_combout\ = (\Sel[0]~input_o\ & ((\Mux7~0_combout\ & (\D7[24]~input_o\)) # (!\Mux7~0_combout\ & ((\D5[24]~input_o\))))) # (!\Sel[0]~input_o\ & (((\Mux7~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Sel[0]~input_o\,
	datab => \D7[24]~input_o\,
	datac => \Mux7~0_combout\,
	datad => \D5[24]~input_o\,
	combout => \Mux7~1_combout\);

-- Location: IOIBUF_X117_Y64_N8
\D1[24]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_D1(24),
	o => \D1[24]~input_o\);

-- Location: IOIBUF_X117_Y55_N1
\D0[24]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_D0(24),
	o => \D0[24]~input_o\);

-- Location: LCCOMB_X116_Y60_N22
\Mux7~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux7~2_combout\ = (\Sel[0]~input_o\ & ((\Sel[1]~input_o\) # ((\D1[24]~input_o\)))) # (!\Sel[0]~input_o\ & (!\Sel[1]~input_o\ & ((\D0[24]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Sel[0]~input_o\,
	datab => \Sel[1]~input_o\,
	datac => \D1[24]~input_o\,
	datad => \D0[24]~input_o\,
	combout => \Mux7~2_combout\);

-- Location: IOIBUF_X117_Y64_N1
\D3[24]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_D3(24),
	o => \D3[24]~input_o\);

-- Location: IOIBUF_X117_Y58_N8
\D2[24]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_D2(24),
	o => \D2[24]~input_o\);

-- Location: LCCOMB_X116_Y60_N16
\Mux7~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux7~3_combout\ = (\Mux7~2_combout\ & ((\D3[24]~input_o\) # ((!\Sel[1]~input_o\)))) # (!\Mux7~2_combout\ & (((\Sel[1]~input_o\ & \D2[24]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101010001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux7~2_combout\,
	datab => \D3[24]~input_o\,
	datac => \Sel[1]~input_o\,
	datad => \D2[24]~input_o\,
	combout => \Mux7~3_combout\);

-- Location: LCCOMB_X116_Y60_N26
\Mux7~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux7~4_combout\ = (\Sel[2]~input_o\ & (\Mux7~1_combout\)) # (!\Sel[2]~input_o\ & ((\Mux7~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Sel[2]~input_o\,
	datac => \Mux7~1_combout\,
	datad => \Mux7~3_combout\,
	combout => \Mux7~4_combout\);

-- Location: IOIBUF_X92_Y91_N8
\D5[25]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_D5(25),
	o => \D5[25]~input_o\);

-- Location: IOIBUF_X99_Y91_N8
\D4[25]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_D4(25),
	o => \D4[25]~input_o\);

-- Location: IOIBUF_X101_Y91_N8
\D6[25]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_D6(25),
	o => \D6[25]~input_o\);

-- Location: LCCOMB_X100_Y90_N14
\Mux6~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux6~0_combout\ = (\Sel[0]~input_o\ & (((\Sel[1]~input_o\)))) # (!\Sel[0]~input_o\ & ((\Sel[1]~input_o\ & ((\D6[25]~input_o\))) # (!\Sel[1]~input_o\ & (\D4[25]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Sel[0]~input_o\,
	datab => \D4[25]~input_o\,
	datac => \Sel[1]~input_o\,
	datad => \D6[25]~input_o\,
	combout => \Mux6~0_combout\);

-- Location: IOIBUF_X86_Y91_N8
\D7[25]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_D7(25),
	o => \D7[25]~input_o\);

-- Location: LCCOMB_X100_Y90_N0
\Mux6~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux6~1_combout\ = (\Sel[0]~input_o\ & ((\Mux6~0_combout\ & ((\D7[25]~input_o\))) # (!\Mux6~0_combout\ & (\D5[25]~input_o\)))) # (!\Sel[0]~input_o\ & (((\Mux6~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Sel[0]~input_o\,
	datab => \D5[25]~input_o\,
	datac => \Mux6~0_combout\,
	datad => \D7[25]~input_o\,
	combout => \Mux6~1_combout\);

-- Location: IOIBUF_X106_Y91_N15
\D2[25]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_D2(25),
	o => \D2[25]~input_o\);

-- Location: IOIBUF_X97_Y91_N8
\D3[25]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_D3(25),
	o => \D3[25]~input_o\);

-- Location: IOIBUF_X88_Y91_N1
\D1[25]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_D1(25),
	o => \D1[25]~input_o\);

-- Location: IOIBUF_X108_Y91_N15
\D0[25]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_D0(25),
	o => \D0[25]~input_o\);

-- Location: LCCOMB_X100_Y90_N18
\Mux6~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux6~2_combout\ = (\Sel[0]~input_o\ & ((\D1[25]~input_o\) # ((\Sel[1]~input_o\)))) # (!\Sel[0]~input_o\ & (((!\Sel[1]~input_o\ & \D0[25]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Sel[0]~input_o\,
	datab => \D1[25]~input_o\,
	datac => \Sel[1]~input_o\,
	datad => \D0[25]~input_o\,
	combout => \Mux6~2_combout\);

-- Location: LCCOMB_X100_Y90_N12
\Mux6~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux6~3_combout\ = (\Sel[1]~input_o\ & ((\Mux6~2_combout\ & ((\D3[25]~input_o\))) # (!\Mux6~2_combout\ & (\D2[25]~input_o\)))) # (!\Sel[1]~input_o\ & (((\Mux6~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \D2[25]~input_o\,
	datab => \D3[25]~input_o\,
	datac => \Sel[1]~input_o\,
	datad => \Mux6~2_combout\,
	combout => \Mux6~3_combout\);

-- Location: LCCOMB_X100_Y90_N30
\Mux6~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux6~4_combout\ = (\Sel[2]~input_o\ & (\Mux6~1_combout\)) # (!\Sel[2]~input_o\ & ((\Mux6~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Mux6~1_combout\,
	datac => \Sel[2]~input_o\,
	datad => \Mux6~3_combout\,
	combout => \Mux6~4_combout\);

-- Location: IOIBUF_X84_Y0_N22
\D2[26]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_D2(26),
	o => \D2[26]~input_o\);

-- Location: IOIBUF_X117_Y46_N8
\D0[26]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_D0(26),
	o => \D0[26]~input_o\);

-- Location: IOIBUF_X108_Y0_N8
\D1[26]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_D1(26),
	o => \D1[26]~input_o\);

-- Location: LCCOMB_X92_Y1_N18
\Mux5~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux5~2_combout\ = (\Sel[0]~input_o\ & (((\Sel[1]~input_o\) # (\D1[26]~input_o\)))) # (!\Sel[0]~input_o\ & (\D0[26]~input_o\ & (!\Sel[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \D0[26]~input_o\,
	datab => \Sel[0]~input_o\,
	datac => \Sel[1]~input_o\,
	datad => \D1[26]~input_o\,
	combout => \Mux5~2_combout\);

-- Location: IOIBUF_X117_Y46_N1
\D3[26]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_D3(26),
	o => \D3[26]~input_o\);

-- Location: LCCOMB_X92_Y1_N20
\Mux5~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux5~3_combout\ = (\Mux5~2_combout\ & (((\D3[26]~input_o\) # (!\Sel[1]~input_o\)))) # (!\Mux5~2_combout\ & (\D2[26]~input_o\ & (\Sel[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110000101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \D2[26]~input_o\,
	datab => \Mux5~2_combout\,
	datac => \Sel[1]~input_o\,
	datad => \D3[26]~input_o\,
	combout => \Mux5~3_combout\);

-- Location: IOIBUF_X57_Y91_N1
\D6[26]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_D6(26),
	o => \D6[26]~input_o\);

-- Location: IOIBUF_X57_Y91_N8
\D4[26]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_D4(26),
	o => \D4[26]~input_o\);

-- Location: LCCOMB_X92_Y1_N6
\Mux5~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux5~0_combout\ = (\Sel[1]~input_o\ & ((\D6[26]~input_o\) # ((\Sel[0]~input_o\)))) # (!\Sel[1]~input_o\ & (((\D4[26]~input_o\ & !\Sel[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \D6[26]~input_o\,
	datab => \Sel[1]~input_o\,
	datac => \D4[26]~input_o\,
	datad => \Sel[0]~input_o\,
	combout => \Mux5~0_combout\);

-- Location: IOIBUF_X104_Y0_N15
\D5[26]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_D5(26),
	o => \D5[26]~input_o\);

-- Location: IOIBUF_X104_Y0_N22
\D7[26]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_D7(26),
	o => \D7[26]~input_o\);

-- Location: LCCOMB_X92_Y1_N0
\Mux5~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux5~1_combout\ = (\Mux5~0_combout\ & (((\D7[26]~input_o\)) # (!\Sel[0]~input_o\))) # (!\Mux5~0_combout\ & (\Sel[0]~input_o\ & (\D5[26]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux5~0_combout\,
	datab => \Sel[0]~input_o\,
	datac => \D5[26]~input_o\,
	datad => \D7[26]~input_o\,
	combout => \Mux5~1_combout\);

-- Location: LCCOMB_X92_Y1_N22
\Mux5~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux5~4_combout\ = (\Sel[2]~input_o\ & ((\Mux5~1_combout\))) # (!\Sel[2]~input_o\ & (\Mux5~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Mux5~3_combout\,
	datac => \Sel[2]~input_o\,
	datad => \Mux5~1_combout\,
	combout => \Mux5~4_combout\);

-- Location: IOIBUF_X117_Y7_N8
\D3[27]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_D3(27),
	o => \D3[27]~input_o\);

-- Location: IOIBUF_X117_Y10_N8
\D1[27]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_D1(27),
	o => \D1[27]~input_o\);

-- Location: IOIBUF_X117_Y19_N1
\D0[27]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_D0(27),
	o => \D0[27]~input_o\);

-- Location: LCCOMB_X116_Y17_N16
\Mux4~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux4~2_combout\ = (\Sel[1]~input_o\ & (((\Sel[0]~input_o\)))) # (!\Sel[1]~input_o\ & ((\Sel[0]~input_o\ & (\D1[27]~input_o\)) # (!\Sel[0]~input_o\ & ((\D0[27]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \D1[27]~input_o\,
	datab => \Sel[1]~input_o\,
	datac => \Sel[0]~input_o\,
	datad => \D0[27]~input_o\,
	combout => \Mux4~2_combout\);

-- Location: IOIBUF_X117_Y13_N8
\D2[27]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_D2(27),
	o => \D2[27]~input_o\);

-- Location: LCCOMB_X116_Y17_N26
\Mux4~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux4~3_combout\ = (\Mux4~2_combout\ & ((\D3[27]~input_o\) # ((!\Sel[1]~input_o\)))) # (!\Mux4~2_combout\ & (((\Sel[1]~input_o\ & \D2[27]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \D3[27]~input_o\,
	datab => \Mux4~2_combout\,
	datac => \Sel[1]~input_o\,
	datad => \D2[27]~input_o\,
	combout => \Mux4~3_combout\);

-- Location: IOIBUF_X117_Y23_N1
\D7[27]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_D7(27),
	o => \D7[27]~input_o\);

-- Location: IOIBUF_X117_Y6_N1
\D5[27]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_D5(27),
	o => \D5[27]~input_o\);

-- Location: IOIBUF_X115_Y0_N1
\D6[27]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_D6(27),
	o => \D6[27]~input_o\);

-- Location: IOIBUF_X117_Y18_N1
\D4[27]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_D4(27),
	o => \D4[27]~input_o\);

-- Location: LCCOMB_X116_Y17_N28
\Mux4~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux4~0_combout\ = (\Sel[0]~input_o\ & (\Sel[1]~input_o\)) # (!\Sel[0]~input_o\ & ((\Sel[1]~input_o\ & (\D6[27]~input_o\)) # (!\Sel[1]~input_o\ & ((\D4[27]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Sel[0]~input_o\,
	datab => \Sel[1]~input_o\,
	datac => \D6[27]~input_o\,
	datad => \D4[27]~input_o\,
	combout => \Mux4~0_combout\);

-- Location: LCCOMB_X116_Y17_N6
\Mux4~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux4~1_combout\ = (\Sel[0]~input_o\ & ((\Mux4~0_combout\ & (\D7[27]~input_o\)) # (!\Mux4~0_combout\ & ((\D5[27]~input_o\))))) # (!\Sel[0]~input_o\ & (((\Mux4~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Sel[0]~input_o\,
	datab => \D7[27]~input_o\,
	datac => \D5[27]~input_o\,
	datad => \Mux4~0_combout\,
	combout => \Mux4~1_combout\);

-- Location: LCCOMB_X116_Y17_N20
\Mux4~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux4~4_combout\ = (\Sel[2]~input_o\ & ((\Mux4~1_combout\))) # (!\Sel[2]~input_o\ & (\Mux4~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux4~3_combout\,
	datac => \Sel[2]~input_o\,
	datad => \Mux4~1_combout\,
	combout => \Mux4~4_combout\);

-- Location: IOIBUF_X117_Y54_N1
\D3[28]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_D3(28),
	o => \D3[28]~input_o\);

-- Location: IOIBUF_X117_Y50_N8
\D1[28]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_D1(28),
	o => \D1[28]~input_o\);

-- Location: IOIBUF_X117_Y66_N8
\D0[28]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_D0(28),
	o => \D0[28]~input_o\);

-- Location: LCCOMB_X116_Y60_N28
\Mux3~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux3~2_combout\ = (\Sel[1]~input_o\ & (((\Sel[0]~input_o\)))) # (!\Sel[1]~input_o\ & ((\Sel[0]~input_o\ & (\D1[28]~input_o\)) # (!\Sel[0]~input_o\ & ((\D0[28]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \D1[28]~input_o\,
	datab => \Sel[1]~input_o\,
	datac => \Sel[0]~input_o\,
	datad => \D0[28]~input_o\,
	combout => \Mux3~2_combout\);

-- Location: IOIBUF_X117_Y56_N1
\D2[28]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_D2(28),
	o => \D2[28]~input_o\);

-- Location: LCCOMB_X116_Y60_N14
\Mux3~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux3~3_combout\ = (\Mux3~2_combout\ & ((\D3[28]~input_o\) # ((!\Sel[1]~input_o\)))) # (!\Mux3~2_combout\ & (((\Sel[1]~input_o\ & \D2[28]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \D3[28]~input_o\,
	datab => \Mux3~2_combout\,
	datac => \Sel[1]~input_o\,
	datad => \D2[28]~input_o\,
	combout => \Mux3~3_combout\);

-- Location: IOIBUF_X117_Y86_N1
\D6[28]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_D6(28),
	o => \D6[28]~input_o\);

-- Location: IOIBUF_X117_Y80_N8
\D4[28]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_D4(28),
	o => \D4[28]~input_o\);

-- Location: LCCOMB_X116_Y80_N10
\Mux3~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux3~0_combout\ = (\Sel[1]~input_o\ & ((\D6[28]~input_o\) # ((\Sel[0]~input_o\)))) # (!\Sel[1]~input_o\ & (((!\Sel[0]~input_o\ & \D4[28]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Sel[1]~input_o\,
	datab => \D6[28]~input_o\,
	datac => \Sel[0]~input_o\,
	datad => \D4[28]~input_o\,
	combout => \Mux3~0_combout\);

-- Location: IOIBUF_X117_Y83_N8
\D5[28]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_D5(28),
	o => \D5[28]~input_o\);

-- Location: IOIBUF_X117_Y86_N8
\D7[28]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_D7(28),
	o => \D7[28]~input_o\);

-- Location: LCCOMB_X116_Y80_N4
\Mux3~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux3~1_combout\ = (\Mux3~0_combout\ & (((\D7[28]~input_o\) # (!\Sel[0]~input_o\)))) # (!\Mux3~0_combout\ & (\D5[28]~input_o\ & (\Sel[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux3~0_combout\,
	datab => \D5[28]~input_o\,
	datac => \Sel[0]~input_o\,
	datad => \D7[28]~input_o\,
	combout => \Mux3~1_combout\);

-- Location: LCCOMB_X116_Y80_N22
\Mux3~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux3~4_combout\ = (\Sel[2]~input_o\ & ((\Mux3~1_combout\))) # (!\Sel[2]~input_o\ & (\Mux3~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Sel[2]~input_o\,
	datab => \Mux3~3_combout\,
	datac => \Mux3~1_combout\,
	combout => \Mux3~4_combout\);

-- Location: IOIBUF_X117_Y26_N8
\D1[29]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_D1(29),
	o => \D1[29]~input_o\);

-- Location: IOIBUF_X117_Y48_N8
\D0[29]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_D0(29),
	o => \D0[29]~input_o\);

-- Location: LCCOMB_X116_Y38_N26
\Mux2~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux2~2_combout\ = (\Sel[0]~input_o\ & ((\D1[29]~input_o\) # ((\Sel[1]~input_o\)))) # (!\Sel[0]~input_o\ & (((!\Sel[1]~input_o\ & \D0[29]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \D1[29]~input_o\,
	datab => \Sel[0]~input_o\,
	datac => \Sel[1]~input_o\,
	datad => \D0[29]~input_o\,
	combout => \Mux2~2_combout\);

-- Location: IOIBUF_X117_Y41_N8
\D3[29]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_D3(29),
	o => \D3[29]~input_o\);

-- Location: IOIBUF_X117_Y42_N8
\D2[29]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_D2(29),
	o => \D2[29]~input_o\);

-- Location: LCCOMB_X116_Y38_N28
\Mux2~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux2~3_combout\ = (\Mux2~2_combout\ & ((\D3[29]~input_o\) # ((!\Sel[1]~input_o\)))) # (!\Mux2~2_combout\ & (((\D2[29]~input_o\ & \Sel[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux2~2_combout\,
	datab => \D3[29]~input_o\,
	datac => \D2[29]~input_o\,
	datad => \Sel[1]~input_o\,
	combout => \Mux2~3_combout\);

-- Location: IOIBUF_X117_Y27_N8
\D6[29]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_D6(29),
	o => \D6[29]~input_o\);

-- Location: IOIBUF_X117_Y39_N1
\D4[29]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_D4(29),
	o => \D4[29]~input_o\);

-- Location: LCCOMB_X116_Y38_N30
\Mux2~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux2~0_combout\ = (\Sel[1]~input_o\ & ((\D6[29]~input_o\) # ((\Sel[0]~input_o\)))) # (!\Sel[1]~input_o\ & (((\D4[29]~input_o\ & !\Sel[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \D6[29]~input_o\,
	datab => \Sel[1]~input_o\,
	datac => \D4[29]~input_o\,
	datad => \Sel[0]~input_o\,
	combout => \Mux2~0_combout\);

-- Location: IOIBUF_X117_Y29_N1
\D7[29]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_D7(29),
	o => \D7[29]~input_o\);

-- Location: IOIBUF_X117_Y48_N1
\D5[29]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_D5(29),
	o => \D5[29]~input_o\);

-- Location: LCCOMB_X116_Y38_N0
\Mux2~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux2~1_combout\ = (\Mux2~0_combout\ & (((\D7[29]~input_o\)) # (!\Sel[0]~input_o\))) # (!\Mux2~0_combout\ & (\Sel[0]~input_o\ & ((\D5[29]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux2~0_combout\,
	datab => \Sel[0]~input_o\,
	datac => \D7[29]~input_o\,
	datad => \D5[29]~input_o\,
	combout => \Mux2~1_combout\);

-- Location: LCCOMB_X116_Y38_N6
\Mux2~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux2~4_combout\ = (\Sel[2]~input_o\ & ((\Mux2~1_combout\))) # (!\Sel[2]~input_o\ & (\Mux2~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Mux2~3_combout\,
	datac => \Mux2~1_combout\,
	datad => \Sel[2]~input_o\,
	combout => \Mux2~4_combout\);

-- Location: IOIBUF_X63_Y91_N22
\D4[30]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_D4(30),
	o => \D4[30]~input_o\);

-- Location: IOIBUF_X68_Y91_N1
\D6[30]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_D6(30),
	o => \D6[30]~input_o\);

-- Location: LCCOMB_X67_Y90_N30
\Mux1~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux1~0_combout\ = (\Sel[1]~input_o\ & ((\Sel[0]~input_o\) # ((\D6[30]~input_o\)))) # (!\Sel[1]~input_o\ & (!\Sel[0]~input_o\ & (\D4[30]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Sel[1]~input_o\,
	datab => \Sel[0]~input_o\,
	datac => \D4[30]~input_o\,
	datad => \D6[30]~input_o\,
	combout => \Mux1~0_combout\);

-- Location: IOIBUF_X53_Y91_N22
\D5[30]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_D5(30),
	o => \D5[30]~input_o\);

-- Location: IOIBUF_X48_Y91_N8
\D7[30]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_D7(30),
	o => \D7[30]~input_o\);

-- Location: LCCOMB_X67_Y90_N16
\Mux1~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux1~1_combout\ = (\Mux1~0_combout\ & (((\D7[30]~input_o\)) # (!\Sel[0]~input_o\))) # (!\Mux1~0_combout\ & (\Sel[0]~input_o\ & (\D5[30]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux1~0_combout\,
	datab => \Sel[0]~input_o\,
	datac => \D5[30]~input_o\,
	datad => \D7[30]~input_o\,
	combout => \Mux1~1_combout\);

-- Location: IOIBUF_X53_Y91_N1
\D2[30]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_D2(30),
	o => \D2[30]~input_o\);

-- Location: IOIBUF_X75_Y91_N1
\D3[30]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_D3(30),
	o => \D3[30]~input_o\);

-- Location: IOIBUF_X48_Y91_N15
\D0[30]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_D0(30),
	o => \D0[30]~input_o\);

-- Location: IOIBUF_X70_Y91_N8
\D1[30]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_D1(30),
	o => \D1[30]~input_o\);

-- Location: LCCOMB_X67_Y90_N18
\Mux1~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux1~2_combout\ = (\Sel[1]~input_o\ & (\Sel[0]~input_o\)) # (!\Sel[1]~input_o\ & ((\Sel[0]~input_o\ & ((\D1[30]~input_o\))) # (!\Sel[0]~input_o\ & (\D0[30]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Sel[1]~input_o\,
	datab => \Sel[0]~input_o\,
	datac => \D0[30]~input_o\,
	datad => \D1[30]~input_o\,
	combout => \Mux1~2_combout\);

-- Location: LCCOMB_X67_Y90_N12
\Mux1~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux1~3_combout\ = (\Sel[1]~input_o\ & ((\Mux1~2_combout\ & ((\D3[30]~input_o\))) # (!\Mux1~2_combout\ & (\D2[30]~input_o\)))) # (!\Sel[1]~input_o\ & (((\Mux1~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Sel[1]~input_o\,
	datab => \D2[30]~input_o\,
	datac => \D3[30]~input_o\,
	datad => \Mux1~2_combout\,
	combout => \Mux1~3_combout\);

-- Location: LCCOMB_X67_Y90_N6
\Mux1~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux1~4_combout\ = (\Sel[2]~input_o\ & (\Mux1~1_combout\)) # (!\Sel[2]~input_o\ & ((\Mux1~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Sel[2]~input_o\,
	datab => \Mux1~1_combout\,
	datad => \Mux1~3_combout\,
	combout => \Mux1~4_combout\);

-- Location: IOIBUF_X117_Y18_N8
\D2[31]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_D2(31),
	o => \D2[31]~input_o\);

-- Location: IOIBUF_X117_Y17_N8
\D3[31]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_D3(31),
	o => \D3[31]~input_o\);

-- Location: IOIBUF_X117_Y21_N8
\D1[31]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_D1(31),
	o => \D1[31]~input_o\);

-- Location: IOIBUF_X117_Y15_N8
\D0[31]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_D0(31),
	o => \D0[31]~input_o\);

-- Location: LCCOMB_X116_Y17_N10
\Mux0~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux0~2_combout\ = (\Sel[1]~input_o\ & (((\Sel[0]~input_o\)))) # (!\Sel[1]~input_o\ & ((\Sel[0]~input_o\ & (\D1[31]~input_o\)) # (!\Sel[0]~input_o\ & ((\D0[31]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \D1[31]~input_o\,
	datab => \Sel[1]~input_o\,
	datac => \Sel[0]~input_o\,
	datad => \D0[31]~input_o\,
	combout => \Mux0~2_combout\);

-- Location: LCCOMB_X116_Y17_N4
\Mux0~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux0~3_combout\ = (\Sel[1]~input_o\ & ((\Mux0~2_combout\ & ((\D3[31]~input_o\))) # (!\Mux0~2_combout\ & (\D2[31]~input_o\)))) # (!\Sel[1]~input_o\ & (((\Mux0~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \D2[31]~input_o\,
	datab => \D3[31]~input_o\,
	datac => \Sel[1]~input_o\,
	datad => \Mux0~2_combout\,
	combout => \Mux0~3_combout\);

-- Location: IOIBUF_X117_Y14_N1
\D4[31]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_D4(31),
	o => \D4[31]~input_o\);

-- Location: IOIBUF_X117_Y6_N8
\D6[31]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_D6(31),
	o => \D6[31]~input_o\);

-- Location: LCCOMB_X116_Y17_N14
\Mux0~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux0~0_combout\ = (\Sel[1]~input_o\ & (((\Sel[0]~input_o\) # (\D6[31]~input_o\)))) # (!\Sel[1]~input_o\ & (\D4[31]~input_o\ & (!\Sel[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \D4[31]~input_o\,
	datab => \Sel[1]~input_o\,
	datac => \Sel[0]~input_o\,
	datad => \D6[31]~input_o\,
	combout => \Mux0~0_combout\);

-- Location: IOIBUF_X117_Y7_N1
\D5[31]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_D5(31),
	o => \D5[31]~input_o\);

-- Location: IOIBUF_X117_Y23_N8
\D7[31]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_D7(31),
	o => \D7[31]~input_o\);

-- Location: LCCOMB_X116_Y17_N0
\Mux0~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux0~1_combout\ = (\Sel[0]~input_o\ & ((\Mux0~0_combout\ & ((\D7[31]~input_o\))) # (!\Mux0~0_combout\ & (\D5[31]~input_o\)))) # (!\Sel[0]~input_o\ & (\Mux0~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110001100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Sel[0]~input_o\,
	datab => \Mux0~0_combout\,
	datac => \D5[31]~input_o\,
	datad => \D7[31]~input_o\,
	combout => \Mux0~1_combout\);

-- Location: LCCOMB_X116_Y17_N30
\Mux0~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux0~4_combout\ = (\Sel[2]~input_o\ & ((\Mux0~1_combout\))) # (!\Sel[2]~input_o\ & (\Mux0~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Mux0~3_combout\,
	datac => \Sel[2]~input_o\,
	datad => \Mux0~1_combout\,
	combout => \Mux0~4_combout\);

\ww_Out\(0) <= \Out[0]~output_o\;

\ww_Out\(1) <= \Out[1]~output_o\;

\ww_Out\(2) <= \Out[2]~output_o\;

\ww_Out\(3) <= \Out[3]~output_o\;

\ww_Out\(4) <= \Out[4]~output_o\;

\ww_Out\(5) <= \Out[5]~output_o\;

\ww_Out\(6) <= \Out[6]~output_o\;

\ww_Out\(7) <= \Out[7]~output_o\;

\ww_Out\(8) <= \Out[8]~output_o\;

\ww_Out\(9) <= \Out[9]~output_o\;

\ww_Out\(10) <= \Out[10]~output_o\;

\ww_Out\(11) <= \Out[11]~output_o\;

\ww_Out\(12) <= \Out[12]~output_o\;

\ww_Out\(13) <= \Out[13]~output_o\;

\ww_Out\(14) <= \Out[14]~output_o\;

\ww_Out\(15) <= \Out[15]~output_o\;

\ww_Out\(16) <= \Out[16]~output_o\;

\ww_Out\(17) <= \Out[17]~output_o\;

\ww_Out\(18) <= \Out[18]~output_o\;

\ww_Out\(19) <= \Out[19]~output_o\;

\ww_Out\(20) <= \Out[20]~output_o\;

\ww_Out\(21) <= \Out[21]~output_o\;

\ww_Out\(22) <= \Out[22]~output_o\;

\ww_Out\(23) <= \Out[23]~output_o\;

\ww_Out\(24) <= \Out[24]~output_o\;

\ww_Out\(25) <= \Out[25]~output_o\;

\ww_Out\(26) <= \Out[26]~output_o\;

\ww_Out\(27) <= \Out[27]~output_o\;

\ww_Out\(28) <= \Out[28]~output_o\;

\ww_Out\(29) <= \Out[29]~output_o\;

\ww_Out\(30) <= \Out[30]~output_o\;

\ww_Out\(31) <= \Out[31]~output_o\;
END structure;


