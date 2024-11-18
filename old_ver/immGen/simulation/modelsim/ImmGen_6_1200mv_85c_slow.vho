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

-- DATE "05/29/2024 20:41:23"

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

ENTITY 	ImmGen IS
    PORT (
	ImmSel : IN std_logic;
	Imm : OUT std_logic_vector(31 DOWNTO 0)
	);
END ImmGen;

-- Design Ports Information
-- Imm[0]	=>  Location: PIN_B5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Imm[1]	=>  Location: PIN_V17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Imm[2]	=>  Location: PIN_A6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Imm[3]	=>  Location: PIN_K15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Imm[4]	=>  Location: PIN_C8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Imm[5]	=>  Location: PIN_U9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Imm[6]	=>  Location: PIN_T14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Imm[7]	=>  Location: PIN_D16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Imm[8]	=>  Location: PIN_E10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Imm[9]	=>  Location: PIN_A15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Imm[10]	=>  Location: PIN_V18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Imm[11]	=>  Location: PIN_N7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Imm[12]	=>  Location: PIN_V13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Imm[13]	=>  Location: PIN_T8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Imm[14]	=>  Location: PIN_V5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Imm[15]	=>  Location: PIN_V6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Imm[16]	=>  Location: PIN_T11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Imm[17]	=>  Location: PIN_R10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Imm[18]	=>  Location: PIN_V7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Imm[19]	=>  Location: PIN_T6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Imm[20]	=>  Location: PIN_U10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Imm[21]	=>  Location: PIN_U13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Imm[22]	=>  Location: PIN_R8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Imm[23]	=>  Location: PIN_V14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Imm[24]	=>  Location: PIN_V15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Imm[25]	=>  Location: PIN_T10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Imm[26]	=>  Location: PIN_U6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Imm[27]	=>  Location: PIN_T12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Imm[28]	=>  Location: PIN_R7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Imm[29]	=>  Location: PIN_V10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Imm[30]	=>  Location: PIN_T7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Imm[31]	=>  Location: PIN_V9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- imm[0]	=>  Location: PIN_B6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- imm[1]	=>  Location: PIN_V16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- imm[2]	=>  Location: PIN_C6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- imm[3]	=>  Location: PIN_K16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- imm[4]	=>  Location: PIN_D8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- imm[5]	=>  Location: PIN_T9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- imm[6]	=>  Location: PIN_T13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- imm[7]	=>  Location: PIN_A18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- imm[8]	=>  Location: PIN_D10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- imm[9]	=>  Location: PIN_C12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- imm[10]	=>  Location: PIN_U18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- imm[11]	=>  Location: PIN_M7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ImmSel	=>  Location: PIN_U7,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF ImmGen IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_ImmSel : std_logic;
SIGNAL ww_Imm : std_logic_vector(31 DOWNTO 0);
SIGNAL \Imm[0]~output_o\ : std_logic;
SIGNAL \Imm[1]~output_o\ : std_logic;
SIGNAL \Imm[2]~output_o\ : std_logic;
SIGNAL \Imm[3]~output_o\ : std_logic;
SIGNAL \Imm[4]~output_o\ : std_logic;
SIGNAL \Imm[5]~output_o\ : std_logic;
SIGNAL \Imm[6]~output_o\ : std_logic;
SIGNAL \Imm[7]~output_o\ : std_logic;
SIGNAL \Imm[8]~output_o\ : std_logic;
SIGNAL \Imm[9]~output_o\ : std_logic;
SIGNAL \Imm[10]~output_o\ : std_logic;
SIGNAL \Imm[11]~output_o\ : std_logic;
SIGNAL \Imm[12]~output_o\ : std_logic;
SIGNAL \Imm[13]~output_o\ : std_logic;
SIGNAL \Imm[14]~output_o\ : std_logic;
SIGNAL \Imm[15]~output_o\ : std_logic;
SIGNAL \Imm[16]~output_o\ : std_logic;
SIGNAL \Imm[17]~output_o\ : std_logic;
SIGNAL \Imm[18]~output_o\ : std_logic;
SIGNAL \Imm[19]~output_o\ : std_logic;
SIGNAL \Imm[20]~output_o\ : std_logic;
SIGNAL \Imm[21]~output_o\ : std_logic;
SIGNAL \Imm[22]~output_o\ : std_logic;
SIGNAL \Imm[23]~output_o\ : std_logic;
SIGNAL \Imm[24]~output_o\ : std_logic;
SIGNAL \Imm[25]~output_o\ : std_logic;
SIGNAL \Imm[26]~output_o\ : std_logic;
SIGNAL \Imm[27]~output_o\ : std_logic;
SIGNAL \Imm[28]~output_o\ : std_logic;
SIGNAL \Imm[29]~output_o\ : std_logic;
SIGNAL \Imm[30]~output_o\ : std_logic;
SIGNAL \Imm[31]~output_o\ : std_logic;
SIGNAL \imm[0]~input_o\ : std_logic;
SIGNAL \imm[1]~input_o\ : std_logic;
SIGNAL \imm[2]~input_o\ : std_logic;
SIGNAL \imm[3]~input_o\ : std_logic;
SIGNAL \imm[4]~input_o\ : std_logic;
SIGNAL \imm[5]~input_o\ : std_logic;
SIGNAL \imm[6]~input_o\ : std_logic;
SIGNAL \imm[7]~input_o\ : std_logic;
SIGNAL \imm[8]~input_o\ : std_logic;
SIGNAL \imm[9]~input_o\ : std_logic;
SIGNAL \imm[10]~input_o\ : std_logic;
SIGNAL \imm[11]~input_o\ : std_logic;
SIGNAL \ImmSel~input_o\ : std_logic;
SIGNAL \immgen|Imm[12]~0_combout\ : std_logic;

