// Copyright 1986-2016 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2016.4 (win64) Build 1756540 Mon Jan 23 19:11:23 MST 2017
// Date        : Mon Jun 05 11:46:50 2017
// Host        : Inator running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub
//               c:/Users/jduarte/Documents/GitHub/CR/Aula6/ex7_top/ex7_top.srcs/sources_1/bd/ex7_top/ip/ex7_top_xlslice_0_0/ex7_top_xlslice_0_0_stub.v
// Design      : ex7_top_xlslice_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7a100tcsg324-3
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* x_core_info = "xlslice,Vivado 2016.4" *)
module ex7_top_xlslice_0_0(Din, Dout)
/* synthesis syn_black_box black_box_pad_pin="Din[21:0],Dout[15:0]" */;
  input [21:0]Din;
  output [15:0]Dout;
endmodule
