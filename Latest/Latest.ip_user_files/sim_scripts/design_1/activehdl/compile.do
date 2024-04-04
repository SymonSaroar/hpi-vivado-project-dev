transcript off
onbreak {quit -force}
onerror {quit -force}
transcript on

vlib work
vlib activehdl/xilinx_vip
vlib activehdl/xpm
vlib activehdl/axi_infrastructure_v1_1_0
vlib activehdl/axi_vip_v1_1_15
vlib activehdl/zynq_ultra_ps_e_vip_v1_0_15
vlib activehdl/xil_defaultlib
vlib activehdl/lib_cdc_v1_0_2
vlib activehdl/proc_sys_reset_v5_0_14
vlib activehdl/fifo_generator_v13_2_9
vlib activehdl/util_vector_logic_v2_0_3
vlib activehdl/xbip_utils_v3_0_11
vlib activehdl/c_reg_fd_v12_0_7
vlib activehdl/xbip_dsp48_wrapper_v3_0_5
vlib activehdl/xbip_pipe_v3_0_7
vlib activehdl/xbip_dsp48_addsub_v3_0_7
vlib activehdl/xbip_addsub_v3_0_7
vlib activehdl/c_addsub_v12_0_16
vlib activehdl/c_gate_bit_v12_0_7
vlib activehdl/xbip_counter_v3_0_7
vlib activehdl/c_counter_binary_v12_0_17
vlib activehdl/util_reduced_logic_v2_0_5
vlib activehdl/gigantic_mux
vlib activehdl/xlconcat_v2_1_5

vmap xilinx_vip activehdl/xilinx_vip
vmap xpm activehdl/xpm
vmap axi_infrastructure_v1_1_0 activehdl/axi_infrastructure_v1_1_0
vmap axi_vip_v1_1_15 activehdl/axi_vip_v1_1_15
vmap zynq_ultra_ps_e_vip_v1_0_15 activehdl/zynq_ultra_ps_e_vip_v1_0_15
vmap xil_defaultlib activehdl/xil_defaultlib
vmap lib_cdc_v1_0_2 activehdl/lib_cdc_v1_0_2
vmap proc_sys_reset_v5_0_14 activehdl/proc_sys_reset_v5_0_14
vmap fifo_generator_v13_2_9 activehdl/fifo_generator_v13_2_9
vmap util_vector_logic_v2_0_3 activehdl/util_vector_logic_v2_0_3
vmap xbip_utils_v3_0_11 activehdl/xbip_utils_v3_0_11
vmap c_reg_fd_v12_0_7 activehdl/c_reg_fd_v12_0_7
vmap xbip_dsp48_wrapper_v3_0_5 activehdl/xbip_dsp48_wrapper_v3_0_5
vmap xbip_pipe_v3_0_7 activehdl/xbip_pipe_v3_0_7
vmap xbip_dsp48_addsub_v3_0_7 activehdl/xbip_dsp48_addsub_v3_0_7
vmap xbip_addsub_v3_0_7 activehdl/xbip_addsub_v3_0_7
vmap c_addsub_v12_0_16 activehdl/c_addsub_v12_0_16
vmap c_gate_bit_v12_0_7 activehdl/c_gate_bit_v12_0_7
vmap xbip_counter_v3_0_7 activehdl/xbip_counter_v3_0_7
vmap c_counter_binary_v12_0_17 activehdl/c_counter_binary_v12_0_17
vmap util_reduced_logic_v2_0_5 activehdl/util_reduced_logic_v2_0_5
vmap gigantic_mux activehdl/gigantic_mux
vmap xlconcat_v2_1_5 activehdl/xlconcat_v2_1_5

