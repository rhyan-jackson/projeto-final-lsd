library IEEE;
use IEEE.STD_LOGIC_1164.all;

-- Moore Machine

entity FornoFSM is
	port(clk		          : in std_logic;
		 reset		       : in std_logic;
		 pauseOrResume     : in std_logic;
		 finishTime        : in std_logic;
		 runIdle           : out std_logic;
		 runCook           : out std_logic;
		 resetTime         : out std_logic;
		 actualState       : out std_logic_vector(2 downto 0)); -- actualState is to see externally the actual state.
end FornoFSM;

architecture Behavioral of FornoFSM is
	type TState is (START, IDLE, COOK, PAUSE, FINISH);
	signal s_currentState, s_nextState, s_previousState : TState;
	signal s_stateChanged : std_logic := '1';
begin
	sync_proc : process(clk)
	begin
		if (rising_edge(clk)) then
			if (reset = '1') then
				s_currentState <= START;
				s_stateChanged <= '1';
			else
				if (s_currentState /= s_nextState) then
					s_previousState <= s_currentState;
					s_stateChanged <= '1';
				else
					s_stateChanged <= '0';
				end if;
				s_currentState	<= s_nextState;
			end if;
		end if;
	end process;

	comb_proc : process(s_currentState)
	begin
		runIdle <= '0';
		runCook <= '0';
		resetTime <= '0';

		case (s_currentState) is
		when START =>
			actualState <= "000";
			resetTime <= '1';

			if (pauseOrResume = '1') then
				s_nextState <= IDLE;
			else
				s_nextState <= START;
			end if;

		when IDLE =>
			actualState <= "001";
			runIdle <= '1';

			if (pauseOrResume = '1') then
				s_nextState <= PAUSE;
			elsif (finishTime = '1') then
				s_nextState <= FINISH;
				resetTime <= '1';
			else
				s_nextState <= IDLE;
			end if;

		when COOK =>
			actualState <= "010";
			runCook <= '1';

			if (pauseOrResume = '1') then
				s_nextState <= PAUSE;
			elsif (finishTime = '1') then
				s_nextState <= FINISH;
				resetTime <= '1';
			else
				s_nextState <= IDLE;
			end if;

		when PAUSE =>
			actualState <= "011";

			if (pauseOrResume = '1') then
				s_nextState <= s_previousState;
			else
				s_nextState <= PAUSE;
			end if;

		when FINISH =>
			actualState <= "100";
			resetTime <= '1';

			if (pauseOrResume = '1') then
				s_nextState <= IDLE;
			else
				s_nextState <= FINISH;
			end if;
			
		end case;
	end process;
end Behavioral;