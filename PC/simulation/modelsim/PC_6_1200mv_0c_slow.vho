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

-- DATE "04/25/2024 09:40:09"

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
	cur_pc : BUFFER std_logic_vector(31 DOWNTO 0);
	nextpc : BUFFER std_logic_vector(31 DOWNTO 0)
	);
END PC;

-- Design Ports Information
-- cur_pc[0]	=>  Location: PIN_D8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- cur_pc[1]	=>  Location: PIN_P13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- cur_pc[2]	=>  Location: PIN_G16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- cur_pc[3]	=>  Location: PIN_B7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- cur_pc[4]	=>  Location: PIN_D16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- cur_pc[5]	=>  Location: PIN_D6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- cur_pc[6]	=>  Location: PIN_U13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- cur_pc[7]	=>  Location: PIN_U6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- cur_pc[8]	=>  Location: PIN_A18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- cur_pc[9]	=>  Location: PIN_T17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- cur_pc[10]	=>  Location: PIN_T13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- cur_pc[11]	=>  Location: PIN_A17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- cur_pc[12]	=>  Location: PIN_U16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- cur_pc[13]	=>  Location: PIN_C15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- cur_pc[14]	=>  Location: PIN_R8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- cur_pc[15]	=>  Location: PIN_U12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- cur_pc[16]	=>  Location: PIN_U9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- cur_pc[17]	=>  Location: PIN_M16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- cur_pc[18]	=>  Location: PIN_B10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- cur_pc[19]	=>  Location: PIN_N16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- cur_pc[20]	=>  Location: PIN_T10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- cur_pc[21]	=>  Location: PIN_A10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- cur_pc[22]	=>  Location: PIN_A11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- cur_pc[23]	=>  Location: PIN_D14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- cur_pc[24]	=>  Location: PIN_D15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- cur_pc[25]	=>  Location: PIN_P6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- cur_pc[26]	=>  Location: PIN_C6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- cur_pc[27]	=>  Location: PIN_T12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- cur_pc[28]	=>  Location: PIN_R9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- cur_pc[29]	=>  Location: PIN_C14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- cur_pc[30]	=>  Location: PIN_A14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- cur_pc[31]	=>  Location: PIN_U15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- nextpc[0]	=>  Location: PIN_C8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- nextpc[1]	=>  Location: PIN_B15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- nextpc[2]	=>  Location: PIN_V18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- nextpc[3]	=>  Location: PIN_N15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- nextpc[4]	=>  Location: PIN_M7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- nextpc[5]	=>  Location: PIN_T9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- nextpc[6]	=>  Location: PIN_F18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- nextpc[7]	=>  Location: PIN_B6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- nextpc[8]	=>  Location: PIN_A6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- nextpc[9]	=>  Location: PIN_D7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- nextpc[10]	=>  Location: PIN_A13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- nextpc[11]	=>  Location: PIN_R11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- nextpc[12]	=>  Location: PIN_T6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- nextpc[13]	=>  Location: PIN_N5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- nextpc[14]	=>  Location: PIN_B18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- nextpc[15]	=>  Location: PIN_P12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- nextpc[16]	=>  Location: PIN_U18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- nextpc[17]	=>  Location: PIN_T14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- nextpc[18]	=>  Location: PIN_E12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- nextpc[19]	=>  Location: PIN_B9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- nextpc[20]	=>  Location: PIN_P10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- nextpc[21]	=>  Location: PIN_T16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- nextpc[22]	=>  Location: PIN_C13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- nextpc[23]	=>  Location: PIN_V5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- nextpc[24]	=>  Location: PIN_B16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- nextpc[25]	=>  Location: PIN_R7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- nextpc[26]	=>  Location: PIN_T11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- nextpc[27]	=>  Location: PIN_C17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- nextpc[28]	=>  Location: PIN_V13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- nextpc[29]	=>  Location: PIN_C16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- nextpc[30]	=>  Location: PIN_C10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- nextpc[31]	=>  Location: PIN_R13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Stop_en	=>  Location: PIN_A8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rst	=>  Location: PIN_A7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk	=>  Location: PIN_A9,	 I/O Standard: 2.5 V,	 Current Strength: Default


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
SIGNAL ww_cur_pc : std_logic_vector(31 DOWNTO 0);
SIGNAL ww_nextpc : std_logic_vector(31 DOWNTO 0);
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
SIGNAL \rst~input_o\ : std_logic;
SIGNAL \Stop_en~input_o\ : std_logic;
SIGNAL \PC_register|Q~0_combout\ : std_logic;
SIGNAL \PC_MUX|next_pc[0]~0_combout\ : std_logic;
SIGNAL \PC_register|Q\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \PC_MUX|ALT_INV_next_pc[0]~0_combout\ : std_logic;

