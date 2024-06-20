module driver_cntrl #(
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
)(
  input               clk,
  input               reset,
  input        [31:0] slave_awaddr,
  input        [31:0] slave_araddr,
  input               slave_rd,
  input               slave_wr,
  input        [31:0] slave_data_in,
  input        [15:0] addr_cycle_cnt,
  input        [ADDR_MON_CNT_SIZE-1:0] addr_mon_cnts[0: (MAX_ADDR_MON_CYCLE_CNT/ADDR_MON_CNT_RANGE)-1],
  input        [ADDR_FIFO_MON_CNT_SIZE-1:0] addr_fifo_mon_cnts[0: (MAX_ADDR_FIFO_MON_CYCLE_CNT/ADDR_FIFO_MON_CNT_RANGE)-1],
  input        [15:0] vctr_cycle_cnt,
  input        [VCTR_MON_CNT_SIZE-1:0] vctr_mon_cnts[0: (MAX_VCTR_MON_CYCLE_CNT/VCTR_MON_CNT_RANGE)-1],
  input        [VCTR_FIFO_MON_CNT_SIZE-1:0] vctr_fifo_mon_cnts[0: (MAX_VCTR_FIFO_MON_CYCLE_CNT/VCTR_FIFO_MON_CNT_RANGE)-1],
  input        [15:0] words_in_addr_fifo,
  input        [15:0] words_in_vctr_fifo,
  output reg   [31:0] slave_data_out,
  output reg   [31:0] addr_fifo_din,
  output reg          addr_fifo_wr,
  input               vector_fifo_full,
  input               vector_fifo_empty,
  input               addr_fifo_full,
  input               addr_fifo_empty,
  input               vector_fifo_underrun,
  input               vector_fifo_overrun,
  output reg   [15:0] vector_fifo_threshold,
  input               addr_fifo_underrun,
  input               addr_fifo_overrun,
  input               addr_fifo_almost_full,
  output reg   [15:0] addr_fifo_threshold,
  output reg          end_program,
  output reg          run_program,
  output reg          active_program,
  output reg          program_start,
  output reg          program_error,
  output reg          vector_byte_swap,
  input        [31:0] total_vctr_fifo_words_written
);

localparam addr_mon_cnt_iterations = (MAX_ADDR_MON_CYCLE_CNT/ADDR_MON_CNT_RANGE);
localparam addr_fifo_mon_cnt_iterations = (MAX_ADDR_FIFO_MON_CYCLE_CNT/ADDR_FIFO_MON_CNT_RANGE);
localparam vctr_mon_cnt_iterations = (MAX_VCTR_MON_CYCLE_CNT/VCTR_MON_CNT_RANGE);
localparam vctr_fifo_mon_cnt_iterations = (MAX_VCTR_FIFO_MON_CYCLE_CNT/VCTR_FIFO_MON_CNT_RANGE);

reg [31:0] vctor_addr;
reg [15:0] driver_cntrl_rsvd;
reg [7:0] consec_count;
reg driver_cntrl_rsvd7;
reg driver_cntrl_rsvd6;
reg driver_cntrl_rsvd4;
reg driver_cntrl_rsvd3;
reg send_consec_addr;
reg abort_program;
reg freeze_program;
reg freeze_addr_fifo;
reg freeze_vector_fifo;
//reg program_error;
//reg program_start;

