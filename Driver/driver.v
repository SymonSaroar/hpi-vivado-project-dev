//`include "design.sv"

module driver (
  input               clk,
  input               reset,
  input        [31:0] slave_addr,
  input               slave_rd,
  input               slave_wr,
  input        [31:0] slave_data_in,
  output       [31:0] slave_data_out,
  input               vctr_fifo_wr,
  input               vctr_fifo_rd,
  output       [31:0] addr_fifo_din,
  output              addr_fifo_wr,
  input               addr_fifo_rd
);

wire [15:0] addr_mon_cnts[15:0];
wire [15:0] addr_cycle_cnt;
wire [15:0] vctr_mon_cnts[15:0];
wire [15:0] vctr_cycle_cnt;
wire [15:0] words_in_addr_fifo;
wire [15:0] words_in_vctr_fifo;

wire active_program, end_program, run_program;

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
  .vctr_mon_cnts(vctr_mon_cnts),
  .end_program(end_program),
  .addr_cycle_cnt(addr_cycle_cnt),
  .vctr_cycle_cnt(vctr_cycle_cnt),
  .words_in_addr_fifo(words_in_addr_fifo),
  .words_in_vctr_fifo(words_in_vctr_fifo),
  .run_program(run_program),
  .active_program(active_program)
);
  
driver_monitor driver_monitor_0(
  .clk(clk),
  .reset(reset),
  .end_program(end_program),
  .run_program(run_program),
  .active_program(active_program),
  .addr_fifo_wr(addr_fifo_wr),
  .addr_fifo_rd(addr_fifo_rd),
  .addr_cycle_cnt(addr_cycle_cnt),
  .addr_mon_cnts(addr_mon_cnts),
  .vctr_fifo_wr(vctr_fifo_wr),
  .vctr_fifo_rd(vctr_fifo_rd),
  .vctr_cycle_cnt(vctr_cycle_cnt),
  .vctr_mon_cnts(vctr_mon_cnts),
  .words_in_addr_fifo(words_in_addr_fifo),
  .words_in_vctr_fifo(words_in_vctr_fifo)
);

wire [31:0] master_addr;
wire        master_rd;

driver_dp driver_dp_0(
  .clk(clk),
  .reset(reset),
  .master_data_in(32'd0),
  .master_data_in_val(1'b0),
  .test_vector_addr(addr_fifo_din),
  .get_vector(addr_fifo_wr),
  .master_addr(addr_fifo_din),
  .master_rd(master_rd)
);
   
endmodule // driver
