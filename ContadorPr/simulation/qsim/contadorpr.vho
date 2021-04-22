-- Copyright (C) 2019  Intel Corporation. All rights reserved.
-- Your use of Intel Corporation's design tools, logic functions 
-- and other software and tools, and any partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Intel Program License 
-- Subscription Agreement, the Intel Quartus Prime License Agreement,
-- the Intel FPGA IP License Agreement, or other applicable license
-- agreement, including, without limitation, that your use is for
-- the sole purpose of programming logic devices manufactured by
-- Intel and sold by Intel or its authorized distributors.  Please
-- refer to the applicable agreement for further details, at
-- https://fpgasoftware.intel.com/eula.

-- VENDOR "Altera"
-- PROGRAM "Quartus Prime"
-- VERSION "Version 19.1.0 Build 670 09/22/2019 SJ Lite Edition"

-- DATE "04/22/2021 16:00:17"

-- 
-- Device: Altera 5CSEBA6U23I7 Package UFBGA672
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY ALTERA;
LIBRARY ALTERA_LNSIM;
LIBRARY CYCLONEV;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE ALTERA_LNSIM.ALTERA_LNSIM_COMPONENTS.ALL;
USE CYCLONEV.CYCLONEV_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	contadorpr IS
    PORT (
	fin : OUT std_logic;
	resetn : IN std_logic;
	clk : IN std_logic;
	start : IN std_logic;
	BIN : OUT std_logic_vector(3 DOWNTO 0);
	est : OUT std_logic_vector(3 DOWNTO 0);
	GRAY : OUT std_logic_vector(3 DOWNTO 0)
	);
END contadorpr;