vlog -work xilinx_vip  -sv2k12 "+incdir+C:/Xilinx/Vivado/2023.2/data/xilinx_vip/include" -l xilinx_vip -l xpm -l axi_infrastructure_v1_1_0 -l axi_vip_v1_1_15 -l zynq_ultra_ps_e_vip_v1_0_15 -l xil_defaultlib -l lib_cdc_v1_0_2 -l proc_sys_reset_v5_0_14 -l fifo_generator_v13_2_9 -l util_vector_logic_v2_0_3 -l xbip_utils_v3_0_11 -l c_reg_fd_v12_0_7 -l xbip_dsp48_wrapper_v3_0_5 -l xbip_pipe_v3_0_7 -l xbip_dsp48_addsub_v3_0_7 -l xbip_addsub_v3_0_7 -l c_addsub_v12_0_16 -l c_gate_bit_v12_0_7 -l xbip_counter_v3_0_7 -l c_counter_binary_v12_0_17 -l util_reduced_logic_v2_0_5 -l gigantic_mux -l xlconcat_v2_1_5 \
"C:/Xilinx/Vivado/2023.2/data/xilinx_vip/hdl/axi4stream_vip_axi4streampc.sv" \
"C:/Xilinx/Vivado/2023.2/data/xilinx_vip/hdl/axi_vip_axi4pc.sv" \
"C:/Xilinx/Vivado/2023.2/data/xilinx_vip/hdl/xil_common_vip_pkg.sv" \
"C:/Xilinx/Vivado/2023.2/data/xilinx_vip/hdl/axi4stream_vip_pkg.sv" \
"C:/Xilinx/Vivado/2023.2/data/xilinx_vip/hdl/axi_vip_pkg.sv" \
"C:/Xilinx/Vivado/2023.2/data/xilinx_vip/hdl/axi4stream_vip_if.sv" \
"C:/Xilinx/Vivado/2023.2/data/xilinx_vip/hdl/axi_vip_if.sv" \
"C:/Xilinx/Vivado/2023.2/data/xilinx_vip/hdl/clk_vip_if.sv" \
"C:/Xilinx/Vivado/2023.2/data/xilinx_vip/hdl/rst_vip_if.sv" \

vlog -work xpm  -sv2k12 "+incdir+../../../../Latest.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../Latest.gen/sources_1/bd/design_1/ipshared/2fcd/hdl" "+incdir+C:/Xilinx/Vivado/2023.2/data/xilinx_vip/include" -l xilinx_vip -l xpm -l axi_infrastructure_v1_1_0 -l axi_vip_v1_1_15 -l zynq_ultra_ps_e_vip_v1_0_15 -l xil_defaultlib -l lib_cdc_v1_0_2 -l proc_sys_reset_v5_0_14 -l fifo_generator_v13_2_9 -l util_vector_logic_v2_0_3 -l xbip_utils_v3_0_11 -l c_reg_fd_v12_0_7 -l xbip_dsp48_wrapper_v3_0_5 -l xbip_pipe_v3_0_7 -l xbip_dsp48_addsub_v3_0_7 -l xbip_addsub_v3_0_7 -l c_addsub_v12_0_16 -l c_gate_bit_v12_0_7 -l xbip_counter_v3_0_7 -l c_counter_binary_v12_0_17 -l util_reduced_logic_v2_0_5 -l gigantic_mux -l xlconcat_v2_1_5 \
"C:/Xilinx/Vivado/2023.2/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \
"C:/Xilinx/Vivado/2023.2/data/ip/xpm/xpm_memory/hdl/xpm_memory.sv" \

vcom -work xpm -93  \
"C:/Xilinx/Vivado/2023.2/data/ip/xpm/xpm_VCOMP.vhd" \

vlog -work axi_infrastructure_v1_1_0  -v2k5 "+incdir+../../../../Latest.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../Latest.gen/sources_1/bd/design_1/ipshared/2fcd/hdl" "+incdir+C:/Xilinx/Vivado/2023.2/data/xilinx_vip/include" -l xilinx_vip -l xpm -l axi_infrastructure_v1_1_0 -l axi_vip_v1_1_15 -l zynq_ultra_ps_e_vip_v1_0_15 -l xil_defaultlib -l lib_cdc_v1_0_2 -l proc_sys_reset_v5_0_14 -l fifo_generator_v13_2_9 -l util_vector_logic_v2_0_3 -l xbip_utils_v3_0_11 -l c_reg_fd_v12_0_7 -l xbip_dsp48_wrapper_v3_0_5 -l xbip_pipe_v3_0_7 -l xbip_dsp48_addsub_v3_0_7 -l xbip_addsub_v3_0_7 -l c_addsub_v12_0_16 -l c_gate_bit_v12_0_7 -l xbip_counter_v3_0_7 -l c_counter_binary_v12_0_17 -l util_reduced_logic_v2_0_5 -l gigantic_mux -l xlconcat_v2_1_5 \
"../../../../Latest.gen/sources_1/bd/design_1/ipshared/ec67/hdl/axi_infrastructure_v1_1_vl_rfs.v" \

