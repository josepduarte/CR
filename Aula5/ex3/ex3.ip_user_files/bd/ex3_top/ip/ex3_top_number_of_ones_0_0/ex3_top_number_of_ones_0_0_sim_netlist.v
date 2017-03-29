// Copyright 1986-2016 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2016.4 (win64) Build 1756540 Mon Jan 23 19:11:23 MST 2017
// Date        : Wed Mar 29 21:27:26 2017
// Host        : Inator running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               c:/Users/jduarte/Documents/GitHub/CR/Aula5/ex3/ex3.srcs/sources_1/bd/ex3_top/ip/ex3_top_number_of_ones_0_0/ex3_top_number_of_ones_0_0_sim_netlist.v
// Design      : ex3_top_number_of_ones_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a100tcsg324-3
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "ex3_top_number_of_ones_0_0,number_of_ones,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "number_of_ones,Vivado 2016.4" *) 
(* NotValidForBitStream *)
module ex3_top_number_of_ones_0_0
   (clk,
    reset,
    datain,
    result);
  (* x_interface_info = "xilinx.com:signal:clock:1.0 clk CLK" *) input clk;
  (* x_interface_info = "xilinx.com:signal:reset:1.0 reset RST" *) input reset;
  input [15:0]datain;
  output [3:0]result;

  wire clk;
  wire [15:0]datain;
  wire reset;
  wire [3:0]result;

  (* number_of_bits_input = "16" *) 
  (* number_of_bits_output = "4" *) 
  ex3_top_number_of_ones_0_0_number_of_ones U0
       (.clk(clk),
        .datain(datain),
        .reset(reset),
        .result(result));
endmodule

