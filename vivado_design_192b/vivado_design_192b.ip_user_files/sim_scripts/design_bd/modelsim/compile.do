vlib modelsim_lib/work
vlib modelsim_lib/msim

vlib modelsim_lib/msim/xilinx_vip
vlib modelsim_lib/msim/xpm
vlib modelsim_lib/msim/axi_infrastructure_v1_1_0
vlib modelsim_lib/msim/axi_vip_v1_1_15
vlib modelsim_lib/msim/zynq_ultra_ps_e_vip_v1_0_15
vlib modelsim_lib/msim/xil_defaultlib
vlib modelsim_lib/msim/xlconstant_v1_1_8
vlib modelsim_lib/msim/lib_cdc_v1_0_2
vlib modelsim_lib/msim/proc_sys_reset_v5_0_14
vlib modelsim_lib/msim/smartconnect_v1_0
vlib modelsim_lib/msim/axi_register_slice_v2_1_29
vlib modelsim_lib/msim/generic_baseblocks_v2_1_1
vlib modelsim_lib/msim/fifo_generator_v13_2_9
vlib modelsim_lib/msim/axi_data_fifo_v2_1_28
vlib modelsim_lib/msim/axi_protocol_converter_v2_1_29

vmap xilinx_vip modelsim_lib/msim/xilinx_vip
vmap xpm modelsim_lib/msim/xpm
vmap axi_infrastructure_v1_1_0 modelsim_lib/msim/axi_infrastructure_v1_1_0
vmap axi_vip_v1_1_15 modelsim_lib/msim/axi_vip_v1_1_15
vmap zynq_ultra_ps_e_vip_v1_0_15 modelsim_lib/msim/zynq_ultra_ps_e_vip_v1_0_15
vmap xil_defaultlib modelsim_lib/msim/xil_defaultlib
vmap xlconstant_v1_1_8 modelsim_lib/msim/xlconstant_v1_1_8
vmap lib_cdc_v1_0_2 modelsim_lib/msim/lib_cdc_v1_0_2
vmap proc_sys_reset_v5_0_14 modelsim_lib/msim/proc_sys_reset_v5_0_14
vmap smartconnect_v1_0 modelsim_lib/msim/smartconnect_v1_0
vmap axi_register_slice_v2_1_29 modelsim_lib/msim/axi_register_slice_v2_1_29
vmap generic_baseblocks_v2_1_1 modelsim_lib/msim/generic_baseblocks_v2_1_1
vmap fifo_generator_v13_2_9 modelsim_lib/msim/fifo_generator_v13_2_9
vmap axi_data_fifo_v2_1_28 modelsim_lib/msim/axi_data_fifo_v2_1_28
vmap axi_protocol_converter_v2_1_29 modelsim_lib/msim/axi_protocol_converter_v2_1_29

vlog -work xilinx_vip  -incr -mfcu  -sv -L axi_vip_v1_1_15 -L smartconnect_v1_0 -L zynq_ultra_ps_e_vip_v1_0_15 -L xilinx_vip "+incdir+C:/Xilinx/Vivado/2023.2/data/xilinx_vip/include" \
"C:/Xilinx/Vivado/2023.2/data/xilinx_vip/hdl/axi4stream_vip_axi4streampc.sv" \
"C:/Xilinx/Vivado/2023.2/data/xilinx_vip/hdl/axi_vip_axi4pc.sv" \
"C:/Xilinx/Vivado/2023.2/data/xilinx_vip/hdl/xil_common_vip_pkg.sv" \
"C:/Xilinx/Vivado/2023.2/data/xilinx_vip/hdl/axi4stream_vip_pkg.sv" \
"C:/Xilinx/Vivado/2023.2/data/xilinx_vip/hdl/axi_vip_pkg.sv" \
"C:/Xilinx/Vivado/2023.2/data/xilinx_vip/hdl/axi4stream_vip_if.sv" \
"C:/Xilinx/Vivado/2023.2/data/xilinx_vip/hdl/axi_vip_if.sv" \
"C:/Xilinx/Vivado/2023.2/data/xilinx_vip/hdl/clk_vip_if.sv" \
"C:/Xilinx/Vivado/2023.2/data/xilinx_vip/hdl/rst_vip_if.sv" \