vlog -work axi_vip_v1_1_15  -sv2k12 "+incdir+../../../../Latest.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../Latest.gen/sources_1/bd/design_1/ipshared/2fcd/hdl" "+incdir+C:/Xilinx/Vivado/2023.2/data/xilinx_vip/include" -l xilinx_vip -l xpm -l axi_infrastructure_v1_1_0 -l axi_vip_v1_1_15 -l zynq_ultra_ps_e_vip_v1_0_15 -l xil_defaultlib -l lib_cdc_v1_0_2 -l proc_sys_reset_v5_0_14 -l fifo_generator_v13_2_9 -l util_vector_logic_v2_0_3 -l xbip_utils_v3_0_11 -l c_reg_fd_v12_0_7 -l xbip_dsp48_wrapper_v3_0_5 -l xbip_pipe_v3_0_7 -l xbip_dsp48_addsub_v3_0_7 -l xbip_addsub_v3_0_7 -l c_addsub_v12_0_16 -l c_gate_bit_v12_0_7 -l xbip_counter_v3_0_7 -l c_counter_binary_v12_0_17 -l util_reduced_logic_v2_0_5 -l gigantic_mux -l xlconcat_v2_1_5 \
"../../../../Latest.gen/sources_1/bd/design_1/ipshared/5753/hdl/axi_vip_v1_1_vl_rfs.sv" \

vlog -work zynq_ultra_ps_e_vip_v1_0_15  -sv2k12 "+incdir+../../../../Latest.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../Latest.gen/sources_1/bd/design_1/ipshared/2fcd/hdl" "+incdir+C:/Xilinx/Vivado/2023.2/data/xilinx_vip/include" -l xilinx_vip -l xpm -l axi_infrastructure_v1_1_0 -l axi_vip_v1_1_15 -l zynq_ultra_ps_e_vip_v1_0_15 -l xil_defaultlib -l lib_cdc_v1_0_2 -l proc_sys_reset_v5_0_14 -l fifo_generator_v13_2_9 -l util_vector_logic_v2_0_3 -l xbip_utils_v3_0_11 -l c_reg_fd_v12_0_7 -l xbip_dsp48_wrapper_v3_0_5 -l xbip_pipe_v3_0_7 -l xbip_dsp48_addsub_v3_0_7 -l xbip_addsub_v3_0_7 -l c_addsub_v12_0_16 -l c_gate_bit_v12_0_7 -l xbip_counter_v3_0_7 -l c_counter_binary_v12_0_17 -l util_reduced_logic_v2_0_5 -l gigantic_mux -l xlconcat_v2_1_5 \
"../../../../Latest.gen/sources_1/bd/design_1/ipshared/2fcd/hdl/zynq_ultra_ps_e_vip_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../Latest.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../Latest.gen/sources_1/bd/design_1/ipshared/2fcd/hdl" "+incdir+C:/Xilinx/Vivado/2023.2/data/xilinx_vip/include" -l xilinx_vip -l xpm -l axi_infrastructure_v1_1_0 -l axi_vip_v1_1_15 -l zynq_ultra_ps_e_vip_v1_0_15 -l xil_defaultlib -l lib_cdc_v1_0_2 -l proc_sys_reset_v5_0_14 -l fifo_generator_v13_2_9 -l util_vector_logic_v2_0_3 -l xbip_utils_v3_0_11 -l c_reg_fd_v12_0_7 -l xbip_dsp48_wrapper_v3_0_5 -l xbip_pipe_v3_0_7 -l xbip_dsp48_addsub_v3_0_7 -l xbip_addsub_v3_0_7 -l c_addsub_v12_0_16 -l c_gate_bit_v12_0_7 -l xbip_counter_v3_0_7 -l c_counter_binary_v12_0_17 -l util_reduced_logic_v2_0_5 -l gigantic_mux -l xlconcat_v2_1_5 \
"../../../bd/design_1/ip/design_1_zynq_ultra_ps_e_0_0/sim/design_1_zynq_ultra_ps_e_0_0_vip_wrapper.v" \

vcom -work lib_cdc_v1_0_2 -93  \
"../../../../Latest.gen/sources_1/bd/design_1/ipshared/ef1e/hdl/lib_cdc_v1_0_rfs.vhd" \

vcom -work proc_sys_reset_v5_0_14 -93  \
"../../../../Latest.gen/sources_1/bd/design_1/ipshared/408c/hdl/proc_sys_reset_v5_0_vh_rfs.vhd" \

vcom -work xil_defaultlib -93  \
"../../../bd/design_1/ip/design_1_rst_ps8_0_99M_0/sim/design_1_rst_ps8_0_99M_0.vhd" \

