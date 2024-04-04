// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2023.2 (win64) Build 4029153 Fri Oct 13 20:14:34 MDT 2023
// Date        : Wed Mar 27 14:17:38 2024
// Host        : LAPTOP-81E1PH83 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ design_1_c_counter_binary_0_0_sim_netlist.v
// Design      : design_1_c_counter_binary_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xczu9eg-ffvb1156-2-e
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "design_1_c_counter_binary_0_0,c_counter_binary_v12_0_17,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "c_counter_binary_v12_0_17,Vivado 2023.2" *) 
(* NotValidForBitStream *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix
   (CLK,
    Q);
  (* x_interface_info = "xilinx.com:signal:clock:1.0 clk_intf CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME clk_intf, ASSOCIATED_BUSIF q_intf:thresh0_intf:l_intf:load_intf:up_intf:sinit_intf:sset_intf, ASSOCIATED_RESET SCLR, ASSOCIATED_CLKEN CE, FREQ_HZ 299970032, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN design_1_zynq_ultra_ps_e_0_0_pl_clk0, INSERT_VIP 0" *) input CLK;
  (* x_interface_info = "xilinx.com:signal:data:1.0 q_intf DATA" *) (* x_interface_parameter = "XIL_INTERFACENAME q_intf, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {DATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value data} bitwidth {attribs {resolve_type generated dependency bitwidth format long minimum {} maximum {}} value 5} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} integer {signed {attribs {resolve_type immediate dependency {} format bool minimum {} maximum {}} value false}}}} DATA_WIDTH 5}" *) output [4:0]Q;

  wire CLK;
  wire [4:0]Q;
  wire NLW_U0_THRESH0_UNCONNECTED;

  (* C_AINIT_VAL = "0" *) 
  (* C_CE_OVERRIDES_SYNC = "0" *) 
  (* C_FB_LATENCY = "0" *) 
  (* C_HAS_CE = "0" *) 
  (* C_HAS_SCLR = "0" *) 
  (* C_HAS_SINIT = "0" *) 
  (* C_HAS_SSET = "0" *) 
  (* C_IMPLEMENTATION = "0" *) 
  (* C_SCLR_OVERRIDES_SSET = "1" *) 
  (* C_SINIT_VAL = "0" *) 
  (* C_VERBOSITY = "0" *) 
  (* C_WIDTH = "5" *) 
  (* C_XDEVICEFAMILY = "zynquplus" *) 
  (* c_count_by = "1" *) 
  (* c_count_mode = "0" *) 
  (* c_count_to = "1111" *) 
  (* c_has_load = "0" *) 
  (* c_has_thresh0 = "0" *) 
  (* c_latency = "1" *) 
  (* c_load_low = "0" *) 
  (* c_restrict_count = "1" *) 
  (* c_thresh0_value = "1" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  (* is_du_within_envelope = "true" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_c_counter_binary_v12_0_17 U0
       (.CE(1'b1),
        .CLK(CLK),
        .L({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .LOAD(1'b0),
        .Q(Q),
        .SCLR(1'b0),
        .SINIT(1'b0),
        .SSET(1'b0),
        .THRESH0(NLW_U0_THRESH0_UNCONNECTED),
        .UP(1'b1));
endmodule
`pragma protect begin_protected
`pragma protect version = 1
`pragma protect encrypt_agent = "XILINX"
`pragma protect encrypt_agent_info = "Xilinx Encryption Tool 2023.2"
`pragma protect key_keyowner="Synopsys", key_keyname="SNPS-VCS-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
eFbqyWxvTxgrA/YtdaoI20/0Oxv6heWR3Rkp9/xOWnvLDdGDhtGJBQqdO4v1RO/kikveHE3JyVBx
OMXM/QBYbcn/QmEMFud4drsy8IbaUwVstP+Mzovw04CY0e6ucHcNG8bkdAhiixaw1DGilwl8tfXo
1/LD/FGivkVY+qD5JIE=

`pragma protect key_keyowner="Aldec", key_keyname="ALDEC15_001", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
qZVOEd9Suj8PFYlAHZ5eNfv9g67bFY/Iau3fGJHFAIz/4EbdSAUDaGh/Aj5F/sayLnlRNhD6w+39
N7ODCROvgCW/DEQMBCPz7kcEchwyjzrqkhJexEv0Dz7kFQn1ftmdbnZ6SxsSg0bAUSqDETfwIrDN
VELNGURpq3DjO751fQLkz152JThZlONrPm6SqH+2yq0k/imlDMyhznvq+Up4EXiczfO25/APInqH
9ImfZSrqCiz3p7BNa9t1DtJtjx4nO4g/3qItwAhtZOzSyNgUZUJkS0OgYwLaNbOAMte1lEZ3aCj/
PtYFcVrRv6BV9zObKm5JRWmYYw/qLDjrN9AsCA==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VELOCE-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
PTqB7iZsvJeVQbxSYRkkEOB7dur2/Y+zWd7rSI4QgTOZZuY7cx4mymLcNTtY69vWs3+Ir6xtLuRI
kV9wRh0KJKuphJal6eQJChHGu6rp+AHyp8AyhIwGgID1vxyyu7xhU5nl4qM40fYe+ov2uBp5DVP0
GoOHS6Gilji9DRkCQuI=

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VERIF-SIM-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
nl92noyushAx6EnMgw3oSlb0lEtv202gnVMSNN83+NLaV5DJ/HimKQF470dvcnALDIl0xa3e3Dx2
/s2hBMgu9+fSioH4xbMFQTaBWMjBfDKLVgBkEfT5zBbn1LpjuMEnd/TVHxe/dqXJ8Ev1EIyVB5r3
7KAUvfDL8CretmawtvJtixs8bH8vAxLO4BUzVNbXDL44NeL/PffK31PA74odtZbSUGIq+Gf0nEXP
yEajhFawSXpK6M+iRpsuDwKHS/YxQldY5i8FGvVQrcrDBe3XAh+jjvxUqPhZBRChKpDSo0q7V9L4
JAZoQiGn28UrFoWwrxxP1gsv7sPdry3YTRu8DA==

`pragma protect key_keyowner="Real Intent", key_keyname="RI-RSA-KEY-1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
KbhPmoTx5e7VcsW2JDC/J/bcPlnz66gRyRCtg0E0qHv9wqViijoH+owrxv0IWMQoDBsXBaeQm2xz
nHRZDc5s+B+JlzwwZQGB8pQM3sXMmxGcH+jeVqy6X8gKOEQFgnIK2FJlAjHpfO0xmJkl3wxWImNr
ADPNoWEMdruR5ksSgKexng6J3lkv4vPYoEvCF+Jq91pp71EIJgPtwlY833cs1Exi28xe2Qo/nzU7
oEFG5gySNEidQa25q1QrCDnSmj7j5wDJg5xzjXYmwWk9873dPWyEXdpFMqjxovIcyph/uXidS1PQ
XxFetrAMjtseoYWmz4Lm4f+rpe89PGRhWXsiZw==

`pragma protect key_keyowner="Xilinx", key_keyname="xilinxt_2022_10", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
u7x25sjZWe79yzU52TdAK1EHhzoxhg0OOXYOwTp455Bu78gqkmKRv90VNHoa9foKyQc+Ui9ovV+f
Mu2Crcme1IbP51J6eQdKys/57qJrcFCxGtJs1Tw7KJ7NffFwkytoqR7pgvmtIH6+qncA8b3aZTLq
uwD9bGF9UFZVZ2XBc83+LRU+GZnNMHOa4eegWtueYHh1zUhGju1xbiGWuhliZ58pcNp6gCDiDv+p
GdiwFDT5RDj1bjrkOecRL2fvOdGLrhdqiTh7mvJeDStjjXiovaCdny21gVHf+dzrpyPE2xGgBinA
czj0D2pyt8plttBhpmMBtLm7Yegb1rHiA1UC4Q==

`pragma protect key_keyowner="Metrics Technologies Inc.", key_keyname="DSim", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
ax8Nn3y8qIY97tYqs/w6/65Cp2CG+WRyi20ND2JmdKrfZukanonYYzlNsDdtoOeMZdG6gzVR279V
Et2Qz8YBLQmhBZMJ13mNxEOwpSUbc5lUbLJ9CQ+4u6jvStTDzX+odxkCCqHG8GJhSSFPGX+Z3VZc
TdU/OWddzxwk6JO1tiPn+qt2Q8nMj3Ulh7gqAxPMp0gosh6z+Kx5ZXSuVE/EPNyUDXjRSXjnWPwN
NnM94gbzG23dPqFIOG6f2m5ugBmUUghvI75DFpM7vJkXsEWAfZeOV351MLISR26yMaWxONCdGWTQ
DW1hvUkse+kVt5BxF8ft6CnT7VchA/flFKvfPg==

`pragma protect key_keyowner="Atrenta", key_keyname="ATR-SG-RSA-1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=384)
`pragma protect key_block
e/Ry1l/vqJFJqrtAPFKKjxxp0MWhiORDa7WOuKdNY7LaztvYcFdzfNmZDmSuTrj2jPF7WDL6uDC8
FMboEovqCHZ9s014f2WS+jYxvraqlkgyGQ1Q7gAZ6yaBsdSi2RgWdbpy++ECpfVjq8/sYcJl+CZl
ZIsOc7C4BTFh3wysjt9r3cLq/k/dOO8xw2ZAarjqRzjr0h9T3TEzowI/jWVIqkEICEpCsA6k6h2U
oRuVQxQmdtSXmU/Zm/g8I4dj6axYw/zYpYJe2v9s4sy3NCBf/p+z3JFoReqcGYtminQ5ba3zzR5v
mVNiXw+YtQVCe0IsGLqjaEBWcXrs5SNFVYKce0xzBupVSQ0hP5cTBMtcToem7n2nM+9LdhZqlPBl
KimcvX+KrlUbox8H49P1OzL0A8+Eterrfdy0jE2DF+YuIuSAnudKM11WtjqK5yq8zJk5JOHQUQZl
qO7dmmZT95FjGPG/jqS+uYlHdZCNNyQ2l2SbVZw7NPkIJGq5bAKeGsSg

`pragma protect key_keyowner="Cadence Design Systems.", key_keyname="CDS_RSA_KEY_VER_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
OqTG2QUdaSjYwH6PeUiMov3bCDPXiUvE4U1Z/Vd7xbPVo7tNNwQeTcXKi/ZUR5G1tkEs1OoxIqaH
ytImL/6Ro6liEE5oT3otxdQb1Yz3ukWdnhQpgw3O2DRb5K1R4L7p5QCVIgq+/7f4oNn8VSJ1hT7o
jVMeT5IvgkJXZsqX/2c86iOEUQ/Xha6SVw6W50dS1u8Q/FzR54WBSo0MFMxZWh5Pyf5qnBJKna0d
nVdDHDBFDajINOk8j7Oonu6ynHrhNkyo1IEnNv/ZQPbHo2aynI/MIaO/5etmCQO2m+53okz5H7pu
RWYkE0zXoE1v6jl/QhZyc23SZppXzWGhd1zsRw==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 2336)
`pragma protect data_block
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
`pragma protect end_protected
`pragma protect begin_protected
`pragma protect version = 1
`pragma protect encrypt_agent = "XILINX"
`pragma protect encrypt_agent_info = "Xilinx Encryption Tool 2023.2"
`pragma protect key_keyowner="Synopsys", key_keyname="SNPS-VCS-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
ksEefSVwxJ7GZRGfDW/ikJjjKrptVqn8BoUNFE3DbyFfbjY6zlYjVU2CwELAYvgfKaBSrfyMEuMS
jKlgb8yavCVUJwldPyfxtdCTc4Xwwf5euzW2dlEPW6GJ/QR3MDQqWj87hbjhXiaVYBETI5rDAwxs
ag0jDyfGbH7Fx+g9iHA=

`pragma protect key_keyowner="Aldec", key_keyname="ALDEC15_001", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
GUnXggesQ6wFp8A8d+M/2l15nNVdxv4BePG1TQSaW5ydG6gBnt1y3X+nKLPfsAAKMgY0S9HUXdwI
BtWpUk5399XEOzA2bD1xmv0kwgpoz7POYIpgdAx/BCQF4rvktNKhi//x7IGo53UxJVwDFGgSASrO
U5lhhW3AIMh5QGWdNY6U3TzkCUAU/h8BrAIu8xVBUHfzif45XFeiMwPEQ+uf9C38tdN1byBWu1D/
bdHKHLEoQ180FM40kDg21Tnzo1CCw9O7115GHzGr/Y7RqsUoXbHr1346oJXf0hxxsDt9e/cTljtl
4L97UAEqQxYqk45h7XMoUAz/YbWBBiDhQKrR3w==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VELOCE-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
iNgUNYpqDDi+BiL6da8RD7fGSSVTBewyOT5AwUszNtVY2QTxMMGmpdt4Wl8wGrjG/+93rEl2nPxj
fVk7z+ka8eUaCXkzXlWBjwMeJ90rJ8KO4FihwKtjjMiQquSLwyNR5pyyZNTkHBdNAkkDc8PkCtch
58pttA9zypiv98tm7zU=

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VERIF-SIM-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
l9wV41MkDixx33FFiTcl/1LF3h1Ssk8tRJ69dtGKsXv9zoUl5Bxiuu/o/WzYfpCq3B5+G2qijP2Z
OIQg8dZnpVNEIlnCHyi/D8CgxGpnjTB9agrcv8p2uJfjEuchqWILowpBGaVDhzCH2CHEpi+ZHflK
AxkMClCs1aA/6Q0ZWIYTncVkAAMhjwkaIom1j7aWSm2i/zWAtmSZoLTcPpp31mhQRIss1MVGJsOR
Sh3metVPfaNOi3KvYM6QrxiVtTHO3a2wssYRgjTs87/jOj8J10HlZpV6TokY4thLe0cPSSEjglvq
P6RT4BZgxEuLA0F8c6+3OkGNR8Kzq00egupHgQ==

`pragma protect key_keyowner="Real Intent", key_keyname="RI-RSA-KEY-1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
1b99Vg2radkzd2aDsrt07EnR9e4ghAuZTvdCwZ+Rfi+k0hCjhsY9FlMOKqmtC+lX1MNCBSeHgsNL
vC3O2ZjgIz/EMJCZZakXOrMcAGXIynPJrLgl1NY5RYyI0zJywRaKse7wLpCuqecTGBXUl9G57HTW
PPOgFQhib3Ya2IhicH3fARyC1eaTsrN27wBxP2SbDYBj+LDXG4uwVuxMwtLTV+0UvQmmIoppVGpZ
Ua7OYpyUmmyrNO0BBZV5rC+vJvv2uz6EYEInAbf/YvilBXxRCEmPVuo9PJwi37qvELSx0oUJaLW6
SpcXmCGOcObaWn+sWfPSIS9G56CPukLR9CbTsg==

`pragma protect key_keyowner="Xilinx", key_keyname="xilinxt_2022_10", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
hrNBtOO525Y/qYPVt97xz4nxrMCJQmfV2TjTo00Y7cfC33GktlBrkj8AmqRWBwL54BC7INRnv+EM
dUB9k9sPwhzMDNgYx8Xs2o/+fBIofwnwjLpcykEeIl738vyCoa0SoxeK9v3Ks6oRRe19naTyXBZh
SSMXrAfLivnebn00pk2fIzGR0yUlYBnm1wM0LgODxBtx1gf57R3WPAX+iP12db7Jr/J1AtuhOpN3
LTnpRVg++HfBpxysFJlYUWYkMOcIj3QDjVCSVYLaf6+1Ir6izPggk614ydQW49xFI1feXBQmCdZj
GRAjYR+lgC7YQ2AYnnUzYpc0gNszwtpJjNz1kg==

`pragma protect key_keyowner="Metrics Technologies Inc.", key_keyname="DSim", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
nV7nxF322RjcviTHhbV5But2nl7UvqvHOdctqSW5Chm+DWLRVeX5/RuqZiIggqahWMnCxKI8LbWs
tMgeFuwfZEDdkccQY+u8uRg70PK0ubEgM9V9yEadlgOcHGAcGWfEKlOP/4NUztFqY5W8lCjrq6Rw
+hAjup6bYkwhbjs1bYgO80It/T4sXDfmF6EFgGX34uqF+TeyqyfJTzh98ST/I6H9/SdQo/JQxbto
b/urscmiQUqDbmopEJpCzfPQR+MKUxzMhdXFmX6MmzhjsAjc7sUT3GVtsk5lSPK9foIK66/+mX3S
nPsq9e/4M7tDfoV1noDtEdGcaq8//O9/65wEUA==

`pragma protect key_keyowner="Atrenta", key_keyname="ATR-SG-RSA-1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=384)
`pragma protect key_block
D8vjA0bcs03atqVGl9n4waeXMx0cq7qqplOEpHoCsxcjrnCmleai/szQA+0wbIEOHR04zff/ikRf
JfA6YDU0wnRfi0x4K705Tkr7rwfpaJC+OTW4mKdBL8Wqm7ecjAreXQZVb6p6QVNaz4TrNairCp5R
5QeCslFvljCeKS+guLuFf441sciBjxYQDawtKwF1Lw0hFVg65PDaIdwzamCMJclhyPZ5oHnSTkFB
ZmjEtufNQD/lGIWS+MkwUVvdra98hC0JnQ8pwRQ/hdATIAIIm0LSL8Uq1X3GrUpk+2+r1a6L8N+l
aCeDJtDzvLPGVOI57FFRQEKUjjBea2T10d8Crvq90r84OEfcooPJz1OYhLGEyem5+xJ+h7KrvSQA
zpj8OngSFSDWg2l5GH1kY9p1qg9fuOMyhWC+tMFVuYTkZAY/gPWq6vpY+1A+1mtMb0fBdk3JiQx9
JRtQR3lE/tLwyB0ggWJJcPniIccaxxv2ixKSQKq3WPCyPMnkcWlLuAES

`pragma protect key_keyowner="Cadence Design Systems.", key_keyname="CDS_RSA_KEY_VER_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
FdWuCO7PN7y/dH6CMR4JA05yurwi5lHIUjuk6g7VXrZ9GYhlTKmpCWlV0uGRUBrVMqBEOdEC+Qdo
3z23v5MofUgIVxjUAp/sUgwHIK6W6h79woMKhZ7Q8xOWMPZOLmuapnKFf81WzFnIBNCB6t14gJVU
px/ycQC6omaG/j9kW5E5E5SL6k3JPQazmLq4Xr2LJxBV0vQK7H4f53R4BHTUJa2f4FYma0lxdz44
oyi/sA2g6j+/1BusYznWbR1i4g6N5/yKHaQsVC8avD4Za+oFFIibqpFCH/pXnCw9xbVBmqb/6oXr
bryFUy7yXCVAcYqaw6V/UGRHO3IpM/9pCUt6zA==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-PREC-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
IoFMRitPYXIF+2DX6CZua7OqT6aNwJ/Mv3tFJ2YKkxpAsznRuyUTyuS3Oduw/NqiZkFj/pSgnSZk
Q33KOrsNuaVGUW8g9ct00jHZN07hElC7pbiuTwv6zB67gRMwMWuhD5kButC2Dv7PwKi6CWbjCkVw
8vleOOXjHU6L0mCZv+YbW9AGk9c5Q7VgD0ap6dvYMR6macwa6knkNZwfDHtpKyPAPN9cpL+/2trH
9MiDY5gEOAXwTfr8WB7VuVtt5LssHoQF13Nb/lsZB2xtFsE/23FsLT9ZoOlLG6NaI4XTQp8Bj7QR
Le9blvlBE9UBIwY68rDVHd307w981OBybnIW5A==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
a7r+PsJaqrmPEPekJiiNTzzH9j1VZy5OmfCipWy72zmU9DziuKpCkg0lqB1keEvlmYCr1Oh71p0F
OK7uJSEfA8zuWiICnYdvYUz4d/ofDWjUDC/4qoAtvbTJ7hVeF2IA6fDdpim7eVxdD2lG104cI7ff
mP8cigMtONOEvMbvwhWMAm7QjWtx6EMc92bcxxqCp6sCO42XpKr+5w7tq+kwlvJ+DOIWCLDuld7X
1H0xsP3LKOhnR+J7bu2i87TwNdkxaavUrpKoSGH0JpIdP4nfqQF7+2nGmAINodDhM6eVuguhnXub
lRsK4sWhgs84UoPapDH9uN4Sz8cTGCvYfFhm0A==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 5824)
`pragma protect data_block
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
NYyTnxZoao36lA==
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
