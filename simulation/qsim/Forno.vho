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

-- DATE "05/19/2024 20:51:59"

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

ENTITY 	RegisterTime IS
    PORT (
	clk : IN std_logic;
	reset : IN std_logic;
	enable : IN std_logic;
	runCook : IN std_logic;
	runIdle : IN std_logic;
	incrementIdle : IN std_logic;
	decrementIdle : IN std_logic;
	incrementCook : IN std_logic;
	decrementCook : IN std_logic;
	finishTime : OUT std_logic;
	timeOutIdle : OUT std_logic_vector(15 DOWNTO 0);
	timeOutCook : OUT std_logic_vector(15 DOWNTO 0)
	);
END RegisterTime;

ARCHITECTURE structure OF RegisterTime IS
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
SIGNAL ww_enable : std_logic;
SIGNAL ww_runCook : std_logic;
SIGNAL ww_runIdle : std_logic;
SIGNAL ww_incrementIdle : std_logic;
SIGNAL ww_decrementIdle : std_logic;
SIGNAL ww_incrementCook : std_logic;
SIGNAL ww_decrementCook : std_logic;
SIGNAL ww_finishTime : std_logic;
SIGNAL ww_timeOutIdle : std_logic_vector(15 DOWNTO 0);
SIGNAL ww_timeOutCook : std_logic_vector(15 DOWNTO 0);
SIGNAL \finishTime~output_o\ : std_logic;
SIGNAL \timeOutIdle[0]~output_o\ : std_logic;
SIGNAL \timeOutIdle[1]~output_o\ : std_logic;
SIGNAL \timeOutIdle[2]~output_o\ : std_logic;
SIGNAL \timeOutIdle[3]~output_o\ : std_logic;
SIGNAL \timeOutIdle[4]~output_o\ : std_logic;
SIGNAL \timeOutIdle[5]~output_o\ : std_logic;
SIGNAL \timeOutIdle[6]~output_o\ : std_logic;
SIGNAL \timeOutIdle[7]~output_o\ : std_logic;
SIGNAL \timeOutIdle[8]~output_o\ : std_logic;
SIGNAL \timeOutIdle[9]~output_o\ : std_logic;
SIGNAL \timeOutIdle[10]~output_o\ : std_logic;
SIGNAL \timeOutIdle[11]~output_o\ : std_logic;
SIGNAL \timeOutIdle[12]~output_o\ : std_logic;
SIGNAL \timeOutIdle[13]~output_o\ : std_logic;
SIGNAL \timeOutIdle[14]~output_o\ : std_logic;
SIGNAL \timeOutIdle[15]~output_o\ : std_logic;
SIGNAL \timeOutCook[0]~output_o\ : std_logic;
SIGNAL \timeOutCook[1]~output_o\ : std_logic;
SIGNAL \timeOutCook[2]~output_o\ : std_logic;
SIGNAL \timeOutCook[3]~output_o\ : std_logic;
SIGNAL \timeOutCook[4]~output_o\ : std_logic;
SIGNAL \timeOutCook[5]~output_o\ : std_logic;
SIGNAL \timeOutCook[6]~output_o\ : std_logic;
SIGNAL \timeOutCook[7]~output_o\ : std_logic;
SIGNAL \timeOutCook[8]~output_o\ : std_logic;
SIGNAL \timeOutCook[9]~output_o\ : std_logic;
SIGNAL \timeOutCook[10]~output_o\ : std_logic;
SIGNAL \timeOutCook[11]~output_o\ : std_logic;
SIGNAL \timeOutCook[12]~output_o\ : std_logic;
SIGNAL \timeOutCook[13]~output_o\ : std_logic;
SIGNAL \timeOutCook[14]~output_o\ : std_logic;
SIGNAL \timeOutCook[15]~output_o\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \Add1~0_combout\ : std_logic;
SIGNAL \reset~input_o\ : std_logic;
SIGNAL \s_actualIdle[15]~3_combout\ : std_logic;
SIGNAL \s_actualIdle[8]~4_combout\ : std_logic;
SIGNAL \s_actualIdle[0]~5_combout\ : std_logic;
SIGNAL \runIdle~input_o\ : std_logic;
SIGNAL \incrementIdle~input_o\ : std_logic;
SIGNAL \s_actualIdle[8]~6_combout\ : std_logic;
SIGNAL \Add1~1\ : std_logic;
SIGNAL \Add1~2_combout\ : std_logic;
SIGNAL \Add1~5\ : std_logic;
SIGNAL \Add1~6_combout\ : std_logic;
SIGNAL \s_actualIdle[3]~10_combout\ : std_logic;
SIGNAL \Add1~7\ : std_logic;
SIGNAL \Add1~8_combout\ : std_logic;
SIGNAL \s_actualIdle[4]~11_combout\ : std_logic;
SIGNAL \Add1~9\ : std_logic;
SIGNAL \Add1~10_combout\ : std_logic;
SIGNAL \s_actualIdle[5]~12_combout\ : std_logic;
SIGNAL \Add1~11\ : std_logic;
SIGNAL \Add1~12_combout\ : std_logic;
SIGNAL \s_actualIdle[6]~13_combout\ : std_logic;
SIGNAL \Add1~13\ : std_logic;
SIGNAL \Add1~14_combout\ : std_logic;
SIGNAL \s_actualIdle[7]~14_combout\ : std_logic;
SIGNAL \Add1~15\ : std_logic;
SIGNAL \Add1~16_combout\ : std_logic;
SIGNAL \s_actualIdle[8]~15_combout\ : std_logic;
SIGNAL \Add1~17\ : std_logic;
SIGNAL \Add1~18_combout\ : std_logic;
SIGNAL \s_actualIdle[9]~16_combout\ : std_logic;
SIGNAL \Add1~19\ : std_logic;
SIGNAL \Add1~20_combout\ : std_logic;
SIGNAL \s_actualIdle[10]~17_combout\ : std_logic;
SIGNAL \Add1~21\ : std_logic;
SIGNAL \Add1~22_combout\ : std_logic;
SIGNAL \s_actualIdle[11]~18_combout\ : std_logic;
SIGNAL \Add1~23\ : std_logic;
SIGNAL \Add1~24_combout\ : std_logic;
SIGNAL \s_actualIdle[12]~19_combout\ : std_logic;
SIGNAL \Add1~25\ : std_logic;
SIGNAL \Add1~26_combout\ : std_logic;
SIGNAL \s_actualIdle[13]~20_combout\ : std_logic;
SIGNAL \Add1~27\ : std_logic;
SIGNAL \Add1~29\ : std_logic;
SIGNAL \Add1~30_combout\ : std_logic;
SIGNAL \s_actualIdle[15]~22_combout\ : std_logic;
SIGNAL \LessThan5~4_combout\ : std_logic;
SIGNAL \s_actualIdle[8]~7_combout\ : std_logic;
SIGNAL \s_actualIdle[1]~8_combout\ : std_logic;
SIGNAL \Add1~3\ : std_logic;
SIGNAL \Add1~4_combout\ : std_logic;
SIGNAL \s_actualIdle[2]~9_combout\ : std_logic;
SIGNAL \LessThan5~0_combout\ : std_logic;
SIGNAL \LessThan5~1_combout\ : std_logic;
SIGNAL \LessThan5~2_combout\ : std_logic;
SIGNAL \LessThan5~3_combout\ : std_logic;
SIGNAL \LessThan1~0_combout\ : std_logic;
SIGNAL \s_actualIdle[14]~0_combout\ : std_logic;
SIGNAL \enable~input_o\ : std_logic;
SIGNAL \decrementIdle~input_o\ : std_logic;
SIGNAL \s_actualIdle[14]~1_combout\ : std_logic;
SIGNAL \s_actualIdle[14]~2_combout\ : std_logic;
SIGNAL \Add1~28_combout\ : std_logic;
SIGNAL \s_actualIdle[14]~21_combout\ : std_logic;
SIGNAL \LessThan5~5_combout\ : std_logic;
SIGNAL \finishTime~reg0_q\ : std_logic;
SIGNAL \Add3~0_combout\ : std_logic;
SIGNAL \runCook~input_o\ : std_logic;
SIGNAL \incrementCook~input_o\ : std_logic;
SIGNAL \s_actualCook[11]~7_combout\ : std_logic;
SIGNAL \Add3~1\ : std_logic;
SIGNAL \Add3~2_combout\ : std_logic;
SIGNAL \Add3~17\ : std_logic;
SIGNAL \Add3~18_combout\ : std_logic;
SIGNAL \s_actualCook[11]~5_combout\ : std_logic;
SIGNAL \s_actualCook[9]~16_combout\ : std_logic;
SIGNAL \Add3~19\ : std_logic;
SIGNAL \Add3~20_combout\ : std_logic;
SIGNAL \s_actualCook[10]~17_combout\ : std_logic;
SIGNAL \Add3~21\ : std_logic;
SIGNAL \Add3~22_combout\ : std_logic;
SIGNAL \s_actualCook[11]~18_combout\ : std_logic;
SIGNAL \Add3~23\ : std_logic;
SIGNAL \Add3~24_combout\ : std_logic;
SIGNAL \s_actualCook[12]~19_combout\ : std_logic;
SIGNAL \Add3~25\ : std_logic;
SIGNAL \Add3~26_combout\ : std_logic;
SIGNAL \s_actualCook[13]~20_combout\ : std_logic;
SIGNAL \Add3~27\ : std_logic;
SIGNAL \Add3~28_combout\ : std_logic;
SIGNAL \s_actualCook[14]~21_combout\ : std_logic;
SIGNAL \LessThan2~2_combout\ : std_logic;
SIGNAL \LessThan2~3_combout\ : std_logic;
SIGNAL \LessThan2~4_combout\ : std_logic;
SIGNAL \Add3~29\ : std_logic;
SIGNAL \Add3~30_combout\ : std_logic;
SIGNAL \s_actualCook[15]~22_combout\ : std_logic;
SIGNAL \LessThan2~1_combout\ : std_logic;
SIGNAL \s_actualCook[11]~3_combout\ : std_logic;
SIGNAL \s_actualCook[1]~8_combout\ : std_logic;
SIGNAL \Add3~3\ : std_logic;
SIGNAL \Add3~4_combout\ : std_logic;
SIGNAL \s_actualCook[2]~9_combout\ : std_logic;
SIGNAL \Add3~5\ : std_logic;
SIGNAL \Add3~6_combout\ : std_logic;
SIGNAL \s_actualCook[3]~10_combout\ : std_logic;
SIGNAL \Add3~7\ : std_logic;
SIGNAL \Add3~8_combout\ : std_logic;
SIGNAL \s_actualCook[4]~11_combout\ : std_logic;
SIGNAL \Add3~9\ : std_logic;
SIGNAL \Add3~10_combout\ : std_logic;
SIGNAL \s_actualCook[5]~12_combout\ : std_logic;
SIGNAL \Add3~11\ : std_logic;
SIGNAL \Add3~12_combout\ : std_logic;
SIGNAL \s_actualCook[6]~13_combout\ : std_logic;
SIGNAL \Add3~13\ : std_logic;
SIGNAL \Add3~14_combout\ : std_logic;
SIGNAL \s_actualCook[7]~14_combout\ : std_logic;
SIGNAL \Add3~15\ : std_logic;
SIGNAL \Add3~16_combout\ : std_logic;
SIGNAL \s_actualCook[8]~15_combout\ : std_logic;
SIGNAL \LessThan2~0_combout\ : std_logic;
SIGNAL \LessThan3~0_combout\ : std_logic;
SIGNAL \s_actualCook[14]~0_combout\ : std_logic;
SIGNAL \decrementCook~input_o\ : std_logic;
SIGNAL \s_actualCook[14]~1_combout\ : std_logic;
SIGNAL \s_actualCook[14]~2_combout\ : std_logic;
SIGNAL \s_actualCook[15]~4_combout\ : std_logic;
SIGNAL \s_actualCook[0]~6_combout\ : std_logic;
SIGNAL s_actualCook : std_logic_vector(15 DOWNTO 0);
SIGNAL s_actualIdle : std_logic_vector(15 DOWNTO 0);
SIGNAL ALT_INV_s_actualCook : std_logic_vector(3 DOWNTO 1);
SIGNAL ALT_INV_s_actualIdle : std_logic_vector(3 DOWNTO 1);

