// Copyright 1986-2016 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2016.4 (win64) Build 1756540 Mon Jan 23 19:11:23 MST 2017
// Date        : Mon May 22 11:38:29 2017
// Host        : Inator running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub
//               c:/Users/jduarte/Documents/GitHub/CR/Projeto/MicroBlaze_Trivial/MicroBlaze_Trivial.srcs/sources_1/bd/MB_to_display_text/ip/MB_to_display_text_BinToBCD16_0_0/MB_to_display_text_BinToBCD16_0_0_stub.v
// Design      : MB_to_display_text_BinToBCD16_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7a100tcsg324-3
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* x_core_info = "BinToBCD16,Vivado 2016.4" *)
module MB_to_display_text_BinToBCD16_0_0(clk, reset, ready, binary, request, BCD4, BCD3, BCD2, 
  BCD1, BCD0)
/* synthesis syn_black_box black_box_pad_pin="clk,reset,ready,binary[15:0],request,BCD4[3:0],BCD3[3:0],BCD2[3:0],BCD1[3:0],BCD0[3:0]" */;
  input clk;
  input reset;
  output ready;
  input [15:0]binary;
  input request;
  output [3:0]BCD4;
  output [3:0]BCD3;
  output [3:0]BCD2;
  output [3:0]BCD1;
  output [3:0]BCD0;
endmodule
