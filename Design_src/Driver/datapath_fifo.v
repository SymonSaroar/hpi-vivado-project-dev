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
    input wire wr_in,
    input wire rd_in,
    input wire [INPUT_DATA_WIDTH - 1 : 0] data_in_in,
    input wire [DEPTH_SIZE-1: 0] word_threshold,
    input wire byte_swap,
    output wire [DEPTH_SIZE: 0] data_count,
    output reg rd_en_100ns,
    output reg [OUTPUT_DATA_WIDTH - 1 : 0] data_out,
    output reg [OUTPUT_DATA_WIDTH - 1 : 0] data_out_delayed,
    output wire full,
    output wire empty,
    output wire threshold,
    output wire overflow,
    output wire underflow
    );
    
    localparam ptr_mask = {DEPTH_SIZE{1'b1}};
    reg [64-1 : 0]  mem0 [0: DEPTH-1];
    reg [64-1 : 0]  mem1 [0: DEPTH-1];
    reg [64-1 : 0]  mem2 [0: DEPTH-1];
    reg [OUTPUT_DATA_WIDTH-1 : 0] data_out_reg;
    reg [DEPTH_SIZE : 0] w_ptr;
    reg [DEPTH_SIZE : 0] r_ptr;
    reg full_reg, empty_reg, threshold_reg, overflow_reg, underflow_reg;
//    reg almost_full_reg, almost_empty_reg;
    wire wr_en, rd_en;
    wire fifo_wr, fifo_rd;
    wire equal, first_bit, overflow_en, underflow_en;
    wire [DEPTH_SIZE : 0] diff;
    reg [DEPTH_SIZE: 0] data_count_reg;
    reg cnt;
    reg [5:0] rd_clk_counter;
    wire rd_clk;
    reg wr, rd;
    reg [INPUT_DATA_WIDTH - 1 : 0] data_in;
    reg over_word_threshold;
    reg byte_swap_reg;

    always @(posedge clk) begin
        if(~rstn) begin
            over_word_threshold <= 1'b0;
        end else if(data_count_reg >= word_threshold) begin
            over_word_threshold <= 1'b1;
        end else begin
            over_word_threshold <= over_word_threshold;
        end
    end
    always @(posedge clk) begin 
        if(~rstn) begin
            data_in <= {INPUT_DATA_WIDTH{1'b0}};
            wr <= 0;
            rd <= 0;
            byte_swap_reg <= 0;
        end else begin
            data_in <= data_in_in;
            wr <= wr_in;
            rd <= rd_in;
            byte_swap_reg <= byte_swap;
        end
    end
    
    assign rd_clk = (rd_clk_counter == (CLK_DIV - 1));
    always @(posedge clk) begin
        if(~rstn)
            rd_clk_counter <= 0;
        else if(rd_clk)
            rd_clk_counter <= 0;
        else
            rd_clk_counter <= rd_clk_counter + 1;
    end
    
    always @(posedge clk) begin
        if(~rstn) begin
            cnt <= 1'b0;
        end else if(wr) begin
            cnt <= ~cnt;
        end
    end
    
    assign wr_en = (~full_reg) && wr;
    always @(posedge clk) begin
        if(~rstn) begin
            w_ptr <= {(DEPTH_SIZE+1){1'b0}};
        end
        else if(wr_en && cnt) begin
            w_ptr <= w_ptr + 1;
        end else begin
            w_ptr <= w_ptr;
        end
    end
    
    assign fifo_wr = wr && cnt;
    
    assign rd_en = (~empty_reg) && rd && rd_clk && over_word_threshold;
    assign fifo_rd = rd && rd_clk && over_word_threshold;
    always @(posedge clk) begin
        if(~rstn) begin
            rd_en_100ns <= 1'b0;
        end else begin
            rd_en_100ns <= rd_en;
        end
    end

    always @(posedge clk) begin
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
    integer byte_index;
    always @(posedge clk) begin
        if(~rstn) begin
            data_out <= {OUTPUT_DATA_WIDTH{1'b0}};
        end else if(byte_swap_reg == 1'b0) begin
            data_out <= data_out_reg;
        end else begin
            for (byte_index = 0; byte_index <= (OUTPUT_DATA_WIDTH/8)-1; byte_index = byte_index + 1) begin
                data_out[byte_index*8 +: 8] <= data_out_reg[OUTPUT_DATA_WIDTH-(byte_index*8)-1 -: 8];
            end
        end
    end
    // assign data_out = data_out_reg;
    always @(posedge clk) begin
        if(wr_en) begin
            if(!cnt) begin
                mem0[w_ptr[DEPTH_SIZE-1:0]] <= data_in[127:64];
                mem1[w_ptr[DEPTH_SIZE-1:0]] <= data_in[63:0];
            end else begin
                mem2[w_ptr[DEPTH_SIZE-1:0]] <= data_in[63:0];          // first 64 bits of 2nd 128 bits data
            end
        end
    end
    always @(posedge clk) begin
        if(~rstn)
            data_out_reg <= {OUTPUT_DATA_WIDTH{1'b0}};
        else if(rd_en) begin
            data_out_reg[191:128] <= mem2[r_ptr[DEPTH_SIZE-1: 0]];
            data_out_reg[127:64] <= mem0[r_ptr[DEPTH_SIZE-1: 0]];
            data_out_reg[63:0] <= mem1[r_ptr[DEPTH_SIZE-1: 0]];
        end else begin
            data_out_reg <= data_out_reg;
        end
    end
    
    always @(posedge clk) begin
        if(~rstn) begin
            data_out_delayed <= {OUTPUT_DATA_WIDTH{1'b0}};
        end else begin
            data_out_delayed <= data_out_reg;
        end
    end

    assign first_bit = w_ptr[DEPTH_SIZE] ^ r_ptr[DEPTH_SIZE];
    assign equal = (w_ptr[DEPTH_SIZE-1:0] == r_ptr[DEPTH_SIZE-1:0])? 1'b1 : 1'b0;
//  assign equal_empty = (w_ptr[DEPTH_SIZE-1:0] == r_ptr[DEPTH_SIZE-1:0]);
    assign diff = w_ptr - r_ptr;
    assign overflow_en = full_reg & wr;
    assign underflow_en = empty_reg & rd && rd_clk;
    
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
        full_reg = first_bit & equal;
        empty_reg = (~first_bit) & equal;
        threshold_reg = (diff[DEPTH_SIZE] || diff[DEPTH_SIZE - 1])? 1'b1: 1'b0;
    end
    
    always @(posedge clk) begin
        if(~rstn)
            overflow_reg <= 0;
        else if(overflow_en && ~rd_en)
            overflow_reg <= 1;
        else if(rd_en)
            overflow_reg <= 0;
        else
            overflow_reg <= overflow_reg;
    end
    
    always @(posedge clk) begin
        if(~rstn) 
            underflow_reg <= 0;
        else if (underflow_en && ~wr_en)
            underflow_reg <= 1;
        else if(wr_en)
            underflow_reg <= 0;
        else
            underflow_reg <= underflow_reg;
    end
    
    always @(posedge clk ) begin
        if(~rstn) begin
            data_count_reg <= 0;
        end else if(fifo_wr && !fifo_rd && data_count_reg != DEPTH) begin
            data_count_reg <= data_count_reg + 1;
        end else if(!fifo_wr && fifo_rd && data_count_reg != 0) begin
            data_count_reg <= data_count_reg - 1;
        end else if( fifo_wr &&  fifo_rd) begin
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
