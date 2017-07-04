// Copyright 1986-2016 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2016.4 (win64) Build 1756540 Mon Jan 23 19:11:23 MST 2017
// Date        : Tue Apr 04 18:29:02 2017
// Host        : Inator running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               c:/Users/jduarte/Documents/GitHub/CR/Aula6/ex3/ex3.srcs/sources_1/bd/ex3_top/ip/ex3_top_max_0_1/ex3_top_max_0_1_sim_netlist.v
// Design      : ex3_top_max_0_1
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a100tcsg324-3
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "ex3_top_max_0_1,max,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "max,Vivado 2016.4" *) 
(* NotValidForBitStream *)
module ex3_top_max_0_1
   (data_in,
    max_value,
    finished);
  input [127:0]data_in;
  output [7:0]max_value;
  output finished;

  wire \<const1> ;
  wire [127:0]data_in;
  wire [7:0]max_value;

  assign finished = \<const1> ;
  ex3_top_max_0_1_max U0
       (.data_in(data_in[127:64]),
        .max_value(max_value));
  VCC VCC
       (.P(\<const1> ));
endmodule

(* ORIG_REF_NAME = "max" *) 
module ex3_top_max_0_1_max
   (max_value,
    data_in);
  output [7:0]max_value;
  input [63:0]data_in;

  wire [63:0]data_in;
  wire gtOp;
  wire gtOp__11_carry_i_1_n_0;
  wire gtOp__11_carry_i_2_n_0;
  wire gtOp__11_carry_i_3_n_0;
  wire gtOp__11_carry_i_4_n_0;
  wire gtOp__11_carry_i_5_n_0;
  wire gtOp__11_carry_i_6_n_0;
  wire gtOp__11_carry_i_7_n_0;
  wire gtOp__11_carry_i_8_n_0;
  wire gtOp__11_carry_n_0;
  wire gtOp__11_carry_n_1;
  wire gtOp__11_carry_n_2;
  wire gtOp__11_carry_n_3;
  wire gtOp__15_carry_i_1_n_0;
  wire gtOp__15_carry_i_2_n_0;
  wire gtOp__15_carry_i_3_n_0;
  wire gtOp__15_carry_i_4_n_0;
  wire gtOp__15_carry_i_5_n_0;
  wire gtOp__15_carry_i_6_n_0;
  wire gtOp__15_carry_i_7_n_0;
  wire gtOp__15_carry_i_8_n_0;
  wire gtOp__15_carry_n_0;
  wire gtOp__15_carry_n_1;
  wire gtOp__15_carry_n_2;
  wire gtOp__15_carry_n_3;
  wire gtOp__19_carry_i_10_n_0;
  wire gtOp__19_carry_i_11_n_0;
  wire gtOp__19_carry_i_12_n_0;
  wire gtOp__19_carry_i_13_n_0;
  wire gtOp__19_carry_i_14_n_0;
  wire gtOp__19_carry_i_15_n_0;
  wire gtOp__19_carry_i_16_n_0;
  wire gtOp__19_carry_i_1_n_0;
  wire gtOp__19_carry_i_2_n_0;
  wire gtOp__19_carry_i_3_n_0;
  wire gtOp__19_carry_i_4_n_0;
  wire gtOp__19_carry_i_5_n_0;
  wire gtOp__19_carry_i_6_n_0;
  wire gtOp__19_carry_i_7_n_0;
  wire gtOp__19_carry_i_8_n_0;
  wire gtOp__19_carry_i_9_n_0;
  wire gtOp__19_carry_n_0;
  wire gtOp__19_carry_n_1;
  wire gtOp__19_carry_n_2;
  wire gtOp__19_carry_n_3;
  wire gtOp__23_carry_i_1_n_0;
  wire gtOp__23_carry_i_2_n_0;
  wire gtOp__23_carry_i_3_n_0;
  wire gtOp__23_carry_i_4_n_0;
  wire gtOp__23_carry_i_5_n_0;
  wire gtOp__23_carry_i_6_n_0;
  wire gtOp__23_carry_i_7_n_0;
  wire gtOp__23_carry_i_8_n_0;
  wire gtOp__23_carry_n_1;
  wire gtOp__23_carry_n_2;
  wire gtOp__23_carry_n_3;
  wire gtOp__3_carry_i_1_n_0;
  wire gtOp__3_carry_i_2_n_0;
  wire gtOp__3_carry_i_3_n_0;
  wire gtOp__3_carry_i_4_n_0;
  wire gtOp__3_carry_i_5_n_0;
  wire gtOp__3_carry_i_6_n_0;
  wire gtOp__3_carry_i_7_n_0;
  wire gtOp__3_carry_i_8_n_0;
  wire gtOp__3_carry_n_0;
  wire gtOp__3_carry_n_1;
  wire gtOp__3_carry_n_2;
  wire gtOp__3_carry_n_3;
  wire gtOp__7_carry_i_10_n_0;
  wire gtOp__7_carry_i_11_n_0;
  wire gtOp__7_carry_i_12_n_0;
  wire gtOp__7_carry_i_13_n_0;
  wire gtOp__7_carry_i_14_n_0;
  wire gtOp__7_carry_i_15_n_0;
  wire gtOp__7_carry_i_16_n_0;
  wire gtOp__7_carry_i_1_n_0;
  wire gtOp__7_carry_i_2_n_0;
  wire gtOp__7_carry_i_3_n_0;
  wire gtOp__7_carry_i_4_n_0;
  wire gtOp__7_carry_i_5_n_0;
  wire gtOp__7_carry_i_6_n_0;
  wire gtOp__7_carry_i_7_n_0;
  wire gtOp__7_carry_i_8_n_0;
  wire gtOp__7_carry_i_9_n_0;
  wire gtOp__7_carry_n_0;
  wire gtOp__7_carry_n_1;
  wire gtOp__7_carry_n_2;
  wire gtOp__7_carry_n_3;
  wire gtOp_carry_i_1_n_0;
  wire gtOp_carry_i_2_n_0;
  wire gtOp_carry_i_3_n_0;
  wire gtOp_carry_i_4_n_0;
  wire gtOp_carry_i_5_n_0;
  wire gtOp_carry_i_6_n_0;
  wire gtOp_carry_i_7_n_0;
  wire gtOp_carry_i_8_n_0;
  wire gtOp_carry_n_0;
  wire gtOp_carry_n_1;
  wire gtOp_carry_n_2;
  wire gtOp_carry_n_3;
  wire [7:0]max_value;
  wire \max_value[0]_INST_0_i_1_n_0 ;
  wire \max_value[0]_INST_0_i_2_n_0 ;
  wire \max_value[0]_INST_0_i_3_n_0 ;
  wire \max_value[0]_INST_0_i_4_n_0 ;
  wire \max_value[1]_INST_0_i_1_n_0 ;
  wire \max_value[1]_INST_0_i_2_n_0 ;
  wire \max_value[1]_INST_0_i_3_n_0 ;
  wire \max_value[1]_INST_0_i_4_n_0 ;
  wire \max_value[2]_INST_0_i_1_n_0 ;
  wire \max_value[2]_INST_0_i_2_n_0 ;
  wire \max_value[2]_INST_0_i_3_n_0 ;
  wire \max_value[2]_INST_0_i_4_n_0 ;
  wire \max_value[3]_INST_0_i_1_n_0 ;
  wire \max_value[3]_INST_0_i_2_n_0 ;
  wire \max_value[3]_INST_0_i_3_n_0 ;
  wire \max_value[3]_INST_0_i_4_n_0 ;
  wire \max_value[4]_INST_0_i_1_n_0 ;
  wire \max_value[4]_INST_0_i_2_n_0 ;
  wire \max_value[4]_INST_0_i_3_n_0 ;
  wire \max_value[4]_INST_0_i_4_n_0 ;
  wire \max_value[5]_INST_0_i_1_n_0 ;
  wire \max_value[5]_INST_0_i_2_n_0 ;
  wire \max_value[5]_INST_0_i_3_n_0 ;
  wire \max_value[5]_INST_0_i_4_n_0 ;
  wire \max_value[6]_INST_0_i_1_n_0 ;
  wire \max_value[6]_INST_0_i_2_n_0 ;
  wire \max_value[6]_INST_0_i_3_n_0 ;
  wire \max_value[6]_INST_0_i_4_n_0 ;
  wire \max_value[7]_INST_0_i_1_n_0 ;
  wire \max_value[7]_INST_0_i_2_n_0 ;
  wire \max_value[7]_INST_0_i_3_n_0 ;
  wire \max_value[7]_INST_0_i_4_n_0 ;
  wire [3:0]NLW_gtOp__11_carry_O_UNCONNECTED;
  wire [3:0]NLW_gtOp__15_carry_O_UNCONNECTED;
  wire [3:0]NLW_gtOp__19_carry_O_UNCONNECTED;
  wire [3:0]NLW_gtOp__23_carry_O_UNCONNECTED;
  wire [3:0]NLW_gtOp__3_carry_O_UNCONNECTED;
  wire [3:0]NLW_gtOp__7_carry_O_UNCONNECTED;
  wire [3:0]NLW_gtOp_carry_O_UNCONNECTED;

  CARRY4 gtOp__11_carry
       (.CI(1'b0),
        .CO({gtOp__11_carry_n_0,gtOp__11_carry_n_1,gtOp__11_carry_n_2,gtOp__11_carry_n_3}),
        .CYINIT(1'b0),
        .DI({gtOp__11_carry_i_1_n_0,gtOp__11_carry_i_2_n_0,gtOp__11_carry_i_3_n_0,gtOp__11_carry_i_4_n_0}),
        .O(NLW_gtOp__11_carry_O_UNCONNECTED[3:0]),
        .S({gtOp__11_carry_i_5_n_0,gtOp__11_carry_i_6_n_0,gtOp__11_carry_i_7_n_0,gtOp__11_carry_i_8_n_0}));
  LUT4 #(
    .INIT(16'h22B2)) 
    gtOp__11_carry_i_1
       (.I0(data_in[39]),
        .I1(data_in[47]),
        .I2(data_in[38]),
        .I3(data_in[46]),
        .O(gtOp__11_carry_i_1_n_0));
  LUT4 #(
    .INIT(16'h22B2)) 
    gtOp__11_carry_i_2
       (.I0(data_in[37]),
        .I1(data_in[45]),
        .I2(data_in[36]),
        .I3(data_in[44]),
        .O(gtOp__11_carry_i_2_n_0));
  LUT4 #(
    .INIT(16'h22B2)) 
    gtOp__11_carry_i_3
       (.I0(data_in[35]),
        .I1(data_in[43]),
        .I2(data_in[34]),
        .I3(data_in[42]),
        .O(gtOp__11_carry_i_3_n_0));
  LUT4 #(
    .INIT(16'h22B2)) 
    gtOp__11_carry_i_4
       (.I0(data_in[33]),
        .I1(data_in[41]),
        .I2(data_in[32]),
        .I3(data_in[40]),
        .O(gtOp__11_carry_i_4_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    gtOp__11_carry_i_5
       (.I0(data_in[47]),
        .I1(data_in[39]),
        .I2(data_in[46]),
        .I3(data_in[38]),
        .O(gtOp__11_carry_i_5_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    gtOp__11_carry_i_6
       (.I0(data_in[45]),
        .I1(data_in[37]),
        .I2(data_in[44]),
        .I3(data_in[36]),
        .O(gtOp__11_carry_i_6_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    gtOp__11_carry_i_7
       (.I0(data_in[43]),
        .I1(data_in[35]),
        .I2(data_in[42]),
        .I3(data_in[34]),
        .O(gtOp__11_carry_i_7_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    gtOp__11_carry_i_8
       (.I0(data_in[41]),
        .I1(data_in[33]),
        .I2(data_in[40]),
        .I3(data_in[32]),
        .O(gtOp__11_carry_i_8_n_0));
  CARRY4 gtOp__15_carry
       (.CI(1'b0),
        .CO({gtOp__15_carry_n_0,gtOp__15_carry_n_1,gtOp__15_carry_n_2,gtOp__15_carry_n_3}),
        .CYINIT(1'b0),
        .DI({gtOp__15_carry_i_1_n_0,gtOp__15_carry_i_2_n_0,gtOp__15_carry_i_3_n_0,gtOp__15_carry_i_4_n_0}),
        .O(NLW_gtOp__15_carry_O_UNCONNECTED[3:0]),
        .S({gtOp__15_carry_i_5_n_0,gtOp__15_carry_i_6_n_0,gtOp__15_carry_i_7_n_0,gtOp__15_carry_i_8_n_0}));
  LUT4 #(
    .INIT(16'h22B2)) 
    gtOp__15_carry_i_1
       (.I0(data_in[55]),
        .I1(data_in[63]),
        .I2(data_in[54]),
        .I3(data_in[62]),
        .O(gtOp__15_carry_i_1_n_0));
  LUT4 #(
    .INIT(16'h22B2)) 
    gtOp__15_carry_i_2
       (.I0(data_in[53]),
        .I1(data_in[61]),
        .I2(data_in[52]),
        .I3(data_in[60]),
        .O(gtOp__15_carry_i_2_n_0));
  LUT4 #(
    .INIT(16'h22B2)) 
    gtOp__15_carry_i_3
       (.I0(data_in[51]),
        .I1(data_in[59]),
        .I2(data_in[50]),
        .I3(data_in[58]),
        .O(gtOp__15_carry_i_3_n_0));
  LUT4 #(
    .INIT(16'h22B2)) 
    gtOp__15_carry_i_4
       (.I0(data_in[49]),
        .I1(data_in[57]),
        .I2(data_in[48]),
        .I3(data_in[56]),
        .O(gtOp__15_carry_i_4_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    gtOp__15_carry_i_5
       (.I0(data_in[63]),
        .I1(data_in[55]),
        .I2(data_in[62]),
        .I3(data_in[54]),
        .O(gtOp__15_carry_i_5_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    gtOp__15_carry_i_6
       (.I0(data_in[61]),
        .I1(data_in[53]),
        .I2(data_in[60]),
        .I3(data_in[52]),
        .O(gtOp__15_carry_i_6_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    gtOp__15_carry_i_7
       (.I0(data_in[59]),
        .I1(data_in[51]),
        .I2(data_in[58]),
        .I3(data_in[50]),
        .O(gtOp__15_carry_i_7_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    gtOp__15_carry_i_8
       (.I0(data_in[57]),
        .I1(data_in[49]),
        .I2(data_in[56]),
        .I3(data_in[48]),
        .O(gtOp__15_carry_i_8_n_0));
  CARRY4 gtOp__19_carry
       (.CI(1'b0),
        .CO({gtOp__19_carry_n_0,gtOp__19_carry_n_1,gtOp__19_carry_n_2,gtOp__19_carry_n_3}),
        .CYINIT(1'b0),
        .DI({gtOp__19_carry_i_1_n_0,gtOp__19_carry_i_2_n_0,gtOp__19_carry_i_3_n_0,gtOp__19_carry_i_4_n_0}),
        .O(NLW_gtOp__19_carry_O_UNCONNECTED[3:0]),
        .S({gtOp__19_carry_i_5_n_0,gtOp__19_carry_i_6_n_0,gtOp__19_carry_i_7_n_0,gtOp__19_carry_i_8_n_0}));
  LUT6 #(
    .INIT(64'h22222222BBB222B2)) 
    gtOp__19_carry_i_1
       (.I0(gtOp__19_carry_i_9_n_0),
        .I1(\max_value[7]_INST_0_i_4_n_0 ),
        .I2(data_in[46]),
        .I3(gtOp__11_carry_n_0),
        .I4(data_in[38]),
        .I5(\max_value[6]_INST_0_i_4_n_0 ),
        .O(gtOp__19_carry_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    gtOp__19_carry_i_10
       (.I0(data_in[37]),
        .I1(gtOp__11_carry_n_0),
        .I2(data_in[45]),
        .O(gtOp__19_carry_i_10_n_0));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    gtOp__19_carry_i_11
       (.I0(data_in[35]),
        .I1(gtOp__11_carry_n_0),
        .I2(data_in[43]),
        .O(gtOp__19_carry_i_11_n_0));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    gtOp__19_carry_i_12
       (.I0(data_in[33]),
        .I1(gtOp__11_carry_n_0),
        .I2(data_in[41]),
        .O(gtOp__19_carry_i_12_n_0));
  LUT6 #(
    .INIT(64'h1D1D1DE2E2E21DE2)) 
    gtOp__19_carry_i_13
       (.I0(data_in[47]),
        .I1(gtOp__11_carry_n_0),
        .I2(data_in[39]),
        .I3(data_in[63]),
        .I4(gtOp__15_carry_n_0),
        .I5(data_in[55]),
        .O(gtOp__19_carry_i_13_n_0));
  LUT6 #(
    .INIT(64'h1D1D1DE2E2E21DE2)) 
    gtOp__19_carry_i_14
       (.I0(data_in[45]),
        .I1(gtOp__11_carry_n_0),
        .I2(data_in[37]),
        .I3(data_in[61]),
        .I4(gtOp__15_carry_n_0),
        .I5(data_in[53]),
        .O(gtOp__19_carry_i_14_n_0));
  LUT6 #(
    .INIT(64'h1D1D1DE2E2E21DE2)) 
    gtOp__19_carry_i_15
       (.I0(data_in[43]),
        .I1(gtOp__11_carry_n_0),
        .I2(data_in[35]),
        .I3(data_in[59]),
        .I4(gtOp__15_carry_n_0),
        .I5(data_in[51]),
        .O(gtOp__19_carry_i_15_n_0));
  LUT6 #(
    .INIT(64'h1D1D1DE2E2E21DE2)) 
    gtOp__19_carry_i_16
       (.I0(data_in[41]),
        .I1(gtOp__11_carry_n_0),
        .I2(data_in[33]),
        .I3(data_in[57]),
        .I4(gtOp__15_carry_n_0),
        .I5(data_in[49]),
        .O(gtOp__19_carry_i_16_n_0));
  LUT6 #(
    .INIT(64'h22222222BBB222B2)) 
    gtOp__19_carry_i_2
       (.I0(gtOp__19_carry_i_10_n_0),
        .I1(\max_value[5]_INST_0_i_4_n_0 ),
        .I2(data_in[44]),
        .I3(gtOp__11_carry_n_0),
        .I4(data_in[36]),
        .I5(\max_value[4]_INST_0_i_4_n_0 ),
        .O(gtOp__19_carry_i_2_n_0));
  LUT6 #(
    .INIT(64'h22222222BBB222B2)) 
    gtOp__19_carry_i_3
       (.I0(gtOp__19_carry_i_11_n_0),
        .I1(\max_value[3]_INST_0_i_4_n_0 ),
        .I2(data_in[42]),
        .I3(gtOp__11_carry_n_0),
        .I4(data_in[34]),
        .I5(\max_value[2]_INST_0_i_4_n_0 ),
        .O(gtOp__19_carry_i_3_n_0));
  LUT6 #(
    .INIT(64'h22222222BBB222B2)) 
    gtOp__19_carry_i_4
       (.I0(gtOp__19_carry_i_12_n_0),
        .I1(\max_value[1]_INST_0_i_4_n_0 ),
        .I2(data_in[40]),
        .I3(gtOp__11_carry_n_0),
        .I4(data_in[32]),
        .I5(\max_value[0]_INST_0_i_4_n_0 ),
        .O(gtOp__19_carry_i_4_n_0));
  LUT5 #(
    .INIT(32'h41444111)) 
    gtOp__19_carry_i_5
       (.I0(gtOp__19_carry_i_13_n_0),
        .I1(\max_value[6]_INST_0_i_4_n_0 ),
        .I2(data_in[38]),
        .I3(gtOp__11_carry_n_0),
        .I4(data_in[46]),
        .O(gtOp__19_carry_i_5_n_0));
  LUT5 #(
    .INIT(32'h41444111)) 
    gtOp__19_carry_i_6
       (.I0(gtOp__19_carry_i_14_n_0),
        .I1(\max_value[4]_INST_0_i_4_n_0 ),
        .I2(data_in[36]),
        .I3(gtOp__11_carry_n_0),
        .I4(data_in[44]),
        .O(gtOp__19_carry_i_6_n_0));
  LUT5 #(
    .INIT(32'h41444111)) 
    gtOp__19_carry_i_7
       (.I0(gtOp__19_carry_i_15_n_0),
        .I1(\max_value[2]_INST_0_i_4_n_0 ),
        .I2(data_in[34]),
        .I3(gtOp__11_carry_n_0),
        .I4(data_in[42]),
        .O(gtOp__19_carry_i_7_n_0));
  LUT5 #(
    .INIT(32'h41444111)) 
    gtOp__19_carry_i_8
       (.I0(gtOp__19_carry_i_16_n_0),
        .I1(\max_value[0]_INST_0_i_4_n_0 ),
        .I2(data_in[32]),
        .I3(gtOp__11_carry_n_0),
        .I4(data_in[40]),
        .O(gtOp__19_carry_i_8_n_0));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    gtOp__19_carry_i_9
       (.I0(data_in[39]),
        .I1(gtOp__11_carry_n_0),
        .I2(data_in[47]),
        .O(gtOp__19_carry_i_9_n_0));
  CARRY4 gtOp__23_carry
       (.CI(1'b0),
        .CO({gtOp,gtOp__23_carry_n_1,gtOp__23_carry_n_2,gtOp__23_carry_n_3}),
        .CYINIT(1'b0),
        .DI({gtOp__23_carry_i_1_n_0,gtOp__23_carry_i_2_n_0,gtOp__23_carry_i_3_n_0,gtOp__23_carry_i_4_n_0}),
        .O(NLW_gtOp__23_carry_O_UNCONNECTED[3:0]),
        .S({gtOp__23_carry_i_5_n_0,gtOp__23_carry_i_6_n_0,gtOp__23_carry_i_7_n_0,gtOp__23_carry_i_8_n_0}));
  LUT4 #(
    .INIT(16'h22B2)) 
    gtOp__23_carry_i_1
       (.I0(\max_value[7]_INST_0_i_1_n_0 ),
        .I1(\max_value[7]_INST_0_i_2_n_0 ),
        .I2(\max_value[6]_INST_0_i_1_n_0 ),
        .I3(\max_value[6]_INST_0_i_2_n_0 ),
        .O(gtOp__23_carry_i_1_n_0));
  LUT4 #(
    .INIT(16'h22B2)) 
    gtOp__23_carry_i_2
       (.I0(\max_value[5]_INST_0_i_1_n_0 ),
        .I1(\max_value[5]_INST_0_i_2_n_0 ),
        .I2(\max_value[4]_INST_0_i_1_n_0 ),
        .I3(\max_value[4]_INST_0_i_2_n_0 ),
        .O(gtOp__23_carry_i_2_n_0));
  LUT4 #(
    .INIT(16'h22B2)) 
    gtOp__23_carry_i_3
       (.I0(\max_value[3]_INST_0_i_1_n_0 ),
        .I1(\max_value[3]_INST_0_i_2_n_0 ),
        .I2(\max_value[2]_INST_0_i_1_n_0 ),
        .I3(\max_value[2]_INST_0_i_2_n_0 ),
        .O(gtOp__23_carry_i_3_n_0));
  LUT4 #(
    .INIT(16'h22B2)) 
    gtOp__23_carry_i_4
       (.I0(\max_value[1]_INST_0_i_1_n_0 ),
        .I1(\max_value[1]_INST_0_i_2_n_0 ),
        .I2(\max_value[0]_INST_0_i_1_n_0 ),
        .I3(\max_value[0]_INST_0_i_2_n_0 ),
        .O(gtOp__23_carry_i_4_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    gtOp__23_carry_i_5
       (.I0(\max_value[7]_INST_0_i_2_n_0 ),
        .I1(\max_value[7]_INST_0_i_1_n_0 ),
        .I2(\max_value[6]_INST_0_i_2_n_0 ),
        .I3(\max_value[6]_INST_0_i_1_n_0 ),
        .O(gtOp__23_carry_i_5_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    gtOp__23_carry_i_6
       (.I0(\max_value[5]_INST_0_i_2_n_0 ),
        .I1(\max_value[5]_INST_0_i_1_n_0 ),
        .I2(\max_value[4]_INST_0_i_2_n_0 ),
        .I3(\max_value[4]_INST_0_i_1_n_0 ),
        .O(gtOp__23_carry_i_6_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    gtOp__23_carry_i_7
       (.I0(\max_value[3]_INST_0_i_2_n_0 ),
        .I1(\max_value[3]_INST_0_i_1_n_0 ),
        .I2(\max_value[2]_INST_0_i_2_n_0 ),
        .I3(\max_value[2]_INST_0_i_1_n_0 ),
        .O(gtOp__23_carry_i_7_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    gtOp__23_carry_i_8
       (.I0(\max_value[1]_INST_0_i_2_n_0 ),
        .I1(\max_value[1]_INST_0_i_1_n_0 ),
        .I2(\max_value[0]_INST_0_i_2_n_0 ),
        .I3(\max_value[0]_INST_0_i_1_n_0 ),
        .O(gtOp__23_carry_i_8_n_0));
  CARRY4 gtOp__3_carry
       (.CI(1'b0),
        .CO({gtOp__3_carry_n_0,gtOp__3_carry_n_1,gtOp__3_carry_n_2,gtOp__3_carry_n_3}),
        .CYINIT(1'b0),
        .DI({gtOp__3_carry_i_1_n_0,gtOp__3_carry_i_2_n_0,gtOp__3_carry_i_3_n_0,gtOp__3_carry_i_4_n_0}),
        .O(NLW_gtOp__3_carry_O_UNCONNECTED[3:0]),
        .S({gtOp__3_carry_i_5_n_0,gtOp__3_carry_i_6_n_0,gtOp__3_carry_i_7_n_0,gtOp__3_carry_i_8_n_0}));
  LUT4 #(
    .INIT(16'h22B2)) 
    gtOp__3_carry_i_1
       (.I0(data_in[23]),
        .I1(data_in[31]),
        .I2(data_in[22]),
        .I3(data_in[30]),
        .O(gtOp__3_carry_i_1_n_0));
  LUT4 #(
    .INIT(16'h22B2)) 
    gtOp__3_carry_i_2
       (.I0(data_in[21]),
        .I1(data_in[29]),
        .I2(data_in[20]),
        .I3(data_in[28]),
        .O(gtOp__3_carry_i_2_n_0));
  LUT4 #(
    .INIT(16'h22B2)) 
    gtOp__3_carry_i_3
       (.I0(data_in[19]),
        .I1(data_in[27]),
        .I2(data_in[18]),
        .I3(data_in[26]),
        .O(gtOp__3_carry_i_3_n_0));
  LUT4 #(
    .INIT(16'h22B2)) 
    gtOp__3_carry_i_4
       (.I0(data_in[17]),
        .I1(data_in[25]),
        .I2(data_in[16]),
        .I3(data_in[24]),
        .O(gtOp__3_carry_i_4_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    gtOp__3_carry_i_5
       (.I0(data_in[31]),
        .I1(data_in[23]),
        .I2(data_in[30]),
        .I3(data_in[22]),
        .O(gtOp__3_carry_i_5_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    gtOp__3_carry_i_6
       (.I0(data_in[29]),
        .I1(data_in[21]),
        .I2(data_in[28]),
        .I3(data_in[20]),
        .O(gtOp__3_carry_i_6_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    gtOp__3_carry_i_7
       (.I0(data_in[27]),
        .I1(data_in[19]),
        .I2(data_in[26]),
        .I3(data_in[18]),
        .O(gtOp__3_carry_i_7_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    gtOp__3_carry_i_8
       (.I0(data_in[25]),
        .I1(data_in[17]),
        .I2(data_in[24]),
        .I3(data_in[16]),
        .O(gtOp__3_carry_i_8_n_0));
  CARRY4 gtOp__7_carry
       (.CI(1'b0),
        .CO({gtOp__7_carry_n_0,gtOp__7_carry_n_1,gtOp__7_carry_n_2,gtOp__7_carry_n_3}),
        .CYINIT(1'b0),
        .DI({gtOp__7_carry_i_1_n_0,gtOp__7_carry_i_2_n_0,gtOp__7_carry_i_3_n_0,gtOp__7_carry_i_4_n_0}),
        .O(NLW_gtOp__7_carry_O_UNCONNECTED[3:0]),
        .S({gtOp__7_carry_i_5_n_0,gtOp__7_carry_i_6_n_0,gtOp__7_carry_i_7_n_0,gtOp__7_carry_i_8_n_0}));
  LUT6 #(
    .INIT(64'h22222222BBB222B2)) 
    gtOp__7_carry_i_1
       (.I0(gtOp__7_carry_i_9_n_0),
        .I1(\max_value[7]_INST_0_i_3_n_0 ),
        .I2(data_in[14]),
        .I3(gtOp_carry_n_0),
        .I4(data_in[6]),
        .I5(\max_value[6]_INST_0_i_3_n_0 ),
        .O(gtOp__7_carry_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    gtOp__7_carry_i_10
       (.I0(data_in[5]),
        .I1(gtOp_carry_n_0),
        .I2(data_in[13]),
        .O(gtOp__7_carry_i_10_n_0));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    gtOp__7_carry_i_11
       (.I0(data_in[3]),
        .I1(gtOp_carry_n_0),
        .I2(data_in[11]),
        .O(gtOp__7_carry_i_11_n_0));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    gtOp__7_carry_i_12
       (.I0(data_in[1]),
        .I1(gtOp_carry_n_0),
        .I2(data_in[9]),
        .O(gtOp__7_carry_i_12_n_0));
  LUT6 #(
    .INIT(64'h1D1D1DE2E2E21DE2)) 
    gtOp__7_carry_i_13
       (.I0(data_in[15]),
        .I1(gtOp_carry_n_0),
        .I2(data_in[7]),
        .I3(data_in[31]),
        .I4(gtOp__3_carry_n_0),
        .I5(data_in[23]),
        .O(gtOp__7_carry_i_13_n_0));
  LUT6 #(
    .INIT(64'h1D1D1DE2E2E21DE2)) 
    gtOp__7_carry_i_14
       (.I0(data_in[13]),
        .I1(gtOp_carry_n_0),
        .I2(data_in[5]),
        .I3(data_in[29]),
        .I4(gtOp__3_carry_n_0),
        .I5(data_in[21]),
        .O(gtOp__7_carry_i_14_n_0));
  LUT6 #(
    .INIT(64'h1D1D1DE2E2E21DE2)) 
    gtOp__7_carry_i_15
       (.I0(data_in[11]),
        .I1(gtOp_carry_n_0),
        .I2(data_in[3]),
        .I3(data_in[27]),
        .I4(gtOp__3_carry_n_0),
        .I5(data_in[19]),
        .O(gtOp__7_carry_i_15_n_0));
  LUT6 #(
    .INIT(64'h1D1D1DE2E2E21DE2)) 
    gtOp__7_carry_i_16
       (.I0(data_in[9]),
        .I1(gtOp_carry_n_0),
        .I2(data_in[1]),
        .I3(data_in[25]),
        .I4(gtOp__3_carry_n_0),
        .I5(data_in[17]),
        .O(gtOp__7_carry_i_16_n_0));
  LUT6 #(
    .INIT(64'h22222222BBB222B2)) 
    gtOp__7_carry_i_2
       (.I0(gtOp__7_carry_i_10_n_0),
        .I1(\max_value[5]_INST_0_i_3_n_0 ),
        .I2(data_in[12]),
        .I3(gtOp_carry_n_0),
        .I4(data_in[4]),
        .I5(\max_value[4]_INST_0_i_3_n_0 ),
        .O(gtOp__7_carry_i_2_n_0));
  LUT6 #(
    .INIT(64'h22222222BBB222B2)) 
    gtOp__7_carry_i_3
       (.I0(gtOp__7_carry_i_11_n_0),
        .I1(\max_value[3]_INST_0_i_3_n_0 ),
        .I2(data_in[10]),
        .I3(gtOp_carry_n_0),
        .I4(data_in[2]),
        .I5(\max_value[2]_INST_0_i_3_n_0 ),
        .O(gtOp__7_carry_i_3_n_0));
  LUT6 #(
    .INIT(64'h22222222BBB222B2)) 
    gtOp__7_carry_i_4
       (.I0(gtOp__7_carry_i_12_n_0),
        .I1(\max_value[1]_INST_0_i_3_n_0 ),
        .I2(data_in[8]),
        .I3(gtOp_carry_n_0),
        .I4(data_in[0]),
        .I5(\max_value[0]_INST_0_i_3_n_0 ),
        .O(gtOp__7_carry_i_4_n_0));
  LUT5 #(
    .INIT(32'h41444111)) 
    gtOp__7_carry_i_5
       (.I0(gtOp__7_carry_i_13_n_0),
        .I1(\max_value[6]_INST_0_i_3_n_0 ),
        .I2(data_in[6]),
        .I3(gtOp_carry_n_0),
        .I4(data_in[14]),
        .O(gtOp__7_carry_i_5_n_0));
  LUT5 #(
    .INIT(32'h41444111)) 
    gtOp__7_carry_i_6
       (.I0(gtOp__7_carry_i_14_n_0),
        .I1(\max_value[4]_INST_0_i_3_n_0 ),
        .I2(data_in[4]),
        .I3(gtOp_carry_n_0),
        .I4(data_in[12]),
        .O(gtOp__7_carry_i_6_n_0));
  LUT5 #(
    .INIT(32'h41444111)) 
    gtOp__7_carry_i_7
       (.I0(gtOp__7_carry_i_15_n_0),
        .I1(\max_value[2]_INST_0_i_3_n_0 ),
        .I2(data_in[2]),
        .I3(gtOp_carry_n_0),
        .I4(data_in[10]),
        .O(gtOp__7_carry_i_7_n_0));
  LUT5 #(
    .INIT(32'h41444111)) 
    gtOp__7_carry_i_8
       (.I0(gtOp__7_carry_i_16_n_0),
        .I1(\max_value[0]_INST_0_i_3_n_0 ),
        .I2(data_in[0]),
        .I3(gtOp_carry_n_0),
        .I4(data_in[8]),
        .O(gtOp__7_carry_i_8_n_0));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    gtOp__7_carry_i_9
       (.I0(data_in[7]),
        .I1(gtOp_carry_n_0),
        .I2(data_in[15]),
        .O(gtOp__7_carry_i_9_n_0));
  CARRY4 gtOp_carry
       (.CI(1'b0),
        .CO({gtOp_carry_n_0,gtOp_carry_n_1,gtOp_carry_n_2,gtOp_carry_n_3}),
        .CYINIT(1'b0),
        .DI({gtOp_carry_i_1_n_0,gtOp_carry_i_2_n_0,gtOp_carry_i_3_n_0,gtOp_carry_i_4_n_0}),
        .O(NLW_gtOp_carry_O_UNCONNECTED[3:0]),
        .S({gtOp_carry_i_5_n_0,gtOp_carry_i_6_n_0,gtOp_carry_i_7_n_0,gtOp_carry_i_8_n_0}));
  LUT4 #(
    .INIT(16'h22B2)) 
    gtOp_carry_i_1
       (.I0(data_in[7]),
        .I1(data_in[15]),
        .I2(data_in[6]),
        .I3(data_in[14]),
        .O(gtOp_carry_i_1_n_0));
  LUT4 #(
    .INIT(16'h22B2)) 
    gtOp_carry_i_2
       (.I0(data_in[5]),
        .I1(data_in[13]),
        .I2(data_in[4]),
        .I3(data_in[12]),
        .O(gtOp_carry_i_2_n_0));
  LUT4 #(
    .INIT(16'h22B2)) 
    gtOp_carry_i_3
       (.I0(data_in[3]),
        .I1(data_in[11]),
        .I2(data_in[2]),
        .I3(data_in[10]),
        .O(gtOp_carry_i_3_n_0));
  LUT4 #(
    .INIT(16'h22B2)) 
    gtOp_carry_i_4
       (.I0(data_in[1]),
        .I1(data_in[9]),
        .I2(data_in[0]),
        .I3(data_in[8]),
        .O(gtOp_carry_i_4_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    gtOp_carry_i_5
       (.I0(data_in[15]),
        .I1(data_in[7]),
        .I2(data_in[14]),
        .I3(data_in[6]),
        .O(gtOp_carry_i_5_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    gtOp_carry_i_6
       (.I0(data_in[13]),
        .I1(data_in[5]),
        .I2(data_in[12]),
        .I3(data_in[4]),
        .O(gtOp_carry_i_6_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    gtOp_carry_i_7
       (.I0(data_in[11]),
        .I1(data_in[3]),
        .I2(data_in[10]),
        .I3(data_in[2]),
        .O(gtOp_carry_i_7_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    gtOp_carry_i_8
       (.I0(data_in[9]),
        .I1(data_in[1]),
        .I2(data_in[8]),
        .I3(data_in[0]),
        .O(gtOp_carry_i_8_n_0));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \max_value[0]_INST_0 
       (.I0(\max_value[0]_INST_0_i_1_n_0 ),
        .I1(gtOp),
        .I2(\max_value[0]_INST_0_i_2_n_0 ),
        .O(max_value[0]));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \max_value[0]_INST_0_i_1 
       (.I0(data_in[0]),
        .I1(gtOp_carry_n_0),
        .I2(data_in[8]),
        .I3(gtOp__7_carry_n_0),
        .I4(\max_value[0]_INST_0_i_3_n_0 ),
        .O(\max_value[0]_INST_0_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \max_value[0]_INST_0_i_2 
       (.I0(data_in[32]),
        .I1(gtOp__11_carry_n_0),
        .I2(data_in[40]),
        .I3(gtOp__19_carry_n_0),
        .I4(\max_value[0]_INST_0_i_4_n_0 ),
        .O(\max_value[0]_INST_0_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \max_value[0]_INST_0_i_3 
       (.I0(data_in[16]),
        .I1(gtOp__3_carry_n_0),
        .I2(data_in[24]),
        .O(\max_value[0]_INST_0_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \max_value[0]_INST_0_i_4 
       (.I0(data_in[48]),
        .I1(gtOp__15_carry_n_0),
        .I2(data_in[56]),
        .O(\max_value[0]_INST_0_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \max_value[1]_INST_0 
       (.I0(\max_value[1]_INST_0_i_1_n_0 ),
        .I1(gtOp),
        .I2(\max_value[1]_INST_0_i_2_n_0 ),
        .O(max_value[1]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \max_value[1]_INST_0_i_1 
       (.I0(data_in[1]),
        .I1(gtOp_carry_n_0),
        .I2(data_in[9]),
        .I3(gtOp__7_carry_n_0),
        .I4(\max_value[1]_INST_0_i_3_n_0 ),
        .O(\max_value[1]_INST_0_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \max_value[1]_INST_0_i_2 
       (.I0(data_in[33]),
        .I1(gtOp__11_carry_n_0),
        .I2(data_in[41]),
        .I3(gtOp__19_carry_n_0),
        .I4(\max_value[1]_INST_0_i_4_n_0 ),
        .O(\max_value[1]_INST_0_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \max_value[1]_INST_0_i_3 
       (.I0(data_in[17]),
        .I1(gtOp__3_carry_n_0),
        .I2(data_in[25]),
        .O(\max_value[1]_INST_0_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \max_value[1]_INST_0_i_4 
       (.I0(data_in[49]),
        .I1(gtOp__15_carry_n_0),
        .I2(data_in[57]),
        .O(\max_value[1]_INST_0_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \max_value[2]_INST_0 
       (.I0(\max_value[2]_INST_0_i_1_n_0 ),
        .I1(gtOp),
        .I2(\max_value[2]_INST_0_i_2_n_0 ),
        .O(max_value[2]));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \max_value[2]_INST_0_i_1 
       (.I0(data_in[2]),
        .I1(gtOp_carry_n_0),
        .I2(data_in[10]),
        .I3(gtOp__7_carry_n_0),
        .I4(\max_value[2]_INST_0_i_3_n_0 ),
        .O(\max_value[2]_INST_0_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \max_value[2]_INST_0_i_2 
       (.I0(data_in[34]),
        .I1(gtOp__11_carry_n_0),
        .I2(data_in[42]),
        .I3(gtOp__19_carry_n_0),
        .I4(\max_value[2]_INST_0_i_4_n_0 ),
        .O(\max_value[2]_INST_0_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \max_value[2]_INST_0_i_3 
       (.I0(data_in[18]),
        .I1(gtOp__3_carry_n_0),
        .I2(data_in[26]),
        .O(\max_value[2]_INST_0_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \max_value[2]_INST_0_i_4 
       (.I0(data_in[50]),
        .I1(gtOp__15_carry_n_0),
        .I2(data_in[58]),
        .O(\max_value[2]_INST_0_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \max_value[3]_INST_0 
       (.I0(\max_value[3]_INST_0_i_1_n_0 ),
        .I1(gtOp),
        .I2(\max_value[3]_INST_0_i_2_n_0 ),
        .O(max_value[3]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \max_value[3]_INST_0_i_1 
       (.I0(data_in[3]),
        .I1(gtOp_carry_n_0),
        .I2(data_in[11]),
        .I3(gtOp__7_carry_n_0),
        .I4(\max_value[3]_INST_0_i_3_n_0 ),
        .O(\max_value[3]_INST_0_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \max_value[3]_INST_0_i_2 
       (.I0(data_in[35]),
        .I1(gtOp__11_carry_n_0),
        .I2(data_in[43]),
        .I3(gtOp__19_carry_n_0),
        .I4(\max_value[3]_INST_0_i_4_n_0 ),
        .O(\max_value[3]_INST_0_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \max_value[3]_INST_0_i_3 
       (.I0(data_in[19]),
        .I1(gtOp__3_carry_n_0),
        .I2(data_in[27]),
        .O(\max_value[3]_INST_0_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \max_value[3]_INST_0_i_4 
       (.I0(data_in[51]),
        .I1(gtOp__15_carry_n_0),
        .I2(data_in[59]),
        .O(\max_value[3]_INST_0_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \max_value[4]_INST_0 
       (.I0(\max_value[4]_INST_0_i_1_n_0 ),
        .I1(gtOp),
        .I2(\max_value[4]_INST_0_i_2_n_0 ),
        .O(max_value[4]));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \max_value[4]_INST_0_i_1 
       (.I0(data_in[4]),
        .I1(gtOp_carry_n_0),
        .I2(data_in[12]),
        .I3(gtOp__7_carry_n_0),
        .I4(\max_value[4]_INST_0_i_3_n_0 ),
        .O(\max_value[4]_INST_0_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \max_value[4]_INST_0_i_2 
       (.I0(data_in[36]),
        .I1(gtOp__11_carry_n_0),
        .I2(data_in[44]),
        .I3(gtOp__19_carry_n_0),
        .I4(\max_value[4]_INST_0_i_4_n_0 ),
        .O(\max_value[4]_INST_0_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \max_value[4]_INST_0_i_3 
       (.I0(data_in[20]),
        .I1(gtOp__3_carry_n_0),
        .I2(data_in[28]),
        .O(\max_value[4]_INST_0_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \max_value[4]_INST_0_i_4 
       (.I0(data_in[52]),
        .I1(gtOp__15_carry_n_0),
        .I2(data_in[60]),
        .O(\max_value[4]_INST_0_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \max_value[5]_INST_0 
       (.I0(\max_value[5]_INST_0_i_1_n_0 ),
        .I1(gtOp),
        .I2(\max_value[5]_INST_0_i_2_n_0 ),
        .O(max_value[5]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \max_value[5]_INST_0_i_1 
       (.I0(data_in[5]),
        .I1(gtOp_carry_n_0),
        .I2(data_in[13]),
        .I3(gtOp__7_carry_n_0),
        .I4(\max_value[5]_INST_0_i_3_n_0 ),
        .O(\max_value[5]_INST_0_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \max_value[5]_INST_0_i_2 
       (.I0(data_in[37]),
        .I1(gtOp__11_carry_n_0),
        .I2(data_in[45]),
        .I3(gtOp__19_carry_n_0),
        .I4(\max_value[5]_INST_0_i_4_n_0 ),
        .O(\max_value[5]_INST_0_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \max_value[5]_INST_0_i_3 
       (.I0(data_in[21]),
        .I1(gtOp__3_carry_n_0),
        .I2(data_in[29]),
        .O(\max_value[5]_INST_0_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \max_value[5]_INST_0_i_4 
       (.I0(data_in[53]),
        .I1(gtOp__15_carry_n_0),
        .I2(data_in[61]),
        .O(\max_value[5]_INST_0_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \max_value[6]_INST_0 
       (.I0(\max_value[6]_INST_0_i_1_n_0 ),
        .I1(gtOp),
        .I2(\max_value[6]_INST_0_i_2_n_0 ),
        .O(max_value[6]));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \max_value[6]_INST_0_i_1 
       (.I0(data_in[6]),
        .I1(gtOp_carry_n_0),
        .I2(data_in[14]),
        .I3(gtOp__7_carry_n_0),
        .I4(\max_value[6]_INST_0_i_3_n_0 ),
        .O(\max_value[6]_INST_0_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \max_value[6]_INST_0_i_2 
       (.I0(data_in[38]),
        .I1(gtOp__11_carry_n_0),
        .I2(data_in[46]),
        .I3(gtOp__19_carry_n_0),
        .I4(\max_value[6]_INST_0_i_4_n_0 ),
        .O(\max_value[6]_INST_0_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \max_value[6]_INST_0_i_3 
       (.I0(data_in[22]),
        .I1(gtOp__3_carry_n_0),
        .I2(data_in[30]),
        .O(\max_value[6]_INST_0_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \max_value[6]_INST_0_i_4 
       (.I0(data_in[54]),
        .I1(gtOp__15_carry_n_0),
        .I2(data_in[62]),
        .O(\max_value[6]_INST_0_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \max_value[7]_INST_0 
       (.I0(\max_value[7]_INST_0_i_1_n_0 ),
        .I1(gtOp),
        .I2(\max_value[7]_INST_0_i_2_n_0 ),
        .O(max_value[7]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \max_value[7]_INST_0_i_1 
       (.I0(data_in[7]),
        .I1(gtOp_carry_n_0),
        .I2(data_in[15]),
        .I3(gtOp__7_carry_n_0),
        .I4(\max_value[7]_INST_0_i_3_n_0 ),
        .O(\max_value[7]_INST_0_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \max_value[7]_INST_0_i_2 
       (.I0(data_in[39]),
        .I1(gtOp__11_carry_n_0),
        .I2(data_in[47]),
        .I3(gtOp__19_carry_n_0),
        .I4(\max_value[7]_INST_0_i_4_n_0 ),
        .O(\max_value[7]_INST_0_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \max_value[7]_INST_0_i_3 
       (.I0(data_in[23]),
        .I1(gtOp__3_carry_n_0),
        .I2(data_in[31]),
        .O(\max_value[7]_INST_0_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \max_value[7]_INST_0_i_4 
       (.I0(data_in[55]),
        .I1(gtOp__15_carry_n_0),
        .I2(data_in[63]),
        .O(\max_value[7]_INST_0_i_4_n_0 ));
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
