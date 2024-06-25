//`include "design.sv"

module driver #(
  parameter integer ADDR_MON_CNT_RANGE = 8,
  parameter integer ADDR_MON_CNT_SIZE = 16,
  parameter integer MAX_ADDR_MON_CYCLE_CNT = 128,
  parameter integer ADDR_FIFO_MON_CNT_RANGE = 8,
  parameter integer ADDR_FIFO_MON_CNT_SIZE = 16,
  parameter integer MAX_ADDR_FIFO_MON_CYCLE_CNT = 128,
  parameter integer VCTR_MON_CNT_RANGE = 8,
  parameter integer VCTR_MON_CNT_SIZE = 16,
  parameter integer MAX_VCTR_MON_CYCLE_CNT = 128,
  parameter integer VCTR_FIFO_MON_CNT_RANGE = 8,
  parameter integer VCTR_FIFO_MON_CNT_SIZE = 16,
  parameter integer MAX_VCTR_FIFO_MON_CYCLE_CNT = 128
)
(
  input                 clk,
  input                 reset,
  input        [31:0]   slave_awaddr,
  input        [31:0]   slave_araddr,
  input                 slave_rd,
  input                 slave_wr,
  input        [31:0]   slave_data_in,
  output       [31:0]   slave_data_out,
  input                 vctr_fifo_wr,
  input                 vctr_fifo_rd,
  output       [31:0]   addr_fifo_din,
  output                addr_fifo_wr,
  input                 addr_fifo_rd,
  input                 vector_fifo_full,
  input                 vector_fifo_empty,
  input                 addr_fifo_full,
  input                 addr_fifo_empty,
  input                 vector_fifo_underrun,
  input                 vector_fifo_overrun,
  output wire   [15:0]  vector_fifo_threshold,
  input                 addr_fifo_underrun,
  input                 addr_fifo_overrun,
  input                 addr_fifo_almost_full,
  (* mark_debug = "true" *) output wire   [15:0]  addr_fifo_threshold,
  output                active_program,
  output                end_program,
  output                run_program,
  output                program_start,
  output                program_error,
  output                vector_byte_swap,
  output wire [15:0]    addr_cycle_cnt,
  output wire [15:0]    vctr_cycle_cnt,
  input       [15:0]    words_in_addr_fifo,
  input       [15:0]    words_in_vctr_fifo,
  output wire [31:0]    total_vctr_fifo_words_written
);

wire [ADDR_MON_CNT_SIZE-1:0] addr_mon_cnts[0: (MAX_ADDR_MON_CYCLE_CNT/ADDR_MON_CNT_RANGE)-1];
wire [ADDR_FIFO_MON_CNT_SIZE-1:0] addr_fifo_mon_cnts[0: (MAX_ADDR_FIFO_MON_CYCLE_CNT/ADDR_FIFO_MON_CNT_RANGE)-1];
wire [VCTR_MON_CNT_SIZE-1:0] vctr_mon_cnts[0: (MAX_VCTR_MON_CYCLE_CNT/VCTR_MON_CNT_RANGE)-1];
wire [VCTR_FIFO_MON_CNT_SIZE-1:0] vctr_fifo_mon_cnts[0: (MAX_VCTR_FIFO_MON_CYCLE_CNT/VCTR_FIFO_MON_CNT_RANGE)-1];


