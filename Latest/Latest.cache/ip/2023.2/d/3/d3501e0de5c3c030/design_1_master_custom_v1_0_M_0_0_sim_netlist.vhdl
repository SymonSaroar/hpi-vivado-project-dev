-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2023.2 (win64) Build 4029153 Fri Oct 13 20:14:34 MDT 2023
-- Date        : Wed Mar 27 14:17:32 2024
-- Host        : LAPTOP-81E1PH83 running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
--               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ design_1_master_custom_v1_0_M_0_0_sim_netlist.vhdl
-- Design      : design_1_master_custom_v1_0_M_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xczu9eg-ffvb1156-2-e
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_master_custom_v1_0_M00_AXI is
  port (
    M_AXI_BREADY : out STD_LOGIC;
    debug_addr : out STD_LOGIC_VECTOR ( 27 downto 0 );
    M_AXI_WLAST : out STD_LOGIC;
    rready : out STD_LOGIC;
    axi_arvalid_reg_0 : out STD_LOGIC;
    TXN_DONE : out STD_LOGIC;
    INIT_AXI_TXN : in STD_LOGIC;
    vector_fifo_full : in STD_LOGIC;
    addr_fifo_empty : in STD_LOGIC;
    M_AXI_ARESETN : in STD_LOGIC;
    M_AXI_ACLK : in STD_LOGIC;
    read_addr : in STD_LOGIC_VECTOR ( 27 downto 0 );
    M_AXI_RLAST : in STD_LOGIC;
    M_AXI_RVALID : in STD_LOGIC;
    M_AXI_ARREADY : in STD_LOGIC;
    M_AXI_BVALID : in STD_LOGIC
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_master_custom_v1_0_M00_AXI;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_master_custom_v1_0_M00_AXI is
  signal \^m_axi_bready\ : STD_LOGIC;
  signal \^txn_done\ : STD_LOGIC;
  signal \axi_araddr[27]_i_1_n_0\ : STD_LOGIC;
  signal axi_arvalid0 : STD_LOGIC;
  signal axi_arvalid_i_1_n_0 : STD_LOGIC;
  signal \^axi_arvalid_reg_0\ : STD_LOGIC;
  signal axi_bready0 : STD_LOGIC;
  signal axi_rready_i_1_n_0 : STD_LOGIC;
  signal compare_done_i_1_n_0 : STD_LOGIC;
  signal compare_done_i_2_n_0 : STD_LOGIC;
  signal init_txn_ff : STD_LOGIC;
  signal init_txn_ff2_reg_n_0 : STD_LOGIC;
  signal init_txn_ff_i_1_n_0 : STD_LOGIC;
  signal mst_exec_state : STD_LOGIC;
  signal \mst_exec_state__0\ : STD_LOGIC;
  signal \^rready\ : STD_LOGIC;
  signal start_single_burst_read_i_1_n_0 : STD_LOGIC;
  signal start_single_burst_read_reg_n_0 : STD_LOGIC;
  attribute FSM_ENCODED_STATES : string;
  attribute FSM_ENCODED_STATES of FSM_sequential_mst_exec_state_reg : label is "INIT_COMPARE:11,INIT_WRITE:01,INIT_READ:1,IDLE:0";
begin
  M_AXI_BREADY <= \^m_axi_bready\;
  TXN_DONE <= \^txn_done\;
  axi_arvalid_reg_0 <= \^axi_arvalid_reg_0\;
  rready <= \^rready\;
FSM_sequential_mst_exec_state_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"10101F10"
    )
        port map (
      I0 => vector_fifo_full,
      I1 => addr_fifo_empty,
      I2 => mst_exec_state,
      I3 => init_txn_ff,
      I4 => init_txn_ff2_reg_n_0,
      O => \mst_exec_state__0\
    );
FSM_sequential_mst_exec_state_reg: unisim.vcomponents.FDRE
     port map (
      C => M_AXI_ACLK,
      CE => '1',
      D => \mst_exec_state__0\,
      Q => mst_exec_state,
      R => compare_done_i_1_n_0
    );
\axi_araddr[27]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"4F"
    )
        port map (
      I0 => init_txn_ff2_reg_n_0,
      I1 => init_txn_ff,
      I2 => M_AXI_ARESETN,
      O => \axi_araddr[27]_i_1_n_0\
    );
\axi_araddr[27]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^axi_arvalid_reg_0\,
      I1 => M_AXI_ARREADY,
      O => axi_arvalid0
    );
\axi_araddr_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => M_AXI_ACLK,
      CE => axi_arvalid0,
      D => read_addr(0),
      Q => debug_addr(0),
      R => \axi_araddr[27]_i_1_n_0\
    );
\axi_araddr_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => M_AXI_ACLK,
      CE => axi_arvalid0,
      D => read_addr(10),
      Q => debug_addr(10),
      R => \axi_araddr[27]_i_1_n_0\
    );
\axi_araddr_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => M_AXI_ACLK,
      CE => axi_arvalid0,
      D => read_addr(11),
      Q => debug_addr(11),
      R => \axi_araddr[27]_i_1_n_0\
    );
\axi_araddr_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => M_AXI_ACLK,
      CE => axi_arvalid0,
      D => read_addr(12),
      Q => debug_addr(12),
      R => \axi_araddr[27]_i_1_n_0\
    );
\axi_araddr_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => M_AXI_ACLK,
      CE => axi_arvalid0,
      D => read_addr(13),
      Q => debug_addr(13),
      R => \axi_araddr[27]_i_1_n_0\
    );
\axi_araddr_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => M_AXI_ACLK,
      CE => axi_arvalid0,
      D => read_addr(14),
      Q => debug_addr(14),
      R => \axi_araddr[27]_i_1_n_0\
    );
