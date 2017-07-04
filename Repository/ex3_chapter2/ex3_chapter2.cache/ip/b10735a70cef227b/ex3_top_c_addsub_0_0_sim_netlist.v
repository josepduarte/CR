// Copyright 1986-2016 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2016.4 (win64) Build 1756540 Mon Jan 23 19:11:23 MST 2017
// Date        : Tue Apr 04 19:53:14 2017
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
  (* c_b_value = "0010" *) 
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
(* C_B_CONSTANT = "1" *) (* C_B_TYPE = "0" *) (* C_B_VALUE = "0010" *) 
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
  (* c_b_value = "0010" *) 
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
cUxETHjLOGsnRsY/coDInxbZcUgeDkd+YSu4umvIK2gNFxmzESYd9lBK+5pJZ5Q8HzYTYghFLRgL
NfCmLZlZNEcCspzuwSh3ziG+9GOswiA6yJ28PMgVW8tD8eqUyBoetPN0mBDdnAZC1I5IILNtRnFQ
a09ezRkxeWxR1DFO5nZW4BkrJpX4iBw7QEclObZSmOlFW97HPwYurymeP6bZ8PkypwoqYNZmWc8d
DpdAmwPwIv1oNfK0WtMTpyTtRpTrXL03pylx90UTID0qpZI/FF2WRyPiLqAaRDz8MeJ/02iimGgq
mFSAP8U4TOf260QcfADsGHjpClREdkLR1Gm7Ng==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP05_001", key_method="rsa"
`pragma protect encoding = (enctype="base64", line_length=76, bytes=256)
`pragma protect key_block
pcvhctNtndTwwR06v+2gOH8bqhmp2Jyj3Hvt1GhdKsyzv1mQ8ZdEooH4QvegUeOzUS0+V9UK+YaY
VYZPPE2JgVPIScWy91uYe84yYCtcBb5rouxg1kL5kQ0YeuzjikDUHlnnlhlA4AvF/6OXYMUjGyEw
e+PrBN3RgjaazJfrs0sSRYHBAZlz7uD4BW1qticgpGSLypRgPDmr7ZOFB6r3UPtZjfsiE6VvPthH
LDFiyPYmmCPb7eY7VKxavopkw/8X4bcvxuP5EylQTBV0DUVRzChhlfI8Q/w1HAAj5G2/FBa0M3hw
gAnFeKOtHSWXpxoxYaj4zY9M1HkuPuuCn/SFnw==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 3296)
`pragma protect data_block
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
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
