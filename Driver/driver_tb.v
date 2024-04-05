//`include "design.sv"

module top;
  reg         clk;
  reg         reset_l;
//reg [31:0]  master_data_in;
//reg         master_data_in_val;
  reg [31:0]  slave_addr;
  reg         slave_rd;
  reg         slave_wr;
  reg [31:0]  slave_data_in;
  reg [31:0]  reg_addr;
  reg [31:0]  reg_data;

//wire [31:0]  master_add;
  wire [31:0]  slave_data_out;
//wire         master_rd;
  integer i;
  
  initial begin
    reset_l = 1'b1;
//  master_data_in     = 32'h0000_0000;
//  master_data_in_val =   1'b0;
    slave_addr         = 32'h0000_0000;
    slave_rd           =   1'b0;
    slave_wr           =   1'b0;
    slave_data_in      = 32'h0000_0000;
//  slave_data_in_val  =   1'b0;
//  slave_data_out     = 32'h0000_0000;
//  slave_data_out_val =   1'b0;
    reg_addr           = 32'h0000_00000;
    reg_data           = 32'h0000_00000;
    i = 0;
  end
    
  initial begin
    clk = 1'b0;
    forever begin
      #(50) clk = ~clk;
    end
  end
  
  initial begin
    repeat (3) @(negedge clk);
    reset_l = 1'b0;
    repeat (3) @(negedge clk);
    reset_l = 1'b1;
    repeat (3) @(negedge clk);
    
    //$finish;    
    
  end
  
  initial begin
    repeat (10) @(negedge clk);
    reg_addr = 32'h0001; 
    reg_data = 32'h0001; 
    slave_write(reg_addr,reg_data); 
    repeat (20) @(negedge clk);
    reg_addr = 32'h0001; 
    reg_data = 32'h0000; 
    slave_write(reg_addr,reg_data); 
    repeat (10) @(negedge clk);
    reg_addr = 32'h0000; 
    reg_data = 32'h0001; 
    /*
    repeat(15) begin
      slave_write(reg_addr,reg_data); 
      reg_data = reg_data+32'h0001; 
    end
    repeat (16) begin 
      slave_write(reg_addr, reg_data); 
      reg_data = reg_data+32'h0001; 
      i = i + 8;
      repeat (i) @(negedge clk);
    end
    */


    for(int j =0; j < 66000; j+=1) begin
      for(int i=0; i < 128; i+=8) begin
        $display("time: %0t ******************************************",$time);
        $display("time: %0t j=%d  i=%d                                ",$time,j,i);
        $display("time: %0t ******************************************",$time);
        repeat (i) @(negedge clk);
        reg_data = reg_data+32'h0001; 
        slave_write(reg_addr, reg_data); 
      end
    end

    repeat (1000) @(negedge clk);
    reg_addr = 32'h0001; 
    reg_data = 32'h0002; 
    slave_write(reg_addr,reg_data); 
    repeat (150) @(negedge clk);

    repeat (140) @(negedge clk);
    $display("time: %0t ******************************************",$time);
    $display("time: %0t Simulation reached its natural end        ",$time);
    $display("time: %0t ******************************************",$time);
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
 
task slave_write;
  input [31:0] addr;
  input [31:0] data; 
  begin
    repeat (1) @(negedge clk);
//  $display("time: %0t ******************************************",$time);
//  $display("time: %0t Beginning slave Write ",$time);
//  $display("time: %0t ******************************************",$time);
    slave_addr = addr; 
    slave_data_in = data; 
    slave_wr   =   1'b1; 
    $display("time=%0t: Write to REG: %h,%0h",$time,addr,data);
    repeat (1) @(negedge clk);
    slave_wr   =   1'b0; 
    
//  $display("time: %0t Ending slave write",$time);
  end
endtask
  
  
driver driver_0(
  .clk(clk),
  .reset(reset_l),
//.master_addr(master_add),
//.master_rd(master_rd),
//.master_data_in(master_data_in),
//.master_data_in_val(master_data_in_val),
  .slave_addr(slave_addr),
  .slave_rd(slave_rd),
  .slave_wr(slave_wr),
  .slave_data_in(slave_data_in),
  .slave_data_out(slave_data_out),
  .addr_fifo_din(addr_fifo_din),
  .addr_fifo_wr(addr_fifo_wr)
);
  
endmodule: top
