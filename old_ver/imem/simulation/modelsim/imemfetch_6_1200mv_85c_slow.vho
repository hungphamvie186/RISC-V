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

-- DATE "05/30/2024 18:11:52"

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

ENTITY 	imemfetch IS
    PORT (
	addr : IN std_logic_vector(31 DOWNTO 0);
	opcode : OUT std_logic_vector(6 DOWNTO 0);
	rd : OUT std_logic_vector(4 DOWNTO 0);
	funct3 : OUT std_logic_vector(2 DOWNTO 0);
	rs1 : OUT std_logic_vector(4 DOWNTO 0);
	rs2 : OUT std_logic_vector(4 DOWNTO 0);
	funct7 : OUT std_logic_vector(6 DOWNTO 0);
	imm : OUT std_logic_vector(11 DOWNTO 0)
	);
END imemfetch;

-- Design Ports Information
-- addr[0]	=>  Location: PIN_V17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- addr[1]	=>  Location: PIN_D10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- addr[10]	=>  Location: PIN_C12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- addr[11]	=>  Location: PIN_U15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- addr[12]	=>  Location: PIN_E16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- addr[13]	=>  Location: PIN_N17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- addr[14]	=>  Location: PIN_B16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- addr[15]	=>  Location: PIN_R12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- addr[16]	=>  Location: PIN_D11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- addr[17]	=>  Location: PIN_E12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- addr[18]	=>  Location: PIN_A10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- addr[19]	=>  Location: PIN_B18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- addr[20]	=>  Location: PIN_U6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- addr[21]	=>  Location: PIN_D13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- addr[22]	=>  Location: PIN_U18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- addr[23]	=>  Location: PIN_R11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- addr[24]	=>  Location: PIN_P18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- addr[25]	=>  Location: PIN_C11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- addr[26]	=>  Location: PIN_B15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- addr[27]	=>  Location: PIN_L15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- addr[28]	=>  Location: PIN_N5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- addr[29]	=>  Location: PIN_A15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- addr[30]	=>  Location: PIN_N6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- addr[31]	=>  Location: PIN_F16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- opcode[0]	=>  Location: PIN_C9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- opcode[1]	=>  Location: PIN_D9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- opcode[2]	=>  Location: PIN_C6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- opcode[3]	=>  Location: PIN_C14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- opcode[4]	=>  Location: PIN_R7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- opcode[5]	=>  Location: PIN_C8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- opcode[6]	=>  Location: PIN_M7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rd[0]	=>  Location: PIN_T6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rd[1]	=>  Location: PIN_K16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rd[2]	=>  Location: PIN_A9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rd[3]	=>  Location: PIN_N16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rd[4]	=>  Location: PIN_U10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- funct3[0]	=>  Location: PIN_F17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- funct3[1]	=>  Location: PIN_D6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- funct3[2]	=>  Location: PIN_C10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rs1[0]	=>  Location: PIN_C7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rs1[1]	=>  Location: PIN_B7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rs1[2]	=>  Location: PIN_T13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rs1[3]	=>  Location: PIN_C16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rs1[4]	=>  Location: PIN_T16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rs2[0]	=>  Location: PIN_U9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rs2[1]	=>  Location: PIN_A7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rs2[2]	=>  Location: PIN_U7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rs2[3]	=>  Location: PIN_P6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rs2[4]	=>  Location: PIN_D17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- funct7[0]	=>  Location: PIN_K15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- funct7[1]	=>  Location: PIN_L18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- funct7[2]	=>  Location: PIN_R15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- funct7[3]	=>  Location: PIN_E10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- funct7[4]	=>  Location: PIN_R14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- funct7[5]	=>  Location: PIN_T9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- funct7[6]	=>  Location: PIN_U12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- imm[0]	=>  Location: PIN_T7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- imm[1]	=>  Location: PIN_V7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- imm[2]	=>  Location: PIN_B9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- imm[3]	=>  Location: PIN_V8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- imm[4]	=>  Location: PIN_C15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- imm[5]	=>  Location: PIN_V6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- imm[6]	=>  Location: PIN_V5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- imm[7]	=>  Location: PIN_V15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- imm[8]	=>  Location: PIN_V16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- imm[9]	=>  Location: PIN_B5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- imm[10]	=>  Location: PIN_A8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- imm[11]	=>  Location: PIN_D7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- addr[6]	=>  Location: PIN_D8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- addr[7]	=>  Location: PIN_T8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- addr[8]	=>  Location: PIN_R9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- addr[9]	=>  Location: PIN_R8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- addr[2]	=>  Location: PIN_A6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- addr[3]	=>  Location: PIN_B6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- addr[4]	=>  Location: PIN_B10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- addr[5]	=>  Location: PIN_N7,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF imemfetch IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_addr : std_logic_vector(31 DOWNTO 0);
SIGNAL ww_opcode : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_rd : std_logic_vector(4 DOWNTO 0);
SIGNAL ww_funct3 : std_logic_vector(2 DOWNTO 0);
SIGNAL ww_rs1 : std_logic_vector(4 DOWNTO 0);
SIGNAL ww_rs2 : std_logic_vector(4 DOWNTO 0);
SIGNAL ww_funct7 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_imm : std_logic_vector(11 DOWNTO 0);
SIGNAL \addr[0]~input_o\ : std_logic;
SIGNAL \addr[1]~input_o\ : std_logic;
SIGNAL \addr[10]~input_o\ : std_logic;
SIGNAL \addr[11]~input_o\ : std_logic;
SIGNAL \addr[12]~input_o\ : std_logic;
SIGNAL \addr[13]~input_o\ : std_logic;
SIGNAL \addr[14]~input_o\ : std_logic;
SIGNAL \addr[15]~input_o\ : std_logic;
SIGNAL \addr[16]~input_o\ : std_logic;
SIGNAL \addr[17]~input_o\ : std_logic;
SIGNAL \addr[18]~input_o\ : std_logic;
SIGNAL \addr[19]~input_o\ : std_logic;
SIGNAL \addr[20]~input_o\ : std_logic;
SIGNAL \addr[21]~input_o\ : std_logic;
SIGNAL \addr[22]~input_o\ : std_logic;
SIGNAL \addr[23]~input_o\ : std_logic;
SIGNAL \addr[24]~input_o\ : std_logic;
SIGNAL \addr[25]~input_o\ : std_logic;
SIGNAL \addr[26]~input_o\ : std_logic;
SIGNAL \addr[27]~input_o\ : std_logic;
SIGNAL \addr[28]~input_o\ : std_logic;
SIGNAL \addr[29]~input_o\ : std_logic;
SIGNAL \addr[30]~input_o\ : std_logic;
SIGNAL \addr[31]~input_o\ : std_logic;
SIGNAL \opcode[0]~output_o\ : std_logic;
SIGNAL \opcode[1]~output_o\ : std_logic;
SIGNAL \opcode[2]~output_o\ : std_logic;
SIGNAL \opcode[3]~output_o\ : std_logic;
SIGNAL \opcode[4]~output_o\ : std_logic;
SIGNAL \opcode[5]~output_o\ : std_logic;
SIGNAL \opcode[6]~output_o\ : std_logic;
SIGNAL \rd[0]~output_o\ : std_logic;
SIGNAL \rd[1]~output_o\ : std_logic;
SIGNAL \rd[2]~output_o\ : std_logic;
SIGNAL \rd[3]~output_o\ : std_logic;
SIGNAL \rd[4]~output_o\ : std_logic;
SIGNAL \funct3[0]~output_o\ : std_logic;
SIGNAL \funct3[1]~output_o\ : std_logic;
SIGNAL \funct3[2]~output_o\ : std_logic;
SIGNAL \rs1[0]~output_o\ : std_logic;
SIGNAL \rs1[1]~output_o\ : std_logic;
SIGNAL \rs1[2]~output_o\ : std_logic;
SIGNAL \rs1[3]~output_o\ : std_logic;
SIGNAL \rs1[4]~output_o\ : std_logic;
SIGNAL \rs2[0]~output_o\ : std_logic;
SIGNAL \rs2[1]~output_o\ : std_logic;
SIGNAL \rs2[2]~output_o\ : std_logic;
SIGNAL \rs2[3]~output_o\ : std_logic;
SIGNAL \rs2[4]~output_o\ : std_logic;
SIGNAL \funct7[0]~output_o\ : std_logic;
SIGNAL \funct7[1]~output_o\ : std_logic;
SIGNAL \funct7[2]~output_o\ : std_logic;
SIGNAL \funct7[3]~output_o\ : std_logic;
SIGNAL \funct7[4]~output_o\ : std_logic;
SIGNAL \funct7[5]~output_o\ : std_logic;
SIGNAL \funct7[6]~output_o\ : std_logic;
SIGNAL \imm[0]~output_o\ : std_logic;
SIGNAL \imm[1]~output_o\ : std_logic;
SIGNAL \imm[2]~output_o\ : std_logic;
SIGNAL \imm[3]~output_o\ : std_logic;
SIGNAL \imm[4]~output_o\ : std_logic;
SIGNAL \imm[5]~output_o\ : std_logic;
SIGNAL \imm[6]~output_o\ : std_logic;
SIGNAL \imm[7]~output_o\ : std_logic;
SIGNAL \imm[8]~output_o\ : std_logic;
SIGNAL \imm[9]~output_o\ : std_logic;
SIGNAL \imm[10]~output_o\ : std_logic;
SIGNAL \imm[11]~output_o\ : std_logic;
SIGNAL \addr[9]~input_o\ : std_logic;
SIGNAL \addr[6]~input_o\ : std_logic;
SIGNAL \addr[7]~input_o\ : std_logic;
SIGNAL \addr[8]~input_o\ : std_logic;
SIGNAL \imem_block|memory~0_combout\ : std_logic;
SIGNAL \addr[5]~input_o\ : std_logic;
SIGNAL \addr[3]~input_o\ : std_logic;
SIGNAL \addr[2]~input_o\ : std_logic;
SIGNAL \addr[4]~input_o\ : std_logic;
SIGNAL \imem_block|memory~1_combout\ : std_logic;
SIGNAL \imem_block|memory~2_combout\ : std_logic;
SIGNAL \imem_block|memory~3_combout\ : std_logic;
SIGNAL \imem_block|memory~4_combout\ : std_logic;
SIGNAL \imem_block|memory~5_combout\ : std_logic;
SIGNAL \imem_block|memory~6_combout\ : std_logic;
SIGNAL \imem_block|memory~7_combout\ : std_logic;
SIGNAL \imem_block|memory~8_combout\ : std_logic;
SIGNAL \imem_block|memory~9_combout\ : std_logic;
SIGNAL \imem_block|memory~10_combout\ : std_logic;
SIGNAL \fetch_block|rd[0]~8_combout\ : std_logic;
SIGNAL \fetch_block|rd[0]~11_combout\ : std_logic;
SIGNAL \imem_block|memory~11_combout\ : std_logic;
SIGNAL \fetch_block|rd[1]~9_combout\ : std_logic;
SIGNAL \fetch_block|rd[2]~10_combout\ : std_logic;
SIGNAL \fetch_block|WideOr0~0_combout\ : std_logic;
SIGNAL \fetch_block|funct3[1]~0_combout\ : std_logic;
SIGNAL \imem_block|memory~12_combout\ : std_logic;
SIGNAL \fetch_block|rs1[0]~0_combout\ : std_logic;
SIGNAL \imem_block|memory~13_combout\ : std_logic;
SIGNAL \fetch_block|rs1[1]~1_combout\ : std_logic;
SIGNAL \fetch_block|WideOr2~0_combout\ : std_logic;
SIGNAL \imem_block|memory~14_combout\ : std_logic;
SIGNAL \imem_block|memory~15_combout\ : std_logic;
SIGNAL \fetch_block|rs2[0]~0_combout\ : std_logic;
SIGNAL \fetch_block|rs2[1]~1_combout\ : std_logic;
SIGNAL \imem_block|memory~16_combout\ : std_logic;
SIGNAL \fetch_block|rs2[2]~2_combout\ : std_logic;
SIGNAL \imem_block|memory~17_combout\ : std_logic;
SIGNAL \fetch_block|funct7[0]~2_combout\ : std_logic;
SIGNAL \imem_block|memory~18_combout\ : std_logic;
SIGNAL \fetch_block|funct7[5]~3_combout\ : std_logic;
SIGNAL \fetch_block|Selector5~2_combout\ : std_logic;
SIGNAL \fetch_block|Selector5~3_combout\ : std_logic;
SIGNAL \fetch_block|Selector4~2_combout\ : std_logic;
SIGNAL \fetch_block|Selector4~0_combout\ : std_logic;
SIGNAL \fetch_block|Selector4~1_combout\ : std_logic;
SIGNAL \fetch_block|Selector4~3_combout\ : std_logic;
SIGNAL \fetch_block|Selector3~0_combout\ : std_logic;
SIGNAL \fetch_block|Selector3~1_combout\ : std_logic;
SIGNAL \fetch_block|Selector2~0_combout\ : std_logic;
SIGNAL \fetch_block|WideOr4~0_combout\ : std_logic;
SIGNAL \fetch_block|imm[5]~0_combout\ : std_logic;
SIGNAL \fetch_block|imm[10]~1_combout\ : std_logic;
SIGNAL \fetch_block|Selector0~2_combout\ : std_logic;
SIGNAL \imem_block|ALT_INV_memory~4_combout\ : std_logic;

