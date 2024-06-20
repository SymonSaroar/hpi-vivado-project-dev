-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2023.2 (win64) Build 4029153 Fri Oct 13 20:14:34 MDT 2023
-- Date        : Thu Jun 20 13:58:06 2024
-- Host        : LAPTOP-81E1PH83 running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode synth_stub C:/hpi-vivado-project-dev/Design_src/bd/design_bd/design_bd_stub.vhdl
-- Design      : design_bd
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xczu9eg-ffvb1156-2-e
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity design_bd is
  Port ( 
    M00_AXI_0_araddr : out STD_LOGIC_VECTOR ( 39 downto 0 );
    M00_AXI_0_arburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    M00_AXI_0_arcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M00_AXI_0_arid : out STD_LOGIC_VECTOR ( 15 downto 0 );
    M00_AXI_0_arlen : out STD_LOGIC_VECTOR ( 7 downto 0 );
    M00_AXI_0_arlock : out STD_LOGIC;
    M00_AXI_0_arprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M00_AXI_0_arqos : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M00_AXI_0_arready : in STD_LOGIC;
    M00_AXI_0_arsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M00_AXI_0_aruser : out STD_LOGIC_VECTOR ( 15 downto 0 );
    M00_AXI_0_arvalid : out STD_LOGIC;
    M00_AXI_0_awaddr : out STD_LOGIC_VECTOR ( 39 downto 0 );
    M00_AXI_0_awburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    M00_AXI_0_awcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M00_AXI_0_awid : out STD_LOGIC_VECTOR ( 15 downto 0 );
    M00_AXI_0_awlen : out STD_LOGIC_VECTOR ( 7 downto 0 );
    M00_AXI_0_awlock : out STD_LOGIC;
    M00_AXI_0_awprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M00_AXI_0_awqos : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M00_AXI_0_awready : in STD_LOGIC;
    M00_AXI_0_awsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M00_AXI_0_awuser : out STD_LOGIC_VECTOR ( 15 downto 0 );
    M00_AXI_0_awvalid : out STD_LOGIC;
    M00_AXI_0_bid : in STD_LOGIC_VECTOR ( 15 downto 0 );
    M00_AXI_0_bready : out STD_LOGIC;
    M00_AXI_0_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M00_AXI_0_bvalid : in STD_LOGIC;
    M00_AXI_0_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    M00_AXI_0_rid : in STD_LOGIC_VECTOR ( 15 downto 0 );
    M00_AXI_0_rlast : in STD_LOGIC;
    M00_AXI_0_rready : out STD_LOGIC;
    M00_AXI_0_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M00_AXI_0_rvalid : in STD_LOGIC;
    M00_AXI_0_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M00_AXI_0_wlast : out STD_LOGIC;
    M00_AXI_0_wready : in STD_LOGIC;
    M00_AXI_0_wstrb : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M00_AXI_0_wvalid : out STD_LOGIC;
    M00_AXI_1_araddr : out STD_LOGIC_VECTOR ( 39 downto 0 );
    M00_AXI_1_arprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M00_AXI_1_arready : in STD_LOGIC;
    M00_AXI_1_arvalid : out STD_LOGIC;
    M00_AXI_1_awaddr : out STD_LOGIC_VECTOR ( 39 downto 0 );
    M00_AXI_1_awprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M00_AXI_1_awready : in STD_LOGIC;
    M00_AXI_1_awvalid : out STD_LOGIC;
    M00_AXI_1_bready : out STD_LOGIC;
    M00_AXI_1_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M00_AXI_1_bvalid : in STD_LOGIC;
    M00_AXI_1_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    M00_AXI_1_rready : out STD_LOGIC;
    M00_AXI_1_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M00_AXI_1_rvalid : in STD_LOGIC;
    M00_AXI_1_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M00_AXI_1_wready : in STD_LOGIC;
    M00_AXI_1_wstrb : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M00_AXI_1_wvalid : out STD_LOGIC;
    S_AXI_ACP_araddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_ACP_arburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_ACP_arcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_ACP_arid : in STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_ACP_arlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    S_AXI_ACP_arlock : in STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_ACP_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_ACP_arqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_ACP_arready : out STD_LOGIC;
    S_AXI_ACP_arsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_ACP_aruser : in STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_ACP_arvalid : in STD_LOGIC;
    S_AXI_ACP_awaddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_ACP_awburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_ACP_awcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_ACP_awid : in STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_ACP_awlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    S_AXI_ACP_awlock : in STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_ACP_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_ACP_awqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_ACP_awready : out STD_LOGIC;
    S_AXI_ACP_awsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_ACP_awuser : in STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_ACP_awvalid : in STD_LOGIC;
    S_AXI_ACP_bid : out STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_ACP_bready : in STD_LOGIC;
    S_AXI_ACP_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_ACP_bvalid : out STD_LOGIC;
    S_AXI_ACP_rdata : out STD_LOGIC_VECTOR ( 127 downto 0 );
    S_AXI_ACP_rid : out STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_ACP_rlast : out STD_LOGIC;
    S_AXI_ACP_rready : in STD_LOGIC;
    S_AXI_ACP_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_ACP_ruser : out STD_LOGIC_VECTOR ( 15 downto 0 );
    S_AXI_ACP_rvalid : out STD_LOGIC;
    S_AXI_ACP_wdata : in STD_LOGIC_VECTOR ( 127 downto 0 );
    S_AXI_ACP_wlast : in STD_LOGIC;
    S_AXI_ACP_wready : out STD_LOGIC;
    S_AXI_ACP_wstrb : in STD_LOGIC_VECTOR ( 15 downto 0 );
    S_AXI_ACP_wuser : in STD_LOGIC_VECTOR ( 15 downto 0 );
    S_AXI_ACP_wvalid : in STD_LOGIC;
    clk : out STD_LOGIC;
    resetn : out STD_LOGIC_VECTOR ( 0 to 0 )
  );

