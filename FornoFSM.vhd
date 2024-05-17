library IEEE;
use IEEE.STD_LOGIC_1164.all;

entity FornoFSM is
	port(clk		       : in std_logic;
		 reset		       : in std_logic;
		 generalStart      : in std_logic;
		 endTimer          : in std_logic;
		 leaveFinish       : in std_logic;
		 timeMaxCooking    : in std_logic_vector(15 downto 0);
		 timeIdle          : in std_logic_vector(15 downto 0);
		 cookEnable        : out std_logic;
		 timerStart        : out std_logic;
		 timeToExecute     : out std_logic_vector(15 downto 0);
		 actualState       : out std_logic_vector(1 downto 0)); -- actualState is to see externally the actual state.
end FornoFSM;

architecture Behavioral of FornoFSM is
	type TState is (START, IDLE, COOK, FINISH);
	signal s_currentState, s_nextState : TState;
	signal s_stateChanged : std_logic := '1';
begin
	sync_proc : process(clk)
	begin
		if (rising_edge(clk)) then
			if (reset = '1') then
				s_currentState <= IDLE;
				s_stateChanged <= '1';
			else
				if (s_currentState /= s_nextState) then
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
		case (s_currentState) is
		when START =>
			actualState <= "00";
			cookEnable <= '0';
			timeToExecute <= timeIdle;
			timerStart <= '0';

			if (generalStart = '1') then
				s_nextState <= IDLE;
			else
				s_nextState <= START;
			end if;
			
		when IDLE =>
			actualState <= "01";
			cookEnable <= '0';
			timeToExecute <= timeIdle;
			timerStart <= s_stateChanged;

			if (endTimer = '1') then
				s_nextState <= COOK;
			else
				s_nextState <= IDLE;
			end if;

		when COOK =>
			actualState <= "10";
			cookEnable <= '1';
			timeToExecute <= timeMaxCooking;
			timerStart <= s_stateChanged;

			if (endTimer = '1') then
				s_nextState <= FINISH;
			else
				s_nextState <= COOK;
			end if;

		when FINISH =>
			actualState <= "11";
			cookEnable <= '0';
			timerStart <= '0';
			
			if (leaveFinish = '1') then
				s_nextState <= IDLE;
			else
				s_nextState <= FINISH;
			end if;
		end case;
	end process;
end Behavioral;