// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2023.2 (win64) Build 4029153 Fri Oct 13 20:14:34 MDT 2023
// Date        : Wed Mar 27 14:17:42 2024
// Host        : LAPTOP-81E1PH83 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub
//               c:/larry_delivery/Latest/Latest.gen/sources_1/bd/design_1/ip/design_1_zynq_ultra_ps_e_0_0/design_1_zynq_ultra_ps_e_0_0_stub.v
// Design      : design_1_zynq_ultra_ps_e_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xczu9eg-ffvb1156-2-e
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* X_CORE_INFO = "zynq_ultra_ps_e_v3_5_1_zynq_ultra_ps_e,Vivado 2023.2" *)
module design_1_zynq_ultra_ps_e_0_0(maxihpm0_lpd_aclk, maxigp2_awid, 
  maxigp2_awaddr, maxigp2_awlen, maxigp2_awsize, maxigp2_awburst, maxigp2_awlock, 
  maxigp2_awcache, maxigp2_awprot, maxigp2_awvalid, maxigp2_awuser, maxigp2_awready, 
  maxigp2_wdata, maxigp2_wstrb, maxigp2_wlast, maxigp2_wvalid, maxigp2_wready, maxigp2_bid, 
  maxigp2_bresp, maxigp2_bvalid, maxigp2_bready, maxigp2_arid, maxigp2_araddr, maxigp2_arlen, 
  maxigp2_arsize, maxigp2_arburst, maxigp2_arlock, maxigp2_arcache, maxigp2_arprot, 
  maxigp2_arvalid, maxigp2_aruser, maxigp2_arready, maxigp2_rid, maxigp2_rdata, 
  maxigp2_rresp, maxigp2_rlast, maxigp2_rvalid, maxigp2_rready, maxigp2_awqos, maxigp2_arqos, 
  saxihp1_fpd_aclk, saxigp3_aruser, saxigp3_awuser, saxigp3_awid, saxigp3_awaddr, 
  saxigp3_awlen, saxigp3_awsize, saxigp3_awburst, saxigp3_awlock, saxigp3_awcache, 
  saxigp3_awprot, saxigp3_awvalid, saxigp3_awready, saxigp3_wdata, saxigp3_wstrb, 
  saxigp3_wlast, saxigp3_wvalid, saxigp3_wready, saxigp3_bid, saxigp3_bresp, saxigp3_bvalid, 
  saxigp3_bready, saxigp3_arid, saxigp3_araddr, saxigp3_arlen, saxigp3_arsize, 
  saxigp3_arburst, saxigp3_arlock, saxigp3_arcache, saxigp3_arprot, saxigp3_arvalid, 
  saxigp3_arready, saxigp3_rid, saxigp3_rdata, saxigp3_rresp, saxigp3_rlast, saxigp3_rvalid, 
  saxigp3_rready, saxigp3_awqos, saxigp3_arqos, pl_ps_irq0, pl_resetn0, pl_clk0)