vlog -work fifo_generator_v13_2_9  -v2k5 "+incdir+../../../../Latest.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../Latest.gen/sources_1/bd/design_1/ipshared/2fcd/hdl" "+incdir+C:/Xilinx/Vivado/2023.2/data/xilinx_vip/include" -l xilinx_vip -l xpm -l axi_infrastructure_v1_1_0 -l axi_vip_v1_1_15 -l zynq_ultra_ps_e_vip_v1_0_15 -l xil_defaultlib -l lib_cdc_v1_0_2 -l proc_sys_reset_v5_0_14 -l fifo_generator_v13_2_9 -l util_vector_logic_v2_0_3 -l xbip_utils_v3_0_11 -l c_reg_fd_v12_0_7 -l xbip_dsp48_wrapper_v3_0_5 -l xbip_pipe_v3_0_7 -l xbip_dsp48_addsub_v3_0_7 -l xbip_addsub_v3_0_7 -l c_addsub_v12_0_16 -l c_gate_bit_v12_0_7 -l xbip_counter_v3_0_7 -l c_counter_binary_v12_0_17 -l util_reduced_logic_v2_0_5 -l gigantic_mux -l xlconcat_v2_1_5 \
"../../../../Latest.gen/sources_1/bd/design_1/ipshared/ac72/simulation/fifo_generator_vlog_beh.v" \

vcom -work fifo_generator_v13_2_9 -93  \
"../../../../Latest.gen/sources_1/bd/design_1/ipshared/ac72/hdl/fifo_generator_v13_2_rfs.vhd" \

vlog -work fifo_generator_v13_2_9  -v2k5 "+incdir+../../../../Latest.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../Latest.gen/sources_1/bd/design_1/ipshared/2fcd/hdl" "+incdir+C:/Xilinx/Vivado/2023.2/data/xilinx_vip/include" -l xilinx_vip -l xpm -l axi_infrastructure_v1_1_0 -l axi_vip_v1_1_15 -l zynq_ultra_ps_e_vip_v1_0_15 -l xil_defaultlib -l lib_cdc_v1_0_2 -l proc_sys_reset_v5_0_14 -l fifo_generator_v13_2_9 -l util_vector_logic_v2_0_3 -l xbip_utils_v3_0_11 -l c_reg_fd_v12_0_7 -l xbip_dsp48_wrapper_v3_0_5 -l xbip_pipe_v3_0_7 -l xbip_dsp48_addsub_v3_0_7 -l xbip_addsub_v3_0_7 -l c_addsub_v12_0_16 -l c_gate_bit_v12_0_7 -l xbip_counter_v3_0_7 -l c_counter_binary_v12_0_17 -l util_reduced_logic_v2_0_5 -l gigantic_mux -l xlconcat_v2_1_5 \
"../../../../Latest.gen/sources_1/bd/design_1/ipshared/ac72/hdl/fifo_generator_v13_2_rfs.v" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../Latest.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../Latest.gen/sources_1/bd/design_1/ipshared/2fcd/hdl" "+incdir+C:/Xilinx/Vivado/2023.2/data/xilinx_vip/include" -l xilinx_vip -l xpm -l axi_infrastructure_v1_1_0 -l axi_vip_v1_1_15 -l zynq_ultra_ps_e_vip_v1_0_15 -l xil_defaultlib -l lib_cdc_v1_0_2 -l proc_sys_reset_v5_0_14 -l fifo_generator_v13_2_9 -l util_vector_logic_v2_0_3 -l xbip_utils_v3_0_11 -l c_reg_fd_v12_0_7 -l xbip_dsp48_wrapper_v3_0_5 -l xbip_pipe_v3_0_7 -l xbip_dsp48_addsub_v3_0_7 -l xbip_addsub_v3_0_7 -l c_addsub_v12_0_16 -l c_gate_bit_v12_0_7 -l xbip_counter_v3_0_7 -l c_counter_binary_v12_0_17 -l util_reduced_logic_v2_0_5 -l gigantic_mux -l xlconcat_v2_1_5 \
"../../../bd/design_1/ip/design_1_fifo_generator_0_0/sim/design_1_fifo_generator_0_0.v" \

