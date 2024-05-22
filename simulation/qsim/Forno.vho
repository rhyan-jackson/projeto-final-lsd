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

-- DATE "05/22/2024 17:01:58"

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

ENTITY 	Heater IS
    PORT (
	clk : IN std_logic;
	reset : IN std_logic;
	enable : IN std_logic;
	heatOn : IN std_logic;
	averageTemperature : IN std_logic_vector(15 DOWNTO 0);
	actualTemperature : BUFFER std_logic_vector(15 DOWNTO 0)
	);
END Heater;

ARCHITECTURE structure OF Heater IS
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
SIGNAL ww_heatOn : std_logic;
SIGNAL ww_averageTemperature : std_logic_vector(15 DOWNTO 0);
SIGNAL ww_actualTemperature : std_logic_vector(15 DOWNTO 0);
SIGNAL \actualTemperature[0]~output_o\ : std_logic;
SIGNAL \actualTemperature[1]~output_o\ : std_logic;
SIGNAL \actualTemperature[2]~output_o\ : std_logic;
SIGNAL \actualTemperature[3]~output_o\ : std_logic;
SIGNAL \actualTemperature[4]~output_o\ : std_logic;
SIGNAL \actualTemperature[5]~output_o\ : std_logic;
SIGNAL \actualTemperature[6]~output_o\ : std_logic;
SIGNAL \actualTemperature[7]~output_o\ : std_logic;
SIGNAL \actualTemperature[8]~output_o\ : std_logic;
SIGNAL \actualTemperature[9]~output_o\ : std_logic;
SIGNAL \actualTemperature[10]~output_o\ : std_logic;
SIGNAL \actualTemperature[11]~output_o\ : std_logic;
SIGNAL \actualTemperature[12]~output_o\ : std_logic;
SIGNAL \actualTemperature[13]~output_o\ : std_logic;
SIGNAL \actualTemperature[14]~output_o\ : std_logic;
SIGNAL \actualTemperature[15]~output_o\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \Add0~0_combout\ : std_logic;
SIGNAL \reset~input_o\ : std_logic;
SIGNAL \enable~input_o\ : std_logic;
SIGNAL \s_actualTemperature[1]~0_combout\ : std_logic;
SIGNAL \heatOn~input_o\ : std_logic;
SIGNAL \Add0~1\ : std_logic;
SIGNAL \Add0~3\ : std_logic;
SIGNAL \Add0~4_combout\ : std_logic;
SIGNAL \Add0~5\ : std_logic;
SIGNAL \Add0~6_combout\ : std_logic;
SIGNAL \s_actualTemperature~3_combout\ : std_logic;
SIGNAL \Add0~7\ : std_logic;
SIGNAL \Add0~8_combout\ : std_logic;
SIGNAL \Add0~9\ : std_logic;
SIGNAL \Add0~10_combout\ : std_logic;
SIGNAL \Add0~11\ : std_logic;
SIGNAL \Add0~12_combout\ : std_logic;
SIGNAL \Add0~13\ : std_logic;
SIGNAL \Add0~14_combout\ : std_logic;
SIGNAL \Add0~15\ : std_logic;
SIGNAL \Add0~16_combout\ : std_logic;
SIGNAL \Add0~17\ : std_logic;
SIGNAL \Add0~18_combout\ : std_logic;
SIGNAL \Add0~19\ : std_logic;
SIGNAL \Add0~20_combout\ : std_logic;
SIGNAL \Add0~21\ : std_logic;
SIGNAL \Add0~22_combout\ : std_logic;
SIGNAL \Add0~23\ : std_logic;
SIGNAL \Add0~24_combout\ : std_logic;
SIGNAL \Add0~25\ : std_logic;
SIGNAL \Add0~26_combout\ : std_logic;
SIGNAL \Add0~27\ : std_logic;
SIGNAL \Add0~28_combout\ : std_logic;
SIGNAL \averageTemperature[15]~input_o\ : std_logic;
SIGNAL \averageTemperature[14]~input_o\ : std_logic;
SIGNAL \averageTemperature[13]~input_o\ : std_logic;
SIGNAL \averageTemperature[12]~input_o\ : std_logic;
SIGNAL \averageTemperature[11]~input_o\ : std_logic;
SIGNAL \averageTemperature[10]~input_o\ : std_logic;
SIGNAL \averageTemperature[9]~input_o\ : std_logic;
SIGNAL \averageTemperature[8]~input_o\ : std_logic;
SIGNAL \averageTemperature[7]~input_o\ : std_logic;
SIGNAL \averageTemperature[6]~input_o\ : std_logic;
SIGNAL \averageTemperature[5]~input_o\ : std_logic;
SIGNAL \averageTemperature[4]~input_o\ : std_logic;
SIGNAL \averageTemperature[3]~input_o\ : std_logic;
SIGNAL \averageTemperature[2]~input_o\ : std_logic;
SIGNAL \averageTemperature[1]~input_o\ : std_logic;
SIGNAL \averageTemperature[0]~input_o\ : std_logic;
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
SIGNAL \s_actualTemperature~1_combout\ : std_logic;
SIGNAL \Add0~2_combout\ : std_logic;
SIGNAL \s_actualTemperature~2_combout\ : std_logic;
SIGNAL s_actualTemperature : std_logic_vector(15 DOWNTO 0);
SIGNAL ALT_INV_s_actualTemperature : std_logic_vector(4 DOWNTO 2);

