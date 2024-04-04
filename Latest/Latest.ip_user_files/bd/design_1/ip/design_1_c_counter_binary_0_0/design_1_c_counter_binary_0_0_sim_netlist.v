// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2023.2 (win64) Build 4029153 Fri Oct 13 20:14:34 MDT 2023
// Date        : Wed Mar 27 14:17:40 2024
// Host        : LAPTOP-81E1PH83 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               c:/larry_delivery/Latest/Latest.gen/sources_1/bd/design_1/ip/design_1_c_counter_binary_0_0/design_1_c_counter_binary_0_0_sim_netlist.v
// Design      : design_1_c_counter_binary_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xczu9eg-ffvb1156-2-e
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "design_1_c_counter_binary_0_0,c_counter_binary_v12_0_17,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "c_counter_binary_v12_0_17,Vivado 2023.2" *) 
(* NotValidForBitStream *)
module design_1_c_counter_binary_0_0
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
  design_1_c_counter_binary_0_0_c_counter_binary_v12_0_17 U0
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
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 2368)
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
SGirndMlKy9TMSlpv6yvH3yq4DYX0cTrQpF7r6ginxp1Jwi4x8gXcxjeRE1QsE8HxeMG95i026PU
+PP0Zrq1Sjv6f1nmHhR+uboD8e5VnQtssRpDOl06XW48v2xNizsTtKz75G1tni+jKbE+7AJ10h/k
FxxxccwPSBwRFSPdf+s8fk3RAaRTb0gVhzVB4SUqHUOe+An7pYq48ufaVmvq9UfyaxYZVV5phEbf
gOYOYkYzzeTNJMoyrBG0lu5Ao1CozuNKp0Qiw53wLNY66v3d4tdvPlL447xHVZa7sdF9eRLAVhWh
ERnGV4/guw+6qIlilHdOyCXFF+ASwEC91/BTGw==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
xGdcdJRYwChCJBVvNmaxF5lh2Sx9iqQb07gnVSejzd4TCjJ6R1Qhh0/b4y9gH706Beiozi6U5JOp
OpYYZPRwwg+mqdt1HuGt8UwhLzRCvONAvBuWW8giWDNcwugB7qyuAC2rAyxKZo8H4HJYs5hCu84H
BjeXI+Vqsb2Mf4g/qJoCya4UclnbHtiXbN39++bBw1/RZ4H1MAQ+54EcyUctWQmQTssgsXIm530N
fVFg0roUOMiKycWogc+ljHIvU+GtB0E7bFWYJI4cyJTjRKE1m8IlW5fMH1KuMrp31wV06aME2T91
ZNsqGtUzjJc67Fj5bRm4wsJynoR4wB1f6L8Hkw==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 6000)
`pragma protect data_block
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
bhXuLNlkMuHO1iTpdfZc
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
