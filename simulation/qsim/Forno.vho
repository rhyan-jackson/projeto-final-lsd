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

-- DATE "05/26/2024 18:12:25"

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

ENTITY 	EndTimeRegister IS
    PORT (
	clk : IN std_logic;
	reset : IN std_logic;
	enable : IN std_logic;
	increment : IN std_logic;
	decrement : IN std_logic;
	actualTime : IN std_logic_vector(15 DOWNTO 0);
	endTimeOut : BUFFER std_logic_vector(15 DOWNTO 0)
	);
END EndTimeRegister;

ARCHITECTURE structure OF EndTimeRegister IS
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
SIGNAL ww_increment : std_logic;
SIGNAL ww_decrement : std_logic;
SIGNAL ww_actualTime : std_logic_vector(15 DOWNTO 0);
SIGNAL ww_endTimeOut : std_logic_vector(15 DOWNTO 0);
SIGNAL \endTimeOut[0]~output_o\ : std_logic;
SIGNAL \endTimeOut[1]~output_o\ : std_logic;
SIGNAL \endTimeOut[2]~output_o\ : std_logic;
SIGNAL \endTimeOut[3]~output_o\ : std_logic;
SIGNAL \endTimeOut[4]~output_o\ : std_logic;
SIGNAL \endTimeOut[5]~output_o\ : std_logic;
SIGNAL \endTimeOut[6]~output_o\ : std_logic;
SIGNAL \endTimeOut[7]~output_o\ : std_logic;
SIGNAL \endTimeOut[8]~output_o\ : std_logic;
SIGNAL \endTimeOut[9]~output_o\ : std_logic;
SIGNAL \endTimeOut[10]~output_o\ : std_logic;
SIGNAL \endTimeOut[11]~output_o\ : std_logic;
SIGNAL \endTimeOut[12]~output_o\ : std_logic;
SIGNAL \endTimeOut[13]~output_o\ : std_logic;
SIGNAL \endTimeOut[14]~output_o\ : std_logic;
SIGNAL \endTimeOut[15]~output_o\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \actualTime[0]~input_o\ : std_logic;
SIGNAL \Add0~0_combout\ : std_logic;
SIGNAL \reset~input_o\ : std_logic;
SIGNAL \actualTime[15]~input_o\ : std_logic;
SIGNAL \increment~input_o\ : std_logic;
SIGNAL \actualTime[14]~input_o\ : std_logic;
SIGNAL \actualTime[13]~input_o\ : std_logic;
SIGNAL \actualTime[12]~input_o\ : std_logic;
SIGNAL \actualTime[11]~input_o\ : std_logic;
SIGNAL \actualTime[10]~input_o\ : std_logic;
SIGNAL \actualTime[9]~input_o\ : std_logic;
SIGNAL \actualTime[8]~input_o\ : std_logic;
SIGNAL \actualTime[7]~input_o\ : std_logic;
SIGNAL \actualTime[6]~input_o\ : std_logic;
SIGNAL \actualTime[5]~input_o\ : std_logic;
SIGNAL \actualTime[4]~input_o\ : std_logic;
SIGNAL \actualTime[3]~input_o\ : std_logic;
SIGNAL \actualTime[2]~input_o\ : std_logic;
SIGNAL \actualTime[1]~input_o\ : std_logic;
SIGNAL \Add0~1\ : std_logic;
SIGNAL \Add0~32_combout\ : std_logic;
SIGNAL \Add0~3_cout\ : std_logic;
SIGNAL \Add0~5_cout\ : std_logic;
SIGNAL \Add0~7_cout\ : std_logic;
SIGNAL \Add0~9_cout\ : std_logic;
SIGNAL \Add0~11\ : std_logic;
SIGNAL \Add0~13\ : std_logic;
SIGNAL \Add0~15\ : std_logic;
SIGNAL \Add0~17\ : std_logic;
SIGNAL \Add0~19\ : std_logic;
SIGNAL \Add0~21\ : std_logic;
SIGNAL \Add0~23\ : std_logic;
SIGNAL \Add0~25\ : std_logic;
SIGNAL \Add0~27\ : std_logic;
SIGNAL \Add0~28_combout\ : std_logic;
SIGNAL \Add0~20_combout\ : std_logic;
SIGNAL \Add0~18_combout\ : std_logic;
SIGNAL \Add0~14_combout\ : std_logic;
SIGNAL \Add0~16_combout\ : std_logic;
SIGNAL \Add0~10_combout\ : std_logic;
SIGNAL \Add0~12_combout\ : std_logic;
SIGNAL \s_endTime~1_combout\ : std_logic;
SIGNAL \Add0~22_combout\ : std_logic;
SIGNAL \Add0~24_combout\ : std_logic;
SIGNAL \Add0~26_combout\ : std_logic;
SIGNAL \Add0~29\ : std_logic;
SIGNAL \Add0~30_combout\ : std_logic;
SIGNAL \s_endTime~2_combout\ : std_logic;
SIGNAL \s_endTime~3_combout\ : std_logic;
SIGNAL \s_endTime~4_combout\ : std_logic;
SIGNAL \s_endTime~8_combout\ : std_logic;
SIGNAL \decrement~input_o\ : std_logic;
SIGNAL \s_endTime[0]~6_combout\ : std_logic;
SIGNAL \enable~input_o\ : std_logic;
SIGNAL \s_endTime[0]~7_combout\ : std_logic;
SIGNAL \Add0~33\ : std_logic;
SIGNAL \Add0~34_combout\ : std_logic;
SIGNAL \s_endTime~9_combout\ : std_logic;
SIGNAL \Add0~35\ : std_logic;
SIGNAL \Add0~36_combout\ : std_logic;
SIGNAL \s_endTime~10_combout\ : std_logic;
SIGNAL \Add0~37\ : std_logic;
SIGNAL \Add0~38_combout\ : std_logic;
SIGNAL \s_endTime~11_combout\ : std_logic;
SIGNAL \Add0~39\ : std_logic;
SIGNAL \Add0~40_combout\ : std_logic;
SIGNAL \s_endTime~12_combout\ : std_logic;
SIGNAL \Add0~41\ : std_logic;
SIGNAL \Add0~42_combout\ : std_logic;
SIGNAL \s_endTime~13_combout\ : std_logic;
SIGNAL \Add0~43\ : std_logic;
SIGNAL \Add0~44_combout\ : std_logic;
SIGNAL \s_endTime~14_combout\ : std_logic;
SIGNAL \Add0~45\ : std_logic;
SIGNAL \Add0~46_combout\ : std_logic;
SIGNAL \s_endTime~15_combout\ : std_logic;
SIGNAL \Add0~47\ : std_logic;
SIGNAL \Add0~48_combout\ : std_logic;
SIGNAL \s_endTime~16_combout\ : std_logic;
SIGNAL \Add0~49\ : std_logic;
SIGNAL \Add0~50_combout\ : std_logic;
SIGNAL \s_endTime~17_combout\ : std_logic;
SIGNAL \Add0~51\ : std_logic;
SIGNAL \Add0~52_combout\ : std_logic;
SIGNAL \s_endTime~18_combout\ : std_logic;
SIGNAL \Add0~53\ : std_logic;
SIGNAL \Add0~54_combout\ : std_logic;
SIGNAL \s_endTime~19_combout\ : std_logic;
SIGNAL \Add0~55\ : std_logic;
SIGNAL \Add0~56_combout\ : std_logic;
SIGNAL \s_endTime~20_combout\ : std_logic;
SIGNAL \Add0~57\ : std_logic;
SIGNAL \Add0~58_combout\ : std_logic;
SIGNAL \s_endTime~21_combout\ : std_logic;
SIGNAL \Add0~59\ : std_logic;
SIGNAL \Add0~60_combout\ : std_logic;
SIGNAL \s_endTime~22_combout\ : std_logic;
SIGNAL \LessThan0~1_cout\ : std_logic;
SIGNAL \LessThan0~3_cout\ : std_logic;
SIGNAL \LessThan0~5_cout\ : std_logic;
SIGNAL \LessThan0~7_cout\ : std_logic;
SIGNAL \LessThan0~9_cout\ : std_logic;
SIGNAL \LessThan0~11_cout\ : std_logic;
SIGNAL \LessThan0~13_cout\ : std_logic;
SIGNAL \LessThan0~15_cout\ : std_logic;
SIGNAL \LessThan0~17_cout\ : std_logic;
SIGNAL \LessThan0~19_cout\ : std_logic;
SIGNAL \LessThan0~21_cout\ : std_logic;
SIGNAL \LessThan0~23_cout\ : std_logic;
SIGNAL \LessThan0~25_cout\ : std_logic;
SIGNAL \LessThan0~27_cout\ : std_logic;
SIGNAL \LessThan0~29_cout\ : std_logic;
SIGNAL \LessThan0~30_combout\ : std_logic;
SIGNAL \s_endTime[0]~0_combout\ : std_logic;
SIGNAL \s_endTime~5_combout\ : std_logic;
SIGNAL s_endTime : std_logic_vector(15 DOWNTO 0);

