// Copyright 1986-2016 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2016.4 (win64) Build 1756540 Mon Jan 23 19:11:23 MST 2017
// Date        : Mon Jun 05 11:46:08 2017
// Host        : Inator running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ ex7_top_SliceMemory_0_1_sim_netlist.v
// Design      : ex7_top_SliceMemory_0_1
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a100tcsg324-3
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_SliceMemory
   (Q,
    dataOut,
    finished,
    clock,
    dataIn);
  output [2:0]Q;
  output [21:0]dataOut;
  output finished;
  input clock;
  input [175:0]dataIn;

  wire [2:0]Q;
  wire clock;
  wire [175:0]dataIn;
  wire [21:0]dataOut;
  wire \dataOut[0]_i_2_n_0 ;
  wire \dataOut[0]_i_3_n_0 ;
  wire \dataOut[10]_i_2_n_0 ;
  wire \dataOut[10]_i_3_n_0 ;
  wire \dataOut[11]_i_2_n_0 ;
  wire \dataOut[11]_i_3_n_0 ;
  wire \dataOut[12]_i_2_n_0 ;
  wire \dataOut[12]_i_3_n_0 ;
  wire \dataOut[13]_i_2_n_0 ;
  wire \dataOut[13]_i_3_n_0 ;
  wire \dataOut[14]_i_2_n_0 ;
  wire \dataOut[14]_i_3_n_0 ;
  wire \dataOut[15]_i_2_n_0 ;
  wire \dataOut[15]_i_3_n_0 ;
  wire \dataOut[16]_i_2_n_0 ;
  wire \dataOut[16]_i_3_n_0 ;
  wire \dataOut[17]_i_2_n_0 ;
  wire \dataOut[17]_i_3_n_0 ;
  wire \dataOut[18]_i_2_n_0 ;
  wire \dataOut[18]_i_3_n_0 ;
  wire \dataOut[19]_i_2_n_0 ;
  wire \dataOut[19]_i_3_n_0 ;
  wire \dataOut[1]_i_2_n_0 ;
  wire \dataOut[1]_i_3_n_0 ;
  wire \dataOut[20]_i_2_n_0 ;
  wire \dataOut[20]_i_3_n_0 ;
  wire \dataOut[21]_i_2_n_0 ;
  wire \dataOut[21]_i_3_n_0 ;
  wire \dataOut[2]_i_2_n_0 ;
  wire \dataOut[2]_i_3_n_0 ;
  wire \dataOut[3]_i_2_n_0 ;
  wire \dataOut[3]_i_3_n_0 ;
  wire \dataOut[4]_i_2_n_0 ;
  wire \dataOut[4]_i_3_n_0 ;
  wire \dataOut[5]_i_2_n_0 ;
  wire \dataOut[5]_i_3_n_0 ;
  wire \dataOut[6]_i_2_n_0 ;
  wire \dataOut[6]_i_3_n_0 ;
  wire \dataOut[7]_i_2_n_0 ;
  wire \dataOut[7]_i_3_n_0 ;
  wire \dataOut[8]_i_2_n_0 ;
  wire \dataOut[8]_i_3_n_0 ;
  wire \dataOut[9]_i_2_n_0 ;
  wire \dataOut[9]_i_3_n_0 ;
  wire \dataOut_reg[0]_i_1_n_0 ;
  wire \dataOut_reg[10]_i_1_n_0 ;
  wire \dataOut_reg[11]_i_1_n_0 ;
  wire \dataOut_reg[12]_i_1_n_0 ;
  wire \dataOut_reg[13]_i_1_n_0 ;
  wire \dataOut_reg[14]_i_1_n_0 ;
  wire \dataOut_reg[15]_i_1_n_0 ;
  wire \dataOut_reg[16]_i_1_n_0 ;
  wire \dataOut_reg[17]_i_1_n_0 ;
  wire \dataOut_reg[18]_i_1_n_0 ;
  wire \dataOut_reg[19]_i_1_n_0 ;
  wire \dataOut_reg[1]_i_1_n_0 ;
  wire \dataOut_reg[20]_i_1_n_0 ;
  wire \dataOut_reg[21]_i_1_n_0 ;
  wire \dataOut_reg[2]_i_1_n_0 ;
  wire \dataOut_reg[3]_i_1_n_0 ;
  wire \dataOut_reg[4]_i_1_n_0 ;
  wire \dataOut_reg[5]_i_1_n_0 ;
  wire \dataOut_reg[6]_i_1_n_0 ;
  wire \dataOut_reg[7]_i_1_n_0 ;
  wire \dataOut_reg[8]_i_1_n_0 ;
  wire \dataOut_reg[9]_i_1_n_0 ;
  wire finished;
  wire finished_s_i_1_n_0;
  wire [2:0]plusOp;

  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \address_s[0]_i_1 
       (.I0(Q[0]),
        .O(plusOp[0]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \address_s[1]_i_1 
       (.I0(Q[0]),
        .I1(Q[1]),
        .O(plusOp[1]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \address_s[2]_i_1 
       (.I0(Q[0]),
        .I1(Q[1]),
        .I2(Q[2]),
        .O(plusOp[2]));
  FDRE #(
    .INIT(1'b0)) 
    \address_s_reg[0] 
       (.C(clock),
        .CE(1'b1),
        .D(plusOp[0]),
        .Q(Q[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \address_s_reg[1] 
       (.C(clock),
        .CE(1'b1),
        .D(plusOp[1]),
        .Q(Q[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \address_s_reg[2] 
       (.C(clock),
        .CE(1'b1),
        .D(plusOp[2]),
        .Q(Q[2]),
        .R(1'b0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \dataOut[0]_i_2 
       (.I0(dataIn[66]),
        .I1(dataIn[44]),
        .I2(Q[1]),
        .I3(dataIn[22]),
        .I4(Q[0]),
        .I5(dataIn[0]),
        .O(\dataOut[0]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \dataOut[0]_i_3 
       (.I0(dataIn[154]),
        .I1(dataIn[132]),
        .I2(Q[1]),
        .I3(dataIn[110]),
        .I4(Q[0]),
        .I5(dataIn[88]),
        .O(\dataOut[0]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \dataOut[10]_i_2 
       (.I0(dataIn[76]),
        .I1(dataIn[54]),
        .I2(Q[1]),
        .I3(dataIn[32]),
        .I4(Q[0]),
        .I5(dataIn[10]),
        .O(\dataOut[10]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \dataOut[10]_i_3 
       (.I0(dataIn[164]),
        .I1(dataIn[142]),
        .I2(Q[1]),
        .I3(dataIn[120]),
        .I4(Q[0]),
        .I5(dataIn[98]),
        .O(\dataOut[10]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \dataOut[11]_i_2 
       (.I0(dataIn[77]),
        .I1(dataIn[55]),
        .I2(Q[1]),
        .I3(dataIn[33]),
        .I4(Q[0]),
        .I5(dataIn[11]),
        .O(\dataOut[11]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \dataOut[11]_i_3 
       (.I0(dataIn[165]),
        .I1(dataIn[143]),
        .I2(Q[1]),
        .I3(dataIn[121]),
        .I4(Q[0]),
        .I5(dataIn[99]),
        .O(\dataOut[11]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \dataOut[12]_i_2 
       (.I0(dataIn[78]),
        .I1(dataIn[56]),
        .I2(Q[1]),
        .I3(dataIn[34]),
        .I4(Q[0]),
        .I5(dataIn[12]),
        .O(\dataOut[12]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \dataOut[12]_i_3 
       (.I0(dataIn[166]),
        .I1(dataIn[144]),
        .I2(Q[1]),
        .I3(dataIn[122]),
        .I4(Q[0]),
        .I5(dataIn[100]),
        .O(\dataOut[12]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \dataOut[13]_i_2 
       (.I0(dataIn[79]),
        .I1(dataIn[57]),
        .I2(Q[1]),
        .I3(dataIn[35]),
        .I4(Q[0]),
        .I5(dataIn[13]),
        .O(\dataOut[13]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \dataOut[13]_i_3 
       (.I0(dataIn[167]),
        .I1(dataIn[145]),
        .I2(Q[1]),
        .I3(dataIn[123]),
        .I4(Q[0]),
        .I5(dataIn[101]),
        .O(\dataOut[13]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \dataOut[14]_i_2 
       (.I0(dataIn[80]),
        .I1(dataIn[58]),
        .I2(Q[1]),
        .I3(dataIn[36]),
        .I4(Q[0]),
        .I5(dataIn[14]),
        .O(\dataOut[14]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \dataOut[14]_i_3 
       (.I0(dataIn[168]),
        .I1(dataIn[146]),
        .I2(Q[1]),
        .I3(dataIn[124]),
        .I4(Q[0]),
        .I5(dataIn[102]),
        .O(\dataOut[14]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \dataOut[15]_i_2 
       (.I0(dataIn[81]),
        .I1(dataIn[59]),
        .I2(Q[1]),
        .I3(dataIn[37]),
        .I4(Q[0]),
        .I5(dataIn[15]),
        .O(\dataOut[15]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \dataOut[15]_i_3 
       (.I0(dataIn[169]),
        .I1(dataIn[147]),
        .I2(Q[1]),
        .I3(dataIn[125]),
        .I4(Q[0]),
        .I5(dataIn[103]),
        .O(\dataOut[15]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \dataOut[16]_i_2 
       (.I0(dataIn[82]),
        .I1(dataIn[60]),
        .I2(Q[1]),
        .I3(dataIn[38]),
        .I4(Q[0]),
        .I5(dataIn[16]),
        .O(\dataOut[16]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \dataOut[16]_i_3 
       (.I0(dataIn[170]),
        .I1(dataIn[148]),
        .I2(Q[1]),
        .I3(dataIn[126]),
        .I4(Q[0]),
        .I5(dataIn[104]),
        .O(\dataOut[16]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \dataOut[17]_i_2 
       (.I0(dataIn[83]),
        .I1(dataIn[61]),
        .I2(Q[1]),
        .I3(dataIn[39]),
        .I4(Q[0]),
        .I5(dataIn[17]),
        .O(\dataOut[17]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \dataOut[17]_i_3 
       (.I0(dataIn[171]),
        .I1(dataIn[149]),
        .I2(Q[1]),
        .I3(dataIn[127]),
        .I4(Q[0]),
        .I5(dataIn[105]),
        .O(\dataOut[17]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \dataOut[18]_i_2 
       (.I0(dataIn[84]),
        .I1(dataIn[62]),
        .I2(Q[1]),
        .I3(dataIn[40]),
        .I4(Q[0]),
        .I5(dataIn[18]),
        .O(\dataOut[18]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \dataOut[18]_i_3 
       (.I0(dataIn[172]),
        .I1(dataIn[150]),
        .I2(Q[1]),
        .I3(dataIn[128]),
        .I4(Q[0]),
        .I5(dataIn[106]),
        .O(\dataOut[18]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \dataOut[19]_i_2 
       (.I0(dataIn[85]),
        .I1(dataIn[63]),
        .I2(Q[1]),
        .I3(dataIn[41]),
        .I4(Q[0]),
        .I5(dataIn[19]),
        .O(\dataOut[19]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \dataOut[19]_i_3 
       (.I0(dataIn[173]),
        .I1(dataIn[151]),
        .I2(Q[1]),
        .I3(dataIn[129]),
        .I4(Q[0]),
        .I5(dataIn[107]),
        .O(\dataOut[19]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \dataOut[1]_i_2 
       (.I0(dataIn[67]),
        .I1(dataIn[45]),
        .I2(Q[1]),
        .I3(dataIn[23]),
        .I4(Q[0]),
        .I5(dataIn[1]),
        .O(\dataOut[1]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \dataOut[1]_i_3 
       (.I0(dataIn[155]),
        .I1(dataIn[133]),
        .I2(Q[1]),
        .I3(dataIn[111]),
        .I4(Q[0]),
        .I5(dataIn[89]),
        .O(\dataOut[1]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \dataOut[20]_i_2 
       (.I0(dataIn[86]),
        .I1(dataIn[64]),
        .I2(Q[1]),
        .I3(dataIn[42]),
        .I4(Q[0]),
        .I5(dataIn[20]),
        .O(\dataOut[20]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \dataOut[20]_i_3 
       (.I0(dataIn[174]),
        .I1(dataIn[152]),
        .I2(Q[1]),
        .I3(dataIn[130]),
        .I4(Q[0]),
        .I5(dataIn[108]),
        .O(\dataOut[20]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \dataOut[21]_i_2 
       (.I0(dataIn[87]),
        .I1(dataIn[65]),
        .I2(Q[1]),
        .I3(dataIn[43]),
        .I4(Q[0]),
        .I5(dataIn[21]),
        .O(\dataOut[21]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \dataOut[21]_i_3 
       (.I0(dataIn[175]),
        .I1(dataIn[153]),
        .I2(Q[1]),
        .I3(dataIn[131]),
        .I4(Q[0]),
        .I5(dataIn[109]),
        .O(\dataOut[21]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \dataOut[2]_i_2 
       (.I0(dataIn[68]),
        .I1(dataIn[46]),
        .I2(Q[1]),
        .I3(dataIn[24]),
        .I4(Q[0]),
        .I5(dataIn[2]),
        .O(\dataOut[2]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \dataOut[2]_i_3 
       (.I0(dataIn[156]),
        .I1(dataIn[134]),
        .I2(Q[1]),
        .I3(dataIn[112]),
        .I4(Q[0]),
        .I5(dataIn[90]),
        .O(\dataOut[2]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \dataOut[3]_i_2 
       (.I0(dataIn[69]),
        .I1(dataIn[47]),
        .I2(Q[1]),
        .I3(dataIn[25]),
        .I4(Q[0]),
        .I5(dataIn[3]),
        .O(\dataOut[3]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \dataOut[3]_i_3 
       (.I0(dataIn[157]),
        .I1(dataIn[135]),
        .I2(Q[1]),
        .I3(dataIn[113]),
        .I4(Q[0]),
        .I5(dataIn[91]),
        .O(\dataOut[3]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \dataOut[4]_i_2 
       (.I0(dataIn[70]),
        .I1(dataIn[48]),
        .I2(Q[1]),
        .I3(dataIn[26]),
        .I4(Q[0]),
        .I5(dataIn[4]),
        .O(\dataOut[4]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \dataOut[4]_i_3 
       (.I0(dataIn[158]),
        .I1(dataIn[136]),
        .I2(Q[1]),
        .I3(dataIn[114]),
        .I4(Q[0]),
        .I5(dataIn[92]),
        .O(\dataOut[4]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \dataOut[5]_i_2 
       (.I0(dataIn[71]),
        .I1(dataIn[49]),
        .I2(Q[1]),
        .I3(dataIn[27]),
        .I4(Q[0]),
        .I5(dataIn[5]),
        .O(\dataOut[5]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \dataOut[5]_i_3 
       (.I0(dataIn[159]),
        .I1(dataIn[137]),
        .I2(Q[1]),
        .I3(dataIn[115]),
        .I4(Q[0]),
        .I5(dataIn[93]),
        .O(\dataOut[5]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \dataOut[6]_i_2 
       (.I0(dataIn[72]),
        .I1(dataIn[50]),
        .I2(Q[1]),
        .I3(dataIn[28]),
        .I4(Q[0]),
        .I5(dataIn[6]),
        .O(\dataOut[6]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \dataOut[6]_i_3 
       (.I0(dataIn[160]),
        .I1(dataIn[138]),
        .I2(Q[1]),
        .I3(dataIn[116]),
        .I4(Q[0]),
        .I5(dataIn[94]),
        .O(\dataOut[6]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \dataOut[7]_i_2 
       (.I0(dataIn[73]),
        .I1(dataIn[51]),
        .I2(Q[1]),
        .I3(dataIn[29]),
        .I4(Q[0]),
        .I5(dataIn[7]),
        .O(\dataOut[7]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \dataOut[7]_i_3 
       (.I0(dataIn[161]),
        .I1(dataIn[139]),
        .I2(Q[1]),
        .I3(dataIn[117]),
        .I4(Q[0]),
        .I5(dataIn[95]),
        .O(\dataOut[7]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \dataOut[8]_i_2 
       (.I0(dataIn[74]),
        .I1(dataIn[52]),
        .I2(Q[1]),
        .I3(dataIn[30]),
        .I4(Q[0]),
        .I5(dataIn[8]),
        .O(\dataOut[8]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \dataOut[8]_i_3 
       (.I0(dataIn[162]),
        .I1(dataIn[140]),
        .I2(Q[1]),
        .I3(dataIn[118]),
        .I4(Q[0]),
        .I5(dataIn[96]),
        .O(\dataOut[8]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \dataOut[9]_i_2 
       (.I0(dataIn[75]),
        .I1(dataIn[53]),
        .I2(Q[1]),
        .I3(dataIn[31]),
        .I4(Q[0]),
        .I5(dataIn[9]),
        .O(\dataOut[9]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \dataOut[9]_i_3 
       (.I0(dataIn[163]),
        .I1(dataIn[141]),
        .I2(Q[1]),
        .I3(dataIn[119]),
        .I4(Q[0]),
        .I5(dataIn[97]),
        .O(\dataOut[9]_i_3_n_0 ));
  FDRE \dataOut_reg[0] 
       (.C(clock),
        .CE(1'b1),
        .D(\dataOut_reg[0]_i_1_n_0 ),
        .Q(dataOut[0]),
        .R(1'b0));
  MUXF7 \dataOut_reg[0]_i_1 
       (.I0(\dataOut[0]_i_2_n_0 ),
        .I1(\dataOut[0]_i_3_n_0 ),
        .O(\dataOut_reg[0]_i_1_n_0 ),
        .S(Q[2]));
  FDRE \dataOut_reg[10] 
       (.C(clock),
        .CE(1'b1),
        .D(\dataOut_reg[10]_i_1_n_0 ),
        .Q(dataOut[10]),
        .R(1'b0));
  MUXF7 \dataOut_reg[10]_i_1 
       (.I0(\dataOut[10]_i_2_n_0 ),
        .I1(\dataOut[10]_i_3_n_0 ),
        .O(\dataOut_reg[10]_i_1_n_0 ),
        .S(Q[2]));
  FDRE \dataOut_reg[11] 
       (.C(clock),
        .CE(1'b1),
        .D(\dataOut_reg[11]_i_1_n_0 ),
        .Q(dataOut[11]),
        .R(1'b0));
  MUXF7 \dataOut_reg[11]_i_1 
       (.I0(\dataOut[11]_i_2_n_0 ),
        .I1(\dataOut[11]_i_3_n_0 ),
        .O(\dataOut_reg[11]_i_1_n_0 ),
        .S(Q[2]));
  FDRE \dataOut_reg[12] 
       (.C(clock),
        .CE(1'b1),
        .D(\dataOut_reg[12]_i_1_n_0 ),
        .Q(dataOut[12]),
        .R(1'b0));
  MUXF7 \dataOut_reg[12]_i_1 
       (.I0(\dataOut[12]_i_2_n_0 ),
        .I1(\dataOut[12]_i_3_n_0 ),
        .O(\dataOut_reg[12]_i_1_n_0 ),
        .S(Q[2]));
  FDRE \dataOut_reg[13] 
       (.C(clock),
        .CE(1'b1),
        .D(\dataOut_reg[13]_i_1_n_0 ),
        .Q(dataOut[13]),
        .R(1'b0));
  MUXF7 \dataOut_reg[13]_i_1 
       (.I0(\dataOut[13]_i_2_n_0 ),
        .I1(\dataOut[13]_i_3_n_0 ),
        .O(\dataOut_reg[13]_i_1_n_0 ),
        .S(Q[2]));
  FDRE \dataOut_reg[14] 
       (.C(clock),
        .CE(1'b1),
        .D(\dataOut_reg[14]_i_1_n_0 ),
        .Q(dataOut[14]),
        .R(1'b0));
  MUXF7 \dataOut_reg[14]_i_1 
       (.I0(\dataOut[14]_i_2_n_0 ),
        .I1(\dataOut[14]_i_3_n_0 ),
        .O(\dataOut_reg[14]_i_1_n_0 ),
        .S(Q[2]));
  FDRE \dataOut_reg[15] 
       (.C(clock),
        .CE(1'b1),
        .D(\dataOut_reg[15]_i_1_n_0 ),
        .Q(dataOut[15]),
        .R(1'b0));
  MUXF7 \dataOut_reg[15]_i_1 
       (.I0(\dataOut[15]_i_2_n_0 ),
        .I1(\dataOut[15]_i_3_n_0 ),
        .O(\dataOut_reg[15]_i_1_n_0 ),
        .S(Q[2]));
  FDRE \dataOut_reg[16] 
       (.C(clock),
        .CE(1'b1),
        .D(\dataOut_reg[16]_i_1_n_0 ),
        .Q(dataOut[16]),
        .R(1'b0));
  MUXF7 \dataOut_reg[16]_i_1 
       (.I0(\dataOut[16]_i_2_n_0 ),
        .I1(\dataOut[16]_i_3_n_0 ),
        .O(\dataOut_reg[16]_i_1_n_0 ),
        .S(Q[2]));
  FDRE \dataOut_reg[17] 
       (.C(clock),
        .CE(1'b1),
        .D(\dataOut_reg[17]_i_1_n_0 ),
        .Q(dataOut[17]),
        .R(1'b0));
  MUXF7 \dataOut_reg[17]_i_1 
       (.I0(\dataOut[17]_i_2_n_0 ),
        .I1(\dataOut[17]_i_3_n_0 ),
        .O(\dataOut_reg[17]_i_1_n_0 ),
        .S(Q[2]));
  FDRE \dataOut_reg[18] 
       (.C(clock),
        .CE(1'b1),
        .D(\dataOut_reg[18]_i_1_n_0 ),
        .Q(dataOut[18]),
        .R(1'b0));
  MUXF7 \dataOut_reg[18]_i_1 
       (.I0(\dataOut[18]_i_2_n_0 ),
        .I1(\dataOut[18]_i_3_n_0 ),
        .O(\dataOut_reg[18]_i_1_n_0 ),
        .S(Q[2]));
  FDRE \dataOut_reg[19] 
       (.C(clock),
        .CE(1'b1),
        .D(\dataOut_reg[19]_i_1_n_0 ),
        .Q(dataOut[19]),
        .R(1'b0));
  MUXF7 \dataOut_reg[19]_i_1 
       (.I0(\dataOut[19]_i_2_n_0 ),
        .I1(\dataOut[19]_i_3_n_0 ),
        .O(\dataOut_reg[19]_i_1_n_0 ),
        .S(Q[2]));
  FDRE \dataOut_reg[1] 
       (.C(clock),
        .CE(1'b1),
        .D(\dataOut_reg[1]_i_1_n_0 ),
        .Q(dataOut[1]),
        .R(1'b0));
  MUXF7 \dataOut_reg[1]_i_1 
       (.I0(\dataOut[1]_i_2_n_0 ),
        .I1(\dataOut[1]_i_3_n_0 ),
        .O(\dataOut_reg[1]_i_1_n_0 ),
        .S(Q[2]));
  FDRE \dataOut_reg[20] 
       (.C(clock),
        .CE(1'b1),
        .D(\dataOut_reg[20]_i_1_n_0 ),
        .Q(dataOut[20]),
        .R(1'b0));
  MUXF7 \dataOut_reg[20]_i_1 
       (.I0(\dataOut[20]_i_2_n_0 ),
        .I1(\dataOut[20]_i_3_n_0 ),
        .O(\dataOut_reg[20]_i_1_n_0 ),
        .S(Q[2]));
  FDRE \dataOut_reg[21] 
       (.C(clock),
        .CE(1'b1),
        .D(\dataOut_reg[21]_i_1_n_0 ),
        .Q(dataOut[21]),
        .R(1'b0));
  MUXF7 \dataOut_reg[21]_i_1 
       (.I0(\dataOut[21]_i_2_n_0 ),
        .I1(\dataOut[21]_i_3_n_0 ),
        .O(\dataOut_reg[21]_i_1_n_0 ),
        .S(Q[2]));
  FDRE \dataOut_reg[2] 
       (.C(clock),
        .CE(1'b1),
        .D(\dataOut_reg[2]_i_1_n_0 ),
        .Q(dataOut[2]),
        .R(1'b0));
  MUXF7 \dataOut_reg[2]_i_1 
       (.I0(\dataOut[2]_i_2_n_0 ),
        .I1(\dataOut[2]_i_3_n_0 ),
        .O(\dataOut_reg[2]_i_1_n_0 ),
        .S(Q[2]));
  FDRE \dataOut_reg[3] 
       (.C(clock),
        .CE(1'b1),
        .D(\dataOut_reg[3]_i_1_n_0 ),
        .Q(dataOut[3]),
        .R(1'b0));
  MUXF7 \dataOut_reg[3]_i_1 
       (.I0(\dataOut[3]_i_2_n_0 ),
        .I1(\dataOut[3]_i_3_n_0 ),
        .O(\dataOut_reg[3]_i_1_n_0 ),
        .S(Q[2]));
  FDRE \dataOut_reg[4] 
       (.C(clock),
        .CE(1'b1),
        .D(\dataOut_reg[4]_i_1_n_0 ),
        .Q(dataOut[4]),
        .R(1'b0));
  MUXF7 \dataOut_reg[4]_i_1 
       (.I0(\dataOut[4]_i_2_n_0 ),
        .I1(\dataOut[4]_i_3_n_0 ),
        .O(\dataOut_reg[4]_i_1_n_0 ),
        .S(Q[2]));
  FDRE \dataOut_reg[5] 
       (.C(clock),
        .CE(1'b1),
        .D(\dataOut_reg[5]_i_1_n_0 ),
        .Q(dataOut[5]),
        .R(1'b0));
  MUXF7 \dataOut_reg[5]_i_1 
       (.I0(\dataOut[5]_i_2_n_0 ),
        .I1(\dataOut[5]_i_3_n_0 ),
        .O(\dataOut_reg[5]_i_1_n_0 ),
        .S(Q[2]));
  FDRE \dataOut_reg[6] 
       (.C(clock),
        .CE(1'b1),
        .D(\dataOut_reg[6]_i_1_n_0 ),
        .Q(dataOut[6]),
        .R(1'b0));
  MUXF7 \dataOut_reg[6]_i_1 
       (.I0(\dataOut[6]_i_2_n_0 ),
        .I1(\dataOut[6]_i_3_n_0 ),
        .O(\dataOut_reg[6]_i_1_n_0 ),
        .S(Q[2]));
  FDRE \dataOut_reg[7] 
       (.C(clock),
        .CE(1'b1),
        .D(\dataOut_reg[7]_i_1_n_0 ),
        .Q(dataOut[7]),
        .R(1'b0));
  MUXF7 \dataOut_reg[7]_i_1 
       (.I0(\dataOut[7]_i_2_n_0 ),
        .I1(\dataOut[7]_i_3_n_0 ),
        .O(\dataOut_reg[7]_i_1_n_0 ),
        .S(Q[2]));
  FDRE \dataOut_reg[8] 
       (.C(clock),
        .CE(1'b1),
        .D(\dataOut_reg[8]_i_1_n_0 ),
        .Q(dataOut[8]),
        .R(1'b0));
  MUXF7 \dataOut_reg[8]_i_1 
       (.I0(\dataOut[8]_i_2_n_0 ),
        .I1(\dataOut[8]_i_3_n_0 ),
        .O(\dataOut_reg[8]_i_1_n_0 ),
        .S(Q[2]));
  FDRE \dataOut_reg[9] 
       (.C(clock),
        .CE(1'b1),
        .D(\dataOut_reg[9]_i_1_n_0 ),
        .Q(dataOut[9]),
        .R(1'b0));
  MUXF7 \dataOut_reg[9]_i_1 
       (.I0(\dataOut[9]_i_2_n_0 ),
        .I1(\dataOut[9]_i_3_n_0 ),
        .O(\dataOut_reg[9]_i_1_n_0 ),
        .S(Q[2]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT4 #(
    .INIT(16'hEAAA)) 
    finished_s_i_1
       (.I0(finished),
        .I1(Q[0]),
        .I2(Q[2]),
        .I3(Q[1]),
        .O(finished_s_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    finished_s_reg
       (.C(clock),
        .CE(1'b1),
        .D(finished_s_i_1_n_0),
        .Q(finished),
        .R(1'b0));
endmodule

(* CHECK_LICENSE_TYPE = "ex7_top_SliceMemory_0_1,SliceMemory,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "SliceMemory,Vivado 2016.4" *) 
(* NotValidForBitStream *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix
   (clock,
    dataIn,
    address,
    finished,
    dataOut);
  (* x_interface_info = "xilinx.com:signal:clock:1.0 clock CLK" *) input clock;
  input [175:0]dataIn;
  output [2:0]address;
  output finished;
  output [21:0]dataOut;

  wire [2:0]address;
  wire clock;
  wire [175:0]dataIn;
  wire [21:0]dataOut;
  wire finished;

  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_SliceMemory U0
       (.Q(address),
        .clock(clock),
        .dataIn(dataIn),
        .dataOut(dataOut),
        .finished(finished));
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
