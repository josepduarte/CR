// Copyright 1986-2016 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2016.4 (win64) Build 1756540 Mon Jan 23 19:11:23 MST 2017
// Date        : Tue Apr 04 15:12:12 2017
// Host        : Inator running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ ex1_top_CounterGenericNoClk_0_0_sim_netlist.v
// Design      : ex1_top_CounterGenericNoClk_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a100tcsg324-3
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* nr_bits = "4" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_Counter
   (clk,
    reset,
    enable,
    updown_n,
    count);
  input clk;
  input reset;
  input enable;
  input updown_n;
  output [3:0]count;

  wire clk;
  wire [3:0]count;
  wire enable;
  wire reset;
  wire \s_countValue[3]_i_2_n_0 ;
  wire \s_countValue[3]_i_3_n_0 ;
  wire \s_countValue[3]_i_4_n_0 ;
  wire \s_countValue[3]_i_5_n_0 ;
  wire \s_countValue[3]_i_6_n_0 ;
  wire \s_countValue_reg[3]_i_1_n_1 ;
  wire \s_countValue_reg[3]_i_1_n_2 ;
  wire \s_countValue_reg[3]_i_1_n_3 ;
  wire \s_countValue_reg[3]_i_1_n_4 ;
  wire \s_countValue_reg[3]_i_1_n_5 ;
  wire \s_countValue_reg[3]_i_1_n_6 ;
  wire \s_countValue_reg[3]_i_1_n_7 ;
  wire updown_n;
  wire [3:3]\NLW_s_countValue_reg[3]_i_1_CO_UNCONNECTED ;

  LUT1 #(
    .INIT(2'h1)) 
    \s_countValue[3]_i_2 
       (.I0(updown_n),
        .O(\s_countValue[3]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \s_countValue[3]_i_3 
       (.I0(updown_n),
        .I1(count[3]),
        .O(\s_countValue[3]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \s_countValue[3]_i_4 
       (.I0(updown_n),
        .I1(count[2]),
        .O(\s_countValue[3]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \s_countValue[3]_i_5 
       (.I0(updown_n),
        .I1(count[1]),
        .O(\s_countValue[3]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \s_countValue[3]_i_6 
       (.I0(updown_n),
        .I1(count[0]),
        .O(\s_countValue[3]_i_6_n_0 ));
  FDRE \s_countValue_reg[0] 
       (.C(clk),
        .CE(enable),
        .D(\s_countValue_reg[3]_i_1_n_7 ),
        .Q(count[0]),
        .R(reset));
  FDRE \s_countValue_reg[1] 
       (.C(clk),
        .CE(enable),
        .D(\s_countValue_reg[3]_i_1_n_6 ),
        .Q(count[1]),
        .R(reset));
  FDRE \s_countValue_reg[2] 
       (.C(clk),
        .CE(enable),
        .D(\s_countValue_reg[3]_i_1_n_5 ),
        .Q(count[2]),
        .R(reset));
  FDRE \s_countValue_reg[3] 
       (.C(clk),
        .CE(enable),
        .D(\s_countValue_reg[3]_i_1_n_4 ),
        .Q(count[3]),
        .R(reset));
  CARRY4 \s_countValue_reg[3]_i_1 
       (.CI(1'b0),
        .CO({\NLW_s_countValue_reg[3]_i_1_CO_UNCONNECTED [3],\s_countValue_reg[3]_i_1_n_1 ,\s_countValue_reg[3]_i_1_n_2 ,\s_countValue_reg[3]_i_1_n_3 }),
        .CYINIT(\s_countValue[3]_i_2_n_0 ),
        .DI({1'b0,count[2:0]}),
        .O({\s_countValue_reg[3]_i_1_n_4 ,\s_countValue_reg[3]_i_1_n_5 ,\s_countValue_reg[3]_i_1_n_6 ,\s_countValue_reg[3]_i_1_n_7 }),
        .S({\s_countValue[3]_i_3_n_0 ,\s_countValue[3]_i_4_n_0 ,\s_countValue[3]_i_5_n_0 ,\s_countValue[3]_i_6_n_0 }));
endmodule

(* CHECK_LICENSE_TYPE = "ex1_top_CounterGenericNoClk_0_0,Counter,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "Counter,Vivado 2016.4" *) 
(* NotValidForBitStream *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix
   (clk,
    reset,
    enable,
    updown_n,
    count);
  (* x_interface_info = "xilinx.com:signal:clock:1.0 clk CLK" *) input clk;
  (* x_interface_info = "xilinx.com:signal:reset:1.0 reset RST" *) input reset;
  input enable;
  input updown_n;
  output [3:0]count;

  wire clk;
  wire [3:0]count;
  wire enable;
  wire reset;
  wire updown_n;

  (* nr_bits = "4" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_Counter U0
       (.clk(clk),
        .count(count),
        .enable(enable),
        .reset(reset),
        .updown_n(updown_n));
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
