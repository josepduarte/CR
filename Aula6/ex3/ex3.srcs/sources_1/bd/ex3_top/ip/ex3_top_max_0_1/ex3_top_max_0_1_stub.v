// Copyright 1986-2016 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2016.4 (win64) Build 1756540 Mon Jan 23 19:11:23 MST 2017
// Date        : Tue Apr 04 18:29:02 2017
// Host        : Inator running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub
//               c:/Users/jduarte/Documents/GitHub/CR/Aula6/ex3/ex3.srcs/sources_1/bd/ex3_top/ip/ex3_top_max_0_1/ex3_top_max_0_1_stub.v
// Design      : ex3_top_max_0_1
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7a100tcsg324-3
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* x_core_info = "max,Vivado 2016.4" *)
module ex3_top_max_0_1(data_in, max_value, finished)
/* synthesis syn_black_box black_box_pad_pin="data_in[127:0],max_value[7:0],finished" */;
  input [127:0]data_in;
  output [7:0]max_value;
  output finished;
endmodule
