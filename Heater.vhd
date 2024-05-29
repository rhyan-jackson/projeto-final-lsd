library IEEE;
use IEEE.STD_LOGIC_1164.all;
use IEEE.NUMERIC_STD.all;

-- Moore Machine

entity Heater is
	port(clk		            : in std_logic;
        reset		         : in std_logic;
		  enable             : in std_logic;
        heatOn             : in std_logic;
        averageTemperature : in std_logic_vector(15 downto 0);
        actualTemperature  : out std_logic_vector(15 downto 0));
end Heater;

architecture Behavioral of Heater is
	signal s_actualTemperature: unsigned(15 downto 0) :=  x"0014";
	signal s_averageTemperature: unsigned(15 downto 0);
begin
   s_averageTemperature <= unsigned(averageTemperature);
	sync_proc : process(clk)
	begin
		if (rising_edge(clk)) then
         if (reset = '1') then
            s_actualTemperature <= x"0014";
         elsif (enable = '1') then
            if (heatOn = '1') then
               if (s_actualTemperature < s_averageTemperature) then
                  s_actualTemperature <= s_actualTemperature + 10;
               else
                  s_actualTemperature <= s_actualTemperature - 5;
               end if;
            else
               if (s_actualTemperature <= 25) then
                  s_actualTemperature <= x"0014";
               else
						s_actualTemperature <= s_actualTemperature - 5;
            end if;
         end if;
		end if;
	end process;
   actualTemperature <= std_logic_vector(s_actualTemperature);
end Behavioral;