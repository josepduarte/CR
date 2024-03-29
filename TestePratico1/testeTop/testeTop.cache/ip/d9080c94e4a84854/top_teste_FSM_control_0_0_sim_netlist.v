// Copyright 1986-2016 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2016.4 (win64) Build 1756540 Mon Jan 23 19:11:23 MST 2017
// Date        : Wed Apr 05 16:34:32 2017
// Host        : Inator running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ top_teste_FSM_control_0_0_sim_netlist.v
// Design      : top_teste_FSM_control_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a100tcsg324-3
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_FSM_control
   (\out_addr[1] ,
    \out_addr[0] ,
    sm_mem,
    LSDdata,
    MSDdata,
    rst,
    clk,
    swi,
    indata);
  output \out_addr[1] ;
  output \out_addr[0] ;
  output [1:0]sm_mem;
  output [3:0]LSDdata;
  output [3:0]MSDdata;
  input rst;
  input clk;
  input [2:0]swi;
  input [31:0]indata;

  wire C_S;
  wire C_S_i_1_n_0;
  wire [3:0]LSDdata;
  wire [3:0]MSDdata;
  wire clk;
  wire [31:0]indata;
  wire \index[0]_i_1_n_0 ;
  wire \index[1]_i_1_n_0 ;
  wire \index_all[0]_i_1_n_0 ;
  wire \index_all[1]_i_1_n_0 ;
  wire \index_all_reg_n_0_[0] ;
  wire \index_all_reg_n_0_[1] ;
  wire \out_addr[0] ;
  wire \out_addr[1] ;
  wire rst;
  wire [1:0]sm_mem;
  wire [2:0]swi;

  LUT2 #(
    .INIT(4'hE)) 
    C_S_i_1
       (.I0(swi[0]),
        .I1(rst),
        .O(C_S_i_1_n_0));
  FDRE C_S_reg
       (.C(clk),
        .CE(1'b1),
        .D(C_S_i_1_n_0),
        .Q(C_S),
        .R(1'b0));
  LUT6 #(
    .INIT(64'hAACCAACCF0FFF000)) 
    \LSDdata[0]_INST_0 
       (.I0(indata[24]),
        .I1(indata[8]),
        .I2(indata[16]),
        .I3(\out_addr[1] ),
        .I4(indata[0]),
        .I5(\out_addr[0] ),
        .O(LSDdata[0]));
  LUT6 #(
    .INIT(64'hAACCAACCF0FFF000)) 
    \LSDdata[1]_INST_0 
       (.I0(indata[25]),
        .I1(indata[9]),
        .I2(indata[17]),
        .I3(\out_addr[1] ),
        .I4(indata[1]),
        .I5(\out_addr[0] ),
        .O(LSDdata[1]));
  LUT6 #(
    .INIT(64'hAACCAACCF0FFF000)) 
    \LSDdata[2]_INST_0 
       (.I0(indata[26]),
        .I1(indata[10]),
        .I2(indata[18]),
        .I3(\out_addr[1] ),
        .I4(indata[2]),
        .I5(\out_addr[0] ),
        .O(LSDdata[2]));
  LUT6 #(
    .INIT(64'hAACCAACCF0FFF000)) 
    \LSDdata[3]_INST_0 
       (.I0(indata[27]),
        .I1(indata[11]),
        .I2(indata[19]),
        .I3(\out_addr[1] ),
        .I4(indata[3]),
        .I5(\out_addr[0] ),
        .O(LSDdata[3]));
  LUT6 #(
    .INIT(64'hAACCAACCF0FFF000)) 
    \MSDdata[0]_INST_0 
       (.I0(indata[28]),
        .I1(indata[12]),
        .I2(indata[20]),
        .I3(\out_addr[1] ),
        .I4(indata[4]),
        .I5(\out_addr[0] ),
        .O(MSDdata[0]));
  LUT6 #(
    .INIT(64'hAACCAACCF0FFF000)) 
    \MSDdata[1]_INST_0 
       (.I0(indata[29]),
        .I1(indata[13]),
        .I2(indata[21]),
        .I3(\out_addr[1] ),
        .I4(indata[5]),
        .I5(\out_addr[0] ),
        .O(MSDdata[1]));
  LUT6 #(
    .INIT(64'hAACCAACCF0FFF000)) 
    \MSDdata[2]_INST_0 
       (.I0(indata[30]),
        .I1(indata[14]),
        .I2(indata[22]),
        .I3(\out_addr[1] ),
        .I4(indata[6]),
        .I5(\out_addr[0] ),
        .O(MSDdata[2]));
  LUT6 #(
    .INIT(64'hAACCAACCF0FFF000)) 
    \MSDdata[3]_INST_0 
       (.I0(indata[31]),
        .I1(indata[15]),
        .I2(indata[23]),
        .I3(\out_addr[1] ),
        .I4(indata[7]),
        .I5(\out_addr[0] ),
        .O(MSDdata[3]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT2 #(
    .INIT(4'h1)) 
    \index[0]_i_1 
       (.I0(\out_addr[0] ),
        .I1(rst),
        .O(\index[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT3 #(
    .INIT(8'h06)) 
    \index[1]_i_1 
       (.I0(\out_addr[1] ),
        .I1(\out_addr[0] ),
        .I2(rst),
        .O(\index[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \index_all[0]_i_1 
       (.I0(C_S),
        .I1(\index_all_reg_n_0_[0] ),
        .O(\index_all[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \index_all[1]_i_1 
       (.I0(\index_all_reg_n_0_[0] ),
        .I1(C_S),
        .I2(\index_all_reg_n_0_[1] ),
        .O(\index_all[1]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \index_all_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .D(\index_all[0]_i_1_n_0 ),
        .Q(\index_all_reg_n_0_[0] ),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \index_all_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .D(\index_all[1]_i_1_n_0 ),
        .Q(\index_all_reg_n_0_[1] ),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \index_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .D(\index[0]_i_1_n_0 ),
        .Q(\out_addr[0] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \index_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .D(\index[1]_i_1_n_0 ),
        .Q(\out_addr[1] ),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \sm_mem[0]_INST_0 
       (.I0(\index_all_reg_n_0_[0] ),
        .I1(C_S),
        .I2(swi[1]),
        .O(sm_mem[0]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \sm_mem[1]_INST_0 
       (.I0(\index_all_reg_n_0_[1] ),
        .I1(C_S),
        .I2(swi[2]),
        .O(sm_mem[1]));
endmodule

(* CHECK_LICENSE_TYPE = "top_teste_FSM_control_0_0,FSM_control,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "FSM_control,Vivado 2016.4" *) 
(* NotValidForBitStream *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix
   (clk,
    rst,
    swi,
    indata,
    sm_mem,
    out_addr,
    MSDdata,
    LSDdata);
  (* x_interface_info = "xilinx.com:signal:clock:1.0 clk CLK" *) input clk;
  (* x_interface_info = "xilinx.com:signal:reset:1.0 rst RST" *) input rst;
  input [2:0]swi;
  input [31:0]indata;
  output [1:0]sm_mem;
  output [1:0]out_addr;
  output [3:0]MSDdata;
  output [3:0]LSDdata;

  wire [3:0]LSDdata;
  wire [3:0]MSDdata;
  wire clk;
  wire [31:0]indata;
  wire [1:0]out_addr;
  wire rst;
  wire [1:0]sm_mem;
  wire [2:0]swi;

  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_FSM_control U0
       (.LSDdata(LSDdata),
        .MSDdata(MSDdata),
        .clk(clk),
        .indata(indata),
        .\out_addr[0] (out_addr[0]),
        .\out_addr[1] (out_addr[1]),
        .rst(rst),
        .sm_mem(sm_mem),
        .swi(swi));
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