vlog -work xpm  -incr -mfcu  -sv -L axi_vip_v1_1_15 -L smartconnect_v1_0 -L zynq_ultra_ps_e_vip_v1_0_15 -L xilinx_vip "+incdir+../../../../../Design_src/bd/design_bd/ipshared/ec67/hdl" "+incdir+../../../../../Design_src/bd/design_bd/ipshared/2fcd/hdl" "+incdir+../../../../../Design_src/bd/design_bd/ipshared/f0b6/hdl/verilog" "+incdir+../../../../../Design_src/bd/design_bd/ipshared/35de/hdl/verilog" "+incdir+C:/Xilinx/Vivado/2023.2/data/xilinx_vip/include" \
"C:/Xilinx/Vivado/2023.2/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \
"C:/Xilinx/Vivado/2023.2/data/ip/xpm/xpm_fifo/hdl/xpm_fifo.sv" \
"C:/Xilinx/Vivado/2023.2/data/ip/xpm/xpm_memory/hdl/xpm_memory.sv" \

vcom -work xpm  -93  \
"C:/Xilinx/Vivado/2023.2/data/ip/xpm/xpm_VCOMP.vhd" \

vlog -work axi_infrastructure_v1_1_0  -incr -mfcu  "+incdir+../../../../../Design_src/bd/design_bd/ipshared/ec67/hdl" "+incdir+../../../../../Design_src/bd/design_bd/ipshared/2fcd/hdl" "+incdir+../../../../../Design_src/bd/design_bd/ipshared/f0b6/hdl/verilog" "+incdir+../../../../../Design_src/bd/design_bd/ipshared/35de/hdl/verilog" "+incdir+C:/Xilinx/Vivado/2023.2/data/xilinx_vip/include" \
"../../../../../Design_src/bd/design_bd/ipshared/ec67/hdl/axi_infrastructure_v1_1_vl_rfs.v" \

vlog -work axi_vip_v1_1_15  -incr -mfcu  -sv -L axi_vip_v1_1_15 -L smartconnect_v1_0 -L zynq_ultra_ps_e_vip_v1_0_15 -L xilinx_vip "+incdir+../../../../../Design_src/bd/design_bd/ipshared/ec67/hdl" "+incdir+../../../../../Design_src/bd/design_bd/ipshared/2fcd/hdl" "+incdir+../../../../../Design_src/bd/design_bd/ipshared/f0b6/hdl/verilog" "+incdir+../../../../../Design_src/bd/design_bd/ipshared/35de/hdl/verilog" "+incdir+C:/Xilinx/Vivado/2023.2/data/xilinx_vip/include" \
"../../../../../Design_src/bd/design_bd/ipshared/5753/hdl/axi_vip_v1_1_vl_rfs.sv" \

vlog -work zynq_ultra_ps_e_vip_v1_0_15  -incr -mfcu  -sv -L axi_vip_v1_1_15 -L smartconnect_v1_0 -L zynq_ultra_ps_e_vip_v1_0_15 -L xilinx_vip "+incdir+../../../../../Design_src/bd/design_bd/ipshared/ec67/hdl" "+incdir+../../../../../Design_src/bd/design_bd/ipshared/2fcd/hdl" "+incdir+../../../../../Design_src/bd/design_bd/ipshared/f0b6/hdl/verilog" "+incdir+../../../../../Design_src/bd/design_bd/ipshared/35de/hdl/verilog" "+incdir+C:/Xilinx/Vivado/2023.2/data/xilinx_vip/include" \
"../../../../../Design_src/bd/design_bd/ipshared/2fcd/hdl/zynq_ultra_ps_e_vip_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib  -incr -mfcu  "+incdir+../../../../../Design_src/bd/design_bd/ipshared/ec67/hdl" "+incdir+../../../../../Design_src/bd/design_bd/ipshared/2fcd/hdl" "+incdir+../../../../../Design_src/bd/design_bd/ipshared/f0b6/hdl/verilog" "+incdir+../../../../../Design_src/bd/design_bd/ipshared/35de/hdl/verilog" "+incdir+C:/Xilinx/Vivado/2023.2/data/xilinx_vip/include" \
"../../../bd/design_bd/ip/design_bd_zynq_ultra_ps_e_0_0/sim/design_bd_zynq_ultra_ps_e_0_0_vip_wrapper.v" \

