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

-- DATE "05/31/2024 02:18:37"

-- 
-- Device: Altera EP4CGX30CF23C6 Package FBGA484
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY ALTERA;
LIBRARY CYCLONEIV;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE CYCLONEIV.CYCLONEIV_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	RV32 IS
    PORT (
	rst : IN std_logic;
	clk : IN std_logic;
	Stop_en : IN std_logic;
	ketqua : BUFFER std_logic_vector(31 DOWNTO 0);
	cur_pcout : BUFFER std_logic_vector(31 DOWNTO 0);
	imm_out : BUFFER std_logic_vector(11 DOWNTO 0);
	rd_adr : BUFFER std_logic_vector(4 DOWNTO 0);
	rddata : BUFFER std_logic_vector(31 DOWNTO 0);
	A_Alu : BUFFER std_logic_vector(31 DOWNTO 0);
	B_Alu : BUFFER std_logic_vector(31 DOWNTO 0);
	wbs : BUFFER std_logic_vector(1 DOWNTO 0);
	rs1_out : BUFFER std_logic_vector(4 DOWNTO 0);
	Reg_WEn : BUFFER std_logic
	);
END RV32;

-- Design Ports Information
-- ketqua[0]	=>  Location: PIN_C16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ketqua[1]	=>  Location: PIN_W15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ketqua[2]	=>  Location: PIN_G12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ketqua[3]	=>  Location: PIN_A4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ketqua[4]	=>  Location: PIN_W16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ketqua[5]	=>  Location: PIN_T17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ketqua[6]	=>  Location: PIN_H12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ketqua[7]	=>  Location: PIN_Y20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ketqua[8]	=>  Location: PIN_J14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ketqua[9]	=>  Location: PIN_B10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ketqua[10]	=>  Location: PIN_W12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ketqua[11]	=>  Location: PIN_A14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ketqua[12]	=>  Location: PIN_U18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ketqua[13]	=>  Location: PIN_C18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ketqua[14]	=>  Location: PIN_AB11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ketqua[15]	=>  Location: PIN_AB15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ketqua[16]	=>  Location: PIN_D13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ketqua[17]	=>  Location: PIN_T14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ketqua[18]	=>  Location: PIN_W14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ketqua[19]	=>  Location: PIN_AB10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ketqua[20]	=>  Location: PIN_A5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ketqua[21]	=>  Location: PIN_J12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ketqua[22]	=>  Location: PIN_A16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ketqua[23]	=>  Location: PIN_A10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ketqua[24]	=>  Location: PIN_W22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ketqua[25]	=>  Location: PIN_D17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ketqua[26]	=>  Location: PIN_A17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ketqua[27]	=>  Location: PIN_W20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ketqua[28]	=>  Location: PIN_K12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ketqua[29]	=>  Location: PIN_AA13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ketqua[30]	=>  Location: PIN_Y12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ketqua[31]	=>  Location: PIN_A12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- cur_pcout[0]	=>  Location: PIN_H8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- cur_pcout[1]	=>  Location: PIN_D9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- cur_pcout[2]	=>  Location: PIN_H20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- cur_pcout[3]	=>  Location: PIN_G21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- cur_pcout[4]	=>  Location: PIN_G20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- cur_pcout[5]	=>  Location: PIN_E20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- cur_pcout[6]	=>  Location: PIN_K20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- cur_pcout[7]	=>  Location: PIN_K19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- cur_pcout[8]	=>  Location: PIN_K22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- cur_pcout[9]	=>  Location: PIN_E22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- cur_pcout[10]	=>  Location: PIN_J16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- cur_pcout[11]	=>  Location: PIN_F22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- cur_pcout[12]	=>  Location: PIN_K14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- cur_pcout[13]	=>  Location: PIN_J15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- cur_pcout[14]	=>  Location: PIN_R22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- cur_pcout[15]	=>  Location: PIN_H15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- cur_pcout[16]	=>  Location: PIN_K17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- cur_pcout[17]	=>  Location: PIN_B19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- cur_pcout[18]	=>  Location: PIN_J19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- cur_pcout[19]	=>  Location: PIN_N20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- cur_pcout[20]	=>  Location: PIN_N22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- cur_pcout[21]	=>  Location: PIN_N19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- cur_pcout[22]	=>  Location: PIN_M19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- cur_pcout[23]	=>  Location: PIN_M17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- cur_pcout[24]	=>  Location: PIN_H21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- cur_pcout[25]	=>  Location: PIN_L14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- cur_pcout[26]	=>  Location: PIN_L15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- cur_pcout[27]	=>  Location: PIN_J21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- cur_pcout[28]	=>  Location: PIN_M14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- cur_pcout[29]	=>  Location: PIN_J20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- cur_pcout[30]	=>  Location: PIN_F20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- cur_pcout[31]	=>  Location: PIN_N13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- imm_out[0]	=>  Location: PIN_A22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- imm_out[1]	=>  Location: PIN_H17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- imm_out[2]	=>  Location: PIN_H16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- imm_out[3]	=>  Location: PIN_P22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- imm_out[4]	=>  Location: PIN_Y13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- imm_out[5]	=>  Location: PIN_R19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- imm_out[6]	=>  Location: PIN_T20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- imm_out[7]	=>  Location: PIN_P10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- imm_out[8]	=>  Location: PIN_V13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- imm_out[9]	=>  Location: PIN_AA9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- imm_out[10]	=>  Location: PIN_K13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- imm_out[11]	=>  Location: PIN_D21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rd_adr[0]	=>  Location: PIN_A21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rd_adr[1]	=>  Location: PIN_B22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rd_adr[2]	=>  Location: PIN_G19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rd_adr[3]	=>  Location: PIN_AA7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rd_adr[4]	=>  Location: PIN_C4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rddata[0]	=>  Location: PIN_Y18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rddata[1]	=>  Location: PIN_Y19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rddata[2]	=>  Location: PIN_AB18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rddata[3]	=>  Location: PIN_AB14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rddata[4]	=>  Location: PIN_R14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rddata[5]	=>  Location: PIN_Y14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rddata[6]	=>  Location: PIN_Y16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rddata[7]	=>  Location: PIN_AA16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rddata[8]	=>  Location: PIN_D15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rddata[9]	=>  Location: PIN_AB16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rddata[10]	=>  Location: PIN_C13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rddata[11]	=>  Location: PIN_H14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rddata[12]	=>  Location: PIN_J13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rddata[13]	=>  Location: PIN_T16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rddata[14]	=>  Location: PIN_AB17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rddata[15]	=>  Location: PIN_G17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rddata[16]	=>  Location: PIN_H13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rddata[17]	=>  Location: PIN_P15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rddata[18]	=>  Location: PIN_AA22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rddata[19]	=>  Location: PIN_E17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rddata[20]	=>  Location: PIN_R17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rddata[21]	=>  Location: PIN_T15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rddata[22]	=>  Location: PIN_AA20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rddata[23]	=>  Location: PIN_A15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rddata[24]	=>  Location: PIN_A11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rddata[25]	=>  Location: PIN_B13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rddata[26]	=>  Location: PIN_F12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rddata[27]	=>  Location: PIN_C10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rddata[28]	=>  Location: PIN_C11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rddata[29]	=>  Location: PIN_R16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rddata[30]	=>  Location: PIN_W17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rddata[31]	=>  Location: PIN_C12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A_Alu[0]	=>  Location: PIN_V20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A_Alu[1]	=>  Location: PIN_W21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A_Alu[2]	=>  Location: PIN_P13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A_Alu[3]	=>  Location: PIN_U22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A_Alu[4]	=>  Location: PIN_V22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A_Alu[5]	=>  Location: PIN_U20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A_Alu[6]	=>  Location: PIN_V21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A_Alu[7]	=>  Location: PIN_N15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A_Alu[8]	=>  Location: PIN_P14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A_Alu[9]	=>  Location: PIN_T19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A_Alu[10]	=>  Location: PIN_L20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A_Alu[11]	=>  Location: PIN_D19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A_Alu[12]	=>  Location: PIN_C20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A_Alu[13]	=>  Location: PIN_P20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A_Alu[14]	=>  Location: PIN_T22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A_Alu[15]	=>  Location: PIN_A20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A_Alu[16]	=>  Location: PIN_C19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A_Alu[17]	=>  Location: PIN_H22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A_Alu[18]	=>  Location: PIN_C22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A_Alu[19]	=>  Location: PIN_L13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A_Alu[20]	=>  Location: PIN_M16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A_Alu[21]	=>  Location: PIN_M20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A_Alu[22]	=>  Location: PIN_L16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A_Alu[23]	=>  Location: PIN_N17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A_Alu[24]	=>  Location: PIN_T21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A_Alu[25]	=>  Location: PIN_N14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A_Alu[26]	=>  Location: PIN_M15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A_Alu[27]	=>  Location: PIN_G18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A_Alu[28]	=>  Location: PIN_R21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A_Alu[29]	=>  Location: PIN_N21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A_Alu[30]	=>  Location: PIN_L19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A_Alu[31]	=>  Location: PIN_R20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B_Alu[0]	=>  Location: PIN_D20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B_Alu[1]	=>  Location: PIN_B21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B_Alu[2]	=>  Location: PIN_E21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B_Alu[3]	=>  Location: PIN_G16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B_Alu[4]	=>  Location: PIN_A18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B_Alu[5]	=>  Location: PIN_C17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B_Alu[6]	=>  Location: PIN_F16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B_Alu[7]	=>  Location: PIN_F17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B_Alu[8]	=>  Location: PIN_A19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B_Alu[9]	=>  Location: PIN_B18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B_Alu[10]	=>  Location: PIN_B20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B_Alu[11]	=>  Location: PIN_B16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B_Alu[12]	=>  Location: PIN_AA19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B_Alu[13]	=>  Location: PIN_U14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B_Alu[14]	=>  Location: PIN_D14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B_Alu[15]	=>  Location: PIN_W19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B_Alu[16]	=>  Location: PIN_A13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B_Alu[17]	=>  Location: PIN_G15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B_Alu[18]	=>  Location: PIN_G14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B_Alu[19]	=>  Location: PIN_AB22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B_Alu[20]	=>  Location: PIN_Y15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B_Alu[21]	=>  Location: PIN_U15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B_Alu[22]	=>  Location: PIN_W18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B_Alu[23]	=>  Location: PIN_AB20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B_Alu[24]	=>  Location: PIN_D16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B_Alu[25]	=>  Location: PIN_AA15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B_Alu[26]	=>  Location: PIN_AB19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B_Alu[27]	=>  Location: PIN_B12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B_Alu[28]	=>  Location: PIN_AB21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B_Alu[29]	=>  Location: PIN_AA21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B_Alu[30]	=>  Location: PIN_B15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B_Alu[31]	=>  Location: PIN_C14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- wbs[0]	=>  Location: PIN_G22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- wbs[1]	=>  Location: PIN_Y17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rs1_out[0]	=>  Location: PIN_M13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rs1_out[1]	=>  Location: PIN_M18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rs1_out[2]	=>  Location: PIN_V6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rs1_out[3]	=>  Location: PIN_C7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rs1_out[4]	=>  Location: PIN_AB4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Reg_WEn	=>  Location: PIN_F18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk	=>  Location: PIN_N11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rst	=>  Location: PIN_J22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Stop_en	=>  Location: PIN_D22,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF RV32 IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_rst : std_logic;
SIGNAL ww_clk : std_logic;
SIGNAL ww_Stop_en : std_logic;
SIGNAL ww_ketqua : std_logic_vector(31 DOWNTO 0);
SIGNAL ww_cur_pcout : std_logic_vector(31 DOWNTO 0);
SIGNAL ww_imm_out : std_logic_vector(11 DOWNTO 0);
SIGNAL ww_rd_adr : std_logic_vector(4 DOWNTO 0);
SIGNAL ww_rddata : std_logic_vector(31 DOWNTO 0);
SIGNAL ww_A_Alu : std_logic_vector(31 DOWNTO 0);
SIGNAL ww_B_Alu : std_logic_vector(31 DOWNTO 0);
SIGNAL ww_wbs : std_logic_vector(1 DOWNTO 0);
SIGNAL ww_rs1_out : std_logic_vector(4 DOWNTO 0);
SIGNAL ww_Reg_WEn : std_logic;
SIGNAL \clk~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \ketqua[0]~output_o\ : std_logic;
SIGNAL \ketqua[1]~output_o\ : std_logic;
SIGNAL \ketqua[2]~output_o\ : std_logic;
SIGNAL \ketqua[3]~output_o\ : std_logic;
SIGNAL \ketqua[4]~output_o\ : std_logic;
SIGNAL \ketqua[5]~output_o\ : std_logic;
SIGNAL \ketqua[6]~output_o\ : std_logic;
SIGNAL \ketqua[7]~output_o\ : std_logic;
SIGNAL \ketqua[8]~output_o\ : std_logic;
SIGNAL \ketqua[9]~output_o\ : std_logic;
SIGNAL \ketqua[10]~output_o\ : std_logic;
SIGNAL \ketqua[11]~output_o\ : std_logic;
SIGNAL \ketqua[12]~output_o\ : std_logic;
SIGNAL \ketqua[13]~output_o\ : std_logic;
SIGNAL \ketqua[14]~output_o\ : std_logic;
SIGNAL \ketqua[15]~output_o\ : std_logic;
SIGNAL \ketqua[16]~output_o\ : std_logic;
SIGNAL \ketqua[17]~output_o\ : std_logic;
SIGNAL \ketqua[18]~output_o\ : std_logic;
SIGNAL \ketqua[19]~output_o\ : std_logic;
SIGNAL \ketqua[20]~output_o\ : std_logic;
SIGNAL \ketqua[21]~output_o\ : std_logic;
SIGNAL \ketqua[22]~output_o\ : std_logic;
SIGNAL \ketqua[23]~output_o\ : std_logic;
SIGNAL \ketqua[24]~output_o\ : std_logic;
SIGNAL \ketqua[25]~output_o\ : std_logic;
SIGNAL \ketqua[26]~output_o\ : std_logic;
SIGNAL \ketqua[27]~output_o\ : std_logic;
SIGNAL \ketqua[28]~output_o\ : std_logic;
SIGNAL \ketqua[29]~output_o\ : std_logic;
SIGNAL \ketqua[30]~output_o\ : std_logic;
SIGNAL \ketqua[31]~output_o\ : std_logic;
SIGNAL \cur_pcout[0]~output_o\ : std_logic;
SIGNAL \cur_pcout[1]~output_o\ : std_logic;
SIGNAL \cur_pcout[2]~output_o\ : std_logic;
SIGNAL \cur_pcout[3]~output_o\ : std_logic;
SIGNAL \cur_pcout[4]~output_o\ : std_logic;
SIGNAL \cur_pcout[5]~output_o\ : std_logic;
SIGNAL \cur_pcout[6]~output_o\ : std_logic;
SIGNAL \cur_pcout[7]~output_o\ : std_logic;
SIGNAL \cur_pcout[8]~output_o\ : std_logic;
SIGNAL \cur_pcout[9]~output_o\ : std_logic;
SIGNAL \cur_pcout[10]~output_o\ : std_logic;
SIGNAL \cur_pcout[11]~output_o\ : std_logic;
SIGNAL \cur_pcout[12]~output_o\ : std_logic;
SIGNAL \cur_pcout[13]~output_o\ : std_logic;
SIGNAL \cur_pcout[14]~output_o\ : std_logic;
SIGNAL \cur_pcout[15]~output_o\ : std_logic;
SIGNAL \cur_pcout[16]~output_o\ : std_logic;
SIGNAL \cur_pcout[17]~output_o\ : std_logic;
SIGNAL \cur_pcout[18]~output_o\ : std_logic;
SIGNAL \cur_pcout[19]~output_o\ : std_logic;
SIGNAL \cur_pcout[20]~output_o\ : std_logic;
SIGNAL \cur_pcout[21]~output_o\ : std_logic;
SIGNAL \cur_pcout[22]~output_o\ : std_logic;
SIGNAL \cur_pcout[23]~output_o\ : std_logic;
SIGNAL \cur_pcout[24]~output_o\ : std_logic;
SIGNAL \cur_pcout[25]~output_o\ : std_logic;
SIGNAL \cur_pcout[26]~output_o\ : std_logic;
SIGNAL \cur_pcout[27]~output_o\ : std_logic;
SIGNAL \cur_pcout[28]~output_o\ : std_logic;
SIGNAL \cur_pcout[29]~output_o\ : std_logic;
SIGNAL \cur_pcout[30]~output_o\ : std_logic;
SIGNAL \cur_pcout[31]~output_o\ : std_logic;
SIGNAL \imm_out[0]~output_o\ : std_logic;
SIGNAL \imm_out[1]~output_o\ : std_logic;
SIGNAL \imm_out[2]~output_o\ : std_logic;
SIGNAL \imm_out[3]~output_o\ : std_logic;
SIGNAL \imm_out[4]~output_o\ : std_logic;
SIGNAL \imm_out[5]~output_o\ : std_logic;
SIGNAL \imm_out[6]~output_o\ : std_logic;
SIGNAL \imm_out[7]~output_o\ : std_logic;
SIGNAL \imm_out[8]~output_o\ : std_logic;
SIGNAL \imm_out[9]~output_o\ : std_logic;
SIGNAL \imm_out[10]~output_o\ : std_logic;
SIGNAL \imm_out[11]~output_o\ : std_logic;
SIGNAL \rd_adr[0]~output_o\ : std_logic;
SIGNAL \rd_adr[1]~output_o\ : std_logic;
SIGNAL \rd_adr[2]~output_o\ : std_logic;
SIGNAL \rd_adr[3]~output_o\ : std_logic;
SIGNAL \rd_adr[4]~output_o\ : std_logic;
SIGNAL \rddata[0]~output_o\ : std_logic;
SIGNAL \rddata[1]~output_o\ : std_logic;
SIGNAL \rddata[2]~output_o\ : std_logic;
SIGNAL \rddata[3]~output_o\ : std_logic;
SIGNAL \rddata[4]~output_o\ : std_logic;
SIGNAL \rddata[5]~output_o\ : std_logic;
SIGNAL \rddata[6]~output_o\ : std_logic;
SIGNAL \rddata[7]~output_o\ : std_logic;
SIGNAL \rddata[8]~output_o\ : std_logic;
SIGNAL \rddata[9]~output_o\ : std_logic;
SIGNAL \rddata[10]~output_o\ : std_logic;
SIGNAL \rddata[11]~output_o\ : std_logic;
SIGNAL \rddata[12]~output_o\ : std_logic;
SIGNAL \rddata[13]~output_o\ : std_logic;
SIGNAL \rddata[14]~output_o\ : std_logic;
SIGNAL \rddata[15]~output_o\ : std_logic;
SIGNAL \rddata[16]~output_o\ : std_logic;
SIGNAL \rddata[17]~output_o\ : std_logic;
SIGNAL \rddata[18]~output_o\ : std_logic;
SIGNAL \rddata[19]~output_o\ : std_logic;
SIGNAL \rddata[20]~output_o\ : std_logic;
SIGNAL \rddata[21]~output_o\ : std_logic;
SIGNAL \rddata[22]~output_o\ : std_logic;
SIGNAL \rddata[23]~output_o\ : std_logic;
SIGNAL \rddata[24]~output_o\ : std_logic;
SIGNAL \rddata[25]~output_o\ : std_logic;
SIGNAL \rddata[26]~output_o\ : std_logic;
SIGNAL \rddata[27]~output_o\ : std_logic;
SIGNAL \rddata[28]~output_o\ : std_logic;
SIGNAL \rddata[29]~output_o\ : std_logic;
SIGNAL \rddata[30]~output_o\ : std_logic;
SIGNAL \rddata[31]~output_o\ : std_logic;
SIGNAL \A_Alu[0]~output_o\ : std_logic;
SIGNAL \A_Alu[1]~output_o\ : std_logic;
SIGNAL \A_Alu[2]~output_o\ : std_logic;
SIGNAL \A_Alu[3]~output_o\ : std_logic;
SIGNAL \A_Alu[4]~output_o\ : std_logic;
SIGNAL \A_Alu[5]~output_o\ : std_logic;
SIGNAL \A_Alu[6]~output_o\ : std_logic;
SIGNAL \A_Alu[7]~output_o\ : std_logic;
SIGNAL \A_Alu[8]~output_o\ : std_logic;
SIGNAL \A_Alu[9]~output_o\ : std_logic;
SIGNAL \A_Alu[10]~output_o\ : std_logic;
SIGNAL \A_Alu[11]~output_o\ : std_logic;
SIGNAL \A_Alu[12]~output_o\ : std_logic;
SIGNAL \A_Alu[13]~output_o\ : std_logic;
SIGNAL \A_Alu[14]~output_o\ : std_logic;
SIGNAL \A_Alu[15]~output_o\ : std_logic;
SIGNAL \A_Alu[16]~output_o\ : std_logic;
SIGNAL \A_Alu[17]~output_o\ : std_logic;
SIGNAL \A_Alu[18]~output_o\ : std_logic;
SIGNAL \A_Alu[19]~output_o\ : std_logic;
SIGNAL \A_Alu[20]~output_o\ : std_logic;
SIGNAL \A_Alu[21]~output_o\ : std_logic;
SIGNAL \A_Alu[22]~output_o\ : std_logic;
SIGNAL \A_Alu[23]~output_o\ : std_logic;
SIGNAL \A_Alu[24]~output_o\ : std_logic;
SIGNAL \A_Alu[25]~output_o\ : std_logic;
SIGNAL \A_Alu[26]~output_o\ : std_logic;
SIGNAL \A_Alu[27]~output_o\ : std_logic;
SIGNAL \A_Alu[28]~output_o\ : std_logic;
SIGNAL \A_Alu[29]~output_o\ : std_logic;
SIGNAL \A_Alu[30]~output_o\ : std_logic;
SIGNAL \A_Alu[31]~output_o\ : std_logic;
SIGNAL \B_Alu[0]~output_o\ : std_logic;
SIGNAL \B_Alu[1]~output_o\ : std_logic;
SIGNAL \B_Alu[2]~output_o\ : std_logic;
SIGNAL \B_Alu[3]~output_o\ : std_logic;
SIGNAL \B_Alu[4]~output_o\ : std_logic;
SIGNAL \B_Alu[5]~output_o\ : std_logic;
SIGNAL \B_Alu[6]~output_o\ : std_logic;
SIGNAL \B_Alu[7]~output_o\ : std_logic;
SIGNAL \B_Alu[8]~output_o\ : std_logic;
SIGNAL \B_Alu[9]~output_o\ : std_logic;
SIGNAL \B_Alu[10]~output_o\ : std_logic;
SIGNAL \B_Alu[11]~output_o\ : std_logic;
SIGNAL \B_Alu[12]~output_o\ : std_logic;
SIGNAL \B_Alu[13]~output_o\ : std_logic;
SIGNAL \B_Alu[14]~output_o\ : std_logic;
SIGNAL \B_Alu[15]~output_o\ : std_logic;
SIGNAL \B_Alu[16]~output_o\ : std_logic;
SIGNAL \B_Alu[17]~output_o\ : std_logic;
SIGNAL \B_Alu[18]~output_o\ : std_logic;
SIGNAL \B_Alu[19]~output_o\ : std_logic;
SIGNAL \B_Alu[20]~output_o\ : std_logic;
SIGNAL \B_Alu[21]~output_o\ : std_logic;
SIGNAL \B_Alu[22]~output_o\ : std_logic;
SIGNAL \B_Alu[23]~output_o\ : std_logic;
SIGNAL \B_Alu[24]~output_o\ : std_logic;
SIGNAL \B_Alu[25]~output_o\ : std_logic;
SIGNAL \B_Alu[26]~output_o\ : std_logic;
SIGNAL \B_Alu[27]~output_o\ : std_logic;
SIGNAL \B_Alu[28]~output_o\ : std_logic;
SIGNAL \B_Alu[29]~output_o\ : std_logic;
SIGNAL \B_Alu[30]~output_o\ : std_logic;
SIGNAL \B_Alu[31]~output_o\ : std_logic;
SIGNAL \wbs[0]~output_o\ : std_logic;
SIGNAL \wbs[1]~output_o\ : std_logic;
SIGNAL \rs1_out[0]~output_o\ : std_logic;
SIGNAL \rs1_out[1]~output_o\ : std_logic;
SIGNAL \rs1_out[2]~output_o\ : std_logic;
SIGNAL \rs1_out[3]~output_o\ : std_logic;
SIGNAL \rs1_out[4]~output_o\ : std_logic;
SIGNAL \Reg_WEn~output_o\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \clk~inputclkctrl_outclk\ : std_logic;
SIGNAL \PC_connect|PC_register_pc|Q[2]~30_combout\ : std_logic;
SIGNAL \rst~input_o\ : std_logic;
SIGNAL \PC_connect|PC_register_pc|Q[4]~37\ : std_logic;
SIGNAL \PC_connect|PC_register_pc|Q[5]~38_combout\ : std_logic;
SIGNAL \Stop_en~input_o\ : std_logic;
SIGNAL \PC_connect|PC_register_pc|Q[12]~33_combout\ : std_logic;
SIGNAL \PC_connect|PC_register_pc|Q[5]~39\ : std_logic;
SIGNAL \PC_connect|PC_register_pc|Q[6]~40_combout\ : std_logic;
SIGNAL \PC_connect|PC_register_pc|Q[6]~41\ : std_logic;
SIGNAL \PC_connect|PC_register_pc|Q[7]~42_combout\ : std_logic;
SIGNAL \PC_connect|PC_register_pc|Q[7]~43\ : std_logic;
SIGNAL \PC_connect|PC_register_pc|Q[8]~44_combout\ : std_logic;
SIGNAL \PC_connect|PC_register_pc|Q[8]~45\ : std_logic;
SIGNAL \PC_connect|PC_register_pc|Q[9]~46_combout\ : std_logic;
SIGNAL \imemfetch_connect|imem_block|memory~0_combout\ : std_logic;
SIGNAL \imemfetch_connect|imem_block|memory~1_combout\ : std_logic;
SIGNAL \regfile_connect|mregfile|decoder5_32|en[7]~0_combout\ : std_logic;
SIGNAL \imemfetch_connect|imem_block|memory~4_combout\ : std_logic;
SIGNAL \imemfetch_connect|imem_block|memory~5_combout\ : std_logic;
SIGNAL \imemfetch_connect|imem_block|memory~2_combout\ : std_logic;
SIGNAL \imemfetch_connect|imem_block|memory~3_combout\ : std_logic;
SIGNAL \imemfetch_connect|imem_block|memory~6_combout\ : std_logic;
SIGNAL \imemfetch_connect|imem_block|memory~7_combout\ : std_logic;
SIGNAL \imemfetch_connect|fetch_block|Selector2~0_combout\ : std_logic;
SIGNAL \imemfetch_connect|imem_block|memory~8_combout\ : std_logic;
SIGNAL \regfile_connect|mregfile|register_loop[2].register_inst|Q~6_combout\ : std_logic;
SIGNAL \regfile_connect|mregfile|register_loop[2].register_inst|Q~3_combout\ : std_logic;
SIGNAL \regfile_connect|mregfile|register_loop[2].register_inst|Q~22_combout\ : std_logic;
SIGNAL \regfile_connect|mregfile|register_loop[6].register_inst|Q~2_combout\ : std_logic;
SIGNAL \regfile_connect|mregfile|register_loop[5].register_inst|Q~2_combout\ : std_logic;
SIGNAL \regfile_connect|mregfile|muxB|Mux31~0_combout\ : std_logic;
SIGNAL \imemfetch_connect|imem_block|memory~14_combout\ : std_logic;
SIGNAL \regfile_connect|mregfile|muxB|Mux31~1_combout\ : std_logic;
SIGNAL \imemfetch_connect|fetch_block|WideOr2~0_combout\ : std_logic;
SIGNAL \regfile_connect|mregfile|muxB|Mux31~2_combout\ : std_logic;
SIGNAL \PC_connect|PC_register_pc|Q[12]~32_combout\ : std_logic;
SIGNAL \PC_connect|PC_register_pc|Q[2]~31\ : std_logic;
SIGNAL \PC_connect|PC_register_pc|Q[3]~34_combout\ : std_logic;
SIGNAL \PC_connect|PC_register_pc|Q[3]~35\ : std_logic;
SIGNAL \PC_connect|PC_register_pc|Q[4]~36_combout\ : std_logic;
SIGNAL \regfile_connect|mregfile|muxA|Mux31~6_combout\ : std_logic;
SIGNAL \regfile_connect|mregfile|muxA|Mux31~3_combout\ : std_logic;
SIGNAL \regfile_connect|mregfile|muxA|Mux31~16_combout\ : std_logic;
SIGNAL \PC_connect|PC_register_pc|Q[9]~47\ : std_logic;
SIGNAL \PC_connect|PC_register_pc|Q[10]~48_combout\ : std_logic;
SIGNAL \PC_connect|PC_register_pc|Q[10]~49\ : std_logic;
SIGNAL \PC_connect|PC_register_pc|Q[11]~50_combout\ : std_logic;
SIGNAL \PC_connect|PC_register_pc|Q[11]~51\ : std_logic;
SIGNAL \PC_connect|PC_register_pc|Q[12]~52_combout\ : std_logic;
SIGNAL \PC_connect|PC_register_pc|Q[12]~53\ : std_logic;
SIGNAL \PC_connect|PC_register_pc|Q[13]~54_combout\ : std_logic;
SIGNAL \PC_connect|PC_register_pc|Q[13]~55\ : std_logic;
SIGNAL \PC_connect|PC_register_pc|Q[14]~56_combout\ : std_logic;
SIGNAL \PC_connect|PC_register_pc|Q[14]~57\ : std_logic;
SIGNAL \PC_connect|PC_register_pc|Q[15]~58_combout\ : std_logic;
SIGNAL \PC_connect|PC_register_pc|Q[15]~59\ : std_logic;
SIGNAL \PC_connect|PC_register_pc|Q[16]~60_combout\ : std_logic;
SIGNAL \PC_connect|PC_register_pc|Q[16]~61\ : std_logic;
SIGNAL \PC_connect|PC_register_pc|Q[17]~62_combout\ : std_logic;
SIGNAL \PC_connect|PC_register_pc|Q[17]~63\ : std_logic;
SIGNAL \PC_connect|PC_register_pc|Q[18]~64_combout\ : std_logic;
SIGNAL \PC_connect|PC_register_pc|Q[18]~65\ : std_logic;
SIGNAL \PC_connect|PC_register_pc|Q[19]~66_combout\ : std_logic;
SIGNAL \PC_connect|PC_register_pc|Q[19]~67\ : std_logic;
SIGNAL \PC_connect|PC_register_pc|Q[20]~68_combout\ : std_logic;
SIGNAL \PC_connect|PC_register_pc|Q[20]~69\ : std_logic;
SIGNAL \PC_connect|PC_register_pc|Q[21]~70_combout\ : std_logic;
SIGNAL \PC_connect|PC_register_pc|Q[21]~71\ : std_logic;
SIGNAL \PC_connect|PC_register_pc|Q[22]~72_combout\ : std_logic;
SIGNAL \PC_connect|PC_register_pc|Q[22]~73\ : std_logic;
SIGNAL \PC_connect|PC_register_pc|Q[23]~74_combout\ : std_logic;
SIGNAL \PC_connect|PC_register_pc|Q[23]~75\ : std_logic;
SIGNAL \PC_connect|PC_register_pc|Q[24]~76_combout\ : std_logic;
SIGNAL \PC_connect|PC_register_pc|Q[24]~77\ : std_logic;
SIGNAL \PC_connect|PC_register_pc|Q[25]~78_combout\ : std_logic;
SIGNAL \PC_connect|PC_register_pc|Q[25]~79\ : std_logic;
SIGNAL \PC_connect|PC_register_pc|Q[26]~80_combout\ : std_logic;
SIGNAL \PC_connect|PC_register_pc|Q[26]~81\ : std_logic;
SIGNAL \PC_connect|PC_register_pc|Q[27]~82_combout\ : std_logic;
SIGNAL \PC_connect|PC_register_pc|Q[27]~83\ : std_logic;
SIGNAL \PC_connect|PC_register_pc|Q[28]~84_combout\ : std_logic;
SIGNAL \PC_connect|PC_register_pc|Q[28]~85\ : std_logic;
SIGNAL \PC_connect|PC_register_pc|Q[29]~86_combout\ : std_logic;
SIGNAL \PC_connect|PC_register_pc|Q[29]~87\ : std_logic;
SIGNAL \PC_connect|PC_register_pc|Q[30]~88_combout\ : std_logic;
SIGNAL \PC_connect|PC_register_pc|Q[30]~89\ : std_logic;
SIGNAL \PC_connect|PC_register_pc|Q[31]~90_combout\ : std_logic;
SIGNAL \imemfetch_connect|fetch_block|Selector5~6_combout\ : std_logic;
SIGNAL \imemfetch_connect|fetch_block|Selector5~3_combout\ : std_logic;
SIGNAL \imemfetch_connect|fetch_block|Selector5~16_combout\ : std_logic;
SIGNAL \imemfetch_connect|imem_block|memory~10_combout\ : std_logic;
SIGNAL \imemfetch_connect|fetch_block|Selector4~0_combout\ : std_logic;
SIGNAL \imemfetch_connect|fetch_block|Selector4~1_combout\ : std_logic;
SIGNAL \imemfetch_connect|fetch_block|Selector4~2_combout\ : std_logic;
SIGNAL \imemfetch_connect|imem_block|memory~11_combout\ : std_logic;
SIGNAL \imemfetch_connect|imem_block|memory~12_combout\ : std_logic;
SIGNAL \imemfetch_connect|fetch_block|Selector4~3_combout\ : std_logic;
SIGNAL \imemfetch_connect|imem_block|memory~13_combout\ : std_logic;
SIGNAL \imemfetch_connect|fetch_block|Selector3~0_combout\ : std_logic;
SIGNAL \imemfetch_connect|fetch_block|Selector3~1_combout\ : std_logic;
SIGNAL \imemfetch_connect|fetch_block|imm[5]~3_combout\ : std_logic;
SIGNAL \imemfetch_connect|fetch_block|imm[5]~14_combout\ : std_logic;
SIGNAL \imemfetch_connect|fetch_block|imm[5]~12_combout\ : std_logic;
SIGNAL \imemfetch_connect|fetch_block|imm[10]~13_combout\ : std_logic;
SIGNAL \imemfetch_connect|imem_block|memory~9_combout\ : std_logic;
SIGNAL \imemfetch_connect|fetch_block|Selector0~2_combout\ : std_logic;
SIGNAL \imemfetch_connect|imem_block|memory~15_combout\ : std_logic;
SIGNAL \imemfetch_connect|fetch_block|rd[0]~0_combout\ : std_logic;
SIGNAL \imemfetch_connect|fetch_block|rd[1]~1_combout\ : std_logic;
SIGNAL \imemfetch_connect|fetch_block|rd[2]~2_combout\ : std_logic;
SIGNAL \Dmem_Connect|DMEM|register_Dmem_loop[0].register_Dmem_inst|Q~0_combout\ : std_logic;
SIGNAL \imemfetch_connect|fetch_block|Decoder0~1_combout\ : std_logic;
SIGNAL \Dmem_Connect|DMEM|dataR_buffer|Q~0_combout\ : std_logic;
SIGNAL \imemfetch_connect|fetch_block|Decoder0~0_combout\ : std_logic;
SIGNAL \Wb_connect|Mux31~0_combout\ : std_logic;
SIGNAL \imemfetch_connect|imem_block|memory~16_combout\ : std_logic;
SIGNAL \imemfetch_connect|fetch_block|WideOr1~0_combout\ : std_logic;
SIGNAL \imemfetch_connect|fetch_block|rs1[0]~1_combout\ : std_logic;
SIGNAL \imemfetch_connect|imem_block|memory~17_combout\ : std_logic;
SIGNAL \imemfetch_connect|fetch_block|rs1[1]~0_combout\ : std_logic;
SIGNAL \MUX_ASel|AB[0]~0_combout\ : std_logic;
SIGNAL \MUX_ASel|AB[3]~1_combout\ : std_logic;
SIGNAL \MUX_ASel|AB[10]~2_combout\ : std_logic;
SIGNAL \MUX_ASel|AB[11]~3_combout\ : std_logic;
SIGNAL \MUX_ASel|AB[12]~4_combout\ : std_logic;
SIGNAL \MUX_ASel|AB[13]~5_combout\ : std_logic;
SIGNAL \MUX_ASel|AB[14]~6_combout\ : std_logic;
SIGNAL \MUX_ASel|AB[15]~7_combout\ : std_logic;
SIGNAL \MUX_ASel|AB[16]~8_combout\ : std_logic;
SIGNAL \MUX_ASel|AB[17]~9_combout\ : std_logic;
SIGNAL \MUX_ASel|AB[18]~10_combout\ : std_logic;
SIGNAL \MUX_ASel|AB[19]~11_combout\ : std_logic;
SIGNAL \MUX_ASel|AB[20]~12_combout\ : std_logic;
SIGNAL \MUX_ASel|AB[21]~13_combout\ : std_logic;
SIGNAL \MUX_ASel|AB[22]~14_combout\ : std_logic;
SIGNAL \MUX_ASel|AB[23]~15_combout\ : std_logic;
SIGNAL \MUX_ASel|AB[24]~16_combout\ : std_logic;
SIGNAL \MUX_ASel|AB[25]~17_combout\ : std_logic;
SIGNAL \MUX_ASel|AB[26]~18_combout\ : std_logic;
SIGNAL \MUX_ASel|AB[27]~19_combout\ : std_logic;
SIGNAL \MUX_ASel|AB[28]~20_combout\ : std_logic;
SIGNAL \MUX_ASel|AB[29]~21_combout\ : std_logic;
SIGNAL \MUX_ASel|AB[30]~22_combout\ : std_logic;
SIGNAL \MUX_ASel|AB[31]~23_combout\ : std_logic;
SIGNAL \Controller_connect|ControlUnit|WideOr1~3_combout\ : std_logic;
SIGNAL \Controller_connect|ControlUnit|WideOr1~9_combout\ : std_logic;
SIGNAL \MUX_BSel|AB[4]~0_combout\ : std_logic;
SIGNAL \MUX_BSel|AB[0]~1_combout\ : std_logic;
SIGNAL \MUX_BSel|AB[1]~2_combout\ : std_logic;
SIGNAL \MUX_BSel|AB[2]~3_combout\ : std_logic;
SIGNAL \MUX_BSel|AB[3]~4_combout\ : std_logic;
SIGNAL \MUX_BSel|AB[5]~5_combout\ : std_logic;
SIGNAL \MUX_BSel|AB[10]~6_combout\ : std_logic;
SIGNAL \MUX_BSel|AB[11]~7_combout\ : std_logic;
SIGNAL \Controller_connect|ControlUnit|WideOr0~0_combout\ : std_logic;
SIGNAL \regfile_connect|mregfile|register_loop[2].register_inst|Q\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \regfile_connect|mregfile|register_loop[5].register_inst|Q\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \regfile_connect|mregfile|register_loop[6].register_inst|Q\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \Dmem_Connect|DMEM|dataR_buffer|Q\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \PC_connect|PC_register_pc|Q\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \Dmem_Connect|DMEM|register_Dmem_loop[0].register_Dmem_inst|Q\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \MUX_BSel|ALT_INV_AB[11]~7_combout\ : std_logic;
SIGNAL \imemfetch_connect|fetch_block|ALT_INV_Decoder0~0_combout\ : std_logic;

