// Copyright 1986-2016 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2016.4 (win64) Build 1756540 Mon Jan 23 19:11:23 MST 2017
// Date        : Tue Apr 04 19:36:34 2017
// Host        : Inator running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               c:/Users/jduarte/Documents/GitHub/CR/Aula6/ex3_chapter2/ex3_chapter2.srcs/sources_1/bd/ex3_top/ip/ex3_top_MaxMinFSM_0_0/ex3_top_MaxMinFSM_0_0_sim_netlist.v
// Design      : ex3_top_MaxMinFSM_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a100tcsg324-3
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "ex3_top_MaxMinFSM_0_0,MaxMinFSM,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "MaxMinFSM,Vivado 2016.4" *) 
(* NotValidForBitStream *)
module ex3_top_MaxMinFSM_0_0
   (clk,
    btn,
    inadd,
    inp,
    outp,
    outadd);
  (* x_interface_info = "xilinx.com:signal:clock:1.0 clk CLK" *) input clk;
  input [3:0]btn;
  input [3:0]inadd;
  input [7:0]inp;
  output [7:0]outp;
  output [3:0]outadd;

  wire [3:0]btn;
  wire clk;
  wire [3:0]inadd;
  wire [7:0]inp;
  wire [3:0]outadd;
  wire [7:0]outp;

  ex3_top_MaxMinFSM_0_0_MaxMinFSM U0
       (.btn(btn[1:0]),
        .clk(clk),
        .inadd(inadd),
        .inp(inp),
        .outadd(outadd),
        .outp(outp));
endmodule

