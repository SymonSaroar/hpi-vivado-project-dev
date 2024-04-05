//`include "design.sv"

module driver (
  input               clk,
  input               reset,
  input        [31:0] slave_addr,
  input               slave_rd,
  input               slave_wr,
  input        [31:0] slave_data_in,
  output       [31:0] slave_data_out,
  output       [31:0] addr_fifo_din,
  output              addr_fifo_wr
);

wire [15:0] addr_mon_cnts[15:0];
wire active_program, end_program;

driver_cntrl driver_cntrl_0(
  .clk(clk),
  .reset(reset),
  .slave_addr(slave_addr),
  .slave_rd(slave_rd),
  .slave_wr(slave_wr),
  .slave_data_in(slave_data_in),
  .slave_data_out(slave_data_out),
  .addr_fifo_din(addr_fifo_din),
  .addr_fifo_wr(addr_fifo_wr),
  .addr_mon_cnts(addr_mon_cnts),
  .end_program(end_program),
  .active_program(active_program)
);
  
driver_monitor driver_monitor_0(
  .clk(clk),
  .reset(reset),
  .end_program(end_program),
  .active_program(active_program),
  .addr_fifo_wr(addr_fifo_wr),
  .addr_mon_cnts(addr_mon_cnts)
);
   
endmodule // driver
