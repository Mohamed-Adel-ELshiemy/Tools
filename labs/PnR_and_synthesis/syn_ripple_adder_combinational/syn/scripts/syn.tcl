
########################### Define Top Module ############################
                                                   
set design Ripple_Adder

##################### Define Working Library Directory ######################
                                                   
sh rm -rf work
sh mkdir -p work
define_design_lib work -path ./work

############################# Formality Setup File ##########################
                                                   
#set_svf $top_module.svf

################## Design Compiler Library Files #setup ######################

puts "###########################################"
puts "#      #setting Design Libraries          #"
puts "###########################################"

#Add the path of the libraries and RTL files to the search_path variable
set_app_var search_path "/home/standard_cell_libraries/NangateOpenCellLibrary_PDKv1_3_v2010_12/lib/Front_End/Liberty/NLDM"

set_app_var link_library "* NangateOpenCellLibrary_ss0p95vn40c.db"
set_app_var target_library "NangateOpenCellLibrary_ss0p95vn40c.db"


######################## Reading RTL Files #################################

puts "###########################################"
puts "#             Reading RTL Files           #"
puts "###########################################"

analyze -library work -format verilog ../rtl/${design}.v
analyze -library work -format verilog ../rtl/*.v
elaborate $design -lib work

###################### Defining toplevel ###################################

current_design

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

source ./cons/cons.tcl

###################### Mapping and optimization ########################
puts "###############################################"
puts "########## Mapping & Optimization #############"
puts "###############################################"

compile -map_effort medium

#############################################################################
# Write out files
#############################################################################

write_sdc  output/${design}.sdc 

define_name_rules  no_case -case_insensitive
change_names -rule no_case -hierarchy
change_names -rule verilog -hierarchy
set verilogout_no_tri	 true
set verilogout_equation  false

write -hierarchy -format verilog -output output/${design}.v 
write -f ddc -hierarchy -output output/${design}.ddc   


####################### reporting ##########################################

report_area -hierarchy > report/area.rpt
report_power -hierarchy > report/power.rpt
report_timing -delay_type min -max_paths 20 > report/hold.rpt
report_timing -delay_type max -max_paths 20 > report/setup.rpt
report_clock -attributes > report/clocks.rpt
report_constraint -all_violators -nosplit > report/constraints_violated.rpt
report_cell > ./report/synth_cells.rpt
report_qor  > ./report/synth_qor.rpt
report_resources > ./report/synth_resources.rpt

#gui_start 

#exit
