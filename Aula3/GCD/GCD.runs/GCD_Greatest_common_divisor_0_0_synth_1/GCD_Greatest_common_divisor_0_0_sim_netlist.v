// Copyright 1986-2016 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2016.4 (win64) Build 1756540 Mon Jan 23 19:11:23 MST 2017
// Date        : Thu Mar 16 08:32:55 2017
// Host        : Inator running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ GCD_Greatest_common_divisor_0_0_sim_netlist.v
// Design      : GCD_Greatest_common_divisor_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a100tcsg324-3
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "GCD_Greatest_common_divisor_0_0,Greatest_common_divisor,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "Greatest_common_divisor,Vivado 2016.4" *) 
(* NotValidForBitStream *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix
   (clk,
    btnC,
    sw,
    led);
  (* x_interface_info = "xilinx.com:signal:clock:1.0 clk CLK" *) input clk;
  input btnC;
  input [15:0]sw;
  output [7:0]led;

  wire \FSM_B[7]_i_15_n_0 ;
  wire \FSM_B[7]_i_24_n_0 ;
  wire \FSM_B[7]_i_36_n_0 ;
  wire \FSM_B[7]_i_48_n_0 ;
  wire U0_n_0;
  wire U0_n_1;
  wire U0_n_2;
  wire U0_n_3;
  wire U0_n_4;
  wire U0_n_5;
  wire U0_n_6;
  wire U0_n_7;
  wire btnC;
  wire clk;
  wire [7:0]led;
  wire [15:0]sw;

  LUT2 #(
    .INIT(4'h6)) 
    \FSM_B[7]_i_15 
       (.I0(U0_n_6),
        .I1(U0_n_7),
        .O(\FSM_B[7]_i_15_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \FSM_B[7]_i_24 
       (.I0(U0_n_4),
        .I1(U0_n_5),
        .O(\FSM_B[7]_i_24_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \FSM_B[7]_i_36 
       (.I0(U0_n_2),
        .I1(U0_n_3),
        .O(\FSM_B[7]_i_36_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \FSM_B[7]_i_48 
       (.I0(U0_n_0),
        .I1(U0_n_1),
        .O(\FSM_B[7]_i_48_n_0 ));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_Greatest_common_divisor U0
       (.CO(U0_n_0),
        .\FSM_B_reg[6]_0 (U0_n_5),
        .\FSM_B_reg[6]_1 (U0_n_6),
        .\FSM_B_reg[7]_0 (U0_n_2),
        .\FSM_B_reg[7]_1 (U0_n_3),
        .\FSM_B_reg[7]_2 (U0_n_4),
        .\FSM_B_reg[7]_3 (U0_n_7),
        .\FSM_B_reg[7]_4 (\FSM_B[7]_i_36_n_0 ),
        .\FSM_B_reg[7]_5 (\FSM_B[7]_i_24_n_0 ),
        .\FSM_B_reg[7]_6 (\FSM_B[7]_i_15_n_0 ),
        .O(U0_n_1),
        .S(\FSM_B[7]_i_48_n_0 ),
        .btnC(btnC),
        .clk(clk),
        .led(led),
        .sw(sw));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_Greatest_common_divisor
   (CO,
    O,
    \FSM_B_reg[7]_0 ,
    \FSM_B_reg[7]_1 ,
    \FSM_B_reg[7]_2 ,
    \FSM_B_reg[6]_0 ,
    \FSM_B_reg[6]_1 ,
    \FSM_B_reg[7]_3 ,
    led,
    clk,
    S,
    \FSM_B_reg[7]_4 ,
    \FSM_B_reg[7]_5 ,
    \FSM_B_reg[7]_6 ,
    btnC,
    sw);
  output [0:0]CO;
  output [0:0]O;
  output [0:0]\FSM_B_reg[7]_0 ;
  output [0:0]\FSM_B_reg[7]_1 ;
  output [0:0]\FSM_B_reg[7]_2 ;
  output [0:0]\FSM_B_reg[6]_0 ;
  output [0:0]\FSM_B_reg[6]_1 ;
  output [0:0]\FSM_B_reg[7]_3 ;
  output [7:0]led;
  input clk;
  input [0:0]S;
  input [0:0]\FSM_B_reg[7]_4 ;
  input [0:0]\FSM_B_reg[7]_5 ;
  input [0:0]\FSM_B_reg[7]_6 ;
  input btnC;
  input [15:0]sw;

  wire [0:0]CO;
  wire C_S;
  wire C_S_i_1_n_0;
  wire [7:0]FSM_A;
  wire FSM_A_0;
  wire [7:0]FSM_A_next;
  wire [7:0]FSM_B;
  wire \FSM_B[0]_i_2_n_0 ;
  wire \FSM_B[2]_i_2_n_0 ;
  wire \FSM_B[2]_i_4_n_0 ;
  wire \FSM_B[2]_i_5_n_0 ;
  wire \FSM_B[2]_i_6_n_0 ;
  wire \FSM_B[3]_i_2_n_0 ;
  wire \FSM_B[3]_i_3_n_0 ;
  wire \FSM_B[3]_i_4_n_0 ;
  wire \FSM_B[4]_i_2_n_0 ;
  wire \FSM_B[6]_i_10_n_0 ;
  wire \FSM_B[6]_i_11_n_0 ;
  wire \FSM_B[6]_i_12_n_0 ;
  wire \FSM_B[6]_i_2_n_0 ;
  wire \FSM_B[6]_i_3_n_0 ;
  wire \FSM_B[6]_i_6_n_0 ;
  wire \FSM_B[6]_i_7_n_0 ;
  wire \FSM_B[6]_i_8_n_0 ;
  wire \FSM_B[6]_i_9_n_0 ;
  wire \FSM_B[7]_i_10_n_0 ;
  wire \FSM_B[7]_i_11_n_0 ;
  wire \FSM_B[7]_i_12_n_0 ;
  wire \FSM_B[7]_i_16_n_0 ;
  wire \FSM_B[7]_i_18_n_0 ;
  wire \FSM_B[7]_i_19_n_0 ;
  wire \FSM_B[7]_i_20_n_0 ;
  wire \FSM_B[7]_i_21_n_0 ;
  wire \FSM_B[7]_i_25_n_0 ;
  wire \FSM_B[7]_i_27_n_0 ;
  wire \FSM_B[7]_i_28_n_0 ;
  wire \FSM_B[7]_i_29_n_0 ;
  wire \FSM_B[7]_i_2_n_0 ;
  wire \FSM_B[7]_i_30_n_0 ;
  wire \FSM_B[7]_i_31_n_0 ;
  wire \FSM_B[7]_i_32_n_0 ;
  wire \FSM_B[7]_i_33_n_0 ;
  wire \FSM_B[7]_i_37_n_0 ;
  wire \FSM_B[7]_i_39_n_0 ;
  wire \FSM_B[7]_i_3_n_0 ;
  wire \FSM_B[7]_i_40_n_0 ;
  wire \FSM_B[7]_i_41_n_0 ;
  wire \FSM_B[7]_i_42_n_0 ;
  wire \FSM_B[7]_i_43_n_0 ;
  wire \FSM_B[7]_i_44_n_0 ;
  wire \FSM_B[7]_i_45_n_0 ;
  wire \FSM_B[7]_i_49_n_0 ;
  wire \FSM_B[7]_i_51_n_0 ;
  wire \FSM_B[7]_i_52_n_0 ;
  wire \FSM_B[7]_i_53_n_0 ;
  wire \FSM_B[7]_i_54_n_0 ;
  wire \FSM_B[7]_i_55_n_0 ;
  wire \FSM_B[7]_i_56_n_0 ;
  wire \FSM_B[7]_i_57_n_0 ;
  wire \FSM_B[7]_i_58_n_0 ;
  wire \FSM_B[7]_i_59_n_0 ;
  wire \FSM_B[7]_i_5_n_0 ;
  wire \FSM_B[7]_i_60_n_0 ;
  wire \FSM_B[7]_i_61_n_0 ;
  wire \FSM_B[7]_i_62_n_0 ;
  wire \FSM_B[7]_i_63_n_0 ;
  wire \FSM_B[7]_i_64_n_0 ;
  wire \FSM_B[7]_i_65_n_0 ;
  wire \FSM_B[7]_i_66_n_0 ;
  wire \FSM_B[7]_i_6_n_0 ;
  wire \FSM_B[7]_i_7_n_0 ;
  wire [7:0]FSM_B_next;
  wire [5:1]FSM_B_next0;
  wire FSM_B_next0__7_carry__0_n_0;
  wire FSM_B_next0__7_carry__0_n_1;
  wire FSM_B_next0__7_carry__0_n_2;
  wire FSM_B_next0__7_carry__0_n_3;
  wire FSM_B_next0__7_carry__0_n_4;
  wire FSM_B_next0__7_carry__0_n_5;
  wire FSM_B_next0__7_carry__0_n_6;
  wire FSM_B_next0__7_carry__0_n_7;
  wire FSM_B_next0__7_carry__1_n_3;
  wire FSM_B_next0__7_carry_i_10_n_0;
  wire FSM_B_next0__7_carry_i_1__0_n_0;
  wire FSM_B_next0__7_carry_i_1__1_n_0;
  wire FSM_B_next0__7_carry_i_1_n_0;
  wire FSM_B_next0__7_carry_i_2__0_n_0;
  wire FSM_B_next0__7_carry_i_2__1_n_0;
  wire FSM_B_next0__7_carry_i_2_n_0;
  wire FSM_B_next0__7_carry_i_3__0_n_0;
  wire FSM_B_next0__7_carry_i_3_n_0;
  wire FSM_B_next0__7_carry_i_4__0_n_0;
  wire FSM_B_next0__7_carry_i_4_n_0;
  wire FSM_B_next0__7_carry_i_5__0_n_0;
  wire FSM_B_next0__7_carry_i_5_n_0;
  wire FSM_B_next0__7_carry_i_6__0_n_0;
  wire FSM_B_next0__7_carry_i_6_n_0;
  wire FSM_B_next0__7_carry_i_7__0_n_0;
  wire FSM_B_next0__7_carry_i_7_n_0;
  wire FSM_B_next0__7_carry_i_8__0_n_0;
  wire FSM_B_next0__7_carry_i_8_n_0;
  wire FSM_B_next0__7_carry_i_9__0_n_0;
  wire FSM_B_next0__7_carry_i_9_n_0;
  wire FSM_B_next0__7_carry_n_0;
  wire FSM_B_next0__7_carry_n_1;
  wire FSM_B_next0__7_carry_n_2;
  wire FSM_B_next0__7_carry_n_3;
  wire FSM_B_next0__7_carry_n_4;
  wire FSM_B_next0__7_carry_n_5;
  wire FSM_B_next0__7_carry_n_6;
  wire FSM_B_next0__7_carry_n_7;
  wire FSM_B_next1;
  wire FSM_B_next1_carry_i_1_n_0;
  wire FSM_B_next1_carry_i_2_n_0;
  wire FSM_B_next1_carry_i_3_n_0;
  wire FSM_B_next1_carry_i_4_n_0;
  wire FSM_B_next1_carry_i_5_n_0;
  wire FSM_B_next1_carry_i_6_n_0;
  wire FSM_B_next1_carry_i_7_n_0;
  wire FSM_B_next1_carry_i_8_n_0;
  wire FSM_B_next1_carry_n_1;
  wire FSM_B_next1_carry_n_2;
  wire FSM_B_next1_carry_n_3;
  wire \FSM_B_reg[2]_i_3_n_0 ;
  wire \FSM_B_reg[2]_i_3_n_1 ;
  wire \FSM_B_reg[2]_i_3_n_2 ;
  wire \FSM_B_reg[2]_i_3_n_3 ;
  wire \FSM_B_reg[2]_i_3_n_4 ;
  wire \FSM_B_reg[2]_i_3_n_5 ;
  wire \FSM_B_reg[2]_i_3_n_6 ;
  wire [0:0]\FSM_B_reg[6]_0 ;
  wire [0:0]\FSM_B_reg[6]_1 ;
  wire \FSM_B_reg[6]_i_4_n_0 ;
  wire \FSM_B_reg[6]_i_4_n_1 ;
  wire \FSM_B_reg[6]_i_4_n_2 ;
  wire \FSM_B_reg[6]_i_4_n_3 ;
  wire \FSM_B_reg[6]_i_4_n_4 ;
  wire \FSM_B_reg[6]_i_4_n_5 ;
  wire \FSM_B_reg[6]_i_4_n_6 ;
  wire \FSM_B_reg[6]_i_4_n_7 ;
  wire \FSM_B_reg[6]_i_5_n_0 ;
  wire \FSM_B_reg[6]_i_5_n_1 ;
  wire \FSM_B_reg[6]_i_5_n_2 ;
  wire \FSM_B_reg[6]_i_5_n_3 ;
  wire \FSM_B_reg[6]_i_5_n_4 ;
  wire \FSM_B_reg[6]_i_5_n_5 ;
  wire \FSM_B_reg[6]_i_5_n_6 ;
  wire [0:0]\FSM_B_reg[7]_0 ;
  wire [0:0]\FSM_B_reg[7]_1 ;
  wire [0:0]\FSM_B_reg[7]_2 ;
  wire [0:0]\FSM_B_reg[7]_3 ;
  wire [0:0]\FSM_B_reg[7]_4 ;
  wire [0:0]\FSM_B_reg[7]_5 ;
  wire [0:0]\FSM_B_reg[7]_6 ;
  wire \FSM_B_reg[7]_i_13_n_3 ;
  wire \FSM_B_reg[7]_i_14_n_0 ;
  wire \FSM_B_reg[7]_i_14_n_1 ;
  wire \FSM_B_reg[7]_i_14_n_2 ;
  wire \FSM_B_reg[7]_i_14_n_3 ;
  wire \FSM_B_reg[7]_i_14_n_4 ;
  wire \FSM_B_reg[7]_i_14_n_5 ;
  wire \FSM_B_reg[7]_i_14_n_6 ;
  wire \FSM_B_reg[7]_i_14_n_7 ;
  wire \FSM_B_reg[7]_i_17_n_0 ;
  wire \FSM_B_reg[7]_i_17_n_1 ;
  wire \FSM_B_reg[7]_i_17_n_2 ;
  wire \FSM_B_reg[7]_i_17_n_3 ;
  wire \FSM_B_reg[7]_i_17_n_4 ;
  wire \FSM_B_reg[7]_i_17_n_5 ;
  wire \FSM_B_reg[7]_i_17_n_6 ;
  wire \FSM_B_reg[7]_i_22_n_3 ;
  wire \FSM_B_reg[7]_i_23_n_0 ;
  wire \FSM_B_reg[7]_i_23_n_1 ;
  wire \FSM_B_reg[7]_i_23_n_2 ;
  wire \FSM_B_reg[7]_i_23_n_3 ;
  wire \FSM_B_reg[7]_i_23_n_4 ;
  wire \FSM_B_reg[7]_i_23_n_5 ;
  wire \FSM_B_reg[7]_i_23_n_6 ;
  wire \FSM_B_reg[7]_i_23_n_7 ;
  wire \FSM_B_reg[7]_i_26_n_0 ;
  wire \FSM_B_reg[7]_i_26_n_1 ;
  wire \FSM_B_reg[7]_i_26_n_2 ;
  wire \FSM_B_reg[7]_i_26_n_3 ;
  wire \FSM_B_reg[7]_i_26_n_4 ;
  wire \FSM_B_reg[7]_i_26_n_5 ;
  wire \FSM_B_reg[7]_i_26_n_6 ;
  wire \FSM_B_reg[7]_i_34_n_3 ;
  wire \FSM_B_reg[7]_i_35_n_0 ;
  wire \FSM_B_reg[7]_i_35_n_1 ;
  wire \FSM_B_reg[7]_i_35_n_2 ;
  wire \FSM_B_reg[7]_i_35_n_3 ;
  wire \FSM_B_reg[7]_i_35_n_4 ;
  wire \FSM_B_reg[7]_i_35_n_5 ;
  wire \FSM_B_reg[7]_i_35_n_6 ;
  wire \FSM_B_reg[7]_i_35_n_7 ;
  wire \FSM_B_reg[7]_i_38_n_0 ;
  wire \FSM_B_reg[7]_i_38_n_1 ;
  wire \FSM_B_reg[7]_i_38_n_2 ;
  wire \FSM_B_reg[7]_i_38_n_3 ;
  wire \FSM_B_reg[7]_i_38_n_4 ;
  wire \FSM_B_reg[7]_i_38_n_5 ;
  wire \FSM_B_reg[7]_i_38_n_6 ;
  wire \FSM_B_reg[7]_i_46_n_3 ;
  wire \FSM_B_reg[7]_i_47_n_0 ;
  wire \FSM_B_reg[7]_i_47_n_1 ;
  wire \FSM_B_reg[7]_i_47_n_2 ;
  wire \FSM_B_reg[7]_i_47_n_3 ;
  wire \FSM_B_reg[7]_i_47_n_4 ;
  wire \FSM_B_reg[7]_i_47_n_5 ;
  wire \FSM_B_reg[7]_i_47_n_6 ;
  wire \FSM_B_reg[7]_i_47_n_7 ;
  wire \FSM_B_reg[7]_i_4_n_2 ;
  wire \FSM_B_reg[7]_i_4_n_3 ;
  wire \FSM_B_reg[7]_i_4_n_7 ;
  wire \FSM_B_reg[7]_i_50_n_0 ;
  wire \FSM_B_reg[7]_i_50_n_1 ;
  wire \FSM_B_reg[7]_i_50_n_2 ;
  wire \FSM_B_reg[7]_i_50_n_3 ;
  wire \FSM_B_reg[7]_i_50_n_4 ;
  wire \FSM_B_reg[7]_i_50_n_5 ;
  wire \FSM_B_reg[7]_i_50_n_6 ;
  wire \FSM_B_reg[7]_i_8_n_2 ;
  wire \FSM_B_reg[7]_i_8_n_3 ;
  wire \FSM_B_reg[7]_i_8_n_7 ;
  wire \FSM_B_reg[7]_i_9_n_0 ;
  wire \FSM_B_reg[7]_i_9_n_1 ;
  wire \FSM_B_reg[7]_i_9_n_2 ;
  wire \FSM_B_reg[7]_i_9_n_3 ;
  wire \FSM_B_reg[7]_i_9_n_4 ;
  wire \FSM_B_reg[7]_i_9_n_5 ;
  wire \FSM_B_reg[7]_i_9_n_6 ;
  wire \FSM_B_reg[7]_i_9_n_7 ;
  wire [0:0]O;
  wire Res;
  wire \Res[7]_i_1_n_0 ;
  wire \Res[7]_i_3_n_0 ;
  wire \Res[7]_i_4_n_0 ;
  wire \Res[7]_i_5_n_0 ;
  wire \Res[7]_i_6_n_0 ;
  wire \Res[7]_i_7_n_0 ;
  wire \Res[7]_i_8_n_0 ;
  wire [0:0]S;
  wire btnC;
  wire clk;
  wire [7:0]led;
  wire [15:0]sw;
  wire [3:1]NLW_FSM_B_next0__7_carry__1_CO_UNCONNECTED;
  wire [3:0]NLW_FSM_B_next0__7_carry__1_O_UNCONNECTED;
  wire [3:0]NLW_FSM_B_next1_carry_O_UNCONNECTED;
  wire [0:0]\NLW_FSM_B_reg[2]_i_3_O_UNCONNECTED ;
  wire [0:0]\NLW_FSM_B_reg[6]_i_5_O_UNCONNECTED ;
  wire [3:2]\NLW_FSM_B_reg[7]_i_13_CO_UNCONNECTED ;
  wire [3:1]\NLW_FSM_B_reg[7]_i_13_O_UNCONNECTED ;
  wire [0:0]\NLW_FSM_B_reg[7]_i_17_O_UNCONNECTED ;
  wire [3:2]\NLW_FSM_B_reg[7]_i_22_CO_UNCONNECTED ;
  wire [3:1]\NLW_FSM_B_reg[7]_i_22_O_UNCONNECTED ;
  wire [0:0]\NLW_FSM_B_reg[7]_i_26_O_UNCONNECTED ;
  wire [3:2]\NLW_FSM_B_reg[7]_i_34_CO_UNCONNECTED ;
  wire [3:1]\NLW_FSM_B_reg[7]_i_34_O_UNCONNECTED ;
  wire [0:0]\NLW_FSM_B_reg[7]_i_38_O_UNCONNECTED ;
  wire [3:2]\NLW_FSM_B_reg[7]_i_4_CO_UNCONNECTED ;
  wire [3:1]\NLW_FSM_B_reg[7]_i_4_O_UNCONNECTED ;
  wire [3:2]\NLW_FSM_B_reg[7]_i_46_CO_UNCONNECTED ;
  wire [3:1]\NLW_FSM_B_reg[7]_i_46_O_UNCONNECTED ;
  wire [0:0]\NLW_FSM_B_reg[7]_i_50_O_UNCONNECTED ;
  wire [3:2]\NLW_FSM_B_reg[7]_i_8_CO_UNCONNECTED ;
  wire [3:1]\NLW_FSM_B_reg[7]_i_8_O_UNCONNECTED ;

  LUT4 #(
    .INIT(16'h8BCC)) 
    C_S_i_1
       (.I0(\Res[7]_i_4_n_0 ),
        .I1(C_S),
        .I2(\Res[7]_i_3_n_0 ),
        .I3(btnC),
        .O(C_S_i_1_n_0));
  FDRE C_S_reg
       (.C(clk),
        .CE(1'b1),
        .D(C_S_i_1_n_0),
        .Q(C_S),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \FSM_A[0]_i_1 
       (.I0(FSM_B[0]),
        .I1(C_S),
        .I2(sw[8]),
        .O(FSM_A_next[0]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \FSM_A[1]_i_1 
       (.I0(FSM_B[1]),
        .I1(C_S),
        .I2(sw[9]),
        .O(FSM_A_next[1]));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \FSM_A[2]_i_1 
       (.I0(FSM_B[2]),
        .I1(C_S),
        .I2(sw[10]),
        .O(FSM_A_next[2]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \FSM_A[3]_i_1 
       (.I0(FSM_B[3]),
        .I1(C_S),
        .I2(sw[11]),
        .O(FSM_A_next[3]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \FSM_A[4]_i_1 
       (.I0(FSM_B[4]),
        .I1(C_S),
        .I2(sw[12]),
        .O(FSM_A_next[4]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \FSM_A[5]_i_1 
       (.I0(FSM_B[5]),
        .I1(C_S),
        .I2(sw[13]),
        .O(FSM_A_next[5]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \FSM_A[6]_i_1 
       (.I0(FSM_B[6]),
        .I1(C_S),
        .I2(sw[14]),
        .O(FSM_A_next[6]));
  LUT4 #(
    .INIT(16'h8B00)) 
    \FSM_A[7]_i_1 
       (.I0(\Res[7]_i_4_n_0 ),
        .I1(C_S),
        .I2(\Res[7]_i_3_n_0 ),
        .I3(btnC),
        .O(FSM_A_0));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \FSM_A[7]_i_2 
       (.I0(FSM_B[7]),
        .I1(C_S),
        .I2(sw[15]),
        .O(FSM_A_next[7]));
  FDRE \FSM_A_reg[0] 
       (.C(clk),
        .CE(FSM_A_0),
        .D(FSM_A_next[0]),
        .Q(FSM_A[0]),
        .R(1'b0));
  FDRE \FSM_A_reg[1] 
       (.C(clk),
        .CE(FSM_A_0),
        .D(FSM_A_next[1]),
        .Q(FSM_A[1]),
        .R(1'b0));
  FDRE \FSM_A_reg[2] 
       (.C(clk),
        .CE(FSM_A_0),
        .D(FSM_A_next[2]),
        .Q(FSM_A[2]),
        .R(1'b0));
  FDRE \FSM_A_reg[3] 
       (.C(clk),
        .CE(FSM_A_0),
        .D(FSM_A_next[3]),
        .Q(FSM_A[3]),
        .R(1'b0));
  FDRE \FSM_A_reg[4] 
       (.C(clk),
        .CE(FSM_A_0),
        .D(FSM_A_next[4]),
        .Q(FSM_A[4]),
        .R(1'b0));
  FDRE \FSM_A_reg[5] 
       (.C(clk),
        .CE(FSM_A_0),
        .D(FSM_A_next[5]),
        .Q(FSM_A[5]),
        .R(1'b0));
  FDRE \FSM_A_reg[6] 
       (.C(clk),
        .CE(FSM_A_0),
        .D(FSM_A_next[6]),
        .Q(FSM_A[6]),
        .R(1'b0));
  FDRE \FSM_A_reg[7] 
       (.C(clk),
        .CE(FSM_A_0),
        .D(FSM_A_next[7]),
        .Q(FSM_A[7]),
        .R(1'b0));
  LUT5 #(
    .INIT(32'hFFFFE222)) 
    \FSM_B[0]_i_1 
       (.I0(sw[0]),
        .I1(C_S),
        .I2(FSM_B_next1),
        .I3(FSM_A[0]),
        .I4(\FSM_B[0]_i_2_n_0 ),
        .O(FSM_B_next[0]));
  LUT5 #(
    .INIT(32'h40044040)) 
    \FSM_B[0]_i_2 
       (.I0(FSM_B_next1),
        .I1(C_S),
        .I2(\FSM_B_reg[2]_i_3_n_6 ),
        .I3(\FSM_B_reg[7]_i_4_n_2 ),
        .I4(FSM_B[0]),
        .O(\FSM_B[0]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hCCAAF0AA)) 
    \FSM_B[1]_i_1 
       (.I0(sw[1]),
        .I1(FSM_A[1]),
        .I2(FSM_B_next0[1]),
        .I3(C_S),
        .I4(FSM_B_next1),
        .O(FSM_B_next[1]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'hEBBB1444)) 
    \FSM_B[1]_i_2 
       (.I0(\FSM_B_reg[7]_i_4_n_2 ),
        .I1(FSM_B[1]),
        .I2(FSM_B[0]),
        .I3(\FSM_B_reg[2]_i_3_n_6 ),
        .I4(\FSM_B_reg[2]_i_3_n_5 ),
        .O(FSM_B_next0[1]));
  LUT6 #(
    .INIT(64'hCCCCAAAAF00FAAAA)) 
    \FSM_B[2]_i_1 
       (.I0(sw[2]),
        .I1(FSM_A[2]),
        .I2(\FSM_B[2]_i_2_n_0 ),
        .I3(\FSM_B_reg[2]_i_3_n_4 ),
        .I4(C_S),
        .I5(FSM_B_next1),
        .O(FSM_B_next[2]));
  LUT6 #(
    .INIT(64'hFFEAEAAAAABFBFFF)) 
    \FSM_B[2]_i_2 
       (.I0(\FSM_B_reg[7]_i_4_n_2 ),
        .I1(\FSM_B_reg[2]_i_3_n_6 ),
        .I2(FSM_B[0]),
        .I3(FSM_B[1]),
        .I4(\FSM_B_reg[2]_i_3_n_5 ),
        .I5(FSM_B[2]),
        .O(\FSM_B[2]_i_2_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \FSM_B[2]_i_4 
       (.I0(\FSM_B_reg[7]_i_8_n_2 ),
        .I1(FSM_B[2]),
        .I2(\FSM_B_reg[6]_i_5_n_5 ),
        .O(\FSM_B[2]_i_4_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \FSM_B[2]_i_5 
       (.I0(\FSM_B_reg[7]_i_8_n_2 ),
        .I1(FSM_B[1]),
        .I2(\FSM_B_reg[6]_i_5_n_6 ),
        .O(\FSM_B[2]_i_5_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \FSM_B[2]_i_6 
       (.I0(\FSM_B_reg[7]_i_8_n_2 ),
        .I1(FSM_B[0]),
        .I2(FSM_A[0]),
        .O(\FSM_B[2]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hCCCCAAAAF00FAAAA)) 
    \FSM_B[3]_i_1 
       (.I0(sw[3]),
        .I1(FSM_A[3]),
        .I2(\FSM_B[3]_i_2_n_0 ),
        .I3(\FSM_B_reg[6]_i_4_n_7 ),
        .I4(C_S),
        .I5(FSM_B_next1),
        .O(FSM_B_next[3]));
  LUT6 #(
    .INIT(64'hFFEAEAAAAABFBFFF)) 
    \FSM_B[3]_i_2 
       (.I0(\FSM_B_reg[7]_i_4_n_2 ),
        .I1(\FSM_B[3]_i_3_n_0 ),
        .I2(\FSM_B[3]_i_4_n_0 ),
        .I3(FSM_B[2]),
        .I4(\FSM_B_reg[2]_i_3_n_4 ),
        .I5(FSM_B[3]),
        .O(\FSM_B[3]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT4 #(
    .INIT(16'hF888)) 
    \FSM_B[3]_i_3 
       (.I0(FSM_B[0]),
        .I1(\FSM_B_reg[2]_i_3_n_6 ),
        .I2(FSM_B[1]),
        .I3(\FSM_B_reg[2]_i_3_n_5 ),
        .O(\FSM_B[3]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \FSM_B[3]_i_4 
       (.I0(\FSM_B_reg[2]_i_3_n_5 ),
        .I1(FSM_B[1]),
        .O(\FSM_B[3]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFE222)) 
    \FSM_B[4]_i_1 
       (.I0(sw[4]),
        .I1(C_S),
        .I2(FSM_B_next1),
        .I3(FSM_A[4]),
        .I4(\FSM_B[4]_i_2_n_0 ),
        .O(FSM_B_next[4]));
  LUT6 #(
    .INIT(64'h4040404004404004)) 
    \FSM_B[4]_i_2 
       (.I0(FSM_B_next1),
        .I1(C_S),
        .I2(\FSM_B_reg[6]_i_4_n_6 ),
        .I3(\FSM_B[7]_i_6_n_0 ),
        .I4(FSM_B[4]),
        .I5(\FSM_B_reg[7]_i_4_n_2 ),
        .O(\FSM_B[4]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hCCAAF0AA)) 
    \FSM_B[5]_i_1 
       (.I0(sw[5]),
        .I1(FSM_A[5]),
        .I2(FSM_B_next0[5]),
        .I3(C_S),
        .I4(FSM_B_next1),
        .O(FSM_B_next[5]));
  LUT6 #(
    .INIT(64'hFFFF95A900006A56)) 
    \FSM_B[5]_i_2 
       (.I0(FSM_B[5]),
        .I1(\FSM_B_reg[6]_i_4_n_6 ),
        .I2(FSM_B[4]),
        .I3(\FSM_B[7]_i_6_n_0 ),
        .I4(\FSM_B_reg[7]_i_4_n_2 ),
        .I5(\FSM_B_reg[6]_i_4_n_5 ),
        .O(FSM_B_next0[5]));
  LUT6 #(
    .INIT(64'hAAAAAAAAFBAEAAAA)) 
    \FSM_B[6]_i_1 
       (.I0(\FSM_B[6]_i_2_n_0 ),
        .I1(\FSM_B[6]_i_3_n_0 ),
        .I2(\FSM_B_reg[7]_i_4_n_2 ),
        .I3(\FSM_B_reg[6]_i_4_n_4 ),
        .I4(C_S),
        .I5(FSM_B_next1),
        .O(FSM_B_next[6]));
  LUT3 #(
    .INIT(8'h96)) 
    \FSM_B[6]_i_10 
       (.I0(\FSM_B_reg[6]_1 ),
        .I1(FSM_B[2]),
        .I2(\FSM_B_reg[7]_i_17_n_5 ),
        .O(\FSM_B[6]_i_10_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \FSM_B[6]_i_11 
       (.I0(\FSM_B_reg[6]_1 ),
        .I1(FSM_B[1]),
        .I2(\FSM_B_reg[7]_i_17_n_6 ),
        .O(\FSM_B[6]_i_11_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \FSM_B[6]_i_12 
       (.I0(\FSM_B_reg[6]_1 ),
        .I1(FSM_B[0]),
        .I2(FSM_A[1]),
        .O(\FSM_B[6]_i_12_n_0 ));
  LUT4 #(
    .INIT(16'h8F80)) 
    \FSM_B[6]_i_2 
       (.I0(FSM_A[6]),
        .I1(FSM_B_next1),
        .I2(C_S),
        .I3(sw[6]),
        .O(\FSM_B[6]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h566A6A6A5656566A)) 
    \FSM_B[6]_i_3 
       (.I0(FSM_B[6]),
        .I1(\FSM_B_reg[6]_i_4_n_5 ),
        .I2(FSM_B[5]),
        .I3(\FSM_B_reg[6]_i_4_n_6 ),
        .I4(FSM_B[4]),
        .I5(\FSM_B[7]_i_6_n_0 ),
        .O(\FSM_B[6]_i_3_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \FSM_B[6]_i_6 
       (.I0(\FSM_B_reg[7]_i_8_n_2 ),
        .I1(FSM_B[6]),
        .I2(\FSM_B_reg[7]_i_9_n_5 ),
        .O(\FSM_B[6]_i_6_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \FSM_B[6]_i_7 
       (.I0(\FSM_B_reg[7]_i_8_n_2 ),
        .I1(FSM_B[5]),
        .I2(\FSM_B_reg[7]_i_9_n_6 ),
        .O(\FSM_B[6]_i_7_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \FSM_B[6]_i_8 
       (.I0(\FSM_B_reg[7]_i_8_n_2 ),
        .I1(FSM_B[4]),
        .I2(\FSM_B_reg[7]_i_9_n_7 ),
        .O(\FSM_B[6]_i_8_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \FSM_B[6]_i_9 
       (.I0(\FSM_B_reg[7]_i_8_n_2 ),
        .I1(FSM_B[3]),
        .I2(\FSM_B_reg[6]_i_5_n_4 ),
        .O(\FSM_B[6]_i_9_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAAAFEABAAAA)) 
    \FSM_B[7]_i_1 
       (.I0(\FSM_B[7]_i_2_n_0 ),
        .I1(\FSM_B[7]_i_3_n_0 ),
        .I2(\FSM_B_reg[7]_i_4_n_2 ),
        .I3(\FSM_B_reg[7]_i_4_n_7 ),
        .I4(C_S),
        .I5(FSM_B_next1),
        .O(FSM_B_next[7]));
  LUT2 #(
    .INIT(4'h6)) 
    \FSM_B[7]_i_10 
       (.I0(\FSM_B_reg[7]_i_8_n_2 ),
        .I1(\FSM_B_reg[7]_i_8_n_7 ),
        .O(\FSM_B[7]_i_10_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \FSM_B[7]_i_11 
       (.I0(\FSM_B_reg[7]_i_8_n_2 ),
        .I1(FSM_B[7]),
        .I2(\FSM_B_reg[7]_i_9_n_4 ),
        .O(\FSM_B[7]_i_11_n_0 ));
  LUT4 #(
    .INIT(16'hF880)) 
    \FSM_B[7]_i_12 
       (.I0(\FSM_B_reg[2]_i_3_n_6 ),
        .I1(FSM_B[0]),
        .I2(FSM_B[1]),
        .I3(\FSM_B_reg[2]_i_3_n_5 ),
        .O(\FSM_B[7]_i_12_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \FSM_B[7]_i_16 
       (.I0(\FSM_B_reg[6]_1 ),
        .I1(FSM_B[7]),
        .I2(\FSM_B_reg[7]_i_14_n_4 ),
        .O(\FSM_B[7]_i_16_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \FSM_B[7]_i_18 
       (.I0(\FSM_B_reg[6]_1 ),
        .I1(FSM_B[6]),
        .I2(\FSM_B_reg[7]_i_14_n_5 ),
        .O(\FSM_B[7]_i_18_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \FSM_B[7]_i_19 
       (.I0(\FSM_B_reg[6]_1 ),
        .I1(FSM_B[5]),
        .I2(\FSM_B_reg[7]_i_14_n_6 ),
        .O(\FSM_B[7]_i_19_n_0 ));
  LUT4 #(
    .INIT(16'h8F80)) 
    \FSM_B[7]_i_2 
       (.I0(FSM_A[7]),
        .I1(FSM_B_next1),
        .I2(C_S),
        .I3(sw[7]),
        .O(\FSM_B[7]_i_2_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \FSM_B[7]_i_20 
       (.I0(\FSM_B_reg[6]_1 ),
        .I1(FSM_B[4]),
        .I2(\FSM_B_reg[7]_i_14_n_7 ),
        .O(\FSM_B[7]_i_20_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \FSM_B[7]_i_21 
       (.I0(\FSM_B_reg[6]_1 ),
        .I1(FSM_B[3]),
        .I2(\FSM_B_reg[7]_i_17_n_4 ),
        .O(\FSM_B[7]_i_21_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \FSM_B[7]_i_25 
       (.I0(\FSM_B_reg[7]_2 ),
        .I1(FSM_B[7]),
        .I2(\FSM_B_reg[7]_i_23_n_4 ),
        .O(\FSM_B[7]_i_25_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \FSM_B[7]_i_27 
       (.I0(\FSM_B_reg[7]_2 ),
        .I1(FSM_B[6]),
        .I2(\FSM_B_reg[7]_i_23_n_5 ),
        .O(\FSM_B[7]_i_27_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \FSM_B[7]_i_28 
       (.I0(\FSM_B_reg[7]_2 ),
        .I1(FSM_B[5]),
        .I2(\FSM_B_reg[7]_i_23_n_6 ),
        .O(\FSM_B[7]_i_28_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \FSM_B[7]_i_29 
       (.I0(\FSM_B_reg[7]_2 ),
        .I1(FSM_B[4]),
        .I2(\FSM_B_reg[7]_i_23_n_7 ),
        .O(\FSM_B[7]_i_29_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAAA95559995)) 
    \FSM_B[7]_i_3 
       (.I0(FSM_B[7]),
        .I1(\FSM_B[7]_i_5_n_0 ),
        .I2(\FSM_B_reg[6]_i_4_n_6 ),
        .I3(FSM_B[4]),
        .I4(\FSM_B[7]_i_6_n_0 ),
        .I5(\FSM_B[7]_i_7_n_0 ),
        .O(\FSM_B[7]_i_3_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \FSM_B[7]_i_30 
       (.I0(\FSM_B_reg[7]_2 ),
        .I1(FSM_B[3]),
        .I2(\FSM_B_reg[7]_i_26_n_4 ),
        .O(\FSM_B[7]_i_30_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \FSM_B[7]_i_31 
       (.I0(\FSM_B_reg[7]_2 ),
        .I1(FSM_B[2]),
        .I2(\FSM_B_reg[7]_i_26_n_5 ),
        .O(\FSM_B[7]_i_31_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \FSM_B[7]_i_32 
       (.I0(\FSM_B_reg[7]_2 ),
        .I1(FSM_B[1]),
        .I2(\FSM_B_reg[7]_i_26_n_6 ),
        .O(\FSM_B[7]_i_32_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \FSM_B[7]_i_33 
       (.I0(\FSM_B_reg[7]_2 ),
        .I1(FSM_B[0]),
        .I2(FSM_A[2]),
        .O(\FSM_B[7]_i_33_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \FSM_B[7]_i_37 
       (.I0(\FSM_B_reg[7]_0 ),
        .I1(FSM_B[7]),
        .I2(\FSM_B_reg[7]_i_35_n_4 ),
        .O(\FSM_B[7]_i_37_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \FSM_B[7]_i_39 
       (.I0(\FSM_B_reg[7]_0 ),
        .I1(FSM_B[6]),
        .I2(\FSM_B_reg[7]_i_35_n_5 ),
        .O(\FSM_B[7]_i_39_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \FSM_B[7]_i_40 
       (.I0(\FSM_B_reg[7]_0 ),
        .I1(FSM_B[5]),
        .I2(\FSM_B_reg[7]_i_35_n_6 ),
        .O(\FSM_B[7]_i_40_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \FSM_B[7]_i_41 
       (.I0(\FSM_B_reg[7]_0 ),
        .I1(FSM_B[4]),
        .I2(\FSM_B_reg[7]_i_35_n_7 ),
        .O(\FSM_B[7]_i_41_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \FSM_B[7]_i_42 
       (.I0(\FSM_B_reg[7]_0 ),
        .I1(FSM_B[3]),
        .I2(\FSM_B_reg[7]_i_38_n_4 ),
        .O(\FSM_B[7]_i_42_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \FSM_B[7]_i_43 
       (.I0(\FSM_B_reg[7]_0 ),
        .I1(FSM_B[2]),
        .I2(\FSM_B_reg[7]_i_38_n_5 ),
        .O(\FSM_B[7]_i_43_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \FSM_B[7]_i_44 
       (.I0(\FSM_B_reg[7]_0 ),
        .I1(FSM_B[1]),
        .I2(\FSM_B_reg[7]_i_38_n_6 ),
        .O(\FSM_B[7]_i_44_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \FSM_B[7]_i_45 
       (.I0(\FSM_B_reg[7]_0 ),
        .I1(FSM_B[0]),
        .I2(FSM_A[3]),
        .O(\FSM_B[7]_i_45_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \FSM_B[7]_i_49 
       (.I0(CO),
        .I1(FSM_B[7]),
        .I2(\FSM_B_reg[7]_i_47_n_4 ),
        .O(\FSM_B[7]_i_49_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT4 #(
    .INIT(16'hEEE0)) 
    \FSM_B[7]_i_5 
       (.I0(FSM_B[6]),
        .I1(\FSM_B_reg[6]_i_4_n_4 ),
        .I2(FSM_B[5]),
        .I3(\FSM_B_reg[6]_i_4_n_5 ),
        .O(\FSM_B[7]_i_5_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \FSM_B[7]_i_51 
       (.I0(CO),
        .I1(FSM_B[6]),
        .I2(\FSM_B_reg[7]_i_47_n_5 ),
        .O(\FSM_B[7]_i_51_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \FSM_B[7]_i_52 
       (.I0(CO),
        .I1(FSM_B[5]),
        .I2(\FSM_B_reg[7]_i_47_n_6 ),
        .O(\FSM_B[7]_i_52_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \FSM_B[7]_i_53 
       (.I0(CO),
        .I1(FSM_B[4]),
        .I2(\FSM_B_reg[7]_i_47_n_7 ),
        .O(\FSM_B[7]_i_53_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \FSM_B[7]_i_54 
       (.I0(CO),
        .I1(FSM_B[3]),
        .I2(\FSM_B_reg[7]_i_50_n_4 ),
        .O(\FSM_B[7]_i_54_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \FSM_B[7]_i_55 
       (.I0(CO),
        .I1(FSM_B[2]),
        .I2(\FSM_B_reg[7]_i_50_n_5 ),
        .O(\FSM_B[7]_i_55_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \FSM_B[7]_i_56 
       (.I0(CO),
        .I1(FSM_B[1]),
        .I2(\FSM_B_reg[7]_i_50_n_6 ),
        .O(\FSM_B[7]_i_56_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \FSM_B[7]_i_57 
       (.I0(CO),
        .I1(FSM_B[0]),
        .I2(FSM_A[4]),
        .O(\FSM_B[7]_i_57_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \FSM_B[7]_i_58 
       (.I0(FSM_B_next0__7_carry__1_n_3),
        .I1(FSM_B_next0__7_carry__0_n_4),
        .O(\FSM_B[7]_i_58_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \FSM_B[7]_i_59 
       (.I0(FSM_B_next0__7_carry__1_n_3),
        .I1(FSM_B[7]),
        .I2(FSM_B_next0__7_carry__0_n_5),
        .O(\FSM_B[7]_i_59_n_0 ));
  LUT5 #(
    .INIT(32'h0317173F)) 
    \FSM_B[7]_i_6 
       (.I0(\FSM_B[7]_i_12_n_0 ),
        .I1(FSM_B[3]),
        .I2(\FSM_B_reg[6]_i_4_n_7 ),
        .I3(FSM_B[2]),
        .I4(\FSM_B_reg[2]_i_3_n_4 ),
        .O(\FSM_B[7]_i_6_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \FSM_B[7]_i_60 
       (.I0(FSM_B_next0__7_carry__1_n_3),
        .I1(FSM_B[6]),
        .I2(FSM_B_next0__7_carry__0_n_6),
        .O(\FSM_B[7]_i_60_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \FSM_B[7]_i_61 
       (.I0(FSM_B_next0__7_carry__1_n_3),
        .I1(FSM_B[5]),
        .I2(FSM_B_next0__7_carry__0_n_7),
        .O(\FSM_B[7]_i_61_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \FSM_B[7]_i_62 
       (.I0(FSM_B_next0__7_carry__1_n_3),
        .I1(FSM_B[4]),
        .I2(FSM_B_next0__7_carry_n_4),
        .O(\FSM_B[7]_i_62_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \FSM_B[7]_i_63 
       (.I0(FSM_B_next0__7_carry__1_n_3),
        .I1(FSM_B[3]),
        .I2(FSM_B_next0__7_carry_n_5),
        .O(\FSM_B[7]_i_63_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \FSM_B[7]_i_64 
       (.I0(FSM_B_next0__7_carry__1_n_3),
        .I1(FSM_B[2]),
        .I2(FSM_B_next0__7_carry_n_6),
        .O(\FSM_B[7]_i_64_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \FSM_B[7]_i_65 
       (.I0(FSM_B_next0__7_carry__1_n_3),
        .I1(FSM_B[1]),
        .I2(FSM_B_next0__7_carry_n_7),
        .O(\FSM_B[7]_i_65_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \FSM_B[7]_i_66 
       (.I0(FSM_B_next0__7_carry__1_n_3),
        .I1(FSM_B[0]),
        .I2(FSM_A[5]),
        .O(\FSM_B[7]_i_66_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT4 #(
    .INIT(16'hF880)) 
    \FSM_B[7]_i_7 
       (.I0(\FSM_B_reg[6]_i_4_n_5 ),
        .I1(FSM_B[5]),
        .I2(FSM_B[6]),
        .I3(\FSM_B_reg[6]_i_4_n_4 ),
        .O(\FSM_B[7]_i_7_n_0 ));
  CARRY4 FSM_B_next0__7_carry
       (.CI(1'b0),
        .CO({FSM_B_next0__7_carry_n_0,FSM_B_next0__7_carry_n_1,FSM_B_next0__7_carry_n_2,FSM_B_next0__7_carry_n_3}),
        .CYINIT(FSM_B_next0__7_carry_i_1_n_0),
        .DI({FSM_B_next0__7_carry_i_2_n_0,FSM_B_next0__7_carry_i_3_n_0,FSM_B_next0__7_carry_i_4_n_0,FSM_A[6]}),
        .O({FSM_B_next0__7_carry_n_4,FSM_B_next0__7_carry_n_5,FSM_B_next0__7_carry_n_6,FSM_B_next0__7_carry_n_7}),
        .S({FSM_B_next0__7_carry_i_5_n_0,FSM_B_next0__7_carry_i_6_n_0,FSM_B_next0__7_carry_i_7_n_0,FSM_B_next0__7_carry_i_8_n_0}));
  CARRY4 FSM_B_next0__7_carry__0
       (.CI(FSM_B_next0__7_carry_n_0),
        .CO({FSM_B_next0__7_carry__0_n_0,FSM_B_next0__7_carry__0_n_1,FSM_B_next0__7_carry__0_n_2,FSM_B_next0__7_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({FSM_B_next0__7_carry_i_1__1_n_0,FSM_B_next0__7_carry_i_2__0_n_0,FSM_B_next0__7_carry_i_3__0_n_0,FSM_B_next0__7_carry_i_4__0_n_0}),
        .O({FSM_B_next0__7_carry__0_n_4,FSM_B_next0__7_carry__0_n_5,FSM_B_next0__7_carry__0_n_6,FSM_B_next0__7_carry__0_n_7}),
        .S({FSM_B_next0__7_carry_i_5__0_n_0,FSM_B_next0__7_carry_i_6__0_n_0,FSM_B_next0__7_carry_i_7__0_n_0,FSM_B_next0__7_carry_i_8__0_n_0}));
  CARRY4 FSM_B_next0__7_carry__1
       (.CI(FSM_B_next0__7_carry__0_n_0),
        .CO({NLW_FSM_B_next0__7_carry__1_CO_UNCONNECTED[3:1],FSM_B_next0__7_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,FSM_B_next0__7_carry_i_1__0_n_0}),
        .O(NLW_FSM_B_next0__7_carry__1_O_UNCONNECTED[3:0]),
        .S({1'b0,1'b0,1'b0,FSM_B_next0__7_carry_i_2__1_n_0}));
  LUT4 #(
    .INIT(16'h0004)) 
    FSM_B_next0__7_carry_i_1
       (.I0(FSM_B[6]),
        .I1(FSM_B_next0__7_carry_i_9_n_0),
        .I2(FSM_B[5]),
        .I3(FSM_B[7]),
        .O(FSM_B_next0__7_carry_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT4 #(
    .INIT(16'h0045)) 
    FSM_B_next0__7_carry_i_10
       (.I0(FSM_B[1]),
        .I1(FSM_A[7]),
        .I2(FSM_B[0]),
        .I3(FSM_B[2]),
        .O(FSM_B_next0__7_carry_i_10_n_0));
  LUT4 #(
    .INIT(16'h0004)) 
    FSM_B_next0__7_carry_i_1__0
       (.I0(FSM_B[6]),
        .I1(FSM_B_next0__7_carry_i_9_n_0),
        .I2(FSM_B[5]),
        .I3(FSM_B[7]),
        .O(FSM_B_next0__7_carry_i_1__0_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    FSM_B_next0__7_carry_i_1__1
       (.I0(FSM_B[7]),
        .I1(FSM_B_next0__7_carry_i_1_n_0),
        .O(FSM_B_next0__7_carry_i_1__1_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    FSM_B_next0__7_carry_i_2
       (.I0(FSM_B[3]),
        .I1(FSM_B_next0__7_carry_i_1_n_0),
        .O(FSM_B_next0__7_carry_i_2_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    FSM_B_next0__7_carry_i_2__0
       (.I0(FSM_B[6]),
        .I1(FSM_B_next0__7_carry_i_1_n_0),
        .O(FSM_B_next0__7_carry_i_2__0_n_0));
  LUT4 #(
    .INIT(16'h5575)) 
    FSM_B_next0__7_carry_i_2__1
       (.I0(FSM_B[7]),
        .I1(FSM_B[5]),
        .I2(FSM_B_next0__7_carry_i_9_n_0),
        .I3(FSM_B[6]),
        .O(FSM_B_next0__7_carry_i_2__1_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    FSM_B_next0__7_carry_i_3
       (.I0(FSM_B[2]),
        .I1(FSM_B_next0__7_carry_i_1_n_0),
        .O(FSM_B_next0__7_carry_i_3_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    FSM_B_next0__7_carry_i_3__0
       (.I0(FSM_B[5]),
        .I1(FSM_B_next0__7_carry_i_1_n_0),
        .O(FSM_B_next0__7_carry_i_3__0_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    FSM_B_next0__7_carry_i_4
       (.I0(FSM_B[1]),
        .I1(FSM_B_next0__7_carry_i_1_n_0),
        .O(FSM_B_next0__7_carry_i_4_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    FSM_B_next0__7_carry_i_4__0
       (.I0(FSM_B[4]),
        .I1(FSM_B_next0__7_carry_i_1_n_0),
        .O(FSM_B_next0__7_carry_i_4__0_n_0));
  LUT6 #(
    .INIT(64'h6969696996966996)) 
    FSM_B_next0__7_carry_i_5
       (.I0(FSM_B_next0__7_carry_i_1_n_0),
        .I1(FSM_B[3]),
        .I2(FSM_B[2]),
        .I3(FSM_B[0]),
        .I4(FSM_A[7]),
        .I5(FSM_B[1]),
        .O(FSM_B_next0__7_carry_i_5_n_0));
  LUT4 #(
    .INIT(16'h9979)) 
    FSM_B_next0__7_carry_i_5__0
       (.I0(FSM_B[7]),
        .I1(FSM_B[6]),
        .I2(FSM_B_next0__7_carry_i_9_n_0),
        .I3(FSM_B[5]),
        .O(FSM_B_next0__7_carry_i_5__0_n_0));
  LUT5 #(
    .INIT(32'h96699696)) 
    FSM_B_next0__7_carry_i_6
       (.I0(FSM_B_next0__7_carry_i_1_n_0),
        .I1(FSM_B[2]),
        .I2(FSM_B[1]),
        .I3(FSM_A[7]),
        .I4(FSM_B[0]),
        .O(FSM_B_next0__7_carry_i_6_n_0));
  LUT4 #(
    .INIT(16'h5BA5)) 
    FSM_B_next0__7_carry_i_6__0
       (.I0(FSM_B[6]),
        .I1(FSM_B[7]),
        .I2(FSM_B[5]),
        .I3(FSM_B_next0__7_carry_i_9_n_0),
        .O(FSM_B_next0__7_carry_i_6__0_n_0));
  LUT4 #(
    .INIT(16'h6996)) 
    FSM_B_next0__7_carry_i_7
       (.I0(FSM_B_next0__7_carry_i_1_n_0),
        .I1(FSM_B[1]),
        .I2(FSM_B[0]),
        .I3(FSM_A[7]),
        .O(FSM_B_next0__7_carry_i_7_n_0));
  LUT5 #(
    .INIT(32'h33CDCC33)) 
    FSM_B_next0__7_carry_i_7__0
       (.I0(FSM_B[6]),
        .I1(FSM_B[5]),
        .I2(FSM_B[7]),
        .I3(FSM_B[4]),
        .I4(FSM_B_next0__7_carry_i_9__0_n_0),
        .O(FSM_B_next0__7_carry_i_7__0_n_0));
  LUT3 #(
    .INIT(8'h96)) 
    FSM_B_next0__7_carry_i_8
       (.I0(FSM_B_next0__7_carry_i_1_n_0),
        .I1(FSM_B[0]),
        .I2(FSM_A[6]),
        .O(FSM_B_next0__7_carry_i_8_n_0));
  LUT6 #(
    .INIT(64'h3333CCCDCCCC3333)) 
    FSM_B_next0__7_carry_i_8__0
       (.I0(FSM_B[6]),
        .I1(FSM_B[4]),
        .I2(FSM_B[5]),
        .I3(FSM_B[7]),
        .I4(FSM_B[3]),
        .I5(FSM_B_next0__7_carry_i_10_n_0),
        .O(FSM_B_next0__7_carry_i_8__0_n_0));
  LUT6 #(
    .INIT(64'h0000000000001011)) 
    FSM_B_next0__7_carry_i_9
       (.I0(FSM_B[3]),
        .I1(FSM_B[1]),
        .I2(FSM_A[7]),
        .I3(FSM_B[0]),
        .I4(FSM_B[2]),
        .I5(FSM_B[4]),
        .O(FSM_B_next0__7_carry_i_9_n_0));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h00000051)) 
    FSM_B_next0__7_carry_i_9__0
       (.I0(FSM_B[2]),
        .I1(FSM_B[0]),
        .I2(FSM_A[7]),
        .I3(FSM_B[1]),
        .I4(FSM_B[3]),
        .O(FSM_B_next0__7_carry_i_9__0_n_0));
  CARRY4 FSM_B_next1_carry
       (.CI(1'b0),
        .CO({FSM_B_next1,FSM_B_next1_carry_n_1,FSM_B_next1_carry_n_2,FSM_B_next1_carry_n_3}),
        .CYINIT(1'b0),
        .DI({FSM_B_next1_carry_i_1_n_0,FSM_B_next1_carry_i_2_n_0,FSM_B_next1_carry_i_3_n_0,FSM_B_next1_carry_i_4_n_0}),
        .O(NLW_FSM_B_next1_carry_O_UNCONNECTED[3:0]),
        .S({FSM_B_next1_carry_i_5_n_0,FSM_B_next1_carry_i_6_n_0,FSM_B_next1_carry_i_7_n_0,FSM_B_next1_carry_i_8_n_0}));
  LUT4 #(
    .INIT(16'h2F02)) 
    FSM_B_next1_carry_i_1
       (.I0(FSM_B[6]),
        .I1(FSM_A[6]),
        .I2(FSM_A[7]),
        .I3(FSM_B[7]),
        .O(FSM_B_next1_carry_i_1_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    FSM_B_next1_carry_i_2
       (.I0(FSM_B[4]),
        .I1(FSM_A[4]),
        .I2(FSM_A[5]),
        .I3(FSM_B[5]),
        .O(FSM_B_next1_carry_i_2_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    FSM_B_next1_carry_i_3
       (.I0(FSM_B[2]),
        .I1(FSM_A[2]),
        .I2(FSM_A[3]),
        .I3(FSM_B[3]),
        .O(FSM_B_next1_carry_i_3_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    FSM_B_next1_carry_i_4
       (.I0(FSM_B[0]),
        .I1(FSM_A[0]),
        .I2(FSM_A[1]),
        .I3(FSM_B[1]),
        .O(FSM_B_next1_carry_i_4_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    FSM_B_next1_carry_i_5
       (.I0(FSM_A[7]),
        .I1(FSM_B[7]),
        .I2(FSM_A[6]),
        .I3(FSM_B[6]),
        .O(FSM_B_next1_carry_i_5_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    FSM_B_next1_carry_i_6
       (.I0(FSM_A[5]),
        .I1(FSM_B[5]),
        .I2(FSM_A[4]),
        .I3(FSM_B[4]),
        .O(FSM_B_next1_carry_i_6_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    FSM_B_next1_carry_i_7
       (.I0(FSM_A[3]),
        .I1(FSM_B[3]),
        .I2(FSM_A[2]),
        .I3(FSM_B[2]),
        .O(FSM_B_next1_carry_i_7_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    FSM_B_next1_carry_i_8
       (.I0(FSM_A[1]),
        .I1(FSM_B[1]),
        .I2(FSM_A[0]),
        .I3(FSM_B[0]),
        .O(FSM_B_next1_carry_i_8_n_0));
  FDRE \FSM_B_reg[0] 
       (.C(clk),
        .CE(FSM_A_0),
        .D(FSM_B_next[0]),
        .Q(FSM_B[0]),
        .R(1'b0));
  FDRE \FSM_B_reg[1] 
       (.C(clk),
        .CE(FSM_A_0),
        .D(FSM_B_next[1]),
        .Q(FSM_B[1]),
        .R(1'b0));
  FDRE \FSM_B_reg[2] 
       (.C(clk),
        .CE(FSM_A_0),
        .D(FSM_B_next[2]),
        .Q(FSM_B[2]),
        .R(1'b0));
  CARRY4 \FSM_B_reg[2]_i_3 
       (.CI(1'b0),
        .CO({\FSM_B_reg[2]_i_3_n_0 ,\FSM_B_reg[2]_i_3_n_1 ,\FSM_B_reg[2]_i_3_n_2 ,\FSM_B_reg[2]_i_3_n_3 }),
        .CYINIT(\FSM_B_reg[7]_i_8_n_2 ),
        .DI({\FSM_B_reg[6]_i_5_n_5 ,\FSM_B_reg[6]_i_5_n_6 ,FSM_A[0],1'b0}),
        .O({\FSM_B_reg[2]_i_3_n_4 ,\FSM_B_reg[2]_i_3_n_5 ,\FSM_B_reg[2]_i_3_n_6 ,\NLW_FSM_B_reg[2]_i_3_O_UNCONNECTED [0]}),
        .S({\FSM_B[2]_i_4_n_0 ,\FSM_B[2]_i_5_n_0 ,\FSM_B[2]_i_6_n_0 ,1'b1}));
  FDRE \FSM_B_reg[3] 
       (.C(clk),
        .CE(FSM_A_0),
        .D(FSM_B_next[3]),
        .Q(FSM_B[3]),
        .R(1'b0));
  FDRE \FSM_B_reg[4] 
       (.C(clk),
        .CE(FSM_A_0),
        .D(FSM_B_next[4]),
        .Q(FSM_B[4]),
        .R(1'b0));
  FDRE \FSM_B_reg[5] 
       (.C(clk),
        .CE(FSM_A_0),
        .D(FSM_B_next[5]),
        .Q(FSM_B[5]),
        .R(1'b0));
  FDRE \FSM_B_reg[6] 
       (.C(clk),
        .CE(FSM_A_0),
        .D(FSM_B_next[6]),
        .Q(FSM_B[6]),
        .R(1'b0));
  CARRY4 \FSM_B_reg[6]_i_4 
       (.CI(\FSM_B_reg[2]_i_3_n_0 ),
        .CO({\FSM_B_reg[6]_i_4_n_0 ,\FSM_B_reg[6]_i_4_n_1 ,\FSM_B_reg[6]_i_4_n_2 ,\FSM_B_reg[6]_i_4_n_3 }),
        .CYINIT(1'b0),
        .DI({\FSM_B_reg[7]_i_9_n_5 ,\FSM_B_reg[7]_i_9_n_6 ,\FSM_B_reg[7]_i_9_n_7 ,\FSM_B_reg[6]_i_5_n_4 }),
        .O({\FSM_B_reg[6]_i_4_n_4 ,\FSM_B_reg[6]_i_4_n_5 ,\FSM_B_reg[6]_i_4_n_6 ,\FSM_B_reg[6]_i_4_n_7 }),
        .S({\FSM_B[6]_i_6_n_0 ,\FSM_B[6]_i_7_n_0 ,\FSM_B[6]_i_8_n_0 ,\FSM_B[6]_i_9_n_0 }));
  CARRY4 \FSM_B_reg[6]_i_5 
       (.CI(1'b0),
        .CO({\FSM_B_reg[6]_i_5_n_0 ,\FSM_B_reg[6]_i_5_n_1 ,\FSM_B_reg[6]_i_5_n_2 ,\FSM_B_reg[6]_i_5_n_3 }),
        .CYINIT(\FSM_B_reg[6]_1 ),
        .DI({\FSM_B_reg[7]_i_17_n_5 ,\FSM_B_reg[7]_i_17_n_6 ,FSM_A[1],1'b0}),
        .O({\FSM_B_reg[6]_i_5_n_4 ,\FSM_B_reg[6]_i_5_n_5 ,\FSM_B_reg[6]_i_5_n_6 ,\NLW_FSM_B_reg[6]_i_5_O_UNCONNECTED [0]}),
        .S({\FSM_B[6]_i_10_n_0 ,\FSM_B[6]_i_11_n_0 ,\FSM_B[6]_i_12_n_0 ,1'b1}));
  FDRE \FSM_B_reg[7] 
       (.C(clk),
        .CE(FSM_A_0),
        .D(FSM_B_next[7]),
        .Q(FSM_B[7]),
        .R(1'b0));
  CARRY4 \FSM_B_reg[7]_i_13 
       (.CI(\FSM_B_reg[7]_i_14_n_0 ),
        .CO({\NLW_FSM_B_reg[7]_i_13_CO_UNCONNECTED [3:2],\FSM_B_reg[6]_1 ,\FSM_B_reg[7]_i_13_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,\FSM_B_reg[7]_2 ,\FSM_B_reg[7]_i_23_n_4 }),
        .O({\NLW_FSM_B_reg[7]_i_13_O_UNCONNECTED [3:1],\FSM_B_reg[7]_3 }),
        .S({1'b0,1'b0,\FSM_B_reg[7]_5 ,\FSM_B[7]_i_25_n_0 }));
  CARRY4 \FSM_B_reg[7]_i_14 
       (.CI(\FSM_B_reg[7]_i_17_n_0 ),
        .CO({\FSM_B_reg[7]_i_14_n_0 ,\FSM_B_reg[7]_i_14_n_1 ,\FSM_B_reg[7]_i_14_n_2 ,\FSM_B_reg[7]_i_14_n_3 }),
        .CYINIT(1'b0),
        .DI({\FSM_B_reg[7]_i_23_n_5 ,\FSM_B_reg[7]_i_23_n_6 ,\FSM_B_reg[7]_i_23_n_7 ,\FSM_B_reg[7]_i_26_n_4 }),
        .O({\FSM_B_reg[7]_i_14_n_4 ,\FSM_B_reg[7]_i_14_n_5 ,\FSM_B_reg[7]_i_14_n_6 ,\FSM_B_reg[7]_i_14_n_7 }),
        .S({\FSM_B[7]_i_27_n_0 ,\FSM_B[7]_i_28_n_0 ,\FSM_B[7]_i_29_n_0 ,\FSM_B[7]_i_30_n_0 }));
  CARRY4 \FSM_B_reg[7]_i_17 
       (.CI(1'b0),
        .CO({\FSM_B_reg[7]_i_17_n_0 ,\FSM_B_reg[7]_i_17_n_1 ,\FSM_B_reg[7]_i_17_n_2 ,\FSM_B_reg[7]_i_17_n_3 }),
        .CYINIT(\FSM_B_reg[7]_2 ),
        .DI({\FSM_B_reg[7]_i_26_n_5 ,\FSM_B_reg[7]_i_26_n_6 ,FSM_A[2],1'b0}),
        .O({\FSM_B_reg[7]_i_17_n_4 ,\FSM_B_reg[7]_i_17_n_5 ,\FSM_B_reg[7]_i_17_n_6 ,\NLW_FSM_B_reg[7]_i_17_O_UNCONNECTED [0]}),
        .S({\FSM_B[7]_i_31_n_0 ,\FSM_B[7]_i_32_n_0 ,\FSM_B[7]_i_33_n_0 ,1'b1}));
  CARRY4 \FSM_B_reg[7]_i_22 
       (.CI(\FSM_B_reg[7]_i_23_n_0 ),
        .CO({\NLW_FSM_B_reg[7]_i_22_CO_UNCONNECTED [3:2],\FSM_B_reg[7]_2 ,\FSM_B_reg[7]_i_22_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,\FSM_B_reg[7]_0 ,\FSM_B_reg[7]_i_35_n_4 }),
        .O({\NLW_FSM_B_reg[7]_i_22_O_UNCONNECTED [3:1],\FSM_B_reg[6]_0 }),
        .S({1'b0,1'b0,\FSM_B_reg[7]_4 ,\FSM_B[7]_i_37_n_0 }));
  CARRY4 \FSM_B_reg[7]_i_23 
       (.CI(\FSM_B_reg[7]_i_26_n_0 ),
        .CO({\FSM_B_reg[7]_i_23_n_0 ,\FSM_B_reg[7]_i_23_n_1 ,\FSM_B_reg[7]_i_23_n_2 ,\FSM_B_reg[7]_i_23_n_3 }),
        .CYINIT(1'b0),
        .DI({\FSM_B_reg[7]_i_35_n_5 ,\FSM_B_reg[7]_i_35_n_6 ,\FSM_B_reg[7]_i_35_n_7 ,\FSM_B_reg[7]_i_38_n_4 }),
        .O({\FSM_B_reg[7]_i_23_n_4 ,\FSM_B_reg[7]_i_23_n_5 ,\FSM_B_reg[7]_i_23_n_6 ,\FSM_B_reg[7]_i_23_n_7 }),
        .S({\FSM_B[7]_i_39_n_0 ,\FSM_B[7]_i_40_n_0 ,\FSM_B[7]_i_41_n_0 ,\FSM_B[7]_i_42_n_0 }));
  CARRY4 \FSM_B_reg[7]_i_26 
       (.CI(1'b0),
        .CO({\FSM_B_reg[7]_i_26_n_0 ,\FSM_B_reg[7]_i_26_n_1 ,\FSM_B_reg[7]_i_26_n_2 ,\FSM_B_reg[7]_i_26_n_3 }),
        .CYINIT(\FSM_B_reg[7]_0 ),
        .DI({\FSM_B_reg[7]_i_38_n_5 ,\FSM_B_reg[7]_i_38_n_6 ,FSM_A[3],1'b0}),
        .O({\FSM_B_reg[7]_i_26_n_4 ,\FSM_B_reg[7]_i_26_n_5 ,\FSM_B_reg[7]_i_26_n_6 ,\NLW_FSM_B_reg[7]_i_26_O_UNCONNECTED [0]}),
        .S({\FSM_B[7]_i_43_n_0 ,\FSM_B[7]_i_44_n_0 ,\FSM_B[7]_i_45_n_0 ,1'b1}));
  CARRY4 \FSM_B_reg[7]_i_34 
       (.CI(\FSM_B_reg[7]_i_35_n_0 ),
        .CO({\NLW_FSM_B_reg[7]_i_34_CO_UNCONNECTED [3:2],\FSM_B_reg[7]_0 ,\FSM_B_reg[7]_i_34_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,CO,\FSM_B_reg[7]_i_47_n_4 }),
        .O({\NLW_FSM_B_reg[7]_i_34_O_UNCONNECTED [3:1],\FSM_B_reg[7]_1 }),
        .S({1'b0,1'b0,S,\FSM_B[7]_i_49_n_0 }));
  CARRY4 \FSM_B_reg[7]_i_35 
       (.CI(\FSM_B_reg[7]_i_38_n_0 ),
        .CO({\FSM_B_reg[7]_i_35_n_0 ,\FSM_B_reg[7]_i_35_n_1 ,\FSM_B_reg[7]_i_35_n_2 ,\FSM_B_reg[7]_i_35_n_3 }),
        .CYINIT(1'b0),
        .DI({\FSM_B_reg[7]_i_47_n_5 ,\FSM_B_reg[7]_i_47_n_6 ,\FSM_B_reg[7]_i_47_n_7 ,\FSM_B_reg[7]_i_50_n_4 }),
        .O({\FSM_B_reg[7]_i_35_n_4 ,\FSM_B_reg[7]_i_35_n_5 ,\FSM_B_reg[7]_i_35_n_6 ,\FSM_B_reg[7]_i_35_n_7 }),
        .S({\FSM_B[7]_i_51_n_0 ,\FSM_B[7]_i_52_n_0 ,\FSM_B[7]_i_53_n_0 ,\FSM_B[7]_i_54_n_0 }));
  CARRY4 \FSM_B_reg[7]_i_38 
       (.CI(1'b0),
        .CO({\FSM_B_reg[7]_i_38_n_0 ,\FSM_B_reg[7]_i_38_n_1 ,\FSM_B_reg[7]_i_38_n_2 ,\FSM_B_reg[7]_i_38_n_3 }),
        .CYINIT(CO),
        .DI({\FSM_B_reg[7]_i_50_n_5 ,\FSM_B_reg[7]_i_50_n_6 ,FSM_A[4],1'b0}),
        .O({\FSM_B_reg[7]_i_38_n_4 ,\FSM_B_reg[7]_i_38_n_5 ,\FSM_B_reg[7]_i_38_n_6 ,\NLW_FSM_B_reg[7]_i_38_O_UNCONNECTED [0]}),
        .S({\FSM_B[7]_i_55_n_0 ,\FSM_B[7]_i_56_n_0 ,\FSM_B[7]_i_57_n_0 ,1'b1}));
  CARRY4 \FSM_B_reg[7]_i_4 
       (.CI(\FSM_B_reg[6]_i_4_n_0 ),
        .CO({\NLW_FSM_B_reg[7]_i_4_CO_UNCONNECTED [3:2],\FSM_B_reg[7]_i_4_n_2 ,\FSM_B_reg[7]_i_4_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,\FSM_B_reg[7]_i_8_n_2 ,\FSM_B_reg[7]_i_9_n_4 }),
        .O({\NLW_FSM_B_reg[7]_i_4_O_UNCONNECTED [3:1],\FSM_B_reg[7]_i_4_n_7 }),
        .S({1'b0,1'b0,\FSM_B[7]_i_10_n_0 ,\FSM_B[7]_i_11_n_0 }));
  CARRY4 \FSM_B_reg[7]_i_46 
       (.CI(\FSM_B_reg[7]_i_47_n_0 ),
        .CO({\NLW_FSM_B_reg[7]_i_46_CO_UNCONNECTED [3:2],CO,\FSM_B_reg[7]_i_46_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,FSM_B_next0__7_carry__1_n_3,FSM_B_next0__7_carry__0_n_5}),
        .O({\NLW_FSM_B_reg[7]_i_46_O_UNCONNECTED [3:1],O}),
        .S({1'b0,1'b0,\FSM_B[7]_i_58_n_0 ,\FSM_B[7]_i_59_n_0 }));
  CARRY4 \FSM_B_reg[7]_i_47 
       (.CI(\FSM_B_reg[7]_i_50_n_0 ),
        .CO({\FSM_B_reg[7]_i_47_n_0 ,\FSM_B_reg[7]_i_47_n_1 ,\FSM_B_reg[7]_i_47_n_2 ,\FSM_B_reg[7]_i_47_n_3 }),
        .CYINIT(1'b0),
        .DI({FSM_B_next0__7_carry__0_n_6,FSM_B_next0__7_carry__0_n_7,FSM_B_next0__7_carry_n_4,FSM_B_next0__7_carry_n_5}),
        .O({\FSM_B_reg[7]_i_47_n_4 ,\FSM_B_reg[7]_i_47_n_5 ,\FSM_B_reg[7]_i_47_n_6 ,\FSM_B_reg[7]_i_47_n_7 }),
        .S({\FSM_B[7]_i_60_n_0 ,\FSM_B[7]_i_61_n_0 ,\FSM_B[7]_i_62_n_0 ,\FSM_B[7]_i_63_n_0 }));
  CARRY4 \FSM_B_reg[7]_i_50 
       (.CI(1'b0),
        .CO({\FSM_B_reg[7]_i_50_n_0 ,\FSM_B_reg[7]_i_50_n_1 ,\FSM_B_reg[7]_i_50_n_2 ,\FSM_B_reg[7]_i_50_n_3 }),
        .CYINIT(FSM_B_next0__7_carry__1_n_3),
        .DI({FSM_B_next0__7_carry_n_6,FSM_B_next0__7_carry_n_7,FSM_A[5],1'b0}),
        .O({\FSM_B_reg[7]_i_50_n_4 ,\FSM_B_reg[7]_i_50_n_5 ,\FSM_B_reg[7]_i_50_n_6 ,\NLW_FSM_B_reg[7]_i_50_O_UNCONNECTED [0]}),
        .S({\FSM_B[7]_i_64_n_0 ,\FSM_B[7]_i_65_n_0 ,\FSM_B[7]_i_66_n_0 ,1'b1}));
  CARRY4 \FSM_B_reg[7]_i_8 
       (.CI(\FSM_B_reg[7]_i_9_n_0 ),
        .CO({\NLW_FSM_B_reg[7]_i_8_CO_UNCONNECTED [3:2],\FSM_B_reg[7]_i_8_n_2 ,\FSM_B_reg[7]_i_8_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,\FSM_B_reg[6]_1 ,\FSM_B_reg[7]_i_14_n_4 }),
        .O({\NLW_FSM_B_reg[7]_i_8_O_UNCONNECTED [3:1],\FSM_B_reg[7]_i_8_n_7 }),
        .S({1'b0,1'b0,\FSM_B_reg[7]_6 ,\FSM_B[7]_i_16_n_0 }));
  CARRY4 \FSM_B_reg[7]_i_9 
       (.CI(\FSM_B_reg[6]_i_5_n_0 ),
        .CO({\FSM_B_reg[7]_i_9_n_0 ,\FSM_B_reg[7]_i_9_n_1 ,\FSM_B_reg[7]_i_9_n_2 ,\FSM_B_reg[7]_i_9_n_3 }),
        .CYINIT(1'b0),
        .DI({\FSM_B_reg[7]_i_14_n_5 ,\FSM_B_reg[7]_i_14_n_6 ,\FSM_B_reg[7]_i_14_n_7 ,\FSM_B_reg[7]_i_17_n_4 }),
        .O({\FSM_B_reg[7]_i_9_n_4 ,\FSM_B_reg[7]_i_9_n_5 ,\FSM_B_reg[7]_i_9_n_6 ,\FSM_B_reg[7]_i_9_n_7 }),
        .S({\FSM_B[7]_i_18_n_0 ,\FSM_B[7]_i_19_n_0 ,\FSM_B[7]_i_20_n_0 ,\FSM_B[7]_i_21_n_0 }));
  LUT3 #(
    .INIT(8'h40)) 
    \Res[7]_i_1 
       (.I0(C_S),
        .I1(btnC),
        .I2(\Res[7]_i_3_n_0 ),
        .O(\Res[7]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'h08)) 
    \Res[7]_i_2 
       (.I0(btnC),
        .I1(C_S),
        .I2(\Res[7]_i_4_n_0 ),
        .O(Res));
  LUT6 #(
    .INIT(64'hFFFFFFFF00000002)) 
    \Res[7]_i_3 
       (.I0(\Res[7]_i_5_n_0 ),
        .I1(sw[7]),
        .I2(sw[6]),
        .I3(sw[5]),
        .I4(sw[4]),
        .I5(\Res[7]_i_6_n_0 ),
        .O(\Res[7]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \Res[7]_i_4 
       (.I0(FSM_B[7]),
        .I1(FSM_B[6]),
        .I2(FSM_B[4]),
        .I3(FSM_B[5]),
        .I4(\Res[7]_i_7_n_0 ),
        .O(\Res[7]_i_4_n_0 ));
  LUT4 #(
    .INIT(16'h0001)) 
    \Res[7]_i_5 
       (.I0(sw[1]),
        .I1(sw[0]),
        .I2(sw[3]),
        .I3(sw[2]),
        .O(\Res[7]_i_5_n_0 ));
  LUT5 #(
    .INIT(32'h00010000)) 
    \Res[7]_i_6 
       (.I0(sw[12]),
        .I1(sw[13]),
        .I2(sw[14]),
        .I3(sw[15]),
        .I4(\Res[7]_i_8_n_0 ),
        .O(\Res[7]_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT4 #(
    .INIT(16'hFFFE)) 
    \Res[7]_i_7 
       (.I0(FSM_B[1]),
        .I1(FSM_B[0]),
        .I2(FSM_B[3]),
        .I3(FSM_B[2]),
        .O(\Res[7]_i_7_n_0 ));
  LUT4 #(
    .INIT(16'h0001)) 
    \Res[7]_i_8 
       (.I0(sw[9]),
        .I1(sw[8]),
        .I2(sw[11]),
        .I3(sw[10]),
        .O(\Res[7]_i_8_n_0 ));
  FDRE \Res_reg[0] 
       (.C(clk),
        .CE(Res),
        .D(FSM_A[0]),
        .Q(led[0]),
        .R(\Res[7]_i_1_n_0 ));
  FDRE \Res_reg[1] 
       (.C(clk),
        .CE(Res),
        .D(FSM_A[1]),
        .Q(led[1]),
        .R(\Res[7]_i_1_n_0 ));
  FDRE \Res_reg[2] 
       (.C(clk),
        .CE(Res),
        .D(FSM_A[2]),
        .Q(led[2]),
        .R(\Res[7]_i_1_n_0 ));
  FDRE \Res_reg[3] 
       (.C(clk),
        .CE(Res),
        .D(FSM_A[3]),
        .Q(led[3]),
        .R(\Res[7]_i_1_n_0 ));
  FDRE \Res_reg[4] 
       (.C(clk),
        .CE(Res),
        .D(FSM_A[4]),
        .Q(led[4]),
        .R(\Res[7]_i_1_n_0 ));
  FDRE \Res_reg[5] 
       (.C(clk),
        .CE(Res),
        .D(FSM_A[5]),
        .Q(led[5]),
        .R(\Res[7]_i_1_n_0 ));
  FDRE \Res_reg[6] 
       (.C(clk),
        .CE(Res),
        .D(FSM_A[6]),
        .Q(led[6]),
        .R(\Res[7]_i_1_n_0 ));
  FDRE \Res_reg[7] 
       (.C(clk),
        .CE(Res),
        .D(FSM_A[7]),
        .Q(led[7]),
        .R(\Res[7]_i_1_n_0 ));
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
