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

-- DATE "05/30/2024 17:10:10"

-- 
-- Device: Altera EP4CGX15BF14C6 Package FBGA169
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY CYCLONEIV;
LIBRARY IEEE;
USE CYCLONEIV.CYCLONEIV_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	Controller IS
    PORT (
	opcode : IN std_logic_vector(6 DOWNTO 0);
	funct3 : IN std_logic_vector(2 DOWNTO 0);
	BrEq : IN std_logic;
	BrLT : IN std_logic;
	BrUn : IN std_logic;
	funct7_in : IN std_logic;
	PCSel : BUFFER std_logic;
	ImmSel : BUFFER std_logic;
	RegWEn : BUFFER std_logic;
	Asel : BUFFER std_logic;
	Bsel : BUFFER std_logic;
	MemRW : BUFFER std_logic;
	ALUSel : BUFFER std_logic_vector(2 DOWNTO 0);
	WBSel : BUFFER std_logic_vector(1 DOWNTO 0);
	funct7 : BUFFER std_logic
	);
END Controller;

-- Design Ports Information
-- PCSel	=>  Location: PIN_M11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ImmSel	=>  Location: PIN_M4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RegWEn	=>  Location: PIN_L7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Asel	=>  Location: PIN_L9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Bsel	=>  Location: PIN_M13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- MemRW	=>  Location: PIN_N6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ALUSel[0]	=>  Location: PIN_K8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ALUSel[1]	=>  Location: PIN_N8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ALUSel[2]	=>  Location: PIN_M9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- WBSel[0]	=>  Location: PIN_L12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- WBSel[1]	=>  Location: PIN_K13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- funct7	=>  Location: PIN_N9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- opcode[6]	=>  Location: PIN_L11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- opcode[5]	=>  Location: PIN_N13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- opcode[0]	=>  Location: PIN_L4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- opcode[1]	=>  Location: PIN_B10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- opcode[2]	=>  Location: PIN_L5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- opcode[3]	=>  Location: PIN_K10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- opcode[4]	=>  Location: PIN_N4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- BrLT	=>  Location: PIN_N12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- BrEq	=>  Location: PIN_N11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- funct3[2]	=>  Location: PIN_G13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- funct3[0]	=>  Location: PIN_H13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- BrUn	=>  Location: PIN_N10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- funct3[1]	=>  Location: PIN_M6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- funct7_in	=>  Location: PIN_K9,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF Controller IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_opcode : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_funct3 : std_logic_vector(2 DOWNTO 0);
SIGNAL ww_BrEq : std_logic;
SIGNAL ww_BrLT : std_logic;
SIGNAL ww_BrUn : std_logic;
SIGNAL ww_funct7_in : std_logic;
SIGNAL ww_PCSel : std_logic;
SIGNAL ww_ImmSel : std_logic;
SIGNAL ww_RegWEn : std_logic;
SIGNAL ww_Asel : std_logic;
SIGNAL ww_Bsel : std_logic;
SIGNAL ww_MemRW : std_logic;
SIGNAL ww_ALUSel : std_logic_vector(2 DOWNTO 0);
SIGNAL ww_WBSel : std_logic_vector(1 DOWNTO 0);
SIGNAL ww_funct7 : std_logic;
SIGNAL \PCSel~output_o\ : std_logic;
SIGNAL \ImmSel~output_o\ : std_logic;
SIGNAL \RegWEn~output_o\ : std_logic;
SIGNAL \Asel~output_o\ : std_logic;
SIGNAL \Bsel~output_o\ : std_logic;
SIGNAL \MemRW~output_o\ : std_logic;
SIGNAL \ALUSel[0]~output_o\ : std_logic;
SIGNAL \ALUSel[1]~output_o\ : std_logic;
SIGNAL \ALUSel[2]~output_o\ : std_logic;
SIGNAL \WBSel[0]~output_o\ : std_logic;
SIGNAL \WBSel[1]~output_o\ : std_logic;
SIGNAL \funct7~output_o\ : std_logic;
SIGNAL \BrUn~input_o\ : std_logic;
SIGNAL \funct3[2]~input_o\ : std_logic;
SIGNAL \BrEq~input_o\ : std_logic;
SIGNAL \funct3[0]~input_o\ : std_logic;
SIGNAL \ControlUnit|Mux0~1_combout\ : std_logic;
SIGNAL \funct3[1]~input_o\ : std_logic;
SIGNAL \BrLT~input_o\ : std_logic;
SIGNAL \ControlUnit|Mux0~0_combout\ : std_logic;
SIGNAL \opcode[6]~input_o\ : std_logic;
SIGNAL \opcode[4]~input_o\ : std_logic;
SIGNAL \opcode[5]~input_o\ : std_logic;
SIGNAL \opcode[1]~input_o\ : std_logic;
SIGNAL \opcode[2]~input_o\ : std_logic;
SIGNAL \opcode[0]~input_o\ : std_logic;
SIGNAL \opcode[3]~input_o\ : std_logic;
SIGNAL \ControlUnit|Decoder0~0_combout\ : std_logic;
SIGNAL \ControlUnit|Decoder0~1_combout\ : std_logic;
SIGNAL \ControlUnit|PCSel~0_combout\ : std_logic;
SIGNAL \ControlUnit|Selector0~0_combout\ : std_logic;
SIGNAL \ControlUnit|Selector0~1_combout\ : std_logic;
SIGNAL \ControlUnit|WideOr0~0_combout\ : std_logic;
SIGNAL \ControlUnit|WideOr0~1_combout\ : std_logic;
SIGNAL \ControlUnit|WideOr1~0_combout\ : std_logic;
SIGNAL \ControlUnit|WideOr1~1_combout\ : std_logic;
SIGNAL \ControlUnit|Decoder0~2_combout\ : std_logic;
SIGNAL \ControlUnit|ALUSel[0]~0_combout\ : std_logic;
SIGNAL \ControlUnit|ALUSel[1]~1_combout\ : std_logic;
SIGNAL \ControlUnit|ALUSel[2]~2_combout\ : std_logic;
SIGNAL \ControlUnit|Decoder0~3_combout\ : std_logic;
SIGNAL \funct7_in~input_o\ : std_logic;
SIGNAL \ControlUnit|funct7~0_combout\ : std_logic;

