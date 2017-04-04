// Copyright 1986-2016 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2016.4 (win64) Build 1756540 Mon Jan 23 19:11:23 MST 2017
// Date        : Mon Apr 03 18:55:13 2017
// Host        : Inator running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ teste_counter_between_0_0_sim_netlist.v
// Design      : teste_counter_between_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a100tcsg324-3
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_counter_between
   (clk,
    count,
    x,
    y);
  input clk;
  output [7:0]count;
  input [7:0]x;
  input [7:0]y;

  wire clk;
  wire [7:0]count;
  wire \count_signal[5]_i_2_n_0 ;
  wire \count_signal[7]_i_2_n_0 ;
  wire \count_signal[7]_i_3_n_0 ;
  wire \count_signal[7]_i_4_n_0 ;
  wire \count_signal[7]_i_5_n_0 ;
  wire [7:0]p_0_in;
  wire [7:0]x;
  wire [7:0]y;

  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT3 #(
    .INIT(8'h8B)) 
    \count_signal[0]_i_1 
       (.I0(x[0]),
        .I1(\count_signal[7]_i_2_n_0 ),
        .I2(count[0]),
        .O(p_0_in[0]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT4 #(
    .INIT(16'h8BB8)) 
    \count_signal[1]_i_1 
       (.I0(x[1]),
        .I1(\count_signal[7]_i_2_n_0 ),
        .I2(count[0]),
        .I3(count[1]),
        .O(p_0_in[1]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h8BBBB888)) 
    \count_signal[2]_i_1 
       (.I0(x[2]),
        .I1(\count_signal[7]_i_2_n_0 ),
        .I2(count[0]),
        .I3(count[1]),
        .I4(count[2]),
        .O(p_0_in[2]));
  LUT6 #(
    .INIT(64'h8BB8B8B8B8B8B8B8)) 
    \count_signal[3]_i_1 
       (.I0(x[3]),
        .I1(\count_signal[7]_i_2_n_0 ),
        .I2(count[3]),
        .I3(count[0]),
        .I4(count[1]),
        .I5(count[2]),
        .O(p_0_in[3]));
  LUT5 #(
    .INIT(32'h8BB8B8B8)) 
    \count_signal[4]_i_1 
       (.I0(x[4]),
        .I1(\count_signal[7]_i_2_n_0 ),
        .I2(count[4]),
        .I3(\count_signal[5]_i_2_n_0 ),
        .I4(count[3]),
        .O(p_0_in[4]));
  LUT6 #(
    .INIT(64'h8BB8B8B8B8B8B8B8)) 
    \count_signal[5]_i_1 
       (.I0(x[5]),
        .I1(\count_signal[7]_i_2_n_0 ),
        .I2(count[5]),
        .I3(count[3]),
        .I4(\count_signal[5]_i_2_n_0 ),
        .I5(count[4]),
        .O(p_0_in[5]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \count_signal[5]_i_2 
       (.I0(count[2]),
        .I1(count[1]),
        .I2(count[0]),
        .O(\count_signal[5]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'h8BB8)) 
    \count_signal[6]_i_1 
       (.I0(x[6]),
        .I1(\count_signal[7]_i_2_n_0 ),
        .I2(count[6]),
        .I3(\count_signal[7]_i_3_n_0 ),
        .O(p_0_in[6]));
  LUT5 #(
    .INIT(32'h8BB8B8B8)) 
    \count_signal[7]_i_1 
       (.I0(x[7]),
        .I1(\count_signal[7]_i_2_n_0 ),
        .I2(count[7]),
        .I3(\count_signal[7]_i_3_n_0 ),
        .I4(count[6]),
        .O(p_0_in[7]));
  LUT6 #(
    .INIT(64'h0000000000009009)) 
    \count_signal[7]_i_2 
       (.I0(count[6]),
        .I1(y[6]),
        .I2(count[7]),
        .I3(y[7]),
        .I4(\count_signal[7]_i_4_n_0 ),
        .I5(\count_signal[7]_i_5_n_0 ),
        .O(\count_signal[7]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    \count_signal[7]_i_3 
       (.I0(count[5]),
        .I1(count[3]),
        .I2(count[0]),
        .I3(count[1]),
        .I4(count[2]),
        .I5(count[4]),
        .O(\count_signal[7]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h6FF6FFFFFFFF6FF6)) 
    \count_signal[7]_i_4 
       (.I0(y[0]),
        .I1(count[0]),
        .I2(count[2]),
        .I3(y[2]),
        .I4(count[1]),
        .I5(y[1]),
        .O(\count_signal[7]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h6FF6FFFFFFFF6FF6)) 
    \count_signal[7]_i_5 
       (.I0(y[3]),
        .I1(count[3]),
        .I2(count[4]),
        .I3(y[4]),
        .I4(count[5]),
        .I5(y[5]),
        .O(\count_signal[7]_i_5_n_0 ));
  FDRE \count_signal_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .D(p_0_in[0]),
        .Q(count[0]),
        .R(1'b0));
  FDRE \count_signal_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .D(p_0_in[1]),
        .Q(count[1]),
        .R(1'b0));
  FDRE \count_signal_reg[2] 
       (.C(clk),
        .CE(1'b1),
        .D(p_0_in[2]),
        .Q(count[2]),
        .R(1'b0));
  FDRE \count_signal_reg[3] 
       (.C(clk),
        .CE(1'b1),
        .D(p_0_in[3]),
        .Q(count[3]),
        .R(1'b0));
  FDRE \count_signal_reg[4] 
       (.C(clk),
        .CE(1'b1),
        .D(p_0_in[4]),
        .Q(count[4]),
        .R(1'b0));
  FDRE \count_signal_reg[5] 
       (.C(clk),
        .CE(1'b1),
        .D(p_0_in[5]),
        .Q(count[5]),
        .R(1'b0));
  FDRE \count_signal_reg[6] 
       (.C(clk),
        .CE(1'b1),
        .D(p_0_in[6]),
        .Q(count[6]),
        .R(1'b0));
  FDRE \count_signal_reg[7] 
       (.C(clk),
        .CE(1'b1),
        .D(p_0_in[7]),
        .Q(count[7]),
        .R(1'b0));
endmodule

(* CHECK_LICENSE_TYPE = "teste_counter_between_0_0,counter_between,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "counter_between,Vivado 2016.4" *) 
(* NotValidForBitStream *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix
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

  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_counter_between U0
       (.clk(clk),
        .count(count),
        .x(x),
        .y(y));
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