(* ORIG_REF_NAME = "number_of_ones" *) (* number_of_bits_input = "16" *) (* number_of_bits_output = "4" *) 
module ex3_top_number_of_ones_0_0_number_of_ones
   (clk,
    reset,
    datain,
    result);
  input clk;
  input reset;
  input [15:0]datain;
  output [3:0]result;

  wire Current_State;
  wire Current_State_i_1_n_0;
  wire clk;
  wire [15:0]datain;
  wire \index[2]_i_1_n_0 ;
  wire [3:0]index_reg__0;
  wire nr_of_ones;
  wire \nr_of_ones[3]_i_5_n_0 ;
  wire \nr_of_ones[3]_i_6_n_0 ;
  wire \nr_of_ones[3]_i_7_n_0 ;
  wire \nr_of_ones[3]_i_8_n_0 ;
  wire \nr_of_ones_reg[3]_i_2_n_0 ;
  wire \nr_of_ones_reg[3]_i_3_n_0 ;
  wire \nr_of_ones_reg[3]_i_4_n_0 ;
  wire [3:0]nr_of_ones_reg__0;
  wire [3:0]p_0_in;
  wire [3:0]p_0_in__0;
  wire reset;
  wire [3:0]result;

  LUT6 #(
    .INIT(64'h0000000000008000)) 
    Current_State_i_1
       (.I0(index_reg__0[2]),
        .I1(index_reg__0[3]),
        .I2(index_reg__0[0]),
        .I3(index_reg__0[1]),
        .I4(Current_State),
        .I5(reset),
        .O(Current_State_i_1_n_0));
  FDRE Current_State_reg
       (.C(clk),
        .CE(1'b1),
        .D(Current_State_i_1_n_0),
        .Q(Current_State),
        .R(1'b0));
  FDRE \Res_reg[0] 
       (.C(clk),
        .CE(Current_State),
        .D(nr_of_ones_reg__0[0]),
        .Q(result[0]),
        .R(reset));
  FDRE \Res_reg[1] 
       (.C(clk),
        .CE(Current_State),
        .D(nr_of_ones_reg__0[1]),
        .Q(result[1]),
        .R(reset));
  FDRE \Res_reg[2] 
       (.C(clk),
        .CE(Current_State),
        .D(nr_of_ones_reg__0[2]),
        .Q(result[2]),
        .R(reset));
  FDRE \Res_reg[3] 
       (.C(clk),
        .CE(Current_State),
        .D(nr_of_ones_reg__0[3]),
        .Q(result[3]),
        .R(reset));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \index[0]_i_1 
       (.I0(index_reg__0[0]),
        .O(p_0_in[0]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \index[1]_i_1 
       (.I0(index_reg__0[0]),
        .I1(index_reg__0[1]),
        .O(p_0_in[1]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \index[2]_i_1 
       (.I0(index_reg__0[0]),
        .I1(index_reg__0[1]),
        .I2(index_reg__0[2]),
        .O(\index[2]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \index[3]_i_1 
       (.I0(reset),
        .I1(Current_State),
        .O(nr_of_ones));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \index[3]_i_2 
       (.I0(index_reg__0[1]),
        .I1(index_reg__0[0]),
        .I2(index_reg__0[2]),
        .I3(index_reg__0[3]),
        .O(p_0_in[3]));
  FDRE \index_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .D(p_0_in[0]),
        .Q(index_reg__0[0]),
        .R(nr_of_ones));
  FDRE \index_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .D(p_0_in[1]),
        .Q(index_reg__0[1]),
        .R(nr_of_ones));
  FDRE \index_reg[2] 
       (.C(clk),
        .CE(1'b1),
        .D(\index[2]_i_1_n_0 ),
        .Q(index_reg__0[2]),
        .R(nr_of_ones));
  FDRE \index_reg[3] 
       (.C(clk),
        .CE(1'b1),
        .D(p_0_in[3]),
        .Q(index_reg__0[3]),
        .R(nr_of_ones));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \nr_of_ones[0]_i_1 
       (.I0(nr_of_ones_reg__0[0]),
        .I1(\nr_of_ones_reg[3]_i_2_n_0 ),
        .O(p_0_in__0[0]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \nr_of_ones[1]_i_1 
       (.I0(nr_of_ones_reg__0[0]),
        .I1(\nr_of_ones_reg[3]_i_2_n_0 ),
        .I2(nr_of_ones_reg__0[1]),
        .O(p_0_in__0[1]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \nr_of_ones[2]_i_1 
       (.I0(\nr_of_ones_reg[3]_i_2_n_0 ),
        .I1(nr_of_ones_reg__0[0]),
        .I2(nr_of_ones_reg__0[1]),
        .I3(nr_of_ones_reg__0[2]),
        .O(p_0_in__0[2]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \nr_of_ones[3]_i_1 
       (.I0(nr_of_ones_reg__0[1]),
        .I1(nr_of_ones_reg__0[0]),
        .I2(\nr_of_ones_reg[3]_i_2_n_0 ),
        .I3(nr_of_ones_reg__0[2]),
        .I4(nr_of_ones_reg__0[3]),
        .O(p_0_in__0[3]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \nr_of_ones[3]_i_5 
       (.I0(datain[3]),
        .I1(datain[2]),
        .I2(index_reg__0[1]),
        .I3(datain[1]),
        .I4(index_reg__0[0]),
        .I5(datain[0]),
        .O(\nr_of_ones[3]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \nr_of_ones[3]_i_6 
       (.I0(datain[7]),
        .I1(datain[6]),
        .I2(index_reg__0[1]),
        .I3(datain[5]),
        .I4(index_reg__0[0]),
        .I5(datain[4]),
        .O(\nr_of_ones[3]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \nr_of_ones[3]_i_7 
       (.I0(datain[11]),
        .I1(datain[10]),
        .I2(index_reg__0[1]),
        .I3(datain[9]),
        .I4(index_reg__0[0]),
        .I5(datain[8]),
        .O(\nr_of_ones[3]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \nr_of_ones[3]_i_8 
       (.I0(datain[15]),
        .I1(datain[14]),
        .I2(index_reg__0[1]),
        .I3(datain[13]),
        .I4(index_reg__0[0]),
        .I5(datain[12]),
        .O(\nr_of_ones[3]_i_8_n_0 ));
  FDRE \nr_of_ones_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .D(p_0_in__0[0]),
        .Q(nr_of_ones_reg__0[0]),
        .R(nr_of_ones));
  FDRE \nr_of_ones_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .D(p_0_in__0[1]),
        .Q(nr_of_ones_reg__0[1]),
        .R(nr_of_ones));
  FDRE \nr_of_ones_reg[2] 
       (.C(clk),
        .CE(1'b1),
        .D(p_0_in__0[2]),
        .Q(nr_of_ones_reg__0[2]),
        .R(nr_of_ones));
  FDRE \nr_of_ones_reg[3] 
       (.C(clk),
        .CE(1'b1),
        .D(p_0_in__0[3]),
        .Q(nr_of_ones_reg__0[3]),
        .R(nr_of_ones));
  MUXF8 \nr_of_ones_reg[3]_i_2 
       (.I0(\nr_of_ones_reg[3]_i_3_n_0 ),
        .I1(\nr_of_ones_reg[3]_i_4_n_0 ),
        .O(\nr_of_ones_reg[3]_i_2_n_0 ),
        .S(index_reg__0[3]));
  MUXF7 \nr_of_ones_reg[3]_i_3 
       (.I0(\nr_of_ones[3]_i_5_n_0 ),
        .I1(\nr_of_ones[3]_i_6_n_0 ),
        .O(\nr_of_ones_reg[3]_i_3_n_0 ),
        .S(index_reg__0[2]));
  MUXF7 \nr_of_ones_reg[3]_i_4 
       (.I0(\nr_of_ones[3]_i_7_n_0 ),
        .I1(\nr_of_ones[3]_i_8_n_0 ),
        .O(\nr_of_ones_reg[3]_i_4_n_0 ),
        .S(index_reg__0[2]));
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