BEGIN

ww_opcode <= opcode;
ww_funct3 <= funct3;
ww_BrEq <= BrEq;
ww_BrLT <= BrLT;
ww_BrUn <= BrUn;
ww_funct7_in <= funct7_in;
PCSel <= ww_PCSel;
ImmSel <= ww_ImmSel;
RegWEn <= ww_RegWEn;
Asel <= ww_Asel;
Bsel <= ww_Bsel;
MemRW <= ww_MemRW;
ALUSel <= ww_ALUSel;
WBSel <= ww_WBSel;
funct7 <= ww_funct7;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

-- Location: IOOBUF_X29_Y0_N9
\PCSel~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ControlUnit|PCSel~0_combout\,
	devoe => ww_devoe,
	o => \PCSel~output_o\);

-- Location: IOOBUF_X8_Y0_N2
\ImmSel~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ControlUnit|Selector0~1_combout\,
	devoe => ww_devoe,
	o => \ImmSel~output_o\);

-- Location: IOOBUF_X14_Y0_N2
\RegWEn~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ControlUnit|WideOr0~1_combout\,
	devoe => ww_devoe,
	o => \RegWEn~output_o\);

-- Location: IOOBUF_X24_Y0_N9
\Asel~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ControlUnit|Decoder0~1_combout\,
	devoe => ww_devoe,
	o => \Asel~output_o\);

-- Location: IOOBUF_X33_Y10_N2
\Bsel~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ControlUnit|WideOr1~1_combout\,
	devoe => ww_devoe,
	o => \Bsel~output_o\);

-- Location: IOOBUF_X12_Y0_N2
\MemRW~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ControlUnit|Decoder0~2_combout\,
	devoe => ww_devoe,
	o => \MemRW~output_o\);

-- Location: IOOBUF_X22_Y0_N9
\ALUSel[0]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ControlUnit|ALUSel[0]~0_combout\,
	devoe => ww_devoe,
	o => \ALUSel[0]~output_o\);

-- Location: IOOBUF_X20_Y0_N9
\ALUSel[1]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ControlUnit|ALUSel[1]~1_combout\,
	devoe => ww_devoe,
	o => \ALUSel[1]~output_o\);

