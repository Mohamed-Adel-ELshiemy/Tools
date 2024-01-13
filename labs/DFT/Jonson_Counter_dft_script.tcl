########## set style of dft (scan) ########################
set test_default_scan_style
#################### read verilog netlist after adding floating ports [SCANIN , SCANOUT , SCANENABLE]
read_verilog ../src/Jonson_Counter/synthesis_Jonson_Counter.v
######### read constraints ###############
read_sdc ../Jonson_Counter/outputs/Jonson_Counter.sdc

######### create clock & input delay & output delay ############
create_clock -name clk -period 1000 
set_input_delay 250  -clock clk [get_ports SCANIN]
set_input_delay 150  -clock clk [get_ports SCANENABLE]
set_output_delay 250 -clock clk [get_ports SCANOUT]

############### set load #################### 
set_load 1.16224 [get_ports SCANOUT]


############### set dft signals #############
set_dft_signal -view exist -type ScanClock -timing {45 55} -port clk
set_dft_signal -view exist -type Reset -active 1 -port rstn
set_dft_signal -view exist -type ScanEnable -active 1 -port SCANENABLE
set_dft_signal -view spec -type ScanDataIn -port SCANIN
set_dft_signal -view spec -type ScanDataOut -port SCANOUT
#######################################################

##### report dft ##############
report_dft_signal -view exist

########## 
create_test_protocol
##########

############# check drc (drc in dft that no ports is forgotten unconnected) ######################
dft_drc

######## Replace each original flip flop with a scan Flip Flop (with multiplexer - scan style) ###################
compile -scan
#############################################

################ link ###########################
link
##########################

################### keep all the standard cells without exchange for any reason even optimization ##########################
set_dft_insertion_configuration -preserve_design_name true
#########################################################


######### set number of scan chains (here only one chain / one path cover the whole circuit) #######################
set_scan_configuration -chain_count 1
######################################################


############### preview the dft commands / orders that we set before applying it and finish the design for testability ############
preview_dft
###############################################


######### apply the dft on the design #######################
insert_dft
#####################################


############# write a (.spf) file to take it and go to the ATPG to generate the automatic test patterns to apply it ##########################
############# after Manifacutring to test the chips/dies ############################
write_test_protocol -out ../Jonson_Counter/outputs/Jonson_Counter_dft.spf
####################################################################################
