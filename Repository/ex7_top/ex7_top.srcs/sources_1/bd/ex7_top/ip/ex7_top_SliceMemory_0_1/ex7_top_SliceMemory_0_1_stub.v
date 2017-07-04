// Copyright 1986-2016 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2016.4 (win64) Build 1756540 Mon Jan 23 19:11:23 MST 2017
// Date        : Mon Jun 05 11:46:08 2017
// Host        : Inator running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub
//               c:/Users/jduarte/Documents/GitHub/CR/Aula6/ex7_top/ex7_top.srcs/sources_1/bd/ex7_top/ip/ex7_top_SliceMemory_0_1/ex7_top_SliceMemory_0_1_stub.v
// Design      : ex7_top_SliceMemory_0_1
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7a100tcsg324-3
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* x_core_info = "SliceMemory,Vivado 2016.4" *)
module ex7_top_SliceMemory_0_1(clock, dataIn, address, finished, dataOut)
/* synthesis syn_black_box black_box_pad_pin="clock,dataIn[175:0],address[2:0],finished,dataOut[21:0]" */;
  input clock;
  input [175:0]dataIn;
  output [2:0]address;
  output finished;
  output [21:0]dataOut;
endmodule
