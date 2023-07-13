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

-- DATE "06/16/2023 19:46:52"

-- 
-- Device: Altera EP4CGX15BF14C6 Package FBGA169
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

ENTITY 	lab5_3_Kostenko IS
    PORT (
	clk : IN std_logic;
	shift_en : IN std_logic;
	sLoad : IN std_logic;
	data_in : IN std_logic_vector(7 DOWNTO 0);
	data_out : OUT std_logic_vector(7 DOWNTO 0)
	);
END lab5_3_Kostenko;

-- Design Ports Information
-- data_out[0]	=>  Location: PIN_N9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_out[1]	=>  Location: PIN_K12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_out[2]	=>  Location: PIN_M9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_out[3]	=>  Location: PIN_L9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_out[4]	=>  Location: PIN_K9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_out[5]	=>  Location: PIN_M13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_out[6]	=>  Location: PIN_K11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_out[7]	=>  Location: PIN_N8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk	=>  Location: PIN_J7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_in[0]	=>  Location: PIN_F13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sLoad	=>  Location: PIN_F12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- shift_en	=>  Location: PIN_L11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_in[1]	=>  Location: PIN_N11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_in[2]	=>  Location: PIN_K8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_in[3]	=>  Location: PIN_N13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_in[4]	=>  Location: PIN_K10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_in[5]	=>  Location: PIN_N10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_in[6]	=>  Location: PIN_N12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_in[7]	=>  Location: PIN_M11,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF lab5_3_Kostenko IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_clk : std_logic;
SIGNAL ww_shift_en : std_logic;
SIGNAL ww_sLoad : std_logic;
SIGNAL ww_data_in : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_data_out : std_logic_vector(7 DOWNTO 0);
SIGNAL \clk~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \data_out[0]~output_o\ : std_logic;
SIGNAL \data_out[1]~output_o\ : std_logic;
SIGNAL \data_out[2]~output_o\ : std_logic;
SIGNAL \data_out[3]~output_o\ : std_logic;
SIGNAL \data_out[4]~output_o\ : std_logic;
SIGNAL \data_out[5]~output_o\ : std_logic;
SIGNAL \data_out[6]~output_o\ : std_logic;
SIGNAL \data_out[7]~output_o\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \clk~inputclkctrl_outclk\ : std_logic;
SIGNAL \data_in[0]~input_o\ : std_logic;
SIGNAL \sLoad~input_o\ : std_logic;
SIGNAL \reg_data_temp~0_combout\ : std_logic;
SIGNAL \t_trigger_inst:0:t_trigger_inst_i|q~0_combout\ : std_logic;
SIGNAL \t_trigger_inst:0:t_trigger_inst_i|q~q\ : std_logic;
SIGNAL \data_in[1]~input_o\ : std_logic;
SIGNAL \reg_data_temp~1_combout\ : std_logic;
SIGNAL \shift_en~input_o\ : std_logic;
SIGNAL \reg_data_temp[1]~2_combout\ : std_logic;
SIGNAL \t_trigger_inst:1:t_trigger_inst_i|q~0_combout\ : std_logic;
SIGNAL \t_trigger_inst:1:t_trigger_inst_i|q~q\ : std_logic;
SIGNAL \data_in[2]~input_o\ : std_logic;
SIGNAL \reg_data_temp~3_combout\ : std_logic;
SIGNAL \t_trigger_inst:2:t_trigger_inst_i|q~0_combout\ : std_logic;
SIGNAL \t_trigger_inst:2:t_trigger_inst_i|q~q\ : std_logic;
SIGNAL \data_in[3]~input_o\ : std_logic;
SIGNAL \reg_data_temp~4_combout\ : std_logic;
SIGNAL \t_trigger_inst:3:t_trigger_inst_i|q~0_combout\ : std_logic;
SIGNAL \t_trigger_inst:3:t_trigger_inst_i|q~q\ : std_logic;
SIGNAL \data_in[4]~input_o\ : std_logic;
SIGNAL \reg_data_temp~5_combout\ : std_logic;
SIGNAL \t_trigger_inst:4:t_trigger_inst_i|q~0_combout\ : std_logic;
SIGNAL \t_trigger_inst:4:t_trigger_inst_i|q~q\ : std_logic;
SIGNAL \data_in[5]~input_o\ : std_logic;
SIGNAL \reg_data_temp~6_combout\ : std_logic;
SIGNAL \t_trigger_inst:5:t_trigger_inst_i|q~0_combout\ : std_logic;
SIGNAL \t_trigger_inst:5:t_trigger_inst_i|q~q\ : std_logic;
SIGNAL \data_in[6]~input_o\ : std_logic;
SIGNAL \reg_data_temp~7_combout\ : std_logic;
SIGNAL \t_trigger_inst:6:t_trigger_inst_i|q~0_combout\ : std_logic;
SIGNAL \t_trigger_inst:6:t_trigger_inst_i|q~q\ : std_logic;
SIGNAL \data_in[7]~input_o\ : std_logic;
SIGNAL \reg_data_temp~8_combout\ : std_logic;
SIGNAL \t_trigger_inst:7:t_trigger_inst_i|q~0_combout\ : std_logic;
SIGNAL \t_trigger_inst:7:t_trigger_inst_i|q~q\ : std_logic;
SIGNAL reg_data_temp : std_logic_vector(7 DOWNTO 0);

