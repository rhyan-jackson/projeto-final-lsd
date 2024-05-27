onerror {exit -code 1}
vlib work
vcom -work work Forno.vho
vcom -work work EndTimeRegister.vwf.vht
vsim -voptargs="+acc" -c -t 1ps -L cycloneive -L altera -L altera_mf -L 220model -L sgate -L altera_lnsim work.EndTimeRegister_vhd_vec_tst
vcd file -direction Forno.msim.vcd
vcd add -internal EndTimeRegister_vhd_vec_tst/*
vcd add -internal EndTimeRegister_vhd_vec_tst/i1/*
proc simTimestamp {} {
    echo "Simulation time: $::now ps"
    if { [string equal running [runStatus]] } {
        after 2500 simTimestamp
    }
}
after 2500 simTimestamp
run -all
quit -f

