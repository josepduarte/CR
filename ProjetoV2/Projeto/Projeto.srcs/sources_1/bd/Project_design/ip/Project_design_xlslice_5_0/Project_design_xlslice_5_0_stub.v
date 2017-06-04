// Copyright 1986-2016 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2016.4 (win64) Build 1756540 Mon Jan 23 19:11:23 MST 2017
// Date        : Thu Jun 01 10:46:27 2017
// Host        : Inator running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub
//               c:/Users/jduarte/Documents/GitHub/CR/ProjetoV2/Projeto/Projeto.srcs/sources_1/bd/Project_design/ip/Project_design_xlslice_5_0/Project_design_xlslice_5_0_stub.v
// Design      : Project_design_xlslice_5_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7a100tcsg324-3
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* x_core_info = "xlslice,Vivado 2016.4" *)
module Project_design_xlslice_5_0(Din, Dout)
/* synthesis syn_black_box black_box_pad_pin="Din[31:0],Dout[15:0]" */;
  input [31:0]Din;
  output [15:0]Dout;
endmodule
