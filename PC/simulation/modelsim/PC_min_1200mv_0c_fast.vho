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

-- DATE "05/27/2024 23:56:47"

-- 
-- Device: Altera EP4CGX22CF19C6 Package FBGA324
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

ENTITY 	PC IS
    PORT (
	rst : IN std_logic;
	clk : IN std_logic;
	Stop_en : IN std_logic;
	PCsel : IN std_logic;
	branch : IN std_logic_vector(31 DOWNTO 0);
	cur_pc : OUT std_logic_vector(31 DOWNTO 0);
	nextpc : OUT std_logic_vector(31 DOWNTO 0)
	);
END PC;

-- Design Ports Information
-- cur_pc[0]	=>  Location: PIN_D8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- cur_pc[1]	=>  Location: PIN_M16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- cur_pc[2]	=>  Location: PIN_M17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- cur_pc[3]	=>  Location: PIN_L18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- cur_pc[4]	=>  Location: PIN_U16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- cur_pc[5]	=>  Location: PIN_E18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- cur_pc[6]	=>  Location: PIN_L15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- cur_pc[7]	=>  Location: PIN_B5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- cur_pc[8]	=>  Location: PIN_D9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- cur_pc[9]	=>  Location: PIN_T13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- cur_pc[10]	=>  Location: PIN_A16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- cur_pc[11]	=>  Location: PIN_A14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- cur_pc[12]	=>  Location: PIN_F18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- cur_pc[13]	=>  Location: PIN_B13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- cur_pc[14]	=>  Location: PIN_D12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- cur_pc[15]	=>  Location: PIN_P13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- cur_pc[16]	=>  Location: PIN_J17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- cur_pc[17]	=>  Location: PIN_B16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- cur_pc[18]	=>  Location: PIN_E12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- cur_pc[19]	=>  Location: PIN_D13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- cur_pc[20]	=>  Location: PIN_G15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- cur_pc[21]	=>  Location: PIN_F16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- cur_pc[22]	=>  Location: PIN_E15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- cur_pc[23]	=>  Location: PIN_C8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- cur_pc[24]	=>  Location: PIN_R12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- cur_pc[25]	=>  Location: PIN_A10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- cur_pc[26]	=>  Location: PIN_C13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- cur_pc[27]	=>  Location: PIN_F15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- cur_pc[28]	=>  Location: PIN_E16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- cur_pc[29]	=>  Location: PIN_A15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- cur_pc[30]	=>  Location: PIN_A11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- cur_pc[31]	=>  Location: PIN_N16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- nextpc[0]	=>  Location: PIN_D16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- nextpc[1]	=>  Location: PIN_A6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- nextpc[2]	=>  Location: PIN_A9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- nextpc[3]	=>  Location: PIN_B9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- nextpc[4]	=>  Location: PIN_B7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- nextpc[5]	=>  Location: PIN_U18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- nextpc[6]	=>  Location: PIN_A7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- nextpc[7]	=>  Location: PIN_C10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- nextpc[8]	=>  Location: PIN_G18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- nextpc[9]	=>  Location: PIN_A17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- nextpc[10]	=>  Location: PIN_R18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- nextpc[11]	=>  Location: PIN_C11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- nextpc[12]	=>  Location: PIN_A18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- nextpc[13]	=>  Location: PIN_B6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- nextpc[14]	=>  Location: PIN_C9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- nextpc[15]	=>  Location: PIN_D15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- nextpc[16]	=>  Location: PIN_G17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- nextpc[17]	=>  Location: PIN_R17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- nextpc[18]	=>  Location: PIN_N15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- nextpc[19]	=>  Location: PIN_P12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- nextpc[20]	=>  Location: PIN_F17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- nextpc[21]	=>  Location: PIN_R16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- nextpc[22]	=>  Location: PIN_C15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- nextpc[23]	=>  Location: PIN_D7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- nextpc[24]	=>  Location: PIN_N18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- nextpc[25]	=>  Location: PIN_T18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- nextpc[26]	=>  Location: PIN_D11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- nextpc[27]	=>  Location: PIN_U12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- nextpc[28]	=>  Location: PIN_K15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- nextpc[29]	=>  Location: PIN_H16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- nextpc[30]	=>  Location: PIN_E10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- nextpc[31]	=>  Location: PIN_T12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- branch[0]	=>  Location: PIN_V11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PCsel	=>  Location: PIN_V12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- branch[1]	=>  Location: PIN_D6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- branch[2]	=>  Location: PIN_D10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- branch[3]	=>  Location: PIN_M18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- branch[4]	=>  Location: PIN_B10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- branch[5]	=>  Location: PIN_B18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- branch[6]	=>  Location: PIN_P16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- branch[7]	=>  Location: PIN_D17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- branch[8]	=>  Location: PIN_L16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- branch[9]	=>  Location: PIN_G16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- branch[10]	=>  Location: PIN_D18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- branch[11]	=>  Location: PIN_R13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- branch[12]	=>  Location: PIN_V18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- branch[13]	=>  Location: PIN_C7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- branch[14]	=>  Location: PIN_J16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- branch[15]	=>  Location: PIN_C16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- branch[16]	=>  Location: PIN_C17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- branch[17]	=>  Location: PIN_C18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- branch[18]	=>  Location: PIN_P18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- branch[19]	=>  Location: PIN_T14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- branch[20]	=>  Location: PIN_V16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- branch[21]	=>  Location: PIN_A8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- branch[22]	=>  Location: PIN_C14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- branch[23]	=>  Location: PIN_U15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- branch[24]	=>  Location: PIN_V14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- branch[25]	=>  Location: PIN_A13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- branch[26]	=>  Location: PIN_N17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- branch[27]	=>  Location: PIN_V15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- branch[28]	=>  Location: PIN_K16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- branch[29]	=>  Location: PIN_D14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- branch[30]	=>  Location: PIN_C12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- branch[31]	=>  Location: PIN_T11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rst	=>  Location: PIN_B15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk	=>  Location: PIN_M10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Stop_en	=>  Location: PIN_R11,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF PC IS
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
SIGNAL ww_PCsel : std_logic;
SIGNAL ww_branch : std_logic_vector(31 DOWNTO 0);
SIGNAL ww_cur_pc : std_logic_vector(31 DOWNTO 0);
SIGNAL ww_nextpc : std_logic_vector(31 DOWNTO 0);
SIGNAL \clk~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \cur_pc[0]~output_o\ : std_logic;
SIGNAL \cur_pc[1]~output_o\ : std_logic;
SIGNAL \cur_pc[2]~output_o\ : std_logic;
SIGNAL \cur_pc[3]~output_o\ : std_logic;
SIGNAL \cur_pc[4]~output_o\ : std_logic;
SIGNAL \cur_pc[5]~output_o\ : std_logic;
SIGNAL \cur_pc[6]~output_o\ : std_logic;
SIGNAL \cur_pc[7]~output_o\ : std_logic;
SIGNAL \cur_pc[8]~output_o\ : std_logic;
SIGNAL \cur_pc[9]~output_o\ : std_logic;
SIGNAL \cur_pc[10]~output_o\ : std_logic;
SIGNAL \cur_pc[11]~output_o\ : std_logic;
SIGNAL \cur_pc[12]~output_o\ : std_logic;
SIGNAL \cur_pc[13]~output_o\ : std_logic;
SIGNAL \cur_pc[14]~output_o\ : std_logic;
SIGNAL \cur_pc[15]~output_o\ : std_logic;
SIGNAL \cur_pc[16]~output_o\ : std_logic;
SIGNAL \cur_pc[17]~output_o\ : std_logic;
SIGNAL \cur_pc[18]~output_o\ : std_logic;
SIGNAL \cur_pc[19]~output_o\ : std_logic;
SIGNAL \cur_pc[20]~output_o\ : std_logic;
SIGNAL \cur_pc[21]~output_o\ : std_logic;
SIGNAL \cur_pc[22]~output_o\ : std_logic;
SIGNAL \cur_pc[23]~output_o\ : std_logic;
SIGNAL \cur_pc[24]~output_o\ : std_logic;
SIGNAL \cur_pc[25]~output_o\ : std_logic;
SIGNAL \cur_pc[26]~output_o\ : std_logic;
SIGNAL \cur_pc[27]~output_o\ : std_logic;
SIGNAL \cur_pc[28]~output_o\ : std_logic;
SIGNAL \cur_pc[29]~output_o\ : std_logic;
SIGNAL \cur_pc[30]~output_o\ : std_logic;
SIGNAL \cur_pc[31]~output_o\ : std_logic;
SIGNAL \nextpc[0]~output_o\ : std_logic;
SIGNAL \nextpc[1]~output_o\ : std_logic;
SIGNAL \nextpc[2]~output_o\ : std_logic;
SIGNAL \nextpc[3]~output_o\ : std_logic;
SIGNAL \nextpc[4]~output_o\ : std_logic;
SIGNAL \nextpc[5]~output_o\ : std_logic;
SIGNAL \nextpc[6]~output_o\ : std_logic;
SIGNAL \nextpc[7]~output_o\ : std_logic;
SIGNAL \nextpc[8]~output_o\ : std_logic;
SIGNAL \nextpc[9]~output_o\ : std_logic;
SIGNAL \nextpc[10]~output_o\ : std_logic;
SIGNAL \nextpc[11]~output_o\ : std_logic;
SIGNAL \nextpc[12]~output_o\ : std_logic;
SIGNAL \nextpc[13]~output_o\ : std_logic;
SIGNAL \nextpc[14]~output_o\ : std_logic;
SIGNAL \nextpc[15]~output_o\ : std_logic;
SIGNAL \nextpc[16]~output_o\ : std_logic;
SIGNAL \nextpc[17]~output_o\ : std_logic;
SIGNAL \nextpc[18]~output_o\ : std_logic;
SIGNAL \nextpc[19]~output_o\ : std_logic;
SIGNAL \nextpc[20]~output_o\ : std_logic;
SIGNAL \nextpc[21]~output_o\ : std_logic;
SIGNAL \nextpc[22]~output_o\ : std_logic;
SIGNAL \nextpc[23]~output_o\ : std_logic;
SIGNAL \nextpc[24]~output_o\ : std_logic;
SIGNAL \nextpc[25]~output_o\ : std_logic;
SIGNAL \nextpc[26]~output_o\ : std_logic;
SIGNAL \nextpc[27]~output_o\ : std_logic;
SIGNAL \nextpc[28]~output_o\ : std_logic;
SIGNAL \nextpc[29]~output_o\ : std_logic;
SIGNAL \nextpc[30]~output_o\ : std_logic;
SIGNAL \nextpc[31]~output_o\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \clk~inputclkctrl_outclk\ : std_logic;
SIGNAL \branch[0]~input_o\ : std_logic;
SIGNAL \PCsel~input_o\ : std_logic;
SIGNAL \rst~input_o\ : std_logic;
SIGNAL \PC_register|Q~0_combout\ : std_logic;
SIGNAL \Stop_en~input_o\ : std_logic;
SIGNAL \PC_register|Q[0]~1_combout\ : std_logic;
SIGNAL \branch[1]~input_o\ : std_logic;
SIGNAL \PC_register|Q~2_combout\ : std_logic;
SIGNAL \branch[2]~input_o\ : std_logic;
SIGNAL \PC_4|S[2]~0_combout\ : std_logic;
SIGNAL \PC_register|Q~3_combout\ : std_logic;
SIGNAL \branch[3]~input_o\ : std_logic;
SIGNAL \PC_4|S[2]~1\ : std_logic;
SIGNAL \PC_4|S[3]~2_combout\ : std_logic;
SIGNAL \PC_register|Q~4_combout\ : std_logic;
SIGNAL \PC_4|S[3]~3\ : std_logic;
SIGNAL \PC_4|S[4]~4_combout\ : std_logic;
SIGNAL \branch[4]~input_o\ : std_logic;
SIGNAL \PC_register|Q~5_combout\ : std_logic;
SIGNAL \branch[5]~input_o\ : std_logic;
SIGNAL \PC_4|S[4]~5\ : std_logic;
SIGNAL \PC_4|S[5]~6_combout\ : std_logic;
SIGNAL \PC_register|Q~6_combout\ : std_logic;
SIGNAL \branch[6]~input_o\ : std_logic;
SIGNAL \PC_4|S[5]~7\ : std_logic;
SIGNAL \PC_4|S[6]~8_combout\ : std_logic;
SIGNAL \PC_register|Q~7_combout\ : std_logic;
SIGNAL \branch[7]~input_o\ : std_logic;
SIGNAL \PC_4|S[6]~9\ : std_logic;
SIGNAL \PC_4|S[7]~10_combout\ : std_logic;
SIGNAL \PC_register|Q~8_combout\ : std_logic;
SIGNAL \branch[8]~input_o\ : std_logic;
SIGNAL \PC_4|S[7]~11\ : std_logic;
SIGNAL \PC_4|S[8]~12_combout\ : std_logic;
SIGNAL \PC_register|Q~9_combout\ : std_logic;
SIGNAL \branch[9]~input_o\ : std_logic;
SIGNAL \PC_4|S[8]~13\ : std_logic;
SIGNAL \PC_4|S[9]~14_combout\ : std_logic;
SIGNAL \PC_register|Q~10_combout\ : std_logic;
SIGNAL \branch[10]~input_o\ : std_logic;
SIGNAL \PC_4|S[9]~15\ : std_logic;
SIGNAL \PC_4|S[10]~16_combout\ : std_logic;
SIGNAL \PC_register|Q~11_combout\ : std_logic;
SIGNAL \branch[11]~input_o\ : std_logic;
SIGNAL \PC_4|S[10]~17\ : std_logic;
SIGNAL \PC_4|S[11]~18_combout\ : std_logic;
SIGNAL \PC_register|Q~12_combout\ : std_logic;
SIGNAL \branch[12]~input_o\ : std_logic;
SIGNAL \PC_4|S[11]~19\ : std_logic;
SIGNAL \PC_4|S[12]~20_combout\ : std_logic;
SIGNAL \PC_register|Q~13_combout\ : std_logic;
SIGNAL \branch[13]~input_o\ : std_logic;
SIGNAL \PC_4|S[12]~21\ : std_logic;
SIGNAL \PC_4|S[13]~22_combout\ : std_logic;
SIGNAL \PC_register|Q~14_combout\ : std_logic;
SIGNAL \PC_4|S[13]~23\ : std_logic;
SIGNAL \PC_4|S[14]~24_combout\ : std_logic;
SIGNAL \branch[14]~input_o\ : std_logic;
SIGNAL \PC_register|Q~15_combout\ : std_logic;
SIGNAL \branch[15]~input_o\ : std_logic;
SIGNAL \PC_4|S[14]~25\ : std_logic;
SIGNAL \PC_4|S[15]~26_combout\ : std_logic;
SIGNAL \PC_register|Q~16_combout\ : std_logic;
SIGNAL \branch[16]~input_o\ : std_logic;
SIGNAL \PC_4|S[15]~27\ : std_logic;
SIGNAL \PC_4|S[16]~28_combout\ : std_logic;
SIGNAL \PC_register|Q~17_combout\ : std_logic;
SIGNAL \PC_4|S[16]~29\ : std_logic;
SIGNAL \PC_4|S[17]~30_combout\ : std_logic;
SIGNAL \branch[17]~input_o\ : std_logic;
SIGNAL \PC_register|Q~18_combout\ : std_logic;
SIGNAL \branch[18]~input_o\ : std_logic;
SIGNAL \PC_4|S[17]~31\ : std_logic;
SIGNAL \PC_4|S[18]~32_combout\ : std_logic;
SIGNAL \PC_register|Q~19_combout\ : std_logic;
SIGNAL \PC_4|S[18]~33\ : std_logic;
SIGNAL \PC_4|S[19]~34_combout\ : std_logic;
SIGNAL \branch[19]~input_o\ : std_logic;
SIGNAL \PC_register|Q~20_combout\ : std_logic;
SIGNAL \PC_4|S[19]~35\ : std_logic;
SIGNAL \PC_4|S[20]~36_combout\ : std_logic;
SIGNAL \branch[20]~input_o\ : std_logic;
SIGNAL \PC_register|Q~21_combout\ : std_logic;
SIGNAL \branch[21]~input_o\ : std_logic;
SIGNAL \PC_4|S[20]~37\ : std_logic;
SIGNAL \PC_4|S[21]~38_combout\ : std_logic;
SIGNAL \PC_register|Q~22_combout\ : std_logic;
SIGNAL \branch[22]~input_o\ : std_logic;
SIGNAL \PC_4|S[21]~39\ : std_logic;
SIGNAL \PC_4|S[22]~40_combout\ : std_logic;
SIGNAL \PC_register|Q~23_combout\ : std_logic;
SIGNAL \branch[23]~input_o\ : std_logic;
SIGNAL \PC_4|S[22]~41\ : std_logic;
SIGNAL \PC_4|S[23]~42_combout\ : std_logic;
SIGNAL \PC_register|Q~24_combout\ : std_logic;
SIGNAL \PC_4|S[23]~43\ : std_logic;
SIGNAL \PC_4|S[24]~44_combout\ : std_logic;
SIGNAL \branch[24]~input_o\ : std_logic;
SIGNAL \PC_register|Q~25_combout\ : std_logic;
SIGNAL \branch[25]~input_o\ : std_logic;
SIGNAL \PC_4|S[24]~45\ : std_logic;
SIGNAL \PC_4|S[25]~46_combout\ : std_logic;
SIGNAL \PC_register|Q~26_combout\ : std_logic;
SIGNAL \branch[26]~input_o\ : std_logic;
SIGNAL \PC_4|S[25]~47\ : std_logic;
SIGNAL \PC_4|S[26]~48_combout\ : std_logic;
SIGNAL \PC_register|Q~27_combout\ : std_logic;
SIGNAL \PC_4|S[26]~49\ : std_logic;
SIGNAL \PC_4|S[27]~50_combout\ : std_logic;
SIGNAL \branch[27]~input_o\ : std_logic;
SIGNAL \PC_register|Q~28_combout\ : std_logic;
SIGNAL \branch[28]~input_o\ : std_logic;
SIGNAL \PC_4|S[27]~51\ : std_logic;
SIGNAL \PC_4|S[28]~52_combout\ : std_logic;
SIGNAL \PC_register|Q~29_combout\ : std_logic;
SIGNAL \branch[29]~input_o\ : std_logic;
SIGNAL \PC_4|S[28]~53\ : std_logic;
SIGNAL \PC_4|S[29]~54_combout\ : std_logic;
SIGNAL \PC_register|Q~30_combout\ : std_logic;
SIGNAL \branch[30]~input_o\ : std_logic;
SIGNAL \PC_4|S[29]~55\ : std_logic;
SIGNAL \PC_4|S[30]~56_combout\ : std_logic;
SIGNAL \PC_register|Q~31_combout\ : std_logic;
SIGNAL \branch[31]~input_o\ : std_logic;
SIGNAL \PC_4|S[30]~57\ : std_logic;
SIGNAL \PC_4|S[31]~58_combout\ : std_logic;
SIGNAL \PC_register|Q~32_combout\ : std_logic;
SIGNAL \PCSel|sel_pc[0]~0_combout\ : std_logic;
SIGNAL \PCSel|sel_pc[1]~1_combout\ : std_logic;
SIGNAL \PC_4|Add0~0_combout\ : std_logic;
SIGNAL \PC_4|Add0~1_combout\ : std_logic;
SIGNAL \PC_4|Add0~2_combout\ : std_logic;
SIGNAL \PC_4|Add0~3_combout\ : std_logic;
SIGNAL \PC_4|Add0~4_combout\ : std_logic;
SIGNAL \PC_4|Add0~5_combout\ : std_logic;
SIGNAL \PC_4|Add0~6_combout\ : std_logic;
SIGNAL \PC_4|Add0~7_combout\ : std_logic;
SIGNAL \PC_4|Add0~8_combout\ : std_logic;
SIGNAL \PC_4|Add0~9_combout\ : std_logic;
SIGNAL \PC_4|Add0~10_combout\ : std_logic;
SIGNAL \PC_4|Add0~11_combout\ : std_logic;
SIGNAL \PC_4|Add0~12_combout\ : std_logic;
SIGNAL \PC_4|Add0~13_combout\ : std_logic;
SIGNAL \PC_4|Add0~14_combout\ : std_logic;
SIGNAL \PC_4|Add0~15_combout\ : std_logic;
SIGNAL \PC_4|Add0~16_combout\ : std_logic;
SIGNAL \PC_4|Add0~17_combout\ : std_logic;
SIGNAL \PC_4|Add0~18_combout\ : std_logic;
SIGNAL \PC_4|Add0~19_combout\ : std_logic;
SIGNAL \PC_4|Add0~20_combout\ : std_logic;
SIGNAL \PC_4|Add0~21_combout\ : std_logic;
SIGNAL \PC_4|Add0~22_combout\ : std_logic;
SIGNAL \PC_4|Add0~23_combout\ : std_logic;
SIGNAL \PC_4|Add0~24_combout\ : std_logic;
SIGNAL \PC_4|Add0~25_combout\ : std_logic;
SIGNAL \PC_4|Add0~26_combout\ : std_logic;
SIGNAL \PC_4|Add0~27_combout\ : std_logic;
SIGNAL \PC_4|Add0~28_combout\ : std_logic;
SIGNAL \PC_4|Add0~29_combout\ : std_logic;
SIGNAL \PC_register|Q\ : std_logic_vector(31 DOWNTO 0);

