
set link_path [list /home/standard_cell_libraries/NangateOpenCellLibrary_PDKv1_3_v2010_12/lib/Front_End/Liberty/NLDM/NangateOpenCellLibrary_ss0p95vn40c.db]

read_verilog [list ../PnR_and_synthesis/syn/output/johnson_counter.v ]

current_design johnson_counter

link

read_sdc ../PnR_and_synthesis/syn/output/johnson_counter.sdc

#read_parasitics .spef.max

set_case_analysis 0 [get_ports Reset]
#set_case_analysis 0 [get_ports SCANENABLE]

report_constraint -all_violators -significant_digits 4 >  ./reports_max/johnson_PT_max_violations.rpt 
report_timing -delay_type max -nworst 40 -significant_digits 4 >  ./reports_max/johnson_PT_max_timing.rpt

write_sdf ./ouputs_max/johnson_PT_max.sdf
