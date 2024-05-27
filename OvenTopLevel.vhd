entity OvenTopLevel is
   port (
      CLOCK_50 : in std_logic;
      SW       : in std_logic_vector(17 downto 0);
      KEY      : in std_logic_vector(3 downto 0);
      HEX0     : in std_logic_vector(6 downto 0);
      HEX1     : in std_logic_vector(6 downto 0);
      HEX2     : in std_logic_vector(6 downto 0);
      HEX3     : in std_logic_vector(6 downto 0);
      HEX4     : in std_logic_vector(6 downto 0);
      HEX5     : in std_logic_vector(6 downto 0);
      HEX6     : in std_logic_vector(6 downto 0);
   );
end entity OvenTopLevel;

architecture Structural of OvenTopLevel is

   -- input signals
   signal sync_sw : std_logic_vector(17 downto 0);
   /*
   ABOUT sync_sw:
      0,1: select program
      17  : general reset
   */
   signal key0 : std_logic;
   signal key1 : std_logic;
   signal key2 : std_logic;
   signal key3 : std_logic;

   -- pulses, blinks and temporization signals
   signal s_pulse_1hz : std_logic;

   -- logic project signals
   signal s_program_selected : std_logic_vector(3 downto 0);

begin
   -- sync inputs 
   process(CLOCK_50)
   begin
      if (rising_edge(CLOCK_50)) then
         sync_sw <= SW;
   end process;

   -- debouncers for keys
   debouncer_key0 : work.DebounceUnit(Behavioral)
			generic map(kHzClkFreq		    => 50000,
							mSecMinInWidth	=> 100,
							inPolarity		=> '0',
							outPolarity		=> '1')
			port 	map(refClk		        => CLOCK_50,
							dirtyIn			=> KEY(0),
							pulsedOut		=> key0);
   
   debouncer_key1 : work.DebounceUnit(Behavioral)
			generic map(kHzClkFreq		    => 50000,
							mSecMinInWidth	=> 100,
							inPolarity		=> '0',
							outPolarity		=> '1')
			port 	map(refClk		        => CLOCK_50,
							dirtyIn			=> KEY(1),
							pulsedOut		=> key1);
   debouncer_key2 : work.DebounceUnit(Behavioral)
			generic map(kHzClkFreq		    => 50000,
							mSecMinInWidth	=> 100,
							inPolarity		=> '0',
							outPolarity		=> '1')
			port 	map(refClk		        => CLOCK_50,
							dirtyIn			=> KEY(2),
							pulsedOut		=> key2);
   
   debouncer_key3 : work.DebounceUnit(Behavioral)
			generic map(kHzClkFreq		    => 50000,
							mSecMinInWidth	=> 100,
							inPolarity		=> '0',
							outPolarity		=> '1')
			port 	map(refClk		        => CLOCK_50,
							dirtyIn			=> KEY(3),
							pulsedOut		=> key3);
   
   -- selection with sw's process

   process(sync_sw)
   begin
      if (sync_sw(0) = '0' and sync_sw(1) = '0') then
         s_programSelected <= "0001";
      elsif (sync_sw(0) = '0' and sync_sw(1) = '0') then
         s_programSelected <= "0010";
      elsif (sync_sw(0) = '0' and sync_sw(1) = '0') then
         s_programSelected <= "0100";
      else
         s_programSelected <= "1000";
   end process;
   
   -- pulse's and blink's

   pulse_1hz : work.PulseGenerator(Behavioral)
         generic map(MAX => 50_000_000)
         port  map(clk    => CLOCK_50,
                   reset  => sync_sw(17),
                   pulse  => s_pulse_1hz);

   -- mapping the registers
   general_clock : work.GeneralClock(Synchronous)
			port 	map(clk		        => CLOCK_50,
						 reset  			  => sync_sw(17),
						 enable  		  => s_pulse_1hz,
						 adjust  		  => KEY(3), -- TODO: put here the adjust variable (out of FSM Start state) 
						 increment  	  => KEY(3),
						 decrement  	  => KEY(3),
						 actualTimeOut   => KEY(3));
end architecture Structural;