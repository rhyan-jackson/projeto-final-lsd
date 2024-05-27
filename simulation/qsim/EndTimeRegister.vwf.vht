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
-- Generated on "05/26/2024 18:12:23"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          EndTimeRegister
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY EndTimeRegister_vhd_vec_tst IS
END EndTimeRegister_vhd_vec_tst;
ARCHITECTURE EndTimeRegister_arch OF EndTimeRegister_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL actualTime : STD_LOGIC_VECTOR(15 DOWNTO 0);
SIGNAL clk : STD_LOGIC;
SIGNAL decrement : STD_LOGIC;
SIGNAL enable : STD_LOGIC;
SIGNAL endTimeOut : STD_LOGIC_VECTOR(15 DOWNTO 0);
SIGNAL increment : STD_LOGIC;
SIGNAL reset : STD_LOGIC;
COMPONENT EndTimeRegister
	PORT (
	actualTime : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
	clk : IN STD_LOGIC;
	decrement : IN STD_LOGIC;
	enable : IN STD_LOGIC;
	endTimeOut : BUFFER STD_LOGIC_VECTOR(15 DOWNTO 0);
	increment : IN STD_LOGIC;
	reset : IN STD_LOGIC
	);
END COMPONENT;
BEGIN
	i1 : EndTimeRegister
	PORT MAP (
-- list connections between master ports and signals
	actualTime => actualTime,
	clk => clk,
	decrement => decrement,
	enable => enable,
	endTimeOut => endTimeOut,
	increment => increment,
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
-- actualTime[15]
t_prcs_actualTime_15: PROCESS
BEGIN
	actualTime(15) <= '0';
WAIT;
END PROCESS t_prcs_actualTime_15;
-- actualTime[14]
t_prcs_actualTime_14: PROCESS
BEGIN
	actualTime(14) <= '0';
WAIT;
END PROCESS t_prcs_actualTime_14;
-- actualTime[13]
t_prcs_actualTime_13: PROCESS
BEGIN
	actualTime(13) <= '0';
WAIT;
END PROCESS t_prcs_actualTime_13;
-- actualTime[12]
t_prcs_actualTime_12: PROCESS
BEGIN
	actualTime(12) <= '0';
WAIT;
END PROCESS t_prcs_actualTime_12;
-- actualTime[11]
t_prcs_actualTime_11: PROCESS
BEGIN
	actualTime(11) <= '0';
WAIT;
END PROCESS t_prcs_actualTime_11;
-- actualTime[10]
t_prcs_actualTime_10: PROCESS
BEGIN
	actualTime(10) <= '0';
WAIT;
END PROCESS t_prcs_actualTime_10;
-- actualTime[9]
t_prcs_actualTime_9: PROCESS
BEGIN
	actualTime(9) <= '0';
WAIT;
END PROCESS t_prcs_actualTime_9;
-- actualTime[8]
t_prcs_actualTime_8: PROCESS
BEGIN
	actualTime(8) <= '0';
WAIT;
END PROCESS t_prcs_actualTime_8;
-- actualTime[7]
t_prcs_actualTime_7: PROCESS
BEGIN
	actualTime(7) <= '0';
WAIT;
END PROCESS t_prcs_actualTime_7;
-- actualTime[6]
t_prcs_actualTime_6: PROCESS
BEGIN
	actualTime(6) <= '0';
WAIT;
END PROCESS t_prcs_actualTime_6;
-- actualTime[5]
t_prcs_actualTime_5: PROCESS
BEGIN
	actualTime(5) <= '1';
WAIT;
END PROCESS t_prcs_actualTime_5;
-- actualTime[4]
t_prcs_actualTime_4: PROCESS
BEGIN
	actualTime(4) <= '1';
WAIT;
END PROCESS t_prcs_actualTime_4;
-- actualTime[3]
t_prcs_actualTime_3: PROCESS
BEGIN
	actualTime(3) <= '0';
WAIT;
END PROCESS t_prcs_actualTime_3;
-- actualTime[2]
t_prcs_actualTime_2: PROCESS
BEGIN
	actualTime(2) <= '0';
WAIT;
END PROCESS t_prcs_actualTime_2;
-- actualTime[1]
t_prcs_actualTime_1: PROCESS
BEGIN
	actualTime(1) <= '1';
WAIT;
END PROCESS t_prcs_actualTime_1;
-- actualTime[0]
t_prcs_actualTime_0: PROCESS
BEGIN
	actualTime(0) <= '0';
WAIT;
END PROCESS t_prcs_actualTime_0;
END EndTimeRegister_arch;