BEGIN

ww_addr <= addr;
opcode <= ww_opcode;
rd <= ww_rd;
funct3 <= ww_funct3;
rs1 <= ww_rs1;
rs2 <= ww_rs2;
funct7 <= ww_funct7;
imm <= ww_imm;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\imem_block|ALT_INV_memory~4_combout\ <= NOT \imem_block|memory~4_combout\;

-- Location: IOOBUF_X18_Y41_N2
\opcode[0]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \imem_block|memory~2_combout\,
	devoe => ww_devoe,
	o => \opcode[0]~output_o\);

-- Location: IOOBUF_X18_Y41_N9
\opcode[1]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \imem_block|memory~2_combout\,
	devoe => ww_devoe,
	o => \opcode[1]~output_o\);

-- Location: IOOBUF_X7_Y41_N16
\opcode[2]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \opcode[2]~output_o\);

-- Location: IOOBUF_X43_Y41_N2
\opcode[3]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \opcode[3]~output_o\);

-- Location: IOOBUF_X7_Y0_N9
\opcode[4]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \imem_block|ALT_INV_memory~4_combout\,
	devoe => ww_devoe,
	o => \opcode[4]~output_o\);

-- Location: IOOBUF_X14_Y41_N9
\opcode[5]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \imem_block|memory~6_combout\,
	devoe => ww_devoe,
	o => \opcode[5]~output_o\);

