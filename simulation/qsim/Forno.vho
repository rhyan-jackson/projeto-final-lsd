-- Copyright (C) 2023  Intel Corporation. All rights reserved.
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
-- VERSION "Version 22.1std.2 Build 922 07/20/2023 SC Lite Edition"

-- DATE "05/28/2024 11:18:56"

-- 
-- Device: Altera EP4CE115F29C7 Package FBGA780
-- 

-- 
-- This VHDL file should be used for Questa Intel FPGA (VHDL) only
-- 

LIBRARY ALTERA;
LIBRARY CYCLONEIVE;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE CYCLONEIVE.CYCLONEIVE_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	SinglePulseGenerator IS
    PORT (
	clk : IN std_logic;
	reset : IN std_logic;
	longHigh : IN std_logic;
	singleOut : OUT std_logic
	);
END SinglePulseGenerator;

ARCHITECTURE structure OF SinglePulseGenerator IS
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
SIGNAL ww_reset : std_logic;
SIGNAL ww_longHigh : std_logic;
SIGNAL ww_singleOut : std_logic;
SIGNAL \singleOut~output_o\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \longHigh~input_o\ : std_logic;
SIGNAL \reset~input_o\ : std_logic;
SIGNAL \s_currentState~0_combout\ : std_logic;
SIGNAL \s_currentState~q\ : std_logic;
SIGNAL \ALT_INV_s_currentState~q\ : std_logic;

BEGIN

ww_clk <= clk;
ww_reset <= reset;
ww_longHigh <= longHigh;
singleOut <= ww_singleOut;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\ALT_INV_s_currentState~q\ <= NOT \s_currentState~q\;

\singleOut~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_s_currentState~q\,
	devoe => ww_devoe,
	o => \singleOut~output_o\);

\clk~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clk,
	o => \clk~input_o\);

\longHigh~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_longHigh,
	o => \longHigh~input_o\);

\reset~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_reset,
	o => \reset~input_o\);

\s_currentState~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_currentState~0_combout\ = (!\reset~input_o\ & ((\longHigh~input_o\) # (!\s_currentState~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \longHigh~input_o\,
	datac => \s_currentState~q\,
	datad => \reset~input_o\,
	combout => \s_currentState~0_combout\);

s_currentState : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \s_currentState~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \s_currentState~q\);

ww_singleOut <= \singleOut~output_o\;
END structure;


