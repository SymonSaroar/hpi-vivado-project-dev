module driver_cntrl(
  input               clk,
  input               reset,
  input        [31:0] slave_addr,
  input               slave_rd,
  input               slave_wr,
  input        [31:0] slave_data_in,
  input        [15:0] addr_mon_cnts[15:0],
  output reg   [31:0] slave_data_out,
  output reg   [31:0] addr_fifo_din,
  output reg          addr_fifo_wr
);

reg [31:0] driver_status;
reg [31:0] vctor_addr;
reg [15:0] driver_cntrl_rsvd;
reg [7:0] consec_count;
reg driver_cntrl_rsvd7;
reg driver_cntrl_rsvd6;
reg driver_cntrl_rsvd5;
reg driver_cntrl_rsvd4;
reg driver_cntrl_rsvd3;
reg send_consec_addr;
reg end_program;
reg run_program;
reg abort_program;
reg freeze_program;
reg freeze_addr_fifo;
reg freeze_vector_fifo;

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
  end
  else if ((slave_addr == 32'h0000_0001) && slave_wr) begin
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
end

wire [15:0] driver_cntrl_word = {driver_cntrl_rsvd, consec_count, 
  send_consec_addr, driver_cntrl_rsvd6, driver_cntrl_rsvd5, freeze_vector_fifo, 
  freeze_addr_fifo, abort_program,      end_program,        run_program};

always @(posedge clk ) begin
  if(reset == 1'b0) begin
    slave_data_out <= 32'h0000_0000;
  end
  else begin
    if(slave_rd) begin
      case (slave_addr)
      'h0000_0000: slave_data_out <= addr_fifo_din;
      'h0000_0004: slave_data_out <= driver_cntrl_word;
      'h0000_0100: slave_data_out <= driver_status;
      'h0000_1000: slave_data_out <= addr_mon_cnts[0];
      'h0001_1004: slave_data_out <= addr_mon_cnts[1];
      'h0001_1008: slave_data_out <= addr_mon_cnts[2];
      'h0001_100C: slave_data_out <= addr_mon_cnts[3];
      'h0001_1010: slave_data_out <= addr_mon_cnts[4];
      'h0001_1014: slave_data_out <= addr_mon_cnts[5];
      'h0001_1018: slave_data_out <= addr_mon_cnts[6];
      'h0001_101C: slave_data_out <= addr_mon_cnts[7];
      'h0001_1020: slave_data_out <= addr_mon_cnts[8];
      'h0001_1024: slave_data_out <= addr_mon_cnts[9];
      'h0001_1028: slave_data_out <= addr_mon_cnts[10];
      'h0001_102C: slave_data_out <= addr_mon_cnts[11];
      'h0001_1030: slave_data_out <= addr_mon_cnts[12];
      'h0001_1034: slave_data_out <= addr_mon_cnts[13];
      'h0001_1038: slave_data_out <= addr_mon_cnts[14];
      'h0001_103C: slave_data_out <= addr_mon_cnts[15];
      default: slave_data_out <= 32'h0000_0000;
      endcase
    end
  end
end
 
endmodule //driver_cntrl
