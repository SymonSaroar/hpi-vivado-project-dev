module driver_monitor(
  input             clk,
  input             reset,
  input             end_program,
  input             active_program,
  input             addr_fifo_wr,
  input       [7:0] addr_mon_sel,
  output reg [31:0] addr_cycle_cnt,
  output reg [15:0] addr_mon_cnts[15:0]
);

reg first_write;

always @(posedge clk ) 
  if(reset == 1'b0) 
    first_write <= 1'b0;
  else if (addr_fifo_wr && active_program)
    first_write <= 1'b1;

always @(posedge clk ) 
  if(reset == 1'b0) 
    addr_cycle_cnt <= 32'h0000_0000;
  else if(end_program == 1'b1) 
    addr_cycle_cnt <= 32'h0000_0000;
  else if (addr_fifo_wr)
    addr_cycle_cnt <= 32'h0000_0000;
  else if(addr_cycle_cnt == 32'hFFFF_FFFF)
    addr_cycle_cnt <= addr_cycle_cnt;
  else if(active_program && first_write)
    addr_cycle_cnt <= addr_cycle_cnt + 32'd1;
  else
    addr_cycle_cnt <= addr_cycle_cnt;

always @(posedge clk ) begin
  if(reset == 1'b0 ) begin
    for (int i = 0; i < 16; i += 1) begin
      addr_mon_cnts[i] <= 16'd0;
    end
  end 
  else if(addr_fifo_wr && active_program) begin
    for (int i = 0; i < 16; i += 1) begin 
      if(addr_cycle_cnt <= 16'd8                               && addr_mon_cnts[0] < 16'hFFFF) begin
        addr_mon_cnts[0] <= addr_mon_cnts[0] + 16'd1; 
      end
      else if(addr_cycle_cnt > 16'd120                         && addr_mon_cnts[15] < 16'hFFFF) begin 
        addr_mon_cnts[15] <= addr_mon_cnts[15] + 16'd1; 
      end
      else if (addr_cycle_cnt >= i*8 && addr_cycle_cnt < i*8+8 && addr_mon_cnts[i] < 16'hFF04) begin
        addr_mon_cnts[i] <= addr_mon_cnts[i] + 16'd1;
      end
    end     
  end      
end

endmodule //driver_monitor
