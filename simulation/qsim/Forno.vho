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

-- DATE "05/17/2024 16:42:25"

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

ENTITY 	FornoFSM IS
    PORT (
	clk : IN std_logic;
	reset : IN std_logic;
	endTimer : IN std_logic;
	leaveFinish : IN std_logic;
	timeMaxCooking : IN std_logic_vector(15 DOWNTO 0);
	timeIdle : IN std_logic_vector(15 DOWNTO 0);
	cookEnable : OUT std_logic;
	timerStart : OUT std_logic;
	timeToExecute : OUT std_logic_vector(15 DOWNTO 0);
	actualState : OUT std_logic_vector(1 DOWNTO 0)
	);
END FornoFSM;

ARCHITECTURE structure OF FornoFSM IS
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
SIGNAL ww_endTimer : std_logic;
SIGNAL ww_leaveFinish : std_logic;
SIGNAL ww_timeMaxCooking : std_logic_vector(15 DOWNTO 0);
SIGNAL ww_timeIdle : std_logic_vector(15 DOWNTO 0);
SIGNAL ww_cookEnable : std_logic;
SIGNAL ww_timerStart : std_logic;
SIGNAL ww_timeToExecute : std_logic_vector(15 DOWNTO 0);
SIGNAL ww_actualState : std_logic_vector(1 DOWNTO 0);
SIGNAL \cookEnable~output_o\ : std_logic;
SIGNAL \timerStart~output_o\ : std_logic;
SIGNAL \timeToExecute[0]~output_o\ : std_logic;
SIGNAL \timeToExecute[1]~output_o\ : std_logic;
SIGNAL \timeToExecute[2]~output_o\ : std_logic;
SIGNAL \timeToExecute[3]~output_o\ : std_logic;
SIGNAL \timeToExecute[4]~output_o\ : std_logic;
SIGNAL \timeToExecute[5]~output_o\ : std_logic;
SIGNAL \timeToExecute[6]~output_o\ : std_logic;
SIGNAL \timeToExecute[7]~output_o\ : std_logic;
SIGNAL \timeToExecute[8]~output_o\ : std_logic;
SIGNAL \timeToExecute[9]~output_o\ : std_logic;
SIGNAL \timeToExecute[10]~output_o\ : std_logic;
SIGNAL \timeToExecute[11]~output_o\ : std_logic;
SIGNAL \timeToExecute[12]~output_o\ : std_logic;
SIGNAL \timeToExecute[13]~output_o\ : std_logic;
SIGNAL \timeToExecute[14]~output_o\ : std_logic;
SIGNAL \timeToExecute[15]~output_o\ : std_logic;
SIGNAL \actualState[0]~output_o\ : std_logic;
SIGNAL \actualState[1]~output_o\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \endTimer~input_o\ : std_logic;
SIGNAL \reset~input_o\ : std_logic;
SIGNAL \leaveFinish~input_o\ : std_logic;
SIGNAL \Selector3~0_combout\ : std_logic;
SIGNAL \s_currentState~6_combout\ : std_logic;
SIGNAL \s_currentState.FINISH~q\ : std_logic;
SIGNAL \Selector1~0_combout\ : std_logic;
SIGNAL \s_currentState~7_combout\ : std_logic;
SIGNAL \s_currentState.IDLE~q\ : std_logic;
SIGNAL \s_currentState~5_combout\ : std_logic;
SIGNAL \s_currentState.COOK~q\ : std_logic;
SIGNAL \s_stateChanged~0_combout\ : std_logic;
SIGNAL \s_stateChanged~1_combout\ : std_logic;
SIGNAL \s_stateChanged~2_combout\ : std_logic;
SIGNAL \s_stateChanged~q\ : std_logic;
SIGNAL \timerStart~0_combout\ : std_logic;
SIGNAL \timeMaxCooking[0]~input_o\ : std_logic;
SIGNAL \timeIdle[0]~input_o\ : std_logic;
SIGNAL \Selector0~0_combout\ : std_logic;
SIGNAL \timeToExecute[0]$latch~combout\ : std_logic;
SIGNAL \timeMaxCooking[1]~input_o\ : std_logic;
SIGNAL \timeIdle[1]~input_o\ : std_logic;
SIGNAL \Selector4~0_combout\ : std_logic;
SIGNAL \timeToExecute[1]$latch~combout\ : std_logic;
SIGNAL \timeMaxCooking[2]~input_o\ : std_logic;
SIGNAL \timeIdle[2]~input_o\ : std_logic;
SIGNAL \Selector5~0_combout\ : std_logic;
SIGNAL \timeToExecute[2]$latch~combout\ : std_logic;
SIGNAL \timeMaxCooking[3]~input_o\ : std_logic;
SIGNAL \timeIdle[3]~input_o\ : std_logic;
SIGNAL \Selector6~0_combout\ : std_logic;
SIGNAL \timeToExecute[3]$latch~combout\ : std_logic;
SIGNAL \timeMaxCooking[4]~input_o\ : std_logic;
SIGNAL \timeIdle[4]~input_o\ : std_logic;
SIGNAL \Selector7~0_combout\ : std_logic;
SIGNAL \timeToExecute[4]$latch~combout\ : std_logic;
SIGNAL \timeMaxCooking[5]~input_o\ : std_logic;
SIGNAL \timeIdle[5]~input_o\ : std_logic;
SIGNAL \Selector8~0_combout\ : std_logic;
SIGNAL \timeToExecute[5]$latch~combout\ : std_logic;
SIGNAL \timeMaxCooking[6]~input_o\ : std_logic;
SIGNAL \timeIdle[6]~input_o\ : std_logic;
SIGNAL \Selector9~0_combout\ : std_logic;
SIGNAL \timeToExecute[6]$latch~combout\ : std_logic;
SIGNAL \timeMaxCooking[7]~input_o\ : std_logic;
SIGNAL \timeIdle[7]~input_o\ : std_logic;
SIGNAL \Selector10~0_combout\ : std_logic;
SIGNAL \timeToExecute[7]$latch~combout\ : std_logic;
SIGNAL \timeMaxCooking[8]~input_o\ : std_logic;
SIGNAL \timeIdle[8]~input_o\ : std_logic;
SIGNAL \Selector11~0_combout\ : std_logic;
SIGNAL \timeToExecute[8]$latch~combout\ : std_logic;
SIGNAL \timeMaxCooking[9]~input_o\ : std_logic;
SIGNAL \timeIdle[9]~input_o\ : std_logic;
SIGNAL \Selector12~0_combout\ : std_logic;
SIGNAL \timeToExecute[9]$latch~combout\ : std_logic;
SIGNAL \timeMaxCooking[10]~input_o\ : std_logic;
SIGNAL \timeIdle[10]~input_o\ : std_logic;
SIGNAL \Selector13~0_combout\ : std_logic;
SIGNAL \timeToExecute[10]$latch~combout\ : std_logic;
SIGNAL \timeMaxCooking[11]~input_o\ : std_logic;
SIGNAL \timeIdle[11]~input_o\ : std_logic;
SIGNAL \Selector14~0_combout\ : std_logic;
SIGNAL \timeToExecute[11]$latch~combout\ : std_logic;
SIGNAL \timeMaxCooking[12]~input_o\ : std_logic;
SIGNAL \timeIdle[12]~input_o\ : std_logic;
SIGNAL \Selector15~0_combout\ : std_logic;
SIGNAL \timeToExecute[12]$latch~combout\ : std_logic;
SIGNAL \timeMaxCooking[13]~input_o\ : std_logic;
SIGNAL \timeIdle[13]~input_o\ : std_logic;
SIGNAL \Selector16~0_combout\ : std_logic;
SIGNAL \timeToExecute[13]$latch~combout\ : std_logic;
SIGNAL \timeMaxCooking[14]~input_o\ : std_logic;
SIGNAL \timeIdle[14]~input_o\ : std_logic;
SIGNAL \Selector17~0_combout\ : std_logic;
SIGNAL \timeToExecute[14]$latch~combout\ : std_logic;
SIGNAL \timeMaxCooking[15]~input_o\ : std_logic;
SIGNAL \timeIdle[15]~input_o\ : std_logic;
SIGNAL \Selector18~0_combout\ : std_logic;
SIGNAL \timeToExecute[15]$latch~combout\ : std_logic;

