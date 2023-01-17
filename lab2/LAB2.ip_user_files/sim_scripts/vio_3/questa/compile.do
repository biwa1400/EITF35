vlib questa_lib/work
vlib questa_lib/msim

vlib questa_lib/msim/xil_defaultlib

vmap xil_defaultlib questa_lib/msim/xil_defaultlib

vlog -work xil_defaultlib  -incr -mfcu "+incdir+../../../../LAB2.gen/sources_1/ip/vio_3/hdl/verilog" "+incdir+../../../../LAB2.gen/sources_1/ip/vio_3/hdl" \
"../../../../LAB2.gen/sources_1/ip/vio_3/sim/vio_3.v" \


vlog -work xil_defaultlib \
"glbl.v"

