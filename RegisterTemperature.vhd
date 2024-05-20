library IEEE;
use IEEE.STD_LOGIC_1164.all;
use IEEE.NUMERIC_STD.all;

entity RegisterTemperature is
		port(clk           : in std_logic;
             reset         : in std_logic;
             generalEnable : in std_logic;
			 increment     : in std_logic;
             decrement     : in std_logic;
             loadEnable    : in std_logic;
		     temperatureIn  : in std_logic_vector(15 downto 0);
			 temperatureOut : out std_logic_vector(15 downto 0));
end RegisterTemperature;

architecture Synchronous of RegisterTemperature is
    signal s_actualTemperature : unsigned(15 downto 0) := x"0014";
begin
	process(clk)
	begin
		if (rising_edge(clk)) then
			if (reset = '1') then
				s_actualTemperature <= x"0014";
			elsif (generalEnable = '1') then
				 if (loadEnable = '1') then
					  s_actualTemperature <= unsigned(temperatureIn);
				 elsif (increment = '1' and s_actualTemperature < 300) then
                    s_actualTemperature <= s_actualTemperature + 1;
				 elsif (decrement = '1' and s_actualTemperature > 20) then
                    s_actualTemperature <= s_actualTemperature - 1;
				 else
					s_actualTemperature <= s_actualTemperature;
				 end if;

                 if (s_actualTemperature > 300) then
                    s_actualTemperature <= x"012C";
                 elsif (s_actualTemperature < 20) then
                    s_actualTemperature <= x"0014";
                 end if;
			end if;
		end if;
	end process;
    temperatureOut <= std_logic_vector(s_actualTemperature); 
end Synchronous;
	