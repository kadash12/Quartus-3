onerror {exit -code 1}
vlib work
vcom -work work Board_ROM.vho
vcom -work work Waveform.vwf.vht
vsim -novopt -c -t 1ps -sdfmax ROM_test_vhd_vec_tst/i1=Board_ROM_vhd.sdo -L maxv -L altera -L altera_mf -L 220model -L sgate -L altera_lnsim work.ROM_test_vhd_vec_tst
vcd file -direction Board_ROM.msim.vcd
vcd add -internal ROM_test_vhd_vec_tst/*
vcd add -internal ROM_test_vhd_vec_tst/i1/*
proc simTimestamp {} {
    echo "Simulation time: $::now ps"
    if { [string equal running [runStatus]] } {
        after 2500 simTimestamp
    }
}
after 2500 simTimestamp
run -all
quit -f
