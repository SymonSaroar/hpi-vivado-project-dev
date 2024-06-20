// (c) Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// (c) Copyright 2022-2024 Advanced Micro Devices, Inc. All rights reserved.
// 
// This file contains confidential and proprietary information
// of AMD and is protected under U.S. and international copyright
// and other intellectual property laws.
// 
// DISCLAIMER
// This disclaimer is not a license and does not grant any
// rights to the materials distributed herewith. Except as
// otherwise provided in a valid license issued to you by
// AMD, and to the maximum extent permitted by applicable
// law: (1) THESE MATERIALS ARE MADE AVAILABLE "AS IS" AND
// WITH ALL FAULTS, AND AMD HEREBY DISCLAIMS ALL WARRANTIES
// AND CONDITIONS, EXPRESS, IMPLIED, OR STATUTORY, INCLUDING
// BUT NOT LIMITED TO WARRANTIES OF MERCHANTABILITY, NON-
// INFRINGEMENT, OR FITNESS FOR ANY PARTICULAR PURPOSE; and
// (2) AMD shall not be liable (whether in contract or tort,
// including negligence, or under any other theory of
// liability) for any loss or damage of any kind or nature
// related to, arising under or in connection with these
// materials, including for any direct, or any indirect,
// special, incidental, or consequential loss or damage
// (including loss of data, profits, goodwill, or any type of
// loss or damage suffered as a result of any action brought
// by a third party) even if such damage or loss was
// reasonably foreseeable or AMD had been advised of the
// possibility of the same.
// 
// CRITICAL APPLICATIONS
// AMD products are not designed or intended to be fail-
// safe, or for use in any application requiring fail-safe
// performance, such as life-support or safety devices or
// systems, Class III medical devices, nuclear facilities,
// applications related to the deployment of airbags, or any
// other applications that could lead to death, personal
// injury, or severe property or environmental damage
// (individually and collectively, "Critical
// Applications"). Customer assumes the sole risk and
// liability of any use of AMD products in Critical
// Applications, subject only to applicable laws and
// regulations governing limitations on product liability.
// 
// THIS COPYRIGHT NOTICE AND DISCLAIMER MUST BE RETAINED AS
// PART OF THIS FILE AT ALL TIMES.
// 
// DO NOT MODIFY THIS FILE.


#include "design_bd_zynq_ultra_ps_e_0_0_sc.h"

#include "design_bd_zynq_ultra_ps_e_0_0.h"

#include "zynq_ultra_ps_e_tlm.h"

#include <map>
#include <string>





#ifdef XILINX_SIMULATOR
design_bd_zynq_ultra_ps_e_0_0::design_bd_zynq_ultra_ps_e_0_0(const sc_core::sc_module_name& nm) : design_bd_zynq_ultra_ps_e_0_0_sc(nm), maxihpm0_fpd_aclk("maxihpm0_fpd_aclk"), maxigp0_awid("maxigp0_awid"), maxigp0_awaddr("maxigp0_awaddr"), maxigp0_awlen("maxigp0_awlen"), maxigp0_awsize("maxigp0_awsize"), maxigp0_awburst("maxigp0_awburst"), maxigp0_awlock("maxigp0_awlock"), maxigp0_awcache("maxigp0_awcache"), maxigp0_awprot("maxigp0_awprot"), maxigp0_awvalid("maxigp0_awvalid"), maxigp0_awuser("maxigp0_awuser"), maxigp0_awready("maxigp0_awready"), maxigp0_wdata("maxigp0_wdata"), maxigp0_wstrb("maxigp0_wstrb"), maxigp0_wlast("maxigp0_wlast"), maxigp0_wvalid("maxigp0_wvalid"), maxigp0_wready("maxigp0_wready"), maxigp0_bid("maxigp0_bid"), maxigp0_bresp("maxigp0_bresp"), maxigp0_bvalid("maxigp0_bvalid"), maxigp0_bready("maxigp0_bready"), maxigp0_arid("maxigp0_arid"), maxigp0_araddr("maxigp0_araddr"), maxigp0_arlen("maxigp0_arlen"), maxigp0_arsize("maxigp0_arsize"), maxigp0_arburst("maxigp0_arburst"), maxigp0_arlock("maxigp0_arlock"), maxigp0_arcache("maxigp0_arcache"), maxigp0_arprot("maxigp0_arprot"), maxigp0_arvalid("maxigp0_arvalid"), maxigp0_aruser("maxigp0_aruser"), maxigp0_arready("maxigp0_arready"), maxigp0_rid("maxigp0_rid"), maxigp0_rdata("maxigp0_rdata"), maxigp0_rresp("maxigp0_rresp"), maxigp0_rlast("maxigp0_rlast"), maxigp0_rvalid("maxigp0_rvalid"), maxigp0_rready("maxigp0_rready"), maxigp0_awqos("maxigp0_awqos"), maxigp0_arqos("maxigp0_arqos"), maxihpm0_lpd_aclk("maxihpm0_lpd_aclk"), maxigp2_awid("maxigp2_awid"), maxigp2_awaddr("maxigp2_awaddr"), maxigp2_awlen("maxigp2_awlen"), maxigp2_awsize("maxigp2_awsize"), maxigp2_awburst("maxigp2_awburst"), maxigp2_awlock("maxigp2_awlock"), maxigp2_awcache("maxigp2_awcache"), maxigp2_awprot("maxigp2_awprot"), maxigp2_awvalid("maxigp2_awvalid"), maxigp2_awuser("maxigp2_awuser"), maxigp2_awready("maxigp2_awready"), maxigp2_wdata("maxigp2_wdata"), maxigp2_wstrb("maxigp2_wstrb"), maxigp2_wlast("maxigp2_wlast"), maxigp2_wvalid("maxigp2_wvalid"), maxigp2_wready("maxigp2_wready"), maxigp2_bid("maxigp2_bid"), maxigp2_bresp("maxigp2_bresp"), maxigp2_bvalid("maxigp2_bvalid"), maxigp2_bready("maxigp2_bready"), maxigp2_arid("maxigp2_arid"), maxigp2_araddr("maxigp2_araddr"), maxigp2_arlen("maxigp2_arlen"), maxigp2_arsize("maxigp2_arsize"), maxigp2_arburst("maxigp2_arburst"), maxigp2_arlock("maxigp2_arlock"), maxigp2_arcache("maxigp2_arcache"), maxigp2_arprot("maxigp2_arprot"), maxigp2_arvalid("maxigp2_arvalid"), maxigp2_aruser("maxigp2_aruser"), maxigp2_arready("maxigp2_arready"), maxigp2_rid("maxigp2_rid"), maxigp2_rdata("maxigp2_rdata"), maxigp2_rresp("maxigp2_rresp"), maxigp2_rlast("maxigp2_rlast"), maxigp2_rvalid("maxigp2_rvalid"), maxigp2_rready("maxigp2_rready"), maxigp2_awqos("maxigp2_awqos"), maxigp2_arqos("maxigp2_arqos"), saxiacp_fpd_aclk("saxiacp_fpd_aclk"), saxiacp_awuser("saxiacp_awuser"), saxiacp_aruser("saxiacp_aruser"), saxiacp_awid("saxiacp_awid"), saxiacp_awaddr("saxiacp_awaddr"), saxiacp_awlen("saxiacp_awlen"), saxiacp_awsize("saxiacp_awsize"), saxiacp_awburst("saxiacp_awburst"), saxiacp_awlock("saxiacp_awlock"), saxiacp_awcache("saxiacp_awcache"), saxiacp_awprot("saxiacp_awprot"), saxiacp_awvalid("saxiacp_awvalid"), saxiacp_awready("saxiacp_awready"), saxiacp_wdata("saxiacp_wdata"), saxiacp_wstrb("saxiacp_wstrb"), saxiacp_wlast("saxiacp_wlast"), saxiacp_wvalid("saxiacp_wvalid"), saxiacp_wready("saxiacp_wready"), saxiacp_bid("saxiacp_bid"), saxiacp_bresp("saxiacp_bresp"), saxiacp_bvalid("saxiacp_bvalid"), saxiacp_bready("saxiacp_bready"), saxiacp_arid("saxiacp_arid"), saxiacp_araddr("saxiacp_araddr"), saxiacp_arlen("saxiacp_arlen"), saxiacp_arsize("saxiacp_arsize"), saxiacp_arburst("saxiacp_arburst"), saxiacp_arlock("saxiacp_arlock"), saxiacp_arcache("saxiacp_arcache"), saxiacp_arprot("saxiacp_arprot"), saxiacp_arvalid("saxiacp_arvalid"), saxiacp_arready("saxiacp_arready"), saxiacp_rid("saxiacp_rid"), saxiacp_rdata("saxiacp_rdata"), saxiacp_rresp("saxiacp_rresp"), saxiacp_rlast("saxiacp_rlast"), saxiacp_rvalid("saxiacp_rvalid"), saxiacp_rready("saxiacp_rready"), saxiacp_awqos("saxiacp_awqos"), saxiacp_arqos("saxiacp_arqos"), pl_ps_irq0("pl_ps_irq0"), pl_resetn0("pl_resetn0"), pl_acpinact("pl_acpinact"), pl_clk0("pl_clk0")
{

  // initialize pins
  mp_impl->maxihpm0_fpd_aclk(maxihpm0_fpd_aclk);
  mp_impl->maxihpm0_lpd_aclk(maxihpm0_lpd_aclk);
  mp_impl->saxiacp_fpd_aclk(saxiacp_fpd_aclk);
  mp_impl->pl_ps_irq0(pl_ps_irq0);
  mp_impl->pl_resetn0(pl_resetn0);
  mp_impl->pl_acpinact(pl_acpinact);
  mp_impl->pl_clk0(pl_clk0);

  // initialize transactors
  mp_M_AXI_HPM0_FPD_transactor = NULL;
  mp_M_AXI_HPM0_LPD_transactor = NULL;
  mp_S_AXI_ACP_FPD_transactor = NULL;

  // initialize socket stubs

}

