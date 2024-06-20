transcript off
onbreak {quit -force}
onerror {quit -force}
transcript on

asim +access +r +m+addr_fifo  -L xilinx_vip -L xpm -L fifo_generator_v13_2_9 -L xil_defaultlib -L xilinx_vip -L unisims_ver -L unimacro_ver -L secureip -O5 xil_defaultlib.addr_fifo xil_defaultlib.glbl

do {addr_fifo.udo}

run 1000ns

endsim

quit -force
