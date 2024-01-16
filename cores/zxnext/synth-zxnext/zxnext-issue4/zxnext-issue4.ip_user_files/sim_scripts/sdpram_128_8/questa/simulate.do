onbreak {quit -f}
onerror {quit -f}

vsim -t 1ps -lib xil_defaultlib sdpram_128_8_opt

do {wave.do}

view wave
view structure
view signals

do {sdpram_128_8.udo}

run -all

quit -force
