// Copyright 1986-2016 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2016.4 (win64) Build 1756540 Mon Jan 23 19:11:23 MST 2017
// Date        : Mon Apr 03 11:52:56 2017
// Host        : Inator running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub
//               c:/Users/jduarte/Documents/GitHub/CR/Aula5/ex2/ex2.srcs/sources_1/bd/ex2_top/ip/ex2_top_number_of_ones_0_1/ex2_top_number_of_ones_0_1_stub.v
// Design      : ex2_top_number_of_ones_0_1
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7a100tcsg324-3
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* x_core_info = "number_of_ones,Vivado 2016.4" *)
module ex2_top_number_of_ones_0_1(clk, reset, datain, result)
/* synthesis syn_black_box black_box_pad_pin="clk,reset,datain[2047:0],result[15:0]" */;
  input clk;
  input reset;
  input [2047:0]datain;
  output [15:0]result;
endmodule
