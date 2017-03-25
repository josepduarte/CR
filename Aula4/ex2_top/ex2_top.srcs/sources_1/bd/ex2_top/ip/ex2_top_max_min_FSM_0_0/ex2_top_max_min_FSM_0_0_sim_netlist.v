// Copyright 1986-2016 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2016.4 (win64) Build 1756540 Mon Jan 23 19:11:23 MST 2017
// Date        : Fri Mar 24 11:08:34 2017
// Host        : Inator running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               c:/Users/jduarte/Documents/GitHub/CR/Aula4/ex2_top/ex2_top.srcs/sources_1/bd/ex2_top/ip/ex2_top_max_min_FSM_0_0/ex2_top_max_min_FSM_0_0_sim_netlist.v
// Design      : ex2_top_max_min_FSM_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a100tcsg324-3
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "ex2_top_max_min_FSM_0_0,max_min_FSM,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "max_min_FSM,Vivado 2016.4" *) 
(* NotValidForBitStream *)
module ex2_top_max_min_FSM_0_0
   (clk,
    reset,
    datain,
    address,
    dataMax,
    dataMin);
  (* x_interface_info = "xilinx.com:signal:clock:1.0 clk CLK" *) input clk;
  (* x_interface_info = "xilinx.com:signal:reset:1.0 reset RST" *) input reset;
  input [31:0]datain;
  output [8:0]address;
  output [31:0]dataMax;
  output [31:0]dataMin;

  wire [8:0]address;
  wire clk;
  wire [31:0]dataMax;
  wire [31:0]dataMin;
  wire [31:0]datain;
  wire reset;

  ex2_top_max_min_FSM_0_0_max_min_FSM U0
       (.address(address),
        .clk(clk),
        .dataMax(dataMax),
        .dataMin(dataMin),
        .datain(datain),
        .reset(reset));
endmodule

