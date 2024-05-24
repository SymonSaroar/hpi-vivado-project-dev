module driver_cntrl #(
  parameter integer ADDR_MON_CNT_RANGE = 8,
  parameter integer ADDR_MON_CNT_SIZE = 16,
  parameter integer MAX_ADDR_CYCLE_CNT = 128,
  parameter integer VCTR_MON_CNT_RANGE = 8,
  parameter integer VCTR_MON_CNT_SIZE = 16,
  parameter integer MAX_VCTR_CYCLE_CNT = 128
)(
  input               clk,
  input               reset,
  input        [31:0] slave_addr,
  input               slave_rd,
  input               slave_wr,
  input        [31:0] slave_data_in,
  input        [15:0] addr_cycle_cnt,
  input        [ADDR_MON_CNT_SIZE-1:0] addr_mon_cnts[(MAX_ADDR_CYCLE_CNT/ADDR_MON_CNT_RANGE)-1:0],
  input        [ADDR_MON_CNT_SIZE-1:0] addr_fifo_mon_cnts[(MAX_ADDR_CYCLE_CNT/ADDR_MON_CNT_RANGE)-1:0],
  input        [15:0] vctr_cycle_cnt,
  input        [VCTR_MON_CNT_SIZE-1:0] vctr_mon_cnts[(MAX_VCTR_CYCLE_CNT/VCTR_MON_CNT_RANGE)-1:0],
  input        [VCTR_MON_CNT_SIZE-1:0] vctr_fifo_mon_cnts[(MAX_VCTR_CYCLE_CNT/VCTR_MON_CNT_RANGE)-1:0],
  input        [15:0] words_in_addr_fifo,
  input        [15:0] words_in_vctr_fifo,
  input        [255:0] trace_buf_bram_data,
  output reg   [31:0] trace_buf_bram_addr,
  output reg   [31:0] slave_data_out,
  output reg   [31:0] addr_fifo_din,
  output reg          addr_fifo_wr,
  input               vector_fifo_underrun,
  input               vector_fifo_overrun,
  output reg   [15:0] vector_fifo_threshold,
  input               addr_fifo_underrun,
  input               addr_fifo_overrun,
  input               addr_fifo_almost_full,
  output reg   [15:0] addr_fifo_threshold,
  output reg          end_program,
  output reg          run_program,
  output reg          active_program
);

localparam addr_cnt_iterations = (MAX_ADDR_CYCLE_CNT/ADDR_MON_CNT_RANGE);
localparam vctr_cnt_iterations = (MAX_VCTR_CYCLE_CNT/VCTR_MON_CNT_RANGE);

reg [31:0] vctor_addr;
reg [15:0] driver_cntrl_rsvd;
reg [7:0] consec_count;
reg driver_cntrl_rsvd7;
reg driver_cntrl_rsvd6;
reg driver_cntrl_rsvd5;
reg driver_cntrl_rsvd4;
reg driver_cntrl_rsvd3;
reg send_consec_addr;
reg abort_program;
reg freeze_program;
reg freeze_addr_fifo;
reg freeze_vector_fifo;
reg program_error;
reg addr_fifo_full;
reg addr_fifo_empty;
reg vector_fifo_full;
reg vector_fifo_empty;
reg program_start;