BEGIN

ww_clk <= clk;
ww_reset <= reset;
ww_endTimer <= endTimer;
ww_leaveFinish <= leaveFinish;
ww_timeMaxCooking <= timeMaxCooking;
ww_timeIdle <= timeIdle;
cookEnable <= ww_cookEnable;
timerStart <= ww_timerStart;
timeToExecute <= ww_timeToExecute;
actualState <= ww_actualState;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\cookEnable~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \s_currentState.COOK~q\,
	devoe => ww_devoe,
	o => \cookEnable~output_o\);

\timerStart~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \timerStart~0_combout\,
	devoe => ww_devoe,
	o => \timerStart~output_o\);

\timeToExecute[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \timeToExecute[0]$latch~combout\,
	devoe => ww_devoe,
	o => \timeToExecute[0]~output_o\);

\timeToExecute[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \timeToExecute[1]$latch~combout\,
	devoe => ww_devoe,
	o => \timeToExecute[1]~output_o\);

\timeToExecute[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \timeToExecute[2]$latch~combout\,
	devoe => ww_devoe,
	o => \timeToExecute[2]~output_o\);

\timeToExecute[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \timeToExecute[3]$latch~combout\,
	devoe => ww_devoe,
	o => \timeToExecute[3]~output_o\);

\timeToExecute[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \timeToExecute[4]$latch~combout\,
	devoe => ww_devoe,
	o => \timeToExecute[4]~output_o\);

