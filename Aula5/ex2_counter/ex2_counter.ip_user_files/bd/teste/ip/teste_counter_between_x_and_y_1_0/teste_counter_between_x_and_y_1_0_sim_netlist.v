// Copyright 1986-2016 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2016.4 (win64) Build 1756540 Mon Jan 23 19:11:23 MST 2017
// Date        : Mon Apr 03 16:56:17 2017
// Host        : Inator running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               c:/Users/jduarte/Documents/GitHub/CR/Aula5/ex2_counter/ex2_counter.srcs/sources_1/bd/teste/ip/teste_counter_between_x_and_y_1_0/teste_counter_between_x_and_y_1_0_sim_netlist.v
// Design      : teste_counter_between_x_and_y_1_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a100tcsg324-3
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "teste_counter_between_x_and_y_1_0,counter_between_x_and_y,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "counter_between_x_and_y,Vivado 2016.4" *) 
(* NotValidForBitStream *)
module teste_counter_between_x_and_y_1_0
   (clk,
    count,
    x,
    y);
  (* x_interface_info = "xilinx.com:signal:clock:1.0 clk CLK" *) input clk;
  output [7:0]count;
  input [7:0]x;
  input [7:0]y;

  wire clk;
  wire [7:0]count;
  wire [7:0]x;
  wire [7:0]y;

  teste_counter_between_x_and_y_1_0_counter_between_x_and_y U0
       (.clk(clk),
        .count(count),
        .x(x),
        .y(y));
endmodule