-- Design Ports Information
-- fin	=>  Location: PIN_AD17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- BIN[3]	=>  Location: PIN_V13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- BIN[2]	=>  Location: PIN_AE17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- BIN[1]	=>  Location: PIN_Y15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- BIN[0]	=>  Location: PIN_AH13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- est[3]	=>  Location: PIN_U10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- est[2]	=>  Location: PIN_AE24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- est[1]	=>  Location: PIN_AG15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- est[0]	=>  Location: PIN_AH16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- GRAY[3]	=>  Location: PIN_AG14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- GRAY[2]	=>  Location: PIN_AH17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- GRAY[1]	=>  Location: PIN_W14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- GRAY[0]	=>  Location: PIN_AH14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk	=>  Location: PIN_W24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- resetn	=>  Location: PIN_AF17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- start	=>  Location: PIN_AH12,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF contadorpr IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_fin : std_logic;
SIGNAL ww_resetn : std_logic;
SIGNAL ww_clk : std_logic;
SIGNAL ww_start : std_logic;
SIGNAL ww_BIN : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_est : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_GRAY : std_logic_vector(3 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \clk~inputCLKENA0_outclk\ : std_logic;
SIGNAL \start~input_o\ : std_logic;
SIGNAL \inst4|y~7_combout\ : std_logic;
SIGNAL \resetn~input_o\ : std_logic;
SIGNAL \inst4|y.s1~q\ : std_logic;
SIGNAL \inst4|Selector1~0_combout\ : std_logic;
SIGNAL \inst4|y.s2~q\ : std_logic;
SIGNAL \inst4|resetgn~combout\ : std_logic;
SIGNAL \inst|q[3]~DUPLICATE_q\ : std_logic;
SIGNAL \inst|q[2]~1_combout\ : std_logic;
SIGNAL \inst|q[3]~0_combout\ : std_logic;
SIGNAL \inst|q[2]~DUPLICATE_q\ : std_logic;
SIGNAL \inst|q[1]~2_combout\ : std_logic;
SIGNAL \inst|q[0]~3_combout\ : std_logic;
SIGNAL \inst|q[0]~DUPLICATE_q\ : std_logic;
SIGNAL \inst1|Equal0~0_combout\ : std_logic;
SIGNAL \inst|q[1]~DUPLICATE_q\ : std_logic;
SIGNAL \inst|Add0~0_combout\ : std_logic;
SIGNAL \inst|q\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst3|S\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst1|ALT_INV_Equal0~0_combout\ : std_logic;
SIGNAL \inst4|ALT_INV_y.s2~q\ : std_logic;
SIGNAL \inst4|ALT_INV_y.s1~q\ : std_logic;
SIGNAL \inst|ALT_INV_q\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst|ALT_INV_q[0]~DUPLICATE_q\ : std_logic;
SIGNAL \inst|ALT_INV_q[1]~DUPLICATE_q\ : std_logic;
SIGNAL \inst|ALT_INV_q[2]~DUPLICATE_q\ : std_logic;
SIGNAL \inst|ALT_INV_q[3]~DUPLICATE_q\ : std_logic;
SIGNAL \ALT_INV_start~input_o\ : std_logic;
SIGNAL \ALT_INV_resetn~input_o\ : std_logic;
SIGNAL \inst4|ALT_INV_resetgn~combout\ : std_logic;

BEGIN

fin <= ww_fin;
ww_resetn <= resetn;
ww_clk <= clk;
ww_start <= start;
BIN <= ww_BIN;
est <= ww_est;
GRAY <= ww_GRAY;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\inst1|ALT_INV_Equal0~0_combout\ <= NOT \inst1|Equal0~0_combout\;
\inst4|ALT_INV_y.s2~q\ <= NOT \inst4|y.s2~q\;
\inst4|ALT_INV_y.s1~q\ <= NOT \inst4|y.s1~q\;
\inst|ALT_INV_q\(3) <= NOT \inst|q\(3);
\inst|ALT_INV_q\(2) <= NOT \inst|q\(2);
\inst|ALT_INV_q\(1) <= NOT \inst|q\(1);
\inst|ALT_INV_q\(0) <= NOT \inst|q\(0);
\inst|ALT_INV_q[0]~DUPLICATE_q\ <= NOT \inst|q[0]~DUPLICATE_q\;
\inst|ALT_INV_q[1]~DUPLICATE_q\ <= NOT \inst|q[1]~DUPLICATE_q\;
\inst|ALT_INV_q[2]~DUPLICATE_q\ <= NOT \inst|q[2]~DUPLICATE_q\;
\inst|ALT_INV_q[3]~DUPLICATE_q\ <= NOT \inst|q[3]~DUPLICATE_q\;
\ALT_INV_start~input_o\ <= NOT \start~input_o\;
\ALT_INV_resetn~input_o\ <= NOT \resetn~input_o\;
\inst4|ALT_INV_resetgn~combout\ <= NOT \inst4|resetgn~combout\;

-- Location: IOOBUF_X62_Y0_N2
\fin~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|ALT_INV_Equal0~0_combout\,
	devoe => ww_devoe,
	o => ww_fin);

-- Location: IOOBUF_X60_Y0_N19
\BIN[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|q[3]~DUPLICATE_q\,
	devoe => ww_devoe,
	o => ww_BIN(3));

-- Location: IOOBUF_X62_Y0_N19
\BIN[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|q\(2),
	devoe => ww_devoe,
	o => ww_BIN(2));

-- Location: IOOBUF_X64_Y0_N2
\BIN[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|q[1]~DUPLICATE_q\,
	devoe => ww_devoe,
	o => ww_BIN(1));

-- Location: IOOBUF_X60_Y0_N53
\BIN[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|q\(0),
	devoe => ww_devoe,
	o => ww_BIN(0));

-- Location: IOOBUF_X6_Y0_N2
\est[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_est(3));

-- Location: IOOBUF_X82_Y0_N42
\est[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_est(2));

-- Location: IOOBUF_X62_Y0_N36
\est[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst4|y.s2~q\,
	devoe => ww_devoe,
	o => ww_est(1));

