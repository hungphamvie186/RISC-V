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

-- DATE "05/27/2024 21:43:44"

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

ENTITY 	alu IS
    PORT (
	funct7 : IN std_logic;
	alu_op : IN std_logic_vector(2 DOWNTO 0);
	operand_a : IN std_logic_vector(31 DOWNTO 0);
	operand_b : IN std_logic_vector(31 DOWNTO 0);
	alu_data : OUT std_logic_vector(31 DOWNTO 0)
	);
END alu;

-- Design Ports Information
-- funct7	=>  Location: PIN_H18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- alu_op[0]	=>  Location: PIN_J18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- alu_op[1]	=>  Location: PIN_D12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- alu_op[2]	=>  Location: PIN_R15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- operand_a[0]	=>  Location: PIN_V11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- operand_a[1]	=>  Location: PIN_V12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- operand_a[2]	=>  Location: PIN_T18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- operand_a[3]	=>  Location: PIN_U15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- operand_a[4]	=>  Location: PIN_N16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- operand_a[5]	=>  Location: PIN_R16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- operand_a[6]	=>  Location: PIN_U7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- operand_a[7]	=>  Location: PIN_J17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- operand_a[8]	=>  Location: PIN_V14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- operand_a[9]	=>  Location: PIN_U16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- operand_a[10]	=>  Location: PIN_D6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- operand_a[11]	=>  Location: PIN_V18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- operand_a[12]	=>  Location: PIN_U6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- operand_a[13]	=>  Location: PIN_V13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- operand_a[14]	=>  Location: PIN_L16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- operand_a[15]	=>  Location: PIN_N6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- operand_a[16]	=>  Location: PIN_A5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- operand_a[17]	=>  Location: PIN_D7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- operand_a[18]	=>  Location: PIN_T7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- operand_a[19]	=>  Location: PIN_B5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- operand_a[20]	=>  Location: PIN_T12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- operand_a[21]	=>  Location: PIN_T11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- operand_a[22]	=>  Location: PIN_B10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- operand_a[23]	=>  Location: PIN_K16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- operand_a[24]	=>  Location: PIN_M7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- operand_a[25]	=>  Location: PIN_R14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- operand_a[26]	=>  Location: PIN_D13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- operand_a[27]	=>  Location: PIN_G16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- operand_a[28]	=>  Location: PIN_U13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- operand_a[29]	=>  Location: PIN_B18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- operand_a[30]	=>  Location: PIN_F17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- operand_a[31]	=>  Location: PIN_E16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- operand_b[0]	=>  Location: PIN_D15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- operand_b[1]	=>  Location: PIN_T16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- operand_b[2]	=>  Location: PIN_N5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- operand_b[3]	=>  Location: PIN_F16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- operand_b[4]	=>  Location: PIN_C14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- operand_b[5]	=>  Location: PIN_A16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- operand_b[6]	=>  Location: PIN_D8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- operand_b[7]	=>  Location: PIN_B7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- operand_b[8]	=>  Location: PIN_A11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- operand_b[9]	=>  Location: PIN_C15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- operand_b[10]	=>  Location: PIN_C12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- operand_b[11]	=>  Location: PIN_A9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- operand_b[12]	=>  Location: PIN_V5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- operand_b[13]	=>  Location: PIN_A14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- operand_b[14]	=>  Location: PIN_M16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- operand_b[15]	=>  Location: PIN_B9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- operand_b[16]	=>  Location: PIN_V16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- operand_b[17]	=>  Location: PIN_T17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- operand_b[18]	=>  Location: PIN_N18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- operand_b[19]	=>  Location: PIN_D10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- operand_b[20]	=>  Location: PIN_E10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- operand_b[21]	=>  Location: PIN_A12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- operand_b[22]	=>  Location: PIN_B12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- operand_b[23]	=>  Location: PIN_P16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- operand_b[24]	=>  Location: PIN_D11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- operand_b[25]	=>  Location: PIN_A15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- operand_b[26]	=>  Location: PIN_A10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- operand_b[27]	=>  Location: PIN_G15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- operand_b[28]	=>  Location: PIN_N17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- operand_b[29]	=>  Location: PIN_A13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- operand_b[30]	=>  Location: PIN_C9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- operand_b[31]	=>  Location: PIN_D9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- alu_data[0]	=>  Location: PIN_N15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- alu_data[1]	=>  Location: PIN_U12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- alu_data[2]	=>  Location: PIN_C18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- alu_data[3]	=>  Location: PIN_E6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- alu_data[4]	=>  Location: PIN_G17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- alu_data[5]	=>  Location: PIN_A17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- alu_data[6]	=>  Location: PIN_V15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- alu_data[7]	=>  Location: PIN_R13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- alu_data[8]	=>  Location: PIN_L15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- alu_data[9]	=>  Location: PIN_M17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- alu_data[10]	=>  Location: PIN_C11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- alu_data[11]	=>  Location: PIN_D17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- alu_data[12]	=>  Location: PIN_V7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- alu_data[13]	=>  Location: PIN_C10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- alu_data[14]	=>  Location: PIN_K15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- alu_data[15]	=>  Location: PIN_B16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- alu_data[16]	=>  Location: PIN_M18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- alu_data[17]	=>  Location: PIN_U10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- alu_data[18]	=>  Location: PIN_C13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- alu_data[19]	=>  Location: PIN_J16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- alu_data[20]	=>  Location: PIN_G18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- alu_data[21]	=>  Location: PIN_T14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- alu_data[22]	=>  Location: PIN_P15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- alu_data[23]	=>  Location: PIN_C8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- alu_data[24]	=>  Location: PIN_H16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- alu_data[25]	=>  Location: PIN_E18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- alu_data[26]	=>  Location: PIN_C7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- alu_data[27]	=>  Location: PIN_D18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- alu_data[28]	=>  Location: PIN_U9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- alu_data[29]	=>  Location: PIN_V8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- alu_data[30]	=>  Location: PIN_A18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- alu_data[31]	=>  Location: PIN_E15,	 I/O Standard: 2.5 V,	 Current Strength: Default


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
SIGNAL ww_funct7 : std_logic;
SIGNAL ww_alu_op : std_logic_vector(2 DOWNTO 0);
SIGNAL ww_operand_a : std_logic_vector(31 DOWNTO 0);
SIGNAL ww_operand_b : std_logic_vector(31 DOWNTO 0);
SIGNAL ww_alu_data : std_logic_vector(31 DOWNTO 0);
SIGNAL \funct7~input_o\ : std_logic;
SIGNAL \alu_op[0]~input_o\ : std_logic;
SIGNAL \alu_op[1]~input_o\ : std_logic;
SIGNAL \alu_op[2]~input_o\ : std_logic;
SIGNAL \operand_a[0]~input_o\ : std_logic;
SIGNAL \operand_a[1]~input_o\ : std_logic;
SIGNAL \operand_a[2]~input_o\ : std_logic;
SIGNAL \operand_a[3]~input_o\ : std_logic;
SIGNAL \operand_a[4]~input_o\ : std_logic;
SIGNAL \operand_a[5]~input_o\ : std_logic;
SIGNAL \operand_a[6]~input_o\ : std_logic;
SIGNAL \operand_a[7]~input_o\ : std_logic;
SIGNAL \operand_a[8]~input_o\ : std_logic;
SIGNAL \operand_a[9]~input_o\ : std_logic;
SIGNAL \operand_a[10]~input_o\ : std_logic;
SIGNAL \operand_a[11]~input_o\ : std_logic;
SIGNAL \operand_a[12]~input_o\ : std_logic;
SIGNAL \operand_a[13]~input_o\ : std_logic;
SIGNAL \operand_a[14]~input_o\ : std_logic;
SIGNAL \operand_a[15]~input_o\ : std_logic;
SIGNAL \operand_a[16]~input_o\ : std_logic;
SIGNAL \operand_a[17]~input_o\ : std_logic;
SIGNAL \operand_a[18]~input_o\ : std_logic;
SIGNAL \operand_a[19]~input_o\ : std_logic;
SIGNAL \operand_a[20]~input_o\ : std_logic;
SIGNAL \operand_a[21]~input_o\ : std_logic;
SIGNAL \operand_a[22]~input_o\ : std_logic;
SIGNAL \operand_a[23]~input_o\ : std_logic;
SIGNAL \operand_a[24]~input_o\ : std_logic;
SIGNAL \operand_a[25]~input_o\ : std_logic;
SIGNAL \operand_a[26]~input_o\ : std_logic;
SIGNAL \operand_a[27]~input_o\ : std_logic;
SIGNAL \operand_a[28]~input_o\ : std_logic;
SIGNAL \operand_a[29]~input_o\ : std_logic;
SIGNAL \operand_a[30]~input_o\ : std_logic;
SIGNAL \operand_a[31]~input_o\ : std_logic;
SIGNAL \operand_b[0]~input_o\ : std_logic;
SIGNAL \operand_b[1]~input_o\ : std_logic;
SIGNAL \operand_b[2]~input_o\ : std_logic;
SIGNAL \operand_b[3]~input_o\ : std_logic;
SIGNAL \operand_b[4]~input_o\ : std_logic;
SIGNAL \operand_b[5]~input_o\ : std_logic;
SIGNAL \operand_b[6]~input_o\ : std_logic;
SIGNAL \operand_b[7]~input_o\ : std_logic;
SIGNAL \operand_b[8]~input_o\ : std_logic;
SIGNAL \operand_b[9]~input_o\ : std_logic;
SIGNAL \operand_b[10]~input_o\ : std_logic;
SIGNAL \operand_b[11]~input_o\ : std_logic;
SIGNAL \operand_b[12]~input_o\ : std_logic;
SIGNAL \operand_b[13]~input_o\ : std_logic;
SIGNAL \operand_b[14]~input_o\ : std_logic;
SIGNAL \operand_b[15]~input_o\ : std_logic;
SIGNAL \operand_b[16]~input_o\ : std_logic;
SIGNAL \operand_b[17]~input_o\ : std_logic;
SIGNAL \operand_b[18]~input_o\ : std_logic;
SIGNAL \operand_b[19]~input_o\ : std_logic;
SIGNAL \operand_b[20]~input_o\ : std_logic;
SIGNAL \operand_b[21]~input_o\ : std_logic;
SIGNAL \operand_b[22]~input_o\ : std_logic;
SIGNAL \operand_b[23]~input_o\ : std_logic;
SIGNAL \operand_b[24]~input_o\ : std_logic;
SIGNAL \operand_b[25]~input_o\ : std_logic;
SIGNAL \operand_b[26]~input_o\ : std_logic;
SIGNAL \operand_b[27]~input_o\ : std_logic;
SIGNAL \operand_b[28]~input_o\ : std_logic;
SIGNAL \operand_b[29]~input_o\ : std_logic;
SIGNAL \operand_b[30]~input_o\ : std_logic;
SIGNAL \operand_b[31]~input_o\ : std_logic;
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

