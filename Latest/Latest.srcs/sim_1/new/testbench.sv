
`timescale 1ns / 1ps
`include "includes.svh"

import axi_vip_pkg::*;
//import custom_slv_v1_0_bfm_1_master_0_0_pkg::*;
import design_1_axi_vip_0_0_pkg::*;

module testbench ();

    xil_axi_uint mst_agent_verbosity      = 0;
    bit            clock                       ;
    bit            reset                       ;
    bit [255:0] dout;
    integer        result_slave                ;
    bit     [31:0] S00_AXI_test_data  [3:0]    ; // 4 Slave registers if needed

    localparam LC_AXI_BURST_LENGTH = 1;
    localparam LC_AXI_DATA_WIDTH = 32;
    task automatic COMPARE_DATA;
        input [(LC_AXI_BURST_LENGTH * LC_AXI_DATA_WIDTH)-1:0]expected;
        input [(LC_AXI_BURST_LENGTH * LC_AXI_DATA_WIDTH)-1:0]actual;
        begin
            if (expected === 'hx || actual === 'hx) begin
                $display("TESTBENCH ERROR! COMPARE_DATA cannot be performed with an expected or actual vector that is all 'x'!");
                result_slave = 0;    $stop;
            end
            if (actual != expected) begin
                $display("TESTBENCH ERROR! Data expected is not equal to actual.",     " expected = 0x%h",expected,     " actual   = 0x%h",actual);
                result_slave = 0;
                $stop;
            end
            else
                begin
                    $display("TESTBENCH Passed! Data expected is equal to actual.",
                        " expected = 0x%h",expected,               " actual   = 0x%h",actual);
                end
        end
    endtask
    integer i;
    integer j;

    // AXI VIP master Parameters for testing
    // Call Testing Tasks by setting them
    xil_axi_uint              mtestID                     ;
    xil_axi_ulong             mtestADDR                   ;
    xil_axi_len_t             mtestBurstLength            ;
    xil_axi_size_t            mtestDataSize               ;
    xil_axi_burst_t           mtestBurstType              ;
    xil_axi_lock_t            mtestLOCK                   ;
    xil_axi_cache_t           mtestCacheType      = 0     ;
    xil_axi_prot_t            mtestProtectionType = 3'b000;
    xil_axi_region_t          mtestRegion         = 4'b000;
    xil_axi_qos_t             mtestQOS            = 4'b000;
    xil_axi_data_beat [255:0] mtestWUSER                  ;
    xil_axi_data_beat         mtestAWUSER         = 'h0   ;
    xil_axi_data_beat         mtestARUSER         = 0     ;
    xil_axi_data_beat [255:0] mtestRUSER                  ;
    xil_axi_uint              mtestBUSER          = 0     ;
    xil_axi_resp_t            mtestBresp                  ;
    xil_axi_resp_t[255:0]                   mtestRresp;
    bit [32767:0] mtestWDataF; //ms
    bit [32767:0] mtestRDataF; //ms

    

    // Instantiate DUT
    `BD_WRAPPER DUT(
        .dout_0(dout)
    );
    
//    design_1_axi_vip_0_0_mst_t mst_agent_0;
    design_1_axi_vip_0_0_passthrough_t mst_agent_0;
    initial begin
        mst_agent_0 = new("passthrough vip agent",DUT.`BD_INST_NAME.axi_vip_0.inst.IF);//ms
        mst_agent_0.vif_proxy.set_dummy_drive_type(XIL_AXI_VIF_DRIVE_NONE);
        mst_agent_0.set_agent_tag("Master VIP");
        mst_agent_0.set_verbosity(mst_agent_verbosity);

        // Initiate AXI VIP master
        DUT.`BD_INST_NAME.axi_vip_0.inst.set_master_mode();
        mst_agent_0.start_master();
        $timeformat (-12, 1, " ps", 1);
    end
    initial begin
        reset <= 1'b0;
        #100ns;
        reset <= 1'b1;
        repeat (5) @(negedge clock);
    end
    always #5 clock <= ~clock;
    initial begin
        S_AXI_TEST ( );

        #1ns;
        $finish;
    end
    task automatic S_AXI_TEST;
        begin
            #1;
            // Set the data.
            // Each burst can not exeed 4KB
            // So 4 * 1024 * 8 = 32768 bits
            // Master DATA set as 8 consecutive 32bit integer taking Least Significant 8 * 32 = 256 bits
            mtestWDataF[32+:8*32] = 'h8000001070000001600000105000100040000100300010002000010010000010;
            for(int i = 0; i < 8; i++) begin
                mtestWDataF[0+:32] = mtestWDataF[32*(i+1)+:32];
                $display("Sequential write transfers example similar to  AXI BFM WRITE_BURST method starts");
                mtestID = 0;
                mtestADDR = 0;
                mtestBurstLength = 0;
                mtestDataSize = xil_axi_size_t'(xil_clog2(32/8));
                mtestBurstType = XIL_AXI_BURST_TYPE_INCR;
                mtestLOCK = XIL_AXI_ALOCK_NOLOCK;
                mtestCacheType = 0;
                mtestProtectionType = 0;
                mtestRegion = 0;
                mtestQOS = 0;
                result_slave = 1;
                for(int i = 0; i < 256;i++) begin
                    mtestWUSER = 'h0;
                end
                mst_agent_0.AXI4_WRITE_BURST(
                    mtestID,
                    mtestADDR,
                    mtestBurstLength,
                    mtestDataSize,
                    mtestBurstType,
                    mtestLOCK,
                    mtestCacheType,
                    mtestProtectionType,
                    mtestRegion,
                    mtestQOS,
                    mtestAWUSER,
                    mtestWDataF,
                    mtestWUSER,
                    mtestBresp
                );
                #20;
            end
            $display("Sequential write transfers example similar to  AXI BFM WRITE_BURST method completes");
//            $display("Sequential read transfers example similar to  AXI BFM READ_BURST method starts");
//            mtestID = 0;
//            mtestADDR = 0;
//            mtestBurstLength = 7;
//            mtestDataSize = xil_axi_size_t'(xil_clog2(32/8));
//            mtestBurstType = XIL_AXI_BURST_TYPE_INCR;
//            mtestLOCK = XIL_AXI_ALOCK_NOLOCK;
//            mtestCacheType = 0;
//            mtestProtectionType = 0;
//            mtestRegion = 0;
//            mtestQOS = 0;
//            mst_agent_0.AXI4_READ_BURST (
//                mtestID,
//                mtestADDR,
//                mtestBurstLength,
//                mtestDataSize,
//                mtestBurstType,
//                mtestLOCK,
//                mtestCacheType,
//                mtestProtectionType,
//                mtestRegion,
//                mtestQOS,
//                mtestARUSER,
//                mtestRDataF,
//                mtestRresp,
//                mtestRUSER
//            );
//            $display("Sequential read transfers example similar to  AXI BFM READ_BURST method completes");
//            COMPARE_DATA(mtestWDataF,mtestRDataF);
//            $display("Sequential read transfers example similar to  AXI VIP READ_BURST method completes");
//            $display("---------------------------------------------------------");
//            $display("EXAMPLE TEST S00_AXI: PTGEN_TEST_FINISHED!");
//            if ( result_slave ) begin
//                $display("PTGEN_TEST: PASSED!");
//            end    else begin
//                $display("PTGEN_TEST: FAILED!");
//            end
//            $display("---------------------------------------------------------");
        end
    endtask

endmodule
