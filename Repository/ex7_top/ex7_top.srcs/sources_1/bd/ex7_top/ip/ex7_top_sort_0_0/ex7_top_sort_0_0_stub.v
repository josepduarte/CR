// Copyright 1986-2016 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2016.4 (win64) Build 1756540 Mon Jan 23 19:11:23 MST 2017
// Date        : Mon Jun 05 14:16:44 2017
// Host        : Inator running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub
//               c:/Users/jduarte/Documents/GitHub/CR/Aula6/ex7_top/ex7_top.srcs/sources_1/bd/ex7_top/ip/ex7_top_sort_0_0/ex7_top_sort_0_0_stub.v
// Design      : ex7_top_sort_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7a100tcsg324-3
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* x_core_info = "sort,Vivado 2016.4" *)
module ex7_top_sort_0_0(dataIn, dataOut)
/* synthesis syn_black_box black_box_pad_pin="dataIn[175:0],dataOut[175:0]" */;
  input [175:0]dataIn;
  output [175:0]dataOut;
endmodule
