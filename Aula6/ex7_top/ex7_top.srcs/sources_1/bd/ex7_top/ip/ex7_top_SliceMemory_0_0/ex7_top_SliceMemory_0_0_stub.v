// Copyright 1986-2016 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2016.4 (win64) Build 1756540 Mon Jan 23 19:11:23 MST 2017
// Date        : Tue Apr 04 23:59:42 2017
// Host        : Inator running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub
//               C:/Users/jduarte/Documents/GitHub/CR/Aula6/ex7_top/ex7_top.srcs/sources_1/bd/ex7_top/ip/ex7_top_SliceMemory_0_0/ex7_top_SliceMemory_0_0_stub.v
// Design      : ex7_top_SliceMemory_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7a100tcsg324-3
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* x_core_info = "SliceMemory,Vivado 2016.4" *)
module ex7_top_SliceMemory_0_0(clock, dataIn, address, dataOut)
/* synthesis syn_black_box black_box_pad_pin="clock,dataIn[127:0],address[3:0],dataOut[7:0]" */;
  input clock;
  input [127:0]dataIn;
  output [3:0]address;
  output [7:0]dataOut;
endmodule