BEGIN

ww_clk <= clk;
ww_shift_en <= shift_en;
ww_sLoad <= sLoad;
ww_data_in <= data_in;
data_out <= ww_data_out;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\clk~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clk~input_o\);

-- Location: IOOBUF_X20_Y0_N2
\data_out[0]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \t_trigger_inst:0:t_trigger_inst_i|q~q\,
	devoe => ww_devoe,
	o => \data_out[0]~output_o\);

-- Location: IOOBUF_X33_Y11_N9
\data_out[1]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \t_trigger_inst:1:t_trigger_inst_i|q~q\,
	devoe => ww_devoe,
	o => \data_out[1]~output_o\);

-- Location: IOOBUF_X24_Y0_N2
\data_out[2]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \t_trigger_inst:2:t_trigger_inst_i|q~q\,
	devoe => ww_devoe,
	o => \data_out[2]~output_o\);

-- Location: IOOBUF_X24_Y0_N9
\data_out[3]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \t_trigger_inst:3:t_trigger_inst_i|q~q\,
	devoe => ww_devoe,
	o => \data_out[3]~output_o\);

-- Location: IOOBUF_X22_Y0_N2
\data_out[4]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \t_trigger_inst:4:t_trigger_inst_i|q~q\,
	devoe => ww_devoe,
	o => \data_out[4]~output_o\);

-- Location: IOOBUF_X33_Y10_N2
\data_out[5]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \t_trigger_inst:5:t_trigger_inst_i|q~q\,
	devoe => ww_devoe,
	o => \data_out[5]~output_o\);

-- Location: IOOBUF_X33_Y11_N2
\data_out[6]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \t_trigger_inst:6:t_trigger_inst_i|q~q\,
	devoe => ww_devoe,
	o => \data_out[6]~output_o\);

-- Location: IOOBUF_X20_Y0_N9
\data_out[7]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \t_trigger_inst:7:t_trigger_inst_i|q~q\,
	devoe => ww_devoe,
	o => \data_out[7]~output_o\);

-- Location: IOIBUF_X16_Y0_N15
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

-- Location: IOIBUF_X33_Y16_N8
\data_in[0]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data_in(0),
	o => \data_in[0]~input_o\);

-- Location: IOIBUF_X33_Y16_N1
\sLoad~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sLoad,
	o => \sLoad~input_o\);

-- Location: LCCOMB_X29_Y3_N12
\reg_data_temp~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \reg_data_temp~0_combout\ = (\sLoad~input_o\ & (((\data_in[0]~input_o\)))) # (!\sLoad~input_o\ & (!\shift_en~input_o\ & ((reg_data_temp(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \shift_en~input_o\,
	datab => \data_in[0]~input_o\,
	datac => reg_data_temp(0),
	datad => \sLoad~input_o\,
	combout => \reg_data_temp~0_combout\);

-- Location: FF_X29_Y3_N13
\reg_data_temp[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \reg_data_temp~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => reg_data_temp(0));

