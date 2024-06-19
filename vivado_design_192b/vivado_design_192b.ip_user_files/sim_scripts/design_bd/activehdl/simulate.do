transcript off
onbreak {quit -force}
onerror {quit -force}
transcript on

asim +access +r +m+design_bd  -L xilinx_vip -L xpm -L lib_cdc_v1_0_2 -L proc_sys_reset_v5_0_13 -L xil_defaultlib -L axi_infrastructure_v1_1_0 -L axi_vip_v1_1_14 -L zynq_ultra_ps_e_vip_v1_0_14 -L xlconstant_v1_1_7 -L smartconnect_v1_0 -L axi_register_slice_v2_1_28 -L generic_baseblocks_v2_1_0 -L fifo_generator_v13_2_8 -L axi_data_fifo_v2_1_27 -L axi_protocol_converter_v2_1_28 -L xilinx_vip -L unisims_ver -L unimacro_ver -L secureip -O2 xil_defaultlib.design_bd xil_defaultlib.glbl

do {design_bd.udo}

run

endsim

quit -force
