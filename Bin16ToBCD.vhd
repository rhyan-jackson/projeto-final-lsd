library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;


entity Bin16ToBCD is
    port (
        binIn : in std_logic_vector(15 downto 0);
        bcd2  : out std_logic_vector(3 downto 0);
        bcd1  : out std_logic_vector(3 downto 0);
        bcd0  : out std_logic_vector(3 downto 0)
        
    );
end entity Bin16ToBCD;


architecture Behavioral of Bin16ToBCD is

    signal b_dez, b_int1, b_int, b_rem : unsigned(3 downto 0);

begin

    b_dez <=  to_unsigned(10,4);

    

    b_int1 <= (unsigned(binIn) / b_dez) / b_dez ;
    b_int <= (unsigned(binIn) / b_dez) rem b_dez ;
    b_rem <= unsigned(binIn) rem b_dez;



    bcd2 <= std_logic_vector(b_int1);
    bcd1 <= std_logic_vector(b_int);
    bcd0 <= std_logic_vector(b_rem);
end Behavioral ; -- Behavioral