// Copyright 1986-2016 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2016.4 (win64) Build 1756540 Mon Jan 23 19:11:23 MST 2017
// Date        : Thu Mar 16 22:58:32 2017
// Host        : Inator running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub
//               c:/Users/jduarte/Documents/GitHub/CR/Aula3/ex4/ex4.srcs/sources_1/bd/ex4/ip/ex4_number_of_ones_0_0/ex4_number_of_ones_0_0_stub.v
// Design      : ex4_number_of_ones_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7a100tcsg324-3
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* x_core_info = "number_of_ones,Vivado 2016.4" *)
module ex4_number_of_ones_0_0(clk, reset, datain, result)
/* synthesis syn_black_box black_box_pad_pin="clk,reset,datain[1023:0],result[9:0]" */;
  input clk;
  input reset;
  input [1023:0]datain;
  output [9:0]result;
endmodule