-- Location: IOOBUF_X10_Y0_N9
\opcode[6]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \imem_block|memory~8_combout\,
	devoe => ww_devoe,
	o => \opcode[6]~output_o\);

-- Location: IOOBUF_X5_Y0_N9
\rd[0]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \fetch_block|rd[0]~8_combout\,
	devoe => ww_devoe,
	o => \rd[0]~output_o\);

-- Location: IOOBUF_X52_Y18_N9
\rd[1]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \fetch_block|rd[1]~9_combout\,
	devoe => ww_devoe,
	o => \rd[1]~output_o\);

-- Location: IOOBUF_X16_Y41_N9
\rd[2]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \fetch_block|rd[2]~10_combout\,
	devoe => ww_devoe,
	o => \rd[2]~output_o\);

-- Location: IOOBUF_X52_Y9_N2
\rd[3]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \rd[3]~output_o\);

-- Location: IOOBUF_X23_Y0_N2
\rd[4]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \rd[4]~output_o\);

-- Location: IOOBUF_X52_Y25_N2
\funct3[0]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \funct3[0]~output_o\);

-- Location: IOOBUF_X7_Y41_N23
\funct3[1]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \fetch_block|funct3[1]~0_combout\,
	devoe => ww_devoe,
	o => \funct3[1]~output_o\);

-- Location: IOOBUF_X25_Y41_N2
\funct3[2]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \funct3[2]~output_o\);

-- Location: IOOBUF_X10_Y41_N2
\rs1[0]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \fetch_block|rs1[0]~0_combout\,
	devoe => ww_devoe,
	o => \rs1[0]~output_o\);

-- Location: IOOBUF_X12_Y41_N9
\rs1[1]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \fetch_block|rs1[1]~1_combout\,
	devoe => ww_devoe,
	o => \rs1[1]~output_o\);

-- Location: IOOBUF_X41_Y0_N23
\rs1[2]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \rs1[2]~output_o\);

-- Location: IOOBUF_X48_Y41_N2
\rs1[3]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \rs1[3]~output_o\);

-- Location: IOOBUF_X46_Y0_N9
\rs1[4]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \rs1[4]~output_o\);

-- Location: IOOBUF_X16_Y0_N9
\rs2[0]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \fetch_block|rs2[0]~0_combout\,
	devoe => ww_devoe,
	o => \rs2[0]~output_o\);

-- Location: IOOBUF_X12_Y41_N2
\rs2[1]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \fetch_block|rs2[1]~1_combout\,
	devoe => ww_devoe,
	o => \rs2[1]~output_o\);

-- Location: IOOBUF_X12_Y0_N9
\rs2[2]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \fetch_block|rs2[2]~2_combout\,
	devoe => ww_devoe,
	o => \rs2[2]~output_o\);

-- Location: IOOBUF_X3_Y0_N9
\rs2[3]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \rs2[3]~output_o\);

-- Location: IOOBUF_X52_Y31_N2
\rs2[4]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \rs2[4]~output_o\);

-- Location: IOOBUF_X52_Y18_N2
\funct7[0]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \fetch_block|funct7[0]~2_combout\,
	devoe => ww_devoe,
	o => \funct7[0]~output_o\);

-- Location: IOOBUF_X52_Y19_N9
\funct7[1]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \fetch_block|funct7[0]~2_combout\,
	devoe => ww_devoe,
	o => \funct7[1]~output_o\);

-- Location: IOOBUF_X50_Y0_N2
\funct7[2]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \funct7[2]~output_o\);

-- Location: IOOBUF_X29_Y41_N9
\funct7[3]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \funct7[3]~output_o\);

-- Location: IOOBUF_X48_Y0_N9
\funct7[4]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \funct7[4]~output_o\);

-- Location: IOOBUF_X18_Y0_N2
\funct7[5]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \fetch_block|funct7[5]~3_combout\,
	devoe => ww_devoe,
	o => \funct7[5]~output_o\);

-- Location: IOOBUF_X31_Y0_N2
\funct7[6]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \funct7[6]~output_o\);

-- Location: IOOBUF_X7_Y0_N2
\imm[0]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \fetch_block|Selector5~3_combout\,
	devoe => ww_devoe,
	o => \imm[0]~output_o\);