void design_bd_zynq_ultra_ps_e_0_0::before_end_of_elaboration()
{
  // configure 'M_AXI_HPM0_FPD' transactor

  if (xsc::utils::xsc_sim_manager::getInstanceParameterInt("design_bd_zynq_ultra_ps_e_0_0", "M_AXI_HPM0_FPD_TLM_MODE") != 1)
  {
    // Instantiate Socket Stubs

  // 'M_AXI_HPM0_FPD' transactor parameters
    xsc::common_cpp::properties M_AXI_HPM0_FPD_transactor_param_props;
    M_AXI_HPM0_FPD_transactor_param_props.addLong("NUM_WRITE_OUTSTANDING", "8");
    M_AXI_HPM0_FPD_transactor_param_props.addLong("NUM_READ_OUTSTANDING", "8");
    M_AXI_HPM0_FPD_transactor_param_props.addLong("DATA_WIDTH", "32");
    M_AXI_HPM0_FPD_transactor_param_props.addLong("FREQ_HZ", "299970032");
    M_AXI_HPM0_FPD_transactor_param_props.addLong("ID_WIDTH", "16");
    M_AXI_HPM0_FPD_transactor_param_props.addLong("ADDR_WIDTH", "40");
    M_AXI_HPM0_FPD_transactor_param_props.addLong("AWUSER_WIDTH", "16");
    M_AXI_HPM0_FPD_transactor_param_props.addLong("ARUSER_WIDTH", "16");
    M_AXI_HPM0_FPD_transactor_param_props.addLong("WUSER_WIDTH", "0");
    M_AXI_HPM0_FPD_transactor_param_props.addLong("RUSER_WIDTH", "0");
    M_AXI_HPM0_FPD_transactor_param_props.addLong("BUSER_WIDTH", "0");
    M_AXI_HPM0_FPD_transactor_param_props.addLong("HAS_BURST", "1");
    M_AXI_HPM0_FPD_transactor_param_props.addLong("HAS_LOCK", "1");
    M_AXI_HPM0_FPD_transactor_param_props.addLong("HAS_PROT", "1");
    M_AXI_HPM0_FPD_transactor_param_props.addLong("HAS_CACHE", "1");
    M_AXI_HPM0_FPD_transactor_param_props.addLong("HAS_QOS", "1");
    M_AXI_HPM0_FPD_transactor_param_props.addLong("HAS_REGION", "0");
    M_AXI_HPM0_FPD_transactor_param_props.addLong("HAS_WSTRB", "1");
    M_AXI_HPM0_FPD_transactor_param_props.addLong("HAS_BRESP", "1");
    M_AXI_HPM0_FPD_transactor_param_props.addLong("HAS_RRESP", "1");
    M_AXI_HPM0_FPD_transactor_param_props.addLong("SUPPORTS_NARROW_BURST", "1");
    M_AXI_HPM0_FPD_transactor_param_props.addLong("MAX_BURST_LENGTH", "256");
    M_AXI_HPM0_FPD_transactor_param_props.addLong("NUM_READ_THREADS", "4");
    M_AXI_HPM0_FPD_transactor_param_props.addLong("NUM_WRITE_THREADS", "4");
    M_AXI_HPM0_FPD_transactor_param_props.addLong("RUSER_BITS_PER_BYTE", "0");
    M_AXI_HPM0_FPD_transactor_param_props.addLong("WUSER_BITS_PER_BYTE", "0");
    M_AXI_HPM0_FPD_transactor_param_props.addLong("HAS_SIZE", "1");
    M_AXI_HPM0_FPD_transactor_param_props.addLong("HAS_RESET", "0");
    M_AXI_HPM0_FPD_transactor_param_props.addFloat("PHASE", "0.0");
    M_AXI_HPM0_FPD_transactor_param_props.addString("PROTOCOL", "AXI4");
    M_AXI_HPM0_FPD_transactor_param_props.addString("READ_WRITE_MODE", "READ_WRITE");
    M_AXI_HPM0_FPD_transactor_param_props.addString("CLK_DOMAIN", "design_bd_zynq_ultra_ps_e_0_0_pl_clk0");

    mp_M_AXI_HPM0_FPD_transactor = new xtlm::xaximm_xtlm2pin_t<32,40,16,16,1,1,16,1>("M_AXI_HPM0_FPD_transactor", M_AXI_HPM0_FPD_transactor_param_props);

    // M_AXI_HPM0_FPD' transactor ports

    mp_M_AXI_HPM0_FPD_transactor->AWID(maxigp0_awid);
    mp_M_AXI_HPM0_FPD_transactor->AWADDR(maxigp0_awaddr);
    mp_M_AXI_HPM0_FPD_transactor->AWLEN(maxigp0_awlen);
    mp_M_AXI_HPM0_FPD_transactor->AWSIZE(maxigp0_awsize);
    mp_M_AXI_HPM0_FPD_transactor->AWBURST(maxigp0_awburst);
    mp_M_AXI_HPM0_FPD_transactor->AWLOCK(maxigp0_awlock);
    mp_M_AXI_HPM0_FPD_transactor->AWCACHE(maxigp0_awcache);
    mp_M_AXI_HPM0_FPD_transactor->AWPROT(maxigp0_awprot);
    mp_M_AXI_HPM0_FPD_transactor->AWVALID(maxigp0_awvalid);
    mp_M_AXI_HPM0_FPD_transactor->AWUSER(maxigp0_awuser);
    mp_M_AXI_HPM0_FPD_transactor->AWREADY(maxigp0_awready);
    mp_M_AXI_HPM0_FPD_transactor->WDATA(maxigp0_wdata);
    mp_M_AXI_HPM0_FPD_transactor->WSTRB(maxigp0_wstrb);
    mp_M_AXI_HPM0_FPD_transactor->WLAST(maxigp0_wlast);
    mp_M_AXI_HPM0_FPD_transactor->WVALID(maxigp0_wvalid);
    mp_M_AXI_HPM0_FPD_transactor->WREADY(maxigp0_wready);
    mp_M_AXI_HPM0_FPD_transactor->BID(maxigp0_bid);
    mp_M_AXI_HPM0_FPD_transactor->BRESP(maxigp0_bresp);
    mp_M_AXI_HPM0_FPD_transactor->BVALID(maxigp0_bvalid);
    mp_M_AXI_HPM0_FPD_transactor->BREADY(maxigp0_bready);
    mp_M_AXI_HPM0_FPD_transactor->ARID(maxigp0_arid);
    mp_M_AXI_HPM0_FPD_transactor->ARADDR(maxigp0_araddr);
    mp_M_AXI_HPM0_FPD_transactor->ARLEN(maxigp0_arlen);
    mp_M_AXI_HPM0_FPD_transactor->ARSIZE(maxigp0_arsize);
    mp_M_AXI_HPM0_FPD_transactor->ARBURST(maxigp0_arburst);
    mp_M_AXI_HPM0_FPD_transactor->ARLOCK(maxigp0_arlock);
    mp_M_AXI_HPM0_FPD_transactor->ARCACHE(maxigp0_arcache);
    mp_M_AXI_HPM0_FPD_transactor->ARPROT(maxigp0_arprot);
    mp_M_AXI_HPM0_FPD_transactor->ARVALID(maxigp0_arvalid);
    mp_M_AXI_HPM0_FPD_transactor->ARUSER(maxigp0_aruser);
    mp_M_AXI_HPM0_FPD_transactor->ARREADY(maxigp0_arready);
    mp_M_AXI_HPM0_FPD_transactor->RID(maxigp0_rid);
    mp_M_AXI_HPM0_FPD_transactor->RDATA(maxigp0_rdata);
    mp_M_AXI_HPM0_FPD_transactor->RRESP(maxigp0_rresp);
    mp_M_AXI_HPM0_FPD_transactor->RLAST(maxigp0_rlast);
    mp_M_AXI_HPM0_FPD_transactor->RVALID(maxigp0_rvalid);
    mp_M_AXI_HPM0_FPD_transactor->RREADY(maxigp0_rready);
    mp_M_AXI_HPM0_FPD_transactor->AWQOS(maxigp0_awqos);
    mp_M_AXI_HPM0_FPD_transactor->ARQOS(maxigp0_arqos);
    mp_M_AXI_HPM0_FPD_transactor->CLK(maxihpm0_fpd_aclk);
    m_M_AXI_HPM0_FPD_transactor_rst_signal.write(1);
    mp_M_AXI_HPM0_FPD_transactor->RST(m_M_AXI_HPM0_FPD_transactor_rst_signal);

    // M_AXI_HPM0_FPD' transactor sockets

    mp_impl->M_AXI_HPM0_FPD_rd_socket->bind(*(mp_M_AXI_HPM0_FPD_transactor->rd_socket));
    mp_impl->M_AXI_HPM0_FPD_wr_socket->bind(*(mp_M_AXI_HPM0_FPD_transactor->wr_socket));
  }
  else
  {
  }

  // configure 'M_AXI_HPM0_LPD' transactor

  if (xsc::utils::xsc_sim_manager::getInstanceParameterInt("design_bd_zynq_ultra_ps_e_0_0", "M_AXI_HPM0_LPD_TLM_MODE") != 1)
  {
    // Instantiate Socket Stubs

  // 'M_AXI_HPM0_LPD' transactor parameters
    xsc::common_cpp::properties M_AXI_HPM0_LPD_transactor_param_props;
    M_AXI_HPM0_LPD_transactor_param_props.addLong("NUM_WRITE_OUTSTANDING", "8");
    M_AXI_HPM0_LPD_transactor_param_props.addLong("NUM_READ_OUTSTANDING", "8");
    M_AXI_HPM0_LPD_transactor_param_props.addLong("DATA_WIDTH", "32");
    M_AXI_HPM0_LPD_transactor_param_props.addLong("FREQ_HZ", "299970032");
    M_AXI_HPM0_LPD_transactor_param_props.addLong("ID_WIDTH", "16");
    M_AXI_HPM0_LPD_transactor_param_props.addLong("ADDR_WIDTH", "40");
    M_AXI_HPM0_LPD_transactor_param_props.addLong("AWUSER_WIDTH", "16");
    M_AXI_HPM0_LPD_transactor_param_props.addLong("ARUSER_WIDTH", "16");
    M_AXI_HPM0_LPD_transactor_param_props.addLong("WUSER_WIDTH", "0");
    M_AXI_HPM0_LPD_transactor_param_props.addLong("RUSER_WIDTH", "0");
    M_AXI_HPM0_LPD_transactor_param_props.addLong("BUSER_WIDTH", "0");
    M_AXI_HPM0_LPD_transactor_param_props.addLong("HAS_BURST", "1");
    M_AXI_HPM0_LPD_transactor_param_props.addLong("HAS_LOCK", "1");
    M_AXI_HPM0_LPD_transactor_param_props.addLong("HAS_PROT", "1");
    M_AXI_HPM0_LPD_transactor_param_props.addLong("HAS_CACHE", "1");
    M_AXI_HPM0_LPD_transactor_param_props.addLong("HAS_QOS", "1");
    M_AXI_HPM0_LPD_transactor_param_props.addLong("HAS_REGION", "0");
    M_AXI_HPM0_LPD_transactor_param_props.addLong("HAS_WSTRB", "1");
    M_AXI_HPM0_LPD_transactor_param_props.addLong("HAS_BRESP", "1");
    M_AXI_HPM0_LPD_transactor_param_props.addLong("HAS_RRESP", "1");
    M_AXI_HPM0_LPD_transactor_param_props.addLong("SUPPORTS_NARROW_BURST", "1");
    M_AXI_HPM0_LPD_transactor_param_props.addLong("MAX_BURST_LENGTH", "256");
    M_AXI_HPM0_LPD_transactor_param_props.addLong("NUM_READ_THREADS", "4");
    M_AXI_HPM0_LPD_transactor_param_props.addLong("NUM_WRITE_THREADS", "4");
    M_AXI_HPM0_LPD_transactor_param_props.addLong("RUSER_BITS_PER_BYTE", "0");
    M_AXI_HPM0_LPD_transactor_param_props.addLong("WUSER_BITS_PER_BYTE", "0");
    M_AXI_HPM0_LPD_transactor_param_props.addLong("HAS_SIZE", "1");
    M_AXI_HPM0_LPD_transactor_param_props.addLong("HAS_RESET", "0");
    M_AXI_HPM0_LPD_transactor_param_props.addFloat("PHASE", "0.0");
    M_AXI_HPM0_LPD_transactor_param_props.addString("PROTOCOL", "AXI4");
    M_AXI_HPM0_LPD_transactor_param_props.addString("READ_WRITE_MODE", "READ_WRITE");
    M_AXI_HPM0_LPD_transactor_param_props.addString("CLK_DOMAIN", "design_bd_zynq_ultra_ps_e_0_0_pl_clk0");

    mp_M_AXI_HPM0_LPD_transactor = new xtlm::xaximm_xtlm2pin_t<32,40,16,16,1,1,16,1>("M_AXI_HPM0_LPD_transactor", M_AXI_HPM0_LPD_transactor_param_props);

    // M_AXI_HPM0_LPD' transactor ports

    mp_M_AXI_HPM0_LPD_transactor->AWID(maxigp2_awid);
    mp_M_AXI_HPM0_LPD_transactor->AWADDR(maxigp2_awaddr);
    mp_M_AXI_HPM0_LPD_transactor->AWLEN(maxigp2_awlen);
    mp_M_AXI_HPM0_LPD_transactor->AWSIZE(maxigp2_awsize);
    mp_M_AXI_HPM0_LPD_transactor->AWBURST(maxigp2_awburst);
    mp_M_AXI_HPM0_LPD_transactor->AWLOCK(maxigp2_awlock);
    mp_M_AXI_HPM0_LPD_transactor->AWCACHE(maxigp2_awcache);
    mp_M_AXI_HPM0_LPD_transactor->AWPROT(maxigp2_awprot);
    mp_M_AXI_HPM0_LPD_transactor->AWVALID(maxigp2_awvalid);
    mp_M_AXI_HPM0_LPD_transactor->AWUSER(maxigp2_awuser);
    mp_M_AXI_HPM0_LPD_transactor->AWREADY(maxigp2_awready);
    mp_M_AXI_HPM0_LPD_transactor->WDATA(maxigp2_wdata);
    mp_M_AXI_HPM0_LPD_transactor->WSTRB(maxigp2_wstrb);
    mp_M_AXI_HPM0_LPD_transactor->WLAST(maxigp2_wlast);
    mp_M_AXI_HPM0_LPD_transactor->WVALID(maxigp2_wvalid);
    mp_M_AXI_HPM0_LPD_transactor->WREADY(maxigp2_wready);
    mp_M_AXI_HPM0_LPD_transactor->BID(maxigp2_bid);
    mp_M_AXI_HPM0_LPD_transactor->BRESP(maxigp2_bresp);
    mp_M_AXI_HPM0_LPD_transactor->BVALID(maxigp2_bvalid);
    mp_M_AXI_HPM0_LPD_transactor->BREADY(maxigp2_bready);
    mp_M_AXI_HPM0_LPD_transactor->ARID(maxigp2_arid);
    mp_M_AXI_HPM0_LPD_transactor->ARADDR(maxigp2_araddr);
    mp_M_AXI_HPM0_LPD_transactor->ARLEN(maxigp2_arlen);
    mp_M_AXI_HPM0_LPD_transactor->ARSIZE(maxigp2_arsize);
    mp_M_AXI_HPM0_LPD_transactor->ARBURST(maxigp2_arburst);
    mp_M_AXI_HPM0_LPD_transactor->ARLOCK(maxigp2_arlock);
    mp_M_AXI_HPM0_LPD_transactor->ARCACHE(maxigp2_arcache);
    mp_M_AXI_HPM0_LPD_transactor->ARPROT(maxigp2_arprot);
    mp_M_AXI_HPM0_LPD_transactor->ARVALID(maxigp2_arvalid);
    mp_M_AXI_HPM0_LPD_transactor->ARUSER(maxigp2_aruser);
    mp_M_AXI_HPM0_LPD_transactor->ARREADY(maxigp2_arready);
    mp_M_AXI_HPM0_LPD_transactor->RID(maxigp2_rid);
    mp_M_AXI_HPM0_LPD_transactor->RDATA(maxigp2_rdata);
    mp_M_AXI_HPM0_LPD_transactor->RRESP(maxigp2_rresp);
    mp_M_AXI_HPM0_LPD_transactor->RLAST(maxigp2_rlast);
    mp_M_AXI_HPM0_LPD_transactor->RVALID(maxigp2_rvalid);
    mp_M_AXI_HPM0_LPD_transactor->RREADY(maxigp2_rready);
    mp_M_AXI_HPM0_LPD_transactor->AWQOS(maxigp2_awqos);
    mp_M_AXI_HPM0_LPD_transactor->ARQOS(maxigp2_arqos);
    mp_M_AXI_HPM0_LPD_transactor->CLK(maxihpm0_lpd_aclk);
    m_M_AXI_HPM0_LPD_transactor_rst_signal.write(1);
    mp_M_AXI_HPM0_LPD_transactor->RST(m_M_AXI_HPM0_LPD_transactor_rst_signal);

    // M_AXI_HPM0_LPD' transactor sockets

    mp_impl->M_AXI_HPM0_LPD_rd_socket->bind(*(mp_M_AXI_HPM0_LPD_transactor->rd_socket));
    mp_impl->M_AXI_HPM0_LPD_wr_socket->bind(*(mp_M_AXI_HPM0_LPD_transactor->wr_socket));
  }
  else
  {
  }

  // configure 'S_AXI_ACP_FPD' transactor

  if (xsc::utils::xsc_sim_manager::getInstanceParameterInt("design_bd_zynq_ultra_ps_e_0_0", "S_AXI_ACP_FPD_TLM_MODE") != 1)
  {
    // Instantiate Socket Stubs

  // 'S_AXI_ACP_FPD' transactor parameters
    xsc::common_cpp::properties S_AXI_ACP_FPD_transactor_param_props;
    S_AXI_ACP_FPD_transactor_param_props.addLong("NUM_WRITE_OUTSTANDING", "4");
    S_AXI_ACP_FPD_transactor_param_props.addLong("NUM_READ_OUTSTANDING", "4");
    S_AXI_ACP_FPD_transactor_param_props.addLong("DATA_WIDTH", "128");
    S_AXI_ACP_FPD_transactor_param_props.addLong("FREQ_HZ", "299970032");
    S_AXI_ACP_FPD_transactor_param_props.addLong("ID_WIDTH", "5");
    S_AXI_ACP_FPD_transactor_param_props.addLong("ADDR_WIDTH", "40");
    S_AXI_ACP_FPD_transactor_param_props.addLong("AWUSER_WIDTH", "2");
    S_AXI_ACP_FPD_transactor_param_props.addLong("ARUSER_WIDTH", "2");
    S_AXI_ACP_FPD_transactor_param_props.addLong("WUSER_WIDTH", "0");
    S_AXI_ACP_FPD_transactor_param_props.addLong("RUSER_WIDTH", "0");
    S_AXI_ACP_FPD_transactor_param_props.addLong("BUSER_WIDTH", "0");
    S_AXI_ACP_FPD_transactor_param_props.addLong("HAS_BURST", "1");
    S_AXI_ACP_FPD_transactor_param_props.addLong("HAS_LOCK", "1");
    S_AXI_ACP_FPD_transactor_param_props.addLong("HAS_PROT", "1");
    S_AXI_ACP_FPD_transactor_param_props.addLong("HAS_CACHE", "1");
    S_AXI_ACP_FPD_transactor_param_props.addLong("HAS_QOS", "1");
    S_AXI_ACP_FPD_transactor_param_props.addLong("HAS_REGION", "0");
    S_AXI_ACP_FPD_transactor_param_props.addLong("HAS_WSTRB", "1");
    S_AXI_ACP_FPD_transactor_param_props.addLong("HAS_BRESP", "1");
    S_AXI_ACP_FPD_transactor_param_props.addLong("HAS_RRESP", "1");
    S_AXI_ACP_FPD_transactor_param_props.addLong("SUPPORTS_NARROW_BURST", "0");
    S_AXI_ACP_FPD_transactor_param_props.addLong("MAX_BURST_LENGTH", "1");
    S_AXI_ACP_FPD_transactor_param_props.addLong("NUM_READ_THREADS", "1");
    S_AXI_ACP_FPD_transactor_param_props.addLong("NUM_WRITE_THREADS", "1");
    S_AXI_ACP_FPD_transactor_param_props.addLong("RUSER_BITS_PER_BYTE", "0");
    S_AXI_ACP_FPD_transactor_param_props.addLong("WUSER_BITS_PER_BYTE", "0");
    S_AXI_ACP_FPD_transactor_param_props.addLong("HAS_SIZE", "1");
    S_AXI_ACP_FPD_transactor_param_props.addLong("HAS_RESET", "0");
    S_AXI_ACP_FPD_transactor_param_props.addFloat("PHASE", "0.0");
    S_AXI_ACP_FPD_transactor_param_props.addString("PROTOCOL", "AXI4");
    S_AXI_ACP_FPD_transactor_param_props.addString("READ_WRITE_MODE", "READ_WRITE");
    S_AXI_ACP_FPD_transactor_param_props.addString("CLK_DOMAIN", "design_bd_zynq_ultra_ps_e_0_0_pl_clk0");

    mp_S_AXI_ACP_FPD_transactor = new xtlm::xaximm_pin2xtlm_t<128,40,5,2,1,1,2,1>("S_AXI_ACP_FPD_transactor", S_AXI_ACP_FPD_transactor_param_props);

    // S_AXI_ACP_FPD' transactor ports

    mp_S_AXI_ACP_FPD_transactor->AWUSER(saxiacp_awuser);
    mp_S_AXI_ACP_FPD_transactor->ARUSER(saxiacp_aruser);
    mp_S_AXI_ACP_FPD_transactor->AWID(saxiacp_awid);
    mp_S_AXI_ACP_FPD_transactor->AWADDR(saxiacp_awaddr);
    mp_S_AXI_ACP_FPD_transactor->AWLEN(saxiacp_awlen);
    mp_S_AXI_ACP_FPD_transactor->AWSIZE(saxiacp_awsize);
    mp_S_AXI_ACP_FPD_transactor->AWBURST(saxiacp_awburst);
    mp_S_AXI_ACP_FPD_transactor->AWLOCK(saxiacp_awlock);
    mp_S_AXI_ACP_FPD_transactor->AWCACHE(saxiacp_awcache);
    mp_S_AXI_ACP_FPD_transactor->AWPROT(saxiacp_awprot);
    mp_S_AXI_ACP_FPD_transactor->AWVALID(saxiacp_awvalid);
    mp_S_AXI_ACP_FPD_transactor->AWREADY(saxiacp_awready);
    mp_S_AXI_ACP_FPD_transactor->WDATA(saxiacp_wdata);
    mp_S_AXI_ACP_FPD_transactor->WSTRB(saxiacp_wstrb);
    mp_S_AXI_ACP_FPD_transactor->WLAST(saxiacp_wlast);
    mp_S_AXI_ACP_FPD_transactor->WVALID(saxiacp_wvalid);
    mp_S_AXI_ACP_FPD_transactor->WREADY(saxiacp_wready);
    mp_S_AXI_ACP_FPD_transactor->BID(saxiacp_bid);
    mp_S_AXI_ACP_FPD_transactor->BRESP(saxiacp_bresp);
    mp_S_AXI_ACP_FPD_transactor->BVALID(saxiacp_bvalid);
    mp_S_AXI_ACP_FPD_transactor->BREADY(saxiacp_bready);
    mp_S_AXI_ACP_FPD_transactor->ARID(saxiacp_arid);
    mp_S_AXI_ACP_FPD_transactor->ARADDR(saxiacp_araddr);
    mp_S_AXI_ACP_FPD_transactor->ARLEN(saxiacp_arlen);
    mp_S_AXI_ACP_FPD_transactor->ARSIZE(saxiacp_arsize);
    mp_S_AXI_ACP_FPD_transactor->ARBURST(saxiacp_arburst);
    mp_S_AXI_ACP_FPD_transactor->ARLOCK(saxiacp_arlock);
    mp_S_AXI_ACP_FPD_transactor->ARCACHE(saxiacp_arcache);
    mp_S_AXI_ACP_FPD_transactor->ARPROT(saxiacp_arprot);
    mp_S_AXI_ACP_FPD_transactor->ARVALID(saxiacp_arvalid);
    mp_S_AXI_ACP_FPD_transactor->ARREADY(saxiacp_arready);
    mp_S_AXI_ACP_FPD_transactor->RID(saxiacp_rid);
    mp_S_AXI_ACP_FPD_transactor->RDATA(saxiacp_rdata);
    mp_S_AXI_ACP_FPD_transactor->RRESP(saxiacp_rresp);
    mp_S_AXI_ACP_FPD_transactor->RLAST(saxiacp_rlast);
    mp_S_AXI_ACP_FPD_transactor->RVALID(saxiacp_rvalid);
    mp_S_AXI_ACP_FPD_transactor->RREADY(saxiacp_rready);
    mp_S_AXI_ACP_FPD_transactor->AWQOS(saxiacp_awqos);
    mp_S_AXI_ACP_FPD_transactor->ARQOS(saxiacp_arqos);
    mp_S_AXI_ACP_FPD_transactor->CLK(saxiacp_fpd_aclk);
    m_S_AXI_ACP_FPD_transactor_rst_signal.write(1);
    mp_S_AXI_ACP_FPD_transactor->RST(m_S_AXI_ACP_FPD_transactor_rst_signal);

    // S_AXI_ACP_FPD' transactor sockets

    mp_impl->S_AXI_ACP_FPD_rd_socket->bind(*(mp_S_AXI_ACP_FPD_transactor->rd_socket));
    mp_impl->S_AXI_ACP_FPD_wr_socket->bind(*(mp_S_AXI_ACP_FPD_transactor->wr_socket));
  }
  else
  {
  }

}

#endif // XILINX_SIMULATOR




#ifdef XM_SYSTEMC
design_bd_zynq_ultra_ps_e_0_0::design_bd_zynq_ultra_ps_e_0_0(const sc_core::sc_module_name& nm) : design_bd_zynq_ultra_ps_e_0_0_sc(nm), maxihpm0_fpd_aclk("maxihpm0_fpd_aclk"), maxigp0_awid("maxigp0_awid"), maxigp0_awaddr("maxigp0_awaddr"), maxigp0_awlen("maxigp0_awlen"), maxigp0_awsize("maxigp0_awsize"), maxigp0_awburst("maxigp0_awburst"), maxigp0_awlock("maxigp0_awlock"), maxigp0_awcache("maxigp0_awcache"), maxigp0_awprot("maxigp0_awprot"), maxigp0_awvalid("maxigp0_awvalid"), maxigp0_awuser("maxigp0_awuser"), maxigp0_awready("maxigp0_awready"), maxigp0_wdata("maxigp0_wdata"), maxigp0_wstrb("maxigp0_wstrb"), maxigp0_wlast("maxigp0_wlast"), maxigp0_wvalid("maxigp0_wvalid"), maxigp0_wready("maxigp0_wready"), maxigp0_bid("maxigp0_bid"), maxigp0_bresp("maxigp0_bresp"), maxigp0_bvalid("maxigp0_bvalid"), maxigp0_bready("maxigp0_bready"), maxigp0_arid("maxigp0_arid"), maxigp0_araddr("maxigp0_araddr"), maxigp0_arlen("maxigp0_arlen"), maxigp0_arsize("maxigp0_arsize"), maxigp0_arburst("maxigp0_arburst"), maxigp0_arlock("maxigp0_arlock"), maxigp0_arcache("maxigp0_arcache"), maxigp0_arprot("maxigp0_arprot"), maxigp0_arvalid("maxigp0_arvalid"), maxigp0_aruser("maxigp0_aruser"), maxigp0_arready("maxigp0_arready"), maxigp0_rid("maxigp0_rid"), maxigp0_rdata("maxigp0_rdata"), maxigp0_rresp("maxigp0_rresp"), maxigp0_rlast("maxigp0_rlast"), maxigp0_rvalid("maxigp0_rvalid"), maxigp0_rready("maxigp0_rready"), maxigp0_awqos("maxigp0_awqos"), maxigp0_arqos("maxigp0_arqos"), maxihpm0_lpd_aclk("maxihpm0_lpd_aclk"), maxigp2_awid("maxigp2_awid"), maxigp2_awaddr("maxigp2_awaddr"), maxigp2_awlen("maxigp2_awlen"), maxigp2_awsize("maxigp2_awsize"), maxigp2_awburst("maxigp2_awburst"), maxigp2_awlock("maxigp2_awlock"), maxigp2_awcache("maxigp2_awcache"), maxigp2_awprot("maxigp2_awprot"), maxigp2_awvalid("maxigp2_awvalid"), maxigp2_awuser("maxigp2_awuser"), maxigp2_awready("maxigp2_awready"), maxigp2_wdata("maxigp2_wdata"), maxigp2_wstrb("maxigp2_wstrb"), maxigp2_wlast("maxigp2_wlast"), maxigp2_wvalid("maxigp2_wvalid"), maxigp2_wready("maxigp2_wready"), maxigp2_bid("maxigp2_bid"), maxigp2_bresp("maxigp2_bresp"), maxigp2_bvalid("maxigp2_bvalid"), maxigp2_bready("maxigp2_bready"), maxigp2_arid("maxigp2_arid"), maxigp2_araddr("maxigp2_araddr"), maxigp2_arlen("maxigp2_arlen"), maxigp2_arsize("maxigp2_arsize"), maxigp2_arburst("maxigp2_arburst"), maxigp2_arlock("maxigp2_arlock"), maxigp2_arcache("maxigp2_arcache"), maxigp2_arprot("maxigp2_arprot"), maxigp2_arvalid("maxigp2_arvalid"), maxigp2_aruser("maxigp2_aruser"), maxigp2_arready("maxigp2_arready"), maxigp2_rid("maxigp2_rid"), maxigp2_rdata("maxigp2_rdata"), maxigp2_rresp("maxigp2_rresp"), maxigp2_rlast("maxigp2_rlast"), maxigp2_rvalid("maxigp2_rvalid"), maxigp2_rready("maxigp2_rready"), maxigp2_awqos("maxigp2_awqos"), maxigp2_arqos("maxigp2_arqos"), saxiacp_fpd_aclk("saxiacp_fpd_aclk"), saxiacp_awuser("saxiacp_awuser"), saxiacp_aruser("saxiacp_aruser"), saxiacp_awid("saxiacp_awid"), saxiacp_awaddr("saxiacp_awaddr"), saxiacp_awlen("saxiacp_awlen"), saxiacp_awsize("saxiacp_awsize"), saxiacp_awburst("saxiacp_awburst"), saxiacp_awlock("saxiacp_awlock"), saxiacp_awcache("saxiacp_awcache"), saxiacp_awprot("saxiacp_awprot"), saxiacp_awvalid("saxiacp_awvalid"), saxiacp_awready("saxiacp_awready"), saxiacp_wdata("saxiacp_wdata"), saxiacp_wstrb("saxiacp_wstrb"), saxiacp_wlast("saxiacp_wlast"), saxiacp_wvalid("saxiacp_wvalid"), saxiacp_wready("saxiacp_wready"), saxiacp_bid("saxiacp_bid"), saxiacp_bresp("saxiacp_bresp"), saxiacp_bvalid("saxiacp_bvalid"), saxiacp_bready("saxiacp_bready"), saxiacp_arid("saxiacp_arid"), saxiacp_araddr("saxiacp_araddr"), saxiacp_arlen("saxiacp_arlen"), saxiacp_arsize("saxiacp_arsize"), saxiacp_arburst("saxiacp_arburst"), saxiacp_arlock("saxiacp_arlock"), saxiacp_arcache("saxiacp_arcache"), saxiacp_arprot("saxiacp_arprot"), saxiacp_arvalid("saxiacp_arvalid"), saxiacp_arready("saxiacp_arready"), saxiacp_rid("saxiacp_rid"), saxiacp_rdata("saxiacp_rdata"), saxiacp_rresp("saxiacp_rresp"), saxiacp_rlast("saxiacp_rlast"), saxiacp_rvalid("saxiacp_rvalid"), saxiacp_rready("saxiacp_rready"), saxiacp_awqos("saxiacp_awqos"), saxiacp_arqos("saxiacp_arqos"), pl_ps_irq0("pl_ps_irq0"), pl_resetn0("pl_resetn0"), pl_acpinact("pl_acpinact"), pl_clk0("pl_clk0")
{

  // initialize pins
  mp_impl->maxihpm0_fpd_aclk(maxihpm0_fpd_aclk);
  mp_impl->maxihpm0_lpd_aclk(maxihpm0_lpd_aclk);
  mp_impl->saxiacp_fpd_aclk(saxiacp_fpd_aclk);
  mp_impl->pl_ps_irq0(pl_ps_irq0);
  mp_impl->pl_resetn0(pl_resetn0);
  mp_impl->pl_acpinact(pl_acpinact);
  mp_impl->pl_clk0(pl_clk0);

  // initialize transactors
  mp_M_AXI_HPM0_FPD_transactor = NULL;
  mp_M_AXI_HPM0_LPD_transactor = NULL;
  mp_S_AXI_ACP_FPD_transactor = NULL;

  // initialize socket stubs

}

