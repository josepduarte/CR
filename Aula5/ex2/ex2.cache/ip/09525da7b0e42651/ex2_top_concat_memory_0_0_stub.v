// Copyright 1986-2016 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2016.4 (win64) Build 1756540 Mon Jan 23 19:11:23 MST 2017
// Date        : Mon Apr 03 11:21:52 2017
// Host        : Inator running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ ex2_top_concat_memory_0_0_stub.v
// Design      : ex2_top_concat_memory_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7a100tcsg324-3
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* x_core_info = "concat_memory,Vivado 2016.4" *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix(clk, data_in, address, data_out)
/* synthesis syn_black_box black_box_pad_pin="clk,data_in[15:0],address[6:0],data_out[2047:0]" */;
  input clk;
  input [15:0]data_in;
  output [6:0]address;
  output [2047:0]data_out;
endmodule
