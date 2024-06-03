library IEEE;
use IEEE.STD_LOGIC_1164.all;
use IEEE.NUMERIC_STD.all;

entity OvenTopLevel is
   port (
      CLOCK_50 : in std_logic;
      SW       : in std_logic_vector(17 downto 0);
      KEY      : in std_logic_vector(3 downto 0);
      HEX0     : out std_logic_vector(6 downto 0);
      HEX1     : out std_logic_vector(6 downto 0);
      HEX2     : out std_logic_vector(6 downto 0);
      HEX3     : out std_logic_vector(6 downto 0);
      HEX4     : out std_logic_vector(6 downto 0);
      HEX5     : out std_logic_vector(6 downto 0);
      HEX6     : out std_logic_vector(6 downto 0);
		HEX7     : out std_logic_vector(6 downto 0);
      LEDR     : out std_logic_vector(2 downto 0);
		LEDG     : out std_logic_vector(7 downto 0)
   );
end entity OvenTopLevel;

architecture Structural of OvenTopLevel is

   -- input signals
   signal sync_sw : std_logic_vector(17 downto 0);
   --ABOUT sync_sw:
      --0,1: select program
      --17  : general reset
   signal s_key0 : std_logic;
   signal s_key1 : std_logic;
   signal s_key2 : std_logic;
   signal s_key3 : std_logic;

   -- output variables

   signal s_hex7_bcd : std_logic_vector(3 downto 0);
   signal s_hex6_bcd : std_logic_vector(3 downto 0);
   signal s_hex5_bcd : std_logic_vector(3 downto 0);
   signal s_hex4_bcd : std_logic_vector(3 downto 0);
   signal s_hex3_bcd : std_logic_vector(3 downto 0);
   signal s_hex2_bcd : std_logic_vector(3 downto 0);
   signal s_hex1_bcd : std_logic_vector(3 downto 0);
   signal s_hex0_bcd : std_logic_vector(3 downto 0);

   -- pulses, blinks and temporization signals
   signal s_pulse_1hz : std_logic;
   signal s_pulse_4hz : std_logic;
	signal s_blink_1hz : std_logic;
	
   -- logic project signals
   signal s_programSelected : std_logic_vector(3 downto 0);
   signal s_actualTime : std_logic_vector(15 downto 0);
   signal s_endTime : std_logic_vector(15 downto 0);
   signal s_cookTime : std_logic_vector(15 downto 0);
   signal s_averageTemperature : std_logic_vector(15 downto 0);
   signal s_actualTemperature : std_logic_vector(15 downto 0);
   signal s_adjustGeneralClock : std_logic;
   signal s_adjustEndTimeRegister : std_logic;
   signal s_actualFSMState : std_logic_vector(2 downto 0);
	signal s_heatOn : std_logic;
   signal s_resetBlocks : std_logic;
   signal s_en_blinks_finish : std_logic;
   signal s_progressBar : std_logic_vector(7 downto 0);
   signal s_ledg_program : std_logic_vector(7 downto 0);

   -- signals to treat with bcd's, 7seg, minutes and hours.
   signal s_generalClock_hour_bin : std_logic_vector(5 downto 0);
   signal s_generalClock_minute_bin : std_logic_vector(5 downto 0);

   signal s_generalClock_minute_bcd1 : std_logic_vector(3 downto 0);
   signal s_generalClock_minute_bcd0 : std_logic_vector(3 downto 0);
   signal s_generalClock_hour_bcd1 : std_logic_vector(3 downto 0);
   signal s_generalClock_hour_bcd0 : std_logic_vector(3 downto 0);

   signal s_endTime_hour_bin : std_logic_vector(5 downto 0);
   signal s_endTime_minute_bin : std_logic_vector(5 downto 0);

   signal s_endTime_minute_bcd1 : std_logic_vector(3 downto 0);
   signal s_endTime_minute_bcd0 : std_logic_vector(3 downto 0);
   signal s_endTime_hour_bcd1 : std_logic_vector(3 downto 0);
   signal s_endTime_hour_bcd0 : std_logic_vector(3 downto 0);

   signal s_cookTime_hour_bin : std_logic_vector(5 downto 0);
   signal s_cookTime_minute_bin : std_logic_vector(5 downto 0);

   signal s_cookTime_minute_bcd1 : std_logic_vector(3 downto 0);
   signal s_cookTime_minute_bcd0 : std_logic_vector(3 downto 0);
   signal s_cookTime_hour_bcd1 : std_logic_vector(3 downto 0);
   signal s_cookTime_hour_bcd0 : std_logic_vector(3 downto 0);

   signal s_actualTemp_bcd2 : std_logic_vector(3 downto 0);
   signal s_actualTemp_bcd1 : std_logic_vector(3 downto 0);
   signal s_actualTemp_bcd0 : std_logic_vector(3 downto 0);

   signal s_averageTemp_bcd2 : std_logic_vector(3 downto 0);
   signal s_averageTemp_bcd1 : std_logic_vector(3 downto 0);
   signal s_averageTemp_bcd0 : std_logic_vector(3 downto 0);



   -- 7seg enable's

   signal s_enable_7seg : std_logic_vector(7 downto 0);