BEGIN

ww_rst <= rst;
ww_clk <= clk;
ww_Stop_en <= Stop_en;
ww_PCsel <= PCsel;
ww_branch <= branch;
cur_pc <= ww_cur_pc;
nextpc <= ww_nextpc;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\clk~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clk~input_o\);

-- Location: IOOBUF_X14_Y41_N2
\cur_pc[0]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \PC_register|Q\(0),
	devoe => ww_devoe,
	o => \cur_pc[0]~output_o\);

-- Location: IOOBUF_X52_Y15_N2
\cur_pc[1]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \PC_register|Q\(1),
	devoe => ww_devoe,
	o => \cur_pc[1]~output_o\);

-- Location: IOOBUF_X52_Y15_N9
\cur_pc[2]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \PC_register|Q\(2),
	devoe => ww_devoe,
	o => \cur_pc[2]~output_o\);

-- Location: IOOBUF_X52_Y19_N9
\cur_pc[3]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \PC_register|Q\(3),
	devoe => ww_devoe,
	o => \cur_pc[3]~output_o\);

-- Location: IOOBUF_X41_Y0_N2
\cur_pc[4]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \PC_register|Q\(4),
	devoe => ww_devoe,
	o => \cur_pc[4]~output_o\);

-- Location: IOOBUF_X52_Y30_N9
\cur_pc[5]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \PC_register|Q\(5),
	devoe => ww_devoe,
	o => \cur_pc[5]~output_o\);

-- Location: IOOBUF_X52_Y13_N2
\cur_pc[6]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \PC_register|Q\(6),
	devoe => ww_devoe,
	o => \cur_pc[6]~output_o\);

-- Location: IOOBUF_X5_Y41_N9
\cur_pc[7]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \PC_register|Q\(7),
	devoe => ww_devoe,
	o => \cur_pc[7]~output_o\);

-- Location: IOOBUF_X18_Y41_N9
\cur_pc[8]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \PC_register|Q\(8),
	devoe => ww_devoe,
	o => \cur_pc[8]~output_o\);

-- Location: IOOBUF_X41_Y0_N23
\cur_pc[9]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \PC_register|Q\(9),
	devoe => ww_devoe,
	o => \cur_pc[9]~output_o\);

-- Location: IOOBUF_X38_Y41_N2
\cur_pc[10]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \PC_register|Q\(10),
	devoe => ww_devoe,
	o => \cur_pc[10]~output_o\);

-- Location: IOOBUF_X34_Y41_N2
\cur_pc[11]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \PC_register|Q\(11),
	devoe => ww_devoe,
	o => \cur_pc[11]~output_o\);

-- Location: IOOBUF_X52_Y30_N2
\cur_pc[12]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \PC_register|Q\(12),
	devoe => ww_devoe,
	o => \cur_pc[12]~output_o\);

-- Location: IOOBUF_X31_Y41_N23
\cur_pc[13]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \PC_register|Q\(13),
	devoe => ww_devoe,
	o => \cur_pc[13]~output_o\);

-- Location: IOOBUF_X31_Y41_N9
\cur_pc[14]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \PC_register|Q\(14),
	devoe => ww_devoe,
	o => \cur_pc[14]~output_o\);

-- Location: IOOBUF_X38_Y0_N2
\cur_pc[15]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \PC_register|Q\(15),
	devoe => ww_devoe,
	o => \cur_pc[15]~output_o\);

-- Location: IOOBUF_X52_Y23_N9
\cur_pc[16]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \PC_register|Q\(16),
	devoe => ww_devoe,
	o => \cur_pc[16]~output_o\);

-- Location: IOOBUF_X38_Y41_N9
\cur_pc[17]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \PC_register|Q\(17),
	devoe => ww_devoe,
	o => \cur_pc[17]~output_o\);

-- Location: IOOBUF_X41_Y41_N23
\cur_pc[18]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \PC_register|Q\(18),
	devoe => ww_devoe,
	o => \cur_pc[18]~output_o\);

-- Location: IOOBUF_X41_Y41_N16
\cur_pc[19]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \PC_register|Q\(19),
	devoe => ww_devoe,
	o => \cur_pc[19]~output_o\);