(* ORIG_REF_NAME = "counter_between_x_and_y" *) 
module teste_counter_between_x_and_y_1_0_counter_between_x_and_y
   (count,
    y,
    clk,
    x);
  output [7:0]count;
  input [7:0]y;
  input clk;
  input [7:0]x;

  wire clk;
  wire [7:0]count;
  wire \count_s[7]_i_1_n_0 ;
  wire \count_s[7]_i_3_n_0 ;
  wire \count_s[7]_i_4_n_0 ;
  wire \count_s[7]_i_5_n_0 ;
  wire [7:0]plusOp;
  wire [7:0]x;
  wire [7:0]y;

  LUT1 #(
    .INIT(2'h1)) 
    \count_s[0]_i_1 
       (.I0(count[0]),
        .O(plusOp[0]));
  LUT2 #(
    .INIT(4'h6)) 
    \count_s[1]_i_1 
       (.I0(count[0]),
        .I1(count[1]),
        .O(plusOp[1]));
  LUT3 #(
    .INIT(8'h78)) 
    \count_s[2]_i_1 
       (.I0(count[0]),
        .I1(count[1]),
        .I2(count[2]),
        .O(plusOp[2]));
  LUT4 #(
    .INIT(16'h7F80)) 
    \count_s[3]_i_1 
       (.I0(count[1]),
        .I1(count[0]),
        .I2(count[2]),
        .I3(count[3]),
        .O(plusOp[3]));
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \count_s[4]_i_1 
       (.I0(count[2]),
        .I1(count[0]),
        .I2(count[1]),
        .I3(count[3]),
        .I4(count[4]),
        .O(plusOp[4]));
  LUT6 #(
    .INIT(64'h7FFFFFFF80000000)) 
    \count_s[5]_i_1 
       (.I0(count[3]),
        .I1(count[1]),
        .I2(count[0]),
        .I3(count[2]),
        .I4(count[4]),
        .I5(count[5]),
        .O(plusOp[5]));
  LUT2 #(
    .INIT(4'h6)) 
    \count_s[6]_i_1 
       (.I0(\count_s[7]_i_5_n_0 ),
        .I1(count[6]),
        .O(plusOp[6]));
  LUT6 #(
    .INIT(64'h6FF6FFFFFFFFFFFF)) 
    \count_s[7]_i_1 
       (.I0(y[7]),
        .I1(count[7]),
        .I2(y[6]),
        .I3(count[6]),
        .I4(\count_s[7]_i_3_n_0 ),
        .I5(\count_s[7]_i_4_n_0 ),
        .O(\count_s[7]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'h78)) 
    \count_s[7]_i_2 
       (.I0(\count_s[7]_i_5_n_0 ),
        .I1(count[6]),
        .I2(count[7]),
        .O(plusOp[7]));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    \count_s[7]_i_3 
       (.I0(count[3]),
        .I1(y[3]),
        .I2(y[5]),
        .I3(count[5]),
        .I4(y[4]),
        .I5(count[4]),
        .O(\count_s[7]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    \count_s[7]_i_4 
       (.I0(count[0]),
        .I1(y[0]),
        .I2(y[2]),
        .I3(count[2]),
        .I4(y[1]),
        .I5(count[1]),
        .O(\count_s[7]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    \count_s[7]_i_5 
       (.I0(count[5]),
        .I1(count[3]),
        .I2(count[1]),
        .I3(count[0]),
        .I4(count[2]),
        .I5(count[4]),
        .O(\count_s[7]_i_5_n_0 ));
  FDRE \count_s_reg[0] 
       (.C(clk),
        .CE(\count_s[7]_i_1_n_0 ),
        .D(plusOp[0]),
        .Q(count[0]),
        .R(1'b0));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \count_s_reg[0]__0 
       (.CLR(1'b0),
        .D(x[0]),
        .G(1'b1),
        .GE(1'b1),
        .Q(count[0]));
  FDRE \count_s_reg[1] 
       (.C(clk),
        .CE(\count_s[7]_i_1_n_0 ),
        .D(plusOp[1]),
        .Q(count[1]),
        .R(1'b0));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \count_s_reg[1]__0 
       (.CLR(1'b0),
        .D(x[1]),
        .G(1'b1),
        .GE(1'b1),
        .Q(count[1]));
  FDRE \count_s_reg[2] 
       (.C(clk),
        .CE(\count_s[7]_i_1_n_0 ),
        .D(plusOp[2]),
        .Q(count[2]),
        .R(1'b0));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \count_s_reg[2]__0 
       (.CLR(1'b0),
        .D(x[2]),
        .G(1'b1),
        .GE(1'b1),
        .Q(count[2]));
  FDRE \count_s_reg[3] 
       (.C(clk),
        .CE(\count_s[7]_i_1_n_0 ),
        .D(plusOp[3]),
        .Q(count[3]),
        .R(1'b0));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \count_s_reg[3]__0 
       (.CLR(1'b0),
        .D(x[3]),
        .G(1'b1),
        .GE(1'b1),
        .Q(count[3]));
  FDRE \count_s_reg[4] 
       (.C(clk),
        .CE(\count_s[7]_i_1_n_0 ),
        .D(plusOp[4]),
        .Q(count[4]),
        .R(1'b0));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \count_s_reg[4]__0 
       (.CLR(1'b0),
        .D(x[4]),
        .G(1'b1),
        .GE(1'b1),
        .Q(count[4]));
  FDRE \count_s_reg[5] 
       (.C(clk),
        .CE(\count_s[7]_i_1_n_0 ),
        .D(plusOp[5]),
        .Q(count[5]),
        .R(1'b0));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \count_s_reg[5]__0 
       (.CLR(1'b0),
        .D(x[5]),
        .G(1'b1),
        .GE(1'b1),
        .Q(count[5]));
  FDRE \count_s_reg[6] 
       (.C(clk),
        .CE(\count_s[7]_i_1_n_0 ),
        .D(plusOp[6]),
        .Q(count[6]),
        .R(1'b0));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \count_s_reg[6]__0 
       (.CLR(1'b0),
        .D(x[6]),
        .G(1'b1),
        .GE(1'b1),
        .Q(count[6]));
  FDRE \count_s_reg[7] 
       (.C(clk),
        .CE(\count_s[7]_i_1_n_0 ),
        .D(plusOp[7]),
        .Q(count[7]),
        .R(1'b0));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \count_s_reg[7]__0 
       (.CLR(1'b0),
        .D(x[7]),
        .G(1'b1),
        .GE(1'b1),
        .Q(count[7]));
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