BEGIN

ww_ImmSel <= ImmSel;
Imm <= ww_Imm;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

-- Location: IOOBUF_X5_Y41_N9
\Imm[0]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \imm[0]~input_o\,
	devoe => ww_devoe,
	o => \Imm[0]~output_o\);

-- Location: IOOBUF_X43_Y0_N2
\Imm[1]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \imm[1]~input_o\,
	devoe => ww_devoe,
	o => \Imm[1]~output_o\);

-- Location: IOOBUF_X7_Y41_N2
\Imm[2]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \imm[2]~input_o\,
	devoe => ww_devoe,
	o => \Imm[2]~output_o\);

-- Location: IOOBUF_X52_Y18_N2
\Imm[3]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \imm[3]~input_o\,
	devoe => ww_devoe,
	o => \Imm[3]~output_o\);

-- Location: IOOBUF_X14_Y41_N9
\Imm[4]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \imm[4]~input_o\,
	devoe => ww_devoe,
	o => \Imm[4]~output_o\);

-- Location: IOOBUF_X16_Y0_N9
\Imm[5]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \imm[5]~input_o\,
	devoe => ww_devoe,
	o => \Imm[5]~output_o\);

-- Location: IOOBUF_X41_Y0_N16
\Imm[6]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \imm[6]~input_o\,
	devoe => ww_devoe,
	o => \Imm[6]~output_o\);

-- Location: IOOBUF_X46_Y41_N9
\Imm[7]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \imm[7]~input_o\,
	devoe => ww_devoe,
	o => \Imm[7]~output_o\);

-- Location: IOOBUF_X29_Y41_N9
\Imm[8]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \imm[8]~input_o\,
	devoe => ww_devoe,
	o => \Imm[8]~output_o\);

-- Location: IOOBUF_X34_Y41_N9
\Imm[9]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \imm[9]~input_o\,
	devoe => ww_devoe,
	o => \Imm[9]~output_o\);

-- Location: IOOBUF_X46_Y0_N16
\Imm[10]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \imm[10]~input_o\,
	devoe => ww_devoe,
	o => \Imm[10]~output_o\);

-- Location: IOOBUF_X10_Y0_N2
\Imm[11]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \imm[11]~input_o\,
	devoe => ww_devoe,
	o => \Imm[11]~output_o\);