void design_bd_zynq_ultra_ps_e_0_0::before_end_of_elaboration()
{
  // configure 'M_AXI_HPM0_FPD' transactor

  if (xsc::utils::xsc_sim_manager::getInstanceParameterInt("design_bd_zynq_ultra_ps_e_0_0", "M_AXI_HPM0_FPD_TLM_MODE") != 1)
  {
    // Instantiate Socket Stubs

  // 'M_AXI_HPM0_FPD' transactor parameters
    xsc::common_cpp::properties M_AXI_HPM0_FPD_transactor_param_props;
    M_AXI_HPM0_FPD_transactor_param_props.addLong("NUM_WRITE_OUTSTANDING", "8");
    M_AXI_HPM0_FPD_transactor_param_props.addLong("NUM_READ_OUTSTANDING", "8");
    M_AXI_HPM0_FPD_transactor_param_props.addLong("DATA_WIDTH", "32");
    M_AXI_HPM0_FPD_transactor_param_props.addLong("FREQ_HZ", "299970032");
    M_AXI_HPM0_FPD_transactor_param_props.addLong("ID_WIDTH", "16");
    M_AXI_HPM0_FPD_transactor_param_props.addLong("ADDR_WIDTH", "40");
    M_AXI_HPM0_FPD_transactor_param_props.addLong("AWUSER_WIDTH", "16");
    M_AXI_HPM0_FPD_transactor_param_props.addLong("ARUSER_WIDTH", "16");
    M_AXI_HPM0_FPD_transactor_param_props.addLong("WUSER_WIDTH", "0");
    M_AXI_HPM0_FPD_transactor_param_props.addLong("RUSER_WIDTH", "0");
    M_AXI_HPM0_FPD_transactor_param_props.addLong("BUSER_WIDTH", "0");
    M_AXI_HPM0_FPD_transactor_param_props.addLong("HAS_BURST", "1");
    M_AXI_HPM0_FPD_transactor_param_props.addLong("HAS_LOCK", "1");
    M_AXI_HPM0_FPD_transactor_param_props.addLong("HAS_PROT", "1");
    M_AXI_HPM0_FPD_transactor_param_props.addLong("HAS_CACHE", "1");
    M_AXI_HPM0_FPD_transactor_param_props.addLong("HAS_QOS", "1");
    M_AXI_HPM0_FPD_transactor_param_props.addLong("HAS_REGION", "0");
    M_AXI_HPM0_FPD_transactor_param_props.addLong("HAS_WSTRB", "1");
    M_AXI_HPM0_FPD_transactor_param_props.addLong("HAS_BRESP", "1");
    M_AXI_HPM0_FPD_transactor_param_props.addLong("HAS_RRESP", "1");
    M_AXI_HPM0_FPD_transactor_param_props.addLong("SUPPORTS_NARROW_BURST", "1");
    M_AXI_HPM0_FPD_transactor_param_props.addLong("MAX_BURST_LENGTH", "256");
    M_AXI_HPM0_FPD_transactor_param_props.addLong("NUM_READ_THREADS", "4");
    M_AXI_HPM0_FPD_transactor_param_props.addLong("NUM_WRITE_THREADS", "4");
    M_AXI_HPM0_FPD_transactor_param_props.addLong("RUSER_BITS_PER_BYTE", "0");
    M_AXI_HPM0_FPD_transactor_param_props.addLong("WUSER_BITS_PER_BYTE", "0");
    M_AXI_HPM0_FPD_transactor_param_props.addLong("HAS_SIZE", "1");
    M_AXI_HPM0_FPD_transactor_param_props.addLong("HAS_RESET", "0");
    M_AXI_HPM0_FPD_transactor_param_props.addFloat("PHASE", "0.0");
    M_AXI_HPM0_FPD_transactor_param_props.addString("PROTOCOL", "AXI4");
    M_AXI_HPM0_FPD_transactor_param_props.addString("READ_WRITE_MODE", "READ_WRITE");
    M_AXI_HPM0_FPD_transactor_param_props.addString("CLK_DOMAIN", "design_bd_zynq_ultra_ps_e_0_0_pl_clk0");

    mp_M_AXI_HPM0_FPD_transactor = new xtlm::xaximm_xtlm2pin_t<32,40,16,16,1,1,16,1>("M_AXI_HPM0_FPD_transactor", M_AXI_HPM0_FPD_transactor_param_props);

    // M_AXI_HPM0_FPD' transactor ports

    mp_M_AXI_HPM0_FPD_transactor->AWID(maxigp0_awid);
    mp_M_AXI_HPM0_FPD_transactor->AWADDR(maxigp0_awaddr);
    mp_M_AXI_HPM0_FPD_transactor->AWLEN(maxigp0_awlen);
    mp_M_AXI_HPM0_FPD_transactor->AWSIZE(maxigp0_awsize);
    mp_M_AXI_HPM0_FPD_transactor->AWBURST(maxigp0_awburst);
    mp_M_AXI_HPM0_FPD_transactor->AWLOCK(maxigp0_awlock);
    mp_M_AXI_HPM0_FPD_transactor->AWCACHE(maxigp0_awcache);
    mp_M_AXI_HPM0_FPD_transactor->AWPROT(maxigp0_awprot);
    mp_M_AXI_HPM0_FPD_transactor->AWVALID(maxigp0_awvalid);
    mp_M_AXI_HPM0_FPD_transactor->AWUSER(maxigp0_awuser);
    mp_M_AXI_HPM0_FPD_transactor->AWREADY(maxigp0_awready);
    mp_M_AXI_HPM0_FPD_transactor->WDATA(maxigp0_wdata);
    mp_M_AXI_HPM0_FPD_transactor->WSTRB(maxigp0_wstrb);
    mp_M_AXI_HPM0_FPD_transactor->WLAST(maxigp0_wlast);
    mp_M_AXI_HPM0_FPD_transactor->WVALID(maxigp0_wvalid);
    mp_M_AXI_HPM0_FPD_transactor->WREADY(maxigp0_wready);
    mp_M_AXI_HPM0_FPD_transactor->BID(maxigp0_bid);
    mp_M_AXI_HPM0_FPD_transactor->BRESP(maxigp0_bresp);
    mp_M_AXI_HPM0_FPD_transactor->BVALID(maxigp0_bvalid);
    mp_M_AXI_HPM0_FPD_transactor->BREADY(maxigp0_bready);
    mp_M_AXI_HPM0_FPD_transactor->ARID(maxigp0_arid);
    mp_M_AXI_HPM0_FPD_transactor->ARADDR(maxigp0_araddr);
    mp_M_AXI_HPM0_FPD_transactor->ARLEN(maxigp0_arlen);
    mp_M_AXI_HPM0_FPD_transactor->ARSIZE(maxigp0_arsize);
    mp_M_AXI_HPM0_FPD_transactor->ARBURST(maxigp0_arburst);
    mp_M_AXI_HPM0_FPD_transactor->ARLOCK(maxigp0_arlock);
    mp_M_AXI_HPM0_FPD_transactor->ARCACHE(maxigp0_arcache);
    mp_M_AXI_HPM0_FPD_transactor->ARPROT(maxigp0_arprot);
    mp_M_AXI_HPM0_FPD_transactor->ARVALID(maxigp0_arvalid);
    mp_M_AXI_HPM0_FPD_transactor->ARUSER(maxigp0_aruser);
    mp_M_AXI_HPM0_FPD_transactor->ARREADY(maxigp0_arready);
    mp_M_AXI_HPM0_FPD_transactor->RID(maxigp0_rid);
    mp_M_AXI_HPM0_FPD_transactor->RDATA(maxigp0_rdata);
    mp_M_AXI_HPM0_FPD_transactor->RRESP(maxigp0_rresp);
    mp_M_AXI_HPM0_FPD_transactor->RLAST(maxigp0_rlast);
    mp_M_AXI_HPM0_FPD_transactor->RVALID(maxigp0_rvalid);
    mp_M_AXI_HPM0_FPD_transactor->RREADY(maxigp0_rready);
    mp_M_AXI_HPM0_FPD_transactor->AWQOS(maxigp0_awqos);
    mp_M_AXI_HPM0_FPD_transactor->ARQOS(maxigp0_arqos);
    mp_M_AXI_HPM0_FPD_transactor->CLK(maxihpm0_fpd_aclk);
    m_M_AXI_HPM0_FPD_transactor_rst_signal.write(1);
    mp_M_AXI_HPM0_FPD_transactor->RST(m_M_AXI_HPM0_FPD_transactor_rst_signal);

    // M_AXI_HPM0_FPD' transactor sockets

    mp_impl->M_AXI_HPM0_FPD_rd_socket->bind(*(mp_M_AXI_HPM0_FPD_transactor->rd_socket));
    mp_impl->M_AXI_HPM0_FPD_wr_socket->bind(*(mp_M_AXI_HPM0_FPD_transactor->wr_socket));
  }
  else
  {
  }

  // configure 'M_AXI_HPM0_LPD' transactor

  if (xsc::utils::xsc_sim_manager::getInstanceParameterInt("design_bd_zynq_ultra_ps_e_0_0", "M_AXI_HPM0_LPD_TLM_MODE") != 1)
  {
    // Instantiate Socket Stubs

  // 'M_AXI_HPM0_LPD' transactor parameters
    xsc::common_cpp::properties M_AXI_HPM0_LPD_transactor_param_props;
    M_AXI_HPM0_LPD_transactor_param_props.addLong("NUM_WRITE_OUTSTANDING", "8");
    M_AXI_HPM0_LPD_transactor_param_props.addLong("NUM_READ_OUTSTANDING", "8");
    M_AXI_HPM0_LPD_transactor_param_props.addLong("DATA_WIDTH", "32");
    M_AXI_HPM0_LPD_transactor_param_props.addLong("FREQ_HZ", "299970032");
    M_AXI_HPM0_LPD_transactor_param_props.addLong("ID_WIDTH", "16");
    M_AXI_HPM0_LPD_transactor_param_props.addLong("ADDR_WIDTH", "40");
    M_AXI_HPM0_LPD_transactor_param_props.addLong("AWUSER_WIDTH", "16");
    M_AXI_HPM0_LPD_transactor_param_props.addLong("ARUSER_WIDTH", "16");
    M_AXI_HPM0_LPD_transactor_param_props.addLong("WUSER_WIDTH", "0");
    M_AXI_HPM0_LPD_transactor_param_props.addLong("RUSER_WIDTH", "0");
    M_AXI_HPM0_LPD_transactor_param_props.addLong("BUSER_WIDTH", "0");
    M_AXI_HPM0_LPD_transactor_param_props.addLong("HAS_BURST", "1");
    M_AXI_HPM0_LPD_transactor_param_props.addLong("HAS_LOCK", "1");
    M_AXI_HPM0_LPD_transactor_param_props.addLong("HAS_PROT", "1");
    M_AXI_HPM0_LPD_transactor_param_props.addLong("HAS_CACHE", "1");
    M_AXI_HPM0_LPD_transactor_param_props.addLong("HAS_QOS", "1");
    M_AXI_HPM0_LPD_transactor_param_props.addLong("HAS_REGION", "0");
    M_AXI_HPM0_LPD_transactor_param_props.addLong("HAS_WSTRB", "1");
    M_AXI_HPM0_LPD_transactor_param_props.addLong("HAS_BRESP", "1");
    M_AXI_HPM0_LPD_transactor_param_props.addLong("HAS_RRESP", "1");
    M_AXI_HPM0_LPD_transactor_param_props.addLong("SUPPORTS_NARROW_BURST", "1");
    M_AXI_HPM0_LPD_transactor_param_props.addLong("MAX_BURST_LENGTH", "256");
    M_AXI_HPM0_LPD_transactor_param_props.addLong("NUM_READ_THREADS", "4");
    M_AXI_HPM0_LPD_transactor_param_props.addLong("NUM_WRITE_THREADS", "4");
    M_AXI_HPM0_LPD_transactor_param_props.addLong("RUSER_BITS_PER_BYTE", "0");
    M_AXI_HPM0_LPD_transactor_param_props.addLong("WUSER_BITS_PER_BYTE", "0");
    M_AXI_HPM0_LPD_transactor_param_props.addLong("HAS_SIZE", "1");
    M_AXI_HPM0_LPD_transactor_param_props.addLong("HAS_RESET", "0");
    M_AXI_HPM0_LPD_transactor_param_props.addFloat("PHASE", "0.0");
    M_AXI_HPM0_LPD_transactor_param_props.addString("PROTOCOL", "AXI4");
    M_AXI_HPM0_LPD_transactor_param_props.addString("READ_WRITE_MODE", "READ_WRITE");
    M_AXI_HPM0_LPD_transactor_param_props.addString("CLK_DOMAIN", "design_bd_zynq_ultra_ps_e_0_0_pl_clk0");

    mp_M_AXI_HPM0_LPD_transactor = new xtlm::xaximm_xtlm2pin_t<32,40,16,16,1,1,16,1>("M_AXI_HPM0_LPD_transactor", M_AXI_HPM0_LPD_transactor_param_props);

    // M_AXI_HPM0_LPD' transactor ports

    mp_M_AXI_HPM0_LPD_transactor->AWID(maxigp2_awid);
    mp_M_AXI_HPM0_LPD_transactor->AWADDR(maxigp2_awaddr);
    mp_M_AXI_HPM0_LPD_transactor->AWLEN(maxigp2_awlen);
    mp_M_AXI_HPM0_LPD_transactor->AWSIZE(maxigp2_awsize);
    mp_M_AXI_HPM0_LPD_transactor->AWBURST(maxigp2_awburst);
    mp_M_AXI_HPM0_LPD_transactor->AWLOCK(maxigp2_awlock);
    mp_M_AXI_HPM0_LPD_transactor->AWCACHE(maxigp2_awcache);
    mp_M_AXI_HPM0_LPD_transactor->AWPROT(maxigp2_awprot);
    mp_M_AXI_HPM0_LPD_transactor->AWVALID(maxigp2_awvalid);
    mp_M_AXI_HPM0_LPD_transactor->AWUSER(maxigp2_awuser);
    mp_M_AXI_HPM0_LPD_transactor->AWREADY(maxigp2_awready);
    mp_M_AXI_HPM0_LPD_transactor->WDATA(maxigp2_wdata);
    mp_M_AXI_HPM0_LPD_transactor->WSTRB(maxigp2_wstrb);
    mp_M_AXI_HPM0_LPD_transactor->WLAST(maxigp2_wlast);
    mp_M_AXI_HPM0_LPD_transactor->WVALID(maxigp2_wvalid);
    mp_M_AXI_HPM0_LPD_transactor->WREADY(maxigp2_wready);
    mp_M_AXI_HPM0_LPD_transactor->BID(maxigp2_bid);
    mp_M_AXI_HPM0_LPD_transactor->BRESP(maxigp2_bresp);
    mp_M_AXI_HPM0_LPD_transactor->BVALID(maxigp2_bvalid);
    mp_M_AXI_HPM0_LPD_transactor->BREADY(maxigp2_bready);
    mp_M_AXI_HPM0_LPD_transactor->ARID(maxigp2_arid);
    mp_M_AXI_HPM0_LPD_transactor->ARADDR(maxigp2_araddr);
    mp_M_AXI_HPM0_LPD_transactor->ARLEN(maxigp2_arlen);
    mp_M_AXI_HPM0_LPD_transactor->ARSIZE(maxigp2_arsize);
    mp_M_AXI_HPM0_LPD_transactor->ARBURST(maxigp2_arburst);
    mp_M_AXI_HPM0_LPD_transactor->ARLOCK(maxigp2_arlock);
    mp_M_AXI_HPM0_LPD_transactor->ARCACHE(maxigp2_arcache);
    mp_M_AXI_HPM0_LPD_transactor->ARPROT(maxigp2_arprot);
    mp_M_AXI_HPM0_LPD_transactor->ARVALID(maxigp2_arvalid);
    mp_M_AXI_HPM0_LPD_transactor->ARUSER(maxigp2_aruser);
    mp_M_AXI_HPM0_LPD_transactor->ARREADY(maxigp2_arready);
    mp_M_AXI_HPM0_LPD_transactor->RID(maxigp2_rid);
    mp_M_AXI_HPM0_LPD_transactor->RDATA(maxigp2_rdata);
    mp_M_AXI_HPM0_LPD_transactor->RRESP(maxigp2_rresp);
    mp_M_AXI_HPM0_LPD_transactor->RLAST(maxigp2_rlast);
    mp_M_AXI_HPM0_LPD_transactor->RVALID(maxigp2_rvalid);
    mp_M_AXI_HPM0_LPD_transactor->RREADY(maxigp2_rready);
    mp_M_AXI_HPM0_LPD_transactor->AWQOS(maxigp2_awqos);
    mp_M_AXI_HPM0_LPD_transactor->ARQOS(maxigp2_arqos);
    mp_M_AXI_HPM0_LPD_transactor->CLK(maxihpm0_lpd_aclk);
    m_M_AXI_HPM0_LPD_transactor_rst_signal.write(1);
    mp_M_AXI_HPM0_LPD_transactor->RST(m_M_AXI_HPM0_LPD_transactor_rst_signal);

    // M_AXI_HPM0_LPD' transactor sockets

    mp_impl->M_AXI_HPM0_LPD_rd_socket->bind(*(mp_M_AXI_HPM0_LPD_transactor->rd_socket));
    mp_impl->M_AXI_HPM0_LPD_wr_socket->bind(*(mp_M_AXI_HPM0_LPD_transactor->wr_socket));
  }
  else
  {
  }

  // configure 'S_AXI_ACP_FPD' transactor

  if (xsc::utils::xsc_sim_manager::getInstanceParameterInt("design_bd_zynq_ultra_ps_e_0_0", "S_AXI_ACP_FPD_TLM_MODE") != 1)
  {
    // Instantiate Socket Stubs

  // 'S_AXI_ACP_FPD' transactor parameters
    xsc::common_cpp::properties S_AXI_ACP_FPD_transactor_param_props;
    S_AXI_ACP_FPD_transactor_param_props.addLong("NUM_WRITE_OUTSTANDING", "4");
    S_AXI_ACP_FPD_transactor_param_props.addLong("NUM_READ_OUTSTANDING", "4");
    S_AXI_ACP_FPD_transactor_param_props.addLong("DATA_WIDTH", "128");
    S_AXI_ACP_FPD_transactor_param_props.addLong("FREQ_HZ", "299970032");
    S_AXI_ACP_FPD_transactor_param_props.addLong("ID_WIDTH", "5");
    S_AXI_ACP_FPD_transactor_param_props.addLong("ADDR_WIDTH", "40");
    S_AXI_ACP_FPD_transactor_param_props.addLong("AWUSER_WIDTH", "2");
    S_AXI_ACP_FPD_transactor_param_props.addLong("ARUSER_WIDTH", "2");
    S_AXI_ACP_FPD_transactor_param_props.addLong("WUSER_WIDTH", "0");
    S_AXI_ACP_FPD_transactor_param_props.addLong("RUSER_WIDTH", "0");
    S_AXI_ACP_FPD_transactor_param_props.addLong("BUSER_WIDTH", "0");
    S_AXI_ACP_FPD_transactor_param_props.addLong("HAS_BURST", "1");
    S_AXI_ACP_FPD_transactor_param_props.addLong("HAS_LOCK", "1");
    S_AXI_ACP_FPD_transactor_param_props.addLong("HAS_PROT", "1");
    S_AXI_ACP_FPD_transactor_param_props.addLong("HAS_CACHE", "1");
    S_AXI_ACP_FPD_transactor_param_props.addLong("HAS_QOS", "1");
    S_AXI_ACP_FPD_transactor_param_props.addLong("HAS_REGION", "0");
    S_AXI_ACP_FPD_transactor_param_props.addLong("HAS_WSTRB", "1");
    S_AXI_ACP_FPD_transactor_param_props.addLong("HAS_BRESP", "1");
    S_AXI_ACP_FPD_transactor_param_props.addLong("HAS_RRESP", "1");
    S_AXI_ACP_FPD_transactor_param_props.addLong("SUPPORTS_NARROW_BURST", "0");
    S_AXI_ACP_FPD_transactor_param_props.addLong("MAX_BURST_LENGTH", "1");
    S_AXI_ACP_FPD_transactor_param_props.addLong("NUM_READ_THREADS", "1");
    S_AXI_ACP_FPD_transactor_param_props.addLong("NUM_WRITE_THREADS", "1");
    S_AXI_ACP_FPD_transactor_param_props.addLong("RUSER_BITS_PER_BYTE", "0");
    S_AXI_ACP_FPD_transactor_param_props.addLong("WUSER_BITS_PER_BYTE", "0");
    S_AXI_ACP_FPD_transactor_param_props.addLong("HAS_SIZE", "1");
    S_AXI_ACP_FPD_transactor_param_props.addLong("HAS_RESET", "0");
    S_AXI_ACP_FPD_transactor_param_props.addFloat("PHASE", "0.0");
    S_AXI_ACP_FPD_transactor_param_props.addString("PROTOCOL", "AXI4");
    S_AXI_ACP_FPD_transactor_param_props.addString("READ_WRITE_MODE", "READ_WRITE");
    S_AXI_ACP_FPD_transactor_param_props.addString("CLK_DOMAIN", "design_bd_zynq_ultra_ps_e_0_0_pl_clk0");

    mp_S_AXI_ACP_FPD_transactor = new xtlm::xaximm_pin2xtlm_t<128,40,5,2,1,1,2,1>("S_AXI_ACP_FPD_transactor", S_AXI_ACP_FPD_transactor_param_props);

    // S_AXI_ACP_FPD' transactor ports

    mp_S_AXI_ACP_FPD_transactor->AWUSER(saxiacp_awuser);
    mp_S_AXI_ACP_FPD_transactor->ARUSER(saxiacp_aruser);
    mp_S_AXI_ACP_FPD_transactor->AWID(saxiacp_awid);
    mp_S_AXI_ACP_FPD_transactor->AWADDR(saxiacp_awaddr);
    mp_S_AXI_ACP_FPD_transactor->AWLEN(saxiacp_awlen);
    mp_S_AXI_ACP_FPD_transactor->AWSIZE(saxiacp_awsize);
    mp_S_AXI_ACP_FPD_transactor->AWBURST(saxiacp_awburst);
    mp_S_AXI_ACP_FPD_transactor->AWLOCK(saxiacp_awlock);
    mp_S_AXI_ACP_FPD_transactor->AWCACHE(saxiacp_awcache);
    mp_S_AXI_ACP_FPD_transactor->AWPROT(saxiacp_awprot);
    mp_S_AXI_ACP_FPD_transactor->AWVALID(saxiacp_awvalid);
    mp_S_AXI_ACP_FPD_transactor->AWREADY(saxiacp_awready);
    mp_S_AXI_ACP_FPD_transactor->WDATA(saxiacp_wdata);
    mp_S_AXI_ACP_FPD_transactor->WSTRB(saxiacp_wstrb);
    mp_S_AXI_ACP_FPD_transactor->WLAST(saxiacp_wlast);
    mp_S_AXI_ACP_FPD_transactor->WVALID(saxiacp_wvalid);
    mp_S_AXI_ACP_FPD_transactor->WREADY(saxiacp_wready);
    mp_S_AXI_ACP_FPD_transactor->BID(saxiacp_bid);
    mp_S_AXI_ACP_FPD_transactor->BRESP(saxiacp_bresp);
    mp_S_AXI_ACP_FPD_transactor->BVALID(saxiacp_bvalid);
    mp_S_AXI_ACP_FPD_transactor->BREADY(saxiacp_bready);
    mp_S_AXI_ACP_FPD_transactor->ARID(saxiacp_arid);
    mp_S_AXI_ACP_FPD_transactor->ARADDR(saxiacp_araddr);
    mp_S_AXI_ACP_FPD_transactor->ARLEN(saxiacp_arlen);
    mp_S_AXI_ACP_FPD_transactor->ARSIZE(saxiacp_arsize);
    mp_S_AXI_ACP_FPD_transactor->ARBURST(saxiacp_arburst);
    mp_S_AXI_ACP_FPD_transactor->ARLOCK(saxiacp_arlock);
    mp_S_AXI_ACP_FPD_transactor->ARCACHE(saxiacp_arcache);
    mp_S_AXI_ACP_FPD_transactor->ARPROT(saxiacp_arprot);
    mp_S_AXI_ACP_FPD_transactor->ARVALID(saxiacp_arvalid);
    mp_S_AXI_ACP_FPD_transactor->ARREADY(saxiacp_arready);
    mp_S_AXI_ACP_FPD_transactor->RID(saxiacp_rid);
    mp_S_AXI_ACP_FPD_transactor->RDATA(saxiacp_rdata);
    mp_S_AXI_ACP_FPD_transactor->RRESP(saxiacp_rresp);
    mp_S_AXI_ACP_FPD_transactor->RLAST(saxiacp_rlast);
    mp_S_AXI_ACP_FPD_transactor->RVALID(saxiacp_rvalid);
    mp_S_AXI_ACP_FPD_transactor->RREADY(saxiacp_rready);
    mp_S_AXI_ACP_FPD_transactor->AWQOS(saxiacp_awqos);
    mp_S_AXI_ACP_FPD_transactor->ARQOS(saxiacp_arqos);
    mp_S_AXI_ACP_FPD_transactor->CLK(saxiacp_fpd_aclk);
    m_S_AXI_ACP_FPD_transactor_rst_signal.write(1);
    mp_S_AXI_ACP_FPD_transactor->RST(m_S_AXI_ACP_FPD_transactor_rst_signal);

    // S_AXI_ACP_FPD' transactor sockets

    mp_impl->S_AXI_ACP_FPD_rd_socket->bind(*(mp_S_AXI_ACP_FPD_transactor->rd_socket));
    mp_impl->S_AXI_ACP_FPD_wr_socket->bind(*(mp_S_AXI_ACP_FPD_transactor->wr_socket));
  }
  else
  {
  }

}

