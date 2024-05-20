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
-- Generated on "05/19/2024 17:19:42"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          RegisterTemperature
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY RegisterTemperature_vhd_vec_tst IS
END RegisterTemperature_vhd_vec_tst;
ARCHITECTURE RegisterTemperature_arch OF RegisterTemperature_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL clk : STD_LOGIC;
SIGNAL decrement : STD_LOGIC;
SIGNAL generalEnable : STD_LOGIC;
SIGNAL increment : STD_LOGIC;
SIGNAL loadEnable : STD_LOGIC;
SIGNAL reset : STD_LOGIC;
SIGNAL temperatureIn : STD_LOGIC_VECTOR(15 DOWNTO 0);
SIGNAL temperatureOut : STD_LOGIC_VECTOR(15 DOWNTO 0);
COMPONENT RegisterTemperature
	PORT (
	clk : IN STD_LOGIC;
	decrement : IN STD_LOGIC;
	generalEnable : IN STD_LOGIC;
	increment : IN STD_LOGIC;
	loadEnable : IN STD_LOGIC;
	reset : IN STD_LOGIC;
	temperatureIn : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
	temperatureOut : OUT STD_LOGIC_VECTOR(15 DOWNTO 0)
	);
END COMPONENT;
BEGIN
	i1 : RegisterTemperature
	PORT MAP (
-- list connections between master ports and signals
	clk => clk,
	decrement => decrement,
	generalEnable => generalEnable,
	increment => increment,
	loadEnable => loadEnable,
	reset => reset,
	temperatureIn => temperatureIn,
	temperatureOut => temperatureOut
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

-- generalEnable
t_prcs_generalEnable: PROCESS
BEGIN
	generalEnable <= '1';
WAIT;
END PROCESS t_prcs_generalEnable;

-- loadEnable
t_prcs_loadEnable: PROCESS
BEGIN
	loadEnable <= '0';
	WAIT FOR 120000 ps;
	loadEnable <= '1';
	WAIT FOR 30000 ps;
	loadEnable <= '0';
WAIT;
END PROCESS t_prcs_loadEnable;

-- reset
t_prcs_reset: PROCESS
BEGIN
	reset <= '0';
WAIT;
END PROCESS t_prcs_reset;

-- increment
t_prcs_increment: PROCESS
BEGIN
	increment <= '0';
WAIT;
END PROCESS t_prcs_increment;

-- decrement
t_prcs_decrement: PROCESS
BEGIN
	decrement <= '1';
WAIT;
END PROCESS t_prcs_decrement;
-- temperatureIn[15]
t_prcs_temperatureIn_15: PROCESS
BEGIN
	temperatureIn(15) <= '0';
WAIT;
END PROCESS t_prcs_temperatureIn_15;
-- temperatureIn[14]
t_prcs_temperatureIn_14: PROCESS
BEGIN
	temperatureIn(14) <= '0';
WAIT;
END PROCESS t_prcs_temperatureIn_14;
-- temperatureIn[13]
t_prcs_temperatureIn_13: PROCESS
BEGIN
	temperatureIn(13) <= '0';
WAIT;
END PROCESS t_prcs_temperatureIn_13;
-- temperatureIn[12]
t_prcs_temperatureIn_12: PROCESS
BEGIN
	temperatureIn(12) <= '0';
WAIT;
END PROCESS t_prcs_temperatureIn_12;
-- temperatureIn[11]
t_prcs_temperatureIn_11: PROCESS
BEGIN
	temperatureIn(11) <= '0';
WAIT;
END PROCESS t_prcs_temperatureIn_11;
-- temperatureIn[10]
t_prcs_temperatureIn_10: PROCESS
BEGIN
	temperatureIn(10) <= '0';
WAIT;
END PROCESS t_prcs_temperatureIn_10;
-- temperatureIn[9]
t_prcs_temperatureIn_9: PROCESS
BEGIN
	temperatureIn(9) <= '0';
WAIT;
END PROCESS t_prcs_temperatureIn_9;
-- temperatureIn[8]
t_prcs_temperatureIn_8: PROCESS
BEGIN
	temperatureIn(8) <= '1';
WAIT;
END PROCESS t_prcs_temperatureIn_8;
-- temperatureIn[7]
t_prcs_temperatureIn_7: PROCESS
BEGIN
	temperatureIn(7) <= '0';
WAIT;
END PROCESS t_prcs_temperatureIn_7;
-- temperatureIn[6]
t_prcs_temperatureIn_6: PROCESS
BEGIN
	temperatureIn(6) <= '1';
WAIT;
END PROCESS t_prcs_temperatureIn_6;
-- temperatureIn[5]
t_prcs_temperatureIn_5: PROCESS
BEGIN
	temperatureIn(5) <= '0';
WAIT;
END PROCESS t_prcs_temperatureIn_5;
-- temperatureIn[4]
t_prcs_temperatureIn_4: PROCESS
BEGIN
	temperatureIn(4) <= '1';
WAIT;
END PROCESS t_prcs_temperatureIn_4;
-- temperatureIn[3]
t_prcs_temperatureIn_3: PROCESS
BEGIN
	temperatureIn(3) <= '1';
WAIT;
END PROCESS t_prcs_temperatureIn_3;
-- temperatureIn[2]
t_prcs_temperatureIn_2: PROCESS
BEGIN
	temperatureIn(2) <= '1';
WAIT;
END PROCESS t_prcs_temperatureIn_2;
-- temperatureIn[1]
t_prcs_temperatureIn_1: PROCESS
BEGIN
	temperatureIn(1) <= '1';
WAIT;
END PROCESS t_prcs_temperatureIn_1;
-- temperatureIn[0]
t_prcs_temperatureIn_0: PROCESS
BEGIN
	temperatureIn(0) <= '0';
WAIT;
END PROCESS t_prcs_temperatureIn_0;
END RegisterTemperature_arch;
