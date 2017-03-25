// Copyright 1986-2016 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2016.4 (win64) Build 1756540 Mon Jan 23 19:11:23 MST 2017
// Date        : Fri Mar 24 09:49:50 2017
// Host        : Inator running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ ex5_Mux2_1_0_0_sim_netlist.v
// Design      : ex5_Mux2_1_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a100tcsg324-3
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_Mux2_1
   (dataout,
    datain1,
    datain0,
    sel);
  output [15:0]dataout;
  input [15:0]datain1;
  input [15:0]datain0;
  input sel;

  wire [15:0]datain0;
  wire [15:0]datain1;
  wire [15:0]dataout;
  wire sel;

  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \dataout[0]_INST_0 
       (.I0(datain1[0]),
        .I1(datain0[0]),
        .I2(sel),
        .O(dataout[0]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \dataout[10]_INST_0 
       (.I0(datain1[10]),
        .I1(datain0[10]),
        .I2(sel),
        .O(dataout[10]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \dataout[11]_INST_0 
       (.I0(datain1[11]),
        .I1(datain0[11]),
        .I2(sel),
        .O(dataout[11]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \dataout[12]_INST_0 
       (.I0(datain1[12]),
        .I1(datain0[12]),
        .I2(sel),
        .O(dataout[12]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \dataout[13]_INST_0 
       (.I0(datain1[13]),
        .I1(datain0[13]),
        .I2(sel),
        .O(dataout[13]));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \dataout[14]_INST_0 
       (.I0(datain1[14]),
        .I1(datain0[14]),
        .I2(sel),
        .O(dataout[14]));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \dataout[15]_INST_0 
       (.I0(datain1[15]),
        .I1(datain0[15]),
        .I2(sel),
        .O(dataout[15]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \dataout[1]_INST_0 
       (.I0(datain1[1]),
        .I1(datain0[1]),
        .I2(sel),
        .O(dataout[1]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \dataout[2]_INST_0 
       (.I0(datain1[2]),
        .I1(datain0[2]),
        .I2(sel),
        .O(dataout[2]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \dataout[3]_INST_0 
       (.I0(datain1[3]),
        .I1(datain0[3]),
        .I2(sel),
        .O(dataout[3]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \dataout[4]_INST_0 
       (.I0(datain1[4]),
        .I1(datain0[4]),
        .I2(sel),
        .O(dataout[4]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \dataout[5]_INST_0 
       (.I0(datain1[5]),
        .I1(datain0[5]),
        .I2(sel),
        .O(dataout[5]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \dataout[6]_INST_0 
       (.I0(datain1[6]),
        .I1(datain0[6]),
        .I2(sel),
        .O(dataout[6]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \dataout[7]_INST_0 
       (.I0(datain1[7]),
        .I1(datain0[7]),
        .I2(sel),
        .O(dataout[7]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \dataout[8]_INST_0 
       (.I0(datain1[8]),
        .I1(datain0[8]),
        .I2(sel),
        .O(dataout[8]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \dataout[9]_INST_0 
       (.I0(datain1[9]),
        .I1(datain0[9]),
        .I2(sel),
        .O(dataout[9]));
endmodule

(* CHECK_LICENSE_TYPE = "ex5_Mux2_1_0_0,Mux2_1,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "Mux2_1,Vivado 2016.4" *) 
(* NotValidForBitStream *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix
   (datain0,
    datain1,
    sel,
    dataout);
  input [15:0]datain0;
  input [15:0]datain1;
  input sel;
  output [15:0]dataout;

  wire [15:0]datain0;
  wire [15:0]datain1;
  wire [15:0]dataout;
  wire sel;

  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_Mux2_1 U0
       (.datain0(datain0),
        .datain1(datain1),
        .dataout(dataout),
        .sel(sel));
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