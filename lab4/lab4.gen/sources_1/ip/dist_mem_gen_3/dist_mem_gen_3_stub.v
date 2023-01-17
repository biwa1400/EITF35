// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2022.1 (win64) Build 3526262 Mon Apr 18 15:48:16 MDT 2022
// Date        : Fri Oct 28 13:52:22 2022
// Host        : DESKTOP-0KTBA50 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub
//               c:/study/vlsi/try1/EITF35/lab4/lab4.gen/sources_1/ip/dist_mem_gen_3/dist_mem_gen_3_stub.v
// Design      : dist_mem_gen_3
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7a100tcsg324-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* x_core_info = "dist_mem_gen_v8_0_13,Vivado 2022.1" *)
module dist_mem_gen_3(a, d, clk, we, spo)
/* synthesis syn_black_box black_box_pad_pin="a[3:0],d[63:0],clk,we,spo[63:0]" */;
  input [3:0]a;
  input [63:0]d;
  input clk;
  input we;
  output [63:0]spo;
endmodule