begin
   -- sync inputs 
   process(CLOCK_50)
   begin
      if (rising_edge(CLOCK_50)) then
         sync_sw <= SW;
		end if;
   end process;

   -- debouncers for keys
   debouncer_key0 : work.DebounceUnit(Behavioral)
			generic map(kHzClkFreq		    => 50000,
							mSecMinInWidth	=> 100,
							inPolarity		=> '0',
							outPolarity		=> '1')
			port 	map(refClk		        => CLOCK_50,
							dirtyIn			=> KEY(0),
							pulsedOut		=> s_key0);
   
   debouncer_key1 : work.DebounceUnit(Behavioral)
			generic map(kHzClkFreq		    => 50000,
							mSecMinInWidth	=> 100,
							inPolarity		=> '0',
							outPolarity		=> '1')
			port 	map(refClk		        => CLOCK_50,
							dirtyIn			=> KEY(1),
							pulsedOut		=> s_key1);
   debouncer_key2 : work.DebounceUnit(Behavioral)
			generic map(kHzClkFreq		    => 50000,
							mSecMinInWidth	=> 100,
							inPolarity		=> '0',
							outPolarity		=> '1')
			port 	map(refClk		        => CLOCK_50,
							dirtyIn			=> KEY(2),
							pulsedOut		=> s_key2);
   
   debouncer_key3 : work.DebounceUnit(Behavioral)
			generic map(kHzClkFreq		    => 50000,
							mSecMinInWidth	=> 100,
							inPolarity		=> '0',
							outPolarity		=> '1')
			port 	map(refClk		        => CLOCK_50,
							dirtyIn			=> KEY(3),
							pulsedOut		=> s_key3);
   
   -- selection with sw's process & process to select what will be displayed

   process(sync_sw, s_actualFSMState)
   begin
      if (s_actualFSMState = "001") then
         s_programSelected <= "0001";
         s_enable_7seg <= "01110111";
         -- ACTUAL TEMP < > AVERAGE TEMP 

         s_hex6_bcd <= s_actualTemp_bcd2;
         s_hex5_bcd <= s_actualTemp_bcd1;
         s_hex4_bcd <= s_actualTemp_bcd0;

         s_hex2_bcd <= s_averageTemp_bcd2;
         s_hex1_bcd <= s_averageTemp_bcd1;
         s_hex0_bcd <= s_averageTemp_bcd0;


      else
         if (sync_sw(1) = '0' and sync_sw(0) = '0') then -- temperatura
            s_programSelected <= "0001";
            s_enable_7seg <= "01110111";
            -- ACTUAL TEMP < > AVERAGE TEMP 

            s_hex6_bcd <= s_actualTemp_bcd2;
            s_hex5_bcd <= s_actualTemp_bcd1;
            s_hex4_bcd <= s_actualTemp_bcd0;

            s_hex2_bcd <= s_averageTemp_bcd2;
            s_hex1_bcd <= s_averageTemp_bcd1;
            s_hex0_bcd <= s_averageTemp_bcd0;


         elsif (sync_sw(1) = '0' and sync_sw(0) = '1') then -- tempo cozedura

            -- COOK TIME <

            s_programSelected <= "0010";
            s_enable_7seg <= "11110000";

            s_hex7_bcd <= s_cookTime_hour_bcd1;
            s_hex6_bcd <= s_cookTime_hour_bcd0;
            s_hex5_bcd <= s_cookTime_minute_bcd1;
            s_hex4_bcd <= s_cookTime_minute_bcd0;


         elsif (sync_sw(1) = '1' and sync_sw(0) = '0') then --hora terminal

            -- GENERAL CLOCK < > END TIME

            s_programSelected <= "0100";
            s_enable_7seg <= "11111111";

            s_hex7_bcd <= s_generalClock_hour_bcd1;
            s_hex6_bcd <= s_generalClock_hour_bcd0;
            s_hex5_bcd <= s_generalClock_minute_bcd1;
            s_hex4_bcd <= s_generalClock_minute_bcd0;

            s_hex3_bcd <= s_endTime_hour_bcd1;
            s_hex2_bcd <= s_endTime_hour_bcd0;
            s_hex1_bcd <= s_endTime_minute_bcd1;
            s_hex0_bcd <= s_endTime_minute_bcd0;

         else -- relógio

            -- GEN. CLOCK <
            s_programSelected <= "1000";
            s_enable_7seg <= "11110000";

            s_hex7_bcd <= s_generalClock_hour_bcd1;
            s_hex6_bcd <= s_generalClock_hour_bcd0;
            s_hex5_bcd <= s_generalClock_minute_bcd1;
            s_hex4_bcd <= s_generalClock_minute_bcd0;
         end if;
		end if;
   end process;
   
   -- pulse's and blink's

   pulse_1hz : work.PulseGenerator(Behavioral)
         generic map(MAX => 50_000_000)
         port  map(clk    => CLOCK_50,
                   reset  => sync_sw(17),
                   pulse  => s_pulse_1hz);

   pulse_4hz : work.PulseGenerator(Behavioral)
         generic map(MAX => 12_500_000)
         port  map(clk    => CLOCK_50,
                   reset  => sync_sw(17),
                   pulse  => s_pulse_4hz);
   
   blink_1hz : work.BlinkGenerator(Behavioral)
         generic map(NUMBER_STEPS => 25_000_000)
         port  map(clk    => CLOCK_50,
                   reset  => sync_sw(17),
                   blink  => s_blink_1hz);
						 
   -- mapping the registers
   general_clock : work.GeneralClock(Synchronous)
			port 	map(clk		        => CLOCK_50,
						 reset  			  => sync_sw(17),
						 enable  		  => s_pulse_1hz,
						 adjust  		  => s_adjustGeneralClock,
						 increment  	  => s_key1 and s_programSelected(3),
						 decrement  	  => s_key2 and s_programSelected(3),
						 actualTimeOut   => s_actualTime);

   end_time_register : work.EndTimeRegister(Synchronous)
			port 	map(clk		        => CLOCK_50,
						 reset  			  => sync_sw(17) or s_resetBlocks,
						 enable  		  => '1',
                   adjust          => s_adjustEndTimeRegister,
						 increment  	  => s_key1 and s_programSelected(2),
						 decrement  	  => s_key2 and s_programSelected(2),
                   cookDuration    => s_cookTime,
                   actualTime      => s_actualTime,
						 endTimeOut      => s_endTime);
   
   cook_duration_register : work.CookDurationRegister(Synchronous)
			port 	map(clk		        => CLOCK_50,
						 reset  			  => sync_sw(17) or s_resetBlocks,
						 enable  		  => '1',
						 increment  	  => s_key1 and s_programSelected(1),
						 decrement  	  => s_key2 and s_programSelected(1),
						 cookDurationOut     => s_cookTime);
   
   register_temperature : work.RegisterTemperature(Synchronous)
			port 	map(clk		        => CLOCK_50,
						 reset  			  => sync_sw(17) or s_resetBlocks,
						 enable  		  => '1',
						 increment  	  => s_key1 and s_programSelected(0),
						 decrement  	  => s_key2 and s_programSelected(0),
						 temperatureOut  => s_averageTemperature);
   
   heater : work.Heater(Behavioral)
      port 	map(clk		           => CLOCK_50,
                reset  			     => sync_sw(17),
                enable  		     => s_pulse_1hz,
                heatOn             => s_heatOn,
                averageTemperature => s_averageTemperature,
                actualTemperature  => s_actualTemperature);

   oven_fsm : work.OvenFSM(Behavioral)
      port 	map(clk		               => CLOCK_50,
                reset  			         => sync_sw(17),
                startIn  		         => s_key3 and not sync_sw(1) and not sync_sw(0),
					 switchMode             => s_key0,
                adjustGeneralClock     => s_adjustGeneralClock,
                adjustEndTimeRegister  => s_adjustEndTimeRegister,
                actualTime  	         => s_actualTime,
                cookDuration  	      => s_cookTime,
                endTime  	            => s_endTime,
                resetBlocks            => s_resetBlocks,
                heatOn                 => s_heatOn,
                actualState            => s_actualFSMState);
					 
   -- display and hour/minute manipulation 

   -- GENERAL WATCH
   display_time_general_clock : work.DisplayTime(Shell)
         port map(timeIn         => s_actualTime,
                  timeOutHour    => s_generalClock_hour_bin,
                  timeOutMinute  => s_generalClock_minute_bin);
   
   bin6_to_bcd_min_gen_clock : work.Bin6ToBCD(Behavioral)
         port map(binIn   => s_generalClock_minute_bin,
                  bcd1    => s_generalClock_minute_bcd1,
                  bcd0    => s_generalClock_minute_bcd0);
   
   bin6_to_bcd_hour_gen_clock : work.Bin6ToBCD(Behavioral)
         port map(binIn   => s_generalClock_hour_bin,
                  bcd1    => s_generalClock_hour_bcd1,
                  bcd0    => s_generalClock_hour_bcd0);
   
   -- END TIME WATCH
   display_time_endTime : work.DisplayTime(Shell)
         port map(timeIn         => s_endTime,
                  timeOutHour    => s_endTime_hour_bin,
                  timeOutMinute  => s_endTime_minute_bin);
   
   bin6_to_bcd_min_endTime : work.Bin6ToBCD(Behavioral)
         port map(binIn   => s_endTime_minute_bin,
                  bcd1    => s_endTime_minute_bcd1,
                  bcd0    => s_endTime_minute_bcd0);
   
   bin6_to_bcd_hour_endTime : work.Bin6ToBCD(Behavioral)
         port map(binIn   => s_endTime_hour_bin,
                  bcd1    => s_endTime_hour_bcd1,
                  bcd0    => s_endTime_hour_bcd0);

   -- COOK TIME
   display_time_cookTime : work.DisplayTime(Shell)
         port map(timeIn         => s_cookTime,
                  timeOutHour    => s_cookTime_hour_bin,
                  timeOutMinute  => s_cookTime_minute_bin);
   
   bin6_to_bcd_min_cookTime : work.Bin6ToBCD(Behavioral)
         port map(binIn   => s_cookTime_minute_bin,
                  bcd1    => s_cookTime_minute_bcd1,
                  bcd0    => s_cookTime_minute_bcd0);
   
   bin6_to_bcd_hour_cookTime : work.Bin6ToBCD(Behavioral)
         port map(binIn   => s_cookTime_hour_bin,
                  bcd1    => s_cookTime_hour_bcd1,
                  bcd0    => s_cookTime_hour_bcd0);

   -- ACTUAL TEMPERATURE
   bin16_to_bcd_actuaTemp : work.Bin16ToBCD(Behavioral)
         port map(binIn   => s_actualTemperature,
                  bcd2    => s_actualTemp_bcd2,
                  bcd1    => s_actualTemp_bcd1,
                  bcd0    => s_actualTemp_bcd0);
   -- AVERAGE TEMPERATURE
   bin16_to_bcd_averageTemp : work.Bin16ToBCD(Behavioral)
         port map(binIn   => s_averageTemperature,
                  bcd2    => s_averageTemp_bcd2,
                  bcd1    => s_averageTemp_bcd1,
                  bcd0    => s_averageTemp_bcd0);
   -- bin 7seg decoders

   
   bin7seg_hex7 : work.Bin7SegDecoder(Behavioral)
         port map(enable    => s_enable_7seg(7),
                  binInput  => s_hex7_bcd,
                  decOut_n  => HEX7);
   
   bin7seg_hex6 : work.Bin7SegDecoder(Behavioral)
         port map(enable    => s_enable_7seg(6),
                  binInput  => s_hex6_bcd,
                  decOut_n  => HEX6);

   bin7seg_hex5 : work.Bin7SegDecoder(Behavioral)
         port map(enable    => s_enable_7seg(5),
                  binInput  => s_hex5_bcd,
                  decOut_n  => HEX5);

   bin7seg_hex4 : work.Bin7SegDecoder(Behavioral)
         port map(enable    => s_enable_7seg(4),
                  binInput  => s_hex4_bcd,
                  decOut_n  => HEX4);
   
   bin7seg_hex3 : work.Bin7SegDecoder(Behavioral)
         port map(enable    => s_enable_7seg(3),
                  binInput  => s_hex3_bcd,
                  decOut_n  => HEX3);
                  
   bin7seg_hex2 : work.Bin7SegDecoder(Behavioral)
         port map(enable    => s_enable_7seg(2),
                  binInput  => s_hex2_bcd,
                  decOut_n  => HEX2);
   
   bin7seg_hex1 : work.Bin7SegDecoder(Behavioral)
         port map(enable    => s_enable_7seg(1),
                  binInput  => s_hex1_bcd,
                  decOut_n  => HEX1);
                  
   bin7seg_hex0 : work.Bin7SegDecoder(Behavioral)
         port map(enable    => s_enable_7seg(0),
                  binInput  => s_hex0_bcd,
                  decOut_n  => HEX0);
   
   -- Led's manipulation blocks
   progress_bar_control : work.ProgressLeds(Synchronous)
         port map(clk         => CLOCK_50,
                  reset       => sync_sw(17) or s_resetBlocks,
                  enable      => s_pulse_4hz,
                  progressBar => s_progressBar);

   -- Based on FSM state, LEDG program selection
   process(s_actualFSMState)
   begin
      if (s_actualFSMState = "011") then
         s_ledg_program <= s_progressBar;
		elsif (s_actualFSMState = "001") then
         s_ledg_program <= s_progressBar;
      elsif (s_actualFSMState = "100") then
         s_ledg_program <= (others => s_blink_1hz);
      else
         s_ledg_program <= (others => '0');
		end if;
   end process;
   
   LEDR(2 downto 0) <= s_actualFSMState;
   LEDG(7 downto 0) <= s_ledg_program;

end architecture Structural;