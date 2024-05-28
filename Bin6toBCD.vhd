library IEEE;
use IEEE.STD_LOGIC_1164.all;
use IEEE.NUMERIC_STD.all;

entity Bin6toBCD is
    port ( 
        binIn   : in std_logic_vector(5 downto 0);
        bcd1    : out std_logic_vector(3 downto 0);
        bcd0    : out std_logic_vector(3 downto 0)
    );
end Bin6toBCD;

architecture Behavioral of Bin6toBCD is
    signal b_dez, b_int, b_rem, b_in : unsigned(5 downto 0);
begin
    b_dez <=  to_unsigned(10,6);

    b_int <= unsigned(binIn) / b_dez;
    b_rem <= unsigned(binIn) rem b_dez;

    bcd1 <= std_logic_vector(resize(b_int,bcd1'length));
    bcd0 <= std_logic_vector(resize(b_rem,bcd0'length));
end Behavioral;