module driver_monitor#(
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
  input             clk,
  input             reset,
  input             end_program,
  input             active_program,
  input             run_program,
  input             addr_fifo_wr,
  input             addr_fifo_rd,
  output reg [15:0] addr_cycle_cnt,
  output reg [ADDR_MON_CNT_SIZE-1 : 0] addr_mon_cnts[0: (MAX_ADDR_MON_CYCLE_CNT/ADDR_MON_CNT_RANGE)-1],
  output reg [ADDR_FIFO_MON_CNT_SIZE-1 : 0] addr_fifo_mon_cnts[0: (MAX_ADDR_FIFO_MON_CYCLE_CNT/ADDR_FIFO_MON_CNT_RANGE)-1],
  input             vctr_fifo_wr,
  input             vctr_fifo_rd,
  output reg [15:0] vctr_cycle_cnt,
  output reg [VCTR_MON_CNT_SIZE-1 : 0] vctr_mon_cnts[0: (MAX_VCTR_MON_CYCLE_CNT/VCTR_MON_CNT_RANGE)-1],
  output reg [VCTR_FIFO_MON_CNT_SIZE-1 : 0] vctr_fifo_mon_cnts[0: (MAX_VCTR_FIFO_MON_CYCLE_CNT/VCTR_FIFO_MON_CNT_RANGE)-1],
  input      [15:0] words_in_addr_fifo,
  input      [15:0] words_in_vctr_fifo
);

