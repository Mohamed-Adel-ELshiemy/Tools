
#Prevent assign statements in the generated netlist (must be applied before compile command)

set_fix_multiple_port_nets -all -buffer_constants -feedthroughs


create_clock -name clk -period 1 -waveform {0 0.5} [get_ports clk]

set_input_delay -max 0.3 -clock [get_clocks clk] [remove_from_collection [all_inputs] [get_ports clk]]

set_output_delay -max 0.3 -clock [get_clocks clk] [all_outputs]

set_clock_uncertainty 0.1 [get_clocks]

set_clock_transition 0.001 [get_clocks clk]

set_false_path -hold -from [remove_from_collection [all_inputs] [get_ports clk]]

set_false_path -hold -to [all_outputs]

set_max_fanout 10

set_max_transition 0.001

set_max_area 0

