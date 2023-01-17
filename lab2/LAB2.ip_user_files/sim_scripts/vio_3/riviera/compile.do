vlib work
vlib riviera

vlib riviera/xil_defaultlib

vmap xil_defaultlib riviera/xil_defaultlib

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../LAB2.gen/sources_1/ip/vio_3/hdl/verilog" "+incdir+../../../../LAB2.gen/sources_1/ip/vio_3/hdl" \
"../../../../LAB2.gen/sources_1/ip/vio_3/sim/vio_3.v" \


vlog -work xil_defaultlib \
"glbl.v"