end design_bd;

architecture stub of design_bd is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "M00_AXI_0_araddr[39:0],M00_AXI_0_arburst[1:0],M00_AXI_0_arcache[3:0],M00_AXI_0_arid[15:0],M00_AXI_0_arlen[7:0],M00_AXI_0_arlock,M00_AXI_0_arprot[2:0],M00_AXI_0_arqos[3:0],M00_AXI_0_arready,M00_AXI_0_arsize[2:0],M00_AXI_0_aruser[15:0],M00_AXI_0_arvalid,M00_AXI_0_awaddr[39:0],M00_AXI_0_awburst[1:0],M00_AXI_0_awcache[3:0],M00_AXI_0_awid[15:0],M00_AXI_0_awlen[7:0],M00_AXI_0_awlock,M00_AXI_0_awprot[2:0],M00_AXI_0_awqos[3:0],M00_AXI_0_awready,M00_AXI_0_awsize[2:0],M00_AXI_0_awuser[15:0],M00_AXI_0_awvalid,M00_AXI_0_bid[15:0],M00_AXI_0_bready,M00_AXI_0_bresp[1:0],M00_AXI_0_bvalid,M00_AXI_0_rdata[31:0],M00_AXI_0_rid[15:0],M00_AXI_0_rlast,M00_AXI_0_rready,M00_AXI_0_rresp[1:0],M00_AXI_0_rvalid,M00_AXI_0_wdata[31:0],M00_AXI_0_wlast,M00_AXI_0_wready,M00_AXI_0_wstrb[3:0],M00_AXI_0_wvalid,M00_AXI_1_araddr[39:0],M00_AXI_1_arprot[2:0],M00_AXI_1_arready,M00_AXI_1_arvalid,M00_AXI_1_awaddr[39:0],M00_AXI_1_awprot[2:0],M00_AXI_1_awready,M00_AXI_1_awvalid,M00_AXI_1_bready,M00_AXI_1_bresp[1:0],M00_AXI_1_bvalid,M00_AXI_1_rdata[31:0],M00_AXI_1_rready,M00_AXI_1_rresp[1:0],M00_AXI_1_rvalid,M00_AXI_1_wdata[31:0],M00_AXI_1_wready,M00_AXI_1_wstrb[3:0],M00_AXI_1_wvalid,S_AXI_ACP_araddr[31:0],S_AXI_ACP_arburst[1:0],S_AXI_ACP_arcache[3:0],S_AXI_ACP_arid[0:0],S_AXI_ACP_arlen[7:0],S_AXI_ACP_arlock[0:0],S_AXI_ACP_arprot[2:0],S_AXI_ACP_arqos[3:0],S_AXI_ACP_arready,S_AXI_ACP_arsize[2:0],S_AXI_ACP_aruser[1:0],S_AXI_ACP_arvalid,S_AXI_ACP_awaddr[31:0],S_AXI_ACP_awburst[1:0],S_AXI_ACP_awcache[3:0],S_AXI_ACP_awid[0:0],S_AXI_ACP_awlen[7:0],S_AXI_ACP_awlock[0:0],S_AXI_ACP_awprot[2:0],S_AXI_ACP_awqos[3:0],S_AXI_ACP_awready,S_AXI_ACP_awsize[2:0],S_AXI_ACP_awuser[1:0],S_AXI_ACP_awvalid,S_AXI_ACP_bid[0:0],S_AXI_ACP_bready,S_AXI_ACP_bresp[1:0],S_AXI_ACP_bvalid,S_AXI_ACP_rdata[127:0],S_AXI_ACP_rid[0:0],S_AXI_ACP_rlast,S_AXI_ACP_rready,S_AXI_ACP_rresp[1:0],S_AXI_ACP_ruser[15:0],S_AXI_ACP_rvalid,S_AXI_ACP_wdata[127:0],S_AXI_ACP_wlast,S_AXI_ACP_wready,S_AXI_ACP_wstrb[15:0],S_AXI_ACP_wuser[15:0],S_AXI_ACP_wvalid,clk,resetn[0:0]";
begin
end;
