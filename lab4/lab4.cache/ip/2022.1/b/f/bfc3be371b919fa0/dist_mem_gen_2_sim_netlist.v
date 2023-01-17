// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2022.1 (win64) Build 3526262 Mon Apr 18 15:48:16 MDT 2022
// Date        : Mon Sep 26 11:47:23 2022
// Host        : DESKTOP-0KTBA50 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ dist_mem_gen_2_sim_netlist.v
// Design      : dist_mem_gen_2
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a100tcsg324-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "dist_mem_gen_2,dist_mem_gen_v8_0_13,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "dist_mem_gen_v8_0_13,Vivado 2022.1" *) 
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
  (* c_mem_init_file = "dist_mem_gen_2.mif" *) 
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
Vm0LUiZs4y5YUUgJebapJAdVM6QohrruS+RHKtHAZd5IWYLnAH5JzOLqQFFs70bRvLy2jclyCIuq
ah5izLYp7Mi4w14rM6jRzRVVOBCda/9ukSGeFx9WhqEKIs90Gu5rFVn/iklli40SvHdIOP36GzyK
9myIx5IvXZIzkntnZcKVhV5wjPb0PFPt6vfe19TkyjepvsR2Ko8RF4qYxJ7wY7EzhPZ6kSKwY4pp
BYey86y32GxR0JtUIYjZvYhHJfq4OirAORLkVwrgue5QMiyW24v/08lAAdeedmQsvptrvYlSVCBY
zFuVPol8ns1OisaEK5t4Ltr0hyYFIy/9MeE2O2ot+nJFgfzJ/NKqfypWpd6TsE/JcPMA9baNw+9H
y3EDTsorTFCv5LeBj6RDN2PPJhAO+AxnXaln5912gqHXbVoB4G4zfwSafgQHESaDlpY+oV9vcilm
I+9I9N93P0+0qXwcV8hKb5bk+nNmOjSlUZhffzw9Ogoj6A2qEyapzkq8ZN+5gmz2of/jkVsAwJC3
tQJx68pDW+7oslV0Jv/HgzKAfE3HweoLfIgSWy/v4J+BZpEkRwrhm7NFTmsi7KN5O5os3l8Tj0Lq
8aNGGHXC2x2SqkDhuQFdrorYhJhHWuYYQ1r0E8rpv1/SIGAU+WBRjtM1x7iJp49ZBxuzhMJnGiqv
0uW+fduD1vcgqaWH9V439gmRLK4/3KQ15tn9/RDZRV3zKJRjuynnL/dNGw7oV1seqf/f1dCGpE8s
MYQDo5SgmOUkDmjQsGKPyZqBBhFyAbXK/QOqe22aHkjL+fTg75efMz7D9fu7y8pwGMTXzUJ09P+e
I6d7HEfsNMgVhIs/Vi4slZsS/bmaWTrBfIb4mJSYuHrp43W5IRP/zQOPVL11Cw5+PXrPHG8KLStl
ut8KPP6jD6l+U09TedeGqdQspxi5vJhI0O1JIPFsoo7RGmseSDVw1iFWTFlTPV12r4bOJARKbfHj
naBTBSviKrhDgPDH1xqBxc+3oo6kQlLnc7AUbbpfyoi5HL7RZ0+xsBSW8cs1SN7yUYA/fJFNGnMi
h3vy4kWZ2jxqmVEDXY+QgI2L9ahYoYYy9FY7hhSNCsRlUp2hhBT24lKgZxPaCmWV7YSR09dcHZGz
cw+N6kUWrXXtWICP8JTmCDvDonL2wPO2pvglBbp2tYTmvUCXGAIFcM4MVmkC/LNCfdyU21wwG/0S
Xjr3w054nObbyoEZ6o2lj0BprBNFniHaFoiBC8J8l7vwT0OxwID714YVSsR7/ymUSwiAhAUlHxFX
5T5x5CJ5TTeWfgUlMU/mddKLd5cu8QHf5GESEkRqM7wF6WRyrLYpfdCf+aKJIpzEXXImXMWshPLd
FYhiM0OvD4MaMY7qPFAqXKRrGsJjiKIhC3FBOEliCc0ZV55mpIhMsALF0Lv6PRTczQqbVUX9wo37
8zVXgWeLoRJzkJgg6Papo017m1CUZ31KB91CS4UQAPUe7/4BNwVG3mo2TbpierqMfHYwWicCC701
jPyDp4f9f0ZlarL/rDvHoRfBq6hhHI6oRfapfqhAAZdXgIre18gldFITXzXUWP9cBtOqyMni8cn+
+6orIECaU5cUpddZ+XOshA4NrwA7S++GJgJd8nNVHRAeolSE2sgLtraV7KvlP7NgNkqud1Lp8rop
eiUUUXQynTpIY5jv4Ur2iiBHqS3Qv/URuJ3D9ZHyc854pQv6/2C/k7NQ8B/kKA2bgzZO3CEjYp2L
P1b87efVc7r1avTxaVxATaH0QmyTkQveI+w4cCFwBZJ3r5qd407V96BuXbnUCl9Cb345pYkjnDuK
ZljAfilqXdTdJZongUSZMXmt8fFxlM0sWnDnVXkCVRwHH6KVDDKJY1YP12hYr2R06xWiaSiOsV8r
uHV/whoO7CnLUEH7ir3zLX9DBDVmWtbNO2KBu6WGLoQR7afCmCt59cBmunGK7dUFBzvDrWTliYS3
YXz01JU3rqFfzKBO0j+XACXs/Tkk9wh8fBVm/RUxKsbet5QaUc6ZvauxFj6dLGvM9jZfHSLdK/lW
RZucPfhPE5iB5GUo92v9wxugbegqnFcYGrfyIABwEkdI3TV6aQWqJSjyKI0pxHcjX0343geh6bpz
yDDFC+Z9rH/HojMpR6mMw3DZVatkZnzmQBVQUFGum9xgwUzFWEpdvb9CLKv0YEigjk/+GS/94AC9
vUe6o7Uqlo1e8sSo2mqKjhfvEn0z6i4G9WFS1s4SK4ky05bFbMQOvJstmrtj882p94rh/DOBJXfR
WA5yfQ5bMRaIAoSJzePUzMTuPjxdAxwwORNksJUikVuVYYXCXkn8Jm6hAK7Si6oBImBsuY5H+rba
jKDIHOq8rlPt4XkNMYY89UamNqcG8hUqP5PBh8Ct1UYJVItI2r0u7/bXPdiUGDhGjcTxhV9WCKPf
oyitDkMb7Fnah6I01ojz2XE1J3Du1LFDxMqWfsC9j22nJIiFkzD/dCxDdv3+Ck9v5b6IfPBNjhJa
vLEFSbZPY/ATcDgkhoWjWuXvu3zLRnY9XEzofMpOBXH4RGHmc6JmlKSzM7lGms6XOu20F6HlbXtE
v9Tn5qitpUdYr3eAj6sniGXRIdEd79PexiqEcu9Uw5BUqR9maHhXPHxqoOPvgiS1Ne0NoiMf4GQ/
C5WIll1+dicpXPI9w1tgNYw6dYWhdpP5wl4i5BJHp6jBT+YVGyuDqH2MASk69nVqzc+yv02wRT7b
/ekNxbiOQPZ00jT5wY2xhW1g9bXBTooOvX7weLlWlCZhVJCQbRzYuKbpefu2lDJAX+Ii7IapfRMI
ExT059xmLjY02P2so7N+wx/ut8G9b4atzx48AIVU9GPvMDeSVqa2j5T+jJf23hBvQuG1mrc7KiAI
N3tGP6LrRaBs7j5BE4OY9KTiuDELYAiyDud/p5Zi7gOF9Bhq/jNSRH6QIT+mh7ftmeb4yy5zz+Zg
4M14kFwY+jXeLGMiJxL1ceMyemUJRwQ9kvmUgA8xfKskY+SuXPSGZ/J3dWTB9bHudOBz6AhRpE0o
bBcix8Fok1MoIJ6ryA3yJNRWZQKf9rl5+hWs/scHNJbBKlsoniT8Y/6rAu5bfwtItlemC5TcRYej
h4UuMplTtLnHY6WstFQ1AOrTXdT+0BPOzWC0/6KuHqU3xwPFYUwPAXnRZv/B0FJch5aIxSnY/zgZ
D0edSJ6KizNVC55PtB0HirhupDC5T2y811c4SVzVv/J7bVklHvt9J8ays4A87zDUP/qG8IRB2wdp
nrFoX9iv83l75I80JdjBMBCLbNMReX+5x+mgg8BABczCWurXfPXmiUiD/vz3zm2q+O70wZ3TzqRJ
+jDracZNq5gfQ9/57a9dK6g9dqK7Jqmk3+j+8d1g/m6aFeiAQ9FNtTLdjJmf1F/KbdEp5ZPj/Heo
rbsbfyPM/Dfr2ikPrSxOHhc43eN62i7O6NkPICPPk6SR0GhSkqf3qsqEsiJLRKh1vvQ1V+QrSIQo
EAxkUk4OlT3osc3HItaV7/y3jONdPsvsX1Ni9DxvgJbCuHMdXVcjCdtszs9wpsr3ClHkjlwwI4QR
a93eS+ZIIoaKwzfZcUFPTZKORYHhKviiU4YVuThV486Ar+Ut+x5hlRCZjXHZO47MuGkClNXq33w0
db9SCb8UPnXJ/+7AbRo9DzicEeXziwahH9iLLIuF9aVcX40m3mmHEOMd2gHDjPvyQnAe/9S91iBB
sRxiWxMlY/SMBxwxGPcRaPQsa5nb6BKgiGDKFDDavvJ7e6T5br+uv0nvxClmUM110dl8Rj7Pk4M0
aiv426vVqC8/0IVRagJrcsuC9WwZfrtrJ6+3pV2UgNKwRdRFSdMy7ct6biDQ6zQ2qL+FGFuaHRse
p0ylxTXN74RKqbVy3M6i1y7w3XjgNJ+p9wYiCHVbTNyNsGrT1cTFzTtKkZ2wbCOZ01P1p3haXQBz
YFVn/4InpjNM20ar6gH364pOvHJipRwWk1dSptzS74+dzl55DiWZCxaRnRbtI4z42viwzk+ki7uQ
rgCee0hTjBBLRmiTTN8qaNiXaS4pM9tW7WjVySKCch6fV5aq5EIFSiOsQ87p9BwcKAeY+dzt0V8M
OzLVWNLBZ47UvcFgovAMS0qwhoTBcswkUlmdeYpLwsQZEXACbkPi0BKUF7u+F1p3k9rIMvPG0Gxo
eKRDNBKxJWzYUI89aiTOU3QpH6aG6GHMIsayolL2FYRElZA3xSDn1u5pAc5bv0um7kgFlcC5zhlz
63w5wJ1iCCC0/NSOrA7v8an/yES0pwkpQ3g6NI/sUzs2e0k73vutaY6x6l48RyiW9zAwzSFKtmPO
6uN0rSahPRcE/enMRhJ/V9lpJiWqAOKjd4w9oA5nR8xs9UXKD2u521UBnncbei2Kzji8Pymfzy0n
hRnDs1NX6r/Q9CQU2EIRSmacrgN0vraxj+aproz2XUHMdSRrqJyMIv1SXcp6CsxyujHV2a2Twieq
Inq7DQ1buD6BPvvAWlo5AOA3khNPl7tl07nmSxoAgSEvbdyiFYLV71WSixhIlAAlAp36cPHVZh0y
zhHpuyCfnXmnTAylcXhy8oSHuMX+/KrA6vZ6UWcH4DKG7VqQhHxF4ySPGXS62O9XfhaYqtP9D8Nx
OGh8UlSLwldNN3ngj7aglbyjDfwSw58EBVpddzWvLgozoJ7uSm45zuOuH0ZA7UOH6by8u9lxCHla
RlmbtHHbpIEP3o7KXschZ4A97ds0iSVaSpCY3cYcCt+MNgJj2IV0wgtmojeivqXk8LRp4ZgkYXxO
waRs7WionAW2U9mu4VlQOFKrqE/aoUfmTQFcSXF4z1K2eT0nrDXGEf4RCe9wj/8gpdwc3275Ceah
G2PyuLf+Jfpo528ORRWyZJE0ov8pD/iyr/BiuqBwkIeX+9O1k4c271O/+j/Ac8oCDMnlbHBPxrj4
iGkBCNcd60zO6GeJnsdWZTF4JtXZharaxBMK5reNI4eqCnFRJ3pe0i+1wv4VgHHgsEKJ77BFFJcM
CPzlkt1PKbtGxQ18918pVSwdgGAh+CzA/iq5UfjCDxx/vy8Mbs4MMlL7DrNnxT++m+xYVpzqlF51
g31qCK++ZsDxqvGzqoKBnkxz/Xwta+j0z6yu4LQQ3pgbG3gqh10sEJuSer9BWYrvkfWz+wekJ/hF
8FSIVp47zePrXMamTK40C84B2deSXLOC0IIy5+pm0mboKpEVGGkCtozh3/O+QTSs3QcZsZmoADon
15wz22ebXfBQVSUKsy2T2eYJ3Jq/TQjep27crPlVeQR+qn8mWp2rlx3e+PSW5zS/rnLfxoFubq+z
IwMgLr1oeRWhmwN0FEeeyYSCm5ad933YN6IShPdJEaq34SF1F8Er14TXFMhX0lJHzjz5ky1DaJbS
9ryUfX1amKqVmrDTTEMpj8BjRlk8QWMSx0afB7y2CzQfULJ4r1bMRIJtmtn8B3VNxRag2jVqY9fS
AmGGvPdLvZS1UrU44QRubUJ5yr5FBDnFxIRoQbWwOOFwALJ3zNO4B+ADoCk4rfr7Wm2/LsUcrTiu
cg8WI5itk+BWzRTBp1yDBihGwThtVWP/eRhuZ5r3Npo4XmZ4ztKafO16spBAyd9ZdVHG0N56O7b8
L+SBlQd/VSeFX/Yej5Jd5rbWAMGtrWx/55b4MiQcVoYfBadmu7zIrhp7WMw9qMLTtf++17nO2raa
yk7Y+yxhMGui3Di82tdbLxAkJIxuDCuL48eQanFmDPFwAnhy4hgrWmDvRykL+biLgCY6cskMHW9o
7rDVSEDrldaQMk6iA34cmLcQOY6T3296+njOmY/U2DSDPy7dmwg+GQlA6atJ0haeJkTQZJeogvQy
U2zM0/gFrwh/wHdK9AkGkEhMjGl6WOYMpDIqBwdfTDCUOtQkQCNh190TznXOlIoIRBLptjblSb/n
7DrqwfH80KDIWqXdUdQUi/yq49SFJa5SropJBE1Xbn3d3Sl1KB0doDVnlhXK9S/+PK9zFfKptV+i
bmltCzbqIS9eQvZawXiymotMRIMGza4MSc05NtaUFTJ/k6lKAiN/uDn7u25eg+03sXmPsgObp44w
gUETwuD3NRTFHV4FMBPEynmAiNBgOMBNut9UvEWRQW331yHGI0ptssNal9v/yJxKDo/x1YbhNDek
irT3ryLKfs4/24TyFus2PPFKT2NKztn3M8tM2XIE9Y10BouKynmv3qf8r22ntu+y5EG7dzd3kEcm
Q3M+LCVb1k6bTDRXC9D5176LxTGFX+eyeR1CHlegDGyroAgpSrDelcQ9hIQNYWTRsG1jJFA2fL6z
irKREKz2fxmc3sOSO1jesj2BKFy9Bmv3MJ9aYGFjXBzr+zrrWRvSdIY+bFcArSeMfRLM07xElxb4
Mpyw1ny1fnPcfUQEOh13wg+peVN4HgHhEaMmt8dJ8teqL+RHoxAKeWtSd498X0DEpyL2G1NWd8X/
zgH5upjJrD8U58nGKnQZLpDNyLWWXe+IIPLSAU8uOSzs83mrRE+mu0vblmU4gnxzKOQ9sz7AI/WV
Rb6ZxPeKiRknjlmdRduJ6KUbzW5gwd2mjSu962G8hcgoBfMUQmGHxubC8msnJfuvdfTvnCYTLBfE
ZSuPEgAxuFsO14bp79O+6yvTq93EmLvOJBndWmXZU17GVAgrghHW+z5F8YgqYeclq4xPHhoYCMq+
v11AcVn/G5uoe2bhS/M+AYk8Yo4jAMD+aYgHgik0D3JSfI1tiZ9NSpQ7waKOBASoGDI6XPyjQqTu
U+38O/EbcVMaUA1yaGgbwXKvs0+9mj9b3Zfucc16qPEu3NODKj0Ydr4DAsUQtXX7ZHwp2VieGscC
rmNBYOUu3duUnI0LW73bVmABwkbWVgn9HNqjk8sdNm1QU0khfrvyffR8Tz5ZVZ81aISSY3qYHaPw
sANVbATt41tL8N8pBNdMBh/r/+zVlSihS2wPujL6PPpSbzaTYgA5Y0rbnnMRk/T2Noa5fKRUgzkk
ghhvql/gM33/8gBxkfumLAsDAKgX1iw+xFdIimWjaiFlbmYrqHMm5gg+1oH6OJjemC3i6OvmddQi
2uV2zWFMMCoKOxITQQdHcag3sPTlFQunvUzGUxdfqBzgqS5izaZPx8bN5UbeQB/lppbPGAW443gu
OeqwtOl9zXePZ2dZ3juKPMCwxrgcHrmMKg1yBcBF4oSf5JJCHxGoWX/Nl4CTDelybenPqM1g14v1
W/Yszbywa3WJweb/59BRD49jVzyqBGyhrfNjh9jVaqgDg78PYeh2sHdu/yJgtKs/Z+QtjafbiKTy
uSdjPsTu1TezhhQJottHVy/pBm4zFWG9um0qrzrEN8CK0xmH3yCWwIBQoyHy/kSSAUaCrwlgG+Q4
FHRHV+X7zkgaDhH3+/ItuTFX9He1cOkcC9DS8UhfquDosIWRI1BadHQ4WRDNGVHXlDDdEH1iIcZt
x1J3nW+ZJJfnAi0mESkKt8KaNTRxoQmGv+3yEnYZr5C+NQtyxijkegzjs8eLWb/FZ4/Pbcl1yrmM
wQPhLN3mPSnwomVR+G1YjXhgSt290ogdxmab4TB2IzJQEZwwuPO2Sojc9dEL8mdIJDS/IMtgZfYn
vlC8XKTIxEviCRcV3/Qqdc1k5Uu6VY7gemf8Pm0/m308ddDn8UkY1sCfWt+I/s7Lm1AYLAKsOlv/
mh5mW0bW/xZXOOFDZ9JiUH44o7GGlfAsG3mcegTtpMcxkbwqgVNIE0gBaLe1nqiULU3+MZ/RSz44
elyUIyQgCdEYqGhJT3fW4nj1EEJ4cqdvTQtrROzG32vD56/j5ebMWRab8wxzZfXqNXnryqMCODog
LHvb8uD3lsSyVZjWiju4YY8S32HU8p8nwBj/UFJtdE7icUgkx9mUCHlSbgZdkQ6T1ar29wSYbiVe
bQgxe93Ok5ghcMFN0rcQibpHMLSDmTk3JhjLcR2hwjrrqSlh/BhNnEOTaen4veuBlLK3f3/OXBi4
dc0Fu+70mX9OoDq1j09fYngr4Jk+74wh1Ut1veQjoyyA76dh9zmS/Yy7fJPdXo9kfQ4jffdShsGI
rXHolaJ44TMkSDBWgNRtdOqbQZPlZiyEt09HzzCf7pKZjFhVSjOjdTCwIU3Rn3qwpU6AS1ZBvpDp
UEw6gCTTkGavEAd98rc+xUx4L1dTkD0dRPgnD5MWkf8jR0k8T/BqRUmBvZ2QOOm1br6SLSdOlTwI
vfKjPUTdreKviwfeL0QiDt15hxye0ZMdRn4uAEuVMQxEcTlGdDz+M5F/y3fz17WXfK/T3Wonn9K4
OzBQ4vw3Yr6pmePRRsoEyc3OhbBoBHqyZGeMmRdJMbRgY6H0oYjgD5x0dELRHqr0uEBw0zrx1aLi
aAbI4kLgtmGLzEOONd1UiOEQow9Fjo+sfVyhDchuj5gYuZgQotG5nHZ0KX901Dma0uFl0zSlU5m2
MixIJACM5/+Rf+r6ASXTy8uJypbziV94JjsmAkIMu4vIg9Tcv0k40xr9kPWhqXteHL/5XV8LvINu
TVgHJRagWxyrM82945Vx7ULP1jpja9WluUBe5MPPMThtwGCKdFI1EAb3atsByUqXVIZvT53/tPfR
BKe/Aw88pgt10i5ejVfsrAyzlAPrhvUd+QK4kfHJUAkDMXaN5AKfA9JNutj4WI4PWRqdxDfk5lAf
TVYZSDHOfovCpynaYG2pkJWXJyL7oXvEFAFGDB3NOyyz7wDvkMF7JB2GDZtO2ygiDpEWTHnijb9V
e0qk1gIFeNJYnjNi5H5xGEoKWRfpo0gpl1lOdc8rS8U0W9pVo7bNYcDUeaslPuoa3rHXjCY7hHu+
8wBBgOmhhTwuqMqgqhi/BNCPiEscL1/OdDTfOPmD/bFwWYOBAMxcYsQNAjH0gqxmUAxzwfh8Igf3
W3RNsgMI0ACi/OF5rFlZLtAULhnpphoVHGVbD1mxEtrxDAZstU84VTpY/ghXpqLFsXDMLEn+uj5u
IkDA35Xd77iHjGX1jhSdapSTZMLxoN+PnYq/zXJdNM3eJVjeuG/JA3UDEpwicOyRu9to8vjrU6FA
MHxa9S4UKuPw7YCs0JPn19XShFHIpduZvdX5zJRPDNF0R4ORfPrv/JyFoQ0XgoKQ+YzE+qHZWnJH
DF77vyTVio5tSAjDXS5nWIOOcRSqPE8T23+DgpxnlA3c5OS4oR+d1L3skShYIYDKIK0DEbUiv3Gq
bDvYJ5QU6vtbsm/NscCEeoEElgzzPPeTu9QI2PriPWPMuCv8Ac5j4ycHnCkcT1C9Nzw6B++4lvis
k3+Q3KAZHSS1w713mWNsrGfnwaTL15E4br2+577l3F4EnfmO4l/qe4hQNYp0/iu/XKpVdLwGDcKx
FXNSSzrWSeKIZW8LOmuGtZ7KQbUyV55IcjK9YU0THLl67z7YdRH6/HTLE4Q2PWzryxgL8X1e9QnQ
wy7AaOuMrIzjp0y4ZeDpmPvSBSZTd92ZIBuA5geBdgvdXXOIM2QZxm9cMiDr4pk/4Rzp6apRpGwr
s8Dmrd1nFRCmWfeDboY/yMIkJIB5tnnfsDobNpeOY4szkydojMjqXAeZggN1mR49V0tHC2mIJSet
pUDmmExsuoKKiWpGP0AkKaX6py5SfVfdovPkxAnw0132KdHBzx72dLc2jASFsQmyida3fWAYORGS
KXarQ4GRcyodyqnBHZ3zok/TzGw6/R9m+WGddNbj5HLwN/OqzF/2rNY7kM/nSFC1hHXz1wDl+bsD
gVQuvrHNEef2iwM7z7FMyfCuou34xoQz4gSehyesQnMHxV/JwMiqfanS571lgrJ432NGTFs1xDQc
1nk4QjBdRN1amosy82JbV8gV92ltYeSbRFwWAbC97qwFJo3ltIpvqvZ2DanFKd5f/7zrjOzo5MlD
WyYoxmWlUpDoR63ySywUuSaM9drG0rOxQTMZJGOJUiotFuoWiOC10g8Ia7Ksyn+qLgLfuOy+kJ7T
qnh/54QENQnTmGSwUxjRoesc5uWaIJXhjDwN5bMjLZIWGPF6yiXR7BSvGNY9v0nwJeXMgPh3DtTS
5RWiNGWPZURPBPR44xnfY23kRKqOKc4EVRy0p8DEK0OfQo03IKjHs3/k6Q15FniufisorWql0v8k
bw9iiLhOc22duYYG8W0nFCAaSzsalgYgOhQHNSrgxHikCYWTJCqWHEjSy8QhoFItcWcOjUngRBoC
MlcsZF4SeYAsgms5KZ0GlFCm/ej8YTylvDjH20bdxyEb6PVlEGC9dC2hu6Ojtu2acnh6mPVTXrHI
B20SAFZyLcmXMjMlwhOo8MUzK/0sm90yx38OcFcqkpKscMFmIIy2KHuVnfoVnjxPIR5fCHuzak8k
qlXWNHrhDX61OM5ExTiy6iYd4O79AZwNRyg0uOP4JiuyrUZ+gAHDJV+xQ+PpIMvTd2eOVB9fCZ4i
jjvijxC3l6OEvV3b22vAm7Qu3bS5d2/jJ8wiZ/9gNE/UZaJ7y9u96mTVnPvmpg4N1VNdehxj+EcY
xmJl2oAVFCgusL3BBFD2KzZkSVDcif6MkVb1I81FGNuOWo2u734hZu7nINb8ADuPG0y9bu8QKHH2
dVu1FG+WAM5CQzMn+9vc4jJjgY3MyGm4xqbY0v0yKdf6+TiepHDz/8Tpk7zvje8vplRoCC1bLSui
GCLxBcBzJJCGphS4nrbwJcHKGPcgVaTCdeQpioDXcTZAAYAkCG0GYnUFggsx0kBdLfw5YOh4DHdB
pdC9iQFrM94b8pLtfX4UWWW7Xlk40qGyqiKHTtvtXEkffp19vIONdvocTOq7A1plHBdvBphAxmY3
WigUu5Qi9/W6Eruu+pgAmmvsejj1qoOwMeJwKAAEdA22w8IEqWryXOeJgCzsJnBLbVPw+6f64AXn
HYw+ya9WOs/U8Q0jOu5a+q56wTvxjZyzw3QB+IYx4C8m11Ic8+L1bspufdURRfG3XOozOJw0n+eI
9J3lhFt7tSmpcX9rvMUjoOmDM0N1VMbugsX7tMdJVyg9RqJWlj2SQrbNOhPAbqO4AuY68G91/rRm
8vsHx4oZ+4Xcr/RlIOABzdwjFNwk0pkmO918ZUAEmpgkJaxj3y5D6kIkZ+hc4qmq1TY3e8L7FU6Y
wPEDw3UEPDFwed/X+1jH6gIddSgJRIbLPvTi1GDZzFW0k54kT0YC7lf/KSaOPGm3f4QtOcVP43TX
L8TSJPnMYIrxQTA0kUxqJlPT3i+UO5JVu/4BT2DihDUFV1DFPnjPRhSCZACxpaZCvY+I56QUXbW6
ISvxGrUuFcAF2XJMRP/68MIad66qrJrtULe4PP2JDm8htW4u4aWqAyj8u8IKJEJWXR5PE6+6qxvF
mZORZQymtz6k7RK58z4UxryxBVk2qemQnsCPVBadBfjn2A86OtzcO5qpAUmRAxzhzVBIhK6KHB8D
muUUcyGc1DYVBWCvWxyg579MDF8H3ibapNb3adCCCY0352LOI+xnJf0k+RBjxChu/mCiek2zTr6i
13W3tl1z+5giQEfyK/dRdU4t8GBOKfCIr8m1Ngfy5jrUoD5jGv0ybxoOzxbdKB9YkH3agGTcADeu
jocho6FY0fzO5Grh/xUnAJiMSiBD6jhh3nCUjCQgrfZN9KwaRGgFliG/KIYLgamnpumeQszbgsks
6I3adg0L+RiZnPBY/DGPYY9kAuhUr5+udWQQcgxWLMOY0GCgbtQeELi6ERiCyYAFBnBDYral91eu
scPPZ4TQo7qxgXVXXGUvqz/F0tX59rC4zI3te/x1vqMgK5+9k/pkXnTyjWZt3ibo7OzbH/4n9Nr3
638yZ4Hf8tsM9jhayOeB835Lj6ddkqadAEfH96ODPC7hrOUgiF9QciSwk1SGlmQoVhlSsWg3oyGC
8lz1JoaGa8Lzg307xtu3i6dRHMacNEQqkKkVW4tnrl6yyMYs3kGBSKTnp6WFOtJfurJhEw90G2uq
VI+gqMJQGXSrSpqOnCYQz8GPDxOSfHWrGF7h7ShReFrK24VQMSIK87uRLQ00m+g/gbovglnRCJVO
xLtGGxIHqSbaiAUQ5r1YGbJ2edqXlFUbpmbf3mGE0mNIQfnJAveiB2oCAXQazYVT8k6DjVHD0UYS
eMWraNReeHuNmxlXI5lTbDxR8ZX5mYDt67nwHbGk0N/uNgxMJ1JDEP7FH9NuFqXnezQuqixcJOIF
1nfj/nqtLpyNZ79k6APq3YQer/niPHJ96dgBVG1uNmGO8kR+JpisiBsCC4fPITVfVgQ4VrGGda7c
7dz2X0gzPYOHMn5Y2dpIwekzAUM5gOooyy5Ey0vwQTnFD0RCYMVEG7+5ybwUC8EfLGPB6x6PISiv
1rAy4knt1oSpX5suRXRPjsxuaBUiu0TqH/WmVHNjITPEAHS0PgVC0Uo+gfBzUol6bCo1GskAaEq0
FZOj4Ds7pgAhCGsDyUlPCXXYN1wdPzj5ODBjOyp38rdNbYJg4xwOYBGM3YcxW5ULESw07hdtUWtp
/25Tkkczgxuagjlef3QTovvElcxk7cW2W6HMoE2yhgMcd29Qqa5vtN6mVFbIrQWBEV1RD+O4anu5
eg9yxpLXTVMfEH14iu7u7uXISbaWGbMYiE84AoR8Qu0cL7tGwSU86HEJwRbdOjjFjKvkAs8sXQKU
bqTAXMDe5kMW/PQWlQdFfcnYPkeWkqTBEmuLfgXY1RyQnvEeM/PfWDOFD9S0w+ND+MmrWFdmMKE5
vgoAlVL+aeyTwaov8kIQq0/6t34JxOBgnWUzqfiuO47E7VtQhVfQLbH8gWNP5UMjPvg0ySO1LJO/
/z3ecPKw+kBfJkNWcDWv2IIWgs+6veVUDIGT8oPXdKS3sRHxAesm4WwsefA6kXeqYrFRpXglf2Gw
SoKeQfqywq+SazSF3eJIWxRmpA25nhYgXz4OY1SKEA6DTrm6WpcIi8BfTKe7BJBmsN1d1/ONliEr
lUB0NfuxwfFCNjzzoF/vRVgkKK917c7QzEbvS4gc7RDD1h0h2nvUA3NpJl8CZxdz3rATyQXrtnbV
XDKK5X4MLm0yiUMKyrUpe0BHip+Lgh0qBE9BKGyH7a462tJucslXqv2wn8tWRCkmiQ042RCiXIDN
K8ZI4FQ0PSfDo81I89XDY5EOE6d8by93ingmdrTf2iJwfVVeZ+JgbuHikkVDqZZQTAKwG4lH+/al
PqvL7QY85fE9PGkSMOidv454kvD9y8cqjM5AUBbkqZNcTLrxUNv7UOTjxqWdCqakOVlTuWQByA28
l1Csx2kIJJmCsaWWhqTjlnrgipTRcDhgSFAUxlGIsyxg0XNIw5RroMOdjJqCplLGOdkHBFuk2XKU
VopZEUvJK1Sz5RnPXdG5/RM5ZgFFQlNQxBllknLNC25ltXmNgflsftIZGAZ10AHH3Y/JsHbbGghe
JAbzrf3OnMRfwVXeMmYx4VXVESqTD+M2vcOhLLBIaLGzsSpixLTpmtj5Tua3gWh1mcjbn/+GJubD
GCStLH9dAhTqPv0ifefdlCbqaLDxM5gwoj0uk/XZuzbJIFgcjUiW2v069pxAaneP/066TojVF1e1
Qg9thASupzo3XP089aOvrBd+Cq9Xuw3PHw85Ff/f00UOUV+te1DHbT0PpdJ6YSRJ/VE9iFIvVmwN
1vMaIAMdV1OQ8155Mo8tSTo5cE91ZHy2+LvWa/IXDg8+euCgUbPl5vukufIjWRgahFQy6un+LzLS
pJ+n87gOJ45aKRPxtX3AFP2C6wpGeOZ0SWaGSnWRDNorRVFc6mYEORqXjAw1CgpIRhv3OQgl0QQw
TpQDFq9UCUijXq4ueYe2q0VxbBgIysUyOAXOMoN8VklJ27KjpPunehSwk0FM+b/sXH77XNWrpNSK
N6gwXbuUbadwp2RuZQij/nSHOHKiCrtCJVtje1tLqO9UIqTjyUtKpH6dZisUyIyMk1VxoB671Yfi
pTafHori03OqAk8Z31uF8akUgUkAEGuwLlce1/x5znu+xaPJrthNWdZNI+K734KAlBLOiTr8V2X+
ZUSjCbi/JlgXnKK8XPpfawTxPgigtIQUOA8qlab+8ZqGlKFHzUvvHFtH1hShB3tLokL+BKsTzrrc
esC1TbEhCbw6nLZgNd38RjHc5JCNxTl0tWSselHa1uikpojV4WXrZNKuVji5onUORMZwzOitLxLL
TiGkkbFz/ahX0ELktWPVsYlGNOew2AuGal0lAWU3K36ZJailw228SIyUI2TlcuM6q+n4ZpGr+eG1
zTM8U9F9TehdoEeyx6gq2g7/M6YmwjI/Piqpqnb5fxmQmxQNePfuDl75BUDwRs/8XpX1fdRdZk6X
DNlTK5ofMT5LgcltI/sOt0p+IpGQavyKVES3SjLeo91X2vqjQD4VIHFh2xKVCWFxAz8ppbqT840c
q/jokC6SqW8pq6w7Hql9sbZVonNucVGdart9w5kr3lnJVxTt8Oux6JP9CxgtOIP580V6QdHSFN2u
5afarAyoA454XAowgogFy9+opmGPBpPfWNH34m5jukYpvH2s/JhvxHwvkwdLeUSWo6PBIZ2djrac
RVFCrB7jYNjl3zHUzD3yCA6N4Tx5XW1qGpguSkIn/EzStX3C66BO82/iGoQ6BetQ8lnfFgsWzdxu
kPP+9cRXP5dtU8KAWvWUPF7gioKV1ly8mTs/FD47+H5lS1wOC4UXGO2P0pJPk+HZHzC2ET/U6rdR
KW3vqN+mSZdsXgoGgy9BtG3FnAhbU8b5TDUhqgE7tIIGnyQPTu7vvBOUQRXam6Wso4+2t32sGJQr
JhAiFozdfskP5Imm8Muh7remo9yQvPS6N4eYnDQuWyIlerv9N7+HPbggfDQIkxXrGjgFP34TzIwE
aVjNackxwv2C7Trj7lAXNkIZ1ziB1bKs4oXN5ygOgw0EkpVZEuxOizFVmhR/OB434vDz7bbDMGpx
vLe0839NwQsuoX1BEfRzwnF7lMqPoGTnRbaSuuLlvrYBWI2So5imK/TITQdpBzgCnqiJpUFHPSs1
Sh+3diBjrZnDQOqtUGv/7YfXQRGpg+JxSCOulUJ8YIpGob8eDS5apefsxfNWhnFsbwAXF6IbYqcP
BCb0ETcwnVmCp4RIphrloEvgafIAdxf+Yj//6+Wuipz5RyNn9yFHK2MN3Ax5+qO8xUUaQl5Hm5Ox
f8v073+//e0rSjGrz5Gw4PQQ62pZQNxb5bmYfvs9oq2zdTLSz7Ts50xdv7kiu9JoTnoa9rlgQsge
HoDkmy5bAIuRYmzvEl3OsC995OOrewuKHFARv+N6nOOwaViHiOTICnTGoHYR/IJWURT7k79K9Aqp
BpGaYC1FZ8p1kmEP/0+C9U3i2oi8s4ldk+kvJY4D6e2urq5Ly7ETSjT+Aqx1IGvtHwTCXP+Rb/dU
xKRkq5Ds5yA6D4y8506WTMMddDY8s6I7nYapVBdPHtLK9RKlUMVuYVolIlGMgW1Y4JW9G5Dzm3Hh
4iGDHL/wWFGmnZuP9ZYl2SFjwNecru0498O8wAfrtQgtXnKEWsBrKF6TD5UcWWt6tEu8A+2KSU4Y
Kv5YGrGEI1bRwtSuzChtOkItdBDKUWRvv6M86a3vahNPTF3SBIyxYau86QVmt+YtU/H4j4bB/7zF
NRHew/I/DHxWL8GaXMxY2tJeIvbgeHEEvCV3Q5bzB4iWIdvg478lBXr9J+NZX7OB1oDvd6p+s7Go
QgBg1rV9jk0pmr/rpcpq0JIOp9U1azdCF13cygOwkw+XW6Z4Mf4SGtA0TTuKzhTLWrAwEEjk1cgf
usAm0E2lhNokp2aJaSzA/VtWAZWDS/e6Ng598UoZsIfD2/MSFHgDVf82iH3gpH6gxqEx6ZApDdMY
TlxMzB5LdTa+8TFgAuPE4OCu/QlLDdQq2EmWFq63b9A8kjtdsSsfOGHSJu0hAV9JOr+ZIvdW1csa
jDlyiiMsAy1pSl9qfLjYvHgxDOULDCyAAzH5vZ5GuPvM0v0WHliBxr7ti8E24MZNwHZgASo1u04P
SNS9Q4xwvZOurJlSUSQu+04EdPNB8oJYuBLQU+USvG6itGRd7DDth69fS60IGpHSaNn+9jWOG4xL
BWo206//Y4FQHH/aZo2OwpFkYa5s8d3DJFqe8Ki+MlUv2bzlTms6zAah3zivvxuWofuj8CGLVMUF
1E+j/xGfua6oC3sTx1Umhq6ZFM2xGJ3TG10xQWDCwkJxB2Nzpdne1PEIyttvbXq8LaalsJTkpT4X
1z15e7UQqRXpdc7U1ZgFTFKIg/fY626ehtS6rbYGTilnuaqNaqjECB07sLDZNMTDjqrDgJjuFG66
o4wzZxKQgDiOIGLK8WnV341z4nHrexZDulTbgZFLAnNd/9dY4kUL5zW9gbeH/wjpt6uJvdhMUPaZ
LbAoSERlVhMoX1THzLDe1Q7GthhQRZCC+Gu8mWmmrKgxlp0sFHqOA9C3Oe4GE3itGvwdaEx5NPGL
ijE0I+4iADL1TIKPm29UpVwCiNi/gYVaKTJM+lOZthQi2/j0DNSpc+EECA1T5jLUcuHZtmuKIIHm
YzkDazUQN56mdEQ7eFw34N+OrpNfz4plTUz1ZS0LR2XV/qpwJkApzqa6N18pZ+MegBNH2/iF3fcQ
JRZS0Os1XfIACoy14UupbV8ePLl2qEV4x6VdRt9mp4EnfBotNGVFR8Y2DJPp/B2tRdeEMjDgucG+
DgFAo+AITOai6/5BNwcR5v1nOsqS/Yb8NDcGLOPSjF3wPa7EJWJM+v9eSh5UzPF4q90AUMXD7Ifo
e7UF4bSCyYdnHMggAB+jAr7GCIkHMJgvMgIYTvDmmFyuu8OWqZS1RMH8Al35tcc4T4bRBM1gbOVT
0VZgk+Iior6RpiP7XGhiSq2bsgHkZstn9IWmsWC2hIpb3VjVzzobG6+W0fuoOdQaf8qx0oc3CD6d
sNivS3pnoHdTvu31asyNBkBrjfobM6PAqS2I9YmuWywk3NZBah/O7s0bRBkLo/OTGd7F4uR6g/8D
eCZ4YHIRlnuHc9tDHj4+8DkLB+fsVapa/gqGMMrVHfQs5jmPVD5vzaxpLXe6v9Vb3yuiteHtYdj6
bospoC5SaXQVivmKay7ndEpqZxUMJO8TWgfy8x4kH8dWL+rOSP+sXcZzLT/KVZ2JL4yKS/Vceqe+
adoJexagwhfgF12p5VI7a0oXsOiNxbkS4UbHd+wsZiVlhT4OWUYa/WGS5HY8ozU+xawvOLVlIgKn
9W5d4Xbz0ZL4Q/mABzHnmHik3N6haZLi1fnDORZeaCq3xe/IB7sA2kQ61EMU9CVzkYPL8nwYXM0A
nMnzYP+DA1oCb8gKH85k+KgCxWqBZtrvbjvMDwTKf42mLG6ZM2kSjnpXP7gZoZLDYZQv7CwuN5sx
7lgqVqLove39Gt9I6U4HqIF0DVAA4jR4nXKBplcsIOLe/5tBpvErns2u+t4eL53n4SIQaFONGeCN
3tmdM0cMxscmkssGznHud/tIt6qmNHrND9X57OHkkbRiE2wHQ/5UsdNNpuU7TpZkSFbl48AC46j+
Fl1GxUVdCjq8tvJwG4cJXd4jLnokSwxcvo3jAjLV0H9W51dsm0PPOYvgNOebnnq+4jFu+7TaLjjF
yaFpA0UDe4jb5bX/Adh3It42mW6hXDGRvsiZ56x+lXpPQ7qSCSPliGBS7LvTlS09M2pgRhInuzuZ
ED1si5lnSPVWYXwbjBLuCW3vNOuHL7iaPGxbaZJbBR48hzurVn2RmPmVKvV8PF7Ql7nXRUAnvMTC
96IFFr0+EAiIOggVXlvwQFOv2oFlAUUa5ZJTQVabp9cTF9plKzichDYKjhqwmX4wq1o1QPVLWegW
vxVYUJohbZw4ACJwkG9U3DELE2lDDqDKoQoj1RN4UMujPfaY0gVrsr6o6SU7RDqtaQJ9Rvxdo4Pf
N2hoGYGkQ6xm/IzHbR2mnpwNdYpdAMKhN8D2fdGIIorxb7uH1ec8FLNV55Ly+fCIx2yvSf3XV3PZ
39GVyYffMHfTOyp0U8i8QwYA6q8aiu1oDHcpEgjLNVGovj9z4XzEiIw7YW0P+/4vxVxd9f+B0MuK
mXfQmuFaor41uHrJCKRebQR6Dm1VOxjG8FVF1OrsbMvUfY/RKSC99ER99yMthOANjva+6r29EigU
HtWOB5wdIX164OuS1xI8PD64BvX58kt0jW+hAaP3VNhRdH3T1pxB0Dic9cCMWBhDqQFavIOQmMnf
0SQsJ+1wJL+zJuYqrmzgsnsr9JCpT/j/hXQGOUwcgn+uz+hyQwSCIL/vuQ64kasIU9AN7DK7bVAs
TJqQGsAUXbyNPFR2mBqy+NUURWtLBnBcwScFcEDIxwol/Doa7qIOuX17iXy2N4WRauvOBzijvpXk
pvSTWQKC+QrQ2CJ+EJcY55qHkorwxu+3sxzzC0LgsN/HNvcaOzLCuQS5JCTl52ob8Mpjd1+kSIyE
F9KJgWYDSE7CQc5MR/2hN0fzchqn4UWDf/G/TVa8KwrqIN37ho1UvW3rPCOROhlTucbaFJrdF3Wo
aLr8u5aMTPU19t5z074H3urNJIfOOULSKcYTkLWc8MiwVYi190F/U2T+kXObq1HwI/g+CI7n/w6I
mmDwz+lUxSTrSe4dSUttGpxkyHt0siP4qRjPkHpmzLHimoizv7qAxv/U64mNpYcMSeUsg9VrvRBb
kkq7D24flW+fbwDuevkXcYA5xA2MDcxIsFfxmGnZzkUEqhjq7DmSeYyPoOTnEOPpJF5w4D9vMn61
QUiMTloKDYDSP6cOvvYk2kU8tfY/bME2YgQWN8cX790IRY30Z/u9vEyrYc6H7gOqyDgZ6x/3W6xz
cQaBu+Swd7OcdQKWNvIj5DFL+M3IZm8z6BjGMUWSz1yKtkp8uSiA7y9ECbP2a78GoMEq7h6R95pb
3uZe1kmQRoOQgcgBK8lM2RU3zwqSWib9bvs/tNgpQy2sUQTEZd4La9AtWj/3rM2Uhu2bwzm7sHTf
btFxQguoXTgGV+pcShAzmX10eJojSmnBHI5FZnqGaCWJEWWD/QUFh7pFp2SKL66+QXKjNJSl9e2U
Fu1psHH7XHsPU9Nr/CSG8P7OBY9g+yvvd3QsjwCcxGFJGSlH/dR8mbDZgmtFvI/NqXgmNtjICmnw
awiq9EUfBlQ5/8FEzNpTL1DMOTxnm1lj40VpIxtEGwuFnkCUfWCHlde82i6ERFa3+ntecm7+pOA/
6Xd9lRq4kXGHK91YZtB6RIygIPdWd0gc5SMVk38v70/SdfOmFGwkaLILwPO3bmXie+qOtCwBtaYG
RnG8YZxYtHgmlm/0GDlPwcSHfuCy7gFxZECHOCnPQGds3bFyKC1ZjASY/4Ig69gsQh9q62SzxZH1
AnbabkUa5YavrLe6QsWGFkD/OVFY8XTglWoQp9aaATwaGNk21r1C0AXeoQFEFHreiSPrszwDnO2w
UNgECbhGpBBv5LWW40xiG8C4sVDkSxJ5tc58AGh6e4hYWREo8tV9Jhx8CTeO4H25VT4PHLomtm42
di6RqretRG4NaapW4nFm5lGryrZ2t/viZRoDkk+zksN+tXhgmgDrhlUCkc/N3ns3n1Fpw4P/vz3k
lzu1v8Gxga7JyqywOn8dwVFArgMdr+NiNrf9xJcSLcmENoLfBMdPKlYJIqt8f3OwNTMNhe51z+3l
WJ1sM685rSqV+t0H86H61vQ5Q+4a8NfFZwh+MeG8v4dQfkrS95Vu19XmjdvCAHRET1lqbqMCvodI
PPuWTRopyP3xiu0e/nEm3DLdcNKHbjN3lnxmhab/Ht0/a4/C0tUXDRY+pWxV6Q+H0jm/mxXlkQkA
9xB2N7tUwN/LpZIfej8jkM//ZNG5qwFOmOx8BClk5foOrKannfFXmEZA68yWqBMrE86/MNXV2PtS
M7QZfQdfdWAUQKILWzZw7j/51HuMHXAyaUG9iMvtxbBEWytVDKBGjndihGLzGBOXMM8rtUEDTdmd
qolyS9a0LB+41uzdltDriMKnYgsMNyymqcZon2zNKcVLy7WZMF485jwm0DIXQc0/752UYs0V4nsR
ZRtDVdVIOPwog92splyVbxgHgFn92gcm7EcNQBgTg8okDxSpuEq0ykA4qQkTrpEesml2WDefm+MK
mCn+qMZo8OZM7II8DPJG6HAEV4kDVRuGlpkL4gdeKPmaDo5SfrKoKhgPCIYB5GhLtuyz+xcVIs9j
XK5gVlCUdM8W5pT14FIb029wNMuY6yXg+y3+M1RG0MJ5zVlfxs3w2yFWgMMAnlU4J2Dg938o4bxc
54nbkIa2oTLT3imapC+LDXPrgTQREN5JsYcSFx1muYbSwqvipKNJREpL0rJTLB6opgf84aBpLtb5
CM3TjoetiiA9f22rhb1jg2RUS/PPLZO2TruuMd1CVyzZGeEm1RxsyoMCeigPa2LLVJjxs5HrWNNX
BBJP4g6Xi+JyrxwbkNB1gmrPI7Km0G/f5ZIuGNHOWI+LbtBMlUgj2FQazR2TxRZAD1puf08fgoMC
FKTed4BATA5J2DT0C5BIZxv13SRv7nkqEMmOqtwJlWRw+yI9bty0YYPOnSscmmF9s+oJUodnaZHY
vuLIJGQYPcCfmO5p5rscUmeYnujaL5gzUYSN69881cPiweSHrKTuo9jpTXO1YKxZtopDywfEE/Hx
3uiRnzLlmCeqD6hXbl6QiXBVUdEin/ctgaAjN8i09WDN4wLssKXwYy+plW+lGVrt99YqXFJkW3T6
czxnIt+r6rbAj13DJBCyJyMCysWhrszO/iA5DSa8Lvr3nrfyi3v56U5eX/xARBKtYASgM/lX/dnM
4V3D2ALN6EFbov3+yrr0maR/cyAng06z2UbNqpXS7V/GfpZKI4tMFi+mDsAmcFUaOIZBYVgMxJM8
7tzIVw2t1XJFXPD5WMpGGYEMi6MPkvTd5GCU23smYMuf4tkKwHWSVQ5syKQCK2eed0jQ4Ork9OzZ
C0PxXVyf3LSzgFV6D6fKJUFvNYgG57mVR0BOtugBnzX8r/x0LswpsWwMsja1LypdvI3HgXORzLW2
Uns92S2dELvKllbbQrwme1FV9cnubOHwZvh201d9OFMfyuR2meUKBE8w+OvTQcodBxtWeVX1wdiS
A2npqliv0dKCc3Tvld0+dxpu7ZJQNRaTNcMQ02pArLDjtzuJLlLd62K8Iu7h1pfwKpafsJC0gDHe
Y1aUf0fjYbKfEy4PEAlTSMuBJ0VCVsc6td0+tH9l3AXhRdsh957OAQ9S073TGR6UYEm/4mPpcD10
XZ0lNWJCeKQ0nJO8+FWbvf01tVubdKIZvJYWaIRmN5ctL0VaQys93wj6+AvwbO9R33r1hlZ1i2Rb
qUS0geSoNJrSXA0QaYyb85Fcl68OkVT5+5ZjjLMCoalycncZ+NrT8ZcnXkxe1ZOjzfbTZ78SyvTk
D93Dq3kvjAqR0+yKd3q+vdqpvWQNJrWzUvKJi42fVLEWgkXFuxHCvtqPJOnvLGtVgFdmrHYBN3uT
WS/kreKIX1JT7P669MbXbCZLQWV924Y4kjkRRJAQvRMesxff2SOwmMbWqEpGdX/FHZluDKA6ApxL
wVaI1pxp22XV1JFfqZYWFaWTCv/Rxwug/VsGNBkJpp3DhUs5ZwOuYWwkiBvZjx4B0HGKPeqAVVVe
iN+lR6IlaAwtJgqqaf3wP2CqPaUGY3+pnph+cUrBCFnwhb6pTRJMyv4ZDCfgtsNS46tNPlhyEMZk
rgPe7T0XwOm99zJ6HS9/J79I99DVEhmagdbD8KVj5ovSfDaOZAdVlEk9BOMiDBATVYnp7z+TDvbr
9Y6HyBCHj2EtMQO1NUBa1hgQJircmCRMPOFZhmlbioJEKkJbS4ydHtFMeUXqm6I9f0dkI86B8PPc
q6t3f5izwc/s6SXT2aIn0exZUYw1S4B57A==
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