BEGIN

ww_clk <= clk;
ww_reset <= reset;
ww_enable <= enable;
ww_heatOn <= heatOn;
ww_averageTemperature <= averageTemperature;
actualTemperature <= ww_actualTemperature;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
ALT_INV_s_actualTemperature(4) <= NOT s_actualTemperature(4);
ALT_INV_s_actualTemperature(2) <= NOT s_actualTemperature(2);

\actualTemperature[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \actualTemperature[0]~output_o\);

\actualTemperature[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => s_actualTemperature(1),
	devoe => ww_devoe,
	o => \actualTemperature[1]~output_o\);

\actualTemperature[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => ALT_INV_s_actualTemperature(2),
	devoe => ww_devoe,
	o => \actualTemperature[2]~output_o\);

\actualTemperature[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => s_actualTemperature(3),
	devoe => ww_devoe,
	o => \actualTemperature[3]~output_o\);

\actualTemperature[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => ALT_INV_s_actualTemperature(4),
	devoe => ww_devoe,
	o => \actualTemperature[4]~output_o\);

\actualTemperature[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => s_actualTemperature(5),
	devoe => ww_devoe,
	o => \actualTemperature[5]~output_o\);

\actualTemperature[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => s_actualTemperature(6),
	devoe => ww_devoe,
	o => \actualTemperature[6]~output_o\);

\actualTemperature[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => s_actualTemperature(7),
	devoe => ww_devoe,
	o => \actualTemperature[7]~output_o\);

\actualTemperature[8]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => s_actualTemperature(8),
	devoe => ww_devoe,
	o => \actualTemperature[8]~output_o\);

\actualTemperature[9]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => s_actualTemperature(9),
	devoe => ww_devoe,
	o => \actualTemperature[9]~output_o\);

\actualTemperature[10]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => s_actualTemperature(10),
	devoe => ww_devoe,
	o => \actualTemperature[10]~output_o\);

\actualTemperature[11]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => s_actualTemperature(11),
	devoe => ww_devoe,
	o => \actualTemperature[11]~output_o\);

\actualTemperature[12]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => s_actualTemperature(12),
	devoe => ww_devoe,
	o => \actualTemperature[12]~output_o\);

\actualTemperature[13]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => s_actualTemperature(13),
	devoe => ww_devoe,
	o => \actualTemperature[13]~output_o\);

\actualTemperature[14]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => s_actualTemperature(14),
	devoe => ww_devoe,
	o => \actualTemperature[14]~output_o\);

\actualTemperature[15]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => s_actualTemperature(15),
	devoe => ww_devoe,
	o => \actualTemperature[15]~output_o\);

\clk~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clk,
	o => \clk~input_o\);