BEGIN

ww_clk <= clk;
ww_reset <= reset;
ww_enable <= enable;
ww_runCook <= runCook;
ww_runIdle <= runIdle;
ww_incrementIdle <= incrementIdle;
ww_decrementIdle <= decrementIdle;
ww_incrementCook <= incrementCook;
ww_decrementCook <= decrementCook;
finishTime <= ww_finishTime;
timeOutIdle <= ww_timeOutIdle;
timeOutCook <= ww_timeOutCook;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
ALT_INV_s_actualCook(1) <= NOT s_actualCook(1);
ALT_INV_s_actualCook(3) <= NOT s_actualCook(3);
ALT_INV_s_actualIdle(3) <= NOT s_actualIdle(3);
ALT_INV_s_actualIdle(1) <= NOT s_actualIdle(1);

\finishTime~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \finishTime~reg0_q\,
	devoe => ww_devoe,
	o => \finishTime~output_o\);

\timeOutIdle[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => s_actualIdle(0),
	devoe => ww_devoe,
	o => \timeOutIdle[0]~output_o\);

\timeOutIdle[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => ALT_INV_s_actualIdle(1),
	devoe => ww_devoe,
	o => \timeOutIdle[1]~output_o\);

\timeOutIdle[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => s_actualIdle(2),
	devoe => ww_devoe,
	o => \timeOutIdle[2]~output_o\);

\timeOutIdle[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => ALT_INV_s_actualIdle(3),
	devoe => ww_devoe,
	o => \timeOutIdle[3]~output_o\);

\timeOutIdle[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => s_actualIdle(4),
	devoe => ww_devoe,
	o => \timeOutIdle[4]~output_o\);

\timeOutIdle[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => s_actualIdle(5),
	devoe => ww_devoe,
	o => \timeOutIdle[5]~output_o\);

\timeOutIdle[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => s_actualIdle(6),
	devoe => ww_devoe,
	o => \timeOutIdle[6]~output_o\);

\timeOutIdle[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => s_actualIdle(7),
	devoe => ww_devoe,
	o => \timeOutIdle[7]~output_o\);

\timeOutIdle[8]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => s_actualIdle(8),
	devoe => ww_devoe,
	o => \timeOutIdle[8]~output_o\);

\timeOutIdle[9]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => s_actualIdle(9),
	devoe => ww_devoe,
	o => \timeOutIdle[9]~output_o\);

\timeOutIdle[10]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => s_actualIdle(10),
	devoe => ww_devoe,
	o => \timeOutIdle[10]~output_o\);

\timeOutIdle[11]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => s_actualIdle(11),
	devoe => ww_devoe,
	o => \timeOutIdle[11]~output_o\);

\timeOutIdle[12]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => s_actualIdle(12),
	devoe => ww_devoe,
	o => \timeOutIdle[12]~output_o\);

\timeOutIdle[13]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => s_actualIdle(13),
	devoe => ww_devoe,
	o => \timeOutIdle[13]~output_o\);

\timeOutIdle[14]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => s_actualIdle(14),
	devoe => ww_devoe,
	o => \timeOutIdle[14]~output_o\);

\timeOutIdle[15]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => s_actualIdle(15),
	devoe => ww_devoe,
	o => \timeOutIdle[15]~output_o\);

\timeOutCook[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => s_actualCook(0),
	devoe => ww_devoe,
	o => \timeOutCook[0]~output_o\);

\timeOutCook[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => ALT_INV_s_actualCook(1),
	devoe => ww_devoe,
	o => \timeOutCook[1]~output_o\);

\timeOutCook[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => s_actualCook(2),
	devoe => ww_devoe,
	o => \timeOutCook[2]~output_o\);

\timeOutCook[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => ALT_INV_s_actualCook(3),
	devoe => ww_devoe,
	o => \timeOutCook[3]~output_o\);

\timeOutCook[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => s_actualCook(4),
	devoe => ww_devoe,
	o => \timeOutCook[4]~output_o\);

\timeOutCook[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => s_actualCook(5),
	devoe => ww_devoe,
	o => \timeOutCook[5]~output_o\);

\timeOutCook[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => s_actualCook(6),
	devoe => ww_devoe,
	o => \timeOutCook[6]~output_o\);

\timeOutCook[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => s_actualCook(7),
	devoe => ww_devoe,
	o => \timeOutCook[7]~output_o\);

\timeOutCook[8]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => s_actualCook(8),
	devoe => ww_devoe,
	o => \timeOutCook[8]~output_o\);

\timeOutCook[9]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => s_actualCook(9),
	devoe => ww_devoe,
	o => \timeOutCook[9]~output_o\);

\timeOutCook[10]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => s_actualCook(10),
	devoe => ww_devoe,
	o => \timeOutCook[10]~output_o\);

\timeOutCook[11]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => s_actualCook(11),
	devoe => ww_devoe,
	o => \timeOutCook[11]~output_o\);

\timeOutCook[12]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => s_actualCook(12),
	devoe => ww_devoe,
	o => \timeOutCook[12]~output_o\);

\timeOutCook[13]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => s_actualCook(13),
	devoe => ww_devoe,
	o => \timeOutCook[13]~output_o\);

\timeOutCook[14]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => s_actualCook(14),
	devoe => ww_devoe,
	o => \timeOutCook[14]~output_o\);

\timeOutCook[15]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => s_actualCook(15),
	devoe => ww_devoe,
	o => \timeOutCook[15]~output_o\);

\clk~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clk,
	o => \clk~input_o\);

\Add1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~0_combout\ = s_actualIdle(0) $ (VCC)
-- \Add1~1\ = CARRY(s_actualIdle(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => s_actualIdle(0),
	datad => VCC,
	combout => \Add1~0_combout\,
	cout => \Add1~1\);

\reset~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_reset,
	o => \reset~input_o\);

