library IEEE;
use IEEE.STD_LOGIC_1164.all;
use IEEE.NUMERIC_STD.all;



entity Bin6toBCD is
    port ( 
        enable  : in std_logic;
        binIn   : in std_logic_vector(5 downto 0);
        bcd1    : out std_logic_vector(3 downto 0);
        bcd0    : out std_logic_vector(3 downto 0)

        
    );
end Bin6toBCD;


architecture Behavioral of Bin6toBCD is

    signal b_dez, b_int, b_rem, b_in : unsigned(3 downto 0);
    

begin
    process(binIn, enable)

    begin
        if (enable = '1') then
            b_dez <=  to_unsigned(10,4);
            b_int <= unsigned(b_in) / b_dez;
            b_rem <= unsigned(b_in) rem b_dez;




            bcd1 <= std_logic_vector(b_int);
            bcd0 <= std_logic_vector(b_rem);
        else
            bcd0 <= (others => '0');
            bcd1 <= (others => '0');
        end if;
    end process;

    

    


end Behavioral ; -- Behavioral