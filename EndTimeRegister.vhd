library IEEE;
use IEEE.STD_LOGIC_1164.all;
use IEEE.NUMERIC_STD.all;

entity EndTimeRegister is
		port(clk            : in std_logic;
           reset          : in std_logic;
           enable         : in std_logic;
			  adjust         : in std_logic;
           increment      : in std_logic;
           decrement      : in std_logic;
           cookDuration   : in std_logic_vector(15 downto 0);
           actualTime     : in std_logic_vector(15 downto 0);
           endTimeOut  : out std_logic_vector(15 downto 0));
end EndTimeRegister;

architecture Synchronous of EndTimeRegister is
    signal s_endTime : unsigned(15 downto 0) := x"0000";
	signal s_actualTime : unsigned(15 downto 0) := x"0000";
	signal s_cookDuration : unsigned(15 downto 0);
begin
    s_cookDuration <= unsigned(cookDuration);
    s_actualTime <= unsigned(actualTime);
	process(clk)
	begin
		if (rising_edge(clk)) then
            if (reset = '1') then
                s_endTime <= s_actualTime + s_cookDuration;
            elsif (enable = '1') then
					  if (increment = '1') then
							if (s_endTime + 5 > 1439) then
								 s_endTime <= x"0000";
							else
								 s_endTime <= s_endTime + 5;
							end if;
					  elsif (decrement = '1') then
							if (s_endTime - 5 < 0) then
								 s_endTime <= x"059F";
							else
								 s_endTime <= s_endTime - 5;
							end if;
                end if;

					 if (s_endTime < s_actualTime + s_cookDuration and adjust = '1') then 
                    s_endTime <= s_actualTime + s_cookDuration;
                end if;
            end if;
        end if;
	end process;
    endTimeOut <= std_logic_vector(s_endTime); 
end Synchronous;
	