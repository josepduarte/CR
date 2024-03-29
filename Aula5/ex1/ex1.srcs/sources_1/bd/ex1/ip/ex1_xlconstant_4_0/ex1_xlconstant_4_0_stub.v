// Copyright 1986-2016 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2016.4 (win64) Build 1756540 Mon Jan 23 19:11:23 MST 2017
// Date        : Mon Mar 27 11:31:54 2017
// Host        : Inator running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub -rename_top ex1_xlconstant_4_0 -prefix
//               ex1_xlconstant_4_0_ ex1_xlconstant_2_0_stub.v
// Design      : ex1_xlconstant_2_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7a100tcsg324-3
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
module ex1_xlconstant_4_0(dout)
/* synthesis syn_black_box black_box_pad_pin="dout[8:0]" */;
  output [8:0]dout;
endmodule
