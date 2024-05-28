library IEEE;
use IEEE.STD_LOGIC_1164.all;
use IEEE.NUMERIC_STD.all;

entity GeneralClock is
		port(clk            : in std_logic;
           reset          : in std_logic;
           enable         : in std_logic;
           adjust         : in std_logic;
           increment      : in std_logic;
           decrement      : in std_logic;
           actualTimeOut  : out std_logic_vector(15 downto 0));
end GeneralClock;

architecture Synchronous of GeneralClock is
    signal s_actualTime : unsigned(15 downto 0) := x"0000";
begin
	process(clk)
	begin
		if (rising_edge(clk)) then
            if (reset = '1') then
                s_actualTime <= x"0000";
            elsif (adjust = '1') then
                if (increment = '1') then
                    if (s_actualTime = x"059F") then
                        s_actualTime <= x"0000";
                    else
                        s_actualTime <= s_actualTime + 1;
                    end if;
                elsif (decrement = '1') then
                    if (s_actualTime = 0) then
                        s_actualTime <= x"059F";
                    else
                        s_actualTime <= s_actualTime - 1;
                    end if;
                end if;
            elsif (enable = '1') then
					  if (s_actualTime = x"059F") then
							s_actualTime <= x"0000";
					  else
							s_actualTime <= s_actualTime + 1;
					  end if;
            end if;
      end if;
	end process;
    actualTimeOut <= std_logic_vector(s_actualTime); 
end Synchronous;
	