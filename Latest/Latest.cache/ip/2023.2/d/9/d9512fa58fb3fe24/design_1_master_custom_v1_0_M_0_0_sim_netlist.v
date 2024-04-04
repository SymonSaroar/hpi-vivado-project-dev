// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2023.2 (win64) Build 4029153 Fri Oct 13 20:14:34 MDT 2023
// Date        : Tue Apr  2 11:52:28 2024
// Host        : LAPTOP-81E1PH83 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ design_1_master_custom_v1_0_M_0_0_sim_netlist.v
// Design      : design_1_master_custom_v1_0_M_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xczu9eg-ffvb1156-2-e
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "design_1_master_custom_v1_0_M_0_0,master_custom_v1_0_M00_AXI,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* IP_DEFINITION_SOURCE = "module_ref" *) 
(* X_CORE_INFO = "master_custom_v1_0_M00_AXI,Vivado 2023.2" *) 
(* NotValidForBitStream *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix
   (debug_addr,
    debug_add_bytes,
    read_addr,
    addr_fifo_empty,
    vector_fifo_full,
    arvalid,
    arready,
    output_data,
    rvalid,
    rready,
    debug_tx_num,
    INIT_AXI_TXN,
    TXN_DONE,
    ERROR,
    M_AXI_ACLK,
    M_AXI_ARESETN,
    M_AXI_AWID,
    M_AXI_AWADDR,
    M_AXI_AWLEN,
    M_AXI_AWSIZE,
    M_AXI_AWBURST,
    M_AXI_AWLOCK,
    M_AXI_AWCACHE,
    M_AXI_AWPROT,
    M_AXI_AWQOS,
    M_AXI_AWUSER,
    M_AXI_AWVALID,
    M_AXI_AWREADY,
    M_AXI_WDATA,
    M_AXI_WSTRB,
    M_AXI_WLAST,
    M_AXI_WUSER,
    M_AXI_WVALID,
    M_AXI_WREADY,
    M_AXI_BID,
    M_AXI_BRESP,
    M_AXI_BUSER,
    M_AXI_BVALID,
    M_AXI_BREADY,
    M_AXI_ARID,
    M_AXI_ARADDR,
    M_AXI_ARLEN,
    M_AXI_ARSIZE,
    M_AXI_ARBURST,
    M_AXI_ARLOCK,
    M_AXI_ARCACHE,
    M_AXI_ARPROT,
    M_AXI_ARQOS,
    M_AXI_ARUSER,
    M_AXI_ARVALID,
    M_AXI_ARREADY,
    M_AXI_RID,
    M_AXI_RDATA,
    M_AXI_RRESP,
    M_AXI_RLAST,
    M_AXI_RUSER,
    M_AXI_RVALID,
    M_AXI_RREADY);
  output [31:0]debug_addr;
  output [31:0]debug_add_bytes;
  input [31:0]read_addr;
  input addr_fifo_empty;
  input vector_fifo_full;
  output arvalid;
  output arready;
  output [127:0]output_data;
  output rvalid;
  output rready;
  output [31:0]debug_tx_num;
  input INIT_AXI_TXN;
  output TXN_DONE;
  output ERROR;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 M_AXI_ACLK CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME M_AXI_ACLK, ASSOCIATED_BUSIF M_AXI, ASSOCIATED_RESET M_AXI_ARESETN, FREQ_HZ 299970032, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN design_1_zynq_ultra_ps_e_0_0_pl_clk0, INSERT_VIP 0" *) input M_AXI_ACLK;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 M_AXI_ARESETN RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME M_AXI_ARESETN, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input M_AXI_ARESETN;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI AWID" *) output [0:0]M_AXI_AWID;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI AWADDR" *) output [31:0]M_AXI_AWADDR;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI AWLEN" *) output [7:0]M_AXI_AWLEN;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI AWSIZE" *) output [2:0]M_AXI_AWSIZE;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI AWBURST" *) output [1:0]M_AXI_AWBURST;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI AWLOCK" *) output M_AXI_AWLOCK;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI AWCACHE" *) output [3:0]M_AXI_AWCACHE;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI AWPROT" *) output [2:0]M_AXI_AWPROT;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI AWQOS" *) output [3:0]M_AXI_AWQOS;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI AWUSER" *) output [0:0]M_AXI_AWUSER;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI AWVALID" *) output M_AXI_AWVALID;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI AWREADY" *) input M_AXI_AWREADY;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI WDATA" *) output [127:0]M_AXI_WDATA;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI WSTRB" *) output [15:0]M_AXI_WSTRB;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI WLAST" *) output M_AXI_WLAST;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI WUSER" *) output [15:0]M_AXI_WUSER;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI WVALID" *) output M_AXI_WVALID;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI WREADY" *) input M_AXI_WREADY;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI BID" *) input [0:0]M_AXI_BID;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI BRESP" *) input [1:0]M_AXI_BRESP;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI BUSER" *) input [0:0]M_AXI_BUSER;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI BVALID" *) input M_AXI_BVALID;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI BREADY" *) output M_AXI_BREADY;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI ARID" *) output [0:0]M_AXI_ARID;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI ARADDR" *) output [31:0]M_AXI_ARADDR;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI ARLEN" *) output [7:0]M_AXI_ARLEN;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI ARSIZE" *) output [2:0]M_AXI_ARSIZE;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI ARBURST" *) output [1:0]M_AXI_ARBURST;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI ARLOCK" *) output M_AXI_ARLOCK;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI ARCACHE" *) output [3:0]M_AXI_ARCACHE;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI ARPROT" *) output [2:0]M_AXI_ARPROT;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI ARQOS" *) output [3:0]M_AXI_ARQOS;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI ARUSER" *) output [0:0]M_AXI_ARUSER;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI ARVALID" *) output M_AXI_ARVALID;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI ARREADY" *) input M_AXI_ARREADY;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI RID" *) input [0:0]M_AXI_RID;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI RDATA" *) input [127:0]M_AXI_RDATA;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI RRESP" *) input [1:0]M_AXI_RRESP;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI RLAST" *) input M_AXI_RLAST;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI RUSER" *) input [15:0]M_AXI_RUSER;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI RVALID" *) input M_AXI_RVALID;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI RREADY" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME M_AXI, DATA_WIDTH 128, PROTOCOL AXI4, FREQ_HZ 299970032, ID_WIDTH 1, ADDR_WIDTH 32, AWUSER_WIDTH 1, ARUSER_WIDTH 1, WUSER_WIDTH 16, RUSER_WIDTH 16, BUSER_WIDTH 1, READ_WRITE_MODE READ_WRITE, HAS_BURST 1, HAS_LOCK 1, HAS_PROT 1, HAS_CACHE 1, HAS_QOS 1, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, SUPPORTS_NARROW_BURST 1, NUM_READ_OUTSTANDING 2, NUM_WRITE_OUTSTANDING 2, MAX_BURST_LENGTH 256, PHASE 0.0, CLK_DOMAIN design_1_zynq_ultra_ps_e_0_0_pl_clk0, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0" *) output M_AXI_RREADY;

  wire \<const0> ;
  wire \<const1> ;
  wire INIT_AXI_TXN;
  wire M_AXI_ACLK;
  wire M_AXI_ARESETN;
  wire M_AXI_ARREADY;
  wire M_AXI_BREADY;
  wire M_AXI_BVALID;
  wire [127:0]M_AXI_RDATA;
  wire M_AXI_RLAST;
  wire M_AXI_RVALID;
  wire M_AXI_WLAST;
  wire TXN_DONE;
  wire addr_fifo_empty;
  wire arvalid;
  wire [27:0]\^debug_addr ;
  wire [31:0]read_addr;
  wire rready;
  wire vector_fifo_full;

  assign ERROR = \<const0> ;
  assign M_AXI_ARADDR[31:0] = read_addr;
  assign M_AXI_ARBURST[1] = \<const0> ;
  assign M_AXI_ARBURST[0] = \<const1> ;
  assign M_AXI_ARCACHE[3] = \<const0> ;
  assign M_AXI_ARCACHE[2] = \<const0> ;
  assign M_AXI_ARCACHE[1] = \<const1> ;
  assign M_AXI_ARCACHE[0] = \<const1> ;
  assign M_AXI_ARID[0] = \<const0> ;
  assign M_AXI_ARLEN[7] = \<const0> ;
  assign M_AXI_ARLEN[6] = \<const0> ;
  assign M_AXI_ARLEN[5] = \<const0> ;
  assign M_AXI_ARLEN[4] = \<const0> ;
  assign M_AXI_ARLEN[3] = \<const0> ;
  assign M_AXI_ARLEN[2] = \<const0> ;
  assign M_AXI_ARLEN[1] = \<const0> ;
  assign M_AXI_ARLEN[0] = \<const0> ;
  assign M_AXI_ARLOCK = \<const0> ;
  assign M_AXI_ARPROT[2] = \<const0> ;
  assign M_AXI_ARPROT[1] = \<const0> ;
  assign M_AXI_ARPROT[0] = \<const0> ;
  assign M_AXI_ARQOS[3] = \<const1> ;
  assign M_AXI_ARQOS[2] = \<const1> ;
  assign M_AXI_ARQOS[1] = \<const1> ;
  assign M_AXI_ARQOS[0] = \<const1> ;
  assign M_AXI_ARSIZE[2] = \<const1> ;
  assign M_AXI_ARSIZE[1] = \<const0> ;
  assign M_AXI_ARSIZE[0] = \<const0> ;
  assign M_AXI_ARUSER[0] = \<const1> ;
  assign M_AXI_ARVALID = arvalid;
  assign M_AXI_AWADDR[31:0] = read_addr;
  assign M_AXI_AWBURST[1] = \<const0> ;
  assign M_AXI_AWBURST[0] = \<const1> ;
  assign M_AXI_AWCACHE[3] = \<const0> ;
  assign M_AXI_AWCACHE[2] = \<const0> ;
  assign M_AXI_AWCACHE[1] = \<const1> ;
  assign M_AXI_AWCACHE[0] = \<const0> ;
  assign M_AXI_AWID[0] = \<const0> ;
  assign M_AXI_AWLEN[7] = \<const0> ;
  assign M_AXI_AWLEN[6] = \<const0> ;
  assign M_AXI_AWLEN[5] = \<const0> ;
  assign M_AXI_AWLEN[4] = \<const0> ;
  assign M_AXI_AWLEN[3] = \<const0> ;
  assign M_AXI_AWLEN[2] = \<const0> ;
  assign M_AXI_AWLEN[1] = \<const0> ;
  assign M_AXI_AWLEN[0] = \<const0> ;
  assign M_AXI_AWLOCK = \<const0> ;
  assign M_AXI_AWPROT[2] = \<const0> ;
  assign M_AXI_AWPROT[1] = \<const0> ;
  assign M_AXI_AWPROT[0] = \<const0> ;
  assign M_AXI_AWQOS[3] = \<const0> ;
  assign M_AXI_AWQOS[2] = \<const0> ;
  assign M_AXI_AWQOS[1] = \<const0> ;
  assign M_AXI_AWQOS[0] = \<const0> ;
  assign M_AXI_AWSIZE[2] = \<const1> ;
  assign M_AXI_AWSIZE[1] = \<const0> ;
  assign M_AXI_AWSIZE[0] = \<const0> ;
  assign M_AXI_AWUSER[0] = \<const1> ;
  assign M_AXI_AWVALID = \<const0> ;
  assign M_AXI_RREADY = rready;
  assign M_AXI_WDATA[127] = \<const0> ;
  assign M_AXI_WDATA[126] = \<const0> ;
  assign M_AXI_WDATA[125] = \<const0> ;
  assign M_AXI_WDATA[124] = \<const0> ;
  assign M_AXI_WDATA[123] = \<const0> ;
  assign M_AXI_WDATA[122] = \<const0> ;
  assign M_AXI_WDATA[121] = \<const0> ;
  assign M_AXI_WDATA[120] = \<const0> ;
  assign M_AXI_WDATA[119] = \<const0> ;
  assign M_AXI_WDATA[118] = \<const0> ;
  assign M_AXI_WDATA[117] = \<const0> ;
  assign M_AXI_WDATA[116] = \<const0> ;
  assign M_AXI_WDATA[115] = \<const0> ;
  assign M_AXI_WDATA[114] = \<const0> ;
  assign M_AXI_WDATA[113] = \<const0> ;
  assign M_AXI_WDATA[112] = \<const0> ;
  assign M_AXI_WDATA[111] = \<const0> ;
  assign M_AXI_WDATA[110] = \<const0> ;
  assign M_AXI_WDATA[109] = \<const0> ;
  assign M_AXI_WDATA[108] = \<const0> ;
  assign M_AXI_WDATA[107] = \<const0> ;
  assign M_AXI_WDATA[106] = \<const0> ;
  assign M_AXI_WDATA[105] = \<const0> ;
  assign M_AXI_WDATA[104] = \<const0> ;
  assign M_AXI_WDATA[103] = \<const0> ;
  assign M_AXI_WDATA[102] = \<const0> ;
  assign M_AXI_WDATA[101] = \<const0> ;
  assign M_AXI_WDATA[100] = \<const0> ;
  assign M_AXI_WDATA[99] = \<const0> ;
  assign M_AXI_WDATA[98] = \<const0> ;
  assign M_AXI_WDATA[97] = \<const0> ;
  assign M_AXI_WDATA[96] = \<const0> ;
  assign M_AXI_WDATA[95] = \<const0> ;
  assign M_AXI_WDATA[94] = \<const0> ;
  assign M_AXI_WDATA[93] = \<const0> ;
  assign M_AXI_WDATA[92] = \<const0> ;
  assign M_AXI_WDATA[91] = \<const0> ;
  assign M_AXI_WDATA[90] = \<const0> ;
  assign M_AXI_WDATA[89] = \<const0> ;
  assign M_AXI_WDATA[88] = \<const0> ;
  assign M_AXI_WDATA[87] = \<const0> ;
  assign M_AXI_WDATA[86] = \<const0> ;
  assign M_AXI_WDATA[85] = \<const0> ;
  assign M_AXI_WDATA[84] = \<const0> ;
  assign M_AXI_WDATA[83] = \<const0> ;
  assign M_AXI_WDATA[82] = \<const0> ;
  assign M_AXI_WDATA[81] = \<const0> ;
  assign M_AXI_WDATA[80] = \<const0> ;
  assign M_AXI_WDATA[79] = \<const0> ;
  assign M_AXI_WDATA[78] = \<const0> ;
  assign M_AXI_WDATA[77] = \<const0> ;
  assign M_AXI_WDATA[76] = \<const0> ;
  assign M_AXI_WDATA[75] = \<const0> ;
  assign M_AXI_WDATA[74] = \<const0> ;
  assign M_AXI_WDATA[73] = \<const0> ;
  assign M_AXI_WDATA[72] = \<const0> ;
  assign M_AXI_WDATA[71] = \<const0> ;
  assign M_AXI_WDATA[70] = \<const0> ;
  assign M_AXI_WDATA[69] = \<const0> ;
  assign M_AXI_WDATA[68] = \<const0> ;
  assign M_AXI_WDATA[67] = \<const0> ;
  assign M_AXI_WDATA[66] = \<const0> ;
  assign M_AXI_WDATA[65] = \<const0> ;
  assign M_AXI_WDATA[64] = \<const0> ;
  assign M_AXI_WDATA[63] = \<const0> ;
  assign M_AXI_WDATA[62] = \<const0> ;
  assign M_AXI_WDATA[61] = \<const0> ;
  assign M_AXI_WDATA[60] = \<const0> ;
  assign M_AXI_WDATA[59] = \<const0> ;
  assign M_AXI_WDATA[58] = \<const0> ;
  assign M_AXI_WDATA[57] = \<const0> ;
  assign M_AXI_WDATA[56] = \<const0> ;
  assign M_AXI_WDATA[55] = \<const0> ;
  assign M_AXI_WDATA[54] = \<const0> ;
  assign M_AXI_WDATA[53] = \<const0> ;
  assign M_AXI_WDATA[52] = \<const0> ;
  assign M_AXI_WDATA[51] = \<const0> ;
  assign M_AXI_WDATA[50] = \<const0> ;
  assign M_AXI_WDATA[49] = \<const0> ;
  assign M_AXI_WDATA[48] = \<const0> ;
  assign M_AXI_WDATA[47] = \<const0> ;
  assign M_AXI_WDATA[46] = \<const0> ;
  assign M_AXI_WDATA[45] = \<const0> ;
  assign M_AXI_WDATA[44] = \<const0> ;
  assign M_AXI_WDATA[43] = \<const0> ;
  assign M_AXI_WDATA[42] = \<const0> ;
  assign M_AXI_WDATA[41] = \<const0> ;
  assign M_AXI_WDATA[40] = \<const0> ;
  assign M_AXI_WDATA[39] = \<const0> ;
  assign M_AXI_WDATA[38] = \<const0> ;
  assign M_AXI_WDATA[37] = \<const0> ;
  assign M_AXI_WDATA[36] = \<const0> ;
  assign M_AXI_WDATA[35] = \<const0> ;
  assign M_AXI_WDATA[34] = \<const0> ;
  assign M_AXI_WDATA[33] = \<const0> ;
  assign M_AXI_WDATA[32] = \<const0> ;
  assign M_AXI_WDATA[31] = \<const0> ;
  assign M_AXI_WDATA[30] = \<const0> ;
  assign M_AXI_WDATA[29] = \<const0> ;
  assign M_AXI_WDATA[28] = \<const0> ;
  assign M_AXI_WDATA[27] = \<const0> ;
  assign M_AXI_WDATA[26] = \<const0> ;
  assign M_AXI_WDATA[25] = \<const0> ;
  assign M_AXI_WDATA[24] = \<const0> ;
  assign M_AXI_WDATA[23] = \<const0> ;
  assign M_AXI_WDATA[22] = \<const0> ;
  assign M_AXI_WDATA[21] = \<const0> ;
  assign M_AXI_WDATA[20] = \<const0> ;
  assign M_AXI_WDATA[19] = \<const0> ;
  assign M_AXI_WDATA[18] = \<const0> ;
  assign M_AXI_WDATA[17] = \<const0> ;
  assign M_AXI_WDATA[16] = \<const0> ;
  assign M_AXI_WDATA[15] = \<const0> ;
  assign M_AXI_WDATA[14] = \<const0> ;
  assign M_AXI_WDATA[13] = \<const0> ;
  assign M_AXI_WDATA[12] = \<const0> ;
  assign M_AXI_WDATA[11] = \<const0> ;
  assign M_AXI_WDATA[10] = \<const0> ;
  assign M_AXI_WDATA[9] = \<const0> ;
  assign M_AXI_WDATA[8] = \<const0> ;
  assign M_AXI_WDATA[7] = \<const0> ;
  assign M_AXI_WDATA[6] = \<const0> ;
  assign M_AXI_WDATA[5] = \<const0> ;
  assign M_AXI_WDATA[4] = \<const0> ;
  assign M_AXI_WDATA[3] = \<const0> ;
  assign M_AXI_WDATA[2] = \<const0> ;
  assign M_AXI_WDATA[1] = \<const0> ;
  assign M_AXI_WDATA[0] = \<const1> ;
  assign M_AXI_WSTRB[15] = \<const1> ;
  assign M_AXI_WSTRB[14] = \<const1> ;
  assign M_AXI_WSTRB[13] = \<const1> ;
  assign M_AXI_WSTRB[12] = \<const1> ;
  assign M_AXI_WSTRB[11] = \<const1> ;
  assign M_AXI_WSTRB[10] = \<const1> ;
  assign M_AXI_WSTRB[9] = \<const1> ;
  assign M_AXI_WSTRB[8] = \<const1> ;
  assign M_AXI_WSTRB[7] = \<const1> ;
  assign M_AXI_WSTRB[6] = \<const1> ;
  assign M_AXI_WSTRB[5] = \<const1> ;
  assign M_AXI_WSTRB[4] = \<const1> ;
  assign M_AXI_WSTRB[3] = \<const1> ;
  assign M_AXI_WSTRB[2] = \<const1> ;
  assign M_AXI_WSTRB[1] = \<const1> ;
  assign M_AXI_WSTRB[0] = \<const1> ;
  assign M_AXI_WUSER[15] = \<const0> ;
  assign M_AXI_WUSER[14] = \<const0> ;
  assign M_AXI_WUSER[13] = \<const0> ;
  assign M_AXI_WUSER[12] = \<const0> ;
  assign M_AXI_WUSER[11] = \<const0> ;
  assign M_AXI_WUSER[10] = \<const0> ;
  assign M_AXI_WUSER[9] = \<const0> ;
  assign M_AXI_WUSER[8] = \<const0> ;
  assign M_AXI_WUSER[7] = \<const0> ;
  assign M_AXI_WUSER[6] = \<const0> ;
  assign M_AXI_WUSER[5] = \<const0> ;
  assign M_AXI_WUSER[4] = \<const0> ;
  assign M_AXI_WUSER[3] = \<const0> ;
  assign M_AXI_WUSER[2] = \<const0> ;
  assign M_AXI_WUSER[1] = \<const0> ;
  assign M_AXI_WUSER[0] = \<const0> ;
  assign M_AXI_WVALID = \<const0> ;
  assign arready = M_AXI_ARREADY;
  assign debug_add_bytes[31] = \<const0> ;
  assign debug_add_bytes[30] = \<const0> ;
  assign debug_add_bytes[29] = \<const0> ;
  assign debug_add_bytes[28] = \<const0> ;
  assign debug_add_bytes[27] = \<const0> ;
  assign debug_add_bytes[26] = \<const0> ;
  assign debug_add_bytes[25] = \<const0> ;
  assign debug_add_bytes[24] = \<const0> ;
  assign debug_add_bytes[23] = \<const0> ;
  assign debug_add_bytes[22] = \<const0> ;
  assign debug_add_bytes[21] = \<const0> ;
  assign debug_add_bytes[20] = \<const0> ;
  assign debug_add_bytes[19] = \<const0> ;
  assign debug_add_bytes[18] = \<const0> ;
  assign debug_add_bytes[17] = \<const0> ;
  assign debug_add_bytes[16] = \<const0> ;
  assign debug_add_bytes[15] = \<const0> ;
  assign debug_add_bytes[14] = \<const0> ;
  assign debug_add_bytes[13] = \<const0> ;
  assign debug_add_bytes[12] = \<const0> ;
  assign debug_add_bytes[11] = \<const0> ;
  assign debug_add_bytes[10] = \<const0> ;
  assign debug_add_bytes[9] = \<const0> ;
  assign debug_add_bytes[8] = \<const0> ;
  assign debug_add_bytes[7] = \<const0> ;
  assign debug_add_bytes[6] = \<const0> ;
  assign debug_add_bytes[5] = \<const0> ;
  assign debug_add_bytes[4] = \<const1> ;
  assign debug_add_bytes[3] = \<const0> ;
  assign debug_add_bytes[2] = \<const0> ;
  assign debug_add_bytes[1] = \<const0> ;
  assign debug_add_bytes[0] = \<const0> ;
  assign debug_addr[31] = \<const0> ;
  assign debug_addr[30] = \<const0> ;
  assign debug_addr[29] = \<const0> ;
  assign debug_addr[28] = \<const0> ;
  assign debug_addr[27:0] = \^debug_addr [27:0];
  assign debug_tx_num[31] = \<const0> ;
  assign debug_tx_num[30] = \<const0> ;
  assign debug_tx_num[29] = \<const0> ;
  assign debug_tx_num[28] = \<const0> ;
  assign debug_tx_num[27] = \<const0> ;
  assign debug_tx_num[26] = \<const0> ;
  assign debug_tx_num[25] = \<const0> ;
  assign debug_tx_num[24] = \<const0> ;
  assign debug_tx_num[23] = \<const0> ;
  assign debug_tx_num[22] = \<const0> ;
  assign debug_tx_num[21] = \<const0> ;
  assign debug_tx_num[20] = \<const0> ;
  assign debug_tx_num[19] = \<const0> ;
  assign debug_tx_num[18] = \<const0> ;
  assign debug_tx_num[17] = \<const0> ;
  assign debug_tx_num[16] = \<const0> ;
  assign debug_tx_num[15] = \<const0> ;
  assign debug_tx_num[14] = \<const0> ;
  assign debug_tx_num[13] = \<const0> ;
  assign debug_tx_num[12] = \<const0> ;
  assign debug_tx_num[11] = \<const0> ;
  assign debug_tx_num[10] = \<const0> ;
  assign debug_tx_num[9] = \<const0> ;
  assign debug_tx_num[8] = \<const0> ;
  assign debug_tx_num[7] = \<const0> ;
  assign debug_tx_num[6] = \<const0> ;
  assign debug_tx_num[5] = \<const0> ;
  assign debug_tx_num[4] = \<const0> ;
  assign debug_tx_num[3] = \<const0> ;
  assign debug_tx_num[2] = \<const0> ;
  assign debug_tx_num[1] = \<const0> ;
  assign debug_tx_num[0] = \<const0> ;
  assign output_data[127:0] = M_AXI_RDATA;
  assign rvalid = M_AXI_RVALID;
  GND GND
       (.G(\<const0> ));
  VCC VCC
       (.P(\<const1> ));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_master_custom_v1_0_M00_AXI inst
       (.INIT_AXI_TXN(INIT_AXI_TXN),
        .M_AXI_ACLK(M_AXI_ACLK),
        .M_AXI_ARESETN(M_AXI_ARESETN),
        .M_AXI_ARREADY(M_AXI_ARREADY),
        .M_AXI_BREADY(M_AXI_BREADY),
        .M_AXI_BVALID(M_AXI_BVALID),
        .M_AXI_RLAST(M_AXI_RLAST),
        .M_AXI_RVALID(M_AXI_RVALID),
        .M_AXI_WLAST(M_AXI_WLAST),
        .TXN_DONE(TXN_DONE),
        .addr_fifo_empty(addr_fifo_empty),
        .axi_arvalid_reg_0(arvalid),
        .debug_addr(\^debug_addr ),
        .read_addr(read_addr[27:0]),
        .rready(rready),
        .vector_fifo_full(vector_fifo_full));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_master_custom_v1_0_M00_AXI
   (M_AXI_BREADY,
    debug_addr,
    M_AXI_WLAST,
    rready,
    axi_arvalid_reg_0,
    TXN_DONE,
    INIT_AXI_TXN,
    vector_fifo_full,
    addr_fifo_empty,
    M_AXI_ARESETN,
    M_AXI_ACLK,
    read_addr,
    M_AXI_RLAST,
    M_AXI_RVALID,
    M_AXI_ARREADY,
    M_AXI_BVALID);
  output M_AXI_BREADY;
  output [27:0]debug_addr;
  output M_AXI_WLAST;
  output rready;
  output axi_arvalid_reg_0;
  output TXN_DONE;
  input INIT_AXI_TXN;
  input vector_fifo_full;
  input addr_fifo_empty;
  input M_AXI_ARESETN;
  input M_AXI_ACLK;
  input [27:0]read_addr;
  input M_AXI_RLAST;
  input M_AXI_RVALID;
  input M_AXI_ARREADY;
  input M_AXI_BVALID;

  wire INIT_AXI_TXN;
  wire M_AXI_ACLK;
  wire M_AXI_ARESETN;
  wire M_AXI_ARREADY;
  wire M_AXI_BREADY;
  wire M_AXI_BVALID;
  wire M_AXI_RLAST;
  wire M_AXI_RVALID;
  wire M_AXI_WLAST;
  wire TXN_DONE;
  wire addr_fifo_empty;
  wire \axi_araddr[27]_i_1_n_0 ;
  wire axi_arvalid0;
  wire axi_arvalid_i_1_n_0;
  wire axi_arvalid_reg_0;
  wire axi_bready0;
  wire axi_rready_i_1_n_0;
  wire compare_done_i_1_n_0;
  wire compare_done_i_2_n_0;
  wire [27:0]debug_addr;
  wire init_txn_ff;
  wire init_txn_ff2_reg_n_0;
  wire init_txn_ff_i_1_n_0;
  wire mst_exec_state;
  wire mst_exec_state__0;
  wire [27:0]read_addr;
  wire rready;
  wire start_single_burst_read_i_1_n_0;
  wire start_single_burst_read_reg_n_0;
  wire vector_fifo_full;

  LUT5 #(
    .INIT(32'h10101F10)) 
    FSM_sequential_mst_exec_state_i_1
       (.I0(vector_fifo_full),
        .I1(addr_fifo_empty),
        .I2(mst_exec_state),
        .I3(init_txn_ff),
        .I4(init_txn_ff2_reg_n_0),
        .O(mst_exec_state__0));
  (* FSM_ENCODED_STATES = "INIT_COMPARE:11,INIT_WRITE:01,INIT_READ:1,IDLE:0" *) 
  FDRE FSM_sequential_mst_exec_state_reg
       (.C(M_AXI_ACLK),
        .CE(1'b1),
        .D(mst_exec_state__0),
        .Q(mst_exec_state),
        .R(compare_done_i_1_n_0));
  LUT3 #(
    .INIT(8'h4F)) 
    \axi_araddr[27]_i_1 
       (.I0(init_txn_ff2_reg_n_0),
        .I1(init_txn_ff),
        .I2(M_AXI_ARESETN),
        .O(\axi_araddr[27]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \axi_araddr[27]_i_2 
       (.I0(axi_arvalid_reg_0),
        .I1(M_AXI_ARREADY),
        .O(axi_arvalid0));
  FDRE \axi_araddr_reg[0] 
       (.C(M_AXI_ACLK),
        .CE(axi_arvalid0),
        .D(read_addr[0]),
        .Q(debug_addr[0]),
        .R(\axi_araddr[27]_i_1_n_0 ));
  FDRE \axi_araddr_reg[10] 
       (.C(M_AXI_ACLK),
        .CE(axi_arvalid0),
        .D(read_addr[10]),
        .Q(debug_addr[10]),
        .R(\axi_araddr[27]_i_1_n_0 ));
  FDRE \axi_araddr_reg[11] 
       (.C(M_AXI_ACLK),
        .CE(axi_arvalid0),
        .D(read_addr[11]),
        .Q(debug_addr[11]),
        .R(\axi_araddr[27]_i_1_n_0 ));
  FDRE \axi_araddr_reg[12] 
       (.C(M_AXI_ACLK),
        .CE(axi_arvalid0),
        .D(read_addr[12]),
        .Q(debug_addr[12]),
        .R(\axi_araddr[27]_i_1_n_0 ));
  FDRE \axi_araddr_reg[13] 
       (.C(M_AXI_ACLK),
        .CE(axi_arvalid0),
        .D(read_addr[13]),
        .Q(debug_addr[13]),
        .R(\axi_araddr[27]_i_1_n_0 ));
  FDRE \axi_araddr_reg[14] 
       (.C(M_AXI_ACLK),
        .CE(axi_arvalid0),
        .D(read_addr[14]),
        .Q(debug_addr[14]),
        .R(\axi_araddr[27]_i_1_n_0 ));
  FDRE \axi_araddr_reg[15] 
       (.C(M_AXI_ACLK),
        .CE(axi_arvalid0),
        .D(read_addr[15]),
        .Q(debug_addr[15]),
        .R(\axi_araddr[27]_i_1_n_0 ));
  FDRE \axi_araddr_reg[16] 
       (.C(M_AXI_ACLK),
        .CE(axi_arvalid0),
        .D(read_addr[16]),
        .Q(debug_addr[16]),
        .R(\axi_araddr[27]_i_1_n_0 ));
  FDRE \axi_araddr_reg[17] 
       (.C(M_AXI_ACLK),
        .CE(axi_arvalid0),
        .D(read_addr[17]),
        .Q(debug_addr[17]),
        .R(\axi_araddr[27]_i_1_n_0 ));
  FDRE \axi_araddr_reg[18] 
       (.C(M_AXI_ACLK),
        .CE(axi_arvalid0),
        .D(read_addr[18]),
        .Q(debug_addr[18]),
        .R(\axi_araddr[27]_i_1_n_0 ));
  FDRE \axi_araddr_reg[19] 
       (.C(M_AXI_ACLK),
        .CE(axi_arvalid0),
        .D(read_addr[19]),
        .Q(debug_addr[19]),
        .R(\axi_araddr[27]_i_1_n_0 ));
  FDRE \axi_araddr_reg[1] 
       (.C(M_AXI_ACLK),
        .CE(axi_arvalid0),
        .D(read_addr[1]),
        .Q(debug_addr[1]),
        .R(\axi_araddr[27]_i_1_n_0 ));
  FDRE \axi_araddr_reg[20] 
       (.C(M_AXI_ACLK),
        .CE(axi_arvalid0),
        .D(read_addr[20]),
        .Q(debug_addr[20]),
        .R(\axi_araddr[27]_i_1_n_0 ));
  FDRE \axi_araddr_reg[21] 
       (.C(M_AXI_ACLK),
        .CE(axi_arvalid0),
        .D(read_addr[21]),
        .Q(debug_addr[21]),
        .R(\axi_araddr[27]_i_1_n_0 ));
  FDRE \axi_araddr_reg[22] 
       (.C(M_AXI_ACLK),
        .CE(axi_arvalid0),
        .D(read_addr[22]),
        .Q(debug_addr[22]),
        .R(\axi_araddr[27]_i_1_n_0 ));
  FDRE \axi_araddr_reg[23] 
       (.C(M_AXI_ACLK),
        .CE(axi_arvalid0),
        .D(read_addr[23]),
        .Q(debug_addr[23]),
        .R(\axi_araddr[27]_i_1_n_0 ));
  FDRE \axi_araddr_reg[24] 
       (.C(M_AXI_ACLK),
        .CE(axi_arvalid0),
        .D(read_addr[24]),
        .Q(debug_addr[24]),
        .R(\axi_araddr[27]_i_1_n_0 ));
  FDRE \axi_araddr_reg[25] 
       (.C(M_AXI_ACLK),
        .CE(axi_arvalid0),
        .D(read_addr[25]),
        .Q(debug_addr[25]),
        .R(\axi_araddr[27]_i_1_n_0 ));
  FDRE \axi_araddr_reg[26] 
       (.C(M_AXI_ACLK),
        .CE(axi_arvalid0),
        .D(read_addr[26]),
        .Q(debug_addr[26]),
        .R(\axi_araddr[27]_i_1_n_0 ));
  FDRE \axi_araddr_reg[27] 
       (.C(M_AXI_ACLK),
        .CE(axi_arvalid0),
        .D(read_addr[27]),
        .Q(debug_addr[27]),
        .R(\axi_araddr[27]_i_1_n_0 ));
  FDRE \axi_araddr_reg[2] 
       (.C(M_AXI_ACLK),
        .CE(axi_arvalid0),
        .D(read_addr[2]),
        .Q(debug_addr[2]),
        .R(\axi_araddr[27]_i_1_n_0 ));
  FDRE \axi_araddr_reg[3] 
       (.C(M_AXI_ACLK),
        .CE(axi_arvalid0),
        .D(read_addr[3]),
        .Q(debug_addr[3]),
        .R(\axi_araddr[27]_i_1_n_0 ));
  FDRE \axi_araddr_reg[4] 
       (.C(M_AXI_ACLK),
        .CE(axi_arvalid0),
        .D(read_addr[4]),
        .Q(debug_addr[4]),
        .R(\axi_araddr[27]_i_1_n_0 ));
  FDRE \axi_araddr_reg[5] 
       (.C(M_AXI_ACLK),
        .CE(axi_arvalid0),
        .D(read_addr[5]),
        .Q(debug_addr[5]),
        .R(\axi_araddr[27]_i_1_n_0 ));
  FDRE \axi_araddr_reg[6] 
       (.C(M_AXI_ACLK),
        .CE(axi_arvalid0),
        .D(read_addr[6]),
        .Q(debug_addr[6]),
        .R(\axi_araddr[27]_i_1_n_0 ));
  FDRE \axi_araddr_reg[7] 
       (.C(M_AXI_ACLK),
        .CE(axi_arvalid0),
        .D(read_addr[7]),
        .Q(debug_addr[7]),
        .R(\axi_araddr[27]_i_1_n_0 ));
  FDRE \axi_araddr_reg[8] 
       (.C(M_AXI_ACLK),
        .CE(axi_arvalid0),
        .D(read_addr[8]),
        .Q(debug_addr[8]),
        .R(\axi_araddr[27]_i_1_n_0 ));
  FDRE \axi_araddr_reg[9] 
       (.C(M_AXI_ACLK),
        .CE(axi_arvalid0),
        .D(read_addr[9]),
        .Q(debug_addr[9]),
        .R(\axi_araddr[27]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'h3A)) 
    axi_arvalid_i_1
       (.I0(start_single_burst_read_reg_n_0),
        .I1(M_AXI_ARREADY),
        .I2(axi_arvalid_reg_0),
        .O(axi_arvalid_i_1_n_0));
  FDRE axi_arvalid_reg
       (.C(M_AXI_ACLK),
        .CE(1'b1),
        .D(axi_arvalid_i_1_n_0),
        .Q(axi_arvalid_reg_0),
        .R(\axi_araddr[27]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    axi_bready_i_1
       (.I0(M_AXI_BVALID),
        .I1(M_AXI_BREADY),
        .O(axi_bready0));
  FDRE axi_bready_reg
       (.C(M_AXI_ACLK),
        .CE(1'b1),
        .D(axi_bready0),
        .Q(M_AXI_BREADY),
        .R(\axi_araddr[27]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h7C007C7C00000000)) 
    axi_rready_i_1
       (.I0(M_AXI_RLAST),
        .I1(rready),
        .I2(M_AXI_RVALID),
        .I3(init_txn_ff2_reg_n_0),
        .I4(init_txn_ff),
        .I5(M_AXI_ARESETN),
        .O(axi_rready_i_1_n_0));
  FDRE axi_rready_reg
       (.C(M_AXI_ACLK),
        .CE(1'b1),
        .D(axi_rready_i_1_n_0),
        .Q(rready),
        .R(1'b0));
  FDRE axi_wlast_reg
       (.C(M_AXI_ACLK),
        .CE(1'b1),
        .D(1'b1),
        .Q(M_AXI_WLAST),
        .R(\axi_araddr[27]_i_1_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    compare_done_i_1
       (.I0(M_AXI_ARESETN),
        .O(compare_done_i_1_n_0));
  LUT6 #(
    .INIT(64'hFFFFF0FFE0E0E0E0)) 
    compare_done_i_2
       (.I0(addr_fifo_empty),
        .I1(vector_fifo_full),
        .I2(mst_exec_state),
        .I3(init_txn_ff),
        .I4(init_txn_ff2_reg_n_0),
        .I5(TXN_DONE),
        .O(compare_done_i_2_n_0));
  FDRE compare_done_reg
       (.C(M_AXI_ACLK),
        .CE(1'b1),
        .D(compare_done_i_2_n_0),
        .Q(TXN_DONE),
        .R(compare_done_i_1_n_0));
  FDRE init_txn_ff2_reg
       (.C(M_AXI_ACLK),
        .CE(1'b1),
        .D(init_txn_ff),
        .Q(init_txn_ff2_reg_n_0),
        .R(compare_done_i_1_n_0));
  LUT3 #(
    .INIT(8'h02)) 
    init_txn_ff_i_1
       (.I0(INIT_AXI_TXN),
        .I1(vector_fifo_full),
        .I2(addr_fifo_empty),
        .O(init_txn_ff_i_1_n_0));
  FDRE init_txn_ff_reg
       (.C(M_AXI_ACLK),
        .CE(1'b1),
        .D(init_txn_ff_i_1_n_0),
        .Q(init_txn_ff),
        .R(compare_done_i_1_n_0));
  LUT5 #(
    .INIT(32'hFFF30004)) 
    start_single_burst_read_i_1
       (.I0(axi_arvalid_reg_0),
        .I1(mst_exec_state),
        .I2(vector_fifo_full),
        .I3(addr_fifo_empty),
        .I4(start_single_burst_read_reg_n_0),
        .O(start_single_burst_read_i_1_n_0));
  FDRE start_single_burst_read_reg
       (.C(M_AXI_ACLK),
        .CE(1'b1),
        .D(start_single_burst_read_i_1_n_0),
        .Q(start_single_burst_read_reg_n_0),
        .R(compare_done_i_1_n_0));
endmodule
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