\Add0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~0_combout\ = s_actualTemperature(1) $ (VCC)
-- \Add0~1\ = CARRY(s_actualTemperature(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => s_actualTemperature(1),
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

\enable~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_enable,
	o => \enable~input_o\);

\s_actualTemperature[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_actualTemperature[1]~0_combout\ = (\reset~input_o\) # (\enable~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reset~input_o\,
	datab => \enable~input_o\,
	combout => \s_actualTemperature[1]~0_combout\);

\s_actualTemperature[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \Add0~0_combout\,
	sclr => \reset~input_o\,
	ena => \s_actualTemperature[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_actualTemperature(1));

\heatOn~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_heatOn,
	o => \heatOn~input_o\);

\Add0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~2_combout\ = (\s_actualTemperature~1_combout\ & ((s_actualTemperature(2) & ((\Add0~1\) # (GND))) # (!s_actualTemperature(2) & (!\Add0~1\)))) # (!\s_actualTemperature~1_combout\ & ((s_actualTemperature(2) & (!\Add0~1\)) # (!s_actualTemperature(2) & 
-- (\Add0~1\ & VCC))))
-- \Add0~3\ = CARRY((\s_actualTemperature~1_combout\ & ((s_actualTemperature(2)) # (!\Add0~1\))) # (!\s_actualTemperature~1_combout\ & (s_actualTemperature(2) & !\Add0~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \s_actualTemperature~1_combout\,
	datab => s_actualTemperature(2),
	datad => VCC,
	cin => \Add0~1\,
	combout => \Add0~2_combout\,
	cout => \Add0~3\);

\Add0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~4_combout\ = ((\s_actualTemperature~1_combout\ $ (s_actualTemperature(3) $ (!\Add0~3\)))) # (GND)
-- \Add0~5\ = CARRY((\s_actualTemperature~1_combout\ & ((s_actualTemperature(3)) # (!\Add0~3\))) # (!\s_actualTemperature~1_combout\ & (s_actualTemperature(3) & !\Add0~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \s_actualTemperature~1_combout\,
	datab => s_actualTemperature(3),
	datad => VCC,
	cin => \Add0~3\,
	combout => \Add0~4_combout\,
	cout => \Add0~5\);

\s_actualTemperature[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \Add0~4_combout\,
	sclr => \reset~input_o\,
	ena => \s_actualTemperature[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_actualTemperature(3));

\Add0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~6_combout\ = (\s_actualTemperature~1_combout\ & ((s_actualTemperature(4) & ((\Add0~5\) # (GND))) # (!s_actualTemperature(4) & (!\Add0~5\)))) # (!\s_actualTemperature~1_combout\ & ((s_actualTemperature(4) & (!\Add0~5\)) # (!s_actualTemperature(4) & 
-- (\Add0~5\ & VCC))))
-- \Add0~7\ = CARRY((\s_actualTemperature~1_combout\ & ((s_actualTemperature(4)) # (!\Add0~5\))) # (!\s_actualTemperature~1_combout\ & (s_actualTemperature(4) & !\Add0~5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \s_actualTemperature~1_combout\,
	datab => s_actualTemperature(4),
	datad => VCC,
	cin => \Add0~5\,
	combout => \Add0~6_combout\,
	cout => \Add0~7\);

\s_actualTemperature~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_actualTemperature~3_combout\ = (!\reset~input_o\ & !\Add0~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000100010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reset~input_o\,
	datab => \Add0~6_combout\,
	combout => \s_actualTemperature~3_combout\);

\s_actualTemperature[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \s_actualTemperature~3_combout\,
	ena => \s_actualTemperature[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_actualTemperature(4));

\Add0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~8_combout\ = ((\s_actualTemperature~1_combout\ $ (s_actualTemperature(5) $ (\Add0~7\)))) # (GND)
-- \Add0~9\ = CARRY((\s_actualTemperature~1_combout\ & (s_actualTemperature(5) & !\Add0~7\)) # (!\s_actualTemperature~1_combout\ & ((s_actualTemperature(5)) # (!\Add0~7\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \s_actualTemperature~1_combout\,
	datab => s_actualTemperature(5),
	datad => VCC,
	cin => \Add0~7\,
	combout => \Add0~8_combout\,
	cout => \Add0~9\);

\s_actualTemperature[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \Add0~8_combout\,
	sclr => \reset~input_o\,
	ena => \s_actualTemperature[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_actualTemperature(5));

\Add0~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~10_combout\ = (\s_actualTemperature~1_combout\ & ((s_actualTemperature(6) & (!\Add0~9\)) # (!s_actualTemperature(6) & ((\Add0~9\) # (GND))))) # (!\s_actualTemperature~1_combout\ & ((s_actualTemperature(6) & (\Add0~9\ & VCC)) # 
-- (!s_actualTemperature(6) & (!\Add0~9\))))
-- \Add0~11\ = CARRY((\s_actualTemperature~1_combout\ & ((!\Add0~9\) # (!s_actualTemperature(6)))) # (!\s_actualTemperature~1_combout\ & (!s_actualTemperature(6) & !\Add0~9\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \s_actualTemperature~1_combout\,
	datab => s_actualTemperature(6),
	datad => VCC,
	cin => \Add0~9\,
	combout => \Add0~10_combout\,
	cout => \Add0~11\);

\s_actualTemperature[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \Add0~10_combout\,
	sclr => \reset~input_o\,
	ena => \s_actualTemperature[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_actualTemperature(6));

\Add0~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~12_combout\ = ((\s_actualTemperature~1_combout\ $ (s_actualTemperature(7) $ (\Add0~11\)))) # (GND)
-- \Add0~13\ = CARRY((\s_actualTemperature~1_combout\ & (s_actualTemperature(7) & !\Add0~11\)) # (!\s_actualTemperature~1_combout\ & ((s_actualTemperature(7)) # (!\Add0~11\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \s_actualTemperature~1_combout\,
	datab => s_actualTemperature(7),
	datad => VCC,
	cin => \Add0~11\,
	combout => \Add0~12_combout\,
	cout => \Add0~13\);

\s_actualTemperature[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \Add0~12_combout\,
	sclr => \reset~input_o\,
	ena => \s_actualTemperature[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_actualTemperature(7));

\Add0~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~14_combout\ = (\s_actualTemperature~1_combout\ & ((s_actualTemperature(8) & (!\Add0~13\)) # (!s_actualTemperature(8) & ((\Add0~13\) # (GND))))) # (!\s_actualTemperature~1_combout\ & ((s_actualTemperature(8) & (\Add0~13\ & VCC)) # 
-- (!s_actualTemperature(8) & (!\Add0~13\))))
-- \Add0~15\ = CARRY((\s_actualTemperature~1_combout\ & ((!\Add0~13\) # (!s_actualTemperature(8)))) # (!\s_actualTemperature~1_combout\ & (!s_actualTemperature(8) & !\Add0~13\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \s_actualTemperature~1_combout\,
	datab => s_actualTemperature(8),
	datad => VCC,
	cin => \Add0~13\,
	combout => \Add0~14_combout\,
	cout => \Add0~15\);

\s_actualTemperature[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \Add0~14_combout\,
	sclr => \reset~input_o\,
	ena => \s_actualTemperature[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_actualTemperature(8));

\Add0~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~16_combout\ = ((\s_actualTemperature~1_combout\ $ (s_actualTemperature(9) $ (\Add0~15\)))) # (GND)
-- \Add0~17\ = CARRY((\s_actualTemperature~1_combout\ & (s_actualTemperature(9) & !\Add0~15\)) # (!\s_actualTemperature~1_combout\ & ((s_actualTemperature(9)) # (!\Add0~15\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \s_actualTemperature~1_combout\,
	datab => s_actualTemperature(9),
	datad => VCC,
	cin => \Add0~15\,
	combout => \Add0~16_combout\,
	cout => \Add0~17\);

\s_actualTemperature[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \Add0~16_combout\,
	sclr => \reset~input_o\,
	ena => \s_actualTemperature[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_actualTemperature(9));

\Add0~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~18_combout\ = (\s_actualTemperature~1_combout\ & ((s_actualTemperature(10) & (!\Add0~17\)) # (!s_actualTemperature(10) & ((\Add0~17\) # (GND))))) # (!\s_actualTemperature~1_combout\ & ((s_actualTemperature(10) & (\Add0~17\ & VCC)) # 
-- (!s_actualTemperature(10) & (!\Add0~17\))))
-- \Add0~19\ = CARRY((\s_actualTemperature~1_combout\ & ((!\Add0~17\) # (!s_actualTemperature(10)))) # (!\s_actualTemperature~1_combout\ & (!s_actualTemperature(10) & !\Add0~17\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \s_actualTemperature~1_combout\,
	datab => s_actualTemperature(10),
	datad => VCC,
	cin => \Add0~17\,
	combout => \Add0~18_combout\,
	cout => \Add0~19\);

\s_actualTemperature[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \Add0~18_combout\,
	sclr => \reset~input_o\,
	ena => \s_actualTemperature[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_actualTemperature(10));

\Add0~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~20_combout\ = ((\s_actualTemperature~1_combout\ $ (s_actualTemperature(11) $ (\Add0~19\)))) # (GND)
-- \Add0~21\ = CARRY((\s_actualTemperature~1_combout\ & (s_actualTemperature(11) & !\Add0~19\)) # (!\s_actualTemperature~1_combout\ & ((s_actualTemperature(11)) # (!\Add0~19\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \s_actualTemperature~1_combout\,
	datab => s_actualTemperature(11),
	datad => VCC,
	cin => \Add0~19\,
	combout => \Add0~20_combout\,
	cout => \Add0~21\);

\s_actualTemperature[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \Add0~20_combout\,
	sclr => \reset~input_o\,
	ena => \s_actualTemperature[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_actualTemperature(11));

\Add0~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~22_combout\ = (\s_actualTemperature~1_combout\ & ((s_actualTemperature(12) & (!\Add0~21\)) # (!s_actualTemperature(12) & ((\Add0~21\) # (GND))))) # (!\s_actualTemperature~1_combout\ & ((s_actualTemperature(12) & (\Add0~21\ & VCC)) # 
-- (!s_actualTemperature(12) & (!\Add0~21\))))
-- \Add0~23\ = CARRY((\s_actualTemperature~1_combout\ & ((!\Add0~21\) # (!s_actualTemperature(12)))) # (!\s_actualTemperature~1_combout\ & (!s_actualTemperature(12) & !\Add0~21\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \s_actualTemperature~1_combout\,
	datab => s_actualTemperature(12),
	datad => VCC,
	cin => \Add0~21\,
	combout => \Add0~22_combout\,
	cout => \Add0~23\);

\s_actualTemperature[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \Add0~22_combout\,
	sclr => \reset~input_o\,
	ena => \s_actualTemperature[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_actualTemperature(12));

\Add0~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~24_combout\ = ((\s_actualTemperature~1_combout\ $ (s_actualTemperature(13) $ (\Add0~23\)))) # (GND)
-- \Add0~25\ = CARRY((\s_actualTemperature~1_combout\ & (s_actualTemperature(13) & !\Add0~23\)) # (!\s_actualTemperature~1_combout\ & ((s_actualTemperature(13)) # (!\Add0~23\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \s_actualTemperature~1_combout\,
	datab => s_actualTemperature(13),
	datad => VCC,
	cin => \Add0~23\,
	combout => \Add0~24_combout\,
	cout => \Add0~25\);

\s_actualTemperature[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \Add0~24_combout\,
	sclr => \reset~input_o\,
	ena => \s_actualTemperature[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_actualTemperature(13));

\Add0~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~26_combout\ = (\s_actualTemperature~1_combout\ & ((s_actualTemperature(14) & (!\Add0~25\)) # (!s_actualTemperature(14) & ((\Add0~25\) # (GND))))) # (!\s_actualTemperature~1_combout\ & ((s_actualTemperature(14) & (\Add0~25\ & VCC)) # 
-- (!s_actualTemperature(14) & (!\Add0~25\))))
-- \Add0~27\ = CARRY((\s_actualTemperature~1_combout\ & ((!\Add0~25\) # (!s_actualTemperature(14)))) # (!\s_actualTemperature~1_combout\ & (!s_actualTemperature(14) & !\Add0~25\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \s_actualTemperature~1_combout\,
	datab => s_actualTemperature(14),
	datad => VCC,
	cin => \Add0~25\,
	combout => \Add0~26_combout\,
	cout => \Add0~27\);

\s_actualTemperature[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \Add0~26_combout\,
	sclr => \reset~input_o\,
	ena => \s_actualTemperature[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_actualTemperature(14));

\Add0~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~28_combout\ = \s_actualTemperature~1_combout\ $ (s_actualTemperature(15) $ (\Add0~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010010110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \s_actualTemperature~1_combout\,
	datab => s_actualTemperature(15),
	cin => \Add0~27\,
	combout => \Add0~28_combout\);

\s_actualTemperature[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \Add0~28_combout\,
	sclr => \reset~input_o\,
	ena => \s_actualTemperature[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_actualTemperature(15));

\averageTemperature[15]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_averageTemperature(15),
	o => \averageTemperature[15]~input_o\);

\averageTemperature[14]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_averageTemperature(14),
	o => \averageTemperature[14]~input_o\);

\averageTemperature[13]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_averageTemperature(13),
	o => \averageTemperature[13]~input_o\);

\averageTemperature[12]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_averageTemperature(12),
	o => \averageTemperature[12]~input_o\);

\averageTemperature[11]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_averageTemperature(11),
	o => \averageTemperature[11]~input_o\);

\averageTemperature[10]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_averageTemperature(10),
	o => \averageTemperature[10]~input_o\);

\averageTemperature[9]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_averageTemperature(9),
	o => \averageTemperature[9]~input_o\);

\averageTemperature[8]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_averageTemperature(8),
	o => \averageTemperature[8]~input_o\);

\averageTemperature[7]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_averageTemperature(7),
	o => \averageTemperature[7]~input_o\);

\averageTemperature[6]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_averageTemperature(6),
	o => \averageTemperature[6]~input_o\);

\averageTemperature[5]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_averageTemperature(5),
	o => \averageTemperature[5]~input_o\);

\averageTemperature[4]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_averageTemperature(4),
	o => \averageTemperature[4]~input_o\);

\averageTemperature[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_averageTemperature(3),
	o => \averageTemperature[3]~input_o\);

\averageTemperature[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_averageTemperature(2),
	o => \averageTemperature[2]~input_o\);

\averageTemperature[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_averageTemperature(1),
	o => \averageTemperature[1]~input_o\);

\averageTemperature[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_averageTemperature(0),
	o => \averageTemperature[0]~input_o\);

\LessThan0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan0~1_cout\ = CARRY(\averageTemperature[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \averageTemperature[0]~input_o\,
	datad => VCC,
	cout => \LessThan0~1_cout\);

\LessThan0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan0~3_cout\ = CARRY((s_actualTemperature(1) & ((!\LessThan0~1_cout\) # (!\averageTemperature[1]~input_o\))) # (!s_actualTemperature(1) & (!\averageTemperature[1]~input_o\ & !\LessThan0~1_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => s_actualTemperature(1),
	datab => \averageTemperature[1]~input_o\,
	datad => VCC,
	cin => \LessThan0~1_cout\,
	cout => \LessThan0~3_cout\);

\LessThan0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan0~5_cout\ = CARRY((s_actualTemperature(2) & ((\averageTemperature[2]~input_o\) # (!\LessThan0~3_cout\))) # (!s_actualTemperature(2) & (\averageTemperature[2]~input_o\ & !\LessThan0~3_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => s_actualTemperature(2),
	datab => \averageTemperature[2]~input_o\,
	datad => VCC,
	cin => \LessThan0~3_cout\,
	cout => \LessThan0~5_cout\);

\LessThan0~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan0~7_cout\ = CARRY((s_actualTemperature(3) & ((!\LessThan0~5_cout\) # (!\averageTemperature[3]~input_o\))) # (!s_actualTemperature(3) & (!\averageTemperature[3]~input_o\ & !\LessThan0~5_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => s_actualTemperature(3),
	datab => \averageTemperature[3]~input_o\,
	datad => VCC,
	cin => \LessThan0~5_cout\,
	cout => \LessThan0~7_cout\);

\LessThan0~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan0~9_cout\ = CARRY((s_actualTemperature(4) & ((\averageTemperature[4]~input_o\) # (!\LessThan0~7_cout\))) # (!s_actualTemperature(4) & (\averageTemperature[4]~input_o\ & !\LessThan0~7_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => s_actualTemperature(4),
	datab => \averageTemperature[4]~input_o\,
	datad => VCC,
	cin => \LessThan0~7_cout\,
	cout => \LessThan0~9_cout\);

\LessThan0~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan0~11_cout\ = CARRY((s_actualTemperature(5) & ((!\LessThan0~9_cout\) # (!\averageTemperature[5]~input_o\))) # (!s_actualTemperature(5) & (!\averageTemperature[5]~input_o\ & !\LessThan0~9_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => s_actualTemperature(5),
	datab => \averageTemperature[5]~input_o\,
	datad => VCC,
	cin => \LessThan0~9_cout\,
	cout => \LessThan0~11_cout\);

\LessThan0~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan0~13_cout\ = CARRY((s_actualTemperature(6) & (\averageTemperature[6]~input_o\ & !\LessThan0~11_cout\)) # (!s_actualTemperature(6) & ((\averageTemperature[6]~input_o\) # (!\LessThan0~11_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => s_actualTemperature(6),
	datab => \averageTemperature[6]~input_o\,
	datad => VCC,
	cin => \LessThan0~11_cout\,
	cout => \LessThan0~13_cout\);

\LessThan0~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan0~15_cout\ = CARRY((s_actualTemperature(7) & ((!\LessThan0~13_cout\) # (!\averageTemperature[7]~input_o\))) # (!s_actualTemperature(7) & (!\averageTemperature[7]~input_o\ & !\LessThan0~13_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => s_actualTemperature(7),
	datab => \averageTemperature[7]~input_o\,
	datad => VCC,
	cin => \LessThan0~13_cout\,
	cout => \LessThan0~15_cout\);

\LessThan0~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan0~17_cout\ = CARRY((s_actualTemperature(8) & (\averageTemperature[8]~input_o\ & !\LessThan0~15_cout\)) # (!s_actualTemperature(8) & ((\averageTemperature[8]~input_o\) # (!\LessThan0~15_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => s_actualTemperature(8),
	datab => \averageTemperature[8]~input_o\,
	datad => VCC,
	cin => \LessThan0~15_cout\,
	cout => \LessThan0~17_cout\);

\LessThan0~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan0~19_cout\ = CARRY((s_actualTemperature(9) & ((!\LessThan0~17_cout\) # (!\averageTemperature[9]~input_o\))) # (!s_actualTemperature(9) & (!\averageTemperature[9]~input_o\ & !\LessThan0~17_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => s_actualTemperature(9),
	datab => \averageTemperature[9]~input_o\,
	datad => VCC,
	cin => \LessThan0~17_cout\,
	cout => \LessThan0~19_cout\);

\LessThan0~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan0~21_cout\ = CARRY((s_actualTemperature(10) & (\averageTemperature[10]~input_o\ & !\LessThan0~19_cout\)) # (!s_actualTemperature(10) & ((\averageTemperature[10]~input_o\) # (!\LessThan0~19_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => s_actualTemperature(10),
	datab => \averageTemperature[10]~input_o\,
	datad => VCC,
	cin => \LessThan0~19_cout\,
	cout => \LessThan0~21_cout\);

\LessThan0~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan0~23_cout\ = CARRY((s_actualTemperature(11) & ((!\LessThan0~21_cout\) # (!\averageTemperature[11]~input_o\))) # (!s_actualTemperature(11) & (!\averageTemperature[11]~input_o\ & !\LessThan0~21_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => s_actualTemperature(11),
	datab => \averageTemperature[11]~input_o\,
	datad => VCC,
	cin => \LessThan0~21_cout\,
	cout => \LessThan0~23_cout\);

\LessThan0~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan0~25_cout\ = CARRY((s_actualTemperature(12) & (\averageTemperature[12]~input_o\ & !\LessThan0~23_cout\)) # (!s_actualTemperature(12) & ((\averageTemperature[12]~input_o\) # (!\LessThan0~23_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => s_actualTemperature(12),
	datab => \averageTemperature[12]~input_o\,
	datad => VCC,
	cin => \LessThan0~23_cout\,
	cout => \LessThan0~25_cout\);

\LessThan0~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan0~27_cout\ = CARRY((s_actualTemperature(13) & ((!\LessThan0~25_cout\) # (!\averageTemperature[13]~input_o\))) # (!s_actualTemperature(13) & (!\averageTemperature[13]~input_o\ & !\LessThan0~25_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => s_actualTemperature(13),
	datab => \averageTemperature[13]~input_o\,
	datad => VCC,
	cin => \LessThan0~25_cout\,
	cout => \LessThan0~27_cout\);

\LessThan0~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan0~29_cout\ = CARRY((s_actualTemperature(14) & (\averageTemperature[14]~input_o\ & !\LessThan0~27_cout\)) # (!s_actualTemperature(14) & ((\averageTemperature[14]~input_o\) # (!\LessThan0~27_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => s_actualTemperature(14),
	datab => \averageTemperature[14]~input_o\,
	datad => VCC,
	cin => \LessThan0~27_cout\,
	cout => \LessThan0~29_cout\);

\LessThan0~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan0~30_combout\ = (s_actualTemperature(15) & (\averageTemperature[15]~input_o\ & \LessThan0~29_cout\)) # (!s_actualTemperature(15) & ((\averageTemperature[15]~input_o\) # (\LessThan0~29_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010011010100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => s_actualTemperature(15),
	datab => \averageTemperature[15]~input_o\,
	cin => \LessThan0~29_cout\,
	combout => \LessThan0~30_combout\);

\s_actualTemperature~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_actualTemperature~1_combout\ = (\heatOn~input_o\ & \LessThan0~30_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \heatOn~input_o\,
	datab => \LessThan0~30_combout\,
	combout => \s_actualTemperature~1_combout\);

\s_actualTemperature~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_actualTemperature~2_combout\ = (!\reset~input_o\ & !\Add0~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000100010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reset~input_o\,
	datab => \Add0~2_combout\,
	combout => \s_actualTemperature~2_combout\);

\s_actualTemperature[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \s_actualTemperature~2_combout\,
	ena => \s_actualTemperature[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_actualTemperature(2));

ww_actualTemperature(0) <= \actualTemperature[0]~output_o\;

ww_actualTemperature(1) <= \actualTemperature[1]~output_o\;

ww_actualTemperature(2) <= \actualTemperature[2]~output_o\;

ww_actualTemperature(3) <= \actualTemperature[3]~output_o\;

ww_actualTemperature(4) <= \actualTemperature[4]~output_o\;

ww_actualTemperature(5) <= \actualTemperature[5]~output_o\;

ww_actualTemperature(6) <= \actualTemperature[6]~output_o\;

ww_actualTemperature(7) <= \actualTemperature[7]~output_o\;

ww_actualTemperature(8) <= \actualTemperature[8]~output_o\;

ww_actualTemperature(9) <= \actualTemperature[9]~output_o\;

ww_actualTemperature(10) <= \actualTemperature[10]~output_o\;

ww_actualTemperature(11) <= \actualTemperature[11]~output_o\;

ww_actualTemperature(12) <= \actualTemperature[12]~output_o\;

ww_actualTemperature(13) <= \actualTemperature[13]~output_o\;

ww_actualTemperature(14) <= \actualTemperature[14]~output_o\;

ww_actualTemperature(15) <= \actualTemperature[15]~output_o\;
END structure;