BEGIN

ww_funct7 <= funct7;
ww_alu_op <= alu_op;
ww_operand_a <= operand_a;
ww_operand_b <= operand_b;
alu_data <= ww_alu_data;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

-- Location: IOOBUF_X52_Y9_N9
\alu_data[0]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \alu_data[0]~output_o\);

-- Location: IOOBUF_X31_Y0_N2
\alu_data[1]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \alu_data[1]~output_o\);

-- Location: IOOBUF_X50_Y41_N2
\alu_data[2]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \alu_data[2]~output_o\);

-- Location: IOOBUF_X3_Y41_N2
\alu_data[3]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \alu_data[3]~output_o\);

-- Location: IOOBUF_X52_Y27_N9
\alu_data[4]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \alu_data[4]~output_o\);

-- Location: IOOBUF_X46_Y41_N16
\alu_data[5]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \alu_data[5]~output_o\);

-- Location: IOOBUF_X34_Y0_N2
\alu_data[6]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \alu_data[6]~output_o\);

-- Location: IOOBUF_X36_Y0_N2
\alu_data[7]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \alu_data[7]~output_o\);

-- Location: IOOBUF_X52_Y13_N2
\alu_data[8]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \alu_data[8]~output_o\);

-- Location: IOOBUF_X52_Y15_N9
\alu_data[9]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \alu_data[9]~output_o\);