driver_cntrl #(
  .ADDR_MON_CNT_RANGE                  (ADDR_MON_CNT_RANGE),
  .ADDR_MON_CNT_SIZE                   (ADDR_MON_CNT_SIZE),
  .MAX_ADDR_MON_CYCLE_CNT              (MAX_ADDR_MON_CYCLE_CNT),
  .ADDR_FIFO_MON_CNT_RANGE             (ADDR_FIFO_MON_CNT_RANGE),
  .ADDR_FIFO_MON_CNT_SIZE              (ADDR_FIFO_MON_CNT_SIZE),
  .MAX_ADDR_FIFO_MON_CYCLE_CNT         (MAX_ADDR_FIFO_MON_CYCLE_CNT),
  .VCTR_MON_CNT_RANGE                  (VCTR_MON_CNT_RANGE),
  .VCTR_MON_CNT_SIZE                   (VCTR_MON_CNT_SIZE),
  .MAX_VCTR_MON_CYCLE_CNT              (MAX_VCTR_MON_CYCLE_CNT),
  .VCTR_FIFO_MON_CNT_RANGE             (VCTR_FIFO_MON_CNT_RANGE),
  .VCTR_FIFO_MON_CNT_SIZE              (VCTR_FIFO_MON_CNT_SIZE),
  .MAX_VCTR_FIFO_MON_CYCLE_CNT         (MAX_VCTR_FIFO_MON_CYCLE_CNT)
) driver_cntrl_0(
  .clk(clk),
  .reset(reset),
  .slave_awaddr(slave_awaddr),
  .slave_araddr(slave_araddr),
  .slave_rd(slave_rd),
  .slave_wr(slave_wr),
  .slave_data_in(slave_data_in),
  .slave_data_out(slave_data_out),
  .addr_fifo_din(addr_fifo_din),
  .addr_fifo_wr(addr_fifo_wr),
  .addr_mon_cnts(addr_mon_cnts),
  .addr_fifo_mon_cnts(addr_fifo_mon_cnts),
  .vctr_mon_cnts(vctr_mon_cnts),
  .vctr_fifo_mon_cnts(vctr_fifo_mon_cnts),
  .end_program(end_program),
  .addr_cycle_cnt(addr_cycle_cnt),
  .vctr_cycle_cnt(vctr_cycle_cnt),
  .words_in_addr_fifo(words_in_addr_fifo),
  .words_in_vctr_fifo(words_in_vctr_fifo),
  .vector_fifo_full(vector_fifo_full),
  .vector_fifo_empty(vector_fifo_empty),
  .addr_fifo_full(addr_fifo_full),
  .addr_fifo_empty(addr_fifo_empty),
  .vector_fifo_underrun(vector_fifo_underrun),
  .vector_fifo_overrun(vector_fifo_overrun),
  .vector_fifo_threshold(vector_fifo_threshold),
  .addr_fifo_overrun(addr_fifo_overrun),
  .addr_fifo_underrun(addr_fifo_underrun),
  .addr_fifo_threshold(addr_fifo_threshold),
  .addr_fifo_almost_full(addr_fifo_almost_full),
  .run_program(run_program),
  .active_program(active_program),
  .program_start(program_start),
  .program_error(program_error),
  .vector_byte_swap(vector_byte_swap),
  .total_vctr_fifo_words_written(total_vctr_fifo_words_written)
);
  
driver_monitor #(
  .ADDR_MON_CNT_RANGE                  (ADDR_MON_CNT_RANGE),
  .ADDR_MON_CNT_SIZE                   (ADDR_MON_CNT_SIZE),
  .MAX_ADDR_MON_CYCLE_CNT              (MAX_ADDR_MON_CYCLE_CNT),
  .ADDR_FIFO_MON_CNT_RANGE             (ADDR_FIFO_MON_CNT_RANGE),
  .ADDR_FIFO_MON_CNT_SIZE              (ADDR_FIFO_MON_CNT_SIZE),
  .MAX_ADDR_FIFO_MON_CYCLE_CNT         (MAX_ADDR_FIFO_MON_CYCLE_CNT),
  .VCTR_MON_CNT_RANGE                  (VCTR_MON_CNT_RANGE),
  .VCTR_MON_CNT_SIZE                   (VCTR_MON_CNT_SIZE),
  .MAX_VCTR_MON_CYCLE_CNT              (MAX_VCTR_MON_CYCLE_CNT),
  .VCTR_FIFO_MON_CNT_RANGE             (VCTR_FIFO_MON_CNT_RANGE),
  .VCTR_FIFO_MON_CNT_SIZE              (VCTR_FIFO_MON_CNT_SIZE),
  .MAX_VCTR_FIFO_MON_CYCLE_CNT         (MAX_VCTR_FIFO_MON_CYCLE_CNT)
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
  .addr_fifo_mon_cnts(addr_fifo_mon_cnts),
  .vctr_fifo_wr(vctr_fifo_wr),
  .vctr_fifo_rd(vctr_fifo_rd),
  .vctr_cycle_cnt(vctr_cycle_cnt),
  .vctr_mon_cnts(vctr_mon_cnts),
  .vctr_fifo_mon_cnts(vctr_fifo_mon_cnts),
  .words_in_addr_fifo(words_in_addr_fifo),
  .words_in_vctr_fifo(words_in_vctr_fifo),
  .total_vctr_fifo_words_written(total_vctr_fifo_words_written)
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
