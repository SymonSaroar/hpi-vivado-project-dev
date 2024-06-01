//`include "design.sv"

module top;
  reg         clk;
  reg         reset_l;
//reg [31:0]  master_data_in;
//reg         master_data_in_val;
  reg [31:0]  slave_awaddr;
  reg [31:0]  slave_araddr;
  reg         slave_rd;
  reg         slave_wr;
  reg [31:0]  slave_data_in;
  reg [31:0]  reg_addr;
  reg [31:0]  reg_wr_data;
  reg [31:0]  expected_data;
  reg [63:0]  sim_count;
  reg [63:0]  error_count;
  reg [63:0]  mod_sim_count;
  reg         vctr_fifo_wr;
  reg         vctr_fifo_rd;
  reg         addr_fifo_rd;
  reg         vector_fifo_empty;
  reg         vector_fifo_full;
  reg         vector_fifo_underrun;
  reg         vector_fifo_overrun;
  reg         addr_fifo_full;
  reg         addr_fifo_empty;
  reg         addr_fifo_underrun;
  reg         addr_fifo_overrun;
  reg         addr_fifo_almost_full;
  reg [255:0] trace_buf_bram_data;

//wire [31:0] master_add;
  wire [31:0] slave_data_out;
  wire [31:0] addr_fifo_din;
//wire        master_rd;
  integer i,j,k,l;
  integer fd;
  
 
  initial begin
  // Dump waves
    $dumpfile("dump.vcd");
    $dumpvars(6);

    fd = $fopen("verlog.log", "w");  
  end 
 
  initial begin
    reset_l                = 1'b1;
//  master_data_in         = 32'h0000_0000;
//  master_data_in_val     = 1'b0;
    slave_awaddr           = 32'h0000_0000;
    slave_araddr           = 32'h0000_0000;
    slave_rd               = 1'b0;
    slave_wr               = 1'b0;
    slave_data_in          = 32'h0000_0000;
//  slave_data_in_val      = 1'b0;
//  slave_data_out         = 32'h0000_0000;
//  slave_data_out_val     = 1'b0;
    reg_addr               = 32'h0000_00000;
    reg_wr_data            = 32'h0000_00000;
    expected_data          = 32'h0000_00000;
    vctr_fifo_wr           = 1'b0;
    vctr_fifo_rd           = 1'b0;
    addr_fifo_rd           = 1'b0;
    vector_fifo_full       = 1'b0;  // FIXME need to test these bits and error gets set
    vector_fifo_empty      = 1'b0;  // FIXME need to test these bits and error gets set
    vector_fifo_underrun   = 1'b0;  // FIXME need to test these bits and error gets set
    vector_fifo_overrun    = 1'b0;
    addr_fifo_full         = 1'b0;  // FIXME need to test these bits and error can be read
    addr_fifo_empty        = 1'b0;  // FIXME need to test these bits and error can be read
    addr_fifo_underrun     = 1'b0;
    addr_fifo_overrun      = 1'b0;
    addr_fifo_almost_full  = 1'b0;
    trace_buf_bram_data    = 256'd0;
    i = 0; j = 0; k = 0; l = 0;
  end
    
  initial begin
    clk = 1'b0;
    forever begin
      #(2000) clk = ~clk;
    end
  end

  initial begin
    sim_count= 64'd0;
    error_count= 64'd0;
    mod_sim_count = 64'd0;
    forever begin 
      @(negedge clk) begin
        sim_count +=1;
        mod_sim_count = sim_count % 64'd10;
