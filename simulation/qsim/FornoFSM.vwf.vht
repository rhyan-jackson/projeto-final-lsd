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
-- Generated on "05/18/2024 21:34:08"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          FornoFSM
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY FornoFSM_vhd_vec_tst IS
END FornoFSM_vhd_vec_tst;
ARCHITECTURE FornoFSM_arch OF FornoFSM_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL actualState : STD_LOGIC_VECTOR(1 DOWNTO 0);
SIGNAL clk : STD_LOGIC;
SIGNAL cookEnable : STD_LOGIC;
SIGNAL endTimer : STD_LOGIC;
SIGNAL generalStart : STD_LOGIC;
SIGNAL leaveFinish : STD_LOGIC;
SIGNAL reset : STD_LOGIC;
SIGNAL timeIdle : STD_LOGIC_VECTOR(15 DOWNTO 0);
SIGNAL timeMaxCooking : STD_LOGIC_VECTOR(15 DOWNTO 0);
SIGNAL timerStart : STD_LOGIC;
SIGNAL timeToExecute : STD_LOGIC_VECTOR(15 DOWNTO 0);
COMPONENT FornoFSM
	PORT (
	actualState : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
	clk : IN STD_LOGIC;
	cookEnable : OUT STD_LOGIC;
	endTimer : IN STD_LOGIC;
	generalStart : IN STD_LOGIC;
	leaveFinish : IN STD_LOGIC;
	reset : IN STD_LOGIC;
	timeIdle : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
	timeMaxCooking : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
	timerStart : OUT STD_LOGIC;
	timeToExecute : OUT STD_LOGIC_VECTOR(15 DOWNTO 0)
	);
END COMPONENT;
BEGIN
	i1 : FornoFSM
	PORT MAP (
-- list connections between master ports and signals
	actualState => actualState,
	clk => clk,
	cookEnable => cookEnable,
	endTimer => endTimer,
	generalStart => generalStart,
	leaveFinish => leaveFinish,
	reset => reset,
	timeIdle => timeIdle,
	timeMaxCooking => timeMaxCooking,
	timerStart => timerStart,
	timeToExecute => timeToExecute
	);

-- clk
t_prcs_clk: PROCESS
BEGIN
LOOP
	clk <= '0';
	WAIT FOR 25000 ps;
	clk <= '1';
	WAIT FOR 25000 ps;
	IF (NOW >= 1000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_clk;

-- generalStart
t_prcs_generalStart: PROCESS
BEGIN
	generalStart <= '0';
	WAIT FOR 260000 ps;
	generalStart <= '1';
	WAIT FOR 30000 ps;
	generalStart <= '0';
WAIT;
END PROCESS t_prcs_generalStart;

-- endTimer
t_prcs_endTimer: PROCESS
BEGIN
	endTimer <= '0';
	WAIT FOR 160000 ps;
	endTimer <= '1';
	WAIT FOR 30000 ps;
	endTimer <= '0';
	WAIT FOR 120000 ps;
	endTimer <= '1';
	WAIT FOR 30000 ps;
	endTimer <= '0';
	WAIT FOR 170000 ps;
	endTimer <= '1';
	WAIT FOR 30000 ps;
	endTimer <= '0';
	WAIT FOR 120000 ps;
	endTimer <= '1';
	WAIT FOR 30000 ps;
	endTimer <= '0';
WAIT;
END PROCESS t_prcs_endTimer;

-- leaveFinish
t_prcs_leaveFinish: PROCESS
BEGIN
	leaveFinish <= '0';
WAIT;
END PROCESS t_prcs_leaveFinish;

-- reset
t_prcs_reset: PROCESS
BEGIN
	reset <= '0';
WAIT;
END PROCESS t_prcs_reset;
-- timeIdle[15]
t_prcs_timeIdle_15: PROCESS
BEGIN
	timeIdle(15) <= '0';
WAIT;
END PROCESS t_prcs_timeIdle_15;
-- timeIdle[14]
t_prcs_timeIdle_14: PROCESS
BEGIN
	timeIdle(14) <= '0';
WAIT;
END PROCESS t_prcs_timeIdle_14;
-- timeIdle[13]
t_prcs_timeIdle_13: PROCESS
BEGIN
	timeIdle(13) <= '0';
WAIT;
END PROCESS t_prcs_timeIdle_13;
-- timeIdle[12]
t_prcs_timeIdle_12: PROCESS
BEGIN
	timeIdle(12) <= '0';
WAIT;
END PROCESS t_prcs_timeIdle_12;
-- timeIdle[11]
t_prcs_timeIdle_11: PROCESS
BEGIN
	timeIdle(11) <= '0';
WAIT;
END PROCESS t_prcs_timeIdle_11;
-- timeIdle[10]
t_prcs_timeIdle_10: PROCESS
BEGIN
	timeIdle(10) <= '0';
WAIT;
END PROCESS t_prcs_timeIdle_10;
-- timeIdle[9]
t_prcs_timeIdle_9: PROCESS
BEGIN
	timeIdle(9) <= '0';
WAIT;
END PROCESS t_prcs_timeIdle_9;
-- timeIdle[8]
t_prcs_timeIdle_8: PROCESS
BEGIN
	timeIdle(8) <= '0';
WAIT;
END PROCESS t_prcs_timeIdle_8;
-- timeIdle[7]
t_prcs_timeIdle_7: PROCESS
BEGIN
	timeIdle(7) <= '1';
WAIT;
END PROCESS t_prcs_timeIdle_7;
-- timeIdle[6]
t_prcs_timeIdle_6: PROCESS
BEGIN
	timeIdle(6) <= '0';
WAIT;
END PROCESS t_prcs_timeIdle_6;
-- timeIdle[5]
t_prcs_timeIdle_5: PROCESS
BEGIN
	timeIdle(5) <= '1';
WAIT;
END PROCESS t_prcs_timeIdle_5;
-- timeIdle[4]
t_prcs_timeIdle_4: PROCESS
BEGIN
	timeIdle(4) <= '1';
WAIT;
END PROCESS t_prcs_timeIdle_4;
-- timeIdle[3]
t_prcs_timeIdle_3: PROCESS
BEGIN
	timeIdle(3) <= '0';
WAIT;
END PROCESS t_prcs_timeIdle_3;
-- timeIdle[2]
t_prcs_timeIdle_2: PROCESS
BEGIN
	timeIdle(2) <= '1';
WAIT;
END PROCESS t_prcs_timeIdle_2;
-- timeIdle[1]
t_prcs_timeIdle_1: PROCESS
BEGIN
	timeIdle(1) <= '0';
WAIT;
END PROCESS t_prcs_timeIdle_1;
-- timeIdle[0]
t_prcs_timeIdle_0: PROCESS
BEGIN
	timeIdle(0) <= '0';
WAIT;
END PROCESS t_prcs_timeIdle_0;
-- timeMaxCooking[15]
t_prcs_timeMaxCooking_15: PROCESS
BEGIN
	timeMaxCooking(15) <= '0';
WAIT;
END PROCESS t_prcs_timeMaxCooking_15;
-- timeMaxCooking[14]
t_prcs_timeMaxCooking_14: PROCESS
BEGIN
	timeMaxCooking(14) <= '0';
WAIT;
END PROCESS t_prcs_timeMaxCooking_14;
-- timeMaxCooking[13]
t_prcs_timeMaxCooking_13: PROCESS
BEGIN
	timeMaxCooking(13) <= '0';
WAIT;
END PROCESS t_prcs_timeMaxCooking_13;
-- timeMaxCooking[12]
t_prcs_timeMaxCooking_12: PROCESS
BEGIN
	timeMaxCooking(12) <= '0';
WAIT;
END PROCESS t_prcs_timeMaxCooking_12;
-- timeMaxCooking[11]
t_prcs_timeMaxCooking_11: PROCESS
BEGIN
	timeMaxCooking(11) <= '0';
WAIT;
END PROCESS t_prcs_timeMaxCooking_11;
-- timeMaxCooking[10]
t_prcs_timeMaxCooking_10: PROCESS
BEGIN
	timeMaxCooking(10) <= '0';
WAIT;
END PROCESS t_prcs_timeMaxCooking_10;
-- timeMaxCooking[9]
t_prcs_timeMaxCooking_9: PROCESS
BEGIN
	timeMaxCooking(9) <= '0';
WAIT;
END PROCESS t_prcs_timeMaxCooking_9;
-- timeMaxCooking[8]
t_prcs_timeMaxCooking_8: PROCESS
BEGIN
	timeMaxCooking(8) <= '0';
WAIT;
END PROCESS t_prcs_timeMaxCooking_8;
-- timeMaxCooking[7]
t_prcs_timeMaxCooking_7: PROCESS
BEGIN
	timeMaxCooking(7) <= '0';
WAIT;
END PROCESS t_prcs_timeMaxCooking_7;
-- timeMaxCooking[6]
t_prcs_timeMaxCooking_6: PROCESS
BEGIN
	timeMaxCooking(6) <= '0';
WAIT;
END PROCESS t_prcs_timeMaxCooking_6;
-- timeMaxCooking[5]
t_prcs_timeMaxCooking_5: PROCESS
BEGIN
	timeMaxCooking(5) <= '0';
WAIT;
END PROCESS t_prcs_timeMaxCooking_5;
-- timeMaxCooking[4]
t_prcs_timeMaxCooking_4: PROCESS
BEGIN
	timeMaxCooking(4) <= '1';
WAIT;
END PROCESS t_prcs_timeMaxCooking_4;
-- timeMaxCooking[3]
t_prcs_timeMaxCooking_3: PROCESS
BEGIN
	timeMaxCooking(3) <= '1';
WAIT;
END PROCESS t_prcs_timeMaxCooking_3;
-- timeMaxCooking[2]
t_prcs_timeMaxCooking_2: PROCESS
BEGIN
	timeMaxCooking(2) <= '1';
WAIT;
END PROCESS t_prcs_timeMaxCooking_2;
-- timeMaxCooking[1]
t_prcs_timeMaxCooking_1: PROCESS
BEGIN
	timeMaxCooking(1) <= '1';
WAIT;
END PROCESS t_prcs_timeMaxCooking_1;
-- timeMaxCooking[0]
t_prcs_timeMaxCooking_0: PROCESS
BEGIN
	timeMaxCooking(0) <= '0';
WAIT;
END PROCESS t_prcs_timeMaxCooking_0;
END FornoFSM_arch;
