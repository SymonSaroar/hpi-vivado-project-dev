//Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
//Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2023.2 (win64) Build 4029153 Fri Oct 13 20:14:34 MDT 2023
//Date        : Wed Apr  3 03:01:40 2024
//Host        : LAPTOP-81E1PH83 running 64-bit major release  (build 9200)
//Command     : generate_target design_1.bd
//Design      : design_1
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CORE_GENERATION_INFO = "design_1,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=design_1,x_ipVersion=1.00.a,x_ipLanguage=VERILOG,numBlks=18,numReposBlks=16,numNonXlnxBlks=0,numHierBlks=2,maxHierDepth=0,numSysgenBlks=0,numHlsBlks=0,numHdlrefBlks=2,numPkgbdBlks=0,bdsource=USER,da_axi4_cnt=5,da_board_cnt=4,da_clkrst_cnt=14,da_zynq_ultra_ps_e_cnt=1,synth_mode=Hierarchical}" *) (* HW_HANDOFF = "design_1.hwdef" *) 
module design_1
   (dout_0);
  output [255:0]dout_0;

  wire [4:0]c_counter_binary_0_Q;
  (* DEBUG = "true" *) (* MARK_DEBUG *) wire custom_slave_0_start_read_tx;
  (* DEBUG = "true" *) (* MARK_DEBUG *) wire [31:0]custom_slave_0_target_base_addr;
  wire custom_slave_v1_0_S0_0_wready;
  wire custom_slave_v1_0_S0_0_wvalid;
  (* CONN_BUS_INFO = "driver_ctrl_M00_AXI xilinx.com:interface:aximm:1.0 AXI4 ARADDR" *) (* DEBUG = "true" *) (* MARK_DEBUG *) wire [31:0]driver_ctrl_M00_AXI_ARADDR;
  (* CONN_BUS_INFO = "driver_ctrl_M00_AXI xilinx.com:interface:aximm:1.0 AXI4 ARBURST" *) (* DEBUG = "true" *) (* MARK_DEBUG *) wire [1:0]driver_ctrl_M00_AXI_ARBURST;
  (* CONN_BUS_INFO = "driver_ctrl_M00_AXI xilinx.com:interface:aximm:1.0 AXI4 ARCACHE" *) (* DEBUG = "true" *) (* MARK_DEBUG *) wire [3:0]driver_ctrl_M00_AXI_ARCACHE;
  (* CONN_BUS_INFO = "driver_ctrl_M00_AXI xilinx.com:interface:aximm:1.0 AXI4 ARID" *) (* DEBUG = "true" *) (* MARK_DEBUG *) wire [0:0]driver_ctrl_M00_AXI_ARID;
  (* CONN_BUS_INFO = "driver_ctrl_M00_AXI xilinx.com:interface:aximm:1.0 AXI4 ARLEN" *) (* DEBUG = "true" *) (* MARK_DEBUG *) wire [7:0]driver_ctrl_M00_AXI_ARLEN;
  (* CONN_BUS_INFO = "driver_ctrl_M00_AXI xilinx.com:interface:aximm:1.0 AXI4 ARLOCK" *) (* DEBUG = "true" *) (* MARK_DEBUG *) wire driver_ctrl_M00_AXI_ARLOCK;
  (* CONN_BUS_INFO = "driver_ctrl_M00_AXI xilinx.com:interface:aximm:1.0 AXI4 ARPROT" *) (* DEBUG = "true" *) (* MARK_DEBUG *) wire [2:0]driver_ctrl_M00_AXI_ARPROT;
  (* CONN_BUS_INFO = "driver_ctrl_M00_AXI xilinx.com:interface:aximm:1.0 AXI4 ARQOS" *) (* DEBUG = "true" *) (* MARK_DEBUG *) wire [3:0]driver_ctrl_M00_AXI_ARQOS;
  (* CONN_BUS_INFO = "driver_ctrl_M00_AXI xilinx.com:interface:aximm:1.0 AXI4 ARREADY" *) (* DEBUG = "true" *) (* MARK_DEBUG *) wire driver_ctrl_M00_AXI_ARREADY;
  (* CONN_BUS_INFO = "driver_ctrl_M00_AXI xilinx.com:interface:aximm:1.0 AXI4 ARSIZE" *) (* DEBUG = "true" *) (* MARK_DEBUG *) wire [2:0]driver_ctrl_M00_AXI_ARSIZE;
  (* CONN_BUS_INFO = "driver_ctrl_M00_AXI xilinx.com:interface:aximm:1.0 AXI4 ARUSER" *) (* DEBUG = "true" *) (* MARK_DEBUG *) wire [0:0]driver_ctrl_M00_AXI_ARUSER;
  (* CONN_BUS_INFO = "driver_ctrl_M00_AXI xilinx.com:interface:aximm:1.0 AXI4 ARVALID" *) (* DEBUG = "true" *) (* MARK_DEBUG *) wire driver_ctrl_M00_AXI_ARVALID;
  (* CONN_BUS_INFO = "driver_ctrl_M00_AXI xilinx.com:interface:aximm:1.0 AXI4 AWADDR" *) (* DEBUG = "true" *) (* MARK_DEBUG *) wire [31:0]driver_ctrl_M00_AXI_AWADDR;
  (* CONN_BUS_INFO = "driver_ctrl_M00_AXI xilinx.com:interface:aximm:1.0 AXI4 AWBURST" *) (* DEBUG = "true" *) (* MARK_DEBUG *) wire [1:0]driver_ctrl_M00_AXI_AWBURST;
  (* CONN_BUS_INFO = "driver_ctrl_M00_AXI xilinx.com:interface:aximm:1.0 AXI4 AWCACHE" *) (* DEBUG = "true" *) (* MARK_DEBUG *) wire [3:0]driver_ctrl_M00_AXI_AWCACHE;
  (* CONN_BUS_INFO = "driver_ctrl_M00_AXI xilinx.com:interface:aximm:1.0 AXI4 AWID" *) (* DEBUG = "true" *) (* MARK_DEBUG *) wire [0:0]driver_ctrl_M00_AXI_AWID;
  (* CONN_BUS_INFO = "driver_ctrl_M00_AXI xilinx.com:interface:aximm:1.0 AXI4 AWLEN" *) (* DEBUG = "true" *) (* MARK_DEBUG *) wire [7:0]driver_ctrl_M00_AXI_AWLEN;
  (* CONN_BUS_INFO = "driver_ctrl_M00_AXI xilinx.com:interface:aximm:1.0 AXI4 AWLOCK" *) (* DEBUG = "true" *) (* MARK_DEBUG *) wire driver_ctrl_M00_AXI_AWLOCK;
  (* CONN_BUS_INFO = "driver_ctrl_M00_AXI xilinx.com:interface:aximm:1.0 AXI4 AWPROT" *) (* DEBUG = "true" *) (* MARK_DEBUG *) wire [2:0]driver_ctrl_M00_AXI_AWPROT;
  (* CONN_BUS_INFO = "driver_ctrl_M00_AXI xilinx.com:interface:aximm:1.0 AXI4 AWQOS" *) (* DEBUG = "true" *) (* MARK_DEBUG *) wire [3:0]driver_ctrl_M00_AXI_AWQOS;
  (* CONN_BUS_INFO = "driver_ctrl_M00_AXI xilinx.com:interface:aximm:1.0 AXI4 AWREADY" *) (* DEBUG = "true" *) (* MARK_DEBUG *) wire driver_ctrl_M00_AXI_AWREADY;
  (* CONN_BUS_INFO = "driver_ctrl_M00_AXI xilinx.com:interface:aximm:1.0 AXI4 AWSIZE" *) (* DEBUG = "true" *) (* MARK_DEBUG *) wire [2:0]driver_ctrl_M00_AXI_AWSIZE;
  (* CONN_BUS_INFO = "driver_ctrl_M00_AXI xilinx.com:interface:aximm:1.0 AXI4 AWUSER" *) (* DEBUG = "true" *) (* MARK_DEBUG *) wire [0:0]driver_ctrl_M00_AXI_AWUSER;
  (* CONN_BUS_INFO = "driver_ctrl_M00_AXI xilinx.com:interface:aximm:1.0 AXI4 AWVALID" *) (* DEBUG = "true" *) (* MARK_DEBUG *) wire driver_ctrl_M00_AXI_AWVALID;
  (* CONN_BUS_INFO = "driver_ctrl_M00_AXI xilinx.com:interface:aximm:1.0 AXI4 BID" *) (* DEBUG = "true" *) (* MARK_DEBUG *) wire [5:0]driver_ctrl_M00_AXI_BID;
  (* CONN_BUS_INFO = "driver_ctrl_M00_AXI xilinx.com:interface:aximm:1.0 AXI4 BREADY" *) (* DEBUG = "true" *) (* MARK_DEBUG *) wire driver_ctrl_M00_AXI_BREADY;
  (* CONN_BUS_INFO = "driver_ctrl_M00_AXI xilinx.com:interface:aximm:1.0 AXI4 BRESP" *) (* DEBUG = "true" *) (* MARK_DEBUG *) wire [1:0]driver_ctrl_M00_AXI_BRESP;
  (* CONN_BUS_INFO = "driver_ctrl_M00_AXI xilinx.com:interface:aximm:1.0 AXI4 BVALID" *) (* DEBUG = "true" *) (* MARK_DEBUG *) wire driver_ctrl_M00_AXI_BVALID;
  (* CONN_BUS_INFO = "driver_ctrl_M00_AXI xilinx.com:interface:aximm:1.0 AXI4 RDATA" *) (* DEBUG = "true" *) (* MARK_DEBUG *) wire [127:0]driver_ctrl_M00_AXI_RDATA;
  (* CONN_BUS_INFO = "driver_ctrl_M00_AXI xilinx.com:interface:aximm:1.0 AXI4 RID" *) (* DEBUG = "true" *) (* MARK_DEBUG *) wire [5:0]driver_ctrl_M00_AXI_RID;
  (* CONN_BUS_INFO = "driver_ctrl_M00_AXI xilinx.com:interface:aximm:1.0 AXI4 RLAST" *) (* DEBUG = "true" *) (* MARK_DEBUG *) wire driver_ctrl_M00_AXI_RLAST;
  (* CONN_BUS_INFO = "driver_ctrl_M00_AXI xilinx.com:interface:aximm:1.0 AXI4 RREADY" *) (* DEBUG = "true" *) (* MARK_DEBUG *) wire driver_ctrl_M00_AXI_RREADY;
  (* CONN_BUS_INFO = "driver_ctrl_M00_AXI xilinx.com:interface:aximm:1.0 AXI4 RRESP" *) (* DEBUG = "true" *) (* MARK_DEBUG *) wire [1:0]driver_ctrl_M00_AXI_RRESP;
  (* CONN_BUS_INFO = "driver_ctrl_M00_AXI xilinx.com:interface:aximm:1.0 AXI4 RVALID" *) (* DEBUG = "true" *) (* MARK_DEBUG *) wire driver_ctrl_M00_AXI_RVALID;
  (* CONN_BUS_INFO = "driver_ctrl_M00_AXI xilinx.com:interface:aximm:1.0 AXI4 WDATA" *) (* DEBUG = "true" *) (* MARK_DEBUG *) wire [127:0]driver_ctrl_M00_AXI_WDATA;
  (* CONN_BUS_INFO = "driver_ctrl_M00_AXI xilinx.com:interface:aximm:1.0 AXI4 WLAST" *) (* DEBUG = "true" *) (* MARK_DEBUG *) wire driver_ctrl_M00_AXI_WLAST;
  (* CONN_BUS_INFO = "driver_ctrl_M00_AXI xilinx.com:interface:aximm:1.0 AXI4 WREADY" *) (* DEBUG = "true" *) (* MARK_DEBUG *) wire driver_ctrl_M00_AXI_WREADY;
  (* CONN_BUS_INFO = "driver_ctrl_M00_AXI xilinx.com:interface:aximm:1.0 AXI4 WSTRB" *) (* DEBUG = "true" *) (* MARK_DEBUG *) wire [15:0]driver_ctrl_M00_AXI_WSTRB;
  (* CONN_BUS_INFO = "driver_ctrl_M00_AXI xilinx.com:interface:aximm:1.0 AXI4 WVALID" *) (* DEBUG = "true" *) (* MARK_DEBUG *) wire driver_ctrl_M00_AXI_WVALID;
  (* DEBUG = "true" *) (* MARK_DEBUG *) wire [255:0]fifo_generator_0_dout;
  (* DEBUG = "true" *) (* MARK_DEBUG *) wire [31:0]fifo_generator_0_dout_1;
  (* DEBUG = "true" *) (* MARK_DEBUG *) wire fifo_generator_0_empty;
  (* DEBUG = "true" *) (* MARK_DEBUG *) wire full;
  (* DEBUG = "true" *) (* MARK_DEBUG *) wire master_custom_0_arvalid;
  (* DEBUG = "true" *) (* MARK_DEBUG *) wire [127:0]master_custom_0_output_data;
  wire master_custom_v1_0_M_0_rready;
  wire master_custom_v1_0_M_0_rvalid;
  wire [39:0]ps8_0_axi_periph_M00_AXI1_ARADDR;
  wire [1:0]ps8_0_axi_periph_M00_AXI1_ARBURST;
  wire [3:0]ps8_0_axi_periph_M00_AXI1_ARCACHE;
  wire [15:0]ps8_0_axi_periph_M00_AXI1_ARID;
  wire [7:0]ps8_0_axi_periph_M00_AXI1_ARLEN;
  wire [0:0]ps8_0_axi_periph_M00_AXI1_ARLOCK;
  wire [2:0]ps8_0_axi_periph_M00_AXI1_ARPROT;
  wire [3:0]ps8_0_axi_periph_M00_AXI1_ARQOS;
  wire ps8_0_axi_periph_M00_AXI1_ARREADY;
  wire [2:0]ps8_0_axi_periph_M00_AXI1_ARSIZE;
  wire [15:0]ps8_0_axi_periph_M00_AXI1_ARUSER;
  wire ps8_0_axi_periph_M00_AXI1_ARVALID;
  wire [39:0]ps8_0_axi_periph_M00_AXI1_AWADDR;
  wire [1:0]ps8_0_axi_periph_M00_AXI1_AWBURST;
  wire [3:0]ps8_0_axi_periph_M00_AXI1_AWCACHE;
  wire [15:0]ps8_0_axi_periph_M00_AXI1_AWID;
  wire [7:0]ps8_0_axi_periph_M00_AXI1_AWLEN;
  wire [0:0]ps8_0_axi_periph_M00_AXI1_AWLOCK;
  wire [2:0]ps8_0_axi_periph_M00_AXI1_AWPROT;
  wire [3:0]ps8_0_axi_periph_M00_AXI1_AWQOS;
  wire ps8_0_axi_periph_M00_AXI1_AWREADY;
  wire [2:0]ps8_0_axi_periph_M00_AXI1_AWSIZE;
  wire [15:0]ps8_0_axi_periph_M00_AXI1_AWUSER;
  wire ps8_0_axi_periph_M00_AXI1_AWVALID;
  wire [15:0]ps8_0_axi_periph_M00_AXI1_BID;
  wire ps8_0_axi_periph_M00_AXI1_BREADY;
  wire [1:0]ps8_0_axi_periph_M00_AXI1_BRESP;
  wire ps8_0_axi_periph_M00_AXI1_BVALID;
  wire [31:0]ps8_0_axi_periph_M00_AXI1_RDATA;
  wire [15:0]ps8_0_axi_periph_M00_AXI1_RID;
  wire ps8_0_axi_periph_M00_AXI1_RLAST;
  wire ps8_0_axi_periph_M00_AXI1_RREADY;
  wire [1:0]ps8_0_axi_periph_M00_AXI1_RRESP;
  wire ps8_0_axi_periph_M00_AXI1_RVALID;
  wire [31:0]ps8_0_axi_periph_M00_AXI1_WDATA;
  wire ps8_0_axi_periph_M00_AXI1_WLAST;
  wire ps8_0_axi_periph_M00_AXI1_WREADY;
  wire [3:0]ps8_0_axi_periph_M00_AXI1_WSTRB;
  wire ps8_0_axi_periph_M00_AXI1_WVALID;
  (* CONN_BUS_INFO = "ps8_0_axi_periph_M00_AXI xilinx.com:interface:aximm:1.0 AXI4 ARADDR" *) (* DEBUG = "true" *) (* MARK_DEBUG *) wire [39:0]ps8_0_axi_periph_M00_AXI_ARADDR;
  (* CONN_BUS_INFO = "ps8_0_axi_periph_M00_AXI xilinx.com:interface:aximm:1.0 AXI4 ARBURST" *) (* DEBUG = "true" *) (* MARK_DEBUG *) wire [1:0]ps8_0_axi_periph_M00_AXI_ARBURST;
  (* CONN_BUS_INFO = "ps8_0_axi_periph_M00_AXI xilinx.com:interface:aximm:1.0 AXI4 ARCACHE" *) (* DEBUG = "true" *) (* MARK_DEBUG *) wire [3:0]ps8_0_axi_periph_M00_AXI_ARCACHE;
  (* CONN_BUS_INFO = "ps8_0_axi_periph_M00_AXI xilinx.com:interface:aximm:1.0 AXI4 ARID" *) (* DEBUG = "true" *) (* MARK_DEBUG *) wire [15:0]ps8_0_axi_periph_M00_AXI_ARID;
  (* CONN_BUS_INFO = "ps8_0_axi_periph_M00_AXI xilinx.com:interface:aximm:1.0 AXI4 ARLEN" *) (* DEBUG = "true" *) (* MARK_DEBUG *) wire [7:0]ps8_0_axi_periph_M00_AXI_ARLEN;
  (* CONN_BUS_INFO = "ps8_0_axi_periph_M00_AXI xilinx.com:interface:aximm:1.0 AXI4 ARLOCK" *) (* DEBUG = "true" *) (* MARK_DEBUG *) wire [0:0]ps8_0_axi_periph_M00_AXI_ARLOCK;
  (* CONN_BUS_INFO = "ps8_0_axi_periph_M00_AXI xilinx.com:interface:aximm:1.0 AXI4 ARPROT" *) (* DEBUG = "true" *) (* MARK_DEBUG *) wire [2:0]ps8_0_axi_periph_M00_AXI_ARPROT;
  (* CONN_BUS_INFO = "ps8_0_axi_periph_M00_AXI xilinx.com:interface:aximm:1.0 AXI4 ARQOS" *) (* DEBUG = "true" *) (* MARK_DEBUG *) wire [3:0]ps8_0_axi_periph_M00_AXI_ARQOS;
  (* CONN_BUS_INFO = "ps8_0_axi_periph_M00_AXI xilinx.com:interface:aximm:1.0 AXI4 ARREADY" *) (* DEBUG = "true" *) (* MARK_DEBUG *) wire ps8_0_axi_periph_M00_AXI_ARREADY;
  (* CONN_BUS_INFO = "ps8_0_axi_periph_M00_AXI xilinx.com:interface:aximm:1.0 AXI4 ARSIZE" *) (* DEBUG = "true" *) (* MARK_DEBUG *) wire [2:0]ps8_0_axi_periph_M00_AXI_ARSIZE;
  (* CONN_BUS_INFO = "ps8_0_axi_periph_M00_AXI xilinx.com:interface:aximm:1.0 AXI4 ARUSER" *) (* DEBUG = "true" *) (* MARK_DEBUG *) wire [15:0]ps8_0_axi_periph_M00_AXI_ARUSER;
  (* CONN_BUS_INFO = "ps8_0_axi_periph_M00_AXI xilinx.com:interface:aximm:1.0 AXI4 ARVALID" *) (* DEBUG = "true" *) (* MARK_DEBUG *) wire ps8_0_axi_periph_M00_AXI_ARVALID;
  (* CONN_BUS_INFO = "ps8_0_axi_periph_M00_AXI xilinx.com:interface:aximm:1.0 AXI4 AWADDR" *) (* DEBUG = "true" *) (* MARK_DEBUG *) wire [39:0]ps8_0_axi_periph_M00_AXI_AWADDR;
  (* CONN_BUS_INFO = "ps8_0_axi_periph_M00_AXI xilinx.com:interface:aximm:1.0 AXI4 AWBURST" *) (* DEBUG = "true" *) (* MARK_DEBUG *) wire [1:0]ps8_0_axi_periph_M00_AXI_AWBURST;
  (* CONN_BUS_INFO = "ps8_0_axi_periph_M00_AXI xilinx.com:interface:aximm:1.0 AXI4 AWCACHE" *) (* DEBUG = "true" *) (* MARK_DEBUG *) wire [3:0]ps8_0_axi_periph_M00_AXI_AWCACHE;
  (* CONN_BUS_INFO = "ps8_0_axi_periph_M00_AXI xilinx.com:interface:aximm:1.0 AXI4 AWID" *) (* DEBUG = "true" *) (* MARK_DEBUG *) wire [15:0]ps8_0_axi_periph_M00_AXI_AWID;
  (* CONN_BUS_INFO = "ps8_0_axi_periph_M00_AXI xilinx.com:interface:aximm:1.0 AXI4 AWLEN" *) (* DEBUG = "true" *) (* MARK_DEBUG *) wire [7:0]ps8_0_axi_periph_M00_AXI_AWLEN;
  (* CONN_BUS_INFO = "ps8_0_axi_periph_M00_AXI xilinx.com:interface:aximm:1.0 AXI4 AWLOCK" *) (* DEBUG = "true" *) (* MARK_DEBUG *) wire [0:0]ps8_0_axi_periph_M00_AXI_AWLOCK;
  (* CONN_BUS_INFO = "ps8_0_axi_periph_M00_AXI xilinx.com:interface:aximm:1.0 AXI4 AWPROT" *) (* DEBUG = "true" *) (* MARK_DEBUG *) wire [2:0]ps8_0_axi_periph_M00_AXI_AWPROT;
  (* CONN_BUS_INFO = "ps8_0_axi_periph_M00_AXI xilinx.com:interface:aximm:1.0 AXI4 AWQOS" *) (* DEBUG = "true" *) (* MARK_DEBUG *) wire [3:0]ps8_0_axi_periph_M00_AXI_AWQOS;
  (* CONN_BUS_INFO = "ps8_0_axi_periph_M00_AXI xilinx.com:interface:aximm:1.0 AXI4 AWREADY" *) (* DEBUG = "true" *) (* MARK_DEBUG *) wire ps8_0_axi_periph_M00_AXI_AWREADY;
  (* CONN_BUS_INFO = "ps8_0_axi_periph_M00_AXI xilinx.com:interface:aximm:1.0 AXI4 AWSIZE" *) (* DEBUG = "true" *) (* MARK_DEBUG *) wire [2:0]ps8_0_axi_periph_M00_AXI_AWSIZE;
  (* CONN_BUS_INFO = "ps8_0_axi_periph_M00_AXI xilinx.com:interface:aximm:1.0 AXI4 AWUSER" *) (* DEBUG = "true" *) (* MARK_DEBUG *) wire [15:0]ps8_0_axi_periph_M00_AXI_AWUSER;
  (* CONN_BUS_INFO = "ps8_0_axi_periph_M00_AXI xilinx.com:interface:aximm:1.0 AXI4 AWVALID" *) (* DEBUG = "true" *) (* MARK_DEBUG *) wire ps8_0_axi_periph_M00_AXI_AWVALID;
  (* CONN_BUS_INFO = "ps8_0_axi_periph_M00_AXI xilinx.com:interface:aximm:1.0 AXI4 BID" *) (* DEBUG = "true" *) (* MARK_DEBUG *) wire [15:0]ps8_0_axi_periph_M00_AXI_BID;
  (* CONN_BUS_INFO = "ps8_0_axi_periph_M00_AXI xilinx.com:interface:aximm:1.0 AXI4 BREADY" *) (* DEBUG = "true" *) (* MARK_DEBUG *) wire ps8_0_axi_periph_M00_AXI_BREADY;
  (* CONN_BUS_INFO = "ps8_0_axi_periph_M00_AXI xilinx.com:interface:aximm:1.0 AXI4 BRESP" *) (* DEBUG = "true" *) (* MARK_DEBUG *) wire [1:0]ps8_0_axi_periph_M00_AXI_BRESP;
  (* CONN_BUS_INFO = "ps8_0_axi_periph_M00_AXI xilinx.com:interface:aximm:1.0 AXI4 BVALID" *) (* DEBUG = "true" *) (* MARK_DEBUG *) wire ps8_0_axi_periph_M00_AXI_BVALID;
  (* CONN_BUS_INFO = "ps8_0_axi_periph_M00_AXI xilinx.com:interface:aximm:1.0 AXI4 RDATA" *) (* DEBUG = "true" *) (* MARK_DEBUG *) wire [31:0]ps8_0_axi_periph_M00_AXI_RDATA;
  (* CONN_BUS_INFO = "ps8_0_axi_periph_M00_AXI xilinx.com:interface:aximm:1.0 AXI4 RID" *) (* DEBUG = "true" *) (* MARK_DEBUG *) wire [15:0]ps8_0_axi_periph_M00_AXI_RID;
  (* CONN_BUS_INFO = "ps8_0_axi_periph_M00_AXI xilinx.com:interface:aximm:1.0 AXI4 RLAST" *) (* DEBUG = "true" *) (* MARK_DEBUG *) wire ps8_0_axi_periph_M00_AXI_RLAST;
  (* CONN_BUS_INFO = "ps8_0_axi_periph_M00_AXI xilinx.com:interface:aximm:1.0 AXI4 RREADY" *) (* DEBUG = "true" *) (* MARK_DEBUG *) wire ps8_0_axi_periph_M00_AXI_RREADY;
  (* CONN_BUS_INFO = "ps8_0_axi_periph_M00_AXI xilinx.com:interface:aximm:1.0 AXI4 RRESP" *) (* DEBUG = "true" *) (* MARK_DEBUG *) wire [1:0]ps8_0_axi_periph_M00_AXI_RRESP;
  (* CONN_BUS_INFO = "ps8_0_axi_periph_M00_AXI xilinx.com:interface:aximm:1.0 AXI4 RVALID" *) (* DEBUG = "true" *) (* MARK_DEBUG *) wire ps8_0_axi_periph_M00_AXI_RVALID;
  (* CONN_BUS_INFO = "ps8_0_axi_periph_M00_AXI xilinx.com:interface:aximm:1.0 AXI4 WDATA" *) (* DEBUG = "true" *) (* MARK_DEBUG *) wire [31:0]ps8_0_axi_periph_M00_AXI_WDATA;
  (* CONN_BUS_INFO = "ps8_0_axi_periph_M00_AXI xilinx.com:interface:aximm:1.0 AXI4 WLAST" *) (* DEBUG = "true" *) (* MARK_DEBUG *) wire ps8_0_axi_periph_M00_AXI_WLAST;
  (* CONN_BUS_INFO = "ps8_0_axi_periph_M00_AXI xilinx.com:interface:aximm:1.0 AXI4 WREADY" *) (* DEBUG = "true" *) (* MARK_DEBUG *) wire ps8_0_axi_periph_M00_AXI_WREADY;
  (* CONN_BUS_INFO = "ps8_0_axi_periph_M00_AXI xilinx.com:interface:aximm:1.0 AXI4 WSTRB" *) (* DEBUG = "true" *) (* MARK_DEBUG *) wire [3:0]ps8_0_axi_periph_M00_AXI_WSTRB;
  (* CONN_BUS_INFO = "ps8_0_axi_periph_M00_AXI xilinx.com:interface:aximm:1.0 AXI4 WVALID" *) (* DEBUG = "true" *) (* MARK_DEBUG *) wire ps8_0_axi_periph_M00_AXI_WVALID;
  wire [0:0]rst_ps8_0_99M_peripheral_aresetn;
  (* DEBUG = "true" *) (* MARK_DEBUG *) wire testbench_pattern_gen_0_wr_en;
  wire util_reduced_logic_0_Res;
  wire [0:0]util_vector_logic_0_Res;
  wire [0:0]util_vector_logic_0_Res_1;
  wire [0:0]util_vector_logic_1_Res;
  wire [0:0]util_vector_logic_2_Res;
  wire [39:0]zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_ARADDR;
  wire [1:0]zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_ARBURST;
  wire [3:0]zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_ARCACHE;
  wire [15:0]zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_ARID;
  wire [7:0]zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_ARLEN;
  wire zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_ARLOCK;
  wire [2:0]zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_ARPROT;
  wire [3:0]zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_ARQOS;
  wire zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_ARREADY;
  wire [2:0]zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_ARSIZE;
  wire [15:0]zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_ARUSER;
  wire zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_ARVALID;
  wire [39:0]zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_AWADDR;
  wire [1:0]zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_AWBURST;
  wire [3:0]zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_AWCACHE;
  wire [15:0]zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_AWID;
  wire [7:0]zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_AWLEN;
  wire zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_AWLOCK;
  wire [2:0]zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_AWPROT;
  wire [3:0]zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_AWQOS;
  wire zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_AWREADY;
  wire [2:0]zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_AWSIZE;
  wire [15:0]zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_AWUSER;
  wire zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_AWVALID;
  wire [15:0]zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_BID;
  wire zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_BREADY;
  wire [1:0]zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_BRESP;
  wire zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_BVALID;
  wire [31:0]zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_RDATA;
  wire [15:0]zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_RID;
  wire zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_RLAST;
  wire zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_RREADY;
  wire [1:0]zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_RRESP;
  wire zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_RVALID;
  wire [31:0]zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_WDATA;
  wire zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_WLAST;
  wire zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_WREADY;
  wire [3:0]zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_WSTRB;
  wire zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_WVALID;
  wire zynq_ultra_ps_e_0_pl_clk0;
  wire zynq_ultra_ps_e_0_pl_resetn0;

  assign dout_0[255:0] = fifo_generator_0_dout;
  design_1_axi_vip_0_0 axi_vip_0
       (.aclk(zynq_ultra_ps_e_0_pl_clk0),
        .aresetn(rst_ps8_0_99M_peripheral_aresetn),
        .m_axi_araddr(ps8_0_axi_periph_M00_AXI_ARADDR),
        .m_axi_arburst(ps8_0_axi_periph_M00_AXI_ARBURST),
        .m_axi_arcache(ps8_0_axi_periph_M00_AXI_ARCACHE),
        .m_axi_arid(ps8_0_axi_periph_M00_AXI_ARID),
        .m_axi_arlen(ps8_0_axi_periph_M00_AXI_ARLEN),
        .m_axi_arlock(ps8_0_axi_periph_M00_AXI_ARLOCK),
        .m_axi_arprot(ps8_0_axi_periph_M00_AXI_ARPROT),
        .m_axi_arqos(ps8_0_axi_periph_M00_AXI_ARQOS),
        .m_axi_arready(ps8_0_axi_periph_M00_AXI_ARREADY),
        .m_axi_arsize(ps8_0_axi_periph_M00_AXI_ARSIZE),
        .m_axi_aruser(ps8_0_axi_periph_M00_AXI_ARUSER),
        .m_axi_arvalid(ps8_0_axi_periph_M00_AXI_ARVALID),
        .m_axi_awaddr(ps8_0_axi_periph_M00_AXI_AWADDR),
        .m_axi_awburst(ps8_0_axi_periph_M00_AXI_AWBURST),
        .m_axi_awcache(ps8_0_axi_periph_M00_AXI_AWCACHE),
        .m_axi_awid(ps8_0_axi_periph_M00_AXI_AWID),
        .m_axi_awlen(ps8_0_axi_periph_M00_AXI_AWLEN),
        .m_axi_awlock(ps8_0_axi_periph_M00_AXI_AWLOCK),
        .m_axi_awprot(ps8_0_axi_periph_M00_AXI_AWPROT),
        .m_axi_awqos(ps8_0_axi_periph_M00_AXI_AWQOS),
        .m_axi_awready(ps8_0_axi_periph_M00_AXI_AWREADY),
        .m_axi_awsize(ps8_0_axi_periph_M00_AXI_AWSIZE),
        .m_axi_awuser(ps8_0_axi_periph_M00_AXI_AWUSER),
        .m_axi_awvalid(ps8_0_axi_periph_M00_AXI_AWVALID),
        .m_axi_bid(ps8_0_axi_periph_M00_AXI_BID),
        .m_axi_bready(ps8_0_axi_periph_M00_AXI_BREADY),
        .m_axi_bresp(ps8_0_axi_periph_M00_AXI_BRESP),
        .m_axi_bvalid(ps8_0_axi_periph_M00_AXI_BVALID),
        .m_axi_rdata(ps8_0_axi_periph_M00_AXI_RDATA),
        .m_axi_rid(ps8_0_axi_periph_M00_AXI_RID),
        .m_axi_rlast(ps8_0_axi_periph_M00_AXI_RLAST),
        .m_axi_rready(ps8_0_axi_periph_M00_AXI_RREADY),
        .m_axi_rresp(ps8_0_axi_periph_M00_AXI_RRESP),
        .m_axi_rvalid(ps8_0_axi_periph_M00_AXI_RVALID),
        .m_axi_wdata(ps8_0_axi_periph_M00_AXI_WDATA),
        .m_axi_wlast(ps8_0_axi_periph_M00_AXI_WLAST),
        .m_axi_wready(ps8_0_axi_periph_M00_AXI_WREADY),
        .m_axi_wstrb(ps8_0_axi_periph_M00_AXI_WSTRB),
        .m_axi_wvalid(ps8_0_axi_periph_M00_AXI_WVALID),
        .s_axi_araddr(ps8_0_axi_periph_M00_AXI1_ARADDR),
        .s_axi_arburst(ps8_0_axi_periph_M00_AXI1_ARBURST),
        .s_axi_arcache(ps8_0_axi_periph_M00_AXI1_ARCACHE),
        .s_axi_arid(ps8_0_axi_periph_M00_AXI1_ARID),
        .s_axi_arlen(ps8_0_axi_periph_M00_AXI1_ARLEN),
        .s_axi_arlock(ps8_0_axi_periph_M00_AXI1_ARLOCK),
        .s_axi_arprot(ps8_0_axi_periph_M00_AXI1_ARPROT),
        .s_axi_arqos(ps8_0_axi_periph_M00_AXI1_ARQOS),
        .s_axi_arready(ps8_0_axi_periph_M00_AXI1_ARREADY),
        .s_axi_arsize(ps8_0_axi_periph_M00_AXI1_ARSIZE),
        .s_axi_aruser(ps8_0_axi_periph_M00_AXI1_ARUSER),
        .s_axi_arvalid(ps8_0_axi_periph_M00_AXI1_ARVALID),
        .s_axi_awaddr(ps8_0_axi_periph_M00_AXI1_AWADDR),
        .s_axi_awburst(ps8_0_axi_periph_M00_AXI1_AWBURST),
        .s_axi_awcache(ps8_0_axi_periph_M00_AXI1_AWCACHE),
        .s_axi_awid(ps8_0_axi_periph_M00_AXI1_AWID),
        .s_axi_awlen(ps8_0_axi_periph_M00_AXI1_AWLEN),
        .s_axi_awlock(ps8_0_axi_periph_M00_AXI1_AWLOCK),
        .s_axi_awprot(ps8_0_axi_periph_M00_AXI1_AWPROT),
        .s_axi_awqos(ps8_0_axi_periph_M00_AXI1_AWQOS),
        .s_axi_awready(ps8_0_axi_periph_M00_AXI1_AWREADY),
        .s_axi_awsize(ps8_0_axi_periph_M00_AXI1_AWSIZE),
        .s_axi_awuser(ps8_0_axi_periph_M00_AXI1_AWUSER),
        .s_axi_awvalid(ps8_0_axi_periph_M00_AXI1_AWVALID),
        .s_axi_bid(ps8_0_axi_periph_M00_AXI1_BID),
        .s_axi_bready(ps8_0_axi_periph_M00_AXI1_BREADY),
        .s_axi_bresp(ps8_0_axi_periph_M00_AXI1_BRESP),
        .s_axi_bvalid(ps8_0_axi_periph_M00_AXI1_BVALID),
        .s_axi_rdata(ps8_0_axi_periph_M00_AXI1_RDATA),
        .s_axi_rid(ps8_0_axi_periph_M00_AXI1_RID),
        .s_axi_rlast(ps8_0_axi_periph_M00_AXI1_RLAST),
        .s_axi_rready(ps8_0_axi_periph_M00_AXI1_RREADY),
        .s_axi_rresp(ps8_0_axi_periph_M00_AXI1_RRESP),
        .s_axi_rvalid(ps8_0_axi_periph_M00_AXI1_RVALID),
        .s_axi_wdata(ps8_0_axi_periph_M00_AXI1_WDATA),
        .s_axi_wlast(ps8_0_axi_periph_M00_AXI1_WLAST),
        .s_axi_wready(ps8_0_axi_periph_M00_AXI1_WREADY),
        .s_axi_wstrb(ps8_0_axi_periph_M00_AXI1_WSTRB),
        .s_axi_wvalid(ps8_0_axi_periph_M00_AXI1_WVALID));
  design_1_c_counter_binary_0_0 c_counter_binary_0
       (.CLK(zynq_ultra_ps_e_0_pl_clk0),
        .Q(c_counter_binary_0_Q));
  design_1_custom_slave_v1_0_S0_0_0 custom_slave_v1_0_S0_0
       (.S_AXI_ACLK(zynq_ultra_ps_e_0_pl_clk0),
        .S_AXI_ARADDR(ps8_0_axi_periph_M00_AXI_ARADDR[5:0]),
        .S_AXI_ARBURST(ps8_0_axi_periph_M00_AXI_ARBURST),
        .S_AXI_ARCACHE(ps8_0_axi_periph_M00_AXI_ARCACHE),
        .S_AXI_ARESETN(rst_ps8_0_99M_peripheral_aresetn),
        .S_AXI_ARID(ps8_0_axi_periph_M00_AXI_ARID),
        .S_AXI_ARLEN(ps8_0_axi_periph_M00_AXI_ARLEN),
        .S_AXI_ARLOCK(ps8_0_axi_periph_M00_AXI_ARLOCK),
        .S_AXI_ARPROT(ps8_0_axi_periph_M00_AXI_ARPROT),
        .S_AXI_ARQOS(ps8_0_axi_periph_M00_AXI_ARQOS),
        .S_AXI_ARREADY(ps8_0_axi_periph_M00_AXI_ARREADY),
        .S_AXI_ARREGION({1'b0,1'b0,1'b0,1'b0}),
        .S_AXI_ARSIZE(ps8_0_axi_periph_M00_AXI_ARSIZE),
        .S_AXI_ARUSER(ps8_0_axi_periph_M00_AXI_ARUSER[0]),
        .S_AXI_ARVALID(ps8_0_axi_periph_M00_AXI_ARVALID),
        .S_AXI_AWADDR(ps8_0_axi_periph_M00_AXI_AWADDR[5:0]),
        .S_AXI_AWBURST(ps8_0_axi_periph_M00_AXI_AWBURST),
        .S_AXI_AWCACHE(ps8_0_axi_periph_M00_AXI_AWCACHE),
        .S_AXI_AWID(ps8_0_axi_periph_M00_AXI_AWID),
        .S_AXI_AWLEN(ps8_0_axi_periph_M00_AXI_AWLEN),
        .S_AXI_AWLOCK(ps8_0_axi_periph_M00_AXI_AWLOCK),
        .S_AXI_AWPROT(ps8_0_axi_periph_M00_AXI_AWPROT),
        .S_AXI_AWQOS(ps8_0_axi_periph_M00_AXI_AWQOS),
        .S_AXI_AWREADY(ps8_0_axi_periph_M00_AXI_AWREADY),
        .S_AXI_AWREGION({1'b0,1'b0,1'b0,1'b0}),
        .S_AXI_AWSIZE(ps8_0_axi_periph_M00_AXI_AWSIZE),
        .S_AXI_AWUSER(ps8_0_axi_periph_M00_AXI_AWUSER[0]),
        .S_AXI_AWVALID(ps8_0_axi_periph_M00_AXI_AWVALID),
        .S_AXI_BID(ps8_0_axi_periph_M00_AXI_BID),
        .S_AXI_BREADY(ps8_0_axi_periph_M00_AXI_BREADY),
        .S_AXI_BRESP(ps8_0_axi_periph_M00_AXI_BRESP),
        .S_AXI_BVALID(ps8_0_axi_periph_M00_AXI_BVALID),
        .S_AXI_RDATA(ps8_0_axi_periph_M00_AXI_RDATA),
        .S_AXI_RID(ps8_0_axi_periph_M00_AXI_RID),
        .S_AXI_RLAST(ps8_0_axi_periph_M00_AXI_RLAST),
        .S_AXI_RREADY(ps8_0_axi_periph_M00_AXI_RREADY),
        .S_AXI_RRESP(ps8_0_axi_periph_M00_AXI_RRESP),
        .S_AXI_RVALID(ps8_0_axi_periph_M00_AXI_RVALID),
        .S_AXI_WDATA(ps8_0_axi_periph_M00_AXI_WDATA),
        .S_AXI_WLAST(ps8_0_axi_periph_M00_AXI_WLAST),
        .S_AXI_WREADY(ps8_0_axi_periph_M00_AXI_WREADY),
        .S_AXI_WSTRB(ps8_0_axi_periph_M00_AXI_WSTRB),
        .S_AXI_WUSER({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .S_AXI_WVALID(ps8_0_axi_periph_M00_AXI_WVALID),
        .addr_fifo_din(custom_slave_0_target_base_addr),
        .addr_fifo_wr(testbench_pattern_gen_0_wr_en),
        .start_read_tx(custom_slave_0_start_read_tx),
        .wready(custom_slave_v1_0_S0_0_wready),
        .wvalid(custom_slave_v1_0_S0_0_wvalid));
  design_1_fifo_generator_0_0 fifo_generator_0
       (.clk(zynq_ultra_ps_e_0_pl_clk0),
        .din(master_custom_0_output_data),
        .dout(fifo_generator_0_dout),
        .full(full),
        .rd_en(util_vector_logic_2_Res),
        .srst(util_vector_logic_0_Res),
        .wr_en(util_vector_logic_1_Res));
  design_1_fifo_generator_0_1 fifo_generator_1
       (.clk(zynq_ultra_ps_e_0_pl_clk0),
        .din(custom_slave_0_target_base_addr),
        .dout(fifo_generator_0_dout_1),
        .empty(fifo_generator_0_empty),
        .rd_en(master_custom_0_arvalid),
        .srst(util_vector_logic_0_Res_1),
        .wr_en(testbench_pattern_gen_0_wr_en));
  design_1_master_custom_v1_0_M_0_0 master_custom_v1_0_M_0
       (.INIT_AXI_TXN(custom_slave_0_start_read_tx),
        .M_AXI_ACLK(zynq_ultra_ps_e_0_pl_clk0),
        .M_AXI_ARADDR(driver_ctrl_M00_AXI_ARADDR),
        .M_AXI_ARBURST(driver_ctrl_M00_AXI_ARBURST),
        .M_AXI_ARCACHE(driver_ctrl_M00_AXI_ARCACHE),
        .M_AXI_ARESETN(rst_ps8_0_99M_peripheral_aresetn),
        .M_AXI_ARID(driver_ctrl_M00_AXI_ARID),
        .M_AXI_ARLEN(driver_ctrl_M00_AXI_ARLEN),
        .M_AXI_ARLOCK(driver_ctrl_M00_AXI_ARLOCK),
        .M_AXI_ARPROT(driver_ctrl_M00_AXI_ARPROT),
        .M_AXI_ARQOS(driver_ctrl_M00_AXI_ARQOS),
        .M_AXI_ARREADY(driver_ctrl_M00_AXI_ARREADY),
        .M_AXI_ARSIZE(driver_ctrl_M00_AXI_ARSIZE),
        .M_AXI_ARUSER(driver_ctrl_M00_AXI_ARUSER),
        .M_AXI_ARVALID(driver_ctrl_M00_AXI_ARVALID),
        .M_AXI_AWADDR(driver_ctrl_M00_AXI_AWADDR),
        .M_AXI_AWBURST(driver_ctrl_M00_AXI_AWBURST),
        .M_AXI_AWCACHE(driver_ctrl_M00_AXI_AWCACHE),
        .M_AXI_AWID(driver_ctrl_M00_AXI_AWID),
        .M_AXI_AWLEN(driver_ctrl_M00_AXI_AWLEN),
        .M_AXI_AWLOCK(driver_ctrl_M00_AXI_AWLOCK),
        .M_AXI_AWPROT(driver_ctrl_M00_AXI_AWPROT),
        .M_AXI_AWQOS(driver_ctrl_M00_AXI_AWQOS),
        .M_AXI_AWREADY(driver_ctrl_M00_AXI_AWREADY),
        .M_AXI_AWSIZE(driver_ctrl_M00_AXI_AWSIZE),
        .M_AXI_AWUSER(driver_ctrl_M00_AXI_AWUSER),
        .M_AXI_AWVALID(driver_ctrl_M00_AXI_AWVALID),
        .M_AXI_BID(driver_ctrl_M00_AXI_BID[0]),
        .M_AXI_BREADY(driver_ctrl_M00_AXI_BREADY),
        .M_AXI_BRESP(driver_ctrl_M00_AXI_BRESP),
        .M_AXI_BUSER(1'b0),
        .M_AXI_BVALID(driver_ctrl_M00_AXI_BVALID),
        .M_AXI_RDATA(driver_ctrl_M00_AXI_RDATA),
        .M_AXI_RID(driver_ctrl_M00_AXI_RID[0]),
        .M_AXI_RLAST(driver_ctrl_M00_AXI_RLAST),
        .M_AXI_RREADY(driver_ctrl_M00_AXI_RREADY),
        .M_AXI_RRESP(driver_ctrl_M00_AXI_RRESP),
        .M_AXI_RUSER({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .M_AXI_RVALID(driver_ctrl_M00_AXI_RVALID),
        .M_AXI_WDATA(driver_ctrl_M00_AXI_WDATA),
        .M_AXI_WLAST(driver_ctrl_M00_AXI_WLAST),
        .M_AXI_WREADY(driver_ctrl_M00_AXI_WREADY),
        .M_AXI_WSTRB(driver_ctrl_M00_AXI_WSTRB),
        .M_AXI_WVALID(driver_ctrl_M00_AXI_WVALID),
        .addr_fifo_empty(fifo_generator_0_empty),
        .arvalid(master_custom_0_arvalid),
        .output_data(master_custom_0_output_data),
        .read_addr(fifo_generator_0_dout_1),
        .rready(master_custom_v1_0_M_0_rready),
        .rvalid(master_custom_v1_0_M_0_rvalid),
        .vector_fifo_full(full));
  design_1_ps8_0_axi_periph_0 ps8_0_axi_periph
       (.ACLK(zynq_ultra_ps_e_0_pl_clk0),
        .ARESETN(rst_ps8_0_99M_peripheral_aresetn),
        .M00_ACLK(zynq_ultra_ps_e_0_pl_clk0),
        .M00_ARESETN(rst_ps8_0_99M_peripheral_aresetn),
        .M00_AXI_araddr(ps8_0_axi_periph_M00_AXI1_ARADDR),
        .M00_AXI_arburst(ps8_0_axi_periph_M00_AXI1_ARBURST),
        .M00_AXI_arcache(ps8_0_axi_periph_M00_AXI1_ARCACHE),
        .M00_AXI_arid(ps8_0_axi_periph_M00_AXI1_ARID),
        .M00_AXI_arlen(ps8_0_axi_periph_M00_AXI1_ARLEN),
        .M00_AXI_arlock(ps8_0_axi_periph_M00_AXI1_ARLOCK),
        .M00_AXI_arprot(ps8_0_axi_periph_M00_AXI1_ARPROT),
        .M00_AXI_arqos(ps8_0_axi_periph_M00_AXI1_ARQOS),
        .M00_AXI_arready(ps8_0_axi_periph_M00_AXI1_ARREADY),
        .M00_AXI_arsize(ps8_0_axi_periph_M00_AXI1_ARSIZE),
        .M00_AXI_aruser(ps8_0_axi_periph_M00_AXI1_ARUSER),
        .M00_AXI_arvalid(ps8_0_axi_periph_M00_AXI1_ARVALID),
        .M00_AXI_awaddr(ps8_0_axi_periph_M00_AXI1_AWADDR),
        .M00_AXI_awburst(ps8_0_axi_periph_M00_AXI1_AWBURST),
        .M00_AXI_awcache(ps8_0_axi_periph_M00_AXI1_AWCACHE),
        .M00_AXI_awid(ps8_0_axi_periph_M00_AXI1_AWID),
        .M00_AXI_awlen(ps8_0_axi_periph_M00_AXI1_AWLEN),
        .M00_AXI_awlock(ps8_0_axi_periph_M00_AXI1_AWLOCK),
        .M00_AXI_awprot(ps8_0_axi_periph_M00_AXI1_AWPROT),
        .M00_AXI_awqos(ps8_0_axi_periph_M00_AXI1_AWQOS),
        .M00_AXI_awready(ps8_0_axi_periph_M00_AXI1_AWREADY),
        .M00_AXI_awsize(ps8_0_axi_periph_M00_AXI1_AWSIZE),
        .M00_AXI_awuser(ps8_0_axi_periph_M00_AXI1_AWUSER),
        .M00_AXI_awvalid(ps8_0_axi_periph_M00_AXI1_AWVALID),
        .M00_AXI_bid(ps8_0_axi_periph_M00_AXI1_BID),
        .M00_AXI_bready(ps8_0_axi_periph_M00_AXI1_BREADY),
        .M00_AXI_bresp(ps8_0_axi_periph_M00_AXI1_BRESP),
        .M00_AXI_bvalid(ps8_0_axi_periph_M00_AXI1_BVALID),
        .M00_AXI_rdata(ps8_0_axi_periph_M00_AXI1_RDATA),
        .M00_AXI_rid(ps8_0_axi_periph_M00_AXI1_RID),
        .M00_AXI_rlast(ps8_0_axi_periph_M00_AXI1_RLAST),
        .M00_AXI_rready(ps8_0_axi_periph_M00_AXI1_RREADY),
        .M00_AXI_rresp(ps8_0_axi_periph_M00_AXI1_RRESP),
        .M00_AXI_rvalid(ps8_0_axi_periph_M00_AXI1_RVALID),
        .M00_AXI_wdata(ps8_0_axi_periph_M00_AXI1_WDATA),
        .M00_AXI_wlast(ps8_0_axi_periph_M00_AXI1_WLAST),
        .M00_AXI_wready(ps8_0_axi_periph_M00_AXI1_WREADY),
        .M00_AXI_wstrb(ps8_0_axi_periph_M00_AXI1_WSTRB),
        .M00_AXI_wvalid(ps8_0_axi_periph_M00_AXI1_WVALID),
        .S00_ACLK(zynq_ultra_ps_e_0_pl_clk0),
        .S00_ARESETN(rst_ps8_0_99M_peripheral_aresetn),
        .S00_AXI_araddr(zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_ARADDR),
        .S00_AXI_arburst(zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_ARBURST),
        .S00_AXI_arcache(zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_ARCACHE),
        .S00_AXI_arid(zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_ARID),
        .S00_AXI_arlen(zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_ARLEN),
        .S00_AXI_arlock(zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_ARLOCK),
        .S00_AXI_arprot(zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_ARPROT),
        .S00_AXI_arqos(zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_ARQOS),
        .S00_AXI_arready(zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_ARREADY),
        .S00_AXI_arsize(zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_ARSIZE),
        .S00_AXI_aruser(zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_ARUSER),
        .S00_AXI_arvalid(zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_ARVALID),
        .S00_AXI_awaddr(zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_AWADDR),
        .S00_AXI_awburst(zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_AWBURST),
        .S00_AXI_awcache(zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_AWCACHE),
        .S00_AXI_awid(zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_AWID),
        .S00_AXI_awlen(zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_AWLEN),
        .S00_AXI_awlock(zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_AWLOCK),
        .S00_AXI_awprot(zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_AWPROT),
        .S00_AXI_awqos(zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_AWQOS),
        .S00_AXI_awready(zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_AWREADY),
        .S00_AXI_awsize(zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_AWSIZE),
        .S00_AXI_awuser(zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_AWUSER),
        .S00_AXI_awvalid(zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_AWVALID),
        .S00_AXI_bid(zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_BID),
        .S00_AXI_bready(zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_BREADY),
        .S00_AXI_bresp(zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_BRESP),
        .S00_AXI_bvalid(zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_BVALID),
        .S00_AXI_rdata(zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_RDATA),
        .S00_AXI_rid(zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_RID),
        .S00_AXI_rlast(zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_RLAST),
        .S00_AXI_rready(zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_RREADY),
        .S00_AXI_rresp(zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_RRESP),
        .S00_AXI_rvalid(zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_RVALID),
        .S00_AXI_wdata(zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_WDATA),
        .S00_AXI_wlast(zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_WLAST),
        .S00_AXI_wready(zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_WREADY),
        .S00_AXI_wstrb(zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_WSTRB),
        .S00_AXI_wvalid(zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_WVALID));
  design_1_rst_ps8_0_99M_0 rst_ps8_0_99M
       (.aux_reset_in(1'b1),
        .dcm_locked(1'b1),
        .ext_reset_in(zynq_ultra_ps_e_0_pl_resetn0),
        .mb_debug_sys_rst(1'b0),
        .peripheral_aresetn(rst_ps8_0_99M_peripheral_aresetn),
        .slowest_sync_clk(zynq_ultra_ps_e_0_pl_clk0));
  design_1_system_ila_0_1 system_ila_0
       (.SLOT_0_AXI_araddr(driver_ctrl_M00_AXI_ARADDR),
        .SLOT_0_AXI_arburst(driver_ctrl_M00_AXI_ARBURST),
        .SLOT_0_AXI_arcache(driver_ctrl_M00_AXI_ARCACHE),
        .SLOT_0_AXI_arid(driver_ctrl_M00_AXI_ARID),
        .SLOT_0_AXI_arlen(driver_ctrl_M00_AXI_ARLEN),
        .SLOT_0_AXI_arlock(driver_ctrl_M00_AXI_ARLOCK),
        .SLOT_0_AXI_arprot(driver_ctrl_M00_AXI_ARPROT),
        .SLOT_0_AXI_arqos(driver_ctrl_M00_AXI_ARQOS),
        .SLOT_0_AXI_arready(driver_ctrl_M00_AXI_ARREADY),
        .SLOT_0_AXI_arsize(driver_ctrl_M00_AXI_ARSIZE),
        .SLOT_0_AXI_aruser(driver_ctrl_M00_AXI_ARUSER),
        .SLOT_0_AXI_arvalid(driver_ctrl_M00_AXI_ARVALID),
        .SLOT_0_AXI_awaddr(driver_ctrl_M00_AXI_AWADDR),
        .SLOT_0_AXI_awburst(driver_ctrl_M00_AXI_AWBURST),
        .SLOT_0_AXI_awcache(driver_ctrl_M00_AXI_AWCACHE),
        .SLOT_0_AXI_awid(driver_ctrl_M00_AXI_AWID),
        .SLOT_0_AXI_awlen(driver_ctrl_M00_AXI_AWLEN),
        .SLOT_0_AXI_awlock(driver_ctrl_M00_AXI_AWLOCK),
        .SLOT_0_AXI_awprot(driver_ctrl_M00_AXI_AWPROT),
        .SLOT_0_AXI_awqos(driver_ctrl_M00_AXI_AWQOS),
        .SLOT_0_AXI_awready(driver_ctrl_M00_AXI_AWREADY),
        .SLOT_0_AXI_awsize(driver_ctrl_M00_AXI_AWSIZE),
        .SLOT_0_AXI_awuser(driver_ctrl_M00_AXI_AWUSER),
        .SLOT_0_AXI_awvalid(driver_ctrl_M00_AXI_AWVALID),
        .SLOT_0_AXI_bid(driver_ctrl_M00_AXI_BID[0]),
        .SLOT_0_AXI_bready(driver_ctrl_M00_AXI_BREADY),
        .SLOT_0_AXI_bresp(driver_ctrl_M00_AXI_BRESP),
        .SLOT_0_AXI_bvalid(driver_ctrl_M00_AXI_BVALID),
        .SLOT_0_AXI_rdata(driver_ctrl_M00_AXI_RDATA),
        .SLOT_0_AXI_rid(driver_ctrl_M00_AXI_RID[0]),
        .SLOT_0_AXI_rlast(driver_ctrl_M00_AXI_RLAST),
        .SLOT_0_AXI_rready(driver_ctrl_M00_AXI_RREADY),
        .SLOT_0_AXI_rresp(driver_ctrl_M00_AXI_RRESP),
        .SLOT_0_AXI_ruser({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .SLOT_0_AXI_rvalid(driver_ctrl_M00_AXI_RVALID),
        .SLOT_0_AXI_wdata(driver_ctrl_M00_AXI_WDATA),
        .SLOT_0_AXI_wlast(driver_ctrl_M00_AXI_WLAST),
        .SLOT_0_AXI_wready(driver_ctrl_M00_AXI_WREADY),
        .SLOT_0_AXI_wstrb(driver_ctrl_M00_AXI_WSTRB),
        .SLOT_0_AXI_wvalid(driver_ctrl_M00_AXI_WVALID),
        .clk(zynq_ultra_ps_e_0_pl_clk0),
        .probe0(fifo_generator_0_dout),
        .probe1(fifo_generator_0_dout_1),
        .probe2(full),
        .probe3(master_custom_0_arvalid),
        .probe4(master_custom_0_output_data),
        .probe5(fifo_generator_0_empty),
        .probe6(custom_slave_0_target_base_addr),
        .probe7(testbench_pattern_gen_0_wr_en),
        .probe8(custom_slave_0_start_read_tx),
        .resetn(rst_ps8_0_99M_peripheral_aresetn));
  design_1_system_ila_1_1 system_ila_1
       (.SLOT_0_AXI_araddr(ps8_0_axi_periph_M00_AXI_ARADDR[5:0]),
        .SLOT_0_AXI_arburst(ps8_0_axi_periph_M00_AXI_ARBURST),
        .SLOT_0_AXI_arcache(ps8_0_axi_periph_M00_AXI_ARCACHE),
        .SLOT_0_AXI_arid(ps8_0_axi_periph_M00_AXI_ARID),
        .SLOT_0_AXI_arlen(ps8_0_axi_periph_M00_AXI_ARLEN),
        .SLOT_0_AXI_arlock(ps8_0_axi_periph_M00_AXI_ARLOCK),
        .SLOT_0_AXI_arprot(ps8_0_axi_periph_M00_AXI_ARPROT),
        .SLOT_0_AXI_arqos(ps8_0_axi_periph_M00_AXI_ARQOS),
        .SLOT_0_AXI_arready(ps8_0_axi_periph_M00_AXI_ARREADY),
        .SLOT_0_AXI_arregion({1'b0,1'b0,1'b0,1'b0}),
        .SLOT_0_AXI_arsize(ps8_0_axi_periph_M00_AXI_ARSIZE),
        .SLOT_0_AXI_aruser(ps8_0_axi_periph_M00_AXI_ARUSER),
        .SLOT_0_AXI_arvalid(ps8_0_axi_periph_M00_AXI_ARVALID),
        .SLOT_0_AXI_awaddr(ps8_0_axi_periph_M00_AXI_AWADDR[5:0]),
        .SLOT_0_AXI_awburst(ps8_0_axi_periph_M00_AXI_AWBURST),
        .SLOT_0_AXI_awcache(ps8_0_axi_periph_M00_AXI_AWCACHE),
        .SLOT_0_AXI_awid(ps8_0_axi_periph_M00_AXI_AWID),
        .SLOT_0_AXI_awlen(ps8_0_axi_periph_M00_AXI_AWLEN),
        .SLOT_0_AXI_awlock(ps8_0_axi_periph_M00_AXI_AWLOCK),
        .SLOT_0_AXI_awprot(ps8_0_axi_periph_M00_AXI_AWPROT),
        .SLOT_0_AXI_awqos(ps8_0_axi_periph_M00_AXI_AWQOS),
        .SLOT_0_AXI_awready(ps8_0_axi_periph_M00_AXI_AWREADY),
        .SLOT_0_AXI_awregion({1'b0,1'b0,1'b0,1'b0}),
        .SLOT_0_AXI_awsize(ps8_0_axi_periph_M00_AXI_AWSIZE),
        .SLOT_0_AXI_awuser(ps8_0_axi_periph_M00_AXI_AWUSER),
        .SLOT_0_AXI_awvalid(ps8_0_axi_periph_M00_AXI_AWVALID),
        .SLOT_0_AXI_bid(ps8_0_axi_periph_M00_AXI_BID),
        .SLOT_0_AXI_bready(ps8_0_axi_periph_M00_AXI_BREADY),
        .SLOT_0_AXI_bresp(ps8_0_axi_periph_M00_AXI_BRESP),
        .SLOT_0_AXI_bvalid(ps8_0_axi_periph_M00_AXI_BVALID),
        .SLOT_0_AXI_rdata(ps8_0_axi_periph_M00_AXI_RDATA),
        .SLOT_0_AXI_rid(ps8_0_axi_periph_M00_AXI_RID),
        .SLOT_0_AXI_rlast(ps8_0_axi_periph_M00_AXI_RLAST),
        .SLOT_0_AXI_rready(ps8_0_axi_periph_M00_AXI_RREADY),
        .SLOT_0_AXI_rresp(ps8_0_axi_periph_M00_AXI_RRESP),
        .SLOT_0_AXI_rvalid(ps8_0_axi_periph_M00_AXI_RVALID),
        .SLOT_0_AXI_wdata(ps8_0_axi_periph_M00_AXI_WDATA),
        .SLOT_0_AXI_wlast(ps8_0_axi_periph_M00_AXI_WLAST),
        .SLOT_0_AXI_wready(ps8_0_axi_periph_M00_AXI_WREADY),
        .SLOT_0_AXI_wstrb(ps8_0_axi_periph_M00_AXI_WSTRB),
        .SLOT_0_AXI_wvalid(ps8_0_axi_periph_M00_AXI_WVALID),
        .clk(zynq_ultra_ps_e_0_pl_clk0),
        .resetn(rst_ps8_0_99M_peripheral_aresetn));
  design_1_util_reduced_logic_0_0 util_reduced_logic_0
       (.Op1(c_counter_binary_0_Q),
        .Res(util_reduced_logic_0_Res));
  design_1_util_vector_logic_0_0 util_vector_logic_0
       (.Op1(rst_ps8_0_99M_peripheral_aresetn),
        .Res(util_vector_logic_0_Res));
  design_1_util_vector_logic_1_0 util_vector_logic_1
       (.Op1(master_custom_v1_0_M_0_rvalid),
        .Op2(master_custom_v1_0_M_0_rready),
        .Res(util_vector_logic_1_Res));
  design_1_util_vector_logic_2_0 util_vector_logic_2
       (.Op1(util_reduced_logic_0_Res),
        .Res(util_vector_logic_2_Res));
  design_1_util_vector_logic_0_1 util_vector_logic_3
       (.Op1(rst_ps8_0_99M_peripheral_aresetn),
        .Res(util_vector_logic_0_Res_1));
  design_1_util_vector_logic_4_0 util_vector_logic_4
       (.Op1(custom_slave_v1_0_S0_0_wvalid),
        .Op2(custom_slave_v1_0_S0_0_wready));
  design_1_zynq_ultra_ps_e_0_0 zynq_ultra_ps_e_0
       (.maxigp2_araddr(zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_ARADDR),
        .maxigp2_arburst(zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_ARBURST),
        .maxigp2_arcache(zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_ARCACHE),
        .maxigp2_arid(zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_ARID),
        .maxigp2_arlen(zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_ARLEN),
        .maxigp2_arlock(zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_ARLOCK),
        .maxigp2_arprot(zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_ARPROT),
        .maxigp2_arqos(zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_ARQOS),
        .maxigp2_arready(zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_ARREADY),
        .maxigp2_arsize(zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_ARSIZE),
        .maxigp2_aruser(zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_ARUSER),
        .maxigp2_arvalid(zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_ARVALID),
        .maxigp2_awaddr(zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_AWADDR),
        .maxigp2_awburst(zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_AWBURST),
        .maxigp2_awcache(zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_AWCACHE),
        .maxigp2_awid(zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_AWID),
        .maxigp2_awlen(zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_AWLEN),
        .maxigp2_awlock(zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_AWLOCK),
        .maxigp2_awprot(zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_AWPROT),
        .maxigp2_awqos(zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_AWQOS),
        .maxigp2_awready(zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_AWREADY),
        .maxigp2_awsize(zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_AWSIZE),
        .maxigp2_awuser(zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_AWUSER),
        .maxigp2_awvalid(zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_AWVALID),
        .maxigp2_bid(zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_BID),
        .maxigp2_bready(zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_BREADY),
        .maxigp2_bresp(zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_BRESP),
        .maxigp2_bvalid(zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_BVALID),
        .maxigp2_rdata(zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_RDATA),
        .maxigp2_rid(zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_RID),
        .maxigp2_rlast(zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_RLAST),
        .maxigp2_rready(zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_RREADY),
        .maxigp2_rresp(zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_RRESP),
        .maxigp2_rvalid(zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_RVALID),
        .maxigp2_wdata(zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_WDATA),
        .maxigp2_wlast(zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_WLAST),
        .maxigp2_wready(zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_WREADY),
        .maxigp2_wstrb(zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_WSTRB),
        .maxigp2_wvalid(zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_WVALID),
        .maxihpm0_lpd_aclk(zynq_ultra_ps_e_0_pl_clk0),
        .pl_clk0(zynq_ultra_ps_e_0_pl_clk0),
        .pl_ps_irq0(1'b0),
        .pl_resetn0(zynq_ultra_ps_e_0_pl_resetn0),
        .saxigp3_araddr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,driver_ctrl_M00_AXI_ARADDR}),
        .saxigp3_arburst(driver_ctrl_M00_AXI_ARBURST),
        .saxigp3_arcache(driver_ctrl_M00_AXI_ARCACHE),
        .saxigp3_arid({1'b0,1'b0,1'b0,1'b0,1'b0,driver_ctrl_M00_AXI_ARID}),
        .saxigp3_arlen(driver_ctrl_M00_AXI_ARLEN),
        .saxigp3_arlock(driver_ctrl_M00_AXI_ARLOCK),
        .saxigp3_arprot(driver_ctrl_M00_AXI_ARPROT),
        .saxigp3_arqos(driver_ctrl_M00_AXI_ARQOS),
        .saxigp3_arready(driver_ctrl_M00_AXI_ARREADY),
        .saxigp3_arsize(driver_ctrl_M00_AXI_ARSIZE),
        .saxigp3_aruser(driver_ctrl_M00_AXI_ARUSER),
        .saxigp3_arvalid(driver_ctrl_M00_AXI_ARVALID),
        .saxigp3_awaddr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,driver_ctrl_M00_AXI_AWADDR}),
        .saxigp3_awburst(driver_ctrl_M00_AXI_AWBURST),
        .saxigp3_awcache(driver_ctrl_M00_AXI_AWCACHE),
        .saxigp3_awid({1'b0,1'b0,1'b0,1'b0,1'b0,driver_ctrl_M00_AXI_AWID}),
        .saxigp3_awlen(driver_ctrl_M00_AXI_AWLEN),
        .saxigp3_awlock(driver_ctrl_M00_AXI_AWLOCK),
        .saxigp3_awprot(driver_ctrl_M00_AXI_AWPROT),
        .saxigp3_awqos(driver_ctrl_M00_AXI_AWQOS),
        .saxigp3_awready(driver_ctrl_M00_AXI_AWREADY),
        .saxigp3_awsize(driver_ctrl_M00_AXI_AWSIZE),
        .saxigp3_awuser(driver_ctrl_M00_AXI_AWUSER),
        .saxigp3_awvalid(driver_ctrl_M00_AXI_AWVALID),
        .saxigp3_bid(driver_ctrl_M00_AXI_BID),
        .saxigp3_bready(driver_ctrl_M00_AXI_BREADY),
        .saxigp3_bresp(driver_ctrl_M00_AXI_BRESP),
        .saxigp3_bvalid(driver_ctrl_M00_AXI_BVALID),
        .saxigp3_rdata(driver_ctrl_M00_AXI_RDATA),
        .saxigp3_rid(driver_ctrl_M00_AXI_RID),
        .saxigp3_rlast(driver_ctrl_M00_AXI_RLAST),
        .saxigp3_rready(driver_ctrl_M00_AXI_RREADY),
        .saxigp3_rresp(driver_ctrl_M00_AXI_RRESP),
        .saxigp3_rvalid(driver_ctrl_M00_AXI_RVALID),
        .saxigp3_wdata(driver_ctrl_M00_AXI_WDATA),
        .saxigp3_wlast(driver_ctrl_M00_AXI_WLAST),
        .saxigp3_wready(driver_ctrl_M00_AXI_WREADY),
        .saxigp3_wstrb(driver_ctrl_M00_AXI_WSTRB),
        .saxigp3_wvalid(driver_ctrl_M00_AXI_WVALID),
        .saxihp1_fpd_aclk(zynq_ultra_ps_e_0_pl_clk0));
endmodule

module design_1_ps8_0_axi_periph_0
   (ACLK,
    ARESETN,
    M00_ACLK,
    M00_ARESETN,
    M00_AXI_araddr,
    M00_AXI_arburst,
    M00_AXI_arcache,
    M00_AXI_arid,
    M00_AXI_arlen,
    M00_AXI_arlock,
    M00_AXI_arprot,
    M00_AXI_arqos,
    M00_AXI_arready,
    M00_AXI_arsize,
    M00_AXI_aruser,
    M00_AXI_arvalid,
    M00_AXI_awaddr,
    M00_AXI_awburst,
    M00_AXI_awcache,
    M00_AXI_awid,
    M00_AXI_awlen,
    M00_AXI_awlock,
    M00_AXI_awprot,
    M00_AXI_awqos,
    M00_AXI_awready,
    M00_AXI_awsize,
    M00_AXI_awuser,
    M00_AXI_awvalid,
    M00_AXI_bid,
    M00_AXI_bready,
    M00_AXI_bresp,
    M00_AXI_bvalid,
    M00_AXI_rdata,
    M00_AXI_rid,
    M00_AXI_rlast,
    M00_AXI_rready,
    M00_AXI_rresp,
    M00_AXI_rvalid,
    M00_AXI_wdata,
    M00_AXI_wlast,
    M00_AXI_wready,
    M00_AXI_wstrb,
    M00_AXI_wvalid,
    S00_ACLK,
    S00_ARESETN,
    S00_AXI_araddr,
    S00_AXI_arburst,
    S00_AXI_arcache,
    S00_AXI_arid,
    S00_AXI_arlen,
    S00_AXI_arlock,
    S00_AXI_arprot,
    S00_AXI_arqos,
    S00_AXI_arready,
    S00_AXI_arsize,
    S00_AXI_aruser,
    S00_AXI_arvalid,
    S00_AXI_awaddr,
    S00_AXI_awburst,
    S00_AXI_awcache,
    S00_AXI_awid,
    S00_AXI_awlen,
    S00_AXI_awlock,
    S00_AXI_awprot,
    S00_AXI_awqos,
    S00_AXI_awready,
    S00_AXI_awsize,
    S00_AXI_awuser,
    S00_AXI_awvalid,
    S00_AXI_bid,
    S00_AXI_bready,
    S00_AXI_bresp,
    S00_AXI_bvalid,
    S00_AXI_rdata,
    S00_AXI_rid,
    S00_AXI_rlast,
    S00_AXI_rready,
    S00_AXI_rresp,
    S00_AXI_rvalid,
    S00_AXI_wdata,
    S00_AXI_wlast,
    S00_AXI_wready,
    S00_AXI_wstrb,
    S00_AXI_wvalid);
  input ACLK;
  input ARESETN;
  input M00_ACLK;
  input M00_ARESETN;
  output [39:0]M00_AXI_araddr;
  output [1:0]M00_AXI_arburst;
  output [3:0]M00_AXI_arcache;
  output [15:0]M00_AXI_arid;
  output [7:0]M00_AXI_arlen;
  output [0:0]M00_AXI_arlock;
  output [2:0]M00_AXI_arprot;
  output [3:0]M00_AXI_arqos;
  input M00_AXI_arready;
  output [2:0]M00_AXI_arsize;
  output [15:0]M00_AXI_aruser;
  output M00_AXI_arvalid;
  output [39:0]M00_AXI_awaddr;
  output [1:0]M00_AXI_awburst;
  output [3:0]M00_AXI_awcache;
  output [15:0]M00_AXI_awid;
  output [7:0]M00_AXI_awlen;
  output [0:0]M00_AXI_awlock;
  output [2:0]M00_AXI_awprot;
  output [3:0]M00_AXI_awqos;
  input M00_AXI_awready;
  output [2:0]M00_AXI_awsize;
  output [15:0]M00_AXI_awuser;
  output M00_AXI_awvalid;
  input [15:0]M00_AXI_bid;
  output M00_AXI_bready;
  input [1:0]M00_AXI_bresp;
  input M00_AXI_bvalid;
  input [31:0]M00_AXI_rdata;
  input [15:0]M00_AXI_rid;
  input M00_AXI_rlast;
  output M00_AXI_rready;
  input [1:0]M00_AXI_rresp;
  input M00_AXI_rvalid;
  output [31:0]M00_AXI_wdata;
  output M00_AXI_wlast;
  input M00_AXI_wready;
  output [3:0]M00_AXI_wstrb;
  output M00_AXI_wvalid;
  input S00_ACLK;
  input S00_ARESETN;
  input [39:0]S00_AXI_araddr;
  input [1:0]S00_AXI_arburst;
  input [3:0]S00_AXI_arcache;
  input [15:0]S00_AXI_arid;
  input [7:0]S00_AXI_arlen;
  input [0:0]S00_AXI_arlock;
  input [2:0]S00_AXI_arprot;
  input [3:0]S00_AXI_arqos;
  output S00_AXI_arready;
  input [2:0]S00_AXI_arsize;
  input [15:0]S00_AXI_aruser;
  input S00_AXI_arvalid;
  input [39:0]S00_AXI_awaddr;
  input [1:0]S00_AXI_awburst;
  input [3:0]S00_AXI_awcache;
  input [15:0]S00_AXI_awid;
  input [7:0]S00_AXI_awlen;
  input [0:0]S00_AXI_awlock;
  input [2:0]S00_AXI_awprot;
  input [3:0]S00_AXI_awqos;
  output S00_AXI_awready;
  input [2:0]S00_AXI_awsize;
  input [15:0]S00_AXI_awuser;
  input S00_AXI_awvalid;
  output [15:0]S00_AXI_bid;
  input S00_AXI_bready;
  output [1:0]S00_AXI_bresp;
  output S00_AXI_bvalid;
  output [31:0]S00_AXI_rdata;
  output [15:0]S00_AXI_rid;
  output S00_AXI_rlast;
  input S00_AXI_rready;
  output [1:0]S00_AXI_rresp;
  output S00_AXI_rvalid;
  input [31:0]S00_AXI_wdata;
  input S00_AXI_wlast;
  output S00_AXI_wready;
  input [3:0]S00_AXI_wstrb;
  input S00_AXI_wvalid;

  wire S00_ACLK_1;
  wire S00_ARESETN_1;
  wire ps8_0_axi_periph_ACLK_net;
  wire ps8_0_axi_periph_ARESETN_net;
  wire [39:0]ps8_0_axi_periph_to_s00_couplers_ARADDR;
  wire [1:0]ps8_0_axi_periph_to_s00_couplers_ARBURST;
  wire [3:0]ps8_0_axi_periph_to_s00_couplers_ARCACHE;
  wire [15:0]ps8_0_axi_periph_to_s00_couplers_ARID;
  wire [7:0]ps8_0_axi_periph_to_s00_couplers_ARLEN;
  wire [0:0]ps8_0_axi_periph_to_s00_couplers_ARLOCK;
  wire [2:0]ps8_0_axi_periph_to_s00_couplers_ARPROT;
  wire [3:0]ps8_0_axi_periph_to_s00_couplers_ARQOS;
  wire ps8_0_axi_periph_to_s00_couplers_ARREADY;
  wire [2:0]ps8_0_axi_periph_to_s00_couplers_ARSIZE;
  wire [15:0]ps8_0_axi_periph_to_s00_couplers_ARUSER;
  wire ps8_0_axi_periph_to_s00_couplers_ARVALID;
  wire [39:0]ps8_0_axi_periph_to_s00_couplers_AWADDR;
  wire [1:0]ps8_0_axi_periph_to_s00_couplers_AWBURST;
  wire [3:0]ps8_0_axi_periph_to_s00_couplers_AWCACHE;
  wire [15:0]ps8_0_axi_periph_to_s00_couplers_AWID;
  wire [7:0]ps8_0_axi_periph_to_s00_couplers_AWLEN;
  wire [0:0]ps8_0_axi_periph_to_s00_couplers_AWLOCK;
  wire [2:0]ps8_0_axi_periph_to_s00_couplers_AWPROT;
  wire [3:0]ps8_0_axi_periph_to_s00_couplers_AWQOS;
  wire ps8_0_axi_periph_to_s00_couplers_AWREADY;
  wire [2:0]ps8_0_axi_periph_to_s00_couplers_AWSIZE;
  wire [15:0]ps8_0_axi_periph_to_s00_couplers_AWUSER;
  wire ps8_0_axi_periph_to_s00_couplers_AWVALID;
  wire [15:0]ps8_0_axi_periph_to_s00_couplers_BID;
  wire ps8_0_axi_periph_to_s00_couplers_BREADY;
  wire [1:0]ps8_0_axi_periph_to_s00_couplers_BRESP;
  wire ps8_0_axi_periph_to_s00_couplers_BVALID;
  wire [31:0]ps8_0_axi_periph_to_s00_couplers_RDATA;
  wire [15:0]ps8_0_axi_periph_to_s00_couplers_RID;
  wire ps8_0_axi_periph_to_s00_couplers_RLAST;
  wire ps8_0_axi_periph_to_s00_couplers_RREADY;
  wire [1:0]ps8_0_axi_periph_to_s00_couplers_RRESP;
  wire ps8_0_axi_periph_to_s00_couplers_RVALID;
  wire [31:0]ps8_0_axi_periph_to_s00_couplers_WDATA;
  wire ps8_0_axi_periph_to_s00_couplers_WLAST;
  wire ps8_0_axi_periph_to_s00_couplers_WREADY;
  wire [3:0]ps8_0_axi_periph_to_s00_couplers_WSTRB;
  wire ps8_0_axi_periph_to_s00_couplers_WVALID;
  wire [39:0]s00_couplers_to_ps8_0_axi_periph_ARADDR;
  wire [1:0]s00_couplers_to_ps8_0_axi_periph_ARBURST;
  wire [3:0]s00_couplers_to_ps8_0_axi_periph_ARCACHE;
  wire [15:0]s00_couplers_to_ps8_0_axi_periph_ARID;
  wire [7:0]s00_couplers_to_ps8_0_axi_periph_ARLEN;
  wire [0:0]s00_couplers_to_ps8_0_axi_periph_ARLOCK;
  wire [2:0]s00_couplers_to_ps8_0_axi_periph_ARPROT;
  wire [3:0]s00_couplers_to_ps8_0_axi_periph_ARQOS;
  wire s00_couplers_to_ps8_0_axi_periph_ARREADY;
  wire [2:0]s00_couplers_to_ps8_0_axi_periph_ARSIZE;
  wire [15:0]s00_couplers_to_ps8_0_axi_periph_ARUSER;
  wire s00_couplers_to_ps8_0_axi_periph_ARVALID;
  wire [39:0]s00_couplers_to_ps8_0_axi_periph_AWADDR;
  wire [1:0]s00_couplers_to_ps8_0_axi_periph_AWBURST;
  wire [3:0]s00_couplers_to_ps8_0_axi_periph_AWCACHE;
  wire [15:0]s00_couplers_to_ps8_0_axi_periph_AWID;
  wire [7:0]s00_couplers_to_ps8_0_axi_periph_AWLEN;
  wire [0:0]s00_couplers_to_ps8_0_axi_periph_AWLOCK;
  wire [2:0]s00_couplers_to_ps8_0_axi_periph_AWPROT;
  wire [3:0]s00_couplers_to_ps8_0_axi_periph_AWQOS;
  wire s00_couplers_to_ps8_0_axi_periph_AWREADY;
  wire [2:0]s00_couplers_to_ps8_0_axi_periph_AWSIZE;
  wire [15:0]s00_couplers_to_ps8_0_axi_periph_AWUSER;
  wire s00_couplers_to_ps8_0_axi_periph_AWVALID;
  wire [15:0]s00_couplers_to_ps8_0_axi_periph_BID;
  wire s00_couplers_to_ps8_0_axi_periph_BREADY;
  wire [1:0]s00_couplers_to_ps8_0_axi_periph_BRESP;
  wire s00_couplers_to_ps8_0_axi_periph_BVALID;
  wire [31:0]s00_couplers_to_ps8_0_axi_periph_RDATA;
  wire [15:0]s00_couplers_to_ps8_0_axi_periph_RID;
  wire s00_couplers_to_ps8_0_axi_periph_RLAST;
  wire s00_couplers_to_ps8_0_axi_periph_RREADY;
  wire [1:0]s00_couplers_to_ps8_0_axi_periph_RRESP;
  wire s00_couplers_to_ps8_0_axi_periph_RVALID;
  wire [31:0]s00_couplers_to_ps8_0_axi_periph_WDATA;
  wire s00_couplers_to_ps8_0_axi_periph_WLAST;
  wire s00_couplers_to_ps8_0_axi_periph_WREADY;
  wire [3:0]s00_couplers_to_ps8_0_axi_periph_WSTRB;
  wire s00_couplers_to_ps8_0_axi_periph_WVALID;

  assign M00_AXI_araddr[39:0] = s00_couplers_to_ps8_0_axi_periph_ARADDR;
  assign M00_AXI_arburst[1:0] = s00_couplers_to_ps8_0_axi_periph_ARBURST;
  assign M00_AXI_arcache[3:0] = s00_couplers_to_ps8_0_axi_periph_ARCACHE;
  assign M00_AXI_arid[15:0] = s00_couplers_to_ps8_0_axi_periph_ARID;
  assign M00_AXI_arlen[7:0] = s00_couplers_to_ps8_0_axi_periph_ARLEN;
  assign M00_AXI_arlock[0] = s00_couplers_to_ps8_0_axi_periph_ARLOCK;
  assign M00_AXI_arprot[2:0] = s00_couplers_to_ps8_0_axi_periph_ARPROT;
  assign M00_AXI_arqos[3:0] = s00_couplers_to_ps8_0_axi_periph_ARQOS;
  assign M00_AXI_arsize[2:0] = s00_couplers_to_ps8_0_axi_periph_ARSIZE;
  assign M00_AXI_aruser[15:0] = s00_couplers_to_ps8_0_axi_periph_ARUSER;
  assign M00_AXI_arvalid = s00_couplers_to_ps8_0_axi_periph_ARVALID;
  assign M00_AXI_awaddr[39:0] = s00_couplers_to_ps8_0_axi_periph_AWADDR;
  assign M00_AXI_awburst[1:0] = s00_couplers_to_ps8_0_axi_periph_AWBURST;
  assign M00_AXI_awcache[3:0] = s00_couplers_to_ps8_0_axi_periph_AWCACHE;
  assign M00_AXI_awid[15:0] = s00_couplers_to_ps8_0_axi_periph_AWID;
  assign M00_AXI_awlen[7:0] = s00_couplers_to_ps8_0_axi_periph_AWLEN;
  assign M00_AXI_awlock[0] = s00_couplers_to_ps8_0_axi_periph_AWLOCK;
  assign M00_AXI_awprot[2:0] = s00_couplers_to_ps8_0_axi_periph_AWPROT;
  assign M00_AXI_awqos[3:0] = s00_couplers_to_ps8_0_axi_periph_AWQOS;
  assign M00_AXI_awsize[2:0] = s00_couplers_to_ps8_0_axi_periph_AWSIZE;
  assign M00_AXI_awuser[15:0] = s00_couplers_to_ps8_0_axi_periph_AWUSER;
  assign M00_AXI_awvalid = s00_couplers_to_ps8_0_axi_periph_AWVALID;
  assign M00_AXI_bready = s00_couplers_to_ps8_0_axi_periph_BREADY;
  assign M00_AXI_rready = s00_couplers_to_ps8_0_axi_periph_RREADY;
  assign M00_AXI_wdata[31:0] = s00_couplers_to_ps8_0_axi_periph_WDATA;
  assign M00_AXI_wlast = s00_couplers_to_ps8_0_axi_periph_WLAST;
  assign M00_AXI_wstrb[3:0] = s00_couplers_to_ps8_0_axi_periph_WSTRB;
  assign M00_AXI_wvalid = s00_couplers_to_ps8_0_axi_periph_WVALID;
  assign S00_ACLK_1 = S00_ACLK;
  assign S00_ARESETN_1 = S00_ARESETN;
  assign S00_AXI_arready = ps8_0_axi_periph_to_s00_couplers_ARREADY;
  assign S00_AXI_awready = ps8_0_axi_periph_to_s00_couplers_AWREADY;
  assign S00_AXI_bid[15:0] = ps8_0_axi_periph_to_s00_couplers_BID;
  assign S00_AXI_bresp[1:0] = ps8_0_axi_periph_to_s00_couplers_BRESP;
  assign S00_AXI_bvalid = ps8_0_axi_periph_to_s00_couplers_BVALID;
  assign S00_AXI_rdata[31:0] = ps8_0_axi_periph_to_s00_couplers_RDATA;
  assign S00_AXI_rid[15:0] = ps8_0_axi_periph_to_s00_couplers_RID;
  assign S00_AXI_rlast = ps8_0_axi_periph_to_s00_couplers_RLAST;
  assign S00_AXI_rresp[1:0] = ps8_0_axi_periph_to_s00_couplers_RRESP;
  assign S00_AXI_rvalid = ps8_0_axi_periph_to_s00_couplers_RVALID;
  assign S00_AXI_wready = ps8_0_axi_periph_to_s00_couplers_WREADY;
  assign ps8_0_axi_periph_ACLK_net = M00_ACLK;
  assign ps8_0_axi_periph_ARESETN_net = M00_ARESETN;
  assign ps8_0_axi_periph_to_s00_couplers_ARADDR = S00_AXI_araddr[39:0];
  assign ps8_0_axi_periph_to_s00_couplers_ARBURST = S00_AXI_arburst[1:0];
  assign ps8_0_axi_periph_to_s00_couplers_ARCACHE = S00_AXI_arcache[3:0];
  assign ps8_0_axi_periph_to_s00_couplers_ARID = S00_AXI_arid[15:0];
  assign ps8_0_axi_periph_to_s00_couplers_ARLEN = S00_AXI_arlen[7:0];
  assign ps8_0_axi_periph_to_s00_couplers_ARLOCK = S00_AXI_arlock[0];
  assign ps8_0_axi_periph_to_s00_couplers_ARPROT = S00_AXI_arprot[2:0];
  assign ps8_0_axi_periph_to_s00_couplers_ARQOS = S00_AXI_arqos[3:0];
  assign ps8_0_axi_periph_to_s00_couplers_ARSIZE = S00_AXI_arsize[2:0];
  assign ps8_0_axi_periph_to_s00_couplers_ARUSER = S00_AXI_aruser[15:0];
  assign ps8_0_axi_periph_to_s00_couplers_ARVALID = S00_AXI_arvalid;
  assign ps8_0_axi_periph_to_s00_couplers_AWADDR = S00_AXI_awaddr[39:0];
  assign ps8_0_axi_periph_to_s00_couplers_AWBURST = S00_AXI_awburst[1:0];
  assign ps8_0_axi_periph_to_s00_couplers_AWCACHE = S00_AXI_awcache[3:0];
  assign ps8_0_axi_periph_to_s00_couplers_AWID = S00_AXI_awid[15:0];
  assign ps8_0_axi_periph_to_s00_couplers_AWLEN = S00_AXI_awlen[7:0];
  assign ps8_0_axi_periph_to_s00_couplers_AWLOCK = S00_AXI_awlock[0];
  assign ps8_0_axi_periph_to_s00_couplers_AWPROT = S00_AXI_awprot[2:0];
  assign ps8_0_axi_periph_to_s00_couplers_AWQOS = S00_AXI_awqos[3:0];
  assign ps8_0_axi_periph_to_s00_couplers_AWSIZE = S00_AXI_awsize[2:0];
  assign ps8_0_axi_periph_to_s00_couplers_AWUSER = S00_AXI_awuser[15:0];
  assign ps8_0_axi_periph_to_s00_couplers_AWVALID = S00_AXI_awvalid;
  assign ps8_0_axi_periph_to_s00_couplers_BREADY = S00_AXI_bready;
  assign ps8_0_axi_periph_to_s00_couplers_RREADY = S00_AXI_rready;
  assign ps8_0_axi_periph_to_s00_couplers_WDATA = S00_AXI_wdata[31:0];
  assign ps8_0_axi_periph_to_s00_couplers_WLAST = S00_AXI_wlast;
  assign ps8_0_axi_periph_to_s00_couplers_WSTRB = S00_AXI_wstrb[3:0];
  assign ps8_0_axi_periph_to_s00_couplers_WVALID = S00_AXI_wvalid;
  assign s00_couplers_to_ps8_0_axi_periph_ARREADY = M00_AXI_arready;
  assign s00_couplers_to_ps8_0_axi_periph_AWREADY = M00_AXI_awready;
  assign s00_couplers_to_ps8_0_axi_periph_BID = M00_AXI_bid[15:0];
  assign s00_couplers_to_ps8_0_axi_periph_BRESP = M00_AXI_bresp[1:0];
  assign s00_couplers_to_ps8_0_axi_periph_BVALID = M00_AXI_bvalid;
  assign s00_couplers_to_ps8_0_axi_periph_RDATA = M00_AXI_rdata[31:0];
  assign s00_couplers_to_ps8_0_axi_periph_RID = M00_AXI_rid[15:0];
  assign s00_couplers_to_ps8_0_axi_periph_RLAST = M00_AXI_rlast;
  assign s00_couplers_to_ps8_0_axi_periph_RRESP = M00_AXI_rresp[1:0];
  assign s00_couplers_to_ps8_0_axi_periph_RVALID = M00_AXI_rvalid;
  assign s00_couplers_to_ps8_0_axi_periph_WREADY = M00_AXI_wready;
  s00_couplers_imp_1A7ZMW4 s00_couplers
       (.M_ACLK(ps8_0_axi_periph_ACLK_net),
        .M_ARESETN(ps8_0_axi_periph_ARESETN_net),
        .M_AXI_araddr(s00_couplers_to_ps8_0_axi_periph_ARADDR),
        .M_AXI_arburst(s00_couplers_to_ps8_0_axi_periph_ARBURST),
        .M_AXI_arcache(s00_couplers_to_ps8_0_axi_periph_ARCACHE),
        .M_AXI_arid(s00_couplers_to_ps8_0_axi_periph_ARID),
        .M_AXI_arlen(s00_couplers_to_ps8_0_axi_periph_ARLEN),
        .M_AXI_arlock(s00_couplers_to_ps8_0_axi_periph_ARLOCK),
        .M_AXI_arprot(s00_couplers_to_ps8_0_axi_periph_ARPROT),
        .M_AXI_arqos(s00_couplers_to_ps8_0_axi_periph_ARQOS),
        .M_AXI_arready(s00_couplers_to_ps8_0_axi_periph_ARREADY),
        .M_AXI_arsize(s00_couplers_to_ps8_0_axi_periph_ARSIZE),
        .M_AXI_aruser(s00_couplers_to_ps8_0_axi_periph_ARUSER),
        .M_AXI_arvalid(s00_couplers_to_ps8_0_axi_periph_ARVALID),
        .M_AXI_awaddr(s00_couplers_to_ps8_0_axi_periph_AWADDR),
        .M_AXI_awburst(s00_couplers_to_ps8_0_axi_periph_AWBURST),
        .M_AXI_awcache(s00_couplers_to_ps8_0_axi_periph_AWCACHE),
        .M_AXI_awid(s00_couplers_to_ps8_0_axi_periph_AWID),
        .M_AXI_awlen(s00_couplers_to_ps8_0_axi_periph_AWLEN),
        .M_AXI_awlock(s00_couplers_to_ps8_0_axi_periph_AWLOCK),
        .M_AXI_awprot(s00_couplers_to_ps8_0_axi_periph_AWPROT),
        .M_AXI_awqos(s00_couplers_to_ps8_0_axi_periph_AWQOS),
        .M_AXI_awready(s00_couplers_to_ps8_0_axi_periph_AWREADY),
        .M_AXI_awsize(s00_couplers_to_ps8_0_axi_periph_AWSIZE),
        .M_AXI_awuser(s00_couplers_to_ps8_0_axi_periph_AWUSER),
        .M_AXI_awvalid(s00_couplers_to_ps8_0_axi_periph_AWVALID),
        .M_AXI_bid(s00_couplers_to_ps8_0_axi_periph_BID),
        .M_AXI_bready(s00_couplers_to_ps8_0_axi_periph_BREADY),
        .M_AXI_bresp(s00_couplers_to_ps8_0_axi_periph_BRESP),
        .M_AXI_bvalid(s00_couplers_to_ps8_0_axi_periph_BVALID),
        .M_AXI_rdata(s00_couplers_to_ps8_0_axi_periph_RDATA),
        .M_AXI_rid(s00_couplers_to_ps8_0_axi_periph_RID),
        .M_AXI_rlast(s00_couplers_to_ps8_0_axi_periph_RLAST),
        .M_AXI_rready(s00_couplers_to_ps8_0_axi_periph_RREADY),
        .M_AXI_rresp(s00_couplers_to_ps8_0_axi_periph_RRESP),
        .M_AXI_rvalid(s00_couplers_to_ps8_0_axi_periph_RVALID),
        .M_AXI_wdata(s00_couplers_to_ps8_0_axi_periph_WDATA),
        .M_AXI_wlast(s00_couplers_to_ps8_0_axi_periph_WLAST),
        .M_AXI_wready(s00_couplers_to_ps8_0_axi_periph_WREADY),
        .M_AXI_wstrb(s00_couplers_to_ps8_0_axi_periph_WSTRB),
        .M_AXI_wvalid(s00_couplers_to_ps8_0_axi_periph_WVALID),
        .S_ACLK(S00_ACLK_1),
        .S_ARESETN(S00_ARESETN_1),
        .S_AXI_araddr(ps8_0_axi_periph_to_s00_couplers_ARADDR),
        .S_AXI_arburst(ps8_0_axi_periph_to_s00_couplers_ARBURST),
        .S_AXI_arcache(ps8_0_axi_periph_to_s00_couplers_ARCACHE),
        .S_AXI_arid(ps8_0_axi_periph_to_s00_couplers_ARID),
        .S_AXI_arlen(ps8_0_axi_periph_to_s00_couplers_ARLEN),
        .S_AXI_arlock(ps8_0_axi_periph_to_s00_couplers_ARLOCK),
        .S_AXI_arprot(ps8_0_axi_periph_to_s00_couplers_ARPROT),
        .S_AXI_arqos(ps8_0_axi_periph_to_s00_couplers_ARQOS),
        .S_AXI_arready(ps8_0_axi_periph_to_s00_couplers_ARREADY),
        .S_AXI_arsize(ps8_0_axi_periph_to_s00_couplers_ARSIZE),
        .S_AXI_aruser(ps8_0_axi_periph_to_s00_couplers_ARUSER),
        .S_AXI_arvalid(ps8_0_axi_periph_to_s00_couplers_ARVALID),
        .S_AXI_awaddr(ps8_0_axi_periph_to_s00_couplers_AWADDR),
        .S_AXI_awburst(ps8_0_axi_periph_to_s00_couplers_AWBURST),
        .S_AXI_awcache(ps8_0_axi_periph_to_s00_couplers_AWCACHE),
        .S_AXI_awid(ps8_0_axi_periph_to_s00_couplers_AWID),
        .S_AXI_awlen(ps8_0_axi_periph_to_s00_couplers_AWLEN),
        .S_AXI_awlock(ps8_0_axi_periph_to_s00_couplers_AWLOCK),
        .S_AXI_awprot(ps8_0_axi_periph_to_s00_couplers_AWPROT),
        .S_AXI_awqos(ps8_0_axi_periph_to_s00_couplers_AWQOS),
        .S_AXI_awready(ps8_0_axi_periph_to_s00_couplers_AWREADY),
        .S_AXI_awsize(ps8_0_axi_periph_to_s00_couplers_AWSIZE),
        .S_AXI_awuser(ps8_0_axi_periph_to_s00_couplers_AWUSER),
        .S_AXI_awvalid(ps8_0_axi_periph_to_s00_couplers_AWVALID),
        .S_AXI_bid(ps8_0_axi_periph_to_s00_couplers_BID),
        .S_AXI_bready(ps8_0_axi_periph_to_s00_couplers_BREADY),
        .S_AXI_bresp(ps8_0_axi_periph_to_s00_couplers_BRESP),
        .S_AXI_bvalid(ps8_0_axi_periph_to_s00_couplers_BVALID),
        .S_AXI_rdata(ps8_0_axi_periph_to_s00_couplers_RDATA),
        .S_AXI_rid(ps8_0_axi_periph_to_s00_couplers_RID),
        .S_AXI_rlast(ps8_0_axi_periph_to_s00_couplers_RLAST),
        .S_AXI_rready(ps8_0_axi_periph_to_s00_couplers_RREADY),
        .S_AXI_rresp(ps8_0_axi_periph_to_s00_couplers_RRESP),
        .S_AXI_rvalid(ps8_0_axi_periph_to_s00_couplers_RVALID),
        .S_AXI_wdata(ps8_0_axi_periph_to_s00_couplers_WDATA),
        .S_AXI_wlast(ps8_0_axi_periph_to_s00_couplers_WLAST),
        .S_AXI_wready(ps8_0_axi_periph_to_s00_couplers_WREADY),
        .S_AXI_wstrb(ps8_0_axi_periph_to_s00_couplers_WSTRB),
        .S_AXI_wvalid(ps8_0_axi_periph_to_s00_couplers_WVALID));
endmodule

module s00_couplers_imp_1A7ZMW4
   (M_ACLK,
    M_ARESETN,
    M_AXI_araddr,
    M_AXI_arburst,
    M_AXI_arcache,
    M_AXI_arid,
    M_AXI_arlen,
    M_AXI_arlock,
    M_AXI_arprot,
    M_AXI_arqos,
    M_AXI_arready,
    M_AXI_arsize,
    M_AXI_aruser,
    M_AXI_arvalid,
    M_AXI_awaddr,
    M_AXI_awburst,
    M_AXI_awcache,
    M_AXI_awid,
    M_AXI_awlen,
    M_AXI_awlock,
    M_AXI_awprot,
    M_AXI_awqos,
    M_AXI_awready,
    M_AXI_awsize,
    M_AXI_awuser,
    M_AXI_awvalid,
    M_AXI_bid,
    M_AXI_bready,
    M_AXI_bresp,
    M_AXI_bvalid,
    M_AXI_rdata,
    M_AXI_rid,
    M_AXI_rlast,
    M_AXI_rready,
    M_AXI_rresp,
    M_AXI_rvalid,
    M_AXI_wdata,
    M_AXI_wlast,
    M_AXI_wready,
    M_AXI_wstrb,
    M_AXI_wvalid,
    S_ACLK,
    S_ARESETN,
    S_AXI_araddr,
    S_AXI_arburst,
    S_AXI_arcache,
    S_AXI_arid,
    S_AXI_arlen,
    S_AXI_arlock,
    S_AXI_arprot,
    S_AXI_arqos,
    S_AXI_arready,
    S_AXI_arsize,
    S_AXI_aruser,
    S_AXI_arvalid,
    S_AXI_awaddr,
    S_AXI_awburst,
    S_AXI_awcache,
    S_AXI_awid,
    S_AXI_awlen,
    S_AXI_awlock,
    S_AXI_awprot,
    S_AXI_awqos,
    S_AXI_awready,
    S_AXI_awsize,
    S_AXI_awuser,
    S_AXI_awvalid,
    S_AXI_bid,
    S_AXI_bready,
    S_AXI_bresp,
    S_AXI_bvalid,
    S_AXI_rdata,
    S_AXI_rid,
    S_AXI_rlast,
    S_AXI_rready,
    S_AXI_rresp,
    S_AXI_rvalid,
    S_AXI_wdata,
    S_AXI_wlast,
    S_AXI_wready,
    S_AXI_wstrb,
    S_AXI_wvalid);
  input M_ACLK;
  input M_ARESETN;
  output [39:0]M_AXI_araddr;
  output [1:0]M_AXI_arburst;
  output [3:0]M_AXI_arcache;
  output [15:0]M_AXI_arid;
  output [7:0]M_AXI_arlen;
  output [0:0]M_AXI_arlock;
  output [2:0]M_AXI_arprot;
  output [3:0]M_AXI_arqos;
  input M_AXI_arready;
  output [2:0]M_AXI_arsize;
  output [15:0]M_AXI_aruser;
  output M_AXI_arvalid;
  output [39:0]M_AXI_awaddr;
  output [1:0]M_AXI_awburst;
  output [3:0]M_AXI_awcache;
  output [15:0]M_AXI_awid;
  output [7:0]M_AXI_awlen;
  output [0:0]M_AXI_awlock;
  output [2:0]M_AXI_awprot;
  output [3:0]M_AXI_awqos;
  input M_AXI_awready;
  output [2:0]M_AXI_awsize;
  output [15:0]M_AXI_awuser;
  output M_AXI_awvalid;
  input [15:0]M_AXI_bid;
  output M_AXI_bready;
  input [1:0]M_AXI_bresp;
  input M_AXI_bvalid;
  input [31:0]M_AXI_rdata;
  input [15:0]M_AXI_rid;
  input M_AXI_rlast;
  output M_AXI_rready;
  input [1:0]M_AXI_rresp;
  input M_AXI_rvalid;
  output [31:0]M_AXI_wdata;
  output M_AXI_wlast;
  input M_AXI_wready;
  output [3:0]M_AXI_wstrb;
  output M_AXI_wvalid;
  input S_ACLK;
  input S_ARESETN;
  input [39:0]S_AXI_araddr;
  input [1:0]S_AXI_arburst;
  input [3:0]S_AXI_arcache;
  input [15:0]S_AXI_arid;
  input [7:0]S_AXI_arlen;
  input [0:0]S_AXI_arlock;
  input [2:0]S_AXI_arprot;
  input [3:0]S_AXI_arqos;
  output S_AXI_arready;
  input [2:0]S_AXI_arsize;
  input [15:0]S_AXI_aruser;
  input S_AXI_arvalid;
  input [39:0]S_AXI_awaddr;
  input [1:0]S_AXI_awburst;
  input [3:0]S_AXI_awcache;
  input [15:0]S_AXI_awid;
  input [7:0]S_AXI_awlen;
  input [0:0]S_AXI_awlock;
  input [2:0]S_AXI_awprot;
  input [3:0]S_AXI_awqos;
  output S_AXI_awready;
  input [2:0]S_AXI_awsize;
  input [15:0]S_AXI_awuser;
  input S_AXI_awvalid;
  output [15:0]S_AXI_bid;
  input S_AXI_bready;
  output [1:0]S_AXI_bresp;
  output S_AXI_bvalid;
  output [31:0]S_AXI_rdata;
  output [15:0]S_AXI_rid;
  output S_AXI_rlast;
  input S_AXI_rready;
  output [1:0]S_AXI_rresp;
  output S_AXI_rvalid;
  input [31:0]S_AXI_wdata;
  input S_AXI_wlast;
  output S_AXI_wready;
  input [3:0]S_AXI_wstrb;
  input S_AXI_wvalid;

  wire [39:0]s00_couplers_to_s00_couplers_ARADDR;
  wire [1:0]s00_couplers_to_s00_couplers_ARBURST;
  wire [3:0]s00_couplers_to_s00_couplers_ARCACHE;
  wire [15:0]s00_couplers_to_s00_couplers_ARID;
  wire [7:0]s00_couplers_to_s00_couplers_ARLEN;
  wire [0:0]s00_couplers_to_s00_couplers_ARLOCK;
  wire [2:0]s00_couplers_to_s00_couplers_ARPROT;
  wire [3:0]s00_couplers_to_s00_couplers_ARQOS;
  wire s00_couplers_to_s00_couplers_ARREADY;
  wire [2:0]s00_couplers_to_s00_couplers_ARSIZE;
  wire [15:0]s00_couplers_to_s00_couplers_ARUSER;
  wire s00_couplers_to_s00_couplers_ARVALID;
  wire [39:0]s00_couplers_to_s00_couplers_AWADDR;
  wire [1:0]s00_couplers_to_s00_couplers_AWBURST;
  wire [3:0]s00_couplers_to_s00_couplers_AWCACHE;
  wire [15:0]s00_couplers_to_s00_couplers_AWID;
  wire [7:0]s00_couplers_to_s00_couplers_AWLEN;
  wire [0:0]s00_couplers_to_s00_couplers_AWLOCK;
  wire [2:0]s00_couplers_to_s00_couplers_AWPROT;
  wire [3:0]s00_couplers_to_s00_couplers_AWQOS;
  wire s00_couplers_to_s00_couplers_AWREADY;
  wire [2:0]s00_couplers_to_s00_couplers_AWSIZE;
  wire [15:0]s00_couplers_to_s00_couplers_AWUSER;
  wire s00_couplers_to_s00_couplers_AWVALID;
  wire [15:0]s00_couplers_to_s00_couplers_BID;
  wire s00_couplers_to_s00_couplers_BREADY;
  wire [1:0]s00_couplers_to_s00_couplers_BRESP;
  wire s00_couplers_to_s00_couplers_BVALID;
  wire [31:0]s00_couplers_to_s00_couplers_RDATA;
  wire [15:0]s00_couplers_to_s00_couplers_RID;
  wire s00_couplers_to_s00_couplers_RLAST;
  wire s00_couplers_to_s00_couplers_RREADY;
  wire [1:0]s00_couplers_to_s00_couplers_RRESP;
  wire s00_couplers_to_s00_couplers_RVALID;
  wire [31:0]s00_couplers_to_s00_couplers_WDATA;
  wire s00_couplers_to_s00_couplers_WLAST;
  wire s00_couplers_to_s00_couplers_WREADY;
  wire [3:0]s00_couplers_to_s00_couplers_WSTRB;
  wire s00_couplers_to_s00_couplers_WVALID;

  assign M_AXI_araddr[39:0] = s00_couplers_to_s00_couplers_ARADDR;
  assign M_AXI_arburst[1:0] = s00_couplers_to_s00_couplers_ARBURST;
  assign M_AXI_arcache[3:0] = s00_couplers_to_s00_couplers_ARCACHE;
  assign M_AXI_arid[15:0] = s00_couplers_to_s00_couplers_ARID;
  assign M_AXI_arlen[7:0] = s00_couplers_to_s00_couplers_ARLEN;
  assign M_AXI_arlock[0] = s00_couplers_to_s00_couplers_ARLOCK;
  assign M_AXI_arprot[2:0] = s00_couplers_to_s00_couplers_ARPROT;
  assign M_AXI_arqos[3:0] = s00_couplers_to_s00_couplers_ARQOS;
  assign M_AXI_arsize[2:0] = s00_couplers_to_s00_couplers_ARSIZE;
  assign M_AXI_aruser[15:0] = s00_couplers_to_s00_couplers_ARUSER;
  assign M_AXI_arvalid = s00_couplers_to_s00_couplers_ARVALID;
  assign M_AXI_awaddr[39:0] = s00_couplers_to_s00_couplers_AWADDR;
  assign M_AXI_awburst[1:0] = s00_couplers_to_s00_couplers_AWBURST;
  assign M_AXI_awcache[3:0] = s00_couplers_to_s00_couplers_AWCACHE;
  assign M_AXI_awid[15:0] = s00_couplers_to_s00_couplers_AWID;
  assign M_AXI_awlen[7:0] = s00_couplers_to_s00_couplers_AWLEN;
  assign M_AXI_awlock[0] = s00_couplers_to_s00_couplers_AWLOCK;
  assign M_AXI_awprot[2:0] = s00_couplers_to_s00_couplers_AWPROT;
  assign M_AXI_awqos[3:0] = s00_couplers_to_s00_couplers_AWQOS;
  assign M_AXI_awsize[2:0] = s00_couplers_to_s00_couplers_AWSIZE;
  assign M_AXI_awuser[15:0] = s00_couplers_to_s00_couplers_AWUSER;
  assign M_AXI_awvalid = s00_couplers_to_s00_couplers_AWVALID;
  assign M_AXI_bready = s00_couplers_to_s00_couplers_BREADY;
  assign M_AXI_rready = s00_couplers_to_s00_couplers_RREADY;
  assign M_AXI_wdata[31:0] = s00_couplers_to_s00_couplers_WDATA;
  assign M_AXI_wlast = s00_couplers_to_s00_couplers_WLAST;
  assign M_AXI_wstrb[3:0] = s00_couplers_to_s00_couplers_WSTRB;
  assign M_AXI_wvalid = s00_couplers_to_s00_couplers_WVALID;
  assign S_AXI_arready = s00_couplers_to_s00_couplers_ARREADY;
  assign S_AXI_awready = s00_couplers_to_s00_couplers_AWREADY;
  assign S_AXI_bid[15:0] = s00_couplers_to_s00_couplers_BID;
  assign S_AXI_bresp[1:0] = s00_couplers_to_s00_couplers_BRESP;
  assign S_AXI_bvalid = s00_couplers_to_s00_couplers_BVALID;
  assign S_AXI_rdata[31:0] = s00_couplers_to_s00_couplers_RDATA;
  assign S_AXI_rid[15:0] = s00_couplers_to_s00_couplers_RID;
  assign S_AXI_rlast = s00_couplers_to_s00_couplers_RLAST;
  assign S_AXI_rresp[1:0] = s00_couplers_to_s00_couplers_RRESP;
  assign S_AXI_rvalid = s00_couplers_to_s00_couplers_RVALID;
  assign S_AXI_wready = s00_couplers_to_s00_couplers_WREADY;
  assign s00_couplers_to_s00_couplers_ARADDR = S_AXI_araddr[39:0];
  assign s00_couplers_to_s00_couplers_ARBURST = S_AXI_arburst[1:0];
  assign s00_couplers_to_s00_couplers_ARCACHE = S_AXI_arcache[3:0];
  assign s00_couplers_to_s00_couplers_ARID = S_AXI_arid[15:0];
  assign s00_couplers_to_s00_couplers_ARLEN = S_AXI_arlen[7:0];
  assign s00_couplers_to_s00_couplers_ARLOCK = S_AXI_arlock[0];
  assign s00_couplers_to_s00_couplers_ARPROT = S_AXI_arprot[2:0];
  assign s00_couplers_to_s00_couplers_ARQOS = S_AXI_arqos[3:0];
  assign s00_couplers_to_s00_couplers_ARREADY = M_AXI_arready;
  assign s00_couplers_to_s00_couplers_ARSIZE = S_AXI_arsize[2:0];
  assign s00_couplers_to_s00_couplers_ARUSER = S_AXI_aruser[15:0];
  assign s00_couplers_to_s00_couplers_ARVALID = S_AXI_arvalid;
  assign s00_couplers_to_s00_couplers_AWADDR = S_AXI_awaddr[39:0];
  assign s00_couplers_to_s00_couplers_AWBURST = S_AXI_awburst[1:0];
  assign s00_couplers_to_s00_couplers_AWCACHE = S_AXI_awcache[3:0];
  assign s00_couplers_to_s00_couplers_AWID = S_AXI_awid[15:0];
  assign s00_couplers_to_s00_couplers_AWLEN = S_AXI_awlen[7:0];
  assign s00_couplers_to_s00_couplers_AWLOCK = S_AXI_awlock[0];
  assign s00_couplers_to_s00_couplers_AWPROT = S_AXI_awprot[2:0];
  assign s00_couplers_to_s00_couplers_AWQOS = S_AXI_awqos[3:0];
  assign s00_couplers_to_s00_couplers_AWREADY = M_AXI_awready;
  assign s00_couplers_to_s00_couplers_AWSIZE = S_AXI_awsize[2:0];
  assign s00_couplers_to_s00_couplers_AWUSER = S_AXI_awuser[15:0];
  assign s00_couplers_to_s00_couplers_AWVALID = S_AXI_awvalid;
  assign s00_couplers_to_s00_couplers_BID = M_AXI_bid[15:0];
  assign s00_couplers_to_s00_couplers_BREADY = S_AXI_bready;
  assign s00_couplers_to_s00_couplers_BRESP = M_AXI_bresp[1:0];
  assign s00_couplers_to_s00_couplers_BVALID = M_AXI_bvalid;
  assign s00_couplers_to_s00_couplers_RDATA = M_AXI_rdata[31:0];
  assign s00_couplers_to_s00_couplers_RID = M_AXI_rid[15:0];
  assign s00_couplers_to_s00_couplers_RLAST = M_AXI_rlast;
  assign s00_couplers_to_s00_couplers_RREADY = S_AXI_rready;
  assign s00_couplers_to_s00_couplers_RRESP = M_AXI_rresp[1:0];
  assign s00_couplers_to_s00_couplers_RVALID = M_AXI_rvalid;
  assign s00_couplers_to_s00_couplers_WDATA = S_AXI_wdata[31:0];
  assign s00_couplers_to_s00_couplers_WLAST = S_AXI_wlast;
  assign s00_couplers_to_s00_couplers_WREADY = M_AXI_wready;
  assign s00_couplers_to_s00_couplers_WSTRB = S_AXI_wstrb[3:0];
  assign s00_couplers_to_s00_couplers_WVALID = S_AXI_wvalid;
endmodule