-- Location: IOOBUF_X25_Y41_N9
\alu_data[10]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \alu_data[10]~output_o\);

-- Location: IOOBUF_X52_Y31_N2
\alu_data[11]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \alu_data[11]~output_o\);

-- Location: IOOBUF_X12_Y0_N2
\alu_data[12]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \alu_data[12]~output_o\);

-- Location: IOOBUF_X25_Y41_N2
\alu_data[13]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \alu_data[13]~output_o\);

-- Location: IOOBUF_X52_Y18_N2
\alu_data[14]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \alu_data[14]~output_o\);

-- Location: IOOBUF_X38_Y41_N9
\alu_data[15]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \alu_data[15]~output_o\);

-- Location: IOOBUF_X52_Y19_N2
\alu_data[16]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \alu_data[16]~output_o\);

-- Location: IOOBUF_X23_Y0_N2
\alu_data[17]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \alu_data[17]~output_o\);

-- Location: IOOBUF_X36_Y41_N9
\alu_data[18]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \alu_data[18]~output_o\);

-- Location: IOOBUF_X52_Y23_N2
\alu_data[19]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \alu_data[19]~output_o\);

-- Location: IOOBUF_X52_Y25_N9
\alu_data[20]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \alu_data[20]~output_o\);

-- Location: IOOBUF_X41_Y0_N16
\alu_data[21]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \alu_data[21]~output_o\);

