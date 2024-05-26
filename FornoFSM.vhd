library IEEE;
use IEEE.STD_LOGIC_1164.all;

-- Moore Machine

entity FornoFSM is
	port(clk		          : in std_logic;
		 reset		       : in std_logic;
		 start             : in std_logic;
		 actualTime        : in std_logic_vector(15 downto 0);
		 cookDuration      : in std_logic_vector(15 downto 0);
		 endTime           : in std_logic_vector(15 downto 0);
		 actualState       : out std_logic_vector(1 downto 0)); -- actualState is to see externally the actual state.
end FornoFSM;

architecture Behavioral of FornoFSM is
	type TState is (START, IDLE, COOK, FINISH);
	signal s_currentState, s_nextState, s_previousState : TState;
	signal s_cookHour, s_finishHour : unsigned(15 downto 0);
begin
	s_actualTime <= unsigned(actualTime);
	s_finishHour <= unsigned(endTime);
	s_cookHour <= (s_finishHour - unsigned(cookDuration));

	sync_proc : process(clk)
	begin
		if (rising_edge(clk)) then
			if (reset = '1') then
				s_currentState <= START;
			else
				if (s_currentState /= s_nextState) then
					s_previousState <= s_currentState;
				end if;
				s_currentState	<= s_nextState;
			end if;
		end if;
	end process;

	comb_proc : process(s_currentState)
	begin
		case (s_currentState) is
		when START =>
			actualState <= "00";

			if (start = '1') then
				s_nextState <= IDLE;
			else
				s_nextState <= START;
			end if;

		when IDLE =>
			actualState <= "01";

			if (s_actualTime >= s_cookHour) then
				s_nextState <= COOK;
			else
				s_nextState <= IDLE;
			end if;

		when COOK =>
			actualState <= "10";

			if (s_actualTime >= s_finishHour) then
				s_nextState <= FINISH;
			else
				s_nextState <= COOK;
			end if;

		when FINISH =>
			actualState <= "11";

			if (start = '1') then
				s_nextState <= IDLE;
			else
				s_nextState <= FINISH;
			end if;
		end case;
	end process;
end Behavioral;