vlog -work xlconstant_v1_1_8  -incr -mfcu  "+incdir+../../../../../Design_src/bd/design_bd/ipshared/ec67/hdl" "+incdir+../../../../../Design_src/bd/design_bd/ipshared/2fcd/hdl" "+incdir+../../../../../Design_src/bd/design_bd/ipshared/f0b6/hdl/verilog" "+incdir+../../../../../Design_src/bd/design_bd/ipshared/35de/hdl/verilog" "+incdir+C:/Xilinx/Vivado/2023.2/data/xilinx_vip/include" \
"../../../../../Design_src/bd/design_bd/ipshared/d390/hdl/xlconstant_v1_1_vl_rfs.v" \

vlog -work xil_defaultlib  -incr -mfcu  "+incdir+../../../../../Design_src/bd/design_bd/ipshared/ec67/hdl" "+incdir+../../../../../Design_src/bd/design_bd/ipshared/2fcd/hdl" "+incdir+../../../../../Design_src/bd/design_bd/ipshared/f0b6/hdl/verilog" "+incdir+../../../../../Design_src/bd/design_bd/ipshared/35de/hdl/verilog" "+incdir+C:/Xilinx/Vivado/2023.2/data/xilinx_vip/include" \
"../../../bd/design_bd/ip/design_bd_smartconnect_0_0/bd_0/ip/ip_0/sim/bd_b3b8_one_0.v" \

vcom -work lib_cdc_v1_0_2  -93  \
"../../../../../Design_src/bd/design_bd/ipshared/ef1e/hdl/lib_cdc_v1_0_rfs.vhd" \

vcom -work proc_sys_reset_v5_0_14  -93  \
"../../../../../Design_src/bd/design_bd/ipshared/408c/hdl/proc_sys_reset_v5_0_vh_rfs.vhd" \

vcom -work xil_defaultlib  -93  \
"../../../bd/design_bd/ip/design_bd_smartconnect_0_0/bd_0/ip/ip_1/sim/bd_b3b8_psr_aclk_0.vhd" \

vlog -work smartconnect_v1_0  -incr -mfcu  -sv -L axi_vip_v1_1_15 -L smartconnect_v1_0 -L zynq_ultra_ps_e_vip_v1_0_15 -L xilinx_vip "+incdir+../../../../../Design_src/bd/design_bd/ipshared/ec67/hdl" "+incdir+../../../../../Design_src/bd/design_bd/ipshared/2fcd/hdl" "+incdir+../../../../../Design_src/bd/design_bd/ipshared/f0b6/hdl/verilog" "+incdir+../../../../../Design_src/bd/design_bd/ipshared/35de/hdl/verilog" "+incdir+C:/Xilinx/Vivado/2023.2/data/xilinx_vip/include" \
"../../../../../Design_src/bd/design_bd/ipshared/f0b6/hdl/sc_util_v1_0_vl_rfs.sv" \
"../../../../../Design_src/bd/design_bd/ipshared/c6b2/hdl/sc_mmu_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib  -incr -mfcu  -sv -L axi_vip_v1_1_15 -L smartconnect_v1_0 -L zynq_ultra_ps_e_vip_v1_0_15 -L xilinx_vip "+incdir+../../../../../Design_src/bd/design_bd/ipshared/ec67/hdl" "+incdir+../../../../../Design_src/bd/design_bd/ipshared/2fcd/hdl" "+incdir+../../../../../Design_src/bd/design_bd/ipshared/f0b6/hdl/verilog" "+incdir+../../../../../Design_src/bd/design_bd/ipshared/35de/hdl/verilog" "+incdir+C:/Xilinx/Vivado/2023.2/data/xilinx_vip/include" \
"../../../bd/design_bd/ip/design_bd_smartconnect_0_0/bd_0/ip/ip_2/sim/bd_b3b8_s00mmu_0.sv" \