\s_actualIdle[15]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_actualIdle[15]~3_combout\ = (!\LessThan5~5_combout\ & (\s_actualIdle[14]~2_combout\ & (!s_actualIdle(14) & !\reset~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan5~5_combout\,
	datab => \s_actualIdle[14]~2_combout\,
	datac => s_actualIdle(14),
	datad => \reset~input_o\,
	combout => \s_actualIdle[15]~3_combout\);

\s_actualIdle[8]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_actualIdle[8]~4_combout\ = (!\LessThan5~5_combout\ & (!\reset~input_o\ & ((s_actualIdle(14)) # (!\s_actualIdle[14]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan5~5_combout\,
	datab => s_actualIdle(14),
	datac => \s_actualIdle[14]~2_combout\,
	datad => \reset~input_o\,
	combout => \s_actualIdle[8]~4_combout\);

\s_actualIdle[0]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_actualIdle[0]~5_combout\ = (s_actualIdle(0) & ((\s_actualIdle[8]~4_combout\) # ((\Add1~0_combout\ & \s_actualIdle[15]~3_combout\)))) # (!s_actualIdle(0) & (\Add1~0_combout\ & (\s_actualIdle[15]~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => s_actualIdle(0),
	datab => \Add1~0_combout\,
	datac => \s_actualIdle[15]~3_combout\,
	datad => \s_actualIdle[8]~4_combout\,
	combout => \s_actualIdle[0]~5_combout\);

\s_actualIdle[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \s_actualIdle[0]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_actualIdle(0));

\runIdle~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_runIdle,
	o => \runIdle~input_o\);

\incrementIdle~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_incrementIdle,
	o => \incrementIdle~input_o\);

\s_actualIdle[8]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_actualIdle[8]~6_combout\ = (\runIdle~input_o\) # (!\incrementIdle~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \runIdle~input_o\,
	datad => \incrementIdle~input_o\,
	combout => \s_actualIdle[8]~6_combout\);

\Add1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~2_combout\ = (\s_actualIdle[8]~6_combout\ & ((s_actualIdle(1) & (!\Add1~1\)) # (!s_actualIdle(1) & (\Add1~1\ & VCC)))) # (!\s_actualIdle[8]~6_combout\ & ((s_actualIdle(1) & ((\Add1~1\) # (GND))) # (!s_actualIdle(1) & (!\Add1~1\))))
-- \Add1~3\ = CARRY((\s_actualIdle[8]~6_combout\ & (s_actualIdle(1) & !\Add1~1\)) # (!\s_actualIdle[8]~6_combout\ & ((s_actualIdle(1)) # (!\Add1~1\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \s_actualIdle[8]~6_combout\,
	datab => s_actualIdle(1),
	datad => VCC,
	cin => \Add1~1\,
	combout => \Add1~2_combout\,
	cout => \Add1~3\);

\Add1~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~4_combout\ = ((\s_actualIdle[8]~6_combout\ $ (s_actualIdle(2) $ (!\Add1~3\)))) # (GND)
-- \Add1~5\ = CARRY((\s_actualIdle[8]~6_combout\ & ((s_actualIdle(2)) # (!\Add1~3\))) # (!\s_actualIdle[8]~6_combout\ & (s_actualIdle(2) & !\Add1~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \s_actualIdle[8]~6_combout\,
	datab => s_actualIdle(2),
	datad => VCC,
	cin => \Add1~3\,
	combout => \Add1~4_combout\,
	cout => \Add1~5\);

\Add1~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~6_combout\ = (\s_actualIdle[8]~6_combout\ & ((s_actualIdle(3) & (!\Add1~5\)) # (!s_actualIdle(3) & (\Add1~5\ & VCC)))) # (!\s_actualIdle[8]~6_combout\ & ((s_actualIdle(3) & ((\Add1~5\) # (GND))) # (!s_actualIdle(3) & (!\Add1~5\))))
-- \Add1~7\ = CARRY((\s_actualIdle[8]~6_combout\ & (s_actualIdle(3) & !\Add1~5\)) # (!\s_actualIdle[8]~6_combout\ & ((s_actualIdle(3)) # (!\Add1~5\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \s_actualIdle[8]~6_combout\,
	datab => s_actualIdle(3),
	datad => VCC,
	cin => \Add1~5\,
	combout => \Add1~6_combout\,
	cout => \Add1~7\);

\s_actualIdle[3]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_actualIdle[3]~10_combout\ = (\s_actualIdle[8]~4_combout\ & (((s_actualIdle(3))))) # (!\s_actualIdle[8]~4_combout\ & (!\Add1~6_combout\ & (\s_actualIdle[8]~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add1~6_combout\,
	datab => \s_actualIdle[8]~7_combout\,
	datac => \s_actualIdle[8]~4_combout\,
	datad => s_actualIdle(3),
	combout => \s_actualIdle[3]~10_combout\);

\s_actualIdle[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \s_actualIdle[3]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_actualIdle(3));

\Add1~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~8_combout\ = ((\s_actualIdle[8]~6_combout\ $ (s_actualIdle(4) $ (!\Add1~7\)))) # (GND)
-- \Add1~9\ = CARRY((\s_actualIdle[8]~6_combout\ & ((s_actualIdle(4)) # (!\Add1~7\))) # (!\s_actualIdle[8]~6_combout\ & (s_actualIdle(4) & !\Add1~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \s_actualIdle[8]~6_combout\,
	datab => s_actualIdle(4),
	datad => VCC,
	cin => \Add1~7\,
	combout => \Add1~8_combout\,
	cout => \Add1~9\);

\s_actualIdle[4]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_actualIdle[4]~11_combout\ = (s_actualIdle(4) & ((\s_actualIdle[8]~4_combout\) # ((\s_actualIdle[15]~3_combout\ & \Add1~8_combout\)))) # (!s_actualIdle(4) & (\s_actualIdle[15]~3_combout\ & (\Add1~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => s_actualIdle(4),
	datab => \s_actualIdle[15]~3_combout\,
	datac => \Add1~8_combout\,
	datad => \s_actualIdle[8]~4_combout\,
	combout => \s_actualIdle[4]~11_combout\);

\s_actualIdle[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \s_actualIdle[4]~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_actualIdle(4));

\Add1~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~10_combout\ = (\s_actualIdle[8]~6_combout\ & ((s_actualIdle(5) & (\Add1~9\ & VCC)) # (!s_actualIdle(5) & (!\Add1~9\)))) # (!\s_actualIdle[8]~6_combout\ & ((s_actualIdle(5) & (!\Add1~9\)) # (!s_actualIdle(5) & ((\Add1~9\) # (GND)))))
-- \Add1~11\ = CARRY((\s_actualIdle[8]~6_combout\ & (!s_actualIdle(5) & !\Add1~9\)) # (!\s_actualIdle[8]~6_combout\ & ((!\Add1~9\) # (!s_actualIdle(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \s_actualIdle[8]~6_combout\,
	datab => s_actualIdle(5),
	datad => VCC,
	cin => \Add1~9\,
	combout => \Add1~10_combout\,
	cout => \Add1~11\);

\s_actualIdle[5]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_actualIdle[5]~12_combout\ = (s_actualIdle(5) & ((\s_actualIdle[8]~4_combout\) # ((\s_actualIdle[15]~3_combout\ & \Add1~10_combout\)))) # (!s_actualIdle(5) & (\s_actualIdle[15]~3_combout\ & (\Add1~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => s_actualIdle(5),
	datab => \s_actualIdle[15]~3_combout\,
	datac => \Add1~10_combout\,
	datad => \s_actualIdle[8]~4_combout\,
	combout => \s_actualIdle[5]~12_combout\);

\s_actualIdle[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \s_actualIdle[5]~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_actualIdle(5));

\Add1~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~12_combout\ = ((\s_actualIdle[8]~6_combout\ $ (s_actualIdle(6) $ (!\Add1~11\)))) # (GND)
-- \Add1~13\ = CARRY((\s_actualIdle[8]~6_combout\ & ((s_actualIdle(6)) # (!\Add1~11\))) # (!\s_actualIdle[8]~6_combout\ & (s_actualIdle(6) & !\Add1~11\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \s_actualIdle[8]~6_combout\,
	datab => s_actualIdle(6),
	datad => VCC,
	cin => \Add1~11\,
	combout => \Add1~12_combout\,
	cout => \Add1~13\);

\s_actualIdle[6]~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_actualIdle[6]~13_combout\ = (s_actualIdle(6) & ((\s_actualIdle[8]~4_combout\) # ((\s_actualIdle[15]~3_combout\ & \Add1~12_combout\)))) # (!s_actualIdle(6) & (\s_actualIdle[15]~3_combout\ & (\Add1~12_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => s_actualIdle(6),
	datab => \s_actualIdle[15]~3_combout\,
	datac => \Add1~12_combout\,
	datad => \s_actualIdle[8]~4_combout\,
	combout => \s_actualIdle[6]~13_combout\);

\s_actualIdle[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \s_actualIdle[6]~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_actualIdle(6));

\Add1~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~14_combout\ = (\s_actualIdle[8]~6_combout\ & ((s_actualIdle(7) & (\Add1~13\ & VCC)) # (!s_actualIdle(7) & (!\Add1~13\)))) # (!\s_actualIdle[8]~6_combout\ & ((s_actualIdle(7) & (!\Add1~13\)) # (!s_actualIdle(7) & ((\Add1~13\) # (GND)))))
-- \Add1~15\ = CARRY((\s_actualIdle[8]~6_combout\ & (!s_actualIdle(7) & !\Add1~13\)) # (!\s_actualIdle[8]~6_combout\ & ((!\Add1~13\) # (!s_actualIdle(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \s_actualIdle[8]~6_combout\,
	datab => s_actualIdle(7),
	datad => VCC,
	cin => \Add1~13\,
	combout => \Add1~14_combout\,
	cout => \Add1~15\);

\s_actualIdle[7]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_actualIdle[7]~14_combout\ = (s_actualIdle(7) & ((\s_actualIdle[8]~4_combout\) # ((\s_actualIdle[15]~3_combout\ & \Add1~14_combout\)))) # (!s_actualIdle(7) & (\s_actualIdle[15]~3_combout\ & (\Add1~14_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => s_actualIdle(7),
	datab => \s_actualIdle[15]~3_combout\,
	datac => \Add1~14_combout\,
	datad => \s_actualIdle[8]~4_combout\,
	combout => \s_actualIdle[7]~14_combout\);

\s_actualIdle[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \s_actualIdle[7]~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_actualIdle(7));

\Add1~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~16_combout\ = ((\s_actualIdle[8]~6_combout\ $ (s_actualIdle(8) $ (!\Add1~15\)))) # (GND)
-- \Add1~17\ = CARRY((\s_actualIdle[8]~6_combout\ & ((s_actualIdle(8)) # (!\Add1~15\))) # (!\s_actualIdle[8]~6_combout\ & (s_actualIdle(8) & !\Add1~15\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \s_actualIdle[8]~6_combout\,
	datab => s_actualIdle(8),
	datad => VCC,
	cin => \Add1~15\,
	combout => \Add1~16_combout\,
	cout => \Add1~17\);

\s_actualIdle[8]~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_actualIdle[8]~15_combout\ = (s_actualIdle(8) & ((\s_actualIdle[8]~4_combout\) # ((\s_actualIdle[15]~3_combout\ & \Add1~16_combout\)))) # (!s_actualIdle(8) & (\s_actualIdle[15]~3_combout\ & (\Add1~16_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => s_actualIdle(8),
	datab => \s_actualIdle[15]~3_combout\,
	datac => \Add1~16_combout\,
	datad => \s_actualIdle[8]~4_combout\,
	combout => \s_actualIdle[8]~15_combout\);

\s_actualIdle[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \s_actualIdle[8]~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_actualIdle(8));

\Add1~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~18_combout\ = (\s_actualIdle[8]~6_combout\ & ((s_actualIdle(9) & (\Add1~17\ & VCC)) # (!s_actualIdle(9) & (!\Add1~17\)))) # (!\s_actualIdle[8]~6_combout\ & ((s_actualIdle(9) & (!\Add1~17\)) # (!s_actualIdle(9) & ((\Add1~17\) # (GND)))))
-- \Add1~19\ = CARRY((\s_actualIdle[8]~6_combout\ & (!s_actualIdle(9) & !\Add1~17\)) # (!\s_actualIdle[8]~6_combout\ & ((!\Add1~17\) # (!s_actualIdle(9)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \s_actualIdle[8]~6_combout\,
	datab => s_actualIdle(9),
	datad => VCC,
	cin => \Add1~17\,
	combout => \Add1~18_combout\,
	cout => \Add1~19\);

\s_actualIdle[9]~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_actualIdle[9]~16_combout\ = (s_actualIdle(9) & ((\s_actualIdle[8]~4_combout\) # ((\s_actualIdle[15]~3_combout\ & \Add1~18_combout\)))) # (!s_actualIdle(9) & (\s_actualIdle[15]~3_combout\ & (\Add1~18_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => s_actualIdle(9),
	datab => \s_actualIdle[15]~3_combout\,
	datac => \Add1~18_combout\,
	datad => \s_actualIdle[8]~4_combout\,
	combout => \s_actualIdle[9]~16_combout\);

\s_actualIdle[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \s_actualIdle[9]~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_actualIdle(9));

\Add1~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~20_combout\ = ((\s_actualIdle[8]~6_combout\ $ (s_actualIdle(10) $ (!\Add1~19\)))) # (GND)
-- \Add1~21\ = CARRY((\s_actualIdle[8]~6_combout\ & ((s_actualIdle(10)) # (!\Add1~19\))) # (!\s_actualIdle[8]~6_combout\ & (s_actualIdle(10) & !\Add1~19\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \s_actualIdle[8]~6_combout\,
	datab => s_actualIdle(10),
	datad => VCC,
	cin => \Add1~19\,
	combout => \Add1~20_combout\,
	cout => \Add1~21\);

\s_actualIdle[10]~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_actualIdle[10]~17_combout\ = (s_actualIdle(10) & ((\s_actualIdle[8]~4_combout\) # ((\s_actualIdle[15]~3_combout\ & \Add1~20_combout\)))) # (!s_actualIdle(10) & (\s_actualIdle[15]~3_combout\ & (\Add1~20_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => s_actualIdle(10),
	datab => \s_actualIdle[15]~3_combout\,
	datac => \Add1~20_combout\,
	datad => \s_actualIdle[8]~4_combout\,
	combout => \s_actualIdle[10]~17_combout\);

\s_actualIdle[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \s_actualIdle[10]~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_actualIdle(10));

\Add1~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~22_combout\ = (\s_actualIdle[8]~6_combout\ & ((s_actualIdle(11) & (\Add1~21\ & VCC)) # (!s_actualIdle(11) & (!\Add1~21\)))) # (!\s_actualIdle[8]~6_combout\ & ((s_actualIdle(11) & (!\Add1~21\)) # (!s_actualIdle(11) & ((\Add1~21\) # (GND)))))
-- \Add1~23\ = CARRY((\s_actualIdle[8]~6_combout\ & (!s_actualIdle(11) & !\Add1~21\)) # (!\s_actualIdle[8]~6_combout\ & ((!\Add1~21\) # (!s_actualIdle(11)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \s_actualIdle[8]~6_combout\,
	datab => s_actualIdle(11),
	datad => VCC,
	cin => \Add1~21\,
	combout => \Add1~22_combout\,
	cout => \Add1~23\);

\s_actualIdle[11]~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_actualIdle[11]~18_combout\ = (s_actualIdle(11) & ((\s_actualIdle[8]~4_combout\) # ((\s_actualIdle[15]~3_combout\ & \Add1~22_combout\)))) # (!s_actualIdle(11) & (\s_actualIdle[15]~3_combout\ & (\Add1~22_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => s_actualIdle(11),
	datab => \s_actualIdle[15]~3_combout\,
	datac => \Add1~22_combout\,
	datad => \s_actualIdle[8]~4_combout\,
	combout => \s_actualIdle[11]~18_combout\);

\s_actualIdle[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \s_actualIdle[11]~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_actualIdle(11));

\Add1~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~24_combout\ = ((\s_actualIdle[8]~6_combout\ $ (s_actualIdle(12) $ (!\Add1~23\)))) # (GND)
-- \Add1~25\ = CARRY((\s_actualIdle[8]~6_combout\ & ((s_actualIdle(12)) # (!\Add1~23\))) # (!\s_actualIdle[8]~6_combout\ & (s_actualIdle(12) & !\Add1~23\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \s_actualIdle[8]~6_combout\,
	datab => s_actualIdle(12),
	datad => VCC,
	cin => \Add1~23\,
	combout => \Add1~24_combout\,
	cout => \Add1~25\);

\s_actualIdle[12]~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_actualIdle[12]~19_combout\ = (s_actualIdle(12) & ((\s_actualIdle[8]~4_combout\) # ((\s_actualIdle[15]~3_combout\ & \Add1~24_combout\)))) # (!s_actualIdle(12) & (\s_actualIdle[15]~3_combout\ & (\Add1~24_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => s_actualIdle(12),
	datab => \s_actualIdle[15]~3_combout\,
	datac => \Add1~24_combout\,
	datad => \s_actualIdle[8]~4_combout\,
	combout => \s_actualIdle[12]~19_combout\);

\s_actualIdle[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \s_actualIdle[12]~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_actualIdle(12));

\Add1~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~26_combout\ = (\s_actualIdle[8]~6_combout\ & ((s_actualIdle(13) & (\Add1~25\ & VCC)) # (!s_actualIdle(13) & (!\Add1~25\)))) # (!\s_actualIdle[8]~6_combout\ & ((s_actualIdle(13) & (!\Add1~25\)) # (!s_actualIdle(13) & ((\Add1~25\) # (GND)))))
-- \Add1~27\ = CARRY((\s_actualIdle[8]~6_combout\ & (!s_actualIdle(13) & !\Add1~25\)) # (!\s_actualIdle[8]~6_combout\ & ((!\Add1~25\) # (!s_actualIdle(13)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \s_actualIdle[8]~6_combout\,
	datab => s_actualIdle(13),
	datad => VCC,
	cin => \Add1~25\,
	combout => \Add1~26_combout\,
	cout => \Add1~27\);

\s_actualIdle[13]~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_actualIdle[13]~20_combout\ = (s_actualIdle(13) & ((\s_actualIdle[8]~4_combout\) # ((\s_actualIdle[15]~3_combout\ & \Add1~26_combout\)))) # (!s_actualIdle(13) & (\s_actualIdle[15]~3_combout\ & (\Add1~26_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => s_actualIdle(13),
	datab => \s_actualIdle[15]~3_combout\,
	datac => \Add1~26_combout\,
	datad => \s_actualIdle[8]~4_combout\,
	combout => \s_actualIdle[13]~20_combout\);

\s_actualIdle[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \s_actualIdle[13]~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_actualIdle(13));

\Add1~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~28_combout\ = ((\s_actualIdle[8]~6_combout\ $ (s_actualIdle(14) $ (!\Add1~27\)))) # (GND)
-- \Add1~29\ = CARRY((\s_actualIdle[8]~6_combout\ & ((s_actualIdle(14)) # (!\Add1~27\))) # (!\s_actualIdle[8]~6_combout\ & (s_actualIdle(14) & !\Add1~27\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \s_actualIdle[8]~6_combout\,
	datab => s_actualIdle(14),
	datad => VCC,
	cin => \Add1~27\,
	combout => \Add1~28_combout\,
	cout => \Add1~29\);

\Add1~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~30_combout\ = \s_actualIdle[8]~6_combout\ $ (s_actualIdle(15) $ (\Add1~29\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010010110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \s_actualIdle[8]~6_combout\,
	datab => s_actualIdle(15),
	cin => \Add1~29\,
	combout => \Add1~30_combout\);

\s_actualIdle[15]~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_actualIdle[15]~22_combout\ = (\s_actualIdle[8]~4_combout\ & (s_actualIdle(15))) # (!\s_actualIdle[8]~4_combout\ & (((\s_actualIdle[8]~7_combout\ & \Add1~30_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => s_actualIdle(15),
	datab => \s_actualIdle[8]~7_combout\,
	datac => \Add1~30_combout\,
	datad => \s_actualIdle[8]~4_combout\,
	combout => \s_actualIdle[15]~22_combout\);

\s_actualIdle[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \s_actualIdle[15]~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_actualIdle(15));

\LessThan5~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan5~4_combout\ = (!s_actualIdle(12) & (!s_actualIdle(13) & !s_actualIdle(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => s_actualIdle(12),
	datac => s_actualIdle(13),
	datad => s_actualIdle(15),
	combout => \LessThan5~4_combout\);

\s_actualIdle[8]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_actualIdle[8]~7_combout\ = (!\reset~input_o\ & ((s_actualIdle(14)) # ((\LessThan5~3_combout\) # (!\LessThan5~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => s_actualIdle(14),
	datab => \LessThan5~3_combout\,
	datac => \LessThan5~4_combout\,
	datad => \reset~input_o\,
	combout => \s_actualIdle[8]~7_combout\);

\s_actualIdle[1]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_actualIdle[1]~8_combout\ = (\s_actualIdle[8]~4_combout\ & (((s_actualIdle(1))))) # (!\s_actualIdle[8]~4_combout\ & (!\Add1~2_combout\ & (\s_actualIdle[8]~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add1~2_combout\,
	datab => \s_actualIdle[8]~7_combout\,
	datac => \s_actualIdle[8]~4_combout\,
	datad => s_actualIdle(1),
	combout => \s_actualIdle[1]~8_combout\);

\s_actualIdle[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \s_actualIdle[1]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_actualIdle(1));

\s_actualIdle[2]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_actualIdle[2]~9_combout\ = (s_actualIdle(2) & ((\s_actualIdle[8]~4_combout\) # ((\s_actualIdle[15]~3_combout\ & \Add1~4_combout\)))) # (!s_actualIdle(2) & (\s_actualIdle[15]~3_combout\ & (\Add1~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => s_actualIdle(2),
	datab => \s_actualIdle[15]~3_combout\,
	datac => \Add1~4_combout\,
	datad => \s_actualIdle[8]~4_combout\,
	combout => \s_actualIdle[2]~9_combout\);

\s_actualIdle[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \s_actualIdle[2]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_actualIdle(2));

\LessThan5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan5~0_combout\ = (s_actualIdle(0)) # ((s_actualIdle(2)) # ((!s_actualIdle(3)) # (!s_actualIdle(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => s_actualIdle(0),
	datab => s_actualIdle(2),
	datac => s_actualIdle(1),
	datad => s_actualIdle(3),
	combout => \LessThan5~0_combout\);

\LessThan5~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan5~1_combout\ = (s_actualIdle(4)) # ((s_actualIdle(5)) # ((s_actualIdle(6)) # (s_actualIdle(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => s_actualIdle(4),
	datab => s_actualIdle(5),
	datac => s_actualIdle(6),
	datad => s_actualIdle(7),
	combout => \LessThan5~1_combout\);

\LessThan5~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan5~2_combout\ = (!s_actualIdle(8) & (!s_actualIdle(9) & (!s_actualIdle(10) & !s_actualIdle(11))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => s_actualIdle(8),
	datab => s_actualIdle(9),
	datac => s_actualIdle(10),
	datad => s_actualIdle(11),
	combout => \LessThan5~2_combout\);

\LessThan5~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan5~3_combout\ = (\LessThan5~0_combout\) # ((\LessThan5~1_combout\) # (!\LessThan5~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan5~0_combout\,
	datab => \LessThan5~1_combout\,
	datad => \LessThan5~2_combout\,
	combout => \LessThan5~3_combout\);

\LessThan1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan1~0_combout\ = (((s_actualIdle(3) & !s_actualIdle(2))) # (!s_actualIdle(5))) # (!s_actualIdle(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => s_actualIdle(3),
	datab => s_actualIdle(2),
	datac => s_actualIdle(4),
	datad => s_actualIdle(5),
	combout => \LessThan1~0_combout\);

\s_actualIdle[14]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_actualIdle[14]~0_combout\ = (\LessThan5~2_combout\ & (((\LessThan1~0_combout\ & !s_actualIdle(6))) # (!s_actualIdle(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan5~2_combout\,
	datab => \LessThan1~0_combout\,
	datac => s_actualIdle(6),
	datad => s_actualIdle(7),
	combout => \s_actualIdle[14]~0_combout\);

\enable~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_enable,
	o => \enable~input_o\);

\decrementIdle~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_decrementIdle,
	o => \decrementIdle~input_o\);

\s_actualIdle[14]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_actualIdle[14]~1_combout\ = (\enable~input_o\ & ((\runIdle~input_o\) # ((\incrementIdle~input_o\) # (\decrementIdle~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \enable~input_o\,
	datab => \runIdle~input_o\,
	datac => \incrementIdle~input_o\,
	datad => \decrementIdle~input_o\,
	combout => \s_actualIdle[14]~1_combout\);

\s_actualIdle[14]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_actualIdle[14]~2_combout\ = (\LessThan5~3_combout\ & (\LessThan5~4_combout\ & (\s_actualIdle[14]~0_combout\ & \s_actualIdle[14]~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan5~3_combout\,
	datab => \LessThan5~4_combout\,
	datac => \s_actualIdle[14]~0_combout\,
	datad => \s_actualIdle[14]~1_combout\,
	combout => \s_actualIdle[14]~2_combout\);

\s_actualIdle[14]~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_actualIdle[14]~21_combout\ = (!\reset~input_o\ & ((s_actualIdle(14)) # ((\s_actualIdle[14]~2_combout\ & \Add1~28_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => s_actualIdle(14),
	datab => \s_actualIdle[14]~2_combout\,
	datac => \Add1~28_combout\,
	datad => \reset~input_o\,
	combout => \s_actualIdle[14]~21_combout\);

\s_actualIdle[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \s_actualIdle[14]~21_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_actualIdle(14));

\LessThan5~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan5~5_combout\ = (!s_actualIdle(14) & (!\LessThan5~3_combout\ & \LessThan5~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => s_actualIdle(14),
	datab => \LessThan5~3_combout\,
	datad => \LessThan5~4_combout\,
	combout => \LessThan5~5_combout\);

\finishTime~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \LessThan5~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \finishTime~reg0_q\);

\Add3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add3~0_combout\ = s_actualCook(0) $ (VCC)
-- \Add3~1\ = CARRY(s_actualCook(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => s_actualCook(0),
	datad => VCC,
	combout => \Add3~0_combout\,
	cout => \Add3~1\);

\runCook~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_runCook,
	o => \runCook~input_o\);

\incrementCook~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_incrementCook,
	o => \incrementCook~input_o\);

\s_actualCook[11]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_actualCook[11]~7_combout\ = (\runCook~input_o\) # (!\incrementCook~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \runCook~input_o\,
	datad => \incrementCook~input_o\,
	combout => \s_actualCook[11]~7_combout\);

\Add3~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add3~2_combout\ = (\s_actualCook[11]~7_combout\ & ((s_actualCook(1) & (!\Add3~1\)) # (!s_actualCook(1) & (\Add3~1\ & VCC)))) # (!\s_actualCook[11]~7_combout\ & ((s_actualCook(1) & ((\Add3~1\) # (GND))) # (!s_actualCook(1) & (!\Add3~1\))))
-- \Add3~3\ = CARRY((\s_actualCook[11]~7_combout\ & (s_actualCook(1) & !\Add3~1\)) # (!\s_actualCook[11]~7_combout\ & ((s_actualCook(1)) # (!\Add3~1\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \s_actualCook[11]~7_combout\,
	datab => s_actualCook(1),
	datad => VCC,
	cin => \Add3~1\,
	combout => \Add3~2_combout\,
	cout => \Add3~3\);

\Add3~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add3~16_combout\ = ((\s_actualCook[11]~7_combout\ $ (s_actualCook(8) $ (!\Add3~15\)))) # (GND)
-- \Add3~17\ = CARRY((\s_actualCook[11]~7_combout\ & ((s_actualCook(8)) # (!\Add3~15\))) # (!\s_actualCook[11]~7_combout\ & (s_actualCook(8) & !\Add3~15\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \s_actualCook[11]~7_combout\,
	datab => s_actualCook(8),
	datad => VCC,
	cin => \Add3~15\,
	combout => \Add3~16_combout\,
	cout => \Add3~17\);

\Add3~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add3~18_combout\ = (\s_actualCook[11]~7_combout\ & ((s_actualCook(9) & (\Add3~17\ & VCC)) # (!s_actualCook(9) & (!\Add3~17\)))) # (!\s_actualCook[11]~7_combout\ & ((s_actualCook(9) & (!\Add3~17\)) # (!s_actualCook(9) & ((\Add3~17\) # (GND)))))
-- \Add3~19\ = CARRY((\s_actualCook[11]~7_combout\ & (!s_actualCook(9) & !\Add3~17\)) # (!\s_actualCook[11]~7_combout\ & ((!\Add3~17\) # (!s_actualCook(9)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \s_actualCook[11]~7_combout\,
	datab => s_actualCook(9),
	datad => VCC,
	cin => \Add3~17\,
	combout => \Add3~18_combout\,
	cout => \Add3~19\);

\s_actualCook[11]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_actualCook[11]~5_combout\ = (\s_actualCook[11]~3_combout\ & ((s_actualCook(14)) # (!\s_actualCook[14]~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s_actualCook[11]~3_combout\,
	datab => s_actualCook(14),
	datad => \s_actualCook[14]~2_combout\,
	combout => \s_actualCook[11]~5_combout\);

\s_actualCook[9]~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_actualCook[9]~16_combout\ = (s_actualCook(9) & ((\s_actualCook[11]~5_combout\) # ((\s_actualCook[15]~4_combout\ & \Add3~18_combout\)))) # (!s_actualCook(9) & (\s_actualCook[15]~4_combout\ & (\Add3~18_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => s_actualCook(9),
	datab => \s_actualCook[15]~4_combout\,
	datac => \Add3~18_combout\,
	datad => \s_actualCook[11]~5_combout\,
	combout => \s_actualCook[9]~16_combout\);

\s_actualCook[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \s_actualCook[9]~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_actualCook(9));

\Add3~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add3~20_combout\ = ((\s_actualCook[11]~7_combout\ $ (s_actualCook(10) $ (!\Add3~19\)))) # (GND)
-- \Add3~21\ = CARRY((\s_actualCook[11]~7_combout\ & ((s_actualCook(10)) # (!\Add3~19\))) # (!\s_actualCook[11]~7_combout\ & (s_actualCook(10) & !\Add3~19\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \s_actualCook[11]~7_combout\,
	datab => s_actualCook(10),
	datad => VCC,
	cin => \Add3~19\,
	combout => \Add3~20_combout\,
	cout => \Add3~21\);

\s_actualCook[10]~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_actualCook[10]~17_combout\ = (s_actualCook(10) & ((\s_actualCook[11]~5_combout\) # ((\s_actualCook[15]~4_combout\ & \Add3~20_combout\)))) # (!s_actualCook(10) & (\s_actualCook[15]~4_combout\ & (\Add3~20_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => s_actualCook(10),
	datab => \s_actualCook[15]~4_combout\,
	datac => \Add3~20_combout\,
	datad => \s_actualCook[11]~5_combout\,
	combout => \s_actualCook[10]~17_combout\);

\s_actualCook[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \s_actualCook[10]~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_actualCook(10));

\Add3~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add3~22_combout\ = (\s_actualCook[11]~7_combout\ & ((s_actualCook(11) & (\Add3~21\ & VCC)) # (!s_actualCook(11) & (!\Add3~21\)))) # (!\s_actualCook[11]~7_combout\ & ((s_actualCook(11) & (!\Add3~21\)) # (!s_actualCook(11) & ((\Add3~21\) # (GND)))))
-- \Add3~23\ = CARRY((\s_actualCook[11]~7_combout\ & (!s_actualCook(11) & !\Add3~21\)) # (!\s_actualCook[11]~7_combout\ & ((!\Add3~21\) # (!s_actualCook(11)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \s_actualCook[11]~7_combout\,
	datab => s_actualCook(11),
	datad => VCC,
	cin => \Add3~21\,
	combout => \Add3~22_combout\,
	cout => \Add3~23\);

\s_actualCook[11]~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_actualCook[11]~18_combout\ = (s_actualCook(11) & ((\s_actualCook[11]~5_combout\) # ((\s_actualCook[15]~4_combout\ & \Add3~22_combout\)))) # (!s_actualCook(11) & (\s_actualCook[15]~4_combout\ & (\Add3~22_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => s_actualCook(11),
	datab => \s_actualCook[15]~4_combout\,
	datac => \Add3~22_combout\,
	datad => \s_actualCook[11]~5_combout\,
	combout => \s_actualCook[11]~18_combout\);

\s_actualCook[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \s_actualCook[11]~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_actualCook(11));

\Add3~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add3~24_combout\ = ((\s_actualCook[11]~7_combout\ $ (s_actualCook(12) $ (!\Add3~23\)))) # (GND)
-- \Add3~25\ = CARRY((\s_actualCook[11]~7_combout\ & ((s_actualCook(12)) # (!\Add3~23\))) # (!\s_actualCook[11]~7_combout\ & (s_actualCook(12) & !\Add3~23\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \s_actualCook[11]~7_combout\,
	datab => s_actualCook(12),
	datad => VCC,
	cin => \Add3~23\,
	combout => \Add3~24_combout\,
	cout => \Add3~25\);

\s_actualCook[12]~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_actualCook[12]~19_combout\ = (s_actualCook(12) & ((\s_actualCook[11]~5_combout\) # ((\s_actualCook[15]~4_combout\ & \Add3~24_combout\)))) # (!s_actualCook(12) & (\s_actualCook[15]~4_combout\ & (\Add3~24_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => s_actualCook(12),
	datab => \s_actualCook[15]~4_combout\,
	datac => \Add3~24_combout\,
	datad => \s_actualCook[11]~5_combout\,
	combout => \s_actualCook[12]~19_combout\);

\s_actualCook[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \s_actualCook[12]~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_actualCook(12));

\Add3~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add3~26_combout\ = (\s_actualCook[11]~7_combout\ & ((s_actualCook(13) & (\Add3~25\ & VCC)) # (!s_actualCook(13) & (!\Add3~25\)))) # (!\s_actualCook[11]~7_combout\ & ((s_actualCook(13) & (!\Add3~25\)) # (!s_actualCook(13) & ((\Add3~25\) # (GND)))))
-- \Add3~27\ = CARRY((\s_actualCook[11]~7_combout\ & (!s_actualCook(13) & !\Add3~25\)) # (!\s_actualCook[11]~7_combout\ & ((!\Add3~25\) # (!s_actualCook(13)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \s_actualCook[11]~7_combout\,
	datab => s_actualCook(13),
	datad => VCC,
	cin => \Add3~25\,
	combout => \Add3~26_combout\,
	cout => \Add3~27\);

\s_actualCook[13]~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_actualCook[13]~20_combout\ = (s_actualCook(13) & ((\s_actualCook[11]~5_combout\) # ((\s_actualCook[15]~4_combout\ & \Add3~26_combout\)))) # (!s_actualCook(13) & (\s_actualCook[15]~4_combout\ & (\Add3~26_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => s_actualCook(13),
	datab => \s_actualCook[15]~4_combout\,
	datac => \Add3~26_combout\,
	datad => \s_actualCook[11]~5_combout\,
	combout => \s_actualCook[13]~20_combout\);

\s_actualCook[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \s_actualCook[13]~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_actualCook(13));

\Add3~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add3~28_combout\ = ((\s_actualCook[11]~7_combout\ $ (s_actualCook(14) $ (!\Add3~27\)))) # (GND)
-- \Add3~29\ = CARRY((\s_actualCook[11]~7_combout\ & ((s_actualCook(14)) # (!\Add3~27\))) # (!\s_actualCook[11]~7_combout\ & (s_actualCook(14) & !\Add3~27\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \s_actualCook[11]~7_combout\,
	datab => s_actualCook(14),
	datad => VCC,
	cin => \Add3~27\,
	combout => \Add3~28_combout\,
	cout => \Add3~29\);

\s_actualCook[14]~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_actualCook[14]~21_combout\ = (!\reset~input_o\ & ((s_actualCook(14)) # ((\s_actualCook[14]~2_combout\ & \Add3~28_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => s_actualCook(14),
	datab => \s_actualCook[14]~2_combout\,
	datac => \Add3~28_combout\,
	datad => \reset~input_o\,
	combout => \s_actualCook[14]~21_combout\);

\s_actualCook[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \s_actualCook[14]~21_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_actualCook(14));

\LessThan2~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan2~2_combout\ = (s_actualCook(0)) # ((s_actualCook(2)) # ((!s_actualCook(3)) # (!s_actualCook(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => s_actualCook(0),
	datab => s_actualCook(2),
	datac => s_actualCook(1),
	datad => s_actualCook(3),
	combout => \LessThan2~2_combout\);

\LessThan2~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan2~3_combout\ = (s_actualCook(4)) # ((s_actualCook(5)) # ((s_actualCook(6)) # (s_actualCook(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => s_actualCook(4),
	datab => s_actualCook(5),
	datac => s_actualCook(6),
	datad => s_actualCook(7),
	combout => \LessThan2~3_combout\);

\LessThan2~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan2~4_combout\ = (\LessThan2~2_combout\) # ((\LessThan2~3_combout\) # (!\LessThan2~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan2~2_combout\,
	datab => \LessThan2~3_combout\,
	datad => \LessThan2~0_combout\,
	combout => \LessThan2~4_combout\);

\Add3~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add3~30_combout\ = \s_actualCook[11]~7_combout\ $ (s_actualCook(15) $ (\Add3~29\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010010110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \s_actualCook[11]~7_combout\,
	datab => s_actualCook(15),
	cin => \Add3~29\,
	combout => \Add3~30_combout\);

\s_actualCook[15]~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_actualCook[15]~22_combout\ = (\s_actualCook[11]~5_combout\ & (s_actualCook(15))) # (!\s_actualCook[11]~5_combout\ & (((\s_actualCook[11]~3_combout\ & \Add3~30_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => s_actualCook(15),
	datab => \s_actualCook[11]~3_combout\,
	datac => \Add3~30_combout\,
	datad => \s_actualCook[11]~5_combout\,
	combout => \s_actualCook[15]~22_combout\);

\s_actualCook[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \s_actualCook[15]~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_actualCook(15));

\LessThan2~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan2~1_combout\ = (!s_actualCook(12) & (!s_actualCook(13) & !s_actualCook(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => s_actualCook(12),
	datac => s_actualCook(13),
	datad => s_actualCook(15),
	combout => \LessThan2~1_combout\);

\s_actualCook[11]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_actualCook[11]~3_combout\ = (!\reset~input_o\ & ((s_actualCook(14)) # ((\LessThan2~4_combout\) # (!\LessThan2~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => s_actualCook(14),
	datab => \LessThan2~4_combout\,
	datac => \LessThan2~1_combout\,
	datad => \reset~input_o\,
	combout => \s_actualCook[11]~3_combout\);

\s_actualCook[1]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_actualCook[1]~8_combout\ = (\s_actualCook[11]~5_combout\ & (((s_actualCook(1))))) # (!\s_actualCook[11]~5_combout\ & (!\Add3~2_combout\ & (\s_actualCook[11]~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add3~2_combout\,
	datab => \s_actualCook[11]~3_combout\,
	datac => \s_actualCook[11]~5_combout\,
	datad => s_actualCook(1),
	combout => \s_actualCook[1]~8_combout\);

\s_actualCook[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \s_actualCook[1]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_actualCook(1));

\Add3~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add3~4_combout\ = ((\s_actualCook[11]~7_combout\ $ (s_actualCook(2) $ (!\Add3~3\)))) # (GND)
-- \Add3~5\ = CARRY((\s_actualCook[11]~7_combout\ & ((s_actualCook(2)) # (!\Add3~3\))) # (!\s_actualCook[11]~7_combout\ & (s_actualCook(2) & !\Add3~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \s_actualCook[11]~7_combout\,
	datab => s_actualCook(2),
	datad => VCC,
	cin => \Add3~3\,
	combout => \Add3~4_combout\,
	cout => \Add3~5\);

\s_actualCook[2]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_actualCook[2]~9_combout\ = (s_actualCook(2) & ((\s_actualCook[11]~5_combout\) # ((\s_actualCook[15]~4_combout\ & \Add3~4_combout\)))) # (!s_actualCook(2) & (\s_actualCook[15]~4_combout\ & (\Add3~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => s_actualCook(2),
	datab => \s_actualCook[15]~4_combout\,
	datac => \Add3~4_combout\,
	datad => \s_actualCook[11]~5_combout\,
	combout => \s_actualCook[2]~9_combout\);

\s_actualCook[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \s_actualCook[2]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_actualCook(2));

\Add3~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add3~6_combout\ = (\s_actualCook[11]~7_combout\ & ((s_actualCook(3) & (!\Add3~5\)) # (!s_actualCook(3) & (\Add3~5\ & VCC)))) # (!\s_actualCook[11]~7_combout\ & ((s_actualCook(3) & ((\Add3~5\) # (GND))) # (!s_actualCook(3) & (!\Add3~5\))))
-- \Add3~7\ = CARRY((\s_actualCook[11]~7_combout\ & (s_actualCook(3) & !\Add3~5\)) # (!\s_actualCook[11]~7_combout\ & ((s_actualCook(3)) # (!\Add3~5\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \s_actualCook[11]~7_combout\,
	datab => s_actualCook(3),
	datad => VCC,
	cin => \Add3~5\,
	combout => \Add3~6_combout\,
	cout => \Add3~7\);

\s_actualCook[3]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_actualCook[3]~10_combout\ = (\s_actualCook[11]~5_combout\ & (((s_actualCook(3))))) # (!\s_actualCook[11]~5_combout\ & (!\Add3~6_combout\ & (\s_actualCook[11]~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add3~6_combout\,
	datab => \s_actualCook[11]~3_combout\,
	datac => \s_actualCook[11]~5_combout\,
	datad => s_actualCook(3),
	combout => \s_actualCook[3]~10_combout\);

\s_actualCook[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \s_actualCook[3]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_actualCook(3));

\Add3~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add3~8_combout\ = ((\s_actualCook[11]~7_combout\ $ (s_actualCook(4) $ (!\Add3~7\)))) # (GND)
-- \Add3~9\ = CARRY((\s_actualCook[11]~7_combout\ & ((s_actualCook(4)) # (!\Add3~7\))) # (!\s_actualCook[11]~7_combout\ & (s_actualCook(4) & !\Add3~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \s_actualCook[11]~7_combout\,
	datab => s_actualCook(4),
	datad => VCC,
	cin => \Add3~7\,
	combout => \Add3~8_combout\,
	cout => \Add3~9\);

\s_actualCook[4]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_actualCook[4]~11_combout\ = (s_actualCook(4) & ((\s_actualCook[11]~5_combout\) # ((\s_actualCook[15]~4_combout\ & \Add3~8_combout\)))) # (!s_actualCook(4) & (\s_actualCook[15]~4_combout\ & (\Add3~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => s_actualCook(4),
	datab => \s_actualCook[15]~4_combout\,
	datac => \Add3~8_combout\,
	datad => \s_actualCook[11]~5_combout\,
	combout => \s_actualCook[4]~11_combout\);

\s_actualCook[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \s_actualCook[4]~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_actualCook(4));

\Add3~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add3~10_combout\ = (\s_actualCook[11]~7_combout\ & ((s_actualCook(5) & (\Add3~9\ & VCC)) # (!s_actualCook(5) & (!\Add3~9\)))) # (!\s_actualCook[11]~7_combout\ & ((s_actualCook(5) & (!\Add3~9\)) # (!s_actualCook(5) & ((\Add3~9\) # (GND)))))
-- \Add3~11\ = CARRY((\s_actualCook[11]~7_combout\ & (!s_actualCook(5) & !\Add3~9\)) # (!\s_actualCook[11]~7_combout\ & ((!\Add3~9\) # (!s_actualCook(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \s_actualCook[11]~7_combout\,
	datab => s_actualCook(5),
	datad => VCC,
	cin => \Add3~9\,
	combout => \Add3~10_combout\,
	cout => \Add3~11\);

\s_actualCook[5]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_actualCook[5]~12_combout\ = (s_actualCook(5) & ((\s_actualCook[11]~5_combout\) # ((\s_actualCook[15]~4_combout\ & \Add3~10_combout\)))) # (!s_actualCook(5) & (\s_actualCook[15]~4_combout\ & (\Add3~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => s_actualCook(5),
	datab => \s_actualCook[15]~4_combout\,
	datac => \Add3~10_combout\,
	datad => \s_actualCook[11]~5_combout\,
	combout => \s_actualCook[5]~12_combout\);

\s_actualCook[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \s_actualCook[5]~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_actualCook(5));

\Add3~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add3~12_combout\ = ((\s_actualCook[11]~7_combout\ $ (s_actualCook(6) $ (!\Add3~11\)))) # (GND)
-- \Add3~13\ = CARRY((\s_actualCook[11]~7_combout\ & ((s_actualCook(6)) # (!\Add3~11\))) # (!\s_actualCook[11]~7_combout\ & (s_actualCook(6) & !\Add3~11\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \s_actualCook[11]~7_combout\,
	datab => s_actualCook(6),
	datad => VCC,
	cin => \Add3~11\,
	combout => \Add3~12_combout\,
	cout => \Add3~13\);

\s_actualCook[6]~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_actualCook[6]~13_combout\ = (s_actualCook(6) & ((\s_actualCook[11]~5_combout\) # ((\s_actualCook[15]~4_combout\ & \Add3~12_combout\)))) # (!s_actualCook(6) & (\s_actualCook[15]~4_combout\ & (\Add3~12_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => s_actualCook(6),
	datab => \s_actualCook[15]~4_combout\,
	datac => \Add3~12_combout\,
	datad => \s_actualCook[11]~5_combout\,
	combout => \s_actualCook[6]~13_combout\);

\s_actualCook[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \s_actualCook[6]~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_actualCook(6));

\Add3~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add3~14_combout\ = (\s_actualCook[11]~7_combout\ & ((s_actualCook(7) & (\Add3~13\ & VCC)) # (!s_actualCook(7) & (!\Add3~13\)))) # (!\s_actualCook[11]~7_combout\ & ((s_actualCook(7) & (!\Add3~13\)) # (!s_actualCook(7) & ((\Add3~13\) # (GND)))))
-- \Add3~15\ = CARRY((\s_actualCook[11]~7_combout\ & (!s_actualCook(7) & !\Add3~13\)) # (!\s_actualCook[11]~7_combout\ & ((!\Add3~13\) # (!s_actualCook(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \s_actualCook[11]~7_combout\,
	datab => s_actualCook(7),
	datad => VCC,
	cin => \Add3~13\,
	combout => \Add3~14_combout\,
	cout => \Add3~15\);

\s_actualCook[7]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_actualCook[7]~14_combout\ = (s_actualCook(7) & ((\s_actualCook[11]~5_combout\) # ((\s_actualCook[15]~4_combout\ & \Add3~14_combout\)))) # (!s_actualCook(7) & (\s_actualCook[15]~4_combout\ & (\Add3~14_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => s_actualCook(7),
	datab => \s_actualCook[15]~4_combout\,
	datac => \Add3~14_combout\,
	datad => \s_actualCook[11]~5_combout\,
	combout => \s_actualCook[7]~14_combout\);

\s_actualCook[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \s_actualCook[7]~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_actualCook(7));

\s_actualCook[8]~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_actualCook[8]~15_combout\ = (s_actualCook(8) & ((\s_actualCook[11]~5_combout\) # ((\s_actualCook[15]~4_combout\ & \Add3~16_combout\)))) # (!s_actualCook(8) & (\s_actualCook[15]~4_combout\ & (\Add3~16_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => s_actualCook(8),
	datab => \s_actualCook[15]~4_combout\,
	datac => \Add3~16_combout\,
	datad => \s_actualCook[11]~5_combout\,
	combout => \s_actualCook[8]~15_combout\);

\s_actualCook[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \s_actualCook[8]~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_actualCook(8));

\LessThan2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan2~0_combout\ = (!s_actualCook(8) & (!s_actualCook(9) & (!s_actualCook(10) & !s_actualCook(11))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => s_actualCook(8),
	datab => s_actualCook(9),
	datac => s_actualCook(10),
	datad => s_actualCook(11),
	combout => \LessThan2~0_combout\);

\LessThan3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan3~0_combout\ = (((s_actualCook(3) & !s_actualCook(2))) # (!s_actualCook(5))) # (!s_actualCook(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => s_actualCook(3),
	datab => s_actualCook(2),
	datac => s_actualCook(4),
	datad => s_actualCook(5),
	combout => \LessThan3~0_combout\);

\s_actualCook[14]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_actualCook[14]~0_combout\ = (\LessThan2~0_combout\ & (((\LessThan3~0_combout\ & !s_actualCook(6))) # (!s_actualCook(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan2~0_combout\,
	datab => \LessThan3~0_combout\,
	datac => s_actualCook(6),
	datad => s_actualCook(7),
	combout => \s_actualCook[14]~0_combout\);

\decrementCook~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_decrementCook,
	o => \decrementCook~input_o\);

\s_actualCook[14]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_actualCook[14]~1_combout\ = (\enable~input_o\ & ((\runCook~input_o\) # ((\incrementCook~input_o\) # (\decrementCook~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \enable~input_o\,
	datab => \runCook~input_o\,
	datac => \incrementCook~input_o\,
	datad => \decrementCook~input_o\,
	combout => \s_actualCook[14]~1_combout\);

\s_actualCook[14]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_actualCook[14]~2_combout\ = (\s_actualCook[14]~0_combout\ & (\LessThan2~1_combout\ & (\LessThan2~4_combout\ & \s_actualCook[14]~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s_actualCook[14]~0_combout\,
	datab => \LessThan2~1_combout\,
	datac => \LessThan2~4_combout\,
	datad => \s_actualCook[14]~1_combout\,
	combout => \s_actualCook[14]~2_combout\);

\s_actualCook[15]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_actualCook[15]~4_combout\ = (\s_actualCook[14]~2_combout\ & (\s_actualCook[11]~3_combout\ & !s_actualCook(14)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s_actualCook[14]~2_combout\,
	datab => \s_actualCook[11]~3_combout\,
	datad => s_actualCook(14),
	combout => \s_actualCook[15]~4_combout\);

\s_actualCook[0]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_actualCook[0]~6_combout\ = (s_actualCook(0) & ((\s_actualCook[11]~5_combout\) # ((\Add3~0_combout\ & \s_actualCook[15]~4_combout\)))) # (!s_actualCook(0) & (\Add3~0_combout\ & (\s_actualCook[15]~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => s_actualCook(0),
	datab => \Add3~0_combout\,
	datac => \s_actualCook[15]~4_combout\,
	datad => \s_actualCook[11]~5_combout\,
	combout => \s_actualCook[0]~6_combout\);

\s_actualCook[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \s_actualCook[0]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_actualCook(0));

ww_finishTime <= \finishTime~output_o\;

ww_timeOutIdle(0) <= \timeOutIdle[0]~output_o\;

ww_timeOutIdle(1) <= \timeOutIdle[1]~output_o\;

ww_timeOutIdle(2) <= \timeOutIdle[2]~output_o\;

ww_timeOutIdle(3) <= \timeOutIdle[3]~output_o\;

ww_timeOutIdle(4) <= \timeOutIdle[4]~output_o\;

ww_timeOutIdle(5) <= \timeOutIdle[5]~output_o\;

ww_timeOutIdle(6) <= \timeOutIdle[6]~output_o\;

ww_timeOutIdle(7) <= \timeOutIdle[7]~output_o\;

ww_timeOutIdle(8) <= \timeOutIdle[8]~output_o\;

ww_timeOutIdle(9) <= \timeOutIdle[9]~output_o\;

ww_timeOutIdle(10) <= \timeOutIdle[10]~output_o\;

ww_timeOutIdle(11) <= \timeOutIdle[11]~output_o\;

ww_timeOutIdle(12) <= \timeOutIdle[12]~output_o\;

ww_timeOutIdle(13) <= \timeOutIdle[13]~output_o\;

ww_timeOutIdle(14) <= \timeOutIdle[14]~output_o\;

ww_timeOutIdle(15) <= \timeOutIdle[15]~output_o\;

ww_timeOutCook(0) <= \timeOutCook[0]~output_o\;

ww_timeOutCook(1) <= \timeOutCook[1]~output_o\;

ww_timeOutCook(2) <= \timeOutCook[2]~output_o\;

ww_timeOutCook(3) <= \timeOutCook[3]~output_o\;

ww_timeOutCook(4) <= \timeOutCook[4]~output_o\;

ww_timeOutCook(5) <= \timeOutCook[5]~output_o\;

ww_timeOutCook(6) <= \timeOutCook[6]~output_o\;

ww_timeOutCook(7) <= \timeOutCook[7]~output_o\;

ww_timeOutCook(8) <= \timeOutCook[8]~output_o\;

ww_timeOutCook(9) <= \timeOutCook[9]~output_o\;

ww_timeOutCook(10) <= \timeOutCook[10]~output_o\;

ww_timeOutCook(11) <= \timeOutCook[11]~output_o\;

ww_timeOutCook(12) <= \timeOutCook[12]~output_o\;

ww_timeOutCook(13) <= \timeOutCook[13]~output_o\;

ww_timeOutCook(14) <= \timeOutCook[14]~output_o\;

ww_timeOutCook(15) <= \timeOutCook[15]~output_o\;
END structure;