//      25,000 ~ 100 us
        if ((sim_count % 25000) == 1'b0) begin
          $display("time: %0t ps ******************************************",$time);
          $display("time: %0t ps Another 100 us sim_count = %0d            ",$time,sim_count);
          $display("time: %0t ps ******************************************",$time);
        end
      end
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
    $display("time: %0t ps ******************************************",$time);
    $display("time: %0t ps Write driver control to start program     ",$time);
    $display("time: %0t ps ******************************************",$time);
    reg_addr = 32'h0000_0004; 
    reg_wr_data = 32'h0000_0001; 
    slave_write(reg_addr,reg_wr_data); 
    
    $display("time: %0t ps ******************************************",$time);
    $display("time: %0t ps Test read address register                ",$time);
    $display("time: %0t ps ******************************************",$time);
    repeat (10) @(negedge clk);
    reg_addr = 32'h0004; expected_data = 32'h0000_0001;
    slave_read(reg_addr, expected_data); 

    repeat (20) @(negedge clk);
    $display("time: %0t ps ******************************************",$time);
    $display("time: %0t ps Write driver control clear start program  ",$time);
    $display("time: %0t ps ******************************************",$time);
    reg_addr = 32'h0000_0004; 
    reg_wr_data = 32'h0000_0000; 
    slave_write(reg_addr,reg_wr_data); 
    repeat (10) @(negedge clk);
    reg_addr = 32'h0000_0000; 
    reg_wr_data = 32'h0000_0001; 

    fork 
    ///////////////////////////////////////////////////////////////////////////////
    // fork to test addr fifo write cycle in parrallel
    ///////////////////////////////////////////////////////////////////////////////
    begin
      $display("time: %0t ps Simulation addr thread START                  ",$time);
      reg_wr_data = 32'h0000_1000;                                      // uniqued data
      slave_write(reg_addr, reg_wr_data);                               // prime the pump
      for(int j =0; j < 16; j+=1) begin
        for(int i=0; i < (16*8) - j*8 ; i+=8) begin
          $display("time: %0t ps loop 1: j=%0d  i=%0d                      ",$time,j,i);
          repeat (i) @(negedge clk);
          reg_wr_data = reg_wr_data+32'h0000_0001; 
          slave_write(reg_addr, reg_wr_data); 
        end //
      end  
/* 
      for(int j =0; j < 65540 ; j+=1) begin
        for(int i=0; i < 1; i+=8) begin
          $display("time: %0t ps loop 2: j=%0d  i=%0d                      ",$time,j,i);
          repeat (i) @(negedge clk);
          reg_wr_data = reg_wr_data+32'h0000_0001; 
          slave_write(reg_addr, reg_wr_data); 
        end
      end */

      repeat (100) @(negedge clk);
      $display("time: %0t ps Simulation addr thread END                    ",$time); 
      repeat (10) @(negedge clk);
    end //

    ///////////////////////////////////////////////////////////////////////////////
    // fork to test vector fifo write cycle in parrallel
    ///////////////////////////////////////////////////////////////////////////////
    begin
      $display("time: %0t ps Simulation vector thread START         ",$time);

      repeat (10) @(negedge clk);  // First to prime the pump
      vctr_fifo_wr = 1'b1;
      repeat (1) @(negedge clk);
      vctr_fifo_wr = 1'b0;
      repeat (1) @(negedge clk);

      for(int l = 0; l < 10; l+=1) begin
        for(int k = 1; k < (16*8) ; k+=8) begin
          $display("time: %0t ps loop 1: l=%0d  k=%0d                      ",$time,l,k);
          repeat (k) @(negedge clk);
          vctr_fifo_wr = 1'b1;
          repeat (1) @(negedge clk);
          vctr_fifo_wr = 1'b0;
          $display("time: %0t ps ******************************************",$time);
          $display("time: %0t ps 1st vector fifo write loop l=%0d k=%0d    ",$time,k,l);
          $display("time: %0t ps ******************************************",$time);
        end //
      end  

      repeat (10) @(negedge clk);  
      vctr_fifo_wr = 1'b1;
      repeat (1) @(negedge clk);
      vctr_fifo_wr = 1'b0;
      repeat (1) @(negedge clk);

      for(int l = 0; l < 16; l+=1) begin
        for(int k = 1; k < (16*8) - l*8 ; k+=8) begin
          $display("time: %0t ps loop 1: l=%0d  k=%0d                      ",$time,l,k);
          repeat (k) @(negedge clk);
          vctr_fifo_wr = 1'b1;
          repeat (1) @(negedge clk);
          vctr_fifo_wr = 1'b0;
          $display("time: %0t ps ******************************************",$time);
          $display("time: %0t ps 2nd vector fifo write loop l=%0d k=%0d    ",$time,k,l);
          $display("time: %0t ps ******************************************",$time);
        end //
      end  
// comment this section out to remove the long loop verctor cycle count and
// vector monitor count max out
      k = 10;
      repeat (65535) begin         
        repeat (1) @(negedge clk);
        vctr_fifo_wr = 1'b1;
        $display("time: %0t ps ******************************************",$time);
        $display("time: %0t ps 3rd vector fifo write loop =%0d           ",$time,k);
        $display("time: %0t ps ******************************************",$time);
        repeat (1) @(negedge clk);
        vctr_fifo_wr = 1'b0;
        k+=1;
      end

      /////////////////////////////////////////////////////////////////////////////
      // long wait in order to max out vector cycle count
      /////////////////////////////////////////////////////////////////////////////
      repeat (65526) @(negedge clk);
  
      $display("time: %0t ps ******************************************",$time);
      $display("time: %0t ps Made it after long delay vector fork      ",$time);
      $display("time: %0t ps ******************************************",$time);
      repeat (10) @(negedge clk);
      $display("time: %0t ps Simulation vector thread END              ",$time);
      repeat (10) @(negedge clk);
    end 

  ///////////////////////////////////////////////////////////////////////////////
  // Join the two threads
  ///////////////////////////////////////////////////////////////////////////////
  join
    $display("time: %0t ps Simulation joined                           ",$time);

    repeat (10) @(negedge clk);
    reg_addr = 32'h0000_0004; reg_wr_data = 32'h0000_0002;
    slave_write(reg_addr,reg_wr_data); 
    repeat (10) @(negedge clk);

    $display("time: %0t ps ******************************************",$time);
    $display("time: %0t ps Reading out all registers                 ",$time);
    $display("time: %0t ps ******************************************",$time);

    /////////////////////////////////////////////////////////////////////////////
    // reading control registers
    /////////////////////////////////////////////////////////////////////////////
    repeat (10) @(negedge clk);
    reg_addr = 32'h0000_0000; expected_data = 32'h0000_1088;
    slave_read(reg_addr,expected_data); 
    repeat (1) @(negedge clk);
    reg_addr = 32'h0000_0004; expected_data = 32'h0000_0002;
    slave_read(reg_addr,expected_data); 
    repeat (10) @(negedge clk);

    /////////////////////////////////////////////////////////////////////////////
    // reading status registers
    /////////////////////////////////////////////////////////////////////////////
    $display("time: %0t ps ******************************************",$time);
    $display("time: %0t ps Reading Status Registers                  ",$time);
    $display("time: %0t ps ******************************************",$time);
    reg_addr = 32'h0000_0100; expected_data = 32'h0000_0000;
    slave_read(reg_addr,expected_data); 
    reg_addr = 32'h0000_0104; expected_data = 32'h0000_0000;
    slave_read(reg_addr,expected_data); 
    reg_addr = 32'h0000_0108; expected_data = 32'h0000_0089;
    slave_read(reg_addr,expected_data); 
    reg_addr = 32'h0000_010C; expected_data = 32'h0000_0000;
    slave_read(reg_addr,expected_data); 
    reg_addr = 32'h0000_0110; expected_data = 32'h0000_ffff;
    slave_read(reg_addr,expected_data); 
    repeat (10) @(negedge clk);

    /////////////////////////////////////////////////////////////////////////////
    // reading Monitor Status Registers
    /////////////////////////////////////////////////////////////////////////////
    $display("time: %0t ps *******************************************",$time);
    $display("time: %0t ps Reading Addr Cycle Monitor Registers       ",$time);
    $display("time: %0t ps *******************************************",$time);
//  reg_addr = 32'h0001_1000; expected_data = 32'h0000_0010;  // FINDOUT
    reg_addr = 32'h0000_1000; expected_data = 32'h0000_0010;
    repeat(15) begin
      slave_read(reg_addr,expected_data); 
      repeat (1) @(negedge clk);
      reg_addr += 32'h0000_0004; expected_data -= 32'h0000_0001;
    end

    repeat (10) @(negedge clk);

    $display("time: %0t ps ******************************************",$time);
    $display("time: %0t ps Reading Addr FIFO Monitor Registers        ",$time);
    $display("time: %0t ps ******************************************",$time);
//  reg_addr = 32'h0001_2000; expected_data = 32'h0000_0008;   // FINDOUT
    reg_addr = 32'h0000_2000; expected_data = 32'h0000_0008;
    repeat(15) begin
      if( reg_addr == 32'h0000_2004) begin
      //$display("time: %0t ps *  MADE It 1    **************************",$time);
        expected_data = 32'h0000_0007;
      end
      else begin
        expected_data = 32'h0000_0008;
      //$display("time: %0t ps *  MADE It 2    **************************",$time);
      end
      slave_read(reg_addr,expected_data); 
      repeat (1) @(negedge clk);
      reg_addr += 32'h0000_0004; 
    end

    $display("time: %0t ps ******************************************",$time);
    $display("time: %0t ps Reading Vector Cycle Monitor Registers    ",$time);
    $display("time: %0t ps ******************************************",$time);
    repeat (10) @(negedge clk);
    reg_addr = 32'h0000_3000; expected_data = 32'h0000_FFFF;
    slave_read(reg_addr,expected_data); 
    reg_addr = 32'h0000_3004; expected_data = 32'h0000_001A;
    slave_read(reg_addr,expected_data); 
    reg_addr = 32'h0000_3008; expected_data = 32'h0000_0018;
    repeat(14) begin
      slave_read(reg_addr,expected_data); 
      repeat (1) @(negedge clk);
      reg_addr += 32'h0000_0004; expected_data -= 32'h0000_0001;
    end

    repeat (10) @(negedge clk);

    $display("time: %0t ps ******************************************",$time);
    $display("time: %0t ps Reading Addr FIFO Monitor Registers        ",$time);
    $display("time: %0t ps ******************************************",$time);
    reg_addr = 32'h0000_4000; expected_data = 32'h0000_0008;
    repeat(15) begin
      if( reg_addr == 32'h0000_4004) begin
      //$display("time: %0t ps *  MADE It 1    **************************",$time);
        expected_data = 32'h0000_0007;
      end
      else begin
        expected_data = 32'h0000_0008;
      //$display("time: %0t ps *  MADE It 2    **************************",$time);
      end
      slave_read(reg_addr,expected_data); 
      repeat (1) @(negedge clk);
      reg_addr += 32'h0000_0004; 
    end

    repeat (10) @(negedge clk);

    $display("time: %0t ps ******************************************",$time);
    $display("time: %0t ps Testing the word fifo decraments          ",$time);
    $display("time: %0t ps ******************************************",$time);
    vctr_fifo_wr = 1'b1;
    vctr_fifo_rd = 1'b1;
    repeat (1) @(negedge clk);
    vctr_fifo_wr = 1'b0;
    vctr_fifo_rd = 1'b0;
    repeat (1) @(negedge clk);

    vctr_fifo_rd = 1'b1;
    addr_fifo_rd = 1'b1;
    repeat (1) @(negedge clk);
    vctr_fifo_rd = 1'b0;
    addr_fifo_rd = 1'b0;
    repeat (1) @(negedge clk);

    reg_addr = 32'h0000_0108; expected_data = 32'h0000_0088;
    slave_read(reg_addr,expected_data); 
    repeat (1) @(negedge clk); expected_data = 32'h0000_FFFE;
    reg_addr = 32'h0000_0110; 
    slave_read(reg_addr,expected_data); 

    repeat (10) @(negedge clk);
    $display("time: %0t ps ******************************************",$time);
    $display("time: %0t ps Simulation reached its natural end        ",$time);
    $display("time: %0t ps Simulation Error Couint = %0d             ",$time,error_count);
    $display("time: %0t ps ******************************************",$time);
    $fclose(fd); 
    $finish;    

  end 
  
task slave_write;
  input [31:0] addr;
  input [31:0] data; 
  begin
    repeat (1) @(negedge clk);
//  $display("time: %0t ps ******************************************",$time);
//  $display("time: %0t ps Beginning slave Write ",$time                    );
//  $display("time: %0t ps ******************************************",$time);
    slave_awaddr = addr; 
    slave_data_in = data; 
    slave_wr   =   1'b1; 
    $display("time: %0t ps ******************************************",$time);
    $display("time=%0t ps: Write to REG: %h,%h                       ",$time,addr,data);
    $display("time: %0t ps ******************************************",$time);
    repeat (1) @(negedge clk);
    slave_wr   =   1'b0; 
    
//  $display("time: %0t ps Ending slave write",$time);
  end
endtask

task slave_read;
  input [31:0] addr;
  input [31:0] expected_data; 
  begin
    reg [31:0] data;
    data = 32'hFFFF_FFFF;
    repeat (1) @(negedge clk);
//  $display("time: %0t ps ******************************************",$time);
//  $display("time: %0t ps Beginning slave Read                      ",$time);
//  $display("time: %0t ps ******************************************",$time);
    slave_araddr = addr; 
    slave_rd   =   1'b1; 
    repeat (1) @(negedge clk);
    slave_rd   =   1'b0; 
    repeat (1) @(negedge clk);
    data = slave_data_out; 
    repeat (1) @(negedge clk);
    $display("time: %0t ps ****************************************************",$time);
    $display("time: %0t ps slave read addr: %h data: %h : %0d                  ",$time, addr, data, data);
    $display("time: %0t ps ****************************************************",$time);
    if(data !== expected_data) begin
      error_count +=1;
      $display("time: %0t ps !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!",$time);
      $display("time: %0t ps slave read ERROR exected: %h actual: %h ERR CNT = %0d   ",$time, expected_data, data, error_count);
      $display("time: %0t ps !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!",$time);
    end

    
//  $display("time: %0t ps Ending slave read",$time);
  end
endtask

//////////////////////////////////////////////////////////////////////////////
// recrating commented out logic in monitor block for words in FIFO
//////////////////////////////////////////////////////////////////////////////

///////////////////////////////////////////////////////////////////////////////
// Words in Vector FIFO counter
///////////////////////////////////////////////////////////////////////////////
reg [15:0] words_in_vctr_fifo;

always @(posedge clk ) begin
  if(reset_l == 1'b0) 
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
end

///////////////////////////////////////////////////////////////////////////////
// Words in Address FIFO counter
///////////////////////////////////////////////////////////////////////////////
reg [15:0] words_in_addr_fifo;
wire addr_fifo_wr; 

always @(posedge clk ) begin
  if(reset_l == 1'b0) 
    words_in_addr_fifo <= 16'h0000;
//else if(run_program && !active_program)
//  words_in_addr_fifo <= 16'h0000;
  else if( addr_fifo_wr && !addr_fifo_rd && words_in_addr_fifo != 16'hFFFF)
    words_in_addr_fifo <= words_in_addr_fifo + 16'h0001;
  else if(!addr_fifo_wr &&  addr_fifo_rd && words_in_addr_fifo != 16'h0000)
    words_in_addr_fifo <= words_in_addr_fifo - 16'h0001;
  else if( addr_fifo_wr &&  addr_fifo_rd)
    words_in_addr_fifo <= words_in_addr_fifo;
  else
    words_in_addr_fifo <= words_in_addr_fifo;
end

wire active_program; 
wire end_program; 
wire run_program;
wire [15:0] addr_cycle_cnt;
wire [15:0] vctr_cycle_cnt;
wire [31:0] trace_buf_bram_addr;
wire [15:0] addr_fifo_threshold; // FIXME check that this fifo works
wire [15:0] vector_fifo_threshold;
  
driver driver_0(
  .clk(clk),
  .reset(reset_l),
//.master_addr(master_add),
//.master_rd(master_rd),
//.master_data_in(master_data_in),
//.master_data_in_val(master_data_in_val),
  .slave_awaddr(slave_awaddr),
  .slave_araddr(slave_araddr),
  .slave_rd(slave_rd),
  .slave_wr(slave_wr),
  .slave_data_in(slave_data_in),
  .slave_data_out(slave_data_out),
  .addr_fifo_din(addr_fifo_din),
  .addr_fifo_wr(addr_fifo_wr),
  .addr_fifo_rd(addr_fifo_rd),
  .vctr_fifo_wr(vctr_fifo_wr),
  .vctr_fifo_rd(vctr_fifo_rd),
  .active_program(active_program),
  .vector_fifo_empty(vector_fifo_empty),
  .vector_fifo_full(vector_fifo_full),
  .vector_fifo_underrun(vector_fifo_underrun),
  .vector_fifo_overrun(vector_fifo_overrun),
  .vector_fifo_threshold(vector_fifo_threshold),
  .addr_fifo_full(addr_fifo_full),
  .addr_fifo_empty(addr_fifo_empty),
  .addr_fifo_overrun(addr_fifo_overrun),
  .addr_fifo_underrun(addr_fifo_underrun),
  .addr_fifo_threshold(addr_fifo_threshold),
  .addr_fifo_almost_full(addr_fifo_almost_full),
  .end_program(end_program),
  .run_program(run_program),
  .addr_cycle_cnt(addr_cycle_cnt),
  .vctr_cycle_cnt(vctr_cycle_cnt),
  .words_in_addr_fifo(words_in_addr_fifo),
  .words_in_vctr_fifo(words_in_vctr_fifo),
  .trace_buf_bram_data(trace_buf_bram_data),
  .trace_buf_bram_addr(trace_buf_bram_addr)
);
  
endmodule: top
