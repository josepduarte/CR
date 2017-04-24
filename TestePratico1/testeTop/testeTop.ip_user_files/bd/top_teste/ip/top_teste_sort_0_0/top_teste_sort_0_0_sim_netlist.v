// Copyright 1986-2016 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2016.4 (win64) Build 1756540 Mon Jan 23 19:11:23 MST 2017
// Date        : Wed Apr 05 16:31:26 2017
// Host        : Inator running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               c:/Users/jduarte/Documents/GitHub/CR/TestePratico1/testeTop/testeTop.srcs/sources_1/bd/top_teste/ip/top_teste_sort_0_0/top_teste_sort_0_0_sim_netlist.v
// Design      : top_teste_sort_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a100tcsg324-3
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "top_teste_sort_0_0,sort,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "sort,Vivado 2016.4" *) 
(* NotValidForBitStream *)
module top_teste_sort_0_0
   (dataIn,
    dataOut);
  input [31:0]dataIn;
  output [31:0]dataOut;

  wire [31:0]dataIn;
  wire [31:0]dataOut;

  top_teste_sort_0_0_sort U0
       (.dataIn(dataIn),
        .dataOut(dataOut));
endmodule

(* ORIG_REF_NAME = "sort" *) 
module top_teste_sort_0_0_sort
   (dataOut,
    dataIn);
  output [31:0]dataOut;
  input [31:0]dataIn;

  wire [31:0]dataIn;
  wire [31:0]dataOut;
  wire \dataOut[0]_INST_0_i_1_n_0 ;
  wire \dataOut[10]_INST_0_i_1_n_0 ;
  wire \dataOut[11]_INST_0_i_1_n_0 ;
  wire \dataOut[12]_INST_0_i_1_n_0 ;
  wire \dataOut[13]_INST_0_i_1_n_0 ;
  wire \dataOut[14]_INST_0_i_1_n_0 ;
  wire \dataOut[15]_INST_0_i_1_n_0 ;
  wire \dataOut[1]_INST_0_i_1_n_0 ;
  wire \dataOut[24]_INST_0_i_1_n_0 ;
  wire \dataOut[24]_INST_0_i_2_n_0 ;
  wire \dataOut[24]_INST_0_i_3_n_0 ;
  wire \dataOut[25]_INST_0_i_1_n_0 ;
  wire \dataOut[25]_INST_0_i_2_n_0 ;
  wire \dataOut[25]_INST_0_i_3_n_0 ;
  wire \dataOut[26]_INST_0_i_1_n_0 ;
  wire \dataOut[26]_INST_0_i_2_n_0 ;
  wire \dataOut[26]_INST_0_i_3_n_0 ;
  wire \dataOut[27]_INST_0_i_1_n_0 ;
  wire \dataOut[27]_INST_0_i_2_n_0 ;
  wire \dataOut[27]_INST_0_i_3_n_0 ;
  wire \dataOut[28]_INST_0_i_1_n_0 ;
  wire \dataOut[28]_INST_0_i_2_n_0 ;
  wire \dataOut[28]_INST_0_i_3_n_0 ;
  wire \dataOut[29]_INST_0_i_1_n_0 ;
  wire \dataOut[29]_INST_0_i_2_n_0 ;
  wire \dataOut[29]_INST_0_i_3_n_0 ;
  wire \dataOut[2]_INST_0_i_1_n_0 ;
  wire \dataOut[30]_INST_0_i_1_n_0 ;
  wire \dataOut[30]_INST_0_i_2_n_0 ;
  wire \dataOut[30]_INST_0_i_3_n_0 ;
  wire \dataOut[31]_INST_0_i_1_n_0 ;
  wire \dataOut[31]_INST_0_i_2_n_0 ;
  wire \dataOut[31]_INST_0_i_3_n_0 ;
  wire \dataOut[3]_INST_0_i_1_n_0 ;
  wire \dataOut[4]_INST_0_i_1_n_0 ;
  wire \dataOut[5]_INST_0_i_1_n_0 ;
  wire \dataOut[6]_INST_0_i_1_n_0 ;
  wire \dataOut[7]_INST_0_i_1_n_0 ;
  wire \dataOut[8]_INST_0_i_1_n_0 ;
  wire \dataOut[9]_INST_0_i_1_n_0 ;
  wire \onSort[0]1 ;
  wire \onSort[0]1_carry_i_1_n_0 ;
  wire \onSort[0]1_carry_i_2_n_0 ;
  wire \onSort[0]1_carry_i_3_n_0 ;
  wire \onSort[0]1_carry_i_4_n_0 ;
  wire \onSort[0]1_carry_i_5_n_0 ;
  wire \onSort[0]1_carry_i_6_n_0 ;
  wire \onSort[0]1_carry_i_7_n_0 ;
  wire \onSort[0]1_carry_i_8_n_0 ;
  wire \onSort[0]1_carry_n_1 ;
  wire \onSort[0]1_carry_n_2 ;
  wire \onSort[0]1_carry_n_3 ;
  wire \onSort[1]1 ;
  wire \onSort[1]1_carry_i_10_n_0 ;
  wire \onSort[1]1_carry_i_11_n_0 ;
  wire \onSort[1]1_carry_i_12_n_0 ;
  wire \onSort[1]1_carry_i_13_n_0 ;
  wire \onSort[1]1_carry_i_14_n_0 ;
  wire \onSort[1]1_carry_i_15_n_0 ;
  wire \onSort[1]1_carry_i_16_n_0 ;
  wire \onSort[1]1_carry_i_17_n_0 ;
  wire \onSort[1]1_carry_i_18_n_0 ;
  wire \onSort[1]1_carry_i_19_n_0 ;
  wire \onSort[1]1_carry_i_1_n_0 ;
  wire \onSort[1]1_carry_i_20_n_0 ;
  wire \onSort[1]1_carry_i_21_n_0 ;
  wire \onSort[1]1_carry_i_22_n_0 ;
  wire \onSort[1]1_carry_i_23_n_0 ;
  wire \onSort[1]1_carry_i_24_n_0 ;
  wire \onSort[1]1_carry_i_2_n_0 ;
  wire \onSort[1]1_carry_i_3_n_0 ;
  wire \onSort[1]1_carry_i_4_n_0 ;
  wire \onSort[1]1_carry_i_5_n_0 ;
  wire \onSort[1]1_carry_i_6_n_0 ;
  wire \onSort[1]1_carry_i_7_n_0 ;
  wire \onSort[1]1_carry_i_8_n_0 ;
  wire \onSort[1]1_carry_i_9_n_0 ;
  wire \onSort[1]1_carry_n_1 ;
  wire \onSort[1]1_carry_n_2 ;
  wire \onSort[1]1_carry_n_3 ;
  wire \onSort[2]1 ;
  wire \onSort[2]1_carry_i_10_n_0 ;
  wire \onSort[2]1_carry_i_11_n_0 ;
  wire \onSort[2]1_carry_i_12_n_0 ;
  wire \onSort[2]1_carry_i_1_n_0 ;
  wire \onSort[2]1_carry_i_2_n_0 ;
  wire \onSort[2]1_carry_i_3_n_0 ;
  wire \onSort[2]1_carry_i_4_n_0 ;
  wire \onSort[2]1_carry_i_5_n_0 ;
  wire \onSort[2]1_carry_i_6_n_0 ;
  wire \onSort[2]1_carry_i_7_n_0 ;
  wire \onSort[2]1_carry_i_8_n_0 ;
  wire \onSort[2]1_carry_i_9_n_0 ;
  wire \onSort[2]1_carry_n_1 ;
  wire \onSort[2]1_carry_n_2 ;
  wire \onSort[2]1_carry_n_3 ;
  wire \onSort[3]1 ;
  wire \onSort[3]11_in ;
  wire \onSort[3]12_in ;
  wire \onSort[3]1__3_carry_i_10_n_0 ;
  wire \onSort[3]1__3_carry_i_11_n_0 ;
  wire \onSort[3]1__3_carry_i_12_n_0 ;
  wire \onSort[3]1__3_carry_i_13_n_0 ;
  wire \onSort[3]1__3_carry_i_14_n_0 ;
  wire \onSort[3]1__3_carry_i_15_n_0 ;
  wire \onSort[3]1__3_carry_i_16_n_0 ;
  wire \onSort[3]1__3_carry_i_1_n_0 ;
  wire \onSort[3]1__3_carry_i_2_n_0 ;
  wire \onSort[3]1__3_carry_i_3_n_0 ;
  wire \onSort[3]1__3_carry_i_4_n_0 ;
  wire \onSort[3]1__3_carry_i_5_n_0 ;
  wire \onSort[3]1__3_carry_i_6_n_0 ;
  wire \onSort[3]1__3_carry_i_7_n_0 ;
  wire \onSort[3]1__3_carry_i_8_n_0 ;
  wire \onSort[3]1__3_carry_i_9_n_0 ;
  wire \onSort[3]1__3_carry_n_1 ;
  wire \onSort[3]1__3_carry_n_2 ;
  wire \onSort[3]1__3_carry_n_3 ;
  wire \onSort[3]1__7_carry_i_1_n_0 ;
  wire \onSort[3]1__7_carry_i_2_n_0 ;
  wire \onSort[3]1__7_carry_i_3_n_0 ;
  wire \onSort[3]1__7_carry_i_4_n_0 ;
  wire \onSort[3]1__7_carry_i_5_n_0 ;
  wire \onSort[3]1__7_carry_i_6_n_0 ;
  wire \onSort[3]1__7_carry_i_7_n_0 ;
  wire \onSort[3]1__7_carry_i_8_n_0 ;
  wire \onSort[3]1__7_carry_n_1 ;
  wire \onSort[3]1__7_carry_n_2 ;
  wire \onSort[3]1__7_carry_n_3 ;
  wire \onSort[3]1_carry_i_1_n_0 ;
  wire \onSort[3]1_carry_i_2_n_0 ;
  wire \onSort[3]1_carry_i_3_n_0 ;
  wire \onSort[3]1_carry_i_4_n_0 ;
  wire \onSort[3]1_carry_i_5_n_0 ;
  wire \onSort[3]1_carry_i_6_n_0 ;
  wire \onSort[3]1_carry_i_7_n_0 ;
  wire \onSort[3]1_carry_i_8_n_0 ;
  wire \onSort[3]1_carry_n_1 ;
  wire \onSort[3]1_carry_n_2 ;
  wire \onSort[3]1_carry_n_3 ;
  wire [3:0]\NLW_onSort[0]1_carry_O_UNCONNECTED ;
  wire [3:0]\NLW_onSort[1]1_carry_O_UNCONNECTED ;
  wire [3:0]\NLW_onSort[2]1_carry_O_UNCONNECTED ;
  wire [3:0]\NLW_onSort[3]1__3_carry_O_UNCONNECTED ;
  wire [3:0]\NLW_onSort[3]1__7_carry_O_UNCONNECTED ;
  wire [3:0]\NLW_onSort[3]1_carry_O_UNCONNECTED ;

  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \dataOut[0]_INST_0 
       (.I0(dataIn[24]),
        .I1(\onSort[3]1 ),
        .I2(dataIn[16]),
        .I3(\onSort[2]1 ),
        .I4(\dataOut[0]_INST_0_i_1_n_0 ),
        .O(dataOut[0]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \dataOut[0]_INST_0_i_1 
       (.I0(dataIn[8]),
        .I1(\onSort[0]1 ),
        .I2(dataIn[0]),
        .O(\dataOut[0]_INST_0_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \dataOut[10]_INST_0 
       (.I0(dataIn[18]),
        .I1(\onSort[3]1 ),
        .I2(dataIn[26]),
        .I3(\onSort[3]11_in ),
        .I4(\dataOut[10]_INST_0_i_1_n_0 ),
        .O(dataOut[10]));
  LUT6 #(
    .INIT(64'hEFE0EF4F4F40E040)) 
    \dataOut[10]_INST_0_i_1 
       (.I0(\onSort[2]1 ),
        .I1(\dataOut[26]_INST_0_i_3_n_0 ),
        .I2(\onSort[1]1 ),
        .I3(dataIn[2]),
        .I4(\onSort[0]1 ),
        .I5(dataIn[10]),
        .O(\dataOut[10]_INST_0_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \dataOut[11]_INST_0 
       (.I0(dataIn[19]),
        .I1(\onSort[3]1 ),
        .I2(dataIn[27]),
        .I3(\onSort[3]11_in ),
        .I4(\dataOut[11]_INST_0_i_1_n_0 ),
        .O(dataOut[11]));
  LUT6 #(
    .INIT(64'hEFE0EF4F4F40E040)) 
    \dataOut[11]_INST_0_i_1 
       (.I0(\onSort[2]1 ),
        .I1(\dataOut[27]_INST_0_i_3_n_0 ),
        .I2(\onSort[1]1 ),
        .I3(dataIn[3]),
        .I4(\onSort[0]1 ),
        .I5(dataIn[11]),
        .O(\dataOut[11]_INST_0_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \dataOut[12]_INST_0 
       (.I0(dataIn[20]),
        .I1(\onSort[3]1 ),
        .I2(dataIn[28]),
        .I3(\onSort[3]11_in ),
        .I4(\dataOut[12]_INST_0_i_1_n_0 ),
        .O(dataOut[12]));
  LUT6 #(
    .INIT(64'hEFE0EF4F4F40E040)) 
    \dataOut[12]_INST_0_i_1 
       (.I0(\onSort[2]1 ),
        .I1(\dataOut[28]_INST_0_i_3_n_0 ),
        .I2(\onSort[1]1 ),
        .I3(dataIn[4]),
        .I4(\onSort[0]1 ),
        .I5(dataIn[12]),
        .O(\dataOut[12]_INST_0_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \dataOut[13]_INST_0 
       (.I0(dataIn[21]),
        .I1(\onSort[3]1 ),
        .I2(dataIn[29]),
        .I3(\onSort[3]11_in ),
        .I4(\dataOut[13]_INST_0_i_1_n_0 ),
        .O(dataOut[13]));
  LUT6 #(
    .INIT(64'hEFE0EF4F4F40E040)) 
    \dataOut[13]_INST_0_i_1 
       (.I0(\onSort[2]1 ),
        .I1(\dataOut[29]_INST_0_i_3_n_0 ),
        .I2(\onSort[1]1 ),
        .I3(dataIn[5]),
        .I4(\onSort[0]1 ),
        .I5(dataIn[13]),
        .O(\dataOut[13]_INST_0_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \dataOut[14]_INST_0 
       (.I0(dataIn[22]),
        .I1(\onSort[3]1 ),
        .I2(dataIn[30]),
        .I3(\onSort[3]11_in ),
        .I4(\dataOut[14]_INST_0_i_1_n_0 ),
        .O(dataOut[14]));
  LUT6 #(
    .INIT(64'hEFE0EF4F4F40E040)) 
    \dataOut[14]_INST_0_i_1 
       (.I0(\onSort[2]1 ),
        .I1(\dataOut[30]_INST_0_i_3_n_0 ),
        .I2(\onSort[1]1 ),
        .I3(dataIn[6]),
        .I4(\onSort[0]1 ),
        .I5(dataIn[14]),
        .O(\dataOut[14]_INST_0_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \dataOut[15]_INST_0 
       (.I0(dataIn[23]),
        .I1(\onSort[3]1 ),
        .I2(dataIn[31]),
        .I3(\onSort[3]11_in ),
        .I4(\dataOut[15]_INST_0_i_1_n_0 ),
        .O(dataOut[15]));
  LUT6 #(
    .INIT(64'hEFE0EF4F4F40E040)) 
    \dataOut[15]_INST_0_i_1 
       (.I0(\onSort[2]1 ),
        .I1(\dataOut[31]_INST_0_i_3_n_0 ),
        .I2(\onSort[1]1 ),
        .I3(dataIn[7]),
        .I4(\onSort[0]1 ),
        .I5(dataIn[15]),
        .O(\dataOut[15]_INST_0_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair29" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \dataOut[16]_INST_0 
       (.I0(\dataOut[24]_INST_0_i_2_n_0 ),
        .I1(\onSort[3]12_in ),
        .I2(\dataOut[24]_INST_0_i_1_n_0 ),
        .O(dataOut[16]));
  (* SOFT_HLUTNM = "soft_lutpair31" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \dataOut[17]_INST_0 
       (.I0(\dataOut[25]_INST_0_i_2_n_0 ),
        .I1(\onSort[3]12_in ),
        .I2(\dataOut[25]_INST_0_i_1_n_0 ),
        .O(dataOut[17]));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \dataOut[18]_INST_0 
       (.I0(\dataOut[26]_INST_0_i_2_n_0 ),
        .I1(\onSort[3]12_in ),
        .I2(\dataOut[26]_INST_0_i_1_n_0 ),
        .O(dataOut[18]));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \dataOut[19]_INST_0 
       (.I0(\dataOut[27]_INST_0_i_2_n_0 ),
        .I1(\onSort[3]12_in ),
        .I2(\dataOut[27]_INST_0_i_1_n_0 ),
        .O(dataOut[19]));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \dataOut[1]_INST_0 
       (.I0(dataIn[25]),
        .I1(\onSort[3]1 ),
        .I2(dataIn[17]),
        .I3(\onSort[2]1 ),
        .I4(\dataOut[1]_INST_0_i_1_n_0 ),
        .O(dataOut[1]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \dataOut[1]_INST_0_i_1 
       (.I0(dataIn[9]),
        .I1(\onSort[0]1 ),
        .I2(dataIn[1]),
        .O(\dataOut[1]_INST_0_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \dataOut[20]_INST_0 
       (.I0(\dataOut[28]_INST_0_i_2_n_0 ),
        .I1(\onSort[3]12_in ),
        .I2(\dataOut[28]_INST_0_i_1_n_0 ),
        .O(dataOut[20]));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \dataOut[21]_INST_0 
       (.I0(\dataOut[29]_INST_0_i_2_n_0 ),
        .I1(\onSort[3]12_in ),
        .I2(\dataOut[29]_INST_0_i_1_n_0 ),
        .O(dataOut[21]));
  (* SOFT_HLUTNM = "soft_lutpair30" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \dataOut[22]_INST_0 
       (.I0(\dataOut[30]_INST_0_i_2_n_0 ),
        .I1(\onSort[3]12_in ),
        .I2(\dataOut[30]_INST_0_i_1_n_0 ),
        .O(dataOut[22]));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \dataOut[23]_INST_0 
       (.I0(\dataOut[31]_INST_0_i_2_n_0 ),
        .I1(\onSort[3]12_in ),
        .I2(\dataOut[31]_INST_0_i_1_n_0 ),
        .O(dataOut[23]));
  (* SOFT_HLUTNM = "soft_lutpair29" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \dataOut[24]_INST_0 
       (.I0(\dataOut[24]_INST_0_i_1_n_0 ),
        .I1(\onSort[3]12_in ),
        .I2(\dataOut[24]_INST_0_i_2_n_0 ),
        .O(dataOut[24]));
  LUT6 #(
    .INIT(64'hED48FD5DED48A808)) 
    \dataOut[24]_INST_0_i_1 
       (.I0(\onSort[1]1 ),
        .I1(dataIn[8]),
        .I2(\onSort[0]1 ),
        .I3(dataIn[0]),
        .I4(\onSort[2]1 ),
        .I5(\dataOut[24]_INST_0_i_3_n_0 ),
        .O(\dataOut[24]_INST_0_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \dataOut[24]_INST_0_i_2 
       (.I0(\dataOut[8]_INST_0_i_1_n_0 ),
        .I1(\onSort[3]11_in ),
        .I2(dataIn[16]),
        .I3(\onSort[3]1 ),
        .I4(dataIn[24]),
        .O(\dataOut[24]_INST_0_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \dataOut[24]_INST_0_i_3 
       (.I0(dataIn[24]),
        .I1(\onSort[3]1 ),
        .I2(dataIn[16]),
        .O(\dataOut[24]_INST_0_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair31" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \dataOut[25]_INST_0 
       (.I0(\dataOut[25]_INST_0_i_1_n_0 ),
        .I1(\onSort[3]12_in ),
        .I2(\dataOut[25]_INST_0_i_2_n_0 ),
        .O(dataOut[25]));
  LUT6 #(
    .INIT(64'hED48FD5DED48A808)) 
    \dataOut[25]_INST_0_i_1 
       (.I0(\onSort[1]1 ),
        .I1(dataIn[9]),
        .I2(\onSort[0]1 ),
        .I3(dataIn[1]),
        .I4(\onSort[2]1 ),
        .I5(\dataOut[25]_INST_0_i_3_n_0 ),
        .O(\dataOut[25]_INST_0_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \dataOut[25]_INST_0_i_2 
       (.I0(\dataOut[9]_INST_0_i_1_n_0 ),
        .I1(\onSort[3]11_in ),
        .I2(dataIn[17]),
        .I3(\onSort[3]1 ),
        .I4(dataIn[25]),
        .O(\dataOut[25]_INST_0_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \dataOut[25]_INST_0_i_3 
       (.I0(dataIn[25]),
        .I1(\onSort[3]1 ),
        .I2(dataIn[17]),
        .O(\dataOut[25]_INST_0_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \dataOut[26]_INST_0 
       (.I0(\dataOut[26]_INST_0_i_1_n_0 ),
        .I1(\onSort[3]12_in ),
        .I2(\dataOut[26]_INST_0_i_2_n_0 ),
        .O(dataOut[26]));
  LUT6 #(
    .INIT(64'hED48FD5DED48A808)) 
    \dataOut[26]_INST_0_i_1 
       (.I0(\onSort[1]1 ),
        .I1(dataIn[10]),
        .I2(\onSort[0]1 ),
        .I3(dataIn[2]),
        .I4(\onSort[2]1 ),
        .I5(\dataOut[26]_INST_0_i_3_n_0 ),
        .O(\dataOut[26]_INST_0_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \dataOut[26]_INST_0_i_2 
       (.I0(\dataOut[10]_INST_0_i_1_n_0 ),
        .I1(\onSort[3]11_in ),
        .I2(dataIn[18]),
        .I3(\onSort[3]1 ),
        .I4(dataIn[26]),
        .O(\dataOut[26]_INST_0_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \dataOut[26]_INST_0_i_3 
       (.I0(dataIn[26]),
        .I1(\onSort[3]1 ),
        .I2(dataIn[18]),
        .O(\dataOut[26]_INST_0_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \dataOut[27]_INST_0 
       (.I0(\dataOut[27]_INST_0_i_1_n_0 ),
        .I1(\onSort[3]12_in ),
        .I2(\dataOut[27]_INST_0_i_2_n_0 ),
        .O(dataOut[27]));
  LUT6 #(
    .INIT(64'hED48FD5DED48A808)) 
    \dataOut[27]_INST_0_i_1 
       (.I0(\onSort[1]1 ),
        .I1(dataIn[11]),
        .I2(\onSort[0]1 ),
        .I3(dataIn[3]),
        .I4(\onSort[2]1 ),
        .I5(\dataOut[27]_INST_0_i_3_n_0 ),
        .O(\dataOut[27]_INST_0_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \dataOut[27]_INST_0_i_2 
       (.I0(\dataOut[11]_INST_0_i_1_n_0 ),
        .I1(\onSort[3]11_in ),
        .I2(dataIn[19]),
        .I3(\onSort[3]1 ),
        .I4(dataIn[27]),
        .O(\dataOut[27]_INST_0_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \dataOut[27]_INST_0_i_3 
       (.I0(dataIn[27]),
        .I1(\onSort[3]1 ),
        .I2(dataIn[19]),
        .O(\dataOut[27]_INST_0_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \dataOut[28]_INST_0 
       (.I0(\dataOut[28]_INST_0_i_1_n_0 ),
        .I1(\onSort[3]12_in ),
        .I2(\dataOut[28]_INST_0_i_2_n_0 ),
        .O(dataOut[28]));
  LUT6 #(
    .INIT(64'hED48FD5DED48A808)) 
    \dataOut[28]_INST_0_i_1 
       (.I0(\onSort[1]1 ),
        .I1(dataIn[12]),
        .I2(\onSort[0]1 ),
        .I3(dataIn[4]),
        .I4(\onSort[2]1 ),
        .I5(\dataOut[28]_INST_0_i_3_n_0 ),
        .O(\dataOut[28]_INST_0_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \dataOut[28]_INST_0_i_2 
       (.I0(\dataOut[12]_INST_0_i_1_n_0 ),
        .I1(\onSort[3]11_in ),
        .I2(dataIn[20]),
        .I3(\onSort[3]1 ),
        .I4(dataIn[28]),
        .O(\dataOut[28]_INST_0_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \dataOut[28]_INST_0_i_3 
       (.I0(dataIn[28]),
        .I1(\onSort[3]1 ),
        .I2(dataIn[20]),
        .O(\dataOut[28]_INST_0_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \dataOut[29]_INST_0 
       (.I0(\dataOut[29]_INST_0_i_1_n_0 ),
        .I1(\onSort[3]12_in ),
        .I2(\dataOut[29]_INST_0_i_2_n_0 ),
        .O(dataOut[29]));
  LUT6 #(
    .INIT(64'hED48FD5DED48A808)) 
    \dataOut[29]_INST_0_i_1 
       (.I0(\onSort[1]1 ),
        .I1(dataIn[13]),
        .I2(\onSort[0]1 ),
        .I3(dataIn[5]),
        .I4(\onSort[2]1 ),
        .I5(\dataOut[29]_INST_0_i_3_n_0 ),
        .O(\dataOut[29]_INST_0_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \dataOut[29]_INST_0_i_2 
       (.I0(\dataOut[13]_INST_0_i_1_n_0 ),
        .I1(\onSort[3]11_in ),
        .I2(dataIn[21]),
        .I3(\onSort[3]1 ),
        .I4(dataIn[29]),
        .O(\dataOut[29]_INST_0_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \dataOut[29]_INST_0_i_3 
       (.I0(dataIn[29]),
        .I1(\onSort[3]1 ),
        .I2(dataIn[21]),
        .O(\dataOut[29]_INST_0_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \dataOut[2]_INST_0 
       (.I0(dataIn[26]),
        .I1(\onSort[3]1 ),
        .I2(dataIn[18]),
        .I3(\onSort[2]1 ),
        .I4(\dataOut[2]_INST_0_i_1_n_0 ),
        .O(dataOut[2]));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \dataOut[2]_INST_0_i_1 
       (.I0(dataIn[10]),
        .I1(\onSort[0]1 ),
        .I2(dataIn[2]),
        .O(\dataOut[2]_INST_0_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair30" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \dataOut[30]_INST_0 
       (.I0(\dataOut[30]_INST_0_i_1_n_0 ),
        .I1(\onSort[3]12_in ),
        .I2(\dataOut[30]_INST_0_i_2_n_0 ),
        .O(dataOut[30]));
  LUT6 #(
    .INIT(64'hED48FD5DED48A808)) 
    \dataOut[30]_INST_0_i_1 
       (.I0(\onSort[1]1 ),
        .I1(dataIn[14]),
        .I2(\onSort[0]1 ),
        .I3(dataIn[6]),
        .I4(\onSort[2]1 ),
        .I5(\dataOut[30]_INST_0_i_3_n_0 ),
        .O(\dataOut[30]_INST_0_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \dataOut[30]_INST_0_i_2 
       (.I0(\dataOut[14]_INST_0_i_1_n_0 ),
        .I1(\onSort[3]11_in ),
        .I2(dataIn[22]),
        .I3(\onSort[3]1 ),
        .I4(dataIn[30]),
        .O(\dataOut[30]_INST_0_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \dataOut[30]_INST_0_i_3 
       (.I0(dataIn[30]),
        .I1(\onSort[3]1 ),
        .I2(dataIn[22]),
        .O(\dataOut[30]_INST_0_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \dataOut[31]_INST_0 
       (.I0(\dataOut[31]_INST_0_i_1_n_0 ),
        .I1(\onSort[3]12_in ),
        .I2(\dataOut[31]_INST_0_i_2_n_0 ),
        .O(dataOut[31]));
  LUT6 #(
    .INIT(64'hED48FD5DED48A808)) 
    \dataOut[31]_INST_0_i_1 
       (.I0(\onSort[1]1 ),
        .I1(dataIn[15]),
        .I2(\onSort[0]1 ),
        .I3(dataIn[7]),
        .I4(\onSort[2]1 ),
        .I5(\dataOut[31]_INST_0_i_3_n_0 ),
        .O(\dataOut[31]_INST_0_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \dataOut[31]_INST_0_i_2 
       (.I0(\dataOut[15]_INST_0_i_1_n_0 ),
        .I1(\onSort[3]11_in ),
        .I2(dataIn[23]),
        .I3(\onSort[3]1 ),
        .I4(dataIn[31]),
        .O(\dataOut[31]_INST_0_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \dataOut[31]_INST_0_i_3 
       (.I0(dataIn[31]),
        .I1(\onSort[3]1 ),
        .I2(dataIn[23]),
        .O(\dataOut[31]_INST_0_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \dataOut[3]_INST_0 
       (.I0(dataIn[27]),
        .I1(\onSort[3]1 ),
        .I2(dataIn[19]),
        .I3(\onSort[2]1 ),
        .I4(\dataOut[3]_INST_0_i_1_n_0 ),
        .O(dataOut[3]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \dataOut[3]_INST_0_i_1 
       (.I0(dataIn[11]),
        .I1(\onSort[0]1 ),
        .I2(dataIn[3]),
        .O(\dataOut[3]_INST_0_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \dataOut[4]_INST_0 
       (.I0(dataIn[28]),
        .I1(\onSort[3]1 ),
        .I2(dataIn[20]),
        .I3(\onSort[2]1 ),
        .I4(\dataOut[4]_INST_0_i_1_n_0 ),
        .O(dataOut[4]));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \dataOut[4]_INST_0_i_1 
       (.I0(dataIn[12]),
        .I1(\onSort[0]1 ),
        .I2(dataIn[4]),
        .O(\dataOut[4]_INST_0_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \dataOut[5]_INST_0 
       (.I0(dataIn[29]),
        .I1(\onSort[3]1 ),
        .I2(dataIn[21]),
        .I3(\onSort[2]1 ),
        .I4(\dataOut[5]_INST_0_i_1_n_0 ),
        .O(dataOut[5]));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \dataOut[5]_INST_0_i_1 
       (.I0(dataIn[13]),
        .I1(\onSort[0]1 ),
        .I2(dataIn[5]),
        .O(\dataOut[5]_INST_0_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \dataOut[6]_INST_0 
       (.I0(dataIn[30]),
        .I1(\onSort[3]1 ),
        .I2(dataIn[22]),
        .I3(\onSort[2]1 ),
        .I4(\dataOut[6]_INST_0_i_1_n_0 ),
        .O(dataOut[6]));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \dataOut[6]_INST_0_i_1 
       (.I0(dataIn[14]),
        .I1(\onSort[0]1 ),
        .I2(dataIn[6]),
        .O(\dataOut[6]_INST_0_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \dataOut[7]_INST_0 
       (.I0(dataIn[31]),
        .I1(\onSort[3]1 ),
        .I2(dataIn[23]),
        .I3(\onSort[2]1 ),
        .I4(\dataOut[7]_INST_0_i_1_n_0 ),
        .O(dataOut[7]));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \dataOut[7]_INST_0_i_1 
       (.I0(dataIn[15]),
        .I1(\onSort[0]1 ),
        .I2(dataIn[7]),
        .O(\dataOut[7]_INST_0_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \dataOut[8]_INST_0 
       (.I0(dataIn[16]),
        .I1(\onSort[3]1 ),
        .I2(dataIn[24]),
        .I3(\onSort[3]11_in ),
        .I4(\dataOut[8]_INST_0_i_1_n_0 ),
        .O(dataOut[8]));
  LUT6 #(
    .INIT(64'hEFE0EF4F4F40E040)) 
    \dataOut[8]_INST_0_i_1 
       (.I0(\onSort[2]1 ),
        .I1(\dataOut[24]_INST_0_i_3_n_0 ),
        .I2(\onSort[1]1 ),
        .I3(dataIn[0]),
        .I4(\onSort[0]1 ),
        .I5(dataIn[8]),
        .O(\dataOut[8]_INST_0_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \dataOut[9]_INST_0 
       (.I0(dataIn[17]),
        .I1(\onSort[3]1 ),
        .I2(dataIn[25]),
        .I3(\onSort[3]11_in ),
        .I4(\dataOut[9]_INST_0_i_1_n_0 ),
        .O(dataOut[9]));
  LUT6 #(
    .INIT(64'hEFE0EF4F4F40E040)) 
    \dataOut[9]_INST_0_i_1 
       (.I0(\onSort[2]1 ),
        .I1(\dataOut[25]_INST_0_i_3_n_0 ),
        .I2(\onSort[1]1 ),
        .I3(dataIn[1]),
        .I4(\onSort[0]1 ),
        .I5(dataIn[9]),
        .O(\dataOut[9]_INST_0_i_1_n_0 ));
  CARRY4 \onSort[0]1_carry 
       (.CI(1'b0),
        .CO({\onSort[0]1 ,\onSort[0]1_carry_n_1 ,\onSort[0]1_carry_n_2 ,\onSort[0]1_carry_n_3 }),
        .CYINIT(1'b0),
        .DI({\onSort[0]1_carry_i_1_n_0 ,\onSort[0]1_carry_i_2_n_0 ,\onSort[0]1_carry_i_3_n_0 ,\onSort[0]1_carry_i_4_n_0 }),
        .O(\NLW_onSort[0]1_carry_O_UNCONNECTED [3:0]),
        .S({\onSort[0]1_carry_i_5_n_0 ,\onSort[0]1_carry_i_6_n_0 ,\onSort[0]1_carry_i_7_n_0 ,\onSort[0]1_carry_i_8_n_0 }));
  LUT4 #(
    .INIT(16'h22B2)) 
    \onSort[0]1_carry_i_1 
       (.I0(dataIn[7]),
        .I1(dataIn[15]),
        .I2(dataIn[6]),
        .I3(dataIn[14]),
        .O(\onSort[0]1_carry_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h22B2)) 
    \onSort[0]1_carry_i_2 
       (.I0(dataIn[5]),
        .I1(dataIn[13]),
        .I2(dataIn[4]),
        .I3(dataIn[12]),
        .O(\onSort[0]1_carry_i_2_n_0 ));
  LUT4 #(
    .INIT(16'h22B2)) 
    \onSort[0]1_carry_i_3 
       (.I0(dataIn[3]),
        .I1(dataIn[11]),
        .I2(dataIn[2]),
        .I3(dataIn[10]),
        .O(\onSort[0]1_carry_i_3_n_0 ));
  LUT4 #(
    .INIT(16'h22B2)) 
    \onSort[0]1_carry_i_4 
       (.I0(dataIn[1]),
        .I1(dataIn[9]),
        .I2(dataIn[0]),
        .I3(dataIn[8]),
        .O(\onSort[0]1_carry_i_4_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \onSort[0]1_carry_i_5 
       (.I0(dataIn[15]),
        .I1(dataIn[7]),
        .I2(dataIn[14]),
        .I3(dataIn[6]),
        .O(\onSort[0]1_carry_i_5_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \onSort[0]1_carry_i_6 
       (.I0(dataIn[13]),
        .I1(dataIn[5]),
        .I2(dataIn[12]),
        .I3(dataIn[4]),
        .O(\onSort[0]1_carry_i_6_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \onSort[0]1_carry_i_7 
       (.I0(dataIn[11]),
        .I1(dataIn[3]),
        .I2(dataIn[10]),
        .I3(dataIn[2]),
        .O(\onSort[0]1_carry_i_7_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \onSort[0]1_carry_i_8 
       (.I0(dataIn[9]),
        .I1(dataIn[1]),
        .I2(dataIn[8]),
        .I3(dataIn[0]),
        .O(\onSort[0]1_carry_i_8_n_0 ));
  CARRY4 \onSort[1]1_carry 
       (.CI(1'b0),
        .CO({\onSort[1]1 ,\onSort[1]1_carry_n_1 ,\onSort[1]1_carry_n_2 ,\onSort[1]1_carry_n_3 }),
        .CYINIT(1'b0),
        .DI({\onSort[1]1_carry_i_1_n_0 ,\onSort[1]1_carry_i_2_n_0 ,\onSort[1]1_carry_i_3_n_0 ,\onSort[1]1_carry_i_4_n_0 }),
        .O(\NLW_onSort[1]1_carry_O_UNCONNECTED [3:0]),
        .S({\onSort[1]1_carry_i_5_n_0 ,\onSort[1]1_carry_i_6_n_0 ,\onSort[1]1_carry_i_7_n_0 ,\onSort[1]1_carry_i_8_n_0 }));
  LUT6 #(
    .INIT(64'h22222222BBB222B2)) 
    \onSort[1]1_carry_i_1 
       (.I0(\onSort[1]1_carry_i_9_n_0 ),
        .I1(\onSort[1]1_carry_i_10_n_0 ),
        .I2(dataIn[14]),
        .I3(\onSort[0]1 ),
        .I4(dataIn[6]),
        .I5(\onSort[1]1_carry_i_11_n_0 ),
        .O(\onSort[1]1_carry_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \onSort[1]1_carry_i_10 
       (.I0(dataIn[15]),
        .I1(\onSort[0]1 ),
        .I2(dataIn[7]),
        .I3(\onSort[2]1 ),
        .I4(\dataOut[31]_INST_0_i_3_n_0 ),
        .O(\onSort[1]1_carry_i_10_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \onSort[1]1_carry_i_11 
       (.I0(dataIn[14]),
        .I1(\onSort[0]1 ),
        .I2(dataIn[6]),
        .I3(\onSort[2]1 ),
        .I4(\dataOut[30]_INST_0_i_3_n_0 ),
        .O(\onSort[1]1_carry_i_11_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair34" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \onSort[1]1_carry_i_12 
       (.I0(dataIn[5]),
        .I1(\onSort[0]1 ),
        .I2(dataIn[13]),
        .O(\onSort[1]1_carry_i_12_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \onSort[1]1_carry_i_13 
       (.I0(dataIn[13]),
        .I1(\onSort[0]1 ),
        .I2(dataIn[5]),
        .I3(\onSort[2]1 ),
        .I4(\dataOut[29]_INST_0_i_3_n_0 ),
        .O(\onSort[1]1_carry_i_13_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \onSort[1]1_carry_i_14 
       (.I0(dataIn[12]),
        .I1(\onSort[0]1 ),
        .I2(dataIn[4]),
        .I3(\onSort[2]1 ),
        .I4(\dataOut[28]_INST_0_i_3_n_0 ),
        .O(\onSort[1]1_carry_i_14_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair33" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \onSort[1]1_carry_i_15 
       (.I0(dataIn[3]),
        .I1(\onSort[0]1 ),
        .I2(dataIn[11]),
        .O(\onSort[1]1_carry_i_15_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \onSort[1]1_carry_i_16 
       (.I0(dataIn[11]),
        .I1(\onSort[0]1 ),
        .I2(dataIn[3]),
        .I3(\onSort[2]1 ),
        .I4(\dataOut[27]_INST_0_i_3_n_0 ),
        .O(\onSort[1]1_carry_i_16_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \onSort[1]1_carry_i_17 
       (.I0(dataIn[10]),
        .I1(\onSort[0]1 ),
        .I2(dataIn[2]),
        .I3(\onSort[2]1 ),
        .I4(\dataOut[26]_INST_0_i_3_n_0 ),
        .O(\onSort[1]1_carry_i_17_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair32" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \onSort[1]1_carry_i_18 
       (.I0(dataIn[1]),
        .I1(\onSort[0]1 ),
        .I2(dataIn[9]),
        .O(\onSort[1]1_carry_i_18_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \onSort[1]1_carry_i_19 
       (.I0(dataIn[9]),
        .I1(\onSort[0]1 ),
        .I2(dataIn[1]),
        .I3(\onSort[2]1 ),
        .I4(\dataOut[25]_INST_0_i_3_n_0 ),
        .O(\onSort[1]1_carry_i_19_n_0 ));
  LUT6 #(
    .INIT(64'h22222222BBB222B2)) 
    \onSort[1]1_carry_i_2 
       (.I0(\onSort[1]1_carry_i_12_n_0 ),
        .I1(\onSort[1]1_carry_i_13_n_0 ),
        .I2(dataIn[12]),
        .I3(\onSort[0]1 ),
        .I4(dataIn[4]),
        .I5(\onSort[1]1_carry_i_14_n_0 ),
        .O(\onSort[1]1_carry_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \onSort[1]1_carry_i_20 
       (.I0(dataIn[8]),
        .I1(\onSort[0]1 ),
        .I2(dataIn[0]),
        .I3(\onSort[2]1 ),
        .I4(\dataOut[24]_INST_0_i_3_n_0 ),
        .O(\onSort[1]1_carry_i_20_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair35" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \onSort[1]1_carry_i_21 
       (.I0(dataIn[6]),
        .I1(\onSort[0]1 ),
        .I2(dataIn[14]),
        .O(\onSort[1]1_carry_i_21_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair34" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \onSort[1]1_carry_i_22 
       (.I0(dataIn[4]),
        .I1(\onSort[0]1 ),
        .I2(dataIn[12]),
        .O(\onSort[1]1_carry_i_22_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair33" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \onSort[1]1_carry_i_23 
       (.I0(dataIn[2]),
        .I1(\onSort[0]1 ),
        .I2(dataIn[10]),
        .O(\onSort[1]1_carry_i_23_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair32" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \onSort[1]1_carry_i_24 
       (.I0(dataIn[0]),
        .I1(\onSort[0]1 ),
        .I2(dataIn[8]),
        .O(\onSort[1]1_carry_i_24_n_0 ));
  LUT6 #(
    .INIT(64'h22222222BBB222B2)) 
    \onSort[1]1_carry_i_3 
       (.I0(\onSort[1]1_carry_i_15_n_0 ),
        .I1(\onSort[1]1_carry_i_16_n_0 ),
        .I2(dataIn[10]),
        .I3(\onSort[0]1 ),
        .I4(dataIn[2]),
        .I5(\onSort[1]1_carry_i_17_n_0 ),
        .O(\onSort[1]1_carry_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h22222222BBB222B2)) 
    \onSort[1]1_carry_i_4 
       (.I0(\onSort[1]1_carry_i_18_n_0 ),
        .I1(\onSort[1]1_carry_i_19_n_0 ),
        .I2(dataIn[8]),
        .I3(\onSort[0]1 ),
        .I4(dataIn[0]),
        .I5(\onSort[1]1_carry_i_20_n_0 ),
        .O(\onSort[1]1_carry_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h9A95000000009A95)) 
    \onSort[1]1_carry_i_5 
       (.I0(\onSort[1]1_carry_i_10_n_0 ),
        .I1(dataIn[7]),
        .I2(\onSort[0]1 ),
        .I3(dataIn[15]),
        .I4(\onSort[1]1_carry_i_11_n_0 ),
        .I5(\onSort[1]1_carry_i_21_n_0 ),
        .O(\onSort[1]1_carry_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h9A95000000009A95)) 
    \onSort[1]1_carry_i_6 
       (.I0(\onSort[1]1_carry_i_13_n_0 ),
        .I1(dataIn[5]),
        .I2(\onSort[0]1 ),
        .I3(dataIn[13]),
        .I4(\onSort[1]1_carry_i_14_n_0 ),
        .I5(\onSort[1]1_carry_i_22_n_0 ),
        .O(\onSort[1]1_carry_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h9A95000000009A95)) 
    \onSort[1]1_carry_i_7 
       (.I0(\onSort[1]1_carry_i_16_n_0 ),
        .I1(dataIn[3]),
        .I2(\onSort[0]1 ),
        .I3(dataIn[11]),
        .I4(\onSort[1]1_carry_i_17_n_0 ),
        .I5(\onSort[1]1_carry_i_23_n_0 ),
        .O(\onSort[1]1_carry_i_7_n_0 ));
  LUT6 #(
    .INIT(64'h9A95000000009A95)) 
    \onSort[1]1_carry_i_8 
       (.I0(\onSort[1]1_carry_i_19_n_0 ),
        .I1(dataIn[1]),
        .I2(\onSort[0]1 ),
        .I3(dataIn[9]),
        .I4(\onSort[1]1_carry_i_20_n_0 ),
        .I5(\onSort[1]1_carry_i_24_n_0 ),
        .O(\onSort[1]1_carry_i_8_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair35" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \onSort[1]1_carry_i_9 
       (.I0(dataIn[7]),
        .I1(\onSort[0]1 ),
        .I2(dataIn[15]),
        .O(\onSort[1]1_carry_i_9_n_0 ));
  CARRY4 \onSort[2]1_carry 
       (.CI(1'b0),
        .CO({\onSort[2]1 ,\onSort[2]1_carry_n_1 ,\onSort[2]1_carry_n_2 ,\onSort[2]1_carry_n_3 }),
        .CYINIT(1'b0),
        .DI({\onSort[2]1_carry_i_1_n_0 ,\onSort[2]1_carry_i_2_n_0 ,\onSort[2]1_carry_i_3_n_0 ,\onSort[2]1_carry_i_4_n_0 }),
        .O(\NLW_onSort[2]1_carry_O_UNCONNECTED [3:0]),
        .S({\onSort[2]1_carry_i_5_n_0 ,\onSort[2]1_carry_i_6_n_0 ,\onSort[2]1_carry_i_7_n_0 ,\onSort[2]1_carry_i_8_n_0 }));
  LUT6 #(
    .INIT(64'h22222222BBB222B2)) 
    \onSort[2]1_carry_i_1 
       (.I0(\dataOut[7]_INST_0_i_1_n_0 ),
        .I1(\dataOut[31]_INST_0_i_3_n_0 ),
        .I2(dataIn[6]),
        .I3(\onSort[0]1 ),
        .I4(dataIn[14]),
        .I5(\dataOut[30]_INST_0_i_3_n_0 ),
        .O(\onSort[2]1_carry_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h1D1D1DE2E2E21DE2)) 
    \onSort[2]1_carry_i_10 
       (.I0(dataIn[5]),
        .I1(\onSort[0]1 ),
        .I2(dataIn[13]),
        .I3(dataIn[21]),
        .I4(\onSort[3]1 ),
        .I5(dataIn[29]),
        .O(\onSort[2]1_carry_i_10_n_0 ));
  LUT6 #(
    .INIT(64'h1D1D1DE2E2E21DE2)) 
    \onSort[2]1_carry_i_11 
       (.I0(dataIn[3]),
        .I1(\onSort[0]1 ),
        .I2(dataIn[11]),
        .I3(dataIn[19]),
        .I4(\onSort[3]1 ),
        .I5(dataIn[27]),
        .O(\onSort[2]1_carry_i_11_n_0 ));
  LUT6 #(
    .INIT(64'h1D1D1DE2E2E21DE2)) 
    \onSort[2]1_carry_i_12 
       (.I0(dataIn[1]),
        .I1(\onSort[0]1 ),
        .I2(dataIn[9]),
        .I3(dataIn[17]),
        .I4(\onSort[3]1 ),
        .I5(dataIn[25]),
        .O(\onSort[2]1_carry_i_12_n_0 ));
  LUT6 #(
    .INIT(64'h22222222BBB222B2)) 
    \onSort[2]1_carry_i_2 
       (.I0(\dataOut[5]_INST_0_i_1_n_0 ),
        .I1(\dataOut[29]_INST_0_i_3_n_0 ),
        .I2(dataIn[4]),
        .I3(\onSort[0]1 ),
        .I4(dataIn[12]),
        .I5(\dataOut[28]_INST_0_i_3_n_0 ),
        .O(\onSort[2]1_carry_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h22222222BBB222B2)) 
    \onSort[2]1_carry_i_3 
       (.I0(\dataOut[3]_INST_0_i_1_n_0 ),
        .I1(\dataOut[27]_INST_0_i_3_n_0 ),
        .I2(dataIn[2]),
        .I3(\onSort[0]1 ),
        .I4(dataIn[10]),
        .I5(\dataOut[26]_INST_0_i_3_n_0 ),
        .O(\onSort[2]1_carry_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h22222222BBB222B2)) 
    \onSort[2]1_carry_i_4 
       (.I0(\dataOut[1]_INST_0_i_1_n_0 ),
        .I1(\dataOut[25]_INST_0_i_3_n_0 ),
        .I2(dataIn[0]),
        .I3(\onSort[0]1 ),
        .I4(dataIn[8]),
        .I5(\dataOut[24]_INST_0_i_3_n_0 ),
        .O(\onSort[2]1_carry_i_4_n_0 ));
  LUT5 #(
    .INIT(32'h41444111)) 
    \onSort[2]1_carry_i_5 
       (.I0(\onSort[2]1_carry_i_9_n_0 ),
        .I1(\dataOut[30]_INST_0_i_3_n_0 ),
        .I2(dataIn[14]),
        .I3(\onSort[0]1 ),
        .I4(dataIn[6]),
        .O(\onSort[2]1_carry_i_5_n_0 ));
  LUT5 #(
    .INIT(32'h41444111)) 
    \onSort[2]1_carry_i_6 
       (.I0(\onSort[2]1_carry_i_10_n_0 ),
        .I1(\dataOut[28]_INST_0_i_3_n_0 ),
        .I2(dataIn[12]),
        .I3(\onSort[0]1 ),
        .I4(dataIn[4]),
        .O(\onSort[2]1_carry_i_6_n_0 ));
  LUT5 #(
    .INIT(32'h41444111)) 
    \onSort[2]1_carry_i_7 
       (.I0(\onSort[2]1_carry_i_11_n_0 ),
        .I1(\dataOut[26]_INST_0_i_3_n_0 ),
        .I2(dataIn[10]),
        .I3(\onSort[0]1 ),
        .I4(dataIn[2]),
        .O(\onSort[2]1_carry_i_7_n_0 ));
  LUT5 #(
    .INIT(32'h41444111)) 
    \onSort[2]1_carry_i_8 
       (.I0(\onSort[2]1_carry_i_12_n_0 ),
        .I1(\dataOut[24]_INST_0_i_3_n_0 ),
        .I2(dataIn[8]),
        .I3(\onSort[0]1 ),
        .I4(dataIn[0]),
        .O(\onSort[2]1_carry_i_8_n_0 ));
  LUT6 #(
    .INIT(64'h1D1D1DE2E2E21DE2)) 
    \onSort[2]1_carry_i_9 
       (.I0(dataIn[7]),
        .I1(\onSort[0]1 ),
        .I2(dataIn[15]),
        .I3(dataIn[23]),
        .I4(\onSort[3]1 ),
        .I5(dataIn[31]),
        .O(\onSort[2]1_carry_i_9_n_0 ));
  CARRY4 \onSort[3]1__3_carry 
       (.CI(1'b0),
        .CO({\onSort[3]11_in ,\onSort[3]1__3_carry_n_1 ,\onSort[3]1__3_carry_n_2 ,\onSort[3]1__3_carry_n_3 }),
        .CYINIT(1'b0),
        .DI({\onSort[3]1__3_carry_i_1_n_0 ,\onSort[3]1__3_carry_i_2_n_0 ,\onSort[3]1__3_carry_i_3_n_0 ,\onSort[3]1__3_carry_i_4_n_0 }),
        .O(\NLW_onSort[3]1__3_carry_O_UNCONNECTED [3:0]),
        .S({\onSort[3]1__3_carry_i_5_n_0 ,\onSort[3]1__3_carry_i_6_n_0 ,\onSort[3]1__3_carry_i_7_n_0 ,\onSort[3]1__3_carry_i_8_n_0 }));
  LUT6 #(
    .INIT(64'h444444D4D4D444D4)) 
    \onSort[3]1__3_carry_i_1 
       (.I0(\onSort[3]1__3_carry_i_9_n_0 ),
        .I1(\dataOut[15]_INST_0_i_1_n_0 ),
        .I2(\dataOut[14]_INST_0_i_1_n_0 ),
        .I3(dataIn[30]),
        .I4(\onSort[3]1 ),
        .I5(dataIn[22]),
        .O(\onSort[3]1__3_carry_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair38" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \onSort[3]1__3_carry_i_10 
       (.I0(dataIn[21]),
        .I1(\onSort[3]1 ),
        .I2(dataIn[29]),
        .O(\onSort[3]1__3_carry_i_10_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair37" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \onSort[3]1__3_carry_i_11 
       (.I0(dataIn[19]),
        .I1(\onSort[3]1 ),
        .I2(dataIn[27]),
        .O(\onSort[3]1__3_carry_i_11_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair36" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \onSort[3]1__3_carry_i_12 
       (.I0(dataIn[17]),
        .I1(\onSort[3]1 ),
        .I2(dataIn[25]),
        .O(\onSort[3]1__3_carry_i_12_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair39" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \onSort[3]1__3_carry_i_13 
       (.I0(dataIn[22]),
        .I1(\onSort[3]1 ),
        .I2(dataIn[30]),
        .O(\onSort[3]1__3_carry_i_13_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair38" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \onSort[3]1__3_carry_i_14 
       (.I0(dataIn[20]),
        .I1(\onSort[3]1 ),
        .I2(dataIn[28]),
        .O(\onSort[3]1__3_carry_i_14_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair37" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \onSort[3]1__3_carry_i_15 
       (.I0(dataIn[18]),
        .I1(\onSort[3]1 ),
        .I2(dataIn[26]),
        .O(\onSort[3]1__3_carry_i_15_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair36" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \onSort[3]1__3_carry_i_16 
       (.I0(dataIn[16]),
        .I1(\onSort[3]1 ),
        .I2(dataIn[24]),
        .O(\onSort[3]1__3_carry_i_16_n_0 ));
  LUT6 #(
    .INIT(64'h444444D4D4D444D4)) 
    \onSort[3]1__3_carry_i_2 
       (.I0(\onSort[3]1__3_carry_i_10_n_0 ),
        .I1(\dataOut[13]_INST_0_i_1_n_0 ),
        .I2(\dataOut[12]_INST_0_i_1_n_0 ),
        .I3(dataIn[28]),
        .I4(\onSort[3]1 ),
        .I5(dataIn[20]),
        .O(\onSort[3]1__3_carry_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h444444D4D4D444D4)) 
    \onSort[3]1__3_carry_i_3 
       (.I0(\onSort[3]1__3_carry_i_11_n_0 ),
        .I1(\dataOut[11]_INST_0_i_1_n_0 ),
        .I2(\dataOut[10]_INST_0_i_1_n_0 ),
        .I3(dataIn[26]),
        .I4(\onSort[3]1 ),
        .I5(dataIn[18]),
        .O(\onSort[3]1__3_carry_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h444444D4D4D444D4)) 
    \onSort[3]1__3_carry_i_4 
       (.I0(\onSort[3]1__3_carry_i_12_n_0 ),
        .I1(\dataOut[9]_INST_0_i_1_n_0 ),
        .I2(\dataOut[8]_INST_0_i_1_n_0 ),
        .I3(dataIn[24]),
        .I4(\onSort[3]1 ),
        .I5(dataIn[16]),
        .O(\onSort[3]1__3_carry_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h9A95000000009A95)) 
    \onSort[3]1__3_carry_i_5 
       (.I0(\dataOut[15]_INST_0_i_1_n_0 ),
        .I1(dataIn[23]),
        .I2(\onSort[3]1 ),
        .I3(dataIn[31]),
        .I4(\dataOut[14]_INST_0_i_1_n_0 ),
        .I5(\onSort[3]1__3_carry_i_13_n_0 ),
        .O(\onSort[3]1__3_carry_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h9A95000000009A95)) 
    \onSort[3]1__3_carry_i_6 
       (.I0(\dataOut[13]_INST_0_i_1_n_0 ),
        .I1(dataIn[21]),
        .I2(\onSort[3]1 ),
        .I3(dataIn[29]),
        .I4(\dataOut[12]_INST_0_i_1_n_0 ),
        .I5(\onSort[3]1__3_carry_i_14_n_0 ),
        .O(\onSort[3]1__3_carry_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h9A95000000009A95)) 
    \onSort[3]1__3_carry_i_7 
       (.I0(\dataOut[11]_INST_0_i_1_n_0 ),
        .I1(dataIn[19]),
        .I2(\onSort[3]1 ),
        .I3(dataIn[27]),
        .I4(\dataOut[10]_INST_0_i_1_n_0 ),
        .I5(\onSort[3]1__3_carry_i_15_n_0 ),
        .O(\onSort[3]1__3_carry_i_7_n_0 ));
  LUT6 #(
    .INIT(64'h9A95000000009A95)) 
    \onSort[3]1__3_carry_i_8 
       (.I0(\dataOut[9]_INST_0_i_1_n_0 ),
        .I1(dataIn[17]),
        .I2(\onSort[3]1 ),
        .I3(dataIn[25]),
        .I4(\dataOut[8]_INST_0_i_1_n_0 ),
        .I5(\onSort[3]1__3_carry_i_16_n_0 ),
        .O(\onSort[3]1__3_carry_i_8_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair39" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \onSort[3]1__3_carry_i_9 
       (.I0(dataIn[23]),
        .I1(\onSort[3]1 ),
        .I2(dataIn[31]),
        .O(\onSort[3]1__3_carry_i_9_n_0 ));
  CARRY4 \onSort[3]1__7_carry 
       (.CI(1'b0),
        .CO({\onSort[3]12_in ,\onSort[3]1__7_carry_n_1 ,\onSort[3]1__7_carry_n_2 ,\onSort[3]1__7_carry_n_3 }),
        .CYINIT(1'b0),
        .DI({\onSort[3]1__7_carry_i_1_n_0 ,\onSort[3]1__7_carry_i_2_n_0 ,\onSort[3]1__7_carry_i_3_n_0 ,\onSort[3]1__7_carry_i_4_n_0 }),
        .O(\NLW_onSort[3]1__7_carry_O_UNCONNECTED [3:0]),
        .S({\onSort[3]1__7_carry_i_5_n_0 ,\onSort[3]1__7_carry_i_6_n_0 ,\onSort[3]1__7_carry_i_7_n_0 ,\onSort[3]1__7_carry_i_8_n_0 }));
  LUT4 #(
    .INIT(16'h44D4)) 
    \onSort[3]1__7_carry_i_1 
       (.I0(\dataOut[31]_INST_0_i_2_n_0 ),
        .I1(\dataOut[31]_INST_0_i_1_n_0 ),
        .I2(\dataOut[30]_INST_0_i_1_n_0 ),
        .I3(\dataOut[30]_INST_0_i_2_n_0 ),
        .O(\onSort[3]1__7_carry_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h44D4)) 
    \onSort[3]1__7_carry_i_2 
       (.I0(\dataOut[29]_INST_0_i_2_n_0 ),
        .I1(\dataOut[29]_INST_0_i_1_n_0 ),
        .I2(\dataOut[28]_INST_0_i_1_n_0 ),
        .I3(\dataOut[28]_INST_0_i_2_n_0 ),
        .O(\onSort[3]1__7_carry_i_2_n_0 ));
  LUT4 #(
    .INIT(16'h44D4)) 
    \onSort[3]1__7_carry_i_3 
       (.I0(\dataOut[27]_INST_0_i_2_n_0 ),
        .I1(\dataOut[27]_INST_0_i_1_n_0 ),
        .I2(\dataOut[26]_INST_0_i_1_n_0 ),
        .I3(\dataOut[26]_INST_0_i_2_n_0 ),
        .O(\onSort[3]1__7_carry_i_3_n_0 ));
  LUT4 #(
    .INIT(16'h44D4)) 
    \onSort[3]1__7_carry_i_4 
       (.I0(\dataOut[25]_INST_0_i_2_n_0 ),
        .I1(\dataOut[25]_INST_0_i_1_n_0 ),
        .I2(\dataOut[24]_INST_0_i_1_n_0 ),
        .I3(\dataOut[24]_INST_0_i_2_n_0 ),
        .O(\onSort[3]1__7_carry_i_4_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \onSort[3]1__7_carry_i_5 
       (.I0(\dataOut[31]_INST_0_i_1_n_0 ),
        .I1(\dataOut[31]_INST_0_i_2_n_0 ),
        .I2(\dataOut[30]_INST_0_i_1_n_0 ),
        .I3(\dataOut[30]_INST_0_i_2_n_0 ),
        .O(\onSort[3]1__7_carry_i_5_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \onSort[3]1__7_carry_i_6 
       (.I0(\dataOut[29]_INST_0_i_1_n_0 ),
        .I1(\dataOut[29]_INST_0_i_2_n_0 ),
        .I2(\dataOut[28]_INST_0_i_1_n_0 ),
        .I3(\dataOut[28]_INST_0_i_2_n_0 ),
        .O(\onSort[3]1__7_carry_i_6_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \onSort[3]1__7_carry_i_7 
       (.I0(\dataOut[27]_INST_0_i_1_n_0 ),
        .I1(\dataOut[27]_INST_0_i_2_n_0 ),
        .I2(\dataOut[26]_INST_0_i_1_n_0 ),
        .I3(\dataOut[26]_INST_0_i_2_n_0 ),
        .O(\onSort[3]1__7_carry_i_7_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \onSort[3]1__7_carry_i_8 
       (.I0(\dataOut[25]_INST_0_i_1_n_0 ),
        .I1(\dataOut[25]_INST_0_i_2_n_0 ),
        .I2(\dataOut[24]_INST_0_i_1_n_0 ),
        .I3(\dataOut[24]_INST_0_i_2_n_0 ),
        .O(\onSort[3]1__7_carry_i_8_n_0 ));
  CARRY4 \onSort[3]1_carry 
       (.CI(1'b0),
        .CO({\onSort[3]1 ,\onSort[3]1_carry_n_1 ,\onSort[3]1_carry_n_2 ,\onSort[3]1_carry_n_3 }),
        .CYINIT(1'b0),
        .DI({\onSort[3]1_carry_i_1_n_0 ,\onSort[3]1_carry_i_2_n_0 ,\onSort[3]1_carry_i_3_n_0 ,\onSort[3]1_carry_i_4_n_0 }),
        .O(\NLW_onSort[3]1_carry_O_UNCONNECTED [3:0]),
        .S({\onSort[3]1_carry_i_5_n_0 ,\onSort[3]1_carry_i_6_n_0 ,\onSort[3]1_carry_i_7_n_0 ,\onSort[3]1_carry_i_8_n_0 }));
  LUT4 #(
    .INIT(16'h22B2)) 
    \onSort[3]1_carry_i_1 
       (.I0(dataIn[23]),
        .I1(dataIn[31]),
        .I2(dataIn[22]),
        .I3(dataIn[30]),
        .O(\onSort[3]1_carry_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h22B2)) 
    \onSort[3]1_carry_i_2 
       (.I0(dataIn[21]),
        .I1(dataIn[29]),
        .I2(dataIn[20]),
        .I3(dataIn[28]),
        .O(\onSort[3]1_carry_i_2_n_0 ));
  LUT4 #(
    .INIT(16'h22B2)) 
    \onSort[3]1_carry_i_3 
       (.I0(dataIn[19]),
        .I1(dataIn[27]),
        .I2(dataIn[18]),
        .I3(dataIn[26]),
        .O(\onSort[3]1_carry_i_3_n_0 ));
  LUT4 #(
    .INIT(16'h22B2)) 
    \onSort[3]1_carry_i_4 
       (.I0(dataIn[17]),
        .I1(dataIn[25]),
        .I2(dataIn[16]),
        .I3(dataIn[24]),
        .O(\onSort[3]1_carry_i_4_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \onSort[3]1_carry_i_5 
       (.I0(dataIn[31]),
        .I1(dataIn[23]),
        .I2(dataIn[30]),
        .I3(dataIn[22]),
        .O(\onSort[3]1_carry_i_5_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \onSort[3]1_carry_i_6 
       (.I0(dataIn[29]),
        .I1(dataIn[21]),
        .I2(dataIn[28]),
        .I3(dataIn[20]),
        .O(\onSort[3]1_carry_i_6_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \onSort[3]1_carry_i_7 
       (.I0(dataIn[27]),
        .I1(dataIn[19]),
        .I2(dataIn[26]),
        .I3(dataIn[18]),
        .O(\onSort[3]1_carry_i_7_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \onSort[3]1_carry_i_8 
       (.I0(dataIn[25]),
        .I1(dataIn[17]),
        .I2(dataIn[24]),
        .I3(dataIn[16]),
        .O(\onSort[3]1_carry_i_8_n_0 ));
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