-- Location: IOOBUF_X64_Y0_N53
\est[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst4|y.s1~q\,
	devoe => ww_devoe,
	o => ww_est(0));

-- Location: IOOBUF_X60_Y0_N36
\GRAY[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|q[3]~DUPLICATE_q\,
	devoe => ww_devoe,
	o => ww_GRAY(3));

-- Location: IOOBUF_X64_Y0_N36
\GRAY[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst3|S\(2),
	devoe => ww_devoe,
	o => ww_GRAY(2));

-- Location: IOOBUF_X60_Y0_N2
\GRAY[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst3|S\(1),
	devoe => ww_devoe,
	o => ww_GRAY(1));

-- Location: IOOBUF_X62_Y0_N53
\GRAY[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|Add0~0_combout\,
	devoe => ww_devoe,
	o => ww_GRAY(0));

-- Location: IOIBUF_X89_Y25_N21
\clk~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clk,
	o => \clk~input_o\);

-- Location: CLKCTRL_G10
\clk~inputCLKENA0\ : cyclonev_clkena
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	disable_mode => "low",
	ena_register_mode => "always enabled",
	ena_register_power_up => "high",
	test_syn => "high")
-- pragma translate_on
PORT MAP (
	inclk => \clk~input_o\,
	outclk => \clk~inputCLKENA0_outclk\);

-- Location: IOIBUF_X58_Y0_N75
\start~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_start,
	o => \start~input_o\);

-- Location: LABCELL_X61_Y1_N39
\inst4|y~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst4|y~7_combout\ = ( !\inst4|y.s2~q\ & ( \start~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011001100110011001100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_start~input_o\,
	dataf => \inst4|ALT_INV_y.s2~q\,
	combout => \inst4|y~7_combout\);

-- Location: IOIBUF_X58_Y0_N41
\resetn~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_resetn,
	o => \resetn~input_o\);

-- Location: FF_X61_Y1_N41
\inst4|y.s1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \inst4|y~7_combout\,
	clrn => \ALT_INV_resetn~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|y.s1~q\);

-- Location: LABCELL_X61_Y1_N15
\inst4|Selector1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst4|Selector1~0_combout\ = ( \inst4|y.s2~q\ & ( \inst1|Equal0~0_combout\ ) ) # ( !\inst4|y.s2~q\ & ( \inst1|Equal0~0_combout\ & ( (!\start~input_o\ & \inst4|y.s1~q\) ) ) ) # ( \inst4|y.s2~q\ & ( !\inst1|Equal0~0_combout\ & ( (!\start~input_o\ & 
-- \inst4|y.s1~q\) ) ) ) # ( !\inst4|y.s2~q\ & ( !\inst1|Equal0~0_combout\ & ( (!\start~input_o\ & \inst4|y.s1~q\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110000001100000011000000110000001100000011001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_start~input_o\,
	datac => \inst4|ALT_INV_y.s1~q\,
	datae => \inst4|ALT_INV_y.s2~q\,
	dataf => \inst1|ALT_INV_Equal0~0_combout\,
	combout => \inst4|Selector1~0_combout\);

-- Location: FF_X61_Y1_N17
\inst4|y.s2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \inst4|Selector1~0_combout\,
	clrn => \ALT_INV_resetn~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|y.s2~q\);

-- Location: LABCELL_X61_Y1_N36
\inst4|resetgn\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst4|resetgn~combout\ = ( \resetn~input_o\ ) # ( !\resetn~input_o\ & ( \start~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011001100110011001111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_start~input_o\,
	dataf => \ALT_INV_resetn~input_o\,
	combout => \inst4|resetgn~combout\);

-- Location: FF_X61_Y1_N58
\inst|q[3]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \inst|q[3]~0_combout\,
	clrn => \inst4|ALT_INV_resetgn~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|q[3]~DUPLICATE_q\);

