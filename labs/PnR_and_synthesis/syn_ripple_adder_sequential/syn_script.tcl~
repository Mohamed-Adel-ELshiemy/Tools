
########################### Define Top Module ############################
                                                   
set top_module Topmodule_Rip

##################### Define Working Library Directory ######################
                                                   
define_design_lib work -path ./work

############################# Formality Setup File ##########################
                                                   
set_svf $top_module.svf

################## Design Compiler Library Files #setup ######################

puts "###########################################"
puts "#      #setting Design Libraries          #"
puts "###########################################"

#Add the path of the libraries and RTL files to the search_path variable
lappend search_path /home/standard_cell_libraries/NangateOpenCellLibrary_PDKv1_3_v2010_12/lib/Front_End/Liberty/NLDM
lappend search_path /home/ahesham/Desktop/PnR and synthesis/syn_ripple_adder_sequential/verilog


set SSLIB "NangateOpenCellLibrary_ss0p95vn40c.db"
#set TTLIB "scmetro_tsmc_cl013g_rvt_tt_1p2v_25c.db"
set FFLIB "NangateOpenCellLibrary_ss0p95vn40c.db"

## Standard Cell libraries 
set target_library [list $SSLIB ]
set target_library [list $FFLIB ]

## Standard Cell & Hard Macros libraries 
set link_library [list * $SSLIB ]  
set link_library [list * $FFLIB ]  

######################## Reading RTL Files #################################

puts "###########################################"
puts "#             Reading RTL Files           #"
puts "###########################################"

set file_format verilog

read_file -format $file_format Topmodule_Rip.v
read_file -format $file_format flip_flop_M.v
read_file -format $file_format flip_flop_S.v


###################### Defining toplevel ###################################

current_design $top_module

#################### Liniking All The Design Parts #########################
puts "###############################################"
puts "######## Liniking All The Design Parts ########"
puts "###############################################"

link 

#################### checking All The Design Parts #########################
puts "###############################################"
puts "######## checking design consistency ##########"
puts "###############################################"

check_design

#################### Define Design Constraints #########################
puts "###############################################"
puts "############ Design Constraints #### ##########"
puts "###############################################"

source ./constraint.tcl

###################### Mapping and optimization ########################
puts "###############################################"
puts "########## Mapping & Optimization #############"
puts "###############################################"

compile 

#############################################################################
# Write out files
#############################################################################

write_file -format verilog -hierarchy -output results/$top_module.ddc
write_file -format verilog -hierarchy -output results/$top_module.v
write_sdf  results/$top_module.sdf
write_sdc  -nosplit results/$top_module.sdc

####################### reporting ##########################################

report_area -hierarchy > reports/area.rpt
report_power -hierarchy > reports/power.rpt
report_timing -delay_type min -max_paths 60 > reports/hold.rpt
report_timing -delay_type max -max_paths 60 > reports/setup.rpt
report_clock -attributes > reports/clocks.rpt
report_constraint -all_violators -nosplit > reports/constraints_violated.rpt

#gui_start 

#exit
