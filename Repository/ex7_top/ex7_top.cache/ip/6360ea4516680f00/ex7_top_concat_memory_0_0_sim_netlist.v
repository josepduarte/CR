// Copyright 1986-2016 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2016.4 (win64) Build 1756540 Mon Jan 23 19:11:23 MST 2017
// Date        : Tue Apr 04 23:18:34 2017
// Host        : Inator running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ ex7_top_concat_memory_0_0_sim_netlist.v
// Design      : ex7_top_concat_memory_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a100tcsg324-3
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_concat_memory
   (address,
    data_out,
    data_in,
    clk);
  output [3:0]address;
  output [127:0]data_out;
  input [7:0]data_in;
  input clk;

  wire [3:0]address;
  wire clk;
  wire [7:0]data_in;
  wire [127:0]data_out;
  wire [3:0]plusOp;
  wire \vector_s[0][7]_i_1_n_0 ;
  wire \vector_s[11][7]_i_1_n_0 ;
  wire \vector_s[12][7]_i_1_n_0 ;
  wire \vector_s[13][7]_i_1_n_0 ;
  wire \vector_s[15][7]_i_1_n_0 ;
  wire \vector_s[1][7]_i_1_n_0 ;
  wire \vector_s[2][7]_i_1_n_0 ;
  wire \vector_s[3][7]_i_1_n_0 ;
  wire \vector_s[4][7]_i_1_n_0 ;
  wire \vector_s[7][7]_i_1_n_0 ;
  wire \vector_s[8][7]_i_1_n_0 ;
  wire \vector_s[9][7]_i_1_n_0 ;
  wire \vector_s_reg[10]__0_n_0 ;
  wire \vector_s_reg[14]__0_n_0 ;
  wire \vector_s_reg[5]__0_n_0 ;
  wire \vector_s_reg[6]__0_n_0 ;

  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \address_s[0]_i_1 
       (.I0(address[0]),
        .O(plusOp[0]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \address_s[1]_i_1 
       (.I0(address[0]),
        .I1(address[1]),
        .O(plusOp[1]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \address_s[2]_i_1 
       (.I0(address[0]),
        .I1(address[1]),
        .I2(address[2]),
        .O(plusOp[2]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \address_s[3]_i_1 
       (.I0(address[1]),
        .I1(address[0]),
        .I2(address[2]),
        .I3(address[3]),
        .O(plusOp[3]));
  FDRE #(
    .INIT(1'b0)) 
    \address_s_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .D(plusOp[0]),
        .Q(address[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \address_s_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .D(plusOp[1]),
        .Q(address[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \address_s_reg[2] 
       (.C(clk),
        .CE(1'b1),
        .D(plusOp[2]),
        .Q(address[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \address_s_reg[3] 
       (.C(clk),
        .CE(1'b1),
        .D(plusOp[3]),
        .Q(address[3]),
        .R(1'b0));
  LUT4 #(
    .INIT(16'h0001)) 
    \vector_s[0][7]_i_1 
       (.I0(address[3]),
        .I1(address[2]),
        .I2(address[0]),
        .I3(address[1]),
        .O(\vector_s[0][7]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h0080)) 
    \vector_s[11][7]_i_1 
       (.I0(address[0]),
        .I1(address[1]),
        .I2(address[3]),
        .I3(address[2]),
        .O(\vector_s[11][7]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h1000)) 
    \vector_s[12][7]_i_1 
       (.I0(address[0]),
        .I1(address[1]),
        .I2(address[3]),
        .I3(address[2]),
        .O(\vector_s[12][7]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h2000)) 
    \vector_s[13][7]_i_1 
       (.I0(address[2]),
        .I1(address[1]),
        .I2(address[0]),
        .I3(address[3]),
        .O(\vector_s[13][7]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h8000)) 
    \vector_s[15][7]_i_1 
       (.I0(address[0]),
        .I1(address[1]),
        .I2(address[3]),
        .I3(address[2]),
        .O(\vector_s[15][7]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h0010)) 
    \vector_s[1][7]_i_1 
       (.I0(address[3]),
        .I1(address[2]),
        .I2(address[0]),
        .I3(address[1]),
        .O(\vector_s[1][7]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h0010)) 
    \vector_s[2][7]_i_1 
       (.I0(address[3]),
        .I1(address[2]),
        .I2(address[1]),
        .I3(address[0]),
        .O(\vector_s[2][7]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h0008)) 
    \vector_s[3][7]_i_1 
       (.I0(address[0]),
        .I1(address[1]),
        .I2(address[3]),
        .I3(address[2]),
        .O(\vector_s[3][7]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h0010)) 
    \vector_s[4][7]_i_1 
       (.I0(address[3]),
        .I1(address[0]),
        .I2(address[2]),
        .I3(address[1]),
        .O(\vector_s[4][7]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h0080)) 
    \vector_s[7][7]_i_1 
       (.I0(address[0]),
        .I1(address[1]),
        .I2(address[2]),
        .I3(address[3]),
        .O(\vector_s[7][7]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h0010)) 
    \vector_s[8][7]_i_1 
       (.I0(address[0]),
        .I1(address[2]),
        .I2(address[3]),
        .I3(address[1]),
        .O(\vector_s[8][7]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h1000)) 
    \vector_s[9][7]_i_1 
       (.I0(address[1]),
        .I1(address[2]),
        .I2(address[0]),
        .I3(address[3]),
        .O(\vector_s[9][7]_i_1_n_0 ));
  FDRE \vector_s_reg[0][0] 
       (.C(clk),
        .CE(\vector_s[0][7]_i_1_n_0 ),
        .D(data_in[0]),
        .Q(data_out[0]),
        .R(1'b0));
  FDRE \vector_s_reg[0][1] 
       (.C(clk),
        .CE(\vector_s[0][7]_i_1_n_0 ),
        .D(data_in[1]),
        .Q(data_out[1]),
        .R(1'b0));
  FDRE \vector_s_reg[0][2] 
       (.C(clk),
        .CE(\vector_s[0][7]_i_1_n_0 ),
        .D(data_in[2]),
        .Q(data_out[2]),
        .R(1'b0));
  FDRE \vector_s_reg[0][3] 
       (.C(clk),
        .CE(\vector_s[0][7]_i_1_n_0 ),
        .D(data_in[3]),
        .Q(data_out[3]),
        .R(1'b0));
  FDRE \vector_s_reg[0][4] 
       (.C(clk),
        .CE(\vector_s[0][7]_i_1_n_0 ),
        .D(data_in[4]),
        .Q(data_out[4]),
        .R(1'b0));
  FDRE \vector_s_reg[0][5] 
       (.C(clk),
        .CE(\vector_s[0][7]_i_1_n_0 ),
        .D(data_in[5]),
        .Q(data_out[5]),
        .R(1'b0));
  FDRE \vector_s_reg[0][6] 
       (.C(clk),
        .CE(\vector_s[0][7]_i_1_n_0 ),
        .D(data_in[6]),
        .Q(data_out[6]),
        .R(1'b0));
  FDRE \vector_s_reg[0][7] 
       (.C(clk),
        .CE(\vector_s[0][7]_i_1_n_0 ),
        .D(data_in[7]),
        .Q(data_out[7]),
        .R(1'b0));
  FDRE \vector_s_reg[10][0] 
       (.C(clk),
        .CE(\vector_s_reg[10]__0_n_0 ),
        .D(data_in[0]),
        .Q(data_out[80]),
        .R(1'b0));
  FDRE \vector_s_reg[10][1] 
       (.C(clk),
        .CE(\vector_s_reg[10]__0_n_0 ),
        .D(data_in[1]),
        .Q(data_out[81]),
        .R(1'b0));
  FDRE \vector_s_reg[10][2] 
       (.C(clk),
        .CE(\vector_s_reg[10]__0_n_0 ),
        .D(data_in[2]),
        .Q(data_out[82]),
        .R(1'b0));
  FDRE \vector_s_reg[10][3] 
       (.C(clk),
        .CE(\vector_s_reg[10]__0_n_0 ),
        .D(data_in[3]),
        .Q(data_out[83]),
        .R(1'b0));
  FDRE \vector_s_reg[10][4] 
       (.C(clk),
        .CE(\vector_s_reg[10]__0_n_0 ),
        .D(data_in[4]),
        .Q(data_out[84]),
        .R(1'b0));
  FDRE \vector_s_reg[10][5] 
       (.C(clk),
        .CE(\vector_s_reg[10]__0_n_0 ),
        .D(data_in[5]),
        .Q(data_out[85]),
        .R(1'b0));
  FDRE \vector_s_reg[10][6] 
       (.C(clk),
        .CE(\vector_s_reg[10]__0_n_0 ),
        .D(data_in[6]),
        .Q(data_out[86]),
        .R(1'b0));
  FDRE \vector_s_reg[10][7] 
       (.C(clk),
        .CE(\vector_s_reg[10]__0_n_0 ),
        .D(data_in[7]),
        .Q(data_out[87]),
        .R(1'b0));
  LUT4 #(
    .INIT(16'h1000)) 
    \vector_s_reg[10]__0 
       (.I0(address[0]),
        .I1(address[2]),
        .I2(address[1]),
        .I3(address[3]),
        .O(\vector_s_reg[10]__0_n_0 ));
  FDRE \vector_s_reg[11][0] 
       (.C(clk),
        .CE(\vector_s[11][7]_i_1_n_0 ),
        .D(data_in[0]),
        .Q(data_out[88]),
        .R(1'b0));
  FDRE \vector_s_reg[11][1] 
       (.C(clk),
        .CE(\vector_s[11][7]_i_1_n_0 ),
        .D(data_in[1]),
        .Q(data_out[89]),
        .R(1'b0));
  FDRE \vector_s_reg[11][2] 
       (.C(clk),
        .CE(\vector_s[11][7]_i_1_n_0 ),
        .D(data_in[2]),
        .Q(data_out[90]),
        .R(1'b0));
  FDRE \vector_s_reg[11][3] 
       (.C(clk),
        .CE(\vector_s[11][7]_i_1_n_0 ),
        .D(data_in[3]),
        .Q(data_out[91]),
        .R(1'b0));
  FDRE \vector_s_reg[11][4] 
       (.C(clk),
        .CE(\vector_s[11][7]_i_1_n_0 ),
        .D(data_in[4]),
        .Q(data_out[92]),
        .R(1'b0));
  FDRE \vector_s_reg[11][5] 
       (.C(clk),
        .CE(\vector_s[11][7]_i_1_n_0 ),
        .D(data_in[5]),
        .Q(data_out[93]),
        .R(1'b0));
  FDRE \vector_s_reg[11][6] 
       (.C(clk),
        .CE(\vector_s[11][7]_i_1_n_0 ),
        .D(data_in[6]),
        .Q(data_out[94]),
        .R(1'b0));
  FDRE \vector_s_reg[11][7] 
       (.C(clk),
        .CE(\vector_s[11][7]_i_1_n_0 ),
        .D(data_in[7]),
        .Q(data_out[95]),
        .R(1'b0));
  FDRE \vector_s_reg[12][0] 
       (.C(clk),
        .CE(\vector_s[12][7]_i_1_n_0 ),
        .D(data_in[0]),
        .Q(data_out[96]),
        .R(1'b0));
  FDRE \vector_s_reg[12][1] 
       (.C(clk),
        .CE(\vector_s[12][7]_i_1_n_0 ),
        .D(data_in[1]),
        .Q(data_out[97]),
        .R(1'b0));
  FDRE \vector_s_reg[12][2] 
       (.C(clk),
        .CE(\vector_s[12][7]_i_1_n_0 ),
        .D(data_in[2]),
        .Q(data_out[98]),
        .R(1'b0));
  FDRE \vector_s_reg[12][3] 
       (.C(clk),
        .CE(\vector_s[12][7]_i_1_n_0 ),
        .D(data_in[3]),
        .Q(data_out[99]),
        .R(1'b0));
  FDRE \vector_s_reg[12][4] 
       (.C(clk),
        .CE(\vector_s[12][7]_i_1_n_0 ),
        .D(data_in[4]),
        .Q(data_out[100]),
        .R(1'b0));
  FDRE \vector_s_reg[12][5] 
       (.C(clk),
        .CE(\vector_s[12][7]_i_1_n_0 ),
        .D(data_in[5]),
        .Q(data_out[101]),
        .R(1'b0));
  FDRE \vector_s_reg[12][6] 
       (.C(clk),
        .CE(\vector_s[12][7]_i_1_n_0 ),
        .D(data_in[6]),
        .Q(data_out[102]),
        .R(1'b0));
  FDRE \vector_s_reg[12][7] 
       (.C(clk),
        .CE(\vector_s[12][7]_i_1_n_0 ),
        .D(data_in[7]),
        .Q(data_out[103]),
        .R(1'b0));
  FDRE \vector_s_reg[13][0] 
       (.C(clk),
        .CE(\vector_s[13][7]_i_1_n_0 ),
        .D(data_in[0]),
        .Q(data_out[104]),
        .R(1'b0));
  FDRE \vector_s_reg[13][1] 
       (.C(clk),
        .CE(\vector_s[13][7]_i_1_n_0 ),
        .D(data_in[1]),
        .Q(data_out[105]),
        .R(1'b0));
  FDRE \vector_s_reg[13][2] 
       (.C(clk),
        .CE(\vector_s[13][7]_i_1_n_0 ),
        .D(data_in[2]),
        .Q(data_out[106]),
        .R(1'b0));
  FDRE \vector_s_reg[13][3] 
       (.C(clk),
        .CE(\vector_s[13][7]_i_1_n_0 ),
        .D(data_in[3]),
        .Q(data_out[107]),
        .R(1'b0));
  FDRE \vector_s_reg[13][4] 
       (.C(clk),
        .CE(\vector_s[13][7]_i_1_n_0 ),
        .D(data_in[4]),
        .Q(data_out[108]),
        .R(1'b0));
  FDRE \vector_s_reg[13][5] 
       (.C(clk),
        .CE(\vector_s[13][7]_i_1_n_0 ),
        .D(data_in[5]),
        .Q(data_out[109]),
        .R(1'b0));
  FDRE \vector_s_reg[13][6] 
       (.C(clk),
        .CE(\vector_s[13][7]_i_1_n_0 ),
        .D(data_in[6]),
        .Q(data_out[110]),
        .R(1'b0));
  FDRE \vector_s_reg[13][7] 
       (.C(clk),
        .CE(\vector_s[13][7]_i_1_n_0 ),
        .D(data_in[7]),
        .Q(data_out[111]),
        .R(1'b0));
  FDRE \vector_s_reg[14][0] 
       (.C(clk),
        .CE(\vector_s_reg[14]__0_n_0 ),
        .D(data_in[0]),
        .Q(data_out[112]),
        .R(1'b0));
  FDRE \vector_s_reg[14][1] 
       (.C(clk),
        .CE(\vector_s_reg[14]__0_n_0 ),
        .D(data_in[1]),
        .Q(data_out[113]),
        .R(1'b0));
  FDRE \vector_s_reg[14][2] 
       (.C(clk),
        .CE(\vector_s_reg[14]__0_n_0 ),
        .D(data_in[2]),
        .Q(data_out[114]),
        .R(1'b0));
  FDRE \vector_s_reg[14][3] 
       (.C(clk),
        .CE(\vector_s_reg[14]__0_n_0 ),
        .D(data_in[3]),
        .Q(data_out[115]),
        .R(1'b0));
  FDRE \vector_s_reg[14][4] 
       (.C(clk),
        .CE(\vector_s_reg[14]__0_n_0 ),
        .D(data_in[4]),
        .Q(data_out[116]),
        .R(1'b0));
  FDRE \vector_s_reg[14][5] 
       (.C(clk),
        .CE(\vector_s_reg[14]__0_n_0 ),
        .D(data_in[5]),
        .Q(data_out[117]),
        .R(1'b0));
  FDRE \vector_s_reg[14][6] 
       (.C(clk),
        .CE(\vector_s_reg[14]__0_n_0 ),
        .D(data_in[6]),
        .Q(data_out[118]),
        .R(1'b0));
  FDRE \vector_s_reg[14][7] 
       (.C(clk),
        .CE(\vector_s_reg[14]__0_n_0 ),
        .D(data_in[7]),
        .Q(data_out[119]),
        .R(1'b0));
  LUT4 #(
    .INIT(16'h2000)) 
    \vector_s_reg[14]__0 
       (.I0(address[2]),
        .I1(address[0]),
        .I2(address[3]),
        .I3(address[1]),
        .O(\vector_s_reg[14]__0_n_0 ));
  FDRE \vector_s_reg[15][0] 
       (.C(clk),
        .CE(\vector_s[15][7]_i_1_n_0 ),
        .D(data_in[0]),
        .Q(data_out[120]),
        .R(1'b0));
  FDRE \vector_s_reg[15][1] 
       (.C(clk),
        .CE(\vector_s[15][7]_i_1_n_0 ),
        .D(data_in[1]),
        .Q(data_out[121]),
        .R(1'b0));
  FDRE \vector_s_reg[15][2] 
       (.C(clk),
        .CE(\vector_s[15][7]_i_1_n_0 ),
        .D(data_in[2]),
        .Q(data_out[122]),
        .R(1'b0));
  FDRE \vector_s_reg[15][3] 
       (.C(clk),
        .CE(\vector_s[15][7]_i_1_n_0 ),
        .D(data_in[3]),
        .Q(data_out[123]),
        .R(1'b0));
  FDRE \vector_s_reg[15][4] 
       (.C(clk),
        .CE(\vector_s[15][7]_i_1_n_0 ),
        .D(data_in[4]),
        .Q(data_out[124]),
        .R(1'b0));
  FDRE \vector_s_reg[15][5] 
       (.C(clk),
        .CE(\vector_s[15][7]_i_1_n_0 ),
        .D(data_in[5]),
        .Q(data_out[125]),
        .R(1'b0));
  FDRE \vector_s_reg[15][6] 
       (.C(clk),
        .CE(\vector_s[15][7]_i_1_n_0 ),
        .D(data_in[6]),
        .Q(data_out[126]),
        .R(1'b0));
  FDRE \vector_s_reg[15][7] 
       (.C(clk),
        .CE(\vector_s[15][7]_i_1_n_0 ),
        .D(data_in[7]),
        .Q(data_out[127]),
        .R(1'b0));
  FDRE \vector_s_reg[1][0] 
       (.C(clk),
        .CE(\vector_s[1][7]_i_1_n_0 ),
        .D(data_in[0]),
        .Q(data_out[8]),
        .R(1'b0));
  FDRE \vector_s_reg[1][1] 
       (.C(clk),
        .CE(\vector_s[1][7]_i_1_n_0 ),
        .D(data_in[1]),
        .Q(data_out[9]),
        .R(1'b0));
  FDRE \vector_s_reg[1][2] 
       (.C(clk),
        .CE(\vector_s[1][7]_i_1_n_0 ),
        .D(data_in[2]),
        .Q(data_out[10]),
        .R(1'b0));
  FDRE \vector_s_reg[1][3] 
       (.C(clk),
        .CE(\vector_s[1][7]_i_1_n_0 ),
        .D(data_in[3]),
        .Q(data_out[11]),
        .R(1'b0));
  FDRE \vector_s_reg[1][4] 
       (.C(clk),
        .CE(\vector_s[1][7]_i_1_n_0 ),
        .D(data_in[4]),
        .Q(data_out[12]),
        .R(1'b0));
  FDRE \vector_s_reg[1][5] 
       (.C(clk),
        .CE(\vector_s[1][7]_i_1_n_0 ),
        .D(data_in[5]),
        .Q(data_out[13]),
        .R(1'b0));
  FDRE \vector_s_reg[1][6] 
       (.C(clk),
        .CE(\vector_s[1][7]_i_1_n_0 ),
        .D(data_in[6]),
        .Q(data_out[14]),
        .R(1'b0));
  FDRE \vector_s_reg[1][7] 
       (.C(clk),
        .CE(\vector_s[1][7]_i_1_n_0 ),
        .D(data_in[7]),
        .Q(data_out[15]),
        .R(1'b0));
  FDRE \vector_s_reg[2][0] 
       (.C(clk),
        .CE(\vector_s[2][7]_i_1_n_0 ),
        .D(data_in[0]),
        .Q(data_out[16]),
        .R(1'b0));
  FDRE \vector_s_reg[2][1] 
       (.C(clk),
        .CE(\vector_s[2][7]_i_1_n_0 ),
        .D(data_in[1]),
        .Q(data_out[17]),
        .R(1'b0));
  FDRE \vector_s_reg[2][2] 
       (.C(clk),
        .CE(\vector_s[2][7]_i_1_n_0 ),
        .D(data_in[2]),
        .Q(data_out[18]),
        .R(1'b0));
  FDRE \vector_s_reg[2][3] 
       (.C(clk),
        .CE(\vector_s[2][7]_i_1_n_0 ),
        .D(data_in[3]),
        .Q(data_out[19]),
        .R(1'b0));
  FDRE \vector_s_reg[2][4] 
       (.C(clk),
        .CE(\vector_s[2][7]_i_1_n_0 ),
        .D(data_in[4]),
        .Q(data_out[20]),
        .R(1'b0));
  FDRE \vector_s_reg[2][5] 
       (.C(clk),
        .CE(\vector_s[2][7]_i_1_n_0 ),
        .D(data_in[5]),
        .Q(data_out[21]),
        .R(1'b0));
  FDRE \vector_s_reg[2][6] 
       (.C(clk),
        .CE(\vector_s[2][7]_i_1_n_0 ),
        .D(data_in[6]),
        .Q(data_out[22]),
        .R(1'b0));
  FDRE \vector_s_reg[2][7] 
       (.C(clk),
        .CE(\vector_s[2][7]_i_1_n_0 ),
        .D(data_in[7]),
        .Q(data_out[23]),
        .R(1'b0));
  FDRE \vector_s_reg[3][0] 
       (.C(clk),
        .CE(\vector_s[3][7]_i_1_n_0 ),
        .D(data_in[0]),
        .Q(data_out[24]),
        .R(1'b0));
  FDRE \vector_s_reg[3][1] 
       (.C(clk),
        .CE(\vector_s[3][7]_i_1_n_0 ),
        .D(data_in[1]),
        .Q(data_out[25]),
        .R(1'b0));
  FDRE \vector_s_reg[3][2] 
       (.C(clk),
        .CE(\vector_s[3][7]_i_1_n_0 ),
        .D(data_in[2]),
        .Q(data_out[26]),
        .R(1'b0));
  FDRE \vector_s_reg[3][3] 
       (.C(clk),
        .CE(\vector_s[3][7]_i_1_n_0 ),
        .D(data_in[3]),
        .Q(data_out[27]),
        .R(1'b0));
  FDRE \vector_s_reg[3][4] 
       (.C(clk),
        .CE(\vector_s[3][7]_i_1_n_0 ),
        .D(data_in[4]),
        .Q(data_out[28]),
        .R(1'b0));
  FDRE \vector_s_reg[3][5] 
       (.C(clk),
        .CE(\vector_s[3][7]_i_1_n_0 ),
        .D(data_in[5]),
        .Q(data_out[29]),
        .R(1'b0));
  FDRE \vector_s_reg[3][6] 
       (.C(clk),
        .CE(\vector_s[3][7]_i_1_n_0 ),
        .D(data_in[6]),
        .Q(data_out[30]),
        .R(1'b0));
  FDRE \vector_s_reg[3][7] 
       (.C(clk),
        .CE(\vector_s[3][7]_i_1_n_0 ),
        .D(data_in[7]),
        .Q(data_out[31]),
        .R(1'b0));
  FDRE \vector_s_reg[4][0] 
       (.C(clk),
        .CE(\vector_s[4][7]_i_1_n_0 ),
        .D(data_in[0]),
        .Q(data_out[32]),
        .R(1'b0));
  FDRE \vector_s_reg[4][1] 
       (.C(clk),
        .CE(\vector_s[4][7]_i_1_n_0 ),
        .D(data_in[1]),
        .Q(data_out[33]),
        .R(1'b0));
  FDRE \vector_s_reg[4][2] 
       (.C(clk),
        .CE(\vector_s[4][7]_i_1_n_0 ),
        .D(data_in[2]),
        .Q(data_out[34]),
        .R(1'b0));
  FDRE \vector_s_reg[4][3] 
       (.C(clk),
        .CE(\vector_s[4][7]_i_1_n_0 ),
        .D(data_in[3]),
        .Q(data_out[35]),
        .R(1'b0));
  FDRE \vector_s_reg[4][4] 
       (.C(clk),
        .CE(\vector_s[4][7]_i_1_n_0 ),
        .D(data_in[4]),
        .Q(data_out[36]),
        .R(1'b0));
  FDRE \vector_s_reg[4][5] 
       (.C(clk),
        .CE(\vector_s[4][7]_i_1_n_0 ),
        .D(data_in[5]),
        .Q(data_out[37]),
        .R(1'b0));
  FDRE \vector_s_reg[4][6] 
       (.C(clk),
        .CE(\vector_s[4][7]_i_1_n_0 ),
        .D(data_in[6]),
        .Q(data_out[38]),
        .R(1'b0));
  FDRE \vector_s_reg[4][7] 
       (.C(clk),
        .CE(\vector_s[4][7]_i_1_n_0 ),
        .D(data_in[7]),
        .Q(data_out[39]),
        .R(1'b0));
  FDRE \vector_s_reg[5][0] 
       (.C(clk),
        .CE(\vector_s_reg[5]__0_n_0 ),
        .D(data_in[0]),
        .Q(data_out[40]),
        .R(1'b0));
  FDRE \vector_s_reg[5][1] 
       (.C(clk),
        .CE(\vector_s_reg[5]__0_n_0 ),
        .D(data_in[1]),
        .Q(data_out[41]),
        .R(1'b0));
  FDRE \vector_s_reg[5][2] 
       (.C(clk),
        .CE(\vector_s_reg[5]__0_n_0 ),
        .D(data_in[2]),
        .Q(data_out[42]),
        .R(1'b0));
  FDRE \vector_s_reg[5][3] 
       (.C(clk),
        .CE(\vector_s_reg[5]__0_n_0 ),
        .D(data_in[3]),
        .Q(data_out[43]),
        .R(1'b0));
  FDRE \vector_s_reg[5][4] 
       (.C(clk),
        .CE(\vector_s_reg[5]__0_n_0 ),
        .D(data_in[4]),
        .Q(data_out[44]),
        .R(1'b0));
  FDRE \vector_s_reg[5][5] 
       (.C(clk),
        .CE(\vector_s_reg[5]__0_n_0 ),
        .D(data_in[5]),
        .Q(data_out[45]),
        .R(1'b0));
  FDRE \vector_s_reg[5][6] 
       (.C(clk),
        .CE(\vector_s_reg[5]__0_n_0 ),
        .D(data_in[6]),
        .Q(data_out[46]),
        .R(1'b0));
  FDRE \vector_s_reg[5][7] 
       (.C(clk),
        .CE(\vector_s_reg[5]__0_n_0 ),
        .D(data_in[7]),
        .Q(data_out[47]),
        .R(1'b0));
  LUT4 #(
    .INIT(16'h1000)) 
    \vector_s_reg[5]__0 
       (.I0(address[3]),
        .I1(address[1]),
        .I2(address[0]),
        .I3(address[2]),
        .O(\vector_s_reg[5]__0_n_0 ));
  FDRE \vector_s_reg[6][0] 
       (.C(clk),
        .CE(\vector_s_reg[6]__0_n_0 ),
        .D(data_in[0]),
        .Q(data_out[48]),
        .R(1'b0));
  FDRE \vector_s_reg[6][1] 
       (.C(clk),
        .CE(\vector_s_reg[6]__0_n_0 ),
        .D(data_in[1]),
        .Q(data_out[49]),
        .R(1'b0));
  FDRE \vector_s_reg[6][2] 
       (.C(clk),
        .CE(\vector_s_reg[6]__0_n_0 ),
        .D(data_in[2]),
        .Q(data_out[50]),
        .R(1'b0));
  FDRE \vector_s_reg[6][3] 
       (.C(clk),
        .CE(\vector_s_reg[6]__0_n_0 ),
        .D(data_in[3]),
        .Q(data_out[51]),
        .R(1'b0));
  FDRE \vector_s_reg[6][4] 
       (.C(clk),
        .CE(\vector_s_reg[6]__0_n_0 ),
        .D(data_in[4]),
        .Q(data_out[52]),
        .R(1'b0));
  FDRE \vector_s_reg[6][5] 
       (.C(clk),
        .CE(\vector_s_reg[6]__0_n_0 ),
        .D(data_in[5]),
        .Q(data_out[53]),
        .R(1'b0));
  FDRE \vector_s_reg[6][6] 
       (.C(clk),
        .CE(\vector_s_reg[6]__0_n_0 ),
        .D(data_in[6]),
        .Q(data_out[54]),
        .R(1'b0));
  FDRE \vector_s_reg[6][7] 
       (.C(clk),
        .CE(\vector_s_reg[6]__0_n_0 ),
        .D(data_in[7]),
        .Q(data_out[55]),
        .R(1'b0));
  LUT4 #(
    .INIT(16'h1000)) 
    \vector_s_reg[6]__0 
       (.I0(address[3]),
        .I1(address[0]),
        .I2(address[1]),
        .I3(address[2]),
        .O(\vector_s_reg[6]__0_n_0 ));
  FDRE \vector_s_reg[7][0] 
       (.C(clk),
        .CE(\vector_s[7][7]_i_1_n_0 ),
        .D(data_in[0]),
        .Q(data_out[56]),
        .R(1'b0));
  FDRE \vector_s_reg[7][1] 
       (.C(clk),
        .CE(\vector_s[7][7]_i_1_n_0 ),
        .D(data_in[1]),
        .Q(data_out[57]),
        .R(1'b0));
  FDRE \vector_s_reg[7][2] 
       (.C(clk),
        .CE(\vector_s[7][7]_i_1_n_0 ),
        .D(data_in[2]),
        .Q(data_out[58]),
        .R(1'b0));
  FDRE \vector_s_reg[7][3] 
       (.C(clk),
        .CE(\vector_s[7][7]_i_1_n_0 ),
        .D(data_in[3]),
        .Q(data_out[59]),
        .R(1'b0));
  FDRE \vector_s_reg[7][4] 
       (.C(clk),
        .CE(\vector_s[7][7]_i_1_n_0 ),
        .D(data_in[4]),
        .Q(data_out[60]),
        .R(1'b0));
  FDRE \vector_s_reg[7][5] 
       (.C(clk),
        .CE(\vector_s[7][7]_i_1_n_0 ),
        .D(data_in[5]),
        .Q(data_out[61]),
        .R(1'b0));
  FDRE \vector_s_reg[7][6] 
       (.C(clk),
        .CE(\vector_s[7][7]_i_1_n_0 ),
        .D(data_in[6]),
        .Q(data_out[62]),
        .R(1'b0));
  FDRE \vector_s_reg[7][7] 
       (.C(clk),
        .CE(\vector_s[7][7]_i_1_n_0 ),
        .D(data_in[7]),
        .Q(data_out[63]),
        .R(1'b0));
  FDRE \vector_s_reg[8][0] 
       (.C(clk),
        .CE(\vector_s[8][7]_i_1_n_0 ),
        .D(data_in[0]),
        .Q(data_out[64]),
        .R(1'b0));
  FDRE \vector_s_reg[8][1] 
       (.C(clk),
        .CE(\vector_s[8][7]_i_1_n_0 ),
        .D(data_in[1]),
        .Q(data_out[65]),
        .R(1'b0));
  FDRE \vector_s_reg[8][2] 
       (.C(clk),
        .CE(\vector_s[8][7]_i_1_n_0 ),
        .D(data_in[2]),
        .Q(data_out[66]),
        .R(1'b0));
  FDRE \vector_s_reg[8][3] 
       (.C(clk),
        .CE(\vector_s[8][7]_i_1_n_0 ),
        .D(data_in[3]),
        .Q(data_out[67]),
        .R(1'b0));
  FDRE \vector_s_reg[8][4] 
       (.C(clk),
        .CE(\vector_s[8][7]_i_1_n_0 ),
        .D(data_in[4]),
        .Q(data_out[68]),
        .R(1'b0));
  FDRE \vector_s_reg[8][5] 
       (.C(clk),
        .CE(\vector_s[8][7]_i_1_n_0 ),
        .D(data_in[5]),
        .Q(data_out[69]),
        .R(1'b0));
  FDRE \vector_s_reg[8][6] 
       (.C(clk),
        .CE(\vector_s[8][7]_i_1_n_0 ),
        .D(data_in[6]),
        .Q(data_out[70]),
        .R(1'b0));
  FDRE \vector_s_reg[8][7] 
       (.C(clk),
        .CE(\vector_s[8][7]_i_1_n_0 ),
        .D(data_in[7]),
        .Q(data_out[71]),
        .R(1'b0));
  FDRE \vector_s_reg[9][0] 
       (.C(clk),
        .CE(\vector_s[9][7]_i_1_n_0 ),
        .D(data_in[0]),
        .Q(data_out[72]),
        .R(1'b0));
  FDRE \vector_s_reg[9][1] 
       (.C(clk),
        .CE(\vector_s[9][7]_i_1_n_0 ),
        .D(data_in[1]),
        .Q(data_out[73]),
        .R(1'b0));
  FDRE \vector_s_reg[9][2] 
       (.C(clk),
        .CE(\vector_s[9][7]_i_1_n_0 ),
        .D(data_in[2]),
        .Q(data_out[74]),
        .R(1'b0));
  FDRE \vector_s_reg[9][3] 
       (.C(clk),
        .CE(\vector_s[9][7]_i_1_n_0 ),
        .D(data_in[3]),
        .Q(data_out[75]),
        .R(1'b0));
  FDRE \vector_s_reg[9][4] 
       (.C(clk),
        .CE(\vector_s[9][7]_i_1_n_0 ),
        .D(data_in[4]),
        .Q(data_out[76]),
        .R(1'b0));
  FDRE \vector_s_reg[9][5] 
       (.C(clk),
        .CE(\vector_s[9][7]_i_1_n_0 ),
        .D(data_in[5]),
        .Q(data_out[77]),
        .R(1'b0));
  FDRE \vector_s_reg[9][6] 
       (.C(clk),
        .CE(\vector_s[9][7]_i_1_n_0 ),
        .D(data_in[6]),
        .Q(data_out[78]),
        .R(1'b0));
  FDRE \vector_s_reg[9][7] 
       (.C(clk),
        .CE(\vector_s[9][7]_i_1_n_0 ),
        .D(data_in[7]),
        .Q(data_out[79]),
        .R(1'b0));
endmodule

(* CHECK_LICENSE_TYPE = "ex7_top_concat_memory_0_0,concat_memory,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "concat_memory,Vivado 2016.4" *) 
(* NotValidForBitStream *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix
   (clk,
    data_in,
    address,
    data_out);
  (* x_interface_info = "xilinx.com:signal:clock:1.0 clk CLK" *) input clk;
  input [7:0]data_in;
  output [3:0]address;
  output [127:0]data_out;

  wire [3:0]address;
  wire clk;
  wire [7:0]data_in;
  wire [127:0]data_out;

  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_concat_memory U0
       (.address(address),
        .clk(clk),
        .data_in(data_in),
        .data_out(data_out));
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
