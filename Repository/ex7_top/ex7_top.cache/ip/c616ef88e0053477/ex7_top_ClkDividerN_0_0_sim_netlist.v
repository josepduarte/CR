// Copyright 1986-2016 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2016.4 (win64) Build 1756540 Mon Jan 23 19:11:23 MST 2017
// Date        : Tue Apr 04 23:18:32 2017
// Host        : Inator running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ ex7_top_ClkDividerN_0_0_sim_netlist.v
// Design      : ex7_top_ClkDividerN_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a100tcsg324-3
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ClkDividerN
   (clkOut,
    clkIn,
    reset);
  output clkOut;
  input clkIn;
  input reset;

  wire clkIn;
  wire clkOut;
  wire clkOut_i_10_n_0;
  wire clkOut_i_11_n_0;
  wire clkOut_i_1_n_0;
  wire clkOut_i_2_n_0;
  wire clkOut_i_3_n_0;
  wire clkOut_i_4_n_0;
  wire clkOut_i_5_n_0;
  wire clkOut_i_6_n_0;
  wire clkOut_i_7_n_0;
  wire clkOut_i_8_n_0;
  wire clkOut_i_9_n_0;
  wire [30:1]data0;
  wire reset;
  wire [30:0]s_divCounter;
  wire s_divCounter0_carry__0_i_1_n_0;
  wire s_divCounter0_carry__0_i_2_n_0;
  wire s_divCounter0_carry__0_i_3_n_0;
  wire s_divCounter0_carry__0_i_4_n_0;
  wire s_divCounter0_carry__0_n_0;
  wire s_divCounter0_carry__0_n_1;
  wire s_divCounter0_carry__0_n_2;
  wire s_divCounter0_carry__0_n_3;
  wire s_divCounter0_carry__1_i_1_n_0;
  wire s_divCounter0_carry__1_i_2_n_0;
  wire s_divCounter0_carry__1_i_3_n_0;
  wire s_divCounter0_carry__1_i_4_n_0;
  wire s_divCounter0_carry__1_n_0;
  wire s_divCounter0_carry__1_n_1;
  wire s_divCounter0_carry__1_n_2;
  wire s_divCounter0_carry__1_n_3;
  wire s_divCounter0_carry__2_i_1_n_0;
  wire s_divCounter0_carry__2_i_2_n_0;
  wire s_divCounter0_carry__2_i_3_n_0;
  wire s_divCounter0_carry__2_i_4_n_0;
  wire s_divCounter0_carry__2_n_0;
  wire s_divCounter0_carry__2_n_1;
  wire s_divCounter0_carry__2_n_2;
  wire s_divCounter0_carry__2_n_3;
  wire s_divCounter0_carry__3_i_1_n_0;
  wire s_divCounter0_carry__3_i_2_n_0;
  wire s_divCounter0_carry__3_i_3_n_0;
  wire s_divCounter0_carry__3_i_4_n_0;
  wire s_divCounter0_carry__3_n_0;
  wire s_divCounter0_carry__3_n_1;
  wire s_divCounter0_carry__3_n_2;
  wire s_divCounter0_carry__3_n_3;
  wire s_divCounter0_carry__4_i_1_n_0;
  wire s_divCounter0_carry__4_i_2_n_0;
  wire s_divCounter0_carry__4_i_3_n_0;
  wire s_divCounter0_carry__4_i_4_n_0;
  wire s_divCounter0_carry__4_n_0;
  wire s_divCounter0_carry__4_n_1;
  wire s_divCounter0_carry__4_n_2;
  wire s_divCounter0_carry__4_n_3;
  wire s_divCounter0_carry__5_i_1_n_0;
  wire s_divCounter0_carry__5_i_2_n_0;
  wire s_divCounter0_carry__5_i_3_n_0;
  wire s_divCounter0_carry__5_i_4_n_0;
  wire s_divCounter0_carry__5_n_0;
  wire s_divCounter0_carry__5_n_1;
  wire s_divCounter0_carry__5_n_2;
  wire s_divCounter0_carry__5_n_3;
  wire s_divCounter0_carry__6_i_1_n_0;
  wire s_divCounter0_carry__6_i_2_n_0;
  wire s_divCounter0_carry__6_n_3;
  wire s_divCounter0_carry_i_1_n_0;
  wire s_divCounter0_carry_i_2_n_0;
  wire s_divCounter0_carry_i_3_n_0;
  wire s_divCounter0_carry_i_4_n_0;
  wire s_divCounter0_carry_n_0;
  wire s_divCounter0_carry_n_1;
  wire s_divCounter0_carry_n_2;
  wire s_divCounter0_carry_n_3;
  wire [30:0]s_divCounter_0;
  wire [3:1]NLW_s_divCounter0_carry__6_CO_UNCONNECTED;
  wire [3:2]NLW_s_divCounter0_carry__6_O_UNCONNECTED;

  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT4 #(
    .INIT(16'hFC20)) 
    clkOut_i_1
       (.I0(clkOut_i_2_n_0),
        .I1(clkOut_i_3_n_0),
        .I2(clkOut_i_4_n_0),
        .I3(clkOut),
        .O(clkOut_i_1_n_0));
  LUT4 #(
    .INIT(16'h7FFF)) 
    clkOut_i_10
       (.I0(s_divCounter[3]),
        .I1(s_divCounter[2]),
        .I2(s_divCounter[5]),
        .I3(s_divCounter[4]),
        .O(clkOut_i_10_n_0));
  LUT5 #(
    .INIT(32'hFFFFDFFF)) 
    clkOut_i_11
       (.I0(s_divCounter[7]),
        .I1(s_divCounter[25]),
        .I2(s_divCounter[26]),
        .I3(s_divCounter[16]),
        .I4(s_divCounter[12]),
        .O(clkOut_i_11_n_0));
  LUT4 #(
    .INIT(16'h0400)) 
    clkOut_i_2
       (.I0(s_divCounter[7]),
        .I1(s_divCounter[12]),
        .I2(s_divCounter[16]),
        .I3(clkOut_i_5_n_0),
        .O(clkOut_i_2_n_0));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    clkOut_i_3
       (.I0(clkOut_i_6_n_0),
        .I1(clkOut_i_7_n_0),
        .I2(clkOut_i_8_n_0),
        .I3(clkOut_i_9_n_0),
        .I4(clkOut_i_10_n_0),
        .O(clkOut_i_3_n_0));
  LUT5 #(
    .INIT(32'hFFEFFFFF)) 
    clkOut_i_4
       (.I0(clkOut_i_11_n_0),
        .I1(s_divCounter[19]),
        .I2(s_divCounter[24]),
        .I3(s_divCounter[17]),
        .I4(s_divCounter[18]),
        .O(clkOut_i_4_n_0));
  LUT6 #(
    .INIT(64'h0000002000000000)) 
    clkOut_i_5
       (.I0(s_divCounter[19]),
        .I1(s_divCounter[24]),
        .I2(s_divCounter[17]),
        .I3(s_divCounter[18]),
        .I4(s_divCounter[26]),
        .I5(s_divCounter[25]),
        .O(clkOut_i_5_n_0));
  LUT6 #(
    .INIT(64'hFFFEFFFFFFFFFFFF)) 
    clkOut_i_6
       (.I0(s_divCounter[29]),
        .I1(s_divCounter[30]),
        .I2(s_divCounter[27]),
        .I3(s_divCounter[28]),
        .I4(s_divCounter[1]),
        .I5(s_divCounter[0]),
        .O(clkOut_i_6_n_0));
  LUT4 #(
    .INIT(16'hDFFF)) 
    clkOut_i_7
       (.I0(s_divCounter[13]),
        .I1(s_divCounter[11]),
        .I2(s_divCounter[15]),
        .I3(s_divCounter[14]),
        .O(clkOut_i_7_n_0));
  LUT4 #(
    .INIT(16'h7FFF)) 
    clkOut_i_8
       (.I0(s_divCounter[21]),
        .I1(s_divCounter[20]),
        .I2(s_divCounter[23]),
        .I3(s_divCounter[22]),
        .O(clkOut_i_8_n_0));
  LUT4 #(
    .INIT(16'hFFFD)) 
    clkOut_i_9
       (.I0(s_divCounter[6]),
        .I1(s_divCounter[8]),
        .I2(s_divCounter[10]),
        .I3(s_divCounter[9]),
        .O(clkOut_i_9_n_0));
  FDCE clkOut_reg
       (.C(clkIn),
        .CE(1'b1),
        .CLR(reset),
        .D(clkOut_i_1_n_0),
        .Q(clkOut));
  CARRY4 s_divCounter0_carry
       (.CI(1'b0),
        .CO({s_divCounter0_carry_n_0,s_divCounter0_carry_n_1,s_divCounter0_carry_n_2,s_divCounter0_carry_n_3}),
        .CYINIT(s_divCounter[0]),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(data0[4:1]),
        .S({s_divCounter0_carry_i_1_n_0,s_divCounter0_carry_i_2_n_0,s_divCounter0_carry_i_3_n_0,s_divCounter0_carry_i_4_n_0}));
  CARRY4 s_divCounter0_carry__0
       (.CI(s_divCounter0_carry_n_0),
        .CO({s_divCounter0_carry__0_n_0,s_divCounter0_carry__0_n_1,s_divCounter0_carry__0_n_2,s_divCounter0_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(data0[8:5]),
        .S({s_divCounter0_carry__0_i_1_n_0,s_divCounter0_carry__0_i_2_n_0,s_divCounter0_carry__0_i_3_n_0,s_divCounter0_carry__0_i_4_n_0}));
  LUT1 #(
    .INIT(2'h2)) 
    s_divCounter0_carry__0_i_1
       (.I0(s_divCounter[8]),
        .O(s_divCounter0_carry__0_i_1_n_0));
  LUT1 #(
    .INIT(2'h2)) 
    s_divCounter0_carry__0_i_2
       (.I0(s_divCounter[7]),
        .O(s_divCounter0_carry__0_i_2_n_0));
  LUT1 #(
    .INIT(2'h2)) 
    s_divCounter0_carry__0_i_3
       (.I0(s_divCounter[6]),
        .O(s_divCounter0_carry__0_i_3_n_0));
  LUT1 #(
    .INIT(2'h2)) 
    s_divCounter0_carry__0_i_4
       (.I0(s_divCounter[5]),
        .O(s_divCounter0_carry__0_i_4_n_0));
  CARRY4 s_divCounter0_carry__1
       (.CI(s_divCounter0_carry__0_n_0),
        .CO({s_divCounter0_carry__1_n_0,s_divCounter0_carry__1_n_1,s_divCounter0_carry__1_n_2,s_divCounter0_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(data0[12:9]),
        .S({s_divCounter0_carry__1_i_1_n_0,s_divCounter0_carry__1_i_2_n_0,s_divCounter0_carry__1_i_3_n_0,s_divCounter0_carry__1_i_4_n_0}));
  LUT1 #(
    .INIT(2'h2)) 
    s_divCounter0_carry__1_i_1
       (.I0(s_divCounter[12]),
        .O(s_divCounter0_carry__1_i_1_n_0));
  LUT1 #(
    .INIT(2'h2)) 
    s_divCounter0_carry__1_i_2
       (.I0(s_divCounter[11]),
        .O(s_divCounter0_carry__1_i_2_n_0));
  LUT1 #(
    .INIT(2'h2)) 
    s_divCounter0_carry__1_i_3
       (.I0(s_divCounter[10]),
        .O(s_divCounter0_carry__1_i_3_n_0));
  LUT1 #(
    .INIT(2'h2)) 
    s_divCounter0_carry__1_i_4
       (.I0(s_divCounter[9]),
        .O(s_divCounter0_carry__1_i_4_n_0));
  CARRY4 s_divCounter0_carry__2
       (.CI(s_divCounter0_carry__1_n_0),
        .CO({s_divCounter0_carry__2_n_0,s_divCounter0_carry__2_n_1,s_divCounter0_carry__2_n_2,s_divCounter0_carry__2_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(data0[16:13]),
        .S({s_divCounter0_carry__2_i_1_n_0,s_divCounter0_carry__2_i_2_n_0,s_divCounter0_carry__2_i_3_n_0,s_divCounter0_carry__2_i_4_n_0}));
  LUT1 #(
    .INIT(2'h2)) 
    s_divCounter0_carry__2_i_1
       (.I0(s_divCounter[16]),
        .O(s_divCounter0_carry__2_i_1_n_0));
  LUT1 #(
    .INIT(2'h2)) 
    s_divCounter0_carry__2_i_2
       (.I0(s_divCounter[15]),
        .O(s_divCounter0_carry__2_i_2_n_0));
  LUT1 #(
    .INIT(2'h2)) 
    s_divCounter0_carry__2_i_3
       (.I0(s_divCounter[14]),
        .O(s_divCounter0_carry__2_i_3_n_0));
  LUT1 #(
    .INIT(2'h2)) 
    s_divCounter0_carry__2_i_4
       (.I0(s_divCounter[13]),
        .O(s_divCounter0_carry__2_i_4_n_0));
  CARRY4 s_divCounter0_carry__3
       (.CI(s_divCounter0_carry__2_n_0),
        .CO({s_divCounter0_carry__3_n_0,s_divCounter0_carry__3_n_1,s_divCounter0_carry__3_n_2,s_divCounter0_carry__3_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(data0[20:17]),
        .S({s_divCounter0_carry__3_i_1_n_0,s_divCounter0_carry__3_i_2_n_0,s_divCounter0_carry__3_i_3_n_0,s_divCounter0_carry__3_i_4_n_0}));
  LUT1 #(
    .INIT(2'h2)) 
    s_divCounter0_carry__3_i_1
       (.I0(s_divCounter[20]),
        .O(s_divCounter0_carry__3_i_1_n_0));
  LUT1 #(
    .INIT(2'h2)) 
    s_divCounter0_carry__3_i_2
       (.I0(s_divCounter[19]),
        .O(s_divCounter0_carry__3_i_2_n_0));
  LUT1 #(
    .INIT(2'h2)) 
    s_divCounter0_carry__3_i_3
       (.I0(s_divCounter[18]),
        .O(s_divCounter0_carry__3_i_3_n_0));
  LUT1 #(
    .INIT(2'h2)) 
    s_divCounter0_carry__3_i_4
       (.I0(s_divCounter[17]),
        .O(s_divCounter0_carry__3_i_4_n_0));
  CARRY4 s_divCounter0_carry__4
       (.CI(s_divCounter0_carry__3_n_0),
        .CO({s_divCounter0_carry__4_n_0,s_divCounter0_carry__4_n_1,s_divCounter0_carry__4_n_2,s_divCounter0_carry__4_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(data0[24:21]),
        .S({s_divCounter0_carry__4_i_1_n_0,s_divCounter0_carry__4_i_2_n_0,s_divCounter0_carry__4_i_3_n_0,s_divCounter0_carry__4_i_4_n_0}));
  LUT1 #(
    .INIT(2'h2)) 
    s_divCounter0_carry__4_i_1
       (.I0(s_divCounter[24]),
        .O(s_divCounter0_carry__4_i_1_n_0));
  LUT1 #(
    .INIT(2'h2)) 
    s_divCounter0_carry__4_i_2
       (.I0(s_divCounter[23]),
        .O(s_divCounter0_carry__4_i_2_n_0));
  LUT1 #(
    .INIT(2'h2)) 
    s_divCounter0_carry__4_i_3
       (.I0(s_divCounter[22]),
        .O(s_divCounter0_carry__4_i_3_n_0));
  LUT1 #(
    .INIT(2'h2)) 
    s_divCounter0_carry__4_i_4
       (.I0(s_divCounter[21]),
        .O(s_divCounter0_carry__4_i_4_n_0));
  CARRY4 s_divCounter0_carry__5
       (.CI(s_divCounter0_carry__4_n_0),
        .CO({s_divCounter0_carry__5_n_0,s_divCounter0_carry__5_n_1,s_divCounter0_carry__5_n_2,s_divCounter0_carry__5_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(data0[28:25]),
        .S({s_divCounter0_carry__5_i_1_n_0,s_divCounter0_carry__5_i_2_n_0,s_divCounter0_carry__5_i_3_n_0,s_divCounter0_carry__5_i_4_n_0}));
  LUT1 #(
    .INIT(2'h2)) 
    s_divCounter0_carry__5_i_1
       (.I0(s_divCounter[28]),
        .O(s_divCounter0_carry__5_i_1_n_0));
  LUT1 #(
    .INIT(2'h2)) 
    s_divCounter0_carry__5_i_2
       (.I0(s_divCounter[27]),
        .O(s_divCounter0_carry__5_i_2_n_0));
  LUT1 #(
    .INIT(2'h2)) 
    s_divCounter0_carry__5_i_3
       (.I0(s_divCounter[26]),
        .O(s_divCounter0_carry__5_i_3_n_0));
  LUT1 #(
    .INIT(2'h2)) 
    s_divCounter0_carry__5_i_4
       (.I0(s_divCounter[25]),
        .O(s_divCounter0_carry__5_i_4_n_0));
  CARRY4 s_divCounter0_carry__6
       (.CI(s_divCounter0_carry__5_n_0),
        .CO({NLW_s_divCounter0_carry__6_CO_UNCONNECTED[3:1],s_divCounter0_carry__6_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({NLW_s_divCounter0_carry__6_O_UNCONNECTED[3:2],data0[30:29]}),
        .S({1'b0,1'b0,s_divCounter0_carry__6_i_1_n_0,s_divCounter0_carry__6_i_2_n_0}));
  LUT1 #(
    .INIT(2'h2)) 
    s_divCounter0_carry__6_i_1
       (.I0(s_divCounter[30]),
        .O(s_divCounter0_carry__6_i_1_n_0));
  LUT1 #(
    .INIT(2'h2)) 
    s_divCounter0_carry__6_i_2
       (.I0(s_divCounter[29]),
        .O(s_divCounter0_carry__6_i_2_n_0));
  LUT1 #(
    .INIT(2'h2)) 
    s_divCounter0_carry_i_1
       (.I0(s_divCounter[4]),
        .O(s_divCounter0_carry_i_1_n_0));
  LUT1 #(
    .INIT(2'h2)) 
    s_divCounter0_carry_i_2
       (.I0(s_divCounter[3]),
        .O(s_divCounter0_carry_i_2_n_0));
  LUT1 #(
    .INIT(2'h2)) 
    s_divCounter0_carry_i_3
       (.I0(s_divCounter[2]),
        .O(s_divCounter0_carry_i_3_n_0));
  LUT1 #(
    .INIT(2'h2)) 
    s_divCounter0_carry_i_4
       (.I0(s_divCounter[1]),
        .O(s_divCounter0_carry_i_4_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    \s_divCounter[0]_i_1 
       (.I0(s_divCounter[0]),
        .O(s_divCounter_0[0]));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT3 #(
    .INIT(8'hE0)) 
    \s_divCounter[10]_i_1 
       (.I0(clkOut_i_3_n_0),
        .I1(clkOut_i_4_n_0),
        .I2(data0[10]),
        .O(s_divCounter_0[10]));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT3 #(
    .INIT(8'hE0)) 
    \s_divCounter[11]_i_1 
       (.I0(clkOut_i_3_n_0),
        .I1(clkOut_i_4_n_0),
        .I2(data0[11]),
        .O(s_divCounter_0[11]));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT3 #(
    .INIT(8'hE0)) 
    \s_divCounter[12]_i_1 
       (.I0(clkOut_i_3_n_0),
        .I1(clkOut_i_4_n_0),
        .I2(data0[12]),
        .O(s_divCounter_0[12]));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT3 #(
    .INIT(8'hE0)) 
    \s_divCounter[13]_i_1 
       (.I0(clkOut_i_3_n_0),
        .I1(clkOut_i_4_n_0),
        .I2(data0[13]),
        .O(s_divCounter_0[13]));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT3 #(
    .INIT(8'hE0)) 
    \s_divCounter[14]_i_1 
       (.I0(clkOut_i_3_n_0),
        .I1(clkOut_i_4_n_0),
        .I2(data0[14]),
        .O(s_divCounter_0[14]));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT3 #(
    .INIT(8'hE0)) 
    \s_divCounter[15]_i_1 
       (.I0(clkOut_i_3_n_0),
        .I1(clkOut_i_4_n_0),
        .I2(data0[15]),
        .O(s_divCounter_0[15]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT3 #(
    .INIT(8'hE0)) 
    \s_divCounter[16]_i_1 
       (.I0(clkOut_i_3_n_0),
        .I1(clkOut_i_4_n_0),
        .I2(data0[16]),
        .O(s_divCounter_0[16]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT3 #(
    .INIT(8'hE0)) 
    \s_divCounter[17]_i_1 
       (.I0(clkOut_i_3_n_0),
        .I1(clkOut_i_4_n_0),
        .I2(data0[17]),
        .O(s_divCounter_0[17]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT3 #(
    .INIT(8'hE0)) 
    \s_divCounter[18]_i_1 
       (.I0(clkOut_i_3_n_0),
        .I1(clkOut_i_4_n_0),
        .I2(data0[18]),
        .O(s_divCounter_0[18]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT3 #(
    .INIT(8'hE0)) 
    \s_divCounter[19]_i_1 
       (.I0(clkOut_i_3_n_0),
        .I1(clkOut_i_4_n_0),
        .I2(data0[19]),
        .O(s_divCounter_0[19]));
  LUT3 #(
    .INIT(8'hE0)) 
    \s_divCounter[1]_i_1 
       (.I0(clkOut_i_3_n_0),
        .I1(clkOut_i_4_n_0),
        .I2(data0[1]),
        .O(s_divCounter_0[1]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT3 #(
    .INIT(8'hE0)) 
    \s_divCounter[20]_i_1 
       (.I0(clkOut_i_3_n_0),
        .I1(clkOut_i_4_n_0),
        .I2(data0[20]),
        .O(s_divCounter_0[20]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT3 #(
    .INIT(8'hE0)) 
    \s_divCounter[21]_i_1 
       (.I0(clkOut_i_3_n_0),
        .I1(clkOut_i_4_n_0),
        .I2(data0[21]),
        .O(s_divCounter_0[21]));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT3 #(
    .INIT(8'hE0)) 
    \s_divCounter[22]_i_1 
       (.I0(clkOut_i_3_n_0),
        .I1(clkOut_i_4_n_0),
        .I2(data0[22]),
        .O(s_divCounter_0[22]));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT3 #(
    .INIT(8'hE0)) 
    \s_divCounter[23]_i_1 
       (.I0(clkOut_i_3_n_0),
        .I1(clkOut_i_4_n_0),
        .I2(data0[23]),
        .O(s_divCounter_0[23]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT3 #(
    .INIT(8'hE0)) 
    \s_divCounter[24]_i_1 
       (.I0(clkOut_i_3_n_0),
        .I1(clkOut_i_4_n_0),
        .I2(data0[24]),
        .O(s_divCounter_0[24]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT3 #(
    .INIT(8'hE0)) 
    \s_divCounter[25]_i_1 
       (.I0(clkOut_i_3_n_0),
        .I1(clkOut_i_4_n_0),
        .I2(data0[25]),
        .O(s_divCounter_0[25]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT3 #(
    .INIT(8'hE0)) 
    \s_divCounter[26]_i_1 
       (.I0(clkOut_i_3_n_0),
        .I1(clkOut_i_4_n_0),
        .I2(data0[26]),
        .O(s_divCounter_0[26]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT3 #(
    .INIT(8'hE0)) 
    \s_divCounter[27]_i_1 
       (.I0(clkOut_i_3_n_0),
        .I1(clkOut_i_4_n_0),
        .I2(data0[27]),
        .O(s_divCounter_0[27]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT3 #(
    .INIT(8'hE0)) 
    \s_divCounter[28]_i_1 
       (.I0(clkOut_i_3_n_0),
        .I1(clkOut_i_4_n_0),
        .I2(data0[28]),
        .O(s_divCounter_0[28]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT3 #(
    .INIT(8'hE0)) 
    \s_divCounter[29]_i_1 
       (.I0(clkOut_i_3_n_0),
        .I1(clkOut_i_4_n_0),
        .I2(data0[29]),
        .O(s_divCounter_0[29]));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT3 #(
    .INIT(8'hE0)) 
    \s_divCounter[2]_i_1 
       (.I0(clkOut_i_3_n_0),
        .I1(clkOut_i_4_n_0),
        .I2(data0[2]),
        .O(s_divCounter_0[2]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT3 #(
    .INIT(8'hE0)) 
    \s_divCounter[30]_i_1 
       (.I0(clkOut_i_3_n_0),
        .I1(clkOut_i_4_n_0),
        .I2(data0[30]),
        .O(s_divCounter_0[30]));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT3 #(
    .INIT(8'hE0)) 
    \s_divCounter[3]_i_1 
       (.I0(clkOut_i_3_n_0),
        .I1(clkOut_i_4_n_0),
        .I2(data0[3]),
        .O(s_divCounter_0[3]));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT3 #(
    .INIT(8'hE0)) 
    \s_divCounter[4]_i_1 
       (.I0(clkOut_i_3_n_0),
        .I1(clkOut_i_4_n_0),
        .I2(data0[4]),
        .O(s_divCounter_0[4]));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT3 #(
    .INIT(8'hE0)) 
    \s_divCounter[5]_i_1 
       (.I0(clkOut_i_3_n_0),
        .I1(clkOut_i_4_n_0),
        .I2(data0[5]),
        .O(s_divCounter_0[5]));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT3 #(
    .INIT(8'hE0)) 
    \s_divCounter[6]_i_1 
       (.I0(clkOut_i_3_n_0),
        .I1(clkOut_i_4_n_0),
        .I2(data0[6]),
        .O(s_divCounter_0[6]));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT3 #(
    .INIT(8'hE0)) 
    \s_divCounter[7]_i_1 
       (.I0(clkOut_i_3_n_0),
        .I1(clkOut_i_4_n_0),
        .I2(data0[7]),
        .O(s_divCounter_0[7]));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT3 #(
    .INIT(8'hE0)) 
    \s_divCounter[8]_i_1 
       (.I0(clkOut_i_3_n_0),
        .I1(clkOut_i_4_n_0),
        .I2(data0[8]),
        .O(s_divCounter_0[8]));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT3 #(
    .INIT(8'hE0)) 
    \s_divCounter[9]_i_1 
       (.I0(clkOut_i_3_n_0),
        .I1(clkOut_i_4_n_0),
        .I2(data0[9]),
        .O(s_divCounter_0[9]));
  FDCE \s_divCounter_reg[0] 
       (.C(clkIn),
        .CE(1'b1),
        .CLR(reset),
        .D(s_divCounter_0[0]),
        .Q(s_divCounter[0]));
  FDCE \s_divCounter_reg[10] 
       (.C(clkIn),
        .CE(1'b1),
        .CLR(reset),
        .D(s_divCounter_0[10]),
        .Q(s_divCounter[10]));
  FDCE \s_divCounter_reg[11] 
       (.C(clkIn),
        .CE(1'b1),
        .CLR(reset),
        .D(s_divCounter_0[11]),
        .Q(s_divCounter[11]));
  FDCE \s_divCounter_reg[12] 
       (.C(clkIn),
        .CE(1'b1),
        .CLR(reset),
        .D(s_divCounter_0[12]),
        .Q(s_divCounter[12]));
  FDCE \s_divCounter_reg[13] 
       (.C(clkIn),
        .CE(1'b1),
        .CLR(reset),
        .D(s_divCounter_0[13]),
        .Q(s_divCounter[13]));
  FDCE \s_divCounter_reg[14] 
       (.C(clkIn),
        .CE(1'b1),
        .CLR(reset),
        .D(s_divCounter_0[14]),
        .Q(s_divCounter[14]));
  FDCE \s_divCounter_reg[15] 
       (.C(clkIn),
        .CE(1'b1),
        .CLR(reset),
        .D(s_divCounter_0[15]),
        .Q(s_divCounter[15]));
  FDCE \s_divCounter_reg[16] 
       (.C(clkIn),
        .CE(1'b1),
        .CLR(reset),
        .D(s_divCounter_0[16]),
        .Q(s_divCounter[16]));
  FDCE \s_divCounter_reg[17] 
       (.C(clkIn),
        .CE(1'b1),
        .CLR(reset),
        .D(s_divCounter_0[17]),
        .Q(s_divCounter[17]));
  FDCE \s_divCounter_reg[18] 
       (.C(clkIn),
        .CE(1'b1),
        .CLR(reset),
        .D(s_divCounter_0[18]),
        .Q(s_divCounter[18]));
  FDCE \s_divCounter_reg[19] 
       (.C(clkIn),
        .CE(1'b1),
        .CLR(reset),
        .D(s_divCounter_0[19]),
        .Q(s_divCounter[19]));
  FDCE \s_divCounter_reg[1] 
       (.C(clkIn),
        .CE(1'b1),
        .CLR(reset),
        .D(s_divCounter_0[1]),
        .Q(s_divCounter[1]));
  FDCE \s_divCounter_reg[20] 
       (.C(clkIn),
        .CE(1'b1),
        .CLR(reset),
        .D(s_divCounter_0[20]),
        .Q(s_divCounter[20]));
  FDCE \s_divCounter_reg[21] 
       (.C(clkIn),
        .CE(1'b1),
        .CLR(reset),
        .D(s_divCounter_0[21]),
        .Q(s_divCounter[21]));
  FDCE \s_divCounter_reg[22] 
       (.C(clkIn),
        .CE(1'b1),
        .CLR(reset),
        .D(s_divCounter_0[22]),
        .Q(s_divCounter[22]));
  FDCE \s_divCounter_reg[23] 
       (.C(clkIn),
        .CE(1'b1),
        .CLR(reset),
        .D(s_divCounter_0[23]),
        .Q(s_divCounter[23]));
  FDCE \s_divCounter_reg[24] 
       (.C(clkIn),
        .CE(1'b1),
        .CLR(reset),
        .D(s_divCounter_0[24]),
        .Q(s_divCounter[24]));
  FDCE \s_divCounter_reg[25] 
       (.C(clkIn),
        .CE(1'b1),
        .CLR(reset),
        .D(s_divCounter_0[25]),
        .Q(s_divCounter[25]));
  FDCE \s_divCounter_reg[26] 
       (.C(clkIn),
        .CE(1'b1),
        .CLR(reset),
        .D(s_divCounter_0[26]),
        .Q(s_divCounter[26]));
  FDCE \s_divCounter_reg[27] 
       (.C(clkIn),
        .CE(1'b1),
        .CLR(reset),
        .D(s_divCounter_0[27]),
        .Q(s_divCounter[27]));
  FDCE \s_divCounter_reg[28] 
       (.C(clkIn),
        .CE(1'b1),
        .CLR(reset),
        .D(s_divCounter_0[28]),
        .Q(s_divCounter[28]));
  FDCE \s_divCounter_reg[29] 
       (.C(clkIn),
        .CE(1'b1),
        .CLR(reset),
        .D(s_divCounter_0[29]),
        .Q(s_divCounter[29]));
  FDCE \s_divCounter_reg[2] 
       (.C(clkIn),
        .CE(1'b1),
        .CLR(reset),
        .D(s_divCounter_0[2]),
        .Q(s_divCounter[2]));
  FDCE \s_divCounter_reg[30] 
       (.C(clkIn),
        .CE(1'b1),
        .CLR(reset),
        .D(s_divCounter_0[30]),
        .Q(s_divCounter[30]));
  FDCE \s_divCounter_reg[3] 
       (.C(clkIn),
        .CE(1'b1),
        .CLR(reset),
        .D(s_divCounter_0[3]),
        .Q(s_divCounter[3]));
  FDCE \s_divCounter_reg[4] 
       (.C(clkIn),
        .CE(1'b1),
        .CLR(reset),
        .D(s_divCounter_0[4]),
        .Q(s_divCounter[4]));
  FDCE \s_divCounter_reg[5] 
       (.C(clkIn),
        .CE(1'b1),
        .CLR(reset),
        .D(s_divCounter_0[5]),
        .Q(s_divCounter[5]));
  FDCE \s_divCounter_reg[6] 
       (.C(clkIn),
        .CE(1'b1),
        .CLR(reset),
        .D(s_divCounter_0[6]),
        .Q(s_divCounter[6]));
  FDCE \s_divCounter_reg[7] 
       (.C(clkIn),
        .CE(1'b1),
        .CLR(reset),
        .D(s_divCounter_0[7]),
        .Q(s_divCounter[7]));
  FDCE \s_divCounter_reg[8] 
       (.C(clkIn),
        .CE(1'b1),
        .CLR(reset),
        .D(s_divCounter_0[8]),
        .Q(s_divCounter[8]));
  FDCE \s_divCounter_reg[9] 
       (.C(clkIn),
        .CE(1'b1),
        .CLR(reset),
        .D(s_divCounter_0[9]),
        .Q(s_divCounter[9]));
endmodule

(* CHECK_LICENSE_TYPE = "ex7_top_ClkDividerN_0_0,ClkDividerN,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "ClkDividerN,Vivado 2016.4" *) 
(* NotValidForBitStream *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix
   (reset,
    clkIn,
    clkOut);
  (* x_interface_info = "xilinx.com:signal:reset:1.0 reset RST" *) input reset;
  (* x_interface_info = "xilinx.com:signal:clock:1.0 clkIn CLK" *) input clkIn;
  output clkOut;

  wire clkIn;
  wire clkOut;
  wire reset;

  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ClkDividerN U0
       (.clkIn(clkIn),
        .clkOut(clkOut),
        .reset(reset));
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
