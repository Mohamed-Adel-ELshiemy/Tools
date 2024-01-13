# reset
set_fp_rail_constraints -remove_all_layers
remove_fp_virtual_pad -all              
set_fp_rail_strategy -reset             
set_fp_block_ring_constraints -remove_all
set_fp_rail_region_constraints  -remove 
# global constraints
set_fp_rail_constraints -set_global 

# layer constraints
set_fp_rail_constraints -add_layer  -layer metal10 -direction vertical -max_strap 128 -min_strap 20 -max_width 5.000000 -min_width 2.500000 -spacing minimum 
set_fp_rail_constraints -add_layer  -layer metal9 -direction horizontal -max_strap 128 -min_strap 20 -max_width 5.000000 -min_width 2.500000 -spacing minimum 
set_fp_rail_constraints -add_layer  -layer metal8 -direction vertical -max_strap 128 -min_strap 20 -max_width 5.000000 -min_width 2.500000 -spacing minimum 
set_fp_rail_constraints -add_layer  -layer metal7 -direction horizontal -max_strap 128 -min_strap 20 -max_width 5.000000 -min_width 2.500000 -spacing minimum 
set_fp_rail_constraints -add_layer  -layer metal6 -direction vertical -max_strap 128 -min_strap 20 -max_width 5.000000 -min_width 2.500000 -spacing minimum 

# ring and strap constraints
set_fp_rail_constraints  -set_ring -nets { VDD VSS } -horizontal_ring_layer { metal7,metal9 } -vertical_ring_layer { metal8,metal10 } -ring_width 5.000000 -ring_spacing 0.800000 -ring_offset 0.800000 -extend_strap core_ring 

# strategies
set_fp_rail_strategy  -use_tluplus true 

# block ring constraints

# regions

# virtual pads
create_fp_virtual_pad -net VSS -point { 77.166496 387.600006 }
create_fp_virtual_pad -net VSS -point { 0.674500 376.441986 }
create_fp_virtual_pad -net VSS -point { 408.149506 371.045013 }
create_fp_virtual_pad -net VSS -point { 407.474487 259.056488 }
create_fp_virtual_pad -net VSS -point { -0.674500 263.104401 }
create_fp_virtual_pad -net VSS -point { 0.000000 146.393997 }
create_fp_virtual_pad -net VSS -point { 406.799988 138.973007 }
create_fp_virtual_pad -net VSS -point { 408.149506 30.358000 }
create_fp_virtual_pad -net VSS -point { 0.000000 30.358000 }
create_fp_virtual_pad -net VSS -point { 325.170013 0.000000 }
create_fp_virtual_pad -net VSS -point { 232.746506 -1.349000 }
create_fp_virtual_pad -net VSS -point { 124.131500 -1.349000 }
create_fp_virtual_pad -net VSS -point { 120.083504 403.427002 }
create_fp_virtual_pad -net VSS -point { 222.626999 406.799988 }
create_fp_virtual_pad -net VSS -point { 323.146515 406.799988 }
create_fp_virtual_pad -net VDD -point { 0.000000 321.122498 }
create_fp_virtual_pad -net VDD -point { 0.674500 204.412003 }
create_fp_virtual_pad -net VDD -point { 0.000000 87.701500 }
create_fp_virtual_pad -net VDD -point { 407.474487 87.027000 }
create_fp_virtual_pad -net VDD -point { 408.149506 204.412003 }
create_fp_virtual_pad -net VDD -point { 407.474487 319.773010 }
create_fp_virtual_pad -net VDD -point { 380.489502 -1.349000 }
create_fp_virtual_pad -net VDD -point { 278.621002 0.000000 }
create_fp_virtual_pad -net VDD -point { 174.054001 -0.674500 }
create_fp_virtual_pad -net VDD -point { 60.716499 -2.024000 }
create_fp_virtual_pad -net VDD -point { 62.740501 405.450500 }
create_fp_virtual_pad -net VDD -point { 175.403000 406.125488 }
create_fp_virtual_pad -net VDD -point { 278.621002 407.474487 }
create_fp_virtual_pad -net VDD -point { 377.116394 407.474487 }

# synthesize_fp_rail 
synthesize_fp_rail -nets { VDD VSS } -voltage_supply 1.100000 -power_budget 500.000000  -target_voltage_drop 22.000000  