#endif // XM_SYSTEMC




#ifdef RIVIERA
design_bd_zynq_ultra_ps_e_0_0::design_bd_zynq_ultra_ps_e_0_0(const sc_core::sc_module_name& nm) : design_bd_zynq_ultra_ps_e_0_0_sc(nm), maxihpm0_fpd_aclk("maxihpm0_fpd_aclk"), maxigp0_awid("maxigp0_awid"), maxigp0_awaddr("maxigp0_awaddr"), maxigp0_awlen("maxigp0_awlen"), maxigp0_awsize("maxigp0_awsize"), maxigp0_awburst("maxigp0_awburst"), maxigp0_awlock("maxigp0_awlock"), maxigp0_awcache("maxigp0_awcache"), maxigp0_awprot("maxigp0_awprot"), maxigp0_awvalid("maxigp0_awvalid"), maxigp0_awuser("maxigp0_awuser"), maxigp0_awready("maxigp0_awready"), maxigp0_wdata("maxigp0_wdata"), maxigp0_wstrb("maxigp0_wstrb"), maxigp0_wlast("maxigp0_wlast"), maxigp0_wvalid("maxigp0_wvalid"), maxigp0_wready("maxigp0_wready"), maxigp0_bid("maxigp0_bid"), maxigp0_bresp("maxigp0_bresp"), maxigp0_bvalid("maxigp0_bvalid"), maxigp0_bready("maxigp0_bready"), maxigp0_arid("maxigp0_arid"), maxigp0_araddr("maxigp0_araddr"), maxigp0_arlen("maxigp0_arlen"), maxigp0_arsize("maxigp0_arsize"), maxigp0_arburst("maxigp0_arburst"), maxigp0_arlock("maxigp0_arlock"), maxigp0_arcache("maxigp0_arcache"), maxigp0_arprot("maxigp0_arprot"), maxigp0_arvalid("maxigp0_arvalid"), maxigp0_aruser("maxigp0_aruser"), maxigp0_arready("maxigp0_arready"), maxigp0_rid("maxigp0_rid"), maxigp0_rdata("maxigp0_rdata"), maxigp0_rresp("maxigp0_rresp"), maxigp0_rlast("maxigp0_rlast"), maxigp0_rvalid("maxigp0_rvalid"), maxigp0_rready("maxigp0_rready"), maxigp0_awqos("maxigp0_awqos"), maxigp0_arqos("maxigp0_arqos"), maxihpm0_lpd_aclk("maxihpm0_lpd_aclk"), maxigp2_awid("maxigp2_awid"), maxigp2_awaddr("maxigp2_awaddr"), maxigp2_awlen("maxigp2_awlen"), maxigp2_awsize("maxigp2_awsize"), maxigp2_awburst("maxigp2_awburst"), maxigp2_awlock("maxigp2_awlock"), maxigp2_awcache("maxigp2_awcache"), maxigp2_awprot("maxigp2_awprot"), maxigp2_awvalid("maxigp2_awvalid"), maxigp2_awuser("maxigp2_awuser"), maxigp2_awready("maxigp2_awready"), maxigp2_wdata("maxigp2_wdata"), maxigp2_wstrb("maxigp2_wstrb"), maxigp2_wlast("maxigp2_wlast"), maxigp2_wvalid("maxigp2_wvalid"), maxigp2_wready("maxigp2_wready"), maxigp2_bid("maxigp2_bid"), maxigp2_bresp("maxigp2_bresp"), maxigp2_bvalid("maxigp2_bvalid"), maxigp2_bready("maxigp2_bready"), maxigp2_arid("maxigp2_arid"), maxigp2_araddr("maxigp2_araddr"), maxigp2_arlen("maxigp2_arlen"), maxigp2_arsize("maxigp2_arsize"), maxigp2_arburst("maxigp2_arburst"), maxigp2_arlock("maxigp2_arlock"), maxigp2_arcache("maxigp2_arcache"), maxigp2_arprot("maxigp2_arprot"), maxigp2_arvalid("maxigp2_arvalid"), maxigp2_aruser("maxigp2_aruser"), maxigp2_arready("maxigp2_arready"), maxigp2_rid("maxigp2_rid"), maxigp2_rdata("maxigp2_rdata"), maxigp2_rresp("maxigp2_rresp"), maxigp2_rlast("maxigp2_rlast"), maxigp2_rvalid("maxigp2_rvalid"), maxigp2_rready("maxigp2_rready"), maxigp2_awqos("maxigp2_awqos"), maxigp2_arqos("maxigp2_arqos"), saxiacp_fpd_aclk("saxiacp_fpd_aclk"), saxiacp_awuser("saxiacp_awuser"), saxiacp_aruser("saxiacp_aruser"), saxiacp_awid("saxiacp_awid"), saxiacp_awaddr("saxiacp_awaddr"), saxiacp_awlen("saxiacp_awlen"), saxiacp_awsize("saxiacp_awsize"), saxiacp_awburst("saxiacp_awburst"), saxiacp_awlock("saxiacp_awlock"), saxiacp_awcache("saxiacp_awcache"), saxiacp_awprot("saxiacp_awprot"), saxiacp_awvalid("saxiacp_awvalid"), saxiacp_awready("saxiacp_awready"), saxiacp_wdata("saxiacp_wdata"), saxiacp_wstrb("saxiacp_wstrb"), saxiacp_wlast("saxiacp_wlast"), saxiacp_wvalid("saxiacp_wvalid"), saxiacp_wready("saxiacp_wready"), saxiacp_bid("saxiacp_bid"), saxiacp_bresp("saxiacp_bresp"), saxiacp_bvalid("saxiacp_bvalid"), saxiacp_bready("saxiacp_bready"), saxiacp_arid("saxiacp_arid"), saxiacp_araddr("saxiacp_araddr"), saxiacp_arlen("saxiacp_arlen"), saxiacp_arsize("saxiacp_arsize"), saxiacp_arburst("saxiacp_arburst"), saxiacp_arlock("saxiacp_arlock"), saxiacp_arcache("saxiacp_arcache"), saxiacp_arprot("saxiacp_arprot"), saxiacp_arvalid("saxiacp_arvalid"), saxiacp_arready("saxiacp_arready"), saxiacp_rid("saxiacp_rid"), saxiacp_rdata("saxiacp_rdata"), saxiacp_rresp("saxiacp_rresp"), saxiacp_rlast("saxiacp_rlast"), saxiacp_rvalid("saxiacp_rvalid"), saxiacp_rready("saxiacp_rready"), saxiacp_awqos("saxiacp_awqos"), saxiacp_arqos("saxiacp_arqos"), pl_ps_irq0("pl_ps_irq0"), pl_resetn0("pl_resetn0"), pl_acpinact("pl_acpinact"), pl_clk0("pl_clk0")
{

  // initialize pins
  mp_impl->maxihpm0_fpd_aclk(maxihpm0_fpd_aclk);
  mp_impl->maxihpm0_lpd_aclk(maxihpm0_lpd_aclk);
  mp_impl->saxiacp_fpd_aclk(saxiacp_fpd_aclk);
  mp_impl->pl_ps_irq0(pl_ps_irq0);
  mp_impl->pl_resetn0(pl_resetn0);
  mp_impl->pl_acpinact(pl_acpinact);
  mp_impl->pl_clk0(pl_clk0);

  // initialize transactors
  mp_M_AXI_HPM0_FPD_transactor = NULL;
  mp_M_AXI_HPM0_LPD_transactor = NULL;
  mp_S_AXI_ACP_FPD_transactor = NULL;

  // initialize socket stubs

}