-- Location: IOOBUF_X50_Y0_N9
\alu_data[22]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \alu_data[22]~output_o\);

-- Location: IOOBUF_X14_Y41_N9
\alu_data[23]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \alu_data[23]~output_o\);

-- Location: IOOBUF_X52_Y28_N2
\alu_data[24]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \alu_data[24]~output_o\);

-- Location: IOOBUF_X52_Y30_N9
\alu_data[25]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \alu_data[25]~output_o\);

-- Location: IOOBUF_X10_Y41_N2
\alu_data[26]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \alu_data[26]~output_o\);

-- Location: IOOBUF_X52_Y31_N9
\alu_data[27]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \alu_data[27]~output_o\);

-- Location: IOOBUF_X16_Y0_N9
\alu_data[28]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \alu_data[28]~output_o\);

-- Location: IOOBUF_X16_Y0_N2
\alu_data[29]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \alu_data[29]~output_o\);

-- Location: IOOBUF_X46_Y41_N23
\alu_data[30]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \alu_data[30]~output_o\);

-- Location: IOOBUF_X52_Y32_N9
\alu_data[31]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \alu_data[31]~output_o\);

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

-- Location: IOIBUF_X52_Y21_N1
\alu_op[0]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_alu_op(0),
	o => \alu_op[0]~input_o\);

-- Location: IOIBUF_X31_Y41_N8
\alu_op[1]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_alu_op(1),
	o => \alu_op[1]~input_o\);

-- Location: IOIBUF_X50_Y0_N1
\alu_op[2]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_alu_op(2),
	o => \alu_op[2]~input_o\);

-- Location: IOIBUF_X27_Y0_N8
\operand_a[0]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_operand_a(0),
	o => \operand_a[0]~input_o\);

-- Location: IOIBUF_X27_Y0_N1
\operand_a[1]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_operand_a(1),
	o => \operand_a[1]~input_o\);

-- Location: IOIBUF_X52_Y11_N8
\operand_a[2]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_operand_a(2),
	o => \operand_a[2]~input_o\);

-- Location: IOIBUF_X41_Y0_N8
\operand_a[3]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_operand_a(3),
	o => \operand_a[3]~input_o\);

-- Location: IOIBUF_X52_Y9_N1
\operand_a[4]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_operand_a(4),
	o => \operand_a[4]~input_o\);

