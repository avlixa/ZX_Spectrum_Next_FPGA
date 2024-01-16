onbreak {quit -f}
onerror {quit -f}

vsim -t 1ps -lib xil_defaultlib sdpbram_16k_8_opt

do {wave.do}

view wave
view structure
view signals

do {sdpbram_16k_8.udo}

run -all

quit -force