void design_bd_zynq_ultra_ps_e_0_0::before_end_of_elaboration()
{
  // configure 'M_AXI_HPM0_FPD' transactor

  if (xsc::utils::xsc_sim_manager::getInstanceParameterInt("design_bd_zynq_ultra_ps_e_0_0", "M_AXI_HPM0_FPD_TLM_MODE") != 1)
  {
    // Instantiate Socket Stubs

  // 'M_AXI_HPM0_FPD' transactor parameters
    xsc::common_cpp::properties M_AXI_HPM0_FPD_transactor_param_props;
    M_AXI_HPM0_FPD_transactor_param_props.addLong("NUM_WRITE_OUTSTANDING", "8");
    M_AXI_HPM0_FPD_transactor_param_props.addLong("NUM_READ_OUTSTANDING", "8");
    M_AXI_HPM0_FPD_transactor_param_props.addLong("DATA_WIDTH", "32");
    M_AXI_HPM0_FPD_transactor_param_props.addLong("FREQ_HZ", "299970032");
    M_AXI_HPM0_FPD_transactor_param_props.addLong("ID_WIDTH", "16");
    M_AXI_HPM0_FPD_transactor_param_props.addLong("ADDR_WIDTH", "40");
    M_AXI_HPM0_FPD_transactor_param_props.addLong("AWUSER_WIDTH", "16");
    M_AXI_HPM0_FPD_transactor_param_props.addLong("ARUSER_WIDTH", "16");
    M_AXI_HPM0_FPD_transactor_param_props.addLong("WUSER_WIDTH", "0");
    M_AXI_HPM0_FPD_transactor_param_props.addLong("RUSER_WIDTH", "0");
    M_AXI_HPM0_FPD_transactor_param_props.addLong("BUSER_WIDTH", "0");
    M_AXI_HPM0_FPD_transactor_param_props.addLong("HAS_BURST", "1");
    M_AXI_HPM0_FPD_transactor_param_props.addLong("HAS_LOCK", "1");
    M_AXI_HPM0_FPD_transactor_param_props.addLong("HAS_PROT", "1");
    M_AXI_HPM0_FPD_transactor_param_props.addLong("HAS_CACHE", "1");
    M_AXI_HPM0_FPD_transactor_param_props.addLong("HAS_QOS", "1");
    M_AXI_HPM0_FPD_transactor_param_props.addLong("HAS_REGION", "0");
    M_AXI_HPM0_FPD_transactor_param_props.addLong("HAS_WSTRB", "1");
    M_AXI_HPM0_FPD_transactor_param_props.addLong("HAS_BRESP", "1");
    M_AXI_HPM0_FPD_transactor_param_props.addLong("HAS_RRESP", "1");
    M_AXI_HPM0_FPD_transactor_param_props.addLong("SUPPORTS_NARROW_BURST", "1");
    M_AXI_HPM0_FPD_transactor_param_props.addLong("MAX_BURST_LENGTH", "256");
    M_AXI_HPM0_FPD_transactor_param_props.addLong("NUM_READ_THREADS", "4");
    M_AXI_HPM0_FPD_transactor_param_props.addLong("NUM_WRITE_THREADS", "4");
    M_AXI_HPM0_FPD_transactor_param_props.addLong("RUSER_BITS_PER_BYTE", "0");
    M_AXI_HPM0_FPD_transactor_param_props.addLong("WUSER_BITS_PER_BYTE", "0");
    M_AXI_HPM0_FPD_transactor_param_props.addLong("HAS_SIZE", "1");
    M_AXI_HPM0_FPD_transactor_param_props.addLong("HAS_RESET", "0");
    M_AXI_HPM0_FPD_transactor_param_props.addFloat("PHASE", "0.0");
    M_AXI_HPM0_FPD_transactor_param_props.addString("PROTOCOL", "AXI4");
    M_AXI_HPM0_FPD_transactor_param_props.addString("READ_WRITE_MODE", "READ_WRITE");
    M_AXI_HPM0_FPD_transactor_param_props.addString("CLK_DOMAIN", "design_bd_zynq_ultra_ps_e_0_0_pl_clk0");

    mp_M_AXI_HPM0_FPD_transactor = new xtlm::xaximm_xtlm2pin_t<32,40,16,16,1,1,16,1>("M_AXI_HPM0_FPD_transactor", M_AXI_HPM0_FPD_transactor_param_props);

    // M_AXI_HPM0_FPD' transactor ports

    mp_M_AXI_HPM0_FPD_transactor->AWID(maxigp0_awid);
    mp_M_AXI_HPM0_FPD_transactor->AWADDR(maxigp0_awaddr);
    mp_M_AXI_HPM0_FPD_transactor->AWLEN(maxigp0_awlen);
    mp_M_AXI_HPM0_FPD_transactor->AWSIZE(maxigp0_awsize);
    mp_M_AXI_HPM0_FPD_transactor->AWBURST(maxigp0_awburst);
    mp_M_AXI_HPM0_FPD_transactor->AWLOCK(maxigp0_awlock);
    mp_M_AXI_HPM0_FPD_transactor->AWCACHE(maxigp0_awcache);
    mp_M_AXI_HPM0_FPD_transactor->AWPROT(maxigp0_awprot);
    mp_M_AXI_HPM0_FPD_transactor->AWVALID(maxigp0_awvalid);
    mp_M_AXI_HPM0_FPD_transactor->AWUSER(maxigp0_awuser);
    mp_M_AXI_HPM0_FPD_transactor->AWREADY(maxigp0_awready);
    mp_M_AXI_HPM0_FPD_transactor->WDATA(maxigp0_wdata);
    mp_M_AXI_HPM0_FPD_transactor->WSTRB(maxigp0_wstrb);
    mp_M_AXI_HPM0_FPD_transactor->WLAST(maxigp0_wlast);
    mp_M_AXI_HPM0_FPD_transactor->WVALID(maxigp0_wvalid);
    mp_M_AXI_HPM0_FPD_transactor->WREADY(maxigp0_wready);
    mp_M_AXI_HPM0_FPD_transactor->BID(maxigp0_bid);
    mp_M_AXI_HPM0_FPD_transactor->BRESP(maxigp0_bresp);
    mp_M_AXI_HPM0_FPD_transactor->BVALID(maxigp0_bvalid);
    mp_M_AXI_HPM0_FPD_transactor->BREADY(maxigp0_bready);
    mp_M_AXI_HPM0_FPD_transactor->ARID(maxigp0_arid);
    mp_M_AXI_HPM0_FPD_transactor->ARADDR(maxigp0_araddr);
    mp_M_AXI_HPM0_FPD_transactor->ARLEN(maxigp0_arlen);
    mp_M_AXI_HPM0_FPD_transactor->ARSIZE(maxigp0_arsize);
    mp_M_AXI_HPM0_FPD_transactor->ARBURST(maxigp0_arburst);
    mp_M_AXI_HPM0_FPD_transactor->ARLOCK(maxigp0_arlock);
    mp_M_AXI_HPM0_FPD_transactor->ARCACHE(maxigp0_arcache);
    mp_M_AXI_HPM0_FPD_transactor->ARPROT(maxigp0_arprot);
    mp_M_AXI_HPM0_FPD_transactor->ARVALID(maxigp0_arvalid);
    mp_M_AXI_HPM0_FPD_transactor->ARUSER(maxigp0_aruser);
    mp_M_AXI_HPM0_FPD_transactor->ARREADY(maxigp0_arready);
    mp_M_AXI_HPM0_FPD_transactor->RID(maxigp0_rid);
    mp_M_AXI_HPM0_FPD_transactor->RDATA(maxigp0_rdata);
    mp_M_AXI_HPM0_FPD_transactor->RRESP(maxigp0_rresp);
    mp_M_AXI_HPM0_FPD_transactor->RLAST(maxigp0_rlast);
    mp_M_AXI_HPM0_FPD_transactor->RVALID(maxigp0_rvalid);
    mp_M_AXI_HPM0_FPD_transactor->RREADY(maxigp0_rready);
    mp_M_AXI_HPM0_FPD_transactor->AWQOS(maxigp0_awqos);
    mp_M_AXI_HPM0_FPD_transactor->ARQOS(maxigp0_arqos);
    mp_M_AXI_HPM0_FPD_transactor->CLK(maxihpm0_fpd_aclk);
    m_M_AXI_HPM0_FPD_transactor_rst_signal.write(1);
    mp_M_AXI_HPM0_FPD_transactor->RST(m_M_AXI_HPM0_FPD_transactor_rst_signal);

    // M_AXI_HPM0_FPD' transactor sockets

    mp_impl->M_AXI_HPM0_FPD_rd_socket->bind(*(mp_M_AXI_HPM0_FPD_transactor->rd_socket));
    mp_impl->M_AXI_HPM0_FPD_wr_socket->bind(*(mp_M_AXI_HPM0_FPD_transactor->wr_socket));
  }
  else
  {
  }

  // configure 'M_AXI_HPM0_LPD' transactor

  if (xsc::utils::xsc_sim_manager::getInstanceParameterInt("design_bd_zynq_ultra_ps_e_0_0", "M_AXI_HPM0_LPD_TLM_MODE") != 1)
  {
    // Instantiate Socket Stubs

  // 'M_AXI_HPM0_LPD' transactor parameters
    xsc::common_cpp::properties M_AXI_HPM0_LPD_transactor_param_props;
    M_AXI_HPM0_LPD_transactor_param_props.addLong("NUM_WRITE_OUTSTANDING", "8");
    M_AXI_HPM0_LPD_transactor_param_props.addLong("NUM_READ_OUTSTANDING", "8");
    M_AXI_HPM0_LPD_transactor_param_props.addLong("DATA_WIDTH", "32");
    M_AXI_HPM0_LPD_transactor_param_props.addLong("FREQ_HZ", "299970032");
    M_AXI_HPM0_LPD_transactor_param_props.addLong("ID_WIDTH", "16");
    M_AXI_HPM0_LPD_transactor_param_props.addLong("ADDR_WIDTH", "40");
    M_AXI_HPM0_LPD_transactor_param_props.addLong("AWUSER_WIDTH", "16");
    M_AXI_HPM0_LPD_transactor_param_props.addLong("ARUSER_WIDTH", "16");
    M_AXI_HPM0_LPD_transactor_param_props.addLong("WUSER_WIDTH", "0");
    M_AXI_HPM0_LPD_transactor_param_props.addLong("RUSER_WIDTH", "0");
    M_AXI_HPM0_LPD_transactor_param_props.addLong("BUSER_WIDTH", "0");
    M_AXI_HPM0_LPD_transactor_param_props.addLong("HAS_BURST", "1");
    M_AXI_HPM0_LPD_transactor_param_props.addLong("HAS_LOCK", "1");
    M_AXI_HPM0_LPD_transactor_param_props.addLong("HAS_PROT", "1");
    M_AXI_HPM0_LPD_transactor_param_props.addLong("HAS_CACHE", "1");
    M_AXI_HPM0_LPD_transactor_param_props.addLong("HAS_QOS", "1");
    M_AXI_HPM0_LPD_transactor_param_props.addLong("HAS_REGION", "0");
    M_AXI_HPM0_LPD_transactor_param_props.addLong("HAS_WSTRB", "1");
    M_AXI_HPM0_LPD_transactor_param_props.addLong("HAS_BRESP", "1");
    M_AXI_HPM0_LPD_transactor_param_props.addLong("HAS_RRESP", "1");
    M_AXI_HPM0_LPD_transactor_param_props.addLong("SUPPORTS_NARROW_BURST", "1");
    M_AXI_HPM0_LPD_transactor_param_props.addLong("MAX_BURST_LENGTH", "256");
    M_AXI_HPM0_LPD_transactor_param_props.addLong("NUM_READ_THREADS", "4");
    M_AXI_HPM0_LPD_transactor_param_props.addLong("NUM_WRITE_THREADS", "4");
    M_AXI_HPM0_LPD_transactor_param_props.addLong("RUSER_BITS_PER_BYTE", "0");
    M_AXI_HPM0_LPD_transactor_param_props.addLong("WUSER_BITS_PER_BYTE", "0");
    M_AXI_HPM0_LPD_transactor_param_props.addLong("HAS_SIZE", "1");
    M_AXI_HPM0_LPD_transactor_param_props.addLong("HAS_RESET", "0");
    M_AXI_HPM0_LPD_transactor_param_props.addFloat("PHASE", "0.0");
    M_AXI_HPM0_LPD_transactor_param_props.addString("PROTOCOL", "AXI4");
    M_AXI_HPM0_LPD_transactor_param_props.addString("READ_WRITE_MODE", "READ_WRITE");
    M_AXI_HPM0_LPD_transactor_param_props.addString("CLK_DOMAIN", "design_bd_zynq_ultra_ps_e_0_0_pl_clk0");

    mp_M_AXI_HPM0_LPD_transactor = new xtlm::xaximm_xtlm2pin_t<32,40,16,16,1,1,16,1>("M_AXI_HPM0_LPD_transactor", M_AXI_HPM0_LPD_transactor_param_props);

    // M_AXI_HPM0_LPD' transactor ports

    mp_M_AXI_HPM0_LPD_transactor->AWID(maxigp2_awid);
    mp_M_AXI_HPM0_LPD_transactor->AWADDR(maxigp2_awaddr);
    mp_M_AXI_HPM0_LPD_transactor->AWLEN(maxigp2_awlen);
    mp_M_AXI_HPM0_LPD_transactor->AWSIZE(maxigp2_awsize);
    mp_M_AXI_HPM0_LPD_transactor->AWBURST(maxigp2_awburst);
    mp_M_AXI_HPM0_LPD_transactor->AWLOCK(maxigp2_awlock);
    mp_M_AXI_HPM0_LPD_transactor->AWCACHE(maxigp2_awcache);
    mp_M_AXI_HPM0_LPD_transactor->AWPROT(maxigp2_awprot);
    mp_M_AXI_HPM0_LPD_transactor->AWVALID(maxigp2_awvalid);
    mp_M_AXI_HPM0_LPD_transactor->AWUSER(maxigp2_awuser);
    mp_M_AXI_HPM0_LPD_transactor->AWREADY(maxigp2_awready);
    mp_M_AXI_HPM0_LPD_transactor->WDATA(maxigp2_wdata);
    mp_M_AXI_HPM0_LPD_transactor->WSTRB(maxigp2_wstrb);
    mp_M_AXI_HPM0_LPD_transactor->WLAST(maxigp2_wlast);
    mp_M_AXI_HPM0_LPD_transactor->WVALID(maxigp2_wvalid);
    mp_M_AXI_HPM0_LPD_transactor->WREADY(maxigp2_wready);
    mp_M_AXI_HPM0_LPD_transactor->BID(maxigp2_bid);
    mp_M_AXI_HPM0_LPD_transactor->BRESP(maxigp2_bresp);
    mp_M_AXI_HPM0_LPD_transactor->BVALID(maxigp2_bvalid);
    mp_M_AXI_HPM0_LPD_transactor->BREADY(maxigp2_bready);
    mp_M_AXI_HPM0_LPD_transactor->ARID(maxigp2_arid);
    mp_M_AXI_HPM0_LPD_transactor->ARADDR(maxigp2_araddr);
    mp_M_AXI_HPM0_LPD_transactor->ARLEN(maxigp2_arlen);
    mp_M_AXI_HPM0_LPD_transactor->ARSIZE(maxigp2_arsize);
    mp_M_AXI_HPM0_LPD_transactor->ARBURST(maxigp2_arburst);
    mp_M_AXI_HPM0_LPD_transactor->ARLOCK(maxigp2_arlock);
    mp_M_AXI_HPM0_LPD_transactor->ARCACHE(maxigp2_arcache);
    mp_M_AXI_HPM0_LPD_transactor->ARPROT(maxigp2_arprot);
    mp_M_AXI_HPM0_LPD_transactor->ARVALID(maxigp2_arvalid);
    mp_M_AXI_HPM0_LPD_transactor->ARUSER(maxigp2_aruser);
    mp_M_AXI_HPM0_LPD_transactor->ARREADY(maxigp2_arready);
    mp_M_AXI_HPM0_LPD_transactor->RID(maxigp2_rid);
    mp_M_AXI_HPM0_LPD_transactor->RDATA(maxigp2_rdata);
    mp_M_AXI_HPM0_LPD_transactor->RRESP(maxigp2_rresp);
    mp_M_AXI_HPM0_LPD_transactor->RLAST(maxigp2_rlast);
    mp_M_AXI_HPM0_LPD_transactor->RVALID(maxigp2_rvalid);
    mp_M_AXI_HPM0_LPD_transactor->RREADY(maxigp2_rready);
    mp_M_AXI_HPM0_LPD_transactor->AWQOS(maxigp2_awqos);
    mp_M_AXI_HPM0_LPD_transactor->ARQOS(maxigp2_arqos);
    mp_M_AXI_HPM0_LPD_transactor->CLK(maxihpm0_lpd_aclk);
    m_M_AXI_HPM0_LPD_transactor_rst_signal.write(1);
    mp_M_AXI_HPM0_LPD_transactor->RST(m_M_AXI_HPM0_LPD_transactor_rst_signal);

    // M_AXI_HPM0_LPD' transactor sockets

    mp_impl->M_AXI_HPM0_LPD_rd_socket->bind(*(mp_M_AXI_HPM0_LPD_transactor->rd_socket));
    mp_impl->M_AXI_HPM0_LPD_wr_socket->bind(*(mp_M_AXI_HPM0_LPD_transactor->wr_socket));
  }
  else
  {
  }

  // configure 'S_AXI_ACP_FPD' transactor

  if (xsc::utils::xsc_sim_manager::getInstanceParameterInt("design_bd_zynq_ultra_ps_e_0_0", "S_AXI_ACP_FPD_TLM_MODE") != 1)
  {
    // Instantiate Socket Stubs

  // 'S_AXI_ACP_FPD' transactor parameters
    xsc::common_cpp::properties S_AXI_ACP_FPD_transactor_param_props;
    S_AXI_ACP_FPD_transactor_param_props.addLong("NUM_WRITE_OUTSTANDING", "4");
    S_AXI_ACP_FPD_transactor_param_props.addLong("NUM_READ_OUTSTANDING", "4");
    S_AXI_ACP_FPD_transactor_param_props.addLong("DATA_WIDTH", "128");
    S_AXI_ACP_FPD_transactor_param_props.addLong("FREQ_HZ", "299970032");
    S_AXI_ACP_FPD_transactor_param_props.addLong("ID_WIDTH", "5");
    S_AXI_ACP_FPD_transactor_param_props.addLong("ADDR_WIDTH", "40");
    S_AXI_ACP_FPD_transactor_param_props.addLong("AWUSER_WIDTH", "2");
    S_AXI_ACP_FPD_transactor_param_props.addLong("ARUSER_WIDTH", "2");
    S_AXI_ACP_FPD_transactor_param_props.addLong("WUSER_WIDTH", "0");
    S_AXI_ACP_FPD_transactor_param_props.addLong("RUSER_WIDTH", "0");
    S_AXI_ACP_FPD_transactor_param_props.addLong("BUSER_WIDTH", "0");
    S_AXI_ACP_FPD_transactor_param_props.addLong("HAS_BURST", "1");
    S_AXI_ACP_FPD_transactor_param_props.addLong("HAS_LOCK", "1");
    S_AXI_ACP_FPD_transactor_param_props.addLong("HAS_PROT", "1");
    S_AXI_ACP_FPD_transactor_param_props.addLong("HAS_CACHE", "1");
    S_AXI_ACP_FPD_transactor_param_props.addLong("HAS_QOS", "1");
    S_AXI_ACP_FPD_transactor_param_props.addLong("HAS_REGION", "0");
    S_AXI_ACP_FPD_transactor_param_props.addLong("HAS_WSTRB", "1");
    S_AXI_ACP_FPD_transactor_param_props.addLong("HAS_BRESP", "1");
    S_AXI_ACP_FPD_transactor_param_props.addLong("HAS_RRESP", "1");
    S_AXI_ACP_FPD_transactor_param_props.addLong("SUPPORTS_NARROW_BURST", "0");
    S_AXI_ACP_FPD_transactor_param_props.addLong("MAX_BURST_LENGTH", "1");
    S_AXI_ACP_FPD_transactor_param_props.addLong("NUM_READ_THREADS", "1");
    S_AXI_ACP_FPD_transactor_param_props.addLong("NUM_WRITE_THREADS", "1");
    S_AXI_ACP_FPD_transactor_param_props.addLong("RUSER_BITS_PER_BYTE", "0");
    S_AXI_ACP_FPD_transactor_param_props.addLong("WUSER_BITS_PER_BYTE", "0");
    S_AXI_ACP_FPD_transactor_param_props.addLong("HAS_SIZE", "1");
    S_AXI_ACP_FPD_transactor_param_props.addLong("HAS_RESET", "0");
    S_AXI_ACP_FPD_transactor_param_props.addFloat("PHASE", "0.0");
    S_AXI_ACP_FPD_transactor_param_props.addString("PROTOCOL", "AXI4");
    S_AXI_ACP_FPD_transactor_param_props.addString("READ_WRITE_MODE", "READ_WRITE");
    S_AXI_ACP_FPD_transactor_param_props.addString("CLK_DOMAIN", "design_bd_zynq_ultra_ps_e_0_0_pl_clk0");

    mp_S_AXI_ACP_FPD_transactor = new xtlm::xaximm_pin2xtlm_t<128,40,5,2,1,1,2,1>("S_AXI_ACP_FPD_transactor", S_AXI_ACP_FPD_transactor_param_props);

    // S_AXI_ACP_FPD' transactor ports

    mp_S_AXI_ACP_FPD_transactor->AWUSER(saxiacp_awuser);
    mp_S_AXI_ACP_FPD_transactor->ARUSER(saxiacp_aruser);
    mp_S_AXI_ACP_FPD_transactor->AWID(saxiacp_awid);
    mp_S_AXI_ACP_FPD_transactor->AWADDR(saxiacp_awaddr);
    mp_S_AXI_ACP_FPD_transactor->AWLEN(saxiacp_awlen);
    mp_S_AXI_ACP_FPD_transactor->AWSIZE(saxiacp_awsize);
    mp_S_AXI_ACP_FPD_transactor->AWBURST(saxiacp_awburst);
    mp_S_AXI_ACP_FPD_transactor->AWLOCK(saxiacp_awlock);
    mp_S_AXI_ACP_FPD_transactor->AWCACHE(saxiacp_awcache);
    mp_S_AXI_ACP_FPD_transactor->AWPROT(saxiacp_awprot);
    mp_S_AXI_ACP_FPD_transactor->AWVALID(saxiacp_awvalid);
    mp_S_AXI_ACP_FPD_transactor->AWREADY(saxiacp_awready);
    mp_S_AXI_ACP_FPD_transactor->WDATA(saxiacp_wdata);
    mp_S_AXI_ACP_FPD_transactor->WSTRB(saxiacp_wstrb);
    mp_S_AXI_ACP_FPD_transactor->WLAST(saxiacp_wlast);
    mp_S_AXI_ACP_FPD_transactor->WVALID(saxiacp_wvalid);
    mp_S_AXI_ACP_FPD_transactor->WREADY(saxiacp_wready);
    mp_S_AXI_ACP_FPD_transactor->BID(saxiacp_bid);
    mp_S_AXI_ACP_FPD_transactor->BRESP(saxiacp_bresp);
    mp_S_AXI_ACP_FPD_transactor->BVALID(saxiacp_bvalid);
    mp_S_AXI_ACP_FPD_transactor->BREADY(saxiacp_bready);
    mp_S_AXI_ACP_FPD_transactor->ARID(saxiacp_arid);
    mp_S_AXI_ACP_FPD_transactor->ARADDR(saxiacp_araddr);
    mp_S_AXI_ACP_FPD_transactor->ARLEN(saxiacp_arlen);
    mp_S_AXI_ACP_FPD_transactor->ARSIZE(saxiacp_arsize);
    mp_S_AXI_ACP_FPD_transactor->ARBURST(saxiacp_arburst);
    mp_S_AXI_ACP_FPD_transactor->ARLOCK(saxiacp_arlock);
    mp_S_AXI_ACP_FPD_transactor->ARCACHE(saxiacp_arcache);
    mp_S_AXI_ACP_FPD_transactor->ARPROT(saxiacp_arprot);
    mp_S_AXI_ACP_FPD_transactor->ARVALID(saxiacp_arvalid);
    mp_S_AXI_ACP_FPD_transactor->ARREADY(saxiacp_arready);
    mp_S_AXI_ACP_FPD_transactor->RID(saxiacp_rid);
    mp_S_AXI_ACP_FPD_transactor->RDATA(saxiacp_rdata);
    mp_S_AXI_ACP_FPD_transactor->RRESP(saxiacp_rresp);
    mp_S_AXI_ACP_FPD_transactor->RLAST(saxiacp_rlast);
    mp_S_AXI_ACP_FPD_transactor->RVALID(saxiacp_rvalid);
    mp_S_AXI_ACP_FPD_transactor->RREADY(saxiacp_rready);
    mp_S_AXI_ACP_FPD_transactor->AWQOS(saxiacp_awqos);
    mp_S_AXI_ACP_FPD_transactor->ARQOS(saxiacp_arqos);
    mp_S_AXI_ACP_FPD_transactor->CLK(saxiacp_fpd_aclk);
    m_S_AXI_ACP_FPD_transactor_rst_signal.write(1);
    mp_S_AXI_ACP_FPD_transactor->RST(m_S_AXI_ACP_FPD_transactor_rst_signal);

    // S_AXI_ACP_FPD' transactor sockets

    mp_impl->S_AXI_ACP_FPD_rd_socket->bind(*(mp_S_AXI_ACP_FPD_transactor->rd_socket));
    mp_impl->S_AXI_ACP_FPD_wr_socket->bind(*(mp_S_AXI_ACP_FPD_transactor->wr_socket));
  }
  else
  {
  }

}

#endif // RIVIERA




