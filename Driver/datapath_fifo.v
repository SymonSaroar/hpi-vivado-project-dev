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
    output wire [DEPTH_SIZE - 1: 0] data_count,
    output wire rd_en_100ns,
    output wire [OUTPUT_DATA_WIDTH - 1 : 0] data_out,
    output wire full,
    output wire empty,
    output wire threshold,
    output wire overflow,
    output wire underflow
    );
    
    localparam ptr_mask = {DEPTH_SIZE{1'b1}};
    reg [128-1 : 0] mem0 [DEPTH-1: 0];
    reg [64-1 : 0]  mem1 [DEPTH-1: 0];
    reg [OUTPUT_DATA_WIDTH-1 : 0] data_out_reg;
    reg [DEPTH_SIZE : 0] w_ptr;
    reg [DEPTH_SIZE : 0] r_ptr;
    reg full_reg, empty_reg, threshold_reg, overflow_reg, underflow_reg;
//    reg almost_full_reg, almost_empty_reg;
    wire wr_en, rd_en;
    wire equal_full, equal_empty, first_bit, overflow_en, underflow_en;
    wire [DEPTH_SIZE : 0] diff;
    reg [DEPTH_SIZE - 1: 0] data_count_reg;
    reg cnt;
    reg [5:0] rd_clk_counter;
    wire rd_clk;
    
    assign rd_clk = (rd_clk_counter == (CLK_DIV - 1));
    always @(posedge clk or negedge rstn) begin
        if(~rstn)
            rd_clk_counter <= 0;
        else if(rd_clk)
            rd_clk_counter <= 0;
        else
            rd_clk_counter <= rd_clk_counter + 1;
    end
    
    assign wr_en = (~(first_bit && equal)) && wr;
    always @(posedge clk or negedge rstn) begin
        if(~rstn) begin
            w_ptr <= {(DEPTH_SIZE+1){1'b0}};
            cnt <= 1'b0;
        end
        else if(wr_en) begin
            w_ptr <= w_ptr + cnt;
            cnt <= cnt + 1;
        end else begin
            w_ptr <= w_ptr;
        end
    end
    
    assign rd_en = (~((~first_bit) && equal)) && rd && rd_clk;
    assign rd_en_100ns = rd_en;
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
            if(!cnt) begin
                mem0[w_ptr[DEPTH_SIZE-1:0]] <= data_in[127:0];
            end else
                mem1[w_ptr[DEPTH_SIZE-1:0]] <= data_in[63:0];          // first 64 bits of 2nd 128 bits data
        end
    end
    always @(posedge clk or negedge rstn) begin
        if(~rstn)
            data_out_reg <= 0;
        else if(rd_en) begin
            data_out_reg[191:128] <= mem1[r_ptr[DEPTH_SIZE-1: 0]];
            data_out_reg[127:0] <= mem0[r_ptr[DEPTH_SIZE-1: 0]];
        end else
            data_out_reg <= data_out_reg;
    end
    
    assign first_bit = w_ptr[DEPTH_SIZE] ^ r_ptr[DEPTH_SIZE];
    assign equal = (w_ptr[DEPTH_SIZE-1:0] == r_ptr[DEPTH_SIZE-1:0])? 1'b1 : 1'b0;
//  assign equal_empty = (w_ptr[DEPTH_SIZE-1:0] == r_ptr[DEPTH_SIZE-1:0]);
    assign diff = w_ptr - r_ptr;
    assign overflow_en = first_bit && equal && wr;
    assign underflow_en = (~first_bit) && equal && rd_clk;
    
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
    
    // always @(*) begin
    //     full_reg = first_bit & equal;
    //     empty_reg = (~first_bit) & equal;
    //     threshold_reg = (diff[DEPTH_SIZE] || diff[DEPTH_SIZE - 1])? 1'b1: 1'b0;
    // end
    
    always @(posedge clk or negedge rstn) begin
        if(~rstn) begin
            full_reg <= 1'b0;
        end else if(first_bit == 1'b1 && equal == 1'b1) begin
            full_reg <= 1'b1;
        end else begin
            full_reg <= 1'b0;
        end
    end

    always @(posedge clk or negedge rstn) begin
        if(~rstn) begin
            empty_reg <= 1'b0;
        end else if (first_bit == 1'b0 && equal == 1'b1) begin
            empty_reg <= 1'b1;
        end else begin
            empty_reg <= 1'b0;
        end
    end

    always @(posedge clk or negedge rstn) begin
        if(~rstn) begin
            threshold_reg <= 1'b0;
        end else if(diff[DEPTH_SIZE] || diff[DEPTH_SIZE - 1]) begin
            threshold_reg <= 1'b1;
        end else begin
            threshold_reg <= 1'b0;
        end
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
    
    always @(posedge clk or negedge rstn) begin
        if(~rstn)
            data_count_reg <= 0;
        else if(wr_en && ~rd_en && data_count_reg != {DEPTH_SIZE{1'b1}})
            data_count_reg <= data_count_reg + 1;
        else if(~wr_en && rd_en && data_count_reg != {DEPTH_SIZE{1'b0}})
            data_count_reg <= data_count_reg - 1;
        else if(wr_en && rd_en) begin
            data_count_reg <= data_count_reg;
        end else begin
            data_count_reg <= data_count_reg;
        end
    end
    
    assign full = full_reg;
    assign empty = empty_reg;
    assign threshold = threshold_reg;
    assign underflow = underflow_reg;
    assign overflow = overflow_reg;
    assign data_count = data_count_reg;
endmodule
