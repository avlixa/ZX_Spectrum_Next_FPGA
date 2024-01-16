onbreak {quit -f}
onerror {quit -f}

vsim  -lib xil_defaultlib keyjoy_sdpram_64_6_opt

set NumericStdNoWarnings 1
set StdArithNoWarnings 1

do {wave.do}

view wave
view structure
view signals

do {keyjoy_sdpram_64_6.udo}

run 1000ns

quit -force
