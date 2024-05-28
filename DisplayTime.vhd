library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;


entity DisplayTime is
    port ( timeIn : in std_logic_vector(15 downto 0);
           timeOutMinute : out std_logic_vector(5 downto 0);
           timeOutHour : out std_logic_vector(5 downto 0)
    );

end entity DisplayTime;

architecture Shell of DisplayTime is
    signal tempoUnsigned : unsigned(15 downto 0);
    signal tempoTotal    : integer; 
begin
    tempoUnsigned <= unsigned(timeIn);
    tempoTotal <= to_integer(tempoUnsigned);
    timeOutHour <= std_logic_vector(resize(to_unsigned((tempoTotal / 60),6),timeOutHour'length));
    timeOutMinute <= std_logic_vector(resize(to_unsigned((tempoTotal rem 60),6),timeOutMinute'length));
end Shell ; -- Shell