BEGIN

ww_clk <= clk;
ww_reset <= reset;
ww_enable <= enable;
ww_increment <= increment;
ww_decrement <= decrement;
ww_actualTime <= actualTime;
endTimeOut <= ww_endTimeOut;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\endTimeOut[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => s_endTime(0),
	devoe => ww_devoe,
	o => \endTimeOut[0]~output_o\);

\endTimeOut[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => s_endTime(1),
	devoe => ww_devoe,
	o => \endTimeOut[1]~output_o\);

\endTimeOut[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => s_endTime(2),
	devoe => ww_devoe,
	o => \endTimeOut[2]~output_o\);

\endTimeOut[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => s_endTime(3),
	devoe => ww_devoe,
	o => \endTimeOut[3]~output_o\);

\endTimeOut[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => s_endTime(4),
	devoe => ww_devoe,
	o => \endTimeOut[4]~output_o\);

\endTimeOut[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => s_endTime(5),
	devoe => ww_devoe,
	o => \endTimeOut[5]~output_o\);

\endTimeOut[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => s_endTime(6),
	devoe => ww_devoe,
	o => \endTimeOut[6]~output_o\);

\endTimeOut[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => s_endTime(7),
	devoe => ww_devoe,
	o => \endTimeOut[7]~output_o\);

\endTimeOut[8]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => s_endTime(8),
	devoe => ww_devoe,
	o => \endTimeOut[8]~output_o\);

\endTimeOut[9]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => s_endTime(9),
	devoe => ww_devoe,
	o => \endTimeOut[9]~output_o\);

\endTimeOut[10]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => s_endTime(10),
	devoe => ww_devoe,
	o => \endTimeOut[10]~output_o\);

\endTimeOut[11]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => s_endTime(11),
	devoe => ww_devoe,
	o => \endTimeOut[11]~output_o\);

\endTimeOut[12]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => s_endTime(12),
	devoe => ww_devoe,
	o => \endTimeOut[12]~output_o\);

\endTimeOut[13]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => s_endTime(13),
	devoe => ww_devoe,
	o => \endTimeOut[13]~output_o\);

\endTimeOut[14]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => s_endTime(14),
	devoe => ww_devoe,
	o => \endTimeOut[14]~output_o\);

\endTimeOut[15]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => s_endTime(15),
	devoe => ww_devoe,
	o => \endTimeOut[15]~output_o\);

\clk~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clk,
	o => \clk~input_o\);

\actualTime[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_actualTime(0),
	o => \actualTime[0]~input_o\);

\Add0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~0_combout\ = s_endTime(0) $ (VCC)
-- \Add0~1\ = CARRY(s_endTime(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => s_endTime(0),
	datad => VCC,
	combout => \Add0~0_combout\,
	cout => \Add0~1\);

\reset~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_reset,
	o => \reset~input_o\);

\actualTime[15]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_actualTime(15),
	o => \actualTime[15]~input_o\);

\increment~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_increment,
	o => \increment~input_o\);

\actualTime[14]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_actualTime(14),
	o => \actualTime[14]~input_o\);