\timeToExecute[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \timeToExecute[5]$latch~combout\,
	devoe => ww_devoe,
	o => \timeToExecute[5]~output_o\);

\timeToExecute[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \timeToExecute[6]$latch~combout\,
	devoe => ww_devoe,
	o => \timeToExecute[6]~output_o\);

\timeToExecute[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \timeToExecute[7]$latch~combout\,
	devoe => ww_devoe,
	o => \timeToExecute[7]~output_o\);

\timeToExecute[8]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \timeToExecute[8]$latch~combout\,
	devoe => ww_devoe,
	o => \timeToExecute[8]~output_o\);

\timeToExecute[9]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \timeToExecute[9]$latch~combout\,
	devoe => ww_devoe,
	o => \timeToExecute[9]~output_o\);

\timeToExecute[10]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \timeToExecute[10]$latch~combout\,
	devoe => ww_devoe,
	o => \timeToExecute[10]~output_o\);

\timeToExecute[11]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \timeToExecute[11]$latch~combout\,
	devoe => ww_devoe,
	o => \timeToExecute[11]~output_o\);

\timeToExecute[12]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \timeToExecute[12]$latch~combout\,
	devoe => ww_devoe,
	o => \timeToExecute[12]~output_o\);

\timeToExecute[13]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \timeToExecute[13]$latch~combout\,
	devoe => ww_devoe,
	o => \timeToExecute[13]~output_o\);

\timeToExecute[14]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \timeToExecute[14]$latch~combout\,
	devoe => ww_devoe,
	o => \timeToExecute[14]~output_o\);

\timeToExecute[15]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \timeToExecute[15]$latch~combout\,
	devoe => ww_devoe,
	o => \timeToExecute[15]~output_o\);

\actualState[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \s_currentState.COOK~q\,
	devoe => ww_devoe,
	o => \actualState[0]~output_o\);

\actualState[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \s_currentState.FINISH~q\,
	devoe => ww_devoe,
	o => \actualState[1]~output_o\);

\clk~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clk,
	o => \clk~input_o\);

\endTimer~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_endTimer,
	o => \endTimer~input_o\);

\reset~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_reset,
	o => \reset~input_o\);

\leaveFinish~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_leaveFinish,
	o => \leaveFinish~input_o\);

\Selector3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector3~0_combout\ = (\s_currentState.COOK~q\ & ((\endTimer~input_o\) # ((\s_currentState.FINISH~q\ & !\leaveFinish~input_o\)))) # (!\s_currentState.COOK~q\ & (((\s_currentState.FINISH~q\ & !\leaveFinish~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s_currentState.COOK~q\,
	datab => \endTimer~input_o\,
	datac => \s_currentState.FINISH~q\,
	datad => \leaveFinish~input_o\,
	combout => \Selector3~0_combout\);

\s_currentState~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_currentState~6_combout\ = (\Selector3~0_combout\ & !\reset~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector3~0_combout\,
	datad => \reset~input_o\,
	combout => \s_currentState~6_combout\);

\s_currentState.FINISH\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \s_currentState~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \s_currentState.FINISH~q\);

