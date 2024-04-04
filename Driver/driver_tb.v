//`include "design.sv"

module top;
  reg         clk;
  reg         reset;
  reg [63:0]  master_data_in;
  reg         master_data_in_val;
  reg [63:0]  slave_addr;
  reg         slave_rd;
  reg         slave_wr;
  reg [63:0]  slave_data_in;

  wire [63:0]  master_add;
  wire [63:0]  slave_data_out;
  wire         master_rd;
  
  initial begin
    reset = 1'b0;
    master_data_in     = 64'h0000_0000_0000_0000;
    master_data_in_val =   1'b0;
    slave_addr         = 64'h0000_0000_0000_0000;
    slave_rd           =   1'b0;
    slave_wr           =   1'b0;
    slave_data_in      = 64'h0000_0000_0000_0000;
//  slave_data_in_val  =   1'b0;
//  slave_data_out     = 64'h0000_0000_0000_0000;
//  slave_data_out_val =   1'b0;
  end
    
  initial begin
    clk = 1'b0;
    forever begin
      #(50) clk = ~clk;
    end
  end
  
  initial begin
    repeat (3) @(negedge clk);
    reset = 1'b1;
    repeat (3) @(negedge clk);
    reset = 1'b0;
    repeat (3) @(negedge clk);
    
    //$finish;    
    
  end
  
  initial begin
    repeat (10) @(negedge clk);
    slave_write; 
    repeat (10) @(negedge clk);
    repeat (10) @(negedge clk);
    repeat (10) @(negedge clk);
    $finish;    
  end
  
//  always @(posedge clk) $display count;
 
//initial begin
// Dump waves
//   $dumpvars("dump.vcd", top);
//  end 

initial begin
// Dump waves
  $dumpfile("dump.vcd");
  $dumpvars(4);
end 
 
  task slave_write; begin
    repeat (1) @(negedge clk);
    $display("time: %0t ******************************************",$time);
    $display("time: %0t Beginning slave Write ",$time);
    $display("time: %0t ******************************************",$time);
    repeat (1) @(negedge clk);
    slave_addr = 64'h0000_0000_0000_0001; 
    slave_data_in = 64'h1234_5678_9ABC_DEC0; 
    slave_wr   =   1'b1; 
    $display("time=%0t: Write to REG: %0h",$time,slave_addr);
    repeat (1) @(negedge clk);
    slave_wr   =   1'b0; 
    repeat (1) @(negedge clk);
    
    $display("time: %0t Ending Write to REG FIS",$time);
  end
  endtask
  
  
  drver drver_0(
    .clk(clk),
    .reset(reset),
    .master_addr(master_add),
    .master_rd(master_rd),
    .master_data_in(master_data_in),
    .master_data_in_val(master_data_in_val),
    .slave_addr(slave_addr),
    .slave_rd(slave_rd),
    .slave_wr(slave_wr),
    .slave_data_in(slave_data_in),
    .slave_data_out(slave_data_out) );
  
endmodule: top