-- Location: IOOBUF_X52_Y28_N9
\cur_pc[20]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \PC_register|Q\(20),
	devoe => ww_devoe,
	o => \cur_pc[20]~output_o\);

-- Location: IOOBUF_X52_Y32_N16
\cur_pc[21]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \PC_register|Q\(21),
	devoe => ww_devoe,
	o => \cur_pc[21]~output_o\);

-- Location: IOOBUF_X52_Y32_N9
\cur_pc[22]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \PC_register|Q\(22),
	devoe => ww_devoe,
	o => \cur_pc[22]~output_o\);

-- Location: IOOBUF_X14_Y41_N9
\cur_pc[23]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \PC_register|Q\(23),
	devoe => ww_devoe,
	o => \cur_pc[23]~output_o\);

-- Location: IOOBUF_X36_Y0_N9
\cur_pc[24]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \PC_register|Q\(24),
	devoe => ww_devoe,
	o => \cur_pc[24]~output_o\);

-- Location: IOOBUF_X23_Y41_N2
\cur_pc[25]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \PC_register|Q\(25),
	devoe => ww_devoe,
	o => \cur_pc[25]~output_o\);

-- Location: IOOBUF_X36_Y41_N9
\cur_pc[26]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \PC_register|Q\(26),
	devoe => ww_devoe,
	o => \cur_pc[26]~output_o\);

-- Location: IOOBUF_X52_Y32_N2
\cur_pc[27]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \PC_register|Q\(27),
	devoe => ww_devoe,
	o => \cur_pc[27]~output_o\);

-- Location: IOOBUF_X52_Y32_N23
\cur_pc[28]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \PC_register|Q\(28),
	devoe => ww_devoe,
	o => \cur_pc[28]~output_o\);

-- Location: IOOBUF_X34_Y41_N9
\cur_pc[29]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \PC_register|Q\(29),
	devoe => ww_devoe,
	o => \cur_pc[29]~output_o\);

-- Location: IOOBUF_X23_Y41_N9
\cur_pc[30]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \PC_register|Q\(30),
	devoe => ww_devoe,
	o => \cur_pc[30]~output_o\);

-- Location: IOOBUF_X52_Y9_N2
\cur_pc[31]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \PC_register|Q\(31),
	devoe => ww_devoe,
	o => \cur_pc[31]~output_o\);

-- Location: IOOBUF_X46_Y41_N9
\nextpc[0]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \PCSel|sel_pc[0]~0_combout\,
	devoe => ww_devoe,
	o => \nextpc[0]~output_o\);

-- Location: IOOBUF_X7_Y41_N2
\nextpc[1]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \PCSel|sel_pc[1]~1_combout\,
	devoe => ww_devoe,
	o => \nextpc[1]~output_o\);

-- Location: IOOBUF_X16_Y41_N9
\nextpc[2]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \PC_4|Add0~0_combout\,
	devoe => ww_devoe,
	o => \nextpc[2]~output_o\);

-- Location: IOOBUF_X21_Y41_N2
\nextpc[3]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \PC_4|Add0~1_combout\,
	devoe => ww_devoe,
	o => \nextpc[3]~output_o\);

-- Location: IOOBUF_X12_Y41_N9
\nextpc[4]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \PC_4|Add0~2_combout\,
	devoe => ww_devoe,
	o => \nextpc[4]~output_o\);

-- Location: IOOBUF_X46_Y0_N23
\nextpc[5]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \PC_4|Add0~3_combout\,
	devoe => ww_devoe,
	o => \nextpc[5]~output_o\);

-- Location: IOOBUF_X12_Y41_N2
\nextpc[6]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \PC_4|Add0~4_combout\,
	devoe => ww_devoe,
	o => \nextpc[6]~output_o\);

-- Location: IOOBUF_X25_Y41_N2
\nextpc[7]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \PC_4|Add0~5_combout\,
	devoe => ww_devoe,
	o => \nextpc[7]~output_o\);

-- Location: IOOBUF_X52_Y25_N9
\nextpc[8]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \PC_4|Add0~6_combout\,
	devoe => ww_devoe,
	o => \nextpc[8]~output_o\);

-- Location: IOOBUF_X46_Y41_N16
\nextpc[9]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \PC_4|Add0~7_combout\,
	devoe => ww_devoe,
	o => \nextpc[9]~output_o\);

-- Location: IOOBUF_X52_Y12_N2
\nextpc[10]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \PC_4|Add0~8_combout\,
	devoe => ww_devoe,
	o => \nextpc[10]~output_o\);

-- Location: IOOBUF_X25_Y41_N9
\nextpc[11]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \PC_4|Add0~9_combout\,
	devoe => ww_devoe,
	o => \nextpc[11]~output_o\);

-- Location: IOOBUF_X46_Y41_N23
\nextpc[12]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \PC_4|Add0~10_combout\,
	devoe => ww_devoe,
	o => \nextpc[12]~output_o\);

-- Location: IOOBUF_X7_Y41_N9
\nextpc[13]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \PC_4|Add0~11_combout\,
	devoe => ww_devoe,
	o => \nextpc[13]~output_o\);

-- Location: IOOBUF_X18_Y41_N2
\nextpc[14]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \PC_4|Add0~12_combout\,
	devoe => ww_devoe,
	o => \nextpc[14]~output_o\);

-- Location: IOOBUF_X46_Y41_N2
\nextpc[15]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \PC_4|Add0~13_combout\,
	devoe => ww_devoe,
	o => \nextpc[15]~output_o\);

-- Location: IOOBUF_X52_Y27_N9
\nextpc[16]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \PC_4|Add0~14_combout\,
	devoe => ww_devoe,
	o => \nextpc[16]~output_o\);

-- Location: IOOBUF_X52_Y11_N2
\nextpc[17]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \PC_4|Add0~15_combout\,
	devoe => ww_devoe,
	o => \nextpc[17]~output_o\);

-- Location: IOOBUF_X52_Y9_N9
\nextpc[18]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \PC_4|Add0~16_combout\,
	devoe => ww_devoe,
	o => \nextpc[18]~output_o\);

-- Location: IOOBUF_X38_Y0_N9
\nextpc[19]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \PC_4|Add0~17_combout\,
	devoe => ww_devoe,
	o => \nextpc[19]~output_o\);

-- Location: IOOBUF_X52_Y25_N2
\nextpc[20]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \PC_4|Add0~18_combout\,
	devoe => ww_devoe,
	o => \nextpc[20]~output_o\);

-- Location: IOOBUF_X52_Y10_N2
\nextpc[21]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \PC_4|Add0~19_combout\,
	devoe => ww_devoe,
	o => \nextpc[21]~output_o\);

-- Location: IOOBUF_X41_Y41_N9
\nextpc[22]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \PC_4|Add0~20_combout\,
	devoe => ww_devoe,
	o => \nextpc[22]~output_o\);

-- Location: IOOBUF_X10_Y41_N9
\nextpc[23]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \PC_4|Add0~21_combout\,
	devoe => ww_devoe,
	o => \nextpc[23]~output_o\);

-- Location: IOOBUF_X52_Y16_N9
\nextpc[24]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \PC_4|Add0~22_combout\,
	devoe => ww_devoe,
	o => \nextpc[24]~output_o\);

-- Location: IOOBUF_X52_Y11_N9
\nextpc[25]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \PC_4|Add0~23_combout\,
	devoe => ww_devoe,
	o => \nextpc[25]~output_o\);

-- Location: IOOBUF_X31_Y41_N2
\nextpc[26]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \PC_4|Add0~24_combout\,
	devoe => ww_devoe,
	o => \nextpc[26]~output_o\);

-- Location: IOOBUF_X31_Y0_N2
\nextpc[27]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \PC_4|Add0~25_combout\,
	devoe => ww_devoe,
	o => \nextpc[27]~output_o\);

-- Location: IOOBUF_X52_Y18_N2
\nextpc[28]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \PC_4|Add0~26_combout\,
	devoe => ww_devoe,
	o => \nextpc[28]~output_o\);

-- Location: IOOBUF_X52_Y28_N2
\nextpc[29]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \PC_4|Add0~27_combout\,
	devoe => ww_devoe,
	o => \nextpc[29]~output_o\);

-- Location: IOOBUF_X29_Y41_N9
\nextpc[30]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \PC_4|Add0~28_combout\,
	devoe => ww_devoe,
	o => \nextpc[30]~output_o\);

-- Location: IOOBUF_X31_Y0_N9
\nextpc[31]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \PC_4|Add0~29_combout\,
	devoe => ww_devoe,
	o => \nextpc[31]~output_o\);

-- Location: IOIBUF_X27_Y0_N15
\clk~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clk,
	o => \clk~input_o\);

-- Location: CLKCTRL_G17
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

-- Location: IOIBUF_X27_Y0_N8
\branch[0]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_branch(0),
	o => \branch[0]~input_o\);

-- Location: IOIBUF_X27_Y0_N1
\PCsel~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_PCsel,
	o => \PCsel~input_o\);

-- Location: IOIBUF_X41_Y41_N1
\rst~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_rst,
	o => \rst~input_o\);

-- Location: LCCOMB_X39_Y33_N12
\PC_register|Q~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \PC_register|Q~0_combout\ = (!\rst~input_o\ & ((\PCsel~input_o\ & (\branch[0]~input_o\)) # (!\PCsel~input_o\ & ((\PC_register|Q\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \branch[0]~input_o\,
	datab => \PCsel~input_o\,
	datac => \PC_register|Q\(0),
	datad => \rst~input_o\,
	combout => \PC_register|Q~0_combout\);

-- Location: IOIBUF_X31_Y0_N22
\Stop_en~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Stop_en,
	o => \Stop_en~input_o\);

-- Location: LCCOMB_X37_Y32_N0
\PC_register|Q[0]~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \PC_register|Q[0]~1_combout\ = (\rst~input_o\) # (!\Stop_en~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \rst~input_o\,
	datad => \Stop_en~input_o\,
	combout => \PC_register|Q[0]~1_combout\);

-- Location: FF_X39_Y33_N13
\PC_register|Q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \PC_register|Q~0_combout\,
	ena => \PC_register|Q[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC_register|Q\(0));

-- Location: IOIBUF_X7_Y41_N22
\branch[1]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_branch(1),
	o => \branch[1]~input_o\);

