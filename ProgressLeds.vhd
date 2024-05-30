library IEEE;
use IEEE.STD_LOGIC_1164.all;
use IEEE.NUMERIC_STD.all;

entity ProgressLeds is
		port(clk            : in std_logic;
           reset          : in std_logic;
           enable         : in std_logic;
           progressBar  : out std_logic_vector(7 downto 0));
end ProgressLeds;

architecture Synchronous of ProgressLeds is
   signal s_progressBar : std_logic_vector(7 downto 0);

begin
	process(clk)
	begin
		if (rising_edge(clk)) then
			if (reset = '1') then
				s_progressBar <= (others => '0');
			elsif (enable = '1') then
				if (s_progressBar = "11111111") then
					s_progressBar <= ("10000000");
				else
					s_progressBar <= '1' & s_progressBar(7 downto 1);
				end if;
			end if;
		end if;
	end process;
   progressBar <= s_progressBar;
end Synchronous ; -- Synchronous