vlog -work util_vector_logic_v2_0_3  -v2k5 "+incdir+../../../../Latest.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../Latest.gen/sources_1/bd/design_1/ipshared/2fcd/hdl" "+incdir+C:/Xilinx/Vivado/2023.2/data/xilinx_vip/include" -l xilinx_vip -l xpm -l axi_infrastructure_v1_1_0 -l axi_vip_v1_1_15 -l zynq_ultra_ps_e_vip_v1_0_15 -l xil_defaultlib -l lib_cdc_v1_0_2 -l proc_sys_reset_v5_0_14 -l fifo_generator_v13_2_9 -l util_vector_logic_v2_0_3 -l xbip_utils_v3_0_11 -l c_reg_fd_v12_0_7 -l xbip_dsp48_wrapper_v3_0_5 -l xbip_pipe_v3_0_7 -l xbip_dsp48_addsub_v3_0_7 -l xbip_addsub_v3_0_7 -l c_addsub_v12_0_16 -l c_gate_bit_v12_0_7 -l xbip_counter_v3_0_7 -l c_counter_binary_v12_0_17 -l util_reduced_logic_v2_0_5 -l gigantic_mux -l xlconcat_v2_1_5 \
"../../../../Latest.gen/sources_1/bd/design_1/ipshared/5e7b/hdl/util_vector_logic_v2_0_vl_rfs.v" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../Latest.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../Latest.gen/sources_1/bd/design_1/ipshared/2fcd/hdl" "+incdir+C:/Xilinx/Vivado/2023.2/data/xilinx_vip/include" -l xilinx_vip -l xpm -l axi_infrastructure_v1_1_0 -l axi_vip_v1_1_15 -l zynq_ultra_ps_e_vip_v1_0_15 -l xil_defaultlib -l lib_cdc_v1_0_2 -l proc_sys_reset_v5_0_14 -l fifo_generator_v13_2_9 -l util_vector_logic_v2_0_3 -l xbip_utils_v3_0_11 -l c_reg_fd_v12_0_7 -l xbip_dsp48_wrapper_v3_0_5 -l xbip_pipe_v3_0_7 -l xbip_dsp48_addsub_v3_0_7 -l xbip_addsub_v3_0_7 -l c_addsub_v12_0_16 -l c_gate_bit_v12_0_7 -l xbip_counter_v3_0_7 -l c_counter_binary_v12_0_17 -l util_reduced_logic_v2_0_5 -l gigantic_mux -l xlconcat_v2_1_5 \
"../../../bd/design_1/ip/design_1_util_vector_logic_0_0/sim/design_1_util_vector_logic_0_0.v" \
"../../../bd/design_1/ip/design_1_util_vector_logic_1_0/sim/design_1_util_vector_logic_1_0.v" \

vcom -work xbip_utils_v3_0_11 -93  \
"../../../../Latest.gen/sources_1/bd/design_1/ipshared/9836/hdl/xbip_utils_v3_0_vh_rfs.vhd" \

vcom -work c_reg_fd_v12_0_7 -93  \
"../../../../Latest.gen/sources_1/bd/design_1/ipshared/747b/hdl/c_reg_fd_v12_0_vh_rfs.vhd" \

vcom -work xbip_dsp48_wrapper_v3_0_5 -93  \
"../../../../Latest.gen/sources_1/bd/design_1/ipshared/e5f6/hdl/xbip_dsp48_wrapper_v3_0_vh_rfs.vhd" \

vcom -work xbip_pipe_v3_0_7 -93  \
"../../../../Latest.gen/sources_1/bd/design_1/ipshared/c4f2/hdl/xbip_pipe_v3_0_vh_rfs.vhd" \

vcom -work xbip_dsp48_addsub_v3_0_7 -93  \
"../../../../Latest.gen/sources_1/bd/design_1/ipshared/9cc0/hdl/xbip_dsp48_addsub_v3_0_vh_rfs.vhd" \

vcom -work xbip_addsub_v3_0_7 -93  \
"../../../../Latest.gen/sources_1/bd/design_1/ipshared/641b/hdl/xbip_addsub_v3_0_vh_rfs.vhd" \

vcom -work c_addsub_v12_0_16 -93  \
"../../../../Latest.gen/sources_1/bd/design_1/ipshared/6c3a/hdl/c_addsub_v12_0_vh_rfs.vhd" \

vcom -work c_gate_bit_v12_0_7 -93  \
"../../../../Latest.gen/sources_1/bd/design_1/ipshared/7f53/hdl/c_gate_bit_v12_0_vh_rfs.vhd" \

vcom -work xbip_counter_v3_0_7 -93  \
"../../../../Latest.gen/sources_1/bd/design_1/ipshared/0005/hdl/xbip_counter_v3_0_vh_rfs.vhd" \

vcom -work c_counter_binary_v12_0_17 -93  \
"../../../../Latest.gen/sources_1/bd/design_1/ipshared/f6d3/hdl/c_counter_binary_v12_0_vh_rfs.vhd" \

vcom -work xil_defaultlib -93  \
"../../../bd/design_1/ip/design_1_c_counter_binary_0_0/sim/design_1_c_counter_binary_0_0.vhd" \