-- Location: IOOBUF_X29_Y0_N2
\Imm[12]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \immgen|Imm[12]~0_combout\,
	devoe => ww_devoe,
	o => \Imm[12]~output_o\);

-- Location: IOOBUF_X14_Y0_N9
\Imm[13]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \immgen|Imm[12]~0_combout\,
	devoe => ww_devoe,
	o => \Imm[13]~output_o\);

-- Location: IOOBUF_X7_Y0_N23
\Imm[14]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \immgen|Imm[12]~0_combout\,
	devoe => ww_devoe,
	o => \Imm[14]~output_o\);

-- Location: IOOBUF_X7_Y0_N16
\Imm[15]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \immgen|Imm[12]~0_combout\,
	devoe => ww_devoe,
	o => \Imm[15]~output_o\);

-- Location: IOOBUF_X31_Y0_N16
\Imm[16]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \immgen|Imm[12]~0_combout\,
	devoe => ww_devoe,
	o => \Imm[16]~output_o\);

-- Location: IOOBUF_X25_Y0_N2
\Imm[17]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \immgen|Imm[12]~0_combout\,
	devoe => ww_devoe,
	o => \Imm[17]~output_o\);

-- Location: IOOBUF_X12_Y0_N2
\Imm[18]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \immgen|Imm[12]~0_combout\,
	devoe => ww_devoe,
	o => \Imm[18]~output_o\);

-- Location: IOOBUF_X5_Y0_N9
\Imm[19]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \immgen|Imm[12]~0_combout\,
	devoe => ww_devoe,
	o => \Imm[19]~output_o\);

-- Location: IOOBUF_X23_Y0_N2
\Imm[20]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \immgen|Imm[12]~0_combout\,
	devoe => ww_devoe,
	o => \Imm[20]~output_o\);

-- Location: IOOBUF_X29_Y0_N9
\Imm[21]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \immgen|Imm[12]~0_combout\,
	devoe => ww_devoe,
	o => \Imm[21]~output_o\);

-- Location: IOOBUF_X14_Y0_N2
\Imm[22]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \immgen|Imm[12]~0_combout\,
	devoe => ww_devoe,
	o => \Imm[22]~output_o\);

-- Location: IOOBUF_X34_Y0_N9
\Imm[23]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \immgen|Imm[12]~0_combout\,
	devoe => ww_devoe,
	o => \Imm[23]~output_o\);

-- Location: IOOBUF_X34_Y0_N2
\Imm[24]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \immgen|Imm[12]~0_combout\,
	devoe => ww_devoe,
	o => \Imm[24]~output_o\);

-- Location: IOOBUF_X23_Y0_N9
\Imm[25]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \immgen|Imm[12]~0_combout\,
	devoe => ww_devoe,
	o => \Imm[25]~output_o\);

-- Location: IOOBUF_X5_Y0_N2
\Imm[26]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \immgen|Imm[12]~0_combout\,
	devoe => ww_devoe,
	o => \Imm[26]~output_o\);

-- Location: IOOBUF_X31_Y0_N9
\Imm[27]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \immgen|Imm[12]~0_combout\,
	devoe => ww_devoe,
	o => \Imm[27]~output_o\);

-- Location: IOOBUF_X7_Y0_N9
\Imm[28]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \immgen|Imm[12]~0_combout\,
	devoe => ww_devoe,
	o => \Imm[28]~output_o\);

-- Location: IOOBUF_X21_Y0_N2
\Imm[29]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \immgen|Imm[12]~0_combout\,
	devoe => ww_devoe,
	o => \Imm[29]~output_o\);

-- Location: IOOBUF_X7_Y0_N2
\Imm[30]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \immgen|Imm[12]~0_combout\,
	devoe => ww_devoe,
	o => \Imm[30]~output_o\);

-- Location: IOOBUF_X21_Y0_N9
\Imm[31]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \immgen|Imm[12]~0_combout\,
	devoe => ww_devoe,
	o => \Imm[31]~output_o\);