BEGIN

ww_rst <= rst;
ww_clk <= clk;
ww_Stop_en <= Stop_en;
cur_pc <= ww_cur_pc;
nextpc <= ww_nextpc;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\PC_MUX|ALT_INV_next_pc[0]~0_combout\ <= NOT \PC_MUX|next_pc[0]~0_combout\;

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

-- Location: IOOBUF_X38_Y0_N2
\cur_pc[1]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \cur_pc[1]~output_o\);

-- Location: IOOBUF_X52_Y27_N2
\cur_pc[2]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \cur_pc[2]~output_o\);

-- Location: IOOBUF_X12_Y41_N9
\cur_pc[3]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \cur_pc[3]~output_o\);

-- Location: IOOBUF_X46_Y41_N9
\cur_pc[4]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \cur_pc[4]~output_o\);

-- Location: IOOBUF_X7_Y41_N23
\cur_pc[5]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \cur_pc[5]~output_o\);

-- Location: IOOBUF_X29_Y0_N9
\cur_pc[6]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \cur_pc[6]~output_o\);

-- Location: IOOBUF_X5_Y0_N2
\cur_pc[7]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \cur_pc[7]~output_o\);

-- Location: IOOBUF_X46_Y41_N23
\cur_pc[8]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \cur_pc[8]~output_o\);

-- Location: IOOBUF_X46_Y0_N2
\cur_pc[9]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \cur_pc[9]~output_o\);

-- Location: IOOBUF_X41_Y0_N23
\cur_pc[10]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \cur_pc[10]~output_o\);

-- Location: IOOBUF_X46_Y41_N16
\cur_pc[11]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \cur_pc[11]~output_o\);

-- Location: IOOBUF_X41_Y0_N2
\cur_pc[12]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \cur_pc[12]~output_o\);

-- Location: IOOBUF_X41_Y41_N9
\cur_pc[13]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \cur_pc[13]~output_o\);

-- Location: IOOBUF_X14_Y0_N2
\cur_pc[14]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \cur_pc[14]~output_o\);

-- Location: IOOBUF_X31_Y0_N2
\cur_pc[15]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \cur_pc[15]~output_o\);

-- Location: IOOBUF_X16_Y0_N9
\cur_pc[16]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \cur_pc[16]~output_o\);

-- Location: IOOBUF_X52_Y15_N2
\cur_pc[17]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \cur_pc[17]~output_o\);

-- Location: IOOBUF_X21_Y41_N9
\cur_pc[18]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \cur_pc[18]~output_o\);

-- Location: IOOBUF_X52_Y9_N2
\cur_pc[19]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \cur_pc[19]~output_o\);

-- Location: IOOBUF_X23_Y0_N9
\cur_pc[20]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \cur_pc[20]~output_o\);

-- Location: IOOBUF_X23_Y41_N2
\cur_pc[21]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \cur_pc[21]~output_o\);

-- Location: IOOBUF_X23_Y41_N9
\cur_pc[22]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \cur_pc[22]~output_o\);

-- Location: IOOBUF_X43_Y41_N9
\cur_pc[23]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \cur_pc[23]~output_o\);

-- Location: IOOBUF_X46_Y41_N2
\cur_pc[24]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \cur_pc[24]~output_o\);

-- Location: IOOBUF_X3_Y0_N9
\cur_pc[25]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \cur_pc[25]~output_o\);

-- Location: IOOBUF_X7_Y41_N16
\cur_pc[26]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \cur_pc[26]~output_o\);

-- Location: IOOBUF_X31_Y0_N9
\cur_pc[27]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \cur_pc[27]~output_o\);

-- Location: IOOBUF_X18_Y0_N9
\cur_pc[28]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \cur_pc[28]~output_o\);

-- Location: IOOBUF_X43_Y41_N2
\cur_pc[29]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \cur_pc[29]~output_o\);

-- Location: IOOBUF_X34_Y41_N2
\cur_pc[30]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \cur_pc[30]~output_o\);

-- Location: IOOBUF_X41_Y0_N9
\cur_pc[31]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \cur_pc[31]~output_o\);

-- Location: IOOBUF_X14_Y41_N9
\nextpc[0]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \PC_MUX|ALT_INV_next_pc[0]~0_combout\,
	devoe => ww_devoe,
	o => \nextpc[0]~output_o\);

-- Location: IOOBUF_X41_Y41_N2
\nextpc[1]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \nextpc[1]~output_o\);

-- Location: IOOBUF_X46_Y0_N16
\nextpc[2]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \nextpc[2]~output_o\);

