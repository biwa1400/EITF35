vlib work
vlib activehdl

vlib activehdl/xil_defaultlib

vmap xil_defaultlib activehdl/xil_defaultlib

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../LAB2.gen/sources_1/ip/vio_2/hdl/verilog" "+incdir+../../../../LAB2.gen/sources_1/ip/vio_2/hdl" \
"../../../../LAB2.gen/sources_1/ip/vio_2/sim/vio_2.v" \


vlog -work xil_defaultlib \
"glbl.v"