-- Location: IOOBUF_X12_Y0_N2
\imm[1]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \fetch_block|Selector4~3_combout\,
	devoe => ww_devoe,
	o => \imm[1]~output_o\);

-- Location: IOOBUF_X21_Y41_N2
\imm[2]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \fetch_block|Selector3~1_combout\,
	devoe => ww_devoe,
	o => \imm[2]~output_o\);

-- Location: IOOBUF_X16_Y0_N2
\imm[3]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \fetch_block|Selector2~0_combout\,
	devoe => ww_devoe,
	o => \imm[3]~output_o\);

-- Location: IOOBUF_X41_Y41_N9
\imm[4]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \imm[4]~output_o\);

-- Location: IOOBUF_X7_Y0_N16
\imm[5]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \fetch_block|imm[5]~0_combout\,
	devoe => ww_devoe,
	o => \imm[5]~output_o\);

-- Location: IOOBUF_X7_Y0_N23
\imm[6]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \fetch_block|imm[5]~0_combout\,
	devoe => ww_devoe,
	o => \imm[6]~output_o\);

-- Location: IOOBUF_X34_Y0_N2
\imm[7]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \imm[7]~output_o\);

-- Location: IOOBUF_X43_Y0_N9
\imm[8]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \imm[8]~output_o\);

-- Location: IOOBUF_X5_Y41_N9
\imm[9]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \imm[9]~output_o\);

-- Location: IOOBUF_X16_Y41_N2
\imm[10]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \fetch_block|imm[10]~1_combout\,
	devoe => ww_devoe,
	o => \imm[10]~output_o\);

-- Location: IOOBUF_X10_Y41_N9
\imm[11]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \fetch_block|Selector0~2_combout\,
	devoe => ww_devoe,
	o => \imm[11]~output_o\);

-- Location: IOIBUF_X14_Y0_N1
\addr[9]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_addr(9),
	o => \addr[9]~input_o\);

-- Location: IOIBUF_X14_Y41_N1
\addr[6]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_addr(6),
	o => \addr[6]~input_o\);

-- Location: IOIBUF_X14_Y0_N8
\addr[7]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_addr(7),
	o => \addr[7]~input_o\);

-- Location: IOIBUF_X18_Y0_N8
\addr[8]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_addr(8),
	o => \addr[8]~input_o\);

-- Location: LCCOMB_X14_Y18_N0
\imem_block|memory~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \imem_block|memory~0_combout\ = (!\addr[9]~input_o\ & (!\addr[6]~input_o\ & (!\addr[7]~input_o\ & !\addr[8]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addr[9]~input_o\,
	datab => \addr[6]~input_o\,
	datac => \addr[7]~input_o\,
	datad => \addr[8]~input_o\,
	combout => \imem_block|memory~0_combout\);

-- Location: IOIBUF_X10_Y0_N1
\addr[5]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_addr(5),
	o => \addr[5]~input_o\);

-- Location: IOIBUF_X7_Y41_N8
\addr[3]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_addr(3),
	o => \addr[3]~input_o\);

-- Location: IOIBUF_X7_Y41_N1
\addr[2]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_addr(2),
	o => \addr[2]~input_o\);

-- Location: IOIBUF_X21_Y41_N8
\addr[4]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_addr(4),
	o => \addr[4]~input_o\);

