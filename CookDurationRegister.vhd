library IEEE;
use IEEE.STD_LOGIC_1164.all;
use IEEE.NUMERIC_STD.all;

entity CookDurationRegister is
		port(clk              : in std_logic;
             reset            : in std_logic;
             enable           : in std_logic;
             increment        : in std_logic;
             decrement        : in std_logic;
             cookDurationOut  : out std_logic_vector(15 downto 0));
end CookDurationRegister;

architecture Synchronous of CookDurationRegister is
    signal s_cookTime : unsigned(15 downto 0) := x"0000";
begin
	process(clk)
	begin
		if (rising_edge(clk)) then
            if (reset = '1') then
                s_cookTime <= x"0000";
            elsif (enable = '1') then
                if (increment = '1') then
                    if (s_cookTime + 5 > 180) then
                        s_cookTime <= x"00B4";
                    else
                        s_cookTime <= s_cookTime + 5;
                    end if;
                elsif (decrement = '1') then
                    if (s_cookTime - 5 < 0) then
                        s_cookTime <= x"0000";
                    else
                        s_cookTime <= s_cookTime - 5;
                    end if;
                end if;
            end if;
        end if;
	end process;
    cookDurationOut <= std_logic_vector(s_cookTime); 
end Synchronous;
	