vlog -work util_reduced_logic_v2_0_5  -v2k5 "+incdir+../../../../Latest.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../Latest.gen/sources_1/bd/design_1/ipshared/2fcd/hdl" "+incdir+C:/Xilinx/Vivado/2023.2/data/xilinx_vip/include" -l xilinx_vip -l xpm -l axi_infrastructure_v1_1_0 -l axi_vip_v1_1_15 -l zynq_ultra_ps_e_vip_v1_0_15 -l xil_defaultlib -l lib_cdc_v1_0_2 -l proc_sys_reset_v5_0_14 -l fifo_generator_v13_2_9 -l util_vector_logic_v2_0_3 -l xbip_utils_v3_0_11 -l c_reg_fd_v12_0_7 -l xbip_dsp48_wrapper_v3_0_5 -l xbip_pipe_v3_0_7 -l xbip_dsp48_addsub_v3_0_7 -l xbip_addsub_v3_0_7 -l c_addsub_v12_0_16 -l c_gate_bit_v12_0_7 -l xbip_counter_v3_0_7 -l c_counter_binary_v12_0_17 -l util_reduced_logic_v2_0_5 -l gigantic_mux -l xlconcat_v2_1_5 \
"../../../../Latest.gen/sources_1/bd/design_1/ipshared/7747/hdl/util_reduced_logic_v2_0_vl_rfs.v" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../Latest.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../Latest.gen/sources_1/bd/design_1/ipshared/2fcd/hdl" "+incdir+C:/Xilinx/Vivado/2023.2/data/xilinx_vip/include" -l xilinx_vip -l xpm -l axi_infrastructure_v1_1_0 -l axi_vip_v1_1_15 -l zynq_ultra_ps_e_vip_v1_0_15 -l xil_defaultlib -l lib_cdc_v1_0_2 -l proc_sys_reset_v5_0_14 -l fifo_generator_v13_2_9 -l util_vector_logic_v2_0_3 -l xbip_utils_v3_0_11 -l c_reg_fd_v12_0_7 -l xbip_dsp48_wrapper_v3_0_5 -l xbip_pipe_v3_0_7 -l xbip_dsp48_addsub_v3_0_7 -l xbip_addsub_v3_0_7 -l c_addsub_v12_0_16 -l c_gate_bit_v12_0_7 -l xbip_counter_v3_0_7 -l c_counter_binary_v12_0_17 -l util_reduced_logic_v2_0_5 -l gigantic_mux -l xlconcat_v2_1_5 \
"../../../bd/design_1/ip/design_1_util_reduced_logic_0_0/sim/design_1_util_reduced_logic_0_0.v" \
"../../../bd/design_1/ip/design_1_util_vector_logic_2_0/sim/design_1_util_vector_logic_2_0.v" \
"../../../bd/design_1/ip/design_1_fifo_generator_0_1/sim/design_1_fifo_generator_0_1.v" \
"../../../bd/design_1/ip/design_1_util_vector_logic_0_1/sim/design_1_util_vector_logic_0_1.v" \
"../../../bd/design_1/ip/design_1_system_ila_0_1/bd_0/sim/bd_36cd.v" \
"../../../bd/design_1/ip/design_1_system_ila_0_1/bd_0/ip/ip_0/sim/bd_36cd_ila_lib_0.v" \

vlog -work gigantic_mux  -v2k5 "+incdir+../../../../Latest.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../Latest.gen/sources_1/bd/design_1/ipshared/2fcd/hdl" "+incdir+C:/Xilinx/Vivado/2023.2/data/xilinx_vip/include" -l xilinx_vip -l xpm -l axi_infrastructure_v1_1_0 -l axi_vip_v1_1_15 -l zynq_ultra_ps_e_vip_v1_0_15 -l xil_defaultlib -l lib_cdc_v1_0_2 -l proc_sys_reset_v5_0_14 -l fifo_generator_v13_2_9 -l util_vector_logic_v2_0_3 -l xbip_utils_v3_0_11 -l c_reg_fd_v12_0_7 -l xbip_dsp48_wrapper_v3_0_5 -l xbip_pipe_v3_0_7 -l xbip_dsp48_addsub_v3_0_7 -l xbip_addsub_v3_0_7 -l c_addsub_v12_0_16 -l c_gate_bit_v12_0_7 -l xbip_counter_v3_0_7 -l c_counter_binary_v12_0_17 -l util_reduced_logic_v2_0_5 -l gigantic_mux -l xlconcat_v2_1_5 \
"../../../../Latest.gen/sources_1/bd/design_1/ipshared/e87a/hdl/gigantic_mux_v1_0_cntr.v" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../Latest.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../Latest.gen/sources_1/bd/design_1/ipshared/2fcd/hdl" "+incdir+C:/Xilinx/Vivado/2023.2/data/xilinx_vip/include" -l xilinx_vip -l xpm -l axi_infrastructure_v1_1_0 -l axi_vip_v1_1_15 -l zynq_ultra_ps_e_vip_v1_0_15 -l xil_defaultlib -l lib_cdc_v1_0_2 -l proc_sys_reset_v5_0_14 -l fifo_generator_v13_2_9 -l util_vector_logic_v2_0_3 -l xbip_utils_v3_0_11 -l c_reg_fd_v12_0_7 -l xbip_dsp48_wrapper_v3_0_5 -l xbip_pipe_v3_0_7 -l xbip_dsp48_addsub_v3_0_7 -l xbip_addsub_v3_0_7 -l c_addsub_v12_0_16 -l c_gate_bit_v12_0_7 -l xbip_counter_v3_0_7 -l c_counter_binary_v12_0_17 -l util_reduced_logic_v2_0_5 -l gigantic_mux -l xlconcat_v2_1_5 \
"../../../bd/design_1/ip/design_1_system_ila_0_1/bd_0/ip/ip_1/bd_36cd_g_inst_0_gigantic_mux.v" \
"../../../bd/design_1/ip/design_1_system_ila_0_1/bd_0/ip/ip_1/sim/bd_36cd_g_inst_0.v" \

