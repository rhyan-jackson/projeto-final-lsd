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
-- Generated on "05/24/2024 17:18:03"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          GeneralClock
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY GeneralClock_vhd_vec_tst IS
END GeneralClock_vhd_vec_tst;
ARCHITECTURE GeneralClock_arch OF GeneralClock_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL actualTimeOut : STD_LOGIC_VECTOR(15 DOWNTO 0);
SIGNAL adjust : STD_LOGIC;
SIGNAL clk : STD_LOGIC;
SIGNAL decrement : STD_LOGIC;
SIGNAL enable : STD_LOGIC;
SIGNAL increment : STD_LOGIC;
SIGNAL reset : STD_LOGIC;
COMPONENT GeneralClock
	PORT (
	actualTimeOut : BUFFER STD_LOGIC_VECTOR(15 DOWNTO 0);
	adjust : IN STD_LOGIC;
	clk : IN STD_LOGIC;
	decrement : IN STD_LOGIC;
	enable : IN STD_LOGIC;
	increment : IN STD_LOGIC;
	reset : IN STD_LOGIC
	);
END COMPONENT;
BEGIN
	i1 : GeneralClock
	PORT MAP (
-- list connections between master ports and signals
	actualTimeOut => actualTimeOut,
	adjust => adjust,
	clk => clk,
	decrement => decrement,
	enable => enable,
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

-- adjust
t_prcs_adjust: PROCESS
BEGIN
	adjust <= '0';
	WAIT FOR 10000 ps;
	adjust <= '1';
	WAIT FOR 60000 ps;
	adjust <= '0';
WAIT;
END PROCESS t_prcs_adjust;

-- increment
t_prcs_increment: PROCESS
BEGIN
	increment <= '0';
WAIT;
END PROCESS t_prcs_increment;

-- decrement
t_prcs_decrement: PROCESS
BEGIN
	decrement <= '0';
	WAIT FOR 20000 ps;
	decrement <= '1';
	WAIT FOR 50000 ps;
	decrement <= '0';
WAIT;
END PROCESS t_prcs_decrement;
END GeneralClock_arch;