-- Location: IOOBUF_X24_Y0_N2
\ALUSel[2]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ControlUnit|ALUSel[2]~2_combout\,
	devoe => ww_devoe,
	o => \ALUSel[2]~output_o\);

-- Location: IOOBUF_X33_Y12_N2
\WBSel[0]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ControlUnit|Decoder0~3_combout\,
	devoe => ww_devoe,
	o => \WBSel[0]~output_o\);

-- Location: IOOBUF_X33_Y15_N2
\WBSel[1]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \WBSel[1]~output_o\);

-- Location: IOOBUF_X20_Y0_N2
\funct7~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ControlUnit|funct7~0_combout\,
	devoe => ww_devoe,
	o => \funct7~output_o\);

-- Location: IOIBUF_X26_Y0_N8
\BrUn~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_BrUn,
	o => \BrUn~input_o\);

-- Location: IOIBUF_X33_Y16_N22
\funct3[2]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_funct3(2),
	o => \funct3[2]~input_o\);

-- Location: IOIBUF_X26_Y0_N1
\BrEq~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_BrEq,
	o => \BrEq~input_o\);

-- Location: IOIBUF_X33_Y16_N15
\funct3[0]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_funct3(0),
	o => \funct3[0]~input_o\);

-- Location: LCCOMB_X25_Y1_N14
\ControlUnit|Mux0~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ControlUnit|Mux0~1_combout\ = (\funct3[0]~input_o\ & ((\funct3[2]~input_o\ & ((\BrUn~input_o\) # (\BrEq~input_o\))) # (!\funct3[2]~input_o\ & ((!\BrEq~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BrUn~input_o\,
	datab => \funct3[2]~input_o\,
	datac => \BrEq~input_o\,
	datad => \funct3[0]~input_o\,
	combout => \ControlUnit|Mux0~1_combout\);

-- Location: IOIBUF_X12_Y0_N8
\funct3[1]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_funct3(1),
	o => \funct3[1]~input_o\);

-- Location: IOIBUF_X29_Y0_N1
\BrLT~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_BrLT,
	o => \BrLT~input_o\);

-- Location: LCCOMB_X25_Y1_N4
\ControlUnit|Mux0~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ControlUnit|Mux0~0_combout\ = (!\funct3[0]~input_o\ & ((\funct3[2]~input_o\ & (\BrLT~input_o\)) # (!\funct3[2]~input_o\ & ((\BrEq~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \funct3[0]~input_o\,
	datab => \BrLT~input_o\,
	datac => \BrEq~input_o\,
	datad => \funct3[2]~input_o\,
	combout => \ControlUnit|Mux0~0_combout\);

-- Location: IOIBUF_X31_Y0_N1
\opcode[6]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_opcode(6),
	o => \opcode[6]~input_o\);

-- Location: IOIBUF_X10_Y0_N8
\opcode[4]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_opcode(4),
	o => \opcode[4]~input_o\);

-- Location: IOIBUF_X33_Y10_N8
\opcode[5]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_opcode(5),
	o => \opcode[5]~input_o\);

-- Location: IOIBUF_X24_Y31_N8
\opcode[1]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_opcode(1),
	o => \opcode[1]~input_o\);

-- Location: IOIBUF_X14_Y0_N8
\opcode[2]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_opcode(2),
	o => \opcode[2]~input_o\);

-- Location: IOIBUF_X8_Y0_N8
\opcode[0]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_opcode(0),
	o => \opcode[0]~input_o\);

-- Location: IOIBUF_X31_Y0_N8
\opcode[3]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_opcode(3),
	o => \opcode[3]~input_o\);

