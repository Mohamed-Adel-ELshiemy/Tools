###################################################################

# Created by write_sdc on Thu Nov 29 11:10:50 2018

###################################################################
set sdc_version 1.9

set_units -time ns -resistance MOhm -capacitance fF -voltage V -current mA
set_max_area 0
create_clock [get_ports clk]  -period 1  -waveform {0 0.5}
set_clock_uncertainty 0.1  [get_clocks clk]
set_clock_transition -max -rise 0.001 [get_clocks clk]
set_clock_transition -max -fall 0.001 [get_clocks clk]
set_clock_transition -min -rise 0.001 [get_clocks clk]
set_clock_transition -min -fall 0.001 [get_clocks clk]
set_false_path -hold   -from [get_ports Reset]
set_false_path -hold   -to [list [get_ports {Count_out[3]}] [get_ports {Count_out[2]}] [get_ports    \
{Count_out[1]}] [get_ports {Count_out[0]}]]
set_input_delay -clock clk  -max 0.3  [get_ports Reset]
set_output_delay -clock clk  -max 0.3  [get_ports {Count_out[3]}]
set_output_delay -clock clk  -max 0.3  [get_ports {Count_out[2]}]
set_output_delay -clock clk  -max 0.3  [get_ports {Count_out[1]}]
set_output_delay -clock clk  -max 0.3  [get_ports {Count_out[0]}]
