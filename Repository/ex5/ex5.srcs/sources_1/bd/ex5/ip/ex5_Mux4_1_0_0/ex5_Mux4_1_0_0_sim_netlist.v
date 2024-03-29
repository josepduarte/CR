// Copyright 1986-2016 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2016.4 (win64) Build 1756540 Mon Jan 23 19:11:23 MST 2017
// Date        : Wed Apr 05 14:25:13 2017
// Host        : Inator running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               c:/Users/jduarte/Documents/GitHub/CR/Aula6/ex5/ex5.srcs/sources_1/bd/ex5/ip/ex5_Mux4_1_0_0/ex5_Mux4_1_0_0_sim_netlist.v
// Design      : ex5_Mux4_1_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a100tcsg324-3
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "ex5_Mux4_1_0_0,Mux4_1,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "Mux4_1,Vivado 2016.4" *) 
(* NotValidForBitStream *)
module ex5_Mux4_1_0_0
   (datain0,
    datain1,
    datain2,
    datain3,
    sel,
    dataout);
  input [3:0]datain0;
  input [3:0]datain1;
  input [3:0]datain2;
  input [3:0]datain3;
  input [1:0]sel;
  output [3:0]dataout;

  wire [3:0]datain0;
  wire [3:0]datain1;
  wire [3:0]datain2;
  wire [3:0]datain3;
  wire [3:0]dataout;
  wire [1:0]sel;

  ex5_Mux4_1_0_0_Mux4_1 U0
       (.datain0(datain0),
        .datain1(datain1),
        .datain2(datain2),
        .datain3(datain3),
        .dataout(dataout),
        .sel(sel));
endmodule

(* ORIG_REF_NAME = "Mux4_1" *) 
module ex5_Mux4_1_0_0_Mux4_1
   (dataout,
    datain3,
    datain1,
    sel,
    datain2,
    datain0);
  output [3:0]dataout;
  input [3:0]datain3;
  input [3:0]datain1;
  input [1:0]sel;
  input [3:0]datain2;
  input [3:0]datain0;

  wire [3:0]datain0;
  wire [3:0]datain1;
  wire [3:0]datain2;
  wire [3:0]datain3;
  wire [3:0]dataout;
  wire [1:0]sel;

  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \dataout[0]_INST_0 
       (.I0(datain3[0]),
        .I1(datain1[0]),
        .I2(sel[0]),
        .I3(datain2[0]),
        .I4(sel[1]),
        .I5(datain0[0]),
        .O(dataout[0]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \dataout[1]_INST_0 
       (.I0(datain3[1]),
        .I1(datain1[1]),
        .I2(sel[0]),
        .I3(datain2[1]),
        .I4(sel[1]),
        .I5(datain0[1]),
        .O(dataout[1]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \dataout[2]_INST_0 
       (.I0(datain3[2]),
        .I1(datain1[2]),
        .I2(sel[0]),
        .I3(datain2[2]),
        .I4(sel[1]),
        .I5(datain0[2]),
        .O(dataout[2]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \dataout[3]_INST_0 
       (.I0(datain3[3]),
        .I1(datain1[3]),
        .I2(sel[0]),
        .I3(datain2[3]),
        .I4(sel[1]),
        .I5(datain0[3]),
        .O(dataout[3]));
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