-- Location: LCCOMB_X25_Y1_N0
\ControlUnit|Decoder0~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ControlUnit|Decoder0~0_combout\ = (\opcode[1]~input_o\ & (!\opcode[2]~input_o\ & (\opcode[0]~input_o\ & !\opcode[3]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \opcode[1]~input_o\,
	datab => \opcode[2]~input_o\,
	datac => \opcode[0]~input_o\,
	datad => \opcode[3]~input_o\,
	combout => \ControlUnit|Decoder0~0_combout\);

-- Location: LCCOMB_X25_Y1_N10
\ControlUnit|Decoder0~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ControlUnit|Decoder0~1_combout\ = (\opcode[6]~input_o\ & (!\opcode[4]~input_o\ & (\opcode[5]~input_o\ & \ControlUnit|Decoder0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \opcode[6]~input_o\,
	datab => \opcode[4]~input_o\,
	datac => \opcode[5]~input_o\,
	datad => \ControlUnit|Decoder0~0_combout\,
	combout => \ControlUnit|Decoder0~1_combout\);

-- Location: LCCOMB_X26_Y1_N24
\ControlUnit|PCSel~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ControlUnit|PCSel~0_combout\ = (!\funct3[1]~input_o\ & (\ControlUnit|Decoder0~1_combout\ & ((\ControlUnit|Mux0~1_combout\) # (\ControlUnit|Mux0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ControlUnit|Mux0~1_combout\,
	datab => \funct3[1]~input_o\,
	datac => \ControlUnit|Mux0~0_combout\,
	datad => \ControlUnit|Decoder0~1_combout\,
	combout => \ControlUnit|PCSel~0_combout\);

-- Location: LCCOMB_X25_Y1_N16
\ControlUnit|Selector0~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ControlUnit|Selector0~0_combout\ = (\funct3[2]~input_o\ & (((\opcode[5]~input_o\ & \funct3[1]~input_o\)) # (!\opcode[6]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \opcode[5]~input_o\,
	datab => \funct3[1]~input_o\,
	datac => \opcode[6]~input_o\,
	datad => \funct3[2]~input_o\,
	combout => \ControlUnit|Selector0~0_combout\);

-- Location: LCCOMB_X25_Y1_N2
\ControlUnit|Selector0~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ControlUnit|Selector0~1_combout\ = (\ControlUnit|Selector0~0_combout\ & (!\opcode[4]~input_o\ & \ControlUnit|Decoder0~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ControlUnit|Selector0~0_combout\,
	datac => \opcode[4]~input_o\,
	datad => \ControlUnit|Decoder0~0_combout\,
	combout => \ControlUnit|Selector0~1_combout\);

-- Location: LCCOMB_X25_Y1_N12
\ControlUnit|WideOr0~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ControlUnit|WideOr0~0_combout\ = (\opcode[1]~input_o\ & (\opcode[0]~input_o\ & ((\opcode[4]~input_o\) # (!\opcode[5]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \opcode[1]~input_o\,
	datab => \opcode[4]~input_o\,
	datac => \opcode[5]~input_o\,
	datad => \opcode[0]~input_o\,
	combout => \ControlUnit|WideOr0~0_combout\);

-- Location: LCCOMB_X25_Y1_N6
\ControlUnit|WideOr0~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ControlUnit|WideOr0~1_combout\ = (\ControlUnit|WideOr0~0_combout\ & (!\opcode[2]~input_o\ & (!\opcode[6]~input_o\ & !\opcode[3]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ControlUnit|WideOr0~0_combout\,
	datab => \opcode[2]~input_o\,
	datac => \opcode[6]~input_o\,
	datad => \opcode[3]~input_o\,
	combout => \ControlUnit|WideOr0~1_combout\);

-- Location: LCCOMB_X25_Y1_N8
\ControlUnit|WideOr1~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ControlUnit|WideOr1~0_combout\ = (\opcode[0]~input_o\ & ((\opcode[5]~input_o\ & ((!\opcode[4]~input_o\))) # (!\opcode[5]~input_o\ & (!\opcode[6]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \opcode[6]~input_o\,
	datab => \opcode[4]~input_o\,
	datac => \opcode[5]~input_o\,
	datad => \opcode[0]~input_o\,
	combout => \ControlUnit|WideOr1~0_combout\);

-- Location: LCCOMB_X25_Y1_N26
\ControlUnit|WideOr1~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ControlUnit|WideOr1~1_combout\ = (\opcode[1]~input_o\ & (!\opcode[2]~input_o\ & (\ControlUnit|WideOr1~0_combout\ & !\opcode[3]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \opcode[1]~input_o\,
	datab => \opcode[2]~input_o\,
	datac => \ControlUnit|WideOr1~0_combout\,
	datad => \opcode[3]~input_o\,
	combout => \ControlUnit|WideOr1~1_combout\);

-- Location: LCCOMB_X25_Y1_N28
\ControlUnit|Decoder0~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ControlUnit|Decoder0~2_combout\ = (!\opcode[6]~input_o\ & (!\opcode[4]~input_o\ & (\opcode[5]~input_o\ & \ControlUnit|Decoder0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \opcode[6]~input_o\,
	datab => \opcode[4]~input_o\,
	datac => \opcode[5]~input_o\,
	datad => \ControlUnit|Decoder0~0_combout\,
	combout => \ControlUnit|Decoder0~2_combout\);

-- Location: LCCOMB_X25_Y1_N30
\ControlUnit|ALUSel[0]~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ControlUnit|ALUSel[0]~0_combout\ = (!\opcode[6]~input_o\ & (\ControlUnit|Decoder0~0_combout\ & (\opcode[4]~input_o\ & \funct3[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \opcode[6]~input_o\,
	datab => \ControlUnit|Decoder0~0_combout\,
	datac => \opcode[4]~input_o\,
	datad => \funct3[0]~input_o\,
	combout => \ControlUnit|ALUSel[0]~0_combout\);

-- Location: LCCOMB_X25_Y1_N24
\ControlUnit|ALUSel[1]~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ControlUnit|ALUSel[1]~1_combout\ = (!\opcode[6]~input_o\ & (\funct3[1]~input_o\ & (\opcode[4]~input_o\ & \ControlUnit|Decoder0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \opcode[6]~input_o\,
	datab => \funct3[1]~input_o\,
	datac => \opcode[4]~input_o\,
	datad => \ControlUnit|Decoder0~0_combout\,
	combout => \ControlUnit|ALUSel[1]~1_combout\);

-- Location: LCCOMB_X25_Y1_N18
\ControlUnit|ALUSel[2]~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ControlUnit|ALUSel[2]~2_combout\ = (!\opcode[6]~input_o\ & (\ControlUnit|Decoder0~0_combout\ & (\opcode[4]~input_o\ & \funct3[2]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \opcode[6]~input_o\,
	datab => \ControlUnit|Decoder0~0_combout\,
	datac => \opcode[4]~input_o\,
	datad => \funct3[2]~input_o\,
	combout => \ControlUnit|ALUSel[2]~2_combout\);

-- Location: LCCOMB_X25_Y1_N20
\ControlUnit|Decoder0~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ControlUnit|Decoder0~3_combout\ = (!\opcode[6]~input_o\ & (!\opcode[4]~input_o\ & (!\opcode[5]~input_o\ & \ControlUnit|Decoder0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \opcode[6]~input_o\,
	datab => \opcode[4]~input_o\,
	datac => \opcode[5]~input_o\,
	datad => \ControlUnit|Decoder0~0_combout\,
	combout => \ControlUnit|Decoder0~3_combout\);

-- Location: IOIBUF_X22_Y0_N1
\funct7_in~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_funct7_in,
	o => \funct7_in~input_o\);

-- Location: LCCOMB_X25_Y1_N22
\ControlUnit|funct7~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ControlUnit|funct7~0_combout\ = (!\opcode[6]~input_o\ & (\funct7_in~input_o\ & (\opcode[4]~input_o\ & \ControlUnit|Decoder0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \opcode[6]~input_o\,
	datab => \funct7_in~input_o\,
	datac => \opcode[4]~input_o\,
	datad => \ControlUnit|Decoder0~0_combout\,
	combout => \ControlUnit|funct7~0_combout\);

ww_PCSel <= \PCSel~output_o\;

ww_ImmSel <= \ImmSel~output_o\;

ww_RegWEn <= \RegWEn~output_o\;

ww_Asel <= \Asel~output_o\;

ww_Bsel <= \Bsel~output_o\;

ww_MemRW <= \MemRW~output_o\;

ww_ALUSel(0) <= \ALUSel[0]~output_o\;

ww_ALUSel(1) <= \ALUSel[1]~output_o\;

ww_ALUSel(2) <= \ALUSel[2]~output_o\;

ww_WBSel(0) <= \WBSel[0]~output_o\;

ww_WBSel(1) <= \WBSel[1]~output_o\;

ww_funct7 <= \funct7~output_o\;
END structure;