#ifdef VCSSYSTEMC
design_bd_zynq_ultra_ps_e_0_0::design_bd_zynq_ultra_ps_e_0_0(const sc_core::sc_module_name& nm) : design_bd_zynq_ultra_ps_e_0_0_sc(nm),  maxihpm0_fpd_aclk("maxihpm0_fpd_aclk"), maxigp0_awid("maxigp0_awid"), maxigp0_awaddr("maxigp0_awaddr"), maxigp0_awlen("maxigp0_awlen"), maxigp0_awsize("maxigp0_awsize"), maxigp0_awburst("maxigp0_awburst"), maxigp0_awlock("maxigp0_awlock"), maxigp0_awcache("maxigp0_awcache"), maxigp0_awprot("maxigp0_awprot"), maxigp0_awvalid("maxigp0_awvalid"), maxigp0_awuser("maxigp0_awuser"), maxigp0_awready("maxigp0_awready"), maxigp0_wdata("maxigp0_wdata"), maxigp0_wstrb("maxigp0_wstrb"), maxigp0_wlast("maxigp0_wlast"), maxigp0_wvalid("maxigp0_wvalid"), maxigp0_wready("maxigp0_wready"), maxigp0_bid("maxigp0_bid"), maxigp0_bresp("maxigp0_bresp"), maxigp0_bvalid("maxigp0_bvalid"), maxigp0_bready("maxigp0_bready"), maxigp0_arid("maxigp0_arid"), maxigp0_araddr("maxigp0_araddr"), maxigp0_arlen("maxigp0_arlen"), maxigp0_arsize("maxigp0_arsize"), maxigp0_arburst("maxigp0_arburst"), maxigp0_arlock("maxigp0_arlock"), maxigp0_arcache("maxigp0_arcache"), maxigp0_arprot("maxigp0_arprot"), maxigp0_arvalid("maxigp0_arvalid"), maxigp0_aruser("maxigp0_aruser"), maxigp0_arready("maxigp0_arready"), maxigp0_rid("maxigp0_rid"), maxigp0_rdata("maxigp0_rdata"), maxigp0_rresp("maxigp0_rresp"), maxigp0_rlast("maxigp0_rlast"), maxigp0_rvalid("maxigp0_rvalid"), maxigp0_rready("maxigp0_rready"), maxigp0_awqos("maxigp0_awqos"), maxigp0_arqos("maxigp0_arqos"), maxihpm0_lpd_aclk("maxihpm0_lpd_aclk"), maxigp2_awid("maxigp2_awid"), maxigp2_awaddr("maxigp2_awaddr"), maxigp2_awlen("maxigp2_awlen"), maxigp2_awsize("maxigp2_awsize"), maxigp2_awburst("maxigp2_awburst"), maxigp2_awlock("maxigp2_awlock"), maxigp2_awcache("maxigp2_awcache"), maxigp2_awprot("maxigp2_awprot"), maxigp2_awvalid("maxigp2_awvalid"), maxigp2_awuser("maxigp2_awuser"), maxigp2_awready("maxigp2_awready"), maxigp2_wdata("maxigp2_wdata"), maxigp2_wstrb("maxigp2_wstrb"), maxigp2_wlast("maxigp2_wlast"), maxigp2_wvalid("maxigp2_wvalid"), maxigp2_wready("maxigp2_wready"), maxigp2_bid("maxigp2_bid"), maxigp2_bresp("maxigp2_bresp"), maxigp2_bvalid("maxigp2_bvalid"), maxigp2_bready("maxigp2_bready"), maxigp2_arid("maxigp2_arid"), maxigp2_araddr("maxigp2_araddr"), maxigp2_arlen("maxigp2_arlen"), maxigp2_arsize("maxigp2_arsize"), maxigp2_arburst("maxigp2_arburst"), maxigp2_arlock("maxigp2_arlock"), maxigp2_arcache("maxigp2_arcache"), maxigp2_arprot("maxigp2_arprot"), maxigp2_arvalid("maxigp2_arvalid"), maxigp2_aruser("maxigp2_aruser"), maxigp2_arready("maxigp2_arready"), maxigp2_rid("maxigp2_rid"), maxigp2_rdata("maxigp2_rdata"), maxigp2_rresp("maxigp2_rresp"), maxigp2_rlast("maxigp2_rlast"), maxigp2_rvalid("maxigp2_rvalid"), maxigp2_rready("maxigp2_rready"), maxigp2_awqos("maxigp2_awqos"), maxigp2_arqos("maxigp2_arqos"), saxiacp_fpd_aclk("saxiacp_fpd_aclk"), saxiacp_awuser("saxiacp_awuser"), saxiacp_aruser("saxiacp_aruser"), saxiacp_awid("saxiacp_awid"), saxiacp_awaddr("saxiacp_awaddr"), saxiacp_awlen("saxiacp_awlen"), saxiacp_awsize("saxiacp_awsize"), saxiacp_awburst("saxiacp_awburst"), saxiacp_awlock("saxiacp_awlock"), saxiacp_awcache("saxiacp_awcache"), saxiacp_awprot("saxiacp_awprot"), saxiacp_awvalid("saxiacp_awvalid"), saxiacp_awready("saxiacp_awready"), saxiacp_wdata("saxiacp_wdata"), saxiacp_wstrb("saxiacp_wstrb"), saxiacp_wlast("saxiacp_wlast"), saxiacp_wvalid("saxiacp_wvalid"), saxiacp_wready("saxiacp_wready"), saxiacp_bid("saxiacp_bid"), saxiacp_bresp("saxiacp_bresp"), saxiacp_bvalid("saxiacp_bvalid"), saxiacp_bready("saxiacp_bready"), saxiacp_arid("saxiacp_arid"), saxiacp_araddr("saxiacp_araddr"), saxiacp_arlen("saxiacp_arlen"), saxiacp_arsize("saxiacp_arsize"), saxiacp_arburst("saxiacp_arburst"), saxiacp_arlock("saxiacp_arlock"), saxiacp_arcache("saxiacp_arcache"), saxiacp_arprot("saxiacp_arprot"), saxiacp_arvalid("saxiacp_arvalid"), saxiacp_arready("saxiacp_arready"), saxiacp_rid("saxiacp_rid"), saxiacp_rdata("saxiacp_rdata"), saxiacp_rresp("saxiacp_rresp"), saxiacp_rlast("saxiacp_rlast"), saxiacp_rvalid("saxiacp_rvalid"), saxiacp_rready("saxiacp_rready"), saxiacp_awqos("saxiacp_awqos"), saxiacp_arqos("saxiacp_arqos"), pl_ps_irq0("pl_ps_irq0"), pl_resetn0("pl_resetn0"), pl_acpinact("pl_acpinact"), pl_clk0("pl_clk0")
{
  // initialize pins
  mp_impl->maxihpm0_fpd_aclk(maxihpm0_fpd_aclk);
  mp_impl->maxihpm0_lpd_aclk(maxihpm0_lpd_aclk);
  mp_impl->saxiacp_fpd_aclk(saxiacp_fpd_aclk);
  mp_impl->pl_ps_irq0(pl_ps_irq0);
  mp_impl->pl_resetn0(pl_resetn0);
  mp_impl->pl_acpinact(pl_acpinact);
  mp_impl->pl_clk0(pl_clk0);

  // initialize transactors
  mp_M_AXI_HPM0_FPD_transactor = NULL;
  mp_M_AXI_HPM0_LPD_transactor = NULL;
  mp_S_AXI_ACP_FPD_transactor = NULL;

  // Instantiate Socket Stubs

  // configure M_AXI_HPM0_FPD_transactor
    xsc::common_cpp::properties M_AXI_HPM0_FPD_transactor_param_props;
    M_AXI_HPM0_FPD_transactor_param_props.addLong("NUM_WRITE_OUTSTANDING", "8");
    M_AXI_HPM0_FPD_transactor_param_props.addLong("NUM_READ_OUTSTANDING", "8");
    M_AXI_HPM0_FPD_transactor_param_props.addLong("DATA_WIDTH", "32");
    M_AXI_HPM0_FPD_transactor_param_props.addLong("FREQ_HZ", "299970032");
    M_AXI_HPM0_FPD_transactor_param_props.addLong("ID_WIDTH", "16");
    M_AXI_HPM0_FPD_transactor_param_props.addLong("ADDR_WIDTH", "40");
    M_AXI_HPM0_FPD_transactor_param_props.addLong("AWUSER_WIDTH", "16");
    M_AXI_HPM0_FPD_transactor_param_props.addLong("ARUSER_WIDTH", "16");
    M_AXI_HPM0_FPD_transactor_param_props.addLong("WUSER_WIDTH", "0");
    M_AXI_HPM0_FPD_transactor_param_props.addLong("RUSER_WIDTH", "0");
    M_AXI_HPM0_FPD_transactor_param_props.addLong("BUSER_WIDTH", "0");
    M_AXI_HPM0_FPD_transactor_param_props.addLong("HAS_BURST", "1");
    M_AXI_HPM0_FPD_transactor_param_props.addLong("HAS_LOCK", "1");
    M_AXI_HPM0_FPD_transactor_param_props.addLong("HAS_PROT", "1");
    M_AXI_HPM0_FPD_transactor_param_props.addLong("HAS_CACHE", "1");
    M_AXI_HPM0_FPD_transactor_param_props.addLong("HAS_QOS", "1");
    M_AXI_HPM0_FPD_transactor_param_props.addLong("HAS_REGION", "0");
    M_AXI_HPM0_FPD_transactor_param_props.addLong("HAS_WSTRB", "1");
    M_AXI_HPM0_FPD_transactor_param_props.addLong("HAS_BRESP", "1");
    M_AXI_HPM0_FPD_transactor_param_props.addLong("HAS_RRESP", "1");
    M_AXI_HPM0_FPD_transactor_param_props.addLong("SUPPORTS_NARROW_BURST", "1");
    M_AXI_HPM0_FPD_transactor_param_props.addLong("MAX_BURST_LENGTH", "256");
    M_AXI_HPM0_FPD_transactor_param_props.addLong("NUM_READ_THREADS", "4");
    M_AXI_HPM0_FPD_transactor_param_props.addLong("NUM_WRITE_THREADS", "4");
    M_AXI_HPM0_FPD_transactor_param_props.addLong("RUSER_BITS_PER_BYTE", "0");
    M_AXI_HPM0_FPD_transactor_param_props.addLong("WUSER_BITS_PER_BYTE", "0");
    M_AXI_HPM0_FPD_transactor_param_props.addLong("HAS_SIZE", "1");
    M_AXI_HPM0_FPD_transactor_param_props.addLong("HAS_RESET", "0");
    M_AXI_HPM0_FPD_transactor_param_props.addFloat("PHASE", "0.0");
    M_AXI_HPM0_FPD_transactor_param_props.addString("PROTOCOL", "AXI4");
    M_AXI_HPM0_FPD_transactor_param_props.addString("READ_WRITE_MODE", "READ_WRITE");
    M_AXI_HPM0_FPD_transactor_param_props.addString("CLK_DOMAIN", "design_bd_zynq_ultra_ps_e_0_0_pl_clk0");

    mp_M_AXI_HPM0_FPD_transactor = new xtlm::xaximm_xtlm2pin_t<32,40,16,16,1,1,16,1>("M_AXI_HPM0_FPD_transactor", M_AXI_HPM0_FPD_transactor_param_props);
  mp_M_AXI_HPM0_FPD_transactor->AWID(maxigp0_awid);
  mp_M_AXI_HPM0_FPD_transactor->AWADDR(maxigp0_awaddr);
  mp_M_AXI_HPM0_FPD_transactor->AWLEN(maxigp0_awlen);
  mp_M_AXI_HPM0_FPD_transactor->AWSIZE(maxigp0_awsize);
  mp_M_AXI_HPM0_FPD_transactor->AWBURST(maxigp0_awburst);
  mp_M_AXI_HPM0_FPD_transactor->AWLOCK(maxigp0_awlock);
  mp_M_AXI_HPM0_FPD_transactor->AWCACHE(maxigp0_awcache);
  mp_M_AXI_HPM0_FPD_transactor->AWPROT(maxigp0_awprot);
  mp_M_AXI_HPM0_FPD_transactor->AWVALID(maxigp0_awvalid);
  mp_M_AXI_HPM0_FPD_transactor->AWUSER(maxigp0_awuser);
  mp_M_AXI_HPM0_FPD_transactor->AWREADY(maxigp0_awready);
  mp_M_AXI_HPM0_FPD_transactor->WDATA(maxigp0_wdata);
  mp_M_AXI_HPM0_FPD_transactor->WSTRB(maxigp0_wstrb);
  mp_M_AXI_HPM0_FPD_transactor->WLAST(maxigp0_wlast);
  mp_M_AXI_HPM0_FPD_transactor->WVALID(maxigp0_wvalid);
  mp_M_AXI_HPM0_FPD_transactor->WREADY(maxigp0_wready);
  mp_M_AXI_HPM0_FPD_transactor->BID(maxigp0_bid);
  mp_M_AXI_HPM0_FPD_transactor->BRESP(maxigp0_bresp);
  mp_M_AXI_HPM0_FPD_transactor->BVALID(maxigp0_bvalid);
  mp_M_AXI_HPM0_FPD_transactor->BREADY(maxigp0_bready);
  mp_M_AXI_HPM0_FPD_transactor->ARID(maxigp0_arid);
  mp_M_AXI_HPM0_FPD_transactor->ARADDR(maxigp0_araddr);
  mp_M_AXI_HPM0_FPD_transactor->ARLEN(maxigp0_arlen);
  mp_M_AXI_HPM0_FPD_transactor->ARSIZE(maxigp0_arsize);
  mp_M_AXI_HPM0_FPD_transactor->ARBURST(maxigp0_arburst);
  mp_M_AXI_HPM0_FPD_transactor->ARLOCK(maxigp0_arlock);
  mp_M_AXI_HPM0_FPD_transactor->ARCACHE(maxigp0_arcache);
  mp_M_AXI_HPM0_FPD_transactor->ARPROT(maxigp0_arprot);
  mp_M_AXI_HPM0_FPD_transactor->ARVALID(maxigp0_arvalid);
  mp_M_AXI_HPM0_FPD_transactor->ARUSER(maxigp0_aruser);
  mp_M_AXI_HPM0_FPD_transactor->ARREADY(maxigp0_arready);
  mp_M_AXI_HPM0_FPD_transactor->RID(maxigp0_rid);
  mp_M_AXI_HPM0_FPD_transactor->RDATA(maxigp0_rdata);
  mp_M_AXI_HPM0_FPD_transactor->RRESP(maxigp0_rresp);
  mp_M_AXI_HPM0_FPD_transactor->RLAST(maxigp0_rlast);
  mp_M_AXI_HPM0_FPD_transactor->RVALID(maxigp0_rvalid);
  mp_M_AXI_HPM0_FPD_transactor->RREADY(maxigp0_rready);
  mp_M_AXI_HPM0_FPD_transactor->AWQOS(maxigp0_awqos);
  mp_M_AXI_HPM0_FPD_transactor->ARQOS(maxigp0_arqos);
  mp_M_AXI_HPM0_FPD_transactor->CLK(maxihpm0_fpd_aclk);
  m_M_AXI_HPM0_FPD_transactor_rst_signal.write(1);
  mp_M_AXI_HPM0_FPD_transactor->RST(m_M_AXI_HPM0_FPD_transactor_rst_signal);
  // configure M_AXI_HPM0_LPD_transactor
    xsc::common_cpp::properties M_AXI_HPM0_LPD_transactor_param_props;
    M_AXI_HPM0_LPD_transactor_param_props.addLong("NUM_WRITE_OUTSTANDING", "8");
    M_AXI_HPM0_LPD_transactor_param_props.addLong("NUM_READ_OUTSTANDING", "8");
    M_AXI_HPM0_LPD_transactor_param_props.addLong("DATA_WIDTH", "32");
    M_AXI_HPM0_LPD_transactor_param_props.addLong("FREQ_HZ", "299970032");
    M_AXI_HPM0_LPD_transactor_param_props.addLong("ID_WIDTH", "16");
    M_AXI_HPM0_LPD_transactor_param_props.addLong("ADDR_WIDTH", "40");
    M_AXI_HPM0_LPD_transactor_param_props.addLong("AWUSER_WIDTH", "16");
    M_AXI_HPM0_LPD_transactor_param_props.addLong("ARUSER_WIDTH", "16");
    M_AXI_HPM0_LPD_transactor_param_props.addLong("WUSER_WIDTH", "0");
    M_AXI_HPM0_LPD_transactor_param_props.addLong("RUSER_WIDTH", "0");
    M_AXI_HPM0_LPD_transactor_param_props.addLong("BUSER_WIDTH", "0");
    M_AXI_HPM0_LPD_transactor_param_props.addLong("HAS_BURST", "1");
    M_AXI_HPM0_LPD_transactor_param_props.addLong("HAS_LOCK", "1");
    M_AXI_HPM0_LPD_transactor_param_props.addLong("HAS_PROT", "1");
    M_AXI_HPM0_LPD_transactor_param_props.addLong("HAS_CACHE", "1");
    M_AXI_HPM0_LPD_transactor_param_props.addLong("HAS_QOS", "1");
    M_AXI_HPM0_LPD_transactor_param_props.addLong("HAS_REGION", "0");
    M_AXI_HPM0_LPD_transactor_param_props.addLong("HAS_WSTRB", "1");
    M_AXI_HPM0_LPD_transactor_param_props.addLong("HAS_BRESP", "1");
    M_AXI_HPM0_LPD_transactor_param_props.addLong("HAS_RRESP", "1");
    M_AXI_HPM0_LPD_transactor_param_props.addLong("SUPPORTS_NARROW_BURST", "1");
    M_AXI_HPM0_LPD_transactor_param_props.addLong("MAX_BURST_LENGTH", "256");
    M_AXI_HPM0_LPD_transactor_param_props.addLong("NUM_READ_THREADS", "4");
    M_AXI_HPM0_LPD_transactor_param_props.addLong("NUM_WRITE_THREADS", "4");
    M_AXI_HPM0_LPD_transactor_param_props.addLong("RUSER_BITS_PER_BYTE", "0");
    M_AXI_HPM0_LPD_transactor_param_props.addLong("WUSER_BITS_PER_BYTE", "0");
    M_AXI_HPM0_LPD_transactor_param_props.addLong("HAS_SIZE", "1");
    M_AXI_HPM0_LPD_transactor_param_props.addLong("HAS_RESET", "0");
    M_AXI_HPM0_LPD_transactor_param_props.addFloat("PHASE", "0.0");
    M_AXI_HPM0_LPD_transactor_param_props.addString("PROTOCOL", "AXI4");
    M_AXI_HPM0_LPD_transactor_param_props.addString("READ_WRITE_MODE", "READ_WRITE");
    M_AXI_HPM0_LPD_transactor_param_props.addString("CLK_DOMAIN", "design_bd_zynq_ultra_ps_e_0_0_pl_clk0");

    mp_M_AXI_HPM0_LPD_transactor = new xtlm::xaximm_xtlm2pin_t<32,40,16,16,1,1,16,1>("M_AXI_HPM0_LPD_transactor", M_AXI_HPM0_LPD_transactor_param_props);
  mp_M_AXI_HPM0_LPD_transactor->AWID(maxigp2_awid);
  mp_M_AXI_HPM0_LPD_transactor->AWADDR(maxigp2_awaddr);
  mp_M_AXI_HPM0_LPD_transactor->AWLEN(maxigp2_awlen);
  mp_M_AXI_HPM0_LPD_transactor->AWSIZE(maxigp2_awsize);
  mp_M_AXI_HPM0_LPD_transactor->AWBURST(maxigp2_awburst);
  mp_M_AXI_HPM0_LPD_transactor->AWLOCK(maxigp2_awlock);
  mp_M_AXI_HPM0_LPD_transactor->AWCACHE(maxigp2_awcache);
  mp_M_AXI_HPM0_LPD_transactor->AWPROT(maxigp2_awprot);
  mp_M_AXI_HPM0_LPD_transactor->AWVALID(maxigp2_awvalid);
  mp_M_AXI_HPM0_LPD_transactor->AWUSER(maxigp2_awuser);
  mp_M_AXI_HPM0_LPD_transactor->AWREADY(maxigp2_awready);
  mp_M_AXI_HPM0_LPD_transactor->WDATA(maxigp2_wdata);
  mp_M_AXI_HPM0_LPD_transactor->WSTRB(maxigp2_wstrb);
  mp_M_AXI_HPM0_LPD_transactor->WLAST(maxigp2_wlast);
  mp_M_AXI_HPM0_LPD_transactor->WVALID(maxigp2_wvalid);
  mp_M_AXI_HPM0_LPD_transactor->WREADY(maxigp2_wready);
  mp_M_AXI_HPM0_LPD_transactor->BID(maxigp2_bid);
  mp_M_AXI_HPM0_LPD_transactor->BRESP(maxigp2_bresp);
  mp_M_AXI_HPM0_LPD_transactor->BVALID(maxigp2_bvalid);
  mp_M_AXI_HPM0_LPD_transactor->BREADY(maxigp2_bready);
  mp_M_AXI_HPM0_LPD_transactor->ARID(maxigp2_arid);
  mp_M_AXI_HPM0_LPD_transactor->ARADDR(maxigp2_araddr);
  mp_M_AXI_HPM0_LPD_transactor->ARLEN(maxigp2_arlen);
  mp_M_AXI_HPM0_LPD_transactor->ARSIZE(maxigp2_arsize);
  mp_M_AXI_HPM0_LPD_transactor->ARBURST(maxigp2_arburst);
  mp_M_AXI_HPM0_LPD_transactor->ARLOCK(maxigp2_arlock);
  mp_M_AXI_HPM0_LPD_transactor->ARCACHE(maxigp2_arcache);
  mp_M_AXI_HPM0_LPD_transactor->ARPROT(maxigp2_arprot);
  mp_M_AXI_HPM0_LPD_transactor->ARVALID(maxigp2_arvalid);
  mp_M_AXI_HPM0_LPD_transactor->ARUSER(maxigp2_aruser);
  mp_M_AXI_HPM0_LPD_transactor->ARREADY(maxigp2_arready);
  mp_M_AXI_HPM0_LPD_transactor->RID(maxigp2_rid);
  mp_M_AXI_HPM0_LPD_transactor->RDATA(maxigp2_rdata);
  mp_M_AXI_HPM0_LPD_transactor->RRESP(maxigp2_rresp);
  mp_M_AXI_HPM0_LPD_transactor->RLAST(maxigp2_rlast);
  mp_M_AXI_HPM0_LPD_transactor->RVALID(maxigp2_rvalid);
  mp_M_AXI_HPM0_LPD_transactor->RREADY(maxigp2_rready);
  mp_M_AXI_HPM0_LPD_transactor->AWQOS(maxigp2_awqos);
  mp_M_AXI_HPM0_LPD_transactor->ARQOS(maxigp2_arqos);
  mp_M_AXI_HPM0_LPD_transactor->CLK(maxihpm0_lpd_aclk);
  m_M_AXI_HPM0_LPD_transactor_rst_signal.write(1);
  mp_M_AXI_HPM0_LPD_transactor->RST(m_M_AXI_HPM0_LPD_transactor_rst_signal);
  // configure S_AXI_ACP_FPD_transactor
    xsc::common_cpp::properties S_AXI_ACP_FPD_transactor_param_props;
    S_AXI_ACP_FPD_transactor_param_props.addLong("NUM_WRITE_OUTSTANDING", "4");
    S_AXI_ACP_FPD_transactor_param_props.addLong("NUM_READ_OUTSTANDING", "4");
    S_AXI_ACP_FPD_transactor_param_props.addLong("DATA_WIDTH", "128");
    S_AXI_ACP_FPD_transactor_param_props.addLong("FREQ_HZ", "299970032");
    S_AXI_ACP_FPD_transactor_param_props.addLong("ID_WIDTH", "5");
    S_AXI_ACP_FPD_transactor_param_props.addLong("ADDR_WIDTH", "40");
    S_AXI_ACP_FPD_transactor_param_props.addLong("AWUSER_WIDTH", "2");
    S_AXI_ACP_FPD_transactor_param_props.addLong("ARUSER_WIDTH", "2");
    S_AXI_ACP_FPD_transactor_param_props.addLong("WUSER_WIDTH", "0");
    S_AXI_ACP_FPD_transactor_param_props.addLong("RUSER_WIDTH", "0");
    S_AXI_ACP_FPD_transactor_param_props.addLong("BUSER_WIDTH", "0");
    S_AXI_ACP_FPD_transactor_param_props.addLong("HAS_BURST", "1");
    S_AXI_ACP_FPD_transactor_param_props.addLong("HAS_LOCK", "1");
    S_AXI_ACP_FPD_transactor_param_props.addLong("HAS_PROT", "1");
    S_AXI_ACP_FPD_transactor_param_props.addLong("HAS_CACHE", "1");
    S_AXI_ACP_FPD_transactor_param_props.addLong("HAS_QOS", "1");
    S_AXI_ACP_FPD_transactor_param_props.addLong("HAS_REGION", "0");
    S_AXI_ACP_FPD_transactor_param_props.addLong("HAS_WSTRB", "1");
    S_AXI_ACP_FPD_transactor_param_props.addLong("HAS_BRESP", "1");
    S_AXI_ACP_FPD_transactor_param_props.addLong("HAS_RRESP", "1");
    S_AXI_ACP_FPD_transactor_param_props.addLong("SUPPORTS_NARROW_BURST", "0");
    S_AXI_ACP_FPD_transactor_param_props.addLong("MAX_BURST_LENGTH", "1");
    S_AXI_ACP_FPD_transactor_param_props.addLong("NUM_READ_THREADS", "1");
    S_AXI_ACP_FPD_transactor_param_props.addLong("NUM_WRITE_THREADS", "1");
    S_AXI_ACP_FPD_transactor_param_props.addLong("RUSER_BITS_PER_BYTE", "0");
    S_AXI_ACP_FPD_transactor_param_props.addLong("WUSER_BITS_PER_BYTE", "0");
    S_AXI_ACP_FPD_transactor_param_props.addLong("HAS_SIZE", "1");
    S_AXI_ACP_FPD_transactor_param_props.addLong("HAS_RESET", "0");
    S_AXI_ACP_FPD_transactor_param_props.addFloat("PHASE", "0.0");
    S_AXI_ACP_FPD_transactor_param_props.addString("PROTOCOL", "AXI4");
    S_AXI_ACP_FPD_transactor_param_props.addString("READ_WRITE_MODE", "READ_WRITE");
    S_AXI_ACP_FPD_transactor_param_props.addString("CLK_DOMAIN", "design_bd_zynq_ultra_ps_e_0_0_pl_clk0");

    mp_S_AXI_ACP_FPD_transactor = new xtlm::xaximm_pin2xtlm_t<128,40,5,2,1,1,2,1>("S_AXI_ACP_FPD_transactor", S_AXI_ACP_FPD_transactor_param_props);
  mp_S_AXI_ACP_FPD_transactor->AWUSER(saxiacp_awuser);
  mp_S_AXI_ACP_FPD_transactor->ARUSER(saxiacp_aruser);
  mp_S_AXI_ACP_FPD_transactor->AWID(saxiacp_awid);
  mp_S_AXI_ACP_FPD_transactor->AWADDR(saxiacp_awaddr);
  mp_S_AXI_ACP_FPD_transactor->AWLEN(saxiacp_awlen);
  mp_S_AXI_ACP_FPD_transactor->AWSIZE(saxiacp_awsize);
  mp_S_AXI_ACP_FPD_transactor->AWBURST(saxiacp_awburst);
  mp_S_AXI_ACP_FPD_transactor->AWLOCK(saxiacp_awlock);
  mp_S_AXI_ACP_FPD_transactor->AWCACHE(saxiacp_awcache);
  mp_S_AXI_ACP_FPD_transactor->AWPROT(saxiacp_awprot);
  mp_S_AXI_ACP_FPD_transactor->AWVALID(saxiacp_awvalid);
  mp_S_AXI_ACP_FPD_transactor->AWREADY(saxiacp_awready);
  mp_S_AXI_ACP_FPD_transactor->WDATA(saxiacp_wdata);
  mp_S_AXI_ACP_FPD_transactor->WSTRB(saxiacp_wstrb);
  mp_S_AXI_ACP_FPD_transactor->WLAST(saxiacp_wlast);
  mp_S_AXI_ACP_FPD_transactor->WVALID(saxiacp_wvalid);
  mp_S_AXI_ACP_FPD_transactor->WREADY(saxiacp_wready);
  mp_S_AXI_ACP_FPD_transactor->BID(saxiacp_bid);
  mp_S_AXI_ACP_FPD_transactor->BRESP(saxiacp_bresp);
  mp_S_AXI_ACP_FPD_transactor->BVALID(saxiacp_bvalid);
  mp_S_AXI_ACP_FPD_transactor->BREADY(saxiacp_bready);
  mp_S_AXI_ACP_FPD_transactor->ARID(saxiacp_arid);
  mp_S_AXI_ACP_FPD_transactor->ARADDR(saxiacp_araddr);
  mp_S_AXI_ACP_FPD_transactor->ARLEN(saxiacp_arlen);
  mp_S_AXI_ACP_FPD_transactor->ARSIZE(saxiacp_arsize);
  mp_S_AXI_ACP_FPD_transactor->ARBURST(saxiacp_arburst);
  mp_S_AXI_ACP_FPD_transactor->ARLOCK(saxiacp_arlock);
  mp_S_AXI_ACP_FPD_transactor->ARCACHE(saxiacp_arcache);
  mp_S_AXI_ACP_FPD_transactor->ARPROT(saxiacp_arprot);
  mp_S_AXI_ACP_FPD_transactor->ARVALID(saxiacp_arvalid);
  mp_S_AXI_ACP_FPD_transactor->ARREADY(saxiacp_arready);
  mp_S_AXI_ACP_FPD_transactor->RID(saxiacp_rid);
  mp_S_AXI_ACP_FPD_transactor->RDATA(saxiacp_rdata);
  mp_S_AXI_ACP_FPD_transactor->RRESP(saxiacp_rresp);
  mp_S_AXI_ACP_FPD_transactor->RLAST(saxiacp_rlast);
  mp_S_AXI_ACP_FPD_transactor->RVALID(saxiacp_rvalid);
  mp_S_AXI_ACP_FPD_transactor->RREADY(saxiacp_rready);
  mp_S_AXI_ACP_FPD_transactor->AWQOS(saxiacp_awqos);
  mp_S_AXI_ACP_FPD_transactor->ARQOS(saxiacp_arqos);
  mp_S_AXI_ACP_FPD_transactor->CLK(saxiacp_fpd_aclk);
  m_S_AXI_ACP_FPD_transactor_rst_signal.write(1);
  mp_S_AXI_ACP_FPD_transactor->RST(m_S_AXI_ACP_FPD_transactor_rst_signal);

  // initialize transactors stubs
  M_AXI_HPM0_FPD_transactor_initiator_wr_socket_stub = nullptr;
  M_AXI_HPM0_FPD_transactor_initiator_rd_socket_stub = nullptr;
  M_AXI_HPM0_LPD_transactor_initiator_wr_socket_stub = nullptr;
  M_AXI_HPM0_LPD_transactor_initiator_rd_socket_stub = nullptr;
  S_AXI_ACP_FPD_transactor_target_wr_socket_stub = nullptr;
  S_AXI_ACP_FPD_transactor_target_rd_socket_stub = nullptr;

}

