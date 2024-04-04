module driver_dp(
  input               clk,
  input               reset,
  input        [63:0] master_data_in,
  input               master_data_in_val,
  input        [63:0] test_vector_addr,
  input               get_vector,
  output       [63:0] master_addr,
  output              master_rd
);

  reg [63:0] vector_data_dword0 ;
  reg [63:0] vector_data_dword1 ;
  reg [63:0] vector_data_dword2 ;

  reg [63:0] master_addr_reg;
  reg master_rd;

  assign master_addr = master_addr_reg;

  always @ (posedge clk or posedge reset) begin
    if (reset) begin
      master_rd <= 1'b0;
      master_addr_reg <= 64'd0;
    end 
    else begin
      if(get_vector) begin
        master_rd   <= 1'b1;
        master_addr_reg <= test_vector_addr;
      end 
      else begin
        master_rd   <= 1'b0;                   
        master_addr_reg <= master_addr_reg;
      end
    end
  end
    
endmodule: driver_dp