-- Location: LCCOMB_X37_Y33_N28
\PC_register|Q~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \PC_register|Q~2_combout\ = (!\rst~input_o\ & ((\PCsel~input_o\ & (\branch[1]~input_o\)) # (!\PCsel~input_o\ & ((\PC_register|Q\(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \branch[1]~input_o\,
	datab => \PCsel~input_o\,
	datac => \PC_register|Q\(1),
	datad => \rst~input_o\,
	combout => \PC_register|Q~2_combout\);

-- Location: FF_X37_Y33_N29
\PC_register|Q[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \PC_register|Q~2_combout\,
	ena => \PC_register|Q[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC_register|Q\(1));

-- Location: IOIBUF_X29_Y41_N1
\branch[2]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_branch(2),
	o => \branch[2]~input_o\);

-- Location: LCCOMB_X38_Y33_N2
\PC_4|S[2]~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \PC_4|S[2]~0_combout\ = \PC_register|Q\(2) $ (VCC)
-- \PC_4|S[2]~1\ = CARRY(\PC_register|Q\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC_register|Q\(2),
	datad => VCC,
	combout => \PC_4|S[2]~0_combout\,
	cout => \PC_4|S[2]~1\);

-- Location: LCCOMB_X37_Y33_N6
\PC_register|Q~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \PC_register|Q~3_combout\ = (!\rst~input_o\ & ((\PCsel~input_o\ & (\branch[2]~input_o\)) # (!\PCsel~input_o\ & ((\PC_4|S[2]~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \branch[2]~input_o\,
	datab => \rst~input_o\,
	datac => \PCsel~input_o\,
	datad => \PC_4|S[2]~0_combout\,
	combout => \PC_register|Q~3_combout\);

-- Location: FF_X38_Y33_N7
\PC_register|Q[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \PC_register|Q~3_combout\,
	sload => VCC,
	ena => \PC_register|Q[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC_register|Q\(2));

-- Location: IOIBUF_X52_Y19_N1
\branch[3]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_branch(3),
	o => \branch[3]~input_o\);

-- Location: LCCOMB_X38_Y33_N4
\PC_4|S[3]~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \PC_4|S[3]~2_combout\ = (\PC_register|Q\(3) & (!\PC_4|S[2]~1\)) # (!\PC_register|Q\(3) & ((\PC_4|S[2]~1\) # (GND)))
-- \PC_4|S[3]~3\ = CARRY((!\PC_4|S[2]~1\) # (!\PC_register|Q\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \PC_register|Q\(3),
	datad => VCC,
	cin => \PC_4|S[2]~1\,
	combout => \PC_4|S[3]~2_combout\,
	cout => \PC_4|S[3]~3\);

-- Location: LCCOMB_X37_Y33_N16
\PC_register|Q~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \PC_register|Q~4_combout\ = (!\rst~input_o\ & ((\PCsel~input_o\ & (\branch[3]~input_o\)) # (!\PCsel~input_o\ & ((\PC_4|S[3]~2_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PCsel~input_o\,
	datab => \rst~input_o\,
	datac => \branch[3]~input_o\,
	datad => \PC_4|S[3]~2_combout\,
	combout => \PC_register|Q~4_combout\);

-- Location: FF_X38_Y33_N5
\PC_register|Q[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \PC_register|Q~4_combout\,
	sload => VCC,
	ena => \PC_register|Q[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC_register|Q\(3));

-- Location: LCCOMB_X38_Y33_N6
\PC_4|S[4]~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \PC_4|S[4]~4_combout\ = (\PC_register|Q\(4) & (\PC_4|S[3]~3\ $ (GND))) # (!\PC_register|Q\(4) & (!\PC_4|S[3]~3\ & VCC))
-- \PC_4|S[4]~5\ = CARRY((\PC_register|Q\(4) & !\PC_4|S[3]~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \PC_register|Q\(4),
	datad => VCC,
	cin => \PC_4|S[3]~3\,
	combout => \PC_4|S[4]~4_combout\,
	cout => \PC_4|S[4]~5\);

-- Location: IOIBUF_X21_Y41_N8
\branch[4]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_branch(4),
	o => \branch[4]~input_o\);

-- Location: LCCOMB_X37_Y33_N14
\PC_register|Q~5\ : cycloneiv_lcell_comb
-- Equation(s):
-- \PC_register|Q~5_combout\ = (!\rst~input_o\ & ((\PCsel~input_o\ & ((\branch[4]~input_o\))) # (!\PCsel~input_o\ & (\PC_4|S[4]~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC_4|S[4]~4_combout\,
	datab => \rst~input_o\,
	datac => \branch[4]~input_o\,
	datad => \PCsel~input_o\,
	combout => \PC_register|Q~5_combout\);

-- Location: FF_X38_Y33_N31
\PC_register|Q[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \PC_register|Q~5_combout\,
	sload => VCC,
	ena => \PC_register|Q[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC_register|Q\(4));

-- Location: IOIBUF_X50_Y41_N8
\branch[5]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_branch(5),
	o => \branch[5]~input_o\);

-- Location: LCCOMB_X38_Y33_N8
\PC_4|S[5]~6\ : cycloneiv_lcell_comb
-- Equation(s):
-- \PC_4|S[5]~6_combout\ = (\PC_register|Q\(5) & (!\PC_4|S[4]~5\)) # (!\PC_register|Q\(5) & ((\PC_4|S[4]~5\) # (GND)))
-- \PC_4|S[5]~7\ = CARRY((!\PC_4|S[4]~5\) # (!\PC_register|Q\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \PC_register|Q\(5),
	datad => VCC,
	cin => \PC_4|S[4]~5\,
	combout => \PC_4|S[5]~6_combout\,
	cout => \PC_4|S[5]~7\);

-- Location: LCCOMB_X39_Y33_N30
\PC_register|Q~6\ : cycloneiv_lcell_comb
-- Equation(s):
-- \PC_register|Q~6_combout\ = (!\rst~input_o\ & ((\PCsel~input_o\ & (\branch[5]~input_o\)) # (!\PCsel~input_o\ & ((\PC_4|S[5]~6_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \branch[5]~input_o\,
	datab => \rst~input_o\,
	datac => \PCsel~input_o\,
	datad => \PC_4|S[5]~6_combout\,
	combout => \PC_register|Q~6_combout\);

-- Location: FF_X38_Y33_N27
\PC_register|Q[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \PC_register|Q~6_combout\,
	sload => VCC,
	ena => \PC_register|Q[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC_register|Q\(5));

-- Location: IOIBUF_X52_Y10_N8
\branch[6]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_branch(6),
	o => \branch[6]~input_o\);

-- Location: LCCOMB_X38_Y33_N10
\PC_4|S[6]~8\ : cycloneiv_lcell_comb
-- Equation(s):
-- \PC_4|S[6]~8_combout\ = (\PC_register|Q\(6) & (\PC_4|S[5]~7\ $ (GND))) # (!\PC_register|Q\(6) & (!\PC_4|S[5]~7\ & VCC))
-- \PC_4|S[6]~9\ = CARRY((\PC_register|Q\(6) & !\PC_4|S[5]~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \PC_register|Q\(6),
	datad => VCC,
	cin => \PC_4|S[5]~7\,
	combout => \PC_4|S[6]~8_combout\,
	cout => \PC_4|S[6]~9\);

-- Location: LCCOMB_X37_Y33_N0
\PC_register|Q~7\ : cycloneiv_lcell_comb
-- Equation(s):
-- \PC_register|Q~7_combout\ = (!\rst~input_o\ & ((\PCsel~input_o\ & (\branch[6]~input_o\)) # (!\PCsel~input_o\ & ((\PC_4|S[6]~8_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \branch[6]~input_o\,
	datab => \PCsel~input_o\,
	datac => \PC_4|S[6]~8_combout\,
	datad => \rst~input_o\,
	combout => \PC_register|Q~7_combout\);

-- Location: FF_X38_Y33_N9
\PC_register|Q[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \PC_register|Q~7_combout\,
	sload => VCC,
	ena => \PC_register|Q[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC_register|Q\(6));

-- Location: IOIBUF_X52_Y31_N1
\branch[7]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_branch(7),
	o => \branch[7]~input_o\);

-- Location: LCCOMB_X38_Y33_N12
\PC_4|S[7]~10\ : cycloneiv_lcell_comb
-- Equation(s):
-- \PC_4|S[7]~10_combout\ = (\PC_register|Q\(7) & (!\PC_4|S[6]~9\)) # (!\PC_register|Q\(7) & ((\PC_4|S[6]~9\) # (GND)))
-- \PC_4|S[7]~11\ = CARRY((!\PC_4|S[6]~9\) # (!\PC_register|Q\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \PC_register|Q\(7),
	datad => VCC,
	cin => \PC_4|S[6]~9\,
	combout => \PC_4|S[7]~10_combout\,
	cout => \PC_4|S[7]~11\);

-- Location: LCCOMB_X37_Y33_N26
\PC_register|Q~8\ : cycloneiv_lcell_comb
-- Equation(s):
-- \PC_register|Q~8_combout\ = (!\rst~input_o\ & ((\PCsel~input_o\ & (\branch[7]~input_o\)) # (!\PCsel~input_o\ & ((\PC_4|S[7]~10_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \branch[7]~input_o\,
	datab => \PCsel~input_o\,
	datac => \PC_4|S[7]~10_combout\,
	datad => \rst~input_o\,
	combout => \PC_register|Q~8_combout\);

-- Location: FF_X38_Y33_N23
\PC_register|Q[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \PC_register|Q~8_combout\,
	sload => VCC,
	ena => \PC_register|Q[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC_register|Q\(7));

-- Location: IOIBUF_X52_Y13_N8
\branch[8]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_branch(8),
	o => \branch[8]~input_o\);

-- Location: LCCOMB_X38_Y33_N14
\PC_4|S[8]~12\ : cycloneiv_lcell_comb
-- Equation(s):
-- \PC_4|S[8]~12_combout\ = (\PC_register|Q\(8) & (\PC_4|S[7]~11\ $ (GND))) # (!\PC_register|Q\(8) & (!\PC_4|S[7]~11\ & VCC))
-- \PC_4|S[8]~13\ = CARRY((\PC_register|Q\(8) & !\PC_4|S[7]~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \PC_register|Q\(8),
	datad => VCC,
	cin => \PC_4|S[7]~11\,
	combout => \PC_4|S[8]~12_combout\,
	cout => \PC_4|S[8]~13\);

-- Location: LCCOMB_X39_Y33_N20
\PC_register|Q~9\ : cycloneiv_lcell_comb
-- Equation(s):
-- \PC_register|Q~9_combout\ = (!\rst~input_o\ & ((\PCsel~input_o\ & (\branch[8]~input_o\)) # (!\PCsel~input_o\ & ((\PC_4|S[8]~12_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rst~input_o\,
	datab => \branch[8]~input_o\,
	datac => \PCsel~input_o\,
	datad => \PC_4|S[8]~12_combout\,
	combout => \PC_register|Q~9_combout\);

-- Location: FF_X38_Y33_N15
\PC_register|Q[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \PC_register|Q~9_combout\,
	sload => VCC,
	ena => \PC_register|Q[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC_register|Q\(8));

-- Location: IOIBUF_X52_Y27_N1
\branch[9]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_branch(9),
	o => \branch[9]~input_o\);

-- Location: LCCOMB_X38_Y33_N16
\PC_4|S[9]~14\ : cycloneiv_lcell_comb
-- Equation(s):
-- \PC_4|S[9]~14_combout\ = (\PC_register|Q\(9) & (!\PC_4|S[8]~13\)) # (!\PC_register|Q\(9) & ((\PC_4|S[8]~13\) # (GND)))
-- \PC_4|S[9]~15\ = CARRY((!\PC_4|S[8]~13\) # (!\PC_register|Q\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \PC_register|Q\(9),
	datad => VCC,
	cin => \PC_4|S[8]~13\,
	combout => \PC_4|S[9]~14_combout\,
	cout => \PC_4|S[9]~15\);

-- Location: LCCOMB_X38_Y33_N0
\PC_register|Q~10\ : cycloneiv_lcell_comb
-- Equation(s):
-- \PC_register|Q~10_combout\ = (!\rst~input_o\ & ((\PCsel~input_o\ & (\branch[9]~input_o\)) # (!\PCsel~input_o\ & ((\PC_4|S[9]~14_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \branch[9]~input_o\,
	datab => \PCsel~input_o\,
	datac => \rst~input_o\,
	datad => \PC_4|S[9]~14_combout\,
	combout => \PC_register|Q~10_combout\);

-- Location: FF_X38_Y33_N1
\PC_register|Q[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \PC_register|Q~10_combout\,
	ena => \PC_register|Q[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC_register|Q\(9));

-- Location: IOIBUF_X52_Y31_N8
\branch[10]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_branch(10),
	o => \branch[10]~input_o\);

-- Location: LCCOMB_X38_Y33_N18
\PC_4|S[10]~16\ : cycloneiv_lcell_comb
-- Equation(s):
-- \PC_4|S[10]~16_combout\ = (\PC_register|Q\(10) & (\PC_4|S[9]~15\ $ (GND))) # (!\PC_register|Q\(10) & (!\PC_4|S[9]~15\ & VCC))
-- \PC_4|S[10]~17\ = CARRY((\PC_register|Q\(10) & !\PC_4|S[9]~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \PC_register|Q\(10),
	datad => VCC,
	cin => \PC_4|S[9]~15\,
	combout => \PC_4|S[10]~16_combout\,
	cout => \PC_4|S[10]~17\);

-- Location: LCCOMB_X39_Y33_N18
\PC_register|Q~11\ : cycloneiv_lcell_comb
-- Equation(s):
-- \PC_register|Q~11_combout\ = (!\rst~input_o\ & ((\PCsel~input_o\ & (\branch[10]~input_o\)) # (!\PCsel~input_o\ & ((\PC_4|S[10]~16_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rst~input_o\,
	datab => \branch[10]~input_o\,
	datac => \PCsel~input_o\,
	datad => \PC_4|S[10]~16_combout\,
	combout => \PC_register|Q~11_combout\);

-- Location: FF_X39_Y33_N19
\PC_register|Q[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \PC_register|Q~11_combout\,
	ena => \PC_register|Q[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC_register|Q\(10));

-- Location: IOIBUF_X36_Y0_N1
\branch[11]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_branch(11),
	o => \branch[11]~input_o\);

-- Location: LCCOMB_X38_Y33_N20
\PC_4|S[11]~18\ : cycloneiv_lcell_comb
-- Equation(s):
-- \PC_4|S[11]~18_combout\ = (\PC_register|Q\(11) & (!\PC_4|S[10]~17\)) # (!\PC_register|Q\(11) & ((\PC_4|S[10]~17\) # (GND)))
-- \PC_4|S[11]~19\ = CARRY((!\PC_4|S[10]~17\) # (!\PC_register|Q\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \PC_register|Q\(11),
	datad => VCC,
	cin => \PC_4|S[10]~17\,
	combout => \PC_4|S[11]~18_combout\,
	cout => \PC_4|S[11]~19\);

-- Location: LCCOMB_X37_Y33_N2
\PC_register|Q~12\ : cycloneiv_lcell_comb
-- Equation(s):
-- \PC_register|Q~12_combout\ = (!\rst~input_o\ & ((\PCsel~input_o\ & (\branch[11]~input_o\)) # (!\PCsel~input_o\ & ((\PC_4|S[11]~18_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \branch[11]~input_o\,
	datab => \PCsel~input_o\,
	datac => \PC_4|S[11]~18_combout\,
	datad => \rst~input_o\,
	combout => \PC_register|Q~12_combout\);

-- Location: FF_X37_Y33_N3
\PC_register|Q[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \PC_register|Q~12_combout\,
	ena => \PC_register|Q[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC_register|Q\(11));

-- Location: IOIBUF_X46_Y0_N15
\branch[12]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_branch(12),
	o => \branch[12]~input_o\);

-- Location: LCCOMB_X38_Y33_N22
\PC_4|S[12]~20\ : cycloneiv_lcell_comb
-- Equation(s):
-- \PC_4|S[12]~20_combout\ = (\PC_register|Q\(12) & (\PC_4|S[11]~19\ $ (GND))) # (!\PC_register|Q\(12) & (!\PC_4|S[11]~19\ & VCC))
-- \PC_4|S[12]~21\ = CARRY((\PC_register|Q\(12) & !\PC_4|S[11]~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \PC_register|Q\(12),
	datad => VCC,
	cin => \PC_4|S[11]~19\,
	combout => \PC_4|S[12]~20_combout\,
	cout => \PC_4|S[12]~21\);

-- Location: LCCOMB_X39_Y33_N0
\PC_register|Q~13\ : cycloneiv_lcell_comb
-- Equation(s):
-- \PC_register|Q~13_combout\ = (!\rst~input_o\ & ((\PCsel~input_o\ & (\branch[12]~input_o\)) # (!\PCsel~input_o\ & ((\PC_4|S[12]~20_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rst~input_o\,
	datab => \branch[12]~input_o\,
	datac => \PCsel~input_o\,
	datad => \PC_4|S[12]~20_combout\,
	combout => \PC_register|Q~13_combout\);

-- Location: FF_X39_Y33_N1
\PC_register|Q[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \PC_register|Q~13_combout\,
	ena => \PC_register|Q[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC_register|Q\(12));

-- Location: IOIBUF_X10_Y41_N1
\branch[13]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_branch(13),
	o => \branch[13]~input_o\);

-- Location: LCCOMB_X38_Y33_N24
\PC_4|S[13]~22\ : cycloneiv_lcell_comb
-- Equation(s):
-- \PC_4|S[13]~22_combout\ = (\PC_register|Q\(13) & (!\PC_4|S[12]~21\)) # (!\PC_register|Q\(13) & ((\PC_4|S[12]~21\) # (GND)))
-- \PC_4|S[13]~23\ = CARRY((!\PC_4|S[12]~21\) # (!\PC_register|Q\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \PC_register|Q\(13),
	datad => VCC,
	cin => \PC_4|S[12]~21\,
	combout => \PC_4|S[13]~22_combout\,
	cout => \PC_4|S[13]~23\);

-- Location: LCCOMB_X37_Y33_N4
\PC_register|Q~14\ : cycloneiv_lcell_comb
-- Equation(s):
-- \PC_register|Q~14_combout\ = (!\rst~input_o\ & ((\PCsel~input_o\ & (\branch[13]~input_o\)) # (!\PCsel~input_o\ & ((\PC_4|S[13]~22_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PCsel~input_o\,
	datab => \rst~input_o\,
	datac => \branch[13]~input_o\,
	datad => \PC_4|S[13]~22_combout\,
	combout => \PC_register|Q~14_combout\);

-- Location: FF_X37_Y33_N5
\PC_register|Q[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \PC_register|Q~14_combout\,
	ena => \PC_register|Q[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC_register|Q\(13));

-- Location: LCCOMB_X38_Y33_N26
\PC_4|S[14]~24\ : cycloneiv_lcell_comb
-- Equation(s):
-- \PC_4|S[14]~24_combout\ = (\PC_register|Q\(14) & (\PC_4|S[13]~23\ $ (GND))) # (!\PC_register|Q\(14) & (!\PC_4|S[13]~23\ & VCC))
-- \PC_4|S[14]~25\ = CARRY((\PC_register|Q\(14) & !\PC_4|S[13]~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \PC_register|Q\(14),
	datad => VCC,
	cin => \PC_4|S[13]~23\,
	combout => \PC_4|S[14]~24_combout\,
	cout => \PC_4|S[14]~25\);

-- Location: IOIBUF_X52_Y23_N1
\branch[14]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_branch(14),
	o => \branch[14]~input_o\);

-- Location: LCCOMB_X39_Y33_N22
\PC_register|Q~15\ : cycloneiv_lcell_comb
-- Equation(s):
-- \PC_register|Q~15_combout\ = (!\rst~input_o\ & ((\PCsel~input_o\ & ((\branch[14]~input_o\))) # (!\PCsel~input_o\ & (\PC_4|S[14]~24_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rst~input_o\,
	datab => \PCsel~input_o\,
	datac => \PC_4|S[14]~24_combout\,
	datad => \branch[14]~input_o\,
	combout => \PC_register|Q~15_combout\);

-- Location: FF_X39_Y33_N23
\PC_register|Q[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \PC_register|Q~15_combout\,
	ena => \PC_register|Q[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC_register|Q\(14));

-- Location: IOIBUF_X48_Y41_N1
\branch[15]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_branch(15),
	o => \branch[15]~input_o\);

-- Location: LCCOMB_X38_Y33_N28
\PC_4|S[15]~26\ : cycloneiv_lcell_comb
-- Equation(s):
-- \PC_4|S[15]~26_combout\ = (\PC_register|Q\(15) & (!\PC_4|S[14]~25\)) # (!\PC_register|Q\(15) & ((\PC_4|S[14]~25\) # (GND)))
-- \PC_4|S[15]~27\ = CARRY((!\PC_4|S[14]~25\) # (!\PC_register|Q\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \PC_register|Q\(15),
	datad => VCC,
	cin => \PC_4|S[14]~25\,
	combout => \PC_4|S[15]~26_combout\,
	cout => \PC_4|S[15]~27\);

-- Location: LCCOMB_X39_Y33_N8
\PC_register|Q~16\ : cycloneiv_lcell_comb
-- Equation(s):
-- \PC_register|Q~16_combout\ = (!\rst~input_o\ & ((\PCsel~input_o\ & (\branch[15]~input_o\)) # (!\PCsel~input_o\ & ((\PC_4|S[15]~26_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rst~input_o\,
	datab => \branch[15]~input_o\,
	datac => \PCsel~input_o\,
	datad => \PC_4|S[15]~26_combout\,
	combout => \PC_register|Q~16_combout\);

-- Location: FF_X39_Y33_N9
\PC_register|Q[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \PC_register|Q~16_combout\,
	ena => \PC_register|Q[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC_register|Q\(15));

-- Location: IOIBUF_X48_Y41_N8
\branch[16]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_branch(16),
	o => \branch[16]~input_o\);

-- Location: LCCOMB_X38_Y33_N30
\PC_4|S[16]~28\ : cycloneiv_lcell_comb
-- Equation(s):
-- \PC_4|S[16]~28_combout\ = (\PC_register|Q\(16) & (\PC_4|S[15]~27\ $ (GND))) # (!\PC_register|Q\(16) & (!\PC_4|S[15]~27\ & VCC))
-- \PC_4|S[16]~29\ = CARRY((\PC_register|Q\(16) & !\PC_4|S[15]~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \PC_register|Q\(16),
	datad => VCC,
	cin => \PC_4|S[15]~27\,
	combout => \PC_4|S[16]~28_combout\,
	cout => \PC_4|S[16]~29\);

-- Location: LCCOMB_X39_Y33_N10
\PC_register|Q~17\ : cycloneiv_lcell_comb
-- Equation(s):
-- \PC_register|Q~17_combout\ = (!\rst~input_o\ & ((\PCsel~input_o\ & (\branch[16]~input_o\)) # (!\PCsel~input_o\ & ((\PC_4|S[16]~28_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PCsel~input_o\,
	datab => \rst~input_o\,
	datac => \branch[16]~input_o\,
	datad => \PC_4|S[16]~28_combout\,
	combout => \PC_register|Q~17_combout\);

-- Location: FF_X38_Y33_N25
\PC_register|Q[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \PC_register|Q~17_combout\,
	sload => VCC,
	ena => \PC_register|Q[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC_register|Q\(16));

-- Location: LCCOMB_X38_Y32_N0
\PC_4|S[17]~30\ : cycloneiv_lcell_comb
-- Equation(s):
-- \PC_4|S[17]~30_combout\ = (\PC_register|Q\(17) & (!\PC_4|S[16]~29\)) # (!\PC_register|Q\(17) & ((\PC_4|S[16]~29\) # (GND)))
-- \PC_4|S[17]~31\ = CARRY((!\PC_4|S[16]~29\) # (!\PC_register|Q\(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \PC_register|Q\(17),
	datad => VCC,
	cin => \PC_4|S[16]~29\,
	combout => \PC_4|S[17]~30_combout\,
	cout => \PC_4|S[17]~31\);

-- Location: IOIBUF_X50_Y41_N1
\branch[17]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_branch(17),
	o => \branch[17]~input_o\);

-- Location: LCCOMB_X39_Y32_N4
\PC_register|Q~18\ : cycloneiv_lcell_comb
-- Equation(s):
-- \PC_register|Q~18_combout\ = (!\rst~input_o\ & ((\PCsel~input_o\ & ((\branch[17]~input_o\))) # (!\PCsel~input_o\ & (\PC_4|S[17]~30_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PCsel~input_o\,
	datab => \rst~input_o\,
	datac => \PC_4|S[17]~30_combout\,
	datad => \branch[17]~input_o\,
	combout => \PC_register|Q~18_combout\);

-- Location: FF_X39_Y32_N5
\PC_register|Q[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \PC_register|Q~18_combout\,
	ena => \PC_register|Q[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC_register|Q\(17));

-- Location: IOIBUF_X52_Y12_N8
\branch[18]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_branch(18),
	o => \branch[18]~input_o\);

-- Location: LCCOMB_X38_Y32_N2
\PC_4|S[18]~32\ : cycloneiv_lcell_comb
-- Equation(s):
-- \PC_4|S[18]~32_combout\ = (\PC_register|Q\(18) & (\PC_4|S[17]~31\ $ (GND))) # (!\PC_register|Q\(18) & (!\PC_4|S[17]~31\ & VCC))
-- \PC_4|S[18]~33\ = CARRY((\PC_register|Q\(18) & !\PC_4|S[17]~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \PC_register|Q\(18),
	datad => VCC,
	cin => \PC_4|S[17]~31\,
	combout => \PC_4|S[18]~32_combout\,
	cout => \PC_4|S[18]~33\);

-- Location: LCCOMB_X39_Y32_N30
\PC_register|Q~19\ : cycloneiv_lcell_comb
-- Equation(s):
-- \PC_register|Q~19_combout\ = (!\rst~input_o\ & ((\PCsel~input_o\ & (\branch[18]~input_o\)) # (!\PCsel~input_o\ & ((\PC_4|S[18]~32_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PCsel~input_o\,
	datab => \rst~input_o\,
	datac => \branch[18]~input_o\,
	datad => \PC_4|S[18]~32_combout\,
	combout => \PC_register|Q~19_combout\);

-- Location: FF_X39_Y32_N31
\PC_register|Q[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \PC_register|Q~19_combout\,
	ena => \PC_register|Q[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC_register|Q\(18));

-- Location: LCCOMB_X38_Y32_N4
\PC_4|S[19]~34\ : cycloneiv_lcell_comb
-- Equation(s):
-- \PC_4|S[19]~34_combout\ = (\PC_register|Q\(19) & (!\PC_4|S[18]~33\)) # (!\PC_register|Q\(19) & ((\PC_4|S[18]~33\) # (GND)))
-- \PC_4|S[19]~35\ = CARRY((!\PC_4|S[18]~33\) # (!\PC_register|Q\(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \PC_register|Q\(19),
	datad => VCC,
	cin => \PC_4|S[18]~33\,
	combout => \PC_4|S[19]~34_combout\,
	cout => \PC_4|S[19]~35\);

-- Location: IOIBUF_X41_Y0_N15
\branch[19]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_branch(19),
	o => \branch[19]~input_o\);

-- Location: LCCOMB_X39_Y32_N24
\PC_register|Q~20\ : cycloneiv_lcell_comb
-- Equation(s):
-- \PC_register|Q~20_combout\ = (!\rst~input_o\ & ((\PCsel~input_o\ & ((\branch[19]~input_o\))) # (!\PCsel~input_o\ & (\PC_4|S[19]~34_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PCsel~input_o\,
	datab => \rst~input_o\,
	datac => \PC_4|S[19]~34_combout\,
	datad => \branch[19]~input_o\,
	combout => \PC_register|Q~20_combout\);

-- Location: FF_X39_Y32_N25
\PC_register|Q[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \PC_register|Q~20_combout\,
	ena => \PC_register|Q[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC_register|Q\(19));

-- Location: LCCOMB_X38_Y32_N6
\PC_4|S[20]~36\ : cycloneiv_lcell_comb
-- Equation(s):
-- \PC_4|S[20]~36_combout\ = (\PC_register|Q\(20) & (\PC_4|S[19]~35\ $ (GND))) # (!\PC_register|Q\(20) & (!\PC_4|S[19]~35\ & VCC))
-- \PC_4|S[20]~37\ = CARRY((\PC_register|Q\(20) & !\PC_4|S[19]~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \PC_register|Q\(20),
	datad => VCC,
	cin => \PC_4|S[19]~35\,
	combout => \PC_4|S[20]~36_combout\,
	cout => \PC_4|S[20]~37\);

-- Location: IOIBUF_X43_Y0_N8
\branch[20]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_branch(20),
	o => \branch[20]~input_o\);

-- Location: LCCOMB_X39_Y32_N2
\PC_register|Q~21\ : cycloneiv_lcell_comb
-- Equation(s):
-- \PC_register|Q~21_combout\ = (!\rst~input_o\ & ((\PCsel~input_o\ & ((\branch[20]~input_o\))) # (!\PCsel~input_o\ & (\PC_4|S[20]~36_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PCsel~input_o\,
	datab => \rst~input_o\,
	datac => \PC_4|S[20]~36_combout\,
	datad => \branch[20]~input_o\,
	combout => \PC_register|Q~21_combout\);

-- Location: FF_X39_Y32_N3
\PC_register|Q[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \PC_register|Q~21_combout\,
	ena => \PC_register|Q[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC_register|Q\(20));

-- Location: IOIBUF_X16_Y41_N1
\branch[21]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_branch(21),
	o => \branch[21]~input_o\);

-- Location: LCCOMB_X38_Y32_N8
\PC_4|S[21]~38\ : cycloneiv_lcell_comb
-- Equation(s):
-- \PC_4|S[21]~38_combout\ = (\PC_register|Q\(21) & (!\PC_4|S[20]~37\)) # (!\PC_register|Q\(21) & ((\PC_4|S[20]~37\) # (GND)))
-- \PC_4|S[21]~39\ = CARRY((!\PC_4|S[20]~37\) # (!\PC_register|Q\(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \PC_register|Q\(21),
	datad => VCC,
	cin => \PC_4|S[20]~37\,
	combout => \PC_4|S[21]~38_combout\,
	cout => \PC_4|S[21]~39\);

-- Location: LCCOMB_X39_Y32_N0
\PC_register|Q~22\ : cycloneiv_lcell_comb
-- Equation(s):
-- \PC_register|Q~22_combout\ = (!\rst~input_o\ & ((\PCsel~input_o\ & (\branch[21]~input_o\)) # (!\PCsel~input_o\ & ((\PC_4|S[21]~38_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PCsel~input_o\,
	datab => \branch[21]~input_o\,
	datac => \rst~input_o\,
	datad => \PC_4|S[21]~38_combout\,
	combout => \PC_register|Q~22_combout\);

-- Location: FF_X39_Y32_N1
\PC_register|Q[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \PC_register|Q~22_combout\,
	ena => \PC_register|Q[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC_register|Q\(21));

-- Location: IOIBUF_X43_Y41_N1
\branch[22]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_branch(22),
	o => \branch[22]~input_o\);

-- Location: LCCOMB_X38_Y32_N10
\PC_4|S[22]~40\ : cycloneiv_lcell_comb
-- Equation(s):
-- \PC_4|S[22]~40_combout\ = (\PC_register|Q\(22) & (\PC_4|S[21]~39\ $ (GND))) # (!\PC_register|Q\(22) & (!\PC_4|S[21]~39\ & VCC))
-- \PC_4|S[22]~41\ = CARRY((\PC_register|Q\(22) & !\PC_4|S[21]~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \PC_register|Q\(22),
	datad => VCC,
	cin => \PC_4|S[21]~39\,
	combout => \PC_4|S[22]~40_combout\,
	cout => \PC_4|S[22]~41\);

-- Location: LCCOMB_X39_Y32_N14
\PC_register|Q~23\ : cycloneiv_lcell_comb
-- Equation(s):
-- \PC_register|Q~23_combout\ = (!\rst~input_o\ & ((\PCsel~input_o\ & (\branch[22]~input_o\)) # (!\PCsel~input_o\ & ((\PC_4|S[22]~40_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PCsel~input_o\,
	datab => \branch[22]~input_o\,
	datac => \rst~input_o\,
	datad => \PC_4|S[22]~40_combout\,
	combout => \PC_register|Q~23_combout\);

-- Location: FF_X39_Y32_N15
\PC_register|Q[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \PC_register|Q~23_combout\,
	ena => \PC_register|Q[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC_register|Q\(22));

-- Location: IOIBUF_X41_Y0_N8
\branch[23]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_branch(23),
	o => \branch[23]~input_o\);

-- Location: LCCOMB_X38_Y32_N12
\PC_4|S[23]~42\ : cycloneiv_lcell_comb
-- Equation(s):
-- \PC_4|S[23]~42_combout\ = (\PC_register|Q\(23) & (!\PC_4|S[22]~41\)) # (!\PC_register|Q\(23) & ((\PC_4|S[22]~41\) # (GND)))
-- \PC_4|S[23]~43\ = CARRY((!\PC_4|S[22]~41\) # (!\PC_register|Q\(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \PC_register|Q\(23),
	datad => VCC,
	cin => \PC_4|S[22]~41\,
	combout => \PC_4|S[23]~42_combout\,
	cout => \PC_4|S[23]~43\);

-- Location: LCCOMB_X38_Y32_N30
\PC_register|Q~24\ : cycloneiv_lcell_comb
-- Equation(s):
-- \PC_register|Q~24_combout\ = (!\rst~input_o\ & ((\PCsel~input_o\ & (\branch[23]~input_o\)) # (!\PCsel~input_o\ & ((\PC_4|S[23]~42_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \branch[23]~input_o\,
	datab => \PCsel~input_o\,
	datac => \rst~input_o\,
	datad => \PC_4|S[23]~42_combout\,
	combout => \PC_register|Q~24_combout\);

-- Location: FF_X38_Y32_N31
\PC_register|Q[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \PC_register|Q~24_combout\,
	ena => \PC_register|Q[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC_register|Q\(23));

-- Location: LCCOMB_X38_Y32_N14
\PC_4|S[24]~44\ : cycloneiv_lcell_comb
-- Equation(s):
-- \PC_4|S[24]~44_combout\ = (\PC_register|Q\(24) & (\PC_4|S[23]~43\ $ (GND))) # (!\PC_register|Q\(24) & (!\PC_4|S[23]~43\ & VCC))
-- \PC_4|S[24]~45\ = CARRY((\PC_register|Q\(24) & !\PC_4|S[23]~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \PC_register|Q\(24),
	datad => VCC,
	cin => \PC_4|S[23]~43\,
	combout => \PC_4|S[24]~44_combout\,
	cout => \PC_4|S[24]~45\);

-- Location: IOIBUF_X34_Y0_N8
\branch[24]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_branch(24),
	o => \branch[24]~input_o\);

-- Location: LCCOMB_X37_Y32_N12
\PC_register|Q~25\ : cycloneiv_lcell_comb
-- Equation(s):
-- \PC_register|Q~25_combout\ = (!\rst~input_o\ & ((\PCsel~input_o\ & ((\branch[24]~input_o\))) # (!\PCsel~input_o\ & (\PC_4|S[24]~44_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PCsel~input_o\,
	datab => \rst~input_o\,
	datac => \PC_4|S[24]~44_combout\,
	datad => \branch[24]~input_o\,
	combout => \PC_register|Q~25_combout\);

-- Location: FF_X37_Y32_N13
\PC_register|Q[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \PC_register|Q~25_combout\,
	ena => \PC_register|Q[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC_register|Q\(24));

-- Location: IOIBUF_X31_Y41_N15
\branch[25]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_branch(25),
	o => \branch[25]~input_o\);

-- Location: LCCOMB_X38_Y32_N16
\PC_4|S[25]~46\ : cycloneiv_lcell_comb
-- Equation(s):
-- \PC_4|S[25]~46_combout\ = (\PC_register|Q\(25) & (!\PC_4|S[24]~45\)) # (!\PC_register|Q\(25) & ((\PC_4|S[24]~45\) # (GND)))
-- \PC_4|S[25]~47\ = CARRY((!\PC_4|S[24]~45\) # (!\PC_register|Q\(25)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \PC_register|Q\(25),
	datad => VCC,
	cin => \PC_4|S[24]~45\,
	combout => \PC_4|S[25]~46_combout\,
	cout => \PC_4|S[25]~47\);

-- Location: LCCOMB_X37_Y32_N6
\PC_register|Q~26\ : cycloneiv_lcell_comb
-- Equation(s):
-- \PC_register|Q~26_combout\ = (!\rst~input_o\ & ((\PCsel~input_o\ & (\branch[25]~input_o\)) # (!\PCsel~input_o\ & ((\PC_4|S[25]~46_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PCsel~input_o\,
	datab => \branch[25]~input_o\,
	datac => \rst~input_o\,
	datad => \PC_4|S[25]~46_combout\,
	combout => \PC_register|Q~26_combout\);

-- Location: FF_X37_Y32_N7
\PC_register|Q[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \PC_register|Q~26_combout\,
	ena => \PC_register|Q[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC_register|Q\(25));

-- Location: IOIBUF_X52_Y16_N1
\branch[26]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_branch(26),
	o => \branch[26]~input_o\);

-- Location: LCCOMB_X38_Y32_N18
\PC_4|S[26]~48\ : cycloneiv_lcell_comb
-- Equation(s):
-- \PC_4|S[26]~48_combout\ = (\PC_register|Q\(26) & (\PC_4|S[25]~47\ $ (GND))) # (!\PC_register|Q\(26) & (!\PC_4|S[25]~47\ & VCC))
-- \PC_4|S[26]~49\ = CARRY((\PC_register|Q\(26) & !\PC_4|S[25]~47\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \PC_register|Q\(26),
	datad => VCC,
	cin => \PC_4|S[25]~47\,
	combout => \PC_4|S[26]~48_combout\,
	cout => \PC_4|S[26]~49\);

-- Location: LCCOMB_X37_Y32_N8
\PC_register|Q~27\ : cycloneiv_lcell_comb
-- Equation(s):
-- \PC_register|Q~27_combout\ = (!\rst~input_o\ & ((\PCsel~input_o\ & (\branch[26]~input_o\)) # (!\PCsel~input_o\ & ((\PC_4|S[26]~48_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PCsel~input_o\,
	datab => \branch[26]~input_o\,
	datac => \rst~input_o\,
	datad => \PC_4|S[26]~48_combout\,
	combout => \PC_register|Q~27_combout\);

-- Location: FF_X37_Y32_N9
\PC_register|Q[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \PC_register|Q~27_combout\,
	ena => \PC_register|Q[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC_register|Q\(26));

-- Location: LCCOMB_X38_Y32_N20
\PC_4|S[27]~50\ : cycloneiv_lcell_comb
-- Equation(s):
-- \PC_4|S[27]~50_combout\ = (\PC_register|Q\(27) & (!\PC_4|S[26]~49\)) # (!\PC_register|Q\(27) & ((\PC_4|S[26]~49\) # (GND)))
-- \PC_4|S[27]~51\ = CARRY((!\PC_4|S[26]~49\) # (!\PC_register|Q\(27)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \PC_register|Q\(27),
	datad => VCC,
	cin => \PC_4|S[26]~49\,
	combout => \PC_4|S[27]~50_combout\,
	cout => \PC_4|S[27]~51\);

-- Location: IOIBUF_X34_Y0_N1
\branch[27]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_branch(27),
	o => \branch[27]~input_o\);

-- Location: LCCOMB_X37_Y32_N10
\PC_register|Q~28\ : cycloneiv_lcell_comb
-- Equation(s):
-- \PC_register|Q~28_combout\ = (!\rst~input_o\ & ((\PCsel~input_o\ & ((\branch[27]~input_o\))) # (!\PCsel~input_o\ & (\PC_4|S[27]~50_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PCsel~input_o\,
	datab => \rst~input_o\,
	datac => \PC_4|S[27]~50_combout\,
	datad => \branch[27]~input_o\,
	combout => \PC_register|Q~28_combout\);

-- Location: FF_X37_Y32_N11
\PC_register|Q[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \PC_register|Q~28_combout\,
	ena => \PC_register|Q[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC_register|Q\(27));

-- Location: IOIBUF_X52_Y18_N8
\branch[28]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_branch(28),
	o => \branch[28]~input_o\);

-- Location: LCCOMB_X38_Y32_N22
\PC_4|S[28]~52\ : cycloneiv_lcell_comb
-- Equation(s):
-- \PC_4|S[28]~52_combout\ = (\PC_register|Q\(28) & (\PC_4|S[27]~51\ $ (GND))) # (!\PC_register|Q\(28) & (!\PC_4|S[27]~51\ & VCC))
-- \PC_4|S[28]~53\ = CARRY((\PC_register|Q\(28) & !\PC_4|S[27]~51\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \PC_register|Q\(28),
	datad => VCC,
	cin => \PC_4|S[27]~51\,
	combout => \PC_4|S[28]~52_combout\,
	cout => \PC_4|S[28]~53\);

-- Location: LCCOMB_X37_Y32_N4
\PC_register|Q~29\ : cycloneiv_lcell_comb
-- Equation(s):
-- \PC_register|Q~29_combout\ = (!\rst~input_o\ & ((\PCsel~input_o\ & (\branch[28]~input_o\)) # (!\PCsel~input_o\ & ((\PC_4|S[28]~52_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \branch[28]~input_o\,
	datab => \rst~input_o\,
	datac => \PCsel~input_o\,
	datad => \PC_4|S[28]~52_combout\,
	combout => \PC_register|Q~29_combout\);

-- Location: FF_X37_Y32_N5
\PC_register|Q[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \PC_register|Q~29_combout\,
	ena => \PC_register|Q[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC_register|Q\(28));

-- Location: IOIBUF_X43_Y41_N8
\branch[29]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_branch(29),
	o => \branch[29]~input_o\);

-- Location: LCCOMB_X38_Y32_N24
\PC_4|S[29]~54\ : cycloneiv_lcell_comb
-- Equation(s):
-- \PC_4|S[29]~54_combout\ = (\PC_register|Q\(29) & (!\PC_4|S[28]~53\)) # (!\PC_register|Q\(29) & ((\PC_4|S[28]~53\) # (GND)))
-- \PC_4|S[29]~55\ = CARRY((!\PC_4|S[28]~53\) # (!\PC_register|Q\(29)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \PC_register|Q\(29),
	datad => VCC,
	cin => \PC_4|S[28]~53\,
	combout => \PC_4|S[29]~54_combout\,
	cout => \PC_4|S[29]~55\);

-- Location: LCCOMB_X39_Y32_N20
\PC_register|Q~30\ : cycloneiv_lcell_comb
-- Equation(s):
-- \PC_register|Q~30_combout\ = (!\rst~input_o\ & ((\PCsel~input_o\ & (\branch[29]~input_o\)) # (!\PCsel~input_o\ & ((\PC_4|S[29]~54_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \branch[29]~input_o\,
	datab => \rst~input_o\,
	datac => \PCsel~input_o\,
	datad => \PC_4|S[29]~54_combout\,
	combout => \PC_register|Q~30_combout\);

-- Location: FF_X39_Y32_N21
\PC_register|Q[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \PC_register|Q~30_combout\,
	ena => \PC_register|Q[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC_register|Q\(29));

-- Location: IOIBUF_X36_Y41_N1
\branch[30]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_branch(30),
	o => \branch[30]~input_o\);

-- Location: LCCOMB_X38_Y32_N26
\PC_4|S[30]~56\ : cycloneiv_lcell_comb
-- Equation(s):
-- \PC_4|S[30]~56_combout\ = (\PC_register|Q\(30) & (\PC_4|S[29]~55\ $ (GND))) # (!\PC_register|Q\(30) & (!\PC_4|S[29]~55\ & VCC))
-- \PC_4|S[30]~57\ = CARRY((\PC_register|Q\(30) & !\PC_4|S[29]~55\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \PC_register|Q\(30),
	datad => VCC,
	cin => \PC_4|S[29]~55\,
	combout => \PC_4|S[30]~56_combout\,
	cout => \PC_4|S[30]~57\);

-- Location: LCCOMB_X37_Y32_N14
\PC_register|Q~31\ : cycloneiv_lcell_comb
-- Equation(s):
-- \PC_register|Q~31_combout\ = (!\rst~input_o\ & ((\PCsel~input_o\ & (\branch[30]~input_o\)) # (!\PCsel~input_o\ & ((\PC_4|S[30]~56_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PCsel~input_o\,
	datab => \branch[30]~input_o\,
	datac => \rst~input_o\,
	datad => \PC_4|S[30]~56_combout\,
	combout => \PC_register|Q~31_combout\);

-- Location: FF_X37_Y32_N15
\PC_register|Q[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \PC_register|Q~31_combout\,
	ena => \PC_register|Q[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC_register|Q\(30));

-- Location: IOIBUF_X31_Y0_N15
\branch[31]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_branch(31),
	o => \branch[31]~input_o\);

-- Location: LCCOMB_X38_Y32_N28
\PC_4|S[31]~58\ : cycloneiv_lcell_comb
-- Equation(s):
-- \PC_4|S[31]~58_combout\ = \PC_4|S[30]~57\ $ (\PC_register|Q\(31))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \PC_register|Q\(31),
	cin => \PC_4|S[30]~57\,
	combout => \PC_4|S[31]~58_combout\);

-- Location: LCCOMB_X37_Y32_N20
\PC_register|Q~32\ : cycloneiv_lcell_comb
-- Equation(s):
-- \PC_register|Q~32_combout\ = (!\rst~input_o\ & ((\PCsel~input_o\ & (\branch[31]~input_o\)) # (!\PCsel~input_o\ & ((\PC_4|S[31]~58_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PCsel~input_o\,
	datab => \rst~input_o\,
	datac => \branch[31]~input_o\,
	datad => \PC_4|S[31]~58_combout\,
	combout => \PC_register|Q~32_combout\);

-- Location: FF_X37_Y32_N21
\PC_register|Q[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \PC_register|Q~32_combout\,
	ena => \PC_register|Q[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC_register|Q\(31));

-- Location: LCCOMB_X39_Y33_N2
\PCSel|sel_pc[0]~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \PCSel|sel_pc[0]~0_combout\ = (\PCsel~input_o\ & (\branch[0]~input_o\)) # (!\PCsel~input_o\ & ((\PC_register|Q\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PCsel~input_o\,
	datac => \branch[0]~input_o\,
	datad => \PC_register|Q\(0),
	combout => \PCSel|sel_pc[0]~0_combout\);

-- Location: LCCOMB_X37_Y33_N30
\PCSel|sel_pc[1]~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \PCSel|sel_pc[1]~1_combout\ = (\PCsel~input_o\ & (\branch[1]~input_o\)) # (!\PCsel~input_o\ & ((\PC_register|Q\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \branch[1]~input_o\,
	datab => \PC_register|Q\(1),
	datad => \PCsel~input_o\,
	combout => \PCSel|sel_pc[1]~1_combout\);

-- Location: LCCOMB_X37_Y33_N8
\PC_4|Add0~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \PC_4|Add0~0_combout\ = (\PCsel~input_o\ & (\branch[2]~input_o\)) # (!\PCsel~input_o\ & ((\PC_4|S[2]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \PCsel~input_o\,
	datac => \branch[2]~input_o\,
	datad => \PC_4|S[2]~0_combout\,
	combout => \PC_4|Add0~0_combout\);

-- Location: LCCOMB_X37_Y33_N10
\PC_4|Add0~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \PC_4|Add0~1_combout\ = (\PCsel~input_o\ & ((\branch[3]~input_o\))) # (!\PCsel~input_o\ & (\PC_4|S[3]~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC_4|S[3]~2_combout\,
	datac => \branch[3]~input_o\,
	datad => \PCsel~input_o\,
	combout => \PC_4|Add0~1_combout\);

-- Location: LCCOMB_X37_Y33_N20
\PC_4|Add0~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \PC_4|Add0~2_combout\ = (\PCsel~input_o\ & (\branch[4]~input_o\)) # (!\PCsel~input_o\ & ((\PC_4|S[4]~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \PCsel~input_o\,
	datac => \branch[4]~input_o\,
	datad => \PC_4|S[4]~4_combout\,
	combout => \PC_4|Add0~2_combout\);

-- Location: LCCOMB_X39_Y33_N4
\PC_4|Add0~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \PC_4|Add0~3_combout\ = (\PCsel~input_o\ & ((\branch[5]~input_o\))) # (!\PCsel~input_o\ & (\PC_4|S[5]~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC_4|S[5]~6_combout\,
	datac => \PCsel~input_o\,
	datad => \branch[5]~input_o\,
	combout => \PC_4|Add0~3_combout\);

-- Location: LCCOMB_X37_Y33_N22
\PC_4|Add0~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \PC_4|Add0~4_combout\ = (\PCsel~input_o\ & ((\branch[6]~input_o\))) # (!\PCsel~input_o\ & (\PC_4|S[6]~8_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \PCsel~input_o\,
	datac => \PC_4|S[6]~8_combout\,
	datad => \branch[6]~input_o\,
	combout => \PC_4|Add0~4_combout\);

-- Location: LCCOMB_X37_Y32_N22
\PC_4|Add0~5\ : cycloneiv_lcell_comb
-- Equation(s):
-- \PC_4|Add0~5_combout\ = (\PCsel~input_o\ & (\branch[7]~input_o\)) # (!\PCsel~input_o\ & ((\PC_4|S[7]~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \branch[7]~input_o\,
	datac => \PCsel~input_o\,
	datad => \PC_4|S[7]~10_combout\,
	combout => \PC_4|Add0~5_combout\);

-- Location: LCCOMB_X39_Y33_N6
\PC_4|Add0~6\ : cycloneiv_lcell_comb
-- Equation(s):
-- \PC_4|Add0~6_combout\ = (\PCsel~input_o\ & ((\branch[8]~input_o\))) # (!\PCsel~input_o\ & (\PC_4|S[8]~12_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC_4|S[8]~12_combout\,
	datac => \PCsel~input_o\,
	datad => \branch[8]~input_o\,
	combout => \PC_4|Add0~6_combout\);

-- Location: LCCOMB_X39_Y33_N28
\PC_4|Add0~7\ : cycloneiv_lcell_comb
-- Equation(s):
-- \PC_4|Add0~7_combout\ = (\PCsel~input_o\ & ((\branch[9]~input_o\))) # (!\PCsel~input_o\ & (\PC_4|S[9]~14_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PCsel~input_o\,
	datac => \PC_4|S[9]~14_combout\,
	datad => \branch[9]~input_o\,
	combout => \PC_4|Add0~7_combout\);

-- Location: LCCOMB_X39_Y32_N22
\PC_4|Add0~8\ : cycloneiv_lcell_comb
-- Equation(s):
-- \PC_4|Add0~8_combout\ = (\PCsel~input_o\ & ((\branch[10]~input_o\))) # (!\PCsel~input_o\ & (\PC_4|S[10]~16_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC_4|S[10]~16_combout\,
	datac => \PCsel~input_o\,
	datad => \branch[10]~input_o\,
	combout => \PC_4|Add0~8_combout\);

-- Location: LCCOMB_X37_Y33_N12
\PC_4|Add0~9\ : cycloneiv_lcell_comb
-- Equation(s):
-- \PC_4|Add0~9_combout\ = (\PCsel~input_o\ & ((\branch[11]~input_o\))) # (!\PCsel~input_o\ & (\PC_4|S[11]~18_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \PCsel~input_o\,
	datac => \PC_4|S[11]~18_combout\,
	datad => \branch[11]~input_o\,
	combout => \PC_4|Add0~9_combout\);

-- Location: LCCOMB_X39_Y33_N14
\PC_4|Add0~10\ : cycloneiv_lcell_comb
-- Equation(s):
-- \PC_4|Add0~10_combout\ = (\PCsel~input_o\ & (\branch[12]~input_o\)) # (!\PCsel~input_o\ & ((\PC_4|S[12]~20_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \branch[12]~input_o\,
	datac => \PCsel~input_o\,
	datad => \PC_4|S[12]~20_combout\,
	combout => \PC_4|Add0~10_combout\);

-- Location: LCCOMB_X37_Y33_N18
\PC_4|Add0~11\ : cycloneiv_lcell_comb
-- Equation(s):
-- \PC_4|Add0~11_combout\ = (\PCsel~input_o\ & (\branch[13]~input_o\)) # (!\PCsel~input_o\ & ((\PC_4|S[13]~22_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \PCsel~input_o\,
	datac => \branch[13]~input_o\,
	datad => \PC_4|S[13]~22_combout\,
	combout => \PC_4|Add0~11_combout\);

-- Location: LCCOMB_X39_Y33_N16
\PC_4|Add0~12\ : cycloneiv_lcell_comb
-- Equation(s):
-- \PC_4|Add0~12_combout\ = (\PCsel~input_o\ & ((\branch[14]~input_o\))) # (!\PCsel~input_o\ & (\PC_4|S[14]~24_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PCsel~input_o\,
	datac => \PC_4|S[14]~24_combout\,
	datad => \branch[14]~input_o\,
	combout => \PC_4|Add0~12_combout\);

-- Location: LCCOMB_X39_Y33_N26
\PC_4|Add0~13\ : cycloneiv_lcell_comb
-- Equation(s):
-- \PC_4|Add0~13_combout\ = (\PCsel~input_o\ & (\branch[15]~input_o\)) # (!\PCsel~input_o\ & ((\PC_4|S[15]~26_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PCsel~input_o\,
	datac => \branch[15]~input_o\,
	datad => \PC_4|S[15]~26_combout\,
	combout => \PC_4|Add0~13_combout\);

-- Location: LCCOMB_X39_Y32_N12
\PC_4|Add0~14\ : cycloneiv_lcell_comb
-- Equation(s):
-- \PC_4|Add0~14_combout\ = (\PCsel~input_o\ & ((\branch[16]~input_o\))) # (!\PCsel~input_o\ & (\PC_4|S[16]~28_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PCsel~input_o\,
	datab => \PC_4|S[16]~28_combout\,
	datac => \branch[16]~input_o\,
	combout => \PC_4|Add0~14_combout\);

-- Location: LCCOMB_X39_Y32_N10
\PC_4|Add0~15\ : cycloneiv_lcell_comb
-- Equation(s):
-- \PC_4|Add0~15_combout\ = (\PCsel~input_o\ & ((\branch[17]~input_o\))) # (!\PCsel~input_o\ & (\PC_4|S[17]~30_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PCsel~input_o\,
	datac => \PC_4|S[17]~30_combout\,
	datad => \branch[17]~input_o\,
	combout => \PC_4|Add0~15_combout\);

-- Location: LCCOMB_X39_Y32_N28
\PC_4|Add0~16\ : cycloneiv_lcell_comb
-- Equation(s):
-- \PC_4|Add0~16_combout\ = (\PCsel~input_o\ & (\branch[18]~input_o\)) # (!\PCsel~input_o\ & ((\PC_4|S[18]~32_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PCsel~input_o\,
	datac => \branch[18]~input_o\,
	datad => \PC_4|S[18]~32_combout\,
	combout => \PC_4|Add0~16_combout\);

-- Location: LCCOMB_X39_Y32_N26
\PC_4|Add0~17\ : cycloneiv_lcell_comb
-- Equation(s):
-- \PC_4|Add0~17_combout\ = (\PCsel~input_o\ & ((\branch[19]~input_o\))) # (!\PCsel~input_o\ & (\PC_4|S[19]~34_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \PC_4|S[19]~34_combout\,
	datac => \PCsel~input_o\,
	datad => \branch[19]~input_o\,
	combout => \PC_4|Add0~17_combout\);

-- Location: LCCOMB_X39_Y32_N8
\PC_4|Add0~18\ : cycloneiv_lcell_comb
-- Equation(s):
-- \PC_4|Add0~18_combout\ = (\PCsel~input_o\ & ((\branch[20]~input_o\))) # (!\PCsel~input_o\ & (\PC_4|S[20]~36_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \PC_4|S[20]~36_combout\,
	datac => \PCsel~input_o\,
	datad => \branch[20]~input_o\,
	combout => \PC_4|Add0~18_combout\);

-- Location: LCCOMB_X39_Y32_N18
\PC_4|Add0~19\ : cycloneiv_lcell_comb
-- Equation(s):
-- \PC_4|Add0~19_combout\ = (\PCsel~input_o\ & ((\branch[21]~input_o\))) # (!\PCsel~input_o\ & (\PC_4|S[21]~38_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC_4|S[21]~38_combout\,
	datac => \PCsel~input_o\,
	datad => \branch[21]~input_o\,
	combout => \PC_4|Add0~19_combout\);

-- Location: LCCOMB_X39_Y32_N16
\PC_4|Add0~20\ : cycloneiv_lcell_comb
-- Equation(s):
-- \PC_4|Add0~20_combout\ = (\PCsel~input_o\ & ((\branch[22]~input_o\))) # (!\PCsel~input_o\ & (\PC_4|S[22]~40_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC_4|S[22]~40_combout\,
	datac => \PCsel~input_o\,
	datad => \branch[22]~input_o\,
	combout => \PC_4|Add0~20_combout\);

-- Location: LCCOMB_X39_Y33_N24
\PC_4|Add0~21\ : cycloneiv_lcell_comb
-- Equation(s):
-- \PC_4|Add0~21_combout\ = (\PCsel~input_o\ & ((\branch[23]~input_o\))) # (!\PCsel~input_o\ & (\PC_4|S[23]~42_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PCsel~input_o\,
	datac => \PC_4|S[23]~42_combout\,
	datad => \branch[23]~input_o\,
	combout => \PC_4|Add0~21_combout\);

-- Location: LCCOMB_X37_Y32_N16
\PC_4|Add0~22\ : cycloneiv_lcell_comb
-- Equation(s):
-- \PC_4|Add0~22_combout\ = (\PCsel~input_o\ & ((\branch[24]~input_o\))) # (!\PCsel~input_o\ & (\PC_4|S[24]~44_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PCsel~input_o\,
	datac => \PC_4|S[24]~44_combout\,
	datad => \branch[24]~input_o\,
	combout => \PC_4|Add0~22_combout\);

-- Location: LCCOMB_X37_Y32_N30
\PC_4|Add0~23\ : cycloneiv_lcell_comb
-- Equation(s):
-- \PC_4|Add0~23_combout\ = (\PCsel~input_o\ & ((\branch[25]~input_o\))) # (!\PCsel~input_o\ & (\PC_4|S[25]~46_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \PC_4|S[25]~46_combout\,
	datac => \PCsel~input_o\,
	datad => \branch[25]~input_o\,
	combout => \PC_4|Add0~23_combout\);

-- Location: LCCOMB_X37_Y32_N24
\PC_4|Add0~24\ : cycloneiv_lcell_comb
-- Equation(s):
-- \PC_4|Add0~24_combout\ = (\PCsel~input_o\ & ((\branch[26]~input_o\))) # (!\PCsel~input_o\ & (\PC_4|S[26]~48_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \PC_4|S[26]~48_combout\,
	datac => \PCsel~input_o\,
	datad => \branch[26]~input_o\,
	combout => \PC_4|Add0~24_combout\);

-- Location: LCCOMB_X37_Y32_N26
\PC_4|Add0~25\ : cycloneiv_lcell_comb
-- Equation(s):
-- \PC_4|Add0~25_combout\ = (\PCsel~input_o\ & ((\branch[27]~input_o\))) # (!\PCsel~input_o\ & (\PC_4|S[27]~50_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PCsel~input_o\,
	datac => \PC_4|S[27]~50_combout\,
	datad => \branch[27]~input_o\,
	combout => \PC_4|Add0~25_combout\);

-- Location: LCCOMB_X37_Y32_N28
\PC_4|Add0~26\ : cycloneiv_lcell_comb
-- Equation(s):
-- \PC_4|Add0~26_combout\ = (\PCsel~input_o\ & ((\branch[28]~input_o\))) # (!\PCsel~input_o\ & (\PC_4|S[28]~52_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \PC_4|S[28]~52_combout\,
	datac => \PCsel~input_o\,
	datad => \branch[28]~input_o\,
	combout => \PC_4|Add0~26_combout\);

-- Location: LCCOMB_X39_Y32_N6
\PC_4|Add0~27\ : cycloneiv_lcell_comb
-- Equation(s):
-- \PC_4|Add0~27_combout\ = (\PCsel~input_o\ & ((\branch[29]~input_o\))) # (!\PCsel~input_o\ & (\PC_4|S[29]~54_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \PC_4|S[29]~54_combout\,
	datac => \PCsel~input_o\,
	datad => \branch[29]~input_o\,
	combout => \PC_4|Add0~27_combout\);

-- Location: LCCOMB_X37_Y33_N24
\PC_4|Add0~28\ : cycloneiv_lcell_comb
-- Equation(s):
-- \PC_4|Add0~28_combout\ = (\PCsel~input_o\ & (\branch[30]~input_o\)) # (!\PCsel~input_o\ & ((\PC_4|S[30]~56_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \PCsel~input_o\,
	datac => \branch[30]~input_o\,
	datad => \PC_4|S[30]~56_combout\,
	combout => \PC_4|Add0~28_combout\);

-- Location: LCCOMB_X37_Y32_N18
\PC_4|Add0~29\ : cycloneiv_lcell_comb
-- Equation(s):
-- \PC_4|Add0~29_combout\ = (\PCsel~input_o\ & (\branch[31]~input_o\)) # (!\PCsel~input_o\ & ((\PC_4|S[31]~58_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \branch[31]~input_o\,
	datab => \PC_4|S[31]~58_combout\,
	datac => \PCsel~input_o\,
	combout => \PC_4|Add0~29_combout\);

ww_cur_pc(0) <= \cur_pc[0]~output_o\;

ww_cur_pc(1) <= \cur_pc[1]~output_o\;

ww_cur_pc(2) <= \cur_pc[2]~output_o\;

ww_cur_pc(3) <= \cur_pc[3]~output_o\;

ww_cur_pc(4) <= \cur_pc[4]~output_o\;

ww_cur_pc(5) <= \cur_pc[5]~output_o\;

ww_cur_pc(6) <= \cur_pc[6]~output_o\;

ww_cur_pc(7) <= \cur_pc[7]~output_o\;

ww_cur_pc(8) <= \cur_pc[8]~output_o\;

ww_cur_pc(9) <= \cur_pc[9]~output_o\;

ww_cur_pc(10) <= \cur_pc[10]~output_o\;

ww_cur_pc(11) <= \cur_pc[11]~output_o\;

ww_cur_pc(12) <= \cur_pc[12]~output_o\;

ww_cur_pc(13) <= \cur_pc[13]~output_o\;

ww_cur_pc(14) <= \cur_pc[14]~output_o\;

ww_cur_pc(15) <= \cur_pc[15]~output_o\;

ww_cur_pc(16) <= \cur_pc[16]~output_o\;

ww_cur_pc(17) <= \cur_pc[17]~output_o\;

ww_cur_pc(18) <= \cur_pc[18]~output_o\;

ww_cur_pc(19) <= \cur_pc[19]~output_o\;

ww_cur_pc(20) <= \cur_pc[20]~output_o\;

ww_cur_pc(21) <= \cur_pc[21]~output_o\;

ww_cur_pc(22) <= \cur_pc[22]~output_o\;

ww_cur_pc(23) <= \cur_pc[23]~output_o\;

ww_cur_pc(24) <= \cur_pc[24]~output_o\;

ww_cur_pc(25) <= \cur_pc[25]~output_o\;

ww_cur_pc(26) <= \cur_pc[26]~output_o\;

ww_cur_pc(27) <= \cur_pc[27]~output_o\;

ww_cur_pc(28) <= \cur_pc[28]~output_o\;

ww_cur_pc(29) <= \cur_pc[29]~output_o\;

ww_cur_pc(30) <= \cur_pc[30]~output_o\;

ww_cur_pc(31) <= \cur_pc[31]~output_o\;

ww_nextpc(0) <= \nextpc[0]~output_o\;

ww_nextpc(1) <= \nextpc[1]~output_o\;

ww_nextpc(2) <= \nextpc[2]~output_o\;

ww_nextpc(3) <= \nextpc[3]~output_o\;

ww_nextpc(4) <= \nextpc[4]~output_o\;

ww_nextpc(5) <= \nextpc[5]~output_o\;

ww_nextpc(6) <= \nextpc[6]~output_o\;

ww_nextpc(7) <= \nextpc[7]~output_o\;

ww_nextpc(8) <= \nextpc[8]~output_o\;

ww_nextpc(9) <= \nextpc[9]~output_o\;

ww_nextpc(10) <= \nextpc[10]~output_o\;

ww_nextpc(11) <= \nextpc[11]~output_o\;

ww_nextpc(12) <= \nextpc[12]~output_o\;

ww_nextpc(13) <= \nextpc[13]~output_o\;

ww_nextpc(14) <= \nextpc[14]~output_o\;

ww_nextpc(15) <= \nextpc[15]~output_o\;

ww_nextpc(16) <= \nextpc[16]~output_o\;

ww_nextpc(17) <= \nextpc[17]~output_o\;

ww_nextpc(18) <= \nextpc[18]~output_o\;

ww_nextpc(19) <= \nextpc[19]~output_o\;

ww_nextpc(20) <= \nextpc[20]~output_o\;

ww_nextpc(21) <= \nextpc[21]~output_o\;

ww_nextpc(22) <= \nextpc[22]~output_o\;

ww_nextpc(23) <= \nextpc[23]~output_o\;

ww_nextpc(24) <= \nextpc[24]~output_o\;

ww_nextpc(25) <= \nextpc[25]~output_o\;

ww_nextpc(26) <= \nextpc[26]~output_o\;

ww_nextpc(27) <= \nextpc[27]~output_o\;

ww_nextpc(28) <= \nextpc[28]~output_o\;

ww_nextpc(29) <= \nextpc[29]~output_o\;

ww_nextpc(30) <= \nextpc[30]~output_o\;

ww_nextpc(31) <= \nextpc[31]~output_o\;
END structure;


