vlib questa_lib/work
vlib questa_lib/msim

vlib questa_lib/msim/xil_defaultlib

vmap xil_defaultlib questa_lib/msim/xil_defaultlib

vlog -work xil_defaultlib  -incr -mfcu "+incdir+../../../../LAB2.gen/sources_1/ip/vio_2/hdl/verilog" "+incdir+../../../../LAB2.gen/sources_1/ip/vio_2/hdl" \
"../../../../LAB2.gen/sources_1/ip/vio_2/sim/vio_2.v" \


vlog -work xil_defaultlib \
"glbl.v"

