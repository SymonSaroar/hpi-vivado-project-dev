//Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
//Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2023.2 (win64) Build 4029153 Fri Oct 13 20:14:34 MDT 2023
//Date        : Sun Jun 16 11:06:25 2024
//Host        : LAPTOP-81E1PH83 running 64-bit major release  (build 9200)
//Command     : generate_target design_bd_wrapper.bd
//Design      : design_bd_wrapper
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module design_bd_wrapper
   (M00_AXI_0_araddr,
    M00_AXI_0_arburst,
    M00_AXI_0_arcache,
    M00_AXI_0_arid,
    M00_AXI_0_arlen,
    M00_AXI_0_arlock,
    M00_AXI_0_arprot,
    M00_AXI_0_arqos,
    M00_AXI_0_arready,
    M00_AXI_0_arsize,
    M00_AXI_0_aruser,
    M00_AXI_0_arvalid,
    M00_AXI_0_awaddr,
    M00_AXI_0_awburst,
    M00_AXI_0_awcache,
    M00_AXI_0_awid,
    M00_AXI_0_awlen,
    M00_AXI_0_awlock,
    M00_AXI_0_awprot,
    M00_AXI_0_awqos,
    M00_AXI_0_awready,
    M00_AXI_0_awsize,
    M00_AXI_0_awuser,
    M00_AXI_0_awvalid,
    M00_AXI_0_bid,
    M00_AXI_0_bready,
    M00_AXI_0_bresp,
    M00_AXI_0_bvalid,
    M00_AXI_0_rdata,
    M00_AXI_0_rid,
    M00_AXI_0_rlast,
    M00_AXI_0_rready,
    M00_AXI_0_rresp,
    M00_AXI_0_rvalid,
    M00_AXI_0_wdata,
    M00_AXI_0_wlast,
    M00_AXI_0_wready,
    M00_AXI_0_wstrb,
    M00_AXI_0_wvalid,
    M00_AXI_1_araddr,
    M00_AXI_1_arprot,
    M00_AXI_1_arready,
    M00_AXI_1_arvalid,
    M00_AXI_1_awaddr,
    M00_AXI_1_awprot,
    M00_AXI_1_awready,
    M00_AXI_1_awvalid,
    M00_AXI_1_bready,
    M00_AXI_1_bresp,
    M00_AXI_1_bvalid,
    M00_AXI_1_rdata,
    M00_AXI_1_rready,
    M00_AXI_1_rresp,
    M00_AXI_1_rvalid,
    M00_AXI_1_wdata,
    M00_AXI_1_wready,
    M00_AXI_1_wstrb,
    M00_AXI_1_wvalid,
    S_AXI_ACP_araddr,
    S_AXI_ACP_arburst,
    S_AXI_ACP_arcache,
    S_AXI_ACP_arid,
    S_AXI_ACP_arlen,
    S_AXI_ACP_arlock,
    S_AXI_ACP_arprot,
    S_AXI_ACP_arqos,
    S_AXI_ACP_arready,
    S_AXI_ACP_arsize,
    S_AXI_ACP_aruser,
    S_AXI_ACP_arvalid,
    S_AXI_ACP_awaddr,
    S_AXI_ACP_awburst,
    S_AXI_ACP_awcache,
    S_AXI_ACP_awid,
    S_AXI_ACP_awlen,
    S_AXI_ACP_awlock,
    S_AXI_ACP_awprot,
    S_AXI_ACP_awqos,
    S_AXI_ACP_awready,
    S_AXI_ACP_awsize,
    S_AXI_ACP_awuser,
    S_AXI_ACP_awvalid,
    S_AXI_ACP_bid,
    S_AXI_ACP_bready,
    S_AXI_ACP_bresp,
    S_AXI_ACP_bvalid,
    S_AXI_ACP_rdata,
    S_AXI_ACP_rid,
    S_AXI_ACP_rlast,
    S_AXI_ACP_rready,
    S_AXI_ACP_rresp,
    S_AXI_ACP_ruser,
    S_AXI_ACP_rvalid,
    S_AXI_ACP_wdata,
    S_AXI_ACP_wlast,
    S_AXI_ACP_wready,
    S_AXI_ACP_wstrb,
    S_AXI_ACP_wuser,
    S_AXI_ACP_wvalid,
    clk,
    resetn);
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
  output clk;
  output [0:0]resetn;

  wire [39:0]M00_AXI_0_araddr;
  wire [1:0]M00_AXI_0_arburst;
  wire [3:0]M00_AXI_0_arcache;
  wire [15:0]M00_AXI_0_arid;
  wire [7:0]M00_AXI_0_arlen;
  wire M00_AXI_0_arlock;
  wire [2:0]M00_AXI_0_arprot;
  wire [3:0]M00_AXI_0_arqos;
  wire M00_AXI_0_arready;
  wire [2:0]M00_AXI_0_arsize;
  wire [15:0]M00_AXI_0_aruser;
  wire M00_AXI_0_arvalid;
  wire [39:0]M00_AXI_0_awaddr;
  wire [1:0]M00_AXI_0_awburst;
  wire [3:0]M00_AXI_0_awcache;
  wire [15:0]M00_AXI_0_awid;
  wire [7:0]M00_AXI_0_awlen;
  wire M00_AXI_0_awlock;
  wire [2:0]M00_AXI_0_awprot;
  wire [3:0]M00_AXI_0_awqos;
  wire M00_AXI_0_awready;
  wire [2:0]M00_AXI_0_awsize;
  wire [15:0]M00_AXI_0_awuser;
  wire M00_AXI_0_awvalid;
  wire [15:0]M00_AXI_0_bid;
  wire M00_AXI_0_bready;
  wire [1:0]M00_AXI_0_bresp;
  wire M00_AXI_0_bvalid;
  wire [31:0]M00_AXI_0_rdata;
  wire [15:0]M00_AXI_0_rid;
  wire M00_AXI_0_rlast;
  wire M00_AXI_0_rready;
  wire [1:0]M00_AXI_0_rresp;
  wire M00_AXI_0_rvalid;
  wire [31:0]M00_AXI_0_wdata;
  wire M00_AXI_0_wlast;
  wire M00_AXI_0_wready;
  wire [3:0]M00_AXI_0_wstrb;
  wire M00_AXI_0_wvalid;
  wire [39:0]M00_AXI_1_araddr;
  wire [2:0]M00_AXI_1_arprot;
  wire M00_AXI_1_arready;
  wire M00_AXI_1_arvalid;
  wire [39:0]M00_AXI_1_awaddr;
  wire [2:0]M00_AXI_1_awprot;
  wire M00_AXI_1_awready;
  wire M00_AXI_1_awvalid;
  wire M00_AXI_1_bready;
  wire [1:0]M00_AXI_1_bresp;
  wire M00_AXI_1_bvalid;
  wire [31:0]M00_AXI_1_rdata;
  wire M00_AXI_1_rready;
  wire [1:0]M00_AXI_1_rresp;
  wire M00_AXI_1_rvalid;
  wire [31:0]M00_AXI_1_wdata;
  wire M00_AXI_1_wready;
  wire [3:0]M00_AXI_1_wstrb;
  wire M00_AXI_1_wvalid;
  wire [31:0]S_AXI_ACP_araddr;
  wire [1:0]S_AXI_ACP_arburst;
  wire [3:0]S_AXI_ACP_arcache;
  wire [0:0]S_AXI_ACP_arid;
  wire [7:0]S_AXI_ACP_arlen;
  wire [0:0]S_AXI_ACP_arlock;
  wire [2:0]S_AXI_ACP_arprot;
  wire [3:0]S_AXI_ACP_arqos;
  wire S_AXI_ACP_arready;
  wire [2:0]S_AXI_ACP_arsize;
  wire [1:0]S_AXI_ACP_aruser;
  wire S_AXI_ACP_arvalid;
  wire [31:0]S_AXI_ACP_awaddr;
  wire [1:0]S_AXI_ACP_awburst;
  wire [3:0]S_AXI_ACP_awcache;
  wire [0:0]S_AXI_ACP_awid;
  wire [7:0]S_AXI_ACP_awlen;
  wire [0:0]S_AXI_ACP_awlock;
  wire [2:0]S_AXI_ACP_awprot;
  wire [3:0]S_AXI_ACP_awqos;
  wire S_AXI_ACP_awready;
  wire [2:0]S_AXI_ACP_awsize;
  wire [1:0]S_AXI_ACP_awuser;
  wire S_AXI_ACP_awvalid;
  wire [0:0]S_AXI_ACP_bid;
  wire S_AXI_ACP_bready;
  wire [1:0]S_AXI_ACP_bresp;
  wire S_AXI_ACP_bvalid;
  wire [127:0]S_AXI_ACP_rdata;
  wire [0:0]S_AXI_ACP_rid;
  wire S_AXI_ACP_rlast;
  wire S_AXI_ACP_rready;
  wire [1:0]S_AXI_ACP_rresp;
  wire [15:0]S_AXI_ACP_ruser;
  wire S_AXI_ACP_rvalid;
  wire [127:0]S_AXI_ACP_wdata;
  wire S_AXI_ACP_wlast;
  wire S_AXI_ACP_wready;
  wire [15:0]S_AXI_ACP_wstrb;
  wire [15:0]S_AXI_ACP_wuser;
  wire S_AXI_ACP_wvalid;
  wire clk;
  wire [0:0]resetn;

  design_bd design_bd_i
       (.M00_AXI_0_araddr(M00_AXI_0_araddr),
        .M00_AXI_0_arburst(M00_AXI_0_arburst),
        .M00_AXI_0_arcache(M00_AXI_0_arcache),
        .M00_AXI_0_arid(M00_AXI_0_arid),
        .M00_AXI_0_arlen(M00_AXI_0_arlen),
        .M00_AXI_0_arlock(M00_AXI_0_arlock),
        .M00_AXI_0_arprot(M00_AXI_0_arprot),
        .M00_AXI_0_arqos(M00_AXI_0_arqos),
        .M00_AXI_0_arready(M00_AXI_0_arready),
        .M00_AXI_0_arsize(M00_AXI_0_arsize),
        .M00_AXI_0_aruser(M00_AXI_0_aruser),
        .M00_AXI_0_arvalid(M00_AXI_0_arvalid),
        .M00_AXI_0_awaddr(M00_AXI_0_awaddr),
        .M00_AXI_0_awburst(M00_AXI_0_awburst),
        .M00_AXI_0_awcache(M00_AXI_0_awcache),
        .M00_AXI_0_awid(M00_AXI_0_awid),
        .M00_AXI_0_awlen(M00_AXI_0_awlen),
        .M00_AXI_0_awlock(M00_AXI_0_awlock),
        .M00_AXI_0_awprot(M00_AXI_0_awprot),
        .M00_AXI_0_awqos(M00_AXI_0_awqos),
        .M00_AXI_0_awready(M00_AXI_0_awready),
        .M00_AXI_0_awsize(M00_AXI_0_awsize),
        .M00_AXI_0_awuser(M00_AXI_0_awuser),
        .M00_AXI_0_awvalid(M00_AXI_0_awvalid),
        .M00_AXI_0_bid(M00_AXI_0_bid),
        .M00_AXI_0_bready(M00_AXI_0_bready),
        .M00_AXI_0_bresp(M00_AXI_0_bresp),
        .M00_AXI_0_bvalid(M00_AXI_0_bvalid),
        .M00_AXI_0_rdata(M00_AXI_0_rdata),
        .M00_AXI_0_rid(M00_AXI_0_rid),
        .M00_AXI_0_rlast(M00_AXI_0_rlast),
        .M00_AXI_0_rready(M00_AXI_0_rready),
        .M00_AXI_0_rresp(M00_AXI_0_rresp),
        .M00_AXI_0_rvalid(M00_AXI_0_rvalid),
        .M00_AXI_0_wdata(M00_AXI_0_wdata),
        .M00_AXI_0_wlast(M00_AXI_0_wlast),
        .M00_AXI_0_wready(M00_AXI_0_wready),
        .M00_AXI_0_wstrb(M00_AXI_0_wstrb),
        .M00_AXI_0_wvalid(M00_AXI_0_wvalid),
        .M00_AXI_1_araddr(M00_AXI_1_araddr),
        .M00_AXI_1_arprot(M00_AXI_1_arprot),
        .M00_AXI_1_arready(M00_AXI_1_arready),
        .M00_AXI_1_arvalid(M00_AXI_1_arvalid),
        .M00_AXI_1_awaddr(M00_AXI_1_awaddr),
        .M00_AXI_1_awprot(M00_AXI_1_awprot),
        .M00_AXI_1_awready(M00_AXI_1_awready),
        .M00_AXI_1_awvalid(M00_AXI_1_awvalid),
        .M00_AXI_1_bready(M00_AXI_1_bready),
        .M00_AXI_1_bresp(M00_AXI_1_bresp),
        .M00_AXI_1_bvalid(M00_AXI_1_bvalid),
        .M00_AXI_1_rdata(M00_AXI_1_rdata),
        .M00_AXI_1_rready(M00_AXI_1_rready),
        .M00_AXI_1_rresp(M00_AXI_1_rresp),
        .M00_AXI_1_rvalid(M00_AXI_1_rvalid),
        .M00_AXI_1_wdata(M00_AXI_1_wdata),
        .M00_AXI_1_wready(M00_AXI_1_wready),
        .M00_AXI_1_wstrb(M00_AXI_1_wstrb),
        .M00_AXI_1_wvalid(M00_AXI_1_wvalid),
        .S_AXI_ACP_araddr(S_AXI_ACP_araddr),
        .S_AXI_ACP_arburst(S_AXI_ACP_arburst),
        .S_AXI_ACP_arcache(S_AXI_ACP_arcache),
        .S_AXI_ACP_arid(S_AXI_ACP_arid),
        .S_AXI_ACP_arlen(S_AXI_ACP_arlen),
        .S_AXI_ACP_arlock(S_AXI_ACP_arlock),
        .S_AXI_ACP_arprot(S_AXI_ACP_arprot),
        .S_AXI_ACP_arqos(S_AXI_ACP_arqos),
        .S_AXI_ACP_arready(S_AXI_ACP_arready),
        .S_AXI_ACP_arsize(S_AXI_ACP_arsize),
        .S_AXI_ACP_aruser(S_AXI_ACP_aruser),
        .S_AXI_ACP_arvalid(S_AXI_ACP_arvalid),
        .S_AXI_ACP_awaddr(S_AXI_ACP_awaddr),
        .S_AXI_ACP_awburst(S_AXI_ACP_awburst),
        .S_AXI_ACP_awcache(S_AXI_ACP_awcache),
        .S_AXI_ACP_awid(S_AXI_ACP_awid),
        .S_AXI_ACP_awlen(S_AXI_ACP_awlen),
        .S_AXI_ACP_awlock(S_AXI_ACP_awlock),
        .S_AXI_ACP_awprot(S_AXI_ACP_awprot),
        .S_AXI_ACP_awqos(S_AXI_ACP_awqos),
        .S_AXI_ACP_awready(S_AXI_ACP_awready),
        .S_AXI_ACP_awsize(S_AXI_ACP_awsize),
        .S_AXI_ACP_awuser(S_AXI_ACP_awuser),
        .S_AXI_ACP_awvalid(S_AXI_ACP_awvalid),
        .S_AXI_ACP_bid(S_AXI_ACP_bid),
        .S_AXI_ACP_bready(S_AXI_ACP_bready),
        .S_AXI_ACP_bresp(S_AXI_ACP_bresp),
        .S_AXI_ACP_bvalid(S_AXI_ACP_bvalid),
        .S_AXI_ACP_rdata(S_AXI_ACP_rdata),
        .S_AXI_ACP_rid(S_AXI_ACP_rid),
        .S_AXI_ACP_rlast(S_AXI_ACP_rlast),
        .S_AXI_ACP_rready(S_AXI_ACP_rready),
        .S_AXI_ACP_rresp(S_AXI_ACP_rresp),
        .S_AXI_ACP_ruser(S_AXI_ACP_ruser),
        .S_AXI_ACP_rvalid(S_AXI_ACP_rvalid),
        .S_AXI_ACP_wdata(S_AXI_ACP_wdata),
        .S_AXI_ACP_wlast(S_AXI_ACP_wlast),
        .S_AXI_ACP_wready(S_AXI_ACP_wready),
        .S_AXI_ACP_wstrb(S_AXI_ACP_wstrb),
        .S_AXI_ACP_wuser(S_AXI_ACP_wuser),
        .S_AXI_ACP_wvalid(S_AXI_ACP_wvalid),
        .clk(clk),
        .resetn(resetn));
endmodule
