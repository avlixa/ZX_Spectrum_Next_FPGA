#create_property iob port -type string

# Contraints de tiempo
create_clock -period 20.000 -name CLK50 [get_ports CLK50]


set_clock_groups -asynchronous -group [get_clocks CLK50] 
set_clock_groups -asynchronous -group [get_clocks -of_objects [get_pins CLK0OUT CLK1OUT]]    
set_clock_groups -asynchronous -group [get_clocks -of_objects [get_pins CLK2OUT]] -group [get_clocks -of_objects [get_pins CLK3OUT]]
set_clock_groups -asynchronous  -group [get_clocks -of_objects [get_pins CLK4OUT CLK5OUT]]


#set_property IOB TRUE [all_inputs]
#set_property IOB TRUE [all_outputs]

set_property BITSTREAM.CONFIG.SPI_32BIT_ADDR YES [current_design]
set_property BITSTREAM.CONFIG.SPI_BUSWIDTH 4 [current_design]
set_property BITSTREAM.GENERAL.COMPRESS TRUE [current_design]
set_property BITSTREAM.CONFIG.UNUSEDPIN PULLUP [current_design]
set_property BITSTREAM.CONFIG.CONFIGRATE 33 [current_design]  
set_property CONFIG_VOLTAGE 3.3 [current_design]
set_property CFGBVS VCCO [current_design]
#set_property BITSTREAM.CONFIG.CONFIGFALLBACK ENABLE [current_design]
#set_property BITSTREAM.CONFIG.NEXT_CONFIG_ADDR 0x0100000 [current_design]


#create_property iob port -type string
#set_false_path -from [get_clocks clk1] -to [get_clocks clk2]
#set_false_path -from [get_clocks clk1] -to [get_clocks clkfx]
#set_false_path -from [get_clocks clk2] -to [get_clocks clk1]
#set_false_path -from [get_clocks clk2] -to [get_clocks clkfx]
#set_false_path -from [get_clocks clkfx] -to [get_clocks clk1]
#set_false_path -from [get_clocks clkfx] -to [get_clocks clk2]