-- Location: LCCOMB_X29_Y3_N24
\t_trigger_inst:0:t_trigger_inst_i|q~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \t_trigger_inst:0:t_trigger_inst_i|q~0_combout\ = \t_trigger_inst:0:t_trigger_inst_i|q~q\ $ (reg_data_temp(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \t_trigger_inst:0:t_trigger_inst_i|q~q\,
	datad => reg_data_temp(0),
	combout => \t_trigger_inst:0:t_trigger_inst_i|q~0_combout\);

-- Location: FF_X29_Y3_N25
\t_trigger_inst:0:t_trigger_inst_i|q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \t_trigger_inst:0:t_trigger_inst_i|q~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \t_trigger_inst:0:t_trigger_inst_i|q~q\);

-- Location: IOIBUF_X26_Y0_N1
\data_in[1]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data_in(1),
	o => \data_in[1]~input_o\);

-- Location: LCCOMB_X29_Y3_N18
\reg_data_temp~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \reg_data_temp~1_combout\ = (\sLoad~input_o\ & (\data_in[1]~input_o\)) # (!\sLoad~input_o\ & ((reg_data_temp(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sLoad~input_o\,
	datac => \data_in[1]~input_o\,
	datad => reg_data_temp(0),
	combout => \reg_data_temp~1_combout\);

-- Location: IOIBUF_X31_Y0_N1
\shift_en~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_shift_en,
	o => \shift_en~input_o\);

-- Location: LCCOMB_X30_Y3_N20
\reg_data_temp[1]~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \reg_data_temp[1]~2_combout\ = (\sLoad~input_o\) # (\shift_en~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \sLoad~input_o\,
	datac => \shift_en~input_o\,
	combout => \reg_data_temp[1]~2_combout\);

-- Location: FF_X29_Y3_N19
\reg_data_temp[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \reg_data_temp~1_combout\,
	ena => \reg_data_temp[1]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => reg_data_temp(1));

-- Location: LCCOMB_X29_Y3_N26
\t_trigger_inst:1:t_trigger_inst_i|q~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \t_trigger_inst:1:t_trigger_inst_i|q~0_combout\ = \t_trigger_inst:1:t_trigger_inst_i|q~q\ $ (reg_data_temp(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \t_trigger_inst:1:t_trigger_inst_i|q~q\,
	datad => reg_data_temp(1),
	combout => \t_trigger_inst:1:t_trigger_inst_i|q~0_combout\);

-- Location: FF_X29_Y3_N27
\t_trigger_inst:1:t_trigger_inst_i|q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \t_trigger_inst:1:t_trigger_inst_i|q~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \t_trigger_inst:1:t_trigger_inst_i|q~q\);

-- Location: IOIBUF_X22_Y0_N8
\data_in[2]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data_in(2),
	o => \data_in[2]~input_o\);

-- Location: LCCOMB_X29_Y3_N20
\reg_data_temp~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \reg_data_temp~3_combout\ = (\sLoad~input_o\ & (\data_in[2]~input_o\)) # (!\sLoad~input_o\ & ((reg_data_temp(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sLoad~input_o\,
	datac => \data_in[2]~input_o\,
	datad => reg_data_temp(1),
	combout => \reg_data_temp~3_combout\);

-- Location: FF_X29_Y3_N21
\reg_data_temp[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \reg_data_temp~3_combout\,
	ena => \reg_data_temp[1]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => reg_data_temp(2));

-- Location: LCCOMB_X29_Y3_N4
\t_trigger_inst:2:t_trigger_inst_i|q~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \t_trigger_inst:2:t_trigger_inst_i|q~0_combout\ = \t_trigger_inst:2:t_trigger_inst_i|q~q\ $ (reg_data_temp(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \t_trigger_inst:2:t_trigger_inst_i|q~q\,
	datad => reg_data_temp(2),
	combout => \t_trigger_inst:2:t_trigger_inst_i|q~0_combout\);

-- Location: FF_X29_Y3_N5
\t_trigger_inst:2:t_trigger_inst_i|q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \t_trigger_inst:2:t_trigger_inst_i|q~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \t_trigger_inst:2:t_trigger_inst_i|q~q\);

