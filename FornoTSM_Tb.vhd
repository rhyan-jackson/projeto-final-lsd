library IEEE;
use IEEE.STD_LOGIC_1164.all;
entity DrinksFSM_Tb is

end DrinksFSM_Tb;

architecture Stimulus of DrinksFSM_Tb is
	signal s_clk		    : std_logic;
	signal s_reset          : std_logic;
	signal s_endTimer       : std_logic;
	signal s_leaveFinish    : std_logic;
	signal s_timeMaxCooking : std_logic_vector(15 downto 0);
	signal s_timeIdle       : std_logic_vector(15 downto 0);
	signal s_cookEnable     : std_logic;
	signal s_timerStart     : std_logic;
	signal s_timeToExecute  : std_logic_vector(15 downto 0);
	signal s_actualState    : std_logic_vector(1 downto 0);
	
begin
	uut: entity work.FornoFSM(Behavioral)
	port map(clk            => s_clk,
             reset          => s_reset,
             endTimer       => s_endTimer,
             leaveFinish    => s_leaveFinish,
             timeMaxCooking => s_timeMaxCooking,
             timeIdle       => s_timeIdle,
             cookEnable     => s_cookEnable,
             timerStart     => s_timerStart,
             timeToExecute  => s_timeToExecute,
             actualState    => s_actualState);
	
	--Process clock
	clock_control : process
	begin
		s_clk <= '0';
		wait for 50 ns;
		s_clk<='1';
		wait for 50 ns;
	end process;
	
	--Process stim
	stim_proc : process
	begin
		s_reset <= '0';
        s_endTimer
		wait for 100 ns;

		wait;
	end process;
end Stimulus;
	