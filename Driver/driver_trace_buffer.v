module driver_trace_buffer#(
    parameter integer VECTOR_DATA_WIDTH = 192,
    parameter integer TRACE_BUF_DATA_WIDTH = 256,
    parameter integer TRACE_BUF_ADDR_WIDTH = 15
)
(
    input wire clk,
    input wire rstn,
    input wire rd_en_100ns,
    input wire [31:0] trace_buf_bram_addr_slave,
    output reg [TRACE_BUF_ADDR_WIDTH-1:0] trace_buf_bram_addra,
    output reg [TRACE_BUF_ADDR_WIDTH-1:0] trace_buf_bram_addrb,
    output reg trace_buf_we,
    output wire trace_buf_en
    );
    
    assign trace_buf_en = 1'b1;
    
    always @(posedge clk) begin
        if(rstn == 1'b0) begin
            trace_buf_bram_addra <= {TRACE_BUF_ADDR_WIDTH{1'b0}};
        end else if(rd_en_100ns) begin
            trace_buf_bram_addra <= trace_buf_bram_addra + 1;
        end else begin
            trace_buf_bram_addra <= trace_buf_bram_addra;
        end
    end
    
    always @(posedge clk) begin
        if(rstn == 1'b0) begin
            trace_buf_we <= 1'b0;
        end else if(rd_en_100ns) begin
            trace_buf_we <= 1'b1;
        end else begin
            trace_buf_we <= 1'b0;
        end
    end
    
    always @(posedge clk) begin
        if(rstn == 1'b0) begin
            trace_buf_bram_addrb <= {TRACE_BUF_ADDR_WIDTH{1'b0}};
        end else begin
            trace_buf_bram_addrb <= trace_buf_bram_addra - trace_buf_bram_addr_slave[0 +: TRACE_BUF_ADDR_WIDTH];
        end
    end
endmodule
