// Copyright 1986-2016 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2016.4 (win64) Build 1756540 Mon Jan 23 19:11:23 MST 2017
// Date        : Thu Mar 16 08:32:55 2017
// Host        : Inator running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub
//               c:/Users/jduarte/Documents/GitHub/CR/Aula3/GCD/GCD.srcs/sources_1/bd/GCD/ip/GCD_Greatest_common_divisor_0_0/GCD_Greatest_common_divisor_0_0_stub.v
// Design      : GCD_Greatest_common_divisor_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7a100tcsg324-3
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* x_core_info = "Greatest_common_divisor,Vivado 2016.4" *)
module GCD_Greatest_common_divisor_0_0(clk, btnC, sw, led)
/* synthesis syn_black_box black_box_pad_pin="clk,btnC,sw[15:0],led[7:0]" */;
  input clk;
  input btnC;
  input [15:0]sw;
  output [7:0]led;
endmodule
