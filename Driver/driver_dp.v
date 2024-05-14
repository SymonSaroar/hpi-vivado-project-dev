module driver_dp(
  input               clk,
  input               reset,
  input        [31:0] master_data_in,
  input               master_data_in_val,
  input        [31:0] test_vector_addr,
  input               get_vector,
  output reg   [31:0] master_addr,
  output reg          master_rd
);

  reg [31:0] vector_data_dword0 ;
  reg [31:0] vector_data_dword1 ;
  reg [31:0] vector_data_dword2 ;

  always @ (posedge clk or posedge reset) begin
    if (reset) begin
      master_rd <= 1'b0;
      master_addr <= 32'd0;
    end 
    else begin
      if(get_vector) begin
        master_rd   <= 1'b1;
        master_addr <= test_vector_addr;
      end 
      else begin
        master_rd   <= 1'b0;                   
        master_addr <= master_addr;
      end
    end
  end
    
endmodule: driver_dp
