// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2022.1 (win64) Build 3526262 Mon Apr 18 15:48:16 MDT 2022
// Date        : Mon Sep 26 11:47:42 2022
// Host        : DESKTOP-0KTBA50 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ dist_mem_gen_3_sim_netlist.v
// Design      : dist_mem_gen_3
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a100tcsg324-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "dist_mem_gen_3,dist_mem_gen_v8_0_13,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "dist_mem_gen_v8_0_13,Vivado 2022.1" *) 
(* NotValidForBitStream *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix
   (a,
    d,
    clk,
    we,
    spo);
  input [5:0]a;
  input [15:0]d;
  input clk;
  input we;
  output [15:0]spo;

  wire [5:0]a;
  wire clk;
  wire [15:0]d;
  wire [15:0]spo;
  wire we;
  wire [15:0]NLW_U0_dpo_UNCONNECTED;
  wire [15:0]NLW_U0_qdpo_UNCONNECTED;
  wire [15:0]NLW_U0_qspo_UNCONNECTED;

  (* C_FAMILY = "artix7" *) 
  (* C_HAS_CLK = "1" *) 
  (* C_HAS_D = "1" *) 
  (* C_HAS_DPO = "0" *) 
  (* C_HAS_DPRA = "0" *) 
  (* C_HAS_QDPO = "0" *) 
  (* C_HAS_QDPO_CE = "0" *) 
  (* C_HAS_QDPO_CLK = "0" *) 
  (* C_HAS_QDPO_RST = "0" *) 
  (* C_HAS_QDPO_SRST = "0" *) 
  (* C_HAS_WE = "1" *) 
  (* C_MEM_TYPE = "1" *) 
  (* C_QCE_JOINED = "0" *) 
  (* C_REG_DPRA_INPUT = "0" *) 
  (* c_addr_width = "6" *) 
  (* c_default_data = "0" *) 
  (* c_depth = "64" *) 
  (* c_elaboration_dir = "./" *) 
  (* c_has_i_ce = "0" *) 
  (* c_has_qspo = "0" *) 
  (* c_has_qspo_ce = "0" *) 
  (* c_has_qspo_rst = "0" *) 
  (* c_has_qspo_srst = "0" *) 
  (* c_has_spo = "1" *) 
  (* c_mem_init_file = "dist_mem_gen_3.mif" *) 
  (* c_parser_type = "1" *) 
  (* c_pipeline_stages = "0" *) 
  (* c_qualify_we = "0" *) 
  (* c_read_mif = "1" *) 
  (* c_reg_a_d_inputs = "0" *) 
  (* c_sync_enable = "1" *) 
  (* c_width = "16" *) 
  (* is_du_within_envelope = "true" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_dist_mem_gen_v8_0_13 U0
       (.a(a),
        .clk(clk),
        .d(d),
        .dpo(NLW_U0_dpo_UNCONNECTED[15:0]),
        .dpra({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .i_ce(1'b1),
        .qdpo(NLW_U0_qdpo_UNCONNECTED[15:0]),
        .qdpo_ce(1'b1),
        .qdpo_clk(1'b0),
        .qdpo_rst(1'b0),
        .qdpo_srst(1'b0),
        .qspo(NLW_U0_qspo_UNCONNECTED[15:0]),
        .qspo_ce(1'b1),
        .qspo_rst(1'b0),
        .qspo_srst(1'b0),
        .spo(spo),
        .we(we));
endmodule
`pragma protect begin_protected
`pragma protect version = 1
`pragma protect encrypt_agent = "XILINX"
`pragma protect encrypt_agent_info = "Xilinx Encryption Tool 2022.1"
`pragma protect key_keyowner="Synopsys", key_keyname="SNPS-VCS-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
V8j9uZAuTSdcU7d37hOuvR2eN4+hJE0SQi3782LtikYHlIhlhzzBECcQ3wckATmgIOfJCCVEoeRA
ZabxUB0jmkGFcM25pS42us4l8Jw3tzYXg8dRkvx7VRPHyWH9wXwUgy0qFUIqbS1K3ToC2ti3Bihe
SaejkALX/yf7GEmQSeg=

`pragma protect key_keyowner="Aldec", key_keyname="ALDEC15_001", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
KjnLJu4SYrpE4qQx0FJobDTHe2g5+n+Q6FObiGTKe0NVy1wB7V+KEJqc+r2xjpEXlquV87+TrOgr
yoeXvSYsOmh/oNv+5lpsb/kdhT5EljdkfqI4rTDdogwIRbF5iSu9dp/2OtVr+nC6QYGDI0YDgcO7
4kn8ghnBESoln4PERbuzfTfbc58lo6Gq5qv7TMTjDZMRiN0CUTCuYzVqRTCRXkgTDhosefVDs6Up
pB5jZ9devajNCsz9yQIQtxvuN9tXVWeuRueNFB14r4rYY7F5/otmDqvKgCWwEXtKqVQNj5hQkSFz
YWx96euGqafcGtIs2W0H2QMov0vrSxi2Wndlrw==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VELOCE-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
YO2SS3ozlen3bngSMDbc88mazzkono7nFrse2QdBdhm7cHsDiCLJl1u/2ZwIFv3QeEbCn5u5q8hG
TDNHI8nZRuskZLs0BXqig7uplAiktBJEN0l0ei2ciUax4iVnRtCVKfn/M+BUZj+banPiWp9Kpdml
VOrMoFqIXebJq184IVY=

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VERIF-SIM-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
eDqyXO8M8wAUlkNysOtmW3Ag3h1qUc1ksEfo85mvU5cMYdCjRVYz6OacttNeARjho7fIzXtgtHAi
s4cOsFuah18hkHlPDbWnJcyaBoN1UC3zH5Sq356+JnD/+tnBnq5OlU7W8OrboEfK03go6Zxe/y0y
s5Nz5MFYMngLELHz4vZOYoOsO0xFsbio7vDtFzbgvpvZVLhKvQGtVdJsfIEkBd5elE4tTaYSPadU
6/cHnyXVTNeuDPFYqkX5j61R1m3f4zfnkdWn8CSZWYouhfpOaV32Tgk2834g6THkeV44U6Kee28f
2zM3Vl2Xrsa0SP/3vltYwvfGU5mZYQWr7lVJMg==

`pragma protect key_keyowner="Real Intent", key_keyname="RI-RSA-KEY-1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
aoJHr9XKFogp3jqb6pnOP1SMdRNgax7PRBVL5oP9u6EBjCyOxasIjony/C5q5NGBilztG19Wtj7R
pSXqIdzborswgHUyJ9bwF4lzJzoJcmlMej18+z1Jpel6fGTc/j055Fdrvxf8H5B0py0ynW0+fDNZ
zPhFWIdVVbPKObUsbSrAF28VEEdjfIanMWusQBga1WgtIzzlY2O5qHroTYp5swOjX4CzofsxuVN6
zxftYABV04wUN095K7HOK1DJ7TAXkfdSXbtZi/YpdsedZqTNxXRNCMIadoaueO+BVfk1QA6R8ep1
QEt/eDqhzxImaL/W5zdRu4iR3rKrxE66765F1g==

`pragma protect key_keyowner="Xilinx", key_keyname="xilinxt_2021_07", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
CgtzskH+mzmGEWqd7KptSOOtqVwPm0tHLX1SSP1oz9rDkV9s3RKi69fpV8a1hfcU7tArjCYftqG0
OvBq65dZs3YMQA33i9lNugkOFd4s4mWuu5Jl7VeYn+9Rbn9WpXfIZp2ZhSebC7u4L3PU9Z/nt268
TK5LXHg27h+Dh/nfSuPBuUJcCfpFrpuNqXFqczDxXmwttNzz/5sbeoeBrELv9ua1vTrye7Ej9hF+
MotLlCmiWkkXoEFD9pgzAoLciXYvcnbqinUVZBh3f4F63hp3dnaF1XRU6BQXb07O2YWHsXMlKNt4
dK69u70ApIkoibr/gnLIZpYXk2Aw8SUE6s7f8g==

`pragma protect key_keyowner="Metrics Technologies Inc.", key_keyname="DSim", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
qsF9lZxi/zzJVv67MO9pgWqGUstJe9URVdS4Sv0uoJrhh2rTsivGGCvajhVD4t887objCstZgTrr
GYoUVZ6+g5Wc50Y2H3Lujxr2ttPiAVBcqys8TNKzDd+sqqU9enMiC6oiNqRB47MmOChOBEVYG9po
MWBfSEOoqO1Bo4apr1ti7erpbZIS+vDEvNVBAffYTcjwMJo0YqVrHdgptBq2+soaNLYmiqaRp4+L
E+a1aCRpXco//ur2pwZKefYRj1Pbc3mGa0Db2EKTgzYxLCUc2Ni0MogHDl9nRduLW5okZXPYINE9
ZEibZH4ij3dCb5HI1YitvIlSsbwkthlrTRuwrA==

`pragma protect key_keyowner="Atrenta", key_keyname="ATR-SG-RSA-1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=384)
`pragma protect key_block
Kfvr9uGICBYg+bSLCIkImscNd/d6O5EKsn3LkkEE5OLapxJgQzKOiesn0Ix7C0xi1lWmgjVDszTB
1+4PlhsdxFh2+tLaWEL5PS8Y+wY+Z6QWup4F/pHxKClIEvUeQqoxvy/4LamzYL84Lk6M8riHxELU
+UIySMpujDpmvesYeJcr8406Ky08tXu2ZYhzpI7ssAdevE5a5sv9uGOIE8SIM7hMSJnH+kDqv2XV
DCjIB/nPCxYZc0dpsQlckrpVRPSgn2XaJLX/gv1m3TBeoBxFtKK5IcQEbprjnUtdBRAJSECHzJ99
klwM9H7sQ3olqvcqMgxh7KtmwR1Pk7/BfETOzoythUHTo20xnhDaqT37g+zkKDOX/KMPxPP/+8Mf
v3C54uoO1KJz8iInxtwwu0Gkg+jGF77lLMNhR/s8ZQa0xupnEtjRd7L1H5D1xGuzhnimxL6oJ4lM
f3ToIlUmMffRPBpCLpWb6aeZZQyBMi3q/mdNpJxSTW5p99Bkt8UAcy2n

`pragma protect key_keyowner="Cadence Design Systems.", key_keyname="CDS_RSA_KEY_VER_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
kfapcdMik5+2iWCupVkPJLH/966AXOp3PqrBkJuAdqp3INTQeZICoWcyWImOR+Fnd1UbR5M8rJYw
R8Cjv4QYkt8kMqp/W6ZkPKauqc/dV4hHTgNjWmaDEPaIWvhXyVCARs6Kkc1XM9Id1BraWss872xt
GalXd7JXwJwOrBSKRYIZJMAvcqANDFyws1jlxEcuCKaxlT77kayjELqOewDOTN89nkTaPS80mBry
uUoplb7zOYXDvaWu/iVZ/BC1Iq5miXVcNAHb14TeyqXWwAsSVLeUJgrmOaKabKq2FRh66iEmv9wR
IeDmDHY40ooDpK1V7CDq6vBkUhnIeEQ3uiDy7Q==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 16384)
`pragma protect data_block
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
AkTEwr/Za6O+vSuqomG+iGmCjRwq447bfQ==
`pragma protect end_protected
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;
    parameter GRES_WIDTH = 10000;
    parameter GRES_START = 10000;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    wire GRESTORE;
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
    reg GRESTORE_int;

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

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;
    assign (strong1, weak0) GRESTORE = GRESTORE_int;

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

    initial begin 
	GRESTORE_int = 1'b0;
	#(GRES_START);
	GRESTORE_int = 1'b1;
	#(GRES_WIDTH);
	GRESTORE_int = 1'b0;
    end

endmodule
`endif