-- Location: LABCELL_X61_Y1_N30
\inst|q[2]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|q[2]~1_combout\ = ( \inst|q[3]~DUPLICATE_q\ & ( ((\inst|q[0]~DUPLICATE_q\ & (\inst4|y.s2~q\ & \inst|q\(1)))) # (\inst|q\(2)) ) ) # ( !\inst|q[3]~DUPLICATE_q\ & ( !\inst|q\(2) $ (((!\inst|q[0]~DUPLICATE_q\) # ((!\inst4|y.s2~q\) # (!\inst|q\(1))))) ) 
-- )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000111111110000000011111111000000001111111110000000111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ALT_INV_q[0]~DUPLICATE_q\,
	datab => \inst4|ALT_INV_y.s2~q\,
	datac => \inst|ALT_INV_q\(1),
	datad => \inst|ALT_INV_q\(2),
	dataf => \inst|ALT_INV_q[3]~DUPLICATE_q\,
	combout => \inst|q[2]~1_combout\);

-- Location: FF_X61_Y1_N32
\inst|q[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \inst|q[2]~1_combout\,
	clrn => \inst4|ALT_INV_resetgn~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|q\(2));

-- Location: FF_X61_Y1_N19
\inst|q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \inst|q[0]~3_combout\,
	clrn => \inst4|ALT_INV_resetgn~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|q\(0));

-- Location: LABCELL_X61_Y1_N57
\inst|q[3]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|q[3]~0_combout\ = ( \inst|q\(3) & ( \inst|q\(0) ) ) # ( !\inst|q\(3) & ( \inst|q\(0) & ( (\inst4|y.s2~q\ & (\inst|q\(2) & \inst|q\(1))) ) ) ) # ( \inst|q\(3) & ( !\inst|q\(0) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \inst4|ALT_INV_y.s2~q\,
	datac => \inst|ALT_INV_q\(2),
	datad => \inst|ALT_INV_q\(1),
	datae => \inst|ALT_INV_q\(3),
	dataf => \inst|ALT_INV_q\(0),
	combout => \inst|q[3]~0_combout\);

-- Location: FF_X61_Y1_N59
\inst|q[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \inst|q[3]~0_combout\,
	clrn => \inst4|ALT_INV_resetgn~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|q\(3));

-- Location: FF_X61_Y1_N31
\inst|q[2]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \inst|q[2]~1_combout\,
	clrn => \inst4|ALT_INV_resetgn~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|q[2]~DUPLICATE_q\);

