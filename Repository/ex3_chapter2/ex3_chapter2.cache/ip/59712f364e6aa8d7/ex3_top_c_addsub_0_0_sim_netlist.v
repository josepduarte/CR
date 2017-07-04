// Copyright 1986-2016 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2016.4 (win64) Build 1756540 Mon Jan 23 19:11:23 MST 2017
// Date        : Tue Apr 04 19:36:35 2017
// Host        : Inator running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ ex3_top_c_addsub_0_0_sim_netlist.v
// Design      : ex3_top_c_addsub_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a100tcsg324-3
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "ex3_top_c_addsub_0_0,c_addsub_v12_0_10,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "c_addsub_v12_0_10,Vivado 2016.4" *) 
(* NotValidForBitStream *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix
   (A,
    S);
  (* x_interface_info = "xilinx.com:signal:data:1.0 a_intf DATA" *) input [3:0]A;
  (* x_interface_info = "xilinx.com:signal:data:1.0 s_intf DATA" *) output [3:0]S;

  wire [3:0]A;
  wire [3:0]S;
  wire NLW_U0_C_OUT_UNCONNECTED;

  (* C_BORROW_LOW = "1" *) 
  (* C_CE_OVERRIDES_BYPASS = "1" *) 
  (* C_CE_OVERRIDES_SCLR = "0" *) 
  (* C_IMPLEMENTATION = "0" *) 
  (* C_SCLR_OVERRIDES_SSET = "1" *) 
  (* C_VERBOSITY = "0" *) 
  (* C_XDEVICEFAMILY = "artix7" *) 
  (* c_a_type = "0" *) 
  (* c_a_width = "4" *) 
  (* c_add_mode = "1" *) 
  (* c_ainit_val = "0" *) 
  (* c_b_constant = "1" *) 
  (* c_b_type = "0" *) 
  (* c_b_value = "0000" *) 
  (* c_b_width = "4" *) 
  (* c_bypass_low = "0" *) 
  (* c_has_bypass = "0" *) 
  (* c_has_c_in = "0" *) 
  (* c_has_c_out = "0" *) 
  (* c_has_ce = "0" *) 
  (* c_has_sclr = "0" *) 
  (* c_has_sinit = "0" *) 
  (* c_has_sset = "0" *) 
  (* c_latency = "0" *) 
  (* c_out_width = "4" *) 
  (* c_sinit_val = "0" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_c_addsub_v12_0_10 U0
       (.A(A),
        .ADD(1'b1),
        .B({1'b0,1'b0,1'b0,1'b0}),
        .BYPASS(1'b0),
        .CE(1'b1),
        .CLK(1'b0),
        .C_IN(1'b0),
        .C_OUT(NLW_U0_C_OUT_UNCONNECTED),
        .S(S),
        .SCLR(1'b0),
        .SINIT(1'b0),
        .SSET(1'b0));
endmodule

(* C_ADD_MODE = "1" *) (* C_AINIT_VAL = "0" *) (* C_A_TYPE = "0" *) 
(* C_A_WIDTH = "4" *) (* C_BORROW_LOW = "1" *) (* C_BYPASS_LOW = "0" *) 
(* C_B_CONSTANT = "1" *) (* C_B_TYPE = "0" *) (* C_B_VALUE = "0000" *) 
(* C_B_WIDTH = "4" *) (* C_CE_OVERRIDES_BYPASS = "1" *) (* C_CE_OVERRIDES_SCLR = "0" *) 
(* C_HAS_BYPASS = "0" *) (* C_HAS_CE = "0" *) (* C_HAS_C_IN = "0" *) 
(* C_HAS_C_OUT = "0" *) (* C_HAS_SCLR = "0" *) (* C_HAS_SINIT = "0" *) 
(* C_HAS_SSET = "0" *) (* C_IMPLEMENTATION = "0" *) (* C_LATENCY = "0" *) 
(* C_OUT_WIDTH = "4" *) (* C_SCLR_OVERRIDES_SSET = "1" *) (* C_SINIT_VAL = "0" *) 
(* C_VERBOSITY = "0" *) (* C_XDEVICEFAMILY = "artix7" *) (* downgradeipidentifiedwarnings = "yes" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_c_addsub_v12_0_10
   (A,
    B,
    CLK,
    ADD,
    C_IN,
    CE,
    BYPASS,
    SCLR,
    SSET,
    SINIT,
    C_OUT,
    S);
  input [3:0]A;
  input [3:0]B;
  input CLK;
  input ADD;
  input C_IN;
  input CE;
  input BYPASS;
  input SCLR;
  input SSET;
  input SINIT;
  output C_OUT;
  output [3:0]S;

  wire \<const0> ;
  wire [3:0]A;
  wire [3:0]S;
  wire NLW_xst_addsub_C_OUT_UNCONNECTED;

  assign C_OUT = \<const0> ;
  GND GND
       (.G(\<const0> ));
  (* C_BORROW_LOW = "1" *) 
  (* C_CE_OVERRIDES_BYPASS = "1" *) 
  (* C_CE_OVERRIDES_SCLR = "0" *) 
  (* C_IMPLEMENTATION = "0" *) 
  (* C_SCLR_OVERRIDES_SSET = "1" *) 
  (* C_VERBOSITY = "0" *) 
  (* C_XDEVICEFAMILY = "artix7" *) 
  (* c_a_type = "0" *) 
  (* c_a_width = "4" *) 
  (* c_add_mode = "1" *) 
  (* c_ainit_val = "0" *) 
  (* c_b_constant = "1" *) 
  (* c_b_type = "0" *) 
  (* c_b_value = "0000" *) 
  (* c_b_width = "4" *) 
  (* c_bypass_low = "0" *) 
  (* c_has_bypass = "0" *) 
  (* c_has_c_in = "0" *) 
  (* c_has_c_out = "0" *) 
  (* c_has_ce = "0" *) 
  (* c_has_sclr = "0" *) 
  (* c_has_sinit = "0" *) 
  (* c_has_sset = "0" *) 
  (* c_latency = "0" *) 
  (* c_out_width = "4" *) 
  (* c_sinit_val = "0" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_c_addsub_v12_0_10_viv xst_addsub
       (.A(A),
        .ADD(1'b0),
        .B({1'b0,1'b0,1'b0,1'b0}),
        .BYPASS(1'b0),
        .CE(1'b0),
        .CLK(1'b0),
        .C_IN(1'b0),
        .C_OUT(NLW_xst_addsub_C_OUT_UNCONNECTED),
        .S(S),
        .SCLR(1'b0),
        .SINIT(1'b0),
        .SSET(1'b0));
endmodule
`pragma protect begin_protected
`pragma protect version = 1
`pragma protect encrypt_agent = "XILINX"
`pragma protect encrypt_agent_info = "Xilinx Encryption Tool 2015"
`pragma protect key_keyowner="Cadence Design Systems.", key_keyname="cds_rsa_key", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=64)
`pragma protect key_block
fgcHMpDB8YeTXYpoTsmWZ+EpGtmp4ttE4rhLnGC39GZlQ/zJoTz5jsPoaLlJ4UWaOu8wsqCjidiH
ybd7UHh7Iw==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VERIF-SIM-RSA-1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
Ce9yJwkNvACWlmAFVwVRYhOdCIZZzBisSiZXBvx+NUYf+lxZv1vyZmKRIRYhYQFaRqRT7XkpC1Ec
t+dZjN7MGpN15tip1+lCNk6nbQTIhD1RPmDELP6pl456iOpiQ/ZN6oyRQX4m6uADI4VCap54SPA7
xDAZ2Ihv8VRQzQqKu2s=

`pragma protect key_keyowner="Synopsys", key_keyname="SNPS-VCS-RSA-1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
yzmtZb9/BZ4O/Gzgyl5TFGS/WtQ6cUQXqy/uOVfW7wlrbPwEqT6tWciKofSv+CyJbJIVPzK8DKFI
WQJqQsaQvwHoiKvvvszZkqgvpH3DwEqS4ynnWHOJwHB19GcoOlPWiy5xKdCVGPEiN2a3E1iFT033
EH5wjBAeJPtvdeyOkLI=

`pragma protect key_keyowner="Aldec", key_keyname="ALDEC15_001", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
CczA2H+PI5anFc9KY7UKsIXFVNBdxrwuLyvm1R1kZm0IbddJ4LwKIbI7KyLLLLbAYBBP7wxcLmqe
F9t3HL4MVpwq4k/EpCH4FZDSvMDxPR4bzVAo6o1yJxQXLW3+NZAmPCzXZqtSSPYLsiDU+W9GQY7+
1HWJeXGRV4YcEBFMrw/6x47O9rznZwcpvN7ClnZOjFMV6qkda3BftQcnNwgtp2N+BsKgboXbAHKV
zExUhY74xU/ifF/nfy2HapVTvKKx6cjozDkWbYKX6BcnoM4cdYRte+0OO03Cf6J1WNNEdLgK4TLC
xfJwAliutWUOQcBc87pWvMgPIGLJ8vlUAFdzRw==

`pragma protect key_keyowner="ATRENTA", key_keyname="ATR-SG-2015-RSA-3", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
XUGyGZ3f6ddj79v8VJz6tFeEU1K7Q7eXpxBZjIxiM9EM6yeIzUyNcfTtjPmDnlZ+RUHPbdJfKXo/
vqrH8/IP17g81z0rmYCYrrLWAiXXZVnF33Sby5XqXm99P3kbjtJRUqQHubpP9lxi/BwNEM2b+PmB
MKEcRy3QhkDyijUSVDevumkng5ROIwALCPIoFsnDOvu87+q48wG4+JVioc576FSFqZ3zKH+xln5a
0tGbwFbo8dlg6OZgf95UN2jhgacGA/kl7qJB8Iq/75yAi5qhWYQjCPA9zQ2g0VZuIoCqrY5Pz1/d
5FX25JIJkfhGP0833RpKbY6Iszo7lIM1Sha3sw==

`pragma protect key_keyowner="Xilinx", key_keyname="xilinx_2016_05", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
sY1OhSYlEri9JAkBv9M84SAJcAs2KDpaHeB2dfqS3s74ysd3frt6CyyFk6hNda0+culDUsAjRUVs
x11BMQ4Oo7lonjFlIt6y+8rL2UDn4GB+aEZFgEeAaV6hVtqs+l5mrUc4tqz0ovbu6bKxjVkhrpr9
3LZPe0AWv46dj3Mj7RdMEOaFBpgrDS7uox/mmIiEy3WXfqMlwahcqdRCOkGRbxZDtQPSXfHTdMia
rbflvAE/8GSkcXysduuffU6QTMADbxxBxy1skDfog0aCf/7pXE/cMgAqJn0d/nI9LN6/w/OjZCaV
itzFnyqX9yNrnz11rwDQtSNe9wLD5gUpgOeQrQ==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-PREC-RSA", key_method="rsa"
`pragma protect encoding = (enctype="base64", line_length=76, bytes=256)
`pragma protect key_block
EhujFQSDMP+bTLxvpzCNM/59oHQPagjkjmkTSTOsVTTShp86vEPtejpRMv+v4u+jXTmrOD89x0gV
2LRd9KkNt56yj/LbiERs2ZllJNHePsl8QZjP6zzRYgZBPOMoKY/H6S+Nyq6QgxjX+fduVFSEGvOY
J51St56d9u4cevh5iADpHnThKu9pHd77cRq/JENP6DJjqZy3LzkmuCcDI2khT51aXidfckrALQ8X
8Hk+QXjT6Yvz6iOnWs9bPMnyihRl0ut6riZahJRNmiqYnJuAfwciAJtZwKK4QIXNgaV2/wyaPZwR
bBHhJbpwu7G1wYnKzaiw2b+EB8TbfIifzhNXow==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP05_001", key_method="rsa"
`pragma protect encoding = (enctype="base64", line_length=76, bytes=256)
`pragma protect key_block
oJGQKuF2Uz2etPz16RyZqo55buLILsRc2Oon+MbjiIIsPGIk1I2nhnUQBNquMmg8Myv2NIkdLE8g
Zj0ho7RZhwkE/pYWSJf03aCFPIiVbdfum8fQQKrJgomebbV+NSDUDQhMSVcX/NPCZpkJ5dekJHLF
Em0k/0YkDFla59PO/KCdCwXAaqFhcCYU7QlDQqtQ6CLsmcsTr5pwx3Ke7adVFSe9y2TyYK03NUyl
Z2N8MdV46tMUr0CIw1Yk+FOhDbHnuEidsOh0l9oMQjxEHVOxupDYx73zkgmVqwtV00vhvop3RKEF
Mb9uTL/QbKfw8rL6oO8zJYoGbxbUyuEnTyTG8w==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 3600)
`pragma protect data_block
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
h2qLmpxUkBpX
`pragma protect end_protected
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
