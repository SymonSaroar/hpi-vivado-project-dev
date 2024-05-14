module driver_monitor#(
	parameter integer ADDR_MON_CNT_RANGE = 8,
	parameter integer ADDR_MON_CNT_SIZE = 16,
	parameter integer MAX_ADDR_CYCLE_CNT = 128,
	parameter integer VCTR_MON_CNT_RANGE = 8,
	parameter integer VCTR_MON_CNT_SIZE = 16,
	parameter integer MAX_VCTR_CYCLE_CNT = 128
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
  output reg [ADDR_MON_CNT_SIZE-1 : 0] addr_mon_cnts[(MAX_ADDR_CYCLE_CNT/ADDR_MON_CNT_RANGE)-1 : 0],
  input             vctr_fifo_wr,
  input             vctr_fifo_rd,
  output reg [15:0] vctr_cycle_cnt,
  output reg [VCTR_MON_CNT_SIZE-1 : 0] vctr_mon_cnts[(MAX_VCTR_CYCLE_CNT/VCTR_MON_CNT_RANGE)-1 : 0],
  output reg [15:0] words_in_addr_fifo,
  output reg [15:0] words_in_vctr_fifo
);

localparam MAX_COUNT = {ADDR_MON_CNT_SIZE{1'b1}};
localparam addr_cnt_iterations = (MAX_ADDR_CYCLE_CNT/ADDR_MON_CNT_RANGE);
localparam vctr_cnt_iterations = (MAX_VCTR_CYCLE_CNT/VCTR_MON_CNT_RANGE);
reg addr_first_write;
reg vctr_first_write;

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
always @(posedge clk ) begin
  if(reset == 1'b0) 
    words_in_addr_fifo <= 16'h0000;
  else if(run_program && !active_program)
    words_in_addr_fifo <= 16'h0000;
  else if( addr_fifo_wr && !addr_fifo_rd && words_in_addr_fifo != 16'hFFFF)
    words_in_addr_fifo <= words_in_addr_fifo + 16'h0001;
  else if(!addr_fifo_wr &&  addr_fifo_rd && words_in_addr_fifo != 16'h0000)
    words_in_addr_fifo <= words_in_addr_fifo - 16'h0001;
  else if( addr_fifo_wr &&  addr_fifo_rd)
    words_in_addr_fifo <= words_in_addr_fifo;
  else
    words_in_addr_fifo <= words_in_addr_fifo;
end

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
    for (int i = 0; i < addr_cnt_iterations; i += 1) begin
      addr_mon_cnts[i] <= 16'd0;
    end
  end 
  else if(run_program && !active_program) begin
    for (int i = 0; i < addr_cnt_iterations; i += 1) begin
      addr_mon_cnts[i] <= 16'd0;
    end
  end 
  else if(addr_fifo_wr && active_program && addr_first_write) begin
    for (int i = 0; i < addr_cnt_iterations; i += 1) begin
      if(addr_cycle_cnt <= 16'd8                               && addr_mon_cnts[0] < MAX_COUNT) begin
        addr_mon_cnts[0] <= addr_mon_cnts[0] + 16'd1; 
      end
      else if(addr_cycle_cnt > 16'd120                         && addr_mon_cnts[15] < MAX_COUNT) begin
        addr_mon_cnts[15] <= addr_mon_cnts[15] + 16'd1; 
      end
      else if (addr_cycle_cnt >= i * ADDR_MON_CNT_RANGE && addr_cycle_cnt < (i + 1) * ADDR_MON_CNT_RANGE && addr_mon_cnts[i] < MAX_COUNT)  begin
        addr_mon_cnts[i] <= addr_mon_cnts[i] + 16'd1;
      end
    end     
  end      
end

/////////////////////////////////////////////////////////////////////////////////////////////////
//  First section monitors the vector fifo write 
/////////////////////////////////////////////////////////////////////////////////////////////////
always @(posedge clk ) 
  if(reset == 1'b0) 
    vctr_first_write <= 1'b0;
  else if (vctr_fifo_wr && active_program)
    vctr_first_write <= 1'b1;

///////////////////////////////////////////////////////////////////////////////
// Words in Vector FIFO counter
///////////////////////////////////////////////////////////////////////////////
always @(posedge clk ) 
  if(reset == 1'b0) 
    words_in_vctr_fifo <= 16'h0000;
//else if(run_program && !active_program)
//  words_in_vctr_fifo <= 16'h0000;
  else if( vctr_fifo_wr && !vctr_fifo_rd && words_in_vctr_fifo != 16'hFFFF)
    words_in_vctr_fifo <= words_in_vctr_fifo + 16'h0001;
  else if(!vctr_fifo_wr &&  vctr_fifo_rd && words_in_vctr_fifo != 16'h0000)
    words_in_vctr_fifo <= words_in_vctr_fifo - 16'h0001;
  else if( vctr_fifo_wr &&  vctr_fifo_rd)
    words_in_vctr_fifo <= words_in_vctr_fifo;
  else
    words_in_vctr_fifo <= words_in_vctr_fifo;

///////////////////////////////////////////////////////////////////////////////
// Statistics to minitor vector fifo write cycle: Wr ......  Wr total clocks
///////////////////////////////////////////////////////////////////////////////
always @(posedge clk ) 
  if(reset == 1'b0) 
    vctr_cycle_cnt <= 16'h0000;
  else if(end_program == 1'b1) 
    vctr_cycle_cnt <= 16'h0000;
  else if (vctr_fifo_wr)
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
    for (int i = 0; i < 16; i += 1) begin
      vctr_mon_cnts[i] <= 16'd0;
    end
  end 
  else if(run_program && !active_program) begin
    for (int i = 0; i < vctr_cnt_iterations; i += 1) begin
      vctr_mon_cnts[i] <= 16'd0;
    end
  end 
  else if(vctr_fifo_wr && active_program && vctr_first_write) begin
    for (int i = 0; i < vctr_cnt_iterations; i += 1) begin 
      if(vctr_cycle_cnt <= 16'd8                               && vctr_mon_cnts[0] < MAX_COUNT) begin
        vctr_mon_cnts[0] <= vctr_mon_cnts[0] + 16'd1; 
      end
      else if(vctr_cycle_cnt > 16'd120                         && vctr_mon_cnts[15] < MAX_COUNT) begin 
        vctr_mon_cnts[15] <= vctr_mon_cnts[15] + 16'd1; 
      end
      else if ((vctr_cycle_cnt >= i*VCTR_MON_CNT_RANGE) && (vctr_cycle_cnt < (i+1)*VCTR_MON_CNT_RANGE) && vctr_mon_cnts[i] < MAX_COUNT) begin
        vctr_mon_cnts[i] <= vctr_mon_cnts[i] + 16'd1;
      end
    end     
  end      
end

endmodule //driver_monitor