-- Location: LCCOMB_X14_Y20_N24
\imem_block|memory~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \imem_block|memory~1_combout\ = (\addr[5]~input_o\ & ((\addr[3]~input_o\) # ((\addr[2]~input_o\) # (\addr[4]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addr[5]~input_o\,
	datab => \addr[3]~input_o\,
	datac => \addr[2]~input_o\,
	datad => \addr[4]~input_o\,
	combout => \imem_block|memory~1_combout\);

-- Location: LCCOMB_X14_Y19_N16
\imem_block|memory~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \imem_block|memory~2_combout\ = (\imem_block|memory~0_combout\ & !\imem_block|memory~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \imem_block|memory~0_combout\,
	datac => \imem_block|memory~1_combout\,
	combout => \imem_block|memory~2_combout\);

-- Location: LCCOMB_X14_Y20_N10
\imem_block|memory~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \imem_block|memory~3_combout\ = (\addr[5]~input_o\ & ((\addr[3]~input_o\) # ((\addr[2]~input_o\) # (\addr[4]~input_o\)))) # (!\addr[5]~input_o\ & (\addr[4]~input_o\ & ((!\addr[2]~input_o\) # (!\addr[3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addr[5]~input_o\,
	datab => \addr[3]~input_o\,
	datac => \addr[2]~input_o\,
	datad => \addr[4]~input_o\,
	combout => \imem_block|memory~3_combout\);

-- Location: LCCOMB_X14_Y18_N2
\imem_block|memory~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \imem_block|memory~4_combout\ = (\imem_block|memory~3_combout\) # (!\imem_block|memory~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \imem_block|memory~0_combout\,
	datad => \imem_block|memory~3_combout\,
	combout => \imem_block|memory~4_combout\);

-- Location: LCCOMB_X14_Y20_N12
\imem_block|memory~5\ : cycloneiv_lcell_comb
-- Equation(s):
-- \imem_block|memory~5_combout\ = (!\addr[2]~input_o\ & ((\addr[5]~input_o\ & (!\addr[3]~input_o\ & !\addr[4]~input_o\)) # (!\addr[5]~input_o\ & ((\addr[4]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addr[5]~input_o\,
	datab => \addr[3]~input_o\,
	datac => \addr[2]~input_o\,
	datad => \addr[4]~input_o\,
	combout => \imem_block|memory~5_combout\);

-- Location: LCCOMB_X14_Y18_N28
\imem_block|memory~6\ : cycloneiv_lcell_comb
-- Equation(s):
-- \imem_block|memory~6_combout\ = (\imem_block|memory~0_combout\ & \imem_block|memory~5_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \imem_block|memory~0_combout\,
	datad => \imem_block|memory~5_combout\,
	combout => \imem_block|memory~6_combout\);

-- Location: LCCOMB_X14_Y18_N22
\imem_block|memory~7\ : cycloneiv_lcell_comb
-- Equation(s):
-- \imem_block|memory~7_combout\ = (\imem_block|memory~0_combout\ & (!\addr[5]~input_o\ & \addr[4]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \imem_block|memory~0_combout\,
	datac => \addr[5]~input_o\,
	datad => \addr[4]~input_o\,
	combout => \imem_block|memory~7_combout\);

-- Location: LCCOMB_X14_Y18_N8
\imem_block|memory~8\ : cycloneiv_lcell_comb
-- Equation(s):
-- \imem_block|memory~8_combout\ = (\addr[3]~input_o\ & (\imem_block|memory~7_combout\ & !\addr[2]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addr[3]~input_o\,
	datac => \imem_block|memory~7_combout\,
	datad => \addr[2]~input_o\,
	combout => \imem_block|memory~8_combout\);

-- Location: LCCOMB_X14_Y20_N30
\imem_block|memory~9\ : cycloneiv_lcell_comb
-- Equation(s):
-- \imem_block|memory~9_combout\ = (!\addr[4]~input_o\ & ((\addr[5]~input_o\ & (!\addr[3]~input_o\ & !\addr[2]~input_o\)) # (!\addr[5]~input_o\ & ((\addr[2]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addr[5]~input_o\,
	datab => \addr[3]~input_o\,
	datac => \addr[2]~input_o\,
	datad => \addr[4]~input_o\,
	combout => \imem_block|memory~9_combout\);

-- Location: LCCOMB_X14_Y19_N26
\imem_block|memory~10\ : cycloneiv_lcell_comb
-- Equation(s):
-- \imem_block|memory~10_combout\ = (\imem_block|memory~9_combout\ & \imem_block|memory~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \imem_block|memory~9_combout\,
	datad => \imem_block|memory~0_combout\,
	combout => \imem_block|memory~10_combout\);

-- Location: LCCOMB_X14_Y19_N20
\fetch_block|rd[0]~8\ : cycloneiv_lcell_comb
-- Equation(s):
-- \fetch_block|rd[0]~8_combout\ = (\imem_block|memory~10_combout\ & (!\imem_block|memory~8_combout\ & (!\imem_block|memory~4_combout\ & \imem_block|memory~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \imem_block|memory~10_combout\,
	datab => \imem_block|memory~8_combout\,
	datac => \imem_block|memory~4_combout\,
	datad => \imem_block|memory~2_combout\,
	combout => \fetch_block|rd[0]~8_combout\);

-- Location: LCCOMB_X14_Y18_N12
\fetch_block|rd[0]~11\ : cycloneiv_lcell_comb
-- Equation(s):
-- \fetch_block|rd[0]~11_combout\ = (!\imem_block|memory~8_combout\ & (\imem_block|memory~0_combout\ & (!\imem_block|memory~1_combout\ & !\imem_block|memory~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \imem_block|memory~8_combout\,
	datab => \imem_block|memory~0_combout\,
	datac => \imem_block|memory~1_combout\,
	datad => \imem_block|memory~3_combout\,
	combout => \fetch_block|rd[0]~11_combout\);

-- Location: LCCOMB_X14_Y20_N8
\imem_block|memory~11\ : cycloneiv_lcell_comb
-- Equation(s):
-- \imem_block|memory~11_combout\ = (\addr[2]~input_o\ & (!\addr[5]~input_o\ & (\addr[3]~input_o\ $ (\addr[4]~input_o\)))) # (!\addr[2]~input_o\ & (!\addr[4]~input_o\ & (\addr[5]~input_o\ $ (\addr[3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000001000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addr[5]~input_o\,
	datab => \addr[3]~input_o\,
	datac => \addr[2]~input_o\,
	datad => \addr[4]~input_o\,
	combout => \imem_block|memory~11_combout\);

-- Location: LCCOMB_X14_Y18_N10
\fetch_block|rd[1]~9\ : cycloneiv_lcell_comb
-- Equation(s):
-- \fetch_block|rd[1]~9_combout\ = (\fetch_block|rd[0]~11_combout\ & (\imem_block|memory~0_combout\ & \imem_block|memory~11_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fetch_block|rd[0]~11_combout\,
	datab => \imem_block|memory~0_combout\,
	datac => \imem_block|memory~11_combout\,
	combout => \fetch_block|rd[1]~9_combout\);

-- Location: LCCOMB_X14_Y18_N4
\fetch_block|rd[2]~10\ : cycloneiv_lcell_comb
-- Equation(s):
-- \fetch_block|rd[2]~10_combout\ = (\addr[2]~input_o\ & (!\imem_block|memory~1_combout\ & (\imem_block|memory~7_combout\ & !\imem_block|memory~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addr[2]~input_o\,
	datab => \imem_block|memory~1_combout\,
	datac => \imem_block|memory~7_combout\,
	datad => \imem_block|memory~3_combout\,
	combout => \fetch_block|rd[2]~10_combout\);

-- Location: LCCOMB_X14_Y19_N14
\fetch_block|WideOr0~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \fetch_block|WideOr0~0_combout\ = (\imem_block|memory~2_combout\ & ((\imem_block|memory~4_combout\ & ((\imem_block|memory~6_combout\))) # (!\imem_block|memory~4_combout\ & (!\imem_block|memory~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \imem_block|memory~4_combout\,
	datab => \imem_block|memory~8_combout\,
	datac => \imem_block|memory~6_combout\,
	datad => \imem_block|memory~2_combout\,
	combout => \fetch_block|WideOr0~0_combout\);

-- Location: LCCOMB_X14_Y18_N6
\fetch_block|funct3[1]~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \fetch_block|funct3[1]~0_combout\ = (!\addr[3]~input_o\ & (\imem_block|memory~7_combout\ & \fetch_block|WideOr0~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addr[3]~input_o\,
	datac => \imem_block|memory~7_combout\,
	datad => \fetch_block|WideOr0~0_combout\,
	combout => \fetch_block|funct3[1]~0_combout\);

-- Location: LCCOMB_X14_Y20_N18
\imem_block|memory~12\ : cycloneiv_lcell_comb
-- Equation(s):
-- \imem_block|memory~12_combout\ = (!\addr[3]~input_o\ & (!\addr[2]~input_o\ & (\addr[5]~input_o\ $ (\addr[4]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addr[5]~input_o\,
	datab => \addr[3]~input_o\,
	datac => \addr[2]~input_o\,
	datad => \addr[4]~input_o\,
	combout => \imem_block|memory~12_combout\);

-- Location: LCCOMB_X14_Y20_N28
\fetch_block|rs1[0]~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \fetch_block|rs1[0]~0_combout\ = (\fetch_block|WideOr0~0_combout\ & (\imem_block|memory~0_combout\ & \imem_block|memory~12_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fetch_block|WideOr0~0_combout\,
	datab => \imem_block|memory~0_combout\,
	datad => \imem_block|memory~12_combout\,
	combout => \fetch_block|rs1[0]~0_combout\);

-- Location: LCCOMB_X14_Y20_N6
\imem_block|memory~13\ : cycloneiv_lcell_comb
-- Equation(s):
-- \imem_block|memory~13_combout\ = (!\addr[5]~input_o\ & (\addr[4]~input_o\ & ((\addr[3]~input_o\) # (\addr[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addr[5]~input_o\,
	datab => \addr[3]~input_o\,
	datac => \addr[2]~input_o\,
	datad => \addr[4]~input_o\,
	combout => \imem_block|memory~13_combout\);

-- Location: LCCOMB_X14_Y20_N0
\fetch_block|rs1[1]~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \fetch_block|rs1[1]~1_combout\ = (\fetch_block|WideOr0~0_combout\ & (\imem_block|memory~0_combout\ & \imem_block|memory~13_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fetch_block|WideOr0~0_combout\,
	datab => \imem_block|memory~0_combout\,
	datad => \imem_block|memory~13_combout\,
	combout => \fetch_block|rs1[1]~1_combout\);

-- Location: LCCOMB_X14_Y19_N24
\fetch_block|WideOr2~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \fetch_block|WideOr2~0_combout\ = (\imem_block|memory~6_combout\ & (\imem_block|memory~2_combout\ & ((\imem_block|memory~4_combout\) # (!\imem_block|memory~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \imem_block|memory~4_combout\,
	datab => \imem_block|memory~8_combout\,
	datac => \imem_block|memory~6_combout\,
	datad => \imem_block|memory~2_combout\,
	combout => \fetch_block|WideOr2~0_combout\);

-- Location: LCCOMB_X14_Y20_N2
\imem_block|memory~14\ : cycloneiv_lcell_comb
-- Equation(s):
-- \imem_block|memory~14_combout\ = (\imem_block|memory~0_combout\ & !\addr[4]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \imem_block|memory~0_combout\,
	datad => \addr[4]~input_o\,
	combout => \imem_block|memory~14_combout\);

-- Location: LCCOMB_X14_Y20_N4
\imem_block|memory~15\ : cycloneiv_lcell_comb
-- Equation(s):
-- \imem_block|memory~15_combout\ = (!\addr[5]~input_o\ & (\addr[3]~input_o\ & (!\addr[2]~input_o\ & \imem_block|memory~14_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addr[5]~input_o\,
	datab => \addr[3]~input_o\,
	datac => \addr[2]~input_o\,
	datad => \imem_block|memory~14_combout\,
	combout => \imem_block|memory~15_combout\);

-- Location: LCCOMB_X14_Y19_N2
\fetch_block|rs2[0]~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \fetch_block|rs2[0]~0_combout\ = (\fetch_block|WideOr2~0_combout\ & \imem_block|memory~15_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \fetch_block|WideOr2~0_combout\,
	datad => \imem_block|memory~15_combout\,
	combout => \fetch_block|rs2[0]~0_combout\);

-- Location: LCCOMB_X14_Y18_N24
\fetch_block|rs2[1]~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \fetch_block|rs2[1]~1_combout\ = (!\addr[2]~input_o\ & (\fetch_block|WideOr2~0_combout\ & \imem_block|memory~7_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addr[2]~input_o\,
	datab => \fetch_block|WideOr2~0_combout\,
	datac => \imem_block|memory~7_combout\,
	combout => \fetch_block|rs2[1]~1_combout\);

-- Location: LCCOMB_X14_Y20_N22
\imem_block|memory~16\ : cycloneiv_lcell_comb
-- Equation(s):
-- \imem_block|memory~16_combout\ = (!\addr[5]~input_o\ & ((\addr[3]~input_o\) # ((\addr[2]~input_o\ & !\addr[4]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010001010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addr[5]~input_o\,
	datab => \addr[3]~input_o\,
	datac => \addr[2]~input_o\,
	datad => \addr[4]~input_o\,
	combout => \imem_block|memory~16_combout\);

-- Location: LCCOMB_X14_Y19_N28
\fetch_block|rs2[2]~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \fetch_block|rs2[2]~2_combout\ = (\imem_block|memory~16_combout\ & (\imem_block|memory~0_combout\ & \fetch_block|WideOr2~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \imem_block|memory~16_combout\,
	datab => \imem_block|memory~0_combout\,
	datad => \fetch_block|WideOr2~0_combout\,
	combout => \fetch_block|rs2[2]~2_combout\);

-- Location: LCCOMB_X14_Y20_N16
\imem_block|memory~17\ : cycloneiv_lcell_comb
-- Equation(s):
-- \imem_block|memory~17_combout\ = (!\addr[5]~input_o\ & (\imem_block|memory~0_combout\ & (\addr[3]~input_o\ & !\addr[4]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addr[5]~input_o\,
	datab => \imem_block|memory~0_combout\,
	datac => \addr[3]~input_o\,
	datad => \addr[4]~input_o\,
	combout => \imem_block|memory~17_combout\);

-- Location: LCCOMB_X14_Y18_N18
\fetch_block|funct7[0]~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \fetch_block|funct7[0]~2_combout\ = (\fetch_block|rd[0]~11_combout\ & (\imem_block|memory~6_combout\ & (\imem_block|memory~17_combout\ & \addr[2]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fetch_block|rd[0]~11_combout\,
	datab => \imem_block|memory~6_combout\,
	datac => \imem_block|memory~17_combout\,
	datad => \addr[2]~input_o\,
	combout => \fetch_block|funct7[0]~2_combout\);

-- Location: LCCOMB_X14_Y20_N26
\imem_block|memory~18\ : cycloneiv_lcell_comb
-- Equation(s):
-- \imem_block|memory~18_combout\ = (\addr[5]~input_o\ & (!\addr[3]~input_o\ & (!\addr[2]~input_o\ & \imem_block|memory~14_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addr[5]~input_o\,
	datab => \addr[3]~input_o\,
	datac => \addr[2]~input_o\,
	datad => \imem_block|memory~14_combout\,
	combout => \imem_block|memory~18_combout\);

-- Location: LCCOMB_X14_Y18_N26
\fetch_block|funct7[5]~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \fetch_block|funct7[5]~3_combout\ = (\fetch_block|rd[0]~11_combout\ & (\imem_block|memory~0_combout\ & (\imem_block|memory~18_combout\ & \imem_block|memory~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fetch_block|rd[0]~11_combout\,
	datab => \imem_block|memory~0_combout\,
	datac => \imem_block|memory~18_combout\,
	datad => \imem_block|memory~5_combout\,
	combout => \fetch_block|funct7[5]~3_combout\);

-- Location: LCCOMB_X14_Y19_N22
\fetch_block|Selector5~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \fetch_block|Selector5~2_combout\ = (\imem_block|memory~4_combout\ & (\imem_block|memory~6_combout\ & (\imem_block|memory~10_combout\))) # (!\imem_block|memory~4_combout\ & (!\imem_block|memory~6_combout\ & ((\imem_block|memory~15_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001000110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \imem_block|memory~4_combout\,
	datab => \imem_block|memory~6_combout\,
	datac => \imem_block|memory~10_combout\,
	datad => \imem_block|memory~15_combout\,
	combout => \fetch_block|Selector5~2_combout\);

-- Location: LCCOMB_X14_Y19_N10
\fetch_block|Selector5~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \fetch_block|Selector5~3_combout\ = (\fetch_block|Selector5~2_combout\ & (!\imem_block|memory~8_combout\ & (!\imem_block|memory~1_combout\ & \imem_block|memory~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fetch_block|Selector5~2_combout\,
	datab => \imem_block|memory~8_combout\,
	datac => \imem_block|memory~1_combout\,
	datad => \imem_block|memory~0_combout\,
	combout => \fetch_block|Selector5~3_combout\);

-- Location: LCCOMB_X14_Y20_N20
\fetch_block|Selector4~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \fetch_block|Selector4~2_combout\ = (!\addr[5]~input_o\ & (!\addr[2]~input_o\ & \addr[4]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addr[5]~input_o\,
	datac => \addr[2]~input_o\,
	datad => \addr[4]~input_o\,
	combout => \fetch_block|Selector4~2_combout\);

-- Location: LCCOMB_X14_Y18_N20
\fetch_block|Selector4~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \fetch_block|Selector4~0_combout\ = (\imem_block|memory~5_combout\ & ((!\imem_block|memory~3_combout\))) # (!\imem_block|memory~5_combout\ & ((\imem_block|memory~8_combout\) # (\imem_block|memory~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \imem_block|memory~5_combout\,
	datac => \imem_block|memory~8_combout\,
	datad => \imem_block|memory~3_combout\,
	combout => \fetch_block|Selector4~0_combout\);

-- Location: LCCOMB_X14_Y19_N0
\fetch_block|Selector4~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \fetch_block|Selector4~1_combout\ = (!\fetch_block|Selector4~0_combout\ & (!\imem_block|memory~1_combout\ & \imem_block|memory~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \fetch_block|Selector4~0_combout\,
	datac => \imem_block|memory~1_combout\,
	datad => \imem_block|memory~0_combout\,
	combout => \fetch_block|Selector4~1_combout\);

-- Location: LCCOMB_X14_Y19_N18
\fetch_block|Selector4~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \fetch_block|Selector4~3_combout\ = (\fetch_block|Selector4~1_combout\ & ((\imem_block|memory~4_combout\ & ((\imem_block|memory~11_combout\))) # (!\imem_block|memory~4_combout\ & (\fetch_block|Selector4~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fetch_block|Selector4~2_combout\,
	datab => \fetch_block|Selector4~1_combout\,
	datac => \imem_block|memory~4_combout\,
	datad => \imem_block|memory~11_combout\,
	combout => \fetch_block|Selector4~3_combout\);

-- Location: LCCOMB_X14_Y20_N14
\fetch_block|Selector3~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \fetch_block|Selector3~0_combout\ = (!\addr[5]~input_o\ & (\addr[2]~input_o\ & \addr[4]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addr[5]~input_o\,
	datac => \addr[2]~input_o\,
	datad => \addr[4]~input_o\,
	combout => \fetch_block|Selector3~0_combout\);

-- Location: LCCOMB_X14_Y19_N4
\fetch_block|Selector3~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \fetch_block|Selector3~1_combout\ = (\fetch_block|Selector4~1_combout\ & ((\imem_block|memory~4_combout\ & (\fetch_block|Selector3~0_combout\)) # (!\imem_block|memory~4_combout\ & ((\imem_block|memory~16_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \imem_block|memory~4_combout\,
	datab => \fetch_block|Selector4~1_combout\,
	datac => \fetch_block|Selector3~0_combout\,
	datad => \imem_block|memory~16_combout\,
	combout => \fetch_block|Selector3~1_combout\);

-- Location: LCCOMB_X14_Y19_N6
\fetch_block|Selector2~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \fetch_block|Selector2~0_combout\ = (\imem_block|memory~4_combout\ & (\imem_block|memory~8_combout\ & (\imem_block|memory~6_combout\ & \imem_block|memory~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \imem_block|memory~4_combout\,
	datab => \imem_block|memory~8_combout\,
	datac => \imem_block|memory~6_combout\,
	datad => \imem_block|memory~2_combout\,
	combout => \fetch_block|Selector2~0_combout\);

-- Location: LCCOMB_X14_Y19_N8
\fetch_block|WideOr4~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \fetch_block|WideOr4~0_combout\ = (\imem_block|memory~2_combout\ & ((\imem_block|memory~4_combout\ & ((\imem_block|memory~6_combout\))) # (!\imem_block|memory~4_combout\ & (!\imem_block|memory~8_combout\ & !\imem_block|memory~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \imem_block|memory~4_combout\,
	datab => \imem_block|memory~8_combout\,
	datac => \imem_block|memory~6_combout\,
	datad => \imem_block|memory~2_combout\,
	combout => \fetch_block|WideOr4~0_combout\);

-- Location: LCCOMB_X14_Y18_N30
\fetch_block|imm[5]~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \fetch_block|imm[5]~0_combout\ = (\addr[2]~input_o\ & (\imem_block|memory~17_combout\ & \fetch_block|WideOr4~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addr[2]~input_o\,
	datac => \imem_block|memory~17_combout\,
	datad => \fetch_block|WideOr4~0_combout\,
	combout => \fetch_block|imm[5]~0_combout\);

-- Location: LCCOMB_X14_Y18_N16
\fetch_block|imm[10]~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \fetch_block|imm[10]~1_combout\ = (\imem_block|memory~18_combout\ & \fetch_block|WideOr4~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \imem_block|memory~18_combout\,
	datad => \fetch_block|WideOr4~0_combout\,
	combout => \fetch_block|imm[10]~1_combout\);

-- Location: LCCOMB_X14_Y19_N12
\fetch_block|Selector0~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \fetch_block|Selector0~2_combout\ = (\imem_block|memory~0_combout\ & (\imem_block|memory~9_combout\ & \fetch_block|Selector2~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \imem_block|memory~0_combout\,
	datac => \imem_block|memory~9_combout\,
	datad => \fetch_block|Selector2~0_combout\,
	combout => \fetch_block|Selector0~2_combout\);

-- Location: IOIBUF_X43_Y0_N1
\addr[0]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_addr(0),
	o => \addr[0]~input_o\);

-- Location: IOIBUF_X29_Y41_N1
\addr[1]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_addr(1),
	o => \addr[1]~input_o\);

-- Location: IOIBUF_X36_Y41_N1
\addr[10]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_addr(10),
	o => \addr[10]~input_o\);

-- Location: IOIBUF_X41_Y0_N8
\addr[11]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_addr(11),
	o => \addr[11]~input_o\);

-- Location: IOIBUF_X52_Y32_N22
\addr[12]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_addr(12),
	o => \addr[12]~input_o\);

-- Location: IOIBUF_X52_Y16_N1
\addr[13]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_addr(13),
	o => \addr[13]~input_o\);

-- Location: IOIBUF_X38_Y41_N8
\addr[14]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_addr(14),
	o => \addr[14]~input_o\);

-- Location: IOIBUF_X36_Y0_N8
\addr[15]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_addr(15),
	o => \addr[15]~input_o\);

-- Location: IOIBUF_X31_Y41_N1
\addr[16]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_addr(16),
	o => \addr[16]~input_o\);

-- Location: IOIBUF_X41_Y41_N22
\addr[17]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_addr(17),
	o => \addr[17]~input_o\);

-- Location: IOIBUF_X23_Y41_N1
\addr[18]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_addr(18),
	o => \addr[18]~input_o\);

-- Location: IOIBUF_X50_Y41_N8
\addr[19]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_addr(19),
	o => \addr[19]~input_o\);

-- Location: IOIBUF_X5_Y0_N1
\addr[20]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_addr(20),
	o => \addr[20]~input_o\);

-- Location: IOIBUF_X41_Y41_N15
\addr[21]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_addr(21),
	o => \addr[21]~input_o\);

-- Location: IOIBUF_X46_Y0_N22
\addr[22]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_addr(22),
	o => \addr[22]~input_o\);

-- Location: IOIBUF_X31_Y0_N22
\addr[23]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_addr(23),
	o => \addr[23]~input_o\);

-- Location: IOIBUF_X52_Y12_N8
\addr[24]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_addr(24),
	o => \addr[24]~input_o\);

-- Location: IOIBUF_X25_Y41_N8
\addr[25]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_addr(25),
	o => \addr[25]~input_o\);

-- Location: IOIBUF_X41_Y41_N1
\addr[26]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_addr(26),
	o => \addr[26]~input_o\);

-- Location: IOIBUF_X52_Y13_N1
\addr[27]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_addr(27),
	o => \addr[27]~input_o\);

-- Location: IOIBUF_X1_Y0_N8
\addr[28]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_addr(28),
	o => \addr[28]~input_o\);

-- Location: IOIBUF_X34_Y41_N8
\addr[29]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_addr(29),
	o => \addr[29]~input_o\);

-- Location: IOIBUF_X1_Y0_N1
\addr[30]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_addr(30),
	o => \addr[30]~input_o\);

-- Location: IOIBUF_X52_Y32_N15
\addr[31]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_addr(31),
	o => \addr[31]~input_o\);

ww_opcode(0) <= \opcode[0]~output_o\;

ww_opcode(1) <= \opcode[1]~output_o\;

ww_opcode(2) <= \opcode[2]~output_o\;

ww_opcode(3) <= \opcode[3]~output_o\;

ww_opcode(4) <= \opcode[4]~output_o\;

ww_opcode(5) <= \opcode[5]~output_o\;

ww_opcode(6) <= \opcode[6]~output_o\;

ww_rd(0) <= \rd[0]~output_o\;

ww_rd(1) <= \rd[1]~output_o\;

ww_rd(2) <= \rd[2]~output_o\;

ww_rd(3) <= \rd[3]~output_o\;

ww_rd(4) <= \rd[4]~output_o\;

ww_funct3(0) <= \funct3[0]~output_o\;

ww_funct3(1) <= \funct3[1]~output_o\;

ww_funct3(2) <= \funct3[2]~output_o\;

ww_rs1(0) <= \rs1[0]~output_o\;

ww_rs1(1) <= \rs1[1]~output_o\;

ww_rs1(2) <= \rs1[2]~output_o\;

ww_rs1(3) <= \rs1[3]~output_o\;

ww_rs1(4) <= \rs1[4]~output_o\;

ww_rs2(0) <= \rs2[0]~output_o\;

ww_rs2(1) <= \rs2[1]~output_o\;

ww_rs2(2) <= \rs2[2]~output_o\;

ww_rs2(3) <= \rs2[3]~output_o\;

ww_rs2(4) <= \rs2[4]~output_o\;

ww_funct7(0) <= \funct7[0]~output_o\;

ww_funct7(1) <= \funct7[1]~output_o\;

ww_funct7(2) <= \funct7[2]~output_o\;

ww_funct7(3) <= \funct7[3]~output_o\;

ww_funct7(4) <= \funct7[4]~output_o\;

ww_funct7(5) <= \funct7[5]~output_o\;

ww_funct7(6) <= \funct7[6]~output_o\;

ww_imm(0) <= \imm[0]~output_o\;

ww_imm(1) <= \imm[1]~output_o\;

ww_imm(2) <= \imm[2]~output_o\;

ww_imm(3) <= \imm[3]~output_o\;

ww_imm(4) <= \imm[4]~output_o\;

ww_imm(5) <= \imm[5]~output_o\;

ww_imm(6) <= \imm[6]~output_o\;

ww_imm(7) <= \imm[7]~output_o\;

ww_imm(8) <= \imm[8]~output_o\;

ww_imm(9) <= \imm[9]~output_o\;

ww_imm(10) <= \imm[10]~output_o\;

ww_imm(11) <= \imm[11]~output_o\;
END structure;