\axi_araddr_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => M_AXI_ACLK,
      CE => axi_arvalid0,
      D => read_addr(15),
      Q => debug_addr(15),
      R => \axi_araddr[27]_i_1_n_0\
    );
\axi_araddr_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => M_AXI_ACLK,
      CE => axi_arvalid0,
      D => read_addr(16),
      Q => debug_addr(16),
      R => \axi_araddr[27]_i_1_n_0\
    );
\axi_araddr_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => M_AXI_ACLK,
      CE => axi_arvalid0,
      D => read_addr(17),
      Q => debug_addr(17),
      R => \axi_araddr[27]_i_1_n_0\
    );
\axi_araddr_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => M_AXI_ACLK,
      CE => axi_arvalid0,
      D => read_addr(18),
      Q => debug_addr(18),
      R => \axi_araddr[27]_i_1_n_0\
    );
\axi_araddr_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => M_AXI_ACLK,
      CE => axi_arvalid0,
      D => read_addr(19),
      Q => debug_addr(19),
      R => \axi_araddr[27]_i_1_n_0\
    );
\axi_araddr_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => M_AXI_ACLK,
      CE => axi_arvalid0,
      D => read_addr(1),
      Q => debug_addr(1),
      R => \axi_araddr[27]_i_1_n_0\
    );
\axi_araddr_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => M_AXI_ACLK,
      CE => axi_arvalid0,
      D => read_addr(20),
      Q => debug_addr(20),
      R => \axi_araddr[27]_i_1_n_0\
    );
\axi_araddr_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => M_AXI_ACLK,
      CE => axi_arvalid0,
      D => read_addr(21),
      Q => debug_addr(21),
      R => \axi_araddr[27]_i_1_n_0\
    );
\axi_araddr_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => M_AXI_ACLK,
      CE => axi_arvalid0,
      D => read_addr(22),
      Q => debug_addr(22),
      R => \axi_araddr[27]_i_1_n_0\
    );
\axi_araddr_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => M_AXI_ACLK,
      CE => axi_arvalid0,
      D => read_addr(23),
      Q => debug_addr(23),
      R => \axi_araddr[27]_i_1_n_0\
    );
\axi_araddr_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => M_AXI_ACLK,
      CE => axi_arvalid0,
      D => read_addr(24),
      Q => debug_addr(24),
      R => \axi_araddr[27]_i_1_n_0\
    );
\axi_araddr_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => M_AXI_ACLK,
      CE => axi_arvalid0,
      D => read_addr(25),
      Q => debug_addr(25),
      R => \axi_araddr[27]_i_1_n_0\
    );
\axi_araddr_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => M_AXI_ACLK,
      CE => axi_arvalid0,
      D => read_addr(26),
      Q => debug_addr(26),
      R => \axi_araddr[27]_i_1_n_0\
    );
\axi_araddr_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => M_AXI_ACLK,
      CE => axi_arvalid0,
      D => read_addr(27),
      Q => debug_addr(27),
      R => \axi_araddr[27]_i_1_n_0\
    );
\axi_araddr_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => M_AXI_ACLK,
      CE => axi_arvalid0,
      D => read_addr(2),
      Q => debug_addr(2),
      R => \axi_araddr[27]_i_1_n_0\
    );
\axi_araddr_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => M_AXI_ACLK,
      CE => axi_arvalid0,
      D => read_addr(3),
      Q => debug_addr(3),
      R => \axi_araddr[27]_i_1_n_0\
    );
\axi_araddr_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => M_AXI_ACLK,
      CE => axi_arvalid0,
      D => read_addr(4),
      Q => debug_addr(4),
      R => \axi_araddr[27]_i_1_n_0\
    );
\axi_araddr_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => M_AXI_ACLK,
      CE => axi_arvalid0,
      D => read_addr(5),
      Q => debug_addr(5),
      R => \axi_araddr[27]_i_1_n_0\
    );
\axi_araddr_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => M_AXI_ACLK,
      CE => axi_arvalid0,
      D => read_addr(6),
      Q => debug_addr(6),
      R => \axi_araddr[27]_i_1_n_0\
    );
\axi_araddr_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => M_AXI_ACLK,
      CE => axi_arvalid0,
      D => read_addr(7),
      Q => debug_addr(7),
      R => \axi_araddr[27]_i_1_n_0\
    );
\axi_araddr_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => M_AXI_ACLK,
      CE => axi_arvalid0,
      D => read_addr(8),
      Q => debug_addr(8),
      R => \axi_araddr[27]_i_1_n_0\
    );
\axi_araddr_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => M_AXI_ACLK,
      CE => axi_arvalid0,
      D => read_addr(9),
      Q => debug_addr(9),
      R => \axi_araddr[27]_i_1_n_0\
    );
axi_arvalid_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"3A"
    )
        port map (
      I0 => start_single_burst_read_reg_n_0,
      I1 => M_AXI_ARREADY,
      I2 => \^axi_arvalid_reg_0\,
      O => axi_arvalid_i_1_n_0
    );
axi_arvalid_reg: unisim.vcomponents.FDRE
     port map (
      C => M_AXI_ACLK,
      CE => '1',
      D => axi_arvalid_i_1_n_0,
      Q => \^axi_arvalid_reg_0\,
      R => \axi_araddr[27]_i_1_n_0\
    );
axi_bready_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => M_AXI_BVALID,
      I1 => \^m_axi_bready\,
      O => axi_bready0
    );
axi_bready_reg: unisim.vcomponents.FDRE
     port map (
      C => M_AXI_ACLK,
      CE => '1',
      D => axi_bready0,
      Q => \^m_axi_bready\,
      R => \axi_araddr[27]_i_1_n_0\
    );