-- Location: IOOBUF_X52_Y9_N9
\nextpc[3]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \nextpc[3]~output_o\);

-- Location: IOOBUF_X10_Y0_N9
\nextpc[4]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \nextpc[4]~output_o\);

-- Location: IOOBUF_X18_Y0_N2
\nextpc[5]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \nextpc[5]~output_o\);

-- Location: IOOBUF_X52_Y30_N2
\nextpc[6]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \nextpc[6]~output_o\);

-- Location: IOOBUF_X7_Y41_N9
\nextpc[7]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \nextpc[7]~output_o\);

-- Location: IOOBUF_X7_Y41_N2
\nextpc[8]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \nextpc[8]~output_o\);

-- Location: IOOBUF_X10_Y41_N9
\nextpc[9]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \nextpc[9]~output_o\);

-- Location: IOOBUF_X31_Y41_N16
\nextpc[10]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \nextpc[10]~output_o\);

-- Location: IOOBUF_X31_Y0_N23
\nextpc[11]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \nextpc[11]~output_o\);

-- Location: IOOBUF_X5_Y0_N9
\nextpc[12]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \nextpc[12]~output_o\);

-- Location: IOOBUF_X1_Y0_N9
\nextpc[13]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \nextpc[13]~output_o\);

-- Location: IOOBUF_X50_Y41_N9
\nextpc[14]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \nextpc[14]~output_o\);

-- Location: IOOBUF_X38_Y0_N9
\nextpc[15]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \nextpc[15]~output_o\);

-- Location: IOOBUF_X46_Y0_N23
\nextpc[16]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \nextpc[16]~output_o\);

-- Location: IOOBUF_X41_Y0_N16
\nextpc[17]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \nextpc[17]~output_o\);

-- Location: IOOBUF_X41_Y41_N23
\nextpc[18]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \nextpc[18]~output_o\);

-- Location: IOOBUF_X21_Y41_N2
\nextpc[19]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \nextpc[19]~output_o\);

-- Location: IOOBUF_X25_Y0_N9
\nextpc[20]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \nextpc[20]~output_o\);

-- Location: IOOBUF_X46_Y0_N9
\nextpc[21]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \nextpc[21]~output_o\);

-- Location: IOOBUF_X36_Y41_N9
\nextpc[22]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \nextpc[22]~output_o\);

-- Location: IOOBUF_X7_Y0_N23
\nextpc[23]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \nextpc[23]~output_o\);

-- Location: IOOBUF_X38_Y41_N9
\nextpc[24]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \nextpc[24]~output_o\);

-- Location: IOOBUF_X7_Y0_N9
\nextpc[25]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \nextpc[25]~output_o\);

-- Location: IOOBUF_X31_Y0_N16
\nextpc[26]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \nextpc[26]~output_o\);

-- Location: IOOBUF_X48_Y41_N9
\nextpc[27]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \nextpc[27]~output_o\);

-- Location: IOOBUF_X29_Y0_N2
\nextpc[28]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \nextpc[28]~output_o\);

-- Location: IOOBUF_X48_Y41_N2
\nextpc[29]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \nextpc[29]~output_o\);

-- Location: IOOBUF_X25_Y41_N2
\nextpc[30]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \nextpc[30]~output_o\);

-- Location: IOOBUF_X36_Y0_N2
\nextpc[31]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \nextpc[31]~output_o\);

-- Location: IOIBUF_X16_Y41_N8
\clk~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clk,
	o => \clk~input_o\);

-- Location: IOIBUF_X12_Y41_N1
\rst~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_rst,
	o => \rst~input_o\);

-- Location: IOIBUF_X16_Y41_N1
\Stop_en~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Stop_en,
	o => \Stop_en~input_o\);

-- Location: LCCOMB_X15_Y40_N12
\PC_register|Q~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \PC_register|Q~0_combout\ = (!\rst~input_o\ & (\PC_register|Q\(0) $ (!\Stop_en~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000000000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rst~input_o\,
	datac => \PC_register|Q\(0),
	datad => \Stop_en~input_o\,
	combout => \PC_register|Q~0_combout\);

-- Location: FF_X15_Y40_N13
\PC_register|Q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \PC_register|Q~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC_register|Q\(0));

-- Location: LCCOMB_X15_Y40_N6
\PC_MUX|next_pc[0]~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \PC_MUX|next_pc[0]~0_combout\ = \PC_register|Q\(0) $ (\Stop_en~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC_register|Q\(0),
	datad => \Stop_en~input_o\,
	combout => \PC_MUX|next_pc[0]~0_combout\);

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