vlog -work smartconnect_v1_0  -incr -mfcu  -sv -L axi_vip_v1_1_15 -L smartconnect_v1_0 -L zynq_ultra_ps_e_vip_v1_0_15 -L xilinx_vip "+incdir+../../../../../Design_src/bd/design_bd/ipshared/ec67/hdl" "+incdir+../../../../../Design_src/bd/design_bd/ipshared/2fcd/hdl" "+incdir+../../../../../Design_src/bd/design_bd/ipshared/f0b6/hdl/verilog" "+incdir+../../../../../Design_src/bd/design_bd/ipshared/35de/hdl/verilog" "+incdir+C:/Xilinx/Vivado/2023.2/data/xilinx_vip/include" \
"../../../../../Design_src/bd/design_bd/ipshared/abb8/hdl/sc_transaction_regulator_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib  -incr -mfcu  -sv -L axi_vip_v1_1_15 -L smartconnect_v1_0 -L zynq_ultra_ps_e_vip_v1_0_15 -L xilinx_vip "+incdir+../../../../../Design_src/bd/design_bd/ipshared/ec67/hdl" "+incdir+../../../../../Design_src/bd/design_bd/ipshared/2fcd/hdl" "+incdir+../../../../../Design_src/bd/design_bd/ipshared/f0b6/hdl/verilog" "+incdir+../../../../../Design_src/bd/design_bd/ipshared/35de/hdl/verilog" "+incdir+C:/Xilinx/Vivado/2023.2/data/xilinx_vip/include" \
"../../../bd/design_bd/ip/design_bd_smartconnect_0_0/bd_0/ip/ip_3/sim/bd_b3b8_s00tr_0.sv" \

vlog -work smartconnect_v1_0  -incr -mfcu  -sv -L axi_vip_v1_1_15 -L smartconnect_v1_0 -L zynq_ultra_ps_e_vip_v1_0_15 -L xilinx_vip "+incdir+../../../../../Design_src/bd/design_bd/ipshared/ec67/hdl" "+incdir+../../../../../Design_src/bd/design_bd/ipshared/2fcd/hdl" "+incdir+../../../../../Design_src/bd/design_bd/ipshared/f0b6/hdl/verilog" "+incdir+../../../../../Design_src/bd/design_bd/ipshared/35de/hdl/verilog" "+incdir+C:/Xilinx/Vivado/2023.2/data/xilinx_vip/include" \
"../../../../../Design_src/bd/design_bd/ipshared/7827/hdl/sc_si_converter_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib  -incr -mfcu  -sv -L axi_vip_v1_1_15 -L smartconnect_v1_0 -L zynq_ultra_ps_e_vip_v1_0_15 -L xilinx_vip "+incdir+../../../../../Design_src/bd/design_bd/ipshared/ec67/hdl" "+incdir+../../../../../Design_src/bd/design_bd/ipshared/2fcd/hdl" "+incdir+../../../../../Design_src/bd/design_bd/ipshared/f0b6/hdl/verilog" "+incdir+../../../../../Design_src/bd/design_bd/ipshared/35de/hdl/verilog" "+incdir+C:/Xilinx/Vivado/2023.2/data/xilinx_vip/include" \
"../../../bd/design_bd/ip/design_bd_smartconnect_0_0/bd_0/ip/ip_4/sim/bd_b3b8_s00sic_0.sv" \

