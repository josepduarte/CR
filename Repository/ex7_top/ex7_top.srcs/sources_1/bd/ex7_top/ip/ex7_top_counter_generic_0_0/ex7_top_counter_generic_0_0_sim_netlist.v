// Copyright 1986-2016 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2016.4 (win64) Build 1756540 Mon Jan 23 19:11:23 MST 2017
// Date        : Mon May 22 11:41:58 2017
// Host        : Inator running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top ex7_top_counter_generic_0_0 -prefix
//               ex7_top_counter_generic_0_0_ MB_to_display_text_counter_generic_0_0_sim_netlist.v
// Design      : MB_to_display_text_counter_generic_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a100tcsg324-3
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module ex7_top_counter_generic_0_0_ClkDividerN
   (\s_countValue_reg[2] ,
    clk);
  output \s_countValue_reg[2] ;
  input clk;

  wire clk;
  wire clkOut_i_1_n_0;
  wire clkOut_i_2_n_0;
  wire clkOut_i_3_n_0;
  wire [30:1]data0;
  wire \s_countValue_reg[2] ;
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
  wire \s_divCounter[0]_i_1_n_0 ;
  wire \s_divCounter[30]_i_1_n_0 ;
  wire \s_divCounter[30]_i_2_n_0 ;
  wire \s_divCounter[30]_i_3_n_0 ;
  wire \s_divCounter[30]_i_4_n_0 ;
  wire \s_divCounter[30]_i_5_n_0 ;
  wire \s_divCounter[30]_i_6_n_0 ;
  wire \s_divCounter[30]_i_7_n_0 ;
  wire \s_divCounter[30]_i_8_n_0 ;
  wire [3:1]NLW_s_divCounter0_carry__6_CO_UNCONNECTED;
  wire [3:2]NLW_s_divCounter0_carry__6_O_UNCONNECTED;

  LUT6 #(
    .INIT(64'hFFFFFF3F00AA002A)) 
    clkOut_i_1
       (.I0(clkOut_i_2_n_0),
        .I1(s_divCounter[7]),
        .I2(s_divCounter[16]),
        .I3(\s_divCounter[30]_i_2_n_0 ),
        .I4(\s_divCounter[30]_i_3_n_0 ),
        .I5(\s_countValue_reg[2] ),
        .O(clkOut_i_1_n_0));
  LUT4 #(
    .INIT(16'h0020)) 
    clkOut_i_2
       (.I0(clkOut_i_3_n_0),
        .I1(s_divCounter[7]),
        .I2(s_divCounter[12]),
        .I3(s_divCounter[16]),
        .O(clkOut_i_2_n_0));
  LUT6 #(
    .INIT(64'h0000002000000000)) 
    clkOut_i_3
       (.I0(s_divCounter[17]),
        .I1(s_divCounter[18]),
        .I2(s_divCounter[19]),
        .I3(s_divCounter[24]),
        .I4(s_divCounter[26]),
        .I5(s_divCounter[25]),
        .O(clkOut_i_3_n_0));
  FDRE clkOut_reg
       (.C(clk),
        .CE(1'b1),
        .D(clkOut_i_1_n_0),
        .Q(\s_countValue_reg[2] ),
        .R(1'b0));
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
        .O(\s_divCounter[0]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h0008)) 
    \s_divCounter[30]_i_1 
       (.I0(s_divCounter[7]),
        .I1(s_divCounter[16]),
        .I2(\s_divCounter[30]_i_2_n_0 ),
        .I3(\s_divCounter[30]_i_3_n_0 ),
        .O(\s_divCounter[30]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFEFFFFFFFFFFFF)) 
    \s_divCounter[30]_i_2 
       (.I0(\s_divCounter[30]_i_4_n_0 ),
        .I1(\s_divCounter[30]_i_5_n_0 ),
        .I2(\s_divCounter[30]_i_6_n_0 ),
        .I3(\s_divCounter[30]_i_7_n_0 ),
        .I4(s_divCounter[2]),
        .I5(s_divCounter[3]),
        .O(\s_divCounter[30]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'hFEFF)) 
    \s_divCounter[30]_i_3 
       (.I0(\s_divCounter[30]_i_8_n_0 ),
        .I1(s_divCounter[19]),
        .I2(s_divCounter[25]),
        .I3(s_divCounter[26]),
        .O(\s_divCounter[30]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFF7FF)) 
    \s_divCounter[30]_i_4 
       (.I0(s_divCounter[4]),
        .I1(s_divCounter[5]),
        .I2(s_divCounter[8]),
        .I3(s_divCounter[6]),
        .I4(s_divCounter[10]),
        .I5(s_divCounter[9]),
        .O(\s_divCounter[30]_i_4_n_0 ));
  LUT4 #(
    .INIT(16'h7FFF)) 
    \s_divCounter[30]_i_5 
       (.I0(s_divCounter[23]),
        .I1(s_divCounter[22]),
        .I2(s_divCounter[21]),
        .I3(s_divCounter[20]),
        .O(\s_divCounter[30]_i_5_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \s_divCounter[30]_i_6 
       (.I0(s_divCounter[30]),
        .I1(s_divCounter[29]),
        .I2(s_divCounter[28]),
        .I3(s_divCounter[27]),
        .O(\s_divCounter[30]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hBFFFFFFFFFFFFFFF)) 
    \s_divCounter[30]_i_7 
       (.I0(s_divCounter[11]),
        .I1(s_divCounter[13]),
        .I2(s_divCounter[14]),
        .I3(s_divCounter[15]),
        .I4(s_divCounter[1]),
        .I5(s_divCounter[0]),
        .O(\s_divCounter[30]_i_7_n_0 ));
  LUT4 #(
    .INIT(16'hFFDF)) 
    \s_divCounter[30]_i_8 
       (.I0(s_divCounter[24]),
        .I1(s_divCounter[17]),
        .I2(s_divCounter[18]),
        .I3(s_divCounter[12]),
        .O(\s_divCounter[30]_i_8_n_0 ));
  FDRE \s_divCounter_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .D(\s_divCounter[0]_i_1_n_0 ),
        .Q(s_divCounter[0]),
        .R(\s_divCounter[30]_i_1_n_0 ));
  FDRE \s_divCounter_reg[10] 
       (.C(clk),
        .CE(1'b1),
        .D(data0[10]),
        .Q(s_divCounter[10]),
        .R(\s_divCounter[30]_i_1_n_0 ));
  FDRE \s_divCounter_reg[11] 
       (.C(clk),
        .CE(1'b1),
        .D(data0[11]),
        .Q(s_divCounter[11]),
        .R(\s_divCounter[30]_i_1_n_0 ));
  FDRE \s_divCounter_reg[12] 
       (.C(clk),
        .CE(1'b1),
        .D(data0[12]),
        .Q(s_divCounter[12]),
        .R(\s_divCounter[30]_i_1_n_0 ));
  FDRE \s_divCounter_reg[13] 
       (.C(clk),
        .CE(1'b1),
        .D(data0[13]),
        .Q(s_divCounter[13]),
        .R(\s_divCounter[30]_i_1_n_0 ));
  FDRE \s_divCounter_reg[14] 
       (.C(clk),
        .CE(1'b1),
        .D(data0[14]),
        .Q(s_divCounter[14]),
        .R(\s_divCounter[30]_i_1_n_0 ));
  FDRE \s_divCounter_reg[15] 
       (.C(clk),
        .CE(1'b1),
        .D(data0[15]),
        .Q(s_divCounter[15]),
        .R(\s_divCounter[30]_i_1_n_0 ));
  FDRE \s_divCounter_reg[16] 
       (.C(clk),
        .CE(1'b1),
        .D(data0[16]),
        .Q(s_divCounter[16]),
        .R(\s_divCounter[30]_i_1_n_0 ));
  FDRE \s_divCounter_reg[17] 
       (.C(clk),
        .CE(1'b1),
        .D(data0[17]),
        .Q(s_divCounter[17]),
        .R(\s_divCounter[30]_i_1_n_0 ));
  FDRE \s_divCounter_reg[18] 
       (.C(clk),
        .CE(1'b1),
        .D(data0[18]),
        .Q(s_divCounter[18]),
        .R(\s_divCounter[30]_i_1_n_0 ));
  FDRE \s_divCounter_reg[19] 
       (.C(clk),
        .CE(1'b1),
        .D(data0[19]),
        .Q(s_divCounter[19]),
        .R(\s_divCounter[30]_i_1_n_0 ));
  FDRE \s_divCounter_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .D(data0[1]),
        .Q(s_divCounter[1]),
        .R(\s_divCounter[30]_i_1_n_0 ));
  FDRE \s_divCounter_reg[20] 
       (.C(clk),
        .CE(1'b1),
        .D(data0[20]),
        .Q(s_divCounter[20]),
        .R(\s_divCounter[30]_i_1_n_0 ));
  FDRE \s_divCounter_reg[21] 
       (.C(clk),
        .CE(1'b1),
        .D(data0[21]),
        .Q(s_divCounter[21]),
        .R(\s_divCounter[30]_i_1_n_0 ));
  FDRE \s_divCounter_reg[22] 
       (.C(clk),
        .CE(1'b1),
        .D(data0[22]),
        .Q(s_divCounter[22]),
        .R(\s_divCounter[30]_i_1_n_0 ));
  FDRE \s_divCounter_reg[23] 
       (.C(clk),
        .CE(1'b1),
        .D(data0[23]),
        .Q(s_divCounter[23]),
        .R(\s_divCounter[30]_i_1_n_0 ));
  FDRE \s_divCounter_reg[24] 
       (.C(clk),
        .CE(1'b1),
        .D(data0[24]),
        .Q(s_divCounter[24]),
        .R(\s_divCounter[30]_i_1_n_0 ));
  FDRE \s_divCounter_reg[25] 
       (.C(clk),
        .CE(1'b1),
        .D(data0[25]),
        .Q(s_divCounter[25]),
        .R(\s_divCounter[30]_i_1_n_0 ));
  FDRE \s_divCounter_reg[26] 
       (.C(clk),
        .CE(1'b1),
        .D(data0[26]),
        .Q(s_divCounter[26]),
        .R(\s_divCounter[30]_i_1_n_0 ));
  FDRE \s_divCounter_reg[27] 
       (.C(clk),
        .CE(1'b1),
        .D(data0[27]),
        .Q(s_divCounter[27]),
        .R(\s_divCounter[30]_i_1_n_0 ));
  FDRE \s_divCounter_reg[28] 
       (.C(clk),
        .CE(1'b1),
        .D(data0[28]),
        .Q(s_divCounter[28]),
        .R(\s_divCounter[30]_i_1_n_0 ));
  FDRE \s_divCounter_reg[29] 
       (.C(clk),
        .CE(1'b1),
        .D(data0[29]),
        .Q(s_divCounter[29]),
        .R(\s_divCounter[30]_i_1_n_0 ));
  FDRE \s_divCounter_reg[2] 
       (.C(clk),
        .CE(1'b1),
        .D(data0[2]),
        .Q(s_divCounter[2]),
        .R(\s_divCounter[30]_i_1_n_0 ));
  FDRE \s_divCounter_reg[30] 
       (.C(clk),
        .CE(1'b1),
        .D(data0[30]),
        .Q(s_divCounter[30]),
        .R(\s_divCounter[30]_i_1_n_0 ));
  FDRE \s_divCounter_reg[3] 
       (.C(clk),
        .CE(1'b1),
        .D(data0[3]),
        .Q(s_divCounter[3]),
        .R(\s_divCounter[30]_i_1_n_0 ));
  FDRE \s_divCounter_reg[4] 
       (.C(clk),
        .CE(1'b1),
        .D(data0[4]),
        .Q(s_divCounter[4]),
        .R(\s_divCounter[30]_i_1_n_0 ));
  FDRE \s_divCounter_reg[5] 
       (.C(clk),
        .CE(1'b1),
        .D(data0[5]),
        .Q(s_divCounter[5]),
        .R(\s_divCounter[30]_i_1_n_0 ));
  FDRE \s_divCounter_reg[6] 
       (.C(clk),
        .CE(1'b1),
        .D(data0[6]),
        .Q(s_divCounter[6]),
        .R(\s_divCounter[30]_i_1_n_0 ));
  FDRE \s_divCounter_reg[7] 
       (.C(clk),
        .CE(1'b1),
        .D(data0[7]),
        .Q(s_divCounter[7]),
        .R(\s_divCounter[30]_i_1_n_0 ));
  FDRE \s_divCounter_reg[8] 
       (.C(clk),
        .CE(1'b1),
        .D(data0[8]),
        .Q(s_divCounter[8]),
        .R(\s_divCounter[30]_i_1_n_0 ));
  FDRE \s_divCounter_reg[9] 
       (.C(clk),
        .CE(1'b1),
        .D(data0[9]),
        .Q(s_divCounter[9]),
        .R(\s_divCounter[30]_i_1_n_0 ));
endmodule

module ex7_top_counter_generic_0_0_Counter
   (led,
    sw,
    btnC,
    clkOut_reg);
  output [2:0]led;
  input [1:0]sw;
  input btnC;
  input clkOut_reg;

  wire btnC;
  wire clkOut_reg;
  wire [2:0]led;
  wire \s_countValue[0]_i_1_n_0 ;
  wire \s_countValue[1]_i_1_n_0 ;
  wire \s_countValue[2]_i_1_n_0 ;
  wire [1:0]sw;

  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT3 #(
    .INIT(8'h06)) 
    \s_countValue[0]_i_1 
       (.I0(led[0]),
        .I1(sw[0]),
        .I2(btnC),
        .O(\s_countValue[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h0000A66A)) 
    \s_countValue[1]_i_1 
       (.I0(led[1]),
        .I1(sw[0]),
        .I2(sw[1]),
        .I3(led[0]),
        .I4(btnC),
        .O(\s_countValue[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h00000000A6AAAA6A)) 
    \s_countValue[2]_i_1 
       (.I0(led[2]),
        .I1(sw[0]),
        .I2(sw[1]),
        .I3(led[1]),
        .I4(led[0]),
        .I5(btnC),
        .O(\s_countValue[2]_i_1_n_0 ));
  FDRE \s_countValue_reg[0] 
       (.C(clkOut_reg),
        .CE(1'b1),
        .D(\s_countValue[0]_i_1_n_0 ),
        .Q(led[0]),
        .R(1'b0));
  FDRE \s_countValue_reg[1] 
       (.C(clkOut_reg),
        .CE(1'b1),
        .D(\s_countValue[1]_i_1_n_0 ),
        .Q(led[1]),
        .R(1'b0));
  FDRE \s_countValue_reg[2] 
       (.C(clkOut_reg),
        .CE(1'b1),
        .D(\s_countValue[2]_i_1_n_0 ),
        .Q(led[2]),
        .R(1'b0));
endmodule

(* CHECK_LICENSE_TYPE = "MB_to_display_text_counter_generic_0_0,ex6_mapping,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "ex6_mapping,Vivado 2016.4" *) 
(* NotValidForBitStream *)
module ex7_top_counter_generic_0_0
   (clk,
    sw,
    btnC,
    led);
  (* x_interface_info = "xilinx.com:signal:clock:1.0 clk CLK" *) input clk;
  input [1:0]sw;
  input btnC;
  output [2:0]led;

  wire btnC;
  wire clk;
  wire [2:0]led;
  wire [1:0]sw;

  (* nr_bits = "3" *) 
  ex7_top_counter_generic_0_0_ex6_mapping U0
       (.btnC(btnC),
        .clk(clk),
        .led(led),
        .sw(sw));
endmodule

(* nr_bits = "3" *) 
module ex7_top_counter_generic_0_0_ex6_mapping
   (clk,
    sw,
    btnC,
    led);
  input clk;
  input [1:0]sw;
  input btnC;
  output [2:0]led;

  wire btnC;
  wire clk;
  wire clk_dvr1_n_0;
  wire [2:0]led;
  wire [1:0]sw;

  ex7_top_counter_generic_0_0_ClkDividerN clk_dvr1
       (.clk(clk),
        .\s_countValue_reg[2] (clk_dvr1_n_0));
  ex7_top_counter_generic_0_0_Counter counter
       (.btnC(btnC),
        .clkOut_reg(clk_dvr1_n_0),
        .led(led),
        .sw(sw));
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
