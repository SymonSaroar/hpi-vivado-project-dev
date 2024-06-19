module design_top (
    output wire [191:0] vector_data
);

localparam mid_width = 1;
localparam sid_width = 1;

(* CONN_BUS_INFO = "M00_AXI_0 xilinx.com:interface:aximm:1.0 AXI4 ARADDR" *)  (* mark_debug = "true"  *) wire [39:0]        M00_AXI_0_araddr;
(* CONN_BUS_INFO = "M00_AXI_0 xilinx.com:interface:aximm:1.0 AXI4 ARBURST" *) (* mark_debug = "false"  *) wire [1:0]         M00_AXI_0_arburst;
(* CONN_BUS_INFO = "M00_AXI_0 xilinx.com:interface:aximm:1.0 AXI4 ARCACHE" *) (* mark_debug = "false"  *) wire [3:0]         M00_AXI_0_arcache;
(* CONN_BUS_INFO = "M00_AXI_0 xilinx.com:interface:aximm:1.0 AXI4 ARID" *)    (* mark_debug = "false"  *) wire [15:0]        M00_AXI_0_arid;
(* CONN_BUS_INFO = "M00_AXI_0 xilinx.com:interface:aximm:1.0 AXI4 ARLEN" *)   (* mark_debug = "false"  *) wire [7:0]         M00_AXI_0_arlen;
(* CONN_BUS_INFO = "M00_AXI_0 xilinx.com:interface:aximm:1.0 AXI4 ARLOCK" *)  (* mark_debug = "false"  *) wire               M00_AXI_0_arlock;
(* CONN_BUS_INFO = "M00_AXI_0 xilinx.com:interface:aximm:1.0 AXI4 ARPROT" *)  (* mark_debug = "false"  *) wire [2:0]         M00_AXI_0_arprot;
(* CONN_BUS_INFO = "M00_AXI_0 xilinx.com:interface:aximm:1.0 AXI4 ARQOS" *)   (* mark_debug = "false"  *) wire [3:0]         M00_AXI_0_arqos;
(* CONN_BUS_INFO = "M00_AXI_0 xilinx.com:interface:aximm:1.0 AXI4 ARREADY" *) (* mark_debug = "true"  *) wire               M00_AXI_0_arready;
(* CONN_BUS_INFO = "M00_AXI_0 xilinx.com:interface:aximm:1.0 AXI4 ARSIZE" *)  (* mark_debug = "false"  *) wire [2:0]         M00_AXI_0_arsize;
(* CONN_BUS_INFO = "M00_AXI_0 xilinx.com:interface:aximm:1.0 AXI4 ARUSER" *)  (* mark_debug = "false"  *) wire [15:0]        M00_AXI_0_aruser;
(* CONN_BUS_INFO = "M00_AXI_0 xilinx.com:interface:aximm:1.0 AXI4 ARVALID" *) (* mark_debug = "true"  *) wire               M00_AXI_0_arvalid;
(* CONN_BUS_INFO = "M00_AXI_0 xilinx.com:interface:aximm:1.0 AXI4 AWADDR" *)  (* mark_debug = "true"  *) wire [39:0]        M00_AXI_0_awaddr;
(* CONN_BUS_INFO = "M00_AXI_0 xilinx.com:interface:aximm:1.0 AXI4 AWBURST" *) (* mark_debug = "false"  *) wire [1:0]         M00_AXI_0_awburst;
(* CONN_BUS_INFO = "M00_AXI_0 xilinx.com:interface:aximm:1.0 AXI4 AWCACHE" *) (* mark_debug = "false"  *) wire [3:0]         M00_AXI_0_awcache;
(* CONN_BUS_INFO = "M00_AXI_0 xilinx.com:interface:aximm:1.0 AXI4 AWID" *)    (* mark_debug = "false"  *) wire [15:0]        M00_AXI_0_awid;
(* CONN_BUS_INFO = "M00_AXI_0 xilinx.com:interface:aximm:1.0 AXI4 AWLEN" *)   (* mark_debug = "false"  *) wire [7:0]         M00_AXI_0_awlen;
(* CONN_BUS_INFO = "M00_AXI_0 xilinx.com:interface:aximm:1.0 AXI4 AWLOCK" *)  (* mark_debug = "false"  *) wire               M00_AXI_0_awlock;
(* CONN_BUS_INFO = "M00_AXI_0 xilinx.com:interface:aximm:1.0 AXI4 AWPROT" *)  (* mark_debug = "false"  *) wire [2:0]         M00_AXI_0_awprot;
(* CONN_BUS_INFO = "M00_AXI_0 xilinx.com:interface:aximm:1.0 AXI4 AWQOS" *)   (* mark_debug = "false"  *) wire [3:0]         M00_AXI_0_awqos;
(* CONN_BUS_INFO = "M00_AXI_0 xilinx.com:interface:aximm:1.0 AXI4 AWREADY" *) (* mark_debug = "true"  *) wire               M00_AXI_0_awready;
(* CONN_BUS_INFO = "M00_AXI_0 xilinx.com:interface:aximm:1.0 AXI4 AWSIZE" *)  (* mark_debug = "false"  *) wire [2:0]         M00_AXI_0_awsize;
(* CONN_BUS_INFO = "M00_AXI_0 xilinx.com:interface:aximm:1.0 AXI4 AWUSER" *)  (* mark_debug = "false"  *) wire [15:0]        M00_AXI_0_awuser;
(* CONN_BUS_INFO = "M00_AXI_0 xilinx.com:interface:aximm:1.0 AXI4 AWVALID" *) (* mark_debug = "true"  *) wire               M00_AXI_0_awvalid;
(* CONN_BUS_INFO = "M00_AXI_0 xilinx.com:interface:aximm:1.0 AXI4 BID" *)     (* mark_debug = "false"  *) wire [15:0]        M00_AXI_0_bid;
(* CONN_BUS_INFO = "M00_AXI_0 xilinx.com:interface:aximm:1.0 AXI4 BREADY" *)  (* mark_debug = "true"  *) wire               M00_AXI_0_bready;
(* CONN_BUS_INFO = "M00_AXI_0 xilinx.com:interface:aximm:1.0 AXI4 BRESP" *)   (* mark_debug = "false"  *) wire [1:0]         M00_AXI_0_bresp;
(* CONN_BUS_INFO = "M00_AXI_0 xilinx.com:interface:aximm:1.0 AXI4 BVALID" *)  (* mark_debug = "true"  *) wire               M00_AXI_0_bvalid;
(* CONN_BUS_INFO = "M00_AXI_0 xilinx.com:interface:aximm:1.0 AXI4 RDATA" *)   (* mark_debug = "true"  *) wire [31:0]        M00_AXI_0_rdata;
(* CONN_BUS_INFO = "M00_AXI_0 xilinx.com:interface:aximm:1.0 AXI4 RID" *)     (* mark_debug = "false"  *) wire [15:0]        M00_AXI_0_rid;
(* CONN_BUS_INFO = "M00_AXI_0 xilinx.com:interface:aximm:1.0 AXI4 RLAST" *)   (* mark_debug = "false"  *) wire               M00_AXI_0_rlast;
(* CONN_BUS_INFO = "M00_AXI_0 xilinx.com:interface:aximm:1.0 AXI4 RREADY" *)  (* mark_debug = "true"  *) wire               M00_AXI_0_rready;
(* CONN_BUS_INFO = "M00_AXI_0 xilinx.com:interface:aximm:1.0 AXI4 RRESP" *)   (* mark_debug = "false"  *) wire [1:0]         M00_AXI_0_rresp;
(* CONN_BUS_INFO = "M00_AXI_0 xilinx.com:interface:aximm:1.0 AXI4 RVALID" *)  (* mark_debug = "true"  *) wire               M00_AXI_0_rvalid;
(* CONN_BUS_INFO = "M00_AXI_0 xilinx.com:interface:aximm:1.0 AXI4 WDATA" *)   (* mark_debug = "true"  *) wire [31:0]        M00_AXI_0_wdata;
(* CONN_BUS_INFO = "M00_AXI_0 xilinx.com:interface:aximm:1.0 AXI4 WLAST" *)   (* mark_debug = "false"  *) wire               M00_AXI_0_wlast;
(* CONN_BUS_INFO = "M00_AXI_0 xilinx.com:interface:aximm:1.0 AXI4 WREADY" *)  (* mark_debug = "true"  *) wire               M00_AXI_0_wready;
(* CONN_BUS_INFO = "M00_AXI_0 xilinx.com:interface:aximm:1.0 AXI4 WSTRB" *)   (* mark_debug = "false"  *) wire [3:0]         M00_AXI_0_wstrb;
(* CONN_BUS_INFO = "M00_AXI_0 xilinx.com:interface:aximm:1.0 AXI4 WVALID" *)  (* mark_debug = "true"  *) wire               M00_AXI_0_wvalid;
(* CONN_BUS_INFO = "M00_AXI_1 xilinx.com:interface:aximm:1.0 AXI4 ARADDR" *)  (* mark_debug = "true"  *) wire [39:0]        M00_AXI_1_araddr;
(* CONN_BUS_INFO = "M00_AXI_1 xilinx.com:interface:aximm:1.0 AXI4 ARPROT" *)  (* mark_debug = "false"  *) wire [2:0]         M00_AXI_1_arprot;
(* CONN_BUS_INFO = "M00_AXI_1 xilinx.com:interface:aximm:1.0 AXI4 ARREADY" *) (* mark_debug = "true"  *) wire               M00_AXI_1_arready;
(* CONN_BUS_INFO = "M00_AXI_1 xilinx.com:interface:aximm:1.0 AXI4 ARVALID" *) (* mark_debug = "true"  *) wire               M00_AXI_1_arvalid;
(* CONN_BUS_INFO = "M00_AXI_1 xilinx.com:interface:aximm:1.0 AXI4 AWADDR" *)  (* mark_debug = "true"  *) wire [39:0]        M00_AXI_1_awaddr;
(* CONN_BUS_INFO = "M00_AXI_1 xilinx.com:interface:aximm:1.0 AXI4 AWPROT" *)  (* mark_debug = "false"  *) wire [2:0]         M00_AXI_1_awprot;
(* CONN_BUS_INFO = "M00_AXI_1 xilinx.com:interface:aximm:1.0 AXI4 AWREADY" *) (* mark_debug = "true"  *) wire               M00_AXI_1_awready;
(* CONN_BUS_INFO = "M00_AXI_1 xilinx.com:interface:aximm:1.0 AXI4 AWVALID" *) (* mark_debug = "true"  *) wire               M00_AXI_1_awvalid;
(* CONN_BUS_INFO = "M00_AXI_1 xilinx.com:interface:aximm:1.0 AXI4 BREADY" *)  (* mark_debug = "true"  *) wire               M00_AXI_1_bready;
(* CONN_BUS_INFO = "M00_AXI_1 xilinx.com:interface:aximm:1.0 AXI4 BRESP" *)   (* mark_debug = "false"  *) wire [1:0]         M00_AXI_1_bresp;
(* CONN_BUS_INFO = "M00_AXI_1 xilinx.com:interface:aximm:1.0 AXI4 BVALID" *)  (* mark_debug = "true"  *) wire               M00_AXI_1_bvalid;
(* CONN_BUS_INFO = "M00_AXI_1 xilinx.com:interface:aximm:1.0 AXI4 RDATA" *)   (* mark_debug = "true"  *) wire [31:0]        M00_AXI_1_rdata;
(* CONN_BUS_INFO = "M00_AXI_1 xilinx.com:interface:aximm:1.0 AXI4 RREADY" *)  (* mark_debug = "true"  *) wire               M00_AXI_1_rready;
(* CONN_BUS_INFO = "M00_AXI_1 xilinx.com:interface:aximm:1.0 AXI4 RRESP" *)   (* mark_debug = "false"  *) wire [1:0]         M00_AXI_1_rresp;
(* CONN_BUS_INFO = "M00_AXI_1 xilinx.com:interface:aximm:1.0 AXI4 RVALID" *)  (* mark_debug = "true"  *) wire               M00_AXI_1_rvalid;
(* CONN_BUS_INFO = "M00_AXI_1 xilinx.com:interface:aximm:1.0 AXI4 WDATA" *)   (* mark_debug = "true"  *) wire [31:0]        M00_AXI_1_wdata;
(* CONN_BUS_INFO = "M00_AXI_1 xilinx.com:interface:aximm:1.0 AXI4 WREADY" *)  (* mark_debug = "true"  *) wire               M00_AXI_1_wready;
(* CONN_BUS_INFO = "M00_AXI_1 xilinx.com:interface:aximm:1.0 AXI4 WSTRB" *)   (* mark_debug = "false"  *) wire [3:0]         M00_AXI_1_wstrb;
(* CONN_BUS_INFO = "M00_AXI_1 xilinx.com:interface:aximm:1.0 AXI4 WVALID" *)  (* mark_debug = "true"  *) wire               M00_AXI_1_wvalid;
(* CONN_BUS_INFO = "S_AXI_ACP xilinx.com:interface:aximm:1.0 AXI4 ARADDR" *)  (* mark_debug = "true"  *) wire [31:0]        S_AXI_ACP_araddr;
(* CONN_BUS_INFO = "S_AXI_ACP xilinx.com:interface:aximm:1.0 AXI4 ARBURST" *) (* mark_debug = "false"  *) wire [1:0]         S_AXI_ACP_arburst;
(* CONN_BUS_INFO = "S_AXI_ACP xilinx.com:interface:aximm:1.0 AXI4 ARCACHE" *) (* mark_debug = "false"  *) wire [3:0]         S_AXI_ACP_arcache;
(* CONN_BUS_INFO = "S_AXI_ACP xilinx.com:interface:aximm:1.0 AXI4 ARID" *)    (* mark_debug = "false"  *) wire [0:0]         S_AXI_ACP_arid;
(* CONN_BUS_INFO = "S_AXI_ACP xilinx.com:interface:aximm:1.0 AXI4 ARLEN" *)   (* mark_debug = "false"  *) wire [7:0]         S_AXI_ACP_arlen;
(* CONN_BUS_INFO = "S_AXI_ACP xilinx.com:interface:aximm:1.0 AXI4 ARLOCK" *)  (* mark_debug = "false"  *) wire [0:0]         S_AXI_ACP_arlock;
(* CONN_BUS_INFO = "S_AXI_ACP xilinx.com:interface:aximm:1.0 AXI4 ARPROT" *)  (* mark_debug = "false"  *) wire [2:0]         S_AXI_ACP_arprot;
(* CONN_BUS_INFO = "S_AXI_ACP xilinx.com:interface:aximm:1.0 AXI4 ARQOS" *)   (* mark_debug = "false"  *) wire [3:0]         S_AXI_ACP_arqos;
(* CONN_BUS_INFO = "S_AXI_ACP xilinx.com:interface:aximm:1.0 AXI4 ARREADY" *) (* mark_debug = "true"  *) wire               S_AXI_ACP_arready;
(* CONN_BUS_INFO = "S_AXI_ACP xilinx.com:interface:aximm:1.0 AXI4 ARSIZE" *)  (* mark_debug = "false"  *) wire [2:0]         S_AXI_ACP_arsize;
(* CONN_BUS_INFO = "S_AXI_ACP xilinx.com:interface:aximm:1.0 AXI4 ARUSER" *)  (* mark_debug = "false"  *) wire [1:0]         S_AXI_ACP_aruser;
(* CONN_BUS_INFO = "S_AXI_ACP xilinx.com:interface:aximm:1.0 AXI4 ARVALID" *) (* mark_debug = "true"  *) wire               S_AXI_ACP_arvalid;
(* CONN_BUS_INFO = "S_AXI_ACP xilinx.com:interface:aximm:1.0 AXI4 AWADDR" *)  (* mark_debug = "true"  *) wire [31:0]        S_AXI_ACP_awaddr;
(* CONN_BUS_INFO = "S_AXI_ACP xilinx.com:interface:aximm:1.0 AXI4 AWBURST" *) (* mark_debug = "false"  *) wire [1:0]         S_AXI_ACP_awburst;
(* CONN_BUS_INFO = "S_AXI_ACP xilinx.com:interface:aximm:1.0 AXI4 AWCACHE" *) (* mark_debug = "false"  *) wire [3:0]         S_AXI_ACP_awcache;
(* CONN_BUS_INFO = "S_AXI_ACP xilinx.com:interface:aximm:1.0 AXI4 AWID" *)    (* mark_debug = "false"  *) wire [0:0]         S_AXI_ACP_awid;
(* CONN_BUS_INFO = "S_AXI_ACP xilinx.com:interface:aximm:1.0 AXI4 AWLEN" *)   (* mark_debug = "false"  *) wire [7:0]         S_AXI_ACP_awlen;
(* CONN_BUS_INFO = "S_AXI_ACP xilinx.com:interface:aximm:1.0 AXI4 AWLOCK" *)  (* mark_debug = "false"  *) wire [0:0]         S_AXI_ACP_awlock;
(* CONN_BUS_INFO = "S_AXI_ACP xilinx.com:interface:aximm:1.0 AXI4 AWPROT" *)  (* mark_debug = "false"  *) wire [2:0]         S_AXI_ACP_awprot;
(* CONN_BUS_INFO = "S_AXI_ACP xilinx.com:interface:aximm:1.0 AXI4 AWQOS" *)   (* mark_debug = "false"  *) wire [3:0]         S_AXI_ACP_awqos;
(* CONN_BUS_INFO = "S_AXI_ACP xilinx.com:interface:aximm:1.0 AXI4 AWREADY" *) (* mark_debug = "true"  *) wire               S_AXI_ACP_awready;
(* CONN_BUS_INFO = "S_AXI_ACP xilinx.com:interface:aximm:1.0 AXI4 AWSIZE" *)  (* mark_debug = "false"  *) wire [2:0]         S_AXI_ACP_awsize;
(* CONN_BUS_INFO = "S_AXI_ACP xilinx.com:interface:aximm:1.0 AXI4 AWUSER" *)  (* mark_debug = "false"  *) wire [1:0]         S_AXI_ACP_awuser;
(* CONN_BUS_INFO = "S_AXI_ACP xilinx.com:interface:aximm:1.0 AXI4 AWVALID" *) (* mark_debug = "true"  *) wire               S_AXI_ACP_awvalid;
(* CONN_BUS_INFO = "S_AXI_ACP xilinx.com:interface:aximm:1.0 AXI4 BID" *)     (* mark_debug = "false"  *) wire [0:0]         S_AXI_ACP_bid;
(* CONN_BUS_INFO = "S_AXI_ACP xilinx.com:interface:aximm:1.0 AXI4 BREADY" *)  (* mark_debug = "true"  *) wire               S_AXI_ACP_bready;
(* CONN_BUS_INFO = "S_AXI_ACP xilinx.com:interface:aximm:1.0 AXI4 BRESP" *)   (* mark_debug = "false"  *) wire [1:0]         S_AXI_ACP_bresp;
(* CONN_BUS_INFO = "S_AXI_ACP xilinx.com:interface:aximm:1.0 AXI4 BVALID" *)  (* mark_debug = "true"  *) wire               S_AXI_ACP_bvalid;
(* CONN_BUS_INFO = "S_AXI_ACP xilinx.com:interface:aximm:1.0 AXI4 RDATA" *)   (* mark_debug = "true"  *) wire [127:0]       S_AXI_ACP_rdata;
(* CONN_BUS_INFO = "S_AXI_ACP xilinx.com:interface:aximm:1.0 AXI4 RID" *)     (* mark_debug = "false"  *) wire [0:0]         S_AXI_ACP_rid;
(* CONN_BUS_INFO = "S_AXI_ACP xilinx.com:interface:aximm:1.0 AXI4 RLAST" *)   (* mark_debug = "false"  *) wire               S_AXI_ACP_rlast;
(* CONN_BUS_INFO = "S_AXI_ACP xilinx.com:interface:aximm:1.0 AXI4 RREADY" *)  (* mark_debug = "true"  *) wire               S_AXI_ACP_rready;
(* CONN_BUS_INFO = "S_AXI_ACP xilinx.com:interface:aximm:1.0 AXI4 RRESP" *)   (* mark_debug = "false"  *) wire [1:0]         S_AXI_ACP_rresp;
(* CONN_BUS_INFO = "S_AXI_ACP xilinx.com:interface:aximm:1.0 AXI4 RUSER" *)   (* mark_debug = "false"  *) wire [15:0]        S_AXI_ACP_ruser;
(* CONN_BUS_INFO = "S_AXI_ACP xilinx.com:interface:aximm:1.0 AXI4 RVALID" *)  (* mark_debug = "true"  *) wire               S_AXI_ACP_rvalid;
(* CONN_BUS_INFO = "S_AXI_ACP xilinx.com:interface:aximm:1.0 AXI4 WDATA" *)   (* mark_debug = "true"  *) wire [127:0]       S_AXI_ACP_wdata;
(* CONN_BUS_INFO = "S_AXI_ACP xilinx.com:interface:aximm:1.0 AXI4 WLAST" *)   (* mark_debug = "false"  *) wire               S_AXI_ACP_wlast;
(* CONN_BUS_INFO = "S_AXI_ACP xilinx.com:interface:aximm:1.0 AXI4 WREADY" *)  (* mark_debug = "true"  *) wire               S_AXI_ACP_wready;
(* CONN_BUS_INFO = "S_AXI_ACP xilinx.com:interface:aximm:1.0 AXI4 WSTRB" *)   (* mark_debug = "false"  *) wire [15:0]        S_AXI_ACP_wstrb;
(* CONN_BUS_INFO = "S_AXI_ACP xilinx.com:interface:aximm:1.0 AXI4 WUSER" *)   (* mark_debug = "false"  *) wire [15:0]        S_AXI_ACP_wuser;
(* CONN_BUS_INFO = "S_AXI_ACP xilinx.com:interface:aximm:1.0 AXI4 WVALID" *)  (* mark_debug = "true"  *) wire               S_AXI_ACP_wvalid;

