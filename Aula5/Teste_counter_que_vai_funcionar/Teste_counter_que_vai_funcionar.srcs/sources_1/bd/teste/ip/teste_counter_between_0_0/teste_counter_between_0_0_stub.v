// Copyright 1986-2016 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2016.4 (win64) Build 1756540 Mon Jan 23 19:11:23 MST 2017
// Date        : Mon Apr 03 18:55:13 2017
// Host        : Inator running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub
//               c:/Users/jduarte/Documents/GitHub/CR/Aula5/Teste_counter_que_vai_funcionar/Teste_counter_que_vai_funcionar.srcs/sources_1/bd/teste/ip/teste_counter_between_0_0/teste_counter_between_0_0_stub.v
// Design      : teste_counter_between_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7a100tcsg324-3
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* x_core_info = "counter_between,Vivado 2016.4" *)
module teste_counter_between_0_0(clk, count, x, y)
/* synthesis syn_black_box black_box_pad_pin="clk,count[7:0],x[7:0],y[7:0]" */;
  input clk;
  output [7:0]count;
  input [7:0]x;
  input [7:0]y;
endmodule
