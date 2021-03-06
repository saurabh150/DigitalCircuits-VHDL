onerror {quit -f}
vlib work
vlog -work work L4P2.vo
vlog -work work L4P2.vt
vsim -novopt -c -t 1ps -L cycloneiv_ver -L altera_ver -L altera_mf_ver -L 220model_ver -L sgate work.L4P2_vlg_vec_tst
vcd file -direction L4P2.msim.vcd
vcd add -internal L4P2_vlg_vec_tst/*
vcd add -internal L4P2_vlg_vec_tst/i1/*
add wave /*
run -all