wire               clk;
wire               resetn;

assign     S_AXI_ACP_aruser[1:1]         = 1'b0;
assign     S_AXI_ACP_awuser[1:1]         = 1'b0;
assign     S_AXI_ACP_wuser [15:8]        = 8'b0;

localparam addr_mon_cnt_range            = 8;
localparam addr_mon_cnt_size             = 16;
localparam max_addr_mon_cycle_cnt        = 128;
localparam addr_fifo_mon_cnt_range       = 8;
localparam addr_fifo_mon_cnt_size        = 16;
localparam max_addr_fifo_mon_cycle_cnt   = 128;
localparam vector_mon_cnt_range          = 8;
localparam vector_mon_cnt_size           = 16;
localparam max_vector_mon_cycle_cnt      = 128;
localparam vector_fifo_mon_cnt_range     = 8;
localparam vector_fifo_mon_cnt_size      = 16;
localparam max_vector_fifo_mon_cycle_cnt = 128;
localparam vector_fifo_depth_size        = 16;
localparam vector_fifo_period            = 30;
localparam trace_buf_bram_data_width     = 32;
localparam trace_buf_bram_addr_size      = 15;

(* mark_debug = "true" *)  wire vctr_fifo_wr;
(* mark_debug = "true" *)  wire vctr_fifo_rd;
(* mark_debug = "true" *)  wire addr_fifo_rd;
(* mark_debug = "true" *)  wire vector_fifo_full;
(* mark_debug = "true" *)  wire vector_fifo_threshold;
(* mark_debug = "true" *)  wire vector_fifo_underflow;
(* mark_debug = "true" *)  wire vector_fifo_empty;
(* mark_debug = "true" *)  wire vector_fifo_overflow;
(* mark_debug = "true" *)  wire [vector_fifo_depth_size-1:0] vector_fifo_data_count;
(* mark_debug = "true" *) wire [trace_buf_bram_data_width-1:0] trace_buf_bram_data;
(* mark_debug = "true" *)  wire [191:0] vector_fifo_data_out_debug;
(* mark_debug = "true" *) wire trace_buf_we_debug;
(* mark_debug = "true" *) wire trace_buf_en_debug;
(* mark_debug = "true" *) wire [trace_buf_bram_addr_size-1:0] trace_buf_bram_addra_debug;
(* mark_debug = "true" *) wire [trace_buf_bram_addr_size+$clog2(256/trace_buf_bram_data_width)-1:0] trace_buf_bram_addrb_debug;
(* mark_debug = "true"  *) wire [31:0] read_addr;
(* mark_debug = "true" *)  wire addr_fifo_empty;
(* mark_debug = "true" *) wire [31:0] trace_buf_bram_addr_slave;
(* mark_debug = "true" *)  wire run_program;
(* mark_debug = "true" *)  wire active_program;
(* mark_debug = "true" *)  wire program_start;
(* mark_debug = "true" *)  wire program_error;
(* mark_debug = "true" *)  wire addr_fifo_full;
(* mark_debug = "true" *)  wire addr_fifo_almost_full;
(* mark_debug = "true" *)  wire addr_fifo_almost_empty;
(* mark_debug = "true" *)  wire addr_fifo_underflow;
(* mark_debug = "true" *)  wire addr_fifo_overflow;
(* mark_debug = "false" *) wire addr_fifo_wr_ack;
(* mark_debug = "false" *) wire addr_fifo_valid;
(* mark_debug = "true" *)  wire [13:0] addr_fifo_data_count;
(* mark_debug = "false" *) wire [31:0] addr_fifo_din;
(* mark_debug = "true" *)  wire addr_fifo_wr;
(* mark_debug = "true" *)  wire end_program;
(* mark_debug = "true" *)  wire [15:0] addr_cycle_cnt;
(* mark_debug = "true" *)  wire [15:0] vctr_cycle_cnt;
(* mark_debug = "true" *)  wire [15:0] words_in_addr_fifo;
(* mark_debug = "true" *)  wire [15:0] words_in_vctr_fifo;
(* mark_debug = "true" *)  wire [31:0] total_vctr_fifo_words_written;
(* mark_debug = "true" *)  wire [vector_fifo_depth_size-1:0] vector_fifo_word_threshold;
(* mark_debug = "false" *) wire master_txn_done;
(* mark_debug = "false" *) wire vector_byte_swap;

