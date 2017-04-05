// Copyright 1986-2016 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2016.4 (win64) Build 1756540 Mon Jan 23 19:11:23 MST 2017
// Date        : Wed Apr 05 14:25:12 2017
// Host        : Inator running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ ex5_Mux4_1_0_0_stub.v
// Design      : ex5_Mux4_1_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7a100tcsg324-3
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* x_core_info = "Mux4_1,Vivado 2016.4" *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix(datain0, datain1, datain2, datain3, sel, dataout)
/* synthesis syn_black_box black_box_pad_pin="datain0[3:0],datain1[3:0],datain2[3:0],datain3[3:0],sel[1:0],dataout[3:0]" */;
  input [3:0]datain0;
  input [3:0]datain1;
  input [3:0]datain2;
  input [3:0]datain3;
  input [1:0]sel;
  output [3:0]dataout;
endmodule