BEGIN

ww_rst <= rst;
ww_clk <= clk;
ww_Stop_en <= Stop_en;
ketqua <= ww_ketqua;
cur_pcout <= ww_cur_pcout;
imm_out <= ww_imm_out;
rd_adr <= ww_rd_adr;
rddata <= ww_rddata;
A_Alu <= ww_A_Alu;
B_Alu <= ww_B_Alu;
wbs <= ww_wbs;
rs1_out <= ww_rs1_out;
Reg_WEn <= ww_Reg_WEn;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\clk~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clk~input_o\);
\MUX_BSel|ALT_INV_AB[11]~7_combout\ <= NOT \MUX_BSel|AB[11]~7_combout\;
\imemfetch_connect|fetch_block|ALT_INV_Decoder0~0_combout\ <= NOT \imemfetch_connect|fetch_block|Decoder0~0_combout\;

-- Location: IOOBUF_X61_Y67_N2
\ketqua[0]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \regfile_connect|mregfile|muxA|Mux31~16_combout\,
	devoe => ww_devoe,
	o => \ketqua[0]~output_o\);

-- Location: IOOBUF_X49_Y0_N16
\ketqua[1]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \regfile_connect|mregfile|muxA|Mux31~16_combout\,
	devoe => ww_devoe,
	o => \ketqua[1]~output_o\);

-- Location: IOOBUF_X42_Y67_N23
\ketqua[2]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \regfile_connect|mregfile|muxA|Mux31~16_combout\,
	devoe => ww_devoe,
	o => \ketqua[2]~output_o\);

-- Location: IOOBUF_X31_Y67_N2
\ketqua[3]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \regfile_connect|mregfile|muxA|Mux31~16_combout\,
	devoe => ww_devoe,
	o => \ketqua[3]~output_o\);

-- Location: IOOBUF_X52_Y0_N9
\ketqua[4]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \regfile_connect|mregfile|muxA|Mux31~16_combout\,
	devoe => ww_devoe,
	o => \ketqua[4]~output_o\);

-- Location: IOOBUF_X81_Y2_N23
\ketqua[5]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \regfile_connect|mregfile|muxA|Mux31~16_combout\,
	devoe => ww_devoe,
	o => \ketqua[5]~output_o\);

-- Location: IOOBUF_X40_Y67_N2
\ketqua[6]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \regfile_connect|mregfile|muxA|Mux31~16_combout\,
	devoe => ww_devoe,
	o => \ketqua[6]~output_o\);

-- Location: IOOBUF_X70_Y0_N2
\ketqua[7]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \regfile_connect|mregfile|muxA|Mux31~16_combout\,
	devoe => ww_devoe,
	o => \ketqua[7]~output_o\);

-- Location: IOOBUF_X49_Y67_N9
\ketqua[8]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \regfile_connect|mregfile|muxA|Mux31~16_combout\,
	devoe => ww_devoe,
	o => \ketqua[8]~output_o\);

-- Location: IOOBUF_X42_Y67_N16
\ketqua[9]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \regfile_connect|mregfile|muxA|Mux31~16_combout\,
	devoe => ww_devoe,
	o => \ketqua[9]~output_o\);

-- Location: IOOBUF_X33_Y0_N23
\ketqua[10]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \regfile_connect|mregfile|muxA|Mux31~16_combout\,
	devoe => ww_devoe,
	o => \ketqua[10]~output_o\);

-- Location: IOOBUF_X54_Y67_N2
\ketqua[11]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \regfile_connect|mregfile|muxA|Mux31~16_combout\,
	devoe => ww_devoe,
	o => \ketqua[11]~output_o\);

-- Location: IOOBUF_X81_Y3_N9
\ketqua[12]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \regfile_connect|mregfile|muxA|Mux31~16_combout\,
	devoe => ww_devoe,
	o => \ketqua[12]~output_o\);

-- Location: IOOBUF_X70_Y67_N23
\ketqua[13]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \regfile_connect|mregfile|muxA|Mux31~16_combout\,
	devoe => ww_devoe,
	o => \ketqua[13]~output_o\);

-- Location: IOOBUF_X33_Y0_N2
\ketqua[14]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \regfile_connect|mregfile|muxA|Mux31~16_combout\,
	devoe => ww_devoe,
	o => \ketqua[14]~output_o\);

-- Location: IOOBUF_X44_Y0_N9
\ketqua[15]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \regfile_connect|mregfile|muxA|Mux31~16_combout\,
	devoe => ww_devoe,
	o => \ketqua[15]~output_o\);

-- Location: IOOBUF_X54_Y67_N9
\ketqua[16]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \regfile_connect|mregfile|muxA|Mux31~16_combout\,
	devoe => ww_devoe,
	o => \ketqua[16]~output_o\);

-- Location: IOOBUF_X49_Y0_N23
\ketqua[17]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \regfile_connect|mregfile|muxA|Mux31~16_combout\,
	devoe => ww_devoe,
	o => \ketqua[17]~output_o\);

-- Location: IOOBUF_X44_Y0_N2
\ketqua[18]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \regfile_connect|mregfile|muxA|Mux31~16_combout\,
	devoe => ww_devoe,
	o => \ketqua[18]~output_o\);

-- Location: IOOBUF_X33_Y0_N9
\ketqua[19]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \regfile_connect|mregfile|muxA|Mux31~16_combout\,
	devoe => ww_devoe,
	o => \ketqua[19]~output_o\);

-- Location: IOOBUF_X31_Y67_N9
\ketqua[20]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \regfile_connect|mregfile|muxA|Mux31~16_combout\,
	devoe => ww_devoe,
	o => \ketqua[20]~output_o\);

-- Location: IOOBUF_X49_Y67_N16
\ketqua[21]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \regfile_connect|mregfile|muxA|Mux31~16_combout\,
	devoe => ww_devoe,
	o => \ketqua[21]~output_o\);

-- Location: IOOBUF_X61_Y67_N9
\ketqua[22]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \regfile_connect|mregfile|muxA|Mux31~16_combout\,
	devoe => ww_devoe,
	o => \ketqua[22]~output_o\);

-- Location: IOOBUF_X42_Y67_N9
\ketqua[23]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \regfile_connect|mregfile|muxA|Mux31~16_combout\,
	devoe => ww_devoe,
	o => \ketqua[23]~output_o\);

-- Location: IOOBUF_X81_Y3_N2
\ketqua[24]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \regfile_connect|mregfile|muxA|Mux31~16_combout\,
	devoe => ww_devoe,
	o => \ketqua[24]~output_o\);

-- Location: IOOBUF_X65_Y67_N16
\ketqua[25]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \regfile_connect|mregfile|muxA|Mux31~16_combout\,
	devoe => ww_devoe,
	o => \ketqua[25]~output_o\);

-- Location: IOOBUF_X58_Y67_N2
\ketqua[26]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \regfile_connect|mregfile|muxA|Mux31~16_combout\,
	devoe => ww_devoe,
	o => \ketqua[26]~output_o\);

-- Location: IOOBUF_X81_Y5_N2
\ketqua[27]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \regfile_connect|mregfile|muxA|Mux31~16_combout\,
	devoe => ww_devoe,
	o => \ketqua[27]~output_o\);

-- Location: IOOBUF_X49_Y67_N23
\ketqua[28]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \regfile_connect|mregfile|muxA|Mux31~16_combout\,
	devoe => ww_devoe,
	o => \ketqua[28]~output_o\);

-- Location: IOOBUF_X42_Y0_N9
\ketqua[29]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \regfile_connect|mregfile|muxA|Mux31~16_combout\,
	devoe => ww_devoe,
	o => \ketqua[29]~output_o\);

-- Location: IOOBUF_X33_Y0_N16
\ketqua[30]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \regfile_connect|mregfile|muxA|Mux31~16_combout\,
	devoe => ww_devoe,
	o => \ketqua[30]~output_o\);

-- Location: IOOBUF_X42_Y67_N2
\ketqua[31]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \regfile_connect|mregfile|muxA|Mux31~16_combout\,
	devoe => ww_devoe,
	o => \ketqua[31]~output_o\);

-- Location: IOOBUF_X8_Y67_N2
\cur_pcout[0]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \cur_pcout[0]~output_o\);

-- Location: IOOBUF_X15_Y67_N16
\cur_pcout[1]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \cur_pcout[1]~output_o\);

-- Location: IOOBUF_X81_Y47_N2
\cur_pcout[2]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \PC_connect|PC_register_pc|Q\(2),
	devoe => ww_devoe,
	o => \cur_pcout[2]~output_o\);

-- Location: IOOBUF_X81_Y49_N16
\cur_pcout[3]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \PC_connect|PC_register_pc|Q\(3),
	devoe => ww_devoe,
	o => \cur_pcout[3]~output_o\);

-- Location: IOOBUF_X81_Y49_N9
\cur_pcout[4]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \PC_connect|PC_register_pc|Q\(4),
	devoe => ww_devoe,
	o => \cur_pcout[4]~output_o\);

-- Location: IOOBUF_X81_Y49_N2
\cur_pcout[5]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \PC_connect|PC_register_pc|Q\(5),
	devoe => ww_devoe,
	o => \cur_pcout[5]~output_o\);

-- Location: IOOBUF_X81_Y46_N9
\cur_pcout[6]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \PC_connect|PC_register_pc|Q\(6),
	devoe => ww_devoe,
	o => \cur_pcout[6]~output_o\);

-- Location: IOOBUF_X81_Y46_N2
\cur_pcout[7]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \PC_connect|PC_register_pc|Q\(7),
	devoe => ww_devoe,
	o => \cur_pcout[7]~output_o\);

-- Location: IOOBUF_X81_Y46_N16
\cur_pcout[8]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \PC_connect|PC_register_pc|Q\(8),
	devoe => ww_devoe,
	o => \cur_pcout[8]~output_o\);

-- Location: IOOBUF_X81_Y52_N9
\cur_pcout[9]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \PC_connect|PC_register_pc|Q\(9),
	devoe => ww_devoe,
	o => \cur_pcout[9]~output_o\);

-- Location: IOOBUF_X81_Y62_N2
\cur_pcout[10]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \PC_connect|PC_register_pc|Q\(10),
	devoe => ww_devoe,
	o => \cur_pcout[10]~output_o\);

-- Location: IOOBUF_X81_Y50_N2
\cur_pcout[11]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \PC_connect|PC_register_pc|Q\(11),
	devoe => ww_devoe,
	o => \cur_pcout[11]~output_o\);

-- Location: IOOBUF_X81_Y64_N23
\cur_pcout[12]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \PC_connect|PC_register_pc|Q\(12),
	devoe => ww_devoe,
	o => \cur_pcout[12]~output_o\);

