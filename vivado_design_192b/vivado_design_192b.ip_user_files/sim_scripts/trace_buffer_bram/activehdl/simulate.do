transcript off
onbreak {quit -force}
onerror {quit -force}
transcript on

asim +access +r +m+trace_buffer_bram  -L xilinx_vip -L xpm -L blk_mem_gen_v8_4_7 -L xil_defaultlib -L xilinx_vip -L unisims_ver -L unimacro_ver -L secureip -O5 xil_defaultlib.trace_buffer_bram xil_defaultlib.glbl

do {trace_buffer_bram.udo}

run 1000ns

endsim

quit -force
