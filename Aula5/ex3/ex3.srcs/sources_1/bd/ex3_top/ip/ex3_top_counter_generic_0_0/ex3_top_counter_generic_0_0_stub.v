// Copyright 1986-2016 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2016.4 (win64) Build 1756540 Mon Jan 23 19:11:23 MST 2017
// Date        : Wed Mar 29 21:26:46 2017
// Host        : Inator running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub
//               c:/Users/jduarte/Documents/GitHub/CR/Aula5/ex3/ex3.srcs/sources_1/bd/ex3_top/ip/ex3_top_counter_generic_0_0/ex3_top_counter_generic_0_0_stub.v
// Design      : ex3_top_counter_generic_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7a100tcsg324-3
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* x_core_info = "ex6_mapping,Vivado 2016.4" *)
module ex3_top_counter_generic_0_0(clk, sw, btnC, led)
/* synthesis syn_black_box black_box_pad_pin="clk,sw[1:0],btnC,led[6:0]" */;
  input clk;
  input [1:0]sw;
  input btnC;
  output [6:0]led;
endmodule