axi_rready_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7C007C7C00000000"
    )
        port map (
      I0 => M_AXI_RLAST,
      I1 => \^rready\,
      I2 => M_AXI_RVALID,
      I3 => init_txn_ff2_reg_n_0,
      I4 => init_txn_ff,
      I5 => M_AXI_ARESETN,
      O => axi_rready_i_1_n_0
    );
axi_rready_reg: unisim.vcomponents.FDRE
     port map (
      C => M_AXI_ACLK,
      CE => '1',
      D => axi_rready_i_1_n_0,
      Q => \^rready\,
      R => '0'
    );
axi_wlast_reg: unisim.vcomponents.FDRE
     port map (
      C => M_AXI_ACLK,
      CE => '1',
      D => '1',
      Q => M_AXI_WLAST,
      R => \axi_araddr[27]_i_1_n_0\
    );
compare_done_i_1: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => M_AXI_ARESETN,
      O => compare_done_i_1_n_0
    );
compare_done_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF0FFE0E0E0E0"
    )
        port map (
      I0 => addr_fifo_empty,
      I1 => vector_fifo_full,
      I2 => mst_exec_state,
      I3 => init_txn_ff,
      I4 => init_txn_ff2_reg_n_0,
      I5 => \^txn_done\,
      O => compare_done_i_2_n_0
    );
compare_done_reg: unisim.vcomponents.FDRE
     port map (
      C => M_AXI_ACLK,
      CE => '1',
      D => compare_done_i_2_n_0,
      Q => \^txn_done\,
      R => compare_done_i_1_n_0
    );
init_txn_ff2_reg: unisim.vcomponents.FDRE
     port map (
      C => M_AXI_ACLK,
      CE => '1',
      D => init_txn_ff,
      Q => init_txn_ff2_reg_n_0,
      R => compare_done_i_1_n_0
    );
init_txn_ff_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"02"
    )
        port map (
      I0 => INIT_AXI_TXN,
      I1 => vector_fifo_full,
      I2 => addr_fifo_empty,
      O => init_txn_ff_i_1_n_0
    );
init_txn_ff_reg: unisim.vcomponents.FDRE
     port map (
      C => M_AXI_ACLK,
      CE => '1',
      D => init_txn_ff_i_1_n_0,
      Q => init_txn_ff,
      R => compare_done_i_1_n_0
    );
start_single_burst_read_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFF30004"
    )
        port map (
      I0 => \^axi_arvalid_reg_0\,
      I1 => mst_exec_state,
      I2 => vector_fifo_full,
      I3 => addr_fifo_empty,
      I4 => start_single_burst_read_reg_n_0,
      O => start_single_burst_read_i_1_n_0
    );