void design_bd_zynq_ultra_ps_e_0_0::before_end_of_elaboration()
{
  // configure 'M_AXI_HPM0_FPD' transactor
  if (xsc::utils::xsc_sim_manager::getInstanceParameterInt("design_bd_zynq_ultra_ps_e_0_0", "M_AXI_HPM0_FPD_TLM_MODE") != 1)
  {
    mp_impl->M_AXI_HPM0_FPD_rd_socket->bind(*(mp_M_AXI_HPM0_FPD_transactor->rd_socket));
    mp_impl->M_AXI_HPM0_FPD_wr_socket->bind(*(mp_M_AXI_HPM0_FPD_transactor->wr_socket));
  
  }
  else
  {
    M_AXI_HPM0_FPD_transactor_initiator_wr_socket_stub = new xtlm::xtlm_aximm_initiator_stub("wr_socket",0);
    M_AXI_HPM0_FPD_transactor_initiator_wr_socket_stub->bind(*(mp_M_AXI_HPM0_FPD_transactor->wr_socket));
    M_AXI_HPM0_FPD_transactor_initiator_rd_socket_stub = new xtlm::xtlm_aximm_initiator_stub("rd_socket",0);
    M_AXI_HPM0_FPD_transactor_initiator_rd_socket_stub->bind(*(mp_M_AXI_HPM0_FPD_transactor->rd_socket));
    mp_M_AXI_HPM0_FPD_transactor->disable_transactor();
  }

  // configure 'M_AXI_HPM0_LPD' transactor
  if (xsc::utils::xsc_sim_manager::getInstanceParameterInt("design_bd_zynq_ultra_ps_e_0_0", "M_AXI_HPM0_LPD_TLM_MODE") != 1)
  {
    mp_impl->M_AXI_HPM0_LPD_rd_socket->bind(*(mp_M_AXI_HPM0_LPD_transactor->rd_socket));
    mp_impl->M_AXI_HPM0_LPD_wr_socket->bind(*(mp_M_AXI_HPM0_LPD_transactor->wr_socket));
  
  }
  else
  {
    M_AXI_HPM0_LPD_transactor_initiator_wr_socket_stub = new xtlm::xtlm_aximm_initiator_stub("wr_socket",0);
    M_AXI_HPM0_LPD_transactor_initiator_wr_socket_stub->bind(*(mp_M_AXI_HPM0_LPD_transactor->wr_socket));
    M_AXI_HPM0_LPD_transactor_initiator_rd_socket_stub = new xtlm::xtlm_aximm_initiator_stub("rd_socket",0);
    M_AXI_HPM0_LPD_transactor_initiator_rd_socket_stub->bind(*(mp_M_AXI_HPM0_LPD_transactor->rd_socket));
    mp_M_AXI_HPM0_LPD_transactor->disable_transactor();
  }

  // configure 'S_AXI_ACP_FPD' transactor
  if (xsc::utils::xsc_sim_manager::getInstanceParameterInt("design_bd_zynq_ultra_ps_e_0_0", "S_AXI_ACP_FPD_TLM_MODE") != 1)
  {
    mp_impl->S_AXI_ACP_FPD_rd_socket->bind(*(mp_S_AXI_ACP_FPD_transactor->rd_socket));
    mp_impl->S_AXI_ACP_FPD_wr_socket->bind(*(mp_S_AXI_ACP_FPD_transactor->wr_socket));
  
  }
  else
  {
    S_AXI_ACP_FPD_transactor_target_wr_socket_stub = new xtlm::xtlm_aximm_target_stub("wr_socket",0);
    S_AXI_ACP_FPD_transactor_target_wr_socket_stub->bind(*(mp_S_AXI_ACP_FPD_transactor->wr_socket));
    S_AXI_ACP_FPD_transactor_target_rd_socket_stub = new xtlm::xtlm_aximm_target_stub("rd_socket",0);
    S_AXI_ACP_FPD_transactor_target_rd_socket_stub->bind(*(mp_S_AXI_ACP_FPD_transactor->rd_socket));
    mp_S_AXI_ACP_FPD_transactor->disable_transactor();
  }

}

#endif // VCSSYSTEMC