\Selector1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector1~0_combout\ = (\s_currentState.FINISH~q\ & ((\leaveFinish~input_o\) # ((!\endTimer~input_o\ & !\s_currentState.IDLE~q\)))) # (!\s_currentState.FINISH~q\ & (((!\endTimer~input_o\ & !\s_currentState.IDLE~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s_currentState.FINISH~q\,
	datab => \leaveFinish~input_o\,
	datac => \endTimer~input_o\,
	datad => \s_currentState.IDLE~q\,
	combout => \Selector1~0_combout\);

\s_currentState~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_currentState~7_combout\ = (!\reset~input_o\ & !\Selector1~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000100010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reset~input_o\,
	datab => \Selector1~0_combout\,
	combout => \s_currentState~7_combout\);

\s_currentState.IDLE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \s_currentState~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \s_currentState.IDLE~q\);

\s_currentState~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_currentState~5_combout\ = (!\reset~input_o\ & ((\endTimer~input_o\ & ((!\s_currentState.IDLE~q\))) # (!\endTimer~input_o\ & (\s_currentState.COOK~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s_currentState.COOK~q\,
	datab => \endTimer~input_o\,
	datac => \s_currentState.IDLE~q\,
	datad => \reset~input_o\,
	combout => \s_currentState~5_combout\);

\s_currentState.COOK\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \s_currentState~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \s_currentState.COOK~q\);

\s_stateChanged~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_stateChanged~0_combout\ = (\leaveFinish~input_o\ & (\s_currentState.FINISH~q\ $ (((\s_currentState.COOK~q\ & \endTimer~input_o\))))) # (!\leaveFinish~input_o\ & (\s_currentState.COOK~q\ & (\endTimer~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \leaveFinish~input_o\,
	datab => \s_currentState.COOK~q\,
	datac => \endTimer~input_o\,
	datad => \s_currentState.FINISH~q\,
	combout => \s_stateChanged~0_combout\);

\s_stateChanged~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_stateChanged~1_combout\ = \s_currentState.IDLE~q\ $ (!\s_currentState.COOK~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100110011001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s_currentState.IDLE~q\,
	datab => \s_currentState.COOK~q\,
	combout => \s_stateChanged~1_combout\);

\s_stateChanged~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_stateChanged~2_combout\ = (\reset~input_o\) # ((\s_stateChanged~0_combout\) # ((\endTimer~input_o\ & \s_stateChanged~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \endTimer~input_o\,
	datab => \reset~input_o\,
	datac => \s_stateChanged~0_combout\,
	datad => \s_stateChanged~1_combout\,
	combout => \s_stateChanged~2_combout\);

s_stateChanged : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \s_stateChanged~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \s_stateChanged~q\);

\timerStart~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \timerStart~0_combout\ = (\s_stateChanged~q\ & !\s_currentState.FINISH~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s_stateChanged~q\,
	datad => \s_currentState.FINISH~q\,
	combout => \timerStart~0_combout\);

\timeMaxCooking[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_timeMaxCooking(0),
	o => \timeMaxCooking[0]~input_o\);

\timeIdle[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_timeIdle(0),
	o => \timeIdle[0]~input_o\);

\Selector0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector0~0_combout\ = (\s_currentState.COOK~q\ & (\timeMaxCooking[0]~input_o\)) # (!\s_currentState.COOK~q\ & ((\timeIdle[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \timeMaxCooking[0]~input_o\,
	datab => \timeIdle[0]~input_o\,
	datad => \s_currentState.COOK~q\,
	combout => \Selector0~0_combout\);

\timeToExecute[0]$latch\ : cycloneive_lcell_comb
-- Equation(s):
-- \timeToExecute[0]$latch~combout\ = (\s_currentState.FINISH~q\ & ((\timeToExecute[0]$latch~combout\))) # (!\s_currentState.FINISH~q\ & (\Selector0~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Selector0~0_combout\,
	datac => \timeToExecute[0]$latch~combout\,
	datad => \s_currentState.FINISH~q\,
	combout => \timeToExecute[0]$latch~combout\);

\timeMaxCooking[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_timeMaxCooking(1),
	o => \timeMaxCooking[1]~input_o\);

\timeIdle[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_timeIdle(1),
	o => \timeIdle[1]~input_o\);

\Selector4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector4~0_combout\ = (\s_currentState.COOK~q\ & (\timeMaxCooking[1]~input_o\)) # (!\s_currentState.COOK~q\ & ((\timeIdle[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \timeMaxCooking[1]~input_o\,
	datab => \timeIdle[1]~input_o\,
	datad => \s_currentState.COOK~q\,
	combout => \Selector4~0_combout\);