vlog -work xlconcat_v2_1_5  -v2k5 "+incdir+../../../../Latest.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../Latest.gen/sources_1/bd/design_1/ipshared/2fcd/hdl" "+incdir+C:/Xilinx/Vivado/2023.2/data/xilinx_vip/include" -l xilinx_vip -l xpm -l axi_infrastructure_v1_1_0 -l axi_vip_v1_1_15 -l zynq_ultra_ps_e_vip_v1_0_15 -l xil_defaultlib -l lib_cdc_v1_0_2 -l proc_sys_reset_v5_0_14 -l fifo_generator_v13_2_9 -l util_vector_logic_v2_0_3 -l xbip_utils_v3_0_11 -l c_reg_fd_v12_0_7 -l xbip_dsp48_wrapper_v3_0_5 -l xbip_pipe_v3_0_7 -l xbip_dsp48_addsub_v3_0_7 -l xbip_addsub_v3_0_7 -l c_addsub_v12_0_16 -l c_gate_bit_v12_0_7 -l xbip_counter_v3_0_7 -l c_counter_binary_v12_0_17 -l util_reduced_logic_v2_0_5 -l gigantic_mux -l xlconcat_v2_1_5 \
"../../../../Latest.gen/sources_1/bd/design_1/ipshared/147b/hdl/xlconcat_v2_1_vl_rfs.v" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../Latest.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../Latest.gen/sources_1/bd/design_1/ipshared/2fcd/hdl" "+incdir+C:/Xilinx/Vivado/2023.2/data/xilinx_vip/include" -l xilinx_vip -l xpm -l axi_infrastructure_v1_1_0 -l axi_vip_v1_1_15 -l zynq_ultra_ps_e_vip_v1_0_15 -l xil_defaultlib -l lib_cdc_v1_0_2 -l proc_sys_reset_v5_0_14 -l fifo_generator_v13_2_9 -l util_vector_logic_v2_0_3 -l xbip_utils_v3_0_11 -l c_reg_fd_v12_0_7 -l xbip_dsp48_wrapper_v3_0_5 -l xbip_pipe_v3_0_7 -l xbip_dsp48_addsub_v3_0_7 -l xbip_addsub_v3_0_7 -l c_addsub_v12_0_16 -l c_gate_bit_v12_0_7 -l xbip_counter_v3_0_7 -l c_counter_binary_v12_0_17 -l util_reduced_logic_v2_0_5 -l gigantic_mux -l xlconcat_v2_1_5 \
"../../../bd/design_1/ip/design_1_system_ila_0_1/bd_0/ip/ip_2/sim/bd_36cd_slot_0_aw_0.v" \
"../../../bd/design_1/ip/design_1_system_ila_0_1/bd_0/ip/ip_3/sim/bd_36cd_slot_0_w_0.v" \
"../../../bd/design_1/ip/design_1_system_ila_0_1/bd_0/ip/ip_4/sim/bd_36cd_slot_0_b_0.v" \
"../../../bd/design_1/ip/design_1_system_ila_0_1/bd_0/ip/ip_5/sim/bd_36cd_slot_0_ar_0.v" \
"../../../bd/design_1/ip/design_1_system_ila_0_1/bd_0/ip/ip_6/sim/bd_36cd_slot_0_r_0.v" \
"../../../bd/design_1/ip/design_1_system_ila_0_1/sim/design_1_system_ila_0_1.v" \
"../../../bd/design_1/ip/design_1_system_ila_1_1/bd_0/sim/bd_f69c.v" \
"../../../bd/design_1/ip/design_1_system_ila_1_1/bd_0/ip/ip_0/sim/bd_f69c_ila_lib_0.v" \
"../../../bd/design_1/ip/design_1_system_ila_1_1/bd_0/ip/ip_1/bd_f69c_g_inst_0_gigantic_mux.v" \
"../../../bd/design_1/ip/design_1_system_ila_1_1/bd_0/ip/ip_1/sim/bd_f69c_g_inst_0.v" \
"../../../bd/design_1/ip/design_1_system_ila_1_1/bd_0/ip/ip_2/sim/bd_f69c_slot_0_aw_0.v" \
"../../../bd/design_1/ip/design_1_system_ila_1_1/bd_0/ip/ip_3/sim/bd_f69c_slot_0_w_0.v" \
"../../../bd/design_1/ip/design_1_system_ila_1_1/bd_0/ip/ip_4/sim/bd_f69c_slot_0_b_0.v" \
"../../../bd/design_1/ip/design_1_system_ila_1_1/bd_0/ip/ip_5/sim/bd_f69c_slot_0_ar_0.v" \
"../../../bd/design_1/ip/design_1_system_ila_1_1/bd_0/ip/ip_6/sim/bd_f69c_slot_0_r_0.v" \
"../../../bd/design_1/ip/design_1_system_ila_1_1/sim/design_1_system_ila_1_1.v" \
"../../../bd/design_1/ip/design_1_util_vector_logic_4_0/sim/design_1_util_vector_logic_4_0.v" \
"../../../bd/design_1/ip/design_1_master_custom_v1_0_M_0_0/sim/design_1_master_custom_v1_0_M_0_0.v" \
"../../../bd/design_1/ip/design_1_custom_slave_v1_0_S0_0_0/sim/design_1_custom_slave_v1_0_S0_0_0.v" \