design_bd_wrapper bd_wrapper (
    .clk                   (clk),
    .resetn                (resetn),
    .M00_AXI_0_araddr      (M00_AXI_0_araddr),
    .M00_AXI_0_arburst     (M00_AXI_0_arburst),
    .M00_AXI_0_arcache     (M00_AXI_0_arcache),
    .M00_AXI_0_arid        (M00_AXI_0_arid),
    .M00_AXI_0_arlen       (M00_AXI_0_arlen),
    .M00_AXI_0_arlock      (M00_AXI_0_arlock),
    .M00_AXI_0_arprot      (M00_AXI_0_arprot),
    .M00_AXI_0_arqos       (M00_AXI_0_arqos),
    .M00_AXI_0_arready     (M00_AXI_0_arready),
    .M00_AXI_0_arsize      (M00_AXI_0_arsize),
    .M00_AXI_0_aruser      (M00_AXI_0_aruser),
    .M00_AXI_0_arvalid     (M00_AXI_0_arvalid),
    .M00_AXI_0_awaddr      (M00_AXI_0_awaddr),
    .M00_AXI_0_awburst     (M00_AXI_0_awburst),
    .M00_AXI_0_awcache     (M00_AXI_0_awcache),
    .M00_AXI_0_awid        (M00_AXI_0_awid),
    .M00_AXI_0_awlen       (M00_AXI_0_awlen),
    .M00_AXI_0_awlock      (M00_AXI_0_awlock),
    .M00_AXI_0_awprot      (M00_AXI_0_awprot),
    .M00_AXI_0_awqos       (M00_AXI_0_awqos),
    .M00_AXI_0_awready     (M00_AXI_0_awready),
    .M00_AXI_0_awsize      (M00_AXI_0_awsize),
    .M00_AXI_0_awuser      (M00_AXI_0_awuser),
    .M00_AXI_0_awvalid     (M00_AXI_0_awvalid),
    .M00_AXI_0_bid         (M00_AXI_0_bid),
    .M00_AXI_0_bready      (M00_AXI_0_bready),
    .M00_AXI_0_bresp       (M00_AXI_0_bresp),
    .M00_AXI_0_bvalid      (M00_AXI_0_bvalid),
    .M00_AXI_0_rdata       (M00_AXI_0_rdata),
    .M00_AXI_0_rid         (M00_AXI_0_rid),
    .M00_AXI_0_rlast       (M00_AXI_0_rlast),
    .M00_AXI_0_rready      (M00_AXI_0_rready),
    .M00_AXI_0_rresp       (M00_AXI_0_rresp),
    .M00_AXI_0_rvalid      (M00_AXI_0_rvalid),
    .M00_AXI_0_wdata       (M00_AXI_0_wdata),
    .M00_AXI_0_wlast       (M00_AXI_0_wlast),
    .M00_AXI_0_wready      (M00_AXI_0_wready),
    .M00_AXI_0_wstrb       (M00_AXI_0_wstrb),
    .M00_AXI_0_wvalid      (M00_AXI_0_wvalid),
    .M00_AXI_1_araddr      (M00_AXI_1_araddr),
    .M00_AXI_1_arprot      (M00_AXI_1_arprot),
    .M00_AXI_1_arready     (M00_AXI_1_arready),
    .M00_AXI_1_arvalid     (M00_AXI_1_arvalid),
    .M00_AXI_1_awaddr      (M00_AXI_1_awaddr),
    .M00_AXI_1_awprot      (M00_AXI_1_awprot),
    .M00_AXI_1_awready     (M00_AXI_1_awready),
    .M00_AXI_1_awvalid     (M00_AXI_1_awvalid),
    .M00_AXI_1_bready      (M00_AXI_1_bready),
    .M00_AXI_1_bresp       (M00_AXI_1_bresp),
    .M00_AXI_1_bvalid      (M00_AXI_1_bvalid),
    .M00_AXI_1_rdata       (M00_AXI_1_rdata),
    .M00_AXI_1_rready      (M00_AXI_1_rready),
    .M00_AXI_1_rresp       (M00_AXI_1_rresp),
    .M00_AXI_1_rvalid      (M00_AXI_1_rvalid),
    .M00_AXI_1_wdata       (M00_AXI_1_wdata),
    .M00_AXI_1_wready      (M00_AXI_1_wready),
    .M00_AXI_1_wstrb       (M00_AXI_1_wstrb),
    .M00_AXI_1_wvalid      (M00_AXI_1_wvalid),
    .S_AXI_ACP_araddr      (S_AXI_ACP_araddr),
    .S_AXI_ACP_arburst     (S_AXI_ACP_arburst),
    .S_AXI_ACP_arcache     (S_AXI_ACP_arcache),
    .S_AXI_ACP_arid        (S_AXI_ACP_arid),
    .S_AXI_ACP_arlen       (S_AXI_ACP_arlen),
    .S_AXI_ACP_arlock      (S_AXI_ACP_arlock),
    .S_AXI_ACP_arprot      (S_AXI_ACP_arprot),
    .S_AXI_ACP_arqos       (S_AXI_ACP_arqos),
    .S_AXI_ACP_arready     (S_AXI_ACP_arready),
    .S_AXI_ACP_arsize      (S_AXI_ACP_arsize),
    .S_AXI_ACP_aruser      (S_AXI_ACP_aruser),
    .S_AXI_ACP_arvalid     (S_AXI_ACP_arvalid),
    .S_AXI_ACP_awaddr      (S_AXI_ACP_awaddr),
    .S_AXI_ACP_awburst     (S_AXI_ACP_awburst),
    .S_AXI_ACP_awcache     (S_AXI_ACP_awcache),
    .S_AXI_ACP_awid        (S_AXI_ACP_awid),
    .S_AXI_ACP_awlen       (S_AXI_ACP_awlen),
    .S_AXI_ACP_awlock      (S_AXI_ACP_awlock),
    .S_AXI_ACP_awprot      (S_AXI_ACP_awprot),
    .S_AXI_ACP_awqos       (S_AXI_ACP_awqos),
    .S_AXI_ACP_awready     (S_AXI_ACP_awready),
    .S_AXI_ACP_awsize      (S_AXI_ACP_awsize),
    .S_AXI_ACP_awuser      (S_AXI_ACP_awuser),
    .S_AXI_ACP_awvalid     (S_AXI_ACP_awvalid),
    .S_AXI_ACP_bid         (S_AXI_ACP_bid),
    .S_AXI_ACP_bready      (S_AXI_ACP_bready),
    .S_AXI_ACP_bresp       (S_AXI_ACP_bresp),
    .S_AXI_ACP_bvalid      (S_AXI_ACP_bvalid),
    .S_AXI_ACP_rdata       (S_AXI_ACP_rdata),
    .S_AXI_ACP_rid         (S_AXI_ACP_rid),
    .S_AXI_ACP_rlast       (S_AXI_ACP_rlast),
    .S_AXI_ACP_rready      (S_AXI_ACP_rready),
    .S_AXI_ACP_rresp       (S_AXI_ACP_rresp),
    .S_AXI_ACP_ruser       (S_AXI_ACP_ruser),
    .S_AXI_ACP_rvalid      (S_AXI_ACP_rvalid),
    .S_AXI_ACP_wdata       (S_AXI_ACP_wdata),
    .S_AXI_ACP_wlast       (S_AXI_ACP_wlast),
    .S_AXI_ACP_wready      (S_AXI_ACP_wready),
    .S_AXI_ACP_wstrb       (S_AXI_ACP_wstrb),
    .S_AXI_ACP_wvalid      (S_AXI_ACP_wvalid),
    .S_AXI_ACP_wuser       (S_AXI_ACP_wuser)
    );

