// Copyright 1986-2016 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2016.4 (win64) Build 1756540 Mon Jan 23 19:11:23 MST 2017
// Date        : Fri Mar 17 10:18:26 2017
// Host        : Inator running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub
//               c:/Users/jduarte/Documents/GitHub/CR/Aula3/ex4/ex4.srcs/sources_1/bd/ex4/ip/ex4_FirstBlock_wrapper_0_0/ex4_FirstBlock_wrapper_0_0_stub.v
// Design      : ex4_FirstBlock_wrapper_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7a100tcsg324-3
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* x_core_info = "FirstBlock_wrapper,Vivado 2016.4" *)
module ex4_FirstBlock_wrapper_0_0(an, btnC, clk, seg, sw)
/* synthesis syn_black_box black_box_pad_pin="an[7:0],btnC,clk,seg[6:0],sw[15:0]" */;
  output [7:0]an;
  input btnC;
  input clk;
  output [6:0]seg;
  input [15:0]sw;
endmodule