-- Location: IOIBUF_X7_Y41_N8
\imm[0]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Imm(0),
	o => \imm[0]~input_o\);

-- Location: IOIBUF_X43_Y0_N8
\imm[1]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Imm(1),
	o => \imm[1]~input_o\);

-- Location: IOIBUF_X7_Y41_N15
\imm[2]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Imm(2),
	o => \imm[2]~input_o\);

-- Location: IOIBUF_X52_Y18_N8
\imm[3]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Imm(3),
	o => \imm[3]~input_o\);

-- Location: IOIBUF_X14_Y41_N1
\imm[4]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Imm(4),
	o => \imm[4]~input_o\);

-- Location: IOIBUF_X18_Y0_N1
\imm[5]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Imm(5),
	o => \imm[5]~input_o\);

-- Location: IOIBUF_X41_Y0_N22
\imm[6]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Imm(6),
	o => \imm[6]~input_o\);

-- Location: IOIBUF_X46_Y41_N22
\imm[7]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Imm(7),
	o => \imm[7]~input_o\);

-- Location: IOIBUF_X29_Y41_N1
\imm[8]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Imm(8),
	o => \imm[8]~input_o\);

-- Location: IOIBUF_X36_Y41_N1
\imm[9]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Imm(9),
	o => \imm[9]~input_o\);

-- Location: IOIBUF_X46_Y0_N22
\imm[10]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Imm(10),
	o => \imm[10]~input_o\);

-- Location: IOIBUF_X10_Y0_N8
\imm[11]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Imm(11),
	o => \imm[11]~input_o\);

-- Location: IOIBUF_X12_Y0_N8
\ImmSel~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ImmSel,
	o => \ImmSel~input_o\);

-- Location: LCCOMB_X11_Y1_N24
\immgen|Imm[12]~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \immgen|Imm[12]~0_combout\ = (!\ImmSel~input_o\ & \imm[11]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ImmSel~input_o\,
	datac => \imm[11]~input_o\,
	combout => \immgen|Imm[12]~0_combout\);

ww_Imm(0) <= \Imm[0]~output_o\;

ww_Imm(1) <= \Imm[1]~output_o\;

ww_Imm(2) <= \Imm[2]~output_o\;

ww_Imm(3) <= \Imm[3]~output_o\;

ww_Imm(4) <= \Imm[4]~output_o\;

ww_Imm(5) <= \Imm[5]~output_o\;

ww_Imm(6) <= \Imm[6]~output_o\;

ww_Imm(7) <= \Imm[7]~output_o\;

ww_Imm(8) <= \Imm[8]~output_o\;

ww_Imm(9) <= \Imm[9]~output_o\;

ww_Imm(10) <= \Imm[10]~output_o\;

ww_Imm(11) <= \Imm[11]~output_o\;

ww_Imm(12) <= \Imm[12]~output_o\;

ww_Imm(13) <= \Imm[13]~output_o\;

ww_Imm(14) <= \Imm[14]~output_o\;

ww_Imm(15) <= \Imm[15]~output_o\;

ww_Imm(16) <= \Imm[16]~output_o\;

ww_Imm(17) <= \Imm[17]~output_o\;

ww_Imm(18) <= \Imm[18]~output_o\;

ww_Imm(19) <= \Imm[19]~output_o\;

ww_Imm(20) <= \Imm[20]~output_o\;

ww_Imm(21) <= \Imm[21]~output_o\;

ww_Imm(22) <= \Imm[22]~output_o\;

ww_Imm(23) <= \Imm[23]~output_o\;

ww_Imm(24) <= \Imm[24]~output_o\;

ww_Imm(25) <= \Imm[25]~output_o\;

ww_Imm(26) <= \Imm[26]~output_o\;

ww_Imm(27) <= \Imm[27]~output_o\;

ww_Imm(28) <= \Imm[28]~output_o\;

ww_Imm(29) <= \Imm[29]~output_o\;

ww_Imm(30) <= \Imm[30]~output_o\;

ww_Imm(31) <= \Imm[31]~output_o\;
END structure;


