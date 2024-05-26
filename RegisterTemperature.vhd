library IEEE;
use IEEE.STD_LOGIC_1164.all;
use IEEE.NUMERIC_STD.all;

entity RegisterTemperature is
		port(clk              : in std_logic;
             reset          : in std_logic;
             enable         : in std_logic;
			    increment      : in std_logic;
             decrement      : in std_logic;
			    temperatureOut : out std_logic_vector(15 downto 0));
end RegisterTemperature;

architecture Synchronous of RegisterTemperature is
    signal s_selectedTemperature : unsigned(15 downto 0) := x"0000";
begin
	process(clk)
	begin
		if (rising_edge(clk)) then
			if (reset = '1') then
				s_selectedTemperature <= x"0000";
			elsif (enable = '1') then
				if (increment = '1' and (s_selectedTemperature + 2 <= 300)) then
						s_selectedTemperature <= s_selectedTemperature + 2;
				elsif (decrement = '1' and (s_selectedTemperature - 2 >= 0)) then
						s_selectedTemperature <= s_selectedTemperature - 2;
				else
					s_selectedTemperature <= s_selectedTemperature;
				end if;

				if (s_selectedTemperature > 300) then
					s_selectedTemperature <= x"012C";
				elsif (s_selectedTemperature < 0) then
					s_selectedTemperature <= x"0000";
				end if;
			end if;
		end if;
	end process;
    temperatureOut <= std_logic_vector(s_selectedTemperature); 
end Synchronous;
	