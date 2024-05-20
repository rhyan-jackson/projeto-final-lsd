library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity TimerN is
	port(clk		:  in std_logic;
		  reset    	:  in std_logic;
		  enable   	:  in std_logic;
		  start    	:  in std_logic;
		  timeCount :  in std_logic_vector(15 downto 0);
		  timerOut 	:  out std_logic);
end TimerN;

architecture Sequential of TimerN is
signal s_count: integer := 0;
begin
	process(clk)
	begin
		if (rising_edge(clk)) then
			if (reset = '1') then
				s_count <= 0;
			elsif (enable = '1') then
				if (s_count = 0) then
					if (start = '1') then
						s_count <= s_count + 1;
						timerOut <= '1';
					else
						timerOut <= '0';
					end if;
				else
					if (s_count = K) then
						s_count <= 0;
						timerOut <= '0';
					else
						s_count <= s_count + 1;
					end if;
				end if;
			end if;
		end if;
	end process;
end Sequential;
