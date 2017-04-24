// Copyright 1986-2016 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2016.4 (win64) Build 1756540 Mon Jan 23 19:11:23 MST 2017
// Date        : Mon Apr 03 13:56:18 2017
// Host        : Inator running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub -rename_top ex2_top_IterativeSorterFSM_0_0 -prefix
//               ex2_top_IterativeSorterFSM_0_0_ ex2_top_IterativeSorterFSM_0_0_stub.v
// Design      : ex2_top_IterativeSorterFSM_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7a100tcsg324-3
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* x_core_info = "IterativeSorterFSM,Vivado 2016.4" *)
module ex2_top_IterativeSorterFSM_0_0(clk, reset, data_in, data_out)
/* synthesis syn_black_box black_box_pad_pin="clk,reset,data_in[2047:0],data_out[2047:0]" */;
  input clk;
  input reset;
  input [2047:0]data_in;
  output [2047:0]data_out;
endmodule