vlog -work smartconnect_v1_0  -incr -mfcu  -sv -L axi_vip_v1_1_15 -L smartconnect_v1_0 -L zynq_ultra_ps_e_vip_v1_0_15 -L xilinx_vip "+incdir+../../../../../Design_src/bd/design_bd/ipshared/ec67/hdl" "+incdir+../../../../../Design_src/bd/design_bd/ipshared/2fcd/hdl" "+incdir+../../../../../Design_src/bd/design_bd/ipshared/f0b6/hdl/verilog" "+incdir+../../../../../Design_src/bd/design_bd/ipshared/35de/hdl/verilog" "+incdir+C:/Xilinx/Vivado/2023.2/data/xilinx_vip/include" \
"../../../../../Design_src/bd/design_bd/ipshared/79ce/hdl/sc_axi2sc_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib  -incr -mfcu  -sv -L axi_vip_v1_1_15 -L smartconnect_v1_0 -L zynq_ultra_ps_e_vip_v1_0_15 -L xilinx_vip "+incdir+../../../../../Design_src/bd/design_bd/ipshared/ec67/hdl" "+incdir+../../../../../Design_src/bd/design_bd/ipshared/2fcd/hdl" "+incdir+../../../../../Design_src/bd/design_bd/ipshared/f0b6/hdl/verilog" "+incdir+../../../../../Design_src/bd/design_bd/ipshared/35de/hdl/verilog" "+incdir+C:/Xilinx/Vivado/2023.2/data/xilinx_vip/include" \
"../../../bd/design_bd/ip/design_bd_smartconnect_0_0/bd_0/ip/ip_5/sim/bd_b3b8_s00a2s_0.sv" \

vlog -work smartconnect_v1_0  -incr -mfcu  -sv -L axi_vip_v1_1_15 -L smartconnect_v1_0 -L zynq_ultra_ps_e_vip_v1_0_15 -L xilinx_vip "+incdir+../../../../../Design_src/bd/design_bd/ipshared/ec67/hdl" "+incdir+../../../../../Design_src/bd/design_bd/ipshared/2fcd/hdl" "+incdir+../../../../../Design_src/bd/design_bd/ipshared/f0b6/hdl/verilog" "+incdir+../../../../../Design_src/bd/design_bd/ipshared/35de/hdl/verilog" "+incdir+C:/Xilinx/Vivado/2023.2/data/xilinx_vip/include" \
"../../../../../Design_src/bd/design_bd/ipshared/35de/hdl/sc_node_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib  -incr -mfcu  -sv -L axi_vip_v1_1_15 -L smartconnect_v1_0 -L zynq_ultra_ps_e_vip_v1_0_15 -L xilinx_vip "+incdir+../../../../../Design_src/bd/design_bd/ipshared/ec67/hdl" "+incdir+../../../../../Design_src/bd/design_bd/ipshared/2fcd/hdl" "+incdir+../../../../../Design_src/bd/design_bd/ipshared/f0b6/hdl/verilog" "+incdir+../../../../../Design_src/bd/design_bd/ipshared/35de/hdl/verilog" "+incdir+C:/Xilinx/Vivado/2023.2/data/xilinx_vip/include" \
"../../../bd/design_bd/ip/design_bd_smartconnect_0_0/bd_0/ip/ip_6/sim/bd_b3b8_sarn_0.sv" \
"../../../bd/design_bd/ip/design_bd_smartconnect_0_0/bd_0/ip/ip_7/sim/bd_b3b8_srn_0.sv" \
"../../../bd/design_bd/ip/design_bd_smartconnect_0_0/bd_0/ip/ip_8/sim/bd_b3b8_sawn_0.sv" \
"../../../bd/design_bd/ip/design_bd_smartconnect_0_0/bd_0/ip/ip_9/sim/bd_b3b8_swn_0.sv" \
"../../../bd/design_bd/ip/design_bd_smartconnect_0_0/bd_0/ip/ip_10/sim/bd_b3b8_sbn_0.sv" \

