// Copyright 1986-2016 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2016.4 (win64) Build 1756540 Mon Jan 23 19:11:23 MST 2017
// Date        : Mon Mar 27 11:30:56 2017
// Host        : Inator running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               c:/Users/jduarte/Documents/GitHub/CR/Aula5/ex1/ex1.srcs/sources_1/bd/ex1/ip/ex1_Mux4_1_0_0/ex1_Mux4_1_0_0_sim_netlist.v
// Design      : ex1_Mux4_1_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a100tcsg324-3
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "ex1_Mux4_1_0_0,Mux4_1,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "Mux4_1,Vivado 2016.4" *) 
(* NotValidForBitStream *)
module ex1_Mux4_1_0_0
   (datain0,
    datain1,
    datain2,
    datain3,
    sel,
    dataout);
  input [22:0]datain0;
  input [22:0]datain1;
  input [22:0]datain2;
  input [22:0]datain3;
  input [1:0]sel;
  output [22:0]dataout;

  wire [22:0]datain0;
  wire [22:0]datain1;
  wire [22:0]datain2;
  wire [22:0]datain3;
  wire [22:0]dataout;
  wire [1:0]sel;

  ex1_Mux4_1_0_0_Mux4_1 U0
       (.datain0(datain0),
        .datain1(datain1),
        .datain2(datain2),
        .datain3(datain3),
        .dataout(dataout),
        .sel(sel));
endmodule