localparam max_addr_mon_count = {ADDR_MON_CNT_SIZE{1'b1}};
localparam max_addr_fifo_mon_count = {ADDR_FIFO_MON_CNT_SIZE{1'b1}};
localparam max_vctr_mon_count = {VCTR_MON_CNT_SIZE{1'b1}};
localparam max_vctr_fifo_mon_count = {VCTR_FIFO_MON_CNT_SIZE{1'b1}};
localparam addr_mon_cnt_iterations = (MAX_ADDR_MON_CYCLE_CNT/ADDR_MON_CNT_RANGE);
localparam addr_fifo_mon_cnt_iterations = (MAX_ADDR_FIFO_MON_CYCLE_CNT/ADDR_FIFO_MON_CNT_RANGE);
localparam vctr_mon_cnt_iterations = (MAX_VCTR_MON_CYCLE_CNT/VCTR_MON_CNT_RANGE);
localparam vctr_fifo_mon_cnt_iterations = (MAX_VCTR_FIFO_MON_CYCLE_CNT/VCTR_FIFO_MON_CNT_RANGE);
reg addr_first_write;
reg vctr_first_write;
reg cnt;

wire vctr_fifo_word_wr;

////////////////////////////////////////////////////////////////////////////////
//  First section monitors the address fifo write 
////////////////////////////////////////////////////////////////////////////////
always @(posedge clk ) 
  if(reset == 1'b0) 
    addr_first_write <= 1'b0;
  else if (addr_fifo_wr && active_program)
    addr_first_write <= 1'b1;

///////////////////////////////////////////////////////////////////////////////
// Words in Address FIFO counter
///////////////////////////////////////////////////////////////////////////////
// always @(posedge clk ) begin
//   if(reset == 1'b0) 
//     words_in_addr_fifo <= 16'h0000;
//   else if(run_program && !active_program)
//     words_in_addr_fifo <= 16'h0000;
//   else if( addr_fifo_wr && !addr_fifo_rd && words_in_addr_fifo != 16'hFFFF)
//     words_in_addr_fifo <= words_in_addr_fifo + 16'h0001;
//   else if(!addr_fifo_wr &&  addr_fifo_rd && words_in_addr_fifo != 16'h0000)
//     words_in_addr_fifo <= words_in_addr_fifo - 16'h0001;
//   else if( addr_fifo_wr &&  addr_fifo_rd)
//     words_in_addr_fifo <= words_in_addr_fifo;
//   else
//     words_in_addr_fifo <= words_in_addr_fifo;
// end

///////////////////////////////////////////////////////////////////////////////
// Statistics to minitor address fifo write cycle: Wr ......  Wr total clocks
///////////////////////////////////////////////////////////////////////////////
always @(posedge clk ) begin
  if(reset == 1'b0) 
    addr_cycle_cnt <= 16'h0000;
  else if(end_program == 1'b1) 
    addr_cycle_cnt <= 16'h0000;
  else if (addr_fifo_wr)
    addr_cycle_cnt <= 16'h0000;
  else if(addr_cycle_cnt == 16'hFFFF)
    addr_cycle_cnt <= addr_cycle_cnt;
  else if(active_program && addr_first_write)
    addr_cycle_cnt <= addr_cycle_cnt + 16'd1;
  else
    addr_cycle_cnt <= addr_cycle_cnt;
end

///////////////////////////////////////////////////////////////////////////////
// Statistics to minitor address fifo write cycles
///////////////////////////////////////////////////////////////////////////////
always @(posedge clk ) begin
  if(reset == 1'b0 ) begin
    for (int i = 0; i < addr_mon_cnt_iterations; i += 1) begin
      addr_mon_cnts[i] <= 16'd0;
    end
  end 
  else if(run_program && !active_program) begin
    for (int i = 0; i < addr_mon_cnt_iterations; i += 1) begin
      addr_mon_cnts[i] <= 16'd0;
    end
  end 
  else if(addr_fifo_wr && active_program && addr_first_write) begin
    for (int i = 0; i < addr_mon_cnt_iterations; i += 1) begin
      if((i == 0) && addr_cycle_cnt <= ADDR_MON_CNT_RANGE && addr_mon_cnts[0] < max_addr_mon_count) begin
        addr_mon_cnts[0] <= addr_mon_cnts[0] + 16'd1; 
      end
      else if((i == addr_mon_cnt_iterations-1) && addr_cycle_cnt > (i*ADDR_MON_CNT_RANGE) && addr_mon_cnts[addr_mon_cnt_iterations-1] < max_addr_mon_count) begin
        addr_mon_cnts[addr_mon_cnt_iterations-1] <= addr_mon_cnts[addr_mon_cnt_iterations-1] + 16'd1; 
      end
      else if (addr_cycle_cnt > i * ADDR_MON_CNT_RANGE && addr_cycle_cnt <= (i + 1) * ADDR_MON_CNT_RANGE && addr_mon_cnts[i] < max_addr_mon_count)  begin
        addr_mon_cnts[i] <= addr_mon_cnts[i] + 16'd1;
      end
    end     
  end      
end

///////////////////////////////////////////////////////////////////////////////
// Statistics to monitor address fifo words 
///////////////////////////////////////////////////////////////////////////////
always @(posedge clk ) begin
  if(reset == 1'b0 ) begin
    for (int i = 0; i < addr_fifo_mon_cnt_iterations; i += 1) begin
      addr_fifo_mon_cnts[i] <= 16'd0;
    end
  end 
  else if(run_program && !active_program) begin
    for (int i = 0; i < addr_fifo_mon_cnt_iterations; i += 1) begin
      addr_fifo_mon_cnts[i] <= 16'd0;
    end
  end 
  else if(addr_fifo_wr && active_program && addr_first_write) begin
    for (int i = 0; i < addr_fifo_mon_cnt_iterations; i += 1) begin
      if((i == 0) && words_in_addr_fifo <= ADDR_FIFO_MON_CNT_RANGE && addr_fifo_mon_cnts[0] < max_addr_fifo_mon_count) begin
        addr_fifo_mon_cnts[0] <= addr_fifo_mon_cnts[0] + 16'd1; 
      end
      else if((i == addr_fifo_mon_cnt_iterations-1) && words_in_addr_fifo > (i*ADDR_FIFO_MON_CNT_RANGE) && addr_fifo_mon_cnts[addr_fifo_mon_cnt_iterations-1] < max_addr_fifo_mon_count) begin
        addr_fifo_mon_cnts[addr_fifo_mon_cnt_iterations-1] <= addr_fifo_mon_cnts[addr_fifo_mon_cnt_iterations-1] + 16'd1; 
      end
      else if (words_in_addr_fifo > i * ADDR_FIFO_MON_CNT_RANGE && words_in_addr_fifo <= (i + 1) * ADDR_FIFO_MON_CNT_RANGE && addr_fifo_mon_cnts[i] < max_addr_fifo_mon_count)  begin
        addr_fifo_mon_cnts[i] <= addr_fifo_mon_cnts[i] + 16'd1;
      end
    end     
  end      
end

/////////////////////////////////////////////////////////////////////////////////////////////////
//  First section monitors the vector fifo write 
/////////////////////////////////////////////////////////////////////////////////////////////////
always @(posedge clk )
    if(reset == 1'b0)
        cnt <= 1'b0;
    else if (vctr_fifo_wr)
        cnt <= ~cnt;
        
assign vctr_fifo_word_wr = vctr_fifo_wr && cnt;
// =====================================================
// two writes adds one entry in the vector FIFO
// two 128 bit writes adds one 192bit vector data.
// =====================================================
// one read removes one entry from the vector FIFO
// one read outputs one 192bit vector data
// =====================================================

always @(posedge clk ) 
  if(reset == 1'b0) 
    vctr_first_write <= 1'b0;
  else if (vctr_fifo_word_wr && active_program)
    vctr_first_write <= 1'b1;

///////////////////////////////////////////////////////////////////////////////
// Words in Vector FIFO counter
///////////////////////////////////////////////////////////////////////////////
// always @(posedge clk ) 
//   if(reset == 1'b0) 
//     words_in_vctr_fifo <= 16'h0000;
// //else if(run_program && !active_program)
// //  words_in_vctr_fifo <= 16'h0000;
//   else if( vctr_fifo_word_wr && !vctr_fifo_rd && words_in_vctr_fifo != 16'hFFFF)
//     words_in_vctr_fifo <= words_in_vctr_fifo + 16'h0001;
//   else if(!vctr_fifo_word_wr &&  vctr_fifo_rd && words_in_vctr_fifo != 16'h0000)
//     words_in_vctr_fifo <= words_in_vctr_fifo - 16'h0001;
//   else if( vctr_fifo_word_wr &&  vctr_fifo_rd)
//     words_in_vctr_fifo <= words_in_vctr_fifo;
//   else
//     words_in_vctr_fifo <= words_in_vctr_fifo;

///////////////////////////////////////////////////////////////////////////////
// Statistics to minitor vector fifo write cycle: Wr ......  Wr total clocks
///////////////////////////////////////////////////////////////////////////////
always @(posedge clk ) 
  if(reset == 1'b0) 
    vctr_cycle_cnt <= 16'h0000;
  else if(end_program == 1'b1) 
    vctr_cycle_cnt <= 16'h0000;
  else if (vctr_fifo_word_wr)
    vctr_cycle_cnt <= 16'h0000;
  else if(vctr_cycle_cnt == 16'hFFFF)
    vctr_cycle_cnt <= vctr_cycle_cnt;
  else if(active_program && vctr_first_write)
    vctr_cycle_cnt <= vctr_cycle_cnt + 16'd1;
  else
    vctr_cycle_cnt <= vctr_cycle_cnt;

///////////////////////////////////////////////////////////////////////////////
// Statistics to minitor vector fifo write cycles
///////////////////////////////////////////////////////////////////////////////
always @(posedge clk ) begin
  if(reset == 1'b0 ) begin
    for (int i = 0; i < vctr_mon_cnt_iterations; i += 1) begin
      vctr_mon_cnts[i] <= 16'd0;
    end
  end 
  else if(run_program && !active_program) begin
    for (int i = 0; i < vctr_mon_cnt_iterations; i += 1) begin
      vctr_mon_cnts[i] <= 16'd0;
    end
  end 
  else if(vctr_fifo_word_wr && active_program && vctr_first_write) begin
    for (int i = 0; i < vctr_mon_cnt_iterations; i += 1) begin 
      if((i == 0) && vctr_cycle_cnt <= VCTR_MON_CNT_RANGE && vctr_mon_cnts[0] < max_vctr_mon_count) begin
        vctr_mon_cnts[0] <= vctr_mon_cnts[0] + 16'd1; 
      end
      else if((i == vctr_mon_cnt_iterations-1) && vctr_cycle_cnt > (i*VCTR_MON_CNT_RANGE) && vctr_mon_cnts[vctr_mon_cnt_iterations-1] < max_vctr_mon_count) begin 
        vctr_mon_cnts[vctr_mon_cnt_iterations-1] <= vctr_mon_cnts[vctr_mon_cnt_iterations-1] + 16'd1;
      end
      else if ((vctr_cycle_cnt > i*VCTR_MON_CNT_RANGE) && (vctr_cycle_cnt <= (i+1)*VCTR_MON_CNT_RANGE) && vctr_mon_cnts[i] < max_vctr_mon_count) begin
        vctr_mon_cnts[i] <= vctr_mon_cnts[i] + 16'd1;
      end
    end     
  end      
end

///////////////////////////////////////////////////////////////////////////////
// Statistics to minitor vector fifo words
///////////////////////////////////////////////////////////////////////////////
always @(posedge clk ) begin
  if(reset == 1'b0 ) begin
    for (int i = 0; i < vctr_fifo_mon_cnt_iterations; i += 1) begin
      vctr_fifo_mon_cnts[i] <= 16'd0;
    end
  end 
  else if(run_program && !active_program) begin
    for (int i = 0; i < vctr_fifo_mon_cnt_iterations; i += 1) begin
      vctr_fifo_mon_cnts[i] <= 16'd0;
    end
  end 
  else if(vctr_fifo_word_wr && active_program && vctr_first_write) begin
    for (int i = 0; i < vctr_fifo_mon_cnt_iterations; i += 1) begin 
      if((i == 0) && words_in_vctr_fifo <= VCTR_FIFO_MON_CNT_RANGE  && vctr_fifo_mon_cnts[0] < max_vctr_fifo_mon_count) begin
        vctr_fifo_mon_cnts[0] <= vctr_fifo_mon_cnts[0] + 16'd1; 
      end
      else if((i == vctr_fifo_mon_cnt_iterations-1) && words_in_vctr_fifo > (i*VCTR_FIFO_MON_CNT_RANGE) && vctr_fifo_mon_cnts[vctr_fifo_mon_cnt_iterations-1] < max_vctr_fifo_mon_count) begin // FIXME is this really paramaterized?
        vctr_fifo_mon_cnts[vctr_fifo_mon_cnt_iterations-1] <= vctr_fifo_mon_cnts[vctr_fifo_mon_cnt_iterations-1] + 16'd1; 
      end
      else if ((words_in_vctr_fifo > i*VCTR_FIFO_MON_CNT_RANGE) && (words_in_vctr_fifo <= (i+1)*VCTR_FIFO_MON_CNT_RANGE) && vctr_fifo_mon_cnts[i] < max_vctr_fifo_mon_count) begin
        vctr_fifo_mon_cnts[i] <= vctr_fifo_mon_cnts[i] + 16'd1;
      end
    end     
  end      
end

endmodule //driver_monitor
