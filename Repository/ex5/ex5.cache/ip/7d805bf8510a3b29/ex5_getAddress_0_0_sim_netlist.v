// Copyright 1986-2016 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2016.4 (win64) Build 1756540 Mon Jan 23 19:11:23 MST 2017
// Date        : Wed Apr 05 12:09:38 2017
// Host        : Inator running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ ex5_getAddress_0_0_sim_netlist.v
// Design      : ex5_getAddress_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a100tcsg324-3
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "ex5_getAddress_0_0,getAddress,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "getAddress,Vivado 2016.4" *) 
(* NotValidForBitStream *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix
   (clk,
    value,
    mem_value,
    addr_out,
    finished);
  (* x_interface_info = "xilinx.com:signal:clock:1.0 clk CLK" *) input clk;
  input [7:0]value;
  input [7:0]mem_value;
  output [3:0]addr_out;
  output finished;

  wire [3:0]addr_out;
  wire clk;
  wire finished;
  wire [7:0]mem_value;
  wire [7:0]value;

  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_getAddress U0
       (.addr_out(addr_out),
        .clk(clk),
        .finished(finished),
        .mem_value(mem_value),
        .value(value));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_getAddress
   (addr_out,
    finished,
    mem_value,
    value,
    clk);
  output [3:0]addr_out;
  output finished;
  input [7:0]mem_value;
  input [7:0]value;
  input clk;

  wire [3:0]addr_out;
  wire clk;
  wire finished;
  wire finished_s_i_1_n_0;
  wire finished_s_i_2_n_0;
  wire finished_s_i_3_n_0;
  wire finished_s_i_4_n_0;
  wire [7:0]mem_value;
  wire [3:0]plusOp;
  wire sel;
  wire [7:0]value;

  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \addressOut_s[0]_i_1 
       (.I0(addr_out[0]),
        .O(plusOp[0]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \addressOut_s[1]_i_1 
       (.I0(addr_out[0]),
        .I1(addr_out[1]),
        .O(plusOp[1]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \addressOut_s[2]_i_1 
       (.I0(addr_out[0]),
        .I1(addr_out[1]),
        .I2(addr_out[2]),
        .O(plusOp[2]));
  LUT1 #(
    .INIT(2'h1)) 
    \addressOut_s[3]_i_1 
       (.I0(finished),
        .O(sel));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \addressOut_s[3]_i_2 
       (.I0(addr_out[1]),
        .I1(addr_out[0]),
        .I2(addr_out[2]),
        .I3(addr_out[3]),
        .O(plusOp[3]));
  FDRE \addressOut_s_reg[0] 
       (.C(clk),
        .CE(sel),
        .D(plusOp[0]),
        .Q(addr_out[0]),
        .R(1'b0));
  FDRE \addressOut_s_reg[1] 
       (.C(clk),
        .CE(sel),
        .D(plusOp[1]),
        .Q(addr_out[1]),
        .R(1'b0));
  FDRE \addressOut_s_reg[2] 
       (.C(clk),
        .CE(sel),
        .D(plusOp[2]),
        .Q(addr_out[2]),
        .R(1'b0));
  FDRE \addressOut_s_reg[3] 
       (.C(clk),
        .CE(sel),
        .D(plusOp[3]),
        .Q(addr_out[3]),
        .R(1'b0));
  LUT4 #(
    .INIT(16'hAAEA)) 
    finished_s_i_1
       (.I0(finished),
        .I1(finished_s_i_2_n_0),
        .I2(finished_s_i_3_n_0),
        .I3(finished_s_i_4_n_0),
        .O(finished_s_i_1_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    finished_s_i_2
       (.I0(mem_value[0]),
        .I1(value[0]),
        .I2(value[2]),
        .I3(mem_value[2]),
        .I4(value[1]),
        .I5(mem_value[1]),
        .O(finished_s_i_2_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    finished_s_i_3
       (.I0(mem_value[3]),
        .I1(value[3]),
        .I2(value[5]),
        .I3(mem_value[5]),
        .I4(value[4]),
        .I5(mem_value[4]),
        .O(finished_s_i_3_n_0));
  LUT4 #(
    .INIT(16'h6FF6)) 
    finished_s_i_4
       (.I0(mem_value[6]),
        .I1(value[6]),
        .I2(mem_value[7]),
        .I3(value[7]),
        .O(finished_s_i_4_n_0));
  FDRE #(
    .INIT(1'b0)) 
    finished_s_reg
       (.C(clk),
        .CE(1'b1),
        .D(finished_s_i_1_n_0),
        .Q(finished),
        .R(1'b0));
endmodule
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (weak1, weak0) GSR = GSR_int;
    assign (weak1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

endmodule
`endif
