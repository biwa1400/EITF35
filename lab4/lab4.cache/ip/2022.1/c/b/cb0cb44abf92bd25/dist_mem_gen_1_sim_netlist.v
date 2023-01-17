// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2022.1 (win64) Build 3526262 Mon Apr 18 15:48:16 MDT 2022
// Date        : Mon Sep 26 11:47:01 2022
// Host        : DESKTOP-0KTBA50 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ dist_mem_gen_1_sim_netlist.v
// Design      : dist_mem_gen_1
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a100tcsg324-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "dist_mem_gen_1,dist_mem_gen_v8_0_13,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "dist_mem_gen_v8_0_13,Vivado 2022.1" *) 
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
  (* c_mem_init_file = "dist_mem_gen_1.mif" *) 
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
7mJXLsGDgI0EdoiHrsTRgjKFo2ht1ZVMee/sft6XseURGWItLc5vLeaGz6GHmcPv8MJX6v1nf1oR
x6SNKq04QsXdq+WIShAz7evTeNj3Mv8+5OWeabZ7mDq1+Vmnuvqnxp3f7xCmhrOhqV96OmfWlLl8
5w6ypUpBbcauw9Lfc+kwms+rTigK1wxp7Pkm52xZ/i1GuPKdZsQR4YyxPRA9Cs+Ug1GPlU+nYIqw
X1ifrcwWBZ7l2We4haJgEqkiTZhqaoNgp2jqy7m3Ewwjo8IugGizB1+Zug3Jfgz55wjUAgk4Goye
vmdtjTP44BoX8E9APNaqtxIYL5EDBAEANCTtViuxdkKlWC8KChecosG/QVBhYnfhzJCOsbqotXp4
tce0i7tzUkADaNhP3I+yJsoeSap1r9qW0OSNjz2d/EnWt94xapaJil9rpEpNp0qGQGzmMZYNsvCg
B3GJjz8WmdRiVdHTjvBT2iTiCf1mfLIAPnUU2rDOdK8Z69lTG7/8Gug9fRBHs5ezzKlvLLTnmCB+
W9zTAWfsTpvn/lb5qCCb/zeK5r3ha7cTjOtRBxiWV/RS1nkoNzkse/hyviZwPLsGeq9+dThS9GP+
85Uji9dar5n/oQm+u1QYJ+XWtIySVPV0ds5DzCdDA6Ktt/XU7L3R213354X+9uWq11yiAoQIxvFd
zlcHak1EWiproqKSIEJhBBNv7SoFJtk/05w4op0XSvrkn9htULQiWx4ClAAJOT5k8P/K+4MHWjGI
Eq86CqTTI222Jrk/mKXjW6qGqqtawFt6U3VCAtSn6nH6releDYgAgi+OmqlEYFiF4FeWYQH1Keus
FxbfD/n1ZConadOzvpFUHpaiCmNGP2PnXv1aSxqvsty6dXQ/1JZ7LN6wGMkGPhX7Giw48+hPNuzZ
Kllt9lg69VQ1qQ0vPsSxKSSwhtp0o6wiIACFU1asaMxG0S8ZaQvrhiIqSpplaHDL7WgcWtqofiiV
RwrS1u8DtCvNdsXqqMdh7szKiVxHSEGf4IVExmqJNUdw5RnjL4JMifXFTebn3HoioG75HxUUAz+W
9x4bWsqeleXtN0Z1j9J5yW6/vTUCMGJjw4sOYBPa7JBo/weoE2i743JvqDrD/+qbv71iJ+oDACqW
2qQgNoVrb887mdqS5K8kjk+c+nrzFuFFqLl2aWpL3thyzrFOaiQNeucWuHhvCmtyS69YmYpfJT0x
QKOswH54I/4KWb2BAr9rl4Zc3GPZm5MgsYZjCCYSEiYLAcNVER+4yjWOZD9dqmAdJ/J0waAPVASf
2nSgmKERAy+1SWORavCMXwwXcLxA9Dvg/gmHayhHfCmzK+YOK5E+klxXb4CasL97I/WuqVYrUMPh
yPcFeSPuLxnIfn4vAz6A3PvNmRnOy6fzl4Qp134PGatSD5ChQTb+S2EMmXflCSV7bsMuiOPwzYNK
uuYOfAzC06jM8HoOp9v4vqYI9JMTxCbbKIFZhBHlcVNXtDPqAfUQ94/2z5G903PKapiOuf7Uyqgo
zNcY6f4494jGyZoh9i0nk1n/4q2+BJ+gLywn5TXKdW489wtMjuIixf8l7tXUUh/Pvdp567vUMcE3
k3itPUeo3mV/LG1sTswhPVTaS3r4KZAg+UtvZEZvbl5OUUI8bcXOrJbxw/5pYH+La/NkiqOZritr
lQJeIy5df90LC1/1daPP0YSfwpYrejaAqcoPWoJ8Yo5hSfoBdpqD7LytEZR6cWqzc+ek1GzYImFs
KXYdlNGh/k2GOLCuyR8/YRmaiNQPaAR6wdHpvTdoBQDVhc9Q9MaBlPcoDHNnCgDB4QQU1ygFXdCc
F3/WgwklIgiNf/hsrs1Cax32ZEoBNYM5AZ0khHeR5AQaVjbgmiuBH0GZxhKKU30OtvN3tj4m9RVc
vaCU4wn8RRKKmvnqoXGavx83f7CO9F32qQyzTwqvY2l36SBOm+WynwEKoxaE9ZFLxJuZN8X3aRlC
Y+GYSEELLdzXgYVyBCqbrrr3LrNAnhXgo41QSsgZDS4oXA8AOGWTMlVxYzQ6hiH66l6F2nrFwNYs
F6v+TVJpWOXF9Z7HI7G6p8ubPfXDQ2AeZU2AwFM63rdSJKMTK6n/4vGmZzvYI+NNgHLKOgIzM8sX
iZ6l4M67ZPsMAFXBgS0+UXB6AOvl6rBlyjYie6of2BzggSO2+H5JVzPJnILAUmueYkOkxsm5baNC
FFzVBYGh7SespheEkuPZehFfQxHTyIvNCe+KYbxGf6bWBDw8pe1AdduEzDEKPCCFCLtTAlNyCqIL
1Yyux2gyKPK38rEN/tuV/nn9uskF23wKeGwdvYAwGTXArxL9koJJjslvzAiiikEDJaGG4U2hfccm
ydVv2OmvVJxhywAgFGWHx/vvrWu5SqOW4EhUBZI0OL1egF8irrAyjaWNmuUrKcocIoWMkkttvfkw
ry6Fhg2nJvD6pqmmX7DQaBeTkmRDxQa7VznhQSzJKy2M9dXsNs/nA0jLLjT5wZYJVfR6L7fREa1a
fbnWppPEEKCnXw+PwuTv8oR4hm5KmRb4C+JTShwdJotPQ7q0CgUnR7BLfgQHaXjhL0vIFjFn9/55
X1MCpLRtezeLouxwVv2CFLZQ6Y2binpEH27DLigFVkXX4i5M8TnJ9p3vQl5sa9slXxksOgDakO8S
pKduHfDV5Sq6Zl9Smna7CeHIGVDOb3NUCmzrD90TjX0/hijH4+YHUTNjECYV4+7zGeEjcWzbQCAw
MC8DlZCp+cLOXauSCHawYFcJlxIsabuJ6rIg+B04u+0OPtu7AJrHb3dDF4bwG2ysO+J7c+rOo18f
pPDN2BEJHyiXE1fj5fJH66+ny0/RtJ3vU0ANRPCL08U8Pjt4MXJUZJbH5wIKyb/3xxJVnHpS45EA
bYioLi6tDl9xQNDVRiOxYgZQOVtF+xY5x4n4gfblBHdTibjUXd8+Eg/eAYB38jpDWzSgsNYGXiAl
f05JXeM/c66AdlcKdOVqW5hBSFwnw4UgcgHLkDjWaJMtO5m8v6SVaW+5K10fsJxQeH6xOMQQETpk
O3mX0g6H2wcC4WQLJ9MhdufzZ7PrDVOgwMsS0Sbvf3VLBJHgNIjFTVzIV4zjFHegV/Mj72E7mVbK
ElYgURkJc2brOPhh3rEHDHvND1HzuRBG6yOlAcVkT27gbkQzqZ8E4+yDfXnhQX/Ig9V6AvtASmtR
e9LKCSbKWqHzmyHJskAF32UjQMbSG9/9wouXOA1d37zl1793MLfDmBWq8FdYv0Edd4zcvKlKYMkG
m4Nb0JaHQ/8nSgzM+eu0E6g885bo0KoKteaQl7EglkXebbKs01ywb5Hw2/4wwMXoEPk3uPLXGR7x
APfnPAm6TxsvTaGWezpMOG8DUD30gu3xRn0wbLxLIaU3BNvX3eWMiTAOg3uzlbdkwuVepIOoyuTY
QSwkAn5YSvsy22cuDvb9sPXlbLthpdC3u2/UhpTbWdY4fu71Dh8/HqoNDdTt8CzCMYRjM6HdTHhz
6ZwusA99lQq7PCIWD36kAV615lK6LQA3UGJr/WIJqaQgPRhQOFqtxwVqIGHGucIyfk+3sI/82uNL
Sq/aLeFS8tjqEnXmvXQ4Xu0Z2AnKI4yyuiDy2T9X2zrgCuWIFBS6A3Y7Wi1uVfLv7o2Xb+i9Qc6t
KNatXrPlzM+VZcHcl3fULDoYnISnGBcQXDP3JIJI6bcOWb+GY1dnsr1rmqIzWmvyhKHyNsmHVS0z
KTW2Fi1trnXD2/MKl4uBSTCuBq+hlr6kALsUmW2d8oZaSWwzJzY1H7M0IUdHgvrlcHOC4sJDPC9n
qEyk3zBQbR17878orvc8rPm1iThOES4tyNEppNT9vj0KBHU4ZVPpxahO46gxbLtcH+XUPOtpqgEV
NY319iL2eDSjEK0fyLQbgb7g9FZsv/cL8Sw9YIQKBoyJmK1F9D8KsKCOFwXvtdrZ5u2n41PI0aJS
uEf2IFzPnR2ZfUPngApOD/T1w2LEd/tPv7IAoW/2FCAgqgLTZPmhgSaGL4XxEk0lnP1TJ+wet8xB
ZddahFFibU/cJDjUhWOk927lTBqe9qFlyZY5D6pngzUnp1jufMJl14NV2/f/E+/2RXqbqFaVX0eG
7T+PHPA2ySxJK837yQnqy+yYcFryETXa4H1Y94oY0rqspxrvjgZR3oZwI4HkWOIgJmHajpoDbCW8
m+Jy9Fb0/YjgcZJLza52GFhhTGQj+N93MnTCEZsJEcYqnClANWoJro/5qvoiyIH/czk7pUPOSEwY
Hz9qasCAK1w1++YuUz/7XYuNZ4KVexI9TVvgGc+sgllG8MAB+5pvMZaF5ek/yVL8sGlsu2EQKOrC
9ZYJnIIAs4YsvCUGvRoyEBtsHeR8hSoracM3KDXpiUBHREKbuc9nOVl3dQEQ7IJmXMn0e5PEEp87
zrj6ZttTMvlgq0J27OnlRHNBqVp+oJHk0Lk6qUprVUI36s4E/XKIT6mbBDsLYRNXmrnxJt5CpZgU
EMN6u4ldPPEBKxmM6YJlApqxbCWCK3yyFI9lzeMVTeeNcxlwBs4qSpCzKY4iZrpCuo6EQN0/vK/u
1YhXh5FFgveU7HBMoZO1SA92sT/dc4rnwO2brK50zpFUIGyCAWmQ346Qd0DjuF5VlNslK8jP8EBu
lJWH2yYKDzs2SpCTwNR60c09sjyGp4T0Ikg/XpewwrNaogUhcprHph8TY9zVPokpnVz8BvNMXrau
Xwg0TXlD+UDBwNyl7sC/k8v4zENaB4bZXWPo7mWJ4oFy5kVAWk4nMWkBJDUPLh6KpQeydV5HqXhr
Z/V8Wj99KdmWtA7+I/q6n2RG7XQgcgsphDNh+j+YTu3ylVZO9+BD7+w27nAmc1VpczQko4Ou/mne
D4DGsjTjr7SBqx0vM0ZNIInp2EW0EzlX457oM8kRo/VOwLEQE9wQSGT+zx021Vzha0MISBsVVp6T
z+kDgWvgFUh+qhEK234y3EOGriJvIfXeKmxFqIAA5fvIk6G5QvqSNHBGfcrn0UIegbkJ1fle3P+j
tE2BHJIgwtsJ+usGtfNzzwYrJGe720D85JH8EW8unmapmjFZX2/CWt8jUVwU87FNdl72ARG1a28O
wc/Vxn+pKTo/Y/40RZGjXlSVLIY+ntV6JPc6W6Obk/Uh38If/RU7FgUvXvJOrB3reGaiNmIUSCqV
sXvQoCyzQTmzU0+h2Mk7/L2kGOnPy+x5FKW1pEvvSOtQ52UJNk/IOu+tiht0ACDQrvoAPJoEnX38
AztCZSSle/B4QDH8Juo+ccDfOLuIbrnHcdWXQ6R/KoftMrsIc3HRthgPQkbAK2zYaacItnqdFuvB
HDQCqzdoLoESNwFWh7dIKxQPmXZmXFaqJhILWsdQuGgfo7DOUmpSBHf1nf1n+6Yu6T52pSP9q2S3
NZo1OuhZWGrVX2W8kVcNrLIY1vqNq/VJnaHL6HZvJnnJVmruTn+xA8QN+1ZsCgAlbCvyC+CT5bcT
QorK5YRP5qBFdFdp6L4luPKGamwb1gKemV73cn+2nvETdZWkTjPKWSYcVZOXXg0xMFVythK08Lrv
XnCHd8P+T735iyaw3BLnm6JTX2lckTd8k60roG5yTCZon2KJg17THm5YIv74LF1JlK7Y5k2Tni5L
pHLXt63qVSVhWoyZimRrr/imj1aml4SkQmvHkw1ZWjLhIRJX98gZnxsI99RyHfGemQ1c0zx02wPL
7LlZgRFYSS5PjlekD/J6CxywsDGMk4w0sM7tLWU+Eabu3tPMr6bLCh0nOkbzvMWFhhxUa17uggdB
e9q8zGY0WEriBP0YeKw2ugDP5uO965dvIk2DM1SU6BXbBlXK2eW5682E8Nh2s6sUrWy+MAtLZiNg
S2GCFiFE9i4pEEhjroHMvbpTM1zncDfgNMIOToy7F4h0UFebxyB029y044BwKyerx5clmIcYejLn
wruV6UbK5SE6yg98OF9b+8LgsV61JvU9oSWdN6hhArgWDx5JSzpt4fUBX1Rn1T+1lg6Ua3NJ0oQR
nj5WzC7Pi/uJn5NYYs1OUT92U8L/yQxFsxCQOFhKBVEcskWusHNVs0QzeqkwZ6YbCp1o/s6QElb6
MXSGpKKRQlIX6UEugeEsLl5Vwsp5jDFXph027k5yRrvOgkDiPEWqZ/87qIOdlaj5dw9H9ty5ZjiI
TnZiwjAfNn5KAdaz3rcRIy0xA27h3zaMRG+4fMlIXsF0PBPDYCOXSu7xa7yCJlrq8xQSXaygcA+w
7LQDCSKJzgfO9zQH9BpRnP84STZfyTequd7t7z4o4Gr8eviWYqBJSgCug4s2k2/ukBWfE9rLP9UE
h9hxJ73xFviYhi0yuXIY3TdIpaHMp8lPUQ7jyQOfDHv7buyI0gw+4XMjuHVbwk1+5j5yvYnwdu+l
tt9olHZl49AFud0CUpEAHezwCdMm4o/oywpxZJXoHyjv4OR9Um/EN/b0UWiMcm/+cfPGr331LIHN
7QIPWquuravcTfhwOrBkCRcKCbSLgWO6ZB7iHnxZYpAzjQ7lfzEQYEULgUiIP3/oe2UOmr19utHX
f6nZxPz8T8sPKXMGpNX8oiMIMn5jysQERP/sASzbZLzJHouAVosMS9m6m5K8osSQMh+oKjW88hyF
9SbvFwX1JWjBTE4cPC27zEZn//S1ORvaWjuAM1YT4MLn4BAqpjmRZxvOJJqyxsoJ9IzMstjy7Tg7
1tf/momEt994mJQSxx4F1+QtXt9z8QdGvq8lo4Y8lR0FM6v/a4/pV5ynVbGDgZeFKSqlmArMaDhF
u9PdOs5b3/NTw9utJUESDMDweQ8hHg20U50OoDswIOHTfugptqE0A7I6Ob5fRjS9NW0riUGsQ08s
C5GZfc4DsLUz0aqy9lN01HvNecqwVOoG+l4fKxydwAtlTvs6WcOpsb02k50qpB4fb17vXBmaVxfQ
5NQz78M7/8RxRixMJVoPSLk8qv3eR4pjF/OhoZ1aIhfeE9bkes31044UXENJBOFY2kKx/SqKjf9v
/VycWpGACfh6kWkY79+TgSDXZwV+KP1ohUmObPzRDel6hfllc80zUZ019treFrHGz62CMRLezckm
8Gr+z/uZ5trm7AisblZFEYcp6Ebs/75nmAQD4fTzMEnE++yc2ykfvGbY5Ui2KZzO/GJlLj1//1UY
Fi4s+2i/qnkNL1E4KvGdB7cOJVuZMVPYG95icLAIMGMVHaoR1eeSbW5XdsOiabDg4mm0KWSARFE2
n3YaN8igAElpt1BuKnicLt+HxWxTkQEDclkiHyDoTcCWj5UjRdH/xT2+coKahsEJcl5UZu4ttpKa
svaRLPt5tHnkf7xjZ6IHVyLQTOeXcs44nkeehpT9pEOe+S4iGrAenpDi5R8bTKnz5U5aZn7QzCGP
ABgSUO9OmdgaICle7ZQx6/xhvvw1NsHG0O2XNbVK1YtTvi1R/S5KHY3g5X+HOdFsgIiN/ko8bVu5
DsgoBtpqWXnsisTcdtjWPGT2Fz/QlN4RBI0gs4nY/S2Cp951QmV5q4uKvsWT/kr8p72dDWHTzmL4
nUaJveQbSKgjaGIG/dEkMcQ267iTOj85B6TlfuycrHQ/AKgJFY+Cq93KNQfxssG+jhqP8UUAes0k
0uMcGoTM9qwwf3ZWyDl00rTyiGWbUSUNX2PGktEpbb64htarF3WKOvXw4W9YAJKpAvtF7mBpnDpC
dBGrAFdVBSIlNSlelrk3OY0SHIFzEmkMqy9qjQDXPKB8+ijx7RJydc2/TUJ0MK3qKOxdFM375kxL
nlUwzfQ7RB61dcSAmypj1VE/YcO1hbFuAthkGAd5c1BVhGrpDOsYZxgn01RfnfS6BsCggSiGoNwo
1kUNuvYJ9JFqVaRnZm1rKcQAY44sBWhIMSGWNMrnWPoKfVmvYyDtleQcllohzKPI8FRcHAgvqAon
lSi4splsahntXJmwYFtU0ADuor3M/EOmcYeZJ/FgjD+RQCu9U3jZyWdXpfQws5te2hdw8eSwRU9x
jArqiu/x/k020LAVR+BqHgD2onoZQ8sEbWXWEM/tdQaTzKiEZQVGlRChKlYGa7h7oYwEH8yDEyOh
simDOXxKyAgTUB0Wd3YFIQX/IJ7CUM8dWfAsEMBrXQXg9THyVRtaitr0RCNjWLH8wNt/fggAgecs
GF9DEitaFho9sf1YIVmHC+/2T6eXTEoTPDeuB1Al4qyQHknkTXUs2f8iDaASPCw+GxpLYZc6rCKi
M4NSJdkq28NF5SKiRFTrmvrWiTw+luceKhQECY/YMqXsF/21OJKd6bCwx6Old3GbzZTPX+5ZsEDU
c3wb/kHW5tEPX050cj8RHZTY5qKaloTooMk+PLd1E/Y9ROP1f6ZcJR09KPaTxGO7AOEf2OkIDsHb
1cB9ZjLnnxfFykRCWThAFuUnFC7vFS6TYibr/mrJhDuChpNBmx4GV0PRYDJyr8nST6lw4gwTEPTA
jN9JO4ZWKnnDxg18ERHkGNhUIaTVfekBz3ShfIz7kmkRE5p/k016wV8P4EytrIH/W6eaTixpDdwm
hb43MvfnNkqEIpzn2Nz9umw75ksJdVWAbwYQvATIwHgt36aNCehGDAOta+OAeue37gRh/IbU6I7f
iJyZl4xsECrEJzvhr8+wbWJH+igtLIDP/FeIDaSaLbM0jGMzXvrHYZ5G/jgzbBRK8UlOYKfGpAXq
tzl0yGuhVZbP32ch+gOT+UN39iIKNtB13ZDtxGUHheGqeakcFp/9fimtmcFxTtmJyeXmRNqe9W/E
cfFIPAiYlg0wVJh+H4VDDMy51JOQm/5D5eLKehJuUUbh7SLLEZmMUKSYE/N/YYA5sNuPGg60bG5U
ikr8nZT/cB5miIhykOZI9lApp25rkC7PJ4I5ghwUivQC2JBWlnEI6mJDVHNA6xNDHagzAVH4aP2Q
d2TPolrCN7ucTNsloEBHZ8Bjq7uAuRX0tj4jIqG/qva4+VCH/tKbLMpb+uR/zAvcihj1cgillvUa
4sp7Tu19zGSSjOGRRSAAEixCryUMN1crHuosGn2CtJOLwxj4wtSygLA7QZNN8Arj3qkB0Kg+gC/L
iVd1eI06m5TZsB3Kufike8ANz2w28AsgXJDDmA98eJ0Bq+n4lsxoy1k/6CgoywVaxkGpmmcNkrEa
8ZTlM0l+9M/Z9423D81XA+6PKO0w3mllEHkJIF7kF70lQxVRZcZASXnFPOLadYpxo1CG3E9a75qm
1ESZO/gnn7zXpv2wewbx/RLnJyp+LXBBtk7G2lsD6GXQiz1MmudrnOYHO+yM109faxwI/gj6w+d/
ZjBZn5YL1p+fOPeVUM4rbQcn2db9uVWcFWmJto33g97C1uzWFU62c8oXyrOnFeyTRNmpuMyS8ueQ
aSdfxeHDRbPM6cyOZVPNKQtIuTqH9/xuEMXDuMzg0qhd/0Y/RCGXpXYLDqqK0gsWHt8IndZVGZ+x
fQZ/rbwLRaCHuFib4D2GA28HxKPsBVYgleSglAKfrfvDKoLisgQ+L9o7AFZ6nnVkEHM5B8q+cUfx
hw0mFpvHYHN/OQ5ZIPaZEoVH5p7l8xUTWbrLI59xwXWlUqyLI4q9alEE4T7pSF5yYp6ayWdZy7TA
JrjXOdIc+MmcOrQUrIEH7cuAqY1QzB4iwemZJmbB4FyIdkYjhutIB6gBtJWi0rZleDXGtZoEtCCQ
wAwNv3X3LyikYUOhOeuIAnE/QK+4Skp+u0HTXRJFRC7M+7kPNNcXygnVY869/y+cItYzr5BR6Jvc
BgyDxk4MsFY94yZj5On1qjagDCzvZ6vCQV53jkbtSKovxIibweRw0np54pGQPqRsdYI1awz6FzY8
2G/UFr2PDVeCYqi2wMJqZBMc/zIIwxwEV2sFQ6ZCgRARyj/bta8bkIVX9cPRErlMLIRCkHJ2iK6f
ut3jkwz9poSOAjOhgKYcjenH8H0OGy5kwA12i9nbQ2r6QppW1XktzjXa68Ql4ayCjpVMzm4VnzsV
oaTMfFevf/yg1kjFIcLa7W16PMbeS5A/QE/QPgIn/YdsVBRMed8XranbOpcGJugtgNfegVX3Yiaf
iyOTKmLNjXrFverRv1HdGFhX+9ZgZ/U+znsWDnYYEHJGJsS8h/PjOGJr6nU5DS+k2AniPHvsAtWH
SUiMQTGoFfERMkoeo2NT+BsXp6VLFuq7erGLypmlm20t68zo5Fy8KeXCn609MZ3iUps+yNLW2ayc
mbW92xrrHMpE5Ow8mjl1wx1YY5sinr6tnSe4aIfdPa3HuOB/1pvnE0OR6y8knK5ShkF67aVmatuV
ZqBGk1sJX1HPUX/9qXOyfsmNVJWGhFi1U0cywP2oaH6IyzN3Q0OweiVxrGdqM8u1BYYKYvKOTZcD
7Klu8v87dKD8GUyVj1WzTd1F3Wr0Is7VAVLZUZ1ZT8yDbP1SGmOc9V7LsVRQibToLfWasfdi+qk9
HUXWuu2Fc+ryLGOg1ySgueKC84+h6A9+vKIwK9hCJneZXulE/7qoS5hbIDSlF3AKtBuoETgFRe3Q
jkpI4fF6sTQC/HE1qWMarkxqFp9msaLFzBBbGrDaFUsoWfl/oFdC+pdSvKg68Ag4iCHwIFOeEidL
krvXI5u79HUBpGqXqNdULC1WJZV3iAFyZ6K93WEy3aEJml9kHEoYQiFoHJ3Ga4m0VA2VEgpuqTvm
AbqXgRmDKXm4W0iNEZq45KID/QM8BMzZNNKmJCFlfUYBhFB2yCj8X6EszSnODzn67lqVSe4WN9Nr
aFOFq+6zhFdWkB4+xtNj2T2Lv63gZt7Axwf3Men0PjWdhJejRkCno+X8W/50777hsAr5idgBNKZv
yFFKaYvj6BlC0xyoi6KGaFsQUBhY5mpXCkBw/L95Esj0KJw4AqpReCBhwu8k0aCUTtMo24cKvjOq
k5dHILhZAkRoiKYVeCUEaR7OiCkA7FFN5R31uRumR8aOhMKJUE//t0X3UcxR8pwDw0stAl7vQxmE
CD9GV4JtWzQLQIRIuhJCRpOziHGSGgRv3t2A9ciCvwByYZXv7/zIywfnch0bLIYgYYhH3iJl0hkt
Y2sjXNUZp5NwQnEA4+L6TAhC5cDKXLkbEDBxMNkKcWpK8yqtValxwD68Of/Z8V9Ql9xe4/tQRkp3
AcsxqYn1Ytm1nX7mi1yegKQVek8GzneQzWn4yo07DAmuZEGrVgPTsEHZwQKv1RRiofr6vQ7o1jet
H8IwIh+oX91BNPZaguHRKArdw2stXuuCNWnCP+Nl/3tHcgIKkq4spW1Qb066wjfoXbVyDHIfmGOK
Qr4HlVfKc63Yp/lbELaEdnEdzHDuwMtDbo9V5IUijiGTjx1fKgCgG1fd1swUFqjEZfr7MoI3b4//
OPqwbGFgQlkGAt5e6rC8YJrd6qd4W1W7VuQ/oy/rTsZ3vcd4fRDXvHwBoE84m4fsBPEllxev4J4q
JLY0DP/h90tFduOK4YIxHy4bjCEoFd8Pzd4wJMhKYy2YM8Of04KhmsLK0P5jVTHQBd8bnStSSS2v
4SdBjz/lFLbrZ7uQMhBy0URk6UBIE1sldhGIH7OO2purvT5KQTKBKlAm6j3Mu/lxuYR70cU1n6q8
J3JZ233OBK7EVEHfHyauKyFT2jQgVX3VSGnJmmaObwHEmdJ1dTDlqelWJZr2ox8GZszgolC9AQeL
HAYmtHVBpRvDiLXW+4JiSdM1r/3lb5WRdDjpXijJwdIq3hGw2ryIJXoOAUfH60b76CW3z7CUbpLk
SKrDxNkeG949P0U3moHo/z20y11TN3vbhi8WXo5G2Z40A2LLnYj6wMLunEzvozsl3AhPK0zjHAVZ
WZE8r7ivH7FGrvpSGojs9qlNAGtR5jEyJTqo1PjrXmlKFxmrpt2kVPsmXnrrJIEH1kKR6qTgcMyo
kOKb9QcQsS+F5rxkrVjSXznts7uXDpP6pFhy0epfYdriPYuDhvKhoLgr4th4dFhmyUq9CqyuNIzs
al6yQChH7xYBm2tOHIYK32RCRVFAO+y3ycJgAYLuIAr8WUOr1kHjwgHn9IHYydSGct8l05C5ZbHy
y8Ls14H/MqNKZmegJiDRexg2Jfjk06QHPfAC2VOts5JxcxFg3JgetsJhJlYbE3gIn8GJIC0+6ymW
KT939aiKfZErzHfqEuJH4VkLXqgf/GdKvTA53LKe6QeddHDVHecRefez9tj9jk7EfhIaI+H1/rrs
ecQsjfKkFiZ7gzApDJ5yES+X1ZKdApJo4Q8bPE+FK8zztwY1hbqeV9LK63UDmpquGnK6kwjV6+0U
hDOdenKFX/CejiZMwphPbYFEERiz61inBzQQynKS/KjPp2uSPy3xWzVJ9Q8wzd0QD3bsUR3Vsq+B
1RHyrf2rZlDJt1jynf9NImveKqm9wt87AHLbs7/XyLgecmNqAcc9aKeEwvyiwypGku5pG//PiNgK
nPnWO4Xivujf0KWJ34ZjG7ILg0TVkd/bItFsMGD3HWLOA8botRmZM4QxcqmALnCBc/wJYJ6idAjL
Y96nI9F2fG9jTP1jrGH7DJyAKUy2XIrP9weS3aH/bLawOxvFzpLEiUBFGeBERXlXaL0c+L7K8kMZ
QSa5jCSUC1wc64Q7yluRiV4K1jVL2rqqE6lTdb3GkQfIHmMsaosDCizczXL8gUnLpyBhZXF/iiaR
JdvIrU9CnlOl+quazuBAauFlAbd4yHyYLwUCNA3kelr8Iwq0JLlMzBJgD+wYWnaWvn2AYHGUCarL
s2+ECGvie2g7YS0nL5XMRoxm6wfPHwafAHNvw28yk38aRyq69tI3MH/Z+jbv8AVbwc90cnQi2mh+
CpSgISpe4ouUDE9KBxUbIaf04ueeHaT2pBDoY31V/Gov8XoNcxvmLnOfzH1HJ26w2nVxREROtUSp
APkbofcEnDtPs/8ZegGUGLJWenfCteGvUb2z/s9pFzlr4bp+OZF7T0uwX+3bCkiexOUUsairE3+X
CLV9baHnKX00ED8LZk1aBNB9I+v6cBnGjU6EpI1EclYKCj1zpQ1ijgNx+HaoakPf5qJow8wujhG7
6hZ6TYsTdNsMuhwlliqyaDw372bVT0hS2YqYHZuRg2r51TsBoz3Ne4NCUsI5do6G0bVclKIP8/2N
WPQQZMSlSbLHJpwdxuf75z0vEGDFf0R70C4hJzOfrsNYX06rUDNK64T6VL2n3g2SWzTkFF0yCYP8
Jm2ValoU+YpcuYVEkmDTd8Au6fFmVtsHbG/DH0bE1kdANXwiMmNbKGg2Ep3czms0TZlvnLHuy7/S
M5GyI8mWyCbeW6NNXjaVCz1WUCJ8H+jG5axXWjBumIKG1NHglsmZ0cIuUMAg8ZQdre5pVqz93gH+
CE/0FDkjiiUf0HM0dUlHxyGS40ex2jdbGrxaIc46Sf5Ax29Ze2+TOi3zxusiQfmnDN6/C34AW3z4
5TvGrXlIXHUsf0xWRF8zKh60B9yX9QrF+dmf5F4pinzCx9s26zWLCcHycUnZUfsW+IecdGARxVWt
enqZP0iHL0DMdq+9TprNyye9XSmoYekGhNQfx7A5qHCs5TdAIRm+3Rt+6jzO2HLTbK77dOIHsHM8
0kurfKQqUjwp8GV0gvmv2RR5WkPYpJstFhxcFInVwRepJrDohZ+IrJAGSYk5M2Qs4eBd/+YIXixM
czoVfq4Pizv1U2ikBxNtNWfuiVtbldH/+iGvKPGRn+31GQZwaYZ3FtBR5ShrR98nAaRPSqTgn+bj
xR7xLjBpd6ys9ZVGE9mV36syOW6v6M+mMQk2dawh9PcqdXQTK9Zb6csiYk9WkDkbb5JJ6nDBBnl/
lJJsxWKQ38DdlCzp3rz151oSeJQjXezjfLRkdXQyI6AOqn8/T14BcdWAN6y5bBMEaZZoVfKPnTPL
wot91oif+xQe2D13p85kJS12xrI3OZpOsXa5uj1CHrWUrZfigBgD7vfR9voqmWIJ/CwGh9ZRJy2e
L3kaG3LqgAprTPAyAo5d/JPQZ0MM5Fy9ENwTWmtMSdmlh4sPIK/Mn8WR+A4141qvLpPH5HeonUKi
U9NRyORrOJsgaanK1BztxOaSSvIorEWVDjqtm35Ko/VTlha4JBDYfrgzyit/1Pd1bsqrbhnTITk6
R/LfIeJRwBtdm3i/JGFo8P8ioQTDlShLAaneY/FMA9dmgi1dz87QYUKnaDF4tOePhhnzGdh+412w
46QYv1rBT9QVkWJfS2kPLe09LJz3iXqLmN7p6qVQmsdgzRLozzkJ86FILxR5FXIDyTLR8SgEocez
ARle1AfmROfGTBAUOg0aPTseaPJP7DRS+j3AyWKoWfJTX3DlALCY7CYtI3Fsc90DypAdcwlwoHP8
Zw0JTlI2xzlbiNrr4h5d6g8pVxoAebxvmfcYoZzDCZnS+urToB4uMexcFr+Pn5NlRen9CtB0HccK
OhlCbBMUln4/aBfEVazQSASQgRBb+4rl3IrLroyIaAQzlDyAdatyiBqQoQ6hiP3pC/qoDUrrHjtt
WsHKt+7YhPmVFHZXeXoEmY60A4eSYkFgcsu1OfRQ65VLjBjV9NzbFVPwxe6B7NzeNyFbLNmJPXsS
qbS6dasbbBanTBwmtywcK5urqzbUujk/775libHo5dY1QtaaQO4dFPAApsnMfDu8+CeCapWrz3cT
Qa+xTOcPl8aY239R08Rq5HiQm4pvScWpBZ0iaJc/s5NDnq15J4Uen3btoGLor62MRi6ipFoZtmEi
w1gDVgK08VXL4a8ct7K8u26nepWULKAVCkvy7NP6+uHOZHNbgdl2gGlgbNsVC3bGWZgnpsyJp/mK
c6ho0LoXtXVWYxMnkbycAOrf4B08a92atiEWlWX+eEYw71skCjdJsOdRuv2HM4BI0v/oQkjSrym8
1CcebQmpGTWjL9ST681z8Zp0VCzgTPxTmaFtnkwIBG5OGJtbChV3JLz6A8ZwGcQwXXX7B2UxYT72
VvM3cjgxxk0vo8ghcsEtIIuVs4jg0mOSUDKV9jNtFEK4pdrKp1K4wDEW4CU5iz9M3qhFiJGrc5SQ
hxi6jziNJOBnYEYasMD6jF9wQYF5OIeNvjtM7rXE3xpf2yrEhqjFWSvSPzWSvfm/rYBZbJxlTqmc
YFuzY1nMl/FS+UxGi3EOMjg8HQB12A6KfkgqvYr6nRGZGl5tBIub2RVoOfQawP/zChLPW6rfEYtA
t+x/yGLZ102LJJHwpDATxXzxdd2CVcneLAwpd1LWeaTssOv4co7Bm6jOY1B+vG142CqQzqCBD+XM
bHao5P37wDWP9ZI1Cr8DhXEaSt7qgpbHdNP7A+rLX1czLrs8k1s5394OEy0qRP4JnLexJpjBtKDi
6L0ETewy3s5CfUT/FE8h106wTsdBqXCKASqVV1jFWyFDFBym5YgV6s5NaAWWjynmnyJBpXm29cVd
HGGZ0FaOTRNvBz6k+iLCdOve9/M09vPDrP5zT5BRX3n8pzcTTlN6U2jTyFmkP91LCxpYGDKVytUV
ev9P4nZ3my8duc2DulftqqO2gn1OPvB8Vv6Bt6WKldzPieUU+WZX8J0YsKUW94HdgzUPa/UCVy1S
VkwnHiK5wEHbhHG3esc3pL327OpV4UxfVAKW81UCEkkuYrb6TKvSnO0lMNvlzHmUXvflEFW2fXGB
+XLa46EawxyFvDsl3DI7VEevpiBcmKtSrMttgDOcuYKGJGu1UujhbCWqBGgGY0OFKi2pL3v9tbVj
Bj8nC3MHYP2eG2CfuW1Hnw7nvOLXVlrSe+bfSWV+LipiIcwGFpCII8vv4awyJ11ML3J8iEmzOT4Q
nC18prEq//R9aYtdJN2QBqysUk5JN/Tmtjfc45uPkM5Q3asqbSXTsnW1CNyd54DW7o08uyCKl+Fo
oIshs2VVKQSZqgkI1ZrAa5F7JxbMYK86IcF2t4h3eFnOZ38kUL4AvKGlrOeTez/E7mc+aYq1b48G
4iU9vJvNfsFwEOikV6J5YtvZEXS4HQHrB9Vto5bg50MD8B3DZBSyKwV0LXyEPH6EGns8WiXydRfg
HHjk5X3lHQqKQvURn8cvnbhf4hjK62rSvZ1C+LjmgWDl50nGkpIVCnV+G7IFbtE3HPAsvDgMnjjk
qiGbUyqKdf6eKtyOVxJougRMAlm8YhpgVr9ti9H8OWR51csxyU4U1GFsjbTyQP2NsYmp+Lg5osjM
9nGUlq+3TjhyDk2Rep3X0FbW/jgXKM7ty6zx8jJ564tn/ejWF9G+kyY0kyfx4zNS3kofcyPKR1/z
aVvQfkJDNfwofpK/STJCEXzdvDM+gL73LAipUSROO6EROkPuajfy5rJzn1cfSTDUjUlYgcK4XEbD
IdQSw60PPfGFQ7rJhQ8NyT6QNAvhU6ZZJ2mTrYd8VRjaUz23MVjHJ8Q5UXE9Rua40UaOpFlOLi8L
GX7GZRqsGMk2a5qV3MecnkQSFpghtgpw/nqkXnwCEuwPum7wiCz6RhHIfiIeCSx25uyAAH973tn8
mTdcbuMvNw0ecdTlqOu5FoJH5MV4bXcAkOeVDKSG/zkcY3J06/MdnNwGTIBb5my6PeMZ+EAQJoFv
kx+cOqz9Lb5IipW1u9OwcsLbMuGbx9SaXvmML4tH4IUIu8LSXHT+XZqbw3+7/dizNIO539wdHg6X
pHFmf5mWUxXdlWlV46CanInta7j553fhDSpA9CVlsfId/ke5D5Du/0h8LydNIwOJKjYCd9hars5p
gc5DFnMJFvs1Hci/R4teyC4sLNXEnFroGxUHfLjeONKis81xPMPNS8qRR5/ebe4s40Yn+6qiPSb8
ubhZsbYT3XSx3JZkviIDdiEykwCWFrsH6A98TNyQaaf4zK7YsOEltAmv9Av9UT+bzP96NOXn54OS
/O1eLRf2dvwILmPm5FJMleG3oxeaDbfR4uHKJ3uj45VjDyR+Kc9Muxg+FfoWybsoew6KeifGp3Fk
vSLpOJMUa/g7EBd3Q893ojLjhvLjXWHYh8MPrX68DPJdnH1A4xvvtjF2arPN/IOYLN5pYcB5IaVF
Osso/AWBomylHFwBiUi/QWnSavK+MdKoZfwx5kJG9t9uW5DIq9/pP4LBiwvA6rTAF6E57RfgfuUo
QnyX6taikdlMVEo6aV5FEeAjkFz4WwpGPfNEKAJFdVp7SSEZkRga8kb348/CXSu6AQ6NH8qFvx1W
jRg/focVwghi5+oxh1xopcL2vl2c9sGvrLNd1Ya8oC83c/9j2HxmkCXxSeMnB1h1WQQgHLAaervx
57UnmnYEBiEmo1NUcEbx8b0bBaM/QSCdROj+4q1gDrJJtHIb2sPosO8MvjNhQgQqpbNDaPmkxMjL
3sMgHkwA54Jl1pCzGDy7QVVlRT7CHjaGKP/BJYlbz5LEbvcIMAX5qkfzSs+fOJkRD42hU74zcblW
7xfAzHdmx+EgwmW+XWa+5TZU8wqOy6OuMvtpEmg3fxYm2D/6TTTy0eX4iyNyosmSG97zrOmZfKFP
5w0n4f3Prm8hFcqeveicRPPZ+ol4bH066bgezY92CoufyURtR/9Y9UnRUuoAYJNvufSjw/5ySeEo
Sunr1/uhx9fDb8xQXYhTEpBL/UUCrt4z8BD/h4tX06jjld+Tmvoe7QQQc3Nc+W+nx0mkSgykSn7M
ntJD8dN3s6WqTJmjtUusA/97s9Hbw4VU3nM234gxfJPCMt9KSMpS8sn4+Cj1IfuHzYNiY9oQafPu
/h8Tic5c2tO9g0mzn9h79s6l6EYDPvZuZwfMCyxTwA7CLg6+cngqDN/3djhKVsFirv1UdxBG5V4O
fKpTPmqWEMi88JpjbrN2lrXeiUIKrSeQZY5F5FUqdTw/rz8qjN2Osi/grE+Iii9VjAZFRJPVWQ+Y
xKctBpYHvecukZbLvqv9iTpRUmpy/VLPpDS+HYIu9ZUgDO53ZheGounxEq5lOa448uU9uQ56k8Qf
CHt9w4kNMnfPAREA41nu0+/UXM75kO9qJmy6yVJxCVoEQd7FEF0vgWz26sJbb90bdgTXlWAw9Xaa
0VqIzcxj0S4dhqNV7BJnnA/j43arnkdlT1M6lbMDdphCpqGTk03SlfBJBDlGwVVjTRyCi6mVj3Sy
lNDk1G6cLc8ie+leoEax7avy/6mPIMB5Bh+b5mxyFYwWJxfP/aUkpL+mOPbtXctiVsTYWR6MKg71
q+3Gw5nlsR5nKroCXzWBjUu5UhU0UdYvJ9kK+Fx4DMg47QmJY5JIGI9Oed+Cm2jOryo6RCw1NiIx
KocIxicW4Y03MqETCPkbJ1E2ezSdBXUTKcUFeXDNPm1lAaIyiKCS+VG4Lte3FyZbEz+nzv/kFizE
i5yItfi/ZvAzjXcBYxGFFR3V/9DIxAEmLpCyE4i+5NKvvJUXlj8h+FK1jwosyohIlfayXWOge9aJ
0XRG2tt/qUrn1fFuYyJLe2Z1UpR+Q+rJEY5r4uu+QG3Z4T4duOZRs+q1BQ87/mSdvjILhuACquNw
m3/64NU6OL4Ea6He2+dKXbYQxTnj+ydUKV0fu136zwBh5ZHNMe7drG0G3WX/eIHXM75oCRwClrfT
VkWYjMPVzF6emkJrZEori5lCTmBBIkGthiiR71AtiWwiX7U/wRmtkjDlszV4L7u1eXqUOswHRn+o
AFp2y6dtfqUmLJO19WxAf2K7FGA4fjvJjXq9xMDe81+lrsrXsKfWW5zXTyq1OpJN+SgHUeIRKkUo
iGJh3tYxA/tBMQIN1OUYvCbqRepCqb/O6aw5yL2y6nVFekpahl8uXYuK40JWxAgYfgT2KgqnSUq5
WfwEMDmb3878X8Zj6I6yv04Y/q1G9fGZhrhuDI2dPTwSIkF7roOYVrgdM1h4+mbZrm6EcOxHtEfG
LNcv78R0ymfrIBd/ERZavgWuM7aBmqrgbLE6gmtJQGgZB2SDQY2FelF1GjfskFE9cQttpQj6+n7l
nLDEDTr6D0dXm6oB8ORw20DConFOWVNqSsgel8SnXwZiJofOA8LgBgyCLKLzrGmDs+XuiZP7gnhz
ItYIemnGSeY+IQUnSlWobDwGMg0qauyhu9ZzLbvV80J3/1RRIWKUfc9nffQwZ/1ltJqoSAXIDgu5
6B4nFvcf+l7Dce8VZRMTdi7qdb/wtgzBZ04ijgZA0jLh3j0lVex5CS4rz9cbUeHt1myqu/FA0jGO
l5b7osqAybOHfZyeGv75gOsq++MnasDkOJo62Nhvj1A4pJ3sovH3a/kRQdKWixUO8KAW3XTzGdnl
6JRSBGuEEZUAdl1968XQiSB+3ITNVcJTG8WN2lgAovpAGKFJ9vHsCccpAwBtX6Jq2Lppn376fisG
XvMW/xEwWzEPP26Y1vfeTgkprM7JuQNqegtlJUNmkcc7YX164LEb9g1yju3N+ysWrSHGrLGYMaXb
hys8779Ef2BnVrNC+1WvtrgbYgi4jZ+wyqpc2L80AHaCf3XYYWzYsoM8H1Yn5SUWs9UKhgRQqw7J
n2A+bJyaLOWcEPNT6PiR2VFVsSVAQqDV6doklalOSwRyt6/CqGDIX/jwJKS2mcBFwiSl2n9Vkt5z
yiTwTz3kwfVDI9fORWBIQkrfzbUGxXjzKw5lbL7u0E37l74nOGseMgHeINvD/CgKhKVLljX70FDR
74n0+rzdjzRJAHH7CUr8WWBN32tNCZkpDkBGnnLhJ3hxPT5JiYVjf6AFyue5VqtuLBUpJWUKUgId
orhoaACnjEgbAJeen8r1amFHun0GgJDerbG1WrFvLz8NfrMwRfwsn+ZPEFEIGVGmsqEukqs1jY0Q
SJF7iamh0ggLytvFt8O18UPXHZJIyGdgkVrvqbWvezGtZxPuik/VyTUF8tdcY2F8KUzBLCSnpdGX
5EQPODO/4MUkfVl6EL5RQDtQL7AjbiQmaadI4Pinqw8/Ift5DGqUP9R0QvhaKECwHffk+UUf7P2J
JIayP9KOciGuGBb4SNY0DER4bY7dLJpa4bzl7YFKD7pt0ho0v4uGQ1l1mWqEfVCTTeI441c08Wuw
z8ztfmAAewvWXI9c6PIr3d8Kl8NAGE6MKZrMJQsHG3yRbTQCAJEBnglbMJkhNXfc7BMwKosmkm2A
lMqY8klOdmGmbMGl2XHoC4sDEFJoQbeUt3g1f39z6pzi1lRLmKi//mHr6DTwa1elQU1QEn6kks87
ENG/tXDGhFdqGBSJ3i4m1u2opAsY25qY8++UTXsZQDsv9OB5Tng6QxrUteXjbXC/c2xn1J3Fdv4G
u5xbgmbF+euhY5P9BuYtmO6fk7MfozHdsZ965GUhprAQu2V6xXU7ictD5YIJDDCgJhkHjOksddPv
l6LLnUCKXOqxlE4yrRlY1fMEQE+BPpyuPOwbkekjl3bKm0i6iHcwaVOfJ8+iparvLK4SgYyiZ3om
Yj8HDcJgR4mrY8tik9Obu5SHJvyNNYrD+RK3cq82foxbw2pnPqfRu1OHsWaBhxmdIdV5cugJ107v
QpZtjfPmqrT/rn/U+0IQN2NPbr09FQYtTyi4CUXqbz6b1tCb3vp1javezLinPMXMG8nXaJ908bt+
G7P1g4vPIyJmWUFktLu7EaTNLPBBk2L+6SiznV2RrJ/doNfWwb7FH0SKe+X8Hojy/hP0Qc8gWxu8
Q7j0DvLU4rbHT+IdlGmtTOWploPNS++yYiEG26e/Lmx0NGKnor3SR0G6w4h+ArdYzcTEAW0wOFeh
fvrkSGp+W5v6pdgxK5do9Z/v8Y3isY5D+ZUzePEtfxMyNz2+2hi2ELp30IjxZcOKg4E/1fVmbLJS
QQLbJozGpPJPCt2OFqwgQN7X/haTHOLGGy663srFW6InM+b6gdMoqZFcFLJcBInH7Zk9NjWjgryR
99esYByfIvFL8PAfXprfl7/Ivq9tK0YB/LdHnv4YLXn1gZyFZlNyTpmQOh+gFpleWfz+JYzAK4ay
IN4vb5tV8EirpwFXz+5LVPwbpnRaMec6jwJx4GThDBcP0IpOQHLcsj/eh/aJFdXD/S0qsW/iutF/
xMy0502r49Rt3eIKhw5RXKltl71P8JackufUJZB6Ms+FZONNT7mit8SAgi7dH/i2bR6AivCUA9DX
jDsjhIrKEExvHqSQ20eTUJQVLIBvfqopNqs6ZmJVV+K0AiBV7Vp754GqILkI7NPhst7rNQVFXWBe
iLbPEUtNSnK/iwCOZX6ATWnlmAj8QKW4zz3GSqw72psyIKs5qR52wrB4nP0yueMJRzcwsMcWkoUv
DsDjgjy/xd6/RuDce0XpfNgWLy7KqoPYiwqMdA7F9Sl+dq/jOzqHkr2gCeuSdfAv6tlRL8bgMTsB
tYQFJrK86KgWluhuiNQTUuscIIRUHwv4+L5rXgK4rnEs8+c4y/d0fWQNVOKIJhoUyq8IsezFttb7
mGYwkzFDuvV4fzmviz5N93MUuJ33ggeF2KCmZ+qx388IoMleY3+iUI26PhjsvOys8R+InUwGEWio
mais2tW66Y882Uv9OSAlVQv9RzOBYsTfrsghnb9+on8HLDpGb3Zm7GbHHfl6lwEQt266u4pjkO7n
BhSwzZKxo60WEaF+KNcOGzPqj7rLyz5EX7NnEdVLEyKEa0YNJAYDn40xRTkFNzPcNGUWKDHEVqCs
1wH/y91lnUT+Wszufpk594WcfWpQ2TLRsD021MzPHT1RqBHr3psW9wP2W3PUZq7GwJqROfIfOOsS
paTBs3yG6dZBxWVGXEu5jsqgXxtllSWNIqGxT09ZBSpXBtmBh4OwfGLUVAlRDaHu5lKiaxfcq4jQ
P+Ls79spL/7kzZbAqcCrivyzAfZz+0REnLc9Li0caU1IvViKe77VWBk5uwVTmLb6fpug6cmk53bd
3CqwWDs9qiG2L2N7nONW9yvu4Pvua69FEgq2kjoSIWP1c4F/GFsXl+ofklaaXSk8CkYueV8ielke
LCBCjbjDk8dwuQRL/X9KnsB/tqu5Toha3w==
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
