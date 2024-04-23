`timescale 1ns / 1ps

module datapath_fifo #(
    parameter integer INPUT_DATA_WIDTH = 128,
    parameter integer OUTPUT_DATA_WIDTH = 192,
    parameter integer DEPTH = 1024,
    parameter integer DEPTH_SIZE = 10,
    parameter integer CLK_DIV = 30
)(
    input wire clk,
    input wire rstn,
    input wire wr,
    input wire rd,
    input wire [INPUT_DATA_WIDTH - 1 : 0] data_in,
    output wire [OUTPUT_DATA_WIDTH - 1 : 0] data_out,
    output wire full,
    output wire empty,
    output wire threshold,
    output wire overflow,
    output wire underflow
    );
    
    localparam ptr_mask = {DEPTH_SIZE{1'b1}};
    reg [64-1 : 0] mem0 [DEPTH-1: 0];
    reg [64-1 : 0] mem1 [DEPTH-1: 0];
    reg [64-1 : 0] mem2 [DEPTH-1: 0];
    reg [OUTPUT_DATA_WIDTH-1 : 0] data_out_reg;
    reg [DEPTH_SIZE : 0] w_ptr01, w_ptr2;
    reg [DEPTH_SIZE : 0] r_ptr;
    reg full_reg, empty_reg, threshold_reg, overflow_reg, underflow_reg;
//    reg almost_full_reg, almost_empty_reg;
    wire wr_en, rd_en;
    wire equal_full, equal_empty, first_bit, overflow_en, underflow_en;
    wire [DEPTH_SIZE : 0] diff;
    reg cnt;
    reg [5:0] rd_clk_counter;
    wire rd_clk;
    
//    wire [DEPTH_SIZE - 1 : 0] w_ptr_masked0, w_ptr_masked1, w_ptr_masked2;
//    wire [DEPTH_SIZE - 1 : 0] w_ptr_masked3, w_ptr_masked4, w_ptr_masked5;
//    wire [DEPTH_SIZE - 1 : 0] r_ptr_masked0, r_ptr_masked1, r_ptr_masked2;
//    wire [DEPTH_SIZE - 1 : 0] r_ptr_masked3, r_ptr_masked4, r_ptr_masked5;
//    assign w_ptr_masked0 = w_ptr & ptr_mask;
//    assign w_ptr_masked1 = (w_ptr + 1) & ptr_mask;
//    assign w_ptr_masked2 = (w_ptr + 2) & ptr_mask;
//    assign w_ptr_masked3 = (w_ptr + 3) & ptr_mask;
//    assign w_ptr_masked4 = (w_ptr + 4) & ptr_mask;
//    assign w_ptr_masked5 = (w_ptr + 5) & ptr_mask;
//    assign r_ptr_masked0 = r_ptr & ptr_mask;
//    assign r_ptr_masked1 = (r_ptr + 1) & ptr_mask;
//    assign r_ptr_masked2 = (r_ptr + 2) & ptr_mask;
//    assign r_ptr_masked3 = (r_ptr + 3) & ptr_mask;
//    assign r_ptr_masked4 = (r_ptr + 4) & ptr_mask;
//    assign r_ptr_masked5 = (r_ptr + 5) & ptr_mask; 
    
    assign rd_clk = (rd_clk_counter == (CLK_DIV - 1));
    always @(posedge clk or negedge rstn) begin
        if(~rstn)
            rd_clk_counter <= 0;
        else if(rd_clk)
            rd_clk_counter <= 0;
        else
            rd_clk_counter <= rd_clk_counter + 1;
    end
    
    assign wr_en = (~full_reg) && wr;
    always @(posedge clk or negedge rstn) begin
        if(~rstn) begin
            w_ptr01 <= 1'b0;
            w_ptr2 <= 1'b0;
            cnt <= 1'b1;
        end
        else if(wr_en) begin
            w_ptr01 <= w_ptr01 + cnt;
            w_ptr2 <= w_ptr2 + !cnt;
            cnt <= cnt + 1;
        end else begin
            w_ptr01 <= w_ptr01;
            w_ptr2 <= w_ptr2;
        end
    end
    
    assign rd_en = (~empty_reg) && rd && rd_clk;
    always @(posedge clk or negedge rstn) begin
        if(~rstn)
            r_ptr <= 0;
        else if(rd_en)
            r_ptr <= r_ptr + 1;
        else
            r_ptr <= r_ptr;
    end
    
    // Fall through implementation
//    assign data_out[191:128] = mem[r_ptr_masked2];
//    assign data_out[127:64] = mem[r_ptr_masked1];
//    assign data_out[63:0] = mem[r_ptr_masked0];

    // Don't Fall through
    assign data_out = data_out_reg;
    always @(posedge clk) begin
        if(wr_en) begin
            if(cnt) begin
                mem0[w_ptr01[DEPTH_SIZE-1:0]] <= data_in[63:0];
                mem1[w_ptr01[DEPTH_SIZE-1:0]] <= data_in[127:64];
            end else
                mem2[w_ptr2[DEPTH_SIZE-1:0]] <= data_in[63:0];
        end
    end
    always @(posedge clk or negedge rstn) begin
        if(~rstn)
            data_out_reg <= 0;
        else if(rd_en) begin
            data_out_reg[191:128] <= mem2[r_ptr[DEPTH_SIZE-1: 0]];
            data_out_reg[127:64] <= mem1[r_ptr[DEPTH_SIZE-1: 0]];
            data_out_reg[63:0] <= mem0[r_ptr[DEPTH_SIZE-1: 0]];
        end else
            data_out_reg <= data_out_reg;
    end
    
    assign first_bit = w_ptr01 ^ r_ptr;
    assign equal_full = (w_ptr01[DEPTH_SIZE-1:0] == r_ptr[DEPTH_SIZE-1:0]);
//    assign almost_equal_full = (w_ptr_masked3 == r_ptr_masked0 || w_ptr_masked4 == r_ptr_masked0 || w_ptr_masked5 == r_ptr_masked0);
    assign equal_empty = (w_ptr2[DEPTH_SIZE-1:0] == r_ptr[DEPTH_SIZE-1:0]);
//    assign almost_equal_empty = (r_ptr_masked3 == w_ptr_masked0 || r_ptr_masked4 == w_ptr_masked0 || r_ptr_masked5 == w_ptr_masked0);
    assign diff = w_ptr2 - r_ptr;
    assign overflow_en = full_reg & wr;
    assign underflow_en = empty_reg & rd;
    
//    always @(posedge clk or negedge rstn) begin
//      if(~rstn) 
//          almost_full_reg <= 1'b0;
//      else
//          almost_full_reg <= almost_equal_full;
//    end
//    always @(posedge clk or negedge rstn) begin
//      if(~rstn) 
//          almost_empty_reg <= 1'b0;
//      else
//          almost_empty_reg <= almost_equal_empty;
//    end
    
    always @(*) begin
        full_reg = first_bit & equal_full;
        empty_reg = (~first_bit) & equal_empty;
        threshold_reg = (diff[DEPTH_SIZE] || diff[DEPTH_SIZE - 1]);
    end
    
    always @(posedge clk or negedge rstn) begin
        if(~rstn)
            overflow_reg <= 0;
        else if(overflow_en && ~rd_en)
            overflow_reg <= 1;
        else if(rd_en)
            overflow_reg <= 0;
        else
            overflow_reg <= overflow_reg;
    end
    
    always @(posedge clk or negedge rstn) begin
        if(~rstn) 
            underflow_reg <= 0;
        else if (underflow_en && ~wr_en)
            underflow_reg <= 1;
        else if(wr_en)
            underflow_reg <= 0;
        else
            underflow_reg <= underflow_reg;
    end
    
    assign full = full_reg;
    assign empty = empty_reg;
    assign threshold = threshold_reg;
    assign underflow = underflow_reg;
    assign overflow = overflow_reg;
endmodule
