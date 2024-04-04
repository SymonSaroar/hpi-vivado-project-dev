module driver_monitor(
  input             clk,
  input             reset,
  input             active_program,
  input             addr_fifo_wr,
  input       [7:0] addr_mon_sel,
  output reg [31:0] addr_cycle_cnt,
  output reg [15:0] addr_mon_cnts[15:0]
);

int i;

always @(posedge clk ) 
  if(reset == 1'b0) 
    addr_cycle_cnt <= 32'h0000_0000;
  else if (addr_fifo_wr )
    addr_cycle_cnt <= 32'd0;
  else 
    addr_cycle_cnt <= addr_cycle_cnt + 32'd1;

always @(posedge clk ) begin
  if(reset == 1'b0) begin
    for (int i = 0; i < 16; i += 1) begin
      addr_mon_cnts[i] <= 16'd0;
    end
  end
  else if(addr_fifo_wr) begin
    for (int i = 0; i < 16; i += 1) begin 
      if(addr_cycle_cnt <= 16'd8                                   && addr_mon_cnts[0] < 16'hFFFF)  begin
        addr_mon_cnts[0] <= addr_mon_cnts[0] + 16'd1; 
      end
      else if (addr_cycle_cnt >= 16'd8 && addr_cycle_cnt  < 16'd16 && addr_mon_cnts[1] < 16'd6)     begin
        addr_mon_cnts[1] <= addr_mon_cnts[1] + 16'd1;
      end
      else if (addr_cycle_cnt >= 16'd16 && addr_cycle_cnt < 16'd24 && addr_mon_cnts[2] < 16'hFFFF)  begin
        addr_mon_cnts[2] <= addr_mon_cnts[2] + 16'd1;
      end
      else if (addr_cycle_cnt >= 16'd24 && addr_cycle_cnt < 16'd32 && addr_mon_cnts[3] < 16'hFFFF)  begin
        addr_mon_cnts[3] <= addr_mon_cnts[3] + 16'd1;
      end
      else if (addr_cycle_cnt >= 16'd40 && addr_cycle_cnt < 16'd48 && addr_mon_cnts[4] < 16'hFFFF)  begin
        addr_mon_cnts[4] <= addr_mon_cnts[4] + 16'd1;
      end
      else if (addr_cycle_cnt >= 16'd48 && addr_cycle_cnt < 16'd56 && addr_mon_cnts[5] < 16'hFFFF)  begin
        addr_mon_cnts[5] <= addr_mon_cnts[5] + 16'd1;
      end
      else if (addr_cycle_cnt >= 16'd56 && addr_cycle_cnt < 16'd64 && addr_mon_cnts[6] < 16'hFFFF)  begin
        addr_mon_cnts[6] <= addr_mon_cnts[6] + 16'd1;
      end
      else if (addr_cycle_cnt >= 16'd64 && addr_cycle_cnt < 16'd72 && addr_mon_cnts[7] < 16'hFFFF)  begin
        addr_mon_cnts[7] <= addr_mon_cnts[7] + 16'd1;
      end
      else if (addr_cycle_cnt >= 16'd64 && addr_cycle_cnt < 16'd72 && addr_mon_cnts[8] < 16'hFFFF)  begin
        addr_mon_cnts[8] <= addr_mon_cnts[8] + 16'd1;
      end
      else if (addr_cycle_cnt >= 16'd64 && addr_cycle_cnt < 16'd72 && addr_mon_cnts[9] < 16'hFFFF)  begin
        addr_mon_cnts[9] <= addr_mon_cnts[9] + 16'd1;
      end
      else if (addr_cycle_cnt >= 16'd64 && addr_cycle_cnt < 16'd72 && addr_mon_cnts[10] < 16'hFFFF) begin
        addr_mon_cnts[10] <= addr_mon_cnts[10] + 16'd1;
      end
      else if (addr_cycle_cnt >= 16'd64 && addr_cycle_cnt < 16'd72 && addr_mon_cnts[11] < 16'hFFFF) begin
        addr_mon_cnts[11] <= addr_mon_cnts[11] + 16'd1;
      end
      else if (addr_cycle_cnt >= 16'd64 && addr_cycle_cnt < 16'd72 && addr_mon_cnts[12] < 16'hFFFF) begin
        addr_mon_cnts[12] <= addr_mon_cnts[12] + 16'd1;
      end
      else if (addr_cycle_cnt >= 16'd64 && addr_cycle_cnt < 16'd72 && addr_mon_cnts[13] < 16'hFFFF) begin
        addr_mon_cnts[13] <= addr_mon_cnts[13] + 16'd1;
      end
      else if (addr_cycle_cnt >= 16'd64 && addr_cycle_cnt < 16'd72 && addr_mon_cnts[14] < 16'hFFFF) begin
        addr_mon_cnts[14] <= addr_mon_cnts[14] + 16'd1;
      end
      else if (addr_cycle_cnt >= 16'd64 && addr_cycle_cnt < 16'd72 && addr_mon_cnts[15] < 16'hFFFF) begin
        addr_mon_cnts[15] <= addr_mon_cnts[15] + 16'd1;
      end
      else begin
        addr_mon_cnts[i] <= addr_mon_cnts[i];
      end    
    end     
  end      
end

endmodule //driver_monitor
