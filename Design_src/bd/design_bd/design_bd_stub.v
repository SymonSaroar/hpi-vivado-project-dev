// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2023.2 (win64) Build 4029153 Fri Oct 13 20:14:34 MDT 2023
// Date        : Thu Jun 20 13:58:06 2024
// Host        : LAPTOP-81E1PH83 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub C:/hpi-vivado-project-dev/Design_src/bd/design_bd/design_bd_stub.v
// Design      : design_bd
// Purpose     : Stub declaration of top-level module interface
// Device      : xczu9eg-ffvb1156-2-e
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
module design_bd(M00_AXI_0_araddr, M00_AXI_0_arburst, 
  M00_AXI_0_arcache, M00_AXI_0_arid, M00_AXI_0_arlen, M00_AXI_0_arlock, M00_AXI_0_arprot, 
  M00_AXI_0_arqos, M00_AXI_0_arready, M00_AXI_0_arsize, M00_AXI_0_aruser, 
  M00_AXI_0_arvalid, M00_AXI_0_awaddr, M00_AXI_0_awburst, M00_AXI_0_awcache, 
  M00_AXI_0_awid, M00_AXI_0_awlen, M00_AXI_0_awlock, M00_AXI_0_awprot, M00_AXI_0_awqos, 
  M00_AXI_0_awready, M00_AXI_0_awsize, M00_AXI_0_awuser, M00_AXI_0_awvalid, M00_AXI_0_bid, 
  M00_AXI_0_bready, M00_AXI_0_bresp, M00_AXI_0_bvalid, M00_AXI_0_rdata, M00_AXI_0_rid, 
  M00_AXI_0_rlast, M00_AXI_0_rready, M00_AXI_0_rresp, M00_AXI_0_rvalid, M00_AXI_0_wdata, 
  M00_AXI_0_wlast, M00_AXI_0_wready, M00_AXI_0_wstrb, M00_AXI_0_wvalid, M00_AXI_1_araddr, 
  M00_AXI_1_arprot, M00_AXI_1_arready, M00_AXI_1_arvalid, M00_AXI_1_awaddr, 
  M00_AXI_1_awprot, M00_AXI_1_awready, M00_AXI_1_awvalid, M00_AXI_1_bready, 
  M00_AXI_1_bresp, M00_AXI_1_bvalid, M00_AXI_1_rdata, M00_AXI_1_rready, M00_AXI_1_rresp, 
  M00_AXI_1_rvalid, M00_AXI_1_wdata, M00_AXI_1_wready, M00_AXI_1_wstrb, M00_AXI_1_wvalid, 
  S_AXI_ACP_araddr, S_AXI_ACP_arburst, S_AXI_ACP_arcache, S_AXI_ACP_arid, S_AXI_ACP_arlen, 
  S_AXI_ACP_arlock, S_AXI_ACP_arprot, S_AXI_ACP_arqos, S_AXI_ACP_arready, S_AXI_ACP_arsize, 
  S_AXI_ACP_aruser, S_AXI_ACP_arvalid, S_AXI_ACP_awaddr, S_AXI_ACP_awburst, 
  S_AXI_ACP_awcache, S_AXI_ACP_awid, S_AXI_ACP_awlen, S_AXI_ACP_awlock, S_AXI_ACP_awprot, 
  S_AXI_ACP_awqos, S_AXI_ACP_awready, S_AXI_ACP_awsize, S_AXI_ACP_awuser, 
  S_AXI_ACP_awvalid, S_AXI_ACP_bid, S_AXI_ACP_bready, S_AXI_ACP_bresp, S_AXI_ACP_bvalid, 
  S_AXI_ACP_rdata, S_AXI_ACP_rid, S_AXI_ACP_rlast, S_AXI_ACP_rready, S_AXI_ACP_rresp, 
  S_AXI_ACP_ruser, S_AXI_ACP_rvalid, S_AXI_ACP_wdata, S_AXI_ACP_wlast, S_AXI_ACP_wready, 
  S_AXI_ACP_wstrb, S_AXI_ACP_wuser, S_AXI_ACP_wvalid, clk, resetn)
