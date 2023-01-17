// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2022.1 (win64) Build 3526262 Mon Apr 18 15:48:16 MDT 2022
// Date        : Wed Sep 14 13:15:33 2022
// Host        : DESKTOP-0KTBA50 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub
//               c:/study/vlsi/try1/EITF35/lab2/LAB2.gen/sources_1/ip/vio_2/vio_2_stub.v
// Design      : vio_2
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7a100tcsg324-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* X_CORE_INFO = "vio,Vivado 2022.1" *)
module vio_2(clk, probe_out0, probe_out1, probe_out2, 
  probe_out3)
/* synthesis syn_black_box black_box_pad_pin="clk,probe_out0[3:0],probe_out1[3:0],probe_out2[3:0],probe_out3[3:0]" */;
  input clk;
  output [3:0]probe_out0;
  output [3:0]probe_out1;
  output [3:0]probe_out2;
  output [3:0]probe_out3;
endmodule