master_custom_v1_0_M00_AXI #(
    .C_M_AXI_BURST_LEN         (1),
    .C_M_AXI_ID_WIDTH          (1),
    .C_M_AXI_ADDR_WIDTH        (32),
    .C_M_AXI_DATA_WIDTH        (128),
    .C_M_AXI_AWUSER_WIDTH      (1),
    .C_M_AXI_ARUSER_WIDTH      (1),
    .C_M_AXI_WUSER_WIDTH       (8),
    .C_M_AXI_RUSER_WIDTH       (8),
    .C_M_AXI_BUSER_WIDTH       (1),
    .add_val                   (16),
    .cache_value               (4'b1111),
    .axi_prot                  (3'b010),
    .VECTOR_DATA_WIDTH         (192),
    .VECTOR_FIFO_DEPTH         ((1<<vector_fifo_depth_size)-1),
    .VECTOR_FIFO_DEPTH_SIZE    (vector_fifo_depth_size),
    .VECTOR_DATA_PERIOD_CYCLE  (vector_fifo_period),
    .TRACE_BUF_DATA_WIDTH      (trace_buf_bram_data_width),
    .TRACE_BUF_ADDR_WIDTH      (trace_buf_bram_addr_size)
    ) axi_master_0 (
    .read_addr                  (read_addr),
    .addr_fifo_empty            (addr_fifo_empty),
    .vector_fifo_full           (vector_fifo_full),
    .vector_fifo_overflow       (vector_fifo_overflow),
    .vector_fifo_threshold      (vector_fifo_threshold),
    .vector_fifo_empty          (vector_fifo_empty),
    .vector_fifo_underflow      (vector_fifo_underflow),
    .arvalid                    (),
    .arready                    (),
    .output_data                (vector_data),
    .vector_fifo_data_count     (vector_fifo_data_count),
    .rvalid                     (),
    .rready                     (),
    .addr_fifo_rd               (addr_fifo_rd),
    .vctr_fifo_rd               (vctr_fifo_rd),
    .vctr_fifo_wr               (vctr_fifo_wr),
    .trace_buf_bram_addr_slave  (trace_buf_bram_addr_slave),
    .trace_buf_bram_data        (trace_buf_bram_data),
    .vector_fifo_data_out_debug (vector_fifo_data_out_debug),
    .trace_buf_we_debug         (trace_buf_we_debug),
    .trace_buf_en_debug         (trace_buf_en_debug),
    .trace_buf_bram_addra_debug (trace_buf_bram_addra_debug),
    .trace_buf_bram_addrb_debug (trace_buf_bram_addrb_debug),
    .end_program                (end_program),
    .run_program                (run_program),
    .program_start              (program_start),
    .program_error              (program_error),
    .vector_byte_swap           (vector_byte_swap),
    .vector_fifo_word_threshold (vector_fifo_word_threshold),
    .TXN_DONE          (master_txn_done),
    .M_AXI_ACLK        (clk),
    .M_AXI_ARESETN     (resetn),
    .M_AXI_AWID        (S_AXI_ACP_awid),
    .M_AXI_AWADDR      (S_AXI_ACP_awaddr),
    .M_AXI_AWLEN       (S_AXI_ACP_awlen),
    .M_AXI_AWSIZE      (S_AXI_ACP_awsize),
    .M_AXI_AWBURST     (S_AXI_ACP_awburst),
    .M_AXI_AWLOCK      (S_AXI_ACP_awlock),
    .M_AXI_AWCACHE     (S_AXI_ACP_awcache),
    .M_AXI_AWPROT      (S_AXI_ACP_awprot),
    .M_AXI_AWQOS       (S_AXI_ACP_awqos),
    .M_AXI_AWUSER      (S_AXI_ACP_awuser[0:0]),
    .M_AXI_AWVALID     (S_AXI_ACP_awvalid),
    .M_AXI_AWREADY     (S_AXI_ACP_awready),
    .M_AXI_WDATA       (S_AXI_ACP_wdata),
    .M_AXI_WSTRB       (S_AXI_ACP_wstrb),
    .M_AXI_WLAST       (S_AXI_ACP_wlast),
    .M_AXI_WUSER       (S_AXI_ACP_wuser[7:0]),
    .M_AXI_WVALID      (S_AXI_ACP_wvalid),
    .M_AXI_WREADY      (S_AXI_ACP_wready),
    .M_AXI_BID         (S_AXI_ACP_bid),
    .M_AXI_BRESP       (S_AXI_ACP_bresp),
    .M_AXI_BUSER       (1'b0),
    .M_AXI_BVALID      (S_AXI_ACP_bvalid),
    .M_AXI_BREADY      (S_AXI_ACP_bready),
    .M_AXI_ARID        (S_AXI_ACP_arid),
    .M_AXI_ARADDR      (S_AXI_ACP_araddr),
    .M_AXI_ARLEN       (S_AXI_ACP_arlen),
    .M_AXI_ARSIZE      (S_AXI_ACP_arsize),
    .M_AXI_ARBURST     (S_AXI_ACP_arburst),
    .M_AXI_ARLOCK      (S_AXI_ACP_arlock),
    .M_AXI_ARCACHE     (S_AXI_ACP_arcache),
    .M_AXI_ARPROT      (S_AXI_ACP_arprot),
    .M_AXI_ARQOS       (S_AXI_ACP_arqos),
    .M_AXI_ARUSER      (S_AXI_ACP_aruser[0:0]),
    .M_AXI_ARVALID     (S_AXI_ACP_arvalid),
    .M_AXI_ARREADY     (S_AXI_ACP_arready),
    .M_AXI_RID         (S_AXI_ACP_rid),
    .M_AXI_RDATA       (S_AXI_ACP_rdata),
    .M_AXI_RRESP       (S_AXI_ACP_rresp),
    .M_AXI_RLAST       (S_AXI_ACP_rlast),
    .M_AXI_RUSER       (S_AXI_ACP_ruser),
    .M_AXI_RVALID      (S_AXI_ACP_rvalid),
    .M_AXI_RREADY      (S_AXI_ACP_rready)
    );

custom_slave_v1_0_S00_AXI #(
    .ADDR_MON_CNT_RANGE           (addr_mon_cnt_range),
    .ADDR_MON_CNT_SIZE            (addr_mon_cnt_size),
    .MAX_ADDR_MON_CYCLE_CNT       (max_addr_mon_cycle_cnt),
    .ADDR_FIFO_MON_CNT_RANGE      (addr_fifo_mon_cnt_range),
    .ADDR_FIFO_MON_CNT_SIZE       (addr_fifo_mon_cnt_size),
    .MAX_ADDR_FIFO_MON_CYCLE_CNT  (max_addr_fifo_mon_cycle_cnt),
    .VCTR_MON_CNT_RANGE           (vector_mon_cnt_range),
    .VCTR_MON_CNT_SIZE            (vector_mon_cnt_size),
    .MAX_VCTR_MON_CYCLE_CNT       (max_vector_mon_cycle_cnt),
    .VCTR_FIFO_MON_CNT_RANGE      (vector_fifo_mon_cnt_range),
    .VCTR_FIFO_MON_CNT_SIZE       (vector_fifo_mon_cnt_size),
    .MAX_VCTR_FIFO_MON_CYCLE_CNT  (max_vector_fifo_mon_cycle_cnt),  
    .VCTR_FIFO_DEPTH_SIZE         (vector_fifo_depth_size),
    .C_S_AXI_ID_WIDTH             (16),
    .C_S_AXI_DATA_WIDTH           (32),
    .C_S_AXI_ADDR_WIDTH           (18),
    .C_S_AXI_AWUSER_WIDTH         (1),
    .C_S_AXI_ARUSER_WIDTH         (1),
    .C_S_AXI_WUSER_WIDTH          (1),
    .C_S_AXI_RUSER_WIDTH          (1),
    .C_S_AXI_BUSER_WIDTH          (1)
    ) axi_slave_0 (
    .vctr_fifo_wr                    (vctr_fifo_wr),
    .vctr_fifo_rd                    (vctr_fifo_rd),
    .addr_fifo_rd                    (addr_fifo_rd),
    .module_vector_fifo_full         (vector_fifo_full),
    .module_vector_fifo_empty        (vector_fifo_empty),
    .module_vector_fifo_overflow     (vector_fifo_overflow),
    .module_vector_fifo_underflow    (vector_fifo_underflow),
    .module_vector_fifo_data_count   (vector_fifo_data_count),
    .module_addr_fifo_full           (addr_fifo_full),
    .module_addr_fifo_empty          (addr_fifo_empty),
    .module_addr_fifo_almost_full    (addr_fifo_almost_full),
    .module_addr_fifo_almost_empty   (addr_fifo_almost_empty),
    .module_addr_fifo_underflow      (addr_fifo_underflow),
    .module_addr_fifo_overflow       (addr_fifo_overflow),
    .module_addr_fifo_data_count     (addr_fifo_data_count), 
    .wvalid                          (),
    .wready                          (),
    .addr_fifo_din                   (addr_fifo_din),
    .addr_fifo_wr                    (addr_fifo_wr),
    .run_program                     (run_program),
    .end_program                     (end_program),
    .program_start                   (program_start),
    .program_error                   (program_error),
    .active_program                  (active_program),
    .vector_byte_swap                (vector_byte_swap),
    .addr_cycle_cnt                  (addr_cycle_cnt),
    .vctr_cycle_cnt                  (vctr_cycle_cnt),
    .words_in_addr_fifo              (words_in_addr_fifo),
    .words_in_vctr_fifo              (words_in_vctr_fifo),
    .total_vctr_fifo_words_written   (total_vctr_fifo_words_written),
    .vector_fifo_word_threshold      (vector_fifo_word_threshold),
    .S_AXI_ACLK         (clk),
    .S_AXI_ARESETN      (resetn),
    .S_AXI_AWID         (M00_AXI_0_awid),
    .S_AXI_AWADDR       (M00_AXI_0_awaddr[17:0]),
    .S_AXI_AWLEN        (M00_AXI_0_awlen),
    .S_AXI_AWSIZE       (M00_AXI_0_awsize),
    .S_AXI_AWBURST      (M00_AXI_0_awburst),
    .S_AXI_AWLOCK       (M00_AXI_0_awlock),
    .S_AXI_AWCACHE      (M00_AXI_0_awcache),
    .S_AXI_AWPROT       (M00_AXI_0_awprot),
    .S_AXI_AWQOS        (M00_AXI_0_awqos),
    .S_AXI_AWREGION     ({1'b0, 1'b0, 1'b0, 1'b0}),
    .S_AXI_AWUSER       (M00_AXI_0_awuser[0]),
    .S_AXI_AWVALID      (M00_AXI_0_awvalid),
    .S_AXI_AWREADY      (M00_AXI_0_awready),
    .S_AXI_WDATA        (M00_AXI_0_wdata),
    .S_AXI_WSTRB        (M00_AXI_0_wstrb),
    .S_AXI_WLAST        (M00_AXI_0_wlast),
    .S_AXI_WUSER        (1'b0),
    .S_AXI_WVALID       (M00_AXI_0_wvalid),
    .S_AXI_WREADY       (M00_AXI_0_wready),
    .S_AXI_BID          (M00_AXI_0_bid),
    .S_AXI_BRESP        (M00_AXI_0_bresp),
    .S_AXI_BUSER        (M00_AXI_0_buser),
    .S_AXI_BVALID       (M00_AXI_0_bvalid),
    .S_AXI_BREADY       (M00_AXI_0_bready),
    .S_AXI_ARID         (M00_AXI_0_arid),
    .S_AXI_ARADDR       (M00_AXI_0_araddr[17:0]),
    .S_AXI_ARLEN        (M00_AXI_0_arlen),
    .S_AXI_ARSIZE       (M00_AXI_0_arsize),
    .S_AXI_ARBURST      (M00_AXI_0_arburst),
    .S_AXI_ARLOCK       (M00_AXI_0_arlock),
    .S_AXI_ARCACHE      (M00_AXI_0_arcache),
    .S_AXI_ARPROT       (M00_AXI_0_arprot),
    .S_AXI_ARQOS        (M00_AXI_0_arqos),
    .S_AXI_ARREGION     ({1'b0, 1'b0, 1'b0, 1'b0}),
    .S_AXI_ARUSER       (M00_AXI_0_aruser[0]),
    .S_AXI_ARVALID      (M00_AXI_0_arvalid),
    .S_AXI_ARREADY      (M00_AXI_0_arready),
    .S_AXI_RID          (M00_AXI_0_rid),
    .S_AXI_RDATA        (M00_AXI_0_rdata),
    .S_AXI_RRESP        (M00_AXI_0_rresp),
    .S_AXI_RLAST        (M00_AXI_0_rlast),
    .S_AXI_RUSER        (M00_AXI_0_ruser),
    .S_AXI_RVALID       (M00_AXI_0_rvalid),
    .S_AXI_RREADY       (M00_AXI_0_rready)
    );

addr_fifo addr_fifo_0 (
    .clk                (clk),
    .srst               (~resetn),
    .din                (addr_fifo_din),
    .wr_en              (addr_fifo_wr),
    .rd_en              (addr_fifo_rd),
    .dout               (read_addr),
    .full               (addr_fifo_full),
    .almost_full        (addr_fifo_almost_full),
    .wr_ack             (addr_fifo_wr_ack),
    .overflow           (addr_fifo_overflow),
    .empty              (addr_fifo_empty),
    .almost_empty       (addr_fifo_almost_empty),
    .valid              (addr_fifo_valid),
    .underflow          (addr_fifo_underflow),
    .data_count         (addr_fifo_data_count),
    .wr_rst_busy        (),
    .rd_rst_busy        ()
);

trace_buf_slave # (
    .TRACE_BUF_DATA_WIDTH(trace_buf_bram_data_width),
    .C_S_AXI_DATA_WIDTH(32),
    .C_S_AXI_ADDR_WIDTH(6)
) trace_buf_slave_0 (
  .S_AXI_ACLK                 (clk),
  .S_AXI_ARESETN              (resetn),
  .S_AXI_AWADDR               (M00_AXI_1_awaddr[5:0]),
  .S_AXI_AWPROT               (M00_AXI_1_awprot),
  .S_AXI_AWVALID              (M00_AXI_1_awvalid),
  .S_AXI_AWREADY              (M00_AXI_1_awready),
  .S_AXI_WDATA                (M00_AXI_1_wdata),
  .S_AXI_WSTRB                (M00_AXI_1_wstrb),
  .S_AXI_WVALID               (M00_AXI_1_wvalid),
  .S_AXI_WREADY               (M00_AXI_1_wready),
  .S_AXI_BRESP                (M00_AXI_1_bresp),
  .S_AXI_BVALID               (M00_AXI_1_bvalid),
  .S_AXI_BREADY               (M00_AXI_1_bready),
  .S_AXI_ARADDR               (M00_AXI_1_araddr[5:0]),
  .S_AXI_ARPROT               (M00_AXI_1_arprot),
  .S_AXI_ARVALID              (M00_AXI_1_arvalid),
  .S_AXI_ARREADY              (M00_AXI_1_arready),
  .S_AXI_RDATA                (M00_AXI_1_rdata),
  .S_AXI_RRESP                (M00_AXI_1_rresp),
  .S_AXI_RVALID               (M00_AXI_1_rvalid),
  .S_AXI_RREADY               (M00_AXI_1_rready),
  .trace_buf_bram_data        (trace_buf_bram_data),
  .trace_buf_bram_addr_slave  (trace_buf_bram_addr_slave)
);
endmodule