always @(posedge clk ) begin
  if(reset == 1'b0) 
    active_program <= 1'b0;
  else if(program_error || abort_program || end_program)
    active_program <= 1'b0;
  else if(run_program && (words_in_addr_fifo >= addr_fifo_threshold)) 
    active_program <= 1'b1;
  else 
    active_program <= active_program;
end
always @(posedge clk ) begin
  if(reset == 1'b0) begin
    addr_fifo_wr <= 1'b0;
    addr_fifo_din <= 32'h0000_0000;
  end
  else if ((slave_awaddr == 32'h0000_0000) && slave_wr) begin
    addr_fifo_wr <= 1'b1;
    addr_fifo_din <= slave_data_in;
  end 
  else begin
    addr_fifo_wr <= 1'b0;
    addr_fifo_din <= addr_fifo_din;
  end
end

always @(posedge clk ) begin
  if(reset == 1'b0) begin
    driver_cntrl_rsvd <= 16'h0000;
    consec_count <= 8'h00;
    send_consec_addr <= 1'b0;
    driver_cntrl_rsvd6 <= 1'b0;
    vector_byte_swap <= 1'b0;
    freeze_vector_fifo <= 1'b0;
    freeze_addr_fifo <= 1'b0;
    abort_program  <= 1'b0;
    freeze_program <= 1'b0;
    end_program <= 1'b0;
    run_program <= 1'b0;
    addr_fifo_threshold <= 16'd820;
    vector_fifo_threshold <= 16'd7500;
  end
  else if ((slave_awaddr == 32'h0000_0004) && slave_wr) begin
    driver_cntrl_rsvd   <= slave_data_in[31:16];
    consec_count        <= slave_data_in[15:8];
    send_consec_addr    <= slave_data_in[7];
    driver_cntrl_rsvd6  <= slave_data_in[6];
    vector_byte_swap    <= slave_data_in[5];
    freeze_vector_fifo  <= slave_data_in[4];
    freeze_addr_fifo    <= slave_data_in[3];
    abort_program       <= slave_data_in[2];
    end_program         <= slave_data_in[1];
    run_program         <= slave_data_in[0];
  end
  else if ((slave_awaddr == 32'h0000_0008) && slave_wr) begin
    addr_fifo_threshold <= slave_data_in[15:0];
  end
  else if ((slave_awaddr == 32'h0000_000C) && slave_wr) begin
    vector_fifo_threshold <= slave_data_in[15:0];
  end
end

always @(posedge clk ) begin
  if(reset == 1'b0) begin
    program_start <= 1'b0;
    program_error  <= 1'b0;
  end
  else begin
    if(program_start == 1'b0)
      program_start <= run_program && !active_program && (words_in_addr_fifo >= addr_fifo_threshold);
    else
      program_start <= program_start;
    
    if(program_start)
      program_error <= 1'b0;
    else if(active_program && (vector_fifo_overrun || vector_fifo_underrun || addr_fifo_overrun || addr_fifo_underrun))
      program_error <= 1'b1;
    else
      program_error <= program_error;
    
  end
end

wire [31:0] driver_cntrl_word = 
 {driver_cntrl_rsvd,  consec_count,       send_consec_addr, driver_cntrl_rsvd6, 
  vector_byte_swap, freeze_vector_fifo, freeze_addr_fifo, abort_program,      
  end_program,        run_program};

wire interupt = 1'b0;   // FIXME
wire [31:0] driver_status = 
 {interupt,              program_error,      addr_fifo_full,  addr_fifo_empty, 
  vector_fifo_full,      vector_fifo_empty,  2'b00,
  8'h00,
  addr_fifo_almost_full, 3'b000,
  8'h00,
  3'b000,                active_program};



wire [31:0] data_out_addr_mon_cnt;
wire [31:0] data_out_addr_fifo_mon_cnt;
wire [31:0] data_out_vctr_mon_cnt;
wire [31:0] data_out_vctr_fifo_mon_cnt;

reg [31:0] slave_data_out_next;
always @(posedge clk ) begin
  if(reset == 1'b0) begin
    slave_data_out <= 32'h0000_0000;
  end
  else begin
    slave_data_out <= slave_data_out_next;
  end
end 

always @(*) begin
  slave_data_out_next = 32'h0000_0000;
  
  // if(slave_rd) begin
    case(slave_araddr[31:12])
    'h0000_0: begin
      case (slave_araddr[11:0])
      'h000: slave_data_out_next = addr_fifo_din;
      'h004: slave_data_out_next = driver_cntrl_word;
      'h008: slave_data_out_next = {addr_fifo_threshold};
      'h00C: slave_data_out_next = {vector_fifo_threshold};
      
      'h100: slave_data_out_next = driver_status;
      'h104: slave_data_out_next = {16'h0000,addr_cycle_cnt};
      'h108: slave_data_out_next = {16'h0000,words_in_addr_fifo};
      'h10C: slave_data_out_next = {16'h0000,vctr_cycle_cnt};
      'h110: slave_data_out_next = {16'h0000,words_in_vctr_fifo};

      'h114: slave_data_out_next = total_vctr_fifo_words_written;
      default: slave_data_out_next = 32'h0000_0000;
      endcase
    end
    'h0000_1: begin
      slave_data_out_next = data_out_addr_mon_cnt;
    end
    'h0000_2: begin
      slave_data_out_next = data_out_addr_fifo_mon_cnt;
    end
    'h0000_3: begin
      slave_data_out_next = data_out_vctr_mon_cnt;
    end
    'h0000_4: begin
      slave_data_out_next = data_out_vctr_fifo_mon_cnt;
    end
    default: begin
      slave_data_out_next = 32'h0000_0000;
    end
    endcase
  // end
  // else begin
  //   slave_data_out_next = 32'h0000_0000;
  // end
end

mon_cnts_handler #(addr_mon_cnt_iterations) u1 (.addr(slave_araddr[11:0]), .mon_cnts(addr_mon_cnts), .data_out(data_out_addr_mon_cnt));
mon_cnts_handler #(addr_fifo_mon_cnt_iterations) u2 (.addr(slave_araddr[11:0]), .mon_cnts(addr_fifo_mon_cnts), .data_out(data_out_addr_fifo_mon_cnt));
mon_cnts_handler #(vctr_mon_cnt_iterations) u3 (.addr(slave_araddr[11:0]), .mon_cnts(vctr_mon_cnts), .data_out(data_out_vctr_mon_cnt));
mon_cnts_handler #(vctr_fifo_mon_cnt_iterations) u4 (.addr(slave_araddr[11:0]), .mon_cnts(vctr_fifo_mon_cnts), .data_out(data_out_vctr_fifo_mon_cnt));

endmodule //driver_cntrl

module mon_cnts_handler # (
  parameter integer iterations = 16
)(
  input [11:0] addr,
  input [15:0] mon_cnts [0: iterations-1],
  output reg [31:0] data_out
);
  localparam iteration_bits = $clog2(iterations);
  always @(*) begin
      data_out = {16'h0000, mon_cnts[addr[2 +: iteration_bits]]};
  end
endmodule