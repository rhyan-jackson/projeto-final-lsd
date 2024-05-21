library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity Forno is
    port (
        CLOCK_50 : in std_logic;
        SW       : in std_logic_vector(2 downto 0); 
        KEY      : in std_logic_vector(3 downto 0);
        LEDG     : out std_logic_vector(4 downto 0);
        LEDR     : out std_logic_vector(10 downto 0)
        
    );
end entity Forno;

architecture main of Forno is

     

begin



    


end main ; -- main