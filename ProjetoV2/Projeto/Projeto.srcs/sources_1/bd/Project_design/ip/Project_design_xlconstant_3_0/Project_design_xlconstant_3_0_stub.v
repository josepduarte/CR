// Copyright 1986-2016 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2016.4 (win64) Build 1756540 Mon Jan 23 19:11:23 MST 2017
// Date        : Mon May 22 11:39:33 2017
// Host        : Inator running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub -rename_top Project_design_xlconstant_3_0 -prefix
//               Project_design_xlconstant_3_0_ MB_to_display_text_xlconstant_3_0_stub.v
// Design      : MB_to_display_text_xlconstant_3_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7a100tcsg324-3
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
module Project_design_xlconstant_3_0(dout)
/* synthesis syn_black_box black_box_pad_pin="dout[9:0]" */;
  output [9:0]dout;
endmodule