-- Location: IOIBUF_X52_Y10_N1
\operand_a[5]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_operand_a(5),
	o => \operand_a[5]~input_o\);

-- Location: IOIBUF_X12_Y0_N8
\operand_a[6]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_operand_a(6),
	o => \operand_a[6]~input_o\);

-- Location: IOIBUF_X52_Y23_N8
\operand_a[7]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_operand_a(7),
	o => \operand_a[7]~input_o\);

-- Location: IOIBUF_X34_Y0_N8
\operand_a[8]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_operand_a(8),
	o => \operand_a[8]~input_o\);

-- Location: IOIBUF_X41_Y0_N1
\operand_a[9]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_operand_a(9),
	o => \operand_a[9]~input_o\);

-- Location: IOIBUF_X7_Y41_N22
\operand_a[10]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_operand_a(10),
	o => \operand_a[10]~input_o\);

-- Location: IOIBUF_X46_Y0_N15
\operand_a[11]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_operand_a(11),
	o => \operand_a[11]~input_o\);

-- Location: IOIBUF_X5_Y0_N1
\operand_a[12]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_operand_a(12),
	o => \operand_a[12]~input_o\);

-- Location: IOIBUF_X29_Y0_N1
\operand_a[13]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_operand_a(13),
	o => \operand_a[13]~input_o\);

-- Location: IOIBUF_X52_Y13_N8
\operand_a[14]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_operand_a(14),
	o => \operand_a[14]~input_o\);

-- Location: IOIBUF_X1_Y0_N1
\operand_a[15]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_operand_a(15),
	o => \operand_a[15]~input_o\);

-- Location: IOIBUF_X5_Y41_N1
\operand_a[16]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_operand_a(16),
	o => \operand_a[16]~input_o\);

-- Location: IOIBUF_X10_Y41_N8
\operand_a[17]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_operand_a(17),
	o => \operand_a[17]~input_o\);

-- Location: IOIBUF_X7_Y0_N1
\operand_a[18]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_operand_a(18),
	o => \operand_a[18]~input_o\);

-- Location: IOIBUF_X5_Y41_N8
\operand_a[19]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_operand_a(19),
	o => \operand_a[19]~input_o\);

-- Location: IOIBUF_X31_Y0_N8
\operand_a[20]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_operand_a(20),
	o => \operand_a[20]~input_o\);

-- Location: IOIBUF_X31_Y0_N15
\operand_a[21]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_operand_a(21),
	o => \operand_a[21]~input_o\);

-- Location: IOIBUF_X21_Y41_N8
\operand_a[22]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_operand_a(22),
	o => \operand_a[22]~input_o\);

-- Location: IOIBUF_X52_Y18_N8
\operand_a[23]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_operand_a(23),
	o => \operand_a[23]~input_o\);

-- Location: IOIBUF_X10_Y0_N8
\operand_a[24]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_operand_a(24),
	o => \operand_a[24]~input_o\);

-- Location: IOIBUF_X48_Y0_N8
\operand_a[25]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_operand_a(25),
	o => \operand_a[25]~input_o\);

-- Location: IOIBUF_X41_Y41_N15
\operand_a[26]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_operand_a(26),
	o => \operand_a[26]~input_o\);

-- Location: IOIBUF_X52_Y27_N1
\operand_a[27]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_operand_a(27),
	o => \operand_a[27]~input_o\);

-- Location: IOIBUF_X29_Y0_N8
\operand_a[28]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_operand_a(28),
	o => \operand_a[28]~input_o\);

-- Location: IOIBUF_X50_Y41_N8
\operand_a[29]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_operand_a(29),
	o => \operand_a[29]~input_o\);

-- Location: IOIBUF_X52_Y25_N1
\operand_a[30]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_operand_a(30),
	o => \operand_a[30]~input_o\);

-- Location: IOIBUF_X52_Y32_N22
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
\operand_b[0]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_operand_b(0),
	o => \operand_b[0]~input_o\);

-- Location: IOIBUF_X46_Y0_N8
\operand_b[1]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_operand_b(1),
	o => \operand_b[1]~input_o\);

