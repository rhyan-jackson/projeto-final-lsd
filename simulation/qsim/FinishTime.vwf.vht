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
-- Generated on "05/19/2024 20:51:58"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          RegisterTime
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY RegisterTime_vhd_vec_tst IS
END RegisterTime_vhd_vec_tst;
ARCHITECTURE RegisterTime_arch OF RegisterTime_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL clk : STD_LOGIC;
SIGNAL decrementCook : STD_LOGIC;
SIGNAL decrementIdle : STD_LOGIC;
SIGNAL enable : STD_LOGIC;
SIGNAL finishTime : STD_LOGIC;
SIGNAL incrementCook : STD_LOGIC;
SIGNAL incrementIdle : STD_LOGIC;
SIGNAL reset : STD_LOGIC;
SIGNAL runCook : STD_LOGIC;
SIGNAL runIdle : STD_LOGIC;
SIGNAL timeOutCook : STD_LOGIC_VECTOR(15 DOWNTO 0);
SIGNAL timeOutIdle : STD_LOGIC_VECTOR(15 DOWNTO 0);
COMPONENT RegisterTime
	PORT (
	clk : IN STD_LOGIC;
	decrementCook : IN STD_LOGIC;
	decrementIdle : IN STD_LOGIC;
	enable : IN STD_LOGIC;
	finishTime : OUT STD_LOGIC;
	incrementCook : IN STD_LOGIC;
	incrementIdle : IN STD_LOGIC;
	reset : IN STD_LOGIC;
	runCook : IN STD_LOGIC;
	runIdle : IN STD_LOGIC;
	timeOutCook : OUT STD_LOGIC_VECTOR(15 DOWNTO 0);
	timeOutIdle : OUT STD_LOGIC_VECTOR(15 DOWNTO 0)
	);
END COMPONENT;
BEGIN
	i1 : RegisterTime
	PORT MAP (
-- list connections between master ports and signals
	clk => clk,
	decrementCook => decrementCook,
	decrementIdle => decrementIdle,
	enable => enable,
	finishTime => finishTime,
	incrementCook => incrementCook,
	incrementIdle => incrementIdle,
	reset => reset,
	runCook => runCook,
	runIdle => runIdle,
	timeOutCook => timeOutCook,
	timeOutIdle => timeOutIdle
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
	WAIT FOR 80000 ps;
	enable <= '0';
	WAIT FOR 70000 ps;
	enable <= '1';
WAIT;
END PROCESS t_prcs_enable;

-- reset
t_prcs_reset: PROCESS
BEGIN
	reset <= '0';
	WAIT FOR 690000 ps;
	reset <= '1';
	WAIT FOR 40000 ps;
	reset <= '0';
WAIT;
END PROCESS t_prcs_reset;

-- runCook
t_prcs_runCook: PROCESS
BEGIN
	runCook <= '0';
WAIT;
END PROCESS t_prcs_runCook;

-- runIdle
t_prcs_runIdle: PROCESS
BEGIN
	runIdle <= '1';
WAIT;
END PROCESS t_prcs_runIdle;

-- incrementIdle
t_prcs_incrementIdle: PROCESS
BEGIN
	incrementIdle <= '0';
WAIT;
END PROCESS t_prcs_incrementIdle;

-- decrementIdle
t_prcs_decrementIdle: PROCESS
BEGIN
	decrementIdle <= '0';
WAIT;
END PROCESS t_prcs_decrementIdle;

-- incrementCook
t_prcs_incrementCook: PROCESS
BEGIN
	incrementCook <= '0';
WAIT;
END PROCESS t_prcs_incrementCook;

-- decrementCook
t_prcs_decrementCook: PROCESS
BEGIN
	decrementCook <= '0';
WAIT;
END PROCESS t_prcs_decrementCook;
END RegisterTime_arch;