-- Location: LABCELL_X61_Y1_N27
\inst|q[1]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|q[1]~2_combout\ = ( \inst|q[2]~DUPLICATE_q\ & ( (!\inst|q[0]~DUPLICATE_q\ & (((\inst|q\(1))))) # (\inst|q[0]~DUPLICATE_q\ & ((!\inst4|y.s2~q\ & ((\inst|q\(1)))) # (\inst4|y.s2~q\ & ((!\inst|q\(1)) # (\inst|q\(3)))))) ) ) # ( !\inst|q[2]~DUPLICATE_q\ 
-- & ( !\inst|q\(1) $ (((!\inst|q[0]~DUPLICATE_q\) # (!\inst4|y.s2~q\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000111101110000100011110111000010001111011110001000111101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ALT_INV_q[0]~DUPLICATE_q\,
	datab => \inst4|ALT_INV_y.s2~q\,
	datac => \inst|ALT_INV_q\(3),
	datad => \inst|ALT_INV_q\(1),
	dataf => \inst|ALT_INV_q[2]~DUPLICATE_q\,
	combout => \inst|q[1]~2_combout\);

-- Location: FF_X61_Y1_N29
\inst|q[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \inst|q[1]~2_combout\,
	clrn => \inst4|ALT_INV_resetgn~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|q\(1));

-- Location: LABCELL_X61_Y1_N18
\inst|q[0]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|q[0]~3_combout\ = ( \inst|q\(0) & ( \inst|q[2]~DUPLICATE_q\ & ( (!\inst4|y.s2~q\) # ((\inst|q\(1) & \inst|q\(3))) ) ) ) # ( !\inst|q\(0) & ( \inst|q[2]~DUPLICATE_q\ & ( \inst4|y.s2~q\ ) ) ) # ( \inst|q\(0) & ( !\inst|q[2]~DUPLICATE_q\ & ( 
-- !\inst4|y.s2~q\ ) ) ) # ( !\inst|q\(0) & ( !\inst|q[2]~DUPLICATE_q\ & ( \inst4|y.s2~q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011110011001100110000110011001100111100110011001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \inst4|ALT_INV_y.s2~q\,
	datac => \inst|ALT_INV_q\(1),
	datad => \inst|ALT_INV_q\(3),
	datae => \inst|ALT_INV_q\(0),
	dataf => \inst|ALT_INV_q[2]~DUPLICATE_q\,
	combout => \inst|q[0]~3_combout\);

-- Location: FF_X61_Y1_N20
\inst|q[0]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \inst|q[0]~3_combout\,
	clrn => \inst4|ALT_INV_resetgn~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|q[0]~DUPLICATE_q\);

-- Location: LABCELL_X61_Y1_N42
\inst1|Equal0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|Equal0~0_combout\ = ( \inst|q\(1) & ( \inst|q\(2) & ( (!\inst|q[0]~DUPLICATE_q\) # (!\inst|q\(3)) ) ) ) # ( !\inst|q\(1) & ( \inst|q\(2) ) ) # ( \inst|q\(1) & ( !\inst|q\(2) ) ) # ( !\inst|q\(1) & ( !\inst|q\(2) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111111111111111111111111111111110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \inst|ALT_INV_q[0]~DUPLICATE_q\,
	datad => \inst|ALT_INV_q\(3),
	datae => \inst|ALT_INV_q\(1),
	dataf => \inst|ALT_INV_q\(2),
	combout => \inst1|Equal0~0_combout\);

-- Location: FF_X61_Y1_N28
\inst|q[1]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \inst|q[1]~2_combout\,
	clrn => \inst4|ALT_INV_resetgn~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|q[1]~DUPLICATE_q\);

-- Location: LABCELL_X61_Y1_N24
\inst3|S[2]\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|S\(2) = ( \inst|q[2]~DUPLICATE_q\ & ( !\inst|q[3]~DUPLICATE_q\ ) ) # ( !\inst|q[2]~DUPLICATE_q\ & ( \inst|q[3]~DUPLICATE_q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111111110000111100001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \inst|ALT_INV_q[3]~DUPLICATE_q\,
	dataf => \inst|ALT_INV_q[2]~DUPLICATE_q\,
	combout => \inst3|S\(2));

-- Location: LABCELL_X61_Y1_N33
\inst3|S[1]\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|S\(1) = ( \inst|q[2]~DUPLICATE_q\ & ( !\inst|q[1]~DUPLICATE_q\ ) ) # ( !\inst|q[2]~DUPLICATE_q\ & ( \inst|q[1]~DUPLICATE_q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111111110000111100001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \inst|ALT_INV_q[1]~DUPLICATE_q\,
	dataf => \inst|ALT_INV_q[2]~DUPLICATE_q\,
	combout => \inst3|S\(1));

-- Location: LABCELL_X61_Y1_N0
\inst|Add0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|Add0~0_combout\ = ( \inst|q[1]~DUPLICATE_q\ & ( !\inst|q\(0) ) ) # ( !\inst|q[1]~DUPLICATE_q\ & ( \inst|q\(0) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011001100110011001111001100110011001100110011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \inst|ALT_INV_q\(0),
	dataf => \inst|ALT_INV_q[1]~DUPLICATE_q\,
	combout => \inst|Add0~0_combout\);

-- Location: LABCELL_X40_Y22_N3
\~QUARTUS_CREATED_GND~I\ : cyclonev_lcell_comb
-- Equation(s):

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
;
END structure;


