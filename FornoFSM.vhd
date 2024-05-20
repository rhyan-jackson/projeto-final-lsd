library IEEE;
use IEEE.STD_LOGIC_1164.all;

entity FornoFSM is
	port(clk		          : in std_logic;
		 reset		       : in std_logic;
		 finishTime        : in std_logic;
		 runIdle           : out std_logic;
		 runCook           : out std_logic;
		 actualState       : out std_logic_vector(1 downto 0)); -- actualState is to see externally the actual state.
end FornoFSM;

architecture Behavioral of FornoFSM is
	type TState is (START, IDLE, COOK, PAUSE, FINISH);
	signal s_currentState, s_nextState : TState;
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
			
		when IDLE =>
			
		when COOK =>
			
		when PAUSE =>
		
		when FINISH =>
			
		end case;
	end process;
end Behavioral;