vlog -work smartconnect_v1_0  -incr -mfcu  -sv -L axi_vip_v1_1_15 -L smartconnect_v1_0 -L zynq_ultra_ps_e_vip_v1_0_15 -L xilinx_vip "+incdir+../../../../../Design_src/bd/design_bd/ipshared/ec67/hdl" "+incdir+../../../../../Design_src/bd/design_bd/ipshared/2fcd/hdl" "+incdir+../../../../../Design_src/bd/design_bd/ipshared/f0b6/hdl/verilog" "+incdir+../../../../../Design_src/bd/design_bd/ipshared/35de/hdl/verilog" "+incdir+C:/Xilinx/Vivado/2023.2/data/xilinx_vip/include" \
"../../../../../Design_src/bd/design_bd/ipshared/ebf7/hdl/sc_sc2axi_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib  -incr -mfcu  -sv -L axi_vip_v1_1_15 -L smartconnect_v1_0 -L zynq_ultra_ps_e_vip_v1_0_15 -L xilinx_vip "+incdir+../../../../../Design_src/bd/design_bd/ipshared/ec67/hdl" "+incdir+../../../../../Design_src/bd/design_bd/ipshared/2fcd/hdl" "+incdir+../../../../../Design_src/bd/design_bd/ipshared/f0b6/hdl/verilog" "+incdir+../../../../../Design_src/bd/design_bd/ipshared/35de/hdl/verilog" "+incdir+C:/Xilinx/Vivado/2023.2/data/xilinx_vip/include" \
"../../../bd/design_bd/ip/design_bd_smartconnect_0_0/bd_0/ip/ip_11/sim/bd_b3b8_m00s2a_0.sv" \

vlog -work smartconnect_v1_0  -incr -mfcu  -sv -L axi_vip_v1_1_15 -L smartconnect_v1_0 -L zynq_ultra_ps_e_vip_v1_0_15 -L xilinx_vip "+incdir+../../../../../Design_src/bd/design_bd/ipshared/ec67/hdl" "+incdir+../../../../../Design_src/bd/design_bd/ipshared/2fcd/hdl" "+incdir+../../../../../Design_src/bd/design_bd/ipshared/f0b6/hdl/verilog" "+incdir+../../../../../Design_src/bd/design_bd/ipshared/35de/hdl/verilog" "+incdir+C:/Xilinx/Vivado/2023.2/data/xilinx_vip/include" \
"../../../../../Design_src/bd/design_bd/ipshared/6eea/hdl/sc_exit_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib  -incr -mfcu  -sv -L axi_vip_v1_1_15 -L smartconnect_v1_0 -L zynq_ultra_ps_e_vip_v1_0_15 -L xilinx_vip "+incdir+../../../../../Design_src/bd/design_bd/ipshared/ec67/hdl" "+incdir+../../../../../Design_src/bd/design_bd/ipshared/2fcd/hdl" "+incdir+../../../../../Design_src/bd/design_bd/ipshared/f0b6/hdl/verilog" "+incdir+../../../../../Design_src/bd/design_bd/ipshared/35de/hdl/verilog" "+incdir+C:/Xilinx/Vivado/2023.2/data/xilinx_vip/include" \
"../../../bd/design_bd/ip/design_bd_smartconnect_0_0/bd_0/ip/ip_12/sim/bd_b3b8_m00e_0.sv" \

vlog -work xil_defaultlib  -incr -mfcu  "+incdir+../../../../../Design_src/bd/design_bd/ipshared/ec67/hdl" "+incdir+../../../../../Design_src/bd/design_bd/ipshared/2fcd/hdl" "+incdir+../../../../../Design_src/bd/design_bd/ipshared/f0b6/hdl/verilog" "+incdir+../../../../../Design_src/bd/design_bd/ipshared/35de/hdl/verilog" "+incdir+C:/Xilinx/Vivado/2023.2/data/xilinx_vip/include" \
"../../../bd/design_bd/ip/design_bd_smartconnect_0_0/bd_0/sim/bd_b3b8.v" \

