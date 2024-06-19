// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2023.1.1 (lin64) Build 3900603 Fri Jun 16 19:30:25 MDT 2023
// Date        : Sun Jun  2 03:59:00 2024
// Host        : blacklight running 64-bit Ubuntu 22.04.4 LTS
// Command     : write_verilog -force -mode synth_stub
//               /home/symon/hpi-dev/hpi-vivado-project-dev/addr_fifo_ip/addr_fifo/addr_fifo_stub.v
// Design      : addr_fifo
// Purpose     : Stub declaration of top-level module interface
// Device      : xczu9eg-ffvb1156-2-e
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* x_core_info = "fifo_generator_v13_2_8,Vivado 2023.1.1" *)
module addr_fifo(clk, srst, din, wr_en, rd_en, dout, full, almost_full, 
  wr_ack, overflow, empty, almost_empty, valid, underflow, data_count, wr_rst_busy, rd_rst_busy)
/* synthesis syn_black_box black_box_pad_pin="srst,din[31:0],wr_en,rd_en,dout[31:0],full,almost_full,wr_ack,overflow,empty,almost_empty,valid,underflow,data_count[13:0],wr_rst_busy,rd_rst_busy" */
/* synthesis syn_force_seq_prim="clk" */;
  input clk /* synthesis syn_isclock = 1 */;
  input srst;
  input [31:0]din;
  input wr_en;
  input rd_en;
  output [31:0]dout;
  output full;
  output almost_full;
  output wr_ack;
  output overflow;
  output empty;
  output almost_empty;
  output valid;
  output underflow;
  output [13:0]data_count;
  output wr_rst_busy;
  output rd_rst_busy;
endmodule