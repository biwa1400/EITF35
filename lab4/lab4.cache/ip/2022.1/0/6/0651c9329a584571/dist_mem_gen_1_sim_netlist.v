// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2022.1 (win64) Build 3526262 Mon Apr 18 15:48:16 MDT 2022
// Date        : Mon Sep 26 11:42:35 2022
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
  (* c_mem_init_file = "no_coe_file_loaded" *) 
  (* c_parser_type = "1" *) 
  (* c_pipeline_stages = "0" *) 
  (* c_qualify_we = "0" *) 
  (* c_read_mif = "0" *) 
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
Jw/CvzLLYWcXfRU4eYGRRq+ga0/g6v+2BlCo+A0HqEb9xPlZRpqMmuZg3w+IStgJvKWUay6Ysrvq
VRFFHAfnWG6uatOky565Meyfs5lEUrOn9L2NTjN6bDQRkjM1rNLLr/AXA5oJX3IEwIYqLPNlEynH
lyRAZjdWmSNd0WiNDW0vKWVN/HEZtVMj/hjjIvfmqKJZsXLDeMj3KJ5n1oyhg3qjWtY/dsqHao03
Wes14oZQBePZdRxxQykvB9mvrlzNhTgQMJIDmJ4D0qso1M0qHoQAEk/2zONS8TFjsff/FLnEyupJ
0ElBlPDv+/g4/Ml/mZuBvM7bqvRxRftSO/yOOhbJBocWYEe5XsaufwcRuw/vdAlAA6SJsny6t/H6
4LYCEwHYsGR8Ma3936GxY3RhFz49VA3Wm/ePCjmvR+1pNYx/iwMOHPh9bMyGhO9zAEoNEAQ3AJmq
ObUdM7jbY6uEaEMLav9qA7kDS8/dUZ6Xh5H2lCrZCUFcqZMYj9SqBhijNcnT2/Lm0Hyiq8Y0+l7q
96in9zB3sIJf3ebzBrCdOY4iXu6n5R85I6cSIYzwtS9bNIYodfFAERa5HheOWpqxv85nNjwrwZqq
XyIvi8hrY2/xGnVbn9jZ0ogOmHDWc7sd+bF5112G6udYrQ2HhVukbDUoX8ALfMn2AMzJfxpRGV1g
SfH54fcaLNQhyORu0bUG5ynj/tqDhGkarKVQ3/csw0qDK4zVaDqLEViOylDV3PMiUia1VabKTMmb
Usju+S60qDf7o7zAqd6IV3zmakKlBUp5lj2JFei6l90731xhO6lydVjtNd09KHGfsVJuiDMRUXJ0
3PY1tMqxi45VkXwgk04WEWwk/QfcULwY5ngh/JydQ+kod3QY2nx+Jv8AQ40rDVGZkI+B9x3bLHZ2
mcWYFzaxYQH2Rvbfum7fxaz/M2oA3leGgZfo0nglSpOgzVNup74ZxrxdfUj+PVMKzT8cMNNW4yN4
VCmFmaPXMJlof+GjTvQwUHQ+oL0Tq6ZzQElZo4mLQsAhyeKpKFJhq23ARhUe3g0bdDgdPZ+20tiw
R1xo7+YfY5vf8ksS5zfos4S6Jy1wFtJh0x5sNIZdqyUs1eiYmrSXEk6IVvD3mXHOcbgvlRCeX5Ct
Mso0ysbBmlxdJPdoOtDdEDZYOxTVV52Gq4XcxoCUqCmELqH3SkIK+QZKkVQPVOFFtA5vA1TsXQJc
iLGkHLVB6I2LEdMIQzIYS5hbg4N3zRgGL6iNDyKlMMa4jn93SuNkNz0kJYFIlvo80juNweSpyPka
yTN6SZ1wA/AeMf/9VBc0imUTObp4E8mdeFGDuGsAn2fyNx0RiKUs0Jr/Vi3y1rqqqV2HjqYu5wJW
jht4VK33Qkj9Zh/N5F8H45O0eAkDbjSZnTHDjXy7hEZKUimYv6YyWiZbYngO8q0eYLQX9NTfo2N6
7/Uq2X1Lgki1j2eRBsnkfp0WqXHilvShm9YXUm26JZl4wYJ7jP/jipfqX6xY1jx/pH6DgAcK6zKC
h2J0KnfyydLlYoV13mWdiMZVoP1JTImtrHp4G9ltrVzUuNeY4xJZ8ZH4XOpK+LAJYlTkCq3rWt1u
SNWdQl/+C6XbAGXkDLnDXn/bGQzxFCSOeVz+emmuxVSFXwanqzd8bGdVKJsYhUYqNDOvIXAvGDCB
s5hVv92MhWE4bPMqfbIG1ZYMfHbP5wW9KqqAYjSLnEbMJ3giW+B9CNeNJjPeZA3dhSDTWelxm+qj
ZCwBkeNbJmvYkXYaWbSjdJGL2DAmkZ20PvVlJmT7MMif0kkiqhSIUJKACgKfnp6khMb3+iNARrUn
dZ3WWETEClZkiiWajJPut/ppddOvmx/TiVi2Q41A7Q6V1ZSjL4RmUekGRl99ezJwC2mrQDHTWkkU
sVcBDd/V9Li8AGfLrKci9VtYRrUtGcfsxSiPx0Xl++qVyfXWgm4bUL4B8tG7Czq4vZLGHEWqLhRT
0jheQhpuNHgVxhzKHANxaC+TJnXrIW5RN1zZ4hsXHRgOhZMAv+OQeTXQIywG1tn88GHw7GgcSKUn
P5uKPt3Qkhc2U7qnCsVJjZne+Jphp9JpZHwXrCNUJxVxGLD2aQ1qaPzw6rMgzU+9EzbEJ/vfEcJS
wpBdI5DJ961cXYSETGV9Je1MbjAV+hDlyLRdNeYon6eiriLG13H1IRQmR8fFM7381vc7cciMwA4H
FztqnllBHq/znJJjRiNsM4rm06x+dvx37Nfi1vpH6zBK+Pw5nTj3oFdgpI0rlgQJEwT2WWSswscg
yCgp0AKEtiZ82mcc3BcaZ3L84LJJE54FS3ZnFwF4EldGPtxJhQmyK12o4m8Zm5b1KNmJhPXTd6Bw
PA3NZO9114LKYFTzl+k+Q4SIZG0/k3OXxBxkAfQPPv9QruoUT5G2CB1vgmXiftXBN8LH3ocbY3WX
BBPxAh1c1qKaHwjZ51L98zBjpj48iyDe9WHiKlwWXe9SepcZDWn+uNr6gU8jt9Ham7hFjgSj3bIs
det47WhS4v/gneFJGiHANc/6IGhOyCwhVbmYP6osRPSKNJ2s9lM1qIk5eHYBalHx9u1HuJCtJQWY
hqEf3KbsavRXz8Xf9r8mhEpA7HAbSjJ9mup82kpzrmWB5OJqKRsAZOFPbc2WkOyumS5YXGr1lqAB
d4COP9SoZOmMivVX6WLil1CxYlfxwVdsu9b1mMRigWTMEICg/lMYxmg9HBbYpGDDeqQtx1NC+Pbo
XkUjwdpzmzrw9InQq5a7jNlX45h2XuPHNG3IQ+Tw85+OJ1uXdV4rNW7qJefa9E54dOGbBH22rc8V
48QRsm0Xj3579E/yLdhfr94OEwFlBeE6qfctbuHw9B7CYVwmsXyMLy0fFPQhuXoRkyMt8cyWjo4x
bwv+2K4dvzFv4owPapTDSqMNlo5jhPQJ/RiTlfEP3SFzuw2uCs7wigFnGshGjlF9NDWxgctQEbwd
ZG3ffIX1JC6uMwuTu/9HeL2/yXi+312mz5jBe0Sfc9o9JJiJM5ZgPFOQh3NGeJZTKMamiE4Fg8wa
c7SbMBtDsAdWhY0IwcV0AAihgzvPRqnRUiaPYtZUvykAGmyRk0uyu9CfzR/nTUlSsRBijbkLptWD
NWQONNS4+PP/8yPrcda5toM7idKI4oczuBqmU5ZUJwNH/HLQvX1LvWkOwghhmuehJdK8n7ua60GI
3aqw2wsCxJHDxTn1CKCJi6D9gi+yGJOzFTEJXR24O0lXBcqYFPY5eDncWacYvil8hwFJWgTGHxhb
yipkpe5d3ZzH2Ghr6adB8Uyc1f76zXMNu9QhB6+MjAC78tWNpWs9QqH+hepN7pNrimQvYOliG2kP
Rpsy1eWeAl4xEBv2+Ybt2P50pkohd0yYcLSfwZQ1tpJkUfXyUPNpsD1dQsmuPt+Jm/J0ZlHtcjKE
ACV56ZoNeCoJA6nnHWgtMxwFIXyLpd1+iIcGpYXP9N3lBKQAiPWBNiy6oxtRfsaLJMDrwfIh1WCk
m/V+Kz4o+utgTTX3C4ydkNPjcTCGLIi6ft3juslq5nTATTfXHc9tCYCq9DuN3xnbK3gDQlC1xaEE
TBRaOoerZ6IXLIp+eO/NCfqIDosT7aWDWGcs+6Zop+UX5aqTmfDIR7K7bg35AjiC+NnNhDANv6+Z
2yKK7spj0WAok27l/fGtzNCaPRTkuuuUkmMQi69Q1QapnVNht0FZ+nX61lUF9eH0CjZpjU6lGCUi
7ler6J/3nuGeuqB0sP0Axrz93kUUVpOvgrCCZWPRYPoiZbt1X4W2ar0hu33dFhn7bKyultfa80CT
ZRcktoKC8svXrthn0u0pFnUh+DKp6zr7sPwRb7sBInonE/cXHlQO7brLDEESQ1+BEBbQ35eFgydc
dsMn0qbqLqQaxwAO6Lzje3LdalVeCX1GdMKMKh0T4LPoGl65Hf4J6NcVksTPTQjofgJnkGF3xpJL
Yc6EoX114DeEMSmnxrY32nKuKswJkayQy7ZdGeOSWo6siSB4/GJ32b+JSUUbtNSvDCfkDwLZczUO
epFhTw/clUcwNbB7DJ0xqUZ03FPHsGmFt7UitL+uINiogm3CiswCWBlE6XsEdvUYYVTgX8CqkdML
YB8K2kpv0eihYGArQ8LdVlwK93wiNkbaFTO0X79jRqReXioYWoCbRfi2Njlohn1ZaVAIbfwHs8Ei
qeQ8UKMvc1LHttDSJo8wQneAlwUfrLK6+tTCaxKA/tpHB82c8ku/Mae1BFdv9/ItI2+vQ2AM4u8A
I4qIce+bBjH+ohh++g1YB8+S6iy5b3t6ZbNAgU7C4jiQNCFcuTM1JQh0bMdO+wkALI0rCssztHBz
ATwlFEQesaeoiJW3wGcs5BUn8cxJF656xo3xv+1BZmuEWAXN1Mpr320w/dv3lgEPde4qLtdysNMg
Q99YEzSNg1L0PWqonvSnEEo7NJgGSezRImS1d1peahkTByWN5MqNBqoPfg9pL8J5Orf9mu/a7P/O
JmpC4/EmLArlvBOj8Nj8gzf3zv30C+H8dd5X7NtFfBzCdNOzlkdQIPLcSzAof/tvAbAdnadPplBT
wEWIlPmbzXsNIjp7OTOhAkvVS4kalwkAvIEDYDJwou7duNfqYpB5mb9vLyriJ/mp8ZUOh72fWeZm
aewKAc7xDz2aYT+ACUvcfT+kqPJZP1DgMINN0eRYqBy9zcPfx655CIi9fnxrWN6FuXMvsnKBS9/R
jspiDaQqboHgCcn3o6/y+Umi7bxkqdnNG9xyfO8BkUkWc1OMxSqPUat/X+3e90cRVjxZ2GRvcwHS
IEUPO+dgqjbFZgb9PquQsnfu9uE0QmvEMwU5ggGm+yJWGMOFFzte0aWfbfaLiMa499ca/R+29SNY
bmrQbRRtjLnXVDf+jUjlxyGSbPQi6jez8WZ4A/APgmDwkqbXvWtIA2QQWDaXPZXbiTiCkvVModNT
0k5K+Iy0XsVxL6VYsuc5/Ifkvc+38GcJ/46KqEGydKMEF9eoPSkKkIhjUvkie2luG4SCMcLbngU9
KCWQqW4SBh0p/MGvAXfGNhb7mbKZcZFHuPtzlw6viAfDEPouYH/q+gW/VxYtMXkMZdFgFKtL2+x6
h9arZQyzp/20HidGmBEm3OOCeiVvI2S+ZXhlcgc/a1xk31PvkmLHF0/+vUOAQMGqOtjZJqimGEzr
kLRSbz29WhPszBFE/gU38uIUu65ZlDdMESRC07U/sxjNyRf5kwhj/Qqth1FR3DV4eElu+UKGxsWG
xx8hXRD3jAGWaW/yhHXGhIKuftVQDybn9ISSyDSXz4NlKTUw7w72xF6PAgljBOdVIoill31BzQha
rIJgIpNFuYHOnZDYvgpIoIKKUo5fhq+MFhKwUC9NeQ9mR0nqhO7zwNsgvTX9bs3XpxiigNWNxmoX
rkrntkmDRr7duad0ayRh+dCJDheQIayq3nFYV+wKql8VTm7CwsYe9rg5idqQj/ZaA15smkACgntS
Lg31hnTtjqmghl0Pm5hKBLbMTkI+h1GkyUQomA90VZKRIQU5Lv3vK7b+4ifuy7fjYWIEyS132Sde
Ny4xEPJmkjOBHlUbwc5zyfq8PRs5LNj6ZYMYEK6InAFY+lUvpfJGG63lH+65JpJPNAOAv8O7L9ls
9wg/mhrUza9Lr/b7v2fnGf8Rf0pCeT9ZC47zxpfELpraBypj9v/G0Kbn2n0rTDXaJxjcYKCFQsgK
4pGxIGuWUXfPCyy+78bIayOp/568eaL5I5yMN5kDez6vL87z55NJOV0ZEZQlDq8VCeUWk18PFxu3
BaoSUs+PKjzzxRPglT4mABmuaTvIY5IGas2d3BkipZJYuMNp+oKbhVhkqHxpgwVSBiBRl7SvlVJJ
diXaJQPbXwdBRWYXXXHNE/Yp/zmLPpRwSeOSDE+smRCwsOorTD9jlmTeu0oDcsqchAIibf1cCygv
iySjNyJ4D9fPDUZwgltSFRqt9lryZe32L+u2F5hqgk7bKWz5g8cULvkFL+g+MyxAYRwSoZ9LHlIq
Vi2lB5sWuWCkaliWVf1iFstmqydVHUDFBGLeBWijw5bX4MNLFufL1xj82kUnA0HUBO7vcfCj+r7A
kZ4bKcn0oDQbsM2jGVvW1oP5nIQw2lj610oOFSGKq9kus2PoeIEJA7KeIyoPhz1aS1ti2u2ub38O
0VXuWruJqFnn9nq8sQggyj0I6qIHD8O4Fdfs0/e0gn4+qYcXA1zBNxClO/R7ttQfPeQuAdHtFiFO
99uWkhT0pICGnk9FnKl/68E+/E09X7G9ys4MAS7Xv4cMjzIUEv0kOJg8uYMBkCVDuJwIvmzekgRX
B7zf5uRa51HExderbCurYabxkOWaIuYJUdbEnxDFoaiIuuYR+VTeOFTuJqCg/kafjY8XbGfSdwYk
HRSf09q+3e52wayZJptkmSBQnrdvWyRf5BggAUpAA0P4x8tb+nCOHc6MdBko9SQATi71Up93qonT
7y4bZiBO9Hg0hTYHxOhGiExZ5eSiQKji83DGq5ZtaffCBo2CQBdawVKVAGc05JKSZfHuRc2POYrw
wPfaDlWgLWc15NXQctgy51TeejjHWj4gYautiUwYseHWu9rHki/EEnrGM7i9ow3nMSdJX7gFdQG4
pkEvry2dd4s5C3NXwqhFhfo6pqrFq+g7zQNY2v/ZZ6staGRqsx0Poy/GkZ1kKz0+pL9EdtkfxcfY
vnQieEgMBlB9If5p+v/EuF6a+y7VNcKmwhTalzSNUG6r/CB0utnCsGPCsoavKoMvk9v8bAJ8Aj76
RvFXtPu7emjhfr9T/ApCTUGV9K4psFnsea+FnfywnMv+wd3HhWboJOHIlXwUTtoCZauUeWnHCJwb
1fhVRm7ZxpVVUPxx8YBiaiGGgwAM6dzv5+3wMmoVRdhA0mON7Py4Y5wInEOfzSSjUmeI2XycMNqF
tUvuYJJGA/xN2QVISmO7197sgOMafcZSc+U/9huuhLHtG0MNM6XszNxVMCRYPAlstCtxRcgeMqkc
0tZ5Vw/+54oeMpiKWRIgyT/lAlRUW1fqdyr2ApkHCYs18BGbnCM2vU0NEhW09cVcuBb2htaeBfCG
tEUass8BIAoEcNN2xPA77qSOoL2PODpnEs5haQseWqivZFas5aXrz6hQ+zXaAstN3a5g5aJCG5z/
WGLvapsW8c/NQPkmYDNNoIWrN73DzHgHU7K8ypNOt+bkUCvW5YzscmvDLEmtDxRA95OvE3J/A7ZT
fUgXA95vWKjEbq1rWJt3r89ndmqC9h689g8lOKKS9S8Bns28pVnqe2tx/V9EwFOiOh04ilKko/lo
Zwp5oL89w2YIHn/DzC4mZ+mD7hazOvGh7nS4AkibFdYBsUJ03UagSHx/BpoJ469uBbfr92jeaHr2
JH9jcu8osM49UEz7HG9g7QzM3MIAs22VLt+xT/oAEZkPKBV15UXs7u0sV6Bsdpt4MptQxgeWDUZg
WJLfA2oMSNFHx8VRzXM4UIWtG7N4RYmPCAgfrjwzw5s3XjGy+khTZacN/bAK5684ixynvzpAxqBf
b0wZwM0ABMybrKArcINVu1OeT4LNdI/4HGTL6grb8JPJLM8un1Jt+D8tWpsntJvx/LmgAhsBryKA
AEW2pVGs1v1YIgun+VGKLsEUYNU5MAJEcJQJKVSOrELfI5SA/mXnlAniJqmo7LS4cvDQ28n008hN
njjfJEdWWZS9EtIqAJehVJ6LgEc01PvoqlFkkjI5s+x6T/If/9Y7d9acuDG6exbJ07pKJrGRNQow
lg13djIJ25XGAe5sO57EqUlmxF/T0dn6qikThbsSKgx8TNUWrSkQHXIl0JziI8CR2Y1ascIpM/za
I8UqSci3WZLEcmofX2kPOfuHSxnxhF4pntkpVciTCuuBQZnnN/sH60DNMcRPgQE/EE+omxIp2/Ur
9GrwEAa9yHVceC0ZcRr0XbjIamcpYxSwxitj8UdRLcmaJ9nblykZDSdE7cQ/iJcak3lO1FqcDeQ5
gPr4vBImKUHTZtjxzjD2WWZhUdn+oWozIuQj5NqbXslQ+Qnqn1t9MFMXB4otUNl4kI3Sp2gURoTx
y8ahJR2811SA1WtyVhnvqPfEJiKMhfn5Cvz0+Pj2L2vtVtHm2Yz1c9KH+kFhXWcscsZI7cezexhP
NJTfSvqiRmJjUuj9PVwHw90cWc9ht2JG3jF5ImpbxV0YbWSBpSU5rEe6zxisuUeFLZ604GHEtB2E
RIfQqfO/0GA1v+ynUG1PO7A9oeEb5vvKDbZVvbCEb+guPi6ivb+xTWrmyxrk4i360nAUIjtsxlvW
65vrTCObaS3DrknU1NBY/0wkXQg87StZ3t/lA6qZbFDJy7IEGFbpuVWcf44h3PAGyoE+YY9sSzcD
TTef/9tmL32vikawx/O26vy7jXAn2Tlj8EO2r40yp5D43ZOb3NINTWWbrMQQLp0rvcoqk+mE0oNF
5Fz8jPRW3pdURp4V3hGS05Y8/+hA2X1yUqJLq6kCgrUrwdHQyV1VMgnSKOUv3LgNJO3N/BrURPCj
Ouk9LKQyf7O5sAQTHGD0M9HcElZ8m2QqUiWWKtlzbzWdzJKNvpQZlyM0ESSZ1Z1SRaFI247TUUtU
Ej3mul677U06H8tZW04ihLE+7YR/Nh5adiCpJJGL4C/Eslk/7iCMGP9KVMhMfUe4p5S2YqI0JN1K
7E9cfDmuNfWl11eqTl7CmOtpgN0ucY8f5wlGL83B2ewEu+rZrWEcIUDeYvdDEhkwtzI6bxwCGqfP
mYPYvq9mVZJAtCzRjcHUHrHvRM0bxTb6Cm8Wfe0KbS07XQNDPVxqNmq51lITY17HzVIQw4YZMFF1
4Zmiiuar2BF+iTkPJQqQFVDGqhyHKvSrpuXqUHRDm/F8NgjUF+MBbQj+dcZdIfcfr7RJ+7oMjqar
B56zbLDXcEuOdIKeWx1KBr19oxhtzlgnDcHJAozYz8ee6fKro0wD3Aan39dEDSD5VUpzDpM3hlxS
18k7JIMuTsBwV+D6lQRUMvPTjneZhUXTcJNMUGU84zG1E+GtYAHB6BL7++x3AP+CGocg3M4aWoGy
JtU2A4kwsmsGO50vaxfMmRiRgEpU8ZX4iXhcvq5oYoMO1VIE3CCS9wPSZHmqi8E8MJd/1kZZwi98
ai/tvL2N9jSnETG5VSDzEB2Z17T7SPpnEMGJkfGl++sSPyVT5roCTaBhHZMwjM8sTIKitK4hcSQO
/PM2PV5Ca7FxO6L6TTE8jfgbpx28dTUZ955WPlIHkCK9ARXVfpjjqZgzUZky0oP58rn3OyGY00DR
wR8Ltpl38ihxaNryvgzWW6NjTEbaayJKl2yt1ul4ut0WWqODZ6PpC18CzPgjfcfaYkVjYMV1zi6G
OjRHIPmljVb4PpKlDDuzptflUgd197BVO4wAUbqXm2ET0pM2I/PKG9WUZHNnkaLuFDOTtwTa1YQ4
tXN80YNTioL3aC0QyOl8GLbm8awtKo+YkBmqgUjRjDFHcILEcQDCxWwh+3pj8HYlA1m/eJrZe49X
mqcP6e0/IclDkwON1f3lSV2U1F9+OPWfXV5h5guH8T+s4aS039Tem1btT2QyZPdUFoKLTKE+vuHx
RWp1TQB0bhhJaSY/305GYEsIY5z5zotR9bdojaac0E4jdCyRCHFN+HE2WrcuILxF9PUqGOqMRNdu
8L/YLBJg5zpu4/uAoebTFxCP6IWtDonuh1UEnTdwbekWlValWUCn4Zr2BdT/WMjjJUXW8bEfgC9f
itQayQGUmHxWB0E0lLR1/MqHBecMl+DES1PESlOb9lcg4FKMfLOifP0ZcIaaRnx2F0Q/jI+PeAdv
91seeXhUd9iLqvPoAUcwLkFhajLbXO9ZKlrWSA7qNI0sGlNNU1EYal11cnWYuvrmxZw4ZMlENNdI
L4oeHsnMAdJ2TfNsqrPz6XasKE2N4anrc+Hsie92OR9deRL79gw1mM9nHqZjIFaxN4a7UK6eH5JH
6WfZ77w5dvyU/9NMwUfjOvi32FdWl34+SoS2vFGHdiJMazJa8pUltlV74wBXq/vtCYXlRddtGyD6
/ZRjD8pLfjSNqNk+r/RKG6sot24OTOr93/RVIkqB8CBlarUaCrZks+/U5KQtN/pDxOQks0hUSmu8
P3qmR+BRSO2/Ymd+rkCKR3O1nvhYxc8kbdTl3wHawNKEagKckdB9q+EOLpyJVU7tbHiGu7gszvWF
oYIv+VK4wbrZDejEPeepWfGpvIszMKNgG6b1rT5zi/HlTCT2xoxSNB92xI5AXkU5PC0eTF9g55wc
QiOwzmGlTT1cmxa1Pov+wIVubhl0UnA1WD24XLASffh/DSxHTwoEzixLUtHnhd2CaHiR4CUKtMVr
OyfWgQ4bttQGzkAquUYlFI8zcmm9T7l2WeR2zOHxAxaIY+5aVYrlvrz4RnaIpQuqFGhVzDkKX0ni
azSR1RGUpfvX2GUUsT8KYUoC+5k2/kNKgOfcJPHiBMKZ6WY7+OyvKOPlxbekvXuo3iTLn/yava3/
0m//iKgdFbdPebb4iX68BDfvItRm3c+1z9LbdXLfKEqvvAX9DZVg7F+GUmzlyPkJWZ7/B0jyqDfc
S4K9EsiE1jRsEz200Of0Qja6X+SFEW4zlFvIlxnDYXxmOS9o9o2JADpOJr5j21RqU31VdqPOByth
YSMgK4uMLoW16jPOUGqxEmaPlx7MTzh4y797NVn3mEpOOgbnn11V1xVNuEdG+wKqGAJUKqeK9bC8
MISXRfo73vcCMBK+FWu5yifyhDqZf8zmZi4OPzdegJbPrRjRuR/saNfaobIV6/Tvi7JY+xssy5a1
+491pXAnq2UPyst2lwRUK5zOy2y2Q9WSv9YqFGGO+sUd5DYglVi/FWvqvZRjq9tnytedVRozNRwK
1FyEaSQx8lUb469uL1YToS1rKcnB6cebyIJm7UC9AllPLq8mcNNCcL+LuJAMn3lmlqusbS3/0urc
Tq7/UmwIfFRZldCnMggSLl02lykC+5w85U8iPG473+ThKY1qDkt8cQpQgSw2XZeh0WCeDtem861r
/vMzcABlXwVzDorroSv9vwB4cXheWrmz5x6fzP1znGEu+Hl2p584lv5MAfZjGDW41s3muj6bCHS1
bpug118fJxQ0VgP+t2qTuLj8CWPs9ghfSlxggv9zDc5ieFITEFLLJj3YWtJ/d3hIOrOiOxw4UpTH
8hlkPCneKK8U2mwhsXwKUO98APXnpyehpDiix9HJX9IeDRD/dXs/7fz/g73Z+6JaUrPetV7dArD2
zHsaHghM4/6U823rFDk8Xj2DmraX2ySeLoojQt1Dv02DQfLEzdAsyHc9ydLuNkuVNcBEROQEkF/C
YqBdIxfklFboUTHHYYCmIWIyFLas2ja6Sp9RQwpPw5p1GZMkL3fNJLh895u499RAUUPICdagjizQ
5gNaEYdDZevazqnvUSFOs/sQVvEHTfvKNmu/mBTi/Wi9gl4ha9Nz4Acghy+ZIaaJHVKDUo2QI7xG
q2/FCZ/dI8n0qw3Z1vrnxUBQVtodNEk2h7b+OGKrwzRhSaohnhChS0Gu7hUFQrSJDEHKFVGNHdn0
cuBpF4dU79wXKVXE4YoB49DfE2vertxaKG6utqnCo5+DvWNEwXciQ5KwRPqM84Nif0VX6QjupEra
WJ09J7vN5KnwJapjOUHZqat0WYQwTDBStbvtR/WnNfKRBQ+SeyzxZLnPuZMxNfnKG0kb+Q5bYvtv
o6f0AN+9nSA5kV1q7eCGFa7GhxgLtgcwjfwJoZEEAb5GK++amnGKPBcu030ZdXrkUsbdTczRh4Pt
+JvWKxkjuXTVwFs+ar70B/mTU1cwxeV+xkDvs3m9uraOwoW4gRMvgYljJkfTX/wlFx421BPtK1CQ
ykDXGhA5ypP8lQk9PgkFEqIoPIyYvPNPtyu/Oed+eJByzQPvcwUB+/8ZQeUrgTSjGjXHhfIWnT8l
OL1vVIQ+TwZwWfzJe+pG7y+5d/ibLCDh91lidtZW7fP8/rAGzE4/QPFQXIs4PE0ZrIPPj5PcSHQo
vXflTspl38YRkNrPlbx4VI29xt7w8I7fy3UikAmbmm9n0eJwD5B5RCOTYIW+d7jpLsbtRJFeqHcu
7T5JcrxcGTbMk+kdSMouXHoldlMOOQBzKj+LHTkwXFymgDnbcdq3sVN81lcjwC1HbUTKJDVKHEo/
hVfo5aAIjApElRGciErht9JxhA1ogzFmYupzA+WJvbvRvrbpssSefrVpMKTyosFpVkAapRgLTY4q
aOEIEanqiokxSuna8yu23xu163d+xuww/KE2nfKB31nPEBGfJyJ+Ylyh+O8SkMR/nCc1bOEwIesh
2oAnoeoj6MQNRTpyaF/cPx1LlCv2+jVuzi+TZjwPAZzEtFAXpblLHu5xjphTN0bgUMFRgsLjgABB
59a4Om32O7fsVBhy8pAL+4ihtT43qrq894fL3cYwmoyRh/b5ZNbd4E3rYSOW++Yvhq69W5EV09ne
pBOoUoS6FEykm0OORoX8OBZMWzEeuEAB8IZahYNrJpJHEedxP7oubo68Gh/H6e6bMfwusVtrBDJ9
+/WNjN1BPbx//AEVu7m5KfpUQUEdJMXFCarjYOloMn4+yv0qzbbluCME25u2HCPormgITIQdFAJR
CmOyna9y6CYa4DW/l7mYRvE/1NGDSTROeMLf8dVVStMfJFLlwBFjWrRZrRoIH4b6nTYw8jVG1pCl
T5fhA81zXJbtNV+5MCeeHf0CAJolhzX2cqqKCdY9dMivXx2nuCUFkwMXjABxnGQKfTukmv8ruh8w
/SYAshJ+1hUU6iRG/blATKLJOSbwoiX5puxvBvD4YbLX1VoXk4kXHdW5eNTrNxzBM93TPSMW7IbR
HFAVVViIbIFCwcBafidPwLhnrTyTqfBB/OY+jZBbZJR2XgmToeXlzhAoWFoXSHI1gbf1aAqvbtjV
f73I5Pna1lTj32rR3h4uJ0AFzgCqqgYsHe0CqD+niztCkPksV0EBOiJ8b83VBQzg5AqF/pkK1F0h
BRwuH32oaHKVPwQkE9+/SxiXfTD3pZ28VXTGQ2x9H3Oiz4sb+1ovL7imOUkoxLmLc2V6mIHbNIXu
0pNvUG8xkxcY8CXwQfCvwq2SkK9FZaLzz3zMHeUz3RjIQnIOIY5Ly+fxD5Sz613amfhg9CCVI/DL
p69vI3pzugTxtt0vsEfDTxq1x7Y+1N9Y7s2uzXP0tGZZcKKh1NbKJWH7XkHKJ1UiXXFgbFQg8A6i
pKyvKzbABH9Z8Um3TBqQGypvEQALe6xT0M9YcseTNVHj1fHMZs8hF/kMJoo55oIo4IIymUzf3RMY
QBaK8gdixTiM9vdjxKPoPNKnduqphWJbqS5uGlXdeXs9LvpDlIPjiHckqael+GopjHv41qdZn192
uAzORR4iqcURhyT6FiBG7RRfT/Yz68FAv7Y0Z+qWBPK58atqTbGbmsItZicam5LT1RzMF1wm1Vpo
NxbO8R9neyXaOFDu/2gvSK1rZKVhJZdliLIQ22ubLcfH3bmn9whIxRFdYgyGZY4NgVpMfdEpwtqp
Z3UMiTLqm88YDt1he9T65+KjEVOBaZO+IGLkXy6YY+xH8XNZY3nBhbREzz49u+VvoezBtsue0IzB
R5YRMWasPPoukK+1OlCkaEGBGvJhYnzjX6tn728QVSAbHlSPQGsK1DiZ/x5wvMEJIY6KqCnI+1z9
1X3XXLg1/2taNksxX7uVHz+C1YWIALRA/2two52CkpOhwCbEDEbQORCpS5KV5L7Acn2AmxUenoRE
NRNga0hOjGsnIbdhovJ/eXllVtN3ygcFba6fSIlC4us8rBDiZuuSrNcWPlEGvCZ1P3Of0m0uP3VE
ntCbH8WHw/GoZv4skZ5wn/ySNxCm39SQe6RIf0PlXrw0aSO5BM6uq+Lb9Y+hqBGk9QMrmgArvt5I
SBjNDfeL5KqjT3SsSRrIVij4ahyjxJ8cFCNr41mvXCB3SclrA8rcOD6IFWrxUfDxF1FOQ6kFxwnD
OFOGj5VFsdlFslYxxpZYpTzRQNkdwlsvDxN5a2DDzbFfZmuhp7XNOGE/3AyN1sPlf/TYMIGGrYtL
vfEaFA13y3t/Od9gH5eMjV4JjBNHKnveeXJfdTM/XZzrElADPloebN9KNMnoMQX71tJ6BIu+2BGC
6ekrCvsrs7AgqBjTq3aJBuWwBSVClWgzKbdp1/jjvZq8t4TeTgW31H3G11Dpo4adnyg8JgihdnCV
nYw9F5ObTnDhg1uEb/d6x9UoILkVE3D7iUZONwyAEZTufyv2ZlJMK6PgHBhCbf8Qp2X6ju8D3uZ+
iyHyliPaiU5pn2v1PIZpJ8R8oavY/YEnFfLrvlUJmYghK1y7IfB1Yzwc7V1JTs8c0pO+D3eAScvU
fgOmoQZMsx0zM/9RVPTLbIIzSwXP6J7GeJYCdezEg6cefWX9dB9boXTddlPJfR3nWD0gH/F2YewD
kfkFVIrDRVDsGI33QNCFf+beIomd7CjHHuCLcnJf1ocbeoN1DY3MujMx7SPsSj8N27U9/a8LFbyI
HuHAvctj9l9Rx+Nj5heMAhf7x5l7c6pvY62r8n7WtqVMvN5twjxH1qQv4TokH4dGwvf/Xe9MeU4q
I2pm8flBVFH13HSG8H9UiBihX0Vl4l8RZoDqFe5Be96q1zIAikfDZBVhyUWC7SOuCO78i0whf1eH
hs9OMwS3PUEprOkPwn9KDSRm1Skg0nNzXrUqfXG3xg2RYcPz3bsQI8IqJlrP/OmXoPK1nVDfVRE4
YMG2jAS8wVjjAUhzssYgQTWcHg0Ek/VAfzOVLrO3swQcL+Jb690plDe5TcJAvJqjbz0k9aQbMSfb
cTd5BM48n3Z6DKEqzVyqWeSwsD6mzrw5fNQ2JCh0xCR7HClNBu7f/OeWlkYTc0TEGsq/UhzGNVLA
2Y8C6FtnRoSDeJhuupgmvtTZgHIj9KaNE/2sQHnklVfyPTDntzrVuxgK91XE/tBZlCbJJR9WnNWH
eqttQNiO7G0I16RpIgdcwAguOIIvEEt9mzx0ISJc4KmQHNb8Nb/V6WdC7K+6Zc4ZxAlpJHG2X1EE
5gG101PD2liGEzi+jpKrnSBCfcyMhkiex+3bQ0ovHILJjkloXooGW02LSJosOrU/T1vtjd6r9p2g
2FYs41RAxonL6i5Jxc5TC2+8/16JRcp5zE2L67j/dWRNsS/HeJzzAmNQMKa/GitVudKbxNUzUNRI
+T4z/PXzGR2FvpLlYpnToiGuSMK/3rGvP49qe3rE7vGpmbluEOBhOgaDM22wdBjZqrajxYOgsQtm
6PWp0kC0bNfAqko59ol4FTpoirNqdKSt6ZbqV7oeGiYueFfopR9CLU/nCtL8oIJKAKVlfbrNgeqa
uZ7UnK86JoUhN42M5hm4tW+0nEdVSbR94F4q5sTsk0g9STWACLv41aUTHAve2XjKMXWXQu2z0OJH
esz5nFaQfGnBQCM45Y+mT8+qeXgheCIPtRdGHWJazIWQMLLK/iggeTOzNjaTt+GcrsPqPa92vC4i
xoSO1UVdxpQQF5X60PFdjxNfj2oYYJaVCfoBkKvsdgOJFUQWK5laKNLYezHGmOs0wDaBFrYuElsP
7DUUdXFoV2oPt8189r8M741s9DD4euVcGIzUlbyhVZTxDS9Gi+WPdB0l0Jy0LYei7pkSgL0P9QIC
BFlGdcYyLGpPX1rXJhfMlLsbL9+RylBvl286xtE0euPCqrgaoOXaBAeL7e1zknKnaHCAuV5tPQ4S
YhJbJcnxvu3xv64OW993OMwxKsT69MoeHDz4tPL0WDtQc0O5KW65BqLYMdXmOUTCRRBCp/Vn5/z2
ulNu6gIZoofHFNFptZSJkZ79U77usjjSWW60HwiLRvCXGcoMk9ILLSlEYMkOo1WpYXuhC2Vxw5yY
durIgMqj28Jr4ZAiMryCwtxIzglzU5RPpMUB7Y2kg/guBCBwbO3k6M4giGm+WTg/EquLXobgaYYK
ggLnbXrn+yQSYCglF0XC4Rr3yY3uNuK7pwEhYmxN+y4wKt/Uw6cf0AWpoxw8+7QXANBhme7y8fOS
uN+kTlHQQYxSJRsVdHLsYkJPgilHiblnmLDPYbGU4eQO1fTY7dKCSb+4yRLppcrYsrEadToMHvy3
EZibmLi6uB7f4pfKOdI5snVom4XyZK8uJLf+20mh9nlsK//EKQBzGDCGftIsPGqUGQ7t2LQf0Usc
Y+oIX8zvpyd5B06x0ICFjIMvlbynPWH1nkm2RhQAPyPwMlbpCsONmIKhHgP6q73QhBHSO6Mk6FaG
5fDhHng7z/dngzrtcAU5E799IEIdwbMP4nR4L3JVNwXOabcdI+tJIdGiFwzKPXyHDUGT9lhO9Eho
QFj5Nqqt805Zb7Ez7T1tF5tO6AATwmTCb2L7eYfJFpvAbrCIwpId86XBHNMOv86aJA/ZwlCUOzl2
5XNAQ/esgkaLC26/yHPrRzKJD+CgNW5/mA5J6SPhRs0JZFJitkFuClwx0ZYja24LqggsZ1hw5XPb
4HA7M2KbtHGzc+fY+CFuDwFx+byc7RMb1Ph+AKQvrZ3B34np1RqXlhRjftIO/qklsa79Hah2HtSX
ZcugKBXaWdOUzbpRBUaiPUMGQre8ISRSG4CkVgsJzwGmebjRZURbS86AthdB5uTPe8GjAMgDu52Q
dkfd/Mv1xE8PAraiw04PJelVEDppebWKxs0LC6PuRZjaLIQPj6jufKTkZECqdhKkd0ZQCgj+Purw
V/+jV8mQGyb1Ui+HnN2ggVhkImz/ZiPMpeX+tuLCUIo0XvNxelBOyQmoquIomvz8AUPif9RYqWHL
hufS77Ksy9vceW93iQQeB5znx8OfMk4PQrCRrlCOkUw2yx+VTZ2TnF/KN3TNXJVrQbtN0zOJCbtM
suRPTi77mfK9fybdSO2YzVy2gAC5BzQqMI8dPxAIDEakniafsjVAnRf0w2TTHN6wK5Z4JOBNHz83
H7/HqQ4k4fJevmw4dl4t9j08lylgzsUUDKTm2cFB7zafhmJB/YMPzwwvEmOp6lX3X4GEaDE8gMVJ
DGmefu6pd0fNktMK/hO6ldzRuDfjZ7y3h3uGCeTnO3rKlI20gDKy6SbnHniFFIaQBifwb5flxAvK
z6XsIzeLvq3kRqhorQa1yWGyfCncBL37fxye1eTXHfrmlvcS7T8Y7INY+wBubEDhBYFpOijSRz3Y
rC95PnJCqoaISlOpX9SBwsLq0q+vLJLX+UUEhI1J8UnplUd1+hfTNN3d3F4PcvuSUi/DmWfm9Bsd
A7qkdACCTsTgilwaDWAjWQrkzDVskNMpffDLCnVVA+CPYh0+bn85ldbweE/89ZM+x44VDFtsh+sy
rhiyzjg3MkqIoVzqAS2h9v8GplyWsw1HmD+yUqBjn7FSkd0t/RZioHYtjoriAubzgYGNtIgakZoU
sX3nx4ovEn3ElJQDG+tngj6PHirVT6AX8vbdA6II18i/af86WCfurfwSKQr49b6LQ0muN+pLT1+X
ITgyblYe6aRamXlFme060NIf821y2eKqWX6OjyODCuRWqEx/WWwLEFWI0Zae4wIHn96akH4Vz2rP
7Rks6OYUh2y9McpnceZzH3wYkA+A3r4R5fZat2giCxk92+CRBRmztRs4cJdReQo/l5kkd78p5iI3
Tch8NbLW70TP6TYLKAuTfufbuFdVE+KT/G66oKW/ABm3CuwXU2IJwEdiJyZEBKH/j77IS+etKTAJ
4wjC0uaNd0p4zHbt3RppGXSAW21I3gjKU5T8+oOF5jQc7/PReao4Cqx1nDBVbhrAauH7TRyqKTJ0
SIuhq6AHKe7qFtZgfMIWBGdg2dPUlFtsGTvNPfaN8oeDFRy3B4FH6SEAiCQsWT4o55xIgjE/Ct9i
U1z4aUEMav1fDOMjDQJcobCndXCoFPF8wIFs4BHi7BCo5VapWBqZYQa7PyBbr+bDrCcf5Hry+BA7
VDo9JjvWjJVGm6wll2EuoNnGPH6gXdOC5iTRbzCmEDsCm4T91Smo2oXNeb6pvgikqy9cm5Pvubue
jaZzq6F8EXkSDAcHzJT/e55laB6HFZmwqZiXncrZ+4lftn7ATajJV9j23ZdfqS1Mh3dx4lDzFF5l
yBL4ZT+vt580WNE7oL9nl0WPrs0ZIFIX3ry8r0zcwJ1LT6f7X+GZpjDypA1NV3yS63vzp4TKbRyB
Ov8JeSC8Egi8ceHxR3ZRnPeSZOmRn5RJG2oUiDFFmRRYLhAnByiC7gOxjdUoe+IBYSyZZ0GUBO9q
y/HtjSDvpKEwDwUeHUs3pTBDSPgxHNYs7rMJwsv5houkjQcIsV5jH/gKZjE1HfL6NM2pMBZADSEU
1jl3+dy3oBkqPgsau/j4EtXdILKusoA1y6UuRqmCa9TNv4CCJYRM+4rOQs+EDHOS61xpxAR9lS3J
FgkGdXDcTetTj4wZ0QvS+TEFGgn9YIpgmo8pLGdM8A9dalxItBRRtbE8Y9AbTRF6tqhLKb+Inv3b
x9QLkDe9rA1N6uYQYbu6p/htXFwpaCQrSdsUDcUbMYQrDYDtqSaw5fQzTUUjMFySnC4JMKJqK3jH
pZGvZbRsuzzm47jTVqYjdfNlznNM1umHrXvLDTybl6519kPPPFe9Cs6t7b8sU61bY4wFuvvuzR/y
jRLdrajacwXn8b6kNM1I6xw3tHZ6iG0WlA79PlCBCvZlE68LI8IyWalRbBVpoBjZYHL/7OsNy+uR
NU7SoV6zFjUERZIU13WWp+s+Ll+SfImmB/k2WZ5+T8paBTMGBUivwbc+FrDavAa8ddt8oGNmBaht
dP3u2JVkg+/WqtZhS6ATieD5mzuuSJwF2YOlVbdY9Tmc65HiVJ1Xc9qE6mIugTqwtvKNmCUh6ilW
UAkhkKQ8qJqEzfKNEba6mvt/3asCo327kzWDS5ep/Y5W9n2UMrRm55out6doXXl10P3gFAvkSTU4
pAIVCFqc80xXVucZ7WHAnMEIhV/TiiP0Cfy4cWDTl45Cx9rCtTo9MAaZaEmNXOZEqJE7IJ+oyVx/
a+pHn/Y7AxYpeoEe6dPncYHW4jdoiMWu5G6b+D0hcDjxaKZrXFcUf/skwB5nOZ8A/zIR4yVubOjn
rXTiT4mUqgMKPA3bvVN/ZZkJ2dCp8bUL7rU0gJR8IRnVrD3diLumZ3izCIa5Zdolly0sf5VT9etV
+khe4XTWrwbdMUbMMd8bUc1ErnKmpgbLGrRxHWFr7Qh6iNCLP3cszS9wtOEATFaP98yHMqtjkl11
J1dnssm+D9rCe6kxfxa5NCNKJp+Q0kltUoUtQWiGUhbpUR0ValB4TbxoZiB2Y6w6yIfmJopKNZi6
cZbegU5Qw7FaVVebHGOTe0rOGXTNEVbfzdiKbCUo6rqFbvnGvY+M52ElEcDsWe7K7eKOCKn1Lz/h
R7nwp9hEzHR/4LElv/VRhQhaHZ/MyURe8bshy5Idab+uwE7lmelyRti2rffRxN/Yg/JC1inVMOHJ
6FFoLJs1Z1pkwe+dC/wZ7uGCbp/df3Q8ytTAN2eYDyuEyihWU9QmZtfcm/JryDTyzE3KvL+8Wb9B
F6rXwyL1hWx9NOnkzFp8bjiAfM00tcvAB/DjzHFiRvcPrnjfLcrJqi124pzARWU+/K614Yif6y5E
rZnVXcmBcs9pAjis+Ra8POFNNCeEKwVD8pX88Iref0LmuvnmHDS2pAWUAfT/5HJ6nvB2/uN6hR88
6ExVWJNaxwyp19MmSY1xZ4LKDJywWfHTllubb3EqVmA1w8AwGk8loc7XUMxvlNj510tsi9VnbBPE
l4jl/EL0lAfH4/JomZOsI/cKAUxyea4loyBRUzf+zWounEE3B9s5drZnJfOwC9TiDLox/9mf9bU/
8w1jMPylgn8x3gSbnfF4sD5RzhU8J4ddEzSL91VXJQfULzHDaHkVpArxZv7E0qOj3SFWwjqTph3w
nc6hCyOZoTXhUZ2V1T5G4pHrYR7C73enlziN31tRMRK2UYJR5cYwI4yybaGz0IK8HaEzebyCEmk/
P61YQGzSObznoojaGlT9JNz+QL2iObVjNhiVhylNOAtjIo6zZ1PAeXsLZE8sr49P3NOzgmANWy2S
xvN9GmpV5cZuFTvHNE3eMUOuRgpJZ5AlbqLZHs1tL7ypO/WcOKWk1lzWEGFE0JKdjPC6S1fsRp17
NlMCYap627ahdg8msqHbGlqJOR4g7e3hlcMTWQZ7vor6stOTCNATNbwYHp4Jzx5N1LLexU78IuN3
phWJW7UfJF0ReSgesBVedKhQuj2RBfvzCZZnA+Qts6NQr//7tt/ilqBRGzPfvwgMS0nB2dfxZjap
jC3MG+tgB1ft303fHm/X5oBKaAEfu2ZW4M6XsRwaZ8F2HmZfNXFIQv+/bkgoosu7+lCbOZOd6SEM
plwqRiTURC4fAw+G7IWXyTl9MR4cxlGM5EcKld/hl55a82IP6LVlR7a+S6nRyrXzlNAQXQOrvo6W
4/bRmo3fAe/1wPVRw0C5CrDxNGKDHjwVlKBIPwXuVhMHPRR7HZHbwP91iuyP1qa54jVD+p5Vf9MQ
QPH5xGDom7lu1IowXsiGOzPoF31xs5d4SUKe1oJETaGmiLYbKLbk2guMNCgYvwXP99YQCTwee7zj
y6832YcoKrZiHpyumyPFGRND6oTYMFXcUhoE2vuL22o0NGxHSczvmQH7p4ul0jOWaaqorxSjKA+E
/0BtFjaKXaZWCaxPuBns/B+zTeRUaOvoMbwI0kT7BGxk3BHqr3bMqis2XbyMCtjfvOPbUAhlYbJb
8tffzdFgMkZ7kpLIpH2mwv4Yjdb9mfJjX1/iUFrUOUGAH+rlYGBxvdi8PBHs6hjeoJezlxn1zHb+
lIQxdYQyXVtizH+CcsLTt0yHb2H1obDwS0L/6Ador++OqWydJ3fzReXDrcmqdTQ8FszaDJdnSi3r
ICMcK9sVRHDg2HSrFmUhiMomjjt5my73ezL6Derb9v2h7GNW75YyqW8ppka9w8Lo25ZBUh4OAXQb
fp8eaGoqpcqPIl+QdrQ+t0w/4WlUaRM0N2Oo9wTeSlaH0GFqAfiqS7BQv6q+lAk7uLTwsZ2VFyUq
QWSamwXeR51pMcI5til6VW/T0YkFxOQ2+GcP6HC3ovRrzF/qMVLvQq5YtSkoR+fJT0l+jIl6dlYf
gUwBOR4k4yg+i3jK1U2uweYMV9hXLKVlBy1+5GegQHf1o1xv0asbSLldW3frhM9X4eZ8UGOBK2Cf
7jK22yjBhq7BuEAg94l2nEe9mAn9fEJdkmG47eps48DbZYj4cJiJFVOBUt1KyBSt+ZhbXXQAZ7Ku
9Rt2/AOQ5MBUmeuEdtp2uYi5MClvu2SlytV/4QXBLNIR+iBH7Kp9cidrX/drP7fejX85bvlCDdkw
YoKfCFDVp5xOyYdCvPeqspfJjGgq7HuGxQA1QbqdLyc8oRbh90TGkbtPizv6ZYKQJe0iM+CVzILr
uvQEF8kgUeSaC/zYhO3nttKZDY00VadoEdWb6GeSAJ7sOuzus8w9Co2iHgwLP0PH68ZhOggF5eup
QXNFc5FhMhNiiba+WnRnxkpuIMHKWcDNnMlu4l5VKpe3SWo3eu+A/95pULqQN9rEo91z5+OFNXF9
IkgGuK6uPD9DmxCuAxt5QViyhmOwcZ7JVONu1gK5/z8UmQBXPXd0/HcdbXisM/t+VG0UcGJ6g3bD
TN9vEtOskVWa2EbOYCHtlf2Dcm9MYKrbEkopkiZx6NOqmYozgLlg6SdRxLg2SCS0L9z7Vclxpa93
9QQjVDQ9AOJ4hurzCF+AkmbWexjvTuWJtDOo3Ae2pNmuKkO/zV7x/3OjJd7cI08pHmGwywVLMZ4y
++zKIH9PxHDIjFAhHbO+iSY7i02l7GNw5A==
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