start_single_burst_read_reg: unisim.vcomponents.FDRE
     port map (
      C => M_AXI_ACLK,
      CE => '1',
      D => start_single_burst_read_i_1_n_0,
      Q => start_single_burst_read_reg_n_0,
      R => compare_done_i_1_n_0
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
  port (
    debug_addr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    debug_add_bytes : out STD_LOGIC_VECTOR ( 31 downto 0 );
    target_base_addr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    read_addr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    addr_fifo_empty : in STD_LOGIC;
    vector_fifo_full : in STD_LOGIC;
    arvalid : out STD_LOGIC;
    arready : out STD_LOGIC;
    output_data : out STD_LOGIC_VECTOR ( 127 downto 0 );
    rvalid : out STD_LOGIC;
    rready : out STD_LOGIC;
    debug_tx_num : out STD_LOGIC_VECTOR ( 31 downto 0 );
    INIT_AXI_TXN : in STD_LOGIC;
    TXN_DONE : out STD_LOGIC;
    ERROR : out STD_LOGIC;
    M_AXI_ACLK : in STD_LOGIC;
    M_AXI_ARESETN : in STD_LOGIC;
    M_AXI_AWID : out STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_AWADDR : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_AWLEN : out STD_LOGIC_VECTOR ( 7 downto 0 );
    M_AXI_AWSIZE : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M_AXI_AWBURST : out STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_AWLOCK : out STD_LOGIC;
    M_AXI_AWCACHE : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_AWPROT : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M_AXI_AWQOS : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_AWUSER : out STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_AWVALID : out STD_LOGIC;
    M_AXI_AWREADY : in STD_LOGIC;
    M_AXI_WDATA : out STD_LOGIC_VECTOR ( 127 downto 0 );
    M_AXI_WSTRB : out STD_LOGIC_VECTOR ( 15 downto 0 );
    M_AXI_WLAST : out STD_LOGIC;
    M_AXI_WUSER : out STD_LOGIC_VECTOR ( 15 downto 0 );
    M_AXI_WVALID : out STD_LOGIC;
    M_AXI_WREADY : in STD_LOGIC;
    M_AXI_BID : in STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_BRESP : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_BUSER : in STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_BVALID : in STD_LOGIC;
    M_AXI_BREADY : out STD_LOGIC;
    M_AXI_ARID : out STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_ARADDR : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_ARLEN : out STD_LOGIC_VECTOR ( 7 downto 0 );
    M_AXI_ARSIZE : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M_AXI_ARBURST : out STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_ARLOCK : out STD_LOGIC;
    M_AXI_ARCACHE : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_ARPROT : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M_AXI_ARQOS : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_ARUSER : out STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_ARVALID : out STD_LOGIC;
    M_AXI_ARREADY : in STD_LOGIC;
    M_AXI_RID : in STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_RDATA : in STD_LOGIC_VECTOR ( 127 downto 0 );
    M_AXI_RRESP : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_RLAST : in STD_LOGIC;
    M_AXI_RUSER : in STD_LOGIC_VECTOR ( 15 downto 0 );
    M_AXI_RVALID : in STD_LOGIC;
    M_AXI_RREADY : out STD_LOGIC
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "design_1_master_custom_v1_0_M_0_0,master_custom_v1_0_M00_AXI,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "yes";
  attribute IP_DEFINITION_SOURCE : string;
  attribute IP_DEFINITION_SOURCE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "module_ref";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "master_custom_v1_0_M00_AXI,Vivado 2023.2";
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
  signal \<const0>\ : STD_LOGIC;
  signal \<const1>\ : STD_LOGIC;
  signal \^m_axi_arready\ : STD_LOGIC;
  signal \^m_axi_rdata\ : STD_LOGIC_VECTOR ( 127 downto 0 );
  signal \^m_axi_rvalid\ : STD_LOGIC;
  signal \^arvalid\ : STD_LOGIC;
  signal \^debug_addr\ : STD_LOGIC_VECTOR ( 27 downto 0 );
  signal \^read_addr\ : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \^rready\ : STD_LOGIC;
  signal \^target_base_addr\ : STD_LOGIC_VECTOR ( 31 downto 0 );
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of M_AXI_ACLK : signal is "xilinx.com:signal:clock:1.0 M_AXI_ACLK CLK";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of M_AXI_ACLK : signal is "XIL_INTERFACENAME M_AXI_ACLK, ASSOCIATED_BUSIF M_AXI, ASSOCIATED_RESET M_AXI_ARESETN, FREQ_HZ 299970032, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN design_1_zynq_ultra_ps_e_0_0_pl_clk0, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of M_AXI_ARESETN : signal is "xilinx.com:signal:reset:1.0 M_AXI_ARESETN RST";
  attribute X_INTERFACE_PARAMETER of M_AXI_ARESETN : signal is "XIL_INTERFACENAME M_AXI_ARESETN, POLARITY ACTIVE_LOW, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of M_AXI_ARLOCK : signal is "xilinx.com:interface:aximm:1.0 M_AXI ARLOCK";
  attribute X_INTERFACE_INFO of M_AXI_ARREADY : signal is "xilinx.com:interface:aximm:1.0 M_AXI ARREADY";
  attribute X_INTERFACE_INFO of M_AXI_ARVALID : signal is "xilinx.com:interface:aximm:1.0 M_AXI ARVALID";
  attribute X_INTERFACE_INFO of M_AXI_AWLOCK : signal is "xilinx.com:interface:aximm:1.0 M_AXI AWLOCK";
  attribute X_INTERFACE_INFO of M_AXI_AWREADY : signal is "xilinx.com:interface:aximm:1.0 M_AXI AWREADY";
  attribute X_INTERFACE_INFO of M_AXI_AWVALID : signal is "xilinx.com:interface:aximm:1.0 M_AXI AWVALID";
  attribute X_INTERFACE_INFO of M_AXI_BREADY : signal is "xilinx.com:interface:aximm:1.0 M_AXI BREADY";
  attribute X_INTERFACE_INFO of M_AXI_BVALID : signal is "xilinx.com:interface:aximm:1.0 M_AXI BVALID";
  attribute X_INTERFACE_INFO of M_AXI_RLAST : signal is "xilinx.com:interface:aximm:1.0 M_AXI RLAST";
  attribute X_INTERFACE_INFO of M_AXI_RREADY : signal is "xilinx.com:interface:aximm:1.0 M_AXI RREADY";
  attribute X_INTERFACE_PARAMETER of M_AXI_RREADY : signal is "XIL_INTERFACENAME M_AXI, DATA_WIDTH 128, PROTOCOL AXI4, FREQ_HZ 299970032, ID_WIDTH 1, ADDR_WIDTH 32, AWUSER_WIDTH 1, ARUSER_WIDTH 1, WUSER_WIDTH 16, RUSER_WIDTH 16, BUSER_WIDTH 1, READ_WRITE_MODE READ_WRITE, HAS_BURST 1, HAS_LOCK 1, HAS_PROT 1, HAS_CACHE 1, HAS_QOS 1, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, SUPPORTS_NARROW_BURST 1, NUM_READ_OUTSTANDING 2, NUM_WRITE_OUTSTANDING 2, MAX_BURST_LENGTH 256, PHASE 0.0, CLK_DOMAIN design_1_zynq_ultra_ps_e_0_0_pl_clk0, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of M_AXI_RVALID : signal is "xilinx.com:interface:aximm:1.0 M_AXI RVALID";
  attribute X_INTERFACE_INFO of M_AXI_WLAST : signal is "xilinx.com:interface:aximm:1.0 M_AXI WLAST";
  attribute X_INTERFACE_INFO of M_AXI_WREADY : signal is "xilinx.com:interface:aximm:1.0 M_AXI WREADY";
  attribute X_INTERFACE_INFO of M_AXI_WVALID : signal is "xilinx.com:interface:aximm:1.0 M_AXI WVALID";
  attribute X_INTERFACE_INFO of M_AXI_ARADDR : signal is "xilinx.com:interface:aximm:1.0 M_AXI ARADDR";
  attribute X_INTERFACE_INFO of M_AXI_ARBURST : signal is "xilinx.com:interface:aximm:1.0 M_AXI ARBURST";
  attribute X_INTERFACE_INFO of M_AXI_ARCACHE : signal is "xilinx.com:interface:aximm:1.0 M_AXI ARCACHE";
  attribute X_INTERFACE_INFO of M_AXI_ARID : signal is "xilinx.com:interface:aximm:1.0 M_AXI ARID";
  attribute X_INTERFACE_INFO of M_AXI_ARLEN : signal is "xilinx.com:interface:aximm:1.0 M_AXI ARLEN";
  attribute X_INTERFACE_INFO of M_AXI_ARPROT : signal is "xilinx.com:interface:aximm:1.0 M_AXI ARPROT";
  attribute X_INTERFACE_INFO of M_AXI_ARQOS : signal is "xilinx.com:interface:aximm:1.0 M_AXI ARQOS";
  attribute X_INTERFACE_INFO of M_AXI_ARSIZE : signal is "xilinx.com:interface:aximm:1.0 M_AXI ARSIZE";
  attribute X_INTERFACE_INFO of M_AXI_ARUSER : signal is "xilinx.com:interface:aximm:1.0 M_AXI ARUSER";
  attribute X_INTERFACE_INFO of M_AXI_AWADDR : signal is "xilinx.com:interface:aximm:1.0 M_AXI AWADDR";
  attribute X_INTERFACE_INFO of M_AXI_AWBURST : signal is "xilinx.com:interface:aximm:1.0 M_AXI AWBURST";
  attribute X_INTERFACE_INFO of M_AXI_AWCACHE : signal is "xilinx.com:interface:aximm:1.0 M_AXI AWCACHE";
  attribute X_INTERFACE_INFO of M_AXI_AWID : signal is "xilinx.com:interface:aximm:1.0 M_AXI AWID";
  attribute X_INTERFACE_INFO of M_AXI_AWLEN : signal is "xilinx.com:interface:aximm:1.0 M_AXI AWLEN";
  attribute X_INTERFACE_INFO of M_AXI_AWPROT : signal is "xilinx.com:interface:aximm:1.0 M_AXI AWPROT";
  attribute X_INTERFACE_INFO of M_AXI_AWQOS : signal is "xilinx.com:interface:aximm:1.0 M_AXI AWQOS";
  attribute X_INTERFACE_INFO of M_AXI_AWSIZE : signal is "xilinx.com:interface:aximm:1.0 M_AXI AWSIZE";
  attribute X_INTERFACE_INFO of M_AXI_AWUSER : signal is "xilinx.com:interface:aximm:1.0 M_AXI AWUSER";
  attribute X_INTERFACE_INFO of M_AXI_BID : signal is "xilinx.com:interface:aximm:1.0 M_AXI BID";
  attribute X_INTERFACE_INFO of M_AXI_BRESP : signal is "xilinx.com:interface:aximm:1.0 M_AXI BRESP";
  attribute X_INTERFACE_INFO of M_AXI_BUSER : signal is "xilinx.com:interface:aximm:1.0 M_AXI BUSER";
  attribute X_INTERFACE_INFO of M_AXI_RDATA : signal is "xilinx.com:interface:aximm:1.0 M_AXI RDATA";
  attribute X_INTERFACE_INFO of M_AXI_RID : signal is "xilinx.com:interface:aximm:1.0 M_AXI RID";
  attribute X_INTERFACE_INFO of M_AXI_RRESP : signal is "xilinx.com:interface:aximm:1.0 M_AXI RRESP";
  attribute X_INTERFACE_INFO of M_AXI_RUSER : signal is "xilinx.com:interface:aximm:1.0 M_AXI RUSER";
  attribute X_INTERFACE_INFO of M_AXI_WDATA : signal is "xilinx.com:interface:aximm:1.0 M_AXI WDATA";
  attribute X_INTERFACE_INFO of M_AXI_WSTRB : signal is "xilinx.com:interface:aximm:1.0 M_AXI WSTRB";
  attribute X_INTERFACE_INFO of M_AXI_WUSER : signal is "xilinx.com:interface:aximm:1.0 M_AXI WUSER";
begin
  ERROR <= \<const0>\;
  M_AXI_ARADDR(31 downto 0) <= \^read_addr\(31 downto 0);
  M_AXI_ARBURST(1) <= \<const0>\;
  M_AXI_ARBURST(0) <= \<const1>\;
  M_AXI_ARCACHE(3) <= \<const0>\;
  M_AXI_ARCACHE(2) <= \<const0>\;
  M_AXI_ARCACHE(1) <= \<const1>\;
  M_AXI_ARCACHE(0) <= \<const1>\;
  M_AXI_ARID(0) <= \<const0>\;
  M_AXI_ARLEN(7) <= \<const0>\;
  M_AXI_ARLEN(6) <= \<const0>\;
  M_AXI_ARLEN(5) <= \<const0>\;
  M_AXI_ARLEN(4) <= \<const0>\;
  M_AXI_ARLEN(3) <= \<const0>\;
  M_AXI_ARLEN(2) <= \<const0>\;
  M_AXI_ARLEN(1) <= \<const0>\;
  M_AXI_ARLEN(0) <= \<const0>\;
  M_AXI_ARLOCK <= \<const0>\;
  M_AXI_ARPROT(2) <= \<const0>\;
  M_AXI_ARPROT(1) <= \<const0>\;
  M_AXI_ARPROT(0) <= \<const0>\;
  M_AXI_ARQOS(3) <= \<const1>\;
  M_AXI_ARQOS(2) <= \<const1>\;
  M_AXI_ARQOS(1) <= \<const1>\;
  M_AXI_ARQOS(0) <= \<const1>\;
  M_AXI_ARSIZE(2) <= \<const1>\;
  M_AXI_ARSIZE(1) <= \<const0>\;
  M_AXI_ARSIZE(0) <= \<const0>\;
  M_AXI_ARUSER(0) <= \<const1>\;
  M_AXI_ARVALID <= \^arvalid\;
  M_AXI_AWADDR(31 downto 0) <= \^target_base_addr\(31 downto 0);
  M_AXI_AWBURST(1) <= \<const0>\;
  M_AXI_AWBURST(0) <= \<const1>\;
  M_AXI_AWCACHE(3) <= \<const0>\;
  M_AXI_AWCACHE(2) <= \<const0>\;
  M_AXI_AWCACHE(1) <= \<const1>\;
  M_AXI_AWCACHE(0) <= \<const0>\;
  M_AXI_AWID(0) <= \<const0>\;
  M_AXI_AWLEN(7) <= \<const0>\;
  M_AXI_AWLEN(6) <= \<const0>\;
  M_AXI_AWLEN(5) <= \<const0>\;
  M_AXI_AWLEN(4) <= \<const0>\;
  M_AXI_AWLEN(3) <= \<const0>\;
  M_AXI_AWLEN(2) <= \<const0>\;
  M_AXI_AWLEN(1) <= \<const0>\;
  M_AXI_AWLEN(0) <= \<const0>\;
  M_AXI_AWLOCK <= \<const0>\;
  M_AXI_AWPROT(2) <= \<const0>\;
  M_AXI_AWPROT(1) <= \<const0>\;
  M_AXI_AWPROT(0) <= \<const0>\;
  M_AXI_AWQOS(3) <= \<const0>\;
  M_AXI_AWQOS(2) <= \<const0>\;
  M_AXI_AWQOS(1) <= \<const0>\;
  M_AXI_AWQOS(0) <= \<const0>\;
  M_AXI_AWSIZE(2) <= \<const1>\;
  M_AXI_AWSIZE(1) <= \<const0>\;
  M_AXI_AWSIZE(0) <= \<const0>\;
  M_AXI_AWUSER(0) <= \<const1>\;
  M_AXI_AWVALID <= \<const0>\;
  M_AXI_RREADY <= \^rready\;
  M_AXI_WDATA(127) <= \<const0>\;
  M_AXI_WDATA(126) <= \<const0>\;
  M_AXI_WDATA(125) <= \<const0>\;
  M_AXI_WDATA(124) <= \<const0>\;
  M_AXI_WDATA(123) <= \<const0>\;
  M_AXI_WDATA(122) <= \<const0>\;
  M_AXI_WDATA(121) <= \<const0>\;
  M_AXI_WDATA(120) <= \<const0>\;
  M_AXI_WDATA(119) <= \<const0>\;
  M_AXI_WDATA(118) <= \<const0>\;
  M_AXI_WDATA(117) <= \<const0>\;
  M_AXI_WDATA(116) <= \<const0>\;
  M_AXI_WDATA(115) <= \<const0>\;
  M_AXI_WDATA(114) <= \<const0>\;
  M_AXI_WDATA(113) <= \<const0>\;
  M_AXI_WDATA(112) <= \<const0>\;
  M_AXI_WDATA(111) <= \<const0>\;
  M_AXI_WDATA(110) <= \<const0>\;
  M_AXI_WDATA(109) <= \<const0>\;
  M_AXI_WDATA(108) <= \<const0>\;
  M_AXI_WDATA(107) <= \<const0>\;
  M_AXI_WDATA(106) <= \<const0>\;
  M_AXI_WDATA(105) <= \<const0>\;
  M_AXI_WDATA(104) <= \<const0>\;
  M_AXI_WDATA(103) <= \<const0>\;
  M_AXI_WDATA(102) <= \<const0>\;
  M_AXI_WDATA(101) <= \<const0>\;
  M_AXI_WDATA(100) <= \<const0>\;
  M_AXI_WDATA(99) <= \<const0>\;
  M_AXI_WDATA(98) <= \<const0>\;
  M_AXI_WDATA(97) <= \<const0>\;
  M_AXI_WDATA(96) <= \<const0>\;
  M_AXI_WDATA(95) <= \<const0>\;
  M_AXI_WDATA(94) <= \<const0>\;
  M_AXI_WDATA(93) <= \<const0>\;
  M_AXI_WDATA(92) <= \<const0>\;
  M_AXI_WDATA(91) <= \<const0>\;
  M_AXI_WDATA(90) <= \<const0>\;
  M_AXI_WDATA(89) <= \<const0>\;
  M_AXI_WDATA(88) <= \<const0>\;
  M_AXI_WDATA(87) <= \<const0>\;
  M_AXI_WDATA(86) <= \<const0>\;
  M_AXI_WDATA(85) <= \<const0>\;
  M_AXI_WDATA(84) <= \<const0>\;
  M_AXI_WDATA(83) <= \<const0>\;
  M_AXI_WDATA(82) <= \<const0>\;
  M_AXI_WDATA(81) <= \<const0>\;
  M_AXI_WDATA(80) <= \<const0>\;
  M_AXI_WDATA(79) <= \<const0>\;
  M_AXI_WDATA(78) <= \<const0>\;
  M_AXI_WDATA(77) <= \<const0>\;
  M_AXI_WDATA(76) <= \<const0>\;
  M_AXI_WDATA(75) <= \<const0>\;
  M_AXI_WDATA(74) <= \<const0>\;
  M_AXI_WDATA(73) <= \<const0>\;
  M_AXI_WDATA(72) <= \<const0>\;
  M_AXI_WDATA(71) <= \<const0>\;
  M_AXI_WDATA(70) <= \<const0>\;
  M_AXI_WDATA(69) <= \<const0>\;
  M_AXI_WDATA(68) <= \<const0>\;
  M_AXI_WDATA(67) <= \<const0>\;
  M_AXI_WDATA(66) <= \<const0>\;
  M_AXI_WDATA(65) <= \<const0>\;
  M_AXI_WDATA(64) <= \<const0>\;
  M_AXI_WDATA(63) <= \<const0>\;
  M_AXI_WDATA(62) <= \<const0>\;
  M_AXI_WDATA(61) <= \<const0>\;
  M_AXI_WDATA(60) <= \<const0>\;
  M_AXI_WDATA(59) <= \<const0>\;
  M_AXI_WDATA(58) <= \<const0>\;
  M_AXI_WDATA(57) <= \<const0>\;
  M_AXI_WDATA(56) <= \<const0>\;
  M_AXI_WDATA(55) <= \<const0>\;
  M_AXI_WDATA(54) <= \<const0>\;
  M_AXI_WDATA(53) <= \<const0>\;
  M_AXI_WDATA(52) <= \<const0>\;
  M_AXI_WDATA(51) <= \<const0>\;
  M_AXI_WDATA(50) <= \<const0>\;
  M_AXI_WDATA(49) <= \<const0>\;
  M_AXI_WDATA(48) <= \<const0>\;
  M_AXI_WDATA(47) <= \<const0>\;
  M_AXI_WDATA(46) <= \<const0>\;
  M_AXI_WDATA(45) <= \<const0>\;
  M_AXI_WDATA(44) <= \<const0>\;
  M_AXI_WDATA(43) <= \<const0>\;
  M_AXI_WDATA(42) <= \<const0>\;
  M_AXI_WDATA(41) <= \<const0>\;
  M_AXI_WDATA(40) <= \<const0>\;
  M_AXI_WDATA(39) <= \<const0>\;
  M_AXI_WDATA(38) <= \<const0>\;
  M_AXI_WDATA(37) <= \<const0>\;
  M_AXI_WDATA(36) <= \<const0>\;
  M_AXI_WDATA(35) <= \<const0>\;
  M_AXI_WDATA(34) <= \<const0>\;
  M_AXI_WDATA(33) <= \<const0>\;
  M_AXI_WDATA(32) <= \<const0>\;
  M_AXI_WDATA(31) <= \<const0>\;
  M_AXI_WDATA(30) <= \<const0>\;
  M_AXI_WDATA(29) <= \<const0>\;
  M_AXI_WDATA(28) <= \<const0>\;
  M_AXI_WDATA(27) <= \<const0>\;
  M_AXI_WDATA(26) <= \<const0>\;
  M_AXI_WDATA(25) <= \<const0>\;
  M_AXI_WDATA(24) <= \<const0>\;
  M_AXI_WDATA(23) <= \<const0>\;
  M_AXI_WDATA(22) <= \<const0>\;
  M_AXI_WDATA(21) <= \<const0>\;
  M_AXI_WDATA(20) <= \<const0>\;
  M_AXI_WDATA(19) <= \<const0>\;
  M_AXI_WDATA(18) <= \<const0>\;
  M_AXI_WDATA(17) <= \<const0>\;
  M_AXI_WDATA(16) <= \<const0>\;
  M_AXI_WDATA(15) <= \<const0>\;
  M_AXI_WDATA(14) <= \<const0>\;
  M_AXI_WDATA(13) <= \<const0>\;
  M_AXI_WDATA(12) <= \<const0>\;
  M_AXI_WDATA(11) <= \<const0>\;
  M_AXI_WDATA(10) <= \<const0>\;
  M_AXI_WDATA(9) <= \<const0>\;
  M_AXI_WDATA(8) <= \<const0>\;
  M_AXI_WDATA(7) <= \<const0>\;
  M_AXI_WDATA(6) <= \<const0>\;
  M_AXI_WDATA(5) <= \<const0>\;
  M_AXI_WDATA(4) <= \<const0>\;
  M_AXI_WDATA(3) <= \<const0>\;
  M_AXI_WDATA(2) <= \<const0>\;
  M_AXI_WDATA(1) <= \<const0>\;
  M_AXI_WDATA(0) <= \<const1>\;
  M_AXI_WSTRB(15) <= \<const1>\;
  M_AXI_WSTRB(14) <= \<const1>\;
  M_AXI_WSTRB(13) <= \<const1>\;
  M_AXI_WSTRB(12) <= \<const1>\;
  M_AXI_WSTRB(11) <= \<const1>\;
  M_AXI_WSTRB(10) <= \<const1>\;
  M_AXI_WSTRB(9) <= \<const1>\;
  M_AXI_WSTRB(8) <= \<const1>\;
  M_AXI_WSTRB(7) <= \<const1>\;
  M_AXI_WSTRB(6) <= \<const1>\;
  M_AXI_WSTRB(5) <= \<const1>\;
  M_AXI_WSTRB(4) <= \<const1>\;
  M_AXI_WSTRB(3) <= \<const1>\;
  M_AXI_WSTRB(2) <= \<const1>\;
  M_AXI_WSTRB(1) <= \<const1>\;
  M_AXI_WSTRB(0) <= \<const1>\;
  M_AXI_WUSER(15) <= \<const0>\;
  M_AXI_WUSER(14) <= \<const0>\;
  M_AXI_WUSER(13) <= \<const0>\;
  M_AXI_WUSER(12) <= \<const0>\;
  M_AXI_WUSER(11) <= \<const0>\;
  M_AXI_WUSER(10) <= \<const0>\;
  M_AXI_WUSER(9) <= \<const0>\;
  M_AXI_WUSER(8) <= \<const0>\;
  M_AXI_WUSER(7) <= \<const0>\;
  M_AXI_WUSER(6) <= \<const0>\;
  M_AXI_WUSER(5) <= \<const0>\;
  M_AXI_WUSER(4) <= \<const0>\;
  M_AXI_WUSER(3) <= \<const0>\;
  M_AXI_WUSER(2) <= \<const0>\;
  M_AXI_WUSER(1) <= \<const0>\;
  M_AXI_WUSER(0) <= \<const0>\;
  M_AXI_WVALID <= \<const0>\;
  \^m_axi_arready\ <= M_AXI_ARREADY;
  \^m_axi_rdata\(127 downto 0) <= M_AXI_RDATA(127 downto 0);
  \^m_axi_rvalid\ <= M_AXI_RVALID;
  \^read_addr\(31 downto 0) <= read_addr(31 downto 0);
  \^target_base_addr\(31 downto 0) <= target_base_addr(31 downto 0);
  arready <= \^m_axi_arready\;
  arvalid <= \^arvalid\;
  debug_add_bytes(31) <= \<const0>\;
  debug_add_bytes(30) <= \<const0>\;
  debug_add_bytes(29) <= \<const0>\;
  debug_add_bytes(28) <= \<const0>\;
  debug_add_bytes(27) <= \<const0>\;
  debug_add_bytes(26) <= \<const0>\;
  debug_add_bytes(25) <= \<const0>\;
  debug_add_bytes(24) <= \<const0>\;
  debug_add_bytes(23) <= \<const0>\;
  debug_add_bytes(22) <= \<const0>\;
  debug_add_bytes(21) <= \<const0>\;
  debug_add_bytes(20) <= \<const0>\;
  debug_add_bytes(19) <= \<const0>\;
  debug_add_bytes(18) <= \<const0>\;
  debug_add_bytes(17) <= \<const0>\;
  debug_add_bytes(16) <= \<const0>\;
  debug_add_bytes(15) <= \<const0>\;
  debug_add_bytes(14) <= \<const0>\;
  debug_add_bytes(13) <= \<const0>\;
  debug_add_bytes(12) <= \<const0>\;
  debug_add_bytes(11) <= \<const0>\;
  debug_add_bytes(10) <= \<const0>\;
  debug_add_bytes(9) <= \<const0>\;
  debug_add_bytes(8) <= \<const0>\;
  debug_add_bytes(7) <= \<const0>\;
  debug_add_bytes(6) <= \<const0>\;
  debug_add_bytes(5) <= \<const0>\;
  debug_add_bytes(4) <= \<const1>\;
  debug_add_bytes(3) <= \<const0>\;
  debug_add_bytes(2) <= \<const0>\;
  debug_add_bytes(1) <= \<const0>\;
  debug_add_bytes(0) <= \<const0>\;
  debug_addr(31) <= \<const0>\;
  debug_addr(30) <= \<const0>\;
  debug_addr(29) <= \<const0>\;
  debug_addr(28) <= \<const0>\;
  debug_addr(27 downto 0) <= \^debug_addr\(27 downto 0);
  debug_tx_num(31) <= \<const0>\;
  debug_tx_num(30) <= \<const0>\;
  debug_tx_num(29) <= \<const0>\;
  debug_tx_num(28) <= \<const0>\;
  debug_tx_num(27) <= \<const0>\;
  debug_tx_num(26) <= \<const0>\;
  debug_tx_num(25) <= \<const0>\;
  debug_tx_num(24) <= \<const0>\;
  debug_tx_num(23) <= \<const0>\;
  debug_tx_num(22) <= \<const0>\;
  debug_tx_num(21) <= \<const0>\;
  debug_tx_num(20) <= \<const0>\;
  debug_tx_num(19) <= \<const0>\;
  debug_tx_num(18) <= \<const0>\;
  debug_tx_num(17) <= \<const0>\;
  debug_tx_num(16) <= \<const0>\;
  debug_tx_num(15) <= \<const0>\;
  debug_tx_num(14) <= \<const0>\;
  debug_tx_num(13) <= \<const0>\;
  debug_tx_num(12) <= \<const0>\;
  debug_tx_num(11) <= \<const0>\;
  debug_tx_num(10) <= \<const0>\;
  debug_tx_num(9) <= \<const0>\;
  debug_tx_num(8) <= \<const0>\;
  debug_tx_num(7) <= \<const0>\;
  debug_tx_num(6) <= \<const0>\;
  debug_tx_num(5) <= \<const0>\;
  debug_tx_num(4) <= \<const0>\;
  debug_tx_num(3) <= \<const0>\;
  debug_tx_num(2) <= \<const0>\;
  debug_tx_num(1) <= \<const0>\;
  debug_tx_num(0) <= \<const0>\;
  output_data(127 downto 0) <= \^m_axi_rdata\(127 downto 0);
  rready <= \^rready\;
  rvalid <= \^m_axi_rvalid\;
GND: unisim.vcomponents.GND
     port map (
      G => \<const0>\
    );
VCC: unisim.vcomponents.VCC
     port map (
      P => \<const1>\
    );
inst: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_master_custom_v1_0_M00_AXI
     port map (
      INIT_AXI_TXN => INIT_AXI_TXN,
      M_AXI_ACLK => M_AXI_ACLK,
      M_AXI_ARESETN => M_AXI_ARESETN,
      M_AXI_ARREADY => \^m_axi_arready\,
      M_AXI_BREADY => M_AXI_BREADY,
      M_AXI_BVALID => M_AXI_BVALID,
      M_AXI_RLAST => M_AXI_RLAST,
      M_AXI_RVALID => \^m_axi_rvalid\,
      M_AXI_WLAST => M_AXI_WLAST,
      TXN_DONE => TXN_DONE,
      addr_fifo_empty => addr_fifo_empty,
      axi_arvalid_reg_0 => \^arvalid\,
      debug_addr(27 downto 0) => \^debug_addr\(27 downto 0),
      read_addr(27 downto 0) => \^read_addr\(27 downto 0),
      rready => \^rready\,
      vector_fifo_full => vector_fifo_full
    );
end STRUCTURE;