(* ORIG_REF_NAME = "max_min_FSM" *) 
module ex2_top_max_min_FSM_0_0_max_min_FSM
   (clk,
    reset,
    datain,
    address,
    dataMax,
    dataMin);
  input clk;
  input reset;
  input [31:0]datain;
  output [8:0]address;
  output [31:0]dataMax;
  output [31:0]dataMin;

  wire CurrentState;
  wire CurrentState_i_1_n_0;
  wire CurrentState_i_2_n_0;
  wire CurrentState_i_3_n_0;
  wire [8:0]address;
  wire clk;
  wire [31:0]dataMax;
  wire [31:0]dataMin;
  wire [31:0]datain;
  wire gtOp;
  wire \index[8]_i_1_n_0 ;
  wire \index[8]_i_3_n_0 ;
  wire ltOp;
  wire \maxValue[31]_i_10_n_0 ;
  wire \maxValue[31]_i_11_n_0 ;
  wire \maxValue[31]_i_13_n_0 ;
  wire \maxValue[31]_i_14_n_0 ;
  wire \maxValue[31]_i_15_n_0 ;
  wire \maxValue[31]_i_16_n_0 ;
  wire \maxValue[31]_i_17_n_0 ;
  wire \maxValue[31]_i_18_n_0 ;
  wire \maxValue[31]_i_19_n_0 ;
  wire \maxValue[31]_i_1_n_0 ;
  wire \maxValue[31]_i_20_n_0 ;
  wire \maxValue[31]_i_22_n_0 ;
  wire \maxValue[31]_i_23_n_0 ;
  wire \maxValue[31]_i_24_n_0 ;
  wire \maxValue[31]_i_25_n_0 ;
  wire \maxValue[31]_i_26_n_0 ;
  wire \maxValue[31]_i_27_n_0 ;
  wire \maxValue[31]_i_28_n_0 ;
  wire \maxValue[31]_i_29_n_0 ;
  wire \maxValue[31]_i_30_n_0 ;
  wire \maxValue[31]_i_31_n_0 ;
  wire \maxValue[31]_i_32_n_0 ;
  wire \maxValue[31]_i_33_n_0 ;
  wire \maxValue[31]_i_34_n_0 ;
  wire \maxValue[31]_i_35_n_0 ;
  wire \maxValue[31]_i_36_n_0 ;
  wire \maxValue[31]_i_37_n_0 ;
  wire \maxValue[31]_i_4_n_0 ;
  wire \maxValue[31]_i_5_n_0 ;
  wire \maxValue[31]_i_6_n_0 ;
  wire \maxValue[31]_i_7_n_0 ;
  wire \maxValue[31]_i_8_n_0 ;
  wire \maxValue[31]_i_9_n_0 ;
  wire \maxValue_reg[31]_i_12_n_0 ;
  wire \maxValue_reg[31]_i_12_n_1 ;
  wire \maxValue_reg[31]_i_12_n_2 ;
  wire \maxValue_reg[31]_i_12_n_3 ;
  wire \maxValue_reg[31]_i_21_n_0 ;
  wire \maxValue_reg[31]_i_21_n_1 ;
  wire \maxValue_reg[31]_i_21_n_2 ;
  wire \maxValue_reg[31]_i_21_n_3 ;
  wire \maxValue_reg[31]_i_2_n_1 ;
  wire \maxValue_reg[31]_i_2_n_2 ;
  wire \maxValue_reg[31]_i_2_n_3 ;
  wire \maxValue_reg[31]_i_3_n_0 ;
  wire \maxValue_reg[31]_i_3_n_1 ;
  wire \maxValue_reg[31]_i_3_n_2 ;
  wire \maxValue_reg[31]_i_3_n_3 ;
  wire \minValue[31]_i_10_n_0 ;
  wire \minValue[31]_i_11_n_0 ;
  wire \minValue[31]_i_13_n_0 ;
  wire \minValue[31]_i_14_n_0 ;
  wire \minValue[31]_i_15_n_0 ;
  wire \minValue[31]_i_16_n_0 ;
  wire \minValue[31]_i_17_n_0 ;
  wire \minValue[31]_i_18_n_0 ;
  wire \minValue[31]_i_19_n_0 ;
  wire \minValue[31]_i_1_n_0 ;
  wire \minValue[31]_i_20_n_0 ;
  wire \minValue[31]_i_22_n_0 ;
  wire \minValue[31]_i_23_n_0 ;
  wire \minValue[31]_i_24_n_0 ;
  wire \minValue[31]_i_25_n_0 ;
  wire \minValue[31]_i_26_n_0 ;
  wire \minValue[31]_i_27_n_0 ;
  wire \minValue[31]_i_28_n_0 ;
  wire \minValue[31]_i_29_n_0 ;
  wire \minValue[31]_i_30_n_0 ;
  wire \minValue[31]_i_31_n_0 ;
  wire \minValue[31]_i_32_n_0 ;
  wire \minValue[31]_i_33_n_0 ;
  wire \minValue[31]_i_34_n_0 ;
  wire \minValue[31]_i_35_n_0 ;
  wire \minValue[31]_i_36_n_0 ;
  wire \minValue[31]_i_37_n_0 ;
  wire \minValue[31]_i_4_n_0 ;
  wire \minValue[31]_i_5_n_0 ;
  wire \minValue[31]_i_6_n_0 ;
  wire \minValue[31]_i_7_n_0 ;
  wire \minValue[31]_i_8_n_0 ;
  wire \minValue[31]_i_9_n_0 ;
  wire \minValue_reg[31]_i_12_n_0 ;
  wire \minValue_reg[31]_i_12_n_1 ;
  wire \minValue_reg[31]_i_12_n_2 ;
  wire \minValue_reg[31]_i_12_n_3 ;
  wire \minValue_reg[31]_i_21_n_0 ;
  wire \minValue_reg[31]_i_21_n_1 ;
  wire \minValue_reg[31]_i_21_n_2 ;
  wire \minValue_reg[31]_i_21_n_3 ;
  wire \minValue_reg[31]_i_2_n_1 ;
  wire \minValue_reg[31]_i_2_n_2 ;
  wire \minValue_reg[31]_i_2_n_3 ;
  wire \minValue_reg[31]_i_3_n_0 ;
  wire \minValue_reg[31]_i_3_n_1 ;
  wire \minValue_reg[31]_i_3_n_2 ;
  wire \minValue_reg[31]_i_3_n_3 ;
  wire [8:0]nextIndex;
  wire reset;
  wire [3:0]\NLW_maxValue_reg[31]_i_12_O_UNCONNECTED ;
  wire [3:0]\NLW_maxValue_reg[31]_i_2_O_UNCONNECTED ;
  wire [3:0]\NLW_maxValue_reg[31]_i_21_O_UNCONNECTED ;
  wire [3:0]\NLW_maxValue_reg[31]_i_3_O_UNCONNECTED ;
  wire [3:0]\NLW_minValue_reg[31]_i_12_O_UNCONNECTED ;
  wire [3:0]\NLW_minValue_reg[31]_i_2_O_UNCONNECTED ;
  wire [3:0]\NLW_minValue_reg[31]_i_21_O_UNCONNECTED ;
  wire [3:0]\NLW_minValue_reg[31]_i_3_O_UNCONNECTED ;

  LUT6 #(
    .INIT(64'h00000000FFFF0001)) 
    CurrentState_i_1
       (.I0(address[8]),
        .I1(address[6]),
        .I2(address[7]),
        .I3(CurrentState_i_2_n_0),
        .I4(CurrentState),
        .I5(reset),
        .O(CurrentState_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    CurrentState_i_2
       (.I0(CurrentState_i_3_n_0),
        .I1(ltOp),
        .I2(gtOp),
        .I3(address[1]),
        .I4(address[0]),
        .O(CurrentState_i_2_n_0));
  LUT4 #(
    .INIT(16'hFFFE)) 
    CurrentState_i_3
       (.I0(address[4]),
        .I1(address[5]),
        .I2(address[2]),
        .I3(address[3]),
        .O(CurrentState_i_3_n_0));
  FDRE CurrentState_reg
       (.C(clk),
        .CE(1'b1),
        .D(CurrentState_i_1_n_0),
        .Q(CurrentState),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \index[0]_i_1 
       (.I0(address[0]),
        .O(nextIndex[0]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \index[1]_i_1 
       (.I0(address[0]),
        .I1(address[1]),
        .O(nextIndex[1]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \index[2]_i_1 
       (.I0(address[0]),
        .I1(address[1]),
        .I2(address[2]),
        .O(nextIndex[2]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \index[3]_i_1 
       (.I0(address[1]),
        .I1(address[0]),
        .I2(address[2]),
        .I3(address[3]),
        .O(nextIndex[3]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \index[4]_i_1 
       (.I0(address[2]),
        .I1(address[0]),
        .I2(address[1]),
        .I3(address[3]),
        .I4(address[4]),
        .O(nextIndex[4]));
  LUT6 #(
    .INIT(64'h7FFFFFFF80000000)) 
    \index[5]_i_1 
       (.I0(address[3]),
        .I1(address[1]),
        .I2(address[0]),
        .I3(address[2]),
        .I4(address[4]),
        .I5(address[5]),
        .O(nextIndex[5]));
  LUT2 #(
    .INIT(4'h6)) 
    \index[6]_i_1 
       (.I0(\index[8]_i_3_n_0 ),
        .I1(address[6]),
        .O(nextIndex[6]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \index[7]_i_1 
       (.I0(\index[8]_i_3_n_0 ),
        .I1(address[6]),
        .I2(address[7]),
        .O(nextIndex[7]));
  LUT1 #(
    .INIT(2'h1)) 
    \index[8]_i_1 
       (.I0(CurrentState),
        .O(\index[8]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \index[8]_i_2 
       (.I0(address[6]),
        .I1(\index[8]_i_3_n_0 ),
        .I2(address[7]),
        .I3(address[8]),
        .O(nextIndex[8]));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    \index[8]_i_3 
       (.I0(address[5]),
        .I1(address[3]),
        .I2(address[1]),
        .I3(address[0]),
        .I4(address[2]),
        .I5(address[4]),
        .O(\index[8]_i_3_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \index_reg[0] 
       (.C(clk),
        .CE(\index[8]_i_1_n_0 ),
        .D(nextIndex[0]),
        .Q(address[0]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \index_reg[1] 
       (.C(clk),
        .CE(\index[8]_i_1_n_0 ),
        .D(nextIndex[1]),
        .Q(address[1]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \index_reg[2] 
       (.C(clk),
        .CE(\index[8]_i_1_n_0 ),
        .D(nextIndex[2]),
        .Q(address[2]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \index_reg[3] 
       (.C(clk),
        .CE(\index[8]_i_1_n_0 ),
        .D(nextIndex[3]),
        .Q(address[3]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \index_reg[4] 
       (.C(clk),
        .CE(\index[8]_i_1_n_0 ),
        .D(nextIndex[4]),
        .Q(address[4]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \index_reg[5] 
       (.C(clk),
        .CE(\index[8]_i_1_n_0 ),
        .D(nextIndex[5]),
        .Q(address[5]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \index_reg[6] 
       (.C(clk),
        .CE(\index[8]_i_1_n_0 ),
        .D(nextIndex[6]),
        .Q(address[6]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \index_reg[7] 
       (.C(clk),
        .CE(\index[8]_i_1_n_0 ),
        .D(nextIndex[7]),
        .Q(address[7]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \index_reg[8] 
       (.C(clk),
        .CE(\index[8]_i_1_n_0 ),
        .D(nextIndex[8]),
        .Q(address[8]),
        .R(reset));
  LUT2 #(
    .INIT(4'h2)) 
    \maxValue[31]_i_1 
       (.I0(gtOp),
        .I1(CurrentState),
        .O(\maxValue[31]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \maxValue[31]_i_10 
       (.I0(datain[26]),
        .I1(dataMax[26]),
        .I2(datain[27]),
        .I3(dataMax[27]),
        .O(\maxValue[31]_i_10_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \maxValue[31]_i_11 
       (.I0(datain[24]),
        .I1(dataMax[24]),
        .I2(datain[25]),
        .I3(dataMax[25]),
        .O(\maxValue[31]_i_11_n_0 ));
  LUT4 #(
    .INIT(16'h2F02)) 
    \maxValue[31]_i_13 
       (.I0(datain[22]),
        .I1(dataMax[22]),
        .I2(dataMax[23]),
        .I3(datain[23]),
        .O(\maxValue[31]_i_13_n_0 ));
  LUT4 #(
    .INIT(16'h2F02)) 
    \maxValue[31]_i_14 
       (.I0(datain[20]),
        .I1(dataMax[20]),
        .I2(dataMax[21]),
        .I3(datain[21]),
        .O(\maxValue[31]_i_14_n_0 ));
  LUT4 #(
    .INIT(16'h2F02)) 
    \maxValue[31]_i_15 
       (.I0(datain[18]),
        .I1(dataMax[18]),
        .I2(dataMax[19]),
        .I3(datain[19]),
        .O(\maxValue[31]_i_15_n_0 ));
  LUT4 #(
    .INIT(16'h2F02)) 
    \maxValue[31]_i_16 
       (.I0(datain[16]),
        .I1(dataMax[16]),
        .I2(dataMax[17]),
        .I3(datain[17]),
        .O(\maxValue[31]_i_16_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \maxValue[31]_i_17 
       (.I0(datain[22]),
        .I1(dataMax[22]),
        .I2(datain[23]),
        .I3(dataMax[23]),
        .O(\maxValue[31]_i_17_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \maxValue[31]_i_18 
       (.I0(datain[20]),
        .I1(dataMax[20]),
        .I2(datain[21]),
        .I3(dataMax[21]),
        .O(\maxValue[31]_i_18_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \maxValue[31]_i_19 
       (.I0(datain[18]),
        .I1(dataMax[18]),
        .I2(datain[19]),
        .I3(dataMax[19]),
        .O(\maxValue[31]_i_19_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \maxValue[31]_i_20 
       (.I0(datain[16]),
        .I1(dataMax[16]),
        .I2(datain[17]),
        .I3(dataMax[17]),
        .O(\maxValue[31]_i_20_n_0 ));
  LUT4 #(
    .INIT(16'h2F02)) 
    \maxValue[31]_i_22 
       (.I0(datain[14]),
        .I1(dataMax[14]),
        .I2(dataMax[15]),
        .I3(datain[15]),
        .O(\maxValue[31]_i_22_n_0 ));
  LUT4 #(
    .INIT(16'h2F02)) 
    \maxValue[31]_i_23 
       (.I0(datain[12]),
        .I1(dataMax[12]),
        .I2(dataMax[13]),
        .I3(datain[13]),
        .O(\maxValue[31]_i_23_n_0 ));
  LUT4 #(
    .INIT(16'h2F02)) 
    \maxValue[31]_i_24 
       (.I0(datain[10]),
        .I1(dataMax[10]),
        .I2(dataMax[11]),
        .I3(datain[11]),
        .O(\maxValue[31]_i_24_n_0 ));
  LUT4 #(
    .INIT(16'h2F02)) 
    \maxValue[31]_i_25 
       (.I0(datain[8]),
        .I1(dataMax[8]),
        .I2(dataMax[9]),
        .I3(datain[9]),
        .O(\maxValue[31]_i_25_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \maxValue[31]_i_26 
       (.I0(datain[14]),
        .I1(dataMax[14]),
        .I2(datain[15]),
        .I3(dataMax[15]),
        .O(\maxValue[31]_i_26_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \maxValue[31]_i_27 
       (.I0(datain[12]),
        .I1(dataMax[12]),
        .I2(datain[13]),
        .I3(dataMax[13]),
        .O(\maxValue[31]_i_27_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \maxValue[31]_i_28 
       (.I0(datain[10]),
        .I1(dataMax[10]),
        .I2(datain[11]),
        .I3(dataMax[11]),
        .O(\maxValue[31]_i_28_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \maxValue[31]_i_29 
       (.I0(datain[8]),
        .I1(dataMax[8]),
        .I2(datain[9]),
        .I3(dataMax[9]),
        .O(\maxValue[31]_i_29_n_0 ));
  LUT4 #(
    .INIT(16'h2F02)) 
    \maxValue[31]_i_30 
       (.I0(datain[6]),
        .I1(dataMax[6]),
        .I2(dataMax[7]),
        .I3(datain[7]),
        .O(\maxValue[31]_i_30_n_0 ));
  LUT4 #(
    .INIT(16'h2F02)) 
    \maxValue[31]_i_31 
       (.I0(datain[4]),
        .I1(dataMax[4]),
        .I2(dataMax[5]),
        .I3(datain[5]),
        .O(\maxValue[31]_i_31_n_0 ));
  LUT4 #(
    .INIT(16'h2F02)) 
    \maxValue[31]_i_32 
       (.I0(datain[2]),
        .I1(dataMax[2]),
        .I2(dataMax[3]),
        .I3(datain[3]),
        .O(\maxValue[31]_i_32_n_0 ));
  LUT4 #(
    .INIT(16'h2F02)) 
    \maxValue[31]_i_33 
       (.I0(datain[0]),
        .I1(dataMax[0]),
        .I2(dataMax[1]),
        .I3(datain[1]),
        .O(\maxValue[31]_i_33_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \maxValue[31]_i_34 
       (.I0(datain[6]),
        .I1(dataMax[6]),
        .I2(datain[7]),
        .I3(dataMax[7]),
        .O(\maxValue[31]_i_34_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \maxValue[31]_i_35 
       (.I0(datain[4]),
        .I1(dataMax[4]),
        .I2(datain[5]),
        .I3(dataMax[5]),
        .O(\maxValue[31]_i_35_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \maxValue[31]_i_36 
       (.I0(datain[2]),
        .I1(dataMax[2]),
        .I2(datain[3]),
        .I3(dataMax[3]),
        .O(\maxValue[31]_i_36_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \maxValue[31]_i_37 
       (.I0(datain[0]),
        .I1(dataMax[0]),
        .I2(datain[1]),
        .I3(dataMax[1]),
        .O(\maxValue[31]_i_37_n_0 ));
  LUT4 #(
    .INIT(16'h2F02)) 
    \maxValue[31]_i_4 
       (.I0(datain[30]),
        .I1(dataMax[30]),
        .I2(dataMax[31]),
        .I3(datain[31]),
        .O(\maxValue[31]_i_4_n_0 ));
  LUT4 #(
    .INIT(16'h2F02)) 
    \maxValue[31]_i_5 
       (.I0(datain[28]),
        .I1(dataMax[28]),
        .I2(dataMax[29]),
        .I3(datain[29]),
        .O(\maxValue[31]_i_5_n_0 ));
  LUT4 #(
    .INIT(16'h2F02)) 
    \maxValue[31]_i_6 
       (.I0(datain[26]),
        .I1(dataMax[26]),
        .I2(dataMax[27]),
        .I3(datain[27]),
        .O(\maxValue[31]_i_6_n_0 ));
  LUT4 #(
    .INIT(16'h2F02)) 
    \maxValue[31]_i_7 
       (.I0(datain[24]),
        .I1(dataMax[24]),
        .I2(dataMax[25]),
        .I3(datain[25]),
        .O(\maxValue[31]_i_7_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \maxValue[31]_i_8 
       (.I0(datain[30]),
        .I1(dataMax[30]),
        .I2(datain[31]),
        .I3(dataMax[31]),
        .O(\maxValue[31]_i_8_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \maxValue[31]_i_9 
       (.I0(datain[28]),
        .I1(dataMax[28]),
        .I2(datain[29]),
        .I3(dataMax[29]),
        .O(\maxValue[31]_i_9_n_0 ));
  FDSE #(
    .INIT(1'b0)) 
    \maxValue_reg[0] 
       (.C(clk),
        .CE(\maxValue[31]_i_1_n_0 ),
        .D(datain[0]),
        .Q(dataMax[0]),
        .S(reset));
  FDSE #(
    .INIT(1'b0)) 
    \maxValue_reg[10] 
       (.C(clk),
        .CE(\maxValue[31]_i_1_n_0 ),
        .D(datain[10]),
        .Q(dataMax[10]),
        .S(reset));
  FDSE #(
    .INIT(1'b0)) 
    \maxValue_reg[11] 
       (.C(clk),
        .CE(\maxValue[31]_i_1_n_0 ),
        .D(datain[11]),
        .Q(dataMax[11]),
        .S(reset));
  FDSE #(
    .INIT(1'b0)) 
    \maxValue_reg[12] 
       (.C(clk),
        .CE(\maxValue[31]_i_1_n_0 ),
        .D(datain[12]),
        .Q(dataMax[12]),
        .S(reset));
  FDSE #(
    .INIT(1'b0)) 
    \maxValue_reg[13] 
       (.C(clk),
        .CE(\maxValue[31]_i_1_n_0 ),
        .D(datain[13]),
        .Q(dataMax[13]),
        .S(reset));
  FDSE #(
    .INIT(1'b0)) 
    \maxValue_reg[14] 
       (.C(clk),
        .CE(\maxValue[31]_i_1_n_0 ),
        .D(datain[14]),
        .Q(dataMax[14]),
        .S(reset));
  FDSE #(
    .INIT(1'b0)) 
    \maxValue_reg[15] 
       (.C(clk),
        .CE(\maxValue[31]_i_1_n_0 ),
        .D(datain[15]),
        .Q(dataMax[15]),
        .S(reset));
  FDSE #(
    .INIT(1'b0)) 
    \maxValue_reg[16] 
       (.C(clk),
        .CE(\maxValue[31]_i_1_n_0 ),
        .D(datain[16]),
        .Q(dataMax[16]),
        .S(reset));
  FDSE #(
    .INIT(1'b0)) 
    \maxValue_reg[17] 
       (.C(clk),
        .CE(\maxValue[31]_i_1_n_0 ),
        .D(datain[17]),
        .Q(dataMax[17]),
        .S(reset));
  FDSE #(
    .INIT(1'b0)) 
    \maxValue_reg[18] 
       (.C(clk),
        .CE(\maxValue[31]_i_1_n_0 ),
        .D(datain[18]),
        .Q(dataMax[18]),
        .S(reset));
  FDSE #(
    .INIT(1'b0)) 
    \maxValue_reg[19] 
       (.C(clk),
        .CE(\maxValue[31]_i_1_n_0 ),
        .D(datain[19]),
        .Q(dataMax[19]),
        .S(reset));
  FDSE #(
    .INIT(1'b0)) 
    \maxValue_reg[1] 
       (.C(clk),
        .CE(\maxValue[31]_i_1_n_0 ),
        .D(datain[1]),
        .Q(dataMax[1]),
        .S(reset));
  FDSE #(
    .INIT(1'b0)) 
    \maxValue_reg[20] 
       (.C(clk),
        .CE(\maxValue[31]_i_1_n_0 ),
        .D(datain[20]),
        .Q(dataMax[20]),
        .S(reset));
  FDSE #(
    .INIT(1'b0)) 
    \maxValue_reg[21] 
       (.C(clk),
        .CE(\maxValue[31]_i_1_n_0 ),
        .D(datain[21]),
        .Q(dataMax[21]),
        .S(reset));
  FDSE #(
    .INIT(1'b0)) 
    \maxValue_reg[22] 
       (.C(clk),
        .CE(\maxValue[31]_i_1_n_0 ),
        .D(datain[22]),
        .Q(dataMax[22]),
        .S(reset));
  FDSE #(
    .INIT(1'b0)) 
    \maxValue_reg[23] 
       (.C(clk),
        .CE(\maxValue[31]_i_1_n_0 ),
        .D(datain[23]),
        .Q(dataMax[23]),
        .S(reset));
  FDSE #(
    .INIT(1'b0)) 
    \maxValue_reg[24] 
       (.C(clk),
        .CE(\maxValue[31]_i_1_n_0 ),
        .D(datain[24]),
        .Q(dataMax[24]),
        .S(reset));
  FDSE #(
    .INIT(1'b0)) 
    \maxValue_reg[25] 
       (.C(clk),
        .CE(\maxValue[31]_i_1_n_0 ),
        .D(datain[25]),
        .Q(dataMax[25]),
        .S(reset));
  FDSE #(
    .INIT(1'b0)) 
    \maxValue_reg[26] 
       (.C(clk),
        .CE(\maxValue[31]_i_1_n_0 ),
        .D(datain[26]),
        .Q(dataMax[26]),
        .S(reset));
  FDSE #(
    .INIT(1'b0)) 
    \maxValue_reg[27] 
       (.C(clk),
        .CE(\maxValue[31]_i_1_n_0 ),
        .D(datain[27]),
        .Q(dataMax[27]),
        .S(reset));
  FDSE #(
    .INIT(1'b0)) 
    \maxValue_reg[28] 
       (.C(clk),
        .CE(\maxValue[31]_i_1_n_0 ),
        .D(datain[28]),
        .Q(dataMax[28]),
        .S(reset));
  FDSE #(
    .INIT(1'b0)) 
    \maxValue_reg[29] 
       (.C(clk),
        .CE(\maxValue[31]_i_1_n_0 ),
        .D(datain[29]),
        .Q(dataMax[29]),
        .S(reset));
  FDSE #(
    .INIT(1'b0)) 
    \maxValue_reg[2] 
       (.C(clk),
        .CE(\maxValue[31]_i_1_n_0 ),
        .D(datain[2]),
        .Q(dataMax[2]),
        .S(reset));
  FDSE #(
    .INIT(1'b0)) 
    \maxValue_reg[30] 
       (.C(clk),
        .CE(\maxValue[31]_i_1_n_0 ),
        .D(datain[30]),
        .Q(dataMax[30]),
        .S(reset));
  FDSE #(
    .INIT(1'b0)) 
    \maxValue_reg[31] 
       (.C(clk),
        .CE(\maxValue[31]_i_1_n_0 ),
        .D(datain[31]),
        .Q(dataMax[31]),
        .S(reset));
  CARRY4 \maxValue_reg[31]_i_12 
       (.CI(\maxValue_reg[31]_i_21_n_0 ),
        .CO({\maxValue_reg[31]_i_12_n_0 ,\maxValue_reg[31]_i_12_n_1 ,\maxValue_reg[31]_i_12_n_2 ,\maxValue_reg[31]_i_12_n_3 }),
        .CYINIT(1'b0),
        .DI({\maxValue[31]_i_22_n_0 ,\maxValue[31]_i_23_n_0 ,\maxValue[31]_i_24_n_0 ,\maxValue[31]_i_25_n_0 }),
        .O(\NLW_maxValue_reg[31]_i_12_O_UNCONNECTED [3:0]),
        .S({\maxValue[31]_i_26_n_0 ,\maxValue[31]_i_27_n_0 ,\maxValue[31]_i_28_n_0 ,\maxValue[31]_i_29_n_0 }));
  CARRY4 \maxValue_reg[31]_i_2 
       (.CI(\maxValue_reg[31]_i_3_n_0 ),
        .CO({gtOp,\maxValue_reg[31]_i_2_n_1 ,\maxValue_reg[31]_i_2_n_2 ,\maxValue_reg[31]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({\maxValue[31]_i_4_n_0 ,\maxValue[31]_i_5_n_0 ,\maxValue[31]_i_6_n_0 ,\maxValue[31]_i_7_n_0 }),
        .O(\NLW_maxValue_reg[31]_i_2_O_UNCONNECTED [3:0]),
        .S({\maxValue[31]_i_8_n_0 ,\maxValue[31]_i_9_n_0 ,\maxValue[31]_i_10_n_0 ,\maxValue[31]_i_11_n_0 }));
  CARRY4 \maxValue_reg[31]_i_21 
       (.CI(1'b0),
        .CO({\maxValue_reg[31]_i_21_n_0 ,\maxValue_reg[31]_i_21_n_1 ,\maxValue_reg[31]_i_21_n_2 ,\maxValue_reg[31]_i_21_n_3 }),
        .CYINIT(1'b0),
        .DI({\maxValue[31]_i_30_n_0 ,\maxValue[31]_i_31_n_0 ,\maxValue[31]_i_32_n_0 ,\maxValue[31]_i_33_n_0 }),
        .O(\NLW_maxValue_reg[31]_i_21_O_UNCONNECTED [3:0]),
        .S({\maxValue[31]_i_34_n_0 ,\maxValue[31]_i_35_n_0 ,\maxValue[31]_i_36_n_0 ,\maxValue[31]_i_37_n_0 }));
  CARRY4 \maxValue_reg[31]_i_3 
       (.CI(\maxValue_reg[31]_i_12_n_0 ),
        .CO({\maxValue_reg[31]_i_3_n_0 ,\maxValue_reg[31]_i_3_n_1 ,\maxValue_reg[31]_i_3_n_2 ,\maxValue_reg[31]_i_3_n_3 }),
        .CYINIT(1'b0),
        .DI({\maxValue[31]_i_13_n_0 ,\maxValue[31]_i_14_n_0 ,\maxValue[31]_i_15_n_0 ,\maxValue[31]_i_16_n_0 }),
        .O(\NLW_maxValue_reg[31]_i_3_O_UNCONNECTED [3:0]),
        .S({\maxValue[31]_i_17_n_0 ,\maxValue[31]_i_18_n_0 ,\maxValue[31]_i_19_n_0 ,\maxValue[31]_i_20_n_0 }));
  FDSE #(
    .INIT(1'b0)) 
    \maxValue_reg[3] 
       (.C(clk),
        .CE(\maxValue[31]_i_1_n_0 ),
        .D(datain[3]),
        .Q(dataMax[3]),
        .S(reset));
  FDSE #(
    .INIT(1'b0)) 
    \maxValue_reg[4] 
       (.C(clk),
        .CE(\maxValue[31]_i_1_n_0 ),
        .D(datain[4]),
        .Q(dataMax[4]),
        .S(reset));
  FDSE #(
    .INIT(1'b0)) 
    \maxValue_reg[5] 
       (.C(clk),
        .CE(\maxValue[31]_i_1_n_0 ),
        .D(datain[5]),
        .Q(dataMax[5]),
        .S(reset));
  FDSE #(
    .INIT(1'b0)) 
    \maxValue_reg[6] 
       (.C(clk),
        .CE(\maxValue[31]_i_1_n_0 ),
        .D(datain[6]),
        .Q(dataMax[6]),
        .S(reset));
  FDSE #(
    .INIT(1'b0)) 
    \maxValue_reg[7] 
       (.C(clk),
        .CE(\maxValue[31]_i_1_n_0 ),
        .D(datain[7]),
        .Q(dataMax[7]),
        .S(reset));
  FDSE #(
    .INIT(1'b0)) 
    \maxValue_reg[8] 
       (.C(clk),
        .CE(\maxValue[31]_i_1_n_0 ),
        .D(datain[8]),
        .Q(dataMax[8]),
        .S(reset));
  FDSE #(
    .INIT(1'b0)) 
    \maxValue_reg[9] 
       (.C(clk),
        .CE(\maxValue[31]_i_1_n_0 ),
        .D(datain[9]),
        .Q(dataMax[9]),
        .S(reset));
  LUT2 #(
    .INIT(4'h2)) 
    \minValue[31]_i_1 
       (.I0(ltOp),
        .I1(CurrentState),
        .O(\minValue[31]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \minValue[31]_i_10 
       (.I0(dataMin[26]),
        .I1(datain[26]),
        .I2(dataMin[27]),
        .I3(datain[27]),
        .O(\minValue[31]_i_10_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \minValue[31]_i_11 
       (.I0(dataMin[24]),
        .I1(datain[24]),
        .I2(dataMin[25]),
        .I3(datain[25]),
        .O(\minValue[31]_i_11_n_0 ));
  LUT4 #(
    .INIT(16'h2F02)) 
    \minValue[31]_i_13 
       (.I0(dataMin[22]),
        .I1(datain[22]),
        .I2(datain[23]),
        .I3(dataMin[23]),
        .O(\minValue[31]_i_13_n_0 ));
  LUT4 #(
    .INIT(16'h2F02)) 
    \minValue[31]_i_14 
       (.I0(dataMin[20]),
        .I1(datain[20]),
        .I2(datain[21]),
        .I3(dataMin[21]),
        .O(\minValue[31]_i_14_n_0 ));
  LUT4 #(
    .INIT(16'h2F02)) 
    \minValue[31]_i_15 
       (.I0(dataMin[18]),
        .I1(datain[18]),
        .I2(datain[19]),
        .I3(dataMin[19]),
        .O(\minValue[31]_i_15_n_0 ));
  LUT4 #(
    .INIT(16'h2F02)) 
    \minValue[31]_i_16 
       (.I0(dataMin[16]),
        .I1(datain[16]),
        .I2(datain[17]),
        .I3(dataMin[17]),
        .O(\minValue[31]_i_16_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \minValue[31]_i_17 
       (.I0(dataMin[22]),
        .I1(datain[22]),
        .I2(dataMin[23]),
        .I3(datain[23]),
        .O(\minValue[31]_i_17_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \minValue[31]_i_18 
       (.I0(dataMin[20]),
        .I1(datain[20]),
        .I2(dataMin[21]),
        .I3(datain[21]),
        .O(\minValue[31]_i_18_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \minValue[31]_i_19 
       (.I0(dataMin[18]),
        .I1(datain[18]),
        .I2(dataMin[19]),
        .I3(datain[19]),
        .O(\minValue[31]_i_19_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \minValue[31]_i_20 
       (.I0(dataMin[16]),
        .I1(datain[16]),
        .I2(dataMin[17]),
        .I3(datain[17]),
        .O(\minValue[31]_i_20_n_0 ));
  LUT4 #(
    .INIT(16'h2F02)) 
    \minValue[31]_i_22 
       (.I0(dataMin[14]),
        .I1(datain[14]),
        .I2(datain[15]),
        .I3(dataMin[15]),
        .O(\minValue[31]_i_22_n_0 ));
  LUT4 #(
    .INIT(16'h2F02)) 
    \minValue[31]_i_23 
       (.I0(dataMin[12]),
        .I1(datain[12]),
        .I2(datain[13]),
        .I3(dataMin[13]),
        .O(\minValue[31]_i_23_n_0 ));
  LUT4 #(
    .INIT(16'h2F02)) 
    \minValue[31]_i_24 
       (.I0(dataMin[10]),
        .I1(datain[10]),
        .I2(datain[11]),
        .I3(dataMin[11]),
        .O(\minValue[31]_i_24_n_0 ));
  LUT4 #(
    .INIT(16'h2F02)) 
    \minValue[31]_i_25 
       (.I0(dataMin[8]),
        .I1(datain[8]),
        .I2(datain[9]),
        .I3(dataMin[9]),
        .O(\minValue[31]_i_25_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \minValue[31]_i_26 
       (.I0(dataMin[14]),
        .I1(datain[14]),
        .I2(dataMin[15]),
        .I3(datain[15]),
        .O(\minValue[31]_i_26_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \minValue[31]_i_27 
       (.I0(dataMin[12]),
        .I1(datain[12]),
        .I2(dataMin[13]),
        .I3(datain[13]),
        .O(\minValue[31]_i_27_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \minValue[31]_i_28 
       (.I0(dataMin[10]),
        .I1(datain[10]),
        .I2(dataMin[11]),
        .I3(datain[11]),
        .O(\minValue[31]_i_28_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \minValue[31]_i_29 
       (.I0(dataMin[8]),
        .I1(datain[8]),
        .I2(dataMin[9]),
        .I3(datain[9]),
        .O(\minValue[31]_i_29_n_0 ));
  LUT4 #(
    .INIT(16'h2F02)) 
    \minValue[31]_i_30 
       (.I0(dataMin[6]),
        .I1(datain[6]),
        .I2(datain[7]),
        .I3(dataMin[7]),
        .O(\minValue[31]_i_30_n_0 ));
  LUT4 #(
    .INIT(16'h2F02)) 
    \minValue[31]_i_31 
       (.I0(dataMin[4]),
        .I1(datain[4]),
        .I2(datain[5]),
        .I3(dataMin[5]),
        .O(\minValue[31]_i_31_n_0 ));
  LUT4 #(
    .INIT(16'h2F02)) 
    \minValue[31]_i_32 
       (.I0(dataMin[2]),
        .I1(datain[2]),
        .I2(datain[3]),
        .I3(dataMin[3]),
        .O(\minValue[31]_i_32_n_0 ));
  LUT4 #(
    .INIT(16'h2F02)) 
    \minValue[31]_i_33 
       (.I0(dataMin[0]),
        .I1(datain[0]),
        .I2(datain[1]),
        .I3(dataMin[1]),
        .O(\minValue[31]_i_33_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \minValue[31]_i_34 
       (.I0(dataMin[6]),
        .I1(datain[6]),
        .I2(dataMin[7]),
        .I3(datain[7]),
        .O(\minValue[31]_i_34_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \minValue[31]_i_35 
       (.I0(dataMin[4]),
        .I1(datain[4]),
        .I2(dataMin[5]),
        .I3(datain[5]),
        .O(\minValue[31]_i_35_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \minValue[31]_i_36 
       (.I0(dataMin[2]),
        .I1(datain[2]),
        .I2(dataMin[3]),
        .I3(datain[3]),
        .O(\minValue[31]_i_36_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \minValue[31]_i_37 
       (.I0(dataMin[0]),
        .I1(datain[0]),
        .I2(dataMin[1]),
        .I3(datain[1]),
        .O(\minValue[31]_i_37_n_0 ));
  LUT4 #(
    .INIT(16'h2F02)) 
    \minValue[31]_i_4 
       (.I0(dataMin[30]),
        .I1(datain[30]),
        .I2(datain[31]),
        .I3(dataMin[31]),
        .O(\minValue[31]_i_4_n_0 ));
  LUT4 #(
    .INIT(16'h2F02)) 
    \minValue[31]_i_5 
       (.I0(dataMin[28]),
        .I1(datain[28]),
        .I2(datain[29]),
        .I3(dataMin[29]),
        .O(\minValue[31]_i_5_n_0 ));
  LUT4 #(
    .INIT(16'h2F02)) 
    \minValue[31]_i_6 
       (.I0(dataMin[26]),
        .I1(datain[26]),
        .I2(datain[27]),
        .I3(dataMin[27]),
        .O(\minValue[31]_i_6_n_0 ));
  LUT4 #(
    .INIT(16'h2F02)) 
    \minValue[31]_i_7 
       (.I0(dataMin[24]),
        .I1(datain[24]),
        .I2(datain[25]),
        .I3(dataMin[25]),
        .O(\minValue[31]_i_7_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \minValue[31]_i_8 
       (.I0(dataMin[30]),
        .I1(datain[30]),
        .I2(dataMin[31]),
        .I3(datain[31]),
        .O(\minValue[31]_i_8_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \minValue[31]_i_9 
       (.I0(dataMin[28]),
        .I1(datain[28]),
        .I2(dataMin[29]),
        .I3(datain[29]),
        .O(\minValue[31]_i_9_n_0 ));
  FDRE #(
    .INIT(1'b1)) 
    \minValue_reg[0] 
       (.C(clk),
        .CE(\minValue[31]_i_1_n_0 ),
        .D(datain[0]),
        .Q(dataMin[0]),
        .R(reset));
  FDRE #(
    .INIT(1'b1)) 
    \minValue_reg[10] 
       (.C(clk),
        .CE(\minValue[31]_i_1_n_0 ),
        .D(datain[10]),
        .Q(dataMin[10]),
        .R(reset));
  FDRE #(
    .INIT(1'b1)) 
    \minValue_reg[11] 
       (.C(clk),
        .CE(\minValue[31]_i_1_n_0 ),
        .D(datain[11]),
        .Q(dataMin[11]),
        .R(reset));
  FDRE #(
    .INIT(1'b1)) 
    \minValue_reg[12] 
       (.C(clk),
        .CE(\minValue[31]_i_1_n_0 ),
        .D(datain[12]),
        .Q(dataMin[12]),
        .R(reset));
  FDRE #(
    .INIT(1'b1)) 
    \minValue_reg[13] 
       (.C(clk),
        .CE(\minValue[31]_i_1_n_0 ),
        .D(datain[13]),
        .Q(dataMin[13]),
        .R(reset));
  FDRE #(
    .INIT(1'b1)) 
    \minValue_reg[14] 
       (.C(clk),
        .CE(\minValue[31]_i_1_n_0 ),
        .D(datain[14]),
        .Q(dataMin[14]),
        .R(reset));
  FDRE #(
    .INIT(1'b1)) 
    \minValue_reg[15] 
       (.C(clk),
        .CE(\minValue[31]_i_1_n_0 ),
        .D(datain[15]),
        .Q(dataMin[15]),
        .R(reset));
  FDRE #(
    .INIT(1'b1)) 
    \minValue_reg[16] 
       (.C(clk),
        .CE(\minValue[31]_i_1_n_0 ),
        .D(datain[16]),
        .Q(dataMin[16]),
        .R(reset));
  FDRE #(
    .INIT(1'b1)) 
    \minValue_reg[17] 
       (.C(clk),
        .CE(\minValue[31]_i_1_n_0 ),
        .D(datain[17]),
        .Q(dataMin[17]),
        .R(reset));
  FDRE #(
    .INIT(1'b1)) 
    \minValue_reg[18] 
       (.C(clk),
        .CE(\minValue[31]_i_1_n_0 ),
        .D(datain[18]),
        .Q(dataMin[18]),
        .R(reset));
  FDRE #(
    .INIT(1'b1)) 
    \minValue_reg[19] 
       (.C(clk),
        .CE(\minValue[31]_i_1_n_0 ),
        .D(datain[19]),
        .Q(dataMin[19]),
        .R(reset));
  FDRE #(
    .INIT(1'b1)) 
    \minValue_reg[1] 
       (.C(clk),
        .CE(\minValue[31]_i_1_n_0 ),
        .D(datain[1]),
        .Q(dataMin[1]),
        .R(reset));
  FDRE #(
    .INIT(1'b1)) 
    \minValue_reg[20] 
       (.C(clk),
        .CE(\minValue[31]_i_1_n_0 ),
        .D(datain[20]),
        .Q(dataMin[20]),
        .R(reset));
  FDRE #(
    .INIT(1'b1)) 
    \minValue_reg[21] 
       (.C(clk),
        .CE(\minValue[31]_i_1_n_0 ),
        .D(datain[21]),
        .Q(dataMin[21]),
        .R(reset));
  FDRE #(
    .INIT(1'b1)) 
    \minValue_reg[22] 
       (.C(clk),
        .CE(\minValue[31]_i_1_n_0 ),
        .D(datain[22]),
        .Q(dataMin[22]),
        .R(reset));
  FDRE #(
    .INIT(1'b1)) 
    \minValue_reg[23] 
       (.C(clk),
        .CE(\minValue[31]_i_1_n_0 ),
        .D(datain[23]),
        .Q(dataMin[23]),
        .R(reset));
  FDRE #(
    .INIT(1'b1)) 
    \minValue_reg[24] 
       (.C(clk),
        .CE(\minValue[31]_i_1_n_0 ),
        .D(datain[24]),
        .Q(dataMin[24]),
        .R(reset));
  FDRE #(
    .INIT(1'b1)) 
    \minValue_reg[25] 
       (.C(clk),
        .CE(\minValue[31]_i_1_n_0 ),
        .D(datain[25]),
        .Q(dataMin[25]),
        .R(reset));
  FDRE #(
    .INIT(1'b1)) 
    \minValue_reg[26] 
       (.C(clk),
        .CE(\minValue[31]_i_1_n_0 ),
        .D(datain[26]),
        .Q(dataMin[26]),
        .R(reset));
  FDRE #(
    .INIT(1'b1)) 
    \minValue_reg[27] 
       (.C(clk),
        .CE(\minValue[31]_i_1_n_0 ),
        .D(datain[27]),
        .Q(dataMin[27]),
        .R(reset));
  FDRE #(
    .INIT(1'b1)) 
    \minValue_reg[28] 
       (.C(clk),
        .CE(\minValue[31]_i_1_n_0 ),
        .D(datain[28]),
        .Q(dataMin[28]),
        .R(reset));
  FDRE #(
    .INIT(1'b1)) 
    \minValue_reg[29] 
       (.C(clk),
        .CE(\minValue[31]_i_1_n_0 ),
        .D(datain[29]),
        .Q(dataMin[29]),
        .R(reset));
  FDRE #(
    .INIT(1'b1)) 
    \minValue_reg[2] 
       (.C(clk),
        .CE(\minValue[31]_i_1_n_0 ),
        .D(datain[2]),
        .Q(dataMin[2]),
        .R(reset));
  FDRE #(
    .INIT(1'b1)) 
    \minValue_reg[30] 
       (.C(clk),
        .CE(\minValue[31]_i_1_n_0 ),
        .D(datain[30]),
        .Q(dataMin[30]),
        .R(reset));
  FDRE #(
    .INIT(1'b1)) 
    \minValue_reg[31] 
       (.C(clk),
        .CE(\minValue[31]_i_1_n_0 ),
        .D(datain[31]),
        .Q(dataMin[31]),
        .R(reset));
  CARRY4 \minValue_reg[31]_i_12 
       (.CI(\minValue_reg[31]_i_21_n_0 ),
        .CO({\minValue_reg[31]_i_12_n_0 ,\minValue_reg[31]_i_12_n_1 ,\minValue_reg[31]_i_12_n_2 ,\minValue_reg[31]_i_12_n_3 }),
        .CYINIT(1'b0),
        .DI({\minValue[31]_i_22_n_0 ,\minValue[31]_i_23_n_0 ,\minValue[31]_i_24_n_0 ,\minValue[31]_i_25_n_0 }),
        .O(\NLW_minValue_reg[31]_i_12_O_UNCONNECTED [3:0]),
        .S({\minValue[31]_i_26_n_0 ,\minValue[31]_i_27_n_0 ,\minValue[31]_i_28_n_0 ,\minValue[31]_i_29_n_0 }));
  CARRY4 \minValue_reg[31]_i_2 
       (.CI(\minValue_reg[31]_i_3_n_0 ),
        .CO({ltOp,\minValue_reg[31]_i_2_n_1 ,\minValue_reg[31]_i_2_n_2 ,\minValue_reg[31]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({\minValue[31]_i_4_n_0 ,\minValue[31]_i_5_n_0 ,\minValue[31]_i_6_n_0 ,\minValue[31]_i_7_n_0 }),
        .O(\NLW_minValue_reg[31]_i_2_O_UNCONNECTED [3:0]),
        .S({\minValue[31]_i_8_n_0 ,\minValue[31]_i_9_n_0 ,\minValue[31]_i_10_n_0 ,\minValue[31]_i_11_n_0 }));
  CARRY4 \minValue_reg[31]_i_21 
       (.CI(1'b0),
        .CO({\minValue_reg[31]_i_21_n_0 ,\minValue_reg[31]_i_21_n_1 ,\minValue_reg[31]_i_21_n_2 ,\minValue_reg[31]_i_21_n_3 }),
        .CYINIT(1'b0),
        .DI({\minValue[31]_i_30_n_0 ,\minValue[31]_i_31_n_0 ,\minValue[31]_i_32_n_0 ,\minValue[31]_i_33_n_0 }),
        .O(\NLW_minValue_reg[31]_i_21_O_UNCONNECTED [3:0]),
        .S({\minValue[31]_i_34_n_0 ,\minValue[31]_i_35_n_0 ,\minValue[31]_i_36_n_0 ,\minValue[31]_i_37_n_0 }));
  CARRY4 \minValue_reg[31]_i_3 
       (.CI(\minValue_reg[31]_i_12_n_0 ),
        .CO({\minValue_reg[31]_i_3_n_0 ,\minValue_reg[31]_i_3_n_1 ,\minValue_reg[31]_i_3_n_2 ,\minValue_reg[31]_i_3_n_3 }),
        .CYINIT(1'b0),
        .DI({\minValue[31]_i_13_n_0 ,\minValue[31]_i_14_n_0 ,\minValue[31]_i_15_n_0 ,\minValue[31]_i_16_n_0 }),
        .O(\NLW_minValue_reg[31]_i_3_O_UNCONNECTED [3:0]),
        .S({\minValue[31]_i_17_n_0 ,\minValue[31]_i_18_n_0 ,\minValue[31]_i_19_n_0 ,\minValue[31]_i_20_n_0 }));
  FDRE #(
    .INIT(1'b1)) 
    \minValue_reg[3] 
       (.C(clk),
        .CE(\minValue[31]_i_1_n_0 ),
        .D(datain[3]),
        .Q(dataMin[3]),
        .R(reset));
  FDRE #(
    .INIT(1'b1)) 
    \minValue_reg[4] 
       (.C(clk),
        .CE(\minValue[31]_i_1_n_0 ),
        .D(datain[4]),
        .Q(dataMin[4]),
        .R(reset));
  FDRE #(
    .INIT(1'b1)) 
    \minValue_reg[5] 
       (.C(clk),
        .CE(\minValue[31]_i_1_n_0 ),
        .D(datain[5]),
        .Q(dataMin[5]),
        .R(reset));
  FDRE #(
    .INIT(1'b1)) 
    \minValue_reg[6] 
       (.C(clk),
        .CE(\minValue[31]_i_1_n_0 ),
        .D(datain[6]),
        .Q(dataMin[6]),
        .R(reset));
  FDRE #(
    .INIT(1'b1)) 
    \minValue_reg[7] 
       (.C(clk),
        .CE(\minValue[31]_i_1_n_0 ),
        .D(datain[7]),
        .Q(dataMin[7]),
        .R(reset));
  FDRE #(
    .INIT(1'b1)) 
    \minValue_reg[8] 
       (.C(clk),
        .CE(\minValue[31]_i_1_n_0 ),
        .D(datain[8]),
        .Q(dataMin[8]),
        .R(reset));
  FDRE #(
    .INIT(1'b1)) 
    \minValue_reg[9] 
       (.C(clk),
        .CE(\minValue[31]_i_1_n_0 ),
        .D(datain[9]),
        .Q(dataMin[9]),
        .R(reset));
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