vlog -work smartconnect_v1_0  -incr -mfcu  -sv -L axi_vip_v1_1_15 -L smartconnect_v1_0 -L zynq_ultra_ps_e_vip_v1_0_15 -L xilinx_vip "+incdir+../../../../../Design_src/bd/design_bd/ipshared/ec67/hdl" "+incdir+../../../../../Design_src/bd/design_bd/ipshared/2fcd/hdl" "+incdir+../../../../../Design_src/bd/design_bd/ipshared/f0b6/hdl/verilog" "+incdir+../../../../../Design_src/bd/design_bd/ipshared/35de/hdl/verilog" "+incdir+C:/Xilinx/Vivado/2023.2/data/xilinx_vip/include" \
"../../../../../Design_src/bd/design_bd/ipshared/bd53/hdl/sc_switchboard_v1_0_vl_rfs.sv" \

vlog -work axi_register_slice_v2_1_29  -incr -mfcu  "+incdir+../../../../../Design_src/bd/design_bd/ipshared/ec67/hdl" "+incdir+../../../../../Design_src/bd/design_bd/ipshared/2fcd/hdl" "+incdir+../../../../../Design_src/bd/design_bd/ipshared/f0b6/hdl/verilog" "+incdir+../../../../../Design_src/bd/design_bd/ipshared/35de/hdl/verilog" "+incdir+C:/Xilinx/Vivado/2023.2/data/xilinx_vip/include" \
"../../../../../Design_src/bd/design_bd/ipshared/ff9f/hdl/axi_register_slice_v2_1_vl_rfs.v" \

vlog -work xil_defaultlib  -incr -mfcu  "+incdir+../../../../../Design_src/bd/design_bd/ipshared/ec67/hdl" "+incdir+../../../../../Design_src/bd/design_bd/ipshared/2fcd/hdl" "+incdir+../../../../../Design_src/bd/design_bd/ipshared/f0b6/hdl/verilog" "+incdir+../../../../../Design_src/bd/design_bd/ipshared/35de/hdl/verilog" "+incdir+C:/Xilinx/Vivado/2023.2/data/xilinx_vip/include" \
"../../../bd/design_bd/ip/design_bd_smartconnect_0_0/sim/design_bd_smartconnect_0_0.v" \

vlog -work generic_baseblocks_v2_1_1  -incr -mfcu  "+incdir+../../../../../Design_src/bd/design_bd/ipshared/ec67/hdl" "+incdir+../../../../../Design_src/bd/design_bd/ipshared/2fcd/hdl" "+incdir+../../../../../Design_src/bd/design_bd/ipshared/f0b6/hdl/verilog" "+incdir+../../../../../Design_src/bd/design_bd/ipshared/35de/hdl/verilog" "+incdir+C:/Xilinx/Vivado/2023.2/data/xilinx_vip/include" \
"../../../../../Design_src/bd/design_bd/ipshared/10ab/hdl/generic_baseblocks_v2_1_vl_rfs.v" \

vlog -work fifo_generator_v13_2_9  -incr -mfcu  "+incdir+../../../../../Design_src/bd/design_bd/ipshared/ec67/hdl" "+incdir+../../../../../Design_src/bd/design_bd/ipshared/2fcd/hdl" "+incdir+../../../../../Design_src/bd/design_bd/ipshared/f0b6/hdl/verilog" "+incdir+../../../../../Design_src/bd/design_bd/ipshared/35de/hdl/verilog" "+incdir+C:/Xilinx/Vivado/2023.2/data/xilinx_vip/include" \
"../../../../../Design_src/bd/design_bd/ipshared/ac72/simulation/fifo_generator_vlog_beh.v" \

