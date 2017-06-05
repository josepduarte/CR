// Copyright 1986-2016 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2016.4 (win64) Build 1756540 Mon Jan 23 19:11:23 MST 2017
// Date        : Wed May 31 23:30:27 2017
// Host        : Inator running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub -rename_top ex7_top_blk_mem_gen_1_0 -prefix
//               ex7_top_blk_mem_gen_1_0_ Project_design_blk_mem_gen_1_0_stub.v
// Design      : Project_design_blk_mem_gen_1_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7a100tcsg324-3
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* x_core_info = "blk_mem_gen_v8_3_5,Vivado 2016.4" *)
module ex7_top_blk_mem_gen_1_0(clka, wea, addra, dina, clkb, addrb, doutb)
/* synthesis syn_black_box black_box_pad_pin="clka,wea[0:0],addra[2:0],dina[21:0],clkb,addrb[2:0],doutb[21:0]" */;
  input clka;
  input [0:0]wea;
  input [2:0]addra;
  input [21:0]dina;
  input clkb;
  input [2:0]addrb;
  output [21:0]doutb;
endmodule