\timeToExecute[1]$latch\ : cycloneive_lcell_comb
-- Equation(s):
-- \timeToExecute[1]$latch~combout\ = (\s_currentState.FINISH~q\ & ((\timeToExecute[1]$latch~combout\))) # (!\s_currentState.FINISH~q\ & (\Selector4~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Selector4~0_combout\,
	datac => \timeToExecute[1]$latch~combout\,
	datad => \s_currentState.FINISH~q\,
	combout => \timeToExecute[1]$latch~combout\);

\timeMaxCooking[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_timeMaxCooking(2),
	o => \timeMaxCooking[2]~input_o\);

\timeIdle[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_timeIdle(2),
	o => \timeIdle[2]~input_o\);

\Selector5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector5~0_combout\ = (\s_currentState.COOK~q\ & (\timeMaxCooking[2]~input_o\)) # (!\s_currentState.COOK~q\ & ((\timeIdle[2]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \timeMaxCooking[2]~input_o\,
	datab => \timeIdle[2]~input_o\,
	datad => \s_currentState.COOK~q\,
	combout => \Selector5~0_combout\);

\timeToExecute[2]$latch\ : cycloneive_lcell_comb
-- Equation(s):
-- \timeToExecute[2]$latch~combout\ = (\s_currentState.FINISH~q\ & ((\timeToExecute[2]$latch~combout\))) # (!\s_currentState.FINISH~q\ & (\Selector5~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Selector5~0_combout\,
	datac => \timeToExecute[2]$latch~combout\,
	datad => \s_currentState.FINISH~q\,
	combout => \timeToExecute[2]$latch~combout\);

\timeMaxCooking[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_timeMaxCooking(3),
	o => \timeMaxCooking[3]~input_o\);

\timeIdle[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_timeIdle(3),
	o => \timeIdle[3]~input_o\);

\Selector6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector6~0_combout\ = (\s_currentState.COOK~q\ & (\timeMaxCooking[3]~input_o\)) # (!\s_currentState.COOK~q\ & ((\timeIdle[3]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \timeMaxCooking[3]~input_o\,
	datab => \timeIdle[3]~input_o\,
	datad => \s_currentState.COOK~q\,
	combout => \Selector6~0_combout\);

\timeToExecute[3]$latch\ : cycloneive_lcell_comb
-- Equation(s):
-- \timeToExecute[3]$latch~combout\ = (\s_currentState.FINISH~q\ & ((\timeToExecute[3]$latch~combout\))) # (!\s_currentState.FINISH~q\ & (\Selector6~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Selector6~0_combout\,
	datac => \timeToExecute[3]$latch~combout\,
	datad => \s_currentState.FINISH~q\,
	combout => \timeToExecute[3]$latch~combout\);

\timeMaxCooking[4]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_timeMaxCooking(4),
	o => \timeMaxCooking[4]~input_o\);

\timeIdle[4]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_timeIdle(4),
	o => \timeIdle[4]~input_o\);

\Selector7~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector7~0_combout\ = (\s_currentState.COOK~q\ & (\timeMaxCooking[4]~input_o\)) # (!\s_currentState.COOK~q\ & ((\timeIdle[4]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \timeMaxCooking[4]~input_o\,
	datab => \timeIdle[4]~input_o\,
	datad => \s_currentState.COOK~q\,
	combout => \Selector7~0_combout\);

\timeToExecute[4]$latch\ : cycloneive_lcell_comb
-- Equation(s):
-- \timeToExecute[4]$latch~combout\ = (\s_currentState.FINISH~q\ & ((\timeToExecute[4]$latch~combout\))) # (!\s_currentState.FINISH~q\ & (\Selector7~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Selector7~0_combout\,
	datac => \timeToExecute[4]$latch~combout\,
	datad => \s_currentState.FINISH~q\,
	combout => \timeToExecute[4]$latch~combout\);

\timeMaxCooking[5]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_timeMaxCooking(5),
	o => \timeMaxCooking[5]~input_o\);

\timeIdle[5]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_timeIdle(5),
	o => \timeIdle[5]~input_o\);

\Selector8~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector8~0_combout\ = (\s_currentState.COOK~q\ & (\timeMaxCooking[5]~input_o\)) # (!\s_currentState.COOK~q\ & ((\timeIdle[5]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \timeMaxCooking[5]~input_o\,
	datab => \timeIdle[5]~input_o\,
	datad => \s_currentState.COOK~q\,
	combout => \Selector8~0_combout\);

