// Copyright 1986-2016 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2016.4 (win64) Build 1756540 Mon Jan 23 19:11:23 MST 2017
// Date        : Mon Mar 20 11:44:09 2017
// Host        : Inator running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub
//               c:/Users/jduarte/Documents/GitHub/CR/Aula4/ex1/ex1.srcs/sources_1/bd/ex1/ip/ex1_xlslice_4_0/ex1_xlslice_4_0_stub.v
// Design      : ex1_xlslice_4_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7a100tcsg324-3
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* x_core_info = "xlslice,Vivado 2016.4" *)
module ex1_xlslice_4_0(Din, Dout)
/* synthesis syn_black_box black_box_pad_pin="Din[31:0],Dout[3:0]" */;
  input [31:0]Din;
  output [3:0]Dout;
endmodule