vcom -work fifo_generator_v13_2_9  -93  \
"../../../../../Design_src/bd/design_bd/ipshared/ac72/hdl/fifo_generator_v13_2_rfs.vhd" \

vlog -work fifo_generator_v13_2_9  -incr -mfcu  "+incdir+../../../../../Design_src/bd/design_bd/ipshared/ec67/hdl" "+incdir+../../../../../Design_src/bd/design_bd/ipshared/2fcd/hdl" "+incdir+../../../../../Design_src/bd/design_bd/ipshared/f0b6/hdl/verilog" "+incdir+../../../../../Design_src/bd/design_bd/ipshared/35de/hdl/verilog" "+incdir+C:/Xilinx/Vivado/2023.2/data/xilinx_vip/include" \
"../../../../../Design_src/bd/design_bd/ipshared/ac72/hdl/fifo_generator_v13_2_rfs.v" \

vlog -work axi_data_fifo_v2_1_28  -incr -mfcu  "+incdir+../../../../../Design_src/bd/design_bd/ipshared/ec67/hdl" "+incdir+../../../../../Design_src/bd/design_bd/ipshared/2fcd/hdl" "+incdir+../../../../../Design_src/bd/design_bd/ipshared/f0b6/hdl/verilog" "+incdir+../../../../../Design_src/bd/design_bd/ipshared/35de/hdl/verilog" "+incdir+C:/Xilinx/Vivado/2023.2/data/xilinx_vip/include" \
"../../../../../Design_src/bd/design_bd/ipshared/279e/hdl/axi_data_fifo_v2_1_vl_rfs.v" \

vlog -work axi_protocol_converter_v2_1_29  -incr -mfcu  "+incdir+../../../../../Design_src/bd/design_bd/ipshared/ec67/hdl" "+incdir+../../../../../Design_src/bd/design_bd/ipshared/2fcd/hdl" "+incdir+../../../../../Design_src/bd/design_bd/ipshared/f0b6/hdl/verilog" "+incdir+../../../../../Design_src/bd/design_bd/ipshared/35de/hdl/verilog" "+incdir+C:/Xilinx/Vivado/2023.2/data/xilinx_vip/include" \
"../../../../../Design_src/bd/design_bd/ipshared/a63f/hdl/axi_protocol_converter_v2_1_vl_rfs.v" \

vlog -work xil_defaultlib  -incr -mfcu  "+incdir+../../../../../Design_src/bd/design_bd/ipshared/ec67/hdl" "+incdir+../../../../../Design_src/bd/design_bd/ipshared/2fcd/hdl" "+incdir+../../../../../Design_src/bd/design_bd/ipshared/f0b6/hdl/verilog" "+incdir+../../../../../Design_src/bd/design_bd/ipshared/35de/hdl/verilog" "+incdir+C:/Xilinx/Vivado/2023.2/data/xilinx_vip/include" \
"../../../bd/design_bd/ip/design_bd_auto_pc_0/sim/design_bd_auto_pc_0.v" \

vcom -work xil_defaultlib  -93  \
"../../../bd/design_bd/ip/design_bd_proc_sys_reset_0_0/sim/design_bd_proc_sys_reset_0_0.vhd" \

vlog -work xil_defaultlib  -incr -mfcu  "+incdir+../../../../../Design_src/bd/design_bd/ipshared/ec67/hdl" "+incdir+../../../../../Design_src/bd/design_bd/ipshared/2fcd/hdl" "+incdir+../../../../../Design_src/bd/design_bd/ipshared/f0b6/hdl/verilog" "+incdir+../../../../../Design_src/bd/design_bd/ipshared/35de/hdl/verilog" "+incdir+C:/Xilinx/Vivado/2023.2/data/xilinx_vip/include" \
"../../../bd/design_bd/sim/design_bd.v" \

vlog -work xil_defaultlib \
"glbl.v"

