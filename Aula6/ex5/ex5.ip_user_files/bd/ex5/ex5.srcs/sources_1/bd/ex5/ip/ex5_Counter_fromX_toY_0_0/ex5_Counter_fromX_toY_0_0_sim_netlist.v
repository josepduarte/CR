// Copyright 1986-2016 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2016.4 (win64) Build 1756540 Mon Jan 23 19:11:23 MST 2017
// Date        : Wed Apr 05 10:15:03 2017
// Host        : Inator running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top ex5_Counter_fromX_toY_0_0 -prefix
//               ex5_Counter_fromX_toY_0_0_ ex5_Counter_fromX_toY_0_0_sim_netlist.v
// Design      : ex5_Counter_fromX_toY_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a100tcsg324-3
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* bits = "4" *) 
module ex5_Counter_fromX_toY_0_0_Counter_fromX_toY
   (clk,
    lower,
    upper,
    count);
  input clk;
  input [3:0]lower;
  input [3:0]upper;
  output [3:0]count;

  wire clk;
  wire [3:0]count;
  wire \count_s[3]_i_2_n_0 ;
  wire \count_s[3]_i_3_n_0 ;
  wire [3:0]lower;
  wire [3:0]p_0_in;
  wire [3:0]upper;

  LUT5 #(
    .INIT(32'h8200BEFF)) 
    \count_s[0]_i_1 
       (.I0(lower[0]),
        .I1(count[3]),
        .I2(upper[3]),
        .I3(\count_s[3]_i_2_n_0 ),
        .I4(count[0]),
        .O(p_0_in[0]));
  LUT6 #(
    .INIT(64'h8200BEFFBEFF8200)) 
    \count_s[1]_i_1 
       (.I0(lower[1]),
        .I1(count[3]),
        .I2(upper[3]),
        .I3(\count_s[3]_i_2_n_0 ),
        .I4(count[0]),
        .I5(count[1]),
        .O(p_0_in[1]));
  LUT6 #(
    .INIT(64'h8200BEFFBEFF8200)) 
    \count_s[2]_i_1 
       (.I0(lower[2]),
        .I1(count[3]),
        .I2(upper[3]),
        .I3(\count_s[3]_i_2_n_0 ),
        .I4(\count_s[3]_i_3_n_0 ),
        .I5(count[2]),
        .O(p_0_in[2]));
  LUT6 #(
    .INIT(64'hB2338ECC8ECC8ECC)) 
    \count_s[3]_i_1 
       (.I0(lower[3]),
        .I1(count[3]),
        .I2(upper[3]),
        .I3(\count_s[3]_i_2_n_0 ),
        .I4(\count_s[3]_i_3_n_0 ),
        .I5(count[2]),
        .O(p_0_in[3]));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    \count_s[3]_i_2 
       (.I0(count[0]),
        .I1(upper[0]),
        .I2(upper[2]),
        .I3(count[2]),
        .I4(upper[1]),
        .I5(count[1]),
        .O(\count_s[3]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \count_s[3]_i_3 
       (.I0(count[1]),
        .I1(count[0]),
        .O(\count_s[3]_i_3_n_0 ));
  FDRE \count_s_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .D(p_0_in[0]),
        .Q(count[0]),
        .R(1'b0));
  FDRE \count_s_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .D(p_0_in[1]),
        .Q(count[1]),
        .R(1'b0));
  FDRE \count_s_reg[2] 
       (.C(clk),
        .CE(1'b1),
        .D(p_0_in[2]),
        .Q(count[2]),
        .R(1'b0));
  FDRE \count_s_reg[3] 
       (.C(clk),
        .CE(1'b1),
        .D(p_0_in[3]),
        .Q(count[3]),
        .R(1'b0));
endmodule

(* CHECK_LICENSE_TYPE = "ex5_Counter_fromX_toY_0_0,Counter_fromX_toY,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "Counter_fromX_toY,Vivado 2016.4" *) 
(* NotValidForBitStream *)
module ex5_Counter_fromX_toY_0_0
   (clk,
    lower,
    upper,
    count);
  (* x_interface_info = "xilinx.com:signal:clock:1.0 clk CLK" *) input clk;
  input [3:0]lower;
  input [3:0]upper;
  output [3:0]count;

  wire clk;
  wire [3:0]count;
  wire [3:0]lower;
  wire [3:0]upper;

  (* bits = "4" *) 
  ex5_Counter_fromX_toY_0_0_Counter_fromX_toY U0
       (.clk(clk),
        .count(count),
        .lower(lower),
        .upper(upper));
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