#ifdef MTI_SYSTEMC
design_bd_zynq_ultra_ps_e_0_0::design_bd_zynq_ultra_ps_e_0_0(const sc_core::sc_module_name& nm) : design_bd_zynq_ultra_ps_e_0_0_sc(nm),  maxihpm0_fpd_aclk("maxihpm0_fpd_aclk"), maxigp0_awid("maxigp0_awid"), maxigp0_awaddr("maxigp0_awaddr"), maxigp0_awlen("maxigp0_awlen"), maxigp0_awsize("maxigp0_awsize"), maxigp0_awburst("maxigp0_awburst"), maxigp0_awlock("maxigp0_awlock"), maxigp0_awcache("maxigp0_awcache"), maxigp0_awprot("maxigp0_awprot"), maxigp0_awvalid("maxigp0_awvalid"), maxigp0_awuser("maxigp0_awuser"), maxigp0_awready("maxigp0_awready"), maxigp0_wdata("maxigp0_wdata"), maxigp0_wstrb("maxigp0_wstrb"), maxigp0_wlast("maxigp0_wlast"), maxigp0_wvalid("maxigp0_wvalid"), maxigp0_wready("maxigp0_wready"), maxigp0_bid("maxigp0_bid"), maxigp0_bresp("maxigp0_bresp"), maxigp0_bvalid("maxigp0_bvalid"), maxigp0_bready("maxigp0_bready"), maxigp0_arid("maxigp0_arid"), maxigp0_araddr("maxigp0_araddr"), maxigp0_arlen("maxigp0_arlen"), maxigp0_arsize("maxigp0_arsize"), maxigp0_arburst("maxigp0_arburst"), maxigp0_arlock("maxigp0_arlock"), maxigp0_arcache("maxigp0_arcache"), maxigp0_arprot("maxigp0_arprot"), maxigp0_arvalid("maxigp0_arvalid"), maxigp0_aruser("maxigp0_aruser"), maxigp0_arready("maxigp0_arready"), maxigp0_rid("maxigp0_rid"), maxigp0_rdata("maxigp0_rdata"), maxigp0_rresp("maxigp0_rresp"), maxigp0_rlast("maxigp0_rlast"), maxigp0_rvalid("maxigp0_rvalid"), maxigp0_rready("maxigp0_rready"), maxigp0_awqos("maxigp0_awqos"), maxigp0_arqos("maxigp0_arqos"), maxihpm0_lpd_aclk("maxihpm0_lpd_aclk"), maxigp2_awid("maxigp2_awid"), maxigp2_awaddr("maxigp2_awaddr"), maxigp2_awlen("maxigp2_awlen"), maxigp2_awsize("maxigp2_awsize"), maxigp2_awburst("maxigp2_awburst"), maxigp2_awlock("maxigp2_awlock"), maxigp2_awcache("maxigp2_awcache"), maxigp2_awprot("maxigp2_awprot"), maxigp2_awvalid("maxigp2_awvalid"), maxigp2_awuser("maxigp2_awuser"), maxigp2_awready("maxigp2_awready"), maxigp2_wdata("maxigp2_wdata"), maxigp2_wstrb("maxigp2_wstrb"), maxigp2_wlast("maxigp2_wlast"), maxigp2_wvalid("maxigp2_wvalid"), maxigp2_wready("maxigp2_wready"), maxigp2_bid("maxigp2_bid"), maxigp2_bresp("maxigp2_bresp"), maxigp2_bvalid("maxigp2_bvalid"), maxigp2_bready("maxigp2_bready"), maxigp2_arid("maxigp2_arid"), maxigp2_araddr("maxigp2_araddr"), maxigp2_arlen("maxigp2_arlen"), maxigp2_arsize("maxigp2_arsize"), maxigp2_arburst("maxigp2_arburst"), maxigp2_arlock("maxigp2_arlock"), maxigp2_arcache("maxigp2_arcache"), maxigp2_arprot("maxigp2_arprot"), maxigp2_arvalid("maxigp2_arvalid"), maxigp2_aruser("maxigp2_aruser"), maxigp2_arready("maxigp2_arready"), maxigp2_rid("maxigp2_rid"), maxigp2_rdata("maxigp2_rdata"), maxigp2_rresp("maxigp2_rresp"), maxigp2_rlast("maxigp2_rlast"), maxigp2_rvalid("maxigp2_rvalid"), maxigp2_rready("maxigp2_rready"), maxigp2_awqos("maxigp2_awqos"), maxigp2_arqos("maxigp2_arqos"), saxiacp_fpd_aclk("saxiacp_fpd_aclk"), saxiacp_awuser("saxiacp_awuser"), saxiacp_aruser("saxiacp_aruser"), saxiacp_awid("saxiacp_awid"), saxiacp_awaddr("saxiacp_awaddr"), saxiacp_awlen("saxiacp_awlen"), saxiacp_awsize("saxiacp_awsize"), saxiacp_awburst("saxiacp_awburst"), saxiacp_awlock("saxiacp_awlock"), saxiacp_awcache("saxiacp_awcache"), saxiacp_awprot("saxiacp_awprot"), saxiacp_awvalid("saxiacp_awvalid"), saxiacp_awready("saxiacp_awready"), saxiacp_wdata("saxiacp_wdata"), saxiacp_wstrb("saxiacp_wstrb"), saxiacp_wlast("saxiacp_wlast"), saxiacp_wvalid("saxiacp_wvalid"), saxiacp_wready("saxiacp_wready"), saxiacp_bid("saxiacp_bid"), saxiacp_bresp("saxiacp_bresp"), saxiacp_bvalid("saxiacp_bvalid"), saxiacp_bready("saxiacp_bready"), saxiacp_arid("saxiacp_arid"), saxiacp_araddr("saxiacp_araddr"), saxiacp_arlen("saxiacp_arlen"), saxiacp_arsize("saxiacp_arsize"), saxiacp_arburst("saxiacp_arburst"), saxiacp_arlock("saxiacp_arlock"), saxiacp_arcache("saxiacp_arcache"), saxiacp_arprot("saxiacp_arprot"), saxiacp_arvalid("saxiacp_arvalid"), saxiacp_arready("saxiacp_arready"), saxiacp_rid("saxiacp_rid"), saxiacp_rdata("saxiacp_rdata"), saxiacp_rresp("saxiacp_rresp"), saxiacp_rlast("saxiacp_rlast"), saxiacp_rvalid("saxiacp_rvalid"), saxiacp_rready("saxiacp_rready"), saxiacp_awqos("saxiacp_awqos"), saxiacp_arqos("saxiacp_arqos"), pl_ps_irq0("pl_ps_irq0"), pl_resetn0("pl_resetn0"), pl_acpinact("pl_acpinact"), pl_clk0("pl_clk0")
{
  // initialize pins
  mp_impl->maxihpm0_fpd_aclk(maxihpm0_fpd_aclk);
  mp_impl->maxihpm0_lpd_aclk(maxihpm0_lpd_aclk);
  mp_impl->saxiacp_fpd_aclk(saxiacp_fpd_aclk);
  mp_impl->pl_ps_irq0(pl_ps_irq0);
  mp_impl->pl_resetn0(pl_resetn0);
  mp_impl->pl_acpinact(pl_acpinact);
  mp_impl->pl_clk0(pl_clk0);

  // initialize transactors
  mp_M_AXI_HPM0_FPD_transactor = NULL;
  mp_M_AXI_HPM0_LPD_transactor = NULL;
  mp_S_AXI_ACP_FPD_transactor = NULL;

  // Instantiate Socket Stubs

  // configure M_AXI_HPM0_FPD_transactor
    xsc::common_cpp::properties M_AXI_HPM0_FPD_transactor_param_props;
    M_AXI_HPM0_FPD_transactor_param_props.addLong("NUM_WRITE_OUTSTANDING", "8");
    M_AXI_HPM0_FPD_transactor_param_props.addLong("NUM_READ_OUTSTANDING", "8");
    M_AXI_HPM0_FPD_transactor_param_props.addLong("DATA_WIDTH", "32");
    M_AXI_HPM0_FPD_transactor_param_props.addLong("FREQ_HZ", "299970032");
    M_AXI_HPM0_FPD_transactor_param_props.addLong("ID_WIDTH", "16");
    M_AXI_HPM0_FPD_transactor_param_props.addLong("ADDR_WIDTH", "40");
    M_AXI_HPM0_FPD_transactor_param_props.addLong("AWUSER_WIDTH", "16");
    M_AXI_HPM0_FPD_transactor_param_props.addLong("ARUSER_WIDTH", "16");
    M_AXI_HPM0_FPD_transactor_param_props.addLong("WUSER_WIDTH", "0");
    M_AXI_HPM0_FPD_transactor_param_props.addLong("RUSER_WIDTH", "0");
    M_AXI_HPM0_FPD_transactor_param_props.addLong("BUSER_WIDTH", "0");
    M_AXI_HPM0_FPD_transactor_param_props.addLong("HAS_BURST", "1");
    M_AXI_HPM0_FPD_transactor_param_props.addLong("HAS_LOCK", "1");
    M_AXI_HPM0_FPD_transactor_param_props.addLong("HAS_PROT", "1");
    M_AXI_HPM0_FPD_transactor_param_props.addLong("HAS_CACHE", "1");
    M_AXI_HPM0_FPD_transactor_param_props.addLong("HAS_QOS", "1");
    M_AXI_HPM0_FPD_transactor_param_props.addLong("HAS_REGION", "0");
    M_AXI_HPM0_FPD_transactor_param_props.addLong("HAS_WSTRB", "1");
    M_AXI_HPM0_FPD_transactor_param_props.addLong("HAS_BRESP", "1");
    M_AXI_HPM0_FPD_transactor_param_props.addLong("HAS_RRESP", "1");
    M_AXI_HPM0_FPD_transactor_param_props.addLong("SUPPORTS_NARROW_BURST", "1");
    M_AXI_HPM0_FPD_transactor_param_props.addLong("MAX_BURST_LENGTH", "256");
    M_AXI_HPM0_FPD_transactor_param_props.addLong("NUM_READ_THREADS", "4");
    M_AXI_HPM0_FPD_transactor_param_props.addLong("NUM_WRITE_THREADS", "4");
    M_AXI_HPM0_FPD_transactor_param_props.addLong("RUSER_BITS_PER_BYTE", "0");
    M_AXI_HPM0_FPD_transactor_param_props.addLong("WUSER_BITS_PER_BYTE", "0");
    M_AXI_HPM0_FPD_transactor_param_props.addLong("HAS_SIZE", "1");
    M_AXI_HPM0_FPD_transactor_param_props.addLong("HAS_RESET", "0");
    M_AXI_HPM0_FPD_transactor_param_props.addFloat("PHASE", "0.0");
    M_AXI_HPM0_FPD_transactor_param_props.addString("PROTOCOL", "AXI4");
    M_AXI_HPM0_FPD_transactor_param_props.addString("READ_WRITE_MODE", "READ_WRITE");
    M_AXI_HPM0_FPD_transactor_param_props.addString("CLK_DOMAIN", "design_bd_zynq_ultra_ps_e_0_0_pl_clk0");

    mp_M_AXI_HPM0_FPD_transactor = new xtlm::xaximm_xtlm2pin_t<32,40,16,16,1,1,16,1>("M_AXI_HPM0_FPD_transactor", M_AXI_HPM0_FPD_transactor_param_props);
  mp_M_AXI_HPM0_FPD_transactor->AWID(maxigp0_awid);
  mp_M_AXI_HPM0_FPD_transactor->AWADDR(maxigp0_awaddr);
  mp_M_AXI_HPM0_FPD_transactor->AWLEN(maxigp0_awlen);
  mp_M_AXI_HPM0_FPD_transactor->AWSIZE(maxigp0_awsize);
  mp_M_AXI_HPM0_FPD_transactor->AWBURST(maxigp0_awburst);
  mp_M_AXI_HPM0_FPD_transactor->AWLOCK(maxigp0_awlock);
  mp_M_AXI_HPM0_FPD_transactor->AWCACHE(maxigp0_awcache);
  mp_M_AXI_HPM0_FPD_transactor->AWPROT(maxigp0_awprot);
  mp_M_AXI_HPM0_FPD_transactor->AWVALID(maxigp0_awvalid);
  mp_M_AXI_HPM0_FPD_transactor->AWUSER(maxigp0_awuser);
  mp_M_AXI_HPM0_FPD_transactor->AWREADY(maxigp0_awready);
  mp_M_AXI_HPM0_FPD_transactor->WDATA(maxigp0_wdata);
  mp_M_AXI_HPM0_FPD_transactor->WSTRB(maxigp0_wstrb);
  mp_M_AXI_HPM0_FPD_transactor->WLAST(maxigp0_wlast);
  mp_M_AXI_HPM0_FPD_transactor->WVALID(maxigp0_wvalid);
  mp_M_AXI_HPM0_FPD_transactor->WREADY(maxigp0_wready);
  mp_M_AXI_HPM0_FPD_transactor->BID(maxigp0_bid);
  mp_M_AXI_HPM0_FPD_transactor->BRESP(maxigp0_bresp);
  mp_M_AXI_HPM0_FPD_transactor->BVALID(maxigp0_bvalid);
  mp_M_AXI_HPM0_FPD_transactor->BREADY(maxigp0_bready);
  mp_M_AXI_HPM0_FPD_transactor->ARID(maxigp0_arid);
  mp_M_AXI_HPM0_FPD_transactor->ARADDR(maxigp0_araddr);
  mp_M_AXI_HPM0_FPD_transactor->ARLEN(maxigp0_arlen);
  mp_M_AXI_HPM0_FPD_transactor->ARSIZE(maxigp0_arsize);
  mp_M_AXI_HPM0_FPD_transactor->ARBURST(maxigp0_arburst);
  mp_M_AXI_HPM0_FPD_transactor->ARLOCK(maxigp0_arlock);
  mp_M_AXI_HPM0_FPD_transactor->ARCACHE(maxigp0_arcache);
  mp_M_AXI_HPM0_FPD_transactor->ARPROT(maxigp0_arprot);
  mp_M_AXI_HPM0_FPD_transactor->ARVALID(maxigp0_arvalid);
  mp_M_AXI_HPM0_FPD_transactor->ARUSER(maxigp0_aruser);
  mp_M_AXI_HPM0_FPD_transactor->ARREADY(maxigp0_arready);
  mp_M_AXI_HPM0_FPD_transactor->RID(maxigp0_rid);
  mp_M_AXI_HPM0_FPD_transactor->RDATA(maxigp0_rdata);
  mp_M_AXI_HPM0_FPD_transactor->RRESP(maxigp0_rresp);
  mp_M_AXI_HPM0_FPD_transactor->RLAST(maxigp0_rlast);
  mp_M_AXI_HPM0_FPD_transactor->RVALID(maxigp0_rvalid);
  mp_M_AXI_HPM0_FPD_transactor->RREADY(maxigp0_rready);
  mp_M_AXI_HPM0_FPD_transactor->AWQOS(maxigp0_awqos);
  mp_M_AXI_HPM0_FPD_transactor->ARQOS(maxigp0_arqos);
  mp_M_AXI_HPM0_FPD_transactor->CLK(maxihpm0_fpd_aclk);
  m_M_AXI_HPM0_FPD_transactor_rst_signal.write(1);
  mp_M_AXI_HPM0_FPD_transactor->RST(m_M_AXI_HPM0_FPD_transactor_rst_signal);
  // configure M_AXI_HPM0_LPD_transactor
    xsc::common_cpp::properties M_AXI_HPM0_LPD_transactor_param_props;
    M_AXI_HPM0_LPD_transactor_param_props.addLong("NUM_WRITE_OUTSTANDING", "8");
    M_AXI_HPM0_LPD_transactor_param_props.addLong("NUM_READ_OUTSTANDING", "8");
    M_AXI_HPM0_LPD_transactor_param_props.addLong("DATA_WIDTH", "32");
    M_AXI_HPM0_LPD_transactor_param_props.addLong("FREQ_HZ", "299970032");
    M_AXI_HPM0_LPD_transactor_param_props.addLong("ID_WIDTH", "16");
    M_AXI_HPM0_LPD_transactor_param_props.addLong("ADDR_WIDTH", "40");
    M_AXI_HPM0_LPD_transactor_param_props.addLong("AWUSER_WIDTH", "16");
    M_AXI_HPM0_LPD_transactor_param_props.addLong("ARUSER_WIDTH", "16");
    M_AXI_HPM0_LPD_transactor_param_props.addLong("WUSER_WIDTH", "0");
    M_AXI_HPM0_LPD_transactor_param_props.addLong("RUSER_WIDTH", "0");
    M_AXI_HPM0_LPD_transactor_param_props.addLong("BUSER_WIDTH", "0");
    M_AXI_HPM0_LPD_transactor_param_props.addLong("HAS_BURST", "1");
    M_AXI_HPM0_LPD_transactor_param_props.addLong("HAS_LOCK", "1");
    M_AXI_HPM0_LPD_transactor_param_props.addLong("HAS_PROT", "1");
    M_AXI_HPM0_LPD_transactor_param_props.addLong("HAS_CACHE", "1");
    M_AXI_HPM0_LPD_transactor_param_props.addLong("HAS_QOS", "1");
    M_AXI_HPM0_LPD_transactor_param_props.addLong("HAS_REGION", "0");
    M_AXI_HPM0_LPD_transactor_param_props.addLong("HAS_WSTRB", "1");
    M_AXI_HPM0_LPD_transactor_param_props.addLong("HAS_BRESP", "1");
    M_AXI_HPM0_LPD_transactor_param_props.addLong("HAS_RRESP", "1");
    M_AXI_HPM0_LPD_transactor_param_props.addLong("SUPPORTS_NARROW_BURST", "1");
    M_AXI_HPM0_LPD_transactor_param_props.addLong("MAX_BURST_LENGTH", "256");
    M_AXI_HPM0_LPD_transactor_param_props.addLong("NUM_READ_THREADS", "4");
    M_AXI_HPM0_LPD_transactor_param_props.addLong("NUM_WRITE_THREADS", "4");
    M_AXI_HPM0_LPD_transactor_param_props.addLong("RUSER_BITS_PER_BYTE", "0");
    M_AXI_HPM0_LPD_transactor_param_props.addLong("WUSER_BITS_PER_BYTE", "0");
    M_AXI_HPM0_LPD_transactor_param_props.addLong("HAS_SIZE", "1");
    M_AXI_HPM0_LPD_transactor_param_props.addLong("HAS_RESET", "0");
    M_AXI_HPM0_LPD_transactor_param_props.addFloat("PHASE", "0.0");
    M_AXI_HPM0_LPD_transactor_param_props.addString("PROTOCOL", "AXI4");
    M_AXI_HPM0_LPD_transactor_param_props.addString("READ_WRITE_MODE", "READ_WRITE");
    M_AXI_HPM0_LPD_transactor_param_props.addString("CLK_DOMAIN", "design_bd_zynq_ultra_ps_e_0_0_pl_clk0");

    mp_M_AXI_HPM0_LPD_transactor = new xtlm::xaximm_xtlm2pin_t<32,40,16,16,1,1,16,1>("M_AXI_HPM0_LPD_transactor", M_AXI_HPM0_LPD_transactor_param_props);
  mp_M_AXI_HPM0_LPD_transactor->AWID(maxigp2_awid);
  mp_M_AXI_HPM0_LPD_transactor->AWADDR(maxigp2_awaddr);
  mp_M_AXI_HPM0_LPD_transactor->AWLEN(maxigp2_awlen);
  mp_M_AXI_HPM0_LPD_transactor->AWSIZE(maxigp2_awsize);
  mp_M_AXI_HPM0_LPD_transactor->AWBURST(maxigp2_awburst);
  mp_M_AXI_HPM0_LPD_transactor->AWLOCK(maxigp2_awlock);
  mp_M_AXI_HPM0_LPD_transactor->AWCACHE(maxigp2_awcache);
  mp_M_AXI_HPM0_LPD_transactor->AWPROT(maxigp2_awprot);
  mp_M_AXI_HPM0_LPD_transactor->AWVALID(maxigp2_awvalid);
  mp_M_AXI_HPM0_LPD_transactor->AWUSER(maxigp2_awuser);
  mp_M_AXI_HPM0_LPD_transactor->AWREADY(maxigp2_awready);
  mp_M_AXI_HPM0_LPD_transactor->WDATA(maxigp2_wdata);
  mp_M_AXI_HPM0_LPD_transactor->WSTRB(maxigp2_wstrb);
  mp_M_AXI_HPM0_LPD_transactor->WLAST(maxigp2_wlast);
  mp_M_AXI_HPM0_LPD_transactor->WVALID(maxigp2_wvalid);
  mp_M_AXI_HPM0_LPD_transactor->WREADY(maxigp2_wready);
  mp_M_AXI_HPM0_LPD_transactor->BID(maxigp2_bid);
  mp_M_AXI_HPM0_LPD_transactor->BRESP(maxigp2_bresp);
  mp_M_AXI_HPM0_LPD_transactor->BVALID(maxigp2_bvalid);
  mp_M_AXI_HPM0_LPD_transactor->BREADY(maxigp2_bready);
  mp_M_AXI_HPM0_LPD_transactor->ARID(maxigp2_arid);
  mp_M_AXI_HPM0_LPD_transactor->ARADDR(maxigp2_araddr);
  mp_M_AXI_HPM0_LPD_transactor->ARLEN(maxigp2_arlen);
  mp_M_AXI_HPM0_LPD_transactor->ARSIZE(maxigp2_arsize);
  mp_M_AXI_HPM0_LPD_transactor->ARBURST(maxigp2_arburst);
  mp_M_AXI_HPM0_LPD_transactor->ARLOCK(maxigp2_arlock);
  mp_M_AXI_HPM0_LPD_transactor->ARCACHE(maxigp2_arcache);
  mp_M_AXI_HPM0_LPD_transactor->ARPROT(maxigp2_arprot);
  mp_M_AXI_HPM0_LPD_transactor->ARVALID(maxigp2_arvalid);
  mp_M_AXI_HPM0_LPD_transactor->ARUSER(maxigp2_aruser);
  mp_M_AXI_HPM0_LPD_transactor->ARREADY(maxigp2_arready);
  mp_M_AXI_HPM0_LPD_transactor->RID(maxigp2_rid);
  mp_M_AXI_HPM0_LPD_transactor->RDATA(maxigp2_rdata);
  mp_M_AXI_HPM0_LPD_transactor->RRESP(maxigp2_rresp);
  mp_M_AXI_HPM0_LPD_transactor->RLAST(maxigp2_rlast);
  mp_M_AXI_HPM0_LPD_transactor->RVALID(maxigp2_rvalid);
  mp_M_AXI_HPM0_LPD_transactor->RREADY(maxigp2_rready);
  mp_M_AXI_HPM0_LPD_transactor->AWQOS(maxigp2_awqos);
  mp_M_AXI_HPM0_LPD_transactor->ARQOS(maxigp2_arqos);
  mp_M_AXI_HPM0_LPD_transactor->CLK(maxihpm0_lpd_aclk);
  m_M_AXI_HPM0_LPD_transactor_rst_signal.write(1);
  mp_M_AXI_HPM0_LPD_transactor->RST(m_M_AXI_HPM0_LPD_transactor_rst_signal);
  // configure S_AXI_ACP_FPD_transactor
    xsc::common_cpp::properties S_AXI_ACP_FPD_transactor_param_props;
    S_AXI_ACP_FPD_transactor_param_props.addLong("NUM_WRITE_OUTSTANDING", "4");
    S_AXI_ACP_FPD_transactor_param_props.addLong("NUM_READ_OUTSTANDING", "4");
    S_AXI_ACP_FPD_transactor_param_props.addLong("DATA_WIDTH", "128");
    S_AXI_ACP_FPD_transactor_param_props.addLong("FREQ_HZ", "299970032");
    S_AXI_ACP_FPD_transactor_param_props.addLong("ID_WIDTH", "5");
    S_AXI_ACP_FPD_transactor_param_props.addLong("ADDR_WIDTH", "40");
    S_AXI_ACP_FPD_transactor_param_props.addLong("AWUSER_WIDTH", "2");
    S_AXI_ACP_FPD_transactor_param_props.addLong("ARUSER_WIDTH", "2");
    S_AXI_ACP_FPD_transactor_param_props.addLong("WUSER_WIDTH", "0");
    S_AXI_ACP_FPD_transactor_param_props.addLong("RUSER_WIDTH", "0");
    S_AXI_ACP_FPD_transactor_param_props.addLong("BUSER_WIDTH", "0");
    S_AXI_ACP_FPD_transactor_param_props.addLong("HAS_BURST", "1");
    S_AXI_ACP_FPD_transactor_param_props.addLong("HAS_LOCK", "1");
    S_AXI_ACP_FPD_transactor_param_props.addLong("HAS_PROT", "1");
    S_AXI_ACP_FPD_transactor_param_props.addLong("HAS_CACHE", "1");
    S_AXI_ACP_FPD_transactor_param_props.addLong("HAS_QOS", "1");
    S_AXI_ACP_FPD_transactor_param_props.addLong("HAS_REGION", "0");
    S_AXI_ACP_FPD_transactor_param_props.addLong("HAS_WSTRB", "1");
    S_AXI_ACP_FPD_transactor_param_props.addLong("HAS_BRESP", "1");
    S_AXI_ACP_FPD_transactor_param_props.addLong("HAS_RRESP", "1");
    S_AXI_ACP_FPD_transactor_param_props.addLong("SUPPORTS_NARROW_BURST", "0");
    S_AXI_ACP_FPD_transactor_param_props.addLong("MAX_BURST_LENGTH", "1");
    S_AXI_ACP_FPD_transactor_param_props.addLong("NUM_READ_THREADS", "1");
    S_AXI_ACP_FPD_transactor_param_props.addLong("NUM_WRITE_THREADS", "1");
    S_AXI_ACP_FPD_transactor_param_props.addLong("RUSER_BITS_PER_BYTE", "0");
    S_AXI_ACP_FPD_transactor_param_props.addLong("WUSER_BITS_PER_BYTE", "0");
    S_AXI_ACP_FPD_transactor_param_props.addLong("HAS_SIZE", "1");
    S_AXI_ACP_FPD_transactor_param_props.addLong("HAS_RESET", "0");
    S_AXI_ACP_FPD_transactor_param_props.addFloat("PHASE", "0.0");
    S_AXI_ACP_FPD_transactor_param_props.addString("PROTOCOL", "AXI4");
    S_AXI_ACP_FPD_transactor_param_props.addString("READ_WRITE_MODE", "READ_WRITE");
    S_AXI_ACP_FPD_transactor_param_props.addString("CLK_DOMAIN", "design_bd_zynq_ultra_ps_e_0_0_pl_clk0");

    mp_S_AXI_ACP_FPD_transactor = new xtlm::xaximm_pin2xtlm_t<128,40,5,2,1,1,2,1>("S_AXI_ACP_FPD_transactor", S_AXI_ACP_FPD_transactor_param_props);
  mp_S_AXI_ACP_FPD_transactor->AWUSER(saxiacp_awuser);
  mp_S_AXI_ACP_FPD_transactor->ARUSER(saxiacp_aruser);
  mp_S_AXI_ACP_FPD_transactor->AWID(saxiacp_awid);
  mp_S_AXI_ACP_FPD_transactor->AWADDR(saxiacp_awaddr);
  mp_S_AXI_ACP_FPD_transactor->AWLEN(saxiacp_awlen);
  mp_S_AXI_ACP_FPD_transactor->AWSIZE(saxiacp_awsize);
  mp_S_AXI_ACP_FPD_transactor->AWBURST(saxiacp_awburst);
  mp_S_AXI_ACP_FPD_transactor->AWLOCK(saxiacp_awlock);
  mp_S_AXI_ACP_FPD_transactor->AWCACHE(saxiacp_awcache);
  mp_S_AXI_ACP_FPD_transactor->AWPROT(saxiacp_awprot);
  mp_S_AXI_ACP_FPD_transactor->AWVALID(saxiacp_awvalid);
  mp_S_AXI_ACP_FPD_transactor->AWREADY(saxiacp_awready);
  mp_S_AXI_ACP_FPD_transactor->WDATA(saxiacp_wdata);
  mp_S_AXI_ACP_FPD_transactor->WSTRB(saxiacp_wstrb);
  mp_S_AXI_ACP_FPD_transactor->WLAST(saxiacp_wlast);
  mp_S_AXI_ACP_FPD_transactor->WVALID(saxiacp_wvalid);
  mp_S_AXI_ACP_FPD_transactor->WREADY(saxiacp_wready);
  mp_S_AXI_ACP_FPD_transactor->BID(saxiacp_bid);
  mp_S_AXI_ACP_FPD_transactor->BRESP(saxiacp_bresp);
  mp_S_AXI_ACP_FPD_transactor->BVALID(saxiacp_bvalid);
  mp_S_AXI_ACP_FPD_transactor->BREADY(saxiacp_bready);
  mp_S_AXI_ACP_FPD_transactor->ARID(saxiacp_arid);
  mp_S_AXI_ACP_FPD_transactor->ARADDR(saxiacp_araddr);
  mp_S_AXI_ACP_FPD_transactor->ARLEN(saxiacp_arlen);
  mp_S_AXI_ACP_FPD_transactor->ARSIZE(saxiacp_arsize);
  mp_S_AXI_ACP_FPD_transactor->ARBURST(saxiacp_arburst);
  mp_S_AXI_ACP_FPD_transactor->ARLOCK(saxiacp_arlock);
  mp_S_AXI_ACP_FPD_transactor->ARCACHE(saxiacp_arcache);
  mp_S_AXI_ACP_FPD_transactor->ARPROT(saxiacp_arprot);
  mp_S_AXI_ACP_FPD_transactor->ARVALID(saxiacp_arvalid);
  mp_S_AXI_ACP_FPD_transactor->ARREADY(saxiacp_arready);
  mp_S_AXI_ACP_FPD_transactor->RID(saxiacp_rid);
  mp_S_AXI_ACP_FPD_transactor->RDATA(saxiacp_rdata);
  mp_S_AXI_ACP_FPD_transactor->RRESP(saxiacp_rresp);
  mp_S_AXI_ACP_FPD_transactor->RLAST(saxiacp_rlast);
  mp_S_AXI_ACP_FPD_transactor->RVALID(saxiacp_rvalid);
  mp_S_AXI_ACP_FPD_transactor->RREADY(saxiacp_rready);
  mp_S_AXI_ACP_FPD_transactor->AWQOS(saxiacp_awqos);
  mp_S_AXI_ACP_FPD_transactor->ARQOS(saxiacp_arqos);
  mp_S_AXI_ACP_FPD_transactor->CLK(saxiacp_fpd_aclk);
  m_S_AXI_ACP_FPD_transactor_rst_signal.write(1);
  mp_S_AXI_ACP_FPD_transactor->RST(m_S_AXI_ACP_FPD_transactor_rst_signal);

  // initialize transactors stubs
  M_AXI_HPM0_FPD_transactor_initiator_wr_socket_stub = nullptr;
  M_AXI_HPM0_FPD_transactor_initiator_rd_socket_stub = nullptr;
  M_AXI_HPM0_LPD_transactor_initiator_wr_socket_stub = nullptr;
  M_AXI_HPM0_LPD_transactor_initiator_rd_socket_stub = nullptr;
  S_AXI_ACP_FPD_transactor_target_wr_socket_stub = nullptr;
  S_AXI_ACP_FPD_transactor_target_rd_socket_stub = nullptr;

}

void design_bd_zynq_ultra_ps_e_0_0::before_end_of_elaboration()
{
  // configure 'M_AXI_HPM0_FPD' transactor
  if (xsc::utils::xsc_sim_manager::getInstanceParameterInt("design_bd_zynq_ultra_ps_e_0_0", "M_AXI_HPM0_FPD_TLM_MODE") != 1)
  {
    mp_impl->M_AXI_HPM0_FPD_rd_socket->bind(*(mp_M_AXI_HPM0_FPD_transactor->rd_socket));
    mp_impl->M_AXI_HPM0_FPD_wr_socket->bind(*(mp_M_AXI_HPM0_FPD_transactor->wr_socket));
  
  }
  else
  {
    M_AXI_HPM0_FPD_transactor_initiator_wr_socket_stub = new xtlm::xtlm_aximm_initiator_stub("wr_socket",0);
    M_AXI_HPM0_FPD_transactor_initiator_wr_socket_stub->bind(*(mp_M_AXI_HPM0_FPD_transactor->wr_socket));
    M_AXI_HPM0_FPD_transactor_initiator_rd_socket_stub = new xtlm::xtlm_aximm_initiator_stub("rd_socket",0);
    M_AXI_HPM0_FPD_transactor_initiator_rd_socket_stub->bind(*(mp_M_AXI_HPM0_FPD_transactor->rd_socket));
    mp_M_AXI_HPM0_FPD_transactor->disable_transactor();
  }

  // configure 'M_AXI_HPM0_LPD' transactor
  if (xsc::utils::xsc_sim_manager::getInstanceParameterInt("design_bd_zynq_ultra_ps_e_0_0", "M_AXI_HPM0_LPD_TLM_MODE") != 1)
  {
    mp_impl->M_AXI_HPM0_LPD_rd_socket->bind(*(mp_M_AXI_HPM0_LPD_transactor->rd_socket));
    mp_impl->M_AXI_HPM0_LPD_wr_socket->bind(*(mp_M_AXI_HPM0_LPD_transactor->wr_socket));
  
  }
  else
  {
    M_AXI_HPM0_LPD_transactor_initiator_wr_socket_stub = new xtlm::xtlm_aximm_initiator_stub("wr_socket",0);
    M_AXI_HPM0_LPD_transactor_initiator_wr_socket_stub->bind(*(mp_M_AXI_HPM0_LPD_transactor->wr_socket));
    M_AXI_HPM0_LPD_transactor_initiator_rd_socket_stub = new xtlm::xtlm_aximm_initiator_stub("rd_socket",0);
    M_AXI_HPM0_LPD_transactor_initiator_rd_socket_stub->bind(*(mp_M_AXI_HPM0_LPD_transactor->rd_socket));
    mp_M_AXI_HPM0_LPD_transactor->disable_transactor();
  }

  // configure 'S_AXI_ACP_FPD' transactor
  if (xsc::utils::xsc_sim_manager::getInstanceParameterInt("design_bd_zynq_ultra_ps_e_0_0", "S_AXI_ACP_FPD_TLM_MODE") != 1)
  {
    mp_impl->S_AXI_ACP_FPD_rd_socket->bind(*(mp_S_AXI_ACP_FPD_transactor->rd_socket));
    mp_impl->S_AXI_ACP_FPD_wr_socket->bind(*(mp_S_AXI_ACP_FPD_transactor->wr_socket));
  
  }
  else
  {
    S_AXI_ACP_FPD_transactor_target_wr_socket_stub = new xtlm::xtlm_aximm_target_stub("wr_socket",0);
    S_AXI_ACP_FPD_transactor_target_wr_socket_stub->bind(*(mp_S_AXI_ACP_FPD_transactor->wr_socket));
    S_AXI_ACP_FPD_transactor_target_rd_socket_stub = new xtlm::xtlm_aximm_target_stub("rd_socket",0);
    S_AXI_ACP_FPD_transactor_target_rd_socket_stub->bind(*(mp_S_AXI_ACP_FPD_transactor->rd_socket));
    mp_S_AXI_ACP_FPD_transactor->disable_transactor();
  }

}

#endif // MTI_SYSTEMC




design_bd_zynq_ultra_ps_e_0_0::~design_bd_zynq_ultra_ps_e_0_0()
{
  delete mp_M_AXI_HPM0_FPD_transactor;

  delete mp_M_AXI_HPM0_LPD_transactor;

  delete mp_S_AXI_ACP_FPD_transactor;

}

#ifdef MTI_SYSTEMC
SC_MODULE_EXPORT(design_bd_zynq_ultra_ps_e_0_0);
#endif

#ifdef XM_SYSTEMC
XMSC_MODULE_EXPORT(design_bd_zynq_ultra_ps_e_0_0);
#endif

#ifdef RIVIERA
SC_MODULE_EXPORT(design_bd_zynq_ultra_ps_e_0_0);
SC_REGISTER_BV(128);
#endif
