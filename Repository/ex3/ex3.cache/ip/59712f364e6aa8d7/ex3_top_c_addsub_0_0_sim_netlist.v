// Copyright 1986-2016 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2016.4 (win64) Build 1756540 Mon Jan 23 19:11:23 MST 2017
// Date        : Tue Apr 04 19:20:20 2017
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
DHtpM+C4PubJIoVx5rVGScceAZtQVnxtdWLkSs2HaSAj3PqvmEpTJui9Bdsgb9Q5trdYnoJmxtpj
Nuuu5B6zPrY813UpOIa0RILm4BaTuweorZKMpTl6tGAaEHtEZNLjbRT2pkf4ptHmLPr2tzqoNKT1
QGtv0gKqiuYkSlnqTyxnFtFHgFJ4yk9eaqaOrTuWlGe3EFvFYAXxlMcp+4WV75IeWs6y/cvHtp5k
Z1RCzIl9C/7MjbBdxCK41gRLnq/fM3JcjA+91Tp3dtKqnUuJ/2HuzsOn43wiDcp7pUQTdk2v/nae
IZH6e54lGFuVbnwrhQxhwfNdRqbfB5yLbZteMA==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP05_001", key_method="rsa"
`pragma protect encoding = (enctype="base64", line_length=76, bytes=256)
`pragma protect key_block
cGssY9rMsWJbFMEqIv9FOHXf8ZgNDRqmtGmEXYtJnrmQMRzIXk4Su59ZGnw/+fGkaVL8X/4ODFv+
hNwhw4Lj006KbZH/cxJCckKsfYFMo9bbS8yB+FDaghlWM1clu+Y0YyGCz0LK7HLcbLjzZrdDoyFt
baiR9vV6EvuMfUbwhD9bv0yc7tFOxhspXdscLCYK2914+8t5eDmgrJIysoILpcwdVL4jnXp5YZsw
rMYOKmElyP4IU6I3fAedmmpgyVP2iCXn3EBp9V/yskjs8eqPw6C3j7cBPgvgKzpiL+QZ/EQH4iEv
VbqEvXsEm0A4IXI6hwYIq7vGtxtA+TGC9TQQCQ==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 3600)
`pragma protect data_block
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
CVrEfFtfJyoP
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
