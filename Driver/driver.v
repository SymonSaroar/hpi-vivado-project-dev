//`include "design.sv"

module driver #(
    parameter integer ADDR_MON_CNT_RANGE = 8,
    parameter integer ADDR_MON_CNT_SIZE = 16,
    parameter integer MAX_ADDR_CYCLE_CNT = 128,
	parameter integer VCTR_MON_CNT_RANGE = 8,
	parameter integer VCTR_MON_CNT_SIZE = 16,
	parameter integer MAX_VCTR_CYCLE_CNT = 128
)
(
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
  input               addr_fifo_rd,
  output			  active_program,
  output			  end_program,
  output 			  run_program,
  
  	output wire [31:0] addr_cycle_cnt,
	output wire [15:0] vctr_cycle_cnt,
	output wire [15:0] words_in_addr_fifo,
	output wire [15:0] words_in_vctr_fifo
);

wire [ADDR_MON_CNT_SIZE-1:0] addr_mon_cnts[(MAX_ADDR_CYCLE_CNT/ADDR_MON_CNT_RANGE)-1:0];
//wire active_program, end_program, run_program;
//wire [31:0] addr_cycle_cnt;
wire [VCTR_MON_CNT_SIZE-1:0] vctr_mon_cnts[(MAX_VCTR_CYCLE_CNT/VCTR_MON_CNT_RANGE)-1:0];
//wire [15:0] vctr_cycle_cnt;
//wire [15:0] words_in_addr_fifo;
//wire [15:0] words_in_vctr_fifo;


driver_cntrl #(
	.ADDR_MON_CNT_RANGE(ADDR_MON_CNT_RANGE),
	.ADDR_MON_CNT_SIZE(ADDR_MON_CNT_SIZE),
	.MAX_ADDR_CYCLE_CNT(MAX_ADDR_CYCLE_CNT),
	.VCTR_MON_CNT_RANGE(VCTR_MON_CNT_RANGE),
	.VCTR_MON_CNT_SIZE(VCTR_MON_CNT_SIZE),
	.MAX_VCTR_CYCLE_CNT(MAX_VCTR_CYCLE_CNT)
) driver_cntrl_0(
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
  
driver_monitor #(
	.ADDR_MON_CNT_RANGE(ADDR_MON_CNT_RANGE),
	.ADDR_MON_CNT_SIZE(ADDR_MON_CNT_SIZE),
	.MAX_ADDR_CYCLE_CNT(MAX_ADDR_CYCLE_CNT),
	.VCTR_MON_CNT_RANGE(VCTR_MON_CNT_RANGE),
	.VCTR_MON_CNT_SIZE(VCTR_MON_CNT_SIZE),
	.MAX_VCTR_CYCLE_CNT(MAX_VCTR_CYCLE_CNT)
) driver_monitor_0(
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
  .master_addr(master_addr),
  .master_rd(master_rd)
);
   
endmodule // driver
