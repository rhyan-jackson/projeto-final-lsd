library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

-- Mealy Machine

entity SinglePulseGenerator is
   port (clk       : in std_logic;
         reset     : in std_logic;
         longHigh  : in std_logic;
         singleOut : out std_logic
   );
end SinglePulseGenerator;

architecture Synchronous of SinglePulseGenerator is
   type TState is (S1, S2);
	signal s_currentState, s_nextState : TState;
begin
   sync_proc : process(clk)
	begin
		if (rising_edge(clk)) then
			if (reset = '1') then
				s_currentState <= S1;
			else
				s_currentState	<= s_nextState;
			end if;
		end if;
	end process;

   comb_proc : process(s_currentState)
	begin
		singleOut <= '0';
		case (s_currentState) is
		when S1 =>
         if (longHigh <= '1') then
            s_nextState <= S2;
            singleOut <= '1';
         else
            s_nextState <= S1;
         end if;
		when S2 =>
         if (longHigh <= '0') then
            s_nextState <= S1;
         else
            s_nextState <= S2;
         end if;
		end case;
	end process;

end Synchronous;

