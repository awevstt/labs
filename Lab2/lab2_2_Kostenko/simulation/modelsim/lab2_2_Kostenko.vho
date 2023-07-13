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
-- VERSION "Version 13.0.1 Build 232 06/12/2013 Service Pack 1 SJ Web Edition"

-- DATE "05/11/2023 09:14:02"

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

ENTITY 	lab2_2_Kostenko IS
    PORT (
	x1 : IN std_logic;
	x2 : IN std_logic;
	x3 : IN std_logic;
	x4 : IN std_logic;
	x5 : IN std_logic;
	y : OUT std_logic
	);
END lab2_2_Kostenko;

-- Design Ports Information
-- y	=>  Location: PIN_L4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- x5	=>  Location: PIN_A6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- x4	=>  Location: PIN_M4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- x3	=>  Location: PIN_N4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- x1	=>  Location: PIN_M6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- x2	=>  Location: PIN_N6,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF lab2_2_Kostenko IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_x1 : std_logic;
SIGNAL ww_x2 : std_logic;
SIGNAL ww_x3 : std_logic;
SIGNAL ww_x4 : std_logic;
SIGNAL ww_x5 : std_logic;
SIGNAL ww_y : std_logic;
SIGNAL \y~output_o\ : std_logic;
SIGNAL \x3~input_o\ : std_logic;
SIGNAL \x2~input_o\ : std_logic;
SIGNAL \x1~input_o\ : std_logic;
SIGNAL \x4~input_o\ : std_logic;
SIGNAL \x5~input_o\ : std_logic;
SIGNAL \y~0_combout\ : std_logic;
SIGNAL \y~1_combout\ : std_logic;
SIGNAL \ALT_INV_y~1_combout\ : std_logic;

BEGIN

ww_x1 <= x1;
ww_x2 <= x2;
ww_x3 <= x3;
ww_x4 <= x4;
ww_x5 <= x5;
y <= ww_y;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\ALT_INV_y~1_combout\ <= NOT \y~1_combout\;

-- Location: IOOBUF_X8_Y0_N9
\y~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_y~1_combout\,
	devoe => ww_devoe,
	o => \y~output_o\);

-- Location: IOIBUF_X10_Y0_N8
\x3~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_x3,
	o => \x3~input_o\);

-- Location: IOIBUF_X12_Y0_N1
\x2~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_x2,
	o => \x2~input_o\);

-- Location: IOIBUF_X12_Y0_N8
\x1~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_x1,
	o => \x1~input_o\);

-- Location: IOIBUF_X8_Y0_N1
\x4~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_x4,
	o => \x4~input_o\);

-- Location: IOIBUF_X10_Y31_N1
\x5~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_x5,
	o => \x5~input_o\);

-- Location: LCCOMB_X10_Y1_N0
\y~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \y~0_combout\ = (!\x3~input_o\ & ((\x5~input_o\) # (!\x4~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \x3~input_o\,
	datab => \x4~input_o\,
	datad => \x5~input_o\,
	combout => \y~0_combout\);

-- Location: LCCOMB_X10_Y1_N2
\y~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \y~1_combout\ = (\y~0_combout\) # ((\x3~input_o\ & ((!\x1~input_o\) # (!\x2~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \x3~input_o\,
	datab => \x2~input_o\,
	datac => \x1~input_o\,
	datad => \y~0_combout\,
	combout => \y~1_combout\);

ww_y <= \y~output_o\;
END structure;


