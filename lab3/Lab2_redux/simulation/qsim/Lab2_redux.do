onerror {quit -f}
vlib work
vlog -work work Lab2_redux.vo
vlog -work work Lab2_redux.vt
vsim -novopt -c -t 1ps -L cycloneii_ver -L altera_ver -L altera_mf_ver -L 220model_ver -L sgate work.Adder_Display_vlg_vec_tst
vcd file -direction Lab2_redux.msim.vcd
vcd add -internal Adder_Display_vlg_vec_tst/*
vcd add -internal Adder_Display_vlg_vec_tst/i1/*
add wave /*
run -all
