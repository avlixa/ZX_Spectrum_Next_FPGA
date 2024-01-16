onbreak {quit -f}
onerror {quit -f}

vsim -t 1ps -lib xil_defaultlib spram_320_9_opt

do {wave.do}

view wave
view structure
view signals

do {spram_320_9.udo}

run -all

quit -force
