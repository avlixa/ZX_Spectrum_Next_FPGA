onbreak {quit -f}
onerror {quit -f}

vsim -t 1ps -lib xil_defaultlib sdpram_64_9_opt

do {wave.do}

view wave
view structure
view signals

do {sdpram_64_9.udo}

run -all

quit -force