\timeToExecute[5]$latch\ : cycloneive_lcell_comb
-- Equation(s):
-- \timeToExecute[5]$latch~combout\ = (\s_currentState.FINISH~q\ & ((\timeToExecute[5]$latch~combout\))) # (!\s_currentState.FINISH~q\ & (\Selector8~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Selector8~0_combout\,
	datac => \timeToExecute[5]$latch~combout\,
	datad => \s_currentState.FINISH~q\,
	combout => \timeToExecute[5]$latch~combout\);

\timeMaxCooking[6]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_timeMaxCooking(6),
	o => \timeMaxCooking[6]~input_o\);

\timeIdle[6]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_timeIdle(6),
	o => \timeIdle[6]~input_o\);

\Selector9~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector9~0_combout\ = (\s_currentState.COOK~q\ & (\timeMaxCooking[6]~input_o\)) # (!\s_currentState.COOK~q\ & ((\timeIdle[6]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \timeMaxCooking[6]~input_o\,
	datab => \timeIdle[6]~input_o\,
	datad => \s_currentState.COOK~q\,
	combout => \Selector9~0_combout\);

\timeToExecute[6]$latch\ : cycloneive_lcell_comb
-- Equation(s):
-- \timeToExecute[6]$latch~combout\ = (\s_currentState.FINISH~q\ & ((\timeToExecute[6]$latch~combout\))) # (!\s_currentState.FINISH~q\ & (\Selector9~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Selector9~0_combout\,
	datac => \timeToExecute[6]$latch~combout\,
	datad => \s_currentState.FINISH~q\,
	combout => \timeToExecute[6]$latch~combout\);

\timeMaxCooking[7]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_timeMaxCooking(7),
	o => \timeMaxCooking[7]~input_o\);

\timeIdle[7]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_timeIdle(7),
	o => \timeIdle[7]~input_o\);

\Selector10~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector10~0_combout\ = (\s_currentState.COOK~q\ & (\timeMaxCooking[7]~input_o\)) # (!\s_currentState.COOK~q\ & ((\timeIdle[7]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \timeMaxCooking[7]~input_o\,
	datab => \timeIdle[7]~input_o\,
	datad => \s_currentState.COOK~q\,
	combout => \Selector10~0_combout\);

\timeToExecute[7]$latch\ : cycloneive_lcell_comb
-- Equation(s):
-- \timeToExecute[7]$latch~combout\ = (\s_currentState.FINISH~q\ & ((\timeToExecute[7]$latch~combout\))) # (!\s_currentState.FINISH~q\ & (\Selector10~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Selector10~0_combout\,
	datac => \timeToExecute[7]$latch~combout\,
	datad => \s_currentState.FINISH~q\,
	combout => \timeToExecute[7]$latch~combout\);

\timeMaxCooking[8]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_timeMaxCooking(8),
	o => \timeMaxCooking[8]~input_o\);

\timeIdle[8]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_timeIdle(8),
	o => \timeIdle[8]~input_o\);

\Selector11~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector11~0_combout\ = (\s_currentState.COOK~q\ & (\timeMaxCooking[8]~input_o\)) # (!\s_currentState.COOK~q\ & ((\timeIdle[8]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \timeMaxCooking[8]~input_o\,
	datab => \timeIdle[8]~input_o\,
	datad => \s_currentState.COOK~q\,
	combout => \Selector11~0_combout\);

\timeToExecute[8]$latch\ : cycloneive_lcell_comb
-- Equation(s):
-- \timeToExecute[8]$latch~combout\ = (\s_currentState.FINISH~q\ & ((\timeToExecute[8]$latch~combout\))) # (!\s_currentState.FINISH~q\ & (\Selector11~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Selector11~0_combout\,
	datac => \timeToExecute[8]$latch~combout\,
	datad => \s_currentState.FINISH~q\,
	combout => \timeToExecute[8]$latch~combout\);

\timeMaxCooking[9]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_timeMaxCooking(9),
	o => \timeMaxCooking[9]~input_o\);

\timeIdle[9]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_timeIdle(9),
	o => \timeIdle[9]~input_o\);

\Selector12~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector12~0_combout\ = (\s_currentState.COOK~q\ & (\timeMaxCooking[9]~input_o\)) # (!\s_currentState.COOK~q\ & ((\timeIdle[9]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \timeMaxCooking[9]~input_o\,
	datab => \timeIdle[9]~input_o\,
	datad => \s_currentState.COOK~q\,
	combout => \Selector12~0_combout\);