always @(posedge clk ) 
  if(reset == 1'b0) 
    active_program <= 1'b0;
  else if(program_error || abort_program || end_program)
    active_program <= 1'b0;
  else if (run_program) 
    active_program <= 1'b1;
  else 
    active_program <= active_program;

always @(posedge clk ) begin
  if(reset == 1'b0) begin
    addr_fifo_wr <= 1'b0;
    addr_fifo_din <= 32'h0000_0000;
  end
  else if ((slave_addr == 32'h0000_0000) && slave_wr) begin
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
    trace_buf_bram_addr <= 32'h0;
  end else if(slave_addr == 32'h0000_0200) && slave_wr) begin
    trace_buf_bram_addr <= slave_data_in;
  end else begin
    trace_buf_bram_addr <= trace_buf_bram_addr;
  end
end

always @(posedge clk ) begin
  if(reset == 1'b0) begin
    driver_cntrl_rsvd <= 16'h0000;
    consec_count <= 8'h00;
    send_consec_addr <= 1'b0;
    driver_cntrl_rsvd6 <= 1'b0;
    driver_cntrl_rsvd5 <= 1'b0;
    freeze_vector_fifo <= 1'b0;
    freeze_addr_fifo <= 1'b0;
    abort_program  <= 1'b0;
    freeze_program <= 1'b0;
    end_program <= 1'b0;
    run_program <= 1'b0;

    addr_fifo_threshold <= 16'd820;
    vector_fifo_threshold <= 16'd7500;
  end
  else if ((slave_addr == 32'h0000_0004) && slave_wr) begin
    driver_cntrl_rsvd <= slave_data_in[31:16];
    consec_count <= slave_data_in[15:8];
    send_consec_addr   <= slave_data_in[7];
    driver_cntrl_rsvd6 <= slave_data_in[6];
    driver_cntrl_rsvd5 <= slave_data_in[5];
    freeze_vector_fifo <= slave_data_in[4];
    freeze_addr_fifo   <= slave_data_in[3];
    abort_program      <= slave_data_in[2];
    end_program        <= slave_data_in[1];
    run_program        <= slave_data_in[0];
  end
  else if ((slave_addr == 32'h0000_0008) && slave_wr) begin
    addr_fifo_threshold <= slave_data_in[15:0];
  end
  else if ((slave_addr == 32'h0000_000C) && slave_wr) begin
    vector_fifo_threshold <= slave_data_in[15:0];
  end
end

always @(posedge clk ) begin
  if(reset == 1'b0) begin
    program_start <= 1'b0;
    program_error  <= 1'b0;
  end
  else begin
    program_start <= run_program && !program_start && !active_program;
    if(program_start)
      program_error <= 1'b0;
    else if(active_program && vector_fifo_overrun && vector_fifo_underrun && addr_fifo_overrun && addr_fifo_underrun)
      program_error <= 1'b1;
  end
end

wire [31:0] driver_cntrl_word = 
 {driver_cntrl_rsvd,  consec_count,       send_consec_addr, driver_cntrl_rsvd6, 
  driver_cntrl_rsvd5, freeze_vector_fifo, freeze_addr_fifo, abort_program,      
  end_program,        run_program};

wire interupt = 1'b0;   // FIXME
wire [31:0] driver_status = 
 {interupt,              program_error,      addr_fifo_full,  addr_fifo_empty, 
  vector_fifo_full,      vector_fifo_empty,  2'b00,
  8'h00,
  addr_fifo_almost_full, 3'b000,
  8'h00,
  3'b000,                active_program};

always @(posedge clk ) begin
  if(reset == 1'b0) begin
    slave_data_out <= 32'h0000_0000;
  end
  else begin
    if(slave_rd) begin
      case (slave_addr)
      'h0000_0000: slave_data_out <= addr_fifo_din;
      'h0000_0004: slave_data_out <= driver_cntrl_word;
      'h0000_0008: slave_data_out <= {addr_fifo_threshold};
      'h0000_000C: slave_data_out <= {vector_fifo_threshold};
      'h0000_0100: slave_data_out <= driver_status;
      'h0000_0104: slave_data_out <= {16'h0000,addr_cycle_cnt};
      'h0000_0108: slave_data_out <= {16'h0000,words_in_addr_fifo};
      'h0000_010C: slave_data_out <= {16'h0000,vctr_cycle_cnt};
      'h0000_0110: slave_data_out <= {16'h0000,words_in_vctr_fifo};
      
      'h0000_0200: slave_data_out <= trace_buf_bram_addr;
      'h0000_0210: slave_data_out <= trace_buf_bram_data[31 :0  ];
      'h0000_0214: slave_data_out <= trace_buf_bram_data[63 :32 ];
      'h0000_0218: slave_data_out <= trace_buf_bram_data[95 :64 ];
      'h0000_021C: slave_data_out <= trace_buf_bram_data[127:96 ];
      'h0000_0220: slave_data_out <= trace_buf_bram_data[159:128];
      'h0000_0224: slave_data_out <= trace_buf_bram_data[191:160];
      'h0000_0228: slave_data_out <= trace_buf_bram_data[223:192];
      'h0000_022C: slave_data_out <= trace_buf_bram_data[255:224];
      
      default: begin
          if(slave_addr >= 'h0001_1000 && slave_addr < 'h0001_1FFF) begin
            for (int i = 0; i < addr_cnt_iterations; i += 1) begin
                if (slave_addr == 'h0001_1000 + i * 'h4)
                  slave_data_out <= {16'h0000, addr_mon_cnts[i]};
            end
          end 
          else if(slave_addr >= 'h0001_2000 && slave_addr < 'h0001_2FFF) begin
            for (int i = 0; i < addr_cnt_iterations; i += 1) begin
                if (slave_addr == 'h0001_2000 + i * 'h4)
                  slave_data_out <= {16'h0000, addr_fifo_mon_cnts[i]};
            end
          end 
          else if (slave_addr >= 'h0001_3000 && slave_addr < 'h0001_3FFF) begin
            for (int i = 0; i < vctr_cnt_iterations; i += 1) begin
                if (slave_addr == 'h0001_3000 + i * 'h4)
                  slave_data_out <= {16'h0000, vctr_mon_cnts[i]};
            end
          end 
          else if (slave_addr >= 'h0001_4000 && slave_addr < 'h0001_4FFF) begin
            for (int i = 0; i < vctr_cnt_iterations; i += 1) begin
                if (slave_addr == 'h0001_4000 + i * 'h4)
                  slave_data_out <= {16'h0000, vctr_fifo_mon_cnts[i]};
            end
          end 
          else begin
            slave_data_out <= 32'h0000_0000;
          end
      end
      endcase
    end
  end
end
 
endmodule //driver_cntrl
