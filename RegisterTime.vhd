library IEEE;
use IEEE.STD_LOGIC_1164.all;
use IEEE.NUMERIC_STD.all;

entity RegisterTime is
		port(clk            : in std_logic;
           reset          : in std_logic;
           enable         : in std_logic;
           runCook        : in std_logic;
           runIdle        : in std_logic;
           incrementIdle  : in std_logic;
           decrementIdle  : in std_logic;
           incrementCook  : in std_logic;
           decrementCook  : in std_logic;
           finishTime     : out std_logic;
           timeOutIdle    : out std_logic_vector(15 downto 0);
           timeOutCook    : out std_logic_vector(15 downto 0));
end RegisterTime;

architecture Synchronous of RegisterTime is
    signal s_actualIdle : unsigned(15 downto 0) := x"000A";
    signal s_actualCook : unsigned(15 downto 0) := x"000A";
begin
	process(clk)
	begin
		if (rising_edge(clk)) then
			if (reset = '1') then
				s_actualIdle <= x"000A";
				s_actualCook <= x"000A";
         elsif (enable = '1') then
            if (s_actualIdle > 0 and s_actualIdle < 180) then 
               if (runIdle = '1') then
                  s_actualIdle <= s_actualIdle - 1;
               else
                  if (incrementIdle = '1') then
                     s_actualIdle <= s_actualIdle + 1;
                  elsif (decrementIdle = '1') then
                     s_actualIdle <= s_actualIdle - 1;
                  end if;
               end if;
            end if;

            if (s_actualCook > 0 and s_actualCook < 180) then
               if (runCook = '1') then
                  s_actualCook <= s_actualCook - 1;
               else
                  if (incrementCook = '1') then
                     s_actualCook <= s_actualCook + 1;
                  elsif (decrementCook = '1') then
                     s_actualCook <= s_actualCook - 1;
                  end if;
               end if;
            end if;
         end if;

         if (s_actualCook <= 0) then
            finishTime <= '1';
            s_actualCook <= x"000A";
         else
            finishTime <= '0';
         end if;

         if (s_actualIdle <= 0) then
            finishTime <= '1';
            s_actualIdle <= x"000A";
         else
            finishTime <= '0';
         end if;
      end if;
	end process;

   timeOutIdle <= std_logic_vector(s_actualIdle); 
   timeOutCook <= std_logic_vector(s_actualCook); 
end Synchronous;
	