\timeToExecute[9]$latch\ : cycloneive_lcell_comb
-- Equation(s):
-- \timeToExecute[9]$latch~combout\ = (\s_currentState.FINISH~q\ & ((\timeToExecute[9]$latch~combout\))) # (!\s_currentState.FINISH~q\ & (\Selector12~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Selector12~0_combout\,
	datac => \timeToExecute[9]$latch~combout\,
	datad => \s_currentState.FINISH~q\,
	combout => \timeToExecute[9]$latch~combout\);

\timeMaxCooking[10]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_timeMaxCooking(10),
	o => \timeMaxCooking[10]~input_o\);

\timeIdle[10]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_timeIdle(10),
	o => \timeIdle[10]~input_o\);

\Selector13~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector13~0_combout\ = (\s_currentState.COOK~q\ & (\timeMaxCooking[10]~input_o\)) # (!\s_currentState.COOK~q\ & ((\timeIdle[10]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \timeMaxCooking[10]~input_o\,
	datab => \timeIdle[10]~input_o\,
	datad => \s_currentState.COOK~q\,
	combout => \Selector13~0_combout\);

\timeToExecute[10]$latch\ : cycloneive_lcell_comb
-- Equation(s):
-- \timeToExecute[10]$latch~combout\ = (\s_currentState.FINISH~q\ & ((\timeToExecute[10]$latch~combout\))) # (!\s_currentState.FINISH~q\ & (\Selector13~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Selector13~0_combout\,
	datac => \timeToExecute[10]$latch~combout\,
	datad => \s_currentState.FINISH~q\,
	combout => \timeToExecute[10]$latch~combout\);

\timeMaxCooking[11]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_timeMaxCooking(11),
	o => \timeMaxCooking[11]~input_o\);

\timeIdle[11]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_timeIdle(11),
	o => \timeIdle[11]~input_o\);

\Selector14~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector14~0_combout\ = (\s_currentState.COOK~q\ & (\timeMaxCooking[11]~input_o\)) # (!\s_currentState.COOK~q\ & ((\timeIdle[11]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \timeMaxCooking[11]~input_o\,
	datab => \timeIdle[11]~input_o\,
	datad => \s_currentState.COOK~q\,
	combout => \Selector14~0_combout\);

\timeToExecute[11]$latch\ : cycloneive_lcell_comb
-- Equation(s):
-- \timeToExecute[11]$latch~combout\ = (\s_currentState.FINISH~q\ & ((\timeToExecute[11]$latch~combout\))) # (!\s_currentState.FINISH~q\ & (\Selector14~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Selector14~0_combout\,
	datac => \timeToExecute[11]$latch~combout\,
	datad => \s_currentState.FINISH~q\,
	combout => \timeToExecute[11]$latch~combout\);

\timeMaxCooking[12]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_timeMaxCooking(12),
	o => \timeMaxCooking[12]~input_o\);

\timeIdle[12]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_timeIdle(12),
	o => \timeIdle[12]~input_o\);

\Selector15~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector15~0_combout\ = (\s_currentState.COOK~q\ & (\timeMaxCooking[12]~input_o\)) # (!\s_currentState.COOK~q\ & ((\timeIdle[12]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \timeMaxCooking[12]~input_o\,
	datab => \timeIdle[12]~input_o\,
	datad => \s_currentState.COOK~q\,
	combout => \Selector15~0_combout\);

\timeToExecute[12]$latch\ : cycloneive_lcell_comb
-- Equation(s):
-- \timeToExecute[12]$latch~combout\ = (\s_currentState.FINISH~q\ & ((\timeToExecute[12]$latch~combout\))) # (!\s_currentState.FINISH~q\ & (\Selector15~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Selector15~0_combout\,
	datac => \timeToExecute[12]$latch~combout\,
	datad => \s_currentState.FINISH~q\,
	combout => \timeToExecute[12]$latch~combout\);

\timeMaxCooking[13]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_timeMaxCooking(13),
	o => \timeMaxCooking[13]~input_o\);

\timeIdle[13]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_timeIdle(13),
	o => \timeIdle[13]~input_o\);

\Selector16~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector16~0_combout\ = (\s_currentState.COOK~q\ & (\timeMaxCooking[13]~input_o\)) # (!\s_currentState.COOK~q\ & ((\timeIdle[13]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \timeMaxCooking[13]~input_o\,
	datab => \timeIdle[13]~input_o\,
	datad => \s_currentState.COOK~q\,
	combout => \Selector16~0_combout\);

\timeToExecute[13]$latch\ : cycloneive_lcell_comb
-- Equation(s):
-- \timeToExecute[13]$latch~combout\ = (\s_currentState.FINISH~q\ & ((\timeToExecute[13]$latch~combout\))) # (!\s_currentState.FINISH~q\ & (\Selector16~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Selector16~0_combout\,
	datac => \timeToExecute[13]$latch~combout\,
	datad => \s_currentState.FINISH~q\,
	combout => \timeToExecute[13]$latch~combout\);

\timeMaxCooking[14]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_timeMaxCooking(14),
	o => \timeMaxCooking[14]~input_o\);

\timeIdle[14]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_timeIdle(14),
	o => \timeIdle[14]~input_o\);

\Selector17~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector17~0_combout\ = (\s_currentState.COOK~q\ & (\timeMaxCooking[14]~input_o\)) # (!\s_currentState.COOK~q\ & ((\timeIdle[14]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \timeMaxCooking[14]~input_o\,
	datab => \timeIdle[14]~input_o\,
	datad => \s_currentState.COOK~q\,
	combout => \Selector17~0_combout\);

\timeToExecute[14]$latch\ : cycloneive_lcell_comb
-- Equation(s):
-- \timeToExecute[14]$latch~combout\ = (\s_currentState.FINISH~q\ & ((\timeToExecute[14]$latch~combout\))) # (!\s_currentState.FINISH~q\ & (\Selector17~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Selector17~0_combout\,
	datac => \timeToExecute[14]$latch~combout\,
	datad => \s_currentState.FINISH~q\,
	combout => \timeToExecute[14]$latch~combout\);

\timeMaxCooking[15]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_timeMaxCooking(15),
	o => \timeMaxCooking[15]~input_o\);

\timeIdle[15]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_timeIdle(15),
	o => \timeIdle[15]~input_o\);

\Selector18~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector18~0_combout\ = (\s_currentState.COOK~q\ & (\timeMaxCooking[15]~input_o\)) # (!\s_currentState.COOK~q\ & ((\timeIdle[15]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \timeMaxCooking[15]~input_o\,
	datab => \timeIdle[15]~input_o\,
	datad => \s_currentState.COOK~q\,
	combout => \Selector18~0_combout\);

\timeToExecute[15]$latch\ : cycloneive_lcell_comb
-- Equation(s):
-- \timeToExecute[15]$latch~combout\ = (\s_currentState.FINISH~q\ & ((\timeToExecute[15]$latch~combout\))) # (!\s_currentState.FINISH~q\ & (\Selector18~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Selector18~0_combout\,
	datac => \timeToExecute[15]$latch~combout\,
	datad => \s_currentState.FINISH~q\,
	combout => \timeToExecute[15]$latch~combout\);

ww_cookEnable <= \cookEnable~output_o\;

ww_timerStart <= \timerStart~output_o\;

ww_timeToExecute(0) <= \timeToExecute[0]~output_o\;

ww_timeToExecute(1) <= \timeToExecute[1]~output_o\;

ww_timeToExecute(2) <= \timeToExecute[2]~output_o\;

ww_timeToExecute(3) <= \timeToExecute[3]~output_o\;

ww_timeToExecute(4) <= \timeToExecute[4]~output_o\;

ww_timeToExecute(5) <= \timeToExecute[5]~output_o\;

ww_timeToExecute(6) <= \timeToExecute[6]~output_o\;

ww_timeToExecute(7) <= \timeToExecute[7]~output_o\;

ww_timeToExecute(8) <= \timeToExecute[8]~output_o\;

ww_timeToExecute(9) <= \timeToExecute[9]~output_o\;

ww_timeToExecute(10) <= \timeToExecute[10]~output_o\;

ww_timeToExecute(11) <= \timeToExecute[11]~output_o\;

ww_timeToExecute(12) <= \timeToExecute[12]~output_o\;

ww_timeToExecute(13) <= \timeToExecute[13]~output_o\;

ww_timeToExecute(14) <= \timeToExecute[14]~output_o\;

ww_timeToExecute(15) <= \timeToExecute[15]~output_o\;

ww_actualState(0) <= \actualState[0]~output_o\;

ww_actualState(1) <= \actualState[1]~output_o\;
END structure;