-- Location: IOOBUF_X81_Y41_N2
\cur_pcout[13]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \PC_connect|PC_register_pc|Q\(13),
	devoe => ww_devoe,
	o => \cur_pcout[13]~output_o\);

-- Location: IOOBUF_X81_Y17_N9
\cur_pcout[14]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \PC_connect|PC_register_pc|Q\(14),
	devoe => ww_devoe,
	o => \cur_pcout[14]~output_o\);

-- Location: IOOBUF_X81_Y64_N2
\cur_pcout[15]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \PC_connect|PC_register_pc|Q\(15),
	devoe => ww_devoe,
	o => \cur_pcout[15]~output_o\);

-- Location: IOOBUF_X81_Y62_N9
\cur_pcout[16]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \PC_connect|PC_register_pc|Q\(16),
	devoe => ww_devoe,
	o => \cur_pcout[16]~output_o\);

-- Location: IOOBUF_X81_Y62_N16
\cur_pcout[17]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \PC_connect|PC_register_pc|Q\(17),
	devoe => ww_devoe,
	o => \cur_pcout[17]~output_o\);

-- Location: IOOBUF_X81_Y42_N2
\cur_pcout[18]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \PC_connect|PC_register_pc|Q\(18),
	devoe => ww_devoe,
	o => \cur_pcout[18]~output_o\);

-- Location: IOOBUF_X81_Y20_N2
\cur_pcout[19]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \PC_connect|PC_register_pc|Q\(19),
	devoe => ww_devoe,
	o => \cur_pcout[19]~output_o\);

-- Location: IOOBUF_X81_Y21_N2
\cur_pcout[20]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \PC_connect|PC_register_pc|Q\(20),
	devoe => ww_devoe,
	o => \cur_pcout[20]~output_o\);

-- Location: IOOBUF_X81_Y21_N9
\cur_pcout[21]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \PC_connect|PC_register_pc|Q\(21),
	devoe => ww_devoe,
	o => \cur_pcout[21]~output_o\);

-- Location: IOOBUF_X81_Y26_N9
\cur_pcout[22]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \PC_connect|PC_register_pc|Q\(22),
	devoe => ww_devoe,
	o => \cur_pcout[22]~output_o\);

-- Location: IOOBUF_X81_Y17_N2
\cur_pcout[23]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \PC_connect|PC_register_pc|Q\(23),
	devoe => ww_devoe,
	o => \cur_pcout[23]~output_o\);

-- Location: IOOBUF_X81_Y47_N9
\cur_pcout[24]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \PC_connect|PC_register_pc|Q\(24),
	devoe => ww_devoe,
	o => \cur_pcout[24]~output_o\);

-- Location: IOOBUF_X81_Y16_N9
\cur_pcout[25]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \PC_connect|PC_register_pc|Q\(25),
	devoe => ww_devoe,
	o => \cur_pcout[25]~output_o\);

-- Location: IOOBUF_X81_Y14_N2
\cur_pcout[26]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \PC_connect|PC_register_pc|Q\(26),
	devoe => ww_devoe,
	o => \cur_pcout[26]~output_o\);

-- Location: IOOBUF_X81_Y44_N9
\cur_pcout[27]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \PC_connect|PC_register_pc|Q\(27),
	devoe => ww_devoe,
	o => \cur_pcout[27]~output_o\);

-- Location: IOOBUF_X81_Y14_N16
\cur_pcout[28]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \PC_connect|PC_register_pc|Q\(28),
	devoe => ww_devoe,
	o => \cur_pcout[28]~output_o\);

-- Location: IOOBUF_X81_Y42_N9
\cur_pcout[29]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \PC_connect|PC_register_pc|Q\(29),
	devoe => ww_devoe,
	o => \cur_pcout[29]~output_o\);

-- Location: IOOBUF_X81_Y50_N9
\cur_pcout[30]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \PC_connect|PC_register_pc|Q\(30),
	devoe => ww_devoe,
	o => \cur_pcout[30]~output_o\);

-- Location: IOOBUF_X81_Y14_N9
\cur_pcout[31]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \PC_connect|PC_register_pc|Q\(31),
	devoe => ww_devoe,
	o => \cur_pcout[31]~output_o\);

-- Location: IOOBUF_X81_Y56_N2
\imm_out[0]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \imemfetch_connect|fetch_block|Selector5~16_combout\,
	devoe => ww_devoe,
	o => \imm_out[0]~output_o\);

-- Location: IOOBUF_X81_Y55_N9
\imm_out[1]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \imemfetch_connect|fetch_block|Selector4~3_combout\,
	devoe => ww_devoe,
	o => \imm_out[1]~output_o\);

-- Location: IOOBUF_X81_Y64_N9
\imm_out[2]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \imemfetch_connect|fetch_block|Selector3~1_combout\,
	devoe => ww_devoe,
	o => \imm_out[2]~output_o\);

-- Location: IOOBUF_X81_Y16_N2
\imm_out[3]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \imemfetch_connect|fetch_block|Selector2~0_combout\,
	devoe => ww_devoe,
	o => \imm_out[3]~output_o\);

-- Location: IOOBUF_X42_Y0_N16
\imm_out[4]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \imm_out[4]~output_o\);

-- Location: IOOBUF_X81_Y8_N2
\imm_out[5]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \imemfetch_connect|fetch_block|imm[5]~12_combout\,
	devoe => ww_devoe,
	o => \imm_out[5]~output_o\);

-- Location: IOOBUF_X81_Y8_N9
\imm_out[6]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \imemfetch_connect|fetch_block|imm[5]~12_combout\,
	devoe => ww_devoe,
	o => \imm_out[6]~output_o\);

-- Location: IOOBUF_X10_Y0_N9
\imm_out[7]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \imm_out[7]~output_o\);

-- Location: IOOBUF_X44_Y0_N23
\imm_out[8]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \imm_out[8]~output_o\);

-- Location: IOOBUF_X26_Y0_N2
\imm_out[9]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \imm_out[9]~output_o\);

-- Location: IOOBUF_X81_Y64_N16
\imm_out[10]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \imemfetch_connect|fetch_block|imm[10]~13_combout\,
	devoe => ww_devoe,
	o => \imm_out[10]~output_o\);

-- Location: IOOBUF_X81_Y53_N2
\imm_out[11]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \imemfetch_connect|fetch_block|Selector0~2_combout\,
	devoe => ww_devoe,
	o => \imm_out[11]~output_o\);

-- Location: IOOBUF_X81_Y58_N9
\rd_adr[0]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \imemfetch_connect|fetch_block|rd[0]~0_combout\,
	devoe => ww_devoe,
	o => \rd_adr[0]~output_o\);

-- Location: IOOBUF_X81_Y55_N2
\rd_adr[1]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \imemfetch_connect|fetch_block|rd[1]~1_combout\,
	devoe => ww_devoe,
	o => \rd_adr[1]~output_o\);

-- Location: IOOBUF_X81_Y65_N9
\rd_adr[2]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \imemfetch_connect|fetch_block|rd[2]~2_combout\,
	devoe => ww_devoe,
	o => \rd_adr[2]~output_o\);

-- Location: IOOBUF_X22_Y0_N16
\rd_adr[3]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \rd_adr[3]~output_o\);

-- Location: IOOBUF_X19_Y67_N9
\rd_adr[4]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \rd_adr[4]~output_o\);

-- Location: IOOBUF_X56_Y0_N2
\rddata[0]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Wb_connect|Mux31~0_combout\,
	devoe => ww_devoe,
	o => \rddata[0]~output_o\);

-- Location: IOOBUF_X68_Y0_N9
\rddata[1]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Wb_connect|Mux31~0_combout\,
	devoe => ww_devoe,
	o => \rddata[1]~output_o\);

-- Location: IOOBUF_X56_Y0_N23
\rddata[2]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Wb_connect|Mux31~0_combout\,
	devoe => ww_devoe,
	o => \rddata[2]~output_o\);

-- Location: IOOBUF_X44_Y0_N16
\rddata[3]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Wb_connect|Mux31~0_combout\,
	devoe => ww_devoe,
	o => \rddata[3]~output_o\);

-- Location: IOOBUF_X47_Y0_N2
\rddata[4]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Wb_connect|Mux31~0_combout\,
	devoe => ww_devoe,
	o => \rddata[4]~output_o\);

-- Location: IOOBUF_X47_Y0_N9
\rddata[5]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Wb_connect|Mux31~0_combout\,
	devoe => ww_devoe,
	o => \rddata[5]~output_o\);

-- Location: IOOBUF_X54_Y0_N16
\rddata[6]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Wb_connect|Mux31~0_combout\,
	devoe => ww_devoe,
	o => \rddata[6]~output_o\);

-- Location: IOOBUF_X54_Y0_N9
\rddata[7]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Wb_connect|Mux31~0_combout\,
	devoe => ww_devoe,
	o => \rddata[7]~output_o\);

-- Location: IOOBUF_X58_Y67_N16
\rddata[8]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Wb_connect|Mux31~0_combout\,
	devoe => ww_devoe,
	o => \rddata[8]~output_o\);

-- Location: IOOBUF_X54_Y0_N23
\rddata[9]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Wb_connect|Mux31~0_combout\,
	devoe => ww_devoe,
	o => \rddata[9]~output_o\);

-- Location: IOOBUF_X54_Y67_N23
\rddata[10]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Wb_connect|Mux31~0_combout\,
	devoe => ww_devoe,
	o => \rddata[10]~output_o\);

-- Location: IOOBUF_X49_Y67_N2
\rddata[11]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Wb_connect|Mux31~0_combout\,
	devoe => ww_devoe,
	o => \rddata[11]~output_o\);

-- Location: IOOBUF_X44_Y67_N16
\rddata[12]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Wb_connect|Mux31~0_combout\,
	devoe => ww_devoe,
	o => \rddata[12]~output_o\);

-- Location: IOOBUF_X63_Y0_N9
\rddata[13]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Wb_connect|Mux31~0_combout\,
	devoe => ww_devoe,
	o => \rddata[13]~output_o\);

-- Location: IOOBUF_X54_Y0_N2
\rddata[14]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Wb_connect|Mux31~0_combout\,
	devoe => ww_devoe,
	o => \rddata[14]~output_o\);

-- Location: IOOBUF_X81_Y65_N23
\rddata[15]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Wb_connect|Mux31~0_combout\,
	devoe => ww_devoe,
	o => \rddata[15]~output_o\);

-- Location: IOOBUF_X44_Y67_N9
\rddata[16]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Wb_connect|Mux31~0_combout\,
	devoe => ww_devoe,
	o => \rddata[16]~output_o\);

-- Location: IOOBUF_X81_Y4_N9
\rddata[17]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Wb_connect|Mux31~0_combout\,
	devoe => ww_devoe,
	o => \rddata[17]~output_o\);

-- Location: IOOBUF_X68_Y0_N2
\rddata[18]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Wb_connect|Mux31~0_combout\,
	devoe => ww_devoe,
	o => \rddata[18]~output_o\);

-- Location: IOOBUF_X63_Y67_N2
\rddata[19]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Wb_connect|Mux31~0_combout\,
	devoe => ww_devoe,
	o => \rddata[19]~output_o\);

-- Location: IOOBUF_X81_Y2_N9
\rddata[20]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Wb_connect|Mux31~0_combout\,
	devoe => ww_devoe,
	o => \rddata[20]~output_o\);

-- Location: IOOBUF_X58_Y0_N9
\rddata[21]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Wb_connect|Mux31~0_combout\,
	devoe => ww_devoe,
	o => \rddata[21]~output_o\);

-- Location: IOOBUF_X63_Y0_N2
\rddata[22]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Wb_connect|Mux31~0_combout\,
	devoe => ww_devoe,
	o => \rddata[22]~output_o\);

-- Location: IOOBUF_X58_Y67_N23
\rddata[23]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Wb_connect|Mux31~0_combout\,
	devoe => ww_devoe,
	o => \rddata[23]~output_o\);

-- Location: IOOBUF_X44_Y67_N23
\rddata[24]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Wb_connect|Mux31~0_combout\,
	devoe => ww_devoe,
	o => \rddata[24]~output_o\);

-- Location: IOOBUF_X52_Y67_N9
\rddata[25]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Wb_connect|Mux31~0_combout\,
	devoe => ww_devoe,
	o => \rddata[25]~output_o\);

-- Location: IOOBUF_X44_Y67_N2
\rddata[26]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Wb_connect|Mux31~0_combout\,
	devoe => ww_devoe,
	o => \rddata[26]~output_o\);

-- Location: IOOBUF_X47_Y67_N2
\rddata[27]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Wb_connect|Mux31~0_combout\,
	devoe => ww_devoe,
	o => \rddata[27]~output_o\);

-- Location: IOOBUF_X47_Y67_N9
\rddata[28]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Wb_connect|Mux31~0_combout\,
	devoe => ww_devoe,
	o => \rddata[28]~output_o\);

-- Location: IOOBUF_X81_Y2_N2
\rddata[29]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Wb_connect|Mux31~0_combout\,
	devoe => ww_devoe,
	o => \rddata[29]~output_o\);

-- Location: IOOBUF_X56_Y0_N16
\rddata[30]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Wb_connect|Mux31~0_combout\,
	devoe => ww_devoe,
	o => \rddata[30]~output_o\);

-- Location: IOOBUF_X54_Y67_N16
\rddata[31]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Wb_connect|Mux31~0_combout\,
	devoe => ww_devoe,
	o => \rddata[31]~output_o\);

-- Location: IOOBUF_X81_Y7_N16
\A_Alu[0]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \MUX_ASel|AB[0]~0_combout\,
	devoe => ww_devoe,
	o => \A_Alu[0]~output_o\);

-- Location: IOOBUF_X81_Y4_N2
\A_Alu[1]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \MUX_ASel|AB[0]~0_combout\,
	devoe => ww_devoe,
	o => \A_Alu[1]~output_o\);

-- Location: IOOBUF_X81_Y6_N9
\A_Alu[2]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \MUX_ASel|AB[0]~0_combout\,
	devoe => ww_devoe,
	o => \A_Alu[2]~output_o\);

-- Location: IOOBUF_X81_Y9_N9
\A_Alu[3]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \MUX_ASel|AB[3]~1_combout\,
	devoe => ww_devoe,
	o => \A_Alu[3]~output_o\);

-- Location: IOOBUF_X81_Y9_N2
\A_Alu[4]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \MUX_ASel|AB[3]~1_combout\,
	devoe => ww_devoe,
	o => \A_Alu[4]~output_o\);

-- Location: IOOBUF_X81_Y7_N9
\A_Alu[5]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \MUX_ASel|AB[0]~0_combout\,
	devoe => ww_devoe,
	o => \A_Alu[5]~output_o\);

-- Location: IOOBUF_X81_Y6_N2
\A_Alu[6]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \MUX_ASel|AB[0]~0_combout\,
	devoe => ww_devoe,
	o => \A_Alu[6]~output_o\);

-- Location: IOOBUF_X81_Y4_N16
\A_Alu[7]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \MUX_ASel|AB[0]~0_combout\,
	devoe => ww_devoe,
	o => \A_Alu[7]~output_o\);

-- Location: IOOBUF_X81_Y6_N16
\A_Alu[8]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \MUX_ASel|AB[0]~0_combout\,
	devoe => ww_devoe,
	o => \A_Alu[8]~output_o\);

-- Location: IOOBUF_X81_Y7_N2
\A_Alu[9]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \MUX_ASel|AB[0]~0_combout\,
	devoe => ww_devoe,
	o => \A_Alu[9]~output_o\);

-- Location: IOOBUF_X81_Y39_N9
\A_Alu[10]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \MUX_ASel|AB[10]~2_combout\,
	devoe => ww_devoe,
	o => \A_Alu[10]~output_o\);

-- Location: IOOBUF_X81_Y59_N16
\A_Alu[11]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \MUX_ASel|AB[11]~3_combout\,
	devoe => ww_devoe,
	o => \A_Alu[11]~output_o\);

-- Location: IOOBUF_X81_Y61_N16
\A_Alu[12]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \MUX_ASel|AB[12]~4_combout\,
	devoe => ww_devoe,
	o => \A_Alu[12]~output_o\);

-- Location: IOOBUF_X81_Y11_N2
\A_Alu[13]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \MUX_ASel|AB[13]~5_combout\,
	devoe => ww_devoe,
	o => \A_Alu[13]~output_o\);

-- Location: IOOBUF_X81_Y10_N2
\A_Alu[14]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \MUX_ASel|AB[14]~6_combout\,
	devoe => ww_devoe,
	o => \A_Alu[14]~output_o\);

-- Location: IOOBUF_X81_Y61_N2
\A_Alu[15]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \MUX_ASel|AB[15]~7_combout\,
	devoe => ww_devoe,
	o => \A_Alu[15]~output_o\);

-- Location: IOOBUF_X81_Y61_N9
\A_Alu[16]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \MUX_ASel|AB[16]~8_combout\,
	devoe => ww_devoe,
	o => \A_Alu[16]~output_o\);

-- Location: IOOBUF_X81_Y43_N2
\A_Alu[17]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \MUX_ASel|AB[17]~9_combout\,
	devoe => ww_devoe,
	o => \A_Alu[17]~output_o\);

-- Location: IOOBUF_X81_Y56_N9
\A_Alu[18]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \MUX_ASel|AB[18]~10_combout\,
	devoe => ww_devoe,
	o => \A_Alu[18]~output_o\);

-- Location: IOOBUF_X81_Y19_N2
\A_Alu[19]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \MUX_ASel|AB[19]~11_combout\,
	devoe => ww_devoe,
	o => \A_Alu[19]~output_o\);

-- Location: IOOBUF_X81_Y25_N2
\A_Alu[20]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \MUX_ASel|AB[20]~12_combout\,
	devoe => ww_devoe,
	o => \A_Alu[20]~output_o\);

-- Location: IOOBUF_X81_Y25_N16
\A_Alu[21]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \MUX_ASel|AB[21]~13_combout\,
	devoe => ww_devoe,
	o => \A_Alu[21]~output_o\);

-- Location: IOOBUF_X81_Y25_N9
\A_Alu[22]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \MUX_ASel|AB[22]~14_combout\,
	devoe => ww_devoe,
	o => \A_Alu[22]~output_o\);

-- Location: IOOBUF_X81_Y19_N9
\A_Alu[23]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \MUX_ASel|AB[23]~15_combout\,
	devoe => ww_devoe,
	o => \A_Alu[23]~output_o\);

-- Location: IOOBUF_X81_Y11_N23
\A_Alu[24]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \MUX_ASel|AB[24]~16_combout\,
	devoe => ww_devoe,
	o => \A_Alu[24]~output_o\);

-- Location: IOOBUF_X81_Y12_N2
\A_Alu[25]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \MUX_ASel|AB[25]~17_combout\,
	devoe => ww_devoe,
	o => \A_Alu[25]~output_o\);

-- Location: IOOBUF_X81_Y12_N9
\A_Alu[26]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \MUX_ASel|AB[26]~18_combout\,
	devoe => ww_devoe,
	o => \A_Alu[26]~output_o\);

-- Location: IOOBUF_X81_Y63_N2
\A_Alu[27]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \MUX_ASel|AB[27]~19_combout\,
	devoe => ww_devoe,
	o => \A_Alu[27]~output_o\);

-- Location: IOOBUF_X81_Y10_N16
\A_Alu[28]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \MUX_ASel|AB[28]~20_combout\,
	devoe => ww_devoe,
	o => \A_Alu[28]~output_o\);

-- Location: IOOBUF_X81_Y23_N9
\A_Alu[29]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \MUX_ASel|AB[29]~21_combout\,
	devoe => ww_devoe,
	o => \A_Alu[29]~output_o\);

-- Location: IOOBUF_X81_Y39_N2
\A_Alu[30]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \MUX_ASel|AB[30]~22_combout\,
	devoe => ww_devoe,
	o => \A_Alu[30]~output_o\);

-- Location: IOOBUF_X81_Y10_N9
\A_Alu[31]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \MUX_ASel|AB[31]~23_combout\,
	devoe => ww_devoe,
	o => \A_Alu[31]~output_o\);

-- Location: IOOBUF_X81_Y58_N2
\B_Alu[0]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \MUX_BSel|AB[0]~1_combout\,
	devoe => ww_devoe,
	o => \B_Alu[0]~output_o\);

-- Location: IOOBUF_X81_Y59_N9
\B_Alu[1]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \MUX_BSel|AB[1]~2_combout\,
	devoe => ww_devoe,
	o => \B_Alu[1]~output_o\);

-- Location: IOOBUF_X81_Y52_N2
\B_Alu[2]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \MUX_BSel|AB[2]~3_combout\,
	devoe => ww_devoe,
	o => \B_Alu[2]~output_o\);

-- Location: IOOBUF_X81_Y65_N16
\B_Alu[3]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \MUX_BSel|AB[3]~4_combout\,
	devoe => ww_devoe,
	o => \B_Alu[3]~output_o\);

-- Location: IOOBUF_X65_Y67_N2
\B_Alu[4]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \MUX_BSel|AB[4]~0_combout\,
	devoe => ww_devoe,
	o => \B_Alu[4]~output_o\);

-- Location: IOOBUF_X70_Y67_N16
\B_Alu[5]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \MUX_BSel|AB[5]~5_combout\,
	devoe => ww_devoe,
	o => \B_Alu[5]~output_o\);

-- Location: IOOBUF_X70_Y67_N2
\B_Alu[6]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \MUX_BSel|AB[5]~5_combout\,
	devoe => ww_devoe,
	o => \B_Alu[6]~output_o\);

-- Location: IOOBUF_X70_Y67_N9
\B_Alu[7]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \MUX_BSel|AB[4]~0_combout\,
	devoe => ww_devoe,
	o => \B_Alu[7]~output_o\);

-- Location: IOOBUF_X65_Y67_N9
\B_Alu[8]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \MUX_BSel|AB[4]~0_combout\,
	devoe => ww_devoe,
	o => \B_Alu[8]~output_o\);

-- Location: IOOBUF_X68_Y67_N2
\B_Alu[9]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \MUX_BSel|AB[4]~0_combout\,
	devoe => ww_devoe,
	o => \B_Alu[9]~output_o\);

-- Location: IOOBUF_X81_Y59_N2
\B_Alu[10]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \MUX_BSel|AB[10]~6_combout\,
	devoe => ww_devoe,
	o => \B_Alu[10]~output_o\);

-- Location: IOOBUF_X63_Y67_N16
\B_Alu[11]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \MUX_BSel|ALT_INV_AB[11]~7_combout\,
	devoe => ww_devoe,
	o => \B_Alu[11]~output_o\);

-- Location: IOOBUF_X58_Y0_N2
\B_Alu[12]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \MUX_BSel|ALT_INV_AB[11]~7_combout\,
	devoe => ww_devoe,
	o => \B_Alu[12]~output_o\);

-- Location: IOOBUF_X49_Y0_N2
\B_Alu[13]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \MUX_BSel|ALT_INV_AB[11]~7_combout\,
	devoe => ww_devoe,
	o => \B_Alu[13]~output_o\);

-- Location: IOOBUF_X56_Y67_N16
\B_Alu[14]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \MUX_BSel|ALT_INV_AB[11]~7_combout\,
	devoe => ww_devoe,
	o => \B_Alu[14]~output_o\);

-- Location: IOOBUF_X70_Y0_N9
\B_Alu[15]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \MUX_BSel|ALT_INV_AB[11]~7_combout\,
	devoe => ww_devoe,
	o => \B_Alu[15]~output_o\);

-- Location: IOOBUF_X56_Y67_N23
\B_Alu[16]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \MUX_BSel|ALT_INV_AB[11]~7_combout\,
	devoe => ww_devoe,
	o => \B_Alu[16]~output_o\);

-- Location: IOOBUF_X52_Y67_N23
\B_Alu[17]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \MUX_BSel|ALT_INV_AB[11]~7_combout\,
	devoe => ww_devoe,
	o => \B_Alu[17]~output_o\);

-- Location: IOOBUF_X52_Y67_N16
\B_Alu[18]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \MUX_BSel|ALT_INV_AB[11]~7_combout\,
	devoe => ww_devoe,
	o => \B_Alu[18]~output_o\);

-- Location: IOOBUF_X70_Y0_N16
\B_Alu[19]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \MUX_BSel|ALT_INV_AB[11]~7_combout\,
	devoe => ww_devoe,
	o => \B_Alu[19]~output_o\);

-- Location: IOOBUF_X49_Y0_N9
\B_Alu[20]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \MUX_BSel|ALT_INV_AB[11]~7_combout\,
	devoe => ww_devoe,
	o => \B_Alu[20]~output_o\);

-- Location: IOOBUF_X52_Y0_N16
\B_Alu[21]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \MUX_BSel|ALT_INV_AB[11]~7_combout\,
	devoe => ww_devoe,
	o => \B_Alu[21]~output_o\);

-- Location: IOOBUF_X68_Y0_N16
\B_Alu[22]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \MUX_BSel|ALT_INV_AB[11]~7_combout\,
	devoe => ww_devoe,
	o => \B_Alu[22]~output_o\);

-- Location: IOOBUF_X65_Y0_N16
\B_Alu[23]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \MUX_BSel|ALT_INV_AB[11]~7_combout\,
	devoe => ww_devoe,
	o => \B_Alu[23]~output_o\);

-- Location: IOOBUF_X63_Y67_N9
\B_Alu[24]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \MUX_BSel|ALT_INV_AB[11]~7_combout\,
	devoe => ww_devoe,
	o => \B_Alu[24]~output_o\);

-- Location: IOOBUF_X52_Y0_N2
\B_Alu[25]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \MUX_BSel|ALT_INV_AB[11]~7_combout\,
	devoe => ww_devoe,
	o => \B_Alu[25]~output_o\);

-- Location: IOOBUF_X61_Y0_N2
\B_Alu[26]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \MUX_BSel|ALT_INV_AB[11]~7_combout\,
	devoe => ww_devoe,
	o => \B_Alu[26]~output_o\);

-- Location: IOOBUF_X52_Y67_N2
\B_Alu[27]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \MUX_BSel|ALT_INV_AB[11]~7_combout\,
	devoe => ww_devoe,
	o => \B_Alu[27]~output_o\);

-- Location: IOOBUF_X65_Y0_N2
\B_Alu[28]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \MUX_BSel|ALT_INV_AB[11]~7_combout\,
	devoe => ww_devoe,
	o => \B_Alu[28]~output_o\);

-- Location: IOOBUF_X65_Y0_N9
\B_Alu[29]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \MUX_BSel|ALT_INV_AB[11]~7_combout\,
	devoe => ww_devoe,
	o => \B_Alu[29]~output_o\);

-- Location: IOOBUF_X56_Y67_N2
\B_Alu[30]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \MUX_BSel|ALT_INV_AB[11]~7_combout\,
	devoe => ww_devoe,
	o => \B_Alu[30]~output_o\);

-- Location: IOOBUF_X56_Y67_N9
\B_Alu[31]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \MUX_BSel|ALT_INV_AB[11]~7_combout\,
	devoe => ww_devoe,
	o => \B_Alu[31]~output_o\);

-- Location: IOOBUF_X81_Y52_N16
\wbs[0]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \imemfetch_connect|fetch_block|ALT_INV_Decoder0~0_combout\,
	devoe => ww_devoe,
	o => \wbs[0]~output_o\);

-- Location: IOOBUF_X56_Y0_N9
\wbs[1]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \wbs[1]~output_o\);

-- Location: IOOBUF_X81_Y20_N9
\rs1_out[0]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \imemfetch_connect|fetch_block|rs1[0]~1_combout\,
	devoe => ww_devoe,
	o => \rs1_out[0]~output_o\);

-- Location: IOOBUF_X81_Y26_N2
\rs1_out[1]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \imemfetch_connect|fetch_block|rs1[1]~0_combout\,
	devoe => ww_devoe,
	o => \rs1_out[1]~output_o\);

-- Location: IOOBUF_X6_Y0_N23
\rs1_out[2]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \rs1_out[2]~output_o\);

-- Location: IOOBUF_X22_Y67_N2
\rs1_out[3]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \rs1_out[3]~output_o\);

-- Location: IOOBUF_X19_Y0_N23
\rs1_out[4]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \rs1_out[4]~output_o\);

-- Location: IOOBUF_X81_Y65_N2
\Reg_WEn~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Controller_connect|ControlUnit|WideOr0~0_combout\,
	devoe => ww_devoe,
	o => \Reg_WEn~output_o\);

-- Location: IOIBUF_X38_Y0_N15
\clk~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clk,
	o => \clk~input_o\);

-- Location: CLKCTRL_G29
\clk~inputclkctrl\ : cycloneiv_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \clk~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \clk~inputclkctrl_outclk\);

-- Location: LCCOMB_X80_Y45_N2
\PC_connect|PC_register_pc|Q[2]~30\ : cycloneiv_lcell_comb
-- Equation(s):
-- \PC_connect|PC_register_pc|Q[2]~30_combout\ = \PC_connect|PC_register_pc|Q\(2) $ (VCC)
-- \PC_connect|PC_register_pc|Q[2]~31\ = CARRY(\PC_connect|PC_register_pc|Q\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \PC_connect|PC_register_pc|Q\(2),
	datad => VCC,
	combout => \PC_connect|PC_register_pc|Q[2]~30_combout\,
	cout => \PC_connect|PC_register_pc|Q[2]~31\);

-- Location: IOIBUF_X81_Y44_N1
\rst~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_rst,
	o => \rst~input_o\);

-- Location: LCCOMB_X80_Y45_N6
\PC_connect|PC_register_pc|Q[4]~36\ : cycloneiv_lcell_comb
-- Equation(s):
-- \PC_connect|PC_register_pc|Q[4]~36_combout\ = (\PC_connect|PC_register_pc|Q\(4) & (\PC_connect|PC_register_pc|Q[3]~35\ $ (GND))) # (!\PC_connect|PC_register_pc|Q\(4) & (!\PC_connect|PC_register_pc|Q[3]~35\ & VCC))
-- \PC_connect|PC_register_pc|Q[4]~37\ = CARRY((\PC_connect|PC_register_pc|Q\(4) & !\PC_connect|PC_register_pc|Q[3]~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \PC_connect|PC_register_pc|Q\(4),
	datad => VCC,
	cin => \PC_connect|PC_register_pc|Q[3]~35\,
	combout => \PC_connect|PC_register_pc|Q[4]~36_combout\,
	cout => \PC_connect|PC_register_pc|Q[4]~37\);

-- Location: LCCOMB_X80_Y45_N8
\PC_connect|PC_register_pc|Q[5]~38\ : cycloneiv_lcell_comb
-- Equation(s):
-- \PC_connect|PC_register_pc|Q[5]~38_combout\ = (\PC_connect|PC_register_pc|Q\(5) & (!\PC_connect|PC_register_pc|Q[4]~37\)) # (!\PC_connect|PC_register_pc|Q\(5) & ((\PC_connect|PC_register_pc|Q[4]~37\) # (GND)))
-- \PC_connect|PC_register_pc|Q[5]~39\ = CARRY((!\PC_connect|PC_register_pc|Q[4]~37\) # (!\PC_connect|PC_register_pc|Q\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \PC_connect|PC_register_pc|Q\(5),
	datad => VCC,
	cin => \PC_connect|PC_register_pc|Q[4]~37\,
	combout => \PC_connect|PC_register_pc|Q[5]~38_combout\,
	cout => \PC_connect|PC_register_pc|Q[5]~39\);

-- Location: IOIBUF_X81_Y53_N8
\Stop_en~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Stop_en,
	o => \Stop_en~input_o\);

-- Location: LCCOMB_X80_Y45_N0
\PC_connect|PC_register_pc|Q[12]~33\ : cycloneiv_lcell_comb
-- Equation(s):
-- \PC_connect|PC_register_pc|Q[12]~33_combout\ = (\rst~input_o\) # (!\Stop_en~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \rst~input_o\,
	datad => \Stop_en~input_o\,
	combout => \PC_connect|PC_register_pc|Q[12]~33_combout\);

-- Location: FF_X80_Y45_N9
\PC_connect|PC_register_pc|Q[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \PC_connect|PC_register_pc|Q[5]~38_combout\,
	sclr => \PC_connect|PC_register_pc|Q[12]~32_combout\,
	ena => \PC_connect|PC_register_pc|Q[12]~33_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC_connect|PC_register_pc|Q\(5));

-- Location: LCCOMB_X80_Y45_N10
\PC_connect|PC_register_pc|Q[6]~40\ : cycloneiv_lcell_comb
-- Equation(s):
-- \PC_connect|PC_register_pc|Q[6]~40_combout\ = (\PC_connect|PC_register_pc|Q\(6) & (\PC_connect|PC_register_pc|Q[5]~39\ $ (GND))) # (!\PC_connect|PC_register_pc|Q\(6) & (!\PC_connect|PC_register_pc|Q[5]~39\ & VCC))
-- \PC_connect|PC_register_pc|Q[6]~41\ = CARRY((\PC_connect|PC_register_pc|Q\(6) & !\PC_connect|PC_register_pc|Q[5]~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \PC_connect|PC_register_pc|Q\(6),
	datad => VCC,
	cin => \PC_connect|PC_register_pc|Q[5]~39\,
	combout => \PC_connect|PC_register_pc|Q[6]~40_combout\,
	cout => \PC_connect|PC_register_pc|Q[6]~41\);

-- Location: FF_X80_Y45_N11
\PC_connect|PC_register_pc|Q[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \PC_connect|PC_register_pc|Q[6]~40_combout\,
	sclr => \PC_connect|PC_register_pc|Q[12]~32_combout\,
	ena => \PC_connect|PC_register_pc|Q[12]~33_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC_connect|PC_register_pc|Q\(6));

-- Location: LCCOMB_X80_Y45_N12
\PC_connect|PC_register_pc|Q[7]~42\ : cycloneiv_lcell_comb
-- Equation(s):
-- \PC_connect|PC_register_pc|Q[7]~42_combout\ = (\PC_connect|PC_register_pc|Q\(7) & (!\PC_connect|PC_register_pc|Q[6]~41\)) # (!\PC_connect|PC_register_pc|Q\(7) & ((\PC_connect|PC_register_pc|Q[6]~41\) # (GND)))
-- \PC_connect|PC_register_pc|Q[7]~43\ = CARRY((!\PC_connect|PC_register_pc|Q[6]~41\) # (!\PC_connect|PC_register_pc|Q\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \PC_connect|PC_register_pc|Q\(7),
	datad => VCC,
	cin => \PC_connect|PC_register_pc|Q[6]~41\,
	combout => \PC_connect|PC_register_pc|Q[7]~42_combout\,
	cout => \PC_connect|PC_register_pc|Q[7]~43\);

-- Location: FF_X80_Y45_N13
\PC_connect|PC_register_pc|Q[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \PC_connect|PC_register_pc|Q[7]~42_combout\,
	sclr => \PC_connect|PC_register_pc|Q[12]~32_combout\,
	ena => \PC_connect|PC_register_pc|Q[12]~33_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC_connect|PC_register_pc|Q\(7));

-- Location: LCCOMB_X80_Y45_N14
\PC_connect|PC_register_pc|Q[8]~44\ : cycloneiv_lcell_comb
-- Equation(s):
-- \PC_connect|PC_register_pc|Q[8]~44_combout\ = (\PC_connect|PC_register_pc|Q\(8) & (\PC_connect|PC_register_pc|Q[7]~43\ $ (GND))) # (!\PC_connect|PC_register_pc|Q\(8) & (!\PC_connect|PC_register_pc|Q[7]~43\ & VCC))
-- \PC_connect|PC_register_pc|Q[8]~45\ = CARRY((\PC_connect|PC_register_pc|Q\(8) & !\PC_connect|PC_register_pc|Q[7]~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \PC_connect|PC_register_pc|Q\(8),
	datad => VCC,
	cin => \PC_connect|PC_register_pc|Q[7]~43\,
	combout => \PC_connect|PC_register_pc|Q[8]~44_combout\,
	cout => \PC_connect|PC_register_pc|Q[8]~45\);

-- Location: FF_X80_Y45_N15
\PC_connect|PC_register_pc|Q[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \PC_connect|PC_register_pc|Q[8]~44_combout\,
	sclr => \PC_connect|PC_register_pc|Q[12]~32_combout\,
	ena => \PC_connect|PC_register_pc|Q[12]~33_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC_connect|PC_register_pc|Q\(8));

-- Location: LCCOMB_X80_Y45_N16
\PC_connect|PC_register_pc|Q[9]~46\ : cycloneiv_lcell_comb
-- Equation(s):
-- \PC_connect|PC_register_pc|Q[9]~46_combout\ = (\PC_connect|PC_register_pc|Q\(9) & (!\PC_connect|PC_register_pc|Q[8]~45\)) # (!\PC_connect|PC_register_pc|Q\(9) & ((\PC_connect|PC_register_pc|Q[8]~45\) # (GND)))
-- \PC_connect|PC_register_pc|Q[9]~47\ = CARRY((!\PC_connect|PC_register_pc|Q[8]~45\) # (!\PC_connect|PC_register_pc|Q\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \PC_connect|PC_register_pc|Q\(9),
	datad => VCC,
	cin => \PC_connect|PC_register_pc|Q[8]~45\,
	combout => \PC_connect|PC_register_pc|Q[9]~46_combout\,
	cout => \PC_connect|PC_register_pc|Q[9]~47\);

-- Location: FF_X80_Y45_N17
\PC_connect|PC_register_pc|Q[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \PC_connect|PC_register_pc|Q[9]~46_combout\,
	sclr => \PC_connect|PC_register_pc|Q[12]~32_combout\,
	ena => \PC_connect|PC_register_pc|Q[12]~33_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC_connect|PC_register_pc|Q\(9));

-- Location: LCCOMB_X79_Y44_N4
\imemfetch_connect|imem_block|memory~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \imemfetch_connect|imem_block|memory~0_combout\ = (!\PC_connect|PC_register_pc|Q\(7) & (!\PC_connect|PC_register_pc|Q\(8) & (!\PC_connect|PC_register_pc|Q\(6) & !\PC_connect|PC_register_pc|Q\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC_connect|PC_register_pc|Q\(7),
	datab => \PC_connect|PC_register_pc|Q\(8),
	datac => \PC_connect|PC_register_pc|Q\(6),
	datad => \PC_connect|PC_register_pc|Q\(9),
	combout => \imemfetch_connect|imem_block|memory~0_combout\);

-- Location: LCCOMB_X79_Y44_N26
\imemfetch_connect|imem_block|memory~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \imemfetch_connect|imem_block|memory~1_combout\ = (\PC_connect|PC_register_pc|Q\(2) & ((\PC_connect|PC_register_pc|Q\(5)) # ((\PC_connect|PC_register_pc|Q\(4) & !\PC_connect|PC_register_pc|Q\(3))))) # (!\PC_connect|PC_register_pc|Q\(2) & 
-- ((\PC_connect|PC_register_pc|Q\(4)) # ((\PC_connect|PC_register_pc|Q\(3) & \PC_connect|PC_register_pc|Q\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111001001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC_connect|PC_register_pc|Q\(2),
	datab => \PC_connect|PC_register_pc|Q\(4),
	datac => \PC_connect|PC_register_pc|Q\(3),
	datad => \PC_connect|PC_register_pc|Q\(5),
	combout => \imemfetch_connect|imem_block|memory~1_combout\);

-- Location: LCCOMB_X79_Y44_N12
\regfile_connect|mregfile|decoder5_32|en[7]~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \regfile_connect|mregfile|decoder5_32|en[7]~0_combout\ = (\imemfetch_connect|imem_block|memory~0_combout\ & !\imemfetch_connect|imem_block|memory~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \imemfetch_connect|imem_block|memory~0_combout\,
	datac => \imemfetch_connect|imem_block|memory~1_combout\,
	combout => \regfile_connect|mregfile|decoder5_32|en[7]~0_combout\);

-- Location: LCCOMB_X79_Y44_N2
\imemfetch_connect|imem_block|memory~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \imemfetch_connect|imem_block|memory~4_combout\ = (!\PC_connect|PC_register_pc|Q\(5) & !\PC_connect|PC_register_pc|Q\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \PC_connect|PC_register_pc|Q\(5),
	datad => \PC_connect|PC_register_pc|Q\(2),
	combout => \imemfetch_connect|imem_block|memory~4_combout\);

-- Location: LCCOMB_X79_Y44_N16
\imemfetch_connect|imem_block|memory~5\ : cycloneiv_lcell_comb
-- Equation(s):
-- \imemfetch_connect|imem_block|memory~5_combout\ = (\PC_connect|PC_register_pc|Q\(3) & (\PC_connect|PC_register_pc|Q\(4) & (\imemfetch_connect|imem_block|memory~0_combout\ & \imemfetch_connect|imem_block|memory~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC_connect|PC_register_pc|Q\(3),
	datab => \PC_connect|PC_register_pc|Q\(4),
	datac => \imemfetch_connect|imem_block|memory~0_combout\,
	datad => \imemfetch_connect|imem_block|memory~4_combout\,
	combout => \imemfetch_connect|imem_block|memory~5_combout\);

-- Location: LCCOMB_X79_Y44_N22
\imemfetch_connect|imem_block|memory~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \imemfetch_connect|imem_block|memory~2_combout\ = (!\PC_connect|PC_register_pc|Q\(2) & ((\PC_connect|PC_register_pc|Q\(5) & (!\PC_connect|PC_register_pc|Q\(3) & !\PC_connect|PC_register_pc|Q\(4))) # (!\PC_connect|PC_register_pc|Q\(5) & 
-- ((\PC_connect|PC_register_pc|Q\(4))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC_connect|PC_register_pc|Q\(3),
	datab => \PC_connect|PC_register_pc|Q\(5),
	datac => \PC_connect|PC_register_pc|Q\(2),
	datad => \PC_connect|PC_register_pc|Q\(4),
	combout => \imemfetch_connect|imem_block|memory~2_combout\);

-- Location: LCCOMB_X79_Y44_N0
\imemfetch_connect|imem_block|memory~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \imemfetch_connect|imem_block|memory~3_combout\ = (\imemfetch_connect|imem_block|memory~0_combout\ & \imemfetch_connect|imem_block|memory~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \imemfetch_connect|imem_block|memory~0_combout\,
	datad => \imemfetch_connect|imem_block|memory~2_combout\,
	combout => \imemfetch_connect|imem_block|memory~3_combout\);

-- Location: LCCOMB_X79_Y44_N18
\imemfetch_connect|imem_block|memory~6\ : cycloneiv_lcell_comb
-- Equation(s):
-- \imemfetch_connect|imem_block|memory~6_combout\ = (\PC_connect|PC_register_pc|Q\(5) & ((\PC_connect|PC_register_pc|Q\(4)) # ((\PC_connect|PC_register_pc|Q\(3)) # (\PC_connect|PC_register_pc|Q\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC_connect|PC_register_pc|Q\(4),
	datab => \PC_connect|PC_register_pc|Q\(5),
	datac => \PC_connect|PC_register_pc|Q\(3),
	datad => \PC_connect|PC_register_pc|Q\(2),
	combout => \imemfetch_connect|imem_block|memory~6_combout\);

-- Location: LCCOMB_X79_Y44_N8
\imemfetch_connect|imem_block|memory~7\ : cycloneiv_lcell_comb
-- Equation(s):
-- \imemfetch_connect|imem_block|memory~7_combout\ = (\imemfetch_connect|imem_block|memory~0_combout\ & !\imemfetch_connect|imem_block|memory~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \imemfetch_connect|imem_block|memory~0_combout\,
	datad => \imemfetch_connect|imem_block|memory~6_combout\,
	combout => \imemfetch_connect|imem_block|memory~7_combout\);

-- Location: LCCOMB_X79_Y44_N6
\imemfetch_connect|fetch_block|Selector2~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \imemfetch_connect|fetch_block|Selector2~0_combout\ = (!\regfile_connect|mregfile|decoder5_32|en[7]~0_combout\ & (\imemfetch_connect|imem_block|memory~5_combout\ & (\imemfetch_connect|imem_block|memory~3_combout\ & 
-- \imemfetch_connect|imem_block|memory~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \regfile_connect|mregfile|decoder5_32|en[7]~0_combout\,
	datab => \imemfetch_connect|imem_block|memory~5_combout\,
	datac => \imemfetch_connect|imem_block|memory~3_combout\,
	datad => \imemfetch_connect|imem_block|memory~7_combout\,
	combout => \imemfetch_connect|fetch_block|Selector2~0_combout\);

-- Location: LCCOMB_X79_Y44_N10
\imemfetch_connect|imem_block|memory~8\ : cycloneiv_lcell_comb
-- Equation(s):
-- \imemfetch_connect|imem_block|memory~8_combout\ = (!\PC_connect|PC_register_pc|Q\(5) & (\imemfetch_connect|imem_block|memory~0_combout\ & !\PC_connect|PC_register_pc|Q\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \PC_connect|PC_register_pc|Q\(5),
	datac => \imemfetch_connect|imem_block|memory~0_combout\,
	datad => \PC_connect|PC_register_pc|Q\(2),
	combout => \imemfetch_connect|imem_block|memory~8_combout\);

-- Location: LCCOMB_X79_Y45_N26
\regfile_connect|mregfile|register_loop[2].register_inst|Q~6\ : cycloneiv_lcell_comb
-- Equation(s):
-- \regfile_connect|mregfile|register_loop[2].register_inst|Q~6_combout\ = (\PC_connect|PC_register_pc|Q\(2)) # (((\PC_connect|PC_register_pc|Q\(5)) # (\PC_connect|PC_register_pc|Q\(4))) # (!\PC_connect|PC_register_pc|Q\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC_connect|PC_register_pc|Q\(2),
	datab => \PC_connect|PC_register_pc|Q\(3),
	datac => \PC_connect|PC_register_pc|Q\(5),
	datad => \PC_connect|PC_register_pc|Q\(4),
	combout => \regfile_connect|mregfile|register_loop[2].register_inst|Q~6_combout\);

-- Location: LCCOMB_X79_Y45_N28
\regfile_connect|mregfile|register_loop[2].register_inst|Q~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \regfile_connect|mregfile|register_loop[2].register_inst|Q~3_combout\ = (\regfile_connect|mregfile|register_loop[2].register_inst|Q~6_combout\) # ((\PC_connect|PC_register_pc|Q\(7)) # ((\PC_connect|PC_register_pc|Q\(8)) # 
-- (\PC_connect|PC_register_pc|Q\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \regfile_connect|mregfile|register_loop[2].register_inst|Q~6_combout\,
	datab => \PC_connect|PC_register_pc|Q\(7),
	datac => \PC_connect|PC_register_pc|Q\(8),
	datad => \PC_connect|PC_register_pc|Q\(9),
	combout => \regfile_connect|mregfile|register_loop[2].register_inst|Q~3_combout\);

-- Location: LCCOMB_X79_Y45_N4
\regfile_connect|mregfile|register_loop[2].register_inst|Q~22\ : cycloneiv_lcell_comb
-- Equation(s):
-- \regfile_connect|mregfile|register_loop[2].register_inst|Q~22_combout\ = (\regfile_connect|mregfile|register_loop[2].register_inst|Q\(0) & (!\rst~input_o\ & ((\PC_connect|PC_register_pc|Q\(6)) # 
-- (\regfile_connect|mregfile|register_loop[2].register_inst|Q~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC_connect|PC_register_pc|Q\(6),
	datab => \regfile_connect|mregfile|register_loop[2].register_inst|Q~3_combout\,
	datac => \regfile_connect|mregfile|register_loop[2].register_inst|Q\(0),
	datad => \rst~input_o\,
	combout => \regfile_connect|mregfile|register_loop[2].register_inst|Q~22_combout\);

-- Location: FF_X79_Y45_N5
\regfile_connect|mregfile|register_loop[2].register_inst|Q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \regfile_connect|mregfile|register_loop[2].register_inst|Q~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regfile_connect|mregfile|register_loop[2].register_inst|Q\(0));

-- Location: LCCOMB_X78_Y44_N0
\regfile_connect|mregfile|register_loop[6].register_inst|Q~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \regfile_connect|mregfile|register_loop[6].register_inst|Q~2_combout\ = (!\rst~input_o\ & \regfile_connect|mregfile|register_loop[6].register_inst|Q\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \rst~input_o\,
	datad => \regfile_connect|mregfile|register_loop[6].register_inst|Q\(0),
	combout => \regfile_connect|mregfile|register_loop[6].register_inst|Q~2_combout\);

-- Location: FF_X79_Y44_N3
\regfile_connect|mregfile|register_loop[6].register_inst|Q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \regfile_connect|mregfile|register_loop[6].register_inst|Q~2_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regfile_connect|mregfile|register_loop[6].register_inst|Q\(0));

-- Location: LCCOMB_X78_Y44_N26
\regfile_connect|mregfile|register_loop[5].register_inst|Q~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \regfile_connect|mregfile|register_loop[5].register_inst|Q~2_combout\ = (\regfile_connect|mregfile|register_loop[5].register_inst|Q\(0) & !\rst~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \regfile_connect|mregfile|register_loop[5].register_inst|Q\(0),
	datad => \rst~input_o\,
	combout => \regfile_connect|mregfile|register_loop[5].register_inst|Q~2_combout\);

-- Location: FF_X79_Y44_N9
\regfile_connect|mregfile|register_loop[5].register_inst|Q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \regfile_connect|mregfile|register_loop[5].register_inst|Q~2_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regfile_connect|mregfile|register_loop[5].register_inst|Q\(0));

-- Location: LCCOMB_X79_Y44_N14
\regfile_connect|mregfile|muxB|Mux31~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \regfile_connect|mregfile|muxB|Mux31~0_combout\ = (\PC_connect|PC_register_pc|Q\(4) & (((\regfile_connect|mregfile|register_loop[6].register_inst|Q\(0))))) # (!\PC_connect|PC_register_pc|Q\(4) & (\PC_connect|PC_register_pc|Q\(3) & 
-- ((\regfile_connect|mregfile|register_loop[5].register_inst|Q\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC_connect|PC_register_pc|Q\(3),
	datab => \PC_connect|PC_register_pc|Q\(4),
	datac => \regfile_connect|mregfile|register_loop[6].register_inst|Q\(0),
	datad => \regfile_connect|mregfile|register_loop[5].register_inst|Q\(0),
	combout => \regfile_connect|mregfile|muxB|Mux31~0_combout\);

-- Location: LCCOMB_X79_Y44_N28
\imemfetch_connect|imem_block|memory~14\ : cycloneiv_lcell_comb
-- Equation(s):
-- \imemfetch_connect|imem_block|memory~14_combout\ = (!\PC_connect|PC_register_pc|Q\(5) & ((\PC_connect|PC_register_pc|Q\(3)) # ((\PC_connect|PC_register_pc|Q\(2) & !\PC_connect|PC_register_pc|Q\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC_connect|PC_register_pc|Q\(2),
	datab => \PC_connect|PC_register_pc|Q\(5),
	datac => \PC_connect|PC_register_pc|Q\(3),
	datad => \PC_connect|PC_register_pc|Q\(4),
	combout => \imemfetch_connect|imem_block|memory~14_combout\);

-- Location: LCCOMB_X79_Y44_N24
\regfile_connect|mregfile|muxB|Mux31~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \regfile_connect|mregfile|muxB|Mux31~1_combout\ = (\imemfetch_connect|imem_block|memory~14_combout\ & (((\regfile_connect|mregfile|muxB|Mux31~0_combout\)))) # (!\imemfetch_connect|imem_block|memory~14_combout\ & 
-- (\regfile_connect|mregfile|register_loop[2].register_inst|Q\(0) & (\PC_connect|PC_register_pc|Q\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \regfile_connect|mregfile|register_loop[2].register_inst|Q\(0),
	datab => \PC_connect|PC_register_pc|Q\(4),
	datac => \regfile_connect|mregfile|muxB|Mux31~0_combout\,
	datad => \imemfetch_connect|imem_block|memory~14_combout\,
	combout => \regfile_connect|mregfile|muxB|Mux31~1_combout\);

-- Location: LCCOMB_X79_Y44_N20
\imemfetch_connect|fetch_block|WideOr2~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \imemfetch_connect|fetch_block|WideOr2~0_combout\ = (\imemfetch_connect|imem_block|memory~3_combout\ & (\imemfetch_connect|imem_block|memory~7_combout\ & ((!\imemfetch_connect|imem_block|memory~5_combout\) # 
-- (!\regfile_connect|mregfile|decoder5_32|en[7]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \regfile_connect|mregfile|decoder5_32|en[7]~0_combout\,
	datab => \imemfetch_connect|imem_block|memory~3_combout\,
	datac => \imemfetch_connect|imem_block|memory~7_combout\,
	datad => \imemfetch_connect|imem_block|memory~5_combout\,
	combout => \imemfetch_connect|fetch_block|WideOr2~0_combout\);

-- Location: LCCOMB_X79_Y44_N30
\regfile_connect|mregfile|muxB|Mux31~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \regfile_connect|mregfile|muxB|Mux31~2_combout\ = (\imemfetch_connect|imem_block|memory~8_combout\ & (\regfile_connect|mregfile|muxB|Mux31~1_combout\ & \imemfetch_connect|fetch_block|WideOr2~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \imemfetch_connect|imem_block|memory~8_combout\,
	datab => \regfile_connect|mregfile|muxB|Mux31~1_combout\,
	datad => \imemfetch_connect|fetch_block|WideOr2~0_combout\,
	combout => \regfile_connect|mregfile|muxB|Mux31~2_combout\);

-- Location: LCCOMB_X80_Y44_N30
\PC_connect|PC_register_pc|Q[12]~32\ : cycloneiv_lcell_comb
-- Equation(s):
-- \PC_connect|PC_register_pc|Q[12]~32_combout\ = (\rst~input_o\) # ((\imemfetch_connect|fetch_block|Selector2~0_combout\ & (\regfile_connect|mregfile|muxA|Mux31~16_combout\ $ (!\regfile_connect|mregfile|muxB|Mux31~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110011011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \regfile_connect|mregfile|muxA|Mux31~16_combout\,
	datab => \rst~input_o\,
	datac => \imemfetch_connect|fetch_block|Selector2~0_combout\,
	datad => \regfile_connect|mregfile|muxB|Mux31~2_combout\,
	combout => \PC_connect|PC_register_pc|Q[12]~32_combout\);

-- Location: FF_X80_Y45_N3
\PC_connect|PC_register_pc|Q[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \PC_connect|PC_register_pc|Q[2]~30_combout\,
	sclr => \PC_connect|PC_register_pc|Q[12]~32_combout\,
	ena => \PC_connect|PC_register_pc|Q[12]~33_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC_connect|PC_register_pc|Q\(2));

-- Location: LCCOMB_X80_Y45_N4
\PC_connect|PC_register_pc|Q[3]~34\ : cycloneiv_lcell_comb
-- Equation(s):
-- \PC_connect|PC_register_pc|Q[3]~34_combout\ = (\PC_connect|PC_register_pc|Q\(3) & (!\PC_connect|PC_register_pc|Q[2]~31\)) # (!\PC_connect|PC_register_pc|Q\(3) & ((\PC_connect|PC_register_pc|Q[2]~31\) # (GND)))
-- \PC_connect|PC_register_pc|Q[3]~35\ = CARRY((!\PC_connect|PC_register_pc|Q[2]~31\) # (!\PC_connect|PC_register_pc|Q\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \PC_connect|PC_register_pc|Q\(3),
	datad => VCC,
	cin => \PC_connect|PC_register_pc|Q[2]~31\,
	combout => \PC_connect|PC_register_pc|Q[3]~34_combout\,
	cout => \PC_connect|PC_register_pc|Q[3]~35\);

-- Location: FF_X80_Y45_N5
\PC_connect|PC_register_pc|Q[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \PC_connect|PC_register_pc|Q[3]~34_combout\,
	sclr => \PC_connect|PC_register_pc|Q[12]~32_combout\,
	ena => \PC_connect|PC_register_pc|Q[12]~33_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC_connect|PC_register_pc|Q\(3));

-- Location: FF_X80_Y45_N7
\PC_connect|PC_register_pc|Q[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \PC_connect|PC_register_pc|Q[4]~36_combout\,
	sclr => \PC_connect|PC_register_pc|Q[12]~32_combout\,
	ena => \PC_connect|PC_register_pc|Q[12]~33_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC_connect|PC_register_pc|Q\(4));

-- Location: LCCOMB_X79_Y45_N6
\regfile_connect|mregfile|muxA|Mux31~6\ : cycloneiv_lcell_comb
-- Equation(s):
-- \regfile_connect|mregfile|muxA|Mux31~6_combout\ = (\regfile_connect|mregfile|register_loop[2].register_inst|Q\(0) & !\PC_connect|PC_register_pc|Q\(9))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \regfile_connect|mregfile|register_loop[2].register_inst|Q\(0),
	datad => \PC_connect|PC_register_pc|Q\(9),
	combout => \regfile_connect|mregfile|muxA|Mux31~6_combout\);

-- Location: LCCOMB_X79_Y45_N18
\regfile_connect|mregfile|muxA|Mux31~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \regfile_connect|mregfile|muxA|Mux31~3_combout\ = (!\PC_connect|PC_register_pc|Q\(6) & (!\PC_connect|PC_register_pc|Q\(7) & (!\PC_connect|PC_register_pc|Q\(8) & \regfile_connect|mregfile|muxA|Mux31~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC_connect|PC_register_pc|Q\(6),
	datab => \PC_connect|PC_register_pc|Q\(7),
	datac => \PC_connect|PC_register_pc|Q\(8),
	datad => \regfile_connect|mregfile|muxA|Mux31~6_combout\,
	combout => \regfile_connect|mregfile|muxA|Mux31~3_combout\);

-- Location: LCCOMB_X79_Y45_N20
\regfile_connect|mregfile|muxA|Mux31~16\ : cycloneiv_lcell_comb
-- Equation(s):
-- \regfile_connect|mregfile|muxA|Mux31~16_combout\ = (\PC_connect|PC_register_pc|Q\(4) & (\PC_connect|PC_register_pc|Q\(3) & (!\PC_connect|PC_register_pc|Q\(5) & \regfile_connect|mregfile|muxA|Mux31~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC_connect|PC_register_pc|Q\(4),
	datab => \PC_connect|PC_register_pc|Q\(3),
	datac => \PC_connect|PC_register_pc|Q\(5),
	datad => \regfile_connect|mregfile|muxA|Mux31~3_combout\,
	combout => \regfile_connect|mregfile|muxA|Mux31~16_combout\);

-- Location: LCCOMB_X80_Y45_N18
\PC_connect|PC_register_pc|Q[10]~48\ : cycloneiv_lcell_comb
-- Equation(s):
-- \PC_connect|PC_register_pc|Q[10]~48_combout\ = (\PC_connect|PC_register_pc|Q\(10) & (\PC_connect|PC_register_pc|Q[9]~47\ $ (GND))) # (!\PC_connect|PC_register_pc|Q\(10) & (!\PC_connect|PC_register_pc|Q[9]~47\ & VCC))
-- \PC_connect|PC_register_pc|Q[10]~49\ = CARRY((\PC_connect|PC_register_pc|Q\(10) & !\PC_connect|PC_register_pc|Q[9]~47\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \PC_connect|PC_register_pc|Q\(10),
	datad => VCC,
	cin => \PC_connect|PC_register_pc|Q[9]~47\,
	combout => \PC_connect|PC_register_pc|Q[10]~48_combout\,
	cout => \PC_connect|PC_register_pc|Q[10]~49\);

-- Location: FF_X80_Y45_N19
\PC_connect|PC_register_pc|Q[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \PC_connect|PC_register_pc|Q[10]~48_combout\,
	sclr => \PC_connect|PC_register_pc|Q[12]~32_combout\,
	ena => \PC_connect|PC_register_pc|Q[12]~33_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC_connect|PC_register_pc|Q\(10));

-- Location: LCCOMB_X80_Y45_N20
\PC_connect|PC_register_pc|Q[11]~50\ : cycloneiv_lcell_comb
-- Equation(s):
-- \PC_connect|PC_register_pc|Q[11]~50_combout\ = (\PC_connect|PC_register_pc|Q\(11) & (!\PC_connect|PC_register_pc|Q[10]~49\)) # (!\PC_connect|PC_register_pc|Q\(11) & ((\PC_connect|PC_register_pc|Q[10]~49\) # (GND)))
-- \PC_connect|PC_register_pc|Q[11]~51\ = CARRY((!\PC_connect|PC_register_pc|Q[10]~49\) # (!\PC_connect|PC_register_pc|Q\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \PC_connect|PC_register_pc|Q\(11),
	datad => VCC,
	cin => \PC_connect|PC_register_pc|Q[10]~49\,
	combout => \PC_connect|PC_register_pc|Q[11]~50_combout\,
	cout => \PC_connect|PC_register_pc|Q[11]~51\);

-- Location: FF_X80_Y45_N21
\PC_connect|PC_register_pc|Q[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \PC_connect|PC_register_pc|Q[11]~50_combout\,
	sclr => \PC_connect|PC_register_pc|Q[12]~32_combout\,
	ena => \PC_connect|PC_register_pc|Q[12]~33_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC_connect|PC_register_pc|Q\(11));

-- Location: LCCOMB_X80_Y45_N22
\PC_connect|PC_register_pc|Q[12]~52\ : cycloneiv_lcell_comb
-- Equation(s):
-- \PC_connect|PC_register_pc|Q[12]~52_combout\ = (\PC_connect|PC_register_pc|Q\(12) & (\PC_connect|PC_register_pc|Q[11]~51\ $ (GND))) # (!\PC_connect|PC_register_pc|Q\(12) & (!\PC_connect|PC_register_pc|Q[11]~51\ & VCC))
-- \PC_connect|PC_register_pc|Q[12]~53\ = CARRY((\PC_connect|PC_register_pc|Q\(12) & !\PC_connect|PC_register_pc|Q[11]~51\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \PC_connect|PC_register_pc|Q\(12),
	datad => VCC,
	cin => \PC_connect|PC_register_pc|Q[11]~51\,
	combout => \PC_connect|PC_register_pc|Q[12]~52_combout\,
	cout => \PC_connect|PC_register_pc|Q[12]~53\);

-- Location: FF_X80_Y45_N23
\PC_connect|PC_register_pc|Q[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \PC_connect|PC_register_pc|Q[12]~52_combout\,
	sclr => \PC_connect|PC_register_pc|Q[12]~32_combout\,
	ena => \PC_connect|PC_register_pc|Q[12]~33_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC_connect|PC_register_pc|Q\(12));

-- Location: LCCOMB_X80_Y45_N24
\PC_connect|PC_register_pc|Q[13]~54\ : cycloneiv_lcell_comb
-- Equation(s):
-- \PC_connect|PC_register_pc|Q[13]~54_combout\ = (\PC_connect|PC_register_pc|Q\(13) & (!\PC_connect|PC_register_pc|Q[12]~53\)) # (!\PC_connect|PC_register_pc|Q\(13) & ((\PC_connect|PC_register_pc|Q[12]~53\) # (GND)))
-- \PC_connect|PC_register_pc|Q[13]~55\ = CARRY((!\PC_connect|PC_register_pc|Q[12]~53\) # (!\PC_connect|PC_register_pc|Q\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \PC_connect|PC_register_pc|Q\(13),
	datad => VCC,
	cin => \PC_connect|PC_register_pc|Q[12]~53\,
	combout => \PC_connect|PC_register_pc|Q[13]~54_combout\,
	cout => \PC_connect|PC_register_pc|Q[13]~55\);

-- Location: FF_X80_Y45_N25
\PC_connect|PC_register_pc|Q[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \PC_connect|PC_register_pc|Q[13]~54_combout\,
	sclr => \PC_connect|PC_register_pc|Q[12]~32_combout\,
	ena => \PC_connect|PC_register_pc|Q[12]~33_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC_connect|PC_register_pc|Q\(13));

-- Location: LCCOMB_X80_Y45_N26
\PC_connect|PC_register_pc|Q[14]~56\ : cycloneiv_lcell_comb
-- Equation(s):
-- \PC_connect|PC_register_pc|Q[14]~56_combout\ = (\PC_connect|PC_register_pc|Q\(14) & (\PC_connect|PC_register_pc|Q[13]~55\ $ (GND))) # (!\PC_connect|PC_register_pc|Q\(14) & (!\PC_connect|PC_register_pc|Q[13]~55\ & VCC))
-- \PC_connect|PC_register_pc|Q[14]~57\ = CARRY((\PC_connect|PC_register_pc|Q\(14) & !\PC_connect|PC_register_pc|Q[13]~55\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \PC_connect|PC_register_pc|Q\(14),
	datad => VCC,
	cin => \PC_connect|PC_register_pc|Q[13]~55\,
	combout => \PC_connect|PC_register_pc|Q[14]~56_combout\,
	cout => \PC_connect|PC_register_pc|Q[14]~57\);

-- Location: FF_X80_Y45_N27
\PC_connect|PC_register_pc|Q[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \PC_connect|PC_register_pc|Q[14]~56_combout\,
	sclr => \PC_connect|PC_register_pc|Q[12]~32_combout\,
	ena => \PC_connect|PC_register_pc|Q[12]~33_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC_connect|PC_register_pc|Q\(14));

-- Location: LCCOMB_X80_Y45_N28
\PC_connect|PC_register_pc|Q[15]~58\ : cycloneiv_lcell_comb
-- Equation(s):
-- \PC_connect|PC_register_pc|Q[15]~58_combout\ = (\PC_connect|PC_register_pc|Q\(15) & (!\PC_connect|PC_register_pc|Q[14]~57\)) # (!\PC_connect|PC_register_pc|Q\(15) & ((\PC_connect|PC_register_pc|Q[14]~57\) # (GND)))
-- \PC_connect|PC_register_pc|Q[15]~59\ = CARRY((!\PC_connect|PC_register_pc|Q[14]~57\) # (!\PC_connect|PC_register_pc|Q\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \PC_connect|PC_register_pc|Q\(15),
	datad => VCC,
	cin => \PC_connect|PC_register_pc|Q[14]~57\,
	combout => \PC_connect|PC_register_pc|Q[15]~58_combout\,
	cout => \PC_connect|PC_register_pc|Q[15]~59\);

-- Location: FF_X80_Y45_N29
\PC_connect|PC_register_pc|Q[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \PC_connect|PC_register_pc|Q[15]~58_combout\,
	sclr => \PC_connect|PC_register_pc|Q[12]~32_combout\,
	ena => \PC_connect|PC_register_pc|Q[12]~33_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC_connect|PC_register_pc|Q\(15));

-- Location: LCCOMB_X80_Y45_N30
\PC_connect|PC_register_pc|Q[16]~60\ : cycloneiv_lcell_comb
-- Equation(s):
-- \PC_connect|PC_register_pc|Q[16]~60_combout\ = (\PC_connect|PC_register_pc|Q\(16) & (\PC_connect|PC_register_pc|Q[15]~59\ $ (GND))) # (!\PC_connect|PC_register_pc|Q\(16) & (!\PC_connect|PC_register_pc|Q[15]~59\ & VCC))
-- \PC_connect|PC_register_pc|Q[16]~61\ = CARRY((\PC_connect|PC_register_pc|Q\(16) & !\PC_connect|PC_register_pc|Q[15]~59\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \PC_connect|PC_register_pc|Q\(16),
	datad => VCC,
	cin => \PC_connect|PC_register_pc|Q[15]~59\,
	combout => \PC_connect|PC_register_pc|Q[16]~60_combout\,
	cout => \PC_connect|PC_register_pc|Q[16]~61\);

-- Location: FF_X80_Y45_N31
\PC_connect|PC_register_pc|Q[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \PC_connect|PC_register_pc|Q[16]~60_combout\,
	sclr => \PC_connect|PC_register_pc|Q[12]~32_combout\,
	ena => \PC_connect|PC_register_pc|Q[12]~33_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC_connect|PC_register_pc|Q\(16));

-- Location: LCCOMB_X80_Y44_N0
\PC_connect|PC_register_pc|Q[17]~62\ : cycloneiv_lcell_comb
-- Equation(s):
-- \PC_connect|PC_register_pc|Q[17]~62_combout\ = (\PC_connect|PC_register_pc|Q\(17) & (!\PC_connect|PC_register_pc|Q[16]~61\)) # (!\PC_connect|PC_register_pc|Q\(17) & ((\PC_connect|PC_register_pc|Q[16]~61\) # (GND)))
-- \PC_connect|PC_register_pc|Q[17]~63\ = CARRY((!\PC_connect|PC_register_pc|Q[16]~61\) # (!\PC_connect|PC_register_pc|Q\(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \PC_connect|PC_register_pc|Q\(17),
	datad => VCC,
	cin => \PC_connect|PC_register_pc|Q[16]~61\,
	combout => \PC_connect|PC_register_pc|Q[17]~62_combout\,
	cout => \PC_connect|PC_register_pc|Q[17]~63\);

-- Location: FF_X80_Y44_N1
\PC_connect|PC_register_pc|Q[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \PC_connect|PC_register_pc|Q[17]~62_combout\,
	sclr => \PC_connect|PC_register_pc|Q[12]~32_combout\,
	ena => \PC_connect|PC_register_pc|Q[12]~33_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC_connect|PC_register_pc|Q\(17));

-- Location: LCCOMB_X80_Y44_N2
\PC_connect|PC_register_pc|Q[18]~64\ : cycloneiv_lcell_comb
-- Equation(s):
-- \PC_connect|PC_register_pc|Q[18]~64_combout\ = (\PC_connect|PC_register_pc|Q\(18) & (\PC_connect|PC_register_pc|Q[17]~63\ $ (GND))) # (!\PC_connect|PC_register_pc|Q\(18) & (!\PC_connect|PC_register_pc|Q[17]~63\ & VCC))
-- \PC_connect|PC_register_pc|Q[18]~65\ = CARRY((\PC_connect|PC_register_pc|Q\(18) & !\PC_connect|PC_register_pc|Q[17]~63\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \PC_connect|PC_register_pc|Q\(18),
	datad => VCC,
	cin => \PC_connect|PC_register_pc|Q[17]~63\,
	combout => \PC_connect|PC_register_pc|Q[18]~64_combout\,
	cout => \PC_connect|PC_register_pc|Q[18]~65\);

-- Location: FF_X80_Y44_N3
\PC_connect|PC_register_pc|Q[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \PC_connect|PC_register_pc|Q[18]~64_combout\,
	sclr => \PC_connect|PC_register_pc|Q[12]~32_combout\,
	ena => \PC_connect|PC_register_pc|Q[12]~33_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC_connect|PC_register_pc|Q\(18));

-- Location: LCCOMB_X80_Y44_N4
\PC_connect|PC_register_pc|Q[19]~66\ : cycloneiv_lcell_comb
-- Equation(s):
-- \PC_connect|PC_register_pc|Q[19]~66_combout\ = (\PC_connect|PC_register_pc|Q\(19) & (!\PC_connect|PC_register_pc|Q[18]~65\)) # (!\PC_connect|PC_register_pc|Q\(19) & ((\PC_connect|PC_register_pc|Q[18]~65\) # (GND)))
-- \PC_connect|PC_register_pc|Q[19]~67\ = CARRY((!\PC_connect|PC_register_pc|Q[18]~65\) # (!\PC_connect|PC_register_pc|Q\(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \PC_connect|PC_register_pc|Q\(19),
	datad => VCC,
	cin => \PC_connect|PC_register_pc|Q[18]~65\,
	combout => \PC_connect|PC_register_pc|Q[19]~66_combout\,
	cout => \PC_connect|PC_register_pc|Q[19]~67\);

-- Location: FF_X80_Y44_N5
\PC_connect|PC_register_pc|Q[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \PC_connect|PC_register_pc|Q[19]~66_combout\,
	sclr => \PC_connect|PC_register_pc|Q[12]~32_combout\,
	ena => \PC_connect|PC_register_pc|Q[12]~33_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC_connect|PC_register_pc|Q\(19));

-- Location: LCCOMB_X80_Y44_N6
\PC_connect|PC_register_pc|Q[20]~68\ : cycloneiv_lcell_comb
-- Equation(s):
-- \PC_connect|PC_register_pc|Q[20]~68_combout\ = (\PC_connect|PC_register_pc|Q\(20) & (\PC_connect|PC_register_pc|Q[19]~67\ $ (GND))) # (!\PC_connect|PC_register_pc|Q\(20) & (!\PC_connect|PC_register_pc|Q[19]~67\ & VCC))
-- \PC_connect|PC_register_pc|Q[20]~69\ = CARRY((\PC_connect|PC_register_pc|Q\(20) & !\PC_connect|PC_register_pc|Q[19]~67\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \PC_connect|PC_register_pc|Q\(20),
	datad => VCC,
	cin => \PC_connect|PC_register_pc|Q[19]~67\,
	combout => \PC_connect|PC_register_pc|Q[20]~68_combout\,
	cout => \PC_connect|PC_register_pc|Q[20]~69\);

-- Location: FF_X80_Y44_N7
\PC_connect|PC_register_pc|Q[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \PC_connect|PC_register_pc|Q[20]~68_combout\,
	sclr => \PC_connect|PC_register_pc|Q[12]~32_combout\,
	ena => \PC_connect|PC_register_pc|Q[12]~33_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC_connect|PC_register_pc|Q\(20));

-- Location: LCCOMB_X80_Y44_N8
\PC_connect|PC_register_pc|Q[21]~70\ : cycloneiv_lcell_comb
-- Equation(s):
-- \PC_connect|PC_register_pc|Q[21]~70_combout\ = (\PC_connect|PC_register_pc|Q\(21) & (!\PC_connect|PC_register_pc|Q[20]~69\)) # (!\PC_connect|PC_register_pc|Q\(21) & ((\PC_connect|PC_register_pc|Q[20]~69\) # (GND)))
-- \PC_connect|PC_register_pc|Q[21]~71\ = CARRY((!\PC_connect|PC_register_pc|Q[20]~69\) # (!\PC_connect|PC_register_pc|Q\(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \PC_connect|PC_register_pc|Q\(21),
	datad => VCC,
	cin => \PC_connect|PC_register_pc|Q[20]~69\,
	combout => \PC_connect|PC_register_pc|Q[21]~70_combout\,
	cout => \PC_connect|PC_register_pc|Q[21]~71\);

-- Location: FF_X80_Y44_N9
\PC_connect|PC_register_pc|Q[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \PC_connect|PC_register_pc|Q[21]~70_combout\,
	sclr => \PC_connect|PC_register_pc|Q[12]~32_combout\,
	ena => \PC_connect|PC_register_pc|Q[12]~33_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC_connect|PC_register_pc|Q\(21));

-- Location: LCCOMB_X80_Y44_N10
\PC_connect|PC_register_pc|Q[22]~72\ : cycloneiv_lcell_comb
-- Equation(s):
-- \PC_connect|PC_register_pc|Q[22]~72_combout\ = (\PC_connect|PC_register_pc|Q\(22) & (\PC_connect|PC_register_pc|Q[21]~71\ $ (GND))) # (!\PC_connect|PC_register_pc|Q\(22) & (!\PC_connect|PC_register_pc|Q[21]~71\ & VCC))
-- \PC_connect|PC_register_pc|Q[22]~73\ = CARRY((\PC_connect|PC_register_pc|Q\(22) & !\PC_connect|PC_register_pc|Q[21]~71\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \PC_connect|PC_register_pc|Q\(22),
	datad => VCC,
	cin => \PC_connect|PC_register_pc|Q[21]~71\,
	combout => \PC_connect|PC_register_pc|Q[22]~72_combout\,
	cout => \PC_connect|PC_register_pc|Q[22]~73\);

-- Location: FF_X80_Y44_N11
\PC_connect|PC_register_pc|Q[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \PC_connect|PC_register_pc|Q[22]~72_combout\,
	sclr => \PC_connect|PC_register_pc|Q[12]~32_combout\,
	ena => \PC_connect|PC_register_pc|Q[12]~33_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC_connect|PC_register_pc|Q\(22));

-- Location: LCCOMB_X80_Y44_N12
\PC_connect|PC_register_pc|Q[23]~74\ : cycloneiv_lcell_comb
-- Equation(s):
-- \PC_connect|PC_register_pc|Q[23]~74_combout\ = (\PC_connect|PC_register_pc|Q\(23) & (!\PC_connect|PC_register_pc|Q[22]~73\)) # (!\PC_connect|PC_register_pc|Q\(23) & ((\PC_connect|PC_register_pc|Q[22]~73\) # (GND)))
-- \PC_connect|PC_register_pc|Q[23]~75\ = CARRY((!\PC_connect|PC_register_pc|Q[22]~73\) # (!\PC_connect|PC_register_pc|Q\(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \PC_connect|PC_register_pc|Q\(23),
	datad => VCC,
	cin => \PC_connect|PC_register_pc|Q[22]~73\,
	combout => \PC_connect|PC_register_pc|Q[23]~74_combout\,
	cout => \PC_connect|PC_register_pc|Q[23]~75\);

-- Location: FF_X80_Y44_N13
\PC_connect|PC_register_pc|Q[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \PC_connect|PC_register_pc|Q[23]~74_combout\,
	sclr => \PC_connect|PC_register_pc|Q[12]~32_combout\,
	ena => \PC_connect|PC_register_pc|Q[12]~33_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC_connect|PC_register_pc|Q\(23));

-- Location: LCCOMB_X80_Y44_N14
\PC_connect|PC_register_pc|Q[24]~76\ : cycloneiv_lcell_comb
-- Equation(s):
-- \PC_connect|PC_register_pc|Q[24]~76_combout\ = (\PC_connect|PC_register_pc|Q\(24) & (\PC_connect|PC_register_pc|Q[23]~75\ $ (GND))) # (!\PC_connect|PC_register_pc|Q\(24) & (!\PC_connect|PC_register_pc|Q[23]~75\ & VCC))
-- \PC_connect|PC_register_pc|Q[24]~77\ = CARRY((\PC_connect|PC_register_pc|Q\(24) & !\PC_connect|PC_register_pc|Q[23]~75\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \PC_connect|PC_register_pc|Q\(24),
	datad => VCC,
	cin => \PC_connect|PC_register_pc|Q[23]~75\,
	combout => \PC_connect|PC_register_pc|Q[24]~76_combout\,
	cout => \PC_connect|PC_register_pc|Q[24]~77\);

-- Location: FF_X80_Y44_N15
\PC_connect|PC_register_pc|Q[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \PC_connect|PC_register_pc|Q[24]~76_combout\,
	sclr => \PC_connect|PC_register_pc|Q[12]~32_combout\,
	ena => \PC_connect|PC_register_pc|Q[12]~33_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC_connect|PC_register_pc|Q\(24));

-- Location: LCCOMB_X80_Y44_N16
\PC_connect|PC_register_pc|Q[25]~78\ : cycloneiv_lcell_comb
-- Equation(s):
-- \PC_connect|PC_register_pc|Q[25]~78_combout\ = (\PC_connect|PC_register_pc|Q\(25) & (!\PC_connect|PC_register_pc|Q[24]~77\)) # (!\PC_connect|PC_register_pc|Q\(25) & ((\PC_connect|PC_register_pc|Q[24]~77\) # (GND)))
-- \PC_connect|PC_register_pc|Q[25]~79\ = CARRY((!\PC_connect|PC_register_pc|Q[24]~77\) # (!\PC_connect|PC_register_pc|Q\(25)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \PC_connect|PC_register_pc|Q\(25),
	datad => VCC,
	cin => \PC_connect|PC_register_pc|Q[24]~77\,
	combout => \PC_connect|PC_register_pc|Q[25]~78_combout\,
	cout => \PC_connect|PC_register_pc|Q[25]~79\);

-- Location: FF_X80_Y44_N17
\PC_connect|PC_register_pc|Q[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \PC_connect|PC_register_pc|Q[25]~78_combout\,
	sclr => \PC_connect|PC_register_pc|Q[12]~32_combout\,
	ena => \PC_connect|PC_register_pc|Q[12]~33_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC_connect|PC_register_pc|Q\(25));

-- Location: LCCOMB_X80_Y44_N18
\PC_connect|PC_register_pc|Q[26]~80\ : cycloneiv_lcell_comb
-- Equation(s):
-- \PC_connect|PC_register_pc|Q[26]~80_combout\ = (\PC_connect|PC_register_pc|Q\(26) & (\PC_connect|PC_register_pc|Q[25]~79\ $ (GND))) # (!\PC_connect|PC_register_pc|Q\(26) & (!\PC_connect|PC_register_pc|Q[25]~79\ & VCC))
-- \PC_connect|PC_register_pc|Q[26]~81\ = CARRY((\PC_connect|PC_register_pc|Q\(26) & !\PC_connect|PC_register_pc|Q[25]~79\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \PC_connect|PC_register_pc|Q\(26),
	datad => VCC,
	cin => \PC_connect|PC_register_pc|Q[25]~79\,
	combout => \PC_connect|PC_register_pc|Q[26]~80_combout\,
	cout => \PC_connect|PC_register_pc|Q[26]~81\);

-- Location: FF_X80_Y44_N19
\PC_connect|PC_register_pc|Q[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \PC_connect|PC_register_pc|Q[26]~80_combout\,
	sclr => \PC_connect|PC_register_pc|Q[12]~32_combout\,
	ena => \PC_connect|PC_register_pc|Q[12]~33_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC_connect|PC_register_pc|Q\(26));

-- Location: LCCOMB_X80_Y44_N20
\PC_connect|PC_register_pc|Q[27]~82\ : cycloneiv_lcell_comb
-- Equation(s):
-- \PC_connect|PC_register_pc|Q[27]~82_combout\ = (\PC_connect|PC_register_pc|Q\(27) & (!\PC_connect|PC_register_pc|Q[26]~81\)) # (!\PC_connect|PC_register_pc|Q\(27) & ((\PC_connect|PC_register_pc|Q[26]~81\) # (GND)))
-- \PC_connect|PC_register_pc|Q[27]~83\ = CARRY((!\PC_connect|PC_register_pc|Q[26]~81\) # (!\PC_connect|PC_register_pc|Q\(27)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \PC_connect|PC_register_pc|Q\(27),
	datad => VCC,
	cin => \PC_connect|PC_register_pc|Q[26]~81\,
	combout => \PC_connect|PC_register_pc|Q[27]~82_combout\,
	cout => \PC_connect|PC_register_pc|Q[27]~83\);

-- Location: FF_X80_Y44_N21
\PC_connect|PC_register_pc|Q[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \PC_connect|PC_register_pc|Q[27]~82_combout\,
	sclr => \PC_connect|PC_register_pc|Q[12]~32_combout\,
	ena => \PC_connect|PC_register_pc|Q[12]~33_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC_connect|PC_register_pc|Q\(27));

-- Location: LCCOMB_X80_Y44_N22
\PC_connect|PC_register_pc|Q[28]~84\ : cycloneiv_lcell_comb
-- Equation(s):
-- \PC_connect|PC_register_pc|Q[28]~84_combout\ = (\PC_connect|PC_register_pc|Q\(28) & (\PC_connect|PC_register_pc|Q[27]~83\ $ (GND))) # (!\PC_connect|PC_register_pc|Q\(28) & (!\PC_connect|PC_register_pc|Q[27]~83\ & VCC))
-- \PC_connect|PC_register_pc|Q[28]~85\ = CARRY((\PC_connect|PC_register_pc|Q\(28) & !\PC_connect|PC_register_pc|Q[27]~83\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \PC_connect|PC_register_pc|Q\(28),
	datad => VCC,
	cin => \PC_connect|PC_register_pc|Q[27]~83\,
	combout => \PC_connect|PC_register_pc|Q[28]~84_combout\,
	cout => \PC_connect|PC_register_pc|Q[28]~85\);

-- Location: FF_X80_Y44_N23
\PC_connect|PC_register_pc|Q[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \PC_connect|PC_register_pc|Q[28]~84_combout\,
	sclr => \PC_connect|PC_register_pc|Q[12]~32_combout\,
	ena => \PC_connect|PC_register_pc|Q[12]~33_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC_connect|PC_register_pc|Q\(28));

-- Location: LCCOMB_X80_Y44_N24
\PC_connect|PC_register_pc|Q[29]~86\ : cycloneiv_lcell_comb
-- Equation(s):
-- \PC_connect|PC_register_pc|Q[29]~86_combout\ = (\PC_connect|PC_register_pc|Q\(29) & (!\PC_connect|PC_register_pc|Q[28]~85\)) # (!\PC_connect|PC_register_pc|Q\(29) & ((\PC_connect|PC_register_pc|Q[28]~85\) # (GND)))
-- \PC_connect|PC_register_pc|Q[29]~87\ = CARRY((!\PC_connect|PC_register_pc|Q[28]~85\) # (!\PC_connect|PC_register_pc|Q\(29)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \PC_connect|PC_register_pc|Q\(29),
	datad => VCC,
	cin => \PC_connect|PC_register_pc|Q[28]~85\,
	combout => \PC_connect|PC_register_pc|Q[29]~86_combout\,
	cout => \PC_connect|PC_register_pc|Q[29]~87\);

-- Location: FF_X80_Y44_N25
\PC_connect|PC_register_pc|Q[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \PC_connect|PC_register_pc|Q[29]~86_combout\,
	sclr => \PC_connect|PC_register_pc|Q[12]~32_combout\,
	ena => \PC_connect|PC_register_pc|Q[12]~33_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC_connect|PC_register_pc|Q\(29));

-- Location: LCCOMB_X80_Y44_N26
\PC_connect|PC_register_pc|Q[30]~88\ : cycloneiv_lcell_comb
-- Equation(s):
-- \PC_connect|PC_register_pc|Q[30]~88_combout\ = (\PC_connect|PC_register_pc|Q\(30) & (\PC_connect|PC_register_pc|Q[29]~87\ $ (GND))) # (!\PC_connect|PC_register_pc|Q\(30) & (!\PC_connect|PC_register_pc|Q[29]~87\ & VCC))
-- \PC_connect|PC_register_pc|Q[30]~89\ = CARRY((\PC_connect|PC_register_pc|Q\(30) & !\PC_connect|PC_register_pc|Q[29]~87\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \PC_connect|PC_register_pc|Q\(30),
	datad => VCC,
	cin => \PC_connect|PC_register_pc|Q[29]~87\,
	combout => \PC_connect|PC_register_pc|Q[30]~88_combout\,
	cout => \PC_connect|PC_register_pc|Q[30]~89\);

-- Location: FF_X80_Y44_N27
\PC_connect|PC_register_pc|Q[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \PC_connect|PC_register_pc|Q[30]~88_combout\,
	sclr => \PC_connect|PC_register_pc|Q[12]~32_combout\,
	ena => \PC_connect|PC_register_pc|Q[12]~33_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC_connect|PC_register_pc|Q\(30));

-- Location: LCCOMB_X80_Y44_N28
\PC_connect|PC_register_pc|Q[31]~90\ : cycloneiv_lcell_comb
-- Equation(s):
-- \PC_connect|PC_register_pc|Q[31]~90_combout\ = \PC_connect|PC_register_pc|Q[30]~89\ $ (\PC_connect|PC_register_pc|Q\(31))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \PC_connect|PC_register_pc|Q\(31),
	cin => \PC_connect|PC_register_pc|Q[30]~89\,
	combout => \PC_connect|PC_register_pc|Q[31]~90_combout\);

-- Location: FF_X80_Y44_N29
\PC_connect|PC_register_pc|Q[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \PC_connect|PC_register_pc|Q[31]~90_combout\,
	sclr => \PC_connect|PC_register_pc|Q[12]~32_combout\,
	ena => \PC_connect|PC_register_pc|Q[12]~33_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC_connect|PC_register_pc|Q\(31));

-- Location: LCCOMB_X79_Y45_N14
\imemfetch_connect|fetch_block|Selector5~6\ : cycloneiv_lcell_comb
-- Equation(s):
-- \imemfetch_connect|fetch_block|Selector5~6_combout\ = (!\PC_connect|PC_register_pc|Q\(5) & !\PC_connect|PC_register_pc|Q\(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \PC_connect|PC_register_pc|Q\(5),
	datad => \PC_connect|PC_register_pc|Q\(4),
	combout => \imemfetch_connect|fetch_block|Selector5~6_combout\);

-- Location: LCCOMB_X79_Y45_N16
\imemfetch_connect|fetch_block|Selector5~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \imemfetch_connect|fetch_block|Selector5~3_combout\ = (!\PC_connect|PC_register_pc|Q\(2) & (!\PC_connect|PC_register_pc|Q\(9) & (\imemfetch_connect|fetch_block|Selector5~6_combout\ & \PC_connect|PC_register_pc|Q\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC_connect|PC_register_pc|Q\(2),
	datab => \PC_connect|PC_register_pc|Q\(9),
	datac => \imemfetch_connect|fetch_block|Selector5~6_combout\,
	datad => \PC_connect|PC_register_pc|Q\(3),
	combout => \imemfetch_connect|fetch_block|Selector5~3_combout\);

-- Location: LCCOMB_X80_Y46_N16
\imemfetch_connect|fetch_block|Selector5~16\ : cycloneiv_lcell_comb
-- Equation(s):
-- \imemfetch_connect|fetch_block|Selector5~16_combout\ = (!\PC_connect|PC_register_pc|Q\(7) & (\imemfetch_connect|fetch_block|Selector5~3_combout\ & (!\PC_connect|PC_register_pc|Q\(8) & !\PC_connect|PC_register_pc|Q\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC_connect|PC_register_pc|Q\(7),
	datab => \imemfetch_connect|fetch_block|Selector5~3_combout\,
	datac => \PC_connect|PC_register_pc|Q\(8),
	datad => \PC_connect|PC_register_pc|Q\(6),
	combout => \imemfetch_connect|fetch_block|Selector5~16_combout\);

-- Location: LCCOMB_X80_Y47_N30
\imemfetch_connect|imem_block|memory~10\ : cycloneiv_lcell_comb
-- Equation(s):
-- \imemfetch_connect|imem_block|memory~10_combout\ = (\imemfetch_connect|imem_block|memory~0_combout\ & (!\PC_connect|PC_register_pc|Q\(5) & (!\PC_connect|PC_register_pc|Q\(2) & \PC_connect|PC_register_pc|Q\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \imemfetch_connect|imem_block|memory~0_combout\,
	datab => \PC_connect|PC_register_pc|Q\(5),
	datac => \PC_connect|PC_register_pc|Q\(2),
	datad => \PC_connect|PC_register_pc|Q\(4),
	combout => \imemfetch_connect|imem_block|memory~10_combout\);

-- Location: LCCOMB_X78_Y44_N28
\imemfetch_connect|fetch_block|Selector4~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \imemfetch_connect|fetch_block|Selector4~0_combout\ = (\imemfetch_connect|imem_block|memory~0_combout\ & (\imemfetch_connect|imem_block|memory~1_combout\ & (\imemfetch_connect|imem_block|memory~2_combout\ & 
-- !\imemfetch_connect|imem_block|memory~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \imemfetch_connect|imem_block|memory~0_combout\,
	datab => \imemfetch_connect|imem_block|memory~1_combout\,
	datac => \imemfetch_connect|imem_block|memory~2_combout\,
	datad => \imemfetch_connect|imem_block|memory~6_combout\,
	combout => \imemfetch_connect|fetch_block|Selector4~0_combout\);

-- Location: LCCOMB_X78_Y44_N2
\imemfetch_connect|fetch_block|Selector4~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \imemfetch_connect|fetch_block|Selector4~1_combout\ = (!\imemfetch_connect|imem_block|memory~3_combout\ & (!\imemfetch_connect|imem_block|memory~6_combout\ & (!\imemfetch_connect|imem_block|memory~5_combout\ & 
-- \regfile_connect|mregfile|decoder5_32|en[7]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \imemfetch_connect|imem_block|memory~3_combout\,
	datab => \imemfetch_connect|imem_block|memory~6_combout\,
	datac => \imemfetch_connect|imem_block|memory~5_combout\,
	datad => \regfile_connect|mregfile|decoder5_32|en[7]~0_combout\,
	combout => \imemfetch_connect|fetch_block|Selector4~1_combout\);

-- Location: LCCOMB_X78_Y44_N8
\imemfetch_connect|fetch_block|Selector4~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \imemfetch_connect|fetch_block|Selector4~2_combout\ = (\imemfetch_connect|imem_block|memory~0_combout\ & ((\imemfetch_connect|fetch_block|Selector4~0_combout\) # (\imemfetch_connect|fetch_block|Selector4~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \imemfetch_connect|imem_block|memory~0_combout\,
	datab => \imemfetch_connect|fetch_block|Selector4~0_combout\,
	datad => \imemfetch_connect|fetch_block|Selector4~1_combout\,
	combout => \imemfetch_connect|fetch_block|Selector4~2_combout\);

-- Location: LCCOMB_X80_Y47_N12
\imemfetch_connect|imem_block|memory~11\ : cycloneiv_lcell_comb
-- Equation(s):
-- \imemfetch_connect|imem_block|memory~11_combout\ = (\PC_connect|PC_register_pc|Q\(2) & (!\PC_connect|PC_register_pc|Q\(5) & (\PC_connect|PC_register_pc|Q\(3) $ (\PC_connect|PC_register_pc|Q\(4))))) # (!\PC_connect|PC_register_pc|Q\(2) & 
-- (!\PC_connect|PC_register_pc|Q\(4) & (\PC_connect|PC_register_pc|Q\(3) $ (\PC_connect|PC_register_pc|Q\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC_connect|PC_register_pc|Q\(2),
	datab => \PC_connect|PC_register_pc|Q\(3),
	datac => \PC_connect|PC_register_pc|Q\(5),
	datad => \PC_connect|PC_register_pc|Q\(4),
	combout => \imemfetch_connect|imem_block|memory~11_combout\);

-- Location: LCCOMB_X80_Y47_N6
\imemfetch_connect|imem_block|memory~12\ : cycloneiv_lcell_comb
-- Equation(s):
-- \imemfetch_connect|imem_block|memory~12_combout\ = (\imemfetch_connect|imem_block|memory~0_combout\ & \imemfetch_connect|imem_block|memory~11_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \imemfetch_connect|imem_block|memory~0_combout\,
	datad => \imemfetch_connect|imem_block|memory~11_combout\,
	combout => \imemfetch_connect|imem_block|memory~12_combout\);

-- Location: LCCOMB_X80_Y47_N16
\imemfetch_connect|fetch_block|Selector4~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \imemfetch_connect|fetch_block|Selector4~3_combout\ = (\imemfetch_connect|fetch_block|Selector4~2_combout\ & ((\regfile_connect|mregfile|decoder5_32|en[7]~0_combout\ & (\imemfetch_connect|imem_block|memory~10_combout\)) # 
-- (!\regfile_connect|mregfile|decoder5_32|en[7]~0_combout\ & ((\imemfetch_connect|imem_block|memory~12_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \imemfetch_connect|imem_block|memory~10_combout\,
	datab => \regfile_connect|mregfile|decoder5_32|en[7]~0_combout\,
	datac => \imemfetch_connect|fetch_block|Selector4~2_combout\,
	datad => \imemfetch_connect|imem_block|memory~12_combout\,
	combout => \imemfetch_connect|fetch_block|Selector4~3_combout\);

-- Location: LCCOMB_X80_Y47_N22
\imemfetch_connect|imem_block|memory~13\ : cycloneiv_lcell_comb
-- Equation(s):
-- \imemfetch_connect|imem_block|memory~13_combout\ = (\imemfetch_connect|imem_block|memory~0_combout\ & (!\PC_connect|PC_register_pc|Q\(5) & (\PC_connect|PC_register_pc|Q\(2) & \PC_connect|PC_register_pc|Q\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \imemfetch_connect|imem_block|memory~0_combout\,
	datab => \PC_connect|PC_register_pc|Q\(5),
	datac => \PC_connect|PC_register_pc|Q\(2),
	datad => \PC_connect|PC_register_pc|Q\(4),
	combout => \imemfetch_connect|imem_block|memory~13_combout\);

-- Location: LCCOMB_X78_Y44_N30
\imemfetch_connect|fetch_block|Selector3~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \imemfetch_connect|fetch_block|Selector3~0_combout\ = (\imemfetch_connect|imem_block|memory~0_combout\ & ((\imemfetch_connect|imem_block|memory~1_combout\ & (\imemfetch_connect|imem_block|memory~13_combout\)) # 
-- (!\imemfetch_connect|imem_block|memory~1_combout\ & ((\imemfetch_connect|imem_block|memory~14_combout\))))) # (!\imemfetch_connect|imem_block|memory~0_combout\ & (\imemfetch_connect|imem_block|memory~13_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \imemfetch_connect|imem_block|memory~0_combout\,
	datab => \imemfetch_connect|imem_block|memory~13_combout\,
	datac => \imemfetch_connect|imem_block|memory~14_combout\,
	datad => \imemfetch_connect|imem_block|memory~1_combout\,
	combout => \imemfetch_connect|fetch_block|Selector3~0_combout\);

-- Location: LCCOMB_X78_Y44_N20
\imemfetch_connect|fetch_block|Selector3~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \imemfetch_connect|fetch_block|Selector3~1_combout\ = (\imemfetch_connect|fetch_block|Selector3~0_combout\ & (\imemfetch_connect|imem_block|memory~0_combout\ & ((\imemfetch_connect|fetch_block|Selector4~0_combout\) # 
-- (\imemfetch_connect|fetch_block|Selector4~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \imemfetch_connect|fetch_block|Selector3~0_combout\,
	datab => \imemfetch_connect|fetch_block|Selector4~0_combout\,
	datac => \imemfetch_connect|imem_block|memory~0_combout\,
	datad => \imemfetch_connect|fetch_block|Selector4~1_combout\,
	combout => \imemfetch_connect|fetch_block|Selector3~1_combout\);

-- Location: LCCOMB_X79_Y45_N8
\imemfetch_connect|fetch_block|imm[5]~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \imemfetch_connect|fetch_block|imm[5]~3_combout\ = (!\PC_connect|PC_register_pc|Q\(4) & (!\PC_connect|PC_register_pc|Q\(5) & !\PC_connect|PC_register_pc|Q\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC_connect|PC_register_pc|Q\(4),
	datab => \PC_connect|PC_register_pc|Q\(5),
	datad => \PC_connect|PC_register_pc|Q\(9),
	combout => \imemfetch_connect|fetch_block|imm[5]~3_combout\);

-- Location: LCCOMB_X79_Y45_N2
\imemfetch_connect|fetch_block|imm[5]~14\ : cycloneiv_lcell_comb
-- Equation(s):
-- \imemfetch_connect|fetch_block|imm[5]~14_combout\ = (!\PC_connect|PC_register_pc|Q\(6) & (!\PC_connect|PC_register_pc|Q\(7) & (!\PC_connect|PC_register_pc|Q\(8) & \imemfetch_connect|fetch_block|imm[5]~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC_connect|PC_register_pc|Q\(6),
	datab => \PC_connect|PC_register_pc|Q\(7),
	datac => \PC_connect|PC_register_pc|Q\(8),
	datad => \imemfetch_connect|fetch_block|imm[5]~3_combout\,
	combout => \imemfetch_connect|fetch_block|imm[5]~14_combout\);

-- Location: LCCOMB_X80_Y47_N20
\imemfetch_connect|fetch_block|imm[5]~12\ : cycloneiv_lcell_comb
-- Equation(s):
-- \imemfetch_connect|fetch_block|imm[5]~12_combout\ = (\PC_connect|PC_register_pc|Q\(2) & (\PC_connect|PC_register_pc|Q\(3) & (!\PC_connect|PC_register_pc|Q\(5) & \imemfetch_connect|fetch_block|imm[5]~14_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC_connect|PC_register_pc|Q\(2),
	datab => \PC_connect|PC_register_pc|Q\(3),
	datac => \PC_connect|PC_register_pc|Q\(5),
	datad => \imemfetch_connect|fetch_block|imm[5]~14_combout\,
	combout => \imemfetch_connect|fetch_block|imm[5]~12_combout\);

-- Location: LCCOMB_X80_Y47_N2
\imemfetch_connect|fetch_block|imm[10]~13\ : cycloneiv_lcell_comb
-- Equation(s):
-- \imemfetch_connect|fetch_block|imm[10]~13_combout\ = (!\PC_connect|PC_register_pc|Q\(2) & (!\PC_connect|PC_register_pc|Q\(3) & (\PC_connect|PC_register_pc|Q\(5) & \imemfetch_connect|fetch_block|imm[5]~14_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC_connect|PC_register_pc|Q\(2),
	datab => \PC_connect|PC_register_pc|Q\(3),
	datac => \PC_connect|PC_register_pc|Q\(5),
	datad => \imemfetch_connect|fetch_block|imm[5]~14_combout\,
	combout => \imemfetch_connect|fetch_block|imm[10]~13_combout\);

-- Location: LCCOMB_X80_Y47_N4
\imemfetch_connect|imem_block|memory~9\ : cycloneiv_lcell_comb
-- Equation(s):
-- \imemfetch_connect|imem_block|memory~9_combout\ = (!\PC_connect|PC_register_pc|Q\(4) & ((\PC_connect|PC_register_pc|Q\(2) & ((!\PC_connect|PC_register_pc|Q\(5)))) # (!\PC_connect|PC_register_pc|Q\(2) & (!\PC_connect|PC_register_pc|Q\(3) & 
-- \PC_connect|PC_register_pc|Q\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC_connect|PC_register_pc|Q\(2),
	datab => \PC_connect|PC_register_pc|Q\(3),
	datac => \PC_connect|PC_register_pc|Q\(5),
	datad => \PC_connect|PC_register_pc|Q\(4),
	combout => \imemfetch_connect|imem_block|memory~9_combout\);

-- Location: LCCOMB_X80_Y47_N28
\imemfetch_connect|fetch_block|Selector0~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \imemfetch_connect|fetch_block|Selector0~2_combout\ = (\imemfetch_connect|imem_block|memory~9_combout\ & (\imemfetch_connect|fetch_block|Selector2~0_combout\ & \imemfetch_connect|imem_block|memory~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \imemfetch_connect|imem_block|memory~9_combout\,
	datac => \imemfetch_connect|fetch_block|Selector2~0_combout\,
	datad => \imemfetch_connect|imem_block|memory~0_combout\,
	combout => \imemfetch_connect|fetch_block|Selector0~2_combout\);

-- Location: LCCOMB_X79_Y47_N24
\imemfetch_connect|imem_block|memory~15\ : cycloneiv_lcell_comb
-- Equation(s):
-- \imemfetch_connect|imem_block|memory~15_combout\ = (\imemfetch_connect|imem_block|memory~0_combout\ & \imemfetch_connect|imem_block|memory~9_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \imemfetch_connect|imem_block|memory~0_combout\,
	datad => \imemfetch_connect|imem_block|memory~9_combout\,
	combout => \imemfetch_connect|imem_block|memory~15_combout\);

-- Location: LCCOMB_X79_Y47_N10
\imemfetch_connect|fetch_block|rd[0]~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \imemfetch_connect|fetch_block|rd[0]~0_combout\ = (\imemfetch_connect|imem_block|memory~7_combout\ & (\regfile_connect|mregfile|decoder5_32|en[7]~0_combout\ & (!\imemfetch_connect|imem_block|memory~5_combout\ & 
-- \imemfetch_connect|imem_block|memory~15_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \imemfetch_connect|imem_block|memory~7_combout\,
	datab => \regfile_connect|mregfile|decoder5_32|en[7]~0_combout\,
	datac => \imemfetch_connect|imem_block|memory~5_combout\,
	datad => \imemfetch_connect|imem_block|memory~15_combout\,
	combout => \imemfetch_connect|fetch_block|rd[0]~0_combout\);

-- Location: LCCOMB_X80_Y47_N0
\imemfetch_connect|fetch_block|rd[1]~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \imemfetch_connect|fetch_block|rd[1]~1_combout\ = (\imemfetch_connect|imem_block|memory~12_combout\ & (\regfile_connect|mregfile|decoder5_32|en[7]~0_combout\ & (!\imemfetch_connect|imem_block|memory~5_combout\ & 
-- \imemfetch_connect|imem_block|memory~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \imemfetch_connect|imem_block|memory~12_combout\,
	datab => \regfile_connect|mregfile|decoder5_32|en[7]~0_combout\,
	datac => \imemfetch_connect|imem_block|memory~5_combout\,
	datad => \imemfetch_connect|imem_block|memory~7_combout\,
	combout => \imemfetch_connect|fetch_block|rd[1]~1_combout\);

-- Location: LCCOMB_X80_Y47_N10
\imemfetch_connect|fetch_block|rd[2]~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \imemfetch_connect|fetch_block|rd[2]~2_combout\ = (\imemfetch_connect|imem_block|memory~13_combout\ & (\imemfetch_connect|imem_block|memory~7_combout\ & (!\imemfetch_connect|imem_block|memory~5_combout\ & 
-- \regfile_connect|mregfile|decoder5_32|en[7]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \imemfetch_connect|imem_block|memory~13_combout\,
	datab => \imemfetch_connect|imem_block|memory~7_combout\,
	datac => \imemfetch_connect|imem_block|memory~5_combout\,
	datad => \regfile_connect|mregfile|decoder5_32|en[7]~0_combout\,
	combout => \imemfetch_connect|fetch_block|rd[2]~2_combout\);

-- Location: LCCOMB_X78_Y44_N14
\Dmem_Connect|DMEM|register_Dmem_loop[0].register_Dmem_inst|Q~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Dmem_Connect|DMEM|register_Dmem_loop[0].register_Dmem_inst|Q~0_combout\ = (\imemfetch_connect|imem_block|memory~8_combout\ & (!\rst~input_o\ & (\regfile_connect|mregfile|muxB|Mux31~1_combout\ & \imemfetch_connect|fetch_block|WideOr2~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \imemfetch_connect|imem_block|memory~8_combout\,
	datab => \rst~input_o\,
	datac => \regfile_connect|mregfile|muxB|Mux31~1_combout\,
	datad => \imemfetch_connect|fetch_block|WideOr2~0_combout\,
	combout => \Dmem_Connect|DMEM|register_Dmem_loop[0].register_Dmem_inst|Q~0_combout\);

-- Location: FF_X78_Y44_N15
\Dmem_Connect|DMEM|register_Dmem_loop[0].register_Dmem_inst|Q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Dmem_Connect|DMEM|register_Dmem_loop[0].register_Dmem_inst|Q~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Dmem_Connect|DMEM|register_Dmem_loop[0].register_Dmem_inst|Q\(0));

-- Location: LCCOMB_X78_Y44_N16
\imemfetch_connect|fetch_block|Decoder0~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \imemfetch_connect|fetch_block|Decoder0~1_combout\ = (!\imemfetch_connect|imem_block|memory~5_combout\ & (\imemfetch_connect|imem_block|memory~7_combout\ & (\imemfetch_connect|imem_block|memory~3_combout\ & 
-- !\regfile_connect|mregfile|decoder5_32|en[7]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \imemfetch_connect|imem_block|memory~5_combout\,
	datab => \imemfetch_connect|imem_block|memory~7_combout\,
	datac => \imemfetch_connect|imem_block|memory~3_combout\,
	datad => \regfile_connect|mregfile|decoder5_32|en[7]~0_combout\,
	combout => \imemfetch_connect|fetch_block|Decoder0~1_combout\);

-- Location: LCCOMB_X78_Y44_N12
\Dmem_Connect|DMEM|dataR_buffer|Q~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Dmem_Connect|DMEM|dataR_buffer|Q~0_combout\ = (!\rst~input_o\ & ((\imemfetch_connect|fetch_block|Decoder0~1_combout\ & ((\Dmem_Connect|DMEM|dataR_buffer|Q\(0)))) # (!\imemfetch_connect|fetch_block|Decoder0~1_combout\ & 
-- (\Dmem_Connect|DMEM|register_Dmem_loop[0].register_Dmem_inst|Q\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Dmem_Connect|DMEM|register_Dmem_loop[0].register_Dmem_inst|Q\(0),
	datab => \rst~input_o\,
	datac => \Dmem_Connect|DMEM|dataR_buffer|Q\(0),
	datad => \imemfetch_connect|fetch_block|Decoder0~1_combout\,
	combout => \Dmem_Connect|DMEM|dataR_buffer|Q~0_combout\);

-- Location: FF_X78_Y44_N13
\Dmem_Connect|DMEM|dataR_buffer|Q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Dmem_Connect|DMEM|dataR_buffer|Q~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Dmem_Connect|DMEM|dataR_buffer|Q\(0));

-- Location: LCCOMB_X78_Y44_N6
\imemfetch_connect|fetch_block|Decoder0~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \imemfetch_connect|fetch_block|Decoder0~0_combout\ = (!\imemfetch_connect|imem_block|memory~3_combout\ & (!\imemfetch_connect|imem_block|memory~5_combout\ & (\imemfetch_connect|imem_block|memory~7_combout\ & 
-- !\regfile_connect|mregfile|decoder5_32|en[7]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \imemfetch_connect|imem_block|memory~3_combout\,
	datab => \imemfetch_connect|imem_block|memory~5_combout\,
	datac => \imemfetch_connect|imem_block|memory~7_combout\,
	datad => \regfile_connect|mregfile|decoder5_32|en[7]~0_combout\,
	combout => \imemfetch_connect|fetch_block|Decoder0~0_combout\);

-- Location: LCCOMB_X78_Y44_N18
\Wb_connect|Mux31~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Wb_connect|Mux31~0_combout\ = (\imemfetch_connect|fetch_block|Decoder0~0_combout\ & ((\imemfetch_connect|fetch_block|Decoder0~1_combout\ & (\Dmem_Connect|DMEM|dataR_buffer|Q\(0))) # (!\imemfetch_connect|fetch_block|Decoder0~1_combout\ & 
-- ((\Dmem_Connect|DMEM|register_Dmem_loop[0].register_Dmem_inst|Q\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Dmem_Connect|DMEM|dataR_buffer|Q\(0),
	datab => \imemfetch_connect|fetch_block|Decoder0~1_combout\,
	datac => \Dmem_Connect|DMEM|register_Dmem_loop[0].register_Dmem_inst|Q\(0),
	datad => \imemfetch_connect|fetch_block|Decoder0~0_combout\,
	combout => \Wb_connect|Mux31~0_combout\);

-- Location: LCCOMB_X79_Y45_N30
\imemfetch_connect|imem_block|memory~16\ : cycloneiv_lcell_comb
-- Equation(s):
-- \imemfetch_connect|imem_block|memory~16_combout\ = (!\PC_connect|PC_register_pc|Q\(2) & (!\PC_connect|PC_register_pc|Q\(3) & (\PC_connect|PC_register_pc|Q\(5) $ (\PC_connect|PC_register_pc|Q\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC_connect|PC_register_pc|Q\(2),
	datab => \PC_connect|PC_register_pc|Q\(3),
	datac => \PC_connect|PC_register_pc|Q\(5),
	datad => \PC_connect|PC_register_pc|Q\(4),
	combout => \imemfetch_connect|imem_block|memory~16_combout\);

-- Location: LCCOMB_X78_Y45_N24
\imemfetch_connect|fetch_block|WideOr1~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \imemfetch_connect|fetch_block|WideOr1~0_combout\ = (\imemfetch_connect|imem_block|memory~7_combout\ & ((\regfile_connect|mregfile|decoder5_32|en[7]~0_combout\ & (!\imemfetch_connect|imem_block|memory~5_combout\)) # 
-- (!\regfile_connect|mregfile|decoder5_32|en[7]~0_combout\ & ((\imemfetch_connect|imem_block|memory~3_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \imemfetch_connect|imem_block|memory~5_combout\,
	datab => \imemfetch_connect|imem_block|memory~3_combout\,
	datac => \imemfetch_connect|imem_block|memory~7_combout\,
	datad => \regfile_connect|mregfile|decoder5_32|en[7]~0_combout\,
	combout => \imemfetch_connect|fetch_block|WideOr1~0_combout\);

-- Location: LCCOMB_X79_Y45_N24
\imemfetch_connect|fetch_block|rs1[0]~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \imemfetch_connect|fetch_block|rs1[0]~1_combout\ = (\imemfetch_connect|imem_block|memory~16_combout\ & (\imemfetch_connect|fetch_block|WideOr1~0_combout\ & \imemfetch_connect|imem_block|memory~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \imemfetch_connect|imem_block|memory~16_combout\,
	datab => \imemfetch_connect|fetch_block|WideOr1~0_combout\,
	datad => \imemfetch_connect|imem_block|memory~0_combout\,
	combout => \imemfetch_connect|fetch_block|rs1[0]~1_combout\);

-- Location: LCCOMB_X79_Y45_N12
\imemfetch_connect|imem_block|memory~17\ : cycloneiv_lcell_comb
-- Equation(s):
-- \imemfetch_connect|imem_block|memory~17_combout\ = (!\PC_connect|PC_register_pc|Q\(5) & (\PC_connect|PC_register_pc|Q\(4) & ((\PC_connect|PC_register_pc|Q\(2)) # (\PC_connect|PC_register_pc|Q\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC_connect|PC_register_pc|Q\(2),
	datab => \PC_connect|PC_register_pc|Q\(3),
	datac => \PC_connect|PC_register_pc|Q\(5),
	datad => \PC_connect|PC_register_pc|Q\(4),
	combout => \imemfetch_connect|imem_block|memory~17_combout\);

-- Location: LCCOMB_X79_Y45_N10
\imemfetch_connect|fetch_block|rs1[1]~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \imemfetch_connect|fetch_block|rs1[1]~0_combout\ = (\imemfetch_connect|imem_block|memory~0_combout\ & (\imemfetch_connect|fetch_block|WideOr1~0_combout\ & \imemfetch_connect|imem_block|memory~17_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \imemfetch_connect|imem_block|memory~0_combout\,
	datab => \imemfetch_connect|fetch_block|WideOr1~0_combout\,
	datad => \imemfetch_connect|imem_block|memory~17_combout\,
	combout => \imemfetch_connect|fetch_block|rs1[1]~0_combout\);

-- Location: LCCOMB_X80_Y25_N8
\MUX_ASel|AB[0]~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \MUX_ASel|AB[0]~0_combout\ = (!\imemfetch_connect|fetch_block|rs1[0]~1_combout\ & (!\imemfetch_connect|fetch_block|Selector2~0_combout\ & (\imemfetch_connect|fetch_block|rs1[1]~0_combout\ & \regfile_connect|mregfile|register_loop[2].register_inst|Q\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \imemfetch_connect|fetch_block|rs1[0]~1_combout\,
	datab => \imemfetch_connect|fetch_block|Selector2~0_combout\,
	datac => \imemfetch_connect|fetch_block|rs1[1]~0_combout\,
	datad => \regfile_connect|mregfile|register_loop[2].register_inst|Q\(0),
	combout => \MUX_ASel|AB[0]~0_combout\);

-- Location: LCCOMB_X80_Y25_N2
\MUX_ASel|AB[3]~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \MUX_ASel|AB[3]~1_combout\ = (\imemfetch_connect|fetch_block|Selector2~0_combout\) # ((!\imemfetch_connect|fetch_block|rs1[0]~1_combout\ & (\imemfetch_connect|fetch_block|rs1[1]~0_combout\ & 
-- \regfile_connect|mregfile|register_loop[2].register_inst|Q\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \imemfetch_connect|fetch_block|rs1[0]~1_combout\,
	datab => \imemfetch_connect|fetch_block|Selector2~0_combout\,
	datac => \imemfetch_connect|fetch_block|rs1[1]~0_combout\,
	datad => \regfile_connect|mregfile|register_loop[2].register_inst|Q\(0),
	combout => \MUX_ASel|AB[3]~1_combout\);

-- Location: LCCOMB_X80_Y43_N4
\MUX_ASel|AB[10]~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \MUX_ASel|AB[10]~2_combout\ = (\MUX_ASel|AB[0]~0_combout\) # ((\imemfetch_connect|fetch_block|Selector2~0_combout\ & \PC_connect|PC_register_pc|Q\(10)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \imemfetch_connect|fetch_block|Selector2~0_combout\,
	datab => \PC_connect|PC_register_pc|Q\(10),
	datac => \MUX_ASel|AB[0]~0_combout\,
	combout => \MUX_ASel|AB[10]~2_combout\);

-- Location: LCCOMB_X80_Y43_N14
\MUX_ASel|AB[11]~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \MUX_ASel|AB[11]~3_combout\ = (\MUX_ASel|AB[0]~0_combout\) # ((\imemfetch_connect|fetch_block|Selector2~0_combout\ & \PC_connect|PC_register_pc|Q\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \imemfetch_connect|fetch_block|Selector2~0_combout\,
	datac => \MUX_ASel|AB[0]~0_combout\,
	datad => \PC_connect|PC_register_pc|Q\(11),
	combout => \MUX_ASel|AB[11]~3_combout\);

-- Location: LCCOMB_X80_Y43_N24
\MUX_ASel|AB[12]~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \MUX_ASel|AB[12]~4_combout\ = (\MUX_ASel|AB[0]~0_combout\) # ((\PC_connect|PC_register_pc|Q\(12) & \imemfetch_connect|fetch_block|Selector2~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC_connect|PC_register_pc|Q\(12),
	datab => \MUX_ASel|AB[0]~0_combout\,
	datac => \imemfetch_connect|fetch_block|Selector2~0_combout\,
	combout => \MUX_ASel|AB[12]~4_combout\);

-- Location: LCCOMB_X80_Y43_N6
\MUX_ASel|AB[13]~5\ : cycloneiv_lcell_comb
-- Equation(s):
-- \MUX_ASel|AB[13]~5_combout\ = (\MUX_ASel|AB[0]~0_combout\) # ((\imemfetch_connect|fetch_block|Selector2~0_combout\ & \PC_connect|PC_register_pc|Q\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \imemfetch_connect|fetch_block|Selector2~0_combout\,
	datab => \MUX_ASel|AB[0]~0_combout\,
	datac => \PC_connect|PC_register_pc|Q\(13),
	combout => \MUX_ASel|AB[13]~5_combout\);

-- Location: LCCOMB_X80_Y16_N12
\MUX_ASel|AB[14]~6\ : cycloneiv_lcell_comb
-- Equation(s):
-- \MUX_ASel|AB[14]~6_combout\ = (\MUX_ASel|AB[0]~0_combout\) # ((\imemfetch_connect|fetch_block|Selector2~0_combout\ & \PC_connect|PC_register_pc|Q\(14)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \imemfetch_connect|fetch_block|Selector2~0_combout\,
	datab => \MUX_ASel|AB[0]~0_combout\,
	datad => \PC_connect|PC_register_pc|Q\(14),
	combout => \MUX_ASel|AB[14]~6_combout\);

-- Location: LCCOMB_X80_Y43_N28
\MUX_ASel|AB[15]~7\ : cycloneiv_lcell_comb
-- Equation(s):
-- \MUX_ASel|AB[15]~7_combout\ = (\MUX_ASel|AB[0]~0_combout\) # ((\imemfetch_connect|fetch_block|Selector2~0_combout\ & \PC_connect|PC_register_pc|Q\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \imemfetch_connect|fetch_block|Selector2~0_combout\,
	datac => \MUX_ASel|AB[0]~0_combout\,
	datad => \PC_connect|PC_register_pc|Q\(15),
	combout => \MUX_ASel|AB[15]~7_combout\);

-- Location: LCCOMB_X80_Y43_N2
\MUX_ASel|AB[16]~8\ : cycloneiv_lcell_comb
-- Equation(s):
-- \MUX_ASel|AB[16]~8_combout\ = (\MUX_ASel|AB[0]~0_combout\) # ((\imemfetch_connect|fetch_block|Selector2~0_combout\ & \PC_connect|PC_register_pc|Q\(16)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \imemfetch_connect|fetch_block|Selector2~0_combout\,
	datac => \MUX_ASel|AB[0]~0_combout\,
	datad => \PC_connect|PC_register_pc|Q\(16),
	combout => \MUX_ASel|AB[16]~8_combout\);

-- Location: LCCOMB_X80_Y43_N20
\MUX_ASel|AB[17]~9\ : cycloneiv_lcell_comb
-- Equation(s):
-- \MUX_ASel|AB[17]~9_combout\ = (\MUX_ASel|AB[0]~0_combout\) # ((\imemfetch_connect|fetch_block|Selector2~0_combout\ & \PC_connect|PC_register_pc|Q\(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \imemfetch_connect|fetch_block|Selector2~0_combout\,
	datac => \MUX_ASel|AB[0]~0_combout\,
	datad => \PC_connect|PC_register_pc|Q\(17),
	combout => \MUX_ASel|AB[17]~9_combout\);

-- Location: LCCOMB_X80_Y43_N26
\MUX_ASel|AB[18]~10\ : cycloneiv_lcell_comb
-- Equation(s):
-- \MUX_ASel|AB[18]~10_combout\ = (\MUX_ASel|AB[0]~0_combout\) # ((\imemfetch_connect|fetch_block|Selector2~0_combout\ & \PC_connect|PC_register_pc|Q\(18)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \imemfetch_connect|fetch_block|Selector2~0_combout\,
	datab => \MUX_ASel|AB[0]~0_combout\,
	datad => \PC_connect|PC_register_pc|Q\(18),
	combout => \MUX_ASel|AB[18]~10_combout\);

-- Location: LCCOMB_X80_Y19_N20
\MUX_ASel|AB[19]~11\ : cycloneiv_lcell_comb
-- Equation(s):
-- \MUX_ASel|AB[19]~11_combout\ = (\MUX_ASel|AB[0]~0_combout\) # ((\PC_connect|PC_register_pc|Q\(19) & \imemfetch_connect|fetch_block|Selector2~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC_connect|PC_register_pc|Q\(19),
	datab => \MUX_ASel|AB[0]~0_combout\,
	datad => \imemfetch_connect|fetch_block|Selector2~0_combout\,
	combout => \MUX_ASel|AB[19]~11_combout\);

-- Location: LCCOMB_X80_Y25_N12
\MUX_ASel|AB[20]~12\ : cycloneiv_lcell_comb
-- Equation(s):
-- \MUX_ASel|AB[20]~12_combout\ = (\MUX_ASel|AB[0]~0_combout\) # ((\imemfetch_connect|fetch_block|Selector2~0_combout\ & \PC_connect|PC_register_pc|Q\(20)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \MUX_ASel|AB[0]~0_combout\,
	datac => \imemfetch_connect|fetch_block|Selector2~0_combout\,
	datad => \PC_connect|PC_register_pc|Q\(20),
	combout => \MUX_ASel|AB[20]~12_combout\);

-- Location: LCCOMB_X80_Y25_N22
\MUX_ASel|AB[21]~13\ : cycloneiv_lcell_comb
-- Equation(s):
-- \MUX_ASel|AB[21]~13_combout\ = (\MUX_ASel|AB[0]~0_combout\) # ((\imemfetch_connect|fetch_block|Selector2~0_combout\ & \PC_connect|PC_register_pc|Q\(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \MUX_ASel|AB[0]~0_combout\,
	datac => \imemfetch_connect|fetch_block|Selector2~0_combout\,
	datad => \PC_connect|PC_register_pc|Q\(21),
	combout => \MUX_ASel|AB[21]~13_combout\);

-- Location: LCCOMB_X80_Y25_N24
\MUX_ASel|AB[22]~14\ : cycloneiv_lcell_comb
-- Equation(s):
-- \MUX_ASel|AB[22]~14_combout\ = (\MUX_ASel|AB[0]~0_combout\) # ((\imemfetch_connect|fetch_block|Selector2~0_combout\ & \PC_connect|PC_register_pc|Q\(22)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \MUX_ASel|AB[0]~0_combout\,
	datac => \imemfetch_connect|fetch_block|Selector2~0_combout\,
	datad => \PC_connect|PC_register_pc|Q\(22),
	combout => \MUX_ASel|AB[22]~14_combout\);

-- Location: LCCOMB_X80_Y19_N22
\MUX_ASel|AB[23]~15\ : cycloneiv_lcell_comb
-- Equation(s):
-- \MUX_ASel|AB[23]~15_combout\ = (\MUX_ASel|AB[0]~0_combout\) # ((\PC_connect|PC_register_pc|Q\(23) & \imemfetch_connect|fetch_block|Selector2~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC_connect|PC_register_pc|Q\(23),
	datab => \MUX_ASel|AB[0]~0_combout\,
	datad => \imemfetch_connect|fetch_block|Selector2~0_combout\,
	combout => \MUX_ASel|AB[23]~15_combout\);

-- Location: LCCOMB_X80_Y43_N16
\MUX_ASel|AB[24]~16\ : cycloneiv_lcell_comb
-- Equation(s):
-- \MUX_ASel|AB[24]~16_combout\ = (\MUX_ASel|AB[0]~0_combout\) # ((\imemfetch_connect|fetch_block|Selector2~0_combout\ & \PC_connect|PC_register_pc|Q\(24)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \imemfetch_connect|fetch_block|Selector2~0_combout\,
	datab => \PC_connect|PC_register_pc|Q\(24),
	datac => \MUX_ASel|AB[0]~0_combout\,
	combout => \MUX_ASel|AB[24]~16_combout\);

-- Location: LCCOMB_X80_Y16_N30
\MUX_ASel|AB[25]~17\ : cycloneiv_lcell_comb
-- Equation(s):
-- \MUX_ASel|AB[25]~17_combout\ = (\MUX_ASel|AB[0]~0_combout\) # ((\imemfetch_connect|fetch_block|Selector2~0_combout\ & \PC_connect|PC_register_pc|Q\(25)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \imemfetch_connect|fetch_block|Selector2~0_combout\,
	datab => \MUX_ASel|AB[0]~0_combout\,
	datad => \PC_connect|PC_register_pc|Q\(25),
	combout => \MUX_ASel|AB[25]~17_combout\);

-- Location: LCCOMB_X80_Y16_N16
\MUX_ASel|AB[26]~18\ : cycloneiv_lcell_comb
-- Equation(s):
-- \MUX_ASel|AB[26]~18_combout\ = (\MUX_ASel|AB[0]~0_combout\) # ((\imemfetch_connect|fetch_block|Selector2~0_combout\ & \PC_connect|PC_register_pc|Q\(26)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \imemfetch_connect|fetch_block|Selector2~0_combout\,
	datab => \MUX_ASel|AB[0]~0_combout\,
	datad => \PC_connect|PC_register_pc|Q\(26),
	combout => \MUX_ASel|AB[26]~18_combout\);

-- Location: LCCOMB_X80_Y43_N18
\MUX_ASel|AB[27]~19\ : cycloneiv_lcell_comb
-- Equation(s):
-- \MUX_ASel|AB[27]~19_combout\ = (\MUX_ASel|AB[0]~0_combout\) # ((\imemfetch_connect|fetch_block|Selector2~0_combout\ & \PC_connect|PC_register_pc|Q\(27)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \imemfetch_connect|fetch_block|Selector2~0_combout\,
	datac => \MUX_ASel|AB[0]~0_combout\,
	datad => \PC_connect|PC_register_pc|Q\(27),
	combout => \MUX_ASel|AB[27]~19_combout\);

-- Location: LCCOMB_X80_Y16_N6
\MUX_ASel|AB[28]~20\ : cycloneiv_lcell_comb
-- Equation(s):
-- \MUX_ASel|AB[28]~20_combout\ = (\MUX_ASel|AB[0]~0_combout\) # ((\PC_connect|PC_register_pc|Q\(28) & \imemfetch_connect|fetch_block|Selector2~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC_connect|PC_register_pc|Q\(28),
	datab => \MUX_ASel|AB[0]~0_combout\,
	datad => \imemfetch_connect|fetch_block|Selector2~0_combout\,
	combout => \MUX_ASel|AB[28]~20_combout\);

-- Location: LCCOMB_X80_Y43_N12
\MUX_ASel|AB[29]~21\ : cycloneiv_lcell_comb
-- Equation(s):
-- \MUX_ASel|AB[29]~21_combout\ = (\MUX_ASel|AB[0]~0_combout\) # ((\imemfetch_connect|fetch_block|Selector2~0_combout\ & \PC_connect|PC_register_pc|Q\(29)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \MUX_ASel|AB[0]~0_combout\,
	datac => \imemfetch_connect|fetch_block|Selector2~0_combout\,
	datad => \PC_connect|PC_register_pc|Q\(29),
	combout => \MUX_ASel|AB[29]~21_combout\);

-- Location: LCCOMB_X80_Y43_N22
\MUX_ASel|AB[30]~22\ : cycloneiv_lcell_comb
-- Equation(s):
-- \MUX_ASel|AB[30]~22_combout\ = (\MUX_ASel|AB[0]~0_combout\) # ((\imemfetch_connect|fetch_block|Selector2~0_combout\ & \PC_connect|PC_register_pc|Q\(30)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \imemfetch_connect|fetch_block|Selector2~0_combout\,
	datab => \PC_connect|PC_register_pc|Q\(30),
	datac => \MUX_ASel|AB[0]~0_combout\,
	combout => \MUX_ASel|AB[30]~22_combout\);

-- Location: LCCOMB_X80_Y16_N20
\MUX_ASel|AB[31]~23\ : cycloneiv_lcell_comb
-- Equation(s):
-- \MUX_ASel|AB[31]~23_combout\ = (\MUX_ASel|AB[0]~0_combout\) # ((\imemfetch_connect|fetch_block|Selector2~0_combout\ & \PC_connect|PC_register_pc|Q\(31)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \imemfetch_connect|fetch_block|Selector2~0_combout\,
	datab => \MUX_ASel|AB[0]~0_combout\,
	datad => \PC_connect|PC_register_pc|Q\(31),
	combout => \MUX_ASel|AB[31]~23_combout\);

-- Location: LCCOMB_X79_Y45_N0
\Controller_connect|ControlUnit|WideOr1~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Controller_connect|ControlUnit|WideOr1~3_combout\ = (!\PC_connect|PC_register_pc|Q\(5) & !\PC_connect|PC_register_pc|Q\(9))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \PC_connect|PC_register_pc|Q\(5),
	datad => \PC_connect|PC_register_pc|Q\(9),
	combout => \Controller_connect|ControlUnit|WideOr1~3_combout\);

-- Location: LCCOMB_X79_Y45_N22
\Controller_connect|ControlUnit|WideOr1~9\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Controller_connect|ControlUnit|WideOr1~9_combout\ = (!\PC_connect|PC_register_pc|Q\(6) & (!\PC_connect|PC_register_pc|Q\(7) & (!\PC_connect|PC_register_pc|Q\(8) & \Controller_connect|ControlUnit|WideOr1~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC_connect|PC_register_pc|Q\(6),
	datab => \PC_connect|PC_register_pc|Q\(7),
	datac => \PC_connect|PC_register_pc|Q\(8),
	datad => \Controller_connect|ControlUnit|WideOr1~3_combout\,
	combout => \Controller_connect|ControlUnit|WideOr1~9_combout\);

-- Location: LCCOMB_X78_Y44_N24
\MUX_BSel|AB[4]~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \MUX_BSel|AB[4]~0_combout\ = (\imemfetch_connect|imem_block|memory~8_combout\ & (!\Controller_connect|ControlUnit|WideOr1~9_combout\ & (\regfile_connect|mregfile|muxB|Mux31~1_combout\ & \imemfetch_connect|fetch_block|WideOr2~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \imemfetch_connect|imem_block|memory~8_combout\,
	datab => \Controller_connect|ControlUnit|WideOr1~9_combout\,
	datac => \regfile_connect|mregfile|muxB|Mux31~1_combout\,
	datad => \imemfetch_connect|fetch_block|WideOr2~0_combout\,
	combout => \MUX_BSel|AB[4]~0_combout\);

-- Location: LCCOMB_X80_Y55_N16
\MUX_BSel|AB[0]~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \MUX_BSel|AB[0]~1_combout\ = (\MUX_BSel|AB[4]~0_combout\) # ((\Controller_connect|ControlUnit|WideOr1~9_combout\ & \imemfetch_connect|fetch_block|Selector5~16_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Controller_connect|ControlUnit|WideOr1~9_combout\,
	datab => \imemfetch_connect|fetch_block|Selector5~16_combout\,
	datac => \MUX_BSel|AB[4]~0_combout\,
	combout => \MUX_BSel|AB[0]~1_combout\);

-- Location: LCCOMB_X80_Y55_N10
\MUX_BSel|AB[1]~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \MUX_BSel|AB[1]~2_combout\ = (\MUX_BSel|AB[4]~0_combout\) # ((\Controller_connect|ControlUnit|WideOr1~9_combout\ & \imemfetch_connect|fetch_block|Selector4~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Controller_connect|ControlUnit|WideOr1~9_combout\,
	datac => \MUX_BSel|AB[4]~0_combout\,
	datad => \imemfetch_connect|fetch_block|Selector4~3_combout\,
	combout => \MUX_BSel|AB[1]~2_combout\);

-- Location: LCCOMB_X78_Y44_N22
\MUX_BSel|AB[2]~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \MUX_BSel|AB[2]~3_combout\ = (\MUX_BSel|AB[4]~0_combout\) # ((\imemfetch_connect|fetch_block|Selector3~0_combout\ & (\imemfetch_connect|fetch_block|Selector4~2_combout\ & \Controller_connect|ControlUnit|WideOr1~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \imemfetch_connect|fetch_block|Selector3~0_combout\,
	datab => \imemfetch_connect|fetch_block|Selector4~2_combout\,
	datac => \Controller_connect|ControlUnit|WideOr1~9_combout\,
	datad => \MUX_BSel|AB[4]~0_combout\,
	combout => \MUX_BSel|AB[2]~3_combout\);

-- Location: LCCOMB_X80_Y47_N8
\MUX_BSel|AB[3]~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \MUX_BSel|AB[3]~4_combout\ = (\MUX_BSel|AB[4]~0_combout\) # ((\imemfetch_connect|fetch_block|Selector2~0_combout\ & \Controller_connect|ControlUnit|WideOr1~9_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \imemfetch_connect|fetch_block|Selector2~0_combout\,
	datac => \MUX_BSel|AB[4]~0_combout\,
	datad => \Controller_connect|ControlUnit|WideOr1~9_combout\,
	combout => \MUX_BSel|AB[3]~4_combout\);

-- Location: LCCOMB_X80_Y47_N18
\MUX_BSel|AB[5]~5\ : cycloneiv_lcell_comb
-- Equation(s):
-- \MUX_BSel|AB[5]~5_combout\ = (\MUX_BSel|AB[4]~0_combout\) # ((\Controller_connect|ControlUnit|WideOr1~9_combout\ & \imemfetch_connect|fetch_block|imm[5]~12_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Controller_connect|ControlUnit|WideOr1~9_combout\,
	datac => \MUX_BSel|AB[4]~0_combout\,
	datad => \imemfetch_connect|fetch_block|imm[5]~12_combout\,
	combout => \MUX_BSel|AB[5]~5_combout\);

-- Location: LCCOMB_X80_Y55_N4
\MUX_BSel|AB[10]~6\ : cycloneiv_lcell_comb
-- Equation(s):
-- \MUX_BSel|AB[10]~6_combout\ = (\MUX_BSel|AB[4]~0_combout\) # ((\Controller_connect|ControlUnit|WideOr1~9_combout\ & \imemfetch_connect|fetch_block|imm[10]~13_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Controller_connect|ControlUnit|WideOr1~9_combout\,
	datac => \MUX_BSel|AB[4]~0_combout\,
	datad => \imemfetch_connect|fetch_block|imm[10]~13_combout\,
	combout => \MUX_BSel|AB[10]~6_combout\);

-- Location: LCCOMB_X80_Y47_N24
\MUX_BSel|AB[11]~7\ : cycloneiv_lcell_comb
-- Equation(s):
-- \MUX_BSel|AB[11]~7_combout\ = (!\MUX_BSel|AB[4]~0_combout\ & (((!\Controller_connect|ControlUnit|WideOr1~9_combout\) # (!\imemfetch_connect|fetch_block|Selector2~0_combout\)) # (!\imemfetch_connect|imem_block|memory~15_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MUX_BSel|AB[4]~0_combout\,
	datab => \imemfetch_connect|imem_block|memory~15_combout\,
	datac => \imemfetch_connect|fetch_block|Selector2~0_combout\,
	datad => \Controller_connect|ControlUnit|WideOr1~9_combout\,
	combout => \MUX_BSel|AB[11]~7_combout\);

-- Location: LCCOMB_X80_Y47_N26
\Controller_connect|ControlUnit|WideOr0~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Controller_connect|ControlUnit|WideOr0~0_combout\ = (!\imemfetch_connect|imem_block|memory~5_combout\ & (\imemfetch_connect|imem_block|memory~7_combout\ & ((\regfile_connect|mregfile|decoder5_32|en[7]~0_combout\) # 
-- (!\imemfetch_connect|imem_block|memory~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \imemfetch_connect|imem_block|memory~3_combout\,
	datab => \regfile_connect|mregfile|decoder5_32|en[7]~0_combout\,
	datac => \imemfetch_connect|imem_block|memory~5_combout\,
	datad => \imemfetch_connect|imem_block|memory~7_combout\,
	combout => \Controller_connect|ControlUnit|WideOr0~0_combout\);

ww_ketqua(0) <= \ketqua[0]~output_o\;

ww_ketqua(1) <= \ketqua[1]~output_o\;

ww_ketqua(2) <= \ketqua[2]~output_o\;

ww_ketqua(3) <= \ketqua[3]~output_o\;

ww_ketqua(4) <= \ketqua[4]~output_o\;

ww_ketqua(5) <= \ketqua[5]~output_o\;

ww_ketqua(6) <= \ketqua[6]~output_o\;

ww_ketqua(7) <= \ketqua[7]~output_o\;

ww_ketqua(8) <= \ketqua[8]~output_o\;

ww_ketqua(9) <= \ketqua[9]~output_o\;

ww_ketqua(10) <= \ketqua[10]~output_o\;

ww_ketqua(11) <= \ketqua[11]~output_o\;

ww_ketqua(12) <= \ketqua[12]~output_o\;

ww_ketqua(13) <= \ketqua[13]~output_o\;

ww_ketqua(14) <= \ketqua[14]~output_o\;

ww_ketqua(15) <= \ketqua[15]~output_o\;

ww_ketqua(16) <= \ketqua[16]~output_o\;

ww_ketqua(17) <= \ketqua[17]~output_o\;

ww_ketqua(18) <= \ketqua[18]~output_o\;

ww_ketqua(19) <= \ketqua[19]~output_o\;

ww_ketqua(20) <= \ketqua[20]~output_o\;

ww_ketqua(21) <= \ketqua[21]~output_o\;

ww_ketqua(22) <= \ketqua[22]~output_o\;

ww_ketqua(23) <= \ketqua[23]~output_o\;

ww_ketqua(24) <= \ketqua[24]~output_o\;

ww_ketqua(25) <= \ketqua[25]~output_o\;

ww_ketqua(26) <= \ketqua[26]~output_o\;

ww_ketqua(27) <= \ketqua[27]~output_o\;

ww_ketqua(28) <= \ketqua[28]~output_o\;

ww_ketqua(29) <= \ketqua[29]~output_o\;

ww_ketqua(30) <= \ketqua[30]~output_o\;

ww_ketqua(31) <= \ketqua[31]~output_o\;

ww_cur_pcout(0) <= \cur_pcout[0]~output_o\;

ww_cur_pcout(1) <= \cur_pcout[1]~output_o\;

ww_cur_pcout(2) <= \cur_pcout[2]~output_o\;

ww_cur_pcout(3) <= \cur_pcout[3]~output_o\;

ww_cur_pcout(4) <= \cur_pcout[4]~output_o\;

ww_cur_pcout(5) <= \cur_pcout[5]~output_o\;

ww_cur_pcout(6) <= \cur_pcout[6]~output_o\;

ww_cur_pcout(7) <= \cur_pcout[7]~output_o\;

ww_cur_pcout(8) <= \cur_pcout[8]~output_o\;

ww_cur_pcout(9) <= \cur_pcout[9]~output_o\;

ww_cur_pcout(10) <= \cur_pcout[10]~output_o\;

ww_cur_pcout(11) <= \cur_pcout[11]~output_o\;

ww_cur_pcout(12) <= \cur_pcout[12]~output_o\;

ww_cur_pcout(13) <= \cur_pcout[13]~output_o\;

ww_cur_pcout(14) <= \cur_pcout[14]~output_o\;

ww_cur_pcout(15) <= \cur_pcout[15]~output_o\;

ww_cur_pcout(16) <= \cur_pcout[16]~output_o\;

ww_cur_pcout(17) <= \cur_pcout[17]~output_o\;

ww_cur_pcout(18) <= \cur_pcout[18]~output_o\;

ww_cur_pcout(19) <= \cur_pcout[19]~output_o\;

ww_cur_pcout(20) <= \cur_pcout[20]~output_o\;

ww_cur_pcout(21) <= \cur_pcout[21]~output_o\;

ww_cur_pcout(22) <= \cur_pcout[22]~output_o\;

ww_cur_pcout(23) <= \cur_pcout[23]~output_o\;

ww_cur_pcout(24) <= \cur_pcout[24]~output_o\;

ww_cur_pcout(25) <= \cur_pcout[25]~output_o\;

ww_cur_pcout(26) <= \cur_pcout[26]~output_o\;

ww_cur_pcout(27) <= \cur_pcout[27]~output_o\;

ww_cur_pcout(28) <= \cur_pcout[28]~output_o\;

ww_cur_pcout(29) <= \cur_pcout[29]~output_o\;

ww_cur_pcout(30) <= \cur_pcout[30]~output_o\;

ww_cur_pcout(31) <= \cur_pcout[31]~output_o\;

ww_imm_out(0) <= \imm_out[0]~output_o\;

ww_imm_out(1) <= \imm_out[1]~output_o\;

ww_imm_out(2) <= \imm_out[2]~output_o\;

ww_imm_out(3) <= \imm_out[3]~output_o\;

ww_imm_out(4) <= \imm_out[4]~output_o\;

ww_imm_out(5) <= \imm_out[5]~output_o\;

ww_imm_out(6) <= \imm_out[6]~output_o\;

ww_imm_out(7) <= \imm_out[7]~output_o\;

ww_imm_out(8) <= \imm_out[8]~output_o\;

ww_imm_out(9) <= \imm_out[9]~output_o\;

ww_imm_out(10) <= \imm_out[10]~output_o\;

ww_imm_out(11) <= \imm_out[11]~output_o\;

ww_rd_adr(0) <= \rd_adr[0]~output_o\;

ww_rd_adr(1) <= \rd_adr[1]~output_o\;

ww_rd_adr(2) <= \rd_adr[2]~output_o\;

ww_rd_adr(3) <= \rd_adr[3]~output_o\;

ww_rd_adr(4) <= \rd_adr[4]~output_o\;

ww_rddata(0) <= \rddata[0]~output_o\;

ww_rddata(1) <= \rddata[1]~output_o\;

ww_rddata(2) <= \rddata[2]~output_o\;

ww_rddata(3) <= \rddata[3]~output_o\;

ww_rddata(4) <= \rddata[4]~output_o\;

ww_rddata(5) <= \rddata[5]~output_o\;

ww_rddata(6) <= \rddata[6]~output_o\;

ww_rddata(7) <= \rddata[7]~output_o\;

ww_rddata(8) <= \rddata[8]~output_o\;

ww_rddata(9) <= \rddata[9]~output_o\;

ww_rddata(10) <= \rddata[10]~output_o\;

ww_rddata(11) <= \rddata[11]~output_o\;

ww_rddata(12) <= \rddata[12]~output_o\;

ww_rddata(13) <= \rddata[13]~output_o\;

ww_rddata(14) <= \rddata[14]~output_o\;

ww_rddata(15) <= \rddata[15]~output_o\;

ww_rddata(16) <= \rddata[16]~output_o\;

ww_rddata(17) <= \rddata[17]~output_o\;

ww_rddata(18) <= \rddata[18]~output_o\;

ww_rddata(19) <= \rddata[19]~output_o\;

ww_rddata(20) <= \rddata[20]~output_o\;

ww_rddata(21) <= \rddata[21]~output_o\;

ww_rddata(22) <= \rddata[22]~output_o\;

ww_rddata(23) <= \rddata[23]~output_o\;

ww_rddata(24) <= \rddata[24]~output_o\;

ww_rddata(25) <= \rddata[25]~output_o\;

ww_rddata(26) <= \rddata[26]~output_o\;

ww_rddata(27) <= \rddata[27]~output_o\;

ww_rddata(28) <= \rddata[28]~output_o\;

ww_rddata(29) <= \rddata[29]~output_o\;

ww_rddata(30) <= \rddata[30]~output_o\;

ww_rddata(31) <= \rddata[31]~output_o\;

ww_A_Alu(0) <= \A_Alu[0]~output_o\;

ww_A_Alu(1) <= \A_Alu[1]~output_o\;

ww_A_Alu(2) <= \A_Alu[2]~output_o\;

ww_A_Alu(3) <= \A_Alu[3]~output_o\;

ww_A_Alu(4) <= \A_Alu[4]~output_o\;

ww_A_Alu(5) <= \A_Alu[5]~output_o\;

ww_A_Alu(6) <= \A_Alu[6]~output_o\;

ww_A_Alu(7) <= \A_Alu[7]~output_o\;

ww_A_Alu(8) <= \A_Alu[8]~output_o\;

ww_A_Alu(9) <= \A_Alu[9]~output_o\;

ww_A_Alu(10) <= \A_Alu[10]~output_o\;

ww_A_Alu(11) <= \A_Alu[11]~output_o\;

ww_A_Alu(12) <= \A_Alu[12]~output_o\;

ww_A_Alu(13) <= \A_Alu[13]~output_o\;

ww_A_Alu(14) <= \A_Alu[14]~output_o\;

ww_A_Alu(15) <= \A_Alu[15]~output_o\;

ww_A_Alu(16) <= \A_Alu[16]~output_o\;

ww_A_Alu(17) <= \A_Alu[17]~output_o\;

ww_A_Alu(18) <= \A_Alu[18]~output_o\;

ww_A_Alu(19) <= \A_Alu[19]~output_o\;

ww_A_Alu(20) <= \A_Alu[20]~output_o\;

ww_A_Alu(21) <= \A_Alu[21]~output_o\;

ww_A_Alu(22) <= \A_Alu[22]~output_o\;

ww_A_Alu(23) <= \A_Alu[23]~output_o\;

ww_A_Alu(24) <= \A_Alu[24]~output_o\;

ww_A_Alu(25) <= \A_Alu[25]~output_o\;

ww_A_Alu(26) <= \A_Alu[26]~output_o\;

ww_A_Alu(27) <= \A_Alu[27]~output_o\;

ww_A_Alu(28) <= \A_Alu[28]~output_o\;

ww_A_Alu(29) <= \A_Alu[29]~output_o\;

ww_A_Alu(30) <= \A_Alu[30]~output_o\;

ww_A_Alu(31) <= \A_Alu[31]~output_o\;

ww_B_Alu(0) <= \B_Alu[0]~output_o\;

ww_B_Alu(1) <= \B_Alu[1]~output_o\;

ww_B_Alu(2) <= \B_Alu[2]~output_o\;

ww_B_Alu(3) <= \B_Alu[3]~output_o\;

ww_B_Alu(4) <= \B_Alu[4]~output_o\;

ww_B_Alu(5) <= \B_Alu[5]~output_o\;

ww_B_Alu(6) <= \B_Alu[6]~output_o\;

ww_B_Alu(7) <= \B_Alu[7]~output_o\;

ww_B_Alu(8) <= \B_Alu[8]~output_o\;

ww_B_Alu(9) <= \B_Alu[9]~output_o\;

ww_B_Alu(10) <= \B_Alu[10]~output_o\;

ww_B_Alu(11) <= \B_Alu[11]~output_o\;

ww_B_Alu(12) <= \B_Alu[12]~output_o\;

ww_B_Alu(13) <= \B_Alu[13]~output_o\;

ww_B_Alu(14) <= \B_Alu[14]~output_o\;

ww_B_Alu(15) <= \B_Alu[15]~output_o\;

ww_B_Alu(16) <= \B_Alu[16]~output_o\;

ww_B_Alu(17) <= \B_Alu[17]~output_o\;

ww_B_Alu(18) <= \B_Alu[18]~output_o\;

ww_B_Alu(19) <= \B_Alu[19]~output_o\;

ww_B_Alu(20) <= \B_Alu[20]~output_o\;

ww_B_Alu(21) <= \B_Alu[21]~output_o\;

ww_B_Alu(22) <= \B_Alu[22]~output_o\;

ww_B_Alu(23) <= \B_Alu[23]~output_o\;

ww_B_Alu(24) <= \B_Alu[24]~output_o\;

ww_B_Alu(25) <= \B_Alu[25]~output_o\;

ww_B_Alu(26) <= \B_Alu[26]~output_o\;

ww_B_Alu(27) <= \B_Alu[27]~output_o\;

ww_B_Alu(28) <= \B_Alu[28]~output_o\;

ww_B_Alu(29) <= \B_Alu[29]~output_o\;

ww_B_Alu(30) <= \B_Alu[30]~output_o\;

ww_B_Alu(31) <= \B_Alu[31]~output_o\;

ww_wbs(0) <= \wbs[0]~output_o\;

ww_wbs(1) <= \wbs[1]~output_o\;

ww_rs1_out(0) <= \rs1_out[0]~output_o\;

ww_rs1_out(1) <= \rs1_out[1]~output_o\;

ww_rs1_out(2) <= \rs1_out[2]~output_o\;

ww_rs1_out(3) <= \rs1_out[3]~output_o\;

ww_rs1_out(4) <= \rs1_out[4]~output_o\;

ww_Reg_WEn <= \Reg_WEn~output_o\;
END structure;


