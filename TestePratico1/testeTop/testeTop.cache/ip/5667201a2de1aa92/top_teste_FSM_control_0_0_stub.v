// Copyright 1986-2016 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2016.4 (win64) Build 1756540 Mon Jan 23 19:11:23 MST 2017
// Date        : Wed Apr 05 16:31:25 2017
// Host        : Inator running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ top_teste_FSM_control_0_0_stub.v
// Design      : top_teste_FSM_control_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7a100tcsg324-3
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* x_core_info = "FSM_control,Vivado 2016.4" *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix(clk, rst, swi, indata, sm_mem, out_addr, MSDdata, 
  LSDdata)
/* synthesis syn_black_box black_box_pad_pin="clk,rst,swi[2:0],indata[31:0],sm_mem[1:0],out_addr[1:0],MSDdata[3:0],LSDdata[3:0]" */;
  input clk;
  input rst;
  input [2:0]swi;
  input [31:0]indata;
  output [1:0]sm_mem;
  output [1:0]out_addr;
  output [3:0]MSDdata;
  output [3:0]LSDdata;
endmodule