/* synthesis syn_black_box black_box_pad_pin="M00_AXI_0_araddr[39:0],M00_AXI_0_arburst[1:0],M00_AXI_0_arcache[3:0],M00_AXI_0_arid[15:0],M00_AXI_0_arlen[7:0],M00_AXI_0_arlock,M00_AXI_0_arprot[2:0],M00_AXI_0_arqos[3:0],M00_AXI_0_arready,M00_AXI_0_arsize[2:0],M00_AXI_0_aruser[15:0],M00_AXI_0_arvalid,M00_AXI_0_awaddr[39:0],M00_AXI_0_awburst[1:0],M00_AXI_0_awcache[3:0],M00_AXI_0_awid[15:0],M00_AXI_0_awlen[7:0],M00_AXI_0_awlock,M00_AXI_0_awprot[2:0],M00_AXI_0_awqos[3:0],M00_AXI_0_awready,M00_AXI_0_awsize[2:0],M00_AXI_0_awuser[15:0],M00_AXI_0_awvalid,M00_AXI_0_bid[15:0],M00_AXI_0_bready,M00_AXI_0_bresp[1:0],M00_AXI_0_bvalid,M00_AXI_0_rdata[31:0],M00_AXI_0_rid[15:0],M00_AXI_0_rlast,M00_AXI_0_rready,M00_AXI_0_rresp[1:0],M00_AXI_0_rvalid,M00_AXI_0_wdata[31:0],M00_AXI_0_wlast,M00_AXI_0_wready,M00_AXI_0_wstrb[3:0],M00_AXI_0_wvalid,M00_AXI_1_araddr[39:0],M00_AXI_1_arprot[2:0],M00_AXI_1_arready,M00_AXI_1_arvalid,M00_AXI_1_awaddr[39:0],M00_AXI_1_awprot[2:0],M00_AXI_1_awready,M00_AXI_1_awvalid,M00_AXI_1_bready,M00_AXI_1_bresp[1:0],M00_AXI_1_bvalid,M00_AXI_1_rdata[31:0],M00_AXI_1_rready,M00_AXI_1_rresp[1:0],M00_AXI_1_rvalid,M00_AXI_1_wdata[31:0],M00_AXI_1_wready,M00_AXI_1_wstrb[3:0],M00_AXI_1_wvalid,S_AXI_ACP_araddr[31:0],S_AXI_ACP_arburst[1:0],S_AXI_ACP_arcache[3:0],S_AXI_ACP_arid[0:0],S_AXI_ACP_arlen[7:0],S_AXI_ACP_arlock[0:0],S_AXI_ACP_arprot[2:0],S_AXI_ACP_arqos[3:0],S_AXI_ACP_arready,S_AXI_ACP_arsize[2:0],S_AXI_ACP_aruser[1:0],S_AXI_ACP_arvalid,S_AXI_ACP_awaddr[31:0],S_AXI_ACP_awburst[1:0],S_AXI_ACP_awcache[3:0],S_AXI_ACP_awid[0:0],S_AXI_ACP_awlen[7:0],S_AXI_ACP_awlock[0:0],S_AXI_ACP_awprot[2:0],S_AXI_ACP_awqos[3:0],S_AXI_ACP_awready,S_AXI_ACP_awsize[2:0],S_AXI_ACP_awuser[1:0],S_AXI_ACP_awvalid,S_AXI_ACP_bid[0:0],S_AXI_ACP_bready,S_AXI_ACP_bresp[1:0],S_AXI_ACP_bvalid,S_AXI_ACP_rdata[127:0],S_AXI_ACP_rid[0:0],S_AXI_ACP_rlast,S_AXI_ACP_rready,S_AXI_ACP_rresp[1:0],S_AXI_ACP_ruser[15:0],S_AXI_ACP_rvalid,S_AXI_ACP_wdata[127:0],S_AXI_ACP_wlast,S_AXI_ACP_wready,S_AXI_ACP_wstrb[15:0],S_AXI_ACP_wuser[15:0],S_AXI_ACP_wvalid,resetn[0:0]" */
/* synthesis syn_force_seq_prim="clk" */;
  output [39:0]M00_AXI_0_araddr;
  output [1:0]M00_AXI_0_arburst;
  output [3:0]M00_AXI_0_arcache;
  output [15:0]M00_AXI_0_arid;
  output [7:0]M00_AXI_0_arlen;
  output M00_AXI_0_arlock;
  output [2:0]M00_AXI_0_arprot;
  output [3:0]M00_AXI_0_arqos;
  input M00_AXI_0_arready;
  output [2:0]M00_AXI_0_arsize;
  output [15:0]M00_AXI_0_aruser;
  output M00_AXI_0_arvalid;
  output [39:0]M00_AXI_0_awaddr;
  output [1:0]M00_AXI_0_awburst;
  output [3:0]M00_AXI_0_awcache;
  output [15:0]M00_AXI_0_awid;
  output [7:0]M00_AXI_0_awlen;
  output M00_AXI_0_awlock;
  output [2:0]M00_AXI_0_awprot;
  output [3:0]M00_AXI_0_awqos;
  input M00_AXI_0_awready;
  output [2:0]M00_AXI_0_awsize;
  output [15:0]M00_AXI_0_awuser;
  output M00_AXI_0_awvalid;
  input [15:0]M00_AXI_0_bid;
  output M00_AXI_0_bready;
  input [1:0]M00_AXI_0_bresp;
  input M00_AXI_0_bvalid;
  input [31:0]M00_AXI_0_rdata;
  input [15:0]M00_AXI_0_rid;
  input M00_AXI_0_rlast;
  output M00_AXI_0_rready;
  input [1:0]M00_AXI_0_rresp;
  input M00_AXI_0_rvalid;
  output [31:0]M00_AXI_0_wdata;
  output M00_AXI_0_wlast;
  input M00_AXI_0_wready;
  output [3:0]M00_AXI_0_wstrb;
  output M00_AXI_0_wvalid;
  output [39:0]M00_AXI_1_araddr;
  output [2:0]M00_AXI_1_arprot;
  input M00_AXI_1_arready;
  output M00_AXI_1_arvalid;
  output [39:0]M00_AXI_1_awaddr;
  output [2:0]M00_AXI_1_awprot;
  input M00_AXI_1_awready;
  output M00_AXI_1_awvalid;
  output M00_AXI_1_bready;
  input [1:0]M00_AXI_1_bresp;
  input M00_AXI_1_bvalid;
  input [31:0]M00_AXI_1_rdata;
  output M00_AXI_1_rready;
  input [1:0]M00_AXI_1_rresp;
  input M00_AXI_1_rvalid;
  output [31:0]M00_AXI_1_wdata;
  input M00_AXI_1_wready;
  output [3:0]M00_AXI_1_wstrb;
  output M00_AXI_1_wvalid;
  input [31:0]S_AXI_ACP_araddr;
  input [1:0]S_AXI_ACP_arburst;
  input [3:0]S_AXI_ACP_arcache;
  input [0:0]S_AXI_ACP_arid;
  input [7:0]S_AXI_ACP_arlen;
  input [0:0]S_AXI_ACP_arlock;
  input [2:0]S_AXI_ACP_arprot;
  input [3:0]S_AXI_ACP_arqos;
  output S_AXI_ACP_arready;
  input [2:0]S_AXI_ACP_arsize;
  input [1:0]S_AXI_ACP_aruser;
  input S_AXI_ACP_arvalid;
  input [31:0]S_AXI_ACP_awaddr;
  input [1:0]S_AXI_ACP_awburst;
  input [3:0]S_AXI_ACP_awcache;
  input [0:0]S_AXI_ACP_awid;
  input [7:0]S_AXI_ACP_awlen;
  input [0:0]S_AXI_ACP_awlock;
  input [2:0]S_AXI_ACP_awprot;
  input [3:0]S_AXI_ACP_awqos;
  output S_AXI_ACP_awready;
  input [2:0]S_AXI_ACP_awsize;
  input [1:0]S_AXI_ACP_awuser;
  input S_AXI_ACP_awvalid;
  output [0:0]S_AXI_ACP_bid;
  input S_AXI_ACP_bready;
  output [1:0]S_AXI_ACP_bresp;
  output S_AXI_ACP_bvalid;
  output [127:0]S_AXI_ACP_rdata;
  output [0:0]S_AXI_ACP_rid;
  output S_AXI_ACP_rlast;
  input S_AXI_ACP_rready;
  output [1:0]S_AXI_ACP_rresp;
  output [15:0]S_AXI_ACP_ruser;
  output S_AXI_ACP_rvalid;
  input [127:0]S_AXI_ACP_wdata;
  input S_AXI_ACP_wlast;
  output S_AXI_ACP_wready;
  input [15:0]S_AXI_ACP_wstrb;
  input [15:0]S_AXI_ACP_wuser;
  input S_AXI_ACP_wvalid;
  output clk /* synthesis syn_isclock = 1 */;
  output [0:0]resetn;
endmodule