\actualTime[13]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_actualTime(13),
	o => \actualTime[13]~input_o\);

\actualTime[12]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_actualTime(12),
	o => \actualTime[12]~input_o\);

\actualTime[11]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_actualTime(11),
	o => \actualTime[11]~input_o\);

\actualTime[10]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_actualTime(10),
	o => \actualTime[10]~input_o\);

\actualTime[9]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_actualTime(9),
	o => \actualTime[9]~input_o\);

\actualTime[8]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_actualTime(8),
	o => \actualTime[8]~input_o\);

\actualTime[7]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_actualTime(7),
	o => \actualTime[7]~input_o\);

\actualTime[6]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_actualTime(6),
	o => \actualTime[6]~input_o\);

\actualTime[5]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_actualTime(5),
	o => \actualTime[5]~input_o\);

\actualTime[4]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_actualTime(4),
	o => \actualTime[4]~input_o\);

\actualTime[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_actualTime(3),
	o => \actualTime[3]~input_o\);

\actualTime[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_actualTime(2),
	o => \actualTime[2]~input_o\);

\actualTime[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_actualTime(1),
	o => \actualTime[1]~input_o\);

\Add0~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~32_combout\ = (\increment~input_o\ & ((s_endTime(1) & (!\Add0~1\)) # (!s_endTime(1) & ((\Add0~1\) # (GND))))) # (!\increment~input_o\ & ((s_endTime(1) & (\Add0~1\ & VCC)) # (!s_endTime(1) & (!\Add0~1\))))
-- \Add0~33\ = CARRY((\increment~input_o\ & ((!\Add0~1\) # (!s_endTime(1)))) # (!\increment~input_o\ & (!s_endTime(1) & !\Add0~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \increment~input_o\,
	datab => s_endTime(1),
	datad => VCC,
	cin => \Add0~1\,
	combout => \Add0~32_combout\,
	cout => \Add0~33\);

\Add0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~3_cout\ = CARRY((s_endTime(1) & s_endTime(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => s_endTime(1),
	datab => s_endTime(0),
	datad => VCC,
	cout => \Add0~3_cout\);

\Add0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~5_cout\ = CARRY((!s_endTime(2) & !\Add0~3_cout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => s_endTime(2),
	datad => VCC,
	cin => \Add0~3_cout\,
	cout => \Add0~5_cout\);

\Add0~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~7_cout\ = CARRY((s_endTime(3) & !\Add0~5_cout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => s_endTime(3),
	datad => VCC,
	cin => \Add0~5_cout\,
	cout => \Add0~7_cout\);

\Add0~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~9_cout\ = CARRY((!\Add0~7_cout\) # (!s_endTime(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => s_endTime(4),
	datad => VCC,
	cin => \Add0~7_cout\,
	cout => \Add0~9_cout\);

\Add0~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~10_combout\ = (s_endTime(5) & (\Add0~9_cout\ $ (GND))) # (!s_endTime(5) & (!\Add0~9_cout\ & VCC))
-- \Add0~11\ = CARRY((s_endTime(5) & !\Add0~9_cout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => s_endTime(5),
	datad => VCC,
	cin => \Add0~9_cout\,
	combout => \Add0~10_combout\,
	cout => \Add0~11\);

\Add0~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~12_combout\ = (s_endTime(6) & (!\Add0~11\)) # (!s_endTime(6) & ((\Add0~11\) # (GND)))
-- \Add0~13\ = CARRY((!\Add0~11\) # (!s_endTime(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => s_endTime(6),
	datad => VCC,
	cin => \Add0~11\,
	combout => \Add0~12_combout\,
	cout => \Add0~13\);

\Add0~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~14_combout\ = (s_endTime(7) & (\Add0~13\ $ (GND))) # (!s_endTime(7) & (!\Add0~13\ & VCC))
-- \Add0~15\ = CARRY((s_endTime(7) & !\Add0~13\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => s_endTime(7),
	datad => VCC,
	cin => \Add0~13\,
	combout => \Add0~14_combout\,
	cout => \Add0~15\);

\Add0~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~16_combout\ = (s_endTime(8) & (!\Add0~15\)) # (!s_endTime(8) & ((\Add0~15\) # (GND)))
-- \Add0~17\ = CARRY((!\Add0~15\) # (!s_endTime(8)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => s_endTime(8),
	datad => VCC,
	cin => \Add0~15\,
	combout => \Add0~16_combout\,
	cout => \Add0~17\);

\Add0~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~18_combout\ = (s_endTime(9) & (\Add0~17\ $ (GND))) # (!s_endTime(9) & (!\Add0~17\ & VCC))
-- \Add0~19\ = CARRY((s_endTime(9) & !\Add0~17\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => s_endTime(9),
	datad => VCC,
	cin => \Add0~17\,
	combout => \Add0~18_combout\,
	cout => \Add0~19\);

\Add0~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~20_combout\ = (s_endTime(10) & (!\Add0~19\)) # (!s_endTime(10) & ((\Add0~19\) # (GND)))
-- \Add0~21\ = CARRY((!\Add0~19\) # (!s_endTime(10)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => s_endTime(10),
	datad => VCC,
	cin => \Add0~19\,
	combout => \Add0~20_combout\,
	cout => \Add0~21\);

\Add0~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~22_combout\ = (s_endTime(11) & (\Add0~21\ $ (GND))) # (!s_endTime(11) & (!\Add0~21\ & VCC))
-- \Add0~23\ = CARRY((s_endTime(11) & !\Add0~21\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => s_endTime(11),
	datad => VCC,
	cin => \Add0~21\,
	combout => \Add0~22_combout\,
	cout => \Add0~23\);

\Add0~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~24_combout\ = (s_endTime(12) & (!\Add0~23\)) # (!s_endTime(12) & ((\Add0~23\) # (GND)))
-- \Add0~25\ = CARRY((!\Add0~23\) # (!s_endTime(12)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => s_endTime(12),
	datad => VCC,
	cin => \Add0~23\,
	combout => \Add0~24_combout\,
	cout => \Add0~25\);

\Add0~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~26_combout\ = (s_endTime(13) & (\Add0~25\ $ (GND))) # (!s_endTime(13) & (!\Add0~25\ & VCC))
-- \Add0~27\ = CARRY((s_endTime(13) & !\Add0~25\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => s_endTime(13),
	datad => VCC,
	cin => \Add0~25\,
	combout => \Add0~26_combout\,
	cout => \Add0~27\);

\Add0~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~28_combout\ = (s_endTime(14) & (!\Add0~27\)) # (!s_endTime(14) & ((\Add0~27\) # (GND)))
-- \Add0~29\ = CARRY((!\Add0~27\) # (!s_endTime(14)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => s_endTime(14),
	datad => VCC,
	cin => \Add0~27\,
	combout => \Add0~28_combout\,
	cout => \Add0~29\);

\s_endTime~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_endTime~1_combout\ = (\Add0~14_combout\ & (\Add0~16_combout\ & ((\Add0~10_combout\) # (\Add0~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~14_combout\,
	datab => \Add0~16_combout\,
	datac => \Add0~10_combout\,
	datad => \Add0~12_combout\,
	combout => \s_endTime~1_combout\);

\Add0~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~30_combout\ = s_endTime(15) $ (!\Add0~29\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110100101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => s_endTime(15),
	cin => \Add0~29\,
	combout => \Add0~30_combout\);

\s_endTime~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_endTime~2_combout\ = (\Add0~22_combout\) # ((\Add0~24_combout\) # ((\Add0~26_combout\) # (\Add0~30_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~22_combout\,
	datab => \Add0~24_combout\,
	datac => \Add0~26_combout\,
	datad => \Add0~30_combout\,
	combout => \s_endTime~2_combout\);

\s_endTime~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_endTime~3_combout\ = (\s_endTime~2_combout\) # ((\Add0~20_combout\ & ((\Add0~18_combout\) # (\s_endTime~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~20_combout\,
	datab => \Add0~18_combout\,
	datac => \s_endTime~1_combout\,
	datad => \s_endTime~2_combout\,
	combout => \s_endTime~3_combout\);

\s_endTime~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_endTime~4_combout\ = ((\increment~input_o\ & ((\Add0~28_combout\) # (\s_endTime~3_combout\)))) # (!\s_endTime[0]~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \increment~input_o\,
	datab => \Add0~28_combout\,
	datac => \s_endTime[0]~0_combout\,
	datad => \s_endTime~3_combout\,
	combout => \s_endTime~4_combout\);

\s_endTime~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_endTime~8_combout\ = (\actualTime[1]~input_o\ & (((\Add0~32_combout\ & !\s_endTime~4_combout\)) # (!\s_endTime[0]~0_combout\))) # (!\actualTime[1]~input_o\ & (\Add0~32_combout\ & ((!\s_endTime~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101011001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \actualTime[1]~input_o\,
	datab => \Add0~32_combout\,
	datac => \s_endTime[0]~0_combout\,
	datad => \s_endTime~4_combout\,
	combout => \s_endTime~8_combout\);

\decrement~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_decrement,
	o => \decrement~input_o\);

\s_endTime[0]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_endTime[0]~6_combout\ = (!\increment~input_o\ & !\decrement~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \increment~input_o\,
	datad => \decrement~input_o\,
	combout => \s_endTime[0]~6_combout\);

\enable~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_enable,
	o => \enable~input_o\);

\s_endTime[0]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_endTime[0]~7_combout\ = (\reset~input_o\) # ((\enable~input_o\ & ((\LessThan0~30_combout\) # (!\s_endTime[0]~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s_endTime[0]~6_combout\,
	datab => \LessThan0~30_combout\,
	datac => \enable~input_o\,
	datad => \reset~input_o\,
	combout => \s_endTime[0]~7_combout\);

\s_endTime[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \s_endTime~8_combout\,
	ena => \s_endTime[0]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_endTime(1));

\Add0~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~34_combout\ = ((\increment~input_o\ $ (s_endTime(2) $ (!\Add0~33\)))) # (GND)
-- \Add0~35\ = CARRY((\increment~input_o\ & ((s_endTime(2)) # (!\Add0~33\))) # (!\increment~input_o\ & (s_endTime(2) & !\Add0~33\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \increment~input_o\,
	datab => s_endTime(2),
	datad => VCC,
	cin => \Add0~33\,
	combout => \Add0~34_combout\,
	cout => \Add0~35\);

\s_endTime~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_endTime~9_combout\ = (\actualTime[2]~input_o\ & (((\Add0~34_combout\ & !\s_endTime~4_combout\)) # (!\s_endTime[0]~0_combout\))) # (!\actualTime[2]~input_o\ & (\Add0~34_combout\ & ((!\s_endTime~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101011001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \actualTime[2]~input_o\,
	datab => \Add0~34_combout\,
	datac => \s_endTime[0]~0_combout\,
	datad => \s_endTime~4_combout\,
	combout => \s_endTime~9_combout\);

\s_endTime[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \s_endTime~9_combout\,
	ena => \s_endTime[0]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_endTime(2));

\Add0~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~36_combout\ = (\increment~input_o\ & ((s_endTime(3) & (!\Add0~35\)) # (!s_endTime(3) & ((\Add0~35\) # (GND))))) # (!\increment~input_o\ & ((s_endTime(3) & (\Add0~35\ & VCC)) # (!s_endTime(3) & (!\Add0~35\))))
-- \Add0~37\ = CARRY((\increment~input_o\ & ((!\Add0~35\) # (!s_endTime(3)))) # (!\increment~input_o\ & (!s_endTime(3) & !\Add0~35\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \increment~input_o\,
	datab => s_endTime(3),
	datad => VCC,
	cin => \Add0~35\,
	combout => \Add0~36_combout\,
	cout => \Add0~37\);

\s_endTime~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_endTime~10_combout\ = (\actualTime[3]~input_o\ & (((\Add0~36_combout\ & !\s_endTime~4_combout\)) # (!\s_endTime[0]~0_combout\))) # (!\actualTime[3]~input_o\ & (\Add0~36_combout\ & ((!\s_endTime~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101011001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \actualTime[3]~input_o\,
	datab => \Add0~36_combout\,
	datac => \s_endTime[0]~0_combout\,
	datad => \s_endTime~4_combout\,
	combout => \s_endTime~10_combout\);

\s_endTime[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \s_endTime~10_combout\,
	ena => \s_endTime[0]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_endTime(3));

\Add0~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~38_combout\ = ((\increment~input_o\ $ (s_endTime(4) $ (\Add0~37\)))) # (GND)
-- \Add0~39\ = CARRY((\increment~input_o\ & (s_endTime(4) & !\Add0~37\)) # (!\increment~input_o\ & ((s_endTime(4)) # (!\Add0~37\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \increment~input_o\,
	datab => s_endTime(4),
	datad => VCC,
	cin => \Add0~37\,
	combout => \Add0~38_combout\,
	cout => \Add0~39\);

\s_endTime~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_endTime~11_combout\ = (\actualTime[4]~input_o\ & (((\Add0~38_combout\ & !\s_endTime~4_combout\)) # (!\s_endTime[0]~0_combout\))) # (!\actualTime[4]~input_o\ & (\Add0~38_combout\ & ((!\s_endTime~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101011001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \actualTime[4]~input_o\,
	datab => \Add0~38_combout\,
	datac => \s_endTime[0]~0_combout\,
	datad => \s_endTime~4_combout\,
	combout => \s_endTime~11_combout\);

\s_endTime[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \s_endTime~11_combout\,
	ena => \s_endTime[0]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_endTime(4));

\Add0~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~40_combout\ = (\increment~input_o\ & ((s_endTime(5) & (!\Add0~39\)) # (!s_endTime(5) & ((\Add0~39\) # (GND))))) # (!\increment~input_o\ & ((s_endTime(5) & (\Add0~39\ & VCC)) # (!s_endTime(5) & (!\Add0~39\))))
-- \Add0~41\ = CARRY((\increment~input_o\ & ((!\Add0~39\) # (!s_endTime(5)))) # (!\increment~input_o\ & (!s_endTime(5) & !\Add0~39\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \increment~input_o\,
	datab => s_endTime(5),
	datad => VCC,
	cin => \Add0~39\,
	combout => \Add0~40_combout\,
	cout => \Add0~41\);

\s_endTime~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_endTime~12_combout\ = (\actualTime[5]~input_o\ & (((\Add0~40_combout\ & !\s_endTime~4_combout\)) # (!\s_endTime[0]~0_combout\))) # (!\actualTime[5]~input_o\ & (\Add0~40_combout\ & ((!\s_endTime~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101011001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \actualTime[5]~input_o\,
	datab => \Add0~40_combout\,
	datac => \s_endTime[0]~0_combout\,
	datad => \s_endTime~4_combout\,
	combout => \s_endTime~12_combout\);

\s_endTime[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \s_endTime~12_combout\,
	ena => \s_endTime[0]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_endTime(5));

\Add0~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~42_combout\ = ((\increment~input_o\ $ (s_endTime(6) $ (\Add0~41\)))) # (GND)
-- \Add0~43\ = CARRY((\increment~input_o\ & (s_endTime(6) & !\Add0~41\)) # (!\increment~input_o\ & ((s_endTime(6)) # (!\Add0~41\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \increment~input_o\,
	datab => s_endTime(6),
	datad => VCC,
	cin => \Add0~41\,
	combout => \Add0~42_combout\,
	cout => \Add0~43\);

\s_endTime~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_endTime~13_combout\ = (\actualTime[6]~input_o\ & (((\Add0~42_combout\ & !\s_endTime~4_combout\)) # (!\s_endTime[0]~0_combout\))) # (!\actualTime[6]~input_o\ & (\Add0~42_combout\ & ((!\s_endTime~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101011001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \actualTime[6]~input_o\,
	datab => \Add0~42_combout\,
	datac => \s_endTime[0]~0_combout\,
	datad => \s_endTime~4_combout\,
	combout => \s_endTime~13_combout\);

\s_endTime[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \s_endTime~13_combout\,
	ena => \s_endTime[0]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_endTime(6));

\Add0~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~44_combout\ = (\increment~input_o\ & ((s_endTime(7) & (!\Add0~43\)) # (!s_endTime(7) & ((\Add0~43\) # (GND))))) # (!\increment~input_o\ & ((s_endTime(7) & (\Add0~43\ & VCC)) # (!s_endTime(7) & (!\Add0~43\))))
-- \Add0~45\ = CARRY((\increment~input_o\ & ((!\Add0~43\) # (!s_endTime(7)))) # (!\increment~input_o\ & (!s_endTime(7) & !\Add0~43\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \increment~input_o\,
	datab => s_endTime(7),
	datad => VCC,
	cin => \Add0~43\,
	combout => \Add0~44_combout\,
	cout => \Add0~45\);

\s_endTime~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_endTime~14_combout\ = (\actualTime[7]~input_o\ & (((\Add0~44_combout\ & !\s_endTime~4_combout\)) # (!\s_endTime[0]~0_combout\))) # (!\actualTime[7]~input_o\ & (\Add0~44_combout\ & ((!\s_endTime~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101011001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \actualTime[7]~input_o\,
	datab => \Add0~44_combout\,
	datac => \s_endTime[0]~0_combout\,
	datad => \s_endTime~4_combout\,
	combout => \s_endTime~14_combout\);

\s_endTime[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \s_endTime~14_combout\,
	ena => \s_endTime[0]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_endTime(7));

\Add0~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~46_combout\ = ((\increment~input_o\ $ (s_endTime(8) $ (\Add0~45\)))) # (GND)
-- \Add0~47\ = CARRY((\increment~input_o\ & (s_endTime(8) & !\Add0~45\)) # (!\increment~input_o\ & ((s_endTime(8)) # (!\Add0~45\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \increment~input_o\,
	datab => s_endTime(8),
	datad => VCC,
	cin => \Add0~45\,
	combout => \Add0~46_combout\,
	cout => \Add0~47\);

\s_endTime~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_endTime~15_combout\ = (\actualTime[8]~input_o\ & (((\Add0~46_combout\ & !\s_endTime~4_combout\)) # (!\s_endTime[0]~0_combout\))) # (!\actualTime[8]~input_o\ & (\Add0~46_combout\ & ((!\s_endTime~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101011001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \actualTime[8]~input_o\,
	datab => \Add0~46_combout\,
	datac => \s_endTime[0]~0_combout\,
	datad => \s_endTime~4_combout\,
	combout => \s_endTime~15_combout\);

\s_endTime[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \s_endTime~15_combout\,
	ena => \s_endTime[0]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_endTime(8));

\Add0~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~48_combout\ = (\increment~input_o\ & ((s_endTime(9) & (!\Add0~47\)) # (!s_endTime(9) & ((\Add0~47\) # (GND))))) # (!\increment~input_o\ & ((s_endTime(9) & (\Add0~47\ & VCC)) # (!s_endTime(9) & (!\Add0~47\))))
-- \Add0~49\ = CARRY((\increment~input_o\ & ((!\Add0~47\) # (!s_endTime(9)))) # (!\increment~input_o\ & (!s_endTime(9) & !\Add0~47\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \increment~input_o\,
	datab => s_endTime(9),
	datad => VCC,
	cin => \Add0~47\,
	combout => \Add0~48_combout\,
	cout => \Add0~49\);

\s_endTime~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_endTime~16_combout\ = (\actualTime[9]~input_o\ & (((\Add0~48_combout\ & !\s_endTime~4_combout\)) # (!\s_endTime[0]~0_combout\))) # (!\actualTime[9]~input_o\ & (\Add0~48_combout\ & ((!\s_endTime~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101011001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \actualTime[9]~input_o\,
	datab => \Add0~48_combout\,
	datac => \s_endTime[0]~0_combout\,
	datad => \s_endTime~4_combout\,
	combout => \s_endTime~16_combout\);

\s_endTime[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \s_endTime~16_combout\,
	ena => \s_endTime[0]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_endTime(9));

\Add0~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~50_combout\ = ((\increment~input_o\ $ (s_endTime(10) $ (\Add0~49\)))) # (GND)
-- \Add0~51\ = CARRY((\increment~input_o\ & (s_endTime(10) & !\Add0~49\)) # (!\increment~input_o\ & ((s_endTime(10)) # (!\Add0~49\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \increment~input_o\,
	datab => s_endTime(10),
	datad => VCC,
	cin => \Add0~49\,
	combout => \Add0~50_combout\,
	cout => \Add0~51\);

\s_endTime~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_endTime~17_combout\ = (\actualTime[10]~input_o\ & (((\Add0~50_combout\ & !\s_endTime~4_combout\)) # (!\s_endTime[0]~0_combout\))) # (!\actualTime[10]~input_o\ & (\Add0~50_combout\ & ((!\s_endTime~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101011001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \actualTime[10]~input_o\,
	datab => \Add0~50_combout\,
	datac => \s_endTime[0]~0_combout\,
	datad => \s_endTime~4_combout\,
	combout => \s_endTime~17_combout\);

\s_endTime[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \s_endTime~17_combout\,
	ena => \s_endTime[0]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_endTime(10));

\Add0~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~52_combout\ = (\increment~input_o\ & ((s_endTime(11) & (!\Add0~51\)) # (!s_endTime(11) & ((\Add0~51\) # (GND))))) # (!\increment~input_o\ & ((s_endTime(11) & (\Add0~51\ & VCC)) # (!s_endTime(11) & (!\Add0~51\))))
-- \Add0~53\ = CARRY((\increment~input_o\ & ((!\Add0~51\) # (!s_endTime(11)))) # (!\increment~input_o\ & (!s_endTime(11) & !\Add0~51\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \increment~input_o\,
	datab => s_endTime(11),
	datad => VCC,
	cin => \Add0~51\,
	combout => \Add0~52_combout\,
	cout => \Add0~53\);

\s_endTime~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_endTime~18_combout\ = (\actualTime[11]~input_o\ & (((\Add0~52_combout\ & !\s_endTime~4_combout\)) # (!\s_endTime[0]~0_combout\))) # (!\actualTime[11]~input_o\ & (\Add0~52_combout\ & ((!\s_endTime~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101011001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \actualTime[11]~input_o\,
	datab => \Add0~52_combout\,
	datac => \s_endTime[0]~0_combout\,
	datad => \s_endTime~4_combout\,
	combout => \s_endTime~18_combout\);

\s_endTime[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \s_endTime~18_combout\,
	ena => \s_endTime[0]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_endTime(11));

\Add0~54\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~54_combout\ = ((\increment~input_o\ $ (s_endTime(12) $ (\Add0~53\)))) # (GND)
-- \Add0~55\ = CARRY((\increment~input_o\ & (s_endTime(12) & !\Add0~53\)) # (!\increment~input_o\ & ((s_endTime(12)) # (!\Add0~53\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \increment~input_o\,
	datab => s_endTime(12),
	datad => VCC,
	cin => \Add0~53\,
	combout => \Add0~54_combout\,
	cout => \Add0~55\);

\s_endTime~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_endTime~19_combout\ = (\actualTime[12]~input_o\ & (((\Add0~54_combout\ & !\s_endTime~4_combout\)) # (!\s_endTime[0]~0_combout\))) # (!\actualTime[12]~input_o\ & (\Add0~54_combout\ & ((!\s_endTime~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101011001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \actualTime[12]~input_o\,
	datab => \Add0~54_combout\,
	datac => \s_endTime[0]~0_combout\,
	datad => \s_endTime~4_combout\,
	combout => \s_endTime~19_combout\);

\s_endTime[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \s_endTime~19_combout\,
	ena => \s_endTime[0]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_endTime(12));

\Add0~56\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~56_combout\ = (\increment~input_o\ & ((s_endTime(13) & (!\Add0~55\)) # (!s_endTime(13) & ((\Add0~55\) # (GND))))) # (!\increment~input_o\ & ((s_endTime(13) & (\Add0~55\ & VCC)) # (!s_endTime(13) & (!\Add0~55\))))
-- \Add0~57\ = CARRY((\increment~input_o\ & ((!\Add0~55\) # (!s_endTime(13)))) # (!\increment~input_o\ & (!s_endTime(13) & !\Add0~55\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \increment~input_o\,
	datab => s_endTime(13),
	datad => VCC,
	cin => \Add0~55\,
	combout => \Add0~56_combout\,
	cout => \Add0~57\);

\s_endTime~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_endTime~20_combout\ = (\actualTime[13]~input_o\ & (((\Add0~56_combout\ & !\s_endTime~4_combout\)) # (!\s_endTime[0]~0_combout\))) # (!\actualTime[13]~input_o\ & (\Add0~56_combout\ & ((!\s_endTime~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101011001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \actualTime[13]~input_o\,
	datab => \Add0~56_combout\,
	datac => \s_endTime[0]~0_combout\,
	datad => \s_endTime~4_combout\,
	combout => \s_endTime~20_combout\);

\s_endTime[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \s_endTime~20_combout\,
	ena => \s_endTime[0]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_endTime(13));

\Add0~58\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~58_combout\ = ((\increment~input_o\ $ (s_endTime(14) $ (\Add0~57\)))) # (GND)
-- \Add0~59\ = CARRY((\increment~input_o\ & (s_endTime(14) & !\Add0~57\)) # (!\increment~input_o\ & ((s_endTime(14)) # (!\Add0~57\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \increment~input_o\,
	datab => s_endTime(14),
	datad => VCC,
	cin => \Add0~57\,
	combout => \Add0~58_combout\,
	cout => \Add0~59\);

\s_endTime~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_endTime~21_combout\ = (\actualTime[14]~input_o\ & (((\Add0~58_combout\ & !\s_endTime~4_combout\)) # (!\s_endTime[0]~0_combout\))) # (!\actualTime[14]~input_o\ & (\Add0~58_combout\ & ((!\s_endTime~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101011001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \actualTime[14]~input_o\,
	datab => \Add0~58_combout\,
	datac => \s_endTime[0]~0_combout\,
	datad => \s_endTime~4_combout\,
	combout => \s_endTime~21_combout\);

\s_endTime[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \s_endTime~21_combout\,
	ena => \s_endTime[0]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_endTime(14));

\Add0~60\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~60_combout\ = \increment~input_o\ $ (s_endTime(15) $ (!\Add0~59\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101101001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \increment~input_o\,
	datab => s_endTime(15),
	cin => \Add0~59\,
	combout => \Add0~60_combout\);

\s_endTime~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_endTime~22_combout\ = (\actualTime[15]~input_o\ & (((\Add0~60_combout\ & !\s_endTime~4_combout\)) # (!\s_endTime[0]~0_combout\))) # (!\actualTime[15]~input_o\ & (\Add0~60_combout\ & ((!\s_endTime~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101011001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \actualTime[15]~input_o\,
	datab => \Add0~60_combout\,
	datac => \s_endTime[0]~0_combout\,
	datad => \s_endTime~4_combout\,
	combout => \s_endTime~22_combout\);

\s_endTime[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \s_endTime~22_combout\,
	ena => \s_endTime[0]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_endTime(15));

\LessThan0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan0~1_cout\ = CARRY((!s_endTime(0) & \actualTime[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => s_endTime(0),
	datab => \actualTime[0]~input_o\,
	datad => VCC,
	cout => \LessThan0~1_cout\);

\LessThan0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan0~3_cout\ = CARRY((s_endTime(1) & ((!\LessThan0~1_cout\) # (!\actualTime[1]~input_o\))) # (!s_endTime(1) & (!\actualTime[1]~input_o\ & !\LessThan0~1_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => s_endTime(1),
	datab => \actualTime[1]~input_o\,
	datad => VCC,
	cin => \LessThan0~1_cout\,
	cout => \LessThan0~3_cout\);

\LessThan0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan0~5_cout\ = CARRY((s_endTime(2) & (\actualTime[2]~input_o\ & !\LessThan0~3_cout\)) # (!s_endTime(2) & ((\actualTime[2]~input_o\) # (!\LessThan0~3_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => s_endTime(2),
	datab => \actualTime[2]~input_o\,
	datad => VCC,
	cin => \LessThan0~3_cout\,
	cout => \LessThan0~5_cout\);

\LessThan0~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan0~7_cout\ = CARRY((s_endTime(3) & ((!\LessThan0~5_cout\) # (!\actualTime[3]~input_o\))) # (!s_endTime(3) & (!\actualTime[3]~input_o\ & !\LessThan0~5_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => s_endTime(3),
	datab => \actualTime[3]~input_o\,
	datad => VCC,
	cin => \LessThan0~5_cout\,
	cout => \LessThan0~7_cout\);

\LessThan0~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan0~9_cout\ = CARRY((s_endTime(4) & (\actualTime[4]~input_o\ & !\LessThan0~7_cout\)) # (!s_endTime(4) & ((\actualTime[4]~input_o\) # (!\LessThan0~7_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => s_endTime(4),
	datab => \actualTime[4]~input_o\,
	datad => VCC,
	cin => \LessThan0~7_cout\,
	cout => \LessThan0~9_cout\);

\LessThan0~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan0~11_cout\ = CARRY((s_endTime(5) & ((!\LessThan0~9_cout\) # (!\actualTime[5]~input_o\))) # (!s_endTime(5) & (!\actualTime[5]~input_o\ & !\LessThan0~9_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => s_endTime(5),
	datab => \actualTime[5]~input_o\,
	datad => VCC,
	cin => \LessThan0~9_cout\,
	cout => \LessThan0~11_cout\);

\LessThan0~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan0~13_cout\ = CARRY((s_endTime(6) & (\actualTime[6]~input_o\ & !\LessThan0~11_cout\)) # (!s_endTime(6) & ((\actualTime[6]~input_o\) # (!\LessThan0~11_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => s_endTime(6),
	datab => \actualTime[6]~input_o\,
	datad => VCC,
	cin => \LessThan0~11_cout\,
	cout => \LessThan0~13_cout\);

\LessThan0~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan0~15_cout\ = CARRY((s_endTime(7) & ((!\LessThan0~13_cout\) # (!\actualTime[7]~input_o\))) # (!s_endTime(7) & (!\actualTime[7]~input_o\ & !\LessThan0~13_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => s_endTime(7),
	datab => \actualTime[7]~input_o\,
	datad => VCC,
	cin => \LessThan0~13_cout\,
	cout => \LessThan0~15_cout\);

\LessThan0~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan0~17_cout\ = CARRY((s_endTime(8) & (\actualTime[8]~input_o\ & !\LessThan0~15_cout\)) # (!s_endTime(8) & ((\actualTime[8]~input_o\) # (!\LessThan0~15_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => s_endTime(8),
	datab => \actualTime[8]~input_o\,
	datad => VCC,
	cin => \LessThan0~15_cout\,
	cout => \LessThan0~17_cout\);

\LessThan0~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan0~19_cout\ = CARRY((s_endTime(9) & ((!\LessThan0~17_cout\) # (!\actualTime[9]~input_o\))) # (!s_endTime(9) & (!\actualTime[9]~input_o\ & !\LessThan0~17_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => s_endTime(9),
	datab => \actualTime[9]~input_o\,
	datad => VCC,
	cin => \LessThan0~17_cout\,
	cout => \LessThan0~19_cout\);

\LessThan0~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan0~21_cout\ = CARRY((s_endTime(10) & (\actualTime[10]~input_o\ & !\LessThan0~19_cout\)) # (!s_endTime(10) & ((\actualTime[10]~input_o\) # (!\LessThan0~19_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => s_endTime(10),
	datab => \actualTime[10]~input_o\,
	datad => VCC,
	cin => \LessThan0~19_cout\,
	cout => \LessThan0~21_cout\);

\LessThan0~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan0~23_cout\ = CARRY((s_endTime(11) & ((!\LessThan0~21_cout\) # (!\actualTime[11]~input_o\))) # (!s_endTime(11) & (!\actualTime[11]~input_o\ & !\LessThan0~21_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => s_endTime(11),
	datab => \actualTime[11]~input_o\,
	datad => VCC,
	cin => \LessThan0~21_cout\,
	cout => \LessThan0~23_cout\);

\LessThan0~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan0~25_cout\ = CARRY((s_endTime(12) & (\actualTime[12]~input_o\ & !\LessThan0~23_cout\)) # (!s_endTime(12) & ((\actualTime[12]~input_o\) # (!\LessThan0~23_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => s_endTime(12),
	datab => \actualTime[12]~input_o\,
	datad => VCC,
	cin => \LessThan0~23_cout\,
	cout => \LessThan0~25_cout\);

\LessThan0~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan0~27_cout\ = CARRY((s_endTime(13) & ((!\LessThan0~25_cout\) # (!\actualTime[13]~input_o\))) # (!s_endTime(13) & (!\actualTime[13]~input_o\ & !\LessThan0~25_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => s_endTime(13),
	datab => \actualTime[13]~input_o\,
	datad => VCC,
	cin => \LessThan0~25_cout\,
	cout => \LessThan0~27_cout\);

\LessThan0~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan0~29_cout\ = CARRY((s_endTime(14) & (\actualTime[14]~input_o\ & !\LessThan0~27_cout\)) # (!s_endTime(14) & ((\actualTime[14]~input_o\) # (!\LessThan0~27_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => s_endTime(14),
	datab => \actualTime[14]~input_o\,
	datad => VCC,
	cin => \LessThan0~27_cout\,
	cout => \LessThan0~29_cout\);

\LessThan0~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan0~30_combout\ = (s_endTime(15) & (\actualTime[15]~input_o\ & \LessThan0~29_cout\)) # (!s_endTime(15) & ((\actualTime[15]~input_o\) # (\LessThan0~29_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010011010100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => s_endTime(15),
	datab => \actualTime[15]~input_o\,
	cin => \LessThan0~29_cout\,
	combout => \LessThan0~30_combout\);

\s_endTime[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_endTime[0]~0_combout\ = (!\reset~input_o\ & !\LessThan0~30_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \reset~input_o\,
	datad => \LessThan0~30_combout\,
	combout => \s_endTime[0]~0_combout\);

\s_endTime~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_endTime~5_combout\ = (\actualTime[0]~input_o\ & (((\Add0~0_combout\ & !\s_endTime~4_combout\)) # (!\s_endTime[0]~0_combout\))) # (!\actualTime[0]~input_o\ & (\Add0~0_combout\ & ((!\s_endTime~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101011001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \actualTime[0]~input_o\,
	datab => \Add0~0_combout\,
	datac => \s_endTime[0]~0_combout\,
	datad => \s_endTime~4_combout\,
	combout => \s_endTime~5_combout\);

\s_endTime[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \s_endTime~5_combout\,
	ena => \s_endTime[0]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_endTime(0));

ww_endTimeOut(0) <= \endTimeOut[0]~output_o\;

ww_endTimeOut(1) <= \endTimeOut[1]~output_o\;

ww_endTimeOut(2) <= \endTimeOut[2]~output_o\;

ww_endTimeOut(3) <= \endTimeOut[3]~output_o\;

ww_endTimeOut(4) <= \endTimeOut[4]~output_o\;

ww_endTimeOut(5) <= \endTimeOut[5]~output_o\;

ww_endTimeOut(6) <= \endTimeOut[6]~output_o\;

ww_endTimeOut(7) <= \endTimeOut[7]~output_o\;

ww_endTimeOut(8) <= \endTimeOut[8]~output_o\;

ww_endTimeOut(9) <= \endTimeOut[9]~output_o\;

ww_endTimeOut(10) <= \endTimeOut[10]~output_o\;

ww_endTimeOut(11) <= \endTimeOut[11]~output_o\;

ww_endTimeOut(12) <= \endTimeOut[12]~output_o\;

ww_endTimeOut(13) <= \endTimeOut[13]~output_o\;

ww_endTimeOut(14) <= \endTimeOut[14]~output_o\;

ww_endTimeOut(15) <= \endTimeOut[15]~output_o\;
END structure;


