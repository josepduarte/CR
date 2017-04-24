// Copyright 1986-2016 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2016.4 (win64) Build 1756540 Mon Jan 23 19:11:23 MST 2017
// Date        : Wed Apr 05 16:31:26 2017
// Host        : Inator running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub
//               c:/Users/jduarte/Documents/GitHub/CR/TestePratico1/testeTop/testeTop.srcs/sources_1/bd/top_teste/ip/top_teste_ClkDividerN_0_0/top_teste_ClkDividerN_0_0_stub.v
// Design      : top_teste_ClkDividerN_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7a100tcsg324-3
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* x_core_info = "ClkDividerN,Vivado 2016.4" *)
module top_teste_ClkDividerN_0_0(reset, clkIn, clkOut)
/* synthesis syn_black_box black_box_pad_pin="reset,clkIn,clkOut" */;
  input reset;
  input clkIn;
  output clkOut;
endmodule