/* synthesis syn_black_box black_box_pad_pin="maxigp2_awid[15:0],maxigp2_awaddr[39:0],maxigp2_awlen[7:0],maxigp2_awsize[2:0],maxigp2_awburst[1:0],maxigp2_awlock,maxigp2_awcache[3:0],maxigp2_awprot[2:0],maxigp2_awvalid,maxigp2_awuser[15:0],maxigp2_awready,maxigp2_wdata[31:0],maxigp2_wstrb[3:0],maxigp2_wlast,maxigp2_wvalid,maxigp2_wready,maxigp2_bid[15:0],maxigp2_bresp[1:0],maxigp2_bvalid,maxigp2_bready,maxigp2_arid[15:0],maxigp2_araddr[39:0],maxigp2_arlen[7:0],maxigp2_arsize[2:0],maxigp2_arburst[1:0],maxigp2_arlock,maxigp2_arcache[3:0],maxigp2_arprot[2:0],maxigp2_arvalid,maxigp2_aruser[15:0],maxigp2_arready,maxigp2_rid[15:0],maxigp2_rdata[31:0],maxigp2_rresp[1:0],maxigp2_rlast,maxigp2_rvalid,maxigp2_rready,maxigp2_awqos[3:0],maxigp2_arqos[3:0],saxigp3_aruser,saxigp3_awuser,saxigp3_awid[5:0],saxigp3_awaddr[48:0],saxigp3_awlen[7:0],saxigp3_awsize[2:0],saxigp3_awburst[1:0],saxigp3_awlock,saxigp3_awcache[3:0],saxigp3_awprot[2:0],saxigp3_awvalid,saxigp3_awready,saxigp3_wdata[127:0],saxigp3_wstrb[15:0],saxigp3_wlast,saxigp3_wvalid,saxigp3_wready,saxigp3_bid[5:0],saxigp3_bresp[1:0],saxigp3_bvalid,saxigp3_bready,saxigp3_arid[5:0],saxigp3_araddr[48:0],saxigp3_arlen[7:0],saxigp3_arsize[2:0],saxigp3_arburst[1:0],saxigp3_arlock,saxigp3_arcache[3:0],saxigp3_arprot[2:0],saxigp3_arvalid,saxigp3_arready,saxigp3_rid[5:0],saxigp3_rdata[127:0],saxigp3_rresp[1:0],saxigp3_rlast,saxigp3_rvalid,saxigp3_rready,saxigp3_awqos[3:0],saxigp3_arqos[3:0],pl_ps_irq0[0:0],pl_resetn0" */
/* synthesis syn_force_seq_prim="maxihpm0_lpd_aclk" */
/* synthesis syn_force_seq_prim="saxihp1_fpd_aclk" */
/* synthesis syn_force_seq_prim="pl_clk0" */;
  input maxihpm0_lpd_aclk /* synthesis syn_isclock = 1 */;
  output [15:0]maxigp2_awid;
  output [39:0]maxigp2_awaddr;
  output [7:0]maxigp2_awlen;
  output [2:0]maxigp2_awsize;
  output [1:0]maxigp2_awburst;
  output maxigp2_awlock;
  output [3:0]maxigp2_awcache;
  output [2:0]maxigp2_awprot;
  output maxigp2_awvalid;
  output [15:0]maxigp2_awuser;
  input maxigp2_awready;
  output [31:0]maxigp2_wdata;
  output [3:0]maxigp2_wstrb;
  output maxigp2_wlast;
  output maxigp2_wvalid;
  input maxigp2_wready;
  input [15:0]maxigp2_bid;
  input [1:0]maxigp2_bresp;
  input maxigp2_bvalid;
  output maxigp2_bready;
  output [15:0]maxigp2_arid;
  output [39:0]maxigp2_araddr;
  output [7:0]maxigp2_arlen;
  output [2:0]maxigp2_arsize;
  output [1:0]maxigp2_arburst;
  output maxigp2_arlock;
  output [3:0]maxigp2_arcache;
  output [2:0]maxigp2_arprot;
  output maxigp2_arvalid;
  output [15:0]maxigp2_aruser;
  input maxigp2_arready;
  input [15:0]maxigp2_rid;
  input [31:0]maxigp2_rdata;
  input [1:0]maxigp2_rresp;
  input maxigp2_rlast;
  input maxigp2_rvalid;
  output maxigp2_rready;
  output [3:0]maxigp2_awqos;
  output [3:0]maxigp2_arqos;
  input saxihp1_fpd_aclk /* synthesis syn_isclock = 1 */;
  input saxigp3_aruser;
  input saxigp3_awuser;
  input [5:0]saxigp3_awid;
  input [48:0]saxigp3_awaddr;
  input [7:0]saxigp3_awlen;
  input [2:0]saxigp3_awsize;
  input [1:0]saxigp3_awburst;
  input saxigp3_awlock;
  input [3:0]saxigp3_awcache;
  input [2:0]saxigp3_awprot;
  input saxigp3_awvalid;
  output saxigp3_awready;
  input [127:0]saxigp3_wdata;
  input [15:0]saxigp3_wstrb;
  input saxigp3_wlast;
  input saxigp3_wvalid;
  output saxigp3_wready;
  output [5:0]saxigp3_bid;
  output [1:0]saxigp3_bresp;
  output saxigp3_bvalid;
  input saxigp3_bready;
  input [5:0]saxigp3_arid;
  input [48:0]saxigp3_araddr;
  input [7:0]saxigp3_arlen;
  input [2:0]saxigp3_arsize;
  input [1:0]saxigp3_arburst;
  input saxigp3_arlock;
  input [3:0]saxigp3_arcache;
  input [2:0]saxigp3_arprot;
  input saxigp3_arvalid;
  output saxigp3_arready;
  output [5:0]saxigp3_rid;
  output [127:0]saxigp3_rdata;
  output [1:0]saxigp3_rresp;
  output saxigp3_rlast;
  output saxigp3_rvalid;
  input saxigp3_rready;
  input [3:0]saxigp3_awqos;
  input [3:0]saxigp3_arqos;
  input [0:0]pl_ps_irq0;
  output pl_resetn0;
  output pl_clk0 /* synthesis syn_isclock = 1 */;
endmodule
