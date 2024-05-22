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

-- *****************************************************************************
-- This file contains a Vhdl test bench with test vectors .The test vectors     
-- are exported from a vector file in the Quartus Waveform Editor and apply to  
-- the top level entity of the current Quartus project .The user can use this   
-- testbench to simulate his design using a third-party simulation tool .       
-- *****************************************************************************
-- Generated on "05/22/2024 17:01:57"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          Heater
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY Heater_vhd_vec_tst IS
END Heater_vhd_vec_tst;
ARCHITECTURE Heater_arch OF Heater_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL actualTemperature : STD_LOGIC_VECTOR(15 DOWNTO 0);
SIGNAL averageTemperature : STD_LOGIC_VECTOR(15 DOWNTO 0);
SIGNAL clk : STD_LOGIC;
SIGNAL enable : STD_LOGIC;
SIGNAL heatOn : STD_LOGIC;
SIGNAL reset : STD_LOGIC;
COMPONENT Heater
	PORT (
	actualTemperature : BUFFER STD_LOGIC_VECTOR(15 DOWNTO 0);
	averageTemperature : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
	clk : IN STD_LOGIC;
	enable : IN STD_LOGIC;
	heatOn : IN STD_LOGIC;
	reset : IN STD_LOGIC
	);
END COMPONENT;
BEGIN
	i1 : Heater
	PORT MAP (
-- list connections between master ports and signals
	actualTemperature => actualTemperature,
	averageTemperature => averageTemperature,
	clk => clk,
	enable => enable,
	heatOn => heatOn,
	reset => reset
	);

-- clk
t_prcs_clk: PROCESS
BEGIN
	FOR i IN 1 TO 33
	LOOP
		clk <= '0';
		WAIT FOR 15000 ps;
		clk <= '1';
		WAIT FOR 15000 ps;
	END LOOP;
	clk <= '0';
WAIT;
END PROCESS t_prcs_clk;

-- enable
t_prcs_enable: PROCESS
BEGIN
	enable <= '1';
WAIT;
END PROCESS t_prcs_enable;

-- heatOn
t_prcs_heatOn: PROCESS
BEGIN
	heatOn <= '1';
WAIT;
END PROCESS t_prcs_heatOn;

-- reset
t_prcs_reset: PROCESS
BEGIN
	reset <= '0';
WAIT;
END PROCESS t_prcs_reset;
-- averageTemperature[15]
t_prcs_averageTemperature_15: PROCESS
BEGIN
	averageTemperature(15) <= '0';
WAIT;
END PROCESS t_prcs_averageTemperature_15;
-- averageTemperature[14]
t_prcs_averageTemperature_14: PROCESS
BEGIN
	averageTemperature(14) <= '0';
WAIT;
END PROCESS t_prcs_averageTemperature_14;
-- averageTemperature[13]
t_prcs_averageTemperature_13: PROCESS
BEGIN
	averageTemperature(13) <= '0';
WAIT;
END PROCESS t_prcs_averageTemperature_13;
-- averageTemperature[12]
t_prcs_averageTemperature_12: PROCESS
BEGIN
	averageTemperature(12) <= '0';
WAIT;
END PROCESS t_prcs_averageTemperature_12;
-- averageTemperature[11]
t_prcs_averageTemperature_11: PROCESS
BEGIN
	averageTemperature(11) <= '0';
WAIT;
END PROCESS t_prcs_averageTemperature_11;
-- averageTemperature[10]
t_prcs_averageTemperature_10: PROCESS
BEGIN
	averageTemperature(10) <= '0';
WAIT;
END PROCESS t_prcs_averageTemperature_10;
-- averageTemperature[9]
t_prcs_averageTemperature_9: PROCESS
BEGIN
	averageTemperature(9) <= '0';
WAIT;
END PROCESS t_prcs_averageTemperature_9;
-- averageTemperature[8]
t_prcs_averageTemperature_8: PROCESS
BEGIN
	averageTemperature(8) <= '0';
WAIT;
END PROCESS t_prcs_averageTemperature_8;
-- averageTemperature[7]
t_prcs_averageTemperature_7: PROCESS
BEGIN
	averageTemperature(7) <= '0';
WAIT;
END PROCESS t_prcs_averageTemperature_7;
-- averageTemperature[6]
t_prcs_averageTemperature_6: PROCESS
BEGIN
	averageTemperature(6) <= '1';
	WAIT FOR 520000 ps;
	averageTemperature(6) <= '0';
	WAIT FOR 460000 ps;
	averageTemperature(6) <= '1';
WAIT;
END PROCESS t_prcs_averageTemperature_6;
-- averageTemperature[5]
t_prcs_averageTemperature_5: PROCESS
BEGIN
	averageTemperature(5) <= '1';
	WAIT FOR 520000 ps;
	averageTemperature(5) <= '0';
	WAIT FOR 460000 ps;
	averageTemperature(5) <= '1';
WAIT;
END PROCESS t_prcs_averageTemperature_5;
-- averageTemperature[4]
t_prcs_averageTemperature_4: PROCESS
BEGIN
	averageTemperature(4) <= '0';
	WAIT FOR 520000 ps;
	averageTemperature(4) <= '1';
	WAIT FOR 460000 ps;
	averageTemperature(4) <= '0';
WAIT;
END PROCESS t_prcs_averageTemperature_4;
-- averageTemperature[3]
t_prcs_averageTemperature_3: PROCESS
BEGIN
	averageTemperature(3) <= '0';
	WAIT FOR 520000 ps;
	averageTemperature(3) <= '1';
	WAIT FOR 460000 ps;
	averageTemperature(3) <= '0';
WAIT;
END PROCESS t_prcs_averageTemperature_3;
-- averageTemperature[2]
t_prcs_averageTemperature_2: PROCESS
BEGIN
	averageTemperature(2) <= '1';
WAIT;
END PROCESS t_prcs_averageTemperature_2;
-- averageTemperature[1]
t_prcs_averageTemperature_1: PROCESS
BEGIN
	averageTemperature(1) <= '0';
	WAIT FOR 520000 ps;
	averageTemperature(1) <= '1';
	WAIT FOR 460000 ps;
	averageTemperature(1) <= '0';
WAIT;
END PROCESS t_prcs_averageTemperature_1;
-- averageTemperature[0]
t_prcs_averageTemperature_0: PROCESS
BEGIN
	averageTemperature(0) <= '0';
WAIT;
END PROCESS t_prcs_averageTemperature_0;
END Heater_arch;