(* ORIG_REF_NAME = "MaxMinFSM" *) 
module ex3_top_MaxMinFSM_0_0_MaxMinFSM
   (outp,
    outadd,
    btn,
    inp,
    clk,
    inadd);
  output [7:0]outp;
  output [3:0]outadd;
  input [1:0]btn;
  input [7:0]inp;
  input clk;
  input [3:0]inadd;

  wire C_S;
  wire C_S_i_1_n_0;
  wire [3:0]ResAddMax;
  wire [3:0]ResAddMin;
  wire [7:0]ResMax;
  wire \ResMax[7]_i_1_n_0 ;
  wire [7:0]ResMin;
  wire \ResMin[7]_i_1_n_0 ;
  wire [1:0]btn;
  wire clk;
  wire [3:0]inadd;
  wire [7:0]inp;
  wire next_ResMax0_carry_i_1_n_0;
  wire next_ResMax0_carry_i_2_n_0;
  wire next_ResMax0_carry_i_3_n_0;
  wire next_ResMax0_carry_i_4_n_0;
  wire next_ResMax0_carry_i_5_n_0;
  wire next_ResMax0_carry_i_6_n_0;
  wire next_ResMax0_carry_i_7_n_0;
  wire next_ResMax0_carry_i_8_n_0;
  wire next_ResMax0_carry_n_0;
  wire next_ResMax0_carry_n_1;
  wire next_ResMax0_carry_n_2;
  wire next_ResMax0_carry_n_3;
  wire next_ResMin0_carry_i_1_n_0;
  wire next_ResMin0_carry_i_2_n_0;
  wire next_ResMin0_carry_i_3_n_0;
  wire next_ResMin0_carry_i_4_n_0;
  wire next_ResMin0_carry_i_5_n_0;
  wire next_ResMin0_carry_i_6_n_0;
  wire next_ResMin0_carry_i_7_n_0;
  wire next_ResMin0_carry_i_8_n_0;
  wire next_ResMin0_carry_n_0;
  wire next_ResMin0_carry_n_1;
  wire next_ResMin0_carry_n_2;
  wire next_ResMin0_carry_n_3;
  wire [3:0]outadd;
  wire \outadd_reg[0]_i_1_n_0 ;
  wire \outadd_reg[1]_i_1_n_0 ;
  wire \outadd_reg[2]_i_1_n_0 ;
  wire \outadd_reg[3]_i_1_n_0 ;
  wire [7:0]outp;
  wire \outp_reg[0]_i_1_n_0 ;
  wire \outp_reg[1]_i_1_n_0 ;
  wire \outp_reg[2]_i_1_n_0 ;
  wire \outp_reg[3]_i_1_n_0 ;
  wire \outp_reg[4]_i_1_n_0 ;
  wire \outp_reg[5]_i_1_n_0 ;
  wire \outp_reg[6]_i_1_n_0 ;
  wire \outp_reg[7]_i_1_n_0 ;
  wire [3:0]NLW_next_ResMax0_carry_O_UNCONNECTED;
  wire [3:0]NLW_next_ResMin0_carry_O_UNCONNECTED;

  LUT6 #(
    .INIT(64'h0000000000008000)) 
    C_S_i_1
       (.I0(inadd[2]),
        .I1(inadd[3]),
        .I2(inadd[0]),
        .I3(inadd[1]),
        .I4(C_S),
        .I5(btn[0]),
        .O(C_S_i_1_n_0));
  FDRE C_S_reg
       (.C(clk),
        .CE(1'b1),
        .D(C_S_i_1_n_0),
        .Q(C_S),
        .R(1'b0));
  FDRE \ResAddMax_reg[0] 
       (.C(clk),
        .CE(\ResMax[7]_i_1_n_0 ),
        .D(inadd[0]),
        .Q(ResAddMax[0]),
        .R(btn[0]));
  FDRE \ResAddMax_reg[1] 
       (.C(clk),
        .CE(\ResMax[7]_i_1_n_0 ),
        .D(inadd[1]),
        .Q(ResAddMax[1]),
        .R(btn[0]));
  FDRE \ResAddMax_reg[2] 
       (.C(clk),
        .CE(\ResMax[7]_i_1_n_0 ),
        .D(inadd[2]),
        .Q(ResAddMax[2]),
        .R(btn[0]));
  FDRE \ResAddMax_reg[3] 
       (.C(clk),
        .CE(\ResMax[7]_i_1_n_0 ),
        .D(inadd[3]),
        .Q(ResAddMax[3]),
        .R(btn[0]));
  FDRE \ResAddMin_reg[0] 
       (.C(clk),
        .CE(\ResMin[7]_i_1_n_0 ),
        .D(inadd[0]),
        .Q(ResAddMin[0]),
        .R(btn[0]));
  FDRE \ResAddMin_reg[1] 
       (.C(clk),
        .CE(\ResMin[7]_i_1_n_0 ),
        .D(inadd[1]),
        .Q(ResAddMin[1]),
        .R(btn[0]));
  FDRE \ResAddMin_reg[2] 
       (.C(clk),
        .CE(\ResMin[7]_i_1_n_0 ),
        .D(inadd[2]),
        .Q(ResAddMin[2]),
        .R(btn[0]));
  FDRE \ResAddMin_reg[3] 
       (.C(clk),
        .CE(\ResMin[7]_i_1_n_0 ),
        .D(inadd[3]),
        .Q(ResAddMin[3]),
        .R(btn[0]));
  LUT2 #(
    .INIT(4'h2)) 
    \ResMax[7]_i_1 
       (.I0(next_ResMax0_carry_n_0),
        .I1(C_S),
        .O(\ResMax[7]_i_1_n_0 ));
  FDRE \ResMax_reg[0] 
       (.C(clk),
        .CE(\ResMax[7]_i_1_n_0 ),
        .D(inp[0]),
        .Q(ResMax[0]),
        .R(btn[0]));
  FDRE \ResMax_reg[1] 
       (.C(clk),
        .CE(\ResMax[7]_i_1_n_0 ),
        .D(inp[1]),
        .Q(ResMax[1]),
        .R(btn[0]));
  FDRE \ResMax_reg[2] 
       (.C(clk),
        .CE(\ResMax[7]_i_1_n_0 ),
        .D(inp[2]),
        .Q(ResMax[2]),
        .R(btn[0]));
  FDRE \ResMax_reg[3] 
       (.C(clk),
        .CE(\ResMax[7]_i_1_n_0 ),
        .D(inp[3]),
        .Q(ResMax[3]),
        .R(btn[0]));
  FDRE \ResMax_reg[4] 
       (.C(clk),
        .CE(\ResMax[7]_i_1_n_0 ),
        .D(inp[4]),
        .Q(ResMax[4]),
        .R(btn[0]));
  FDRE \ResMax_reg[5] 
       (.C(clk),
        .CE(\ResMax[7]_i_1_n_0 ),
        .D(inp[5]),
        .Q(ResMax[5]),
        .R(btn[0]));
  FDRE \ResMax_reg[6] 
       (.C(clk),
        .CE(\ResMax[7]_i_1_n_0 ),
        .D(inp[6]),
        .Q(ResMax[6]),
        .R(btn[0]));
  FDRE \ResMax_reg[7] 
       (.C(clk),
        .CE(\ResMax[7]_i_1_n_0 ),
        .D(inp[7]),
        .Q(ResMax[7]),
        .R(btn[0]));
  LUT3 #(
    .INIT(8'h04)) 
    \ResMin[7]_i_1 
       (.I0(next_ResMax0_carry_n_0),
        .I1(next_ResMin0_carry_n_0),
        .I2(C_S),
        .O(\ResMin[7]_i_1_n_0 ));
  FDSE \ResMin_reg[0] 
       (.C(clk),
        .CE(\ResMin[7]_i_1_n_0 ),
        .D(inp[0]),
        .Q(ResMin[0]),
        .S(btn[0]));
  FDSE \ResMin_reg[1] 
       (.C(clk),
        .CE(\ResMin[7]_i_1_n_0 ),
        .D(inp[1]),
        .Q(ResMin[1]),
        .S(btn[0]));
  FDSE \ResMin_reg[2] 
       (.C(clk),
        .CE(\ResMin[7]_i_1_n_0 ),
        .D(inp[2]),
        .Q(ResMin[2]),
        .S(btn[0]));
  FDSE \ResMin_reg[3] 
       (.C(clk),
        .CE(\ResMin[7]_i_1_n_0 ),
        .D(inp[3]),
        .Q(ResMin[3]),
        .S(btn[0]));
  FDSE \ResMin_reg[4] 
       (.C(clk),
        .CE(\ResMin[7]_i_1_n_0 ),
        .D(inp[4]),
        .Q(ResMin[4]),
        .S(btn[0]));
  FDSE \ResMin_reg[5] 
       (.C(clk),
        .CE(\ResMin[7]_i_1_n_0 ),
        .D(inp[5]),
        .Q(ResMin[5]),
        .S(btn[0]));
  FDSE \ResMin_reg[6] 
       (.C(clk),
        .CE(\ResMin[7]_i_1_n_0 ),
        .D(inp[6]),
        .Q(ResMin[6]),
        .S(btn[0]));
  FDSE \ResMin_reg[7] 
       (.C(clk),
        .CE(\ResMin[7]_i_1_n_0 ),
        .D(inp[7]),
        .Q(ResMin[7]),
        .S(btn[0]));
  CARRY4 next_ResMax0_carry
       (.CI(1'b0),
        .CO({next_ResMax0_carry_n_0,next_ResMax0_carry_n_1,next_ResMax0_carry_n_2,next_ResMax0_carry_n_3}),
        .CYINIT(1'b0),
        .DI({next_ResMax0_carry_i_1_n_0,next_ResMax0_carry_i_2_n_0,next_ResMax0_carry_i_3_n_0,next_ResMax0_carry_i_4_n_0}),
        .O(NLW_next_ResMax0_carry_O_UNCONNECTED[3:0]),
        .S({next_ResMax0_carry_i_5_n_0,next_ResMax0_carry_i_6_n_0,next_ResMax0_carry_i_7_n_0,next_ResMax0_carry_i_8_n_0}));
  LUT4 #(
    .INIT(16'h2F02)) 
    next_ResMax0_carry_i_1
       (.I0(inp[6]),
        .I1(ResMax[6]),
        .I2(ResMax[7]),
        .I3(inp[7]),
        .O(next_ResMax0_carry_i_1_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    next_ResMax0_carry_i_2
       (.I0(inp[4]),
        .I1(ResMax[4]),
        .I2(ResMax[5]),
        .I3(inp[5]),
        .O(next_ResMax0_carry_i_2_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    next_ResMax0_carry_i_3
       (.I0(inp[2]),
        .I1(ResMax[2]),
        .I2(ResMax[3]),
        .I3(inp[3]),
        .O(next_ResMax0_carry_i_3_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    next_ResMax0_carry_i_4
       (.I0(inp[0]),
        .I1(ResMax[0]),
        .I2(ResMax[1]),
        .I3(inp[1]),
        .O(next_ResMax0_carry_i_4_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    next_ResMax0_carry_i_5
       (.I0(inp[6]),
        .I1(ResMax[6]),
        .I2(inp[7]),
        .I3(ResMax[7]),
        .O(next_ResMax0_carry_i_5_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    next_ResMax0_carry_i_6
       (.I0(inp[4]),
        .I1(ResMax[4]),
        .I2(inp[5]),
        .I3(ResMax[5]),
        .O(next_ResMax0_carry_i_6_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    next_ResMax0_carry_i_7
       (.I0(inp[2]),
        .I1(ResMax[2]),
        .I2(inp[3]),
        .I3(ResMax[3]),
        .O(next_ResMax0_carry_i_7_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    next_ResMax0_carry_i_8
       (.I0(inp[0]),
        .I1(ResMax[0]),
        .I2(inp[1]),
        .I3(ResMax[1]),
        .O(next_ResMax0_carry_i_8_n_0));
  CARRY4 next_ResMin0_carry
       (.CI(1'b0),
        .CO({next_ResMin0_carry_n_0,next_ResMin0_carry_n_1,next_ResMin0_carry_n_2,next_ResMin0_carry_n_3}),
        .CYINIT(1'b0),
        .DI({next_ResMin0_carry_i_1_n_0,next_ResMin0_carry_i_2_n_0,next_ResMin0_carry_i_3_n_0,next_ResMin0_carry_i_4_n_0}),
        .O(NLW_next_ResMin0_carry_O_UNCONNECTED[3:0]),
        .S({next_ResMin0_carry_i_5_n_0,next_ResMin0_carry_i_6_n_0,next_ResMin0_carry_i_7_n_0,next_ResMin0_carry_i_8_n_0}));
  LUT4 #(
    .INIT(16'h2F02)) 
    next_ResMin0_carry_i_1
       (.I0(ResMin[6]),
        .I1(inp[6]),
        .I2(inp[7]),
        .I3(ResMin[7]),
        .O(next_ResMin0_carry_i_1_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    next_ResMin0_carry_i_2
       (.I0(ResMin[4]),
        .I1(inp[4]),
        .I2(inp[5]),
        .I3(ResMin[5]),
        .O(next_ResMin0_carry_i_2_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    next_ResMin0_carry_i_3
       (.I0(ResMin[2]),
        .I1(inp[2]),
        .I2(inp[3]),
        .I3(ResMin[3]),
        .O(next_ResMin0_carry_i_3_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    next_ResMin0_carry_i_4
       (.I0(ResMin[0]),
        .I1(inp[0]),
        .I2(inp[1]),
        .I3(ResMin[1]),
        .O(next_ResMin0_carry_i_4_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    next_ResMin0_carry_i_5
       (.I0(ResMin[6]),
        .I1(inp[6]),
        .I2(ResMin[7]),
        .I3(inp[7]),
        .O(next_ResMin0_carry_i_5_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    next_ResMin0_carry_i_6
       (.I0(ResMin[4]),
        .I1(inp[4]),
        .I2(ResMin[5]),
        .I3(inp[5]),
        .O(next_ResMin0_carry_i_6_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    next_ResMin0_carry_i_7
       (.I0(ResMin[2]),
        .I1(inp[2]),
        .I2(ResMin[3]),
        .I3(inp[3]),
        .O(next_ResMin0_carry_i_7_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    next_ResMin0_carry_i_8
       (.I0(ResMin[0]),
        .I1(inp[0]),
        .I2(ResMin[1]),
        .I3(inp[1]),
        .O(next_ResMin0_carry_i_8_n_0));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \outadd_reg[0] 
       (.CLR(1'b0),
        .D(\outadd_reg[0]_i_1_n_0 ),
        .G(C_S),
        .GE(1'b1),
        .Q(outadd[0]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \outadd_reg[0]_i_1 
       (.I0(ResAddMin[0]),
        .I1(btn[1]),
        .I2(ResAddMax[0]),
        .O(\outadd_reg[0]_i_1_n_0 ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \outadd_reg[1] 
       (.CLR(1'b0),
        .D(\outadd_reg[1]_i_1_n_0 ),
        .G(C_S),
        .GE(1'b1),
        .Q(outadd[1]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \outadd_reg[1]_i_1 
       (.I0(ResAddMin[1]),
        .I1(btn[1]),
        .I2(ResAddMax[1]),
        .O(\outadd_reg[1]_i_1_n_0 ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \outadd_reg[2] 
       (.CLR(1'b0),
        .D(\outadd_reg[2]_i_1_n_0 ),
        .G(C_S),
        .GE(1'b1),
        .Q(outadd[2]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \outadd_reg[2]_i_1 
       (.I0(ResAddMin[2]),
        .I1(btn[1]),
        .I2(ResAddMax[2]),
        .O(\outadd_reg[2]_i_1_n_0 ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \outadd_reg[3] 
       (.CLR(1'b0),
        .D(\outadd_reg[3]_i_1_n_0 ),
        .G(C_S),
        .GE(1'b1),
        .Q(outadd[3]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \outadd_reg[3]_i_1 
       (.I0(ResAddMin[3]),
        .I1(btn[1]),
        .I2(ResAddMax[3]),
        .O(\outadd_reg[3]_i_1_n_0 ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \outp_reg[0] 
       (.CLR(1'b0),
        .D(\outp_reg[0]_i_1_n_0 ),
        .G(C_S),
        .GE(1'b1),
        .Q(outp[0]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \outp_reg[0]_i_1 
       (.I0(ResMin[0]),
        .I1(ResMax[0]),
        .I2(btn[1]),
        .O(\outp_reg[0]_i_1_n_0 ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \outp_reg[1] 
       (.CLR(1'b0),
        .D(\outp_reg[1]_i_1_n_0 ),
        .G(C_S),
        .GE(1'b1),
        .Q(outp[1]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \outp_reg[1]_i_1 
       (.I0(ResMin[1]),
        .I1(ResMax[1]),
        .I2(btn[1]),
        .O(\outp_reg[1]_i_1_n_0 ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \outp_reg[2] 
       (.CLR(1'b0),
        .D(\outp_reg[2]_i_1_n_0 ),
        .G(C_S),
        .GE(1'b1),
        .Q(outp[2]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \outp_reg[2]_i_1 
       (.I0(ResMin[2]),
        .I1(ResMax[2]),
        .I2(btn[1]),
        .O(\outp_reg[2]_i_1_n_0 ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \outp_reg[3] 
       (.CLR(1'b0),
        .D(\outp_reg[3]_i_1_n_0 ),
        .G(C_S),
        .GE(1'b1),
        .Q(outp[3]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \outp_reg[3]_i_1 
       (.I0(ResMin[3]),
        .I1(ResMax[3]),
        .I2(btn[1]),
        .O(\outp_reg[3]_i_1_n_0 ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \outp_reg[4] 
       (.CLR(1'b0),
        .D(\outp_reg[4]_i_1_n_0 ),
        .G(C_S),
        .GE(1'b1),
        .Q(outp[4]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \outp_reg[4]_i_1 
       (.I0(ResMin[4]),
        .I1(ResMax[4]),
        .I2(btn[1]),
        .O(\outp_reg[4]_i_1_n_0 ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \outp_reg[5] 
       (.CLR(1'b0),
        .D(\outp_reg[5]_i_1_n_0 ),
        .G(C_S),
        .GE(1'b1),
        .Q(outp[5]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \outp_reg[5]_i_1 
       (.I0(ResMin[5]),
        .I1(ResMax[5]),
        .I2(btn[1]),
        .O(\outp_reg[5]_i_1_n_0 ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \outp_reg[6] 
       (.CLR(1'b0),
        .D(\outp_reg[6]_i_1_n_0 ),
        .G(C_S),
        .GE(1'b1),
        .Q(outp[6]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \outp_reg[6]_i_1 
       (.I0(ResMin[6]),
        .I1(ResMax[6]),
        .I2(btn[1]),
        .O(\outp_reg[6]_i_1_n_0 ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \outp_reg[7] 
       (.CLR(1'b0),
        .D(\outp_reg[7]_i_1_n_0 ),
        .G(C_S),
        .GE(1'b1),
        .Q(outp[7]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \outp_reg[7]_i_1 
       (.I0(ResMin[7]),
        .I1(ResMax[7]),
        .I2(btn[1]),
        .O(\outp_reg[7]_i_1_n_0 ));
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