-- Location: IOIBUF_X1_Y0_N8
\operand_b[2]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_operand_b(2),
	o => \operand_b[2]~input_o\);

-- Location: IOIBUF_X52_Y32_N15
\operand_b[3]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_operand_b(3),
	o => \operand_b[3]~input_o\);

-- Location: IOIBUF_X43_Y41_N1
\operand_b[4]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_operand_b(4),
	o => \operand_b[4]~input_o\);

-- Location: IOIBUF_X38_Y41_N1
\operand_b[5]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_operand_b(5),
	o => \operand_b[5]~input_o\);

-- Location: IOIBUF_X14_Y41_N1
\operand_b[6]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_operand_b(6),
	o => \operand_b[6]~input_o\);

-- Location: IOIBUF_X12_Y41_N8
\operand_b[7]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_operand_b(7),
	o => \operand_b[7]~input_o\);

-- Location: IOIBUF_X23_Y41_N8
\operand_b[8]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_operand_b(8),
	o => \operand_b[8]~input_o\);

-- Location: IOIBUF_X41_Y41_N8
\operand_b[9]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_operand_b(9),
	o => \operand_b[9]~input_o\);

-- Location: IOIBUF_X36_Y41_N1
\operand_b[10]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_operand_b(10),
	o => \operand_b[10]~input_o\);

-- Location: IOIBUF_X16_Y41_N8
\operand_b[11]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_operand_b(11),
	o => \operand_b[11]~input_o\);

-- Location: IOIBUF_X7_Y0_N22
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
\operand_b[13]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_operand_b(13),
	o => \operand_b[13]~input_o\);

-- Location: IOIBUF_X52_Y15_N1
\operand_b[14]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_operand_b(14),
	o => \operand_b[14]~input_o\);

-- Location: IOIBUF_X21_Y41_N1
\operand_b[15]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_operand_b(15),
	o => \operand_b[15]~input_o\);

-- Location: IOIBUF_X43_Y0_N8
\operand_b[16]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_operand_b(16),
	o => \operand_b[16]~input_o\);

-- Location: IOIBUF_X46_Y0_N1
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
\operand_b[18]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_operand_b(18),
	o => \operand_b[18]~input_o\);

-- Location: IOIBUF_X29_Y41_N1
\operand_b[19]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_operand_b(19),
	o => \operand_b[19]~input_o\);

-- Location: IOIBUF_X29_Y41_N8
\operand_b[20]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_operand_b(20),
	o => \operand_b[20]~input_o\);

-- Location: IOIBUF_X27_Y41_N1
\operand_b[21]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_operand_b(21),
	o => \operand_b[21]~input_o\);

-- Location: IOIBUF_X27_Y41_N8
\operand_b[22]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_operand_b(22),
	o => \operand_b[22]~input_o\);

-- Location: IOIBUF_X52_Y10_N8
\operand_b[23]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_operand_b(23),
	o => \operand_b[23]~input_o\);

-- Location: IOIBUF_X31_Y41_N1
\operand_b[24]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_operand_b(24),
	o => \operand_b[24]~input_o\);

-- Location: IOIBUF_X34_Y41_N8
\operand_b[25]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_operand_b(25),
	o => \operand_b[25]~input_o\);

-- Location: IOIBUF_X23_Y41_N1
\operand_b[26]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_operand_b(26),
	o => \operand_b[26]~input_o\);

-- Location: IOIBUF_X52_Y28_N8
\operand_b[27]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_operand_b(27),
	o => \operand_b[27]~input_o\);

-- Location: IOIBUF_X52_Y16_N1
\operand_b[28]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_operand_b(28),
	o => \operand_b[28]~input_o\);

-- Location: IOIBUF_X31_Y41_N15
\operand_b[29]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_operand_b(29),
	o => \operand_b[29]~input_o\);

-- Location: IOIBUF_X18_Y41_N1
\operand_b[30]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_operand_b(30),
	o => \operand_b[30]~input_o\);

-- Location: IOIBUF_X18_Y41_N8
\operand_b[31]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_operand_b(31),
	o => \operand_b[31]~input_o\);

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


