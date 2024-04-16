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

-- DATE "04/16/2024 01:39:12"

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

ENTITY 	ALU IS
    PORT (
	funct7 : IN std_logic;
	Sel : IN std_logic_vector(2 DOWNTO 0);
	A : IN std_logic_vector(31 DOWNTO 0);
	B : IN std_logic_vector(31 DOWNTO 0);
	D0 : OUT std_logic_vector(31 DOWNTO 0);
	D1 : OUT std_logic_vector(31 DOWNTO 0);
	D2 : OUT std_logic_vector(31 DOWNTO 0);
	D3 : OUT std_logic_vector(31 DOWNTO 0);
	D4 : OUT std_logic_vector(31 DOWNTO 0);
	D5 : OUT std_logic_vector(31 DOWNTO 0);
	D6 : OUT std_logic_vector(31 DOWNTO 0);
	D7 : OUT std_logic_vector(31 DOWNTO 0)
	);
END ALU;

-- Design Ports Information
-- Sel[0]	=>  Location: PIN_V13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Sel[1]	=>  Location: PIN_AE13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Sel[2]	=>  Location: PIN_AE3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D0[0]	=>  Location: PIN_E14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D0[1]	=>  Location: PIN_AF19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D0[2]	=>  Location: PIN_V17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D0[3]	=>  Location: PIN_H13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D0[4]	=>  Location: PIN_C15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D0[5]	=>  Location: PIN_D22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D0[6]	=>  Location: PIN_A25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D0[7]	=>  Location: PIN_E20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D0[8]	=>  Location: PIN_C24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D0[9]	=>  Location: PIN_H24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D0[10]	=>  Location: PIN_A24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D0[11]	=>  Location: PIN_V22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D0[12]	=>  Location: PIN_Y25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D0[13]	=>  Location: PIN_U22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D0[14]	=>  Location: PIN_B1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D0[15]	=>  Location: PIN_D9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D0[16]	=>  Location: PIN_E9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D0[17]	=>  Location: PIN_K20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D0[18]	=>  Location: PIN_J25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D0[19]	=>  Location: PIN_L22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D0[20]	=>  Location: PIN_R19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D0[21]	=>  Location: PIN_P19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D0[22]	=>  Location: PIN_R20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D0[23]	=>  Location: PIN_AC24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D0[24]	=>  Location: PIN_AB24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D0[25]	=>  Location: PIN_AE19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D0[26]	=>  Location: PIN_W23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D0[27]	=>  Location: PIN_P23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D0[28]	=>  Location: PIN_L23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D0[29]	=>  Location: PIN_E8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D0[30]	=>  Location: PIN_AB26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D0[31]	=>  Location: PIN_A11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D1[0]	=>  Location: PIN_AD16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D1[1]	=>  Location: PIN_AF17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D1[2]	=>  Location: PIN_AF16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D1[3]	=>  Location: PIN_J12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D1[4]	=>  Location: PIN_W15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D1[5]	=>  Location: PIN_E12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D1[6]	=>  Location: PIN_J14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D1[7]	=>  Location: PIN_B10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D1[8]	=>  Location: PIN_A16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D1[9]	=>  Location: PIN_C11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D1[10]	=>  Location: PIN_J11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D1[11]	=>  Location: PIN_F23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D1[12]	=>  Location: PIN_G24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D1[13]	=>  Location: PIN_H12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D1[14]	=>  Location: PIN_H14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D1[15]	=>  Location: PIN_E11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D1[16]	=>  Location: PIN_AF15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D1[17]	=>  Location: PIN_AC16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D1[18]	=>  Location: PIN_G11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D1[19]	=>  Location: PIN_C12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D1[20]	=>  Location: PIN_AC15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D1[21]	=>  Location: PIN_E15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D1[22]	=>  Location: PIN_G14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D1[23]	=>  Location: PIN_B5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D1[24]	=>  Location: PIN_A17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D1[25]	=>  Location: PIN_AE15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D1[26]	=>  Location: PIN_AB15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D1[27]	=>  Location: PIN_F24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D1[28]	=>  Location: PIN_AD15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D1[29]	=>  Location: PIN_B15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D1[30]	=>  Location: PIN_A10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D1[31]	=>  Location: PIN_C13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D2[0]	=>  Location: PIN_D26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D2[1]	=>  Location: PIN_AD21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D2[2]	=>  Location: PIN_AD13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D2[3]	=>  Location: PIN_AC12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D2[4]	=>  Location: PIN_C9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D2[5]	=>  Location: PIN_AF2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D2[6]	=>  Location: PIN_AF11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D2[7]	=>  Location: PIN_C7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D2[8]	=>  Location: PIN_E2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D2[9]	=>  Location: PIN_C8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D2[10]	=>  Location: PIN_E1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D2[11]	=>  Location: PIN_Y14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D2[12]	=>  Location: PIN_C2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D2[13]	=>  Location: PIN_AD19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D2[14]	=>  Location: PIN_AC5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D2[15]	=>  Location: PIN_AC21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D2[16]	=>  Location: PIN_AA22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D2[17]	=>  Location: PIN_U12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D2[18]	=>  Location: PIN_W9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D2[19]	=>  Location: PIN_D2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D2[20]	=>  Location: PIN_AD8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D2[21]	=>  Location: PIN_Y13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D2[22]	=>  Location: PIN_D1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D2[23]	=>  Location: PIN_AA20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D2[24]	=>  Location: PIN_Y12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D2[25]	=>  Location: PIN_AF9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D2[26]	=>  Location: PIN_D7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D2[27]	=>  Location: PIN_C1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D2[28]	=>  Location: PIN_AF12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D2[29]	=>  Location: PIN_V11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D2[30]	=>  Location: PIN_AB12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D2[31]	=>  Location: PIN_AC9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D3[0]	=>  Location: PIN_J15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D3[1]	=>  Location: PIN_AE11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D3[2]	=>  Location: PIN_AD11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D3[3]	=>  Location: PIN_AC10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D3[4]	=>  Location: PIN_AF20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D3[5]	=>  Location: PIN_AD4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D3[6]	=>  Location: PIN_AF3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D3[7]	=>  Location: PIN_E7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D3[8]	=>  Location: PIN_W13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D3[9]	=>  Location: PIN_W14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D3[10]	=>  Location: PIN_F8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D3[11]	=>  Location: PIN_AC11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D3[12]	=>  Location: PIN_AA7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D3[13]	=>  Location: PIN_AB7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D3[14]	=>  Location: PIN_W19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D3[15]	=>  Location: PIN_AE2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D3[16]	=>  Location: PIN_W12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D3[17]	=>  Location: PIN_AE1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D3[18]	=>  Location: PIN_AE21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D3[19]	=>  Location: PIN_AF22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D3[20]	=>  Location: PIN_W10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D3[21]	=>  Location: PIN_AB18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D3[22]	=>  Location: PIN_AC22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D3[23]	=>  Location: PIN_AD7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D3[24]	=>  Location: PIN_W17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D3[25]	=>  Location: PIN_AD9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D3[26]	=>  Location: PIN_U18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D3[27]	=>  Location: PIN_AE10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D3[28]	=>  Location: PIN_AB11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D3[29]	=>  Location: PIN_AF6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D3[30]	=>  Location: PIN_V19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D3[31]	=>  Location: PIN_AD10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D4[0]	=>  Location: PIN_E19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D4[1]	=>  Location: PIN_H15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D4[2]	=>  Location: PIN_E16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D4[3]	=>  Location: PIN_A5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D4[4]	=>  Location: PIN_D15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D4[5]	=>  Location: PIN_G22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D4[6]	=>  Location: PIN_E21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D4[7]	=>  Location: PIN_E23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D4[8]	=>  Location: PIN_B26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D4[9]	=>  Location: PIN_E17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D4[10]	=>  Location: PIN_J18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D4[11]	=>  Location: PIN_AA25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D4[12]	=>  Location: PIN_Y26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D4[13]	=>  Location: PIN_U19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D4[14]	=>  Location: PIN_G9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D4[15]	=>  Location: PIN_A3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D4[16]	=>  Location: PIN_G10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D4[17]	=>  Location: PIN_M22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D4[18]	=>  Location: PIN_K22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D4[19]	=>  Location: PIN_M26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D4[20]	=>  Location: PIN_P24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D4[21]	=>  Location: PIN_P20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D4[22]	=>  Location: PIN_R23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D4[23]	=>  Location: PIN_Y22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D4[24]	=>  Location: PIN_AB23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D4[25]	=>  Location: PIN_C21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D4[26]	=>  Location: PIN_AA24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D4[27]	=>  Location: PIN_U26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D4[28]	=>  Location: PIN_J26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D4[29]	=>  Location: PIN_C5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D4[30]	=>  Location: PIN_V23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D4[31]	=>  Location: PIN_AF18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D5[0]	=>  Location: PIN_K13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D5[1]	=>  Location: PIN_V16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D5[2]	=>  Location: PIN_AD17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D5[3]	=>  Location: PIN_A13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D5[4]	=>  Location: PIN_C14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D5[5]	=>  Location: PIN_D16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D5[6]	=>  Location: PIN_A7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D5[7]	=>  Location: PIN_AC14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D5[8]	=>  Location: PIN_AE14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D5[9]	=>  Location: PIN_W16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D5[10]	=>  Location: PIN_E26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D5[11]	=>  Location: PIN_F26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D5[12]	=>  Location: PIN_AB14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D5[13]	=>  Location: PIN_H11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D5[14]	=>  Location: PIN_AD18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D5[15]	=>  Location: PIN_U16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D5[16]	=>  Location: PIN_H26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D5[17]	=>  Location: PIN_V15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D5[18]	=>  Location: PIN_A8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D5[19]	=>  Location: PIN_B22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D5[20]	=>  Location: PIN_A15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D5[21]	=>  Location: PIN_AE18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D5[22]	=>  Location: PIN_B13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D5[23]	=>  Location: PIN_D13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D5[24]	=>  Location: PIN_A9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D5[25]	=>  Location: PIN_AE17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D5[26]	=>  Location: PIN_C16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D5[27]	=>  Location: PIN_AA15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D5[28]	=>  Location: PIN_A6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D5[29]	=>  Location: PIN_A12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D5[30]	=>  Location: PIN_AC17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D5[31]	=>  Location: PIN_D14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D6[0]	=>  Location: PIN_H16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D6[1]	=>  Location: PIN_A20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D6[2]	=>  Location: PIN_D19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D6[3]	=>  Location: PIN_J13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D6[4]	=>  Location: PIN_E13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D6[5]	=>  Location: PIN_J19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D6[6]	=>  Location: PIN_H18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D6[7]	=>  Location: PIN_D23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D6[8]	=>  Location: PIN_C25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D6[9]	=>  Location: PIN_C20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D6[10]	=>  Location: PIN_G17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D6[11]	=>  Location: PIN_U23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D6[12]	=>  Location: PIN_V24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D6[13]	=>  Location: PIN_AC26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D6[14]	=>  Location: PIN_D8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D6[15]	=>  Location: PIN_H10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D6[16]	=>  Location: PIN_C4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D6[17]	=>  Location: PIN_L21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D6[18]	=>  Location: PIN_L26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D6[19]	=>  Location: PIN_L25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D6[20]	=>  Location: PIN_T24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D6[21]	=>  Location: PIN_R22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D6[22]	=>  Location: PIN_R24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D6[23]	=>  Location: PIN_Y21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D6[24]	=>  Location: PIN_AA23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D6[25]	=>  Location: PIN_Y17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D6[26]	=>  Location: PIN_AE26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D6[27]	=>  Location: PIN_U25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D6[28]	=>  Location: PIN_M25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D6[29]	=>  Location: PIN_H9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D6[30]	=>  Location: PIN_AD25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D6[31]	=>  Location: PIN_J23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D7[0]	=>  Location: PIN_H23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D7[1]	=>  Location: PIN_B11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D7[2]	=>  Location: PIN_G25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D7[3]	=>  Location: PIN_B17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D7[4]	=>  Location: PIN_K12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D7[5]	=>  Location: PIN_C22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D7[6]	=>  Location: PIN_E22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D7[7]	=>  Location: PIN_C23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D7[8]	=>  Location: PIN_C26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D7[9]	=>  Location: PIN_AC18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D7[10]	=>  Location: PIN_J17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D7[11]	=>  Location: PIN_T21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D7[12]	=>  Location: PIN_AA26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D7[13]	=>  Location: PIN_AC25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D7[14]	=>  Location: PIN_C10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D7[15]	=>  Location: PIN_C3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D7[16]	=>  Location: PIN_B2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D7[17]	=>  Location: PIN_K24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D7[18]	=>  Location: PIN_M23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D7[19]	=>  Location: PIN_L24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D7[20]	=>  Location: PIN_R25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D7[21]	=>  Location: PIN_T22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D7[22]	=>  Location: PIN_T25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D7[23]	=>  Location: PIN_Y23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D7[24]	=>  Location: PIN_AA21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D7[25]	=>  Location: PIN_F15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D7[26]	=>  Location: PIN_AC23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D7[27]	=>  Location: PIN_T26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D7[28]	=>  Location: PIN_K26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D7[29]	=>  Location: PIN_D10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D7[30]	=>  Location: PIN_Y24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D7[31]	=>  Location: PIN_K23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- funct7	=>  Location: PIN_B4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[0]	=>  Location: PIN_H22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[0]	=>  Location: PIN_C17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[1]	=>  Location: PIN_D25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[1]	=>  Location: PIN_D18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[2]	=>  Location: PIN_C19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[2]	=>  Location: PIN_A18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[3]	=>  Location: PIN_A19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[3]	=>  Location: PIN_B18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[4]	=>  Location: PIN_D17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[4]	=>  Location: PIN_C18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[5]	=>  Location: PIN_B23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[5]	=>  Location: PIN_H17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[6]	=>  Location: PIN_D20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[6]	=>  Location: PIN_D21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[7]	=>  Location: PIN_J16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[7]	=>  Location: PIN_E18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[8]	=>  Location: PIN_E24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[8]	=>  Location: PIN_B25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[9]	=>  Location: PIN_G15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[9]	=>  Location: PIN_AA17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[10]	=>  Location: PIN_F21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[10]	=>  Location: PIN_A23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[11]	=>  Location: PIN_U24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[11]	=>  Location: PIN_AD22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[12]	=>  Location: PIN_W26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[12]	=>  Location: PIN_V26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[13]	=>  Location: PIN_W25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[13]	=>  Location: PIN_T23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[14]	=>  Location: PIN_D11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[14]	=>  Location: PIN_D12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[15]	=>  Location: PIN_B7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[15]	=>  Location: PIN_C6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[16]	=>  Location: PIN_A2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[16]	=>  Location: PIN_A4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[17]	=>  Location: PIN_K19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[17]	=>  Location: PIN_K21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[18]	=>  Location: PIN_G26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[18]	=>  Location: PIN_H25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[19]	=>  Location: PIN_J20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[19]	=>  Location: PIN_G23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[20]	=>  Location: PIN_N20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[20]	=>  Location: PIN_N23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[21]	=>  Location: PIN_M19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[21]	=>  Location: PIN_N22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[22]	=>  Location: PIN_L19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[22]	=>  Location: PIN_M24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[23]	=>  Location: PIN_W22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[23]	=>  Location: PIN_AD23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[24]	=>  Location: PIN_AF23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[24]	=>  Location: PIN_V21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[25]	=>  Location: PIN_A21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[25]	=>  Location: PIN_B21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[26]	=>  Location: PIN_AE25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[26]	=>  Location: PIN_AD26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[27]	=>  Location: PIN_N19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[27]	=>  Location: PIN_N24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[28]	=>  Location: PIN_J24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[28]	=>  Location: PIN_E25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[29]	=>  Location: PIN_B6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[29]	=>  Location: PIN_B9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[30]	=>  Location: PIN_W24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[30]	=>  Location: PIN_T19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[31]	=>  Location: PIN_B19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[31]	=>  Location: PIN_A22,	 I/O Standard: 2.5 V,	 Current Strength: Default


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
SIGNAL ww_Sel : std_logic_vector(2 DOWNTO 0);
SIGNAL ww_A : std_logic_vector(31 DOWNTO 0);
SIGNAL ww_B : std_logic_vector(31 DOWNTO 0);
SIGNAL ww_D0 : std_logic_vector(31 DOWNTO 0);
SIGNAL ww_D1 : std_logic_vector(31 DOWNTO 0);
SIGNAL ww_D2 : std_logic_vector(31 DOWNTO 0);
SIGNAL ww_D3 : std_logic_vector(31 DOWNTO 0);
SIGNAL ww_D4 : std_logic_vector(31 DOWNTO 0);
SIGNAL ww_D5 : std_logic_vector(31 DOWNTO 0);
SIGNAL ww_D6 : std_logic_vector(31 DOWNTO 0);
SIGNAL ww_D7 : std_logic_vector(31 DOWNTO 0);
SIGNAL \Sel[0]~input_o\ : std_logic;
SIGNAL \Sel[1]~input_o\ : std_logic;
SIGNAL \Sel[2]~input_o\ : std_logic;
SIGNAL \D0[0]~output_o\ : std_logic;
SIGNAL \D0[1]~output_o\ : std_logic;
SIGNAL \D0[2]~output_o\ : std_logic;
SIGNAL \D0[3]~output_o\ : std_logic;
SIGNAL \D0[4]~output_o\ : std_logic;
SIGNAL \D0[5]~output_o\ : std_logic;
SIGNAL \D0[6]~output_o\ : std_logic;
SIGNAL \D0[7]~output_o\ : std_logic;
SIGNAL \D0[8]~output_o\ : std_logic;
SIGNAL \D0[9]~output_o\ : std_logic;
SIGNAL \D0[10]~output_o\ : std_logic;
SIGNAL \D0[11]~output_o\ : std_logic;
SIGNAL \D0[12]~output_o\ : std_logic;
SIGNAL \D0[13]~output_o\ : std_logic;
SIGNAL \D0[14]~output_o\ : std_logic;
SIGNAL \D0[15]~output_o\ : std_logic;
SIGNAL \D0[16]~output_o\ : std_logic;
SIGNAL \D0[17]~output_o\ : std_logic;
SIGNAL \D0[18]~output_o\ : std_logic;
SIGNAL \D0[19]~output_o\ : std_logic;
SIGNAL \D0[20]~output_o\ : std_logic;
SIGNAL \D0[21]~output_o\ : std_logic;
SIGNAL \D0[22]~output_o\ : std_logic;
SIGNAL \D0[23]~output_o\ : std_logic;
SIGNAL \D0[24]~output_o\ : std_logic;
SIGNAL \D0[25]~output_o\ : std_logic;
SIGNAL \D0[26]~output_o\ : std_logic;
SIGNAL \D0[27]~output_o\ : std_logic;
SIGNAL \D0[28]~output_o\ : std_logic;
SIGNAL \D0[29]~output_o\ : std_logic;
SIGNAL \D0[30]~output_o\ : std_logic;
SIGNAL \D0[31]~output_o\ : std_logic;
SIGNAL \D1[0]~output_o\ : std_logic;
SIGNAL \D1[1]~output_o\ : std_logic;
SIGNAL \D1[2]~output_o\ : std_logic;
SIGNAL \D1[3]~output_o\ : std_logic;
SIGNAL \D1[4]~output_o\ : std_logic;
SIGNAL \D1[5]~output_o\ : std_logic;
SIGNAL \D1[6]~output_o\ : std_logic;
SIGNAL \D1[7]~output_o\ : std_logic;
SIGNAL \D1[8]~output_o\ : std_logic;
SIGNAL \D1[9]~output_o\ : std_logic;
SIGNAL \D1[10]~output_o\ : std_logic;
SIGNAL \D1[11]~output_o\ : std_logic;
SIGNAL \D1[12]~output_o\ : std_logic;
SIGNAL \D1[13]~output_o\ : std_logic;
SIGNAL \D1[14]~output_o\ : std_logic;
SIGNAL \D1[15]~output_o\ : std_logic;
SIGNAL \D1[16]~output_o\ : std_logic;
SIGNAL \D1[17]~output_o\ : std_logic;
SIGNAL \D1[18]~output_o\ : std_logic;
SIGNAL \D1[19]~output_o\ : std_logic;
SIGNAL \D1[20]~output_o\ : std_logic;
SIGNAL \D1[21]~output_o\ : std_logic;
SIGNAL \D1[22]~output_o\ : std_logic;
SIGNAL \D1[23]~output_o\ : std_logic;
SIGNAL \D1[24]~output_o\ : std_logic;
SIGNAL \D1[25]~output_o\ : std_logic;
SIGNAL \D1[26]~output_o\ : std_logic;
SIGNAL \D1[27]~output_o\ : std_logic;
SIGNAL \D1[28]~output_o\ : std_logic;
SIGNAL \D1[29]~output_o\ : std_logic;
SIGNAL \D1[30]~output_o\ : std_logic;
SIGNAL \D1[31]~output_o\ : std_logic;
SIGNAL \D2[0]~output_o\ : std_logic;
SIGNAL \D2[1]~output_o\ : std_logic;
SIGNAL \D2[2]~output_o\ : std_logic;
SIGNAL \D2[3]~output_o\ : std_logic;
SIGNAL \D2[4]~output_o\ : std_logic;
SIGNAL \D2[5]~output_o\ : std_logic;
SIGNAL \D2[6]~output_o\ : std_logic;
SIGNAL \D2[7]~output_o\ : std_logic;
SIGNAL \D2[8]~output_o\ : std_logic;
SIGNAL \D2[9]~output_o\ : std_logic;
SIGNAL \D2[10]~output_o\ : std_logic;
SIGNAL \D2[11]~output_o\ : std_logic;
SIGNAL \D2[12]~output_o\ : std_logic;
SIGNAL \D2[13]~output_o\ : std_logic;
SIGNAL \D2[14]~output_o\ : std_logic;
SIGNAL \D2[15]~output_o\ : std_logic;
SIGNAL \D2[16]~output_o\ : std_logic;
SIGNAL \D2[17]~output_o\ : std_logic;
SIGNAL \D2[18]~output_o\ : std_logic;
SIGNAL \D2[19]~output_o\ : std_logic;
SIGNAL \D2[20]~output_o\ : std_logic;
SIGNAL \D2[21]~output_o\ : std_logic;
SIGNAL \D2[22]~output_o\ : std_logic;
SIGNAL \D2[23]~output_o\ : std_logic;
SIGNAL \D2[24]~output_o\ : std_logic;
SIGNAL \D2[25]~output_o\ : std_logic;
SIGNAL \D2[26]~output_o\ : std_logic;
SIGNAL \D2[27]~output_o\ : std_logic;
SIGNAL \D2[28]~output_o\ : std_logic;
SIGNAL \D2[29]~output_o\ : std_logic;
SIGNAL \D2[30]~output_o\ : std_logic;
SIGNAL \D2[31]~output_o\ : std_logic;
SIGNAL \D3[0]~output_o\ : std_logic;
SIGNAL \D3[1]~output_o\ : std_logic;
SIGNAL \D3[2]~output_o\ : std_logic;
SIGNAL \D3[3]~output_o\ : std_logic;
SIGNAL \D3[4]~output_o\ : std_logic;
SIGNAL \D3[5]~output_o\ : std_logic;
SIGNAL \D3[6]~output_o\ : std_logic;
SIGNAL \D3[7]~output_o\ : std_logic;
SIGNAL \D3[8]~output_o\ : std_logic;
SIGNAL \D3[9]~output_o\ : std_logic;
SIGNAL \D3[10]~output_o\ : std_logic;
SIGNAL \D3[11]~output_o\ : std_logic;
SIGNAL \D3[12]~output_o\ : std_logic;
SIGNAL \D3[13]~output_o\ : std_logic;
SIGNAL \D3[14]~output_o\ : std_logic;
SIGNAL \D3[15]~output_o\ : std_logic;
SIGNAL \D3[16]~output_o\ : std_logic;
SIGNAL \D3[17]~output_o\ : std_logic;
SIGNAL \D3[18]~output_o\ : std_logic;
SIGNAL \D3[19]~output_o\ : std_logic;
SIGNAL \D3[20]~output_o\ : std_logic;
SIGNAL \D3[21]~output_o\ : std_logic;
SIGNAL \D3[22]~output_o\ : std_logic;
SIGNAL \D3[23]~output_o\ : std_logic;
SIGNAL \D3[24]~output_o\ : std_logic;
SIGNAL \D3[25]~output_o\ : std_logic;
SIGNAL \D3[26]~output_o\ : std_logic;
SIGNAL \D3[27]~output_o\ : std_logic;
SIGNAL \D3[28]~output_o\ : std_logic;
SIGNAL \D3[29]~output_o\ : std_logic;
SIGNAL \D3[30]~output_o\ : std_logic;
SIGNAL \D3[31]~output_o\ : std_logic;
SIGNAL \D4[0]~output_o\ : std_logic;
SIGNAL \D4[1]~output_o\ : std_logic;
SIGNAL \D4[2]~output_o\ : std_logic;
SIGNAL \D4[3]~output_o\ : std_logic;
SIGNAL \D4[4]~output_o\ : std_logic;
SIGNAL \D4[5]~output_o\ : std_logic;
SIGNAL \D4[6]~output_o\ : std_logic;
SIGNAL \D4[7]~output_o\ : std_logic;
SIGNAL \D4[8]~output_o\ : std_logic;
SIGNAL \D4[9]~output_o\ : std_logic;
SIGNAL \D4[10]~output_o\ : std_logic;
SIGNAL \D4[11]~output_o\ : std_logic;
SIGNAL \D4[12]~output_o\ : std_logic;
SIGNAL \D4[13]~output_o\ : std_logic;
SIGNAL \D4[14]~output_o\ : std_logic;
SIGNAL \D4[15]~output_o\ : std_logic;
SIGNAL \D4[16]~output_o\ : std_logic;
SIGNAL \D4[17]~output_o\ : std_logic;
SIGNAL \D4[18]~output_o\ : std_logic;
SIGNAL \D4[19]~output_o\ : std_logic;
SIGNAL \D4[20]~output_o\ : std_logic;
SIGNAL \D4[21]~output_o\ : std_logic;
SIGNAL \D4[22]~output_o\ : std_logic;
SIGNAL \D4[23]~output_o\ : std_logic;
SIGNAL \D4[24]~output_o\ : std_logic;
SIGNAL \D4[25]~output_o\ : std_logic;
SIGNAL \D4[26]~output_o\ : std_logic;
SIGNAL \D4[27]~output_o\ : std_logic;
SIGNAL \D4[28]~output_o\ : std_logic;
SIGNAL \D4[29]~output_o\ : std_logic;
SIGNAL \D4[30]~output_o\ : std_logic;
SIGNAL \D4[31]~output_o\ : std_logic;
SIGNAL \D5[0]~output_o\ : std_logic;
SIGNAL \D5[1]~output_o\ : std_logic;
SIGNAL \D5[2]~output_o\ : std_logic;
SIGNAL \D5[3]~output_o\ : std_logic;
SIGNAL \D5[4]~output_o\ : std_logic;
SIGNAL \D5[5]~output_o\ : std_logic;
SIGNAL \D5[6]~output_o\ : std_logic;
SIGNAL \D5[7]~output_o\ : std_logic;
SIGNAL \D5[8]~output_o\ : std_logic;
SIGNAL \D5[9]~output_o\ : std_logic;
SIGNAL \D5[10]~output_o\ : std_logic;
SIGNAL \D5[11]~output_o\ : std_logic;
SIGNAL \D5[12]~output_o\ : std_logic;
SIGNAL \D5[13]~output_o\ : std_logic;
SIGNAL \D5[14]~output_o\ : std_logic;
SIGNAL \D5[15]~output_o\ : std_logic;
SIGNAL \D5[16]~output_o\ : std_logic;
SIGNAL \D5[17]~output_o\ : std_logic;
SIGNAL \D5[18]~output_o\ : std_logic;
SIGNAL \D5[19]~output_o\ : std_logic;
SIGNAL \D5[20]~output_o\ : std_logic;
SIGNAL \D5[21]~output_o\ : std_logic;
SIGNAL \D5[22]~output_o\ : std_logic;
SIGNAL \D5[23]~output_o\ : std_logic;
SIGNAL \D5[24]~output_o\ : std_logic;
SIGNAL \D5[25]~output_o\ : std_logic;
SIGNAL \D5[26]~output_o\ : std_logic;
SIGNAL \D5[27]~output_o\ : std_logic;
SIGNAL \D5[28]~output_o\ : std_logic;
SIGNAL \D5[29]~output_o\ : std_logic;
SIGNAL \D5[30]~output_o\ : std_logic;
SIGNAL \D5[31]~output_o\ : std_logic;
SIGNAL \D6[0]~output_o\ : std_logic;
SIGNAL \D6[1]~output_o\ : std_logic;
SIGNAL \D6[2]~output_o\ : std_logic;
SIGNAL \D6[3]~output_o\ : std_logic;
SIGNAL \D6[4]~output_o\ : std_logic;
SIGNAL \D6[5]~output_o\ : std_logic;
SIGNAL \D6[6]~output_o\ : std_logic;
SIGNAL \D6[7]~output_o\ : std_logic;
SIGNAL \D6[8]~output_o\ : std_logic;
SIGNAL \D6[9]~output_o\ : std_logic;
SIGNAL \D6[10]~output_o\ : std_logic;
SIGNAL \D6[11]~output_o\ : std_logic;
SIGNAL \D6[12]~output_o\ : std_logic;
SIGNAL \D6[13]~output_o\ : std_logic;
SIGNAL \D6[14]~output_o\ : std_logic;
SIGNAL \D6[15]~output_o\ : std_logic;
SIGNAL \D6[16]~output_o\ : std_logic;
SIGNAL \D6[17]~output_o\ : std_logic;
SIGNAL \D6[18]~output_o\ : std_logic;
SIGNAL \D6[19]~output_o\ : std_logic;
SIGNAL \D6[20]~output_o\ : std_logic;
SIGNAL \D6[21]~output_o\ : std_logic;
SIGNAL \D6[22]~output_o\ : std_logic;
SIGNAL \D6[23]~output_o\ : std_logic;
SIGNAL \D6[24]~output_o\ : std_logic;
SIGNAL \D6[25]~output_o\ : std_logic;
SIGNAL \D6[26]~output_o\ : std_logic;
SIGNAL \D6[27]~output_o\ : std_logic;
SIGNAL \D6[28]~output_o\ : std_logic;
SIGNAL \D6[29]~output_o\ : std_logic;
SIGNAL \D6[30]~output_o\ : std_logic;
SIGNAL \D6[31]~output_o\ : std_logic;
SIGNAL \D7[0]~output_o\ : std_logic;
SIGNAL \D7[1]~output_o\ : std_logic;
SIGNAL \D7[2]~output_o\ : std_logic;
SIGNAL \D7[3]~output_o\ : std_logic;
SIGNAL \D7[4]~output_o\ : std_logic;
SIGNAL \D7[5]~output_o\ : std_logic;
SIGNAL \D7[6]~output_o\ : std_logic;
SIGNAL \D7[7]~output_o\ : std_logic;
SIGNAL \D7[8]~output_o\ : std_logic;
SIGNAL \D7[9]~output_o\ : std_logic;
SIGNAL \D7[10]~output_o\ : std_logic;
SIGNAL \D7[11]~output_o\ : std_logic;
SIGNAL \D7[12]~output_o\ : std_logic;
SIGNAL \D7[13]~output_o\ : std_logic;
SIGNAL \D7[14]~output_o\ : std_logic;
SIGNAL \D7[15]~output_o\ : std_logic;
SIGNAL \D7[16]~output_o\ : std_logic;
SIGNAL \D7[17]~output_o\ : std_logic;
SIGNAL \D7[18]~output_o\ : std_logic;
SIGNAL \D7[19]~output_o\ : std_logic;
SIGNAL \D7[20]~output_o\ : std_logic;
SIGNAL \D7[21]~output_o\ : std_logic;
SIGNAL \D7[22]~output_o\ : std_logic;
SIGNAL \D7[23]~output_o\ : std_logic;
SIGNAL \D7[24]~output_o\ : std_logic;
SIGNAL \D7[25]~output_o\ : std_logic;
SIGNAL \D7[26]~output_o\ : std_logic;
SIGNAL \D7[27]~output_o\ : std_logic;
SIGNAL \D7[28]~output_o\ : std_logic;
SIGNAL \D7[29]~output_o\ : std_logic;
SIGNAL \D7[30]~output_o\ : std_logic;
SIGNAL \D7[31]~output_o\ : std_logic;
SIGNAL \B[0]~input_o\ : std_logic;
SIGNAL \A[0]~input_o\ : std_logic;
SIGNAL \funct7~input_o\ : std_logic;
SIGNAL \D0_in|AddSub|adder_inst|full_adder[0]|S~combout\ : std_logic;
SIGNAL \A[1]~input_o\ : std_logic;
SIGNAL \B[1]~input_o\ : std_logic;
SIGNAL \D0_in|AddSub|adder_inst|full_adder[1]|S~combout\ : std_logic;
SIGNAL \B[2]~input_o\ : std_logic;
SIGNAL \A[2]~input_o\ : std_logic;
SIGNAL \D0_in|AddSub|adder_inst|full_adder[2]|S~combout\ : std_logic;
SIGNAL \B[3]~input_o\ : std_logic;
SIGNAL \A[3]~input_o\ : std_logic;
SIGNAL \D0_in|AddSub|adder_inst|full_adder[3]|S~combout\ : std_logic;
SIGNAL \A[4]~input_o\ : std_logic;
SIGNAL \B[4]~input_o\ : std_logic;
SIGNAL \D0_in|AddSub|adder_inst|full_adder[4]|S~combout\ : std_logic;
SIGNAL \B[5]~input_o\ : std_logic;
SIGNAL \A[5]~input_o\ : std_logic;
SIGNAL \D0_in|AddSub|adder_inst|full_adder[5]|S~combout\ : std_logic;
SIGNAL \B[6]~input_o\ : std_logic;
SIGNAL \A[6]~input_o\ : std_logic;
SIGNAL \D0_in|AddSub|adder_inst|full_adder[6]|S~combout\ : std_logic;
SIGNAL \A[7]~input_o\ : std_logic;
SIGNAL \B[7]~input_o\ : std_logic;
SIGNAL \D0_in|AddSub|adder_inst|full_adder[7]|S~combout\ : std_logic;
SIGNAL \A[8]~input_o\ : std_logic;
SIGNAL \B[8]~input_o\ : std_logic;
SIGNAL \D0_in|AddSub|adder_inst|full_adder[8]|S~combout\ : std_logic;
SIGNAL \A[9]~input_o\ : std_logic;
SIGNAL \B[9]~input_o\ : std_logic;
SIGNAL \D0_in|AddSub|adder_inst|full_adder[9]|S~combout\ : std_logic;
SIGNAL \A[10]~input_o\ : std_logic;
SIGNAL \B[10]~input_o\ : std_logic;
SIGNAL \D0_in|AddSub|adder_inst|full_adder[10]|S~combout\ : std_logic;
SIGNAL \A[11]~input_o\ : std_logic;
SIGNAL \B[11]~input_o\ : std_logic;
SIGNAL \D0_in|AddSub|adder_inst|full_adder[11]|S~combout\ : std_logic;
SIGNAL \B[12]~input_o\ : std_logic;
SIGNAL \A[12]~input_o\ : std_logic;
SIGNAL \D0_in|AddSub|adder_inst|full_adder[12]|S~combout\ : std_logic;
SIGNAL \A[13]~input_o\ : std_logic;
SIGNAL \B[13]~input_o\ : std_logic;
SIGNAL \D0_in|AddSub|adder_inst|full_adder[13]|S~combout\ : std_logic;
SIGNAL \A[14]~input_o\ : std_logic;
SIGNAL \B[14]~input_o\ : std_logic;
SIGNAL \D0_in|AddSub|adder_inst|full_adder[14]|S~combout\ : std_logic;
SIGNAL \B[15]~input_o\ : std_logic;
SIGNAL \A[15]~input_o\ : std_logic;
SIGNAL \D0_in|AddSub|adder_inst|full_adder[15]|S~combout\ : std_logic;
SIGNAL \A[16]~input_o\ : std_logic;
SIGNAL \B[16]~input_o\ : std_logic;
SIGNAL \D0_in|AddSub|adder_inst|full_adder[16]|S~combout\ : std_logic;
SIGNAL \B[17]~input_o\ : std_logic;
SIGNAL \A[17]~input_o\ : std_logic;
SIGNAL \D0_in|AddSub|adder_inst|full_adder[17]|S~combout\ : std_logic;
SIGNAL \A[18]~input_o\ : std_logic;
SIGNAL \B[18]~input_o\ : std_logic;
SIGNAL \D0_in|AddSub|adder_inst|full_adder[18]|S~combout\ : std_logic;
SIGNAL \A[19]~input_o\ : std_logic;
SIGNAL \B[19]~input_o\ : std_logic;
SIGNAL \D0_in|AddSub|adder_inst|full_adder[19]|S~combout\ : std_logic;
SIGNAL \A[20]~input_o\ : std_logic;
SIGNAL \B[20]~input_o\ : std_logic;
SIGNAL \D0_in|AddSub|adder_inst|full_adder[20]|S~combout\ : std_logic;
SIGNAL \B[21]~input_o\ : std_logic;
SIGNAL \A[21]~input_o\ : std_logic;
SIGNAL \D0_in|AddSub|adder_inst|full_adder[21]|S~combout\ : std_logic;
SIGNAL \B[22]~input_o\ : std_logic;
SIGNAL \A[22]~input_o\ : std_logic;
SIGNAL \D0_in|AddSub|adder_inst|full_adder[22]|S~combout\ : std_logic;
SIGNAL \B[23]~input_o\ : std_logic;
SIGNAL \A[23]~input_o\ : std_logic;
SIGNAL \D0_in|AddSub|adder_inst|full_adder[23]|S~combout\ : std_logic;
SIGNAL \A[24]~input_o\ : std_logic;
SIGNAL \B[24]~input_o\ : std_logic;
SIGNAL \D0_in|AddSub|adder_inst|full_adder[24]|S~combout\ : std_logic;
SIGNAL \A[25]~input_o\ : std_logic;
SIGNAL \B[25]~input_o\ : std_logic;
SIGNAL \D0_in|AddSub|adder_inst|full_adder[25]|S~combout\ : std_logic;
SIGNAL \A[26]~input_o\ : std_logic;
SIGNAL \B[26]~input_o\ : std_logic;
SIGNAL \D0_in|AddSub|adder_inst|full_adder[26]|S~combout\ : std_logic;
SIGNAL \A[27]~input_o\ : std_logic;
SIGNAL \B[27]~input_o\ : std_logic;
SIGNAL \D0_in|AddSub|adder_inst|full_adder[27]|S~combout\ : std_logic;
SIGNAL \A[28]~input_o\ : std_logic;
SIGNAL \B[28]~input_o\ : std_logic;
SIGNAL \D0_in|AddSub|adder_inst|full_adder[28]|S~combout\ : std_logic;
SIGNAL \B[29]~input_o\ : std_logic;
SIGNAL \A[29]~input_o\ : std_logic;
SIGNAL \D0_in|AddSub|adder_inst|full_adder[29]|S~combout\ : std_logic;
SIGNAL \B[30]~input_o\ : std_logic;
SIGNAL \A[30]~input_o\ : std_logic;
SIGNAL \D0_in|AddSub|adder_inst|full_adder[30]|S~combout\ : std_logic;
SIGNAL \A[31]~input_o\ : std_logic;
SIGNAL \B[31]~input_o\ : std_logic;
SIGNAL \D0_in|AddSub|adder_inst|full_adder[31]|S~combout\ : std_logic;
SIGNAL \D1_in|SLL|ShiftLeft0~25_combout\ : std_logic;
SIGNAL \D1_in|SLL|ShiftLeft0~168_combout\ : std_logic;
SIGNAL \D1_in|SLL|ShiftLeft0~26_combout\ : std_logic;
SIGNAL \D5_in|Sel_SR|D5[17]~28_combout\ : std_logic;
SIGNAL \D1_in|SLL|ShiftLeft0~27_combout\ : std_logic;
SIGNAL \D1_in|SLL|ShiftLeft0~24_combout\ : std_logic;
SIGNAL \D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~10_combout\ : std_logic;
SIGNAL \D1_in|SLL|ShiftLeft0~28_combout\ : std_logic;
SIGNAL \D1_in|SLL|ShiftLeft0~29_combout\ : std_logic;
SIGNAL \D1_in|SLL|ShiftLeft0~30_combout\ : std_logic;
SIGNAL \D1_in|SLL|ShiftLeft0~31_combout\ : std_logic;
SIGNAL \D1_in|SLL|ShiftLeft0~33_combout\ : std_logic;
SIGNAL \D1_in|SLL|ShiftLeft0~32_combout\ : std_logic;
SIGNAL \D1_in|SLL|ShiftLeft0~34_combout\ : std_logic;
SIGNAL \D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~11_combout\ : std_logic;
SIGNAL \D1_in|SLL|ShiftLeft0~35_combout\ : std_logic;
SIGNAL \D1_in|SLL|ShiftLeft0~36_combout\ : std_logic;
SIGNAL \D1_in|SLL|ShiftLeft0~37_combout\ : std_logic;
SIGNAL \D1_in|SLL|ShiftLeft0~38_combout\ : std_logic;
SIGNAL \D1_in|SLL|ShiftLeft0~169_combout\ : std_logic;
SIGNAL \D1_in|SLL|ShiftLeft0~39_combout\ : std_logic;
SIGNAL \D1_in|SLL|ShiftLeft0~40_combout\ : std_logic;
SIGNAL \D1_in|SLL|ShiftLeft0~41_combout\ : std_logic;
SIGNAL \D1_in|SLL|ShiftLeft0~42_combout\ : std_logic;
SIGNAL \D1_in|SLL|ShiftLeft0~44_combout\ : std_logic;
SIGNAL \D1_in|SLL|ShiftLeft0~45_combout\ : std_logic;
SIGNAL \D1_in|SLL|ShiftLeft0~43_combout\ : std_logic;
SIGNAL \D1_in|SLL|ShiftLeft0~46_combout\ : std_logic;
SIGNAL \D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~12_combout\ : std_logic;
SIGNAL \D1_in|SLL|ShiftLeft0~48_combout\ : std_logic;
SIGNAL \D1_in|SLL|ShiftLeft0~47_combout\ : std_logic;
SIGNAL \D1_in|SLL|ShiftLeft0~49_combout\ : std_logic;
SIGNAL \D1_in|SLL|ShiftLeft0~50_combout\ : std_logic;
SIGNAL \D1_in|SLL|ShiftLeft0~51_combout\ : std_logic;
SIGNAL \D1_in|SLL|ShiftLeft0~52_combout\ : std_logic;
SIGNAL \D1_in|SLL|ShiftLeft0~53_combout\ : std_logic;
SIGNAL \D1_in|SLL|ShiftLeft0~54_combout\ : std_logic;
SIGNAL \D1_in|SLL|ShiftLeft0~55_combout\ : std_logic;
SIGNAL \D1_in|SLL|ShiftLeft0~56_combout\ : std_logic;
SIGNAL \D1_in|SLL|ShiftLeft0~57_combout\ : std_logic;
SIGNAL \D1_in|SLL|ShiftLeft0~58_combout\ : std_logic;
SIGNAL \D1_in|SLL|ShiftLeft0~59_combout\ : std_logic;
SIGNAL \D1_in|SLL|ShiftLeft0~60_combout\ : std_logic;
SIGNAL \D1_in|SLL|ShiftLeft0~61_combout\ : std_logic;
SIGNAL \D1_in|SLL|ShiftLeft0~62_combout\ : std_logic;
SIGNAL \D1_in|SLL|ShiftLeft0~63_combout\ : std_logic;
SIGNAL \D1_in|SLL|ShiftLeft0~64_combout\ : std_logic;
SIGNAL \D1_in|SLL|ShiftLeft0~65_combout\ : std_logic;
SIGNAL \D1_in|SLL|ShiftLeft0~67_combout\ : std_logic;
SIGNAL \D1_in|SLL|ShiftLeft0~68_combout\ : std_logic;
SIGNAL \D1_in|SLL|ShiftLeft0~69_combout\ : std_logic;
SIGNAL \D1_in|SLL|ShiftLeft0~66_combout\ : std_logic;
SIGNAL \D1_in|SLL|ShiftLeft0~70_combout\ : std_logic;
SIGNAL \D1_in|SLL|ShiftLeft0~71_combout\ : std_logic;
SIGNAL \D1_in|SLL|ShiftLeft0~72_combout\ : std_logic;
SIGNAL \D1_in|SLL|ShiftLeft0~73_combout\ : std_logic;
SIGNAL \D1_in|SLL|ShiftLeft0~74_combout\ : std_logic;
SIGNAL \D1_in|SLL|ShiftLeft0~78_combout\ : std_logic;
SIGNAL \D1_in|SLL|ShiftLeft0~75_combout\ : std_logic;
SIGNAL \D1_in|SLL|ShiftLeft0~76_combout\ : std_logic;
SIGNAL \D1_in|SLL|ShiftLeft0~77_combout\ : std_logic;
SIGNAL \D1_in|SLL|ShiftLeft0~79_combout\ : std_logic;
SIGNAL \D1_in|SLL|ShiftLeft0~80_combout\ : std_logic;
SIGNAL \D1_in|SLL|ShiftLeft0~81_combout\ : std_logic;
SIGNAL \D1_in|SLL|ShiftLeft0~82_combout\ : std_logic;
SIGNAL \D1_in|SLL|ShiftLeft0~83_combout\ : std_logic;
SIGNAL \D1_in|SLL|ShiftLeft0~84_combout\ : std_logic;
SIGNAL \D1_in|SLL|ShiftLeft0~88_combout\ : std_logic;
SIGNAL \D1_in|SLL|ShiftLeft0~85_combout\ : std_logic;
SIGNAL \D1_in|SLL|ShiftLeft0~86_combout\ : std_logic;
SIGNAL \D1_in|SLL|ShiftLeft0~87_combout\ : std_logic;
SIGNAL \D1_in|SLL|ShiftLeft0~89_combout\ : std_logic;
SIGNAL \D1_in|SLL|ShiftLeft0~170_combout\ : std_logic;
SIGNAL \D1_in|SLL|ShiftLeft0~90_combout\ : std_logic;
SIGNAL \D1_in|SLL|ShiftLeft0~91_combout\ : std_logic;
SIGNAL \D1_in|SLL|ShiftLeft0~92_combout\ : std_logic;
SIGNAL \D1_in|SLL|ShiftLeft0~93_combout\ : std_logic;
SIGNAL \D1_in|SLL|ShiftLeft0~95_combout\ : std_logic;
SIGNAL \D1_in|SLL|ShiftLeft0~96_combout\ : std_logic;
SIGNAL \D1_in|SLL|ShiftLeft0~97_combout\ : std_logic;
SIGNAL \D1_in|SLL|ShiftLeft0~94_combout\ : std_logic;
SIGNAL \D1_in|SLL|ShiftLeft0~98_combout\ : std_logic;
SIGNAL \D1_in|SLL|ShiftLeft0~171_combout\ : std_logic;
SIGNAL \D1_in|SLL|ShiftLeft0~100_combout\ : std_logic;
SIGNAL \D1_in|SLL|ShiftLeft0~101_combout\ : std_logic;
SIGNAL \D1_in|SLL|ShiftLeft0~102_combout\ : std_logic;
SIGNAL \D1_in|SLL|ShiftLeft0~99_combout\ : std_logic;
SIGNAL \D1_in|SLL|ShiftLeft0~103_combout\ : std_logic;
SIGNAL \D1_in|SLL|ShiftLeft0~172_combout\ : std_logic;
SIGNAL \D1_in|SLL|ShiftLeft0~104_combout\ : std_logic;
SIGNAL \D1_in|SLL|ShiftLeft0~105_combout\ : std_logic;
SIGNAL \D1_in|SLL|ShiftLeft0~106_combout\ : std_logic;
SIGNAL \D1_in|SLL|ShiftLeft0~107_combout\ : std_logic;
SIGNAL \D1_in|SLL|ShiftLeft0~108_combout\ : std_logic;
SIGNAL \D1_in|SLL|ShiftLeft0~109_combout\ : std_logic;
SIGNAL \D1_in|SLL|ShiftLeft0~110_combout\ : std_logic;
SIGNAL \D1_in|SLL|ShiftLeft0~111_combout\ : std_logic;
SIGNAL \D1_in|SLL|ShiftLeft0~112_combout\ : std_logic;
SIGNAL \D1_in|SLL|ShiftLeft0~173_combout\ : std_logic;
SIGNAL \D1_in|SLL|ShiftLeft0~114_combout\ : std_logic;
SIGNAL \D1_in|SLL|ShiftLeft0~115_combout\ : std_logic;
SIGNAL \D1_in|SLL|ShiftLeft0~116_combout\ : std_logic;
SIGNAL \D1_in|SLL|ShiftLeft0~117_combout\ : std_logic;
SIGNAL \D1_in|SLL|ShiftLeft0~174_combout\ : std_logic;
SIGNAL \D1_in|SLL|ShiftLeft0~120_combout\ : std_logic;
SIGNAL \D1_in|SLL|ShiftLeft0~121_combout\ : std_logic;
SIGNAL \D1_in|SLL|ShiftLeft0~122_combout\ : std_logic;
SIGNAL \D1_in|SLL|ShiftLeft0~123_combout\ : std_logic;
SIGNAL \D1_in|SLL|ShiftLeft0~118_combout\ : std_logic;
SIGNAL \D1_in|SLL|ShiftLeft0~119_combout\ : std_logic;
SIGNAL \D1_in|SLL|ShiftLeft0~124_combout\ : std_logic;
SIGNAL \D1_in|SLL|ShiftLeft0~125_combout\ : std_logic;
SIGNAL \D1_in|SLL|ShiftLeft0~126_combout\ : std_logic;
SIGNAL \D1_in|SLL|ShiftLeft0~127_combout\ : std_logic;
SIGNAL \D1_in|SLL|ShiftLeft0~128_combout\ : std_logic;
SIGNAL \D1_in|SLL|ShiftLeft0~129_combout\ : std_logic;
SIGNAL \D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~13_combout\ : std_logic;
SIGNAL \D1_in|SLL|ShiftLeft0~175_combout\ : std_logic;
SIGNAL \D1_in|SLL|ShiftLeft0~130_combout\ : std_logic;
SIGNAL \D1_in|SLL|ShiftLeft0~131_combout\ : std_logic;
SIGNAL \D1_in|SLL|ShiftLeft0~132_combout\ : std_logic;
SIGNAL \D1_in|SLL|ShiftLeft0~133_combout\ : std_logic;
SIGNAL \D1_in|SLL|ShiftLeft0~134_combout\ : std_logic;
SIGNAL \D1_in|SLL|ShiftLeft0~135_combout\ : std_logic;
SIGNAL \D1_in|SLL|ShiftLeft0~136_combout\ : std_logic;
SIGNAL \D1_in|SLL|ShiftLeft0~176_combout\ : std_logic;
SIGNAL \D1_in|SLL|ShiftLeft0~137_combout\ : std_logic;
SIGNAL \D1_in|SLL|ShiftLeft0~177_combout\ : std_logic;
SIGNAL \D1_in|SLL|ShiftLeft0~138_combout\ : std_logic;
SIGNAL \D1_in|SLL|ShiftLeft0~139_combout\ : std_logic;
SIGNAL \D1_in|SLL|ShiftLeft0~140_combout\ : std_logic;
SIGNAL \D1_in|SLL|ShiftLeft0~141_combout\ : std_logic;
SIGNAL \D1_in|SLL|ShiftLeft0~142_combout\ : std_logic;
SIGNAL \D1_in|SLL|ShiftLeft0~178_combout\ : std_logic;
SIGNAL \D1_in|SLL|ShiftLeft0~143_combout\ : std_logic;
SIGNAL \D1_in|SLL|ShiftLeft0~144_combout\ : std_logic;
SIGNAL \D1_in|SLL|ShiftLeft0~145_combout\ : std_logic;
SIGNAL \D1_in|SLL|ShiftLeft0~146_combout\ : std_logic;
SIGNAL \D1_in|SLL|ShiftLeft0~147_combout\ : std_logic;
SIGNAL \D1_in|SLL|ShiftLeft0~148_combout\ : std_logic;
SIGNAL \D1_in|SLL|ShiftLeft0~149_combout\ : std_logic;
SIGNAL \D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~14_combout\ : std_logic;
SIGNAL \D1_in|SLL|ShiftLeft0~150_combout\ : std_logic;
SIGNAL \D1_in|SLL|ShiftLeft0~151_combout\ : std_logic;
SIGNAL \D1_in|SLL|ShiftLeft0~152_combout\ : std_logic;
SIGNAL \D1_in|SLL|ShiftLeft0~153_combout\ : std_logic;
SIGNAL \D1_in|SLL|ShiftLeft0~154_combout\ : std_logic;
SIGNAL \D1_in|SLL|ShiftLeft0~155_combout\ : std_logic;
SIGNAL \D1_in|SLL|ShiftLeft0~156_combout\ : std_logic;
SIGNAL \D1_in|SLL|ShiftLeft0~157_combout\ : std_logic;
SIGNAL \D1_in|SLL|ShiftLeft0~158_combout\ : std_logic;
SIGNAL \D1_in|SLL|ShiftLeft0~113_combout\ : std_logic;
SIGNAL \D1_in|SLL|ShiftLeft0~159_combout\ : std_logic;
SIGNAL \D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~15_combout\ : std_logic;
SIGNAL \D1_in|SLL|ShiftLeft0~160_combout\ : std_logic;
SIGNAL \D1_in|SLL|ShiftLeft0~161_combout\ : std_logic;
SIGNAL \D1_in|SLL|ShiftLeft0~162_combout\ : std_logic;
SIGNAL \D1_in|SLL|ShiftLeft0~163_combout\ : std_logic;
SIGNAL \D1_in|SLL|ShiftLeft0~164_combout\ : std_logic;
SIGNAL \D1_in|SLL|ShiftLeft0~165_combout\ : std_logic;
SIGNAL \D1_in|SLL|ShiftLeft0~166_combout\ : std_logic;
SIGNAL \D1_in|SLL|ShiftLeft0~167_combout\ : std_logic;
SIGNAL \D2_in|LT_inst|LessThan0~1_cout\ : std_logic;
SIGNAL \D2_in|LT_inst|LessThan0~3_cout\ : std_logic;
SIGNAL \D2_in|LT_inst|LessThan0~5_cout\ : std_logic;
SIGNAL \D2_in|LT_inst|LessThan0~7_cout\ : std_logic;
SIGNAL \D2_in|LT_inst|LessThan0~9_cout\ : std_logic;
SIGNAL \D2_in|LT_inst|LessThan0~11_cout\ : std_logic;
SIGNAL \D2_in|LT_inst|LessThan0~13_cout\ : std_logic;
SIGNAL \D2_in|LT_inst|LessThan0~15_cout\ : std_logic;
SIGNAL \D2_in|LT_inst|LessThan0~17_cout\ : std_logic;
SIGNAL \D2_in|LT_inst|LessThan0~19_cout\ : std_logic;
SIGNAL \D2_in|LT_inst|LessThan0~21_cout\ : std_logic;
SIGNAL \D2_in|LT_inst|LessThan0~23_cout\ : std_logic;
SIGNAL \D2_in|LT_inst|LessThan0~25_cout\ : std_logic;
SIGNAL \D2_in|LT_inst|LessThan0~27_cout\ : std_logic;
SIGNAL \D2_in|LT_inst|LessThan0~29_cout\ : std_logic;
SIGNAL \D2_in|LT_inst|LessThan0~31_cout\ : std_logic;
SIGNAL \D2_in|LT_inst|LessThan0~33_cout\ : std_logic;
SIGNAL \D2_in|LT_inst|LessThan0~35_cout\ : std_logic;
SIGNAL \D2_in|LT_inst|LessThan0~37_cout\ : std_logic;
SIGNAL \D2_in|LT_inst|LessThan0~39_cout\ : std_logic;
SIGNAL \D2_in|LT_inst|LessThan0~41_cout\ : std_logic;
SIGNAL \D2_in|LT_inst|LessThan0~43_cout\ : std_logic;
SIGNAL \D2_in|LT_inst|LessThan0~45_cout\ : std_logic;
SIGNAL \D2_in|LT_inst|LessThan0~47_cout\ : std_logic;
SIGNAL \D2_in|LT_inst|LessThan0~49_cout\ : std_logic;
SIGNAL \D2_in|LT_inst|LessThan0~51_cout\ : std_logic;
SIGNAL \D2_in|LT_inst|LessThan0~53_cout\ : std_logic;
SIGNAL \D2_in|LT_inst|LessThan0~55_cout\ : std_logic;
SIGNAL \D2_in|LT_inst|LessThan0~57_cout\ : std_logic;
SIGNAL \D2_in|LT_inst|LessThan0~59_cout\ : std_logic;
SIGNAL \D2_in|LT_inst|LessThan0~61_cout\ : std_logic;
SIGNAL \D2_in|LT_inst|LessThan0~62_combout\ : std_logic;
SIGNAL \D3_in|SLTU|Mux0~0_combout\ : std_logic;
SIGNAL \D4_in|Xor1|S[0]~0_combout\ : std_logic;
SIGNAL \D4_in|Xor1|S[1]~1_combout\ : std_logic;
SIGNAL \D4_in|Xor1|S[2]~2_combout\ : std_logic;
SIGNAL \D4_in|Xor1|S[3]~3_combout\ : std_logic;
SIGNAL \D4_in|Xor1|S[4]~4_combout\ : std_logic;
SIGNAL \D4_in|Xor1|S[5]~5_combout\ : std_logic;
SIGNAL \D4_in|Xor1|S[6]~6_combout\ : std_logic;
SIGNAL \D4_in|Xor1|S[7]~7_combout\ : std_logic;
SIGNAL \D4_in|Xor1|S[8]~8_combout\ : std_logic;
SIGNAL \D4_in|Xor1|S[9]~9_combout\ : std_logic;
SIGNAL \D4_in|Xor1|S[10]~10_combout\ : std_logic;
SIGNAL \D4_in|Xor1|S[11]~11_combout\ : std_logic;
SIGNAL \D4_in|Xor1|S[12]~12_combout\ : std_logic;
SIGNAL \D4_in|Xor1|S[13]~13_combout\ : std_logic;
SIGNAL \D4_in|Xor1|S[14]~14_combout\ : std_logic;
SIGNAL \D4_in|Xor1|S[15]~15_combout\ : std_logic;
SIGNAL \D4_in|Xor1|S[16]~16_combout\ : std_logic;
SIGNAL \D4_in|Xor1|S[17]~17_combout\ : std_logic;
SIGNAL \D4_in|Xor1|S[18]~18_combout\ : std_logic;
SIGNAL \D4_in|Xor1|S[19]~19_combout\ : std_logic;
SIGNAL \D4_in|Xor1|S[20]~20_combout\ : std_logic;
SIGNAL \D4_in|Xor1|S[21]~21_combout\ : std_logic;
SIGNAL \D4_in|Xor1|S[22]~22_combout\ : std_logic;
SIGNAL \D4_in|Xor1|S[23]~23_combout\ : std_logic;
SIGNAL \D4_in|Xor1|S[24]~24_combout\ : std_logic;
SIGNAL \D4_in|Xor1|S[25]~25_combout\ : std_logic;
SIGNAL \D4_in|Xor1|S[26]~26_combout\ : std_logic;
SIGNAL \D4_in|Xor1|S[27]~27_combout\ : std_logic;
SIGNAL \D4_in|Xor1|S[28]~28_combout\ : std_logic;
SIGNAL \D4_in|Xor1|S[29]~29_combout\ : std_logic;
SIGNAL \D4_in|Xor1|S[30]~30_combout\ : std_logic;
SIGNAL \D4_in|Xor1|S[31]~31_combout\ : std_logic;
SIGNAL \D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~31_combout\ : std_logic;
SIGNAL \D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~32_combout\ : std_logic;
SIGNAL \D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~34_combout\ : std_logic;
SIGNAL \D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~33_combout\ : std_logic;
SIGNAL \D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~35_combout\ : std_logic;
SIGNAL \D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~36_combout\ : std_logic;
SIGNAL \D5_in|Sel_SR|D5[0]~89_combout\ : std_logic;
SIGNAL \D5_in|Sel_SR|D5[0]~90_combout\ : std_logic;
SIGNAL \D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~24_combout\ : std_logic;
SIGNAL \D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~23_combout\ : std_logic;
SIGNAL \D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~25_combout\ : std_logic;
SIGNAL \D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~26_combout\ : std_logic;
SIGNAL \D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~27_combout\ : std_logic;
SIGNAL \D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~28_combout\ : std_logic;
SIGNAL \D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~29_combout\ : std_logic;
SIGNAL \D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~20_combout\ : std_logic;
SIGNAL \D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~19_combout\ : std_logic;
SIGNAL \D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~21_combout\ : std_logic;
SIGNAL \D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~16_combout\ : std_logic;
SIGNAL \D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~17_combout\ : std_logic;
SIGNAL \D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~18_combout\ : std_logic;
SIGNAL \D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~22_combout\ : std_logic;
SIGNAL \D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~30_combout\ : std_logic;
SIGNAL \D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~38_combout\ : std_logic;
SIGNAL \D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~37_combout\ : std_logic;
SIGNAL \D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~39_combout\ : std_logic;
SIGNAL \D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~41_combout\ : std_logic;
SIGNAL \D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~40_combout\ : std_logic;
SIGNAL \D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~42_combout\ : std_logic;
SIGNAL \D5_in|Sel_SR|D5[8]~30_combout\ : std_logic;
SIGNAL \D5_in|Sel_SR|D5[0]~31_combout\ : std_logic;
SIGNAL \D5_in|Sel_SR|D5[1]~91_combout\ : std_logic;
SIGNAL \D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~54_combout\ : std_logic;
SIGNAL \D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~55_combout\ : std_logic;
SIGNAL \D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~57_combout\ : std_logic;
SIGNAL \D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~56_combout\ : std_logic;
SIGNAL \D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~58_combout\ : std_logic;
SIGNAL \D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~59_combout\ : std_logic;
SIGNAL \D5_in|Sel_SR|D5[1]~92_combout\ : std_logic;
SIGNAL \D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~43_combout\ : std_logic;
SIGNAL \D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~44_combout\ : std_logic;
SIGNAL \D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~45_combout\ : std_logic;
SIGNAL \D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~46_combout\ : std_logic;
SIGNAL \D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~47_combout\ : std_logic;
SIGNAL \D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~48_combout\ : std_logic;
SIGNAL \D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~49_combout\ : std_logic;
SIGNAL \D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~50_combout\ : std_logic;
SIGNAL \D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~51_combout\ : std_logic;
SIGNAL \D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~52_combout\ : std_logic;
SIGNAL \D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~53_combout\ : std_logic;
SIGNAL \D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~60_combout\ : std_logic;
SIGNAL \D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~61_combout\ : std_logic;
SIGNAL \D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~62_combout\ : std_logic;
SIGNAL \D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~63_combout\ : std_logic;
SIGNAL \D5_in|Sel_SR|D5[9]~32_combout\ : std_logic;
SIGNAL \D5_in|Sel_SR|D5[1]~33_combout\ : std_logic;
SIGNAL \D5_in|Sel_SR|D5[4]~34_combout\ : std_logic;
SIGNAL \D5_in|Sel_SR|D5[2]~35_combout\ : std_logic;
SIGNAL \D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~64_combout\ : std_logic;
SIGNAL \D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~65_combout\ : std_logic;
SIGNAL \D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~66_combout\ : std_logic;
SIGNAL \D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~67_combout\ : std_logic;
SIGNAL \D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~68_combout\ : std_logic;
SIGNAL \D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~69_combout\ : std_logic;
SIGNAL \D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~70_combout\ : std_logic;
SIGNAL \D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~71_combout\ : std_logic;
SIGNAL \D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~72_combout\ : std_logic;
SIGNAL \D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~73_combout\ : std_logic;
SIGNAL \D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~74_combout\ : std_logic;
SIGNAL \D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~75_combout\ : std_logic;
SIGNAL \D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~76_combout\ : std_logic;
SIGNAL \D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~79_combout\ : std_logic;
SIGNAL \D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~80_combout\ : std_logic;
SIGNAL \D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~77_combout\ : std_logic;
SIGNAL \D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~78_combout\ : std_logic;
SIGNAL \D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~81_combout\ : std_logic;
SIGNAL \D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~82_combout\ : std_logic;
SIGNAL \D5_in|Sel_SR|D5[2]~36_combout\ : std_logic;
SIGNAL \D5_in|Sel_SR|D5[3]~37_combout\ : std_logic;
SIGNAL \D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~91_combout\ : std_logic;
SIGNAL \D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~92_combout\ : std_logic;
SIGNAL \D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~94_combout\ : std_logic;
SIGNAL \D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~93_combout\ : std_logic;
SIGNAL \D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~95_combout\ : std_logic;
SIGNAL \D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~96_combout\ : std_logic;
SIGNAL \D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~87_combout\ : std_logic;
SIGNAL \D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~88_combout\ : std_logic;
SIGNAL \D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~86_combout\ : std_logic;
SIGNAL \D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~89_combout\ : std_logic;
SIGNAL \D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~84_combout\ : std_logic;
SIGNAL \D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~83_combout\ : std_logic;
SIGNAL \D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~85_combout\ : std_logic;
SIGNAL \D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~90_combout\ : std_logic;
SIGNAL \D5_in|Sel_SR|D5[3]~38_combout\ : std_logic;
SIGNAL \D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~97_combout\ : std_logic;
SIGNAL \D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~98_combout\ : std_logic;
SIGNAL \D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~99_combout\ : std_logic;
SIGNAL \D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~117_combout\ : std_logic;
SIGNAL \D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~100_combout\ : std_logic;
SIGNAL \D5_in|Sel_SR|D5[4]~39_combout\ : std_logic;
SIGNAL \D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~103_combout\ : std_logic;
SIGNAL \D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~118_combout\ : std_logic;
SIGNAL \D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~101_combout\ : std_logic;
SIGNAL \D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~102_combout\ : std_logic;
SIGNAL \D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~104_combout\ : std_logic;
SIGNAL \D5_in|Sel_SR|D5[5]~40_combout\ : std_logic;
SIGNAL \D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~107_combout\ : std_logic;
SIGNAL \D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~108_combout\ : std_logic;
SIGNAL \D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~105_combout\ : std_logic;
SIGNAL \D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~106_combout\ : std_logic;
SIGNAL \D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~109_combout\ : std_logic;
SIGNAL \D5_in|Sel_SR|D5[17]~29_combout\ : std_logic;
SIGNAL \D5_in|Sel_SR|D5[7]~41_combout\ : std_logic;
SIGNAL \D5_in|Sel_SR|D5[6]~42_combout\ : std_logic;
SIGNAL \D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~110_combout\ : std_logic;
SIGNAL \D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~111_combout\ : std_logic;
SIGNAL \D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~112_combout\ : std_logic;
SIGNAL \D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~113_combout\ : std_logic;
SIGNAL \D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~119_combout\ : std_logic;
SIGNAL \D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~114_combout\ : std_logic;
SIGNAL \D5_in|Sel_SR|D5[7]~43_combout\ : std_logic;
SIGNAL \D5_in|Sel_SR|D5[8]~44_combout\ : std_logic;
SIGNAL \D5_in|Sel_SR|D5[8]~45_combout\ : std_logic;
SIGNAL \D5_in|Sel_SR|D5[9]~46_combout\ : std_logic;
SIGNAL \D5_in|Sel_SR|D5[9]~47_combout\ : std_logic;
SIGNAL \D5_in|Sel_SR|D5[10]~49_combout\ : std_logic;
SIGNAL \D5_in|Sel_SR|D5[10]~50_combout\ : std_logic;
SIGNAL \D5_in|Sel_SR|D5[10]~48_combout\ : std_logic;
SIGNAL \D5_in|Sel_SR|D5[10]~93_combout\ : std_logic;
SIGNAL \D5_in|Sel_SR|D5[11]~51_combout\ : std_logic;
SIGNAL \D5_in|Sel_SR|D5[11]~52_combout\ : std_logic;
SIGNAL \D5_in|Sel_SR|D5[11]~53_combout\ : std_logic;
SIGNAL \D5_in|Sel_SR|D5[11]~94_combout\ : std_logic;
SIGNAL \D5_in|Sel_SR|D5[12]~54_combout\ : std_logic;
SIGNAL \D5_in|Sel_SR|D5[12]~55_combout\ : std_logic;
SIGNAL \D5_in|Sel_SR|D5[12]~95_combout\ : std_logic;
SIGNAL \D5_in|Sel_SR|D5[12]~56_combout\ : std_logic;
SIGNAL \D5_in|Sel_SR|D5[13]~96_combout\ : std_logic;
SIGNAL \D5_in|Sel_SR|D5[13]~57_combout\ : std_logic;
SIGNAL \D5_in|Sel_SR|D5[13]~58_combout\ : std_logic;
SIGNAL \D5_in|Sel_SR|D5[13]~59_combout\ : std_logic;
SIGNAL \D5_in|Sel_SR|D5[14]~61_combout\ : std_logic;
SIGNAL \D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~120_combout\ : std_logic;
SIGNAL \D5_in|Sel_SR|D5[14]~60_combout\ : std_logic;
SIGNAL \D5_in|Sel_SR|D5[14]~97_combout\ : std_logic;
SIGNAL \D5_in|Sel_SR|D5[15]~62_combout\ : std_logic;
SIGNAL \D5_in|Sel_SR|D5[15]~63_combout\ : std_logic;
SIGNAL \D5_in|Sel_SR|D5[15]~98_combout\ : std_logic;
SIGNAL \D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~115_combout\ : std_logic;
SIGNAL \D5_in|Sel_SR|D5[16]~64_combout\ : std_logic;
SIGNAL \D5_in|Sel_SR|D5[16]~65_combout\ : std_logic;
SIGNAL \D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~116_combout\ : std_logic;
SIGNAL \D5_in|Sel_SR|D5[17]~66_combout\ : std_logic;
SIGNAL \D5_in|Sel_SR|D5[17]~67_combout\ : std_logic;
SIGNAL \D5_in|Sel_SR|D5[18]~68_combout\ : std_logic;
SIGNAL \D5_in|Sel_SR|D5[18]~69_combout\ : std_logic;
SIGNAL \D5_in|Sel_SR|D5[19]~70_combout\ : std_logic;
SIGNAL \D5_in|Sel_SR|D5[19]~71_combout\ : std_logic;
SIGNAL \D5_in|Sel_SR|D5[20]~99_combout\ : std_logic;
SIGNAL \D5_in|Sel_SR|D5[20]~72_combout\ : std_logic;
SIGNAL \D5_in|Sel_SR|D5[21]~73_combout\ : std_logic;
SIGNAL \D5_in|Sel_SR|D5[21]~74_combout\ : std_logic;
SIGNAL \D5_in|Sel_SR|D5[22]~75_combout\ : std_logic;
SIGNAL \D5_in|Sel_SR|D5[23]~76_combout\ : std_logic;
SIGNAL \D5_in|Sel_SR|D5[24]~77_combout\ : std_logic;
SIGNAL \D5_in|Sel_SR|D5[25]~78_combout\ : std_logic;
SIGNAL \D5_in|Sel_SR|D5[26]~79_combout\ : std_logic;
SIGNAL \D5_in|Sel_SR|D5[27]~80_combout\ : std_logic;
SIGNAL \D5_in|Sel_SR|D5[28]~81_combout\ : std_logic;
SIGNAL \D5_in|Sel_SR|D5[28]~82_combout\ : std_logic;
SIGNAL \D5_in|Sel_SR|D5[29]~83_combout\ : std_logic;
SIGNAL \D5_in|Sel_SR|D5[29]~84_combout\ : std_logic;
SIGNAL \D5_in|Sel_SR|D5[30]~85_combout\ : std_logic;
SIGNAL \D5_in|Sel_SR|D5[31]~86_combout\ : std_logic;
SIGNAL \D5_in|Sel_SR|D5[31]~87_combout\ : std_logic;
SIGNAL \D5_in|Sel_SR|D5[31]~88_combout\ : std_logic;
SIGNAL \D6_in|or9|S\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \D7_in|AND_9|S\ : std_logic_vector(31 DOWNTO 0);

BEGIN

ww_funct7 <= funct7;
ww_Sel <= Sel;
ww_A <= A;
ww_B <= B;
D0 <= ww_D0;
D1 <= ww_D1;
D2 <= ww_D2;
D3 <= ww_D3;
D4 <= ww_D4;
D5 <= ww_D5;
D6 <= ww_D6;
D7 <= ww_D7;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

-- Location: IOOBUF_X41_Y91_N9
\D0[0]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \D0_in|AddSub|adder_inst|full_adder[0]|S~combout\,
	devoe => ww_devoe,
	o => \D0[0]~output_o\);

-- Location: IOOBUF_X86_Y0_N2
\D0[1]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \D0_in|AddSub|adder_inst|full_adder[1]|S~combout\,
	devoe => ww_devoe,
	o => \D0[1]~output_o\);

-- Location: IOOBUF_X82_Y0_N9
\D0[2]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \D0_in|AddSub|adder_inst|full_adder[2]|S~combout\,
	devoe => ww_devoe,
	o => \D0[2]~output_o\);

-- Location: IOOBUF_X39_Y91_N2
\D0[3]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \D0_in|AddSub|adder_inst|full_adder[3]|S~combout\,
	devoe => ww_devoe,
	o => \D0[3]~output_o\);

-- Location: IOOBUF_X61_Y91_N9
\D0[4]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \D0_in|AddSub|adder_inst|full_adder[4]|S~combout\,
	devoe => ww_devoe,
	o => \D0[4]~output_o\);

-- Location: IOOBUF_X108_Y91_N9
\D0[5]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \D0_in|AddSub|adder_inst|full_adder[5]|S~combout\,
	devoe => ww_devoe,
	o => \D0[5]~output_o\);

-- Location: IOOBUF_X108_Y91_N23
\D0[6]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \D0_in|AddSub|adder_inst|full_adder[6]|S~combout\,
	devoe => ww_devoe,
	o => \D0[6]~output_o\);

-- Location: IOOBUF_X106_Y91_N2
\D0[7]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \D0_in|AddSub|adder_inst|full_adder[7]|S~combout\,
	devoe => ww_devoe,
	o => \D0[7]~output_o\);

-- Location: IOOBUF_X117_Y84_N9
\D0[8]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \D0_in|AddSub|adder_inst|full_adder[8]|S~combout\,
	devoe => ww_devoe,
	o => \D0[8]~output_o\);

-- Location: IOOBUF_X117_Y70_N2
\D0[9]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \D0_in|AddSub|adder_inst|full_adder[9]|S~combout\,
	devoe => ww_devoe,
	o => \D0[9]~output_o\);

-- Location: IOOBUF_X108_Y91_N16
\D0[10]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \D0_in|AddSub|adder_inst|full_adder[10]|S~combout\,
	devoe => ww_devoe,
	o => \D0[10]~output_o\);

-- Location: IOOBUF_X117_Y18_N2
\D0[11]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \D0_in|AddSub|adder_inst|full_adder[11]|S~combout\,
	devoe => ww_devoe,
	o => \D0[11]~output_o\);

-- Location: IOOBUF_X117_Y24_N9
\D0[12]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \D0_in|AddSub|adder_inst|full_adder[12]|S~combout\,
	devoe => ww_devoe,
	o => \D0[12]~output_o\);

-- Location: IOOBUF_X117_Y23_N9
\D0[13]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \D0_in|AddSub|adder_inst|full_adder[13]|S~combout\,
	devoe => ww_devoe,
	o => \D0[13]~output_o\);

-- Location: IOOBUF_X21_Y91_N2
\D0[14]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \D0_in|AddSub|adder_inst|full_adder[14]|S~combout\,
	devoe => ww_devoe,
	o => \D0[14]~output_o\);

-- Location: IOOBUF_X21_Y91_N16
\D0[15]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \D0_in|AddSub|adder_inst|full_adder[15]|S~combout\,
	devoe => ww_devoe,
	o => \D0[15]~output_o\);

-- Location: IOOBUF_X17_Y91_N16
\D0[16]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \D0_in|AddSub|adder_inst|full_adder[16]|S~combout\,
	devoe => ww_devoe,
	o => \D0[16]~output_o\);

-- Location: IOOBUF_X117_Y60_N2
\D0[17]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \D0_in|AddSub|adder_inst|full_adder[17]|S~combout\,
	devoe => ww_devoe,
	o => \D0[17]~output_o\);

-- Location: IOOBUF_X117_Y61_N9
\D0[18]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \D0_in|AddSub|adder_inst|full_adder[18]|S~combout\,
	devoe => ww_devoe,
	o => \D0[18]~output_o\);

-- Location: IOOBUF_X117_Y55_N2
\D0[19]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \D0_in|AddSub|adder_inst|full_adder[19]|S~combout\,
	devoe => ww_devoe,
	o => \D0[19]~output_o\);

-- Location: IOOBUF_X117_Y38_N9
\D0[20]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \D0_in|AddSub|adder_inst|full_adder[20]|S~combout\,
	devoe => ww_devoe,
	o => \D0[20]~output_o\);

-- Location: IOOBUF_X117_Y43_N2
\D0[21]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \D0_in|AddSub|adder_inst|full_adder[21]|S~combout\,
	devoe => ww_devoe,
	o => \D0[21]~output_o\);

-- Location: IOOBUF_X117_Y36_N2
\D0[22]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \D0_in|AddSub|adder_inst|full_adder[22]|S~combout\,
	devoe => ww_devoe,
	o => \D0[22]~output_o\);

-- Location: IOOBUF_X117_Y8_N2
\D0[23]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \D0_in|AddSub|adder_inst|full_adder[23]|S~combout\,
	devoe => ww_devoe,
	o => \D0[23]~output_o\);

-- Location: IOOBUF_X117_Y7_N9
\D0[24]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \D0_in|AddSub|adder_inst|full_adder[24]|S~combout\,
	devoe => ww_devoe,
	o => \D0[24]~output_o\);

-- Location: IOOBUF_X86_Y0_N9
\D0[25]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \D0_in|AddSub|adder_inst|full_adder[25]|S~combout\,
	devoe => ww_devoe,
	o => \D0[25]~output_o\);

-- Location: IOOBUF_X117_Y14_N2
\D0[26]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \D0_in|AddSub|adder_inst|full_adder[26]|S~combout\,
	devoe => ww_devoe,
	o => \D0[26]~output_o\);

-- Location: IOOBUF_X117_Y44_N2
\D0[27]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \D0_in|AddSub|adder_inst|full_adder[27]|S~combout\,
	devoe => ww_devoe,
	o => \D0[27]~output_o\);

-- Location: IOOBUF_X117_Y58_N9
\D0[28]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \D0_in|AddSub|adder_inst|full_adder[28]|S~combout\,
	devoe => ww_devoe,
	o => \D0[28]~output_o\);

-- Location: IOOBUF_X17_Y91_N9
\D0[29]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \D0_in|AddSub|adder_inst|full_adder[29]|S~combout\,
	devoe => ww_devoe,
	o => \D0[29]~output_o\);

-- Location: IOOBUF_X117_Y22_N9
\D0[30]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \D0_in|AddSub|adder_inst|full_adder[30]|S~combout\,
	devoe => ww_devoe,
	o => \D0[30]~output_o\);

-- Location: IOOBUF_X50_Y91_N16
\D0[31]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \D0_in|AddSub|adder_inst|full_adder[31]|S~combout\,
	devoe => ww_devoe,
	o => \D0[31]~output_o\);

-- Location: IOOBUF_X68_Y0_N9
\D1[0]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \D1_in|SLL|ShiftLeft0~168_combout\,
	devoe => ww_devoe,
	o => \D1[0]~output_o\);

-- Location: IOOBUF_X77_Y0_N23
\D1[1]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \D1_in|SLL|ShiftLeft0~27_combout\,
	devoe => ww_devoe,
	o => \D1[1]~output_o\);

-- Location: IOOBUF_X68_Y0_N23
\D1[2]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \D1_in|SLL|ShiftLeft0~29_combout\,
	devoe => ww_devoe,
	o => \D1[2]~output_o\);

-- Location: IOOBUF_X34_Y91_N9
\D1[3]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \D1_in|SLL|ShiftLeft0~31_combout\,
	devoe => ww_devoe,
	o => \D1[3]~output_o\);

-- Location: IOOBUF_X77_Y0_N9
\D1[4]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \D1_in|SLL|ShiftLeft0~35_combout\,
	devoe => ww_devoe,
	o => \D1[4]~output_o\);

-- Location: IOOBUF_X39_Y91_N23
\D1[5]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \D1_in|SLL|ShiftLeft0~169_combout\,
	devoe => ww_devoe,
	o => \D1[5]~output_o\);

-- Location: IOOBUF_X44_Y91_N2
\D1[6]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \D1_in|SLL|ShiftLeft0~42_combout\,
	devoe => ww_devoe,
	o => \D1[6]~output_o\);

-- Location: IOOBUF_X48_Y91_N9
\D1[7]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \D1_in|SLL|ShiftLeft0~46_combout\,
	devoe => ww_devoe,
	o => \D1[7]~output_o\);

-- Location: IOOBUF_X68_Y91_N2
\D1[8]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \D1_in|SLL|ShiftLeft0~52_combout\,
	devoe => ww_devoe,
	o => \D1[8]~output_o\);

-- Location: IOOBUF_X37_Y91_N2
\D1[9]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \D1_in|SLL|ShiftLeft0~57_combout\,
	devoe => ww_devoe,
	o => \D1[9]~output_o\);

-- Location: IOOBUF_X34_Y91_N16
\D1[10]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \D1_in|SLL|ShiftLeft0~61_combout\,
	devoe => ww_devoe,
	o => \D1[10]~output_o\);

-- Location: IOOBUF_X117_Y77_N2
\D1[11]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \D1_in|SLL|ShiftLeft0~65_combout\,
	devoe => ww_devoe,
	o => \D1[11]~output_o\);

-- Location: IOOBUF_X117_Y77_N9
\D1[12]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \D1_in|SLL|ShiftLeft0~70_combout\,
	devoe => ww_devoe,
	o => \D1[12]~output_o\);

-- Location: IOOBUF_X34_Y91_N2
\D1[13]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \D1_in|SLL|ShiftLeft0~74_combout\,
	devoe => ww_devoe,
	o => \D1[13]~output_o\);

-- Location: IOOBUF_X70_Y91_N9
\D1[14]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \D1_in|SLL|ShiftLeft0~79_combout\,
	devoe => ww_devoe,
	o => \D1[14]~output_o\);

-- Location: IOOBUF_X32_Y91_N9
\D1[15]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \D1_in|SLL|ShiftLeft0~84_combout\,
	devoe => ww_devoe,
	o => \D1[15]~output_o\);

-- Location: IOOBUF_X66_Y0_N2
\D1[16]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \D1_in|SLL|ShiftLeft0~91_combout\,
	devoe => ww_devoe,
	o => \D1[16]~output_o\);

-- Location: IOOBUF_X68_Y0_N16
\D1[17]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \D1_in|SLL|ShiftLeft0~98_combout\,
	devoe => ww_devoe,
	o => \D1[17]~output_o\);

-- Location: IOOBUF_X32_Y91_N16
\D1[18]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \D1_in|SLL|ShiftLeft0~103_combout\,
	devoe => ww_devoe,
	o => \D1[18]~output_o\);

-- Location: IOOBUF_X37_Y91_N9
\D1[19]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \D1_in|SLL|ShiftLeft0~108_combout\,
	devoe => ww_devoe,
	o => \D1[19]~output_o\);

-- Location: IOOBUF_X66_Y0_N16
\D1[20]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \D1_in|SLL|ShiftLeft0~173_combout\,
	devoe => ww_devoe,
	o => \D1[20]~output_o\);

-- Location: IOOBUF_X63_Y91_N23
\D1[21]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \D1_in|SLL|ShiftLeft0~174_combout\,
	devoe => ww_devoe,
	o => \D1[21]~output_o\);

-- Location: IOOBUF_X70_Y91_N2
\D1[22]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \D1_in|SLL|ShiftLeft0~124_combout\,
	devoe => ww_devoe,
	o => \D1[22]~output_o\);

-- Location: IOOBUF_X37_Y91_N23
\D1[23]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \D1_in|SLL|ShiftLeft0~129_combout\,
	devoe => ww_devoe,
	o => \D1[23]~output_o\);

-- Location: IOOBUF_X68_Y91_N9
\D1[24]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \D1_in|SLL|ShiftLeft0~133_combout\,
	devoe => ww_devoe,
	o => \D1[24]~output_o\);

-- Location: IOOBUF_X63_Y0_N16
\D1[25]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \D1_in|SLL|ShiftLeft0~137_combout\,
	devoe => ww_devoe,
	o => \D1[25]~output_o\);

-- Location: IOOBUF_X70_Y0_N9
\D1[26]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \D1_in|SLL|ShiftLeft0~142_combout\,
	devoe => ww_devoe,
	o => \D1[26]~output_o\);

-- Location: IOOBUF_X117_Y80_N2
\D1[27]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \D1_in|SLL|ShiftLeft0~147_combout\,
	devoe => ww_devoe,
	o => \D1[27]~output_o\);

-- Location: IOOBUF_X66_Y0_N9
\D1[28]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \D1_in|SLL|ShiftLeft0~152_combout\,
	devoe => ww_devoe,
	o => \D1[28]~output_o\);

-- Location: IOOBUF_X66_Y91_N23
\D1[29]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \D1_in|SLL|ShiftLeft0~157_combout\,
	devoe => ww_devoe,
	o => \D1[29]~output_o\);

-- Location: IOOBUF_X48_Y91_N2
\D1[30]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \D1_in|SLL|ShiftLeft0~162_combout\,
	devoe => ww_devoe,
	o => \D1[30]~output_o\);

-- Location: IOOBUF_X53_Y91_N9
\D1[31]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \D1_in|SLL|ShiftLeft0~167_combout\,
	devoe => ww_devoe,
	o => \D1[31]~output_o\);

-- Location: IOOBUF_X117_Y73_N9
\D2[0]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \D2_in|LT_inst|LessThan0~62_combout\,
	devoe => ww_devoe,
	o => \D2[0]~output_o\);

-- Location: IOOBUF_X106_Y0_N2
\D2[1]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \D2[1]~output_o\);

-- Location: IOOBUF_X48_Y0_N16
\D2[2]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \D2[2]~output_o\);

-- Location: IOOBUF_X37_Y0_N2
\D2[3]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \D2[3]~output_o\);

-- Location: IOOBUF_X8_Y91_N16
\D2[4]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \D2[4]~output_o\);

-- Location: IOOBUF_X8_Y0_N16
\D2[5]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \D2[5]~output_o\);

-- Location: IOOBUF_X53_Y0_N9
\D2[6]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \D2[6]~output_o\);

-- Location: IOOBUF_X12_Y91_N2
\D2[7]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \D2[7]~output_o\);

-- Location: IOOBUF_X3_Y91_N16
\D2[8]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \D2[8]~output_o\);

-- Location: IOOBUF_X8_Y91_N9
\D2[9]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \D2[9]~output_o\);

-- Location: IOOBUF_X3_Y91_N9
\D2[10]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \D2[10]~output_o\);

-- Location: IOOBUF_X50_Y0_N16
\D2[11]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \D2[11]~output_o\);

-- Location: IOOBUF_X10_Y91_N9
\D2[12]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \D2[12]~output_o\);

-- Location: IOOBUF_X90_Y0_N2
\D2[13]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \D2[13]~output_o\);

-- Location: IOOBUF_X3_Y0_N16
\D2[14]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \D2[14]~output_o\);

-- Location: IOOBUF_X106_Y0_N9
\D2[15]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \D2[15]~output_o\);

-- Location: IOOBUF_X115_Y0_N2
\D2[16]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \D2[16]~output_o\);

-- Location: IOOBUF_X28_Y0_N9
\D2[17]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \D2[17]~output_o\);

-- Location: IOOBUF_X17_Y0_N16
\D2[18]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \D2[18]~output_o\);

-- Location: IOOBUF_X8_Y91_N2
\D2[19]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \D2[19]~output_o\);

-- Location: IOOBUF_X19_Y0_N16
\D2[20]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \D2[20]~output_o\);

-- Location: IOOBUF_X46_Y0_N16
\D2[21]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \D2[21]~output_o\);

-- Location: IOOBUF_X3_Y91_N2
\D2[22]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \D2[22]~output_o\);

-- Location: IOOBUF_X99_Y0_N9
\D2[23]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \D2[23]~output_o\);

-- Location: IOOBUF_X34_Y0_N16
\D2[24]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \D2[24]~output_o\);

-- Location: IOOBUF_X50_Y0_N2
\D2[25]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \D2[25]~output_o\);

-- Location: IOOBUF_X5_Y91_N9
\D2[26]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \D2[26]~output_o\);

-- Location: IOOBUF_X5_Y91_N23
\D2[27]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \D2[27]~output_o\);

-- Location: IOOBUF_X53_Y0_N2
\D2[28]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \D2[28]~output_o\);

-- Location: IOOBUF_X26_Y0_N23
\D2[29]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \D2[29]~output_o\);

-- Location: IOOBUF_X37_Y0_N9
\D2[30]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \D2[30]~output_o\);

-- Location: IOOBUF_X15_Y0_N9
\D2[31]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \D2[31]~output_o\);

-- Location: IOOBUF_X97_Y91_N9
\D3[0]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \D3_in|SLTU|Mux0~0_combout\,
	devoe => ww_devoe,
	o => \D3[0]~output_o\);

-- Location: IOOBUF_X44_Y0_N16
\D3[1]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \D3[1]~output_o\);

-- Location: IOOBUF_X32_Y0_N16
\D3[2]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \D3[2]~output_o\);

-- Location: IOOBUF_X34_Y0_N9
\D3[3]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \D3[3]~output_o\);

-- Location: IOOBUF_X92_Y0_N23
\D3[4]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \D3[4]~output_o\);

-- Location: IOOBUF_X3_Y0_N2
\D3[5]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \D3[5]~output_o\);

-- Location: IOOBUF_X8_Y0_N9
\D3[6]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \D3[6]~output_o\);

-- Location: IOOBUF_X5_Y91_N16
\D3[7]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \D3[7]~output_o\);

-- Location: IOOBUF_X46_Y0_N23
\D3[8]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \D3[8]~output_o\);

-- Location: IOOBUF_X48_Y0_N2
\D3[9]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \D3[9]~output_o\);

-- Location: IOOBUF_X5_Y91_N2
\D3[10]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \D3[10]~output_o\);

-- Location: IOOBUF_X32_Y0_N2
\D3[11]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \D3[11]~output_o\);

-- Location: IOOBUF_X8_Y0_N2
\D3[12]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \D3[12]~output_o\);

-- Location: IOOBUF_X1_Y0_N16
\D3[13]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \D3[13]~output_o\);

-- Location: IOOBUF_X113_Y0_N2
\D3[14]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \D3[14]~output_o\);

-- Location: IOOBUF_X5_Y0_N2
\D3[15]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \D3[15]~output_o\);

-- Location: IOOBUF_X34_Y0_N23
\D3[16]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \D3[16]~output_o\);

-- Location: IOOBUF_X5_Y0_N9
\D3[17]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \D3[17]~output_o\);

-- Location: IOOBUF_X95_Y0_N9
\D3[18]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \D3[18]~output_o\);

-- Location: IOOBUF_X97_Y0_N9
\D3[19]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \D3[19]~output_o\);

-- Location: IOOBUF_X26_Y0_N16
\D3[20]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \D3[20]~output_o\);

-- Location: IOOBUF_X84_Y0_N2
\D3[21]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \D3[21]~output_o\);

-- Location: IOOBUF_X108_Y0_N9
\D3[22]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \D3[22]~output_o\);

-- Location: IOOBUF_X17_Y0_N2
\D3[23]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \D3[23]~output_o\);

-- Location: IOOBUF_X88_Y0_N9
\D3[24]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \D3[24]~output_o\);

-- Location: IOOBUF_X15_Y0_N2
\D3[25]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \D3[25]~output_o\);

-- Location: IOOBUF_X97_Y0_N2
\D3[26]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \D3[26]~output_o\);

-- Location: IOOBUF_X53_Y0_N23
\D3[27]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \D3[27]~output_o\);

-- Location: IOOBUF_X32_Y0_N9
\D3[28]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \D3[28]~output_o\);

-- Location: IOOBUF_X39_Y0_N2
\D3[29]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \D3[29]~output_o\);

-- Location: IOOBUF_X113_Y0_N9
\D3[30]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \D3[30]~output_o\);

-- Location: IOOBUF_X34_Y0_N2
\D3[31]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \D3[31]~output_o\);

-- Location: IOOBUF_X99_Y91_N23
\D4[0]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \D4_in|Xor1|S[0]~0_combout\,
	devoe => ww_devoe,
	o => \D4[0]~output_o\);

-- Location: IOOBUF_X97_Y91_N2
\D4[1]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \D4_in|Xor1|S[1]~1_combout\,
	devoe => ww_devoe,
	o => \D4[1]~output_o\);

-- Location: IOOBUF_X77_Y91_N9
\D4[2]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \D4_in|Xor1|S[2]~2_combout\,
	devoe => ww_devoe,
	o => \D4[2]~output_o\);

-- Location: IOOBUF_X37_Y91_N16
\D4[3]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \D4_in|Xor1|S[3]~3_combout\,
	devoe => ww_devoe,
	o => \D4[3]~output_o\);

-- Location: IOOBUF_X63_Y91_N16
\D4[4]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \D4_in|Xor1|S[4]~4_combout\,
	devoe => ww_devoe,
	o => \D4[4]~output_o\);

-- Location: IOOBUF_X117_Y86_N9
\D4[5]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \D4_in|Xor1|S[5]~5_combout\,
	devoe => ww_devoe,
	o => \D4[5]~output_o\);

-- Location: IOOBUF_X115_Y91_N16
\D4[6]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \D4_in|Xor1|S[6]~6_combout\,
	devoe => ww_devoe,
	o => \D4[6]~output_o\);

-- Location: IOOBUF_X115_Y91_N2
\D4[7]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \D4_in|Xor1|S[7]~7_combout\,
	devoe => ww_devoe,
	o => \D4[7]~output_o\);

-- Location: IOOBUF_X117_Y83_N9
\D4[8]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \D4_in|Xor1|S[8]~8_combout\,
	devoe => ww_devoe,
	o => \D4[8]~output_o\);

-- Location: IOOBUF_X86_Y91_N16
\D4[9]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \D4_in|Xor1|S[9]~9_combout\,
	devoe => ww_devoe,
	o => \D4[9]~output_o\);

-- Location: IOOBUF_X111_Y91_N16
\D4[10]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \D4_in|Xor1|S[10]~10_combout\,
	devoe => ww_devoe,
	o => \D4[10]~output_o\);

-- Location: IOOBUF_X117_Y22_N2
\D4[11]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \D4_in|Xor1|S[11]~11_combout\,
	devoe => ww_devoe,
	o => \D4[11]~output_o\);

-- Location: IOOBUF_X117_Y26_N9
\D4[12]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \D4_in|Xor1|S[12]~12_combout\,
	devoe => ww_devoe,
	o => \D4[12]~output_o\);

-- Location: IOOBUF_X117_Y27_N2
\D4[13]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \D4_in|Xor1|S[13]~13_combout\,
	devoe => ww_devoe,
	o => \D4[13]~output_o\);

-- Location: IOOBUF_X19_Y91_N16
\D4[14]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \D4_in|Xor1|S[14]~14_combout\,
	devoe => ww_devoe,
	o => \D4[14]~output_o\);

-- Location: IOOBUF_X26_Y91_N2
\D4[15]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \D4_in|Xor1|S[15]~15_combout\,
	devoe => ww_devoe,
	o => \D4[15]~output_o\);

-- Location: IOOBUF_X19_Y91_N2
\D4[16]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \D4_in|Xor1|S[16]~16_combout\,
	devoe => ww_devoe,
	o => \D4[16]~output_o\);

-- Location: IOOBUF_X117_Y56_N9
\D4[17]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \D4_in|Xor1|S[17]~17_combout\,
	devoe => ww_devoe,
	o => \D4[17]~output_o\);

-- Location: IOOBUF_X117_Y62_N9
\D4[18]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \D4_in|Xor1|S[18]~18_combout\,
	devoe => ww_devoe,
	o => \D4[18]~output_o\);

-- Location: IOOBUF_X117_Y54_N2
\D4[19]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \D4_in|Xor1|S[19]~19_combout\,
	devoe => ww_devoe,
	o => \D4[19]~output_o\);

-- Location: IOOBUF_X117_Y44_N9
\D4[20]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \D4_in|Xor1|S[20]~20_combout\,
	devoe => ww_devoe,
	o => \D4[20]~output_o\);

-- Location: IOOBUF_X117_Y43_N9
\D4[21]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \D4_in|Xor1|S[21]~21_combout\,
	devoe => ww_devoe,
	o => \D4[21]~output_o\);

-- Location: IOOBUF_X117_Y41_N2
\D4[22]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \D4_in|Xor1|S[22]~22_combout\,
	devoe => ww_devoe,
	o => \D4[22]~output_o\);

-- Location: IOOBUF_X117_Y5_N9
\D4[23]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \D4_in|Xor1|S[23]~23_combout\,
	devoe => ww_devoe,
	o => \D4[23]~output_o\);

-- Location: IOOBUF_X117_Y7_N2
\D4[24]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \D4_in|Xor1|S[24]~24_combout\,
	devoe => ww_devoe,
	o => \D4[24]~output_o\);

-- Location: IOOBUF_X95_Y91_N9
\D4[25]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \D4_in|Xor1|S[25]~25_combout\,
	devoe => ww_devoe,
	o => \D4[25]~output_o\);

-- Location: IOOBUF_X117_Y6_N9
\D4[26]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \D4_in|Xor1|S[26]~26_combout\,
	devoe => ww_devoe,
	o => \D4[26]~output_o\);

-- Location: IOOBUF_X117_Y34_N2
\D4[27]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \D4_in|Xor1|S[27]~27_combout\,
	devoe => ww_devoe,
	o => \D4[27]~output_o\);

-- Location: IOOBUF_X117_Y60_N16
\D4[28]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \D4_in|Xor1|S[28]~28_combout\,
	devoe => ww_devoe,
	o => \D4[28]~output_o\);

-- Location: IOOBUF_X24_Y91_N9
\D4[29]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \D4_in|Xor1|S[29]~29_combout\,
	devoe => ww_devoe,
	o => \D4[29]~output_o\);

-- Location: IOOBUF_X117_Y19_N2
\D4[30]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \D4_in|Xor1|S[30]~30_combout\,
	devoe => ww_devoe,
	o => \D4[30]~output_o\);

-- Location: IOOBUF_X84_Y0_N23
\D4[31]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \D4_in|Xor1|S[31]~31_combout\,
	devoe => ww_devoe,
	o => \D4[31]~output_o\);

-- Location: IOOBUF_X44_Y91_N9
\D5[0]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \D5_in|Sel_SR|D5[0]~31_combout\,
	devoe => ww_devoe,
	o => \D5[0]~output_o\);

-- Location: IOOBUF_X77_Y0_N2
\D5[1]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \D5_in|Sel_SR|D5[1]~33_combout\,
	devoe => ww_devoe,
	o => \D5[1]~output_o\);

-- Location: IOOBUF_X75_Y0_N9
\D5[2]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \D5_in|Sel_SR|D5[2]~36_combout\,
	devoe => ww_devoe,
	o => \D5[2]~output_o\);

-- Location: IOOBUF_X53_Y91_N23
\D5[3]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \D5_in|Sel_SR|D5[3]~38_combout\,
	devoe => ww_devoe,
	o => \D5[3]~output_o\);

-- Location: IOOBUF_X61_Y91_N2
\D5[4]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \D5_in|Sel_SR|D5[4]~39_combout\,
	devoe => ww_devoe,
	o => \D5[4]~output_o\);

-- Location: IOOBUF_X68_Y91_N16
\D5[5]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \D5_in|Sel_SR|D5[5]~40_combout\,
	devoe => ww_devoe,
	o => \D5[5]~output_o\);

-- Location: IOOBUF_X46_Y91_N23
\D5[6]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \D5_in|Sel_SR|D5[6]~42_combout\,
	devoe => ww_devoe,
	o => \D5[6]~output_o\);

-- Location: IOOBUF_X61_Y0_N23
\D5[7]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \D5_in|Sel_SR|D5[7]~43_combout\,
	devoe => ww_devoe,
	o => \D5[7]~output_o\);

-- Location: IOOBUF_X63_Y0_N23
\D5[8]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \D5_in|Sel_SR|D5[8]~45_combout\,
	devoe => ww_devoe,
	o => \D5[8]~output_o\);

-- Location: IOOBUF_X82_Y0_N23
\D5[9]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \D5_in|Sel_SR|D5[9]~47_combout\,
	devoe => ww_devoe,
	o => \D5[9]~output_o\);

-- Location: IOOBUF_X117_Y72_N9
\D5[10]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \D5_in|Sel_SR|D5[10]~93_combout\,
	devoe => ww_devoe,
	o => \D5[10]~output_o\);

-- Location: IOOBUF_X117_Y66_N9
\D5[11]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \D5_in|Sel_SR|D5[11]~94_combout\,
	devoe => ww_devoe,
	o => \D5[11]~output_o\);

-- Location: IOOBUF_X66_Y0_N23
\D5[12]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \D5_in|Sel_SR|D5[12]~56_combout\,
	devoe => ww_devoe,
	o => \D5[12]~output_o\);

-- Location: IOOBUF_X32_Y91_N23
\D5[13]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \D5_in|Sel_SR|D5[13]~59_combout\,
	devoe => ww_devoe,
	o => \D5[13]~output_o\);

-- Location: IOOBUF_X86_Y0_N16
\D5[14]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \D5_in|Sel_SR|D5[14]~97_combout\,
	devoe => ww_devoe,
	o => \D5[14]~output_o\);

-- Location: IOOBUF_X82_Y0_N16
\D5[15]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \D5_in|Sel_SR|D5[15]~98_combout\,
	devoe => ww_devoe,
	o => \D5[15]~output_o\);

-- Location: IOOBUF_X117_Y65_N9
\D5[16]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \D5_in|Sel_SR|D5[16]~65_combout\,
	devoe => ww_devoe,
	o => \D5[16]~output_o\);

-- Location: IOOBUF_X77_Y0_N16
\D5[17]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \D5_in|Sel_SR|D5[17]~67_combout\,
	devoe => ww_devoe,
	o => \D5[17]~output_o\);

-- Location: IOOBUF_X46_Y91_N2
\D5[18]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \D5_in|Sel_SR|D5[18]~69_combout\,
	devoe => ww_devoe,
	o => \D5[18]~output_o\);

-- Location: IOOBUF_X95_Y91_N2
\D5[19]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \D5_in|Sel_SR|D5[19]~71_combout\,
	devoe => ww_devoe,
	o => \D5[19]~output_o\);

-- Location: IOOBUF_X66_Y91_N16
\D5[20]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \D5_in|Sel_SR|D5[20]~72_combout\,
	devoe => ww_devoe,
	o => \D5[20]~output_o\);

-- Location: IOOBUF_X82_Y0_N2
\D5[21]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \D5_in|Sel_SR|D5[21]~74_combout\,
	devoe => ww_devoe,
	o => \D5[21]~output_o\);

-- Location: IOOBUF_X53_Y91_N2
\D5[22]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \D5_in|Sel_SR|D5[22]~75_combout\,
	devoe => ww_devoe,
	o => \D5[22]~output_o\);

-- Location: IOOBUF_X39_Y91_N16
\D5[23]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \D5_in|Sel_SR|D5[23]~76_combout\,
	devoe => ww_devoe,
	o => \D5[23]~output_o\);

-- Location: IOOBUF_X46_Y91_N9
\D5[24]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \D5_in|Sel_SR|D5[24]~77_combout\,
	devoe => ww_devoe,
	o => \D5[24]~output_o\);

-- Location: IOOBUF_X75_Y0_N2
\D5[25]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \D5_in|Sel_SR|D5[25]~78_combout\,
	devoe => ww_devoe,
	o => \D5[25]~output_o\);

-- Location: IOOBUF_X66_Y91_N9
\D5[26]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \D5_in|Sel_SR|D5[26]~79_combout\,
	devoe => ww_devoe,
	o => \D5[26]~output_o\);

-- Location: IOOBUF_X70_Y0_N16
\D5[27]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \D5_in|Sel_SR|D5[27]~80_combout\,
	devoe => ww_devoe,
	o => \D5[27]~output_o\);

-- Location: IOOBUF_X46_Y91_N16
\D5[28]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \D5_in|Sel_SR|D5[28]~82_combout\,
	devoe => ww_devoe,
	o => \D5[28]~output_o\);

-- Location: IOOBUF_X53_Y91_N16
\D5[29]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \D5_in|Sel_SR|D5[29]~84_combout\,
	devoe => ww_devoe,
	o => \D5[29]~output_o\);

-- Location: IOOBUF_X75_Y0_N16
\D5[30]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \D5_in|Sel_SR|D5[30]~85_combout\,
	devoe => ww_devoe,
	o => \D5[30]~output_o\);

-- Location: IOOBUF_X48_Y91_N16
\D5[31]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \D5_in|Sel_SR|D5[31]~88_combout\,
	devoe => ww_devoe,
	o => \D5[31]~output_o\);

-- Location: IOOBUF_X99_Y91_N2
\D6[0]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \D6_in|or9|S\(0),
	devoe => ww_devoe,
	o => \D6[0]~output_o\);

-- Location: IOOBUF_X86_Y91_N2
\D6[1]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \D6_in|or9|S\(1),
	devoe => ww_devoe,
	o => \D6[1]~output_o\);

-- Location: IOOBUF_X95_Y91_N23
\D6[2]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \D6_in|or9|S\(2),
	devoe => ww_devoe,
	o => \D6[2]~output_o\);

-- Location: IOOBUF_X39_Y91_N9
\D6[3]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \D6_in|or9|S\(3),
	devoe => ww_devoe,
	o => \D6[3]~output_o\);

-- Location: IOOBUF_X41_Y91_N2
\D6[4]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \D6_in|or9|S\(4),
	devoe => ww_devoe,
	o => \D6[4]~output_o\);

-- Location: IOOBUF_X111_Y91_N23
\D6[5]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \D6_in|or9|S\(5),
	devoe => ww_devoe,
	o => \D6[5]~output_o\);

-- Location: IOOBUF_X113_Y91_N16
\D6[6]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \D6_in|or9|S\(6),
	devoe => ww_devoe,
	o => \D6[6]~output_o\);

-- Location: IOOBUF_X115_Y91_N9
\D6[7]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \D6_in|or9|S\(7),
	devoe => ww_devoe,
	o => \D6[7]~output_o\);

-- Location: IOOBUF_X117_Y81_N2
\D6[8]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \D6_in|or9|S\(8),
	devoe => ww_devoe,
	o => \D6[8]~output_o\);

-- Location: IOOBUF_X95_Y91_N16
\D6[9]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \D6_in|or9|S\(9),
	devoe => ww_devoe,
	o => \D6[9]~output_o\);

-- Location: IOOBUF_X106_Y91_N9
\D6[10]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \D6_in|or9|S\(10),
	devoe => ww_devoe,
	o => \D6[10]~output_o\);

-- Location: IOOBUF_X117_Y18_N9
\D6[11]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \D6_in|or9|S\(11),
	devoe => ww_devoe,
	o => \D6[11]~output_o\);

-- Location: IOOBUF_X117_Y19_N9
\D6[12]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \D6_in|or9|S\(12),
	devoe => ww_devoe,
	o => \D6[12]~output_o\);

-- Location: IOOBUF_X117_Y21_N9
\D6[13]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \D6_in|or9|S\(13),
	devoe => ww_devoe,
	o => \D6[13]~output_o\);

-- Location: IOOBUF_X17_Y91_N2
\D6[14]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \D6_in|or9|S\(14),
	devoe => ww_devoe,
	o => \D6[14]~output_o\);

-- Location: IOOBUF_X19_Y91_N9
\D6[15]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \D6_in|or9|S\(15),
	devoe => ww_devoe,
	o => \D6[15]~output_o\);

-- Location: IOOBUF_X24_Y91_N2
\D6[16]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \D6_in|or9|S\(16),
	devoe => ww_devoe,
	o => \D6[16]~output_o\);

-- Location: IOOBUF_X117_Y60_N9
\D6[17]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \D6_in|or9|S\(17),
	devoe => ww_devoe,
	o => \D6[17]~output_o\);

-- Location: IOOBUF_X117_Y56_N2
\D6[18]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \D6_in|or9|S\(18),
	devoe => ww_devoe,
	o => \D6[18]~output_o\);

-- Location: IOOBUF_X117_Y57_N9
\D6[19]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \D6_in|or9|S\(19),
	devoe => ww_devoe,
	o => \D6[19]~output_o\);

-- Location: IOOBUF_X117_Y36_N9
\D6[20]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \D6_in|or9|S\(20),
	devoe => ww_devoe,
	o => \D6[20]~output_o\);

-- Location: IOOBUF_X117_Y42_N9
\D6[21]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \D6_in|or9|S\(21),
	devoe => ww_devoe,
	o => \D6[21]~output_o\);

-- Location: IOOBUF_X117_Y42_N2
\D6[22]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \D6_in|or9|S\(22),
	devoe => ww_devoe,
	o => \D6[22]~output_o\);

-- Location: IOOBUF_X115_Y0_N9
\D6[23]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \D6_in|or9|S\(23),
	devoe => ww_devoe,
	o => \D6[23]~output_o\);

-- Location: IOOBUF_X117_Y6_N2
\D6[24]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \D6_in|or9|S\(24),
	devoe => ww_devoe,
	o => \D6[24]~output_o\);

-- Location: IOOBUF_X84_Y0_N16
\D6[25]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \D6_in|or9|S\(25),
	devoe => ww_devoe,
	o => \D6[25]~output_o\);

-- Location: IOOBUF_X117_Y11_N2
\D6[26]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \D6_in|or9|S\(26),
	devoe => ww_devoe,
	o => \D6[26]~output_o\);

-- Location: IOOBUF_X117_Y35_N9
\D6[27]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \D6_in|or9|S\(27),
	devoe => ww_devoe,
	o => \D6[27]~output_o\);

-- Location: IOOBUF_X117_Y55_N9
\D6[28]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \D6_in|or9|S\(28),
	devoe => ww_devoe,
	o => \D6[28]~output_o\);

-- Location: IOOBUF_X19_Y91_N23
\D6[29]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \D6_in|or9|S\(29),
	devoe => ww_devoe,
	o => \D6[29]~output_o\);

-- Location: IOOBUF_X117_Y17_N2
\D6[30]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \D6_in|or9|S\(30),
	devoe => ww_devoe,
	o => \D6[30]~output_o\);

-- Location: IOOBUF_X117_Y69_N9
\D6[31]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \D6_in|or9|S\(31),
	devoe => ww_devoe,
	o => \D6[31]~output_o\);

-- Location: IOOBUF_X117_Y74_N9
\D7[0]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \D7_in|AND_9|S\(0),
	devoe => ww_devoe,
	o => \D7[0]~output_o\);

-- Location: IOOBUF_X50_Y91_N23
\D7[1]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \D7_in|AND_9|S\(1),
	devoe => ww_devoe,
	o => \D7[1]~output_o\);

-- Location: IOOBUF_X117_Y70_N9
\D7[2]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \D7_in|AND_9|S\(2),
	devoe => ww_devoe,
	o => \D7[2]~output_o\);

-- Location: IOOBUF_X66_Y91_N2
\D7[3]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \D7_in|AND_9|S\(3),
	devoe => ww_devoe,
	o => \D7[3]~output_o\);

-- Location: IOOBUF_X34_Y91_N23
\D7[4]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \D7_in|AND_9|S\(4),
	devoe => ww_devoe,
	o => \D7[4]~output_o\);

-- Location: IOOBUF_X108_Y91_N2
\D7[5]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \D7_in|AND_9|S\(5),
	devoe => ww_devoe,
	o => \D7[5]~output_o\);

-- Location: IOOBUF_X115_Y91_N23
\D7[6]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \D7_in|AND_9|S\(6),
	devoe => ww_devoe,
	o => \D7[6]~output_o\);

-- Location: IOOBUF_X113_Y91_N2
\D7[7]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \D7_in|AND_9|S\(7),
	devoe => ww_devoe,
	o => \D7[7]~output_o\);

-- Location: IOOBUF_X117_Y81_N9
\D7[8]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \D7_in|AND_9|S\(8),
	devoe => ww_devoe,
	o => \D7[8]~output_o\);

-- Location: IOOBUF_X86_Y0_N23
\D7[9]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \D7_in|AND_9|S\(9),
	devoe => ww_devoe,
	o => \D7[9]~output_o\);

-- Location: IOOBUF_X113_Y91_N23
\D7[10]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \D7_in|AND_9|S\(10),
	devoe => ww_devoe,
	o => \D7[10]~output_o\);

-- Location: IOOBUF_X117_Y23_N2
\D7[11]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \D7_in|AND_9|S\(11),
	devoe => ww_devoe,
	o => \D7[11]~output_o\);

-- Location: IOOBUF_X117_Y26_N2
\D7[12]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \D7_in|AND_9|S\(12),
	devoe => ww_devoe,
	o => \D7[12]~output_o\);

-- Location: IOOBUF_X117_Y21_N2
\D7[13]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \D7_in|AND_9|S\(13),
	devoe => ww_devoe,
	o => \D7[13]~output_o\);

-- Location: IOOBUF_X28_Y91_N16
\D7[14]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \D7_in|AND_9|S\(14),
	devoe => ww_devoe,
	o => \D7[14]~output_o\);

-- Location: IOOBUF_X12_Y91_N9
\D7[15]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \D7_in|AND_9|S\(15),
	devoe => ww_devoe,
	o => \D7[15]~output_o\);

-- Location: IOOBUF_X21_Y91_N9
\D7[16]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \D7_in|AND_9|S\(16),
	devoe => ww_devoe,
	o => \D7[16]~output_o\);

-- Location: IOOBUF_X117_Y61_N2
\D7[17]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \D7_in|AND_9|S\(17),
	devoe => ww_devoe,
	o => \D7[17]~output_o\);

-- Location: IOOBUF_X117_Y53_N9
\D7[18]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \D7_in|AND_9|S\(18),
	devoe => ww_devoe,
	o => \D7[18]~output_o\);

-- Location: IOOBUF_X117_Y57_N2
\D7[19]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \D7_in|AND_9|S\(19),
	devoe => ww_devoe,
	o => \D7[19]~output_o\);

-- Location: IOOBUF_X117_Y41_N9
\D7[20]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \D7_in|AND_9|S\(20),
	devoe => ww_devoe,
	o => \D7[20]~output_o\);

-- Location: IOOBUF_X117_Y34_N9
\D7[21]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \D7_in|AND_9|S\(21),
	devoe => ww_devoe,
	o => \D7[21]~output_o\);

-- Location: IOOBUF_X117_Y35_N2
\D7[22]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \D7_in|AND_9|S\(22),
	devoe => ww_devoe,
	o => \D7[22]~output_o\);

-- Location: IOOBUF_X117_Y5_N2
\D7[23]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \D7_in|AND_9|S\(23),
	devoe => ww_devoe,
	o => \D7[23]~output_o\);

-- Location: IOOBUF_X115_Y0_N23
\D7[24]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \D7_in|AND_9|S\(24),
	devoe => ww_devoe,
	o => \D7[24]~output_o\);

-- Location: IOOBUF_X92_Y91_N2
\D7[25]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \D7_in|AND_9|S\(25),
	devoe => ww_devoe,
	o => \D7[25]~output_o\);

-- Location: IOOBUF_X117_Y10_N9
\D7[26]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \D7_in|AND_9|S\(26),
	devoe => ww_devoe,
	o => \D7[26]~output_o\);

-- Location: IOOBUF_X117_Y39_N2
\D7[27]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \D7_in|AND_9|S\(27),
	devoe => ww_devoe,
	o => \D7[27]~output_o\);

-- Location: IOOBUF_X117_Y59_N2
\D7[28]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \D7_in|AND_9|S\(28),
	devoe => ww_devoe,
	o => \D7[28]~output_o\);

-- Location: IOOBUF_X21_Y91_N23
\D7[29]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \D7_in|AND_9|S\(29),
	devoe => ww_devoe,
	o => \D7[29]~output_o\);

-- Location: IOOBUF_X117_Y24_N2
\D7[30]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \D7_in|AND_9|S\(30),
	devoe => ww_devoe,
	o => \D7[30]~output_o\);

-- Location: IOOBUF_X117_Y69_N2
\D7[31]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \D7_in|AND_9|S\(31),
	devoe => ww_devoe,
	o => \D7[31]~output_o\);

-- Location: IOIBUF_X75_Y91_N8
\B[0]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(0),
	o => \B[0]~input_o\);

-- Location: IOIBUF_X117_Y74_N1
\A[0]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(0),
	o => \A[0]~input_o\);

-- Location: IOIBUF_X28_Y91_N1
\funct7~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_funct7,
	o => \funct7~input_o\);

-- Location: LCCOMB_X72_Y69_N16
\D0_in|AddSub|adder_inst|full_adder[0]|S\ : cycloneiv_lcell_comb
-- Equation(s):
-- \D0_in|AddSub|adder_inst|full_adder[0]|S~combout\ = \B[0]~input_o\ $ (\A[0]~input_o\ $ (\funct7~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B[0]~input_o\,
	datac => \A[0]~input_o\,
	datad => \funct7~input_o\,
	combout => \D0_in|AddSub|adder_inst|full_adder[0]|S~combout\);

-- Location: IOIBUF_X117_Y73_N1
\A[1]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(1),
	o => \A[1]~input_o\);

-- Location: IOIBUF_X79_Y91_N8
\B[1]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(1),
	o => \B[1]~input_o\);

-- Location: LCCOMB_X79_Y70_N8
\D0_in|AddSub|adder_inst|full_adder[1]|S\ : cycloneiv_lcell_comb
-- Equation(s):
-- \D0_in|AddSub|adder_inst|full_adder[1]|S~combout\ = \A[1]~input_o\ $ (\funct7~input_o\ $ (\B[1]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[1]~input_o\,
	datab => \funct7~input_o\,
	datac => \B[1]~input_o\,
	combout => \D0_in|AddSub|adder_inst|full_adder[1]|S~combout\);

-- Location: IOIBUF_X79_Y91_N15
\B[2]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(2),
	o => \B[2]~input_o\);

-- Location: IOIBUF_X82_Y91_N8
\A[2]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(2),
	o => \A[2]~input_o\);

-- Location: LCCOMB_X79_Y70_N26
\D0_in|AddSub|adder_inst|full_adder[2]|S\ : cycloneiv_lcell_comb
-- Equation(s):
-- \D0_in|AddSub|adder_inst|full_adder[2]|S~combout\ = \B[2]~input_o\ $ (\funct7~input_o\ $ (\A[2]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[2]~input_o\,
	datab => \funct7~input_o\,
	datac => \A[2]~input_o\,
	combout => \D0_in|AddSub|adder_inst|full_adder[2]|S~combout\);

-- Location: IOIBUF_X75_Y91_N1
\B[3]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(3),
	o => \B[3]~input_o\);

-- Location: IOIBUF_X79_Y91_N22
\A[3]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(3),
	o => \A[3]~input_o\);

-- Location: LCCOMB_X71_Y87_N24
\D0_in|AddSub|adder_inst|full_adder[3]|S\ : cycloneiv_lcell_comb
-- Equation(s):
-- \D0_in|AddSub|adder_inst|full_adder[3]|S~combout\ = \funct7~input_o\ $ (\B[3]~input_o\ $ (\A[3]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \funct7~input_o\,
	datac => \B[3]~input_o\,
	datad => \A[3]~input_o\,
	combout => \D0_in|AddSub|adder_inst|full_adder[3]|S~combout\);

-- Location: IOIBUF_X77_Y91_N1
\A[4]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(4),
	o => \A[4]~input_o\);

-- Location: IOIBUF_X79_Y91_N1
\B[4]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(4),
	o => \B[4]~input_o\);

-- Location: LCCOMB_X71_Y87_N10
\D0_in|AddSub|adder_inst|full_adder[4]|S\ : cycloneiv_lcell_comb
-- Equation(s):
-- \D0_in|AddSub|adder_inst|full_adder[4]|S~combout\ = \A[4]~input_o\ $ (\B[4]~input_o\ $ (\funct7~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[4]~input_o\,
	datab => \B[4]~input_o\,
	datac => \funct7~input_o\,
	combout => \D0_in|AddSub|adder_inst|full_adder[4]|S~combout\);

-- Location: IOIBUF_X106_Y91_N15
\B[5]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(5),
	o => \B[5]~input_o\);

-- Location: IOIBUF_X104_Y91_N8
\A[5]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(5),
	o => \A[5]~input_o\);

-- Location: LCCOMB_X108_Y90_N16
\D0_in|AddSub|adder_inst|full_adder[5]|S\ : cycloneiv_lcell_comb
-- Equation(s):
-- \D0_in|AddSub|adder_inst|full_adder[5]|S~combout\ = \funct7~input_o\ $ (\B[5]~input_o\ $ (\A[5]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \funct7~input_o\,
	datac => \B[5]~input_o\,
	datad => \A[5]~input_o\,
	combout => \D0_in|AddSub|adder_inst|full_adder[5]|S~combout\);

-- Location: IOIBUF_X101_Y91_N8
\B[6]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(6),
	o => \B[6]~input_o\);

-- Location: IOIBUF_X101_Y91_N1
\A[6]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(6),
	o => \A[6]~input_o\);

-- Location: LCCOMB_X108_Y90_N26
\D0_in|AddSub|adder_inst|full_adder[6]|S\ : cycloneiv_lcell_comb
-- Equation(s):
-- \D0_in|AddSub|adder_inst|full_adder[6]|S~combout\ = \B[6]~input_o\ $ (\funct7~input_o\ $ (\A[6]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[6]~input_o\,
	datab => \funct7~input_o\,
	datac => \A[6]~input_o\,
	combout => \D0_in|AddSub|adder_inst|full_adder[6]|S~combout\);

-- Location: IOIBUF_X99_Y91_N8
\A[7]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(7),
	o => \A[7]~input_o\);

-- Location: IOIBUF_X99_Y91_N15
\B[7]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(7),
	o => \B[7]~input_o\);

-- Location: LCCOMB_X108_Y90_N12
\D0_in|AddSub|adder_inst|full_adder[7]|S\ : cycloneiv_lcell_comb
-- Equation(s):
-- \D0_in|AddSub|adder_inst|full_adder[7]|S~combout\ = \funct7~input_o\ $ (\A[7]~input_o\ $ (\B[7]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \funct7~input_o\,
	datac => \A[7]~input_o\,
	datad => \B[7]~input_o\,
	combout => \D0_in|AddSub|adder_inst|full_adder[7]|S~combout\);

-- Location: IOIBUF_X117_Y80_N8
\A[8]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(8),
	o => \A[8]~input_o\);

-- Location: IOIBUF_X117_Y83_N1
\B[8]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(8),
	o => \B[8]~input_o\);

-- Location: LCCOMB_X116_Y81_N16
\D0_in|AddSub|adder_inst|full_adder[8]|S\ : cycloneiv_lcell_comb
-- Equation(s):
-- \D0_in|AddSub|adder_inst|full_adder[8]|S~combout\ = \A[8]~input_o\ $ (\B[8]~input_o\ $ (\funct7~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \A[8]~input_o\,
	datac => \B[8]~input_o\,
	datad => \funct7~input_o\,
	combout => \D0_in|AddSub|adder_inst|full_adder[8]|S~combout\);

-- Location: IOIBUF_X92_Y91_N8
\A[9]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(9),
	o => \A[9]~input_o\);

-- Location: IOIBUF_X84_Y0_N8
\B[9]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(9),
	o => \B[9]~input_o\);

-- Location: LCCOMB_X79_Y70_N12
\D0_in|AddSub|adder_inst|full_adder[9]|S\ : cycloneiv_lcell_comb
-- Equation(s):
-- \D0_in|AddSub|adder_inst|full_adder[9]|S~combout\ = \funct7~input_o\ $ (\A[9]~input_o\ $ (\B[9]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \funct7~input_o\,
	datac => \A[9]~input_o\,
	datad => \B[9]~input_o\,
	combout => \D0_in|AddSub|adder_inst|full_adder[9]|S~combout\);

-- Location: IOIBUF_X117_Y86_N1
\A[10]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(10),
	o => \A[10]~input_o\);

-- Location: IOIBUF_X104_Y91_N1
\B[10]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(10),
	o => \B[10]~input_o\);

-- Location: LCCOMB_X108_Y90_N22
\D0_in|AddSub|adder_inst|full_adder[10]|S\ : cycloneiv_lcell_comb
-- Equation(s):
-- \D0_in|AddSub|adder_inst|full_adder[10]|S~combout\ = \funct7~input_o\ $ (\A[10]~input_o\ $ (\B[10]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \funct7~input_o\,
	datac => \A[10]~input_o\,
	datad => \B[10]~input_o\,
	combout => \D0_in|AddSub|adder_inst|full_adder[10]|S~combout\);

-- Location: IOIBUF_X117_Y28_N8
\A[11]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(11),
	o => \A[11]~input_o\);

-- Location: IOIBUF_X108_Y0_N1
\B[11]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(11),
	o => \B[11]~input_o\);

-- Location: LCCOMB_X116_Y26_N8
\D0_in|AddSub|adder_inst|full_adder[11]|S\ : cycloneiv_lcell_comb
-- Equation(s):
-- \D0_in|AddSub|adder_inst|full_adder[11]|S~combout\ = \funct7~input_o\ $ (\A[11]~input_o\ $ (\B[11]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \funct7~input_o\,
	datac => \A[11]~input_o\,
	datad => \B[11]~input_o\,
	combout => \D0_in|AddSub|adder_inst|full_adder[11]|S~combout\);

-- Location: IOIBUF_X117_Y31_N1
\B[12]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(12),
	o => \B[12]~input_o\);

-- Location: IOIBUF_X117_Y32_N8
\A[12]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(12),
	o => \A[12]~input_o\);

-- Location: LCCOMB_X116_Y26_N18
\D0_in|AddSub|adder_inst|full_adder[12]|S\ : cycloneiv_lcell_comb
-- Equation(s):
-- \D0_in|AddSub|adder_inst|full_adder[12]|S~combout\ = \funct7~input_o\ $ (\B[12]~input_o\ $ (\A[12]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \funct7~input_o\,
	datab => \B[12]~input_o\,
	datac => \A[12]~input_o\,
	combout => \D0_in|AddSub|adder_inst|full_adder[12]|S~combout\);

-- Location: IOIBUF_X117_Y29_N1
\A[13]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(13),
	o => \A[13]~input_o\);

-- Location: IOIBUF_X117_Y33_N1
\B[13]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(13),
	o => \B[13]~input_o\);

-- Location: LCCOMB_X116_Y26_N20
\D0_in|AddSub|adder_inst|full_adder[13]|S\ : cycloneiv_lcell_comb
-- Equation(s):
-- \D0_in|AddSub|adder_inst|full_adder[13]|S~combout\ = \A[13]~input_o\ $ (\funct7~input_o\ $ (\B[13]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \A[13]~input_o\,
	datac => \funct7~input_o\,
	datad => \B[13]~input_o\,
	combout => \D0_in|AddSub|adder_inst|full_adder[13]|S~combout\);

-- Location: IOIBUF_X30_Y91_N1
\A[14]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(14),
	o => \A[14]~input_o\);

-- Location: IOIBUF_X32_Y91_N1
\B[14]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(14),
	o => \B[14]~input_o\);

-- Location: LCCOMB_X25_Y90_N24
\D0_in|AddSub|adder_inst|full_adder[14]|S\ : cycloneiv_lcell_comb
-- Equation(s):
-- \D0_in|AddSub|adder_inst|full_adder[14]|S~combout\ = \funct7~input_o\ $ (\A[14]~input_o\ $ (\B[14]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100101100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \funct7~input_o\,
	datab => \A[14]~input_o\,
	datad => \B[14]~input_o\,
	combout => \D0_in|AddSub|adder_inst|full_adder[14]|S~combout\);

-- Location: IOIBUF_X15_Y91_N15
\B[15]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(15),
	o => \B[15]~input_o\);

-- Location: IOIBUF_X30_Y91_N15
\A[15]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(15),
	o => \A[15]~input_o\);

-- Location: LCCOMB_X25_Y90_N2
\D0_in|AddSub|adder_inst|full_adder[15]|S\ : cycloneiv_lcell_comb
-- Equation(s):
-- \D0_in|AddSub|adder_inst|full_adder[15]|S~combout\ = \B[15]~input_o\ $ (\A[15]~input_o\ $ (\funct7~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100101100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[15]~input_o\,
	datab => \A[15]~input_o\,
	datad => \funct7~input_o\,
	combout => \D0_in|AddSub|adder_inst|full_adder[15]|S~combout\);

-- Location: IOIBUF_X28_Y91_N22
\A[16]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(16),
	o => \A[16]~input_o\);

-- Location: IOIBUF_X30_Y91_N22
\B[16]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(16),
	o => \B[16]~input_o\);

-- Location: LCCOMB_X25_Y90_N28
\D0_in|AddSub|adder_inst|full_adder[16]|S\ : cycloneiv_lcell_comb
-- Equation(s):
-- \D0_in|AddSub|adder_inst|full_adder[16]|S~combout\ = \funct7~input_o\ $ (\A[16]~input_o\ $ (\B[16]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \funct7~input_o\,
	datab => \A[16]~input_o\,
	datac => \B[16]~input_o\,
	combout => \D0_in|AddSub|adder_inst|full_adder[16]|S~combout\);

-- Location: IOIBUF_X117_Y62_N1
\B[17]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(17),
	o => \B[17]~input_o\);

-- Location: IOIBUF_X117_Y64_N1
\A[17]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(17),
	o => \A[17]~input_o\);

-- Location: LCCOMB_X116_Y60_N8
\D0_in|AddSub|adder_inst|full_adder[17]|S\ : cycloneiv_lcell_comb
-- Equation(s):
-- \D0_in|AddSub|adder_inst|full_adder[17]|S~combout\ = \funct7~input_o\ $ (\B[17]~input_o\ $ (\A[17]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100101100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \funct7~input_o\,
	datab => \B[17]~input_o\,
	datad => \A[17]~input_o\,
	combout => \D0_in|AddSub|adder_inst|full_adder[17]|S~combout\);

-- Location: IOIBUF_X117_Y66_N1
\A[18]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(18),
	o => \A[18]~input_o\);

-- Location: IOIBUF_X117_Y65_N1
\B[18]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(18),
	o => \B[18]~input_o\);

-- Location: LCCOMB_X116_Y60_N2
\D0_in|AddSub|adder_inst|full_adder[18]|S\ : cycloneiv_lcell_comb
-- Equation(s):
-- \D0_in|AddSub|adder_inst|full_adder[18]|S~combout\ = \funct7~input_o\ $ (\A[18]~input_o\ $ (\B[18]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100101100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \funct7~input_o\,
	datab => \A[18]~input_o\,
	datad => \B[18]~input_o\,
	combout => \D0_in|AddSub|adder_inst|full_adder[18]|S~combout\);

-- Location: IOIBUF_X117_Y64_N8
\A[19]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(19),
	o => \A[19]~input_o\);

-- Location: IOIBUF_X117_Y78_N1
\B[19]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(19),
	o => \B[19]~input_o\);

-- Location: LCCOMB_X116_Y60_N20
\D0_in|AddSub|adder_inst|full_adder[19]|S\ : cycloneiv_lcell_comb
-- Equation(s):
-- \D0_in|AddSub|adder_inst|full_adder[19]|S~combout\ = \funct7~input_o\ $ (\A[19]~input_o\ $ (\B[19]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100101100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \funct7~input_o\,
	datab => \A[19]~input_o\,
	datad => \B[19]~input_o\,
	combout => \D0_in|AddSub|adder_inst|full_adder[19]|S~combout\);

-- Location: IOIBUF_X117_Y48_N8
\A[20]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(20),
	o => \A[20]~input_o\);

-- Location: IOIBUF_X117_Y49_N8
\B[20]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(20),
	o => \B[20]~input_o\);

-- Location: LCCOMB_X116_Y43_N8
\D0_in|AddSub|adder_inst|full_adder[20]|S\ : cycloneiv_lcell_comb
-- Equation(s):
-- \D0_in|AddSub|adder_inst|full_adder[20]|S~combout\ = \A[20]~input_o\ $ (\funct7~input_o\ $ (\B[20]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \A[20]~input_o\,
	datac => \funct7~input_o\,
	datad => \B[20]~input_o\,
	combout => \D0_in|AddSub|adder_inst|full_adder[20]|S~combout\);

-- Location: IOIBUF_X117_Y49_N1
\B[21]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(21),
	o => \B[21]~input_o\);

-- Location: IOIBUF_X117_Y51_N1
\A[21]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(21),
	o => \A[21]~input_o\);

-- Location: LCCOMB_X116_Y43_N10
\D0_in|AddSub|adder_inst|full_adder[21]|S\ : cycloneiv_lcell_comb
-- Equation(s):
-- \D0_in|AddSub|adder_inst|full_adder[21]|S~combout\ = \B[21]~input_o\ $ (\funct7~input_o\ $ (\A[21]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B[21]~input_o\,
	datac => \funct7~input_o\,
	datad => \A[21]~input_o\,
	combout => \D0_in|AddSub|adder_inst|full_adder[21]|S~combout\);

-- Location: IOIBUF_X117_Y50_N8
\B[22]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(22),
	o => \B[22]~input_o\);

-- Location: IOIBUF_X117_Y51_N8
\A[22]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(22),
	o => \A[22]~input_o\);

-- Location: LCCOMB_X116_Y43_N20
\D0_in|AddSub|adder_inst|full_adder[22]|S\ : cycloneiv_lcell_comb
-- Equation(s):
-- \D0_in|AddSub|adder_inst|full_adder[22]|S~combout\ = \B[22]~input_o\ $ (\funct7~input_o\ $ (\A[22]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B[22]~input_o\,
	datac => \funct7~input_o\,
	datad => \A[22]~input_o\,
	combout => \D0_in|AddSub|adder_inst|full_adder[22]|S~combout\);

-- Location: IOIBUF_X111_Y0_N15
\B[23]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(23),
	o => \B[23]~input_o\);

-- Location: IOIBUF_X117_Y15_N8
\A[23]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(23),
	o => \A[23]~input_o\);

-- Location: LCCOMB_X116_Y10_N8
\D0_in|AddSub|adder_inst|full_adder[23]|S\ : cycloneiv_lcell_comb
-- Equation(s):
-- \D0_in|AddSub|adder_inst|full_adder[23]|S~combout\ = \B[23]~input_o\ $ (\funct7~input_o\ $ (\A[23]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100101100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[23]~input_o\,
	datab => \funct7~input_o\,
	datad => \A[23]~input_o\,
	combout => \D0_in|AddSub|adder_inst|full_adder[23]|S~combout\);

-- Location: IOIBUF_X104_Y0_N15
\A[24]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(24),
	o => \A[24]~input_o\);

-- Location: IOIBUF_X117_Y15_N1
\B[24]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(24),
	o => \B[24]~input_o\);

-- Location: LCCOMB_X116_Y10_N18
\D0_in|AddSub|adder_inst|full_adder[24]|S\ : cycloneiv_lcell_comb
-- Equation(s):
-- \D0_in|AddSub|adder_inst|full_adder[24]|S~combout\ = \A[24]~input_o\ $ (\funct7~input_o\ $ (\B[24]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[24]~input_o\,
	datab => \funct7~input_o\,
	datac => \B[24]~input_o\,
	combout => \D0_in|AddSub|adder_inst|full_adder[24]|S~combout\);

-- Location: IOIBUF_X86_Y91_N8
\A[25]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(25),
	o => \A[25]~input_o\);

-- Location: IOIBUF_X88_Y91_N8
\B[25]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(25),
	o => \B[25]~input_o\);

-- Location: LCCOMB_X77_Y67_N8
\D0_in|AddSub|adder_inst|full_adder[25]|S\ : cycloneiv_lcell_comb
-- Equation(s):
-- \D0_in|AddSub|adder_inst|full_adder[25]|S~combout\ = \funct7~input_o\ $ (\A[25]~input_o\ $ (\B[25]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \funct7~input_o\,
	datac => \A[25]~input_o\,
	datad => \B[25]~input_o\,
	combout => \D0_in|AddSub|adder_inst|full_adder[25]|S~combout\);

-- Location: IOIBUF_X117_Y13_N8
\A[26]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(26),
	o => \A[26]~input_o\);

-- Location: IOIBUF_X117_Y17_N8
\B[26]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(26),
	o => \B[26]~input_o\);

-- Location: LCCOMB_X116_Y10_N28
\D0_in|AddSub|adder_inst|full_adder[26]|S\ : cycloneiv_lcell_comb
-- Equation(s):
-- \D0_in|AddSub|adder_inst|full_adder[26]|S~combout\ = \funct7~input_o\ $ (\A[26]~input_o\ $ (\B[26]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \funct7~input_o\,
	datac => \A[26]~input_o\,
	datad => \B[26]~input_o\,
	combout => \D0_in|AddSub|adder_inst|full_adder[26]|S~combout\);

-- Location: IOIBUF_X117_Y48_N1
\A[27]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(27),
	o => \A[27]~input_o\);

-- Location: IOIBUF_X117_Y50_N1
\B[27]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(27),
	o => \B[27]~input_o\);

-- Location: LCCOMB_X116_Y43_N6
\D0_in|AddSub|adder_inst|full_adder[27]|S\ : cycloneiv_lcell_comb
-- Equation(s):
-- \D0_in|AddSub|adder_inst|full_adder[27]|S~combout\ = \A[27]~input_o\ $ (\funct7~input_o\ $ (\B[27]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[27]~input_o\,
	datab => \funct7~input_o\,
	datac => \B[27]~input_o\,
	combout => \D0_in|AddSub|adder_inst|full_adder[27]|S~combout\);

-- Location: IOIBUF_X117_Y68_N1
\A[28]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(28),
	o => \A[28]~input_o\);

-- Location: IOIBUF_X117_Y72_N1
\B[28]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(28),
	o => \B[28]~input_o\);

-- Location: LCCOMB_X116_Y60_N6
\D0_in|AddSub|adder_inst|full_adder[28]|S\ : cycloneiv_lcell_comb
-- Equation(s):
-- \D0_in|AddSub|adder_inst|full_adder[28]|S~combout\ = \funct7~input_o\ $ (\A[28]~input_o\ $ (\B[28]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \funct7~input_o\,
	datac => \A[28]~input_o\,
	datad => \B[28]~input_o\,
	combout => \D0_in|AddSub|adder_inst|full_adder[28]|S~combout\);

-- Location: IOIBUF_X28_Y91_N8
\B[29]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(29),
	o => \B[29]~input_o\);

-- Location: IOIBUF_X30_Y91_N8
\A[29]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(29),
	o => \A[29]~input_o\);

-- Location: LCCOMB_X25_Y90_N30
\D0_in|AddSub|adder_inst|full_adder[29]|S\ : cycloneiv_lcell_comb
-- Equation(s):
-- \D0_in|AddSub|adder_inst|full_adder[29]|S~combout\ = \funct7~input_o\ $ (\B[29]~input_o\ $ (\A[29]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \funct7~input_o\,
	datab => \B[29]~input_o\,
	datac => \A[29]~input_o\,
	combout => \D0_in|AddSub|adder_inst|full_adder[29]|S~combout\);

-- Location: IOIBUF_X117_Y27_N8
\B[30]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(30),
	o => \B[30]~input_o\);

-- Location: IOIBUF_X117_Y31_N8
\A[30]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(30),
	o => \A[30]~input_o\);

-- Location: LCCOMB_X116_Y26_N6
\D0_in|AddSub|adder_inst|full_adder[30]|S\ : cycloneiv_lcell_comb
-- Equation(s):
-- \D0_in|AddSub|adder_inst|full_adder[30]|S~combout\ = \B[30]~input_o\ $ (\funct7~input_o\ $ (\A[30]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[30]~input_o\,
	datac => \funct7~input_o\,
	datad => \A[30]~input_o\,
	combout => \D0_in|AddSub|adder_inst|full_adder[30]|S~combout\);

-- Location: IOIBUF_X82_Y91_N1
\A[31]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(31),
	o => \A[31]~input_o\);

-- Location: IOIBUF_X88_Y91_N1
\B[31]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(31),
	o => \B[31]~input_o\);

-- Location: LCCOMB_X76_Y69_N0
\D0_in|AddSub|adder_inst|full_adder[31]|S\ : cycloneiv_lcell_comb
-- Equation(s):
-- \D0_in|AddSub|adder_inst|full_adder[31]|S~combout\ = \A[31]~input_o\ $ (\funct7~input_o\ $ (\B[31]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[31]~input_o\,
	datab => \funct7~input_o\,
	datac => \B[31]~input_o\,
	combout => \D0_in|AddSub|adder_inst|full_adder[31]|S~combout\);

-- Location: LCCOMB_X72_Y69_N10
\D1_in|SLL|ShiftLeft0~25\ : cycloneiv_lcell_comb
-- Equation(s):
-- \D1_in|SLL|ShiftLeft0~25_combout\ = (!\B[1]~input_o\ & (!\B[0]~input_o\ & \A[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[1]~input_o\,
	datab => \B[0]~input_o\,
	datac => \A[0]~input_o\,
	combout => \D1_in|SLL|ShiftLeft0~25_combout\);

-- Location: LCCOMB_X72_Y66_N26
\D1_in|SLL|ShiftLeft0~168\ : cycloneiv_lcell_comb
-- Equation(s):
-- \D1_in|SLL|ShiftLeft0~168_combout\ = (!\B[3]~input_o\ & (\D1_in|SLL|ShiftLeft0~25_combout\ & (!\B[4]~input_o\ & !\B[2]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[3]~input_o\,
	datab => \D1_in|SLL|ShiftLeft0~25_combout\,
	datac => \B[4]~input_o\,
	datad => \B[2]~input_o\,
	combout => \D1_in|SLL|ShiftLeft0~168_combout\);

-- Location: LCCOMB_X72_Y69_N28
\D1_in|SLL|ShiftLeft0~26\ : cycloneiv_lcell_comb
-- Equation(s):
-- \D1_in|SLL|ShiftLeft0~26_combout\ = (\B[0]~input_o\ & (\A[0]~input_o\)) # (!\B[0]~input_o\ & ((\A[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B[0]~input_o\,
	datac => \A[0]~input_o\,
	datad => \A[1]~input_o\,
	combout => \D1_in|SLL|ShiftLeft0~26_combout\);

-- Location: LCCOMB_X75_Y65_N16
\D5_in|Sel_SR|D5[17]~28\ : cycloneiv_lcell_comb
-- Equation(s):
-- \D5_in|Sel_SR|D5[17]~28_combout\ = (!\B[1]~input_o\ & (!\B[3]~input_o\ & !\B[2]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B[1]~input_o\,
	datac => \B[3]~input_o\,
	datad => \B[2]~input_o\,
	combout => \D5_in|Sel_SR|D5[17]~28_combout\);

-- Location: LCCOMB_X75_Y65_N18
\D1_in|SLL|ShiftLeft0~27\ : cycloneiv_lcell_comb
-- Equation(s):
-- \D1_in|SLL|ShiftLeft0~27_combout\ = (\D1_in|SLL|ShiftLeft0~26_combout\ & (!\B[4]~input_o\ & \D5_in|Sel_SR|D5[17]~28_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \D1_in|SLL|ShiftLeft0~26_combout\,
	datac => \B[4]~input_o\,
	datad => \D5_in|Sel_SR|D5[17]~28_combout\,
	combout => \D1_in|SLL|ShiftLeft0~27_combout\);

-- Location: LCCOMB_X75_Y69_N0
\D1_in|SLL|ShiftLeft0~24\ : cycloneiv_lcell_comb
-- Equation(s):
-- \D1_in|SLL|ShiftLeft0~24_combout\ = (!\B[3]~input_o\ & (!\B[4]~input_o\ & !\B[2]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[3]~input_o\,
	datab => \B[4]~input_o\,
	datac => \B[2]~input_o\,
	combout => \D1_in|SLL|ShiftLeft0~24_combout\);

-- Location: LCCOMB_X72_Y69_N0
\D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~10\ : cycloneiv_lcell_comb
-- Equation(s):
-- \D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~10_combout\ = (!\B[1]~input_o\ & \B[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[1]~input_o\,
	datac => \B[0]~input_o\,
	combout => \D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~10_combout\);

-- Location: LCCOMB_X72_Y69_N22
\D1_in|SLL|ShiftLeft0~28\ : cycloneiv_lcell_comb
-- Equation(s):
-- \D1_in|SLL|ShiftLeft0~28_combout\ = (!\B[0]~input_o\ & ((\B[1]~input_o\ & (\A[0]~input_o\)) # (!\B[1]~input_o\ & ((\A[2]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[1]~input_o\,
	datab => \B[0]~input_o\,
	datac => \A[0]~input_o\,
	datad => \A[2]~input_o\,
	combout => \D1_in|SLL|ShiftLeft0~28_combout\);

-- Location: LCCOMB_X72_Y69_N2
\D1_in|SLL|ShiftLeft0~29\ : cycloneiv_lcell_comb
-- Equation(s):
-- \D1_in|SLL|ShiftLeft0~29_combout\ = (\D1_in|SLL|ShiftLeft0~24_combout\ & ((\D1_in|SLL|ShiftLeft0~28_combout\) # ((\D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~10_combout\ & \A[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \D1_in|SLL|ShiftLeft0~24_combout\,
	datab => \D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~10_combout\,
	datac => \D1_in|SLL|ShiftLeft0~28_combout\,
	datad => \A[1]~input_o\,
	combout => \D1_in|SLL|ShiftLeft0~29_combout\);

-- Location: LCCOMB_X72_Y69_N12
\D1_in|SLL|ShiftLeft0~30\ : cycloneiv_lcell_comb
-- Equation(s):
-- \D1_in|SLL|ShiftLeft0~30_combout\ = (!\B[1]~input_o\ & ((\B[0]~input_o\ & ((\A[2]~input_o\))) # (!\B[0]~input_o\ & (\A[3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[1]~input_o\,
	datab => \A[3]~input_o\,
	datac => \B[0]~input_o\,
	datad => \A[2]~input_o\,
	combout => \D1_in|SLL|ShiftLeft0~30_combout\);

-- Location: LCCOMB_X72_Y69_N6
\D1_in|SLL|ShiftLeft0~31\ : cycloneiv_lcell_comb
-- Equation(s):
-- \D1_in|SLL|ShiftLeft0~31_combout\ = (\D1_in|SLL|ShiftLeft0~24_combout\ & ((\D1_in|SLL|ShiftLeft0~30_combout\) # ((\D1_in|SLL|ShiftLeft0~26_combout\ & \B[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \D1_in|SLL|ShiftLeft0~30_combout\,
	datab => \D1_in|SLL|ShiftLeft0~26_combout\,
	datac => \B[1]~input_o\,
	datad => \D1_in|SLL|ShiftLeft0~24_combout\,
	combout => \D1_in|SLL|ShiftLeft0~31_combout\);

-- Location: LCCOMB_X72_Y69_N26
\D1_in|SLL|ShiftLeft0~33\ : cycloneiv_lcell_comb
-- Equation(s):
-- \D1_in|SLL|ShiftLeft0~33_combout\ = (\B[1]~input_o\ & ((\A[2]~input_o\))) # (!\B[1]~input_o\ & (\A[4]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[1]~input_o\,
	datac => \A[4]~input_o\,
	datad => \A[2]~input_o\,
	combout => \D1_in|SLL|ShiftLeft0~33_combout\);

-- Location: LCCOMB_X72_Y69_N24
\D1_in|SLL|ShiftLeft0~32\ : cycloneiv_lcell_comb
-- Equation(s):
-- \D1_in|SLL|ShiftLeft0~32_combout\ = (\B[0]~input_o\ & ((\B[1]~input_o\ & ((\A[1]~input_o\))) # (!\B[1]~input_o\ & (\A[3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[1]~input_o\,
	datab => \A[3]~input_o\,
	datac => \B[0]~input_o\,
	datad => \A[1]~input_o\,
	combout => \D1_in|SLL|ShiftLeft0~32_combout\);

-- Location: LCCOMB_X72_Y69_N20
\D1_in|SLL|ShiftLeft0~34\ : cycloneiv_lcell_comb
-- Equation(s):
-- \D1_in|SLL|ShiftLeft0~34_combout\ = (\D1_in|SLL|ShiftLeft0~32_combout\) # ((\D1_in|SLL|ShiftLeft0~33_combout\ & !\B[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111011001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \D1_in|SLL|ShiftLeft0~33_combout\,
	datab => \D1_in|SLL|ShiftLeft0~32_combout\,
	datac => \B[0]~input_o\,
	combout => \D1_in|SLL|ShiftLeft0~34_combout\);

-- Location: LCCOMB_X71_Y68_N16
\D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~11\ : cycloneiv_lcell_comb
-- Equation(s):
-- \D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~11_combout\ = (!\B[3]~input_o\ & !\B[4]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B[3]~input_o\,
	datad => \B[4]~input_o\,
	combout => \D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~11_combout\);

-- Location: LCCOMB_X73_Y66_N16
\D1_in|SLL|ShiftLeft0~35\ : cycloneiv_lcell_comb
-- Equation(s):
-- \D1_in|SLL|ShiftLeft0~35_combout\ = (\D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~11_combout\ & ((\B[2]~input_o\ & (\D1_in|SLL|ShiftLeft0~25_combout\)) # (!\B[2]~input_o\ & ((\D1_in|SLL|ShiftLeft0~34_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \D1_in|SLL|ShiftLeft0~25_combout\,
	datab => \D1_in|SLL|ShiftLeft0~34_combout\,
	datac => \D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~11_combout\,
	datad => \B[2]~input_o\,
	combout => \D1_in|SLL|ShiftLeft0~35_combout\);

-- Location: LCCOMB_X72_Y69_N30
\D1_in|SLL|ShiftLeft0~36\ : cycloneiv_lcell_comb
-- Equation(s):
-- \D1_in|SLL|ShiftLeft0~36_combout\ = (\B[1]~input_o\ & (\A[3]~input_o\)) # (!\B[1]~input_o\ & ((\A[5]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \A[3]~input_o\,
	datac => \B[1]~input_o\,
	datad => \A[5]~input_o\,
	combout => \D1_in|SLL|ShiftLeft0~36_combout\);

-- Location: LCCOMB_X72_Y69_N8
\D1_in|SLL|ShiftLeft0~37\ : cycloneiv_lcell_comb
-- Equation(s):
-- \D1_in|SLL|ShiftLeft0~37_combout\ = (\B[0]~input_o\ & ((\D1_in|SLL|ShiftLeft0~33_combout\))) # (!\B[0]~input_o\ & (\D1_in|SLL|ShiftLeft0~36_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \D1_in|SLL|ShiftLeft0~36_combout\,
	datab => \B[0]~input_o\,
	datac => \D1_in|SLL|ShiftLeft0~33_combout\,
	combout => \D1_in|SLL|ShiftLeft0~37_combout\);

-- Location: LCCOMB_X73_Y68_N24
\D1_in|SLL|ShiftLeft0~38\ : cycloneiv_lcell_comb
-- Equation(s):
-- \D1_in|SLL|ShiftLeft0~38_combout\ = (\B[2]~input_o\ & (\D1_in|SLL|ShiftLeft0~26_combout\ & (!\B[1]~input_o\))) # (!\B[2]~input_o\ & (((\D1_in|SLL|ShiftLeft0~37_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \D1_in|SLL|ShiftLeft0~26_combout\,
	datab => \B[1]~input_o\,
	datac => \D1_in|SLL|ShiftLeft0~37_combout\,
	datad => \B[2]~input_o\,
	combout => \D1_in|SLL|ShiftLeft0~38_combout\);

-- Location: LCCOMB_X71_Y87_N20
\D1_in|SLL|ShiftLeft0~169\ : cycloneiv_lcell_comb
-- Equation(s):
-- \D1_in|SLL|ShiftLeft0~169_combout\ = (!\B[3]~input_o\ & (!\B[4]~input_o\ & \D1_in|SLL|ShiftLeft0~38_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B[3]~input_o\,
	datac => \B[4]~input_o\,
	datad => \D1_in|SLL|ShiftLeft0~38_combout\,
	combout => \D1_in|SLL|ShiftLeft0~169_combout\);

-- Location: LCCOMB_X72_Y69_N18
\D1_in|SLL|ShiftLeft0~39\ : cycloneiv_lcell_comb
-- Equation(s):
-- \D1_in|SLL|ShiftLeft0~39_combout\ = (\D1_in|SLL|ShiftLeft0~28_combout\) # ((\B[0]~input_o\ & (!\B[1]~input_o\ & \A[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \D1_in|SLL|ShiftLeft0~28_combout\,
	datab => \B[0]~input_o\,
	datac => \B[1]~input_o\,
	datad => \A[1]~input_o\,
	combout => \D1_in|SLL|ShiftLeft0~39_combout\);

-- Location: LCCOMB_X73_Y67_N0
\D1_in|SLL|ShiftLeft0~40\ : cycloneiv_lcell_comb
-- Equation(s):
-- \D1_in|SLL|ShiftLeft0~40_combout\ = (\B[1]~input_o\ & (\A[4]~input_o\)) # (!\B[1]~input_o\ & ((\A[6]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \A[4]~input_o\,
	datac => \A[6]~input_o\,
	datad => \B[1]~input_o\,
	combout => \D1_in|SLL|ShiftLeft0~40_combout\);

-- Location: LCCOMB_X72_Y69_N4
\D1_in|SLL|ShiftLeft0~41\ : cycloneiv_lcell_comb
-- Equation(s):
-- \D1_in|SLL|ShiftLeft0~41_combout\ = (\B[0]~input_o\ & (\D1_in|SLL|ShiftLeft0~36_combout\)) # (!\B[0]~input_o\ & ((\D1_in|SLL|ShiftLeft0~40_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \D1_in|SLL|ShiftLeft0~36_combout\,
	datab => \D1_in|SLL|ShiftLeft0~40_combout\,
	datac => \B[0]~input_o\,
	combout => \D1_in|SLL|ShiftLeft0~41_combout\);

-- Location: LCCOMB_X72_Y68_N24
\D1_in|SLL|ShiftLeft0~42\ : cycloneiv_lcell_comb
-- Equation(s):
-- \D1_in|SLL|ShiftLeft0~42_combout\ = (\D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~11_combout\ & ((\B[2]~input_o\ & (\D1_in|SLL|ShiftLeft0~39_combout\)) # (!\B[2]~input_o\ & ((\D1_in|SLL|ShiftLeft0~41_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \D1_in|SLL|ShiftLeft0~39_combout\,
	datab => \D1_in|SLL|ShiftLeft0~41_combout\,
	datac => \D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~11_combout\,
	datad => \B[2]~input_o\,
	combout => \D1_in|SLL|ShiftLeft0~42_combout\);

-- Location: LCCOMB_X73_Y67_N26
\D1_in|SLL|ShiftLeft0~44\ : cycloneiv_lcell_comb
-- Equation(s):
-- \D1_in|SLL|ShiftLeft0~44_combout\ = (\B[1]~input_o\ & ((\A[5]~input_o\))) # (!\B[1]~input_o\ & (\A[7]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[7]~input_o\,
	datab => \B[1]~input_o\,
	datad => \A[5]~input_o\,
	combout => \D1_in|SLL|ShiftLeft0~44_combout\);

-- Location: LCCOMB_X73_Y67_N28
\D1_in|SLL|ShiftLeft0~45\ : cycloneiv_lcell_comb
-- Equation(s):
-- \D1_in|SLL|ShiftLeft0~45_combout\ = (\B[0]~input_o\ & ((\D1_in|SLL|ShiftLeft0~40_combout\))) # (!\B[0]~input_o\ & (\D1_in|SLL|ShiftLeft0~44_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \D1_in|SLL|ShiftLeft0~44_combout\,
	datab => \D1_in|SLL|ShiftLeft0~40_combout\,
	datad => \B[0]~input_o\,
	combout => \D1_in|SLL|ShiftLeft0~45_combout\);

-- Location: LCCOMB_X72_Y69_N14
\D1_in|SLL|ShiftLeft0~43\ : cycloneiv_lcell_comb
-- Equation(s):
-- \D1_in|SLL|ShiftLeft0~43_combout\ = (\D1_in|SLL|ShiftLeft0~30_combout\) # ((\D1_in|SLL|ShiftLeft0~26_combout\ & \B[1]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \D1_in|SLL|ShiftLeft0~30_combout\,
	datab => \D1_in|SLL|ShiftLeft0~26_combout\,
	datac => \B[1]~input_o\,
	combout => \D1_in|SLL|ShiftLeft0~43_combout\);

-- Location: LCCOMB_X73_Y69_N0
\D1_in|SLL|ShiftLeft0~46\ : cycloneiv_lcell_comb
-- Equation(s):
-- \D1_in|SLL|ShiftLeft0~46_combout\ = (\D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~11_combout\ & ((\B[2]~input_o\ & ((\D1_in|SLL|ShiftLeft0~43_combout\))) # (!\B[2]~input_o\ & (\D1_in|SLL|ShiftLeft0~45_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \D1_in|SLL|ShiftLeft0~45_combout\,
	datab => \D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~11_combout\,
	datac => \D1_in|SLL|ShiftLeft0~43_combout\,
	datad => \B[2]~input_o\,
	combout => \D1_in|SLL|ShiftLeft0~46_combout\);

-- Location: LCCOMB_X71_Y68_N28
\D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~12\ : cycloneiv_lcell_comb
-- Equation(s):
-- \D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~12_combout\ = (\B[2]~input_o\ & !\B[3]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B[2]~input_o\,
	datad => \B[3]~input_o\,
	combout => \D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~12_combout\);

-- Location: LCCOMB_X71_Y68_N10
\D1_in|SLL|ShiftLeft0~48\ : cycloneiv_lcell_comb
-- Equation(s):
-- \D1_in|SLL|ShiftLeft0~48_combout\ = (!\B[2]~input_o\ & \B[3]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B[2]~input_o\,
	datad => \B[3]~input_o\,
	combout => \D1_in|SLL|ShiftLeft0~48_combout\);

-- Location: LCCOMB_X72_Y66_N16
\D1_in|SLL|ShiftLeft0~47\ : cycloneiv_lcell_comb
-- Equation(s):
-- \D1_in|SLL|ShiftLeft0~47_combout\ = (!\B[3]~input_o\ & !\B[2]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \B[3]~input_o\,
	datad => \B[2]~input_o\,
	combout => \D1_in|SLL|ShiftLeft0~47_combout\);

-- Location: LCCOMB_X73_Y67_N14
\D1_in|SLL|ShiftLeft0~49\ : cycloneiv_lcell_comb
-- Equation(s):
-- \D1_in|SLL|ShiftLeft0~49_combout\ = (\B[1]~input_o\ & (\A[6]~input_o\)) # (!\B[1]~input_o\ & ((\A[8]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[6]~input_o\,
	datac => \A[8]~input_o\,
	datad => \B[1]~input_o\,
	combout => \D1_in|SLL|ShiftLeft0~49_combout\);

-- Location: LCCOMB_X73_Y67_N16
\D1_in|SLL|ShiftLeft0~50\ : cycloneiv_lcell_comb
-- Equation(s):
-- \D1_in|SLL|ShiftLeft0~50_combout\ = (\B[0]~input_o\ & (\D1_in|SLL|ShiftLeft0~44_combout\)) # (!\B[0]~input_o\ & ((\D1_in|SLL|ShiftLeft0~49_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \D1_in|SLL|ShiftLeft0~44_combout\,
	datab => \D1_in|SLL|ShiftLeft0~49_combout\,
	datad => \B[0]~input_o\,
	combout => \D1_in|SLL|ShiftLeft0~50_combout\);

-- Location: LCCOMB_X72_Y66_N2
\D1_in|SLL|ShiftLeft0~51\ : cycloneiv_lcell_comb
-- Equation(s):
-- \D1_in|SLL|ShiftLeft0~51_combout\ = (\D1_in|SLL|ShiftLeft0~48_combout\ & ((\D1_in|SLL|ShiftLeft0~25_combout\) # ((\D1_in|SLL|ShiftLeft0~47_combout\ & \D1_in|SLL|ShiftLeft0~50_combout\)))) # (!\D1_in|SLL|ShiftLeft0~48_combout\ & 
-- (\D1_in|SLL|ShiftLeft0~47_combout\ & ((\D1_in|SLL|ShiftLeft0~50_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \D1_in|SLL|ShiftLeft0~48_combout\,
	datab => \D1_in|SLL|ShiftLeft0~47_combout\,
	datac => \D1_in|SLL|ShiftLeft0~25_combout\,
	datad => \D1_in|SLL|ShiftLeft0~50_combout\,
	combout => \D1_in|SLL|ShiftLeft0~51_combout\);

-- Location: LCCOMB_X72_Y66_N4
\D1_in|SLL|ShiftLeft0~52\ : cycloneiv_lcell_comb
-- Equation(s):
-- \D1_in|SLL|ShiftLeft0~52_combout\ = (!\B[4]~input_o\ & ((\D1_in|SLL|ShiftLeft0~51_combout\) # ((\D1_in|SLL|ShiftLeft0~34_combout\ & \D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \D1_in|SLL|ShiftLeft0~34_combout\,
	datab => \D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~12_combout\,
	datac => \B[4]~input_o\,
	datad => \D1_in|SLL|ShiftLeft0~51_combout\,
	combout => \D1_in|SLL|ShiftLeft0~52_combout\);

-- Location: LCCOMB_X75_Y65_N20
\D1_in|SLL|ShiftLeft0~53\ : cycloneiv_lcell_comb
-- Equation(s):
-- \D1_in|SLL|ShiftLeft0~53_combout\ = (!\B[1]~input_o\ & (\B[3]~input_o\ & !\B[2]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B[1]~input_o\,
	datac => \B[3]~input_o\,
	datad => \B[2]~input_o\,
	combout => \D1_in|SLL|ShiftLeft0~53_combout\);

-- Location: LCCOMB_X73_Y67_N10
\D1_in|SLL|ShiftLeft0~54\ : cycloneiv_lcell_comb
-- Equation(s):
-- \D1_in|SLL|ShiftLeft0~54_combout\ = (\B[1]~input_o\ & (\A[7]~input_o\)) # (!\B[1]~input_o\ & ((\A[9]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[7]~input_o\,
	datab => \B[1]~input_o\,
	datad => \A[9]~input_o\,
	combout => \D1_in|SLL|ShiftLeft0~54_combout\);

-- Location: LCCOMB_X73_Y67_N4
\D1_in|SLL|ShiftLeft0~55\ : cycloneiv_lcell_comb
-- Equation(s):
-- \D1_in|SLL|ShiftLeft0~55_combout\ = (\B[0]~input_o\ & (\D1_in|SLL|ShiftLeft0~49_combout\)) # (!\B[0]~input_o\ & ((\D1_in|SLL|ShiftLeft0~54_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[0]~input_o\,
	datab => \D1_in|SLL|ShiftLeft0~49_combout\,
	datad => \D1_in|SLL|ShiftLeft0~54_combout\,
	combout => \D1_in|SLL|ShiftLeft0~55_combout\);

-- Location: LCCOMB_X72_Y66_N30
\D1_in|SLL|ShiftLeft0~56\ : cycloneiv_lcell_comb
-- Equation(s):
-- \D1_in|SLL|ShiftLeft0~56_combout\ = (\D1_in|SLL|ShiftLeft0~53_combout\ & ((\D1_in|SLL|ShiftLeft0~26_combout\) # ((\D1_in|SLL|ShiftLeft0~55_combout\ & \D1_in|SLL|ShiftLeft0~47_combout\)))) # (!\D1_in|SLL|ShiftLeft0~53_combout\ & 
-- (((\D1_in|SLL|ShiftLeft0~55_combout\ & \D1_in|SLL|ShiftLeft0~47_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \D1_in|SLL|ShiftLeft0~53_combout\,
	datab => \D1_in|SLL|ShiftLeft0~26_combout\,
	datac => \D1_in|SLL|ShiftLeft0~55_combout\,
	datad => \D1_in|SLL|ShiftLeft0~47_combout\,
	combout => \D1_in|SLL|ShiftLeft0~56_combout\);

-- Location: LCCOMB_X72_Y66_N0
\D1_in|SLL|ShiftLeft0~57\ : cycloneiv_lcell_comb
-- Equation(s):
-- \D1_in|SLL|ShiftLeft0~57_combout\ = (!\B[4]~input_o\ & ((\D1_in|SLL|ShiftLeft0~56_combout\) # ((\D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~12_combout\ & \D1_in|SLL|ShiftLeft0~37_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \D1_in|SLL|ShiftLeft0~56_combout\,
	datab => \D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~12_combout\,
	datac => \B[4]~input_o\,
	datad => \D1_in|SLL|ShiftLeft0~37_combout\,
	combout => \D1_in|SLL|ShiftLeft0~57_combout\);

-- Location: LCCOMB_X73_Y67_N22
\D1_in|SLL|ShiftLeft0~58\ : cycloneiv_lcell_comb
-- Equation(s):
-- \D1_in|SLL|ShiftLeft0~58_combout\ = (\B[1]~input_o\ & (\A[8]~input_o\)) # (!\B[1]~input_o\ & ((\A[10]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[8]~input_o\,
	datac => \A[10]~input_o\,
	datad => \B[1]~input_o\,
	combout => \D1_in|SLL|ShiftLeft0~58_combout\);

-- Location: LCCOMB_X73_Y67_N8
\D1_in|SLL|ShiftLeft0~59\ : cycloneiv_lcell_comb
-- Equation(s):
-- \D1_in|SLL|ShiftLeft0~59_combout\ = (\B[0]~input_o\ & (\D1_in|SLL|ShiftLeft0~54_combout\)) # (!\B[0]~input_o\ & ((\D1_in|SLL|ShiftLeft0~58_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \D1_in|SLL|ShiftLeft0~54_combout\,
	datac => \D1_in|SLL|ShiftLeft0~58_combout\,
	datad => \B[0]~input_o\,
	combout => \D1_in|SLL|ShiftLeft0~59_combout\);

-- Location: LCCOMB_X72_Y68_N26
\D1_in|SLL|ShiftLeft0~60\ : cycloneiv_lcell_comb
-- Equation(s):
-- \D1_in|SLL|ShiftLeft0~60_combout\ = (\D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~12_combout\ & ((\D1_in|SLL|ShiftLeft0~41_combout\) # ((\D1_in|SLL|ShiftLeft0~47_combout\ & \D1_in|SLL|ShiftLeft0~59_combout\)))) # 
-- (!\D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~12_combout\ & (\D1_in|SLL|ShiftLeft0~47_combout\ & (\D1_in|SLL|ShiftLeft0~59_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~12_combout\,
	datab => \D1_in|SLL|ShiftLeft0~47_combout\,
	datac => \D1_in|SLL|ShiftLeft0~59_combout\,
	datad => \D1_in|SLL|ShiftLeft0~41_combout\,
	combout => \D1_in|SLL|ShiftLeft0~60_combout\);

-- Location: LCCOMB_X71_Y68_N22
\D1_in|SLL|ShiftLeft0~61\ : cycloneiv_lcell_comb
-- Equation(s):
-- \D1_in|SLL|ShiftLeft0~61_combout\ = (!\B[4]~input_o\ & ((\D1_in|SLL|ShiftLeft0~60_combout\) # ((\D1_in|SLL|ShiftLeft0~48_combout\ & \D1_in|SLL|ShiftLeft0~39_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \D1_in|SLL|ShiftLeft0~48_combout\,
	datab => \D1_in|SLL|ShiftLeft0~60_combout\,
	datac => \D1_in|SLL|ShiftLeft0~39_combout\,
	datad => \B[4]~input_o\,
	combout => \D1_in|SLL|ShiftLeft0~61_combout\);

-- Location: LCCOMB_X73_Y67_N2
\D1_in|SLL|ShiftLeft0~62\ : cycloneiv_lcell_comb
-- Equation(s):
-- \D1_in|SLL|ShiftLeft0~62_combout\ = (\B[1]~input_o\ & (\A[9]~input_o\)) # (!\B[1]~input_o\ & ((\A[11]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[9]~input_o\,
	datab => \B[1]~input_o\,
	datac => \A[11]~input_o\,
	combout => \D1_in|SLL|ShiftLeft0~62_combout\);

-- Location: LCCOMB_X73_Y67_N20
\D1_in|SLL|ShiftLeft0~63\ : cycloneiv_lcell_comb
-- Equation(s):
-- \D1_in|SLL|ShiftLeft0~63_combout\ = (\B[0]~input_o\ & (\D1_in|SLL|ShiftLeft0~58_combout\)) # (!\B[0]~input_o\ & ((\D1_in|SLL|ShiftLeft0~62_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \D1_in|SLL|ShiftLeft0~58_combout\,
	datab => \D1_in|SLL|ShiftLeft0~62_combout\,
	datad => \B[0]~input_o\,
	combout => \D1_in|SLL|ShiftLeft0~63_combout\);

-- Location: LCCOMB_X73_Y69_N2
\D1_in|SLL|ShiftLeft0~64\ : cycloneiv_lcell_comb
-- Equation(s):
-- \D1_in|SLL|ShiftLeft0~64_combout\ = (\D1_in|SLL|ShiftLeft0~47_combout\ & ((\D1_in|SLL|ShiftLeft0~63_combout\) # ((\D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~12_combout\ & \D1_in|SLL|ShiftLeft0~45_combout\)))) # (!\D1_in|SLL|ShiftLeft0~47_combout\ & 
-- (((\D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~12_combout\ & \D1_in|SLL|ShiftLeft0~45_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \D1_in|SLL|ShiftLeft0~47_combout\,
	datab => \D1_in|SLL|ShiftLeft0~63_combout\,
	datac => \D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~12_combout\,
	datad => \D1_in|SLL|ShiftLeft0~45_combout\,
	combout => \D1_in|SLL|ShiftLeft0~64_combout\);

-- Location: LCCOMB_X73_Y69_N20
\D1_in|SLL|ShiftLeft0~65\ : cycloneiv_lcell_comb
-- Equation(s):
-- \D1_in|SLL|ShiftLeft0~65_combout\ = (!\B[4]~input_o\ & ((\D1_in|SLL|ShiftLeft0~64_combout\) # ((\D1_in|SLL|ShiftLeft0~43_combout\ & \D1_in|SLL|ShiftLeft0~48_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \D1_in|SLL|ShiftLeft0~43_combout\,
	datab => \D1_in|SLL|ShiftLeft0~64_combout\,
	datac => \B[4]~input_o\,
	datad => \D1_in|SLL|ShiftLeft0~48_combout\,
	combout => \D1_in|SLL|ShiftLeft0~65_combout\);

-- Location: LCCOMB_X72_Y67_N0
\D1_in|SLL|ShiftLeft0~67\ : cycloneiv_lcell_comb
-- Equation(s):
-- \D1_in|SLL|ShiftLeft0~67_combout\ = (\B[1]~input_o\ & ((\A[10]~input_o\))) # (!\B[1]~input_o\ & (\A[12]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[12]~input_o\,
	datab => \B[1]~input_o\,
	datac => \A[10]~input_o\,
	combout => \D1_in|SLL|ShiftLeft0~67_combout\);

-- Location: LCCOMB_X72_Y67_N18
\D1_in|SLL|ShiftLeft0~68\ : cycloneiv_lcell_comb
-- Equation(s):
-- \D1_in|SLL|ShiftLeft0~68_combout\ = (\B[0]~input_o\ & ((\D1_in|SLL|ShiftLeft0~62_combout\))) # (!\B[0]~input_o\ & (\D1_in|SLL|ShiftLeft0~67_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \D1_in|SLL|ShiftLeft0~67_combout\,
	datac => \B[0]~input_o\,
	datad => \D1_in|SLL|ShiftLeft0~62_combout\,
	combout => \D1_in|SLL|ShiftLeft0~68_combout\);

-- Location: LCCOMB_X73_Y66_N20
\D1_in|SLL|ShiftLeft0~69\ : cycloneiv_lcell_comb
-- Equation(s):
-- \D1_in|SLL|ShiftLeft0~69_combout\ = (\B[2]~input_o\ & ((\D1_in|SLL|ShiftLeft0~50_combout\))) # (!\B[2]~input_o\ & (\D1_in|SLL|ShiftLeft0~68_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \D1_in|SLL|ShiftLeft0~68_combout\,
	datac => \D1_in|SLL|ShiftLeft0~50_combout\,
	datad => \B[2]~input_o\,
	combout => \D1_in|SLL|ShiftLeft0~69_combout\);

-- Location: LCCOMB_X73_Y66_N18
\D1_in|SLL|ShiftLeft0~66\ : cycloneiv_lcell_comb
-- Equation(s):
-- \D1_in|SLL|ShiftLeft0~66_combout\ = (\B[2]~input_o\ & (\D1_in|SLL|ShiftLeft0~25_combout\)) # (!\B[2]~input_o\ & ((\D1_in|SLL|ShiftLeft0~34_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \D1_in|SLL|ShiftLeft0~25_combout\,
	datab => \D1_in|SLL|ShiftLeft0~34_combout\,
	datad => \B[2]~input_o\,
	combout => \D1_in|SLL|ShiftLeft0~66_combout\);

-- Location: LCCOMB_X73_Y66_N30
\D1_in|SLL|ShiftLeft0~70\ : cycloneiv_lcell_comb
-- Equation(s):
-- \D1_in|SLL|ShiftLeft0~70_combout\ = (!\B[4]~input_o\ & ((\B[3]~input_o\ & ((\D1_in|SLL|ShiftLeft0~66_combout\))) # (!\B[3]~input_o\ & (\D1_in|SLL|ShiftLeft0~69_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[3]~input_o\,
	datab => \D1_in|SLL|ShiftLeft0~69_combout\,
	datac => \B[4]~input_o\,
	datad => \D1_in|SLL|ShiftLeft0~66_combout\,
	combout => \D1_in|SLL|ShiftLeft0~70_combout\);

-- Location: LCCOMB_X72_Y67_N4
\D1_in|SLL|ShiftLeft0~71\ : cycloneiv_lcell_comb
-- Equation(s):
-- \D1_in|SLL|ShiftLeft0~71_combout\ = (\B[1]~input_o\ & (\A[11]~input_o\)) # (!\B[1]~input_o\ & ((\A[13]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[11]~input_o\,
	datab => \B[1]~input_o\,
	datac => \A[13]~input_o\,
	combout => \D1_in|SLL|ShiftLeft0~71_combout\);

-- Location: LCCOMB_X72_Y67_N30
\D1_in|SLL|ShiftLeft0~72\ : cycloneiv_lcell_comb
-- Equation(s):
-- \D1_in|SLL|ShiftLeft0~72_combout\ = (\B[0]~input_o\ & ((\D1_in|SLL|ShiftLeft0~67_combout\))) # (!\B[0]~input_o\ & (\D1_in|SLL|ShiftLeft0~71_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \D1_in|SLL|ShiftLeft0~71_combout\,
	datac => \B[0]~input_o\,
	datad => \D1_in|SLL|ShiftLeft0~67_combout\,
	combout => \D1_in|SLL|ShiftLeft0~72_combout\);

-- Location: LCCOMB_X72_Y66_N10
\D1_in|SLL|ShiftLeft0~73\ : cycloneiv_lcell_comb
-- Equation(s):
-- \D1_in|SLL|ShiftLeft0~73_combout\ = (\B[2]~input_o\ & (\D1_in|SLL|ShiftLeft0~55_combout\)) # (!\B[2]~input_o\ & ((\D1_in|SLL|ShiftLeft0~72_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \D1_in|SLL|ShiftLeft0~55_combout\,
	datac => \D1_in|SLL|ShiftLeft0~72_combout\,
	datad => \B[2]~input_o\,
	combout => \D1_in|SLL|ShiftLeft0~73_combout\);

-- Location: LCCOMB_X71_Y87_N28
\D1_in|SLL|ShiftLeft0~74\ : cycloneiv_lcell_comb
-- Equation(s):
-- \D1_in|SLL|ShiftLeft0~74_combout\ = (!\B[4]~input_o\ & ((\B[3]~input_o\ & ((\D1_in|SLL|ShiftLeft0~38_combout\))) # (!\B[3]~input_o\ & (\D1_in|SLL|ShiftLeft0~73_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \D1_in|SLL|ShiftLeft0~73_combout\,
	datab => \B[3]~input_o\,
	datac => \B[4]~input_o\,
	datad => \D1_in|SLL|ShiftLeft0~38_combout\,
	combout => \D1_in|SLL|ShiftLeft0~74_combout\);

-- Location: LCCOMB_X72_Y68_N30
\D1_in|SLL|ShiftLeft0~78\ : cycloneiv_lcell_comb
-- Equation(s):
-- \D1_in|SLL|ShiftLeft0~78_combout\ = (\B[2]~input_o\ & ((\D1_in|SLL|ShiftLeft0~39_combout\))) # (!\B[2]~input_o\ & (\D1_in|SLL|ShiftLeft0~41_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \D1_in|SLL|ShiftLeft0~41_combout\,
	datac => \D1_in|SLL|ShiftLeft0~39_combout\,
	datad => \B[2]~input_o\,
	combout => \D1_in|SLL|ShiftLeft0~78_combout\);

-- Location: LCCOMB_X72_Y67_N16
\D1_in|SLL|ShiftLeft0~75\ : cycloneiv_lcell_comb
-- Equation(s):
-- \D1_in|SLL|ShiftLeft0~75_combout\ = (\B[1]~input_o\ & (\A[12]~input_o\)) # (!\B[1]~input_o\ & ((\A[14]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[12]~input_o\,
	datab => \B[1]~input_o\,
	datac => \A[14]~input_o\,
	combout => \D1_in|SLL|ShiftLeft0~75_combout\);

-- Location: LCCOMB_X72_Y67_N10
\D1_in|SLL|ShiftLeft0~76\ : cycloneiv_lcell_comb
-- Equation(s):
-- \D1_in|SLL|ShiftLeft0~76_combout\ = (\B[0]~input_o\ & (\D1_in|SLL|ShiftLeft0~71_combout\)) # (!\B[0]~input_o\ & ((\D1_in|SLL|ShiftLeft0~75_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \D1_in|SLL|ShiftLeft0~71_combout\,
	datac => \B[0]~input_o\,
	datad => \D1_in|SLL|ShiftLeft0~75_combout\,
	combout => \D1_in|SLL|ShiftLeft0~76_combout\);

-- Location: LCCOMB_X72_Y68_N20
\D1_in|SLL|ShiftLeft0~77\ : cycloneiv_lcell_comb
-- Equation(s):
-- \D1_in|SLL|ShiftLeft0~77_combout\ = (!\B[3]~input_o\ & ((\B[2]~input_o\ & ((\D1_in|SLL|ShiftLeft0~59_combout\))) # (!\B[2]~input_o\ & (\D1_in|SLL|ShiftLeft0~76_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \D1_in|SLL|ShiftLeft0~76_combout\,
	datab => \B[3]~input_o\,
	datac => \D1_in|SLL|ShiftLeft0~59_combout\,
	datad => \B[2]~input_o\,
	combout => \D1_in|SLL|ShiftLeft0~77_combout\);

-- Location: LCCOMB_X72_Y68_N0
\D1_in|SLL|ShiftLeft0~79\ : cycloneiv_lcell_comb
-- Equation(s):
-- \D1_in|SLL|ShiftLeft0~79_combout\ = (!\B[4]~input_o\ & ((\D1_in|SLL|ShiftLeft0~77_combout\) # ((\D1_in|SLL|ShiftLeft0~78_combout\ & \B[3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \D1_in|SLL|ShiftLeft0~78_combout\,
	datab => \B[3]~input_o\,
	datac => \B[4]~input_o\,
	datad => \D1_in|SLL|ShiftLeft0~77_combout\,
	combout => \D1_in|SLL|ShiftLeft0~79_combout\);

-- Location: LCCOMB_X72_Y67_N12
\D1_in|SLL|ShiftLeft0~80\ : cycloneiv_lcell_comb
-- Equation(s):
-- \D1_in|SLL|ShiftLeft0~80_combout\ = (\B[1]~input_o\ & ((\A[13]~input_o\))) # (!\B[1]~input_o\ & (\A[15]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \A[15]~input_o\,
	datac => \A[13]~input_o\,
	datad => \B[1]~input_o\,
	combout => \D1_in|SLL|ShiftLeft0~80_combout\);

-- Location: LCCOMB_X72_Y67_N6
\D1_in|SLL|ShiftLeft0~81\ : cycloneiv_lcell_comb
-- Equation(s):
-- \D1_in|SLL|ShiftLeft0~81_combout\ = (\B[0]~input_o\ & (\D1_in|SLL|ShiftLeft0~75_combout\)) # (!\B[0]~input_o\ & ((\D1_in|SLL|ShiftLeft0~80_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \D1_in|SLL|ShiftLeft0~75_combout\,
	datac => \B[0]~input_o\,
	datad => \D1_in|SLL|ShiftLeft0~80_combout\,
	combout => \D1_in|SLL|ShiftLeft0~81_combout\);

-- Location: LCCOMB_X73_Y69_N30
\D1_in|SLL|ShiftLeft0~82\ : cycloneiv_lcell_comb
-- Equation(s):
-- \D1_in|SLL|ShiftLeft0~82_combout\ = (!\B[3]~input_o\ & ((\B[2]~input_o\ & ((\D1_in|SLL|ShiftLeft0~63_combout\))) # (!\B[2]~input_o\ & (\D1_in|SLL|ShiftLeft0~81_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \D1_in|SLL|ShiftLeft0~81_combout\,
	datab => \D1_in|SLL|ShiftLeft0~63_combout\,
	datac => \B[3]~input_o\,
	datad => \B[2]~input_o\,
	combout => \D1_in|SLL|ShiftLeft0~82_combout\);

-- Location: LCCOMB_X73_Y69_N8
\D1_in|SLL|ShiftLeft0~83\ : cycloneiv_lcell_comb
-- Equation(s):
-- \D1_in|SLL|ShiftLeft0~83_combout\ = (\B[2]~input_o\ & ((\D1_in|SLL|ShiftLeft0~43_combout\))) # (!\B[2]~input_o\ & (\D1_in|SLL|ShiftLeft0~45_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \D1_in|SLL|ShiftLeft0~45_combout\,
	datac => \D1_in|SLL|ShiftLeft0~43_combout\,
	datad => \B[2]~input_o\,
	combout => \D1_in|SLL|ShiftLeft0~83_combout\);

-- Location: LCCOMB_X73_Y68_N26
\D1_in|SLL|ShiftLeft0~84\ : cycloneiv_lcell_comb
-- Equation(s):
-- \D1_in|SLL|ShiftLeft0~84_combout\ = (!\B[4]~input_o\ & ((\D1_in|SLL|ShiftLeft0~82_combout\) # ((\D1_in|SLL|ShiftLeft0~83_combout\ & \B[3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \D1_in|SLL|ShiftLeft0~82_combout\,
	datab => \D1_in|SLL|ShiftLeft0~83_combout\,
	datac => \B[3]~input_o\,
	datad => \B[4]~input_o\,
	combout => \D1_in|SLL|ShiftLeft0~84_combout\);

-- Location: LCCOMB_X73_Y69_N18
\D1_in|SLL|ShiftLeft0~88\ : cycloneiv_lcell_comb
-- Equation(s):
-- \D1_in|SLL|ShiftLeft0~88_combout\ = (!\B[4]~input_o\ & (\B[3]~input_o\ & \B[2]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[4]~input_o\,
	datac => \B[3]~input_o\,
	datad => \B[2]~input_o\,
	combout => \D1_in|SLL|ShiftLeft0~88_combout\);

-- Location: LCCOMB_X75_Y67_N24
\D1_in|SLL|ShiftLeft0~85\ : cycloneiv_lcell_comb
-- Equation(s):
-- \D1_in|SLL|ShiftLeft0~85_combout\ = (\B[1]~input_o\ & (\A[14]~input_o\)) # (!\B[1]~input_o\ & ((\A[16]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[14]~input_o\,
	datac => \A[16]~input_o\,
	datad => \B[1]~input_o\,
	combout => \D1_in|SLL|ShiftLeft0~85_combout\);

-- Location: LCCOMB_X72_Y67_N8
\D1_in|SLL|ShiftLeft0~86\ : cycloneiv_lcell_comb
-- Equation(s):
-- \D1_in|SLL|ShiftLeft0~86_combout\ = (\B[0]~input_o\ & (\D1_in|SLL|ShiftLeft0~80_combout\)) # (!\B[0]~input_o\ & ((\D1_in|SLL|ShiftLeft0~85_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \D1_in|SLL|ShiftLeft0~80_combout\,
	datac => \B[0]~input_o\,
	datad => \D1_in|SLL|ShiftLeft0~85_combout\,
	combout => \D1_in|SLL|ShiftLeft0~86_combout\);

-- Location: LCCOMB_X73_Y66_N0
\D1_in|SLL|ShiftLeft0~87\ : cycloneiv_lcell_comb
-- Equation(s):
-- \D1_in|SLL|ShiftLeft0~87_combout\ = (\B[2]~input_o\ & (\D1_in|SLL|ShiftLeft0~68_combout\)) # (!\B[2]~input_o\ & ((\D1_in|SLL|ShiftLeft0~86_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \D1_in|SLL|ShiftLeft0~68_combout\,
	datac => \D1_in|SLL|ShiftLeft0~86_combout\,
	datad => \B[2]~input_o\,
	combout => \D1_in|SLL|ShiftLeft0~87_combout\);

-- Location: LCCOMB_X73_Y66_N2
\D1_in|SLL|ShiftLeft0~89\ : cycloneiv_lcell_comb
-- Equation(s):
-- \D1_in|SLL|ShiftLeft0~89_combout\ = (\D1_in|SLL|ShiftLeft0~88_combout\ & ((\D1_in|SLL|ShiftLeft0~34_combout\) # ((\D1_in|SLL|ShiftLeft0~87_combout\ & \D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~11_combout\)))) # (!\D1_in|SLL|ShiftLeft0~88_combout\ & 
-- (\D1_in|SLL|ShiftLeft0~87_combout\ & (\D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~11_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \D1_in|SLL|ShiftLeft0~88_combout\,
	datab => \D1_in|SLL|ShiftLeft0~87_combout\,
	datac => \D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~11_combout\,
	datad => \D1_in|SLL|ShiftLeft0~34_combout\,
	combout => \D1_in|SLL|ShiftLeft0~89_combout\);

-- Location: LCCOMB_X72_Y66_N12
\D1_in|SLL|ShiftLeft0~170\ : cycloneiv_lcell_comb
-- Equation(s):
-- \D1_in|SLL|ShiftLeft0~170_combout\ = (!\B[3]~input_o\ & (\D1_in|SLL|ShiftLeft0~25_combout\ & (\B[4]~input_o\ & !\B[2]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[3]~input_o\,
	datab => \D1_in|SLL|ShiftLeft0~25_combout\,
	datac => \B[4]~input_o\,
	datad => \B[2]~input_o\,
	combout => \D1_in|SLL|ShiftLeft0~170_combout\);

-- Location: LCCOMB_X72_Y68_N18
\D1_in|SLL|ShiftLeft0~90\ : cycloneiv_lcell_comb
-- Equation(s):
-- \D1_in|SLL|ShiftLeft0~90_combout\ = (\B[3]~input_o\ & (!\B[4]~input_o\ & !\B[2]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B[3]~input_o\,
	datac => \B[4]~input_o\,
	datad => \B[2]~input_o\,
	combout => \D1_in|SLL|ShiftLeft0~90_combout\);

-- Location: LCCOMB_X72_Y66_N20
\D1_in|SLL|ShiftLeft0~91\ : cycloneiv_lcell_comb
-- Equation(s):
-- \D1_in|SLL|ShiftLeft0~91_combout\ = (\D1_in|SLL|ShiftLeft0~89_combout\) # ((\D1_in|SLL|ShiftLeft0~170_combout\) # ((\D1_in|SLL|ShiftLeft0~90_combout\ & \D1_in|SLL|ShiftLeft0~50_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \D1_in|SLL|ShiftLeft0~89_combout\,
	datab => \D1_in|SLL|ShiftLeft0~170_combout\,
	datac => \D1_in|SLL|ShiftLeft0~90_combout\,
	datad => \D1_in|SLL|ShiftLeft0~50_combout\,
	combout => \D1_in|SLL|ShiftLeft0~91_combout\);

-- Location: LCCOMB_X76_Y68_N16
\D1_in|SLL|ShiftLeft0~92\ : cycloneiv_lcell_comb
-- Equation(s):
-- \D1_in|SLL|ShiftLeft0~92_combout\ = (\B[1]~input_o\) # (\B[2]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \B[1]~input_o\,
	datad => \B[2]~input_o\,
	combout => \D1_in|SLL|ShiftLeft0~92_combout\);

-- Location: LCCOMB_X72_Y66_N6
\D1_in|SLL|ShiftLeft0~93\ : cycloneiv_lcell_comb
-- Equation(s):
-- \D1_in|SLL|ShiftLeft0~93_combout\ = (!\D1_in|SLL|ShiftLeft0~92_combout\ & (!\B[3]~input_o\ & (\B[4]~input_o\ & \D1_in|SLL|ShiftLeft0~26_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \D1_in|SLL|ShiftLeft0~92_combout\,
	datab => \B[3]~input_o\,
	datac => \B[4]~input_o\,
	datad => \D1_in|SLL|ShiftLeft0~26_combout\,
	combout => \D1_in|SLL|ShiftLeft0~93_combout\);

-- Location: LCCOMB_X75_Y67_N18
\D1_in|SLL|ShiftLeft0~95\ : cycloneiv_lcell_comb
-- Equation(s):
-- \D1_in|SLL|ShiftLeft0~95_combout\ = (\B[1]~input_o\ & (\A[15]~input_o\)) # (!\B[1]~input_o\ & ((\A[17]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B[1]~input_o\,
	datac => \A[15]~input_o\,
	datad => \A[17]~input_o\,
	combout => \D1_in|SLL|ShiftLeft0~95_combout\);

-- Location: LCCOMB_X75_Y67_N12
\D1_in|SLL|ShiftLeft0~96\ : cycloneiv_lcell_comb
-- Equation(s):
-- \D1_in|SLL|ShiftLeft0~96_combout\ = (\B[0]~input_o\ & ((\D1_in|SLL|ShiftLeft0~85_combout\))) # (!\B[0]~input_o\ & (\D1_in|SLL|ShiftLeft0~95_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \D1_in|SLL|ShiftLeft0~95_combout\,
	datac => \D1_in|SLL|ShiftLeft0~85_combout\,
	datad => \B[0]~input_o\,
	combout => \D1_in|SLL|ShiftLeft0~96_combout\);

-- Location: LCCOMB_X72_Y66_N18
\D1_in|SLL|ShiftLeft0~97\ : cycloneiv_lcell_comb
-- Equation(s):
-- \D1_in|SLL|ShiftLeft0~97_combout\ = (\B[2]~input_o\ & ((\D1_in|SLL|ShiftLeft0~72_combout\))) # (!\B[2]~input_o\ & (\D1_in|SLL|ShiftLeft0~96_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \D1_in|SLL|ShiftLeft0~96_combout\,
	datac => \D1_in|SLL|ShiftLeft0~72_combout\,
	datad => \B[2]~input_o\,
	combout => \D1_in|SLL|ShiftLeft0~97_combout\);

-- Location: LCCOMB_X72_Y66_N24
\D1_in|SLL|ShiftLeft0~94\ : cycloneiv_lcell_comb
-- Equation(s):
-- \D1_in|SLL|ShiftLeft0~94_combout\ = (\D1_in|SLL|ShiftLeft0~88_combout\ & ((\D1_in|SLL|ShiftLeft0~37_combout\) # ((\D1_in|SLL|ShiftLeft0~90_combout\ & \D1_in|SLL|ShiftLeft0~55_combout\)))) # (!\D1_in|SLL|ShiftLeft0~88_combout\ & 
-- (\D1_in|SLL|ShiftLeft0~90_combout\ & (\D1_in|SLL|ShiftLeft0~55_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \D1_in|SLL|ShiftLeft0~88_combout\,
	datab => \D1_in|SLL|ShiftLeft0~90_combout\,
	datac => \D1_in|SLL|ShiftLeft0~55_combout\,
	datad => \D1_in|SLL|ShiftLeft0~37_combout\,
	combout => \D1_in|SLL|ShiftLeft0~94_combout\);

-- Location: LCCOMB_X72_Y66_N28
\D1_in|SLL|ShiftLeft0~98\ : cycloneiv_lcell_comb
-- Equation(s):
-- \D1_in|SLL|ShiftLeft0~98_combout\ = (\D1_in|SLL|ShiftLeft0~93_combout\) # ((\D1_in|SLL|ShiftLeft0~94_combout\) # ((\D1_in|SLL|ShiftLeft0~97_combout\ & \D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~11_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \D1_in|SLL|ShiftLeft0~93_combout\,
	datab => \D1_in|SLL|ShiftLeft0~97_combout\,
	datac => \D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~11_combout\,
	datad => \D1_in|SLL|ShiftLeft0~94_combout\,
	combout => \D1_in|SLL|ShiftLeft0~98_combout\);

-- Location: LCCOMB_X72_Y68_N22
\D1_in|SLL|ShiftLeft0~171\ : cycloneiv_lcell_comb
-- Equation(s):
-- \D1_in|SLL|ShiftLeft0~171_combout\ = (\B[4]~input_o\ & (!\B[3]~input_o\ & (\D1_in|SLL|ShiftLeft0~39_combout\ & !\B[2]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[4]~input_o\,
	datab => \B[3]~input_o\,
	datac => \D1_in|SLL|ShiftLeft0~39_combout\,
	datad => \B[2]~input_o\,
	combout => \D1_in|SLL|ShiftLeft0~171_combout\);

-- Location: LCCOMB_X75_Y67_N22
\D1_in|SLL|ShiftLeft0~100\ : cycloneiv_lcell_comb
-- Equation(s):
-- \D1_in|SLL|ShiftLeft0~100_combout\ = (\B[1]~input_o\ & (\A[16]~input_o\)) # (!\B[1]~input_o\ & ((\A[18]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B[1]~input_o\,
	datac => \A[16]~input_o\,
	datad => \A[18]~input_o\,
	combout => \D1_in|SLL|ShiftLeft0~100_combout\);

-- Location: LCCOMB_X75_Y67_N0
\D1_in|SLL|ShiftLeft0~101\ : cycloneiv_lcell_comb
-- Equation(s):
-- \D1_in|SLL|ShiftLeft0~101_combout\ = (\B[0]~input_o\ & (\D1_in|SLL|ShiftLeft0~95_combout\)) # (!\B[0]~input_o\ & ((\D1_in|SLL|ShiftLeft0~100_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \D1_in|SLL|ShiftLeft0~95_combout\,
	datac => \D1_in|SLL|ShiftLeft0~100_combout\,
	datad => \B[0]~input_o\,
	combout => \D1_in|SLL|ShiftLeft0~101_combout\);

-- Location: LCCOMB_X72_Y68_N6
\D1_in|SLL|ShiftLeft0~102\ : cycloneiv_lcell_comb
-- Equation(s):
-- \D1_in|SLL|ShiftLeft0~102_combout\ = (\B[2]~input_o\ & (\D1_in|SLL|ShiftLeft0~76_combout\)) # (!\B[2]~input_o\ & ((\D1_in|SLL|ShiftLeft0~101_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \D1_in|SLL|ShiftLeft0~76_combout\,
	datac => \D1_in|SLL|ShiftLeft0~101_combout\,
	datad => \B[2]~input_o\,
	combout => \D1_in|SLL|ShiftLeft0~102_combout\);

-- Location: LCCOMB_X72_Y68_N12
\D1_in|SLL|ShiftLeft0~99\ : cycloneiv_lcell_comb
-- Equation(s):
-- \D1_in|SLL|ShiftLeft0~99_combout\ = (\D1_in|SLL|ShiftLeft0~90_combout\ & ((\D1_in|SLL|ShiftLeft0~59_combout\) # ((\D1_in|SLL|ShiftLeft0~41_combout\ & \D1_in|SLL|ShiftLeft0~88_combout\)))) # (!\D1_in|SLL|ShiftLeft0~90_combout\ & 
-- (\D1_in|SLL|ShiftLeft0~41_combout\ & ((\D1_in|SLL|ShiftLeft0~88_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \D1_in|SLL|ShiftLeft0~90_combout\,
	datab => \D1_in|SLL|ShiftLeft0~41_combout\,
	datac => \D1_in|SLL|ShiftLeft0~59_combout\,
	datad => \D1_in|SLL|ShiftLeft0~88_combout\,
	combout => \D1_in|SLL|ShiftLeft0~99_combout\);

-- Location: LCCOMB_X72_Y68_N8
\D1_in|SLL|ShiftLeft0~103\ : cycloneiv_lcell_comb
-- Equation(s):
-- \D1_in|SLL|ShiftLeft0~103_combout\ = (\D1_in|SLL|ShiftLeft0~171_combout\) # ((\D1_in|SLL|ShiftLeft0~99_combout\) # ((\D1_in|SLL|ShiftLeft0~102_combout\ & \D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~11_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \D1_in|SLL|ShiftLeft0~171_combout\,
	datab => \D1_in|SLL|ShiftLeft0~102_combout\,
	datac => \D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~11_combout\,
	datad => \D1_in|SLL|ShiftLeft0~99_combout\,
	combout => \D1_in|SLL|ShiftLeft0~103_combout\);

-- Location: LCCOMB_X73_Y69_N12
\D1_in|SLL|ShiftLeft0~172\ : cycloneiv_lcell_comb
-- Equation(s):
-- \D1_in|SLL|ShiftLeft0~172_combout\ = (\D1_in|SLL|ShiftLeft0~43_combout\ & (!\B[3]~input_o\ & (\B[4]~input_o\ & !\B[2]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \D1_in|SLL|ShiftLeft0~43_combout\,
	datab => \B[3]~input_o\,
	datac => \B[4]~input_o\,
	datad => \B[2]~input_o\,
	combout => \D1_in|SLL|ShiftLeft0~172_combout\);

-- Location: LCCOMB_X73_Y69_N4
\D1_in|SLL|ShiftLeft0~104\ : cycloneiv_lcell_comb
-- Equation(s):
-- \D1_in|SLL|ShiftLeft0~104_combout\ = (\D1_in|SLL|ShiftLeft0~45_combout\ & ((\D1_in|SLL|ShiftLeft0~88_combout\) # ((\D1_in|SLL|ShiftLeft0~90_combout\ & \D1_in|SLL|ShiftLeft0~63_combout\)))) # (!\D1_in|SLL|ShiftLeft0~45_combout\ & 
-- (\D1_in|SLL|ShiftLeft0~90_combout\ & (\D1_in|SLL|ShiftLeft0~63_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \D1_in|SLL|ShiftLeft0~45_combout\,
	datab => \D1_in|SLL|ShiftLeft0~90_combout\,
	datac => \D1_in|SLL|ShiftLeft0~63_combout\,
	datad => \D1_in|SLL|ShiftLeft0~88_combout\,
	combout => \D1_in|SLL|ShiftLeft0~104_combout\);

-- Location: LCCOMB_X76_Y67_N8
\D1_in|SLL|ShiftLeft0~105\ : cycloneiv_lcell_comb
-- Equation(s):
-- \D1_in|SLL|ShiftLeft0~105_combout\ = (\B[1]~input_o\ & (\A[17]~input_o\)) # (!\B[1]~input_o\ & ((\A[19]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \A[17]~input_o\,
	datac => \B[1]~input_o\,
	datad => \A[19]~input_o\,
	combout => \D1_in|SLL|ShiftLeft0~105_combout\);

-- Location: LCCOMB_X76_Y67_N10
\D1_in|SLL|ShiftLeft0~106\ : cycloneiv_lcell_comb
-- Equation(s):
-- \D1_in|SLL|ShiftLeft0~106_combout\ = (\B[0]~input_o\ & (\D1_in|SLL|ShiftLeft0~100_combout\)) # (!\B[0]~input_o\ & ((\D1_in|SLL|ShiftLeft0~105_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[0]~input_o\,
	datab => \D1_in|SLL|ShiftLeft0~100_combout\,
	datac => \D1_in|SLL|ShiftLeft0~105_combout\,
	combout => \D1_in|SLL|ShiftLeft0~106_combout\);

-- Location: LCCOMB_X73_Y69_N22
\D1_in|SLL|ShiftLeft0~107\ : cycloneiv_lcell_comb
-- Equation(s):
-- \D1_in|SLL|ShiftLeft0~107_combout\ = (\B[2]~input_o\ & ((\D1_in|SLL|ShiftLeft0~81_combout\))) # (!\B[2]~input_o\ & (\D1_in|SLL|ShiftLeft0~106_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \D1_in|SLL|ShiftLeft0~106_combout\,
	datac => \D1_in|SLL|ShiftLeft0~81_combout\,
	datad => \B[2]~input_o\,
	combout => \D1_in|SLL|ShiftLeft0~107_combout\);

-- Location: LCCOMB_X73_Y69_N24
\D1_in|SLL|ShiftLeft0~108\ : cycloneiv_lcell_comb
-- Equation(s):
-- \D1_in|SLL|ShiftLeft0~108_combout\ = (\D1_in|SLL|ShiftLeft0~172_combout\) # ((\D1_in|SLL|ShiftLeft0~104_combout\) # ((\D1_in|SLL|ShiftLeft0~107_combout\ & \D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~11_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \D1_in|SLL|ShiftLeft0~172_combout\,
	datab => \D1_in|SLL|ShiftLeft0~104_combout\,
	datac => \D1_in|SLL|ShiftLeft0~107_combout\,
	datad => \D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~11_combout\,
	combout => \D1_in|SLL|ShiftLeft0~108_combout\);

-- Location: LCCOMB_X76_Y67_N28
\D1_in|SLL|ShiftLeft0~109\ : cycloneiv_lcell_comb
-- Equation(s):
-- \D1_in|SLL|ShiftLeft0~109_combout\ = (\B[1]~input_o\ & (\A[18]~input_o\)) # (!\B[1]~input_o\ & ((\A[20]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[1]~input_o\,
	datab => \A[18]~input_o\,
	datac => \A[20]~input_o\,
	combout => \D1_in|SLL|ShiftLeft0~109_combout\);

-- Location: LCCOMB_X76_Y67_N14
\D1_in|SLL|ShiftLeft0~110\ : cycloneiv_lcell_comb
-- Equation(s):
-- \D1_in|SLL|ShiftLeft0~110_combout\ = (\B[0]~input_o\ & (\D1_in|SLL|ShiftLeft0~105_combout\)) # (!\B[0]~input_o\ & ((\D1_in|SLL|ShiftLeft0~109_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[0]~input_o\,
	datac => \D1_in|SLL|ShiftLeft0~105_combout\,
	datad => \D1_in|SLL|ShiftLeft0~109_combout\,
	combout => \D1_in|SLL|ShiftLeft0~110_combout\);

-- Location: LCCOMB_X73_Y66_N28
\D1_in|SLL|ShiftLeft0~111\ : cycloneiv_lcell_comb
-- Equation(s):
-- \D1_in|SLL|ShiftLeft0~111_combout\ = (\B[2]~input_o\ & ((\D1_in|SLL|ShiftLeft0~86_combout\))) # (!\B[2]~input_o\ & (\D1_in|SLL|ShiftLeft0~110_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \D1_in|SLL|ShiftLeft0~110_combout\,
	datac => \D1_in|SLL|ShiftLeft0~86_combout\,
	datad => \B[2]~input_o\,
	combout => \D1_in|SLL|ShiftLeft0~111_combout\);

-- Location: LCCOMB_X73_Y66_N6
\D1_in|SLL|ShiftLeft0~112\ : cycloneiv_lcell_comb
-- Equation(s):
-- \D1_in|SLL|ShiftLeft0~112_combout\ = (!\B[3]~input_o\ & ((\B[4]~input_o\ & ((\D1_in|SLL|ShiftLeft0~66_combout\))) # (!\B[4]~input_o\ & (\D1_in|SLL|ShiftLeft0~111_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[3]~input_o\,
	datab => \D1_in|SLL|ShiftLeft0~111_combout\,
	datac => \B[4]~input_o\,
	datad => \D1_in|SLL|ShiftLeft0~66_combout\,
	combout => \D1_in|SLL|ShiftLeft0~112_combout\);

-- Location: LCCOMB_X73_Y66_N12
\D1_in|SLL|ShiftLeft0~173\ : cycloneiv_lcell_comb
-- Equation(s):
-- \D1_in|SLL|ShiftLeft0~173_combout\ = (\D1_in|SLL|ShiftLeft0~112_combout\) # ((!\B[4]~input_o\ & (\B[3]~input_o\ & \D1_in|SLL|ShiftLeft0~69_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \D1_in|SLL|ShiftLeft0~112_combout\,
	datab => \B[4]~input_o\,
	datac => \B[3]~input_o\,
	datad => \D1_in|SLL|ShiftLeft0~69_combout\,
	combout => \D1_in|SLL|ShiftLeft0~173_combout\);

-- Location: LCCOMB_X76_Y67_N16
\D1_in|SLL|ShiftLeft0~114\ : cycloneiv_lcell_comb
-- Equation(s):
-- \D1_in|SLL|ShiftLeft0~114_combout\ = (\B[1]~input_o\ & ((\A[19]~input_o\))) # (!\B[1]~input_o\ & (\A[21]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[21]~input_o\,
	datac => \B[1]~input_o\,
	datad => \A[19]~input_o\,
	combout => \D1_in|SLL|ShiftLeft0~114_combout\);

-- Location: LCCOMB_X76_Y67_N18
\D1_in|SLL|ShiftLeft0~115\ : cycloneiv_lcell_comb
-- Equation(s):
-- \D1_in|SLL|ShiftLeft0~115_combout\ = (\B[0]~input_o\ & ((\D1_in|SLL|ShiftLeft0~109_combout\))) # (!\B[0]~input_o\ & (\D1_in|SLL|ShiftLeft0~114_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[0]~input_o\,
	datab => \D1_in|SLL|ShiftLeft0~114_combout\,
	datad => \D1_in|SLL|ShiftLeft0~109_combout\,
	combout => \D1_in|SLL|ShiftLeft0~115_combout\);

-- Location: LCCOMB_X71_Y87_N6
\D1_in|SLL|ShiftLeft0~116\ : cycloneiv_lcell_comb
-- Equation(s):
-- \D1_in|SLL|ShiftLeft0~116_combout\ = (\B[2]~input_o\ & ((\D1_in|SLL|ShiftLeft0~96_combout\))) # (!\B[2]~input_o\ & (\D1_in|SLL|ShiftLeft0~115_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \D1_in|SLL|ShiftLeft0~115_combout\,
	datac => \D1_in|SLL|ShiftLeft0~96_combout\,
	datad => \B[2]~input_o\,
	combout => \D1_in|SLL|ShiftLeft0~116_combout\);

-- Location: LCCOMB_X71_Y87_N0
\D1_in|SLL|ShiftLeft0~117\ : cycloneiv_lcell_comb
-- Equation(s):
-- \D1_in|SLL|ShiftLeft0~117_combout\ = (!\B[3]~input_o\ & ((\B[4]~input_o\ & ((\D1_in|SLL|ShiftLeft0~38_combout\))) # (!\B[4]~input_o\ & (\D1_in|SLL|ShiftLeft0~116_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \D1_in|SLL|ShiftLeft0~116_combout\,
	datab => \B[3]~input_o\,
	datac => \B[4]~input_o\,
	datad => \D1_in|SLL|ShiftLeft0~38_combout\,
	combout => \D1_in|SLL|ShiftLeft0~117_combout\);

-- Location: LCCOMB_X71_Y87_N22
\D1_in|SLL|ShiftLeft0~174\ : cycloneiv_lcell_comb
-- Equation(s):
-- \D1_in|SLL|ShiftLeft0~174_combout\ = (\D1_in|SLL|ShiftLeft0~117_combout\) # ((\D1_in|SLL|ShiftLeft0~73_combout\ & (\B[3]~input_o\ & !\B[4]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \D1_in|SLL|ShiftLeft0~73_combout\,
	datab => \B[3]~input_o\,
	datac => \B[4]~input_o\,
	datad => \D1_in|SLL|ShiftLeft0~117_combout\,
	combout => \D1_in|SLL|ShiftLeft0~174_combout\);

-- Location: LCCOMB_X72_Y68_N14
\D1_in|SLL|ShiftLeft0~120\ : cycloneiv_lcell_comb
-- Equation(s):
-- \D1_in|SLL|ShiftLeft0~120_combout\ = (!\B[3]~input_o\ & (!\B[4]~input_o\ & \B[2]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B[3]~input_o\,
	datac => \B[4]~input_o\,
	datad => \B[2]~input_o\,
	combout => \D1_in|SLL|ShiftLeft0~120_combout\);

-- Location: LCCOMB_X76_Y66_N0
\D1_in|SLL|ShiftLeft0~121\ : cycloneiv_lcell_comb
-- Equation(s):
-- \D1_in|SLL|ShiftLeft0~121_combout\ = (\B[1]~input_o\ & (\A[20]~input_o\)) # (!\B[1]~input_o\ & ((\A[22]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \A[20]~input_o\,
	datac => \B[1]~input_o\,
	datad => \A[22]~input_o\,
	combout => \D1_in|SLL|ShiftLeft0~121_combout\);

-- Location: LCCOMB_X76_Y67_N20
\D1_in|SLL|ShiftLeft0~122\ : cycloneiv_lcell_comb
-- Equation(s):
-- \D1_in|SLL|ShiftLeft0~122_combout\ = (\B[0]~input_o\ & ((\D1_in|SLL|ShiftLeft0~114_combout\))) # (!\B[0]~input_o\ & (\D1_in|SLL|ShiftLeft0~121_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[0]~input_o\,
	datab => \D1_in|SLL|ShiftLeft0~121_combout\,
	datad => \D1_in|SLL|ShiftLeft0~114_combout\,
	combout => \D1_in|SLL|ShiftLeft0~122_combout\);

-- Location: LCCOMB_X72_Y68_N16
\D1_in|SLL|ShiftLeft0~123\ : cycloneiv_lcell_comb
-- Equation(s):
-- \D1_in|SLL|ShiftLeft0~123_combout\ = (\D1_in|SLL|ShiftLeft0~24_combout\ & ((\D1_in|SLL|ShiftLeft0~122_combout\) # ((\D1_in|SLL|ShiftLeft0~120_combout\ & \D1_in|SLL|ShiftLeft0~101_combout\)))) # (!\D1_in|SLL|ShiftLeft0~24_combout\ & 
-- (\D1_in|SLL|ShiftLeft0~120_combout\ & (\D1_in|SLL|ShiftLeft0~101_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \D1_in|SLL|ShiftLeft0~24_combout\,
	datab => \D1_in|SLL|ShiftLeft0~120_combout\,
	datac => \D1_in|SLL|ShiftLeft0~101_combout\,
	datad => \D1_in|SLL|ShiftLeft0~122_combout\,
	combout => \D1_in|SLL|ShiftLeft0~123_combout\);

-- Location: LCCOMB_X72_Y68_N2
\D1_in|SLL|ShiftLeft0~118\ : cycloneiv_lcell_comb
-- Equation(s):
-- \D1_in|SLL|ShiftLeft0~118_combout\ = (!\B[3]~input_o\ & \B[4]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B[3]~input_o\,
	datac => \B[4]~input_o\,
	combout => \D1_in|SLL|ShiftLeft0~118_combout\);

-- Location: LCCOMB_X72_Y68_N4
\D1_in|SLL|ShiftLeft0~119\ : cycloneiv_lcell_comb
-- Equation(s):
-- \D1_in|SLL|ShiftLeft0~119_combout\ = (\D1_in|SLL|ShiftLeft0~78_combout\ & ((\D1_in|SLL|ShiftLeft0~118_combout\) # ((\D1_in|SLL|ShiftLeft0~59_combout\ & \D1_in|SLL|ShiftLeft0~88_combout\)))) # (!\D1_in|SLL|ShiftLeft0~78_combout\ & 
-- (((\D1_in|SLL|ShiftLeft0~59_combout\ & \D1_in|SLL|ShiftLeft0~88_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \D1_in|SLL|ShiftLeft0~78_combout\,
	datab => \D1_in|SLL|ShiftLeft0~118_combout\,
	datac => \D1_in|SLL|ShiftLeft0~59_combout\,
	datad => \D1_in|SLL|ShiftLeft0~88_combout\,
	combout => \D1_in|SLL|ShiftLeft0~119_combout\);

-- Location: LCCOMB_X72_Y68_N10
\D1_in|SLL|ShiftLeft0~124\ : cycloneiv_lcell_comb
-- Equation(s):
-- \D1_in|SLL|ShiftLeft0~124_combout\ = (\D1_in|SLL|ShiftLeft0~123_combout\) # ((\D1_in|SLL|ShiftLeft0~119_combout\) # ((\D1_in|SLL|ShiftLeft0~76_combout\ & \D1_in|SLL|ShiftLeft0~90_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \D1_in|SLL|ShiftLeft0~76_combout\,
	datab => \D1_in|SLL|ShiftLeft0~123_combout\,
	datac => \D1_in|SLL|ShiftLeft0~119_combout\,
	datad => \D1_in|SLL|ShiftLeft0~90_combout\,
	combout => \D1_in|SLL|ShiftLeft0~124_combout\);

-- Location: LCCOMB_X73_Y69_N10
\D1_in|SLL|ShiftLeft0~125\ : cycloneiv_lcell_comb
-- Equation(s):
-- \D1_in|SLL|ShiftLeft0~125_combout\ = (\D1_in|SLL|ShiftLeft0~118_combout\ & ((\D1_in|SLL|ShiftLeft0~83_combout\) # ((\D1_in|SLL|ShiftLeft0~63_combout\ & \D1_in|SLL|ShiftLeft0~88_combout\)))) # (!\D1_in|SLL|ShiftLeft0~118_combout\ & 
-- (((\D1_in|SLL|ShiftLeft0~63_combout\ & \D1_in|SLL|ShiftLeft0~88_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \D1_in|SLL|ShiftLeft0~118_combout\,
	datab => \D1_in|SLL|ShiftLeft0~83_combout\,
	datac => \D1_in|SLL|ShiftLeft0~63_combout\,
	datad => \D1_in|SLL|ShiftLeft0~88_combout\,
	combout => \D1_in|SLL|ShiftLeft0~125_combout\);

-- Location: LCCOMB_X76_Y66_N10
\D1_in|SLL|ShiftLeft0~126\ : cycloneiv_lcell_comb
-- Equation(s):
-- \D1_in|SLL|ShiftLeft0~126_combout\ = (\B[1]~input_o\ & ((\A[21]~input_o\))) # (!\B[1]~input_o\ & (\A[23]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \A[23]~input_o\,
	datac => \B[1]~input_o\,
	datad => \A[21]~input_o\,
	combout => \D1_in|SLL|ShiftLeft0~126_combout\);

-- Location: LCCOMB_X76_Y66_N20
\D1_in|SLL|ShiftLeft0~127\ : cycloneiv_lcell_comb
-- Equation(s):
-- \D1_in|SLL|ShiftLeft0~127_combout\ = (\B[0]~input_o\ & ((\D1_in|SLL|ShiftLeft0~121_combout\))) # (!\B[0]~input_o\ & (\D1_in|SLL|ShiftLeft0~126_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \D1_in|SLL|ShiftLeft0~126_combout\,
	datab => \B[0]~input_o\,
	datad => \D1_in|SLL|ShiftLeft0~121_combout\,
	combout => \D1_in|SLL|ShiftLeft0~127_combout\);

-- Location: LCCOMB_X73_Y69_N28
\D1_in|SLL|ShiftLeft0~128\ : cycloneiv_lcell_comb
-- Equation(s):
-- \D1_in|SLL|ShiftLeft0~128_combout\ = (\D1_in|SLL|ShiftLeft0~120_combout\ & ((\D1_in|SLL|ShiftLeft0~106_combout\) # ((\D1_in|SLL|ShiftLeft0~127_combout\ & \D1_in|SLL|ShiftLeft0~24_combout\)))) # (!\D1_in|SLL|ShiftLeft0~120_combout\ & 
-- (\D1_in|SLL|ShiftLeft0~127_combout\ & (\D1_in|SLL|ShiftLeft0~24_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \D1_in|SLL|ShiftLeft0~120_combout\,
	datab => \D1_in|SLL|ShiftLeft0~127_combout\,
	datac => \D1_in|SLL|ShiftLeft0~24_combout\,
	datad => \D1_in|SLL|ShiftLeft0~106_combout\,
	combout => \D1_in|SLL|ShiftLeft0~128_combout\);

-- Location: LCCOMB_X73_Y69_N14
\D1_in|SLL|ShiftLeft0~129\ : cycloneiv_lcell_comb
-- Equation(s):
-- \D1_in|SLL|ShiftLeft0~129_combout\ = (\D1_in|SLL|ShiftLeft0~125_combout\) # ((\D1_in|SLL|ShiftLeft0~128_combout\) # ((\D1_in|SLL|ShiftLeft0~90_combout\ & \D1_in|SLL|ShiftLeft0~81_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \D1_in|SLL|ShiftLeft0~125_combout\,
	datab => \D1_in|SLL|ShiftLeft0~90_combout\,
	datac => \D1_in|SLL|ShiftLeft0~81_combout\,
	datad => \D1_in|SLL|ShiftLeft0~128_combout\,
	combout => \D1_in|SLL|ShiftLeft0~129_combout\);

-- Location: LCCOMB_X71_Y68_N0
\D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~13\ : cycloneiv_lcell_comb
-- Equation(s):
-- \D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~13_combout\ = (\B[4]~input_o\) # ((!\B[3]~input_o\ & \B[2]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B[4]~input_o\,
	datac => \B[3]~input_o\,
	datad => \B[2]~input_o\,
	combout => \D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~13_combout\);

-- Location: LCCOMB_X73_Y66_N22
\D1_in|SLL|ShiftLeft0~175\ : cycloneiv_lcell_comb
-- Equation(s):
-- \D1_in|SLL|ShiftLeft0~175_combout\ = (\D1_in|SLL|ShiftLeft0~51_combout\) # ((\D1_in|SLL|ShiftLeft0~34_combout\ & (!\B[3]~input_o\ & \B[2]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \D1_in|SLL|ShiftLeft0~51_combout\,
	datab => \D1_in|SLL|ShiftLeft0~34_combout\,
	datac => \B[3]~input_o\,
	datad => \B[2]~input_o\,
	combout => \D1_in|SLL|ShiftLeft0~175_combout\);

-- Location: LCCOMB_X76_Y66_N14
\D1_in|SLL|ShiftLeft0~130\ : cycloneiv_lcell_comb
-- Equation(s):
-- \D1_in|SLL|ShiftLeft0~130_combout\ = (\B[1]~input_o\ & ((\A[22]~input_o\))) # (!\B[1]~input_o\ & (\A[24]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[24]~input_o\,
	datac => \B[1]~input_o\,
	datad => \A[22]~input_o\,
	combout => \D1_in|SLL|ShiftLeft0~130_combout\);

-- Location: LCCOMB_X76_Y66_N16
\D1_in|SLL|ShiftLeft0~131\ : cycloneiv_lcell_comb
-- Equation(s):
-- \D1_in|SLL|ShiftLeft0~131_combout\ = (\B[0]~input_o\ & (\D1_in|SLL|ShiftLeft0~126_combout\)) # (!\B[0]~input_o\ & ((\D1_in|SLL|ShiftLeft0~130_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \D1_in|SLL|ShiftLeft0~126_combout\,
	datac => \D1_in|SLL|ShiftLeft0~130_combout\,
	datad => \B[0]~input_o\,
	combout => \D1_in|SLL|ShiftLeft0~131_combout\);

-- Location: LCCOMB_X73_Y66_N24
\D1_in|SLL|ShiftLeft0~132\ : cycloneiv_lcell_comb
-- Equation(s):
-- \D1_in|SLL|ShiftLeft0~132_combout\ = (\D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~13_combout\ & (((!\D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~11_combout\)))) # (!\D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~13_combout\ & 
-- ((\D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~11_combout\ & (\D1_in|SLL|ShiftLeft0~131_combout\)) # (!\D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~11_combout\ & ((\D1_in|SLL|ShiftLeft0~87_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010111100101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \D1_in|SLL|ShiftLeft0~131_combout\,
	datab => \D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~13_combout\,
	datac => \D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~11_combout\,
	datad => \D1_in|SLL|ShiftLeft0~87_combout\,
	combout => \D1_in|SLL|ShiftLeft0~132_combout\);

-- Location: LCCOMB_X73_Y66_N26
\D1_in|SLL|ShiftLeft0~133\ : cycloneiv_lcell_comb
-- Equation(s):
-- \D1_in|SLL|ShiftLeft0~133_combout\ = (\D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~13_combout\ & ((\D1_in|SLL|ShiftLeft0~132_combout\ & ((\D1_in|SLL|ShiftLeft0~175_combout\))) # (!\D1_in|SLL|ShiftLeft0~132_combout\ & (\D1_in|SLL|ShiftLeft0~110_combout\)))) # 
-- (!\D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~13_combout\ & (((\D1_in|SLL|ShiftLeft0~132_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \D1_in|SLL|ShiftLeft0~110_combout\,
	datab => \D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~13_combout\,
	datac => \D1_in|SLL|ShiftLeft0~175_combout\,
	datad => \D1_in|SLL|ShiftLeft0~132_combout\,
	combout => \D1_in|SLL|ShiftLeft0~133_combout\);

-- Location: LCCOMB_X76_Y66_N26
\D1_in|SLL|ShiftLeft0~134\ : cycloneiv_lcell_comb
-- Equation(s):
-- \D1_in|SLL|ShiftLeft0~134_combout\ = (!\B[0]~input_o\ & ((\B[1]~input_o\ & ((\A[23]~input_o\))) # (!\B[1]~input_o\ & (\A[25]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[25]~input_o\,
	datab => \B[0]~input_o\,
	datac => \B[1]~input_o\,
	datad => \A[23]~input_o\,
	combout => \D1_in|SLL|ShiftLeft0~134_combout\);

-- Location: LCCOMB_X76_Y66_N12
\D1_in|SLL|ShiftLeft0~135\ : cycloneiv_lcell_comb
-- Equation(s):
-- \D1_in|SLL|ShiftLeft0~135_combout\ = (\D1_in|SLL|ShiftLeft0~134_combout\) # ((\D1_in|SLL|ShiftLeft0~130_combout\ & \B[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \D1_in|SLL|ShiftLeft0~134_combout\,
	datac => \D1_in|SLL|ShiftLeft0~130_combout\,
	datad => \B[0]~input_o\,
	combout => \D1_in|SLL|ShiftLeft0~135_combout\);

-- Location: LCCOMB_X72_Y66_N22
\D1_in|SLL|ShiftLeft0~136\ : cycloneiv_lcell_comb
-- Equation(s):
-- \D1_in|SLL|ShiftLeft0~136_combout\ = (\D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~11_combout\ & (!\D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~13_combout\ & (\D1_in|SLL|ShiftLeft0~135_combout\))) # (!\D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~11_combout\ & 
-- ((\D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~13_combout\) # ((\D1_in|SLL|ShiftLeft0~97_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111010101100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~11_combout\,
	datab => \D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~13_combout\,
	datac => \D1_in|SLL|ShiftLeft0~135_combout\,
	datad => \D1_in|SLL|ShiftLeft0~97_combout\,
	combout => \D1_in|SLL|ShiftLeft0~136_combout\);

-- Location: LCCOMB_X72_Y66_N14
\D1_in|SLL|ShiftLeft0~176\ : cycloneiv_lcell_comb
-- Equation(s):
-- \D1_in|SLL|ShiftLeft0~176_combout\ = (\D1_in|SLL|ShiftLeft0~56_combout\) # ((\B[2]~input_o\ & (!\B[3]~input_o\ & \D1_in|SLL|ShiftLeft0~37_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \D1_in|SLL|ShiftLeft0~56_combout\,
	datab => \B[2]~input_o\,
	datac => \B[3]~input_o\,
	datad => \D1_in|SLL|ShiftLeft0~37_combout\,
	combout => \D1_in|SLL|ShiftLeft0~176_combout\);

-- Location: LCCOMB_X72_Y66_N8
\D1_in|SLL|ShiftLeft0~137\ : cycloneiv_lcell_comb
-- Equation(s):
-- \D1_in|SLL|ShiftLeft0~137_combout\ = (\D1_in|SLL|ShiftLeft0~136_combout\ & (((\D1_in|SLL|ShiftLeft0~176_combout\)) # (!\D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~13_combout\))) # (!\D1_in|SLL|ShiftLeft0~136_combout\ & 
-- (\D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~13_combout\ & ((\D1_in|SLL|ShiftLeft0~115_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \D1_in|SLL|ShiftLeft0~136_combout\,
	datab => \D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~13_combout\,
	datac => \D1_in|SLL|ShiftLeft0~176_combout\,
	datad => \D1_in|SLL|ShiftLeft0~115_combout\,
	combout => \D1_in|SLL|ShiftLeft0~137_combout\);

-- Location: LCCOMB_X71_Y68_N12
\D1_in|SLL|ShiftLeft0~177\ : cycloneiv_lcell_comb
-- Equation(s):
-- \D1_in|SLL|ShiftLeft0~177_combout\ = (\D1_in|SLL|ShiftLeft0~60_combout\) # ((\B[3]~input_o\ & (\D1_in|SLL|ShiftLeft0~39_combout\ & !\B[2]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[3]~input_o\,
	datab => \D1_in|SLL|ShiftLeft0~60_combout\,
	datac => \D1_in|SLL|ShiftLeft0~39_combout\,
	datad => \B[2]~input_o\,
	combout => \D1_in|SLL|ShiftLeft0~177_combout\);

-- Location: LCCOMB_X77_Y67_N26
\D1_in|SLL|ShiftLeft0~138\ : cycloneiv_lcell_comb
-- Equation(s):
-- \D1_in|SLL|ShiftLeft0~138_combout\ = (\B[1]~input_o\ & ((\B[0]~input_o\ & ((\A[23]~input_o\))) # (!\B[0]~input_o\ & (\A[24]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[1]~input_o\,
	datab => \B[0]~input_o\,
	datac => \A[24]~input_o\,
	datad => \A[23]~input_o\,
	combout => \D1_in|SLL|ShiftLeft0~138_combout\);

-- Location: LCCOMB_X77_Y67_N20
\D1_in|SLL|ShiftLeft0~139\ : cycloneiv_lcell_comb
-- Equation(s):
-- \D1_in|SLL|ShiftLeft0~139_combout\ = (\B[0]~input_o\ & (\A[25]~input_o\)) # (!\B[0]~input_o\ & ((\A[26]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \A[25]~input_o\,
	datac => \B[0]~input_o\,
	datad => \A[26]~input_o\,
	combout => \D1_in|SLL|ShiftLeft0~139_combout\);

-- Location: LCCOMB_X77_Y67_N6
\D1_in|SLL|ShiftLeft0~140\ : cycloneiv_lcell_comb
-- Equation(s):
-- \D1_in|SLL|ShiftLeft0~140_combout\ = (\D1_in|SLL|ShiftLeft0~138_combout\) # ((!\B[1]~input_o\ & \D1_in|SLL|ShiftLeft0~139_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[1]~input_o\,
	datac => \D1_in|SLL|ShiftLeft0~138_combout\,
	datad => \D1_in|SLL|ShiftLeft0~139_combout\,
	combout => \D1_in|SLL|ShiftLeft0~140_combout\);

-- Location: LCCOMB_X71_Y68_N2
\D1_in|SLL|ShiftLeft0~141\ : cycloneiv_lcell_comb
-- Equation(s):
-- \D1_in|SLL|ShiftLeft0~141_combout\ = (\D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~13_combout\ & (((!\D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~11_combout\)))) # (!\D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~13_combout\ & 
-- ((\D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~11_combout\ & ((\D1_in|SLL|ShiftLeft0~140_combout\))) # (!\D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~11_combout\ & (\D1_in|SLL|ShiftLeft0~102_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \D1_in|SLL|ShiftLeft0~102_combout\,
	datab => \D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~13_combout\,
	datac => \D1_in|SLL|ShiftLeft0~140_combout\,
	datad => \D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~11_combout\,
	combout => \D1_in|SLL|ShiftLeft0~141_combout\);

-- Location: LCCOMB_X71_Y68_N4
\D1_in|SLL|ShiftLeft0~142\ : cycloneiv_lcell_comb
-- Equation(s):
-- \D1_in|SLL|ShiftLeft0~142_combout\ = (\D1_in|SLL|ShiftLeft0~141_combout\ & ((\D1_in|SLL|ShiftLeft0~177_combout\) # ((!\D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~13_combout\)))) # (!\D1_in|SLL|ShiftLeft0~141_combout\ & (((\D1_in|SLL|ShiftLeft0~122_combout\ & 
-- \D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~13_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \D1_in|SLL|ShiftLeft0~177_combout\,
	datab => \D1_in|SLL|ShiftLeft0~141_combout\,
	datac => \D1_in|SLL|ShiftLeft0~122_combout\,
	datad => \D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~13_combout\,
	combout => \D1_in|SLL|ShiftLeft0~142_combout\);

-- Location: LCCOMB_X73_Y69_N6
\D1_in|SLL|ShiftLeft0~178\ : cycloneiv_lcell_comb
-- Equation(s):
-- \D1_in|SLL|ShiftLeft0~178_combout\ = (\D1_in|SLL|ShiftLeft0~64_combout\) # ((\D1_in|SLL|ShiftLeft0~43_combout\ & (\B[3]~input_o\ & !\B[2]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \D1_in|SLL|ShiftLeft0~43_combout\,
	datab => \D1_in|SLL|ShiftLeft0~64_combout\,
	datac => \B[3]~input_o\,
	datad => \B[2]~input_o\,
	combout => \D1_in|SLL|ShiftLeft0~178_combout\);

-- Location: LCCOMB_X77_Y67_N24
\D1_in|SLL|ShiftLeft0~143\ : cycloneiv_lcell_comb
-- Equation(s):
-- \D1_in|SLL|ShiftLeft0~143_combout\ = (\B[1]~input_o\ & ((\B[0]~input_o\ & ((\A[24]~input_o\))) # (!\B[0]~input_o\ & (\A[25]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[1]~input_o\,
	datab => \A[25]~input_o\,
	datac => \A[24]~input_o\,
	datad => \B[0]~input_o\,
	combout => \D1_in|SLL|ShiftLeft0~143_combout\);

-- Location: LCCOMB_X77_Y67_N2
\D1_in|SLL|ShiftLeft0~144\ : cycloneiv_lcell_comb
-- Equation(s):
-- \D1_in|SLL|ShiftLeft0~144_combout\ = (\B[0]~input_o\ & (\A[26]~input_o\)) # (!\B[0]~input_o\ & ((\A[27]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[26]~input_o\,
	datab => \B[0]~input_o\,
	datac => \A[27]~input_o\,
	combout => \D1_in|SLL|ShiftLeft0~144_combout\);

-- Location: LCCOMB_X77_Y67_N12
\D1_in|SLL|ShiftLeft0~145\ : cycloneiv_lcell_comb
-- Equation(s):
-- \D1_in|SLL|ShiftLeft0~145_combout\ = (\D1_in|SLL|ShiftLeft0~143_combout\) # ((!\B[1]~input_o\ & \D1_in|SLL|ShiftLeft0~144_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[1]~input_o\,
	datab => \D1_in|SLL|ShiftLeft0~143_combout\,
	datad => \D1_in|SLL|ShiftLeft0~144_combout\,
	combout => \D1_in|SLL|ShiftLeft0~145_combout\);

-- Location: LCCOMB_X73_Y69_N16
\D1_in|SLL|ShiftLeft0~146\ : cycloneiv_lcell_comb
-- Equation(s):
-- \D1_in|SLL|ShiftLeft0~146_combout\ = (\D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~13_combout\ & (((!\D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~11_combout\)))) # (!\D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~13_combout\ & 
-- ((\D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~11_combout\ & (\D1_in|SLL|ShiftLeft0~145_combout\)) # (!\D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~11_combout\ & ((\D1_in|SLL|ShiftLeft0~107_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \D1_in|SLL|ShiftLeft0~145_combout\,
	datab => \D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~13_combout\,
	datac => \D1_in|SLL|ShiftLeft0~107_combout\,
	datad => \D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~11_combout\,
	combout => \D1_in|SLL|ShiftLeft0~146_combout\);

-- Location: LCCOMB_X73_Y69_N26
\D1_in|SLL|ShiftLeft0~147\ : cycloneiv_lcell_comb
-- Equation(s):
-- \D1_in|SLL|ShiftLeft0~147_combout\ = (\D1_in|SLL|ShiftLeft0~146_combout\ & ((\D1_in|SLL|ShiftLeft0~178_combout\) # ((!\D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~13_combout\)))) # (!\D1_in|SLL|ShiftLeft0~146_combout\ & (((\D1_in|SLL|ShiftLeft0~127_combout\ & 
-- \D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~13_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \D1_in|SLL|ShiftLeft0~178_combout\,
	datab => \D1_in|SLL|ShiftLeft0~146_combout\,
	datac => \D1_in|SLL|ShiftLeft0~127_combout\,
	datad => \D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~13_combout\,
	combout => \D1_in|SLL|ShiftLeft0~147_combout\);

-- Location: LCCOMB_X73_Y66_N4
\D1_in|SLL|ShiftLeft0~148\ : cycloneiv_lcell_comb
-- Equation(s):
-- \D1_in|SLL|ShiftLeft0~148_combout\ = (\B[3]~input_o\ & ((\D1_in|SLL|ShiftLeft0~66_combout\))) # (!\B[3]~input_o\ & (\D1_in|SLL|ShiftLeft0~69_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \D1_in|SLL|ShiftLeft0~69_combout\,
	datac => \B[3]~input_o\,
	datad => \D1_in|SLL|ShiftLeft0~66_combout\,
	combout => \D1_in|SLL|ShiftLeft0~148_combout\);

-- Location: LCCOMB_X76_Y68_N26
\D1_in|SLL|ShiftLeft0~149\ : cycloneiv_lcell_comb
-- Equation(s):
-- \D1_in|SLL|ShiftLeft0~149_combout\ = (\B[0]~input_o\ & (\A[27]~input_o\)) # (!\B[0]~input_o\ & ((\A[28]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[0]~input_o\,
	datab => \A[27]~input_o\,
	datad => \A[28]~input_o\,
	combout => \D1_in|SLL|ShiftLeft0~149_combout\);

-- Location: LCCOMB_X79_Y70_N22
\D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~14\ : cycloneiv_lcell_comb
-- Equation(s):
-- \D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~14_combout\ = (\B[3]~input_o\) # ((\B[1]~input_o\ & !\B[2]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[3]~input_o\,
	datac => \B[1]~input_o\,
	datad => \B[2]~input_o\,
	combout => \D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~14_combout\);

-- Location: LCCOMB_X73_Y66_N14
\D1_in|SLL|ShiftLeft0~150\ : cycloneiv_lcell_comb
-- Equation(s):
-- \D1_in|SLL|ShiftLeft0~150_combout\ = (\D1_in|SLL|ShiftLeft0~47_combout\ & (((\D1_in|SLL|ShiftLeft0~149_combout\ & !\D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~14_combout\)))) # (!\D1_in|SLL|ShiftLeft0~47_combout\ & ((\D1_in|SLL|ShiftLeft0~131_combout\) # 
-- ((\D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \D1_in|SLL|ShiftLeft0~131_combout\,
	datab => \D1_in|SLL|ShiftLeft0~149_combout\,
	datac => \D1_in|SLL|ShiftLeft0~47_combout\,
	datad => \D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~14_combout\,
	combout => \D1_in|SLL|ShiftLeft0~150_combout\);

-- Location: LCCOMB_X73_Y66_N8
\D1_in|SLL|ShiftLeft0~151\ : cycloneiv_lcell_comb
-- Equation(s):
-- \D1_in|SLL|ShiftLeft0~151_combout\ = (\D1_in|SLL|ShiftLeft0~150_combout\ & (((\D1_in|SLL|ShiftLeft0~111_combout\) # (!\D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~14_combout\)))) # (!\D1_in|SLL|ShiftLeft0~150_combout\ & (\D1_in|SLL|ShiftLeft0~139_combout\ & 
-- ((\D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \D1_in|SLL|ShiftLeft0~139_combout\,
	datab => \D1_in|SLL|ShiftLeft0~111_combout\,
	datac => \D1_in|SLL|ShiftLeft0~150_combout\,
	datad => \D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~14_combout\,
	combout => \D1_in|SLL|ShiftLeft0~151_combout\);

-- Location: LCCOMB_X73_Y66_N10
\D1_in|SLL|ShiftLeft0~152\ : cycloneiv_lcell_comb
-- Equation(s):
-- \D1_in|SLL|ShiftLeft0~152_combout\ = (\B[4]~input_o\ & (\D1_in|SLL|ShiftLeft0~148_combout\)) # (!\B[4]~input_o\ & ((\D1_in|SLL|ShiftLeft0~151_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \D1_in|SLL|ShiftLeft0~148_combout\,
	datac => \B[4]~input_o\,
	datad => \D1_in|SLL|ShiftLeft0~151_combout\,
	combout => \D1_in|SLL|ShiftLeft0~152_combout\);

-- Location: LCCOMB_X71_Y87_N26
\D1_in|SLL|ShiftLeft0~153\ : cycloneiv_lcell_comb
-- Equation(s):
-- \D1_in|SLL|ShiftLeft0~153_combout\ = (\B[3]~input_o\ & ((\D1_in|SLL|ShiftLeft0~38_combout\))) # (!\B[3]~input_o\ & (\D1_in|SLL|ShiftLeft0~73_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \D1_in|SLL|ShiftLeft0~73_combout\,
	datac => \B[3]~input_o\,
	datad => \D1_in|SLL|ShiftLeft0~38_combout\,
	combout => \D1_in|SLL|ShiftLeft0~153_combout\);

-- Location: LCCOMB_X79_Y70_N16
\D1_in|SLL|ShiftLeft0~154\ : cycloneiv_lcell_comb
-- Equation(s):
-- \D1_in|SLL|ShiftLeft0~154_combout\ = (\B[0]~input_o\ & (\A[28]~input_o\)) # (!\B[0]~input_o\ & ((\A[29]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B[0]~input_o\,
	datac => \A[28]~input_o\,
	datad => \A[29]~input_o\,
	combout => \D1_in|SLL|ShiftLeft0~154_combout\);

-- Location: LCCOMB_X79_Y70_N10
\D1_in|SLL|ShiftLeft0~155\ : cycloneiv_lcell_comb
-- Equation(s):
-- \D1_in|SLL|ShiftLeft0~155_combout\ = (\D1_in|SLL|ShiftLeft0~47_combout\ & (((!\D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~14_combout\ & \D1_in|SLL|ShiftLeft0~154_combout\)))) # (!\D1_in|SLL|ShiftLeft0~47_combout\ & ((\D1_in|SLL|ShiftLeft0~135_combout\) # 
-- ((\D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111001010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \D1_in|SLL|ShiftLeft0~47_combout\,
	datab => \D1_in|SLL|ShiftLeft0~135_combout\,
	datac => \D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~14_combout\,
	datad => \D1_in|SLL|ShiftLeft0~154_combout\,
	combout => \D1_in|SLL|ShiftLeft0~155_combout\);

-- Location: LCCOMB_X71_Y87_N4
\D1_in|SLL|ShiftLeft0~156\ : cycloneiv_lcell_comb
-- Equation(s):
-- \D1_in|SLL|ShiftLeft0~156_combout\ = (\D1_in|SLL|ShiftLeft0~155_combout\ & ((\D1_in|SLL|ShiftLeft0~116_combout\) # ((!\D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~14_combout\)))) # (!\D1_in|SLL|ShiftLeft0~155_combout\ & (((\D1_in|SLL|ShiftLeft0~144_combout\ & 
-- \D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \D1_in|SLL|ShiftLeft0~116_combout\,
	datab => \D1_in|SLL|ShiftLeft0~155_combout\,
	datac => \D1_in|SLL|ShiftLeft0~144_combout\,
	datad => \D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~14_combout\,
	combout => \D1_in|SLL|ShiftLeft0~156_combout\);

-- Location: LCCOMB_X71_Y87_N30
\D1_in|SLL|ShiftLeft0~157\ : cycloneiv_lcell_comb
-- Equation(s):
-- \D1_in|SLL|ShiftLeft0~157_combout\ = (\B[4]~input_o\ & (\D1_in|SLL|ShiftLeft0~153_combout\)) # (!\B[4]~input_o\ & ((\D1_in|SLL|ShiftLeft0~156_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \D1_in|SLL|ShiftLeft0~153_combout\,
	datab => \D1_in|SLL|ShiftLeft0~156_combout\,
	datac => \B[4]~input_o\,
	combout => \D1_in|SLL|ShiftLeft0~157_combout\);

-- Location: LCCOMB_X72_Y68_N28
\D1_in|SLL|ShiftLeft0~158\ : cycloneiv_lcell_comb
-- Equation(s):
-- \D1_in|SLL|ShiftLeft0~158_combout\ = (\B[4]~input_o\ & ((\D1_in|SLL|ShiftLeft0~77_combout\) # ((\D1_in|SLL|ShiftLeft0~78_combout\ & \B[3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \D1_in|SLL|ShiftLeft0~78_combout\,
	datab => \B[3]~input_o\,
	datac => \B[4]~input_o\,
	datad => \D1_in|SLL|ShiftLeft0~77_combout\,
	combout => \D1_in|SLL|ShiftLeft0~158_combout\);

-- Location: LCCOMB_X73_Y68_N12
\D1_in|SLL|ShiftLeft0~113\ : cycloneiv_lcell_comb
-- Equation(s):
-- \D1_in|SLL|ShiftLeft0~113_combout\ = (\B[3]~input_o\ & !\B[4]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \B[3]~input_o\,
	datad => \B[4]~input_o\,
	combout => \D1_in|SLL|ShiftLeft0~113_combout\);

-- Location: LCCOMB_X73_Y68_N22
\D1_in|SLL|ShiftLeft0~159\ : cycloneiv_lcell_comb
-- Equation(s):
-- \D1_in|SLL|ShiftLeft0~159_combout\ = (\D1_in|SLL|ShiftLeft0~113_combout\ & ((\B[2]~input_o\ & (\D1_in|SLL|ShiftLeft0~101_combout\)) # (!\B[2]~input_o\ & ((\D1_in|SLL|ShiftLeft0~122_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \D1_in|SLL|ShiftLeft0~113_combout\,
	datab => \D1_in|SLL|ShiftLeft0~101_combout\,
	datac => \D1_in|SLL|ShiftLeft0~122_combout\,
	datad => \B[2]~input_o\,
	combout => \D1_in|SLL|ShiftLeft0~159_combout\);

-- Location: LCCOMB_X76_Y68_N12
\D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~15\ : cycloneiv_lcell_comb
-- Equation(s):
-- \D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~15_combout\ = (\B[2]~input_o\) # ((\B[0]~input_o\ & !\B[1]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[0]~input_o\,
	datac => \B[1]~input_o\,
	datad => \B[2]~input_o\,
	combout => \D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~15_combout\);

-- Location: LCCOMB_X76_Y68_N30
\D1_in|SLL|ShiftLeft0~160\ : cycloneiv_lcell_comb
-- Equation(s):
-- \D1_in|SLL|ShiftLeft0~160_combout\ = (\D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~15_combout\ & (\D1_in|SLL|ShiftLeft0~92_combout\)) # (!\D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~15_combout\ & ((\D1_in|SLL|ShiftLeft0~92_combout\ & 
-- (\D1_in|SLL|ShiftLeft0~149_combout\)) # (!\D1_in|SLL|ShiftLeft0~92_combout\ & ((\A[30]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~15_combout\,
	datab => \D1_in|SLL|ShiftLeft0~92_combout\,
	datac => \D1_in|SLL|ShiftLeft0~149_combout\,
	datad => \A[30]~input_o\,
	combout => \D1_in|SLL|ShiftLeft0~160_combout\);

-- Location: LCCOMB_X76_Y68_N8
\D1_in|SLL|ShiftLeft0~161\ : cycloneiv_lcell_comb
-- Equation(s):
-- \D1_in|SLL|ShiftLeft0~161_combout\ = (\D1_in|SLL|ShiftLeft0~160_combout\ & (((\D1_in|SLL|ShiftLeft0~140_combout\) # (!\D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~15_combout\)))) # (!\D1_in|SLL|ShiftLeft0~160_combout\ & (\A[29]~input_o\ & 
-- ((\D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~15_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[29]~input_o\,
	datab => \D1_in|SLL|ShiftLeft0~140_combout\,
	datac => \D1_in|SLL|ShiftLeft0~160_combout\,
	datad => \D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~15_combout\,
	combout => \D1_in|SLL|ShiftLeft0~161_combout\);

-- Location: LCCOMB_X73_Y68_N16
\D1_in|SLL|ShiftLeft0~162\ : cycloneiv_lcell_comb
-- Equation(s):
-- \D1_in|SLL|ShiftLeft0~162_combout\ = (\D1_in|SLL|ShiftLeft0~158_combout\) # ((\D1_in|SLL|ShiftLeft0~159_combout\) # ((\D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~11_combout\ & \D1_in|SLL|ShiftLeft0~161_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \D1_in|SLL|ShiftLeft0~158_combout\,
	datab => \D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~11_combout\,
	datac => \D1_in|SLL|ShiftLeft0~159_combout\,
	datad => \D1_in|SLL|ShiftLeft0~161_combout\,
	combout => \D1_in|SLL|ShiftLeft0~162_combout\);

-- Location: LCCOMB_X73_Y68_N10
\D1_in|SLL|ShiftLeft0~163\ : cycloneiv_lcell_comb
-- Equation(s):
-- \D1_in|SLL|ShiftLeft0~163_combout\ = (\D1_in|SLL|ShiftLeft0~113_combout\ & ((\B[2]~input_o\ & ((\D1_in|SLL|ShiftLeft0~106_combout\))) # (!\B[2]~input_o\ & (\D1_in|SLL|ShiftLeft0~127_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[2]~input_o\,
	datab => \D1_in|SLL|ShiftLeft0~127_combout\,
	datac => \D1_in|SLL|ShiftLeft0~113_combout\,
	datad => \D1_in|SLL|ShiftLeft0~106_combout\,
	combout => \D1_in|SLL|ShiftLeft0~163_combout\);

-- Location: LCCOMB_X76_Y69_N10
\D1_in|SLL|ShiftLeft0~164\ : cycloneiv_lcell_comb
-- Equation(s):
-- \D1_in|SLL|ShiftLeft0~164_combout\ = (\D1_in|SLL|ShiftLeft0~92_combout\ & ((\D1_in|SLL|ShiftLeft0~154_combout\) # ((\D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~15_combout\)))) # (!\D1_in|SLL|ShiftLeft0~92_combout\ & (((\A[31]~input_o\ & 
-- !\D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~15_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \D1_in|SLL|ShiftLeft0~92_combout\,
	datab => \D1_in|SLL|ShiftLeft0~154_combout\,
	datac => \A[31]~input_o\,
	datad => \D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~15_combout\,
	combout => \D1_in|SLL|ShiftLeft0~164_combout\);

-- Location: LCCOMB_X76_Y69_N4
\D1_in|SLL|ShiftLeft0~165\ : cycloneiv_lcell_comb
-- Equation(s):
-- \D1_in|SLL|ShiftLeft0~165_combout\ = (\D1_in|SLL|ShiftLeft0~164_combout\ & ((\D1_in|SLL|ShiftLeft0~145_combout\) # ((!\D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~15_combout\)))) # (!\D1_in|SLL|ShiftLeft0~164_combout\ & (((\A[30]~input_o\ & 
-- \D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~15_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \D1_in|SLL|ShiftLeft0~164_combout\,
	datab => \D1_in|SLL|ShiftLeft0~145_combout\,
	datac => \A[30]~input_o\,
	datad => \D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~15_combout\,
	combout => \D1_in|SLL|ShiftLeft0~165_combout\);

-- Location: LCCOMB_X73_Y68_N4
\D1_in|SLL|ShiftLeft0~166\ : cycloneiv_lcell_comb
-- Equation(s):
-- \D1_in|SLL|ShiftLeft0~166_combout\ = (\B[4]~input_o\ & ((\D1_in|SLL|ShiftLeft0~82_combout\) # ((\D1_in|SLL|ShiftLeft0~83_combout\ & \B[3]~input_o\)))) # (!\B[4]~input_o\ & (((\B[3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \D1_in|SLL|ShiftLeft0~82_combout\,
	datab => \D1_in|SLL|ShiftLeft0~83_combout\,
	datac => \B[3]~input_o\,
	datad => \B[4]~input_o\,
	combout => \D1_in|SLL|ShiftLeft0~166_combout\);

-- Location: LCCOMB_X73_Y68_N30
\D1_in|SLL|ShiftLeft0~167\ : cycloneiv_lcell_comb
-- Equation(s):
-- \D1_in|SLL|ShiftLeft0~167_combout\ = (\D1_in|SLL|ShiftLeft0~163_combout\) # ((\D1_in|SLL|ShiftLeft0~166_combout\ & ((\B[4]~input_o\))) # (!\D1_in|SLL|ShiftLeft0~166_combout\ & (\D1_in|SLL|ShiftLeft0~165_combout\ & !\B[4]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101010101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \D1_in|SLL|ShiftLeft0~163_combout\,
	datab => \D1_in|SLL|ShiftLeft0~165_combout\,
	datac => \D1_in|SLL|ShiftLeft0~166_combout\,
	datad => \B[4]~input_o\,
	combout => \D1_in|SLL|ShiftLeft0~167_combout\);

-- Location: LCCOMB_X79_Y68_N0
\D2_in|LT_inst|LessThan0~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \D2_in|LT_inst|LessThan0~1_cout\ = CARRY((!\A[0]~input_o\ & \B[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \A[0]~input_o\,
	datab => \B[0]~input_o\,
	datad => VCC,
	cout => \D2_in|LT_inst|LessThan0~1_cout\);

-- Location: LCCOMB_X79_Y68_N2
\D2_in|LT_inst|LessThan0~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \D2_in|LT_inst|LessThan0~3_cout\ = CARRY((\B[1]~input_o\ & (\A[1]~input_o\ & !\D2_in|LT_inst|LessThan0~1_cout\)) # (!\B[1]~input_o\ & ((\A[1]~input_o\) # (!\D2_in|LT_inst|LessThan0~1_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \B[1]~input_o\,
	datab => \A[1]~input_o\,
	datad => VCC,
	cin => \D2_in|LT_inst|LessThan0~1_cout\,
	cout => \D2_in|LT_inst|LessThan0~3_cout\);

-- Location: LCCOMB_X79_Y68_N4
\D2_in|LT_inst|LessThan0~5\ : cycloneiv_lcell_comb
-- Equation(s):
-- \D2_in|LT_inst|LessThan0~5_cout\ = CARRY((\B[2]~input_o\ & ((!\D2_in|LT_inst|LessThan0~3_cout\) # (!\A[2]~input_o\))) # (!\B[2]~input_o\ & (!\A[2]~input_o\ & !\D2_in|LT_inst|LessThan0~3_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \B[2]~input_o\,
	datab => \A[2]~input_o\,
	datad => VCC,
	cin => \D2_in|LT_inst|LessThan0~3_cout\,
	cout => \D2_in|LT_inst|LessThan0~5_cout\);

-- Location: LCCOMB_X79_Y68_N6
\D2_in|LT_inst|LessThan0~7\ : cycloneiv_lcell_comb
-- Equation(s):
-- \D2_in|LT_inst|LessThan0~7_cout\ = CARRY((\A[3]~input_o\ & ((!\D2_in|LT_inst|LessThan0~5_cout\) # (!\B[3]~input_o\))) # (!\A[3]~input_o\ & (!\B[3]~input_o\ & !\D2_in|LT_inst|LessThan0~5_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \A[3]~input_o\,
	datab => \B[3]~input_o\,
	datad => VCC,
	cin => \D2_in|LT_inst|LessThan0~5_cout\,
	cout => \D2_in|LT_inst|LessThan0~7_cout\);

-- Location: LCCOMB_X79_Y68_N8
\D2_in|LT_inst|LessThan0~9\ : cycloneiv_lcell_comb
-- Equation(s):
-- \D2_in|LT_inst|LessThan0~9_cout\ = CARRY((\A[4]~input_o\ & (\B[4]~input_o\ & !\D2_in|LT_inst|LessThan0~7_cout\)) # (!\A[4]~input_o\ & ((\B[4]~input_o\) # (!\D2_in|LT_inst|LessThan0~7_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \A[4]~input_o\,
	datab => \B[4]~input_o\,
	datad => VCC,
	cin => \D2_in|LT_inst|LessThan0~7_cout\,
	cout => \D2_in|LT_inst|LessThan0~9_cout\);

-- Location: LCCOMB_X79_Y68_N10
\D2_in|LT_inst|LessThan0~11\ : cycloneiv_lcell_comb
-- Equation(s):
-- \D2_in|LT_inst|LessThan0~11_cout\ = CARRY((\B[5]~input_o\ & (\A[5]~input_o\ & !\D2_in|LT_inst|LessThan0~9_cout\)) # (!\B[5]~input_o\ & ((\A[5]~input_o\) # (!\D2_in|LT_inst|LessThan0~9_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \B[5]~input_o\,
	datab => \A[5]~input_o\,
	datad => VCC,
	cin => \D2_in|LT_inst|LessThan0~9_cout\,
	cout => \D2_in|LT_inst|LessThan0~11_cout\);

-- Location: LCCOMB_X79_Y68_N12
\D2_in|LT_inst|LessThan0~13\ : cycloneiv_lcell_comb
-- Equation(s):
-- \D2_in|LT_inst|LessThan0~13_cout\ = CARRY((\A[6]~input_o\ & (\B[6]~input_o\ & !\D2_in|LT_inst|LessThan0~11_cout\)) # (!\A[6]~input_o\ & ((\B[6]~input_o\) # (!\D2_in|LT_inst|LessThan0~11_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \A[6]~input_o\,
	datab => \B[6]~input_o\,
	datad => VCC,
	cin => \D2_in|LT_inst|LessThan0~11_cout\,
	cout => \D2_in|LT_inst|LessThan0~13_cout\);

-- Location: LCCOMB_X79_Y68_N14
\D2_in|LT_inst|LessThan0~15\ : cycloneiv_lcell_comb
-- Equation(s):
-- \D2_in|LT_inst|LessThan0~15_cout\ = CARRY((\A[7]~input_o\ & ((!\D2_in|LT_inst|LessThan0~13_cout\) # (!\B[7]~input_o\))) # (!\A[7]~input_o\ & (!\B[7]~input_o\ & !\D2_in|LT_inst|LessThan0~13_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \A[7]~input_o\,
	datab => \B[7]~input_o\,
	datad => VCC,
	cin => \D2_in|LT_inst|LessThan0~13_cout\,
	cout => \D2_in|LT_inst|LessThan0~15_cout\);

-- Location: LCCOMB_X79_Y68_N16
\D2_in|LT_inst|LessThan0~17\ : cycloneiv_lcell_comb
-- Equation(s):
-- \D2_in|LT_inst|LessThan0~17_cout\ = CARRY((\B[8]~input_o\ & ((!\D2_in|LT_inst|LessThan0~15_cout\) # (!\A[8]~input_o\))) # (!\B[8]~input_o\ & (!\A[8]~input_o\ & !\D2_in|LT_inst|LessThan0~15_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \B[8]~input_o\,
	datab => \A[8]~input_o\,
	datad => VCC,
	cin => \D2_in|LT_inst|LessThan0~15_cout\,
	cout => \D2_in|LT_inst|LessThan0~17_cout\);

-- Location: LCCOMB_X79_Y68_N18
\D2_in|LT_inst|LessThan0~19\ : cycloneiv_lcell_comb
-- Equation(s):
-- \D2_in|LT_inst|LessThan0~19_cout\ = CARRY((\B[9]~input_o\ & (\A[9]~input_o\ & !\D2_in|LT_inst|LessThan0~17_cout\)) # (!\B[9]~input_o\ & ((\A[9]~input_o\) # (!\D2_in|LT_inst|LessThan0~17_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \B[9]~input_o\,
	datab => \A[9]~input_o\,
	datad => VCC,
	cin => \D2_in|LT_inst|LessThan0~17_cout\,
	cout => \D2_in|LT_inst|LessThan0~19_cout\);

-- Location: LCCOMB_X79_Y68_N20
\D2_in|LT_inst|LessThan0~21\ : cycloneiv_lcell_comb
-- Equation(s):
-- \D2_in|LT_inst|LessThan0~21_cout\ = CARRY((\A[10]~input_o\ & (\B[10]~input_o\ & !\D2_in|LT_inst|LessThan0~19_cout\)) # (!\A[10]~input_o\ & ((\B[10]~input_o\) # (!\D2_in|LT_inst|LessThan0~19_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \A[10]~input_o\,
	datab => \B[10]~input_o\,
	datad => VCC,
	cin => \D2_in|LT_inst|LessThan0~19_cout\,
	cout => \D2_in|LT_inst|LessThan0~21_cout\);

-- Location: LCCOMB_X79_Y68_N22
\D2_in|LT_inst|LessThan0~23\ : cycloneiv_lcell_comb
-- Equation(s):
-- \D2_in|LT_inst|LessThan0~23_cout\ = CARRY((\A[11]~input_o\ & ((!\D2_in|LT_inst|LessThan0~21_cout\) # (!\B[11]~input_o\))) # (!\A[11]~input_o\ & (!\B[11]~input_o\ & !\D2_in|LT_inst|LessThan0~21_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \A[11]~input_o\,
	datab => \B[11]~input_o\,
	datad => VCC,
	cin => \D2_in|LT_inst|LessThan0~21_cout\,
	cout => \D2_in|LT_inst|LessThan0~23_cout\);

-- Location: LCCOMB_X79_Y68_N24
\D2_in|LT_inst|LessThan0~25\ : cycloneiv_lcell_comb
-- Equation(s):
-- \D2_in|LT_inst|LessThan0~25_cout\ = CARRY((\A[12]~input_o\ & (\B[12]~input_o\ & !\D2_in|LT_inst|LessThan0~23_cout\)) # (!\A[12]~input_o\ & ((\B[12]~input_o\) # (!\D2_in|LT_inst|LessThan0~23_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \A[12]~input_o\,
	datab => \B[12]~input_o\,
	datad => VCC,
	cin => \D2_in|LT_inst|LessThan0~23_cout\,
	cout => \D2_in|LT_inst|LessThan0~25_cout\);

-- Location: LCCOMB_X79_Y68_N26
\D2_in|LT_inst|LessThan0~27\ : cycloneiv_lcell_comb
-- Equation(s):
-- \D2_in|LT_inst|LessThan0~27_cout\ = CARRY((\A[13]~input_o\ & ((!\D2_in|LT_inst|LessThan0~25_cout\) # (!\B[13]~input_o\))) # (!\A[13]~input_o\ & (!\B[13]~input_o\ & !\D2_in|LT_inst|LessThan0~25_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \A[13]~input_o\,
	datab => \B[13]~input_o\,
	datad => VCC,
	cin => \D2_in|LT_inst|LessThan0~25_cout\,
	cout => \D2_in|LT_inst|LessThan0~27_cout\);

-- Location: LCCOMB_X79_Y68_N28
\D2_in|LT_inst|LessThan0~29\ : cycloneiv_lcell_comb
-- Equation(s):
-- \D2_in|LT_inst|LessThan0~29_cout\ = CARRY((\B[14]~input_o\ & ((!\D2_in|LT_inst|LessThan0~27_cout\) # (!\A[14]~input_o\))) # (!\B[14]~input_o\ & (!\A[14]~input_o\ & !\D2_in|LT_inst|LessThan0~27_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \B[14]~input_o\,
	datab => \A[14]~input_o\,
	datad => VCC,
	cin => \D2_in|LT_inst|LessThan0~27_cout\,
	cout => \D2_in|LT_inst|LessThan0~29_cout\);

-- Location: LCCOMB_X79_Y68_N30
\D2_in|LT_inst|LessThan0~31\ : cycloneiv_lcell_comb
-- Equation(s):
-- \D2_in|LT_inst|LessThan0~31_cout\ = CARRY((\A[15]~input_o\ & ((!\D2_in|LT_inst|LessThan0~29_cout\) # (!\B[15]~input_o\))) # (!\A[15]~input_o\ & (!\B[15]~input_o\ & !\D2_in|LT_inst|LessThan0~29_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \A[15]~input_o\,
	datab => \B[15]~input_o\,
	datad => VCC,
	cin => \D2_in|LT_inst|LessThan0~29_cout\,
	cout => \D2_in|LT_inst|LessThan0~31_cout\);

-- Location: LCCOMB_X79_Y67_N0
\D2_in|LT_inst|LessThan0~33\ : cycloneiv_lcell_comb
-- Equation(s):
-- \D2_in|LT_inst|LessThan0~33_cout\ = CARRY((\A[16]~input_o\ & (\B[16]~input_o\ & !\D2_in|LT_inst|LessThan0~31_cout\)) # (!\A[16]~input_o\ & ((\B[16]~input_o\) # (!\D2_in|LT_inst|LessThan0~31_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \A[16]~input_o\,
	datab => \B[16]~input_o\,
	datad => VCC,
	cin => \D2_in|LT_inst|LessThan0~31_cout\,
	cout => \D2_in|LT_inst|LessThan0~33_cout\);

-- Location: LCCOMB_X79_Y67_N2
\D2_in|LT_inst|LessThan0~35\ : cycloneiv_lcell_comb
-- Equation(s):
-- \D2_in|LT_inst|LessThan0~35_cout\ = CARRY((\A[17]~input_o\ & ((!\D2_in|LT_inst|LessThan0~33_cout\) # (!\B[17]~input_o\))) # (!\A[17]~input_o\ & (!\B[17]~input_o\ & !\D2_in|LT_inst|LessThan0~33_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \A[17]~input_o\,
	datab => \B[17]~input_o\,
	datad => VCC,
	cin => \D2_in|LT_inst|LessThan0~33_cout\,
	cout => \D2_in|LT_inst|LessThan0~35_cout\);

-- Location: LCCOMB_X79_Y67_N4
\D2_in|LT_inst|LessThan0~37\ : cycloneiv_lcell_comb
-- Equation(s):
-- \D2_in|LT_inst|LessThan0~37_cout\ = CARRY((\B[18]~input_o\ & ((!\D2_in|LT_inst|LessThan0~35_cout\) # (!\A[18]~input_o\))) # (!\B[18]~input_o\ & (!\A[18]~input_o\ & !\D2_in|LT_inst|LessThan0~35_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \B[18]~input_o\,
	datab => \A[18]~input_o\,
	datad => VCC,
	cin => \D2_in|LT_inst|LessThan0~35_cout\,
	cout => \D2_in|LT_inst|LessThan0~37_cout\);

-- Location: LCCOMB_X79_Y67_N6
\D2_in|LT_inst|LessThan0~39\ : cycloneiv_lcell_comb
-- Equation(s):
-- \D2_in|LT_inst|LessThan0~39_cout\ = CARRY((\B[19]~input_o\ & (\A[19]~input_o\ & !\D2_in|LT_inst|LessThan0~37_cout\)) # (!\B[19]~input_o\ & ((\A[19]~input_o\) # (!\D2_in|LT_inst|LessThan0~37_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \B[19]~input_o\,
	datab => \A[19]~input_o\,
	datad => VCC,
	cin => \D2_in|LT_inst|LessThan0~37_cout\,
	cout => \D2_in|LT_inst|LessThan0~39_cout\);

-- Location: LCCOMB_X79_Y67_N8
\D2_in|LT_inst|LessThan0~41\ : cycloneiv_lcell_comb
-- Equation(s):
-- \D2_in|LT_inst|LessThan0~41_cout\ = CARRY((\B[20]~input_o\ & ((!\D2_in|LT_inst|LessThan0~39_cout\) # (!\A[20]~input_o\))) # (!\B[20]~input_o\ & (!\A[20]~input_o\ & !\D2_in|LT_inst|LessThan0~39_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \B[20]~input_o\,
	datab => \A[20]~input_o\,
	datad => VCC,
	cin => \D2_in|LT_inst|LessThan0~39_cout\,
	cout => \D2_in|LT_inst|LessThan0~41_cout\);

-- Location: LCCOMB_X79_Y67_N10
\D2_in|LT_inst|LessThan0~43\ : cycloneiv_lcell_comb
-- Equation(s):
-- \D2_in|LT_inst|LessThan0~43_cout\ = CARRY((\B[21]~input_o\ & (\A[21]~input_o\ & !\D2_in|LT_inst|LessThan0~41_cout\)) # (!\B[21]~input_o\ & ((\A[21]~input_o\) # (!\D2_in|LT_inst|LessThan0~41_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \B[21]~input_o\,
	datab => \A[21]~input_o\,
	datad => VCC,
	cin => \D2_in|LT_inst|LessThan0~41_cout\,
	cout => \D2_in|LT_inst|LessThan0~43_cout\);

-- Location: LCCOMB_X79_Y67_N12
\D2_in|LT_inst|LessThan0~45\ : cycloneiv_lcell_comb
-- Equation(s):
-- \D2_in|LT_inst|LessThan0~45_cout\ = CARRY((\A[22]~input_o\ & (\B[22]~input_o\ & !\D2_in|LT_inst|LessThan0~43_cout\)) # (!\A[22]~input_o\ & ((\B[22]~input_o\) # (!\D2_in|LT_inst|LessThan0~43_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \A[22]~input_o\,
	datab => \B[22]~input_o\,
	datad => VCC,
	cin => \D2_in|LT_inst|LessThan0~43_cout\,
	cout => \D2_in|LT_inst|LessThan0~45_cout\);

-- Location: LCCOMB_X79_Y67_N14
\D2_in|LT_inst|LessThan0~47\ : cycloneiv_lcell_comb
-- Equation(s):
-- \D2_in|LT_inst|LessThan0~47_cout\ = CARRY((\A[23]~input_o\ & ((!\D2_in|LT_inst|LessThan0~45_cout\) # (!\B[23]~input_o\))) # (!\A[23]~input_o\ & (!\B[23]~input_o\ & !\D2_in|LT_inst|LessThan0~45_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \A[23]~input_o\,
	datab => \B[23]~input_o\,
	datad => VCC,
	cin => \D2_in|LT_inst|LessThan0~45_cout\,
	cout => \D2_in|LT_inst|LessThan0~47_cout\);

-- Location: LCCOMB_X79_Y67_N16
\D2_in|LT_inst|LessThan0~49\ : cycloneiv_lcell_comb
-- Equation(s):
-- \D2_in|LT_inst|LessThan0~49_cout\ = CARRY((\B[24]~input_o\ & ((!\D2_in|LT_inst|LessThan0~47_cout\) # (!\A[24]~input_o\))) # (!\B[24]~input_o\ & (!\A[24]~input_o\ & !\D2_in|LT_inst|LessThan0~47_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \B[24]~input_o\,
	datab => \A[24]~input_o\,
	datad => VCC,
	cin => \D2_in|LT_inst|LessThan0~47_cout\,
	cout => \D2_in|LT_inst|LessThan0~49_cout\);

-- Location: LCCOMB_X79_Y67_N18
\D2_in|LT_inst|LessThan0~51\ : cycloneiv_lcell_comb
-- Equation(s):
-- \D2_in|LT_inst|LessThan0~51_cout\ = CARRY((\A[25]~input_o\ & ((!\D2_in|LT_inst|LessThan0~49_cout\) # (!\B[25]~input_o\))) # (!\A[25]~input_o\ & (!\B[25]~input_o\ & !\D2_in|LT_inst|LessThan0~49_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \A[25]~input_o\,
	datab => \B[25]~input_o\,
	datad => VCC,
	cin => \D2_in|LT_inst|LessThan0~49_cout\,
	cout => \D2_in|LT_inst|LessThan0~51_cout\);

-- Location: LCCOMB_X79_Y67_N20
\D2_in|LT_inst|LessThan0~53\ : cycloneiv_lcell_comb
-- Equation(s):
-- \D2_in|LT_inst|LessThan0~53_cout\ = CARRY((\A[26]~input_o\ & (\B[26]~input_o\ & !\D2_in|LT_inst|LessThan0~51_cout\)) # (!\A[26]~input_o\ & ((\B[26]~input_o\) # (!\D2_in|LT_inst|LessThan0~51_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \A[26]~input_o\,
	datab => \B[26]~input_o\,
	datad => VCC,
	cin => \D2_in|LT_inst|LessThan0~51_cout\,
	cout => \D2_in|LT_inst|LessThan0~53_cout\);

-- Location: LCCOMB_X79_Y67_N22
\D2_in|LT_inst|LessThan0~55\ : cycloneiv_lcell_comb
-- Equation(s):
-- \D2_in|LT_inst|LessThan0~55_cout\ = CARRY((\A[27]~input_o\ & ((!\D2_in|LT_inst|LessThan0~53_cout\) # (!\B[27]~input_o\))) # (!\A[27]~input_o\ & (!\B[27]~input_o\ & !\D2_in|LT_inst|LessThan0~53_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \A[27]~input_o\,
	datab => \B[27]~input_o\,
	datad => VCC,
	cin => \D2_in|LT_inst|LessThan0~53_cout\,
	cout => \D2_in|LT_inst|LessThan0~55_cout\);

-- Location: LCCOMB_X79_Y67_N24
\D2_in|LT_inst|LessThan0~57\ : cycloneiv_lcell_comb
-- Equation(s):
-- \D2_in|LT_inst|LessThan0~57_cout\ = CARRY((\B[28]~input_o\ & ((!\D2_in|LT_inst|LessThan0~55_cout\) # (!\A[28]~input_o\))) # (!\B[28]~input_o\ & (!\A[28]~input_o\ & !\D2_in|LT_inst|LessThan0~55_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \B[28]~input_o\,
	datab => \A[28]~input_o\,
	datad => VCC,
	cin => \D2_in|LT_inst|LessThan0~55_cout\,
	cout => \D2_in|LT_inst|LessThan0~57_cout\);

-- Location: LCCOMB_X79_Y67_N26
\D2_in|LT_inst|LessThan0~59\ : cycloneiv_lcell_comb
-- Equation(s):
-- \D2_in|LT_inst|LessThan0~59_cout\ = CARRY((\A[29]~input_o\ & ((!\D2_in|LT_inst|LessThan0~57_cout\) # (!\B[29]~input_o\))) # (!\A[29]~input_o\ & (!\B[29]~input_o\ & !\D2_in|LT_inst|LessThan0~57_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \A[29]~input_o\,
	datab => \B[29]~input_o\,
	datad => VCC,
	cin => \D2_in|LT_inst|LessThan0~57_cout\,
	cout => \D2_in|LT_inst|LessThan0~59_cout\);

-- Location: LCCOMB_X79_Y67_N28
\D2_in|LT_inst|LessThan0~61\ : cycloneiv_lcell_comb
-- Equation(s):
-- \D2_in|LT_inst|LessThan0~61_cout\ = CARRY((\B[30]~input_o\ & ((!\D2_in|LT_inst|LessThan0~59_cout\) # (!\A[30]~input_o\))) # (!\B[30]~input_o\ & (!\A[30]~input_o\ & !\D2_in|LT_inst|LessThan0~59_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \B[30]~input_o\,
	datab => \A[30]~input_o\,
	datad => VCC,
	cin => \D2_in|LT_inst|LessThan0~59_cout\,
	cout => \D2_in|LT_inst|LessThan0~61_cout\);

-- Location: LCCOMB_X79_Y67_N30
\D2_in|LT_inst|LessThan0~62\ : cycloneiv_lcell_comb
-- Equation(s):
-- \D2_in|LT_inst|LessThan0~62_combout\ = (\A[31]~input_o\ & (\D2_in|LT_inst|LessThan0~61_cout\ & \B[31]~input_o\)) # (!\A[31]~input_o\ & ((\D2_in|LT_inst|LessThan0~61_cout\) # (\B[31]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010101010000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \A[31]~input_o\,
	datad => \B[31]~input_o\,
	cin => \D2_in|LT_inst|LessThan0~61_cout\,
	combout => \D2_in|LT_inst|LessThan0~62_combout\);

-- Location: LCCOMB_X76_Y69_N22
\D3_in|SLTU|Mux0~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \D3_in|SLTU|Mux0~0_combout\ = (!\B[31]~input_o\ & ((\A[31]~input_o\) # (\D2_in|LT_inst|LessThan0~62_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111000001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[31]~input_o\,
	datab => \D2_in|LT_inst|LessThan0~62_combout\,
	datac => \B[31]~input_o\,
	combout => \D3_in|SLTU|Mux0~0_combout\);

-- Location: LCCOMB_X76_Y67_N6
\D4_in|Xor1|S[0]~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \D4_in|Xor1|S[0]~0_combout\ = \B[0]~input_o\ $ (\A[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[0]~input_o\,
	datad => \A[0]~input_o\,
	combout => \D4_in|Xor1|S[0]~0_combout\);

-- Location: LCCOMB_X79_Y70_N28
\D4_in|Xor1|S[1]~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \D4_in|Xor1|S[1]~1_combout\ = \B[1]~input_o\ $ (\A[1]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B[1]~input_o\,
	datac => \A[1]~input_o\,
	combout => \D4_in|Xor1|S[1]~1_combout\);

-- Location: LCCOMB_X79_Y70_N6
\D4_in|Xor1|S[2]~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \D4_in|Xor1|S[2]~2_combout\ = \B[2]~input_o\ $ (\A[2]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[2]~input_o\,
	datac => \A[2]~input_o\,
	combout => \D4_in|Xor1|S[2]~2_combout\);

-- Location: LCCOMB_X71_Y87_N8
\D4_in|Xor1|S[3]~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \D4_in|Xor1|S[3]~3_combout\ = \B[3]~input_o\ $ (\A[3]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \B[3]~input_o\,
	datad => \A[3]~input_o\,
	combout => \D4_in|Xor1|S[3]~3_combout\);

-- Location: LCCOMB_X71_Y87_N2
\D4_in|Xor1|S[4]~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \D4_in|Xor1|S[4]~4_combout\ = \B[4]~input_o\ $ (\A[4]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B[4]~input_o\,
	datac => \A[4]~input_o\,
	combout => \D4_in|Xor1|S[4]~4_combout\);

-- Location: LCCOMB_X108_Y90_N0
\D4_in|Xor1|S[5]~5\ : cycloneiv_lcell_comb
-- Equation(s):
-- \D4_in|Xor1|S[5]~5_combout\ = \A[5]~input_o\ $ (\B[5]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \A[5]~input_o\,
	datac => \B[5]~input_o\,
	combout => \D4_in|Xor1|S[5]~5_combout\);

-- Location: LCCOMB_X108_Y90_N10
\D4_in|Xor1|S[6]~6\ : cycloneiv_lcell_comb
-- Equation(s):
-- \D4_in|Xor1|S[6]~6_combout\ = \B[6]~input_o\ $ (\A[6]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[6]~input_o\,
	datac => \A[6]~input_o\,
	combout => \D4_in|Xor1|S[6]~6_combout\);

-- Location: LCCOMB_X108_Y90_N4
\D4_in|Xor1|S[7]~7\ : cycloneiv_lcell_comb
-- Equation(s):
-- \D4_in|Xor1|S[7]~7_combout\ = \A[7]~input_o\ $ (\B[7]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \A[7]~input_o\,
	datad => \B[7]~input_o\,
	combout => \D4_in|Xor1|S[7]~7_combout\);

-- Location: LCCOMB_X116_Y81_N2
\D4_in|Xor1|S[8]~8\ : cycloneiv_lcell_comb
-- Equation(s):
-- \D4_in|Xor1|S[8]~8_combout\ = \B[8]~input_o\ $ (\A[8]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B[8]~input_o\,
	datac => \A[8]~input_o\,
	combout => \D4_in|Xor1|S[8]~8_combout\);

-- Location: LCCOMB_X79_Y70_N0
\D4_in|Xor1|S[9]~9\ : cycloneiv_lcell_comb
-- Equation(s):
-- \D4_in|Xor1|S[9]~9_combout\ = \A[9]~input_o\ $ (\B[9]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \A[9]~input_o\,
	datad => \B[9]~input_o\,
	combout => \D4_in|Xor1|S[9]~9_combout\);

-- Location: LCCOMB_X108_Y90_N30
\D4_in|Xor1|S[10]~10\ : cycloneiv_lcell_comb
-- Equation(s):
-- \D4_in|Xor1|S[10]~10_combout\ = \A[10]~input_o\ $ (\B[10]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \A[10]~input_o\,
	datad => \B[10]~input_o\,
	combout => \D4_in|Xor1|S[10]~10_combout\);

-- Location: LCCOMB_X116_Y26_N16
\D4_in|Xor1|S[11]~11\ : cycloneiv_lcell_comb
-- Equation(s):
-- \D4_in|Xor1|S[11]~11_combout\ = \B[11]~input_o\ $ (\A[11]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[11]~input_o\,
	datac => \A[11]~input_o\,
	combout => \D4_in|Xor1|S[11]~11_combout\);

-- Location: LCCOMB_X116_Y26_N2
\D4_in|Xor1|S[12]~12\ : cycloneiv_lcell_comb
-- Equation(s):
-- \D4_in|Xor1|S[12]~12_combout\ = \A[12]~input_o\ $ (\B[12]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \A[12]~input_o\,
	datac => \B[12]~input_o\,
	combout => \D4_in|Xor1|S[12]~12_combout\);

-- Location: LCCOMB_X116_Y26_N4
\D4_in|Xor1|S[13]~13\ : cycloneiv_lcell_comb
-- Equation(s):
-- \D4_in|Xor1|S[13]~13_combout\ = \A[13]~input_o\ $ (\B[13]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \A[13]~input_o\,
	datad => \B[13]~input_o\,
	combout => \D4_in|Xor1|S[13]~13_combout\);

-- Location: LCCOMB_X25_Y90_N16
\D4_in|Xor1|S[14]~14\ : cycloneiv_lcell_comb
-- Equation(s):
-- \D4_in|Xor1|S[14]~14_combout\ = \A[14]~input_o\ $ (\B[14]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \A[14]~input_o\,
	datad => \B[14]~input_o\,
	combout => \D4_in|Xor1|S[14]~14_combout\);

-- Location: LCCOMB_X25_Y90_N10
\D4_in|Xor1|S[15]~15\ : cycloneiv_lcell_comb
-- Equation(s):
-- \D4_in|Xor1|S[15]~15_combout\ = \B[15]~input_o\ $ (\A[15]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[15]~input_o\,
	datad => \A[15]~input_o\,
	combout => \D4_in|Xor1|S[15]~15_combout\);

-- Location: LCCOMB_X25_Y90_N12
\D4_in|Xor1|S[16]~16\ : cycloneiv_lcell_comb
-- Equation(s):
-- \D4_in|Xor1|S[16]~16_combout\ = \A[16]~input_o\ $ (\B[16]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \A[16]~input_o\,
	datac => \B[16]~input_o\,
	combout => \D4_in|Xor1|S[16]~16_combout\);

-- Location: LCCOMB_X116_Y60_N24
\D4_in|Xor1|S[17]~17\ : cycloneiv_lcell_comb
-- Equation(s):
-- \D4_in|Xor1|S[17]~17_combout\ = \B[17]~input_o\ $ (\A[17]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B[17]~input_o\,
	datad => \A[17]~input_o\,
	combout => \D4_in|Xor1|S[17]~17_combout\);

-- Location: LCCOMB_X116_Y60_N18
\D4_in|Xor1|S[18]~18\ : cycloneiv_lcell_comb
-- Equation(s):
-- \D4_in|Xor1|S[18]~18_combout\ = \B[18]~input_o\ $ (\A[18]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[18]~input_o\,
	datad => \A[18]~input_o\,
	combout => \D4_in|Xor1|S[18]~18_combout\);

-- Location: LCCOMB_X116_Y60_N12
\D4_in|Xor1|S[19]~19\ : cycloneiv_lcell_comb
-- Equation(s):
-- \D4_in|Xor1|S[19]~19_combout\ = \A[19]~input_o\ $ (\B[19]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \A[19]~input_o\,
	datad => \B[19]~input_o\,
	combout => \D4_in|Xor1|S[19]~19_combout\);

-- Location: LCCOMB_X116_Y43_N0
\D4_in|Xor1|S[20]~20\ : cycloneiv_lcell_comb
-- Equation(s):
-- \D4_in|Xor1|S[20]~20_combout\ = \A[20]~input_o\ $ (\B[20]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \A[20]~input_o\,
	datad => \B[20]~input_o\,
	combout => \D4_in|Xor1|S[20]~20_combout\);

-- Location: LCCOMB_X116_Y43_N2
\D4_in|Xor1|S[21]~21\ : cycloneiv_lcell_comb
-- Equation(s):
-- \D4_in|Xor1|S[21]~21_combout\ = \B[21]~input_o\ $ (\A[21]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B[21]~input_o\,
	datad => \A[21]~input_o\,
	combout => \D4_in|Xor1|S[21]~21_combout\);

-- Location: LCCOMB_X116_Y43_N28
\D4_in|Xor1|S[22]~22\ : cycloneiv_lcell_comb
-- Equation(s):
-- \D4_in|Xor1|S[22]~22_combout\ = \B[22]~input_o\ $ (\A[22]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \B[22]~input_o\,
	datad => \A[22]~input_o\,
	combout => \D4_in|Xor1|S[22]~22_combout\);

-- Location: LCCOMB_X116_Y10_N30
\D4_in|Xor1|S[23]~23\ : cycloneiv_lcell_comb
-- Equation(s):
-- \D4_in|Xor1|S[23]~23_combout\ = \B[23]~input_o\ $ (\A[23]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[23]~input_o\,
	datad => \A[23]~input_o\,
	combout => \D4_in|Xor1|S[23]~23_combout\);

-- Location: LCCOMB_X116_Y10_N24
\D4_in|Xor1|S[24]~24\ : cycloneiv_lcell_comb
-- Equation(s):
-- \D4_in|Xor1|S[24]~24_combout\ = \A[24]~input_o\ $ (\B[24]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[24]~input_o\,
	datac => \B[24]~input_o\,
	combout => \D4_in|Xor1|S[24]~24_combout\);

-- Location: LCCOMB_X77_Y67_N22
\D4_in|Xor1|S[25]~25\ : cycloneiv_lcell_comb
-- Equation(s):
-- \D4_in|Xor1|S[25]~25_combout\ = \A[25]~input_o\ $ (\B[25]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \A[25]~input_o\,
	datad => \B[25]~input_o\,
	combout => \D4_in|Xor1|S[25]~25_combout\);

-- Location: LCCOMB_X116_Y10_N2
\D4_in|Xor1|S[26]~26\ : cycloneiv_lcell_comb
-- Equation(s):
-- \D4_in|Xor1|S[26]~26_combout\ = \A[26]~input_o\ $ (\B[26]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \A[26]~input_o\,
	datad => \B[26]~input_o\,
	combout => \D4_in|Xor1|S[26]~26_combout\);

-- Location: LCCOMB_X116_Y43_N30
\D4_in|Xor1|S[27]~27\ : cycloneiv_lcell_comb
-- Equation(s):
-- \D4_in|Xor1|S[27]~27_combout\ = \B[27]~input_o\ $ (\A[27]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B[27]~input_o\,
	datac => \A[27]~input_o\,
	combout => \D4_in|Xor1|S[27]~27_combout\);

-- Location: LCCOMB_X116_Y60_N14
\D4_in|Xor1|S[28]~28\ : cycloneiv_lcell_comb
-- Equation(s):
-- \D4_in|Xor1|S[28]~28_combout\ = \A[28]~input_o\ $ (\B[28]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \A[28]~input_o\,
	datad => \B[28]~input_o\,
	combout => \D4_in|Xor1|S[28]~28_combout\);

-- Location: LCCOMB_X25_Y90_N6
\D4_in|Xor1|S[29]~29\ : cycloneiv_lcell_comb
-- Equation(s):
-- \D4_in|Xor1|S[29]~29_combout\ = \B[29]~input_o\ $ (\A[29]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B[29]~input_o\,
	datac => \A[29]~input_o\,
	combout => \D4_in|Xor1|S[29]~29_combout\);

-- Location: LCCOMB_X116_Y26_N22
\D4_in|Xor1|S[30]~30\ : cycloneiv_lcell_comb
-- Equation(s):
-- \D4_in|Xor1|S[30]~30_combout\ = \B[30]~input_o\ $ (\A[30]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \B[30]~input_o\,
	datad => \A[30]~input_o\,
	combout => \D4_in|Xor1|S[30]~30_combout\);

-- Location: LCCOMB_X76_Y69_N8
\D4_in|Xor1|S[31]~31\ : cycloneiv_lcell_comb
-- Equation(s):
-- \D4_in|Xor1|S[31]~31_combout\ = \A[31]~input_o\ $ (\B[31]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[31]~input_o\,
	datac => \B[31]~input_o\,
	combout => \D4_in|Xor1|S[31]~31_combout\);

-- Location: LCCOMB_X75_Y70_N16
\D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~31\ : cycloneiv_lcell_comb
-- Equation(s):
-- \D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~31_combout\ = (\B[0]~input_o\ & (\A[3]~input_o\)) # (!\B[0]~input_o\ & ((\A[2]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[3]~input_o\,
	datab => \B[0]~input_o\,
	datac => \A[2]~input_o\,
	combout => \D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~31_combout\);

-- Location: LCCOMB_X75_Y70_N10
\D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~32\ : cycloneiv_lcell_comb
-- Equation(s):
-- \D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~32_combout\ = (\D1_in|SLL|ShiftLeft0~92_combout\ & ((\D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~31_combout\) # ((\D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~15_combout\)))) # (!\D1_in|SLL|ShiftLeft0~92_combout\ & 
-- (((!\D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~15_combout\ & \A[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \D1_in|SLL|ShiftLeft0~92_combout\,
	datab => \D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~31_combout\,
	datac => \D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~15_combout\,
	datad => \A[0]~input_o\,
	combout => \D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~32_combout\);

-- Location: LCCOMB_X75_Y70_N22
\D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~34\ : cycloneiv_lcell_comb
-- Equation(s):
-- \D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~34_combout\ = (\B[0]~input_o\ & ((\A[5]~input_o\))) # (!\B[0]~input_o\ & (\A[4]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[4]~input_o\,
	datab => \B[0]~input_o\,
	datad => \A[5]~input_o\,
	combout => \D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~34_combout\);

-- Location: LCCOMB_X75_Y70_N12
\D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~33\ : cycloneiv_lcell_comb
-- Equation(s):
-- \D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~33_combout\ = (\B[1]~input_o\ & ((\B[0]~input_o\ & ((\A[7]~input_o\))) # (!\B[0]~input_o\ & (\A[6]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[6]~input_o\,
	datab => \B[0]~input_o\,
	datac => \A[7]~input_o\,
	datad => \B[1]~input_o\,
	combout => \D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~33_combout\);

-- Location: LCCOMB_X75_Y70_N24
\D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~35\ : cycloneiv_lcell_comb
-- Equation(s):
-- \D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~35_combout\ = (\D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~33_combout\) # ((\D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~34_combout\ & !\B[1]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~34_combout\,
	datab => \B[1]~input_o\,
	datad => \D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~33_combout\,
	combout => \D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~35_combout\);

-- Location: LCCOMB_X75_Y70_N2
\D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~36\ : cycloneiv_lcell_comb
-- Equation(s):
-- \D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~36_combout\ = (\D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~32_combout\ & ((\D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~35_combout\) # ((!\D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~15_combout\)))) # 
-- (!\D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~32_combout\ & (((\D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~15_combout\ & \A[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101010001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~32_combout\,
	datab => \D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~35_combout\,
	datac => \D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~15_combout\,
	datad => \A[1]~input_o\,
	combout => \D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~36_combout\);

-- Location: LCCOMB_X76_Y69_N26
\D5_in|Sel_SR|D5[0]~89\ : cycloneiv_lcell_comb
-- Equation(s):
-- \D5_in|Sel_SR|D5[0]~89_combout\ = (!\D1_in|SLL|ShiftLeft0~92_combout\ & (\funct7~input_o\ & (\A[31]~input_o\ & !\B[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \D1_in|SLL|ShiftLeft0~92_combout\,
	datab => \funct7~input_o\,
	datac => \A[31]~input_o\,
	datad => \B[0]~input_o\,
	combout => \D5_in|Sel_SR|D5[0]~89_combout\);

-- Location: LCCOMB_X71_Y66_N10
\D5_in|Sel_SR|D5[0]~90\ : cycloneiv_lcell_comb
-- Equation(s):
-- \D5_in|Sel_SR|D5[0]~90_combout\ = (!\B[3]~input_o\ & (!\B[4]~input_o\ & ((\D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~36_combout\) # (\D5_in|Sel_SR|D5[0]~89_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~36_combout\,
	datab => \D5_in|Sel_SR|D5[0]~89_combout\,
	datac => \B[3]~input_o\,
	datad => \B[4]~input_o\,
	combout => \D5_in|Sel_SR|D5[0]~90_combout\);

-- Location: LCCOMB_X75_Y67_N26
\D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~24\ : cycloneiv_lcell_comb
-- Equation(s):
-- \D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~24_combout\ = (\B[1]~input_o\ & ((\A[18]~input_o\))) # (!\B[1]~input_o\ & (\A[16]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B[1]~input_o\,
	datac => \A[16]~input_o\,
	datad => \A[18]~input_o\,
	combout => \D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~24_combout\);

-- Location: LCCOMB_X76_Y67_N0
\D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~23\ : cycloneiv_lcell_comb
-- Equation(s):
-- \D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~23_combout\ = (\B[1]~input_o\ & ((\A[19]~input_o\))) # (!\B[1]~input_o\ & (\A[17]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \A[17]~input_o\,
	datac => \B[1]~input_o\,
	datad => \A[19]~input_o\,
	combout => \D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~23_combout\);

-- Location: LCCOMB_X76_Y67_N26
\D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~25\ : cycloneiv_lcell_comb
-- Equation(s):
-- \D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~25_combout\ = (\B[0]~input_o\ & ((\D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~23_combout\))) # (!\B[0]~input_o\ & (\D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~24_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[0]~input_o\,
	datac => \D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~24_combout\,
	datad => \D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~23_combout\,
	combout => \D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~25_combout\);

-- Location: LCCOMB_X76_Y66_N22
\D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~26\ : cycloneiv_lcell_comb
-- Equation(s):
-- \D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~26_combout\ = (\B[1]~input_o\ & (\A[23]~input_o\)) # (!\B[1]~input_o\ & ((\A[21]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \A[23]~input_o\,
	datac => \B[1]~input_o\,
	datad => \A[21]~input_o\,
	combout => \D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~26_combout\);

-- Location: LCCOMB_X76_Y66_N24
\D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~27\ : cycloneiv_lcell_comb
-- Equation(s):
-- \D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~27_combout\ = (\B[1]~input_o\ & ((\A[22]~input_o\))) # (!\B[1]~input_o\ & (\A[20]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \A[20]~input_o\,
	datac => \B[1]~input_o\,
	datad => \A[22]~input_o\,
	combout => \D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~27_combout\);

-- Location: LCCOMB_X76_Y66_N2
\D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~28\ : cycloneiv_lcell_comb
-- Equation(s):
-- \D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~28_combout\ = (\B[0]~input_o\ & (\D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~26_combout\)) # (!\B[0]~input_o\ & ((\D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~27_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B[0]~input_o\,
	datac => \D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~26_combout\,
	datad => \D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~27_combout\,
	combout => \D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~28_combout\);

-- Location: LCCOMB_X71_Y66_N2
\D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~29\ : cycloneiv_lcell_comb
-- Equation(s):
-- \D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~29_combout\ = (\B[2]~input_o\ & ((!\D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~28_combout\))) # (!\B[2]~input_o\ & (!\D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~25_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~25_combout\,
	datac => \D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~28_combout\,
	datad => \B[2]~input_o\,
	combout => \D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~29_combout\);

-- Location: LCCOMB_X77_Y67_N18
\D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~20\ : cycloneiv_lcell_comb
-- Equation(s):
-- \D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~20_combout\ = (\B[1]~input_o\ & ((\A[26]~input_o\))) # (!\B[1]~input_o\ & (\A[24]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[1]~input_o\,
	datac => \A[24]~input_o\,
	datad => \A[26]~input_o\,
	combout => \D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~20_combout\);

-- Location: LCCOMB_X77_Y67_N0
\D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~19\ : cycloneiv_lcell_comb
-- Equation(s):
-- \D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~19_combout\ = (\B[1]~input_o\ & ((\A[27]~input_o\))) # (!\B[1]~input_o\ & (\A[25]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[1]~input_o\,
	datab => \A[25]~input_o\,
	datac => \A[27]~input_o\,
	combout => \D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~19_combout\);

-- Location: LCCOMB_X77_Y67_N4
\D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~21\ : cycloneiv_lcell_comb
-- Equation(s):
-- \D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~21_combout\ = (\B[0]~input_o\ & ((\D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~19_combout\))) # (!\B[0]~input_o\ & (\D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~20_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~20_combout\,
	datac => \B[0]~input_o\,
	datad => \D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~19_combout\,
	combout => \D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~21_combout\);

-- Location: LCCOMB_X76_Y68_N10
\D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~16\ : cycloneiv_lcell_comb
-- Equation(s):
-- \D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~16_combout\ = (!\B[1]~input_o\ & ((\B[0]~input_o\ & ((\A[29]~input_o\))) # (!\B[0]~input_o\ & (\A[28]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[0]~input_o\,
	datab => \A[28]~input_o\,
	datac => \B[1]~input_o\,
	datad => \A[29]~input_o\,
	combout => \D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~16_combout\);

-- Location: LCCOMB_X76_Y68_N20
\D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~17\ : cycloneiv_lcell_comb
-- Equation(s):
-- \D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~17_combout\ = (\B[0]~input_o\ & (\A[31]~input_o\)) # (!\B[0]~input_o\ & ((\A[30]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[0]~input_o\,
	datac => \A[31]~input_o\,
	datad => \A[30]~input_o\,
	combout => \D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~17_combout\);

-- Location: LCCOMB_X76_Y68_N14
\D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~18\ : cycloneiv_lcell_comb
-- Equation(s):
-- \D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~18_combout\ = (\D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~16_combout\) # ((\D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~17_combout\ & \B[1]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~16_combout\,
	datab => \D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~17_combout\,
	datac => \B[1]~input_o\,
	combout => \D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~18_combout\);

-- Location: LCCOMB_X71_Y66_N24
\D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~22\ : cycloneiv_lcell_comb
-- Equation(s):
-- \D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~22_combout\ = (\B[2]~input_o\ & ((\D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~18_combout\))) # (!\B[2]~input_o\ & (\D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~21_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~21_combout\,
	datac => \B[2]~input_o\,
	datad => \D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~18_combout\,
	combout => \D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~22_combout\);

-- Location: LCCOMB_X71_Y66_N20
\D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~30\ : cycloneiv_lcell_comb
-- Equation(s):
-- \D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~30_combout\ = (\B[4]~input_o\ & ((\B[3]~input_o\ & ((\D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~22_combout\))) # (!\B[3]~input_o\ & (!\D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~29_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[4]~input_o\,
	datab => \D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~29_combout\,
	datac => \B[3]~input_o\,
	datad => \D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~22_combout\,
	combout => \D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~30_combout\);

-- Location: LCCOMB_X72_Y67_N28
\D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~38\ : cycloneiv_lcell_comb
-- Equation(s):
-- \D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~38_combout\ = (\B[1]~input_o\ & ((\A[14]~input_o\))) # (!\B[1]~input_o\ & (\A[12]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[12]~input_o\,
	datab => \B[1]~input_o\,
	datac => \A[14]~input_o\,
	combout => \D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~38_combout\);

-- Location: LCCOMB_X72_Y67_N2
\D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~37\ : cycloneiv_lcell_comb
-- Equation(s):
-- \D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~37_combout\ = (\B[1]~input_o\ & (\A[15]~input_o\)) # (!\B[1]~input_o\ & ((\A[13]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \A[15]~input_o\,
	datac => \A[13]~input_o\,
	datad => \B[1]~input_o\,
	combout => \D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~37_combout\);

-- Location: LCCOMB_X72_Y67_N14
\D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~39\ : cycloneiv_lcell_comb
-- Equation(s):
-- \D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~39_combout\ = (\B[0]~input_o\ & ((\D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~37_combout\))) # (!\B[0]~input_o\ & (\D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~38_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~38_combout\,
	datac => \B[0]~input_o\,
	datad => \D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~37_combout\,
	combout => \D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~39_combout\);

-- Location: LCCOMB_X73_Y67_N30
\D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~41\ : cycloneiv_lcell_comb
-- Equation(s):
-- \D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~41_combout\ = (\B[1]~input_o\ & ((\A[10]~input_o\))) # (!\B[1]~input_o\ & (\A[8]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[8]~input_o\,
	datac => \A[10]~input_o\,
	datad => \B[1]~input_o\,
	combout => \D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~41_combout\);

-- Location: LCCOMB_X79_Y70_N18
\D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~40\ : cycloneiv_lcell_comb
-- Equation(s):
-- \D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~40_combout\ = (\B[1]~input_o\ & ((\A[11]~input_o\))) # (!\B[1]~input_o\ & (\A[9]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B[1]~input_o\,
	datac => \A[9]~input_o\,
	datad => \A[11]~input_o\,
	combout => \D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~40_combout\);

-- Location: LCCOMB_X75_Y67_N28
\D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~42\ : cycloneiv_lcell_comb
-- Equation(s):
-- \D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~42_combout\ = (\B[0]~input_o\ & ((\D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~40_combout\))) # (!\B[0]~input_o\ & (\D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~41_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[0]~input_o\,
	datac => \D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~41_combout\,
	datad => \D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~40_combout\,
	combout => \D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~42_combout\);

-- Location: LCCOMB_X71_Y66_N6
\D5_in|Sel_SR|D5[8]~30\ : cycloneiv_lcell_comb
-- Equation(s):
-- \D5_in|Sel_SR|D5[8]~30_combout\ = (\B[2]~input_o\ & (\D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~39_combout\)) # (!\B[2]~input_o\ & ((\D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~42_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~39_combout\,
	datac => \D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~42_combout\,
	datad => \B[2]~input_o\,
	combout => \D5_in|Sel_SR|D5[8]~30_combout\);

-- Location: LCCOMB_X71_Y66_N0
\D5_in|Sel_SR|D5[0]~31\ : cycloneiv_lcell_comb
-- Equation(s):
-- \D5_in|Sel_SR|D5[0]~31_combout\ = (\D5_in|Sel_SR|D5[0]~90_combout\) # ((\D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~30_combout\) # ((\D1_in|SLL|ShiftLeft0~113_combout\ & \D5_in|Sel_SR|D5[8]~30_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \D5_in|Sel_SR|D5[0]~90_combout\,
	datab => \D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~30_combout\,
	datac => \D1_in|SLL|ShiftLeft0~113_combout\,
	datad => \D5_in|Sel_SR|D5[8]~30_combout\,
	combout => \D5_in|Sel_SR|D5[0]~31_combout\);

-- Location: LCCOMB_X76_Y69_N28
\D5_in|Sel_SR|D5[1]~91\ : cycloneiv_lcell_comb
-- Equation(s):
-- \D5_in|Sel_SR|D5[1]~91_combout\ = (!\D1_in|SLL|ShiftLeft0~92_combout\ & (\funct7~input_o\ & (\A[31]~input_o\ & \B[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \D1_in|SLL|ShiftLeft0~92_combout\,
	datab => \funct7~input_o\,
	datac => \A[31]~input_o\,
	datad => \B[0]~input_o\,
	combout => \D5_in|Sel_SR|D5[1]~91_combout\);

-- Location: LCCOMB_X75_Y70_N20
\D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~54\ : cycloneiv_lcell_comb
-- Equation(s):
-- \D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~54_combout\ = (\B[0]~input_o\ & (\A[4]~input_o\)) # (!\B[0]~input_o\ & ((\A[3]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B[0]~input_o\,
	datac => \A[4]~input_o\,
	datad => \A[3]~input_o\,
	combout => \D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~54_combout\);

-- Location: LCCOMB_X75_Y70_N6
\D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~55\ : cycloneiv_lcell_comb
-- Equation(s):
-- \D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~55_combout\ = (\D1_in|SLL|ShiftLeft0~92_combout\ & ((\D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~54_combout\) # ((\D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~15_combout\)))) # (!\D1_in|SLL|ShiftLeft0~92_combout\ & 
-- (((!\D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~15_combout\ & \A[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \D1_in|SLL|ShiftLeft0~92_combout\,
	datab => \D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~54_combout\,
	datac => \D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~15_combout\,
	datad => \A[1]~input_o\,
	combout => \D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~55_combout\);

-- Location: LCCOMB_X75_Y70_N26
\D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~57\ : cycloneiv_lcell_comb
-- Equation(s):
-- \D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~57_combout\ = (\B[0]~input_o\ & (\A[6]~input_o\)) # (!\B[0]~input_o\ & ((\A[5]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[6]~input_o\,
	datab => \B[0]~input_o\,
	datad => \A[5]~input_o\,
	combout => \D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~57_combout\);

-- Location: LCCOMB_X75_Y70_N0
\D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~56\ : cycloneiv_lcell_comb
-- Equation(s):
-- \D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~56_combout\ = (\B[1]~input_o\ & ((\B[0]~input_o\ & (\A[8]~input_o\)) # (!\B[0]~input_o\ & ((\A[7]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[8]~input_o\,
	datab => \B[0]~input_o\,
	datac => \A[7]~input_o\,
	datad => \B[1]~input_o\,
	combout => \D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~56_combout\);

-- Location: LCCOMB_X75_Y70_N28
\D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~58\ : cycloneiv_lcell_comb
-- Equation(s):
-- \D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~58_combout\ = (\D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~56_combout\) # ((\D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~57_combout\ & !\B[1]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~57_combout\,
	datab => \B[1]~input_o\,
	datad => \D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~56_combout\,
	combout => \D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~58_combout\);

-- Location: LCCOMB_X75_Y70_N30
\D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~59\ : cycloneiv_lcell_comb
-- Equation(s):
-- \D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~59_combout\ = (\D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~55_combout\ & (((\D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~58_combout\)) # (!\D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~15_combout\))) # 
-- (!\D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~55_combout\ & (\D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~15_combout\ & (\A[2]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~55_combout\,
	datab => \D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~15_combout\,
	datac => \A[2]~input_o\,
	datad => \D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~58_combout\,
	combout => \D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~59_combout\);

-- Location: LCCOMB_X75_Y65_N22
\D5_in|Sel_SR|D5[1]~92\ : cycloneiv_lcell_comb
-- Equation(s):
-- \D5_in|Sel_SR|D5[1]~92_combout\ = (!\B[3]~input_o\ & (!\B[4]~input_o\ & ((\D5_in|Sel_SR|D5[1]~91_combout\) # (\D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~59_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[3]~input_o\,
	datab => \D5_in|Sel_SR|D5[1]~91_combout\,
	datac => \B[4]~input_o\,
	datad => \D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~59_combout\,
	combout => \D5_in|Sel_SR|D5[1]~92_combout\);

-- Location: LCCOMB_X76_Y69_N2
\D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~43\ : cycloneiv_lcell_comb
-- Equation(s):
-- \D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~43_combout\ = (!\B[0]~input_o\ & ((\B[1]~input_o\ & (\A[31]~input_o\)) # (!\B[1]~input_o\ & ((\A[29]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[31]~input_o\,
	datab => \A[29]~input_o\,
	datac => \B[1]~input_o\,
	datad => \B[0]~input_o\,
	combout => \D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~43_combout\);

-- Location: LCCOMB_X75_Y69_N10
\D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~44\ : cycloneiv_lcell_comb
-- Equation(s):
-- \D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~44_combout\ = (\D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~43_combout\) # ((\B[0]~input_o\ & (\A[30]~input_o\ & !\B[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~43_combout\,
	datab => \B[0]~input_o\,
	datac => \A[30]~input_o\,
	datad => \B[1]~input_o\,
	combout => \D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~44_combout\);

-- Location: LCCOMB_X76_Y68_N0
\D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~45\ : cycloneiv_lcell_comb
-- Equation(s):
-- \D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~45_combout\ = (\B[1]~input_o\ & ((\A[28]~input_o\))) # (!\B[1]~input_o\ & (\A[26]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \A[26]~input_o\,
	datac => \B[1]~input_o\,
	datad => \A[28]~input_o\,
	combout => \D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~45_combout\);

-- Location: LCCOMB_X76_Y68_N2
\D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~46\ : cycloneiv_lcell_comb
-- Equation(s):
-- \D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~46_combout\ = (\B[0]~input_o\ & ((\D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~45_combout\))) # (!\B[0]~input_o\ & (\D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~19_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[0]~input_o\,
	datac => \D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~19_combout\,
	datad => \D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~45_combout\,
	combout => \D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~46_combout\);

-- Location: LCCOMB_X75_Y69_N28
\D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~47\ : cycloneiv_lcell_comb
-- Equation(s):
-- \D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~47_combout\ = (\B[2]~input_o\ & (\D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~44_combout\)) # (!\B[2]~input_o\ & ((\D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~46_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~44_combout\,
	datac => \B[2]~input_o\,
	datad => \D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~46_combout\,
	combout => \D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~47_combout\);

-- Location: LCCOMB_X76_Y67_N4
\D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~48\ : cycloneiv_lcell_comb
-- Equation(s):
-- \D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~48_combout\ = (\B[1]~input_o\ & ((\A[20]~input_o\))) # (!\B[1]~input_o\ & (\A[18]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[1]~input_o\,
	datab => \A[18]~input_o\,
	datac => \A[20]~input_o\,
	combout => \D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~48_combout\);

-- Location: LCCOMB_X76_Y67_N22
\D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~49\ : cycloneiv_lcell_comb
-- Equation(s):
-- \D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~49_combout\ = (\B[0]~input_o\ & (\D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~48_combout\)) # (!\B[0]~input_o\ & ((\D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~23_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[0]~input_o\,
	datac => \D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~48_combout\,
	datad => \D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~23_combout\,
	combout => \D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~49_combout\);

-- Location: LCCOMB_X76_Y66_N28
\D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~50\ : cycloneiv_lcell_comb
-- Equation(s):
-- \D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~50_combout\ = (\B[1]~input_o\ & (\A[24]~input_o\)) # (!\B[1]~input_o\ & ((\A[22]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[24]~input_o\,
	datac => \B[1]~input_o\,
	datad => \A[22]~input_o\,
	combout => \D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~50_combout\);

-- Location: LCCOMB_X76_Y66_N6
\D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~51\ : cycloneiv_lcell_comb
-- Equation(s):
-- \D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~51_combout\ = (\B[0]~input_o\ & ((\D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~50_combout\))) # (!\B[0]~input_o\ & (\D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~26_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B[0]~input_o\,
	datac => \D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~26_combout\,
	datad => \D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~50_combout\,
	combout => \D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~51_combout\);

-- Location: LCCOMB_X75_Y65_N30
\D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~52\ : cycloneiv_lcell_comb
-- Equation(s):
-- \D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~52_combout\ = (\B[2]~input_o\ & ((!\D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~51_combout\))) # (!\B[2]~input_o\ & (!\D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~49_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~49_combout\,
	datac => \D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~51_combout\,
	datad => \B[2]~input_o\,
	combout => \D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~52_combout\);

-- Location: LCCOMB_X75_Y65_N0
\D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~53\ : cycloneiv_lcell_comb
-- Equation(s):
-- \D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~53_combout\ = (\B[4]~input_o\ & ((\B[3]~input_o\ & (\D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~47_combout\)) # (!\B[3]~input_o\ & ((!\D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~52_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[3]~input_o\,
	datab => \D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~47_combout\,
	datac => \D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~52_combout\,
	datad => \B[4]~input_o\,
	combout => \D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~53_combout\);

-- Location: LCCOMB_X75_Y67_N14
\D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~60\ : cycloneiv_lcell_comb
-- Equation(s):
-- \D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~60_combout\ = (\B[1]~input_o\ & ((\A[16]~input_o\))) # (!\B[1]~input_o\ & (\A[14]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[14]~input_o\,
	datac => \A[16]~input_o\,
	datad => \B[1]~input_o\,
	combout => \D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~60_combout\);

-- Location: LCCOMB_X72_Y67_N24
\D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~61\ : cycloneiv_lcell_comb
-- Equation(s):
-- \D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~61_combout\ = (\B[0]~input_o\ & ((\D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~60_combout\))) # (!\B[0]~input_o\ & (\D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~37_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~37_combout\,
	datac => \B[0]~input_o\,
	datad => \D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~60_combout\,
	combout => \D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~61_combout\);

-- Location: LCCOMB_X75_Y67_N8
\D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~62\ : cycloneiv_lcell_comb
-- Equation(s):
-- \D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~62_combout\ = (\B[1]~input_o\ & (\A[12]~input_o\)) # (!\B[1]~input_o\ & ((\A[10]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[12]~input_o\,
	datab => \B[1]~input_o\,
	datad => \A[10]~input_o\,
	combout => \D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~62_combout\);

-- Location: LCCOMB_X75_Y67_N10
\D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~63\ : cycloneiv_lcell_comb
-- Equation(s):
-- \D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~63_combout\ = (\B[0]~input_o\ & (\D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~62_combout\)) # (!\B[0]~input_o\ & ((\D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~40_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[0]~input_o\,
	datac => \D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~62_combout\,
	datad => \D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~40_combout\,
	combout => \D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~63_combout\);

-- Location: LCCOMB_X75_Y65_N2
\D5_in|Sel_SR|D5[9]~32\ : cycloneiv_lcell_comb
-- Equation(s):
-- \D5_in|Sel_SR|D5[9]~32_combout\ = (\B[2]~input_o\ & (\D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~61_combout\)) # (!\B[2]~input_o\ & ((\D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~63_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~61_combout\,
	datab => \D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~63_combout\,
	datad => \B[2]~input_o\,
	combout => \D5_in|Sel_SR|D5[9]~32_combout\);

-- Location: LCCOMB_X75_Y65_N28
\D5_in|Sel_SR|D5[1]~33\ : cycloneiv_lcell_comb
-- Equation(s):
-- \D5_in|Sel_SR|D5[1]~33_combout\ = (\D5_in|Sel_SR|D5[1]~92_combout\) # ((\D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~53_combout\) # ((\D1_in|SLL|ShiftLeft0~113_combout\ & \D5_in|Sel_SR|D5[9]~32_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \D5_in|Sel_SR|D5[1]~92_combout\,
	datab => \D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~53_combout\,
	datac => \D1_in|SLL|ShiftLeft0~113_combout\,
	datad => \D5_in|Sel_SR|D5[9]~32_combout\,
	combout => \D5_in|Sel_SR|D5[1]~33_combout\);

-- Location: LCCOMB_X72_Y70_N18
\D5_in|Sel_SR|D5[4]~34\ : cycloneiv_lcell_comb
-- Equation(s):
-- \D5_in|Sel_SR|D5[4]~34_combout\ = (\funct7~input_o\ & (!\B[3]~input_o\ & (!\B[4]~input_o\ & \A[31]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \funct7~input_o\,
	datab => \B[3]~input_o\,
	datac => \B[4]~input_o\,
	datad => \A[31]~input_o\,
	combout => \D5_in|Sel_SR|D5[4]~34_combout\);

-- Location: LCCOMB_X72_Y70_N12
\D5_in|Sel_SR|D5[2]~35\ : cycloneiv_lcell_comb
-- Equation(s):
-- \D5_in|Sel_SR|D5[2]~35_combout\ = (\D5_in|Sel_SR|D5[4]~34_combout\ & (!\B[0]~input_o\ & (!\B[2]~input_o\ & \B[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \D5_in|Sel_SR|D5[4]~34_combout\,
	datab => \B[0]~input_o\,
	datac => \B[2]~input_o\,
	datad => \B[1]~input_o\,
	combout => \D5_in|Sel_SR|D5[2]~35_combout\);

-- Location: LCCOMB_X76_Y66_N8
\D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~64\ : cycloneiv_lcell_comb
-- Equation(s):
-- \D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~64_combout\ = (\B[1]~input_o\ & (\A[25]~input_o\)) # (!\B[1]~input_o\ & ((\A[23]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[25]~input_o\,
	datac => \B[1]~input_o\,
	datad => \A[23]~input_o\,
	combout => \D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~64_combout\);

-- Location: LCCOMB_X76_Y66_N18
\D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~65\ : cycloneiv_lcell_comb
-- Equation(s):
-- \D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~65_combout\ = (\B[0]~input_o\ & (\D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~64_combout\)) # (!\B[0]~input_o\ & ((\D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~50_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B[0]~input_o\,
	datac => \D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~64_combout\,
	datad => \D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~50_combout\,
	combout => \D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~65_combout\);

-- Location: LCCOMB_X76_Y67_N24
\D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~66\ : cycloneiv_lcell_comb
-- Equation(s):
-- \D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~66_combout\ = (\B[1]~input_o\ & (\A[21]~input_o\)) # (!\B[1]~input_o\ & ((\A[19]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[21]~input_o\,
	datac => \B[1]~input_o\,
	datad => \A[19]~input_o\,
	combout => \D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~66_combout\);

-- Location: LCCOMB_X76_Y67_N2
\D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~67\ : cycloneiv_lcell_comb
-- Equation(s):
-- \D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~67_combout\ = (\B[0]~input_o\ & ((\D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~66_combout\))) # (!\B[0]~input_o\ & (\D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~48_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[0]~input_o\,
	datac => \D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~48_combout\,
	datad => \D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~66_combout\,
	combout => \D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~67_combout\);

-- Location: LCCOMB_X75_Y68_N24
\D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~68\ : cycloneiv_lcell_comb
-- Equation(s):
-- \D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~68_combout\ = (!\B[3]~input_o\ & ((\B[2]~input_o\ & (\D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~65_combout\)) # (!\B[2]~input_o\ & ((\D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~67_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[3]~input_o\,
	datab => \D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~65_combout\,
	datac => \B[2]~input_o\,
	datad => \D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~67_combout\,
	combout => \D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~68_combout\);

-- Location: LCCOMB_X76_Y68_N28
\D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~69\ : cycloneiv_lcell_comb
-- Equation(s):
-- \D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~69_combout\ = (\B[1]~input_o\ & (\A[29]~input_o\)) # (!\B[1]~input_o\ & ((\A[27]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[29]~input_o\,
	datab => \B[1]~input_o\,
	datad => \A[27]~input_o\,
	combout => \D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~69_combout\);

-- Location: LCCOMB_X76_Y68_N22
\D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~70\ : cycloneiv_lcell_comb
-- Equation(s):
-- \D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~70_combout\ = (\B[0]~input_o\ & (\D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~69_combout\)) # (!\B[0]~input_o\ & ((\D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~45_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[0]~input_o\,
	datab => \D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~69_combout\,
	datad => \D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~45_combout\,
	combout => \D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~70_combout\);

-- Location: LCCOMB_X76_Y68_N24
\D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~71\ : cycloneiv_lcell_comb
-- Equation(s):
-- \D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~71_combout\ = (\B[2]~input_o\ & (((\D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~17_combout\ & !\B[1]~input_o\)))) # (!\B[2]~input_o\ & (\D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~70_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~70_combout\,
	datab => \D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~17_combout\,
	datac => \B[1]~input_o\,
	datad => \B[2]~input_o\,
	combout => \D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~71_combout\);

-- Location: LCCOMB_X75_Y68_N2
\D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~72\ : cycloneiv_lcell_comb
-- Equation(s):
-- \D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~72_combout\ = (\D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~68_combout\) # ((\B[3]~input_o\ & \D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~71_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~68_combout\,
	datac => \B[3]~input_o\,
	datad => \D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~71_combout\,
	combout => \D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~72_combout\);

-- Location: LCCOMB_X73_Y67_N24
\D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~73\ : cycloneiv_lcell_comb
-- Equation(s):
-- \D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~73_combout\ = (!\B[0]~input_o\ & ((\B[1]~input_o\ & ((\A[8]~input_o\))) # (!\B[1]~input_o\ & (\A[6]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[6]~input_o\,
	datab => \B[0]~input_o\,
	datac => \A[8]~input_o\,
	datad => \B[1]~input_o\,
	combout => \D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~73_combout\);

-- Location: LCCOMB_X73_Y67_N18
\D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~74\ : cycloneiv_lcell_comb
-- Equation(s):
-- \D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~74_combout\ = (\B[1]~input_o\ & ((\A[9]~input_o\))) # (!\B[1]~input_o\ & (\A[7]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[7]~input_o\,
	datab => \B[1]~input_o\,
	datad => \A[9]~input_o\,
	combout => \D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~74_combout\);

-- Location: LCCOMB_X73_Y67_N12
\D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~75\ : cycloneiv_lcell_comb
-- Equation(s):
-- \D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~75_combout\ = (\D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~73_combout\) # ((\B[0]~input_o\ & \D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~74_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[0]~input_o\,
	datab => \D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~73_combout\,
	datad => \D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~74_combout\,
	combout => \D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~75_combout\);

-- Location: LCCOMB_X75_Y70_N8
\D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~76\ : cycloneiv_lcell_comb
-- Equation(s):
-- \D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~76_combout\ = (\D1_in|SLL|ShiftLeft0~47_combout\ & (((!\D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~14_combout\ & \D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~31_combout\)))) # (!\D1_in|SLL|ShiftLeft0~47_combout\ & 
-- ((\D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~75_combout\) # ((\D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111001010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \D1_in|SLL|ShiftLeft0~47_combout\,
	datab => \D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~75_combout\,
	datac => \D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~14_combout\,
	datad => \D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~31_combout\,
	combout => \D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~76_combout\);

-- Location: LCCOMB_X72_Y67_N26
\D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~79\ : cycloneiv_lcell_comb
-- Equation(s):
-- \D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~79_combout\ = (\B[1]~input_o\ & ((\A[13]~input_o\))) # (!\B[1]~input_o\ & (\A[11]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[11]~input_o\,
	datab => \B[1]~input_o\,
	datac => \A[13]~input_o\,
	combout => \D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~79_combout\);

-- Location: LCCOMB_X75_Y67_N16
\D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~80\ : cycloneiv_lcell_comb
-- Equation(s):
-- \D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~80_combout\ = (\B[0]~input_o\ & (\D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~79_combout\)) # (!\B[0]~input_o\ & ((\D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~62_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~79_combout\,
	datac => \D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~62_combout\,
	datad => \B[0]~input_o\,
	combout => \D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~80_combout\);

-- Location: LCCOMB_X75_Y67_N4
\D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~77\ : cycloneiv_lcell_comb
-- Equation(s):
-- \D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~77_combout\ = (\B[1]~input_o\ & ((\A[17]~input_o\))) # (!\B[1]~input_o\ & (\A[15]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B[1]~input_o\,
	datac => \A[15]~input_o\,
	datad => \A[17]~input_o\,
	combout => \D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~77_combout\);

-- Location: LCCOMB_X75_Y67_N30
\D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~78\ : cycloneiv_lcell_comb
-- Equation(s):
-- \D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~78_combout\ = (\B[0]~input_o\ & (\D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~77_combout\)) # (!\B[0]~input_o\ & ((\D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~60_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~77_combout\,
	datac => \D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~60_combout\,
	datad => \B[0]~input_o\,
	combout => \D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~78_combout\);

-- Location: LCCOMB_X75_Y67_N2
\D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~81\ : cycloneiv_lcell_comb
-- Equation(s):
-- \D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~81_combout\ = (\B[2]~input_o\ & ((\D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~78_combout\))) # (!\B[2]~input_o\ & (\D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~80_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~80_combout\,
	datac => \D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~78_combout\,
	datad => \B[2]~input_o\,
	combout => \D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~81_combout\);

-- Location: LCCOMB_X75_Y70_N18
\D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~82\ : cycloneiv_lcell_comb
-- Equation(s):
-- \D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~82_combout\ = (\D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~76_combout\ & (((\D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~81_combout\) # (!\D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~14_combout\)))) # 
-- (!\D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~76_combout\ & (\D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~34_combout\ & (\D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~14_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110000101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~34_combout\,
	datab => \D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~76_combout\,
	datac => \D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~14_combout\,
	datad => \D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~81_combout\,
	combout => \D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~82_combout\);

-- Location: LCCOMB_X75_Y68_N4
\D5_in|Sel_SR|D5[2]~36\ : cycloneiv_lcell_comb
-- Equation(s):
-- \D5_in|Sel_SR|D5[2]~36_combout\ = (\D5_in|Sel_SR|D5[2]~35_combout\) # ((\B[4]~input_o\ & (\D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~72_combout\)) # (!\B[4]~input_o\ & ((\D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~82_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \D5_in|Sel_SR|D5[2]~35_combout\,
	datab => \D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~72_combout\,
	datac => \D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~82_combout\,
	datad => \B[4]~input_o\,
	combout => \D5_in|Sel_SR|D5[2]~36_combout\);

-- Location: LCCOMB_X72_Y70_N30
\D5_in|Sel_SR|D5[3]~37\ : cycloneiv_lcell_comb
-- Equation(s):
-- \D5_in|Sel_SR|D5[3]~37_combout\ = (\D5_in|Sel_SR|D5[4]~34_combout\ & (\B[0]~input_o\ & (!\B[2]~input_o\ & \B[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \D5_in|Sel_SR|D5[4]~34_combout\,
	datab => \B[0]~input_o\,
	datac => \B[2]~input_o\,
	datad => \B[1]~input_o\,
	combout => \D5_in|Sel_SR|D5[3]~37_combout\);

-- Location: LCCOMB_X73_Y67_N6
\D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~91\ : cycloneiv_lcell_comb
-- Equation(s):
-- \D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~91_combout\ = (\B[0]~input_o\ & (\D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~41_combout\)) # (!\B[0]~input_o\ & ((\D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~74_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~41_combout\,
	datab => \D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~74_combout\,
	datad => \B[0]~input_o\,
	combout => \D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~91_combout\);

-- Location: LCCOMB_X75_Y70_N4
\D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~92\ : cycloneiv_lcell_comb
-- Equation(s):
-- \D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~92_combout\ = (\D1_in|SLL|ShiftLeft0~47_combout\ & (\D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~54_combout\ & (!\D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~14_combout\))) # (!\D1_in|SLL|ShiftLeft0~47_combout\ & 
-- (((\D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~14_combout\) # (\D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~91_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101110101011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \D1_in|SLL|ShiftLeft0~47_combout\,
	datab => \D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~54_combout\,
	datac => \D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~14_combout\,
	datad => \D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~91_combout\,
	combout => \D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~92_combout\);

-- Location: LCCOMB_X72_Y67_N20
\D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~94\ : cycloneiv_lcell_comb
-- Equation(s):
-- \D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~94_combout\ = (\B[0]~input_o\ & ((\D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~38_combout\))) # (!\B[0]~input_o\ & (\D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~79_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~79_combout\,
	datab => \D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~38_combout\,
	datac => \B[0]~input_o\,
	combout => \D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~94_combout\);

-- Location: LCCOMB_X75_Y67_N20
\D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~93\ : cycloneiv_lcell_comb
-- Equation(s):
-- \D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~93_combout\ = (\B[0]~input_o\ & ((\D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~24_combout\))) # (!\B[0]~input_o\ & (\D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~77_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~77_combout\,
	datac => \D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~24_combout\,
	datad => \B[0]~input_o\,
	combout => \D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~93_combout\);

-- Location: LCCOMB_X75_Y66_N20
\D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~95\ : cycloneiv_lcell_comb
-- Equation(s):
-- \D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~95_combout\ = (\B[2]~input_o\ & ((\D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~93_combout\))) # (!\B[2]~input_o\ & (\D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~94_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~94_combout\,
	datac => \B[2]~input_o\,
	datad => \D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~93_combout\,
	combout => \D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~95_combout\);

-- Location: LCCOMB_X75_Y70_N14
\D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~96\ : cycloneiv_lcell_comb
-- Equation(s):
-- \D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~96_combout\ = (\D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~14_combout\ & ((\D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~92_combout\ & ((\D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~95_combout\))) # 
-- (!\D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~92_combout\ & (\D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~57_combout\)))) # (!\D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~14_combout\ & (\D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~92_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110001100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~14_combout\,
	datab => \D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~92_combout\,
	datac => \D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~57_combout\,
	datad => \D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~95_combout\,
	combout => \D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~96_combout\);

-- Location: LCCOMB_X76_Y68_N18
\D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~87\ : cycloneiv_lcell_comb
-- Equation(s):
-- \D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~87_combout\ = (\B[0]~input_o\ & ((\B[1]~input_o\ & ((\A[30]~input_o\))) # (!\B[1]~input_o\ & (\A[28]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[0]~input_o\,
	datab => \A[28]~input_o\,
	datac => \B[1]~input_o\,
	datad => \A[30]~input_o\,
	combout => \D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~87_combout\);

-- Location: LCCOMB_X76_Y68_N4
\D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~88\ : cycloneiv_lcell_comb
-- Equation(s):
-- \D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~88_combout\ = (\D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~87_combout\) # ((!\B[0]~input_o\ & \D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~69_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[0]~input_o\,
	datab => \D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~69_combout\,
	datad => \D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~87_combout\,
	combout => \D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~88_combout\);

-- Location: LCCOMB_X72_Y70_N24
\D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~86\ : cycloneiv_lcell_comb
-- Equation(s):
-- \D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~86_combout\ = (!\B[0]~input_o\ & !\B[1]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \B[0]~input_o\,
	datad => \B[1]~input_o\,
	combout => \D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~86_combout\);

-- Location: LCCOMB_X72_Y70_N2
\D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~89\ : cycloneiv_lcell_comb
-- Equation(s):
-- \D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~89_combout\ = (\B[2]~input_o\ & (((\D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~86_combout\ & \A[31]~input_o\)))) # (!\B[2]~input_o\ & (\D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~88_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~88_combout\,
	datab => \D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~86_combout\,
	datac => \B[2]~input_o\,
	datad => \A[31]~input_o\,
	combout => \D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~89_combout\);

-- Location: LCCOMB_X76_Y66_N30
\D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~84\ : cycloneiv_lcell_comb
-- Equation(s):
-- \D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~84_combout\ = (\B[0]~input_o\ & ((\D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~27_combout\))) # (!\B[0]~input_o\ & (\D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~66_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B[0]~input_o\,
	datac => \D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~66_combout\,
	datad => \D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~27_combout\,
	combout => \D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~84_combout\);

-- Location: LCCOMB_X76_Y66_N4
\D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~83\ : cycloneiv_lcell_comb
-- Equation(s):
-- \D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~83_combout\ = (\B[0]~input_o\ & ((\D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~20_combout\))) # (!\B[0]~input_o\ & (\D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~64_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B[0]~input_o\,
	datac => \D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~64_combout\,
	datad => \D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~20_combout\,
	combout => \D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~83_combout\);

-- Location: LCCOMB_X75_Y66_N24
\D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~85\ : cycloneiv_lcell_comb
-- Equation(s):
-- \D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~85_combout\ = (!\B[3]~input_o\ & ((\B[2]~input_o\ & ((\D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~83_combout\))) # (!\B[2]~input_o\ & (\D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~84_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[2]~input_o\,
	datab => \B[3]~input_o\,
	datac => \D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~84_combout\,
	datad => \D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~83_combout\,
	combout => \D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~85_combout\);

-- Location: LCCOMB_X75_Y66_N10
\D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~90\ : cycloneiv_lcell_comb
-- Equation(s):
-- \D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~90_combout\ = (\D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~85_combout\) # ((\D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~89_combout\ & \B[3]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~89_combout\,
	datac => \B[3]~input_o\,
	datad => \D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~85_combout\,
	combout => \D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~90_combout\);

-- Location: LCCOMB_X72_Y70_N20
\D5_in|Sel_SR|D5[3]~38\ : cycloneiv_lcell_comb
-- Equation(s):
-- \D5_in|Sel_SR|D5[3]~38_combout\ = (\D5_in|Sel_SR|D5[3]~37_combout\) # ((\B[4]~input_o\ & ((\D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~90_combout\))) # (!\B[4]~input_o\ & (\D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~96_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111010101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \D5_in|Sel_SR|D5[3]~37_combout\,
	datab => \D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~96_combout\,
	datac => \B[4]~input_o\,
	datad => \D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~90_combout\,
	combout => \D5_in|Sel_SR|D5[3]~38_combout\);

-- Location: LCCOMB_X71_Y66_N26
\D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~97\ : cycloneiv_lcell_comb
-- Equation(s):
-- \D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~97_combout\ = (\B[2]~input_o\ & ((\D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~25_combout\))) # (!\B[2]~input_o\ & (\D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~39_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~39_combout\,
	datac => \D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~25_combout\,
	datad => \B[2]~input_o\,
	combout => \D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~97_combout\);

-- Location: LCCOMB_X71_Y66_N28
\D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~98\ : cycloneiv_lcell_comb
-- Equation(s):
-- \D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~98_combout\ = (\D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~13_combout\ & (!\D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~11_combout\)) # (!\D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~13_combout\ & 
-- ((\D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~11_combout\ & ((\D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~35_combout\))) # (!\D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~11_combout\ & (\D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~97_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011000110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~13_combout\,
	datab => \D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~11_combout\,
	datac => \D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~97_combout\,
	datad => \D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~35_combout\,
	combout => \D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~98_combout\);

-- Location: LCCOMB_X71_Y66_N30
\D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~99\ : cycloneiv_lcell_comb
-- Equation(s):
-- \D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~99_combout\ = (\D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~28_combout\ & ((\D1_in|SLL|ShiftLeft0~47_combout\) # ((\D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~12_combout\ & 
-- \D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~21_combout\)))) # (!\D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~28_combout\ & (((\D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~12_combout\ & \D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~21_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~28_combout\,
	datab => \D1_in|SLL|ShiftLeft0~47_combout\,
	datac => \D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~12_combout\,
	datad => \D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~21_combout\,
	combout => \D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~99_combout\);

-- Location: LCCOMB_X71_Y66_N12
\D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~117\ : cycloneiv_lcell_comb
-- Equation(s):
-- \D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~117_combout\ = (\D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~99_combout\) # ((\D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~18_combout\ & (\B[3]~input_o\ & !\B[2]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~99_combout\,
	datab => \D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~18_combout\,
	datac => \B[3]~input_o\,
	datad => \B[2]~input_o\,
	combout => \D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~117_combout\);

-- Location: LCCOMB_X71_Y66_N16
\D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~100\ : cycloneiv_lcell_comb
-- Equation(s):
-- \D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~100_combout\ = (\D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~13_combout\ & ((\D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~98_combout\ & ((\D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~117_combout\))) # 
-- (!\D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~98_combout\ & (\D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~42_combout\)))) # (!\D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~13_combout\ & (\D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~98_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110001100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~13_combout\,
	datab => \D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~98_combout\,
	datac => \D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~42_combout\,
	datad => \D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~117_combout\,
	combout => \D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~100_combout\);

-- Location: LCCOMB_X72_Y70_N22
\D5_in|Sel_SR|D5[4]~39\ : cycloneiv_lcell_comb
-- Equation(s):
-- \D5_in|Sel_SR|D5[4]~39_combout\ = (\D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~100_combout\) # ((\D5_in|Sel_SR|D5[4]~34_combout\ & (\B[2]~input_o\ & \D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~86_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~100_combout\,
	datab => \D5_in|Sel_SR|D5[4]~34_combout\,
	datac => \B[2]~input_o\,
	datad => \D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~86_combout\,
	combout => \D5_in|Sel_SR|D5[4]~39_combout\);

-- Location: LCCOMB_X75_Y69_N2
\D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~103\ : cycloneiv_lcell_comb
-- Equation(s):
-- \D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~103_combout\ = (\D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~12_combout\ & ((\D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~46_combout\) # ((\D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~51_combout\ & 
-- \D1_in|SLL|ShiftLeft0~47_combout\)))) # (!\D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~12_combout\ & (\D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~51_combout\ & (\D1_in|SLL|ShiftLeft0~47_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~12_combout\,
	datab => \D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~51_combout\,
	datac => \D1_in|SLL|ShiftLeft0~47_combout\,
	datad => \D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~46_combout\,
	combout => \D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~103_combout\);

-- Location: LCCOMB_X75_Y69_N4
\D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~118\ : cycloneiv_lcell_comb
-- Equation(s):
-- \D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~118_combout\ = (\D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~103_combout\) # ((\D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~44_combout\ & (!\B[2]~input_o\ & \B[3]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~44_combout\,
	datab => \D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~103_combout\,
	datac => \B[2]~input_o\,
	datad => \B[3]~input_o\,
	combout => \D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~118_combout\);

-- Location: LCCOMB_X75_Y69_N6
\D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~101\ : cycloneiv_lcell_comb
-- Equation(s):
-- \D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~101_combout\ = (\B[2]~input_o\ & ((\D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~49_combout\))) # (!\B[2]~input_o\ & (\D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~61_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~61_combout\,
	datab => \D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~49_combout\,
	datac => \B[2]~input_o\,
	combout => \D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~101_combout\);

-- Location: LCCOMB_X75_Y69_N16
\D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~102\ : cycloneiv_lcell_comb
-- Equation(s):
-- \D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~102_combout\ = (\D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~13_combout\ & (((!\D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~11_combout\)))) # (!\D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~13_combout\ & 
-- ((\D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~11_combout\ & ((\D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~58_combout\))) # (!\D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~11_combout\ & (\D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~101_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~101_combout\,
	datab => \D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~13_combout\,
	datac => \D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~58_combout\,
	datad => \D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~11_combout\,
	combout => \D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~102_combout\);

-- Location: LCCOMB_X75_Y69_N20
\D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~104\ : cycloneiv_lcell_comb
-- Equation(s):
-- \D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~104_combout\ = (\D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~13_combout\ & ((\D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~102_combout\ & ((\D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~118_combout\))) # 
-- (!\D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~102_combout\ & (\D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~63_combout\)))) # (!\D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~13_combout\ & (((\D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~102_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~13_combout\,
	datab => \D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~63_combout\,
	datac => \D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~118_combout\,
	datad => \D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~102_combout\,
	combout => \D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~104_combout\);

-- Location: LCCOMB_X72_Y70_N0
\D5_in|Sel_SR|D5[5]~40\ : cycloneiv_lcell_comb
-- Equation(s):
-- \D5_in|Sel_SR|D5[5]~40_combout\ = (\D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~104_combout\) # ((\D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~10_combout\ & (\B[2]~input_o\ & \D5_in|Sel_SR|D5[4]~34_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~104_combout\,
	datab => \D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~10_combout\,
	datac => \B[2]~input_o\,
	datad => \D5_in|Sel_SR|D5[4]~34_combout\,
	combout => \D5_in|Sel_SR|D5[5]~40_combout\);

-- Location: LCCOMB_X75_Y68_N8
\D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~107\ : cycloneiv_lcell_comb
-- Equation(s):
-- \D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~107_combout\ = (\D1_in|SLL|ShiftLeft0~47_combout\ & ((\D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~65_combout\) # ((\D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~12_combout\ & 
-- \D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~70_combout\)))) # (!\D1_in|SLL|ShiftLeft0~47_combout\ & (((\D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~12_combout\ & \D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~70_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \D1_in|SLL|ShiftLeft0~47_combout\,
	datab => \D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~65_combout\,
	datac => \D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~12_combout\,
	datad => \D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~70_combout\,
	combout => \D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~107_combout\);

-- Location: LCCOMB_X76_Y68_N6
\D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~108\ : cycloneiv_lcell_comb
-- Equation(s):
-- \D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~108_combout\ = (\D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~107_combout\) # ((\D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~17_combout\ & (\B[3]~input_o\ & !\D1_in|SLL|ShiftLeft0~92_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~107_combout\,
	datab => \D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~17_combout\,
	datac => \B[3]~input_o\,
	datad => \D1_in|SLL|ShiftLeft0~92_combout\,
	combout => \D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~108_combout\);

-- Location: LCCOMB_X75_Y68_N6
\D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~105\ : cycloneiv_lcell_comb
-- Equation(s):
-- \D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~105_combout\ = (\B[2]~input_o\ & ((\D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~67_combout\))) # (!\B[2]~input_o\ & (\D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~78_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~78_combout\,
	datac => \B[2]~input_o\,
	datad => \D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~67_combout\,
	combout => \D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~105_combout\);

-- Location: LCCOMB_X73_Y68_N0
\D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~106\ : cycloneiv_lcell_comb
-- Equation(s):
-- \D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~106_combout\ = (\D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~13_combout\ & (((!\D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~11_combout\)))) # (!\D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~13_combout\ & 
-- ((\D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~11_combout\ & (\D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~75_combout\)) # (!\D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~11_combout\ & ((\D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~105_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010111100101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~75_combout\,
	datab => \D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~13_combout\,
	datac => \D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~11_combout\,
	datad => \D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~105_combout\,
	combout => \D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~106_combout\);

-- Location: LCCOMB_X73_Y68_N18
\D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~109\ : cycloneiv_lcell_comb
-- Equation(s):
-- \D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~109_combout\ = (\D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~106_combout\ & ((\D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~108_combout\) # ((!\D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~13_combout\)))) # 
-- (!\D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~106_combout\ & (((\D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~13_combout\ & \D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~80_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~108_combout\,
	datab => \D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~106_combout\,
	datac => \D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~13_combout\,
	datad => \D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~80_combout\,
	combout => \D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~109_combout\);

-- Location: LCCOMB_X72_Y70_N16
\D5_in|Sel_SR|D5[17]~29\ : cycloneiv_lcell_comb
-- Equation(s):
-- \D5_in|Sel_SR|D5[17]~29_combout\ = (\funct7~input_o\ & \A[31]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \funct7~input_o\,
	datad => \A[31]~input_o\,
	combout => \D5_in|Sel_SR|D5[17]~29_combout\);

-- Location: LCCOMB_X73_Y68_N28
\D5_in|Sel_SR|D5[7]~41\ : cycloneiv_lcell_comb
-- Equation(s):
-- \D5_in|Sel_SR|D5[7]~41_combout\ = (\D5_in|Sel_SR|D5[17]~29_combout\ & (\B[1]~input_o\ & (\D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~11_combout\ & \B[2]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \D5_in|Sel_SR|D5[17]~29_combout\,
	datab => \B[1]~input_o\,
	datac => \D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~11_combout\,
	datad => \B[2]~input_o\,
	combout => \D5_in|Sel_SR|D5[7]~41_combout\);

-- Location: LCCOMB_X73_Y68_N6
\D5_in|Sel_SR|D5[6]~42\ : cycloneiv_lcell_comb
-- Equation(s):
-- \D5_in|Sel_SR|D5[6]~42_combout\ = (\D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~109_combout\) # ((!\B[0]~input_o\ & \D5_in|Sel_SR|D5[7]~41_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[0]~input_o\,
	datab => \D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~109_combout\,
	datad => \D5_in|Sel_SR|D5[7]~41_combout\,
	combout => \D5_in|Sel_SR|D5[6]~42_combout\);

-- Location: LCCOMB_X75_Y66_N30
\D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~110\ : cycloneiv_lcell_comb
-- Equation(s):
-- \D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~110_combout\ = (\B[2]~input_o\ & (\D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~84_combout\)) # (!\B[2]~input_o\ & ((\D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~93_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[2]~input_o\,
	datac => \D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~84_combout\,
	datad => \D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~93_combout\,
	combout => \D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~110_combout\);

-- Location: LCCOMB_X75_Y66_N0
\D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~111\ : cycloneiv_lcell_comb
-- Equation(s):
-- \D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~111_combout\ = (\D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~13_combout\ & (((!\D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~11_combout\)))) # (!\D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~13_combout\ & 
-- ((\D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~11_combout\ & (\D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~91_combout\)) # (!\D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~11_combout\ & ((\D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~110_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~13_combout\,
	datab => \D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~91_combout\,
	datac => \D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~110_combout\,
	datad => \D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~11_combout\,
	combout => \D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~111_combout\);

-- Location: LCCOMB_X76_Y69_N20
\D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~112\ : cycloneiv_lcell_comb
-- Equation(s):
-- \D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~112_combout\ = (\A[31]~input_o\ & (!\B[0]~input_o\ & !\B[1]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[31]~input_o\,
	datab => \B[0]~input_o\,
	datac => \B[1]~input_o\,
	combout => \D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~112_combout\);

-- Location: LCCOMB_X75_Y66_N2
\D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~113\ : cycloneiv_lcell_comb
-- Equation(s):
-- \D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~113_combout\ = (!\B[2]~input_o\ & ((\B[3]~input_o\ & (\D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~112_combout\)) # (!\B[3]~input_o\ & ((\D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~83_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[3]~input_o\,
	datab => \D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~112_combout\,
	datac => \B[2]~input_o\,
	datad => \D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~83_combout\,
	combout => \D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~113_combout\);

-- Location: LCCOMB_X75_Y66_N6
\D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~119\ : cycloneiv_lcell_comb
-- Equation(s):
-- \D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~119_combout\ = (\D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~113_combout\) # ((\B[2]~input_o\ & (!\B[3]~input_o\ & \D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~88_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[2]~input_o\,
	datab => \D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~113_combout\,
	datac => \B[3]~input_o\,
	datad => \D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~88_combout\,
	combout => \D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~119_combout\);

-- Location: LCCOMB_X75_Y66_N12
\D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~114\ : cycloneiv_lcell_comb
-- Equation(s):
-- \D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~114_combout\ = (\D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~111_combout\ & (((\D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~119_combout\) # (!\D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~13_combout\)))) # 
-- (!\D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~111_combout\ & (\D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~94_combout\ & (\D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~13_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110000101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~94_combout\,
	datab => \D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~111_combout\,
	datac => \D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~13_combout\,
	datad => \D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~119_combout\,
	combout => \D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~114_combout\);

-- Location: LCCOMB_X73_Y68_N8
\D5_in|Sel_SR|D5[7]~43\ : cycloneiv_lcell_comb
-- Equation(s):
-- \D5_in|Sel_SR|D5[7]~43_combout\ = (\D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~114_combout\) # ((\D5_in|Sel_SR|D5[7]~41_combout\ & \B[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \D5_in|Sel_SR|D5[7]~41_combout\,
	datac => \D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~114_combout\,
	datad => \B[0]~input_o\,
	combout => \D5_in|Sel_SR|D5[7]~43_combout\);

-- Location: LCCOMB_X71_Y66_N18
\D5_in|Sel_SR|D5[8]~44\ : cycloneiv_lcell_comb
-- Equation(s):
-- \D5_in|Sel_SR|D5[8]~44_combout\ = (!\B[3]~input_o\ & ((\B[4]~input_o\ & ((\D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~22_combout\))) # (!\B[4]~input_o\ & (\D5_in|Sel_SR|D5[8]~30_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \D5_in|Sel_SR|D5[8]~30_combout\,
	datab => \D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~22_combout\,
	datac => \B[3]~input_o\,
	datad => \B[4]~input_o\,
	combout => \D5_in|Sel_SR|D5[8]~44_combout\);

-- Location: LCCOMB_X71_Y66_N4
\D5_in|Sel_SR|D5[8]~45\ : cycloneiv_lcell_comb
-- Equation(s):
-- \D5_in|Sel_SR|D5[8]~45_combout\ = (\D5_in|Sel_SR|D5[8]~44_combout\) # ((\D1_in|SLL|ShiftLeft0~113_combout\ & ((\D5_in|Sel_SR|D5[0]~89_combout\) # (!\D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~29_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101010111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \D5_in|Sel_SR|D5[8]~44_combout\,
	datab => \D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~29_combout\,
	datac => \D1_in|SLL|ShiftLeft0~113_combout\,
	datad => \D5_in|Sel_SR|D5[0]~89_combout\,
	combout => \D5_in|Sel_SR|D5[8]~45_combout\);

-- Location: LCCOMB_X75_Y65_N6
\D5_in|Sel_SR|D5[9]~46\ : cycloneiv_lcell_comb
-- Equation(s):
-- \D5_in|Sel_SR|D5[9]~46_combout\ = (!\B[3]~input_o\ & ((\B[4]~input_o\ & (\D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~47_combout\)) # (!\B[4]~input_o\ & ((\D5_in|Sel_SR|D5[9]~32_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[4]~input_o\,
	datab => \D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~47_combout\,
	datac => \B[3]~input_o\,
	datad => \D5_in|Sel_SR|D5[9]~32_combout\,
	combout => \D5_in|Sel_SR|D5[9]~46_combout\);

-- Location: LCCOMB_X75_Y65_N8
\D5_in|Sel_SR|D5[9]~47\ : cycloneiv_lcell_comb
-- Equation(s):
-- \D5_in|Sel_SR|D5[9]~47_combout\ = (\D5_in|Sel_SR|D5[9]~46_combout\) # ((\D1_in|SLL|ShiftLeft0~113_combout\ & ((\D5_in|Sel_SR|D5[1]~91_combout\) # (!\D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~52_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~52_combout\,
	datab => \D5_in|Sel_SR|D5[1]~91_combout\,
	datac => \D1_in|SLL|ShiftLeft0~113_combout\,
	datad => \D5_in|Sel_SR|D5[9]~46_combout\,
	combout => \D5_in|Sel_SR|D5[9]~47_combout\);

-- Location: LCCOMB_X76_Y69_N30
\D5_in|Sel_SR|D5[10]~49\ : cycloneiv_lcell_comb
-- Equation(s):
-- \D5_in|Sel_SR|D5[10]~49_combout\ = (\A[31]~input_o\ & (\funct7~input_o\ & (\B[1]~input_o\ & !\B[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[31]~input_o\,
	datab => \funct7~input_o\,
	datac => \B[1]~input_o\,
	datad => \B[0]~input_o\,
	combout => \D5_in|Sel_SR|D5[10]~49_combout\);

-- Location: LCCOMB_X75_Y68_N12
\D5_in|Sel_SR|D5[10]~50\ : cycloneiv_lcell_comb
-- Equation(s):
-- \D5_in|Sel_SR|D5[10]~50_combout\ = (\B[2]~input_o\ & (((\D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~65_combout\)))) # (!\B[2]~input_o\ & ((\D5_in|Sel_SR|D5[10]~49_combout\) # ((\D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~67_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010111100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[2]~input_o\,
	datab => \D5_in|Sel_SR|D5[10]~49_combout\,
	datac => \D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~65_combout\,
	datad => \D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~67_combout\,
	combout => \D5_in|Sel_SR|D5[10]~50_combout\);

-- Location: LCCOMB_X75_Y68_N18
\D5_in|Sel_SR|D5[10]~48\ : cycloneiv_lcell_comb
-- Equation(s):
-- \D5_in|Sel_SR|D5[10]~48_combout\ = (!\B[3]~input_o\ & ((\B[4]~input_o\ & ((\D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~71_combout\))) # (!\B[4]~input_o\ & (\D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~81_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~81_combout\,
	datab => \D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~71_combout\,
	datac => \B[3]~input_o\,
	datad => \B[4]~input_o\,
	combout => \D5_in|Sel_SR|D5[10]~48_combout\);

-- Location: LCCOMB_X75_Y68_N28
\D5_in|Sel_SR|D5[10]~93\ : cycloneiv_lcell_comb
-- Equation(s):
-- \D5_in|Sel_SR|D5[10]~93_combout\ = (\D5_in|Sel_SR|D5[10]~48_combout\) # ((\D5_in|Sel_SR|D5[10]~50_combout\ & (\B[3]~input_o\ & !\B[4]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \D5_in|Sel_SR|D5[10]~50_combout\,
	datab => \D5_in|Sel_SR|D5[10]~48_combout\,
	datac => \B[3]~input_o\,
	datad => \B[4]~input_o\,
	combout => \D5_in|Sel_SR|D5[10]~93_combout\);

-- Location: LCCOMB_X75_Y66_N22
\D5_in|Sel_SR|D5[11]~51\ : cycloneiv_lcell_comb
-- Equation(s):
-- \D5_in|Sel_SR|D5[11]~51_combout\ = (!\B[3]~input_o\ & ((\B[4]~input_o\ & ((\D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~89_combout\))) # (!\B[4]~input_o\ & (\D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~95_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[3]~input_o\,
	datab => \D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~95_combout\,
	datac => \D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~89_combout\,
	datad => \B[4]~input_o\,
	combout => \D5_in|Sel_SR|D5[11]~51_combout\);

-- Location: LCCOMB_X76_Y69_N16
\D5_in|Sel_SR|D5[11]~52\ : cycloneiv_lcell_comb
-- Equation(s):
-- \D5_in|Sel_SR|D5[11]~52_combout\ = (\A[31]~input_o\ & (\funct7~input_o\ & (\B[1]~input_o\ & \B[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[31]~input_o\,
	datab => \funct7~input_o\,
	datac => \B[1]~input_o\,
	datad => \B[0]~input_o\,
	combout => \D5_in|Sel_SR|D5[11]~52_combout\);

-- Location: LCCOMB_X75_Y66_N16
\D5_in|Sel_SR|D5[11]~53\ : cycloneiv_lcell_comb
-- Equation(s):
-- \D5_in|Sel_SR|D5[11]~53_combout\ = (\B[2]~input_o\ & (((\D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~83_combout\)))) # (!\B[2]~input_o\ & ((\D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~84_combout\) # ((\D5_in|Sel_SR|D5[11]~52_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~84_combout\,
	datab => \D5_in|Sel_SR|D5[11]~52_combout\,
	datac => \B[2]~input_o\,
	datad => \D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~83_combout\,
	combout => \D5_in|Sel_SR|D5[11]~53_combout\);

-- Location: LCCOMB_X75_Y66_N8
\D5_in|Sel_SR|D5[11]~94\ : cycloneiv_lcell_comb
-- Equation(s):
-- \D5_in|Sel_SR|D5[11]~94_combout\ = (\D5_in|Sel_SR|D5[11]~51_combout\) # ((\D5_in|Sel_SR|D5[11]~53_combout\ & (\B[3]~input_o\ & !\B[4]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \D5_in|Sel_SR|D5[11]~51_combout\,
	datab => \D5_in|Sel_SR|D5[11]~53_combout\,
	datac => \B[3]~input_o\,
	datad => \B[4]~input_o\,
	combout => \D5_in|Sel_SR|D5[11]~94_combout\);

-- Location: LCCOMB_X77_Y67_N30
\D5_in|Sel_SR|D5[12]~54\ : cycloneiv_lcell_comb
-- Equation(s):
-- \D5_in|Sel_SR|D5[12]~54_combout\ = (\D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~21_combout\) # ((\D5_in|Sel_SR|D5[17]~29_combout\ & (!\B[0]~input_o\ & !\B[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \D5_in|Sel_SR|D5[17]~29_combout\,
	datab => \B[0]~input_o\,
	datac => \D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~21_combout\,
	datad => \B[1]~input_o\,
	combout => \D5_in|Sel_SR|D5[12]~54_combout\);

-- Location: LCCOMB_X71_Y66_N22
\D5_in|Sel_SR|D5[12]~55\ : cycloneiv_lcell_comb
-- Equation(s):
-- \D5_in|Sel_SR|D5[12]~55_combout\ = (\D1_in|SLL|ShiftLeft0~113_combout\ & ((\B[2]~input_o\ & ((\D5_in|Sel_SR|D5[12]~54_combout\))) # (!\B[2]~input_o\ & (\D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~28_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~28_combout\,
	datab => \D1_in|SLL|ShiftLeft0~113_combout\,
	datac => \D5_in|Sel_SR|D5[12]~54_combout\,
	datad => \B[2]~input_o\,
	combout => \D5_in|Sel_SR|D5[12]~55_combout\);

-- Location: LCCOMB_X71_Y66_N14
\D5_in|Sel_SR|D5[12]~95\ : cycloneiv_lcell_comb
-- Equation(s):
-- \D5_in|Sel_SR|D5[12]~95_combout\ = (\B[4]~input_o\ & (\D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~18_combout\ & (!\B[3]~input_o\ & !\B[2]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[4]~input_o\,
	datab => \D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~18_combout\,
	datac => \B[3]~input_o\,
	datad => \B[2]~input_o\,
	combout => \D5_in|Sel_SR|D5[12]~95_combout\);

-- Location: LCCOMB_X71_Y66_N8
\D5_in|Sel_SR|D5[12]~56\ : cycloneiv_lcell_comb
-- Equation(s):
-- \D5_in|Sel_SR|D5[12]~56_combout\ = (\D5_in|Sel_SR|D5[12]~55_combout\) # ((\D5_in|Sel_SR|D5[12]~95_combout\) # ((\D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~97_combout\ & \D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~11_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \D5_in|Sel_SR|D5[12]~55_combout\,
	datab => \D5_in|Sel_SR|D5[12]~95_combout\,
	datac => \D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~97_combout\,
	datad => \D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~11_combout\,
	combout => \D5_in|Sel_SR|D5[12]~56_combout\);

-- Location: LCCOMB_X75_Y69_N14
\D5_in|Sel_SR|D5[13]~96\ : cycloneiv_lcell_comb
-- Equation(s):
-- \D5_in|Sel_SR|D5[13]~96_combout\ = (\D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~44_combout\ & (\B[4]~input_o\ & (!\B[2]~input_o\ & !\B[3]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~44_combout\,
	datab => \B[4]~input_o\,
	datac => \B[2]~input_o\,
	datad => \B[3]~input_o\,
	combout => \D5_in|Sel_SR|D5[13]~96_combout\);

-- Location: LCCOMB_X75_Y69_N22
\D5_in|Sel_SR|D5[13]~57\ : cycloneiv_lcell_comb
-- Equation(s):
-- \D5_in|Sel_SR|D5[13]~57_combout\ = (\D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~46_combout\) # ((\B[0]~input_o\ & (\D5_in|Sel_SR|D5[17]~29_combout\ & !\B[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~46_combout\,
	datab => \B[0]~input_o\,
	datac => \D5_in|Sel_SR|D5[17]~29_combout\,
	datad => \B[1]~input_o\,
	combout => \D5_in|Sel_SR|D5[13]~57_combout\);

-- Location: LCCOMB_X75_Y69_N8
\D5_in|Sel_SR|D5[13]~58\ : cycloneiv_lcell_comb
-- Equation(s):
-- \D5_in|Sel_SR|D5[13]~58_combout\ = (\D1_in|SLL|ShiftLeft0~113_combout\ & ((\B[2]~input_o\ & (\D5_in|Sel_SR|D5[13]~57_combout\)) # (!\B[2]~input_o\ & ((\D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~51_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \D5_in|Sel_SR|D5[13]~57_combout\,
	datab => \D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~51_combout\,
	datac => \B[2]~input_o\,
	datad => \D1_in|SLL|ShiftLeft0~113_combout\,
	combout => \D5_in|Sel_SR|D5[13]~58_combout\);

-- Location: LCCOMB_X75_Y69_N26
\D5_in|Sel_SR|D5[13]~59\ : cycloneiv_lcell_comb
-- Equation(s):
-- \D5_in|Sel_SR|D5[13]~59_combout\ = (\D5_in|Sel_SR|D5[13]~96_combout\) # ((\D5_in|Sel_SR|D5[13]~58_combout\) # ((\D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~101_combout\ & \D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~11_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~101_combout\,
	datab => \D5_in|Sel_SR|D5[13]~96_combout\,
	datac => \D5_in|Sel_SR|D5[13]~58_combout\,
	datad => \D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~11_combout\,
	combout => \D5_in|Sel_SR|D5[13]~59_combout\);

-- Location: LCCOMB_X75_Y68_N0
\D5_in|Sel_SR|D5[14]~61\ : cycloneiv_lcell_comb
-- Equation(s):
-- \D5_in|Sel_SR|D5[14]~61_combout\ = (\B[2]~input_o\ & ((\D5_in|Sel_SR|D5[10]~49_combout\) # ((\D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~70_combout\)))) # (!\B[2]~input_o\ & (((\D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~65_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[2]~input_o\,
	datab => \D5_in|Sel_SR|D5[10]~49_combout\,
	datac => \D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~65_combout\,
	datad => \D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~70_combout\,
	combout => \D5_in|Sel_SR|D5[14]~61_combout\);

-- Location: LCCOMB_X76_Y69_N6
\D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~120\ : cycloneiv_lcell_comb
-- Equation(s):
-- \D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~120_combout\ = (!\D1_in|SLL|ShiftLeft0~92_combout\ & ((\B[0]~input_o\ & (\A[31]~input_o\)) # (!\B[0]~input_o\ & ((\A[30]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[31]~input_o\,
	datab => \B[0]~input_o\,
	datac => \D1_in|SLL|ShiftLeft0~92_combout\,
	datad => \A[30]~input_o\,
	combout => \D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~120_combout\);

-- Location: LCCOMB_X75_Y68_N14
\D5_in|Sel_SR|D5[14]~60\ : cycloneiv_lcell_comb
-- Equation(s):
-- \D5_in|Sel_SR|D5[14]~60_combout\ = (!\B[3]~input_o\ & ((\B[4]~input_o\ & ((\D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~120_combout\))) # (!\B[4]~input_o\ & (\D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~105_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~105_combout\,
	datab => \D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~120_combout\,
	datac => \B[3]~input_o\,
	datad => \B[4]~input_o\,
	combout => \D5_in|Sel_SR|D5[14]~60_combout\);

-- Location: LCCOMB_X75_Y68_N22
\D5_in|Sel_SR|D5[14]~97\ : cycloneiv_lcell_comb
-- Equation(s):
-- \D5_in|Sel_SR|D5[14]~97_combout\ = (\D5_in|Sel_SR|D5[14]~60_combout\) # ((\B[3]~input_o\ & (\D5_in|Sel_SR|D5[14]~61_combout\ & !\B[4]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[3]~input_o\,
	datab => \D5_in|Sel_SR|D5[14]~61_combout\,
	datac => \D5_in|Sel_SR|D5[14]~60_combout\,
	datad => \B[4]~input_o\,
	combout => \D5_in|Sel_SR|D5[14]~97_combout\);

-- Location: LCCOMB_X75_Y66_N18
\D5_in|Sel_SR|D5[15]~62\ : cycloneiv_lcell_comb
-- Equation(s):
-- \D5_in|Sel_SR|D5[15]~62_combout\ = (\B[2]~input_o\ & (((\D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~88_combout\) # (\D5_in|Sel_SR|D5[11]~52_combout\)))) # (!\B[2]~input_o\ & (\D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~83_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~83_combout\,
	datab => \D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~88_combout\,
	datac => \B[2]~input_o\,
	datad => \D5_in|Sel_SR|D5[11]~52_combout\,
	combout => \D5_in|Sel_SR|D5[15]~62_combout\);

-- Location: LCCOMB_X75_Y66_N4
\D5_in|Sel_SR|D5[15]~63\ : cycloneiv_lcell_comb
-- Equation(s):
-- \D5_in|Sel_SR|D5[15]~63_combout\ = (\B[4]~input_o\ & (((\D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~112_combout\ & !\B[2]~input_o\)))) # (!\B[4]~input_o\ & (\D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~110_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~110_combout\,
	datab => \D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~112_combout\,
	datac => \B[2]~input_o\,
	datad => \B[4]~input_o\,
	combout => \D5_in|Sel_SR|D5[15]~63_combout\);

-- Location: LCCOMB_X75_Y66_N26
\D5_in|Sel_SR|D5[15]~98\ : cycloneiv_lcell_comb
-- Equation(s):
-- \D5_in|Sel_SR|D5[15]~98_combout\ = (\B[3]~input_o\ & (\D5_in|Sel_SR|D5[15]~62_combout\ & ((!\B[4]~input_o\)))) # (!\B[3]~input_o\ & (((\D5_in|Sel_SR|D5[15]~63_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[3]~input_o\,
	datab => \D5_in|Sel_SR|D5[15]~62_combout\,
	datac => \D5_in|Sel_SR|D5[15]~63_combout\,
	datad => \B[4]~input_o\,
	combout => \D5_in|Sel_SR|D5[15]~98_combout\);

-- Location: LCCOMB_X75_Y65_N10
\D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~115\ : cycloneiv_lcell_comb
-- Equation(s):
-- \D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~115_combout\ = (\B[3]~input_o\ & ((\D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~22_combout\))) # (!\B[3]~input_o\ & (!\D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~29_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000110110001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[3]~input_o\,
	datab => \D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~29_combout\,
	datac => \D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~22_combout\,
	combout => \D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~115_combout\);

-- Location: LCCOMB_X76_Y69_N18
\D5_in|Sel_SR|D5[16]~64\ : cycloneiv_lcell_comb
-- Equation(s):
-- \D5_in|Sel_SR|D5[16]~64_combout\ = (\A[31]~input_o\ & (!\B[0]~input_o\ & (\funct7~input_o\ & \B[4]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[31]~input_o\,
	datab => \B[0]~input_o\,
	datac => \funct7~input_o\,
	datad => \B[4]~input_o\,
	combout => \D5_in|Sel_SR|D5[16]~64_combout\);

-- Location: LCCOMB_X75_Y65_N4
\D5_in|Sel_SR|D5[16]~65\ : cycloneiv_lcell_comb
-- Equation(s):
-- \D5_in|Sel_SR|D5[16]~65_combout\ = (\D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~115_combout\ & (((\D5_in|Sel_SR|D5[17]~28_combout\ & \D5_in|Sel_SR|D5[16]~64_combout\)) # (!\B[4]~input_o\))) # (!\D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~115_combout\ & 
-- (\D5_in|Sel_SR|D5[17]~28_combout\ & ((\D5_in|Sel_SR|D5[16]~64_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~115_combout\,
	datab => \D5_in|Sel_SR|D5[17]~28_combout\,
	datac => \B[4]~input_o\,
	datad => \D5_in|Sel_SR|D5[16]~64_combout\,
	combout => \D5_in|Sel_SR|D5[16]~65_combout\);

-- Location: LCCOMB_X75_Y65_N14
\D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~116\ : cycloneiv_lcell_comb
-- Equation(s):
-- \D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~116_combout\ = (\B[3]~input_o\ & (\D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~47_combout\)) # (!\B[3]~input_o\ & ((!\D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~52_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110110001101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[3]~input_o\,
	datab => \D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~47_combout\,
	datac => \D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~52_combout\,
	combout => \D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~116_combout\);

-- Location: LCCOMB_X76_Y69_N12
\D5_in|Sel_SR|D5[17]~66\ : cycloneiv_lcell_comb
-- Equation(s):
-- \D5_in|Sel_SR|D5[17]~66_combout\ = (\A[31]~input_o\ & (\B[0]~input_o\ & (\funct7~input_o\ & \B[4]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[31]~input_o\,
	datab => \B[0]~input_o\,
	datac => \funct7~input_o\,
	datad => \B[4]~input_o\,
	combout => \D5_in|Sel_SR|D5[17]~66_combout\);

-- Location: LCCOMB_X75_Y65_N24
\D5_in|Sel_SR|D5[17]~67\ : cycloneiv_lcell_comb
-- Equation(s):
-- \D5_in|Sel_SR|D5[17]~67_combout\ = (\B[4]~input_o\ & (((\D5_in|Sel_SR|D5[17]~66_combout\ & \D5_in|Sel_SR|D5[17]~28_combout\)))) # (!\B[4]~input_o\ & ((\D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~116_combout\) # ((\D5_in|Sel_SR|D5[17]~66_combout\ & 
-- \D5_in|Sel_SR|D5[17]~28_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[4]~input_o\,
	datab => \D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~116_combout\,
	datac => \D5_in|Sel_SR|D5[17]~66_combout\,
	datad => \D5_in|Sel_SR|D5[17]~28_combout\,
	combout => \D5_in|Sel_SR|D5[17]~67_combout\);

-- Location: LCCOMB_X72_Y70_N26
\D5_in|Sel_SR|D5[18]~68\ : cycloneiv_lcell_comb
-- Equation(s):
-- \D5_in|Sel_SR|D5[18]~68_combout\ = (\D5_in|Sel_SR|D5[17]~29_combout\ & (!\B[0]~input_o\ & (\B[4]~input_o\ & \B[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \D5_in|Sel_SR|D5[17]~29_combout\,
	datab => \B[0]~input_o\,
	datac => \B[4]~input_o\,
	datad => \B[1]~input_o\,
	combout => \D5_in|Sel_SR|D5[18]~68_combout\);

-- Location: LCCOMB_X75_Y68_N10
\D5_in|Sel_SR|D5[18]~69\ : cycloneiv_lcell_comb
-- Equation(s):
-- \D5_in|Sel_SR|D5[18]~69_combout\ = (\D1_in|SLL|ShiftLeft0~47_combout\ & ((\D5_in|Sel_SR|D5[18]~68_combout\) # ((\D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~72_combout\ & !\B[4]~input_o\)))) # (!\D1_in|SLL|ShiftLeft0~47_combout\ & 
-- (\D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~72_combout\ & ((!\B[4]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \D1_in|SLL|ShiftLeft0~47_combout\,
	datab => \D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~72_combout\,
	datac => \D5_in|Sel_SR|D5[18]~68_combout\,
	datad => \B[4]~input_o\,
	combout => \D5_in|Sel_SR|D5[18]~69_combout\);

-- Location: LCCOMB_X72_Y70_N28
\D5_in|Sel_SR|D5[19]~70\ : cycloneiv_lcell_comb
-- Equation(s):
-- \D5_in|Sel_SR|D5[19]~70_combout\ = (\D5_in|Sel_SR|D5[17]~29_combout\ & (\B[0]~input_o\ & (\B[4]~input_o\ & \B[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \D5_in|Sel_SR|D5[17]~29_combout\,
	datab => \B[0]~input_o\,
	datac => \B[4]~input_o\,
	datad => \B[1]~input_o\,
	combout => \D5_in|Sel_SR|D5[19]~70_combout\);

-- Location: LCCOMB_X72_Y70_N6
\D5_in|Sel_SR|D5[19]~71\ : cycloneiv_lcell_comb
-- Equation(s):
-- \D5_in|Sel_SR|D5[19]~71_combout\ = (\D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~90_combout\ & (((\D1_in|SLL|ShiftLeft0~47_combout\ & \D5_in|Sel_SR|D5[19]~70_combout\)) # (!\B[4]~input_o\))) # (!\D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~90_combout\ & 
-- (\D1_in|SLL|ShiftLeft0~47_combout\ & ((\D5_in|Sel_SR|D5[19]~70_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~90_combout\,
	datab => \D1_in|SLL|ShiftLeft0~47_combout\,
	datac => \B[4]~input_o\,
	datad => \D5_in|Sel_SR|D5[19]~70_combout\,
	combout => \D5_in|Sel_SR|D5[19]~71_combout\);

-- Location: LCCOMB_X73_Y68_N20
\D5_in|Sel_SR|D5[20]~99\ : cycloneiv_lcell_comb
-- Equation(s):
-- \D5_in|Sel_SR|D5[20]~99_combout\ = (!\B[0]~input_o\ & (\B[4]~input_o\ & (\D5_in|Sel_SR|D5[17]~29_combout\ & !\B[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[0]~input_o\,
	datab => \B[4]~input_o\,
	datac => \D5_in|Sel_SR|D5[17]~29_combout\,
	datad => \B[1]~input_o\,
	combout => \D5_in|Sel_SR|D5[20]~99_combout\);

-- Location: LCCOMB_X71_Y68_N6
\D5_in|Sel_SR|D5[20]~72\ : cycloneiv_lcell_comb
-- Equation(s):
-- \D5_in|Sel_SR|D5[20]~72_combout\ = (\D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~117_combout\ & (((\D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~12_combout\ & \D5_in|Sel_SR|D5[20]~99_combout\)) # (!\B[4]~input_o\))) # 
-- (!\D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~117_combout\ & (\D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~12_combout\ & (\D5_in|Sel_SR|D5[20]~99_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~117_combout\,
	datab => \D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~12_combout\,
	datac => \D5_in|Sel_SR|D5[20]~99_combout\,
	datad => \B[4]~input_o\,
	combout => \D5_in|Sel_SR|D5[20]~72_combout\);

-- Location: LCCOMB_X75_Y69_N12
\D5_in|Sel_SR|D5[21]~73\ : cycloneiv_lcell_comb
-- Equation(s):
-- \D5_in|Sel_SR|D5[21]~73_combout\ = (!\B[1]~input_o\ & (\B[2]~input_o\ & !\B[3]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[1]~input_o\,
	datac => \B[2]~input_o\,
	datad => \B[3]~input_o\,
	combout => \D5_in|Sel_SR|D5[21]~73_combout\);

-- Location: LCCOMB_X75_Y69_N30
\D5_in|Sel_SR|D5[21]~74\ : cycloneiv_lcell_comb
-- Equation(s):
-- \D5_in|Sel_SR|D5[21]~74_combout\ = (\D5_in|Sel_SR|D5[21]~73_combout\ & ((\D5_in|Sel_SR|D5[17]~66_combout\) # ((\D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~118_combout\ & !\B[4]~input_o\)))) # (!\D5_in|Sel_SR|D5[21]~73_combout\ & 
-- (\D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~118_combout\ & ((!\B[4]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \D5_in|Sel_SR|D5[21]~73_combout\,
	datab => \D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~118_combout\,
	datac => \D5_in|Sel_SR|D5[17]~66_combout\,
	datad => \B[4]~input_o\,
	combout => \D5_in|Sel_SR|D5[21]~74_combout\);

-- Location: LCCOMB_X73_Y68_N2
\D5_in|Sel_SR|D5[22]~75\ : cycloneiv_lcell_comb
-- Equation(s):
-- \D5_in|Sel_SR|D5[22]~75_combout\ = (\D5_in|Sel_SR|D5[18]~68_combout\ & ((\D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~12_combout\) # ((!\B[4]~input_o\ & \D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~108_combout\)))) # (!\D5_in|Sel_SR|D5[18]~68_combout\ & 
-- (!\B[4]~input_o\ & ((\D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~108_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \D5_in|Sel_SR|D5[18]~68_combout\,
	datab => \B[4]~input_o\,
	datac => \D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~12_combout\,
	datad => \D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~108_combout\,
	combout => \D5_in|Sel_SR|D5[22]~75_combout\);

-- Location: LCCOMB_X71_Y68_N24
\D5_in|Sel_SR|D5[23]~76\ : cycloneiv_lcell_comb
-- Equation(s):
-- \D5_in|Sel_SR|D5[23]~76_combout\ = (\D5_in|Sel_SR|D5[19]~70_combout\ & ((\D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~12_combout\) # ((\D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~119_combout\ & !\B[4]~input_o\)))) # (!\D5_in|Sel_SR|D5[19]~70_combout\ & 
-- (((\D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~119_combout\ & !\B[4]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \D5_in|Sel_SR|D5[19]~70_combout\,
	datab => \D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~12_combout\,
	datac => \D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~119_combout\,
	datad => \B[4]~input_o\,
	combout => \D5_in|Sel_SR|D5[23]~76_combout\);

-- Location: LCCOMB_X75_Y65_N26
\D5_in|Sel_SR|D5[24]~77\ : cycloneiv_lcell_comb
-- Equation(s):
-- \D5_in|Sel_SR|D5[24]~77_combout\ = (\D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~11_combout\ & ((\D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~22_combout\) # ((\D1_in|SLL|ShiftLeft0~53_combout\ & \D5_in|Sel_SR|D5[16]~64_combout\)))) # 
-- (!\D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~11_combout\ & (\D1_in|SLL|ShiftLeft0~53_combout\ & ((\D5_in|Sel_SR|D5[16]~64_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~11_combout\,
	datab => \D1_in|SLL|ShiftLeft0~53_combout\,
	datac => \D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~22_combout\,
	datad => \D5_in|Sel_SR|D5[16]~64_combout\,
	combout => \D5_in|Sel_SR|D5[24]~77_combout\);

-- Location: LCCOMB_X75_Y65_N12
\D5_in|Sel_SR|D5[25]~78\ : cycloneiv_lcell_comb
-- Equation(s):
-- \D5_in|Sel_SR|D5[25]~78_combout\ = (\D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~11_combout\ & ((\D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~47_combout\) # ((\D1_in|SLL|ShiftLeft0~53_combout\ & \D5_in|Sel_SR|D5[17]~66_combout\)))) # 
-- (!\D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~11_combout\ & (\D1_in|SLL|ShiftLeft0~53_combout\ & (\D5_in|Sel_SR|D5[17]~66_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~11_combout\,
	datab => \D1_in|SLL|ShiftLeft0~53_combout\,
	datac => \D5_in|Sel_SR|D5[17]~66_combout\,
	datad => \D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~47_combout\,
	combout => \D5_in|Sel_SR|D5[25]~78_combout\);

-- Location: LCCOMB_X75_Y68_N20
\D5_in|Sel_SR|D5[26]~79\ : cycloneiv_lcell_comb
-- Equation(s):
-- \D5_in|Sel_SR|D5[26]~79_combout\ = (\D1_in|SLL|ShiftLeft0~48_combout\ & ((\D5_in|Sel_SR|D5[18]~68_combout\) # ((\D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~11_combout\ & \D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~71_combout\)))) # 
-- (!\D1_in|SLL|ShiftLeft0~48_combout\ & (\D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~11_combout\ & ((\D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~71_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \D1_in|SLL|ShiftLeft0~48_combout\,
	datab => \D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~11_combout\,
	datac => \D5_in|Sel_SR|D5[18]~68_combout\,
	datad => \D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~71_combout\,
	combout => \D5_in|Sel_SR|D5[26]~79_combout\);

-- Location: LCCOMB_X71_Y68_N26
\D5_in|Sel_SR|D5[27]~80\ : cycloneiv_lcell_comb
-- Equation(s):
-- \D5_in|Sel_SR|D5[27]~80_combout\ = (\D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~89_combout\ & ((\D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~11_combout\) # ((\D1_in|SLL|ShiftLeft0~48_combout\ & \D5_in|Sel_SR|D5[19]~70_combout\)))) # 
-- (!\D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~89_combout\ & (((\D1_in|SLL|ShiftLeft0~48_combout\ & \D5_in|Sel_SR|D5[19]~70_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~89_combout\,
	datab => \D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~11_combout\,
	datac => \D1_in|SLL|ShiftLeft0~48_combout\,
	datad => \D5_in|Sel_SR|D5[19]~70_combout\,
	combout => \D5_in|Sel_SR|D5[27]~80_combout\);

-- Location: LCCOMB_X75_Y68_N30
\D5_in|Sel_SR|D5[28]~81\ : cycloneiv_lcell_comb
-- Equation(s):
-- \D5_in|Sel_SR|D5[28]~81_combout\ = (\B[3]~input_o\ & \B[2]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[3]~input_o\,
	datac => \B[2]~input_o\,
	combout => \D5_in|Sel_SR|D5[28]~81_combout\);

-- Location: LCCOMB_X75_Y68_N16
\D5_in|Sel_SR|D5[28]~82\ : cycloneiv_lcell_comb
-- Equation(s):
-- \D5_in|Sel_SR|D5[28]~82_combout\ = (\D1_in|SLL|ShiftLeft0~24_combout\ & ((\D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~18_combout\) # ((\D5_in|Sel_SR|D5[20]~99_combout\ & \D5_in|Sel_SR|D5[28]~81_combout\)))) # (!\D1_in|SLL|ShiftLeft0~24_combout\ & 
-- (\D5_in|Sel_SR|D5[20]~99_combout\ & (\D5_in|Sel_SR|D5[28]~81_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \D1_in|SLL|ShiftLeft0~24_combout\,
	datab => \D5_in|Sel_SR|D5[20]~99_combout\,
	datac => \D5_in|Sel_SR|D5[28]~81_combout\,
	datad => \D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~18_combout\,
	combout => \D5_in|Sel_SR|D5[28]~82_combout\);

-- Location: LCCOMB_X75_Y69_N24
\D5_in|Sel_SR|D5[29]~83\ : cycloneiv_lcell_comb
-- Equation(s):
-- \D5_in|Sel_SR|D5[29]~83_combout\ = (!\B[1]~input_o\ & (\B[2]~input_o\ & \B[3]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[1]~input_o\,
	datac => \B[2]~input_o\,
	datad => \B[3]~input_o\,
	combout => \D5_in|Sel_SR|D5[29]~83_combout\);

-- Location: LCCOMB_X75_Y69_N18
\D5_in|Sel_SR|D5[29]~84\ : cycloneiv_lcell_comb
-- Equation(s):
-- \D5_in|Sel_SR|D5[29]~84_combout\ = (\D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~44_combout\ & ((\D1_in|SLL|ShiftLeft0~24_combout\) # ((\D5_in|Sel_SR|D5[17]~66_combout\ & \D5_in|Sel_SR|D5[29]~83_combout\)))) # 
-- (!\D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~44_combout\ & (((\D5_in|Sel_SR|D5[17]~66_combout\ & \D5_in|Sel_SR|D5[29]~83_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~44_combout\,
	datab => \D1_in|SLL|ShiftLeft0~24_combout\,
	datac => \D5_in|Sel_SR|D5[17]~66_combout\,
	datad => \D5_in|Sel_SR|D5[29]~83_combout\,
	combout => \D5_in|Sel_SR|D5[29]~84_combout\);

-- Location: LCCOMB_X75_Y68_N26
\D5_in|Sel_SR|D5[30]~85\ : cycloneiv_lcell_comb
-- Equation(s):
-- \D5_in|Sel_SR|D5[30]~85_combout\ = (\D5_in|Sel_SR|D5[18]~68_combout\ & ((\D5_in|Sel_SR|D5[28]~81_combout\) # ((\D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~11_combout\ & \D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~120_combout\)))) # 
-- (!\D5_in|Sel_SR|D5[18]~68_combout\ & (\D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~11_combout\ & ((\D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~120_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \D5_in|Sel_SR|D5[18]~68_combout\,
	datab => \D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~11_combout\,
	datac => \D5_in|Sel_SR|D5[28]~81_combout\,
	datad => \D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~120_combout\,
	combout => \D5_in|Sel_SR|D5[30]~85_combout\);

-- Location: LCCOMB_X72_Y70_N8
\D5_in|Sel_SR|D5[31]~86\ : cycloneiv_lcell_comb
-- Equation(s):
-- \D5_in|Sel_SR|D5[31]~86_combout\ = (\funct7~input_o\ & (\B[0]~input_o\ & (\B[2]~input_o\ & \B[3]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \funct7~input_o\,
	datab => \B[0]~input_o\,
	datac => \B[2]~input_o\,
	datad => \B[3]~input_o\,
	combout => \D5_in|Sel_SR|D5[31]~86_combout\);

-- Location: LCCOMB_X72_Y70_N10
\D5_in|Sel_SR|D5[31]~87\ : cycloneiv_lcell_comb
-- Equation(s):
-- \D5_in|Sel_SR|D5[31]~87_combout\ = (\D5_in|Sel_SR|D5[31]~86_combout\ & (\B[4]~input_o\ & \B[1]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \D5_in|Sel_SR|D5[31]~86_combout\,
	datac => \B[4]~input_o\,
	datad => \B[1]~input_o\,
	combout => \D5_in|Sel_SR|D5[31]~87_combout\);

-- Location: LCCOMB_X72_Y70_N4
\D5_in|Sel_SR|D5[31]~88\ : cycloneiv_lcell_comb
-- Equation(s):
-- \D5_in|Sel_SR|D5[31]~88_combout\ = (\A[31]~input_o\ & ((\D5_in|Sel_SR|D5[31]~87_combout\) # ((\D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~86_combout\ & \D1_in|SLL|ShiftLeft0~24_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \D5_in|Sel_SR|D5[31]~87_combout\,
	datab => \D5_in|Sel_SR|SRL_out|comb_3|ShiftRight0~86_combout\,
	datac => \D1_in|SLL|ShiftLeft0~24_combout\,
	datad => \A[31]~input_o\,
	combout => \D5_in|Sel_SR|D5[31]~88_combout\);

-- Location: LCCOMB_X76_Y67_N12
\D6_in|or9|S[0]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \D6_in|or9|S\(0) = (\B[0]~input_o\) # (\A[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[0]~input_o\,
	datad => \A[0]~input_o\,
	combout => \D6_in|or9|S\(0));

-- Location: LCCOMB_X79_Y70_N4
\D6_in|or9|S[1]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \D6_in|or9|S\(1) = (\B[1]~input_o\) # (\A[1]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B[1]~input_o\,
	datac => \A[1]~input_o\,
	combout => \D6_in|or9|S\(1));

-- Location: LCCOMB_X79_Y70_N30
\D6_in|or9|S[2]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \D6_in|or9|S\(2) = (\B[2]~input_o\) # (\A[2]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[2]~input_o\,
	datac => \A[2]~input_o\,
	combout => \D6_in|or9|S\(2));

-- Location: LCCOMB_X71_Y87_N12
\D6_in|or9|S[3]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \D6_in|or9|S\(3) = (\B[3]~input_o\) # (\A[3]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \B[3]~input_o\,
	datad => \A[3]~input_o\,
	combout => \D6_in|or9|S\(3));

-- Location: LCCOMB_X71_Y87_N14
\D6_in|or9|S[4]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \D6_in|or9|S\(4) = (\B[4]~input_o\) # (\A[4]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B[4]~input_o\,
	datac => \A[4]~input_o\,
	combout => \D6_in|or9|S\(4));

-- Location: LCCOMB_X108_Y90_N8
\D6_in|or9|S[5]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \D6_in|or9|S\(5) = (\A[5]~input_o\) # (\B[5]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \A[5]~input_o\,
	datac => \B[5]~input_o\,
	combout => \D6_in|or9|S\(5));

-- Location: LCCOMB_X108_Y90_N18
\D6_in|or9|S[6]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \D6_in|or9|S\(6) = (\B[6]~input_o\) # (\A[6]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[6]~input_o\,
	datac => \A[6]~input_o\,
	combout => \D6_in|or9|S\(6));

-- Location: LCCOMB_X108_Y90_N28
\D6_in|or9|S[7]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \D6_in|or9|S\(7) = (\A[7]~input_o\) # (\B[7]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \A[7]~input_o\,
	datad => \B[7]~input_o\,
	combout => \D6_in|or9|S\(7));

-- Location: LCCOMB_X116_Y81_N12
\D6_in|or9|S[8]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \D6_in|or9|S\(8) = (\B[8]~input_o\) # (\A[8]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B[8]~input_o\,
	datac => \A[8]~input_o\,
	combout => \D6_in|or9|S\(8));

-- Location: LCCOMB_X79_Y70_N24
\D6_in|or9|S[9]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \D6_in|or9|S\(9) = (\A[9]~input_o\) # (\B[9]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \A[9]~input_o\,
	datad => \B[9]~input_o\,
	combout => \D6_in|or9|S\(9));

-- Location: LCCOMB_X108_Y90_N6
\D6_in|or9|S[10]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \D6_in|or9|S\(10) = (\A[10]~input_o\) # (\B[10]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \A[10]~input_o\,
	datad => \B[10]~input_o\,
	combout => \D6_in|or9|S\(10));

-- Location: LCCOMB_X116_Y26_N0
\D6_in|or9|S[11]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \D6_in|or9|S\(11) = (\B[11]~input_o\) # (\A[11]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[11]~input_o\,
	datac => \A[11]~input_o\,
	combout => \D6_in|or9|S\(11));

-- Location: LCCOMB_X116_Y26_N26
\D6_in|or9|S[12]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \D6_in|or9|S\(12) = (\A[12]~input_o\) # (\B[12]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \A[12]~input_o\,
	datac => \B[12]~input_o\,
	combout => \D6_in|or9|S\(12));

-- Location: LCCOMB_X116_Y26_N12
\D6_in|or9|S[13]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \D6_in|or9|S\(13) = (\A[13]~input_o\) # (\B[13]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \A[13]~input_o\,
	datad => \B[13]~input_o\,
	combout => \D6_in|or9|S\(13));

-- Location: LCCOMB_X25_Y90_N8
\D6_in|or9|S[14]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \D6_in|or9|S\(14) = (\A[14]~input_o\) # (\B[14]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \A[14]~input_o\,
	datad => \B[14]~input_o\,
	combout => \D6_in|or9|S\(14));

-- Location: LCCOMB_X25_Y90_N26
\D6_in|or9|S[15]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \D6_in|or9|S\(15) = (\B[15]~input_o\) # (\A[15]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[15]~input_o\,
	datad => \A[15]~input_o\,
	combout => \D6_in|or9|S\(15));

-- Location: LCCOMB_X25_Y90_N20
\D6_in|or9|S[16]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \D6_in|or9|S\(16) = (\A[16]~input_o\) # (\B[16]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \A[16]~input_o\,
	datac => \B[16]~input_o\,
	combout => \D6_in|or9|S\(16));

-- Location: LCCOMB_X116_Y60_N16
\D6_in|or9|S[17]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \D6_in|or9|S\(17) = (\B[17]~input_o\) # (\A[17]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B[17]~input_o\,
	datad => \A[17]~input_o\,
	combout => \D6_in|or9|S\(17));

-- Location: LCCOMB_X116_Y60_N26
\D6_in|or9|S[18]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \D6_in|or9|S\(18) = (\B[18]~input_o\) # (\A[18]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[18]~input_o\,
	datad => \A[18]~input_o\,
	combout => \D6_in|or9|S\(18));

-- Location: LCCOMB_X116_Y60_N4
\D6_in|or9|S[19]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \D6_in|or9|S\(19) = (\A[19]~input_o\) # (\B[19]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \A[19]~input_o\,
	datad => \B[19]~input_o\,
	combout => \D6_in|or9|S\(19));

-- Location: LCCOMB_X116_Y43_N24
\D6_in|or9|S[20]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \D6_in|or9|S\(20) = (\A[20]~input_o\) # (\B[20]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \A[20]~input_o\,
	datad => \B[20]~input_o\,
	combout => \D6_in|or9|S\(20));

-- Location: LCCOMB_X116_Y43_N18
\D6_in|or9|S[21]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \D6_in|or9|S\(21) = (\B[21]~input_o\) # (\A[21]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B[21]~input_o\,
	datad => \A[21]~input_o\,
	combout => \D6_in|or9|S\(21));

-- Location: LCCOMB_X116_Y43_N12
\D6_in|or9|S[22]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \D6_in|or9|S\(22) = (\B[22]~input_o\) # (\A[22]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \B[22]~input_o\,
	datad => \A[22]~input_o\,
	combout => \D6_in|or9|S\(22));

-- Location: LCCOMB_X116_Y10_N20
\D6_in|or9|S[23]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \D6_in|or9|S\(23) = (\B[23]~input_o\) # (\A[23]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[23]~input_o\,
	datad => \A[23]~input_o\,
	combout => \D6_in|or9|S\(23));

-- Location: LCCOMB_X116_Y10_N6
\D6_in|or9|S[24]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \D6_in|or9|S\(24) = (\A[24]~input_o\) # (\B[24]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[24]~input_o\,
	datac => \B[24]~input_o\,
	combout => \D6_in|or9|S\(24));

-- Location: LCCOMB_X77_Y67_N16
\D6_in|or9|S[25]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \D6_in|or9|S\(25) = (\A[25]~input_o\) # (\B[25]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \A[25]~input_o\,
	datad => \B[25]~input_o\,
	combout => \D6_in|or9|S\(25));

-- Location: LCCOMB_X116_Y10_N0
\D6_in|or9|S[26]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \D6_in|or9|S\(26) = (\A[26]~input_o\) # (\B[26]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \A[26]~input_o\,
	datad => \B[26]~input_o\,
	combout => \D6_in|or9|S\(26));

-- Location: LCCOMB_X116_Y43_N22
\D6_in|or9|S[27]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \D6_in|or9|S\(27) = (\B[27]~input_o\) # (\A[27]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B[27]~input_o\,
	datac => \A[27]~input_o\,
	combout => \D6_in|or9|S\(27));

-- Location: LCCOMB_X116_Y60_N30
\D6_in|or9|S[28]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \D6_in|or9|S\(28) = (\A[28]~input_o\) # (\B[28]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \A[28]~input_o\,
	datad => \B[28]~input_o\,
	combout => \D6_in|or9|S\(28));

-- Location: LCCOMB_X25_Y90_N14
\D6_in|or9|S[29]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \D6_in|or9|S\(29) = (\B[29]~input_o\) # (\A[29]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B[29]~input_o\,
	datac => \A[29]~input_o\,
	combout => \D6_in|or9|S\(29));

-- Location: LCCOMB_X116_Y26_N30
\D6_in|or9|S[30]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \D6_in|or9|S\(30) = (\B[30]~input_o\) # (\A[30]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \B[30]~input_o\,
	datad => \A[30]~input_o\,
	combout => \D6_in|or9|S\(30));

-- Location: LCCOMB_X76_Y69_N14
\D6_in|or9|S[31]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \D6_in|or9|S\(31) = (\A[31]~input_o\) # (\B[31]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[31]~input_o\,
	datac => \B[31]~input_o\,
	combout => \D6_in|or9|S\(31));

-- Location: LCCOMB_X76_Y67_N30
\D7_in|AND_9|S[0]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \D7_in|AND_9|S\(0) = (\B[0]~input_o\ & \A[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[0]~input_o\,
	datad => \A[0]~input_o\,
	combout => \D7_in|AND_9|S\(0));

-- Location: LCCOMB_X79_Y70_N2
\D7_in|AND_9|S[1]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \D7_in|AND_9|S\(1) = (\B[1]~input_o\ & \A[1]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B[1]~input_o\,
	datac => \A[1]~input_o\,
	combout => \D7_in|AND_9|S\(1));

-- Location: LCCOMB_X79_Y70_N20
\D7_in|AND_9|S[2]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \D7_in|AND_9|S\(2) = (\B[2]~input_o\ & \A[2]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[2]~input_o\,
	datac => \A[2]~input_o\,
	combout => \D7_in|AND_9|S\(2));

-- Location: LCCOMB_X71_Y87_N16
\D7_in|AND_9|S[3]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \D7_in|AND_9|S\(3) = (\B[3]~input_o\ & \A[3]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \B[3]~input_o\,
	datad => \A[3]~input_o\,
	combout => \D7_in|AND_9|S\(3));

-- Location: LCCOMB_X71_Y87_N18
\D7_in|AND_9|S[4]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \D7_in|AND_9|S\(4) = (\B[4]~input_o\ & \A[4]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B[4]~input_o\,
	datac => \A[4]~input_o\,
	combout => \D7_in|AND_9|S\(4));

-- Location: LCCOMB_X108_Y90_N24
\D7_in|AND_9|S[5]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \D7_in|AND_9|S\(5) = (\A[5]~input_o\ & \B[5]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \A[5]~input_o\,
	datac => \B[5]~input_o\,
	combout => \D7_in|AND_9|S\(5));

-- Location: LCCOMB_X108_Y90_N2
\D7_in|AND_9|S[6]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \D7_in|AND_9|S\(6) = (\B[6]~input_o\ & \A[6]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[6]~input_o\,
	datac => \A[6]~input_o\,
	combout => \D7_in|AND_9|S\(6));

-- Location: LCCOMB_X108_Y90_N20
\D7_in|AND_9|S[7]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \D7_in|AND_9|S\(7) = (\A[7]~input_o\ & \B[7]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \A[7]~input_o\,
	datad => \B[7]~input_o\,
	combout => \D7_in|AND_9|S\(7));

-- Location: LCCOMB_X116_Y81_N14
\D7_in|AND_9|S[8]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \D7_in|AND_9|S\(8) = (\B[8]~input_o\ & \A[8]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B[8]~input_o\,
	datac => \A[8]~input_o\,
	combout => \D7_in|AND_9|S\(8));

-- Location: LCCOMB_X79_Y70_N14
\D7_in|AND_9|S[9]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \D7_in|AND_9|S\(9) = (\A[9]~input_o\ & \B[9]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \A[9]~input_o\,
	datad => \B[9]~input_o\,
	combout => \D7_in|AND_9|S\(9));

-- Location: LCCOMB_X108_Y90_N14
\D7_in|AND_9|S[10]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \D7_in|AND_9|S\(10) = (\A[10]~input_o\ & \B[10]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \A[10]~input_o\,
	datad => \B[10]~input_o\,
	combout => \D7_in|AND_9|S\(10));

-- Location: LCCOMB_X116_Y26_N24
\D7_in|AND_9|S[11]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \D7_in|AND_9|S\(11) = (\B[11]~input_o\ & \A[11]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[11]~input_o\,
	datac => \A[11]~input_o\,
	combout => \D7_in|AND_9|S\(11));

-- Location: LCCOMB_X116_Y26_N10
\D7_in|AND_9|S[12]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \D7_in|AND_9|S\(12) = (\A[12]~input_o\ & \B[12]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \A[12]~input_o\,
	datac => \B[12]~input_o\,
	combout => \D7_in|AND_9|S\(12));

-- Location: LCCOMB_X116_Y26_N28
\D7_in|AND_9|S[13]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \D7_in|AND_9|S\(13) = (\A[13]~input_o\ & \B[13]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \A[13]~input_o\,
	datad => \B[13]~input_o\,
	combout => \D7_in|AND_9|S\(13));

-- Location: LCCOMB_X25_Y90_N0
\D7_in|AND_9|S[14]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \D7_in|AND_9|S\(14) = (\A[14]~input_o\ & \B[14]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \A[14]~input_o\,
	datad => \B[14]~input_o\,
	combout => \D7_in|AND_9|S\(14));

-- Location: LCCOMB_X25_Y90_N18
\D7_in|AND_9|S[15]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \D7_in|AND_9|S\(15) = (\B[15]~input_o\ & \A[15]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[15]~input_o\,
	datad => \A[15]~input_o\,
	combout => \D7_in|AND_9|S\(15));

-- Location: LCCOMB_X25_Y90_N4
\D7_in|AND_9|S[16]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \D7_in|AND_9|S\(16) = (\A[16]~input_o\ & \B[16]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \A[16]~input_o\,
	datac => \B[16]~input_o\,
	combout => \D7_in|AND_9|S\(16));

-- Location: LCCOMB_X116_Y60_N0
\D7_in|AND_9|S[17]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \D7_in|AND_9|S\(17) = (\B[17]~input_o\ & \A[17]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B[17]~input_o\,
	datad => \A[17]~input_o\,
	combout => \D7_in|AND_9|S\(17));

-- Location: LCCOMB_X116_Y60_N10
\D7_in|AND_9|S[18]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \D7_in|AND_9|S\(18) = (\B[18]~input_o\ & \A[18]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[18]~input_o\,
	datad => \A[18]~input_o\,
	combout => \D7_in|AND_9|S\(18));

-- Location: LCCOMB_X116_Y60_N28
\D7_in|AND_9|S[19]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \D7_in|AND_9|S\(19) = (\A[19]~input_o\ & \B[19]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \A[19]~input_o\,
	datad => \B[19]~input_o\,
	combout => \D7_in|AND_9|S\(19));

-- Location: LCCOMB_X116_Y43_N16
\D7_in|AND_9|S[20]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \D7_in|AND_9|S\(20) = (\A[20]~input_o\ & \B[20]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \A[20]~input_o\,
	datad => \B[20]~input_o\,
	combout => \D7_in|AND_9|S\(20));

-- Location: LCCOMB_X116_Y43_N26
\D7_in|AND_9|S[21]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \D7_in|AND_9|S\(21) = (\B[21]~input_o\ & \A[21]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B[21]~input_o\,
	datad => \A[21]~input_o\,
	combout => \D7_in|AND_9|S\(21));

-- Location: LCCOMB_X116_Y43_N4
\D7_in|AND_9|S[22]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \D7_in|AND_9|S\(22) = (\B[22]~input_o\ & \A[22]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \B[22]~input_o\,
	datad => \A[22]~input_o\,
	combout => \D7_in|AND_9|S\(22));

-- Location: LCCOMB_X116_Y10_N26
\D7_in|AND_9|S[23]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \D7_in|AND_9|S\(23) = (\B[23]~input_o\ & \A[23]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[23]~input_o\,
	datad => \A[23]~input_o\,
	combout => \D7_in|AND_9|S\(23));

-- Location: LCCOMB_X116_Y10_N12
\D7_in|AND_9|S[24]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \D7_in|AND_9|S\(24) = (\A[24]~input_o\ & \B[24]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[24]~input_o\,
	datac => \B[24]~input_o\,
	combout => \D7_in|AND_9|S\(24));

-- Location: LCCOMB_X77_Y67_N10
\D7_in|AND_9|S[25]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \D7_in|AND_9|S\(25) = (\A[25]~input_o\ & \B[25]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \A[25]~input_o\,
	datad => \B[25]~input_o\,
	combout => \D7_in|AND_9|S\(25));

-- Location: LCCOMB_X116_Y10_N14
\D7_in|AND_9|S[26]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \D7_in|AND_9|S\(26) = (\A[26]~input_o\ & \B[26]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \A[26]~input_o\,
	datad => \B[26]~input_o\,
	combout => \D7_in|AND_9|S\(26));

-- Location: LCCOMB_X116_Y43_N14
\D7_in|AND_9|S[27]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \D7_in|AND_9|S\(27) = (\B[27]~input_o\ & \A[27]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B[27]~input_o\,
	datac => \A[27]~input_o\,
	combout => \D7_in|AND_9|S\(27));

-- Location: LCCOMB_X116_Y60_N22
\D7_in|AND_9|S[28]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \D7_in|AND_9|S\(28) = (\A[28]~input_o\ & \B[28]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \A[28]~input_o\,
	datad => \B[28]~input_o\,
	combout => \D7_in|AND_9|S\(28));

-- Location: LCCOMB_X25_Y90_N22
\D7_in|AND_9|S[29]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \D7_in|AND_9|S\(29) = (\B[29]~input_o\ & \A[29]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B[29]~input_o\,
	datac => \A[29]~input_o\,
	combout => \D7_in|AND_9|S\(29));

-- Location: LCCOMB_X116_Y26_N14
\D7_in|AND_9|S[30]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \D7_in|AND_9|S\(30) = (\B[30]~input_o\ & \A[30]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \B[30]~input_o\,
	datad => \A[30]~input_o\,
	combout => \D7_in|AND_9|S\(30));

-- Location: LCCOMB_X76_Y69_N24
\D7_in|AND_9|S[31]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \D7_in|AND_9|S\(31) = (\A[31]~input_o\ & \B[31]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[31]~input_o\,
	datac => \B[31]~input_o\,
	combout => \D7_in|AND_9|S\(31));

-- Location: IOIBUF_X41_Y0_N22
\Sel[0]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Sel(0),
	o => \Sel[0]~input_o\);

-- Location: IOIBUF_X48_Y0_N8
\Sel[1]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Sel(1),
	o => \Sel[1]~input_o\);

-- Location: IOIBUF_X5_Y0_N15
\Sel[2]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Sel(2),
	o => \Sel[2]~input_o\);

ww_D0(0) <= \D0[0]~output_o\;

ww_D0(1) <= \D0[1]~output_o\;

ww_D0(2) <= \D0[2]~output_o\;

ww_D0(3) <= \D0[3]~output_o\;

ww_D0(4) <= \D0[4]~output_o\;

ww_D0(5) <= \D0[5]~output_o\;

ww_D0(6) <= \D0[6]~output_o\;

ww_D0(7) <= \D0[7]~output_o\;

ww_D0(8) <= \D0[8]~output_o\;

ww_D0(9) <= \D0[9]~output_o\;

ww_D0(10) <= \D0[10]~output_o\;

ww_D0(11) <= \D0[11]~output_o\;

ww_D0(12) <= \D0[12]~output_o\;

ww_D0(13) <= \D0[13]~output_o\;

ww_D0(14) <= \D0[14]~output_o\;

ww_D0(15) <= \D0[15]~output_o\;

ww_D0(16) <= \D0[16]~output_o\;

ww_D0(17) <= \D0[17]~output_o\;

ww_D0(18) <= \D0[18]~output_o\;

ww_D0(19) <= \D0[19]~output_o\;

ww_D0(20) <= \D0[20]~output_o\;

ww_D0(21) <= \D0[21]~output_o\;

ww_D0(22) <= \D0[22]~output_o\;

ww_D0(23) <= \D0[23]~output_o\;

ww_D0(24) <= \D0[24]~output_o\;

ww_D0(25) <= \D0[25]~output_o\;

ww_D0(26) <= \D0[26]~output_o\;

ww_D0(27) <= \D0[27]~output_o\;

ww_D0(28) <= \D0[28]~output_o\;

ww_D0(29) <= \D0[29]~output_o\;

ww_D0(30) <= \D0[30]~output_o\;

ww_D0(31) <= \D0[31]~output_o\;

ww_D1(0) <= \D1[0]~output_o\;

ww_D1(1) <= \D1[1]~output_o\;

ww_D1(2) <= \D1[2]~output_o\;

ww_D1(3) <= \D1[3]~output_o\;

ww_D1(4) <= \D1[4]~output_o\;

ww_D1(5) <= \D1[5]~output_o\;

ww_D1(6) <= \D1[6]~output_o\;

ww_D1(7) <= \D1[7]~output_o\;

ww_D1(8) <= \D1[8]~output_o\;

ww_D1(9) <= \D1[9]~output_o\;

ww_D1(10) <= \D1[10]~output_o\;

ww_D1(11) <= \D1[11]~output_o\;

ww_D1(12) <= \D1[12]~output_o\;

ww_D1(13) <= \D1[13]~output_o\;

ww_D1(14) <= \D1[14]~output_o\;

ww_D1(15) <= \D1[15]~output_o\;

ww_D1(16) <= \D1[16]~output_o\;

ww_D1(17) <= \D1[17]~output_o\;

ww_D1(18) <= \D1[18]~output_o\;

ww_D1(19) <= \D1[19]~output_o\;

ww_D1(20) <= \D1[20]~output_o\;

ww_D1(21) <= \D1[21]~output_o\;

ww_D1(22) <= \D1[22]~output_o\;

ww_D1(23) <= \D1[23]~output_o\;

ww_D1(24) <= \D1[24]~output_o\;

ww_D1(25) <= \D1[25]~output_o\;

ww_D1(26) <= \D1[26]~output_o\;

ww_D1(27) <= \D1[27]~output_o\;

ww_D1(28) <= \D1[28]~output_o\;

ww_D1(29) <= \D1[29]~output_o\;

ww_D1(30) <= \D1[30]~output_o\;

ww_D1(31) <= \D1[31]~output_o\;

ww_D2(0) <= \D2[0]~output_o\;

ww_D2(1) <= \D2[1]~output_o\;

ww_D2(2) <= \D2[2]~output_o\;

ww_D2(3) <= \D2[3]~output_o\;

ww_D2(4) <= \D2[4]~output_o\;

ww_D2(5) <= \D2[5]~output_o\;

ww_D2(6) <= \D2[6]~output_o\;

ww_D2(7) <= \D2[7]~output_o\;

ww_D2(8) <= \D2[8]~output_o\;

ww_D2(9) <= \D2[9]~output_o\;

ww_D2(10) <= \D2[10]~output_o\;

ww_D2(11) <= \D2[11]~output_o\;

ww_D2(12) <= \D2[12]~output_o\;

ww_D2(13) <= \D2[13]~output_o\;

ww_D2(14) <= \D2[14]~output_o\;

ww_D2(15) <= \D2[15]~output_o\;

ww_D2(16) <= \D2[16]~output_o\;

ww_D2(17) <= \D2[17]~output_o\;

ww_D2(18) <= \D2[18]~output_o\;

ww_D2(19) <= \D2[19]~output_o\;

ww_D2(20) <= \D2[20]~output_o\;

ww_D2(21) <= \D2[21]~output_o\;

ww_D2(22) <= \D2[22]~output_o\;

ww_D2(23) <= \D2[23]~output_o\;

ww_D2(24) <= \D2[24]~output_o\;

ww_D2(25) <= \D2[25]~output_o\;

ww_D2(26) <= \D2[26]~output_o\;

ww_D2(27) <= \D2[27]~output_o\;

ww_D2(28) <= \D2[28]~output_o\;

ww_D2(29) <= \D2[29]~output_o\;

ww_D2(30) <= \D2[30]~output_o\;

ww_D2(31) <= \D2[31]~output_o\;

ww_D3(0) <= \D3[0]~output_o\;

ww_D3(1) <= \D3[1]~output_o\;

ww_D3(2) <= \D3[2]~output_o\;

ww_D3(3) <= \D3[3]~output_o\;

ww_D3(4) <= \D3[4]~output_o\;

ww_D3(5) <= \D3[5]~output_o\;

ww_D3(6) <= \D3[6]~output_o\;

ww_D3(7) <= \D3[7]~output_o\;

ww_D3(8) <= \D3[8]~output_o\;

ww_D3(9) <= \D3[9]~output_o\;

ww_D3(10) <= \D3[10]~output_o\;

ww_D3(11) <= \D3[11]~output_o\;

ww_D3(12) <= \D3[12]~output_o\;

ww_D3(13) <= \D3[13]~output_o\;

ww_D3(14) <= \D3[14]~output_o\;

ww_D3(15) <= \D3[15]~output_o\;

ww_D3(16) <= \D3[16]~output_o\;

ww_D3(17) <= \D3[17]~output_o\;

ww_D3(18) <= \D3[18]~output_o\;

ww_D3(19) <= \D3[19]~output_o\;

ww_D3(20) <= \D3[20]~output_o\;

ww_D3(21) <= \D3[21]~output_o\;

ww_D3(22) <= \D3[22]~output_o\;

ww_D3(23) <= \D3[23]~output_o\;

ww_D3(24) <= \D3[24]~output_o\;

ww_D3(25) <= \D3[25]~output_o\;

ww_D3(26) <= \D3[26]~output_o\;

ww_D3(27) <= \D3[27]~output_o\;

ww_D3(28) <= \D3[28]~output_o\;

ww_D3(29) <= \D3[29]~output_o\;

ww_D3(30) <= \D3[30]~output_o\;

ww_D3(31) <= \D3[31]~output_o\;

ww_D4(0) <= \D4[0]~output_o\;

ww_D4(1) <= \D4[1]~output_o\;

ww_D4(2) <= \D4[2]~output_o\;

ww_D4(3) <= \D4[3]~output_o\;

ww_D4(4) <= \D4[4]~output_o\;

ww_D4(5) <= \D4[5]~output_o\;

ww_D4(6) <= \D4[6]~output_o\;

ww_D4(7) <= \D4[7]~output_o\;

ww_D4(8) <= \D4[8]~output_o\;

ww_D4(9) <= \D4[9]~output_o\;

ww_D4(10) <= \D4[10]~output_o\;

ww_D4(11) <= \D4[11]~output_o\;

ww_D4(12) <= \D4[12]~output_o\;

ww_D4(13) <= \D4[13]~output_o\;

ww_D4(14) <= \D4[14]~output_o\;

ww_D4(15) <= \D4[15]~output_o\;

ww_D4(16) <= \D4[16]~output_o\;

ww_D4(17) <= \D4[17]~output_o\;

ww_D4(18) <= \D4[18]~output_o\;

ww_D4(19) <= \D4[19]~output_o\;

ww_D4(20) <= \D4[20]~output_o\;

ww_D4(21) <= \D4[21]~output_o\;

ww_D4(22) <= \D4[22]~output_o\;

ww_D4(23) <= \D4[23]~output_o\;

ww_D4(24) <= \D4[24]~output_o\;

ww_D4(25) <= \D4[25]~output_o\;

ww_D4(26) <= \D4[26]~output_o\;

ww_D4(27) <= \D4[27]~output_o\;

ww_D4(28) <= \D4[28]~output_o\;

ww_D4(29) <= \D4[29]~output_o\;

ww_D4(30) <= \D4[30]~output_o\;

ww_D4(31) <= \D4[31]~output_o\;

ww_D5(0) <= \D5[0]~output_o\;

ww_D5(1) <= \D5[1]~output_o\;

ww_D5(2) <= \D5[2]~output_o\;

ww_D5(3) <= \D5[3]~output_o\;

ww_D5(4) <= \D5[4]~output_o\;

ww_D5(5) <= \D5[5]~output_o\;

ww_D5(6) <= \D5[6]~output_o\;

ww_D5(7) <= \D5[7]~output_o\;

ww_D5(8) <= \D5[8]~output_o\;

ww_D5(9) <= \D5[9]~output_o\;

ww_D5(10) <= \D5[10]~output_o\;

ww_D5(11) <= \D5[11]~output_o\;

ww_D5(12) <= \D5[12]~output_o\;

ww_D5(13) <= \D5[13]~output_o\;

ww_D5(14) <= \D5[14]~output_o\;

ww_D5(15) <= \D5[15]~output_o\;

ww_D5(16) <= \D5[16]~output_o\;

ww_D5(17) <= \D5[17]~output_o\;

ww_D5(18) <= \D5[18]~output_o\;

ww_D5(19) <= \D5[19]~output_o\;

ww_D5(20) <= \D5[20]~output_o\;

ww_D5(21) <= \D5[21]~output_o\;

ww_D5(22) <= \D5[22]~output_o\;

ww_D5(23) <= \D5[23]~output_o\;

ww_D5(24) <= \D5[24]~output_o\;

ww_D5(25) <= \D5[25]~output_o\;

ww_D5(26) <= \D5[26]~output_o\;

ww_D5(27) <= \D5[27]~output_o\;

ww_D5(28) <= \D5[28]~output_o\;

ww_D5(29) <= \D5[29]~output_o\;

ww_D5(30) <= \D5[30]~output_o\;

ww_D5(31) <= \D5[31]~output_o\;

ww_D6(0) <= \D6[0]~output_o\;

ww_D6(1) <= \D6[1]~output_o\;

ww_D6(2) <= \D6[2]~output_o\;

ww_D6(3) <= \D6[3]~output_o\;

ww_D6(4) <= \D6[4]~output_o\;

ww_D6(5) <= \D6[5]~output_o\;

ww_D6(6) <= \D6[6]~output_o\;

ww_D6(7) <= \D6[7]~output_o\;

ww_D6(8) <= \D6[8]~output_o\;

ww_D6(9) <= \D6[9]~output_o\;

ww_D6(10) <= \D6[10]~output_o\;

ww_D6(11) <= \D6[11]~output_o\;

ww_D6(12) <= \D6[12]~output_o\;

ww_D6(13) <= \D6[13]~output_o\;

ww_D6(14) <= \D6[14]~output_o\;

ww_D6(15) <= \D6[15]~output_o\;

ww_D6(16) <= \D6[16]~output_o\;

ww_D6(17) <= \D6[17]~output_o\;

ww_D6(18) <= \D6[18]~output_o\;

ww_D6(19) <= \D6[19]~output_o\;

ww_D6(20) <= \D6[20]~output_o\;

ww_D6(21) <= \D6[21]~output_o\;

ww_D6(22) <= \D6[22]~output_o\;

ww_D6(23) <= \D6[23]~output_o\;

ww_D6(24) <= \D6[24]~output_o\;

ww_D6(25) <= \D6[25]~output_o\;

ww_D6(26) <= \D6[26]~output_o\;

ww_D6(27) <= \D6[27]~output_o\;

ww_D6(28) <= \D6[28]~output_o\;

ww_D6(29) <= \D6[29]~output_o\;

ww_D6(30) <= \D6[30]~output_o\;

ww_D6(31) <= \D6[31]~output_o\;

ww_D7(0) <= \D7[0]~output_o\;

ww_D7(1) <= \D7[1]~output_o\;

ww_D7(2) <= \D7[2]~output_o\;

ww_D7(3) <= \D7[3]~output_o\;

ww_D7(4) <= \D7[4]~output_o\;

ww_D7(5) <= \D7[5]~output_o\;

ww_D7(6) <= \D7[6]~output_o\;

ww_D7(7) <= \D7[7]~output_o\;

ww_D7(8) <= \D7[8]~output_o\;

ww_D7(9) <= \D7[9]~output_o\;

ww_D7(10) <= \D7[10]~output_o\;

ww_D7(11) <= \D7[11]~output_o\;

ww_D7(12) <= \D7[12]~output_o\;

ww_D7(13) <= \D7[13]~output_o\;

ww_D7(14) <= \D7[14]~output_o\;

ww_D7(15) <= \D7[15]~output_o\;

ww_D7(16) <= \D7[16]~output_o\;

ww_D7(17) <= \D7[17]~output_o\;

ww_D7(18) <= \D7[18]~output_o\;

ww_D7(19) <= \D7[19]~output_o\;

ww_D7(20) <= \D7[20]~output_o\;

ww_D7(21) <= \D7[21]~output_o\;

ww_D7(22) <= \D7[22]~output_o\;

ww_D7(23) <= \D7[23]~output_o\;

ww_D7(24) <= \D7[24]~output_o\;

ww_D7(25) <= \D7[25]~output_o\;

ww_D7(26) <= \D7[26]~output_o\;

ww_D7(27) <= \D7[27]~output_o\;

ww_D7(28) <= \D7[28]~output_o\;

ww_D7(29) <= \D7[29]~output_o\;

ww_D7(30) <= \D7[30]~output_o\;

ww_D7(31) <= \D7[31]~output_o\;
END structure;


