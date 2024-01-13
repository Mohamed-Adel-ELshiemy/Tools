
####################################################################################
# Constraints
# ----------------------------------------------------------------------------
#
# 0. Design Compiler variables
#
# 1. Master Clock Definitions
#
# 2. Generated Clock Definitions
#
# 3. Clock Uncertainties
#
# 4. Clock Latencies 
#
# 5. Clock Relationships
#
# 6. set input/output delay on ports
#
# 7. Driving cells
#
# 8. Output load

####################################################################################
           #########################################################
                  #### Section 0 : DC Variables ####
           #########################################################
#################################################################################### 

# Prevent assign statements in the generated netlist (must be applied before compile command)
set_fix_multiple_port_nets -all -buffer_constants -feedthroughs

####################################################################################
           #########################################################
                  #### Section 1 : Clock Definition ####
           #########################################################
#################################################################################### 
# 1. Master Clock Definitions 
# 2. Generated Clock Definitions
# 3. Clock Latencies
# 4. Clock Uncertainties
# 4. Clock Transitions
####################################################################################

# REF CLOCK (500 MHz)
#set CLK1_NAME REF_CLK
#set CLK1_NAME REF_CLK

#set CLK1_PER 2

# Skew
#set CLK_SETUP_SKEW 0.02
#set CLK_HOLD_SKEW 0.01

#set CLK_TRANSTION 0.01
#1. Master Clocks

#create_clock -name $CLK1_NAME -period $CLK1_PER -waveform "0 [expr $CLK1_PER/2]" [get_ports clk]

#set_clock_uncertainty -setup $CLK_SETUP_SKEW [get_clocks $CLK1_NAME]

#set_clock_transition $CLK_TRANSTION [get_clocks $CLK1_NAME]

####################################################################################
           #########################################################
             #### Section 3 : set input/output delay on ports ####
           #########################################################
####################################################################################

#Constrain Input Paths
set_input_delay 0.4

#Constrain Output Paths
set_output_delay 0.4
#[get_ports PC_Top]

####################################################################################
           #########################################################
                  #### Section 4 : Driving cells ####
           #########################################################
####################################################################################

set_driving_cell -library NangateOpenCellLibrary_ss0p95vn40c.db -lib_cell CLKBUF_X2 -pin Z [remove_from_collection [all_inputs] clk ]

####################################################################################
           #########################################################
                  #### Section 5 : Output load ####
           #########################################################
####################################################################################

set_load 50 [all_outputs]

####################################################################################
########################## Max_Area ################################################
###################################################################################
set_max_area 0

####################################################################################
           #########################################################
                 #### Section 6 : Operating Condition ####
           #########################################################
####################################################################################

# Define the Worst Library for Max(#setup) analysis
# Define the Best Library for Min(hold) analysis

set_operating_conditions -min_library "NangateOpenCellLibrary_ff1p25vn40c.db" -min "NangateOpenCellLibrary_ff1p25vn40c.db" -max_library "NangateOpenCellLibrary_ss0p95vn40c.db" -max "NangateOpenCellLibrary_ss0p95vn40c.db"

####################################################################################
           #########################################################
                  #### Section 7 : wireload Model ####
           #########################################################
####################################################################################

set_wire_load_model -name 5K_hvratio_1_1 -library NangateOpenCellLibrary_ss0p95vn40c.db

####################################################################################


