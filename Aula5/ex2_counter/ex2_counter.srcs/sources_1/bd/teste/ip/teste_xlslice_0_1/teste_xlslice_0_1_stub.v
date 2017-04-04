// Copyright 1986-2016 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2016.4 (win64) Build 1756540 Mon Jan 23 19:11:23 MST 2017
// Date        : Mon Apr 03 16:34:39 2017
// Host        : Inator running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub
//               c:/Users/jduarte/Documents/GitHub/CR/Aula5/ex2_counter/ex2_counter.srcs/sources_1/bd/teste/ip/teste_xlslice_0_1/teste_xlslice_0_1_stub.v
// Design      : teste_xlslice_0_1
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7a100tcsg324-3
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* x_core_info = "xlslice,Vivado 2016.4" *)
module teste_xlslice_0_1(Din, Dout)
/* synthesis syn_black_box black_box_pad_pin="Din[15:0],Dout[7:0]" */;
  input [15:0]Din;
  output [7:0]Dout;
endmodule