-- Location: IOIBUF_X33_Y10_N8
\data_in[3]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data_in(3),
	o => \data_in[3]~input_o\);

-- Location: LCCOMB_X29_Y3_N6
\reg_data_temp~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \reg_data_temp~4_combout\ = (\sLoad~input_o\ & (\data_in[3]~input_o\)) # (!\sLoad~input_o\ & ((reg_data_temp(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sLoad~input_o\,
	datac => \data_in[3]~input_o\,
	datad => reg_data_temp(2),
	combout => \reg_data_temp~4_combout\);

-- Location: FF_X29_Y3_N7
\reg_data_temp[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \reg_data_temp~4_combout\,
	ena => \reg_data_temp[1]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => reg_data_temp(3));

-- Location: LCCOMB_X29_Y3_N14
\t_trigger_inst:3:t_trigger_inst_i|q~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \t_trigger_inst:3:t_trigger_inst_i|q~0_combout\ = \t_trigger_inst:3:t_trigger_inst_i|q~q\ $ (reg_data_temp(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \t_trigger_inst:3:t_trigger_inst_i|q~q\,
	datad => reg_data_temp(3),
	combout => \t_trigger_inst:3:t_trigger_inst_i|q~0_combout\);

-- Location: FF_X29_Y3_N15
\t_trigger_inst:3:t_trigger_inst_i|q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \t_trigger_inst:3:t_trigger_inst_i|q~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \t_trigger_inst:3:t_trigger_inst_i|q~q\);

-- Location: IOIBUF_X31_Y0_N8
\data_in[4]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data_in(4),
	o => \data_in[4]~input_o\);

-- Location: LCCOMB_X29_Y3_N16
\reg_data_temp~5\ : cycloneiv_lcell_comb
-- Equation(s):
-- \reg_data_temp~5_combout\ = (\sLoad~input_o\ & (\data_in[4]~input_o\)) # (!\sLoad~input_o\ & ((reg_data_temp(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sLoad~input_o\,
	datac => \data_in[4]~input_o\,
	datad => reg_data_temp(3),
	combout => \reg_data_temp~5_combout\);

-- Location: FF_X29_Y3_N17
\reg_data_temp[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \reg_data_temp~5_combout\,
	ena => \reg_data_temp[1]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => reg_data_temp(4));

-- Location: LCCOMB_X29_Y3_N0
\t_trigger_inst:4:t_trigger_inst_i|q~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \t_trigger_inst:4:t_trigger_inst_i|q~0_combout\ = \t_trigger_inst:4:t_trigger_inst_i|q~q\ $ (reg_data_temp(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \t_trigger_inst:4:t_trigger_inst_i|q~q\,
	datad => reg_data_temp(4),
	combout => \t_trigger_inst:4:t_trigger_inst_i|q~0_combout\);

-- Location: FF_X29_Y3_N1
\t_trigger_inst:4:t_trigger_inst_i|q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \t_trigger_inst:4:t_trigger_inst_i|q~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \t_trigger_inst:4:t_trigger_inst_i|q~q\);

-- Location: IOIBUF_X26_Y0_N8
\data_in[5]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data_in(5),
	o => \data_in[5]~input_o\);

-- Location: LCCOMB_X29_Y3_N10
\reg_data_temp~6\ : cycloneiv_lcell_comb
-- Equation(s):
-- \reg_data_temp~6_combout\ = (\sLoad~input_o\ & (\data_in[5]~input_o\)) # (!\sLoad~input_o\ & ((reg_data_temp(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sLoad~input_o\,
	datac => \data_in[5]~input_o\,
	datad => reg_data_temp(4),
	combout => \reg_data_temp~6_combout\);

-- Location: FF_X29_Y3_N11
\reg_data_temp[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \reg_data_temp~6_combout\,
	ena => \reg_data_temp[1]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => reg_data_temp(5));

-- Location: LCCOMB_X29_Y3_N30
\t_trigger_inst:5:t_trigger_inst_i|q~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \t_trigger_inst:5:t_trigger_inst_i|q~0_combout\ = \t_trigger_inst:5:t_trigger_inst_i|q~q\ $ (reg_data_temp(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \t_trigger_inst:5:t_trigger_inst_i|q~q\,
	datad => reg_data_temp(5),
	combout => \t_trigger_inst:5:t_trigger_inst_i|q~0_combout\);

-- Location: FF_X29_Y3_N31
\t_trigger_inst:5:t_trigger_inst_i|q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \t_trigger_inst:5:t_trigger_inst_i|q~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \t_trigger_inst:5:t_trigger_inst_i|q~q\);

-- Location: IOIBUF_X29_Y0_N1
\data_in[6]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data_in(6),
	o => \data_in[6]~input_o\);

-- Location: LCCOMB_X29_Y3_N28
\reg_data_temp~7\ : cycloneiv_lcell_comb
-- Equation(s):
-- \reg_data_temp~7_combout\ = (\sLoad~input_o\ & (\data_in[6]~input_o\)) # (!\sLoad~input_o\ & ((reg_data_temp(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sLoad~input_o\,
	datac => \data_in[6]~input_o\,
	datad => reg_data_temp(5),
	combout => \reg_data_temp~7_combout\);

-- Location: FF_X29_Y3_N29
\reg_data_temp[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \reg_data_temp~7_combout\,
	ena => \reg_data_temp[1]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => reg_data_temp(6));

-- Location: LCCOMB_X29_Y3_N8
\t_trigger_inst:6:t_trigger_inst_i|q~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \t_trigger_inst:6:t_trigger_inst_i|q~0_combout\ = \t_trigger_inst:6:t_trigger_inst_i|q~q\ $ (reg_data_temp(6))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \t_trigger_inst:6:t_trigger_inst_i|q~q\,
	datad => reg_data_temp(6),
	combout => \t_trigger_inst:6:t_trigger_inst_i|q~0_combout\);

-- Location: FF_X29_Y3_N9
\t_trigger_inst:6:t_trigger_inst_i|q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \t_trigger_inst:6:t_trigger_inst_i|q~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \t_trigger_inst:6:t_trigger_inst_i|q~q\);

-- Location: IOIBUF_X29_Y0_N8
\data_in[7]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data_in(7),
	o => \data_in[7]~input_o\);

-- Location: LCCOMB_X29_Y3_N2
\reg_data_temp~8\ : cycloneiv_lcell_comb
-- Equation(s):
-- \reg_data_temp~8_combout\ = (\sLoad~input_o\ & (\data_in[7]~input_o\)) # (!\sLoad~input_o\ & ((reg_data_temp(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sLoad~input_o\,
	datac => \data_in[7]~input_o\,
	datad => reg_data_temp(6),
	combout => \reg_data_temp~8_combout\);

-- Location: FF_X29_Y3_N3
\reg_data_temp[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \reg_data_temp~8_combout\,
	ena => \reg_data_temp[1]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => reg_data_temp(7));

-- Location: LCCOMB_X29_Y3_N22
\t_trigger_inst:7:t_trigger_inst_i|q~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \t_trigger_inst:7:t_trigger_inst_i|q~0_combout\ = \t_trigger_inst:7:t_trigger_inst_i|q~q\ $ (reg_data_temp(7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \t_trigger_inst:7:t_trigger_inst_i|q~q\,
	datad => reg_data_temp(7),
	combout => \t_trigger_inst:7:t_trigger_inst_i|q~0_combout\);

-- Location: FF_X29_Y3_N23
\t_trigger_inst:7:t_trigger_inst_i|q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \t_trigger_inst:7:t_trigger_inst_i|q~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \t_trigger_inst:7:t_trigger_inst_i|q~q\);

ww_data_out(0) <= \data_out[0]~output_o\;

ww_data_out(1) <= \data_out[1]~output_o\;

ww_data_out(2) <= \data_out[2]~output_o\;

ww_data_out(3) <= \data_out[3]~output_o\;

ww_data_out(4) <= \data_out[4]~output_o\;

ww_data_out(5) <= \data_out[5]~output_o\;

ww_data_out(6) <= \data_out[6]~output_o\;

ww_data_out(7) <= \data_out[7]~output_o\;
END structure;