vlog -work xil_defaultlib  -sv2k12 "+incdir+../../../../Latest.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../Latest.gen/sources_1/bd/design_1/ipshared/2fcd/hdl" "+incdir+C:/Xilinx/Vivado/2023.2/data/xilinx_vip/include" -l xilinx_vip -l xpm -l axi_infrastructure_v1_1_0 -l axi_vip_v1_1_15 -l zynq_ultra_ps_e_vip_v1_0_15 -l xil_defaultlib -l lib_cdc_v1_0_2 -l proc_sys_reset_v5_0_14 -l fifo_generator_v13_2_9 -l util_vector_logic_v2_0_3 -l xbip_utils_v3_0_11 -l c_reg_fd_v12_0_7 -l xbip_dsp48_wrapper_v3_0_5 -l xbip_pipe_v3_0_7 -l xbip_dsp48_addsub_v3_0_7 -l xbip_addsub_v3_0_7 -l c_addsub_v12_0_16 -l c_gate_bit_v12_0_7 -l xbip_counter_v3_0_7 -l c_counter_binary_v12_0_17 -l util_reduced_logic_v2_0_5 -l gigantic_mux -l xlconcat_v2_1_5 \
"../../../bd/design_1/ip/design_1_axi_vip_0_0/sim/design_1_axi_vip_0_0_pkg.sv" \
"../../../bd/design_1/ip/design_1_axi_vip_0_0/sim/design_1_axi_vip_0_0.sv" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../Latest.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../Latest.gen/sources_1/bd/design_1/ipshared/2fcd/hdl" "+incdir+C:/Xilinx/Vivado/2023.2/data/xilinx_vip/include" -l xilinx_vip -l xpm -l axi_infrastructure_v1_1_0 -l axi_vip_v1_1_15 -l zynq_ultra_ps_e_vip_v1_0_15 -l xil_defaultlib -l lib_cdc_v1_0_2 -l proc_sys_reset_v5_0_14 -l fifo_generator_v13_2_9 -l util_vector_logic_v2_0_3 -l xbip_utils_v3_0_11 -l c_reg_fd_v12_0_7 -l xbip_dsp48_wrapper_v3_0_5 -l xbip_pipe_v3_0_7 -l xbip_dsp48_addsub_v3_0_7 -l xbip_addsub_v3_0_7 -l c_addsub_v12_0_16 -l c_gate_bit_v12_0_7 -l xbip_counter_v3_0_7 -l c_counter_binary_v12_0_17 -l util_reduced_logic_v2_0_5 -l gigantic_mux -l xlconcat_v2_1_5 \
"../../../bd/design_1/sim/design_1.v" \

vlog -work xil_defaultlib \
"glbl.v"