(* ORIG_REF_NAME = "Mux4_1" *) 
module ex1_Mux4_1_0_0_Mux4_1
   (dataout,
    datain3,
    datain1,
    datain2,
    sel,
    datain0);
  output [22:0]dataout;
  input [22:0]datain3;
  input [22:0]datain1;
  input [22:0]datain2;
  input [1:0]sel;
  input [22:0]datain0;

  wire [22:0]datain0;
  wire [22:0]datain1;
  wire [22:0]datain2;
  wire [22:0]datain3;
  wire [22:0]dataout;
  wire [1:0]sel;

  LUT6 #(
    .INIT(64'hAACCAACCF0FFF000)) 
    \dataout[0]_INST_0 
       (.I0(datain3[0]),
        .I1(datain1[0]),
        .I2(datain2[0]),
        .I3(sel[1]),
        .I4(datain0[0]),
        .I5(sel[0]),
        .O(dataout[0]));
  LUT6 #(
    .INIT(64'hAACCAACCF0FFF000)) 
    \dataout[10]_INST_0 
       (.I0(datain3[10]),
        .I1(datain1[10]),
        .I2(datain2[10]),
        .I3(sel[1]),
        .I4(datain0[10]),
        .I5(sel[0]),
        .O(dataout[10]));
  LUT6 #(
    .INIT(64'hAACCAACCF0FFF000)) 
    \dataout[11]_INST_0 
       (.I0(datain3[11]),
        .I1(datain1[11]),
        .I2(datain2[11]),
        .I3(sel[1]),
        .I4(datain0[11]),
        .I5(sel[0]),
        .O(dataout[11]));
  LUT6 #(
    .INIT(64'hAACCAACCF0FFF000)) 
    \dataout[12]_INST_0 
       (.I0(datain3[12]),
        .I1(datain1[12]),
        .I2(datain2[12]),
        .I3(sel[1]),
        .I4(datain0[12]),
        .I5(sel[0]),
        .O(dataout[12]));
  LUT6 #(
    .INIT(64'hAACCAACCF0FFF000)) 
    \dataout[13]_INST_0 
       (.I0(datain3[13]),
        .I1(datain1[13]),
        .I2(datain2[13]),
        .I3(sel[1]),
        .I4(datain0[13]),
        .I5(sel[0]),
        .O(dataout[13]));
  LUT6 #(
    .INIT(64'hAACCAACCF0FFF000)) 
    \dataout[14]_INST_0 
       (.I0(datain3[14]),
        .I1(datain1[14]),
        .I2(datain2[14]),
        .I3(sel[1]),
        .I4(datain0[14]),
        .I5(sel[0]),
        .O(dataout[14]));
  LUT6 #(
    .INIT(64'hAACCAACCF0FFF000)) 
    \dataout[15]_INST_0 
       (.I0(datain3[15]),
        .I1(datain1[15]),
        .I2(datain2[15]),
        .I3(sel[1]),
        .I4(datain0[15]),
        .I5(sel[0]),
        .O(dataout[15]));
  LUT6 #(
    .INIT(64'hAACCAACCF0FFF000)) 
    \dataout[16]_INST_0 
       (.I0(datain3[16]),
        .I1(datain1[16]),
        .I2(datain2[16]),
        .I3(sel[1]),
        .I4(datain0[16]),
        .I5(sel[0]),
        .O(dataout[16]));
  LUT6 #(
    .INIT(64'hAACCAACCF0FFF000)) 
    \dataout[17]_INST_0 
       (.I0(datain3[17]),
        .I1(datain1[17]),
        .I2(datain2[17]),
        .I3(sel[1]),
        .I4(datain0[17]),
        .I5(sel[0]),
        .O(dataout[17]));
  LUT6 #(
    .INIT(64'hAACCAACCF0FFF000)) 
    \dataout[18]_INST_0 
       (.I0(datain3[18]),
        .I1(datain1[18]),
        .I2(datain2[18]),
        .I3(sel[1]),
        .I4(datain0[18]),
        .I5(sel[0]),
        .O(dataout[18]));
  LUT6 #(
    .INIT(64'hAACCAACCF0FFF000)) 
    \dataout[19]_INST_0 
       (.I0(datain3[19]),
        .I1(datain1[19]),
        .I2(datain2[19]),
        .I3(sel[1]),
        .I4(datain0[19]),
        .I5(sel[0]),
        .O(dataout[19]));
  LUT6 #(
    .INIT(64'hAACCAACCF0FFF000)) 
    \dataout[1]_INST_0 
       (.I0(datain3[1]),
        .I1(datain1[1]),
        .I2(datain2[1]),
        .I3(sel[1]),
        .I4(datain0[1]),
        .I5(sel[0]),
        .O(dataout[1]));
  LUT6 #(
    .INIT(64'hAACCAACCF0FFF000)) 
    \dataout[20]_INST_0 
       (.I0(datain3[20]),
        .I1(datain1[20]),
        .I2(datain2[20]),
        .I3(sel[1]),
        .I4(datain0[20]),
        .I5(sel[0]),
        .O(dataout[20]));
  LUT6 #(
    .INIT(64'hAACCAACCF0FFF000)) 
    \dataout[21]_INST_0 
       (.I0(datain3[21]),
        .I1(datain1[21]),
        .I2(datain2[21]),
        .I3(sel[1]),
        .I4(datain0[21]),
        .I5(sel[0]),
        .O(dataout[21]));
  LUT6 #(
    .INIT(64'hAACCAACCF0FFF000)) 
    \dataout[22]_INST_0 
       (.I0(datain3[22]),
        .I1(datain1[22]),
        .I2(datain2[22]),
        .I3(sel[1]),
        .I4(datain0[22]),
        .I5(sel[0]),
        .O(dataout[22]));
  LUT6 #(
    .INIT(64'hAACCAACCF0FFF000)) 
    \dataout[2]_INST_0 
       (.I0(datain3[2]),
        .I1(datain1[2]),
        .I2(datain2[2]),
        .I3(sel[1]),
        .I4(datain0[2]),
        .I5(sel[0]),
        .O(dataout[2]));
  LUT6 #(
    .INIT(64'hAACCAACCF0FFF000)) 
    \dataout[3]_INST_0 
       (.I0(datain3[3]),
        .I1(datain1[3]),
        .I2(datain2[3]),
        .I3(sel[1]),
        .I4(datain0[3]),
        .I5(sel[0]),
        .O(dataout[3]));
  LUT6 #(
    .INIT(64'hAACCAACCF0FFF000)) 
    \dataout[4]_INST_0 
       (.I0(datain3[4]),
        .I1(datain1[4]),
        .I2(datain2[4]),
        .I3(sel[1]),
        .I4(datain0[4]),
        .I5(sel[0]),
        .O(dataout[4]));
  LUT6 #(
    .INIT(64'hAACCAACCF0FFF000)) 
    \dataout[5]_INST_0 
       (.I0(datain3[5]),
        .I1(datain1[5]),
        .I2(datain2[5]),
        .I3(sel[1]),
        .I4(datain0[5]),
        .I5(sel[0]),
        .O(dataout[5]));
  LUT6 #(
    .INIT(64'hAACCAACCF0FFF000)) 
    \dataout[6]_INST_0 
       (.I0(datain3[6]),
        .I1(datain1[6]),
        .I2(datain2[6]),
        .I3(sel[1]),
        .I4(datain0[6]),
        .I5(sel[0]),
        .O(dataout[6]));
  LUT6 #(
    .INIT(64'hAACCAACCF0FFF000)) 
    \dataout[7]_INST_0 
       (.I0(datain3[7]),
        .I1(datain1[7]),
        .I2(datain2[7]),
        .I3(sel[1]),
        .I4(datain0[7]),
        .I5(sel[0]),
        .O(dataout[7]));
  LUT6 #(
    .INIT(64'hAACCAACCF0FFF000)) 
    \dataout[8]_INST_0 
       (.I0(datain3[8]),
        .I1(datain1[8]),
        .I2(datain2[8]),
        .I3(sel[1]),
        .I4(datain0[8]),
        .I5(sel[0]),
        .O(dataout[8]));
  LUT6 #(
    .INIT(64'hAACCAACCF0FFF000)) 
    \dataout[9]_INST_0 
       (.I0(datain3[9]),
        .I1(datain1[9]),
        .I2(datain2[9]),
        .I3(sel[1]),
        .I4(datain0[9]),
        .I5(sel[0]),
        .O(dataout[9]));
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
