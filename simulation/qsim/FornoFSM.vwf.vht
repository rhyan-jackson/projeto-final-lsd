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
-- Generated on "05/22/2024 13:38:28"
                                                             
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
SIGNAL actualState : STD_LOGIC_VECTOR(2 DOWNTO 0);
SIGNAL clk : STD_LOGIC;
SIGNAL finishTime : STD_LOGIC;
SIGNAL pauseOrResume : STD_LOGIC;
SIGNAL reset : STD_LOGIC;
SIGNAL resetTime : STD_LOGIC;
SIGNAL runCook : STD_LOGIC;
SIGNAL runIdle : STD_LOGIC;
COMPONENT FornoFSM
	PORT (
	actualState : OUT STD_LOGIC_VECTOR(2 DOWNTO 0);
	clk : IN STD_LOGIC;
	finishTime : IN STD_LOGIC;
	pauseOrResume : IN STD_LOGIC;
	reset : IN STD_LOGIC;
	resetTime : OUT STD_LOGIC;
	runCook : OUT STD_LOGIC;
	runIdle : OUT STD_LOGIC
	);
END COMPONENT;
BEGIN
	i1 : FornoFSM
	PORT MAP (
-- list connections between master ports and signals
	actualState => actualState,
	clk => clk,
	finishTime => finishTime,
	pauseOrResume => pauseOrResume,
	reset => reset,
	resetTime => resetTime,
	runCook => runCook,
	runIdle => runIdle
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

-- reset
t_prcs_reset: PROCESS
BEGIN
	reset <= '0';
WAIT;
END PROCESS t_prcs_reset;

-- finishTime
t_prcs_finishTime: PROCESS
BEGIN
	finishTime <= '0';
	WAIT FOR 20000 ps;
	finishTime <= '1';
	WAIT FOR 40000 ps;
	finishTime <= '0';
	WAIT FOR 150000 ps;
	finishTime <= '1';
	WAIT FOR 30000 ps;
	finishTime <= '0';
	WAIT FOR 130000 ps;
	finishTime <= '1';
	WAIT FOR 20000 ps;
	finishTime <= '0';
	WAIT FOR 80000 ps;
	finishTime <= '1';
	WAIT FOR 30000 ps;
	finishTime <= '0';
	WAIT FOR 190000 ps;
	finishTime <= '1';
	WAIT FOR 30000 ps;
	finishTime <= '0';
WAIT;
END PROCESS t_prcs_finishTime;

-- pauseOrResume
t_prcs_pauseOrResume: PROCESS
BEGIN
	pauseOrResume <= '0';
	WAIT FOR 90000 ps;
	pauseOrResume <= '1';
	WAIT FOR 30000 ps;
	pauseOrResume <= '0';
WAIT;
END PROCESS t_prcs_pauseOrResume;
END FornoFSM_arch;
