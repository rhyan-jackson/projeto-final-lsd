transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vcom -93 -work work {/home/rhyan/Documents/ua/1.2/LSD/projeto-final-lsd/PulseGenerator.vhd}
vcom -93 -work work {/home/rhyan/Documents/ua/1.2/LSD/projeto-final-lsd/Bin16ToBCD.vhd}
vcom -93 -work work {/home/rhyan/Documents/ua/1.2/LSD/projeto-final-lsd/OvenFSM.vhd}
vcom -93 -work work {/home/rhyan/Documents/ua/1.2/LSD/projeto-final-lsd/Bin6toBCD.vhd}
vcom -93 -work work {/home/rhyan/Documents/ua/1.2/LSD/projeto-final-lsd/CookDurationRegister.vhd}
vcom -93 -work work {/home/rhyan/Documents/ua/1.2/LSD/projeto-final-lsd/DebounceUnit.vhd}
vcom -93 -work work {/home/rhyan/Documents/ua/1.2/LSD/projeto-final-lsd/Bin7SegDecoder.vhd}
vcom -93 -work work {/home/rhyan/Documents/ua/1.2/LSD/projeto-final-lsd/DisplayTime.vhd}
vcom -93 -work work {/home/rhyan/Documents/ua/1.2/LSD/projeto-final-lsd/EndTimeRegister.vhd}
vcom -93 -work work {/home/rhyan/Documents/ua/1.2/LSD/projeto-final-lsd/GeneralClock.vhd}
vcom -93 -work work {/home/rhyan/Documents/ua/1.2/LSD/projeto-final-lsd/OvenTopLevel.vhd}
vcom -93 -work work {/home/rhyan/Documents/ua/1.2/LSD/projeto-final-lsd/Heater.vhd}
vcom -93 -work work {/home/rhyan/Documents/ua/1.2/LSD/projeto-final-lsd/RegisterTemperature.vhd}

