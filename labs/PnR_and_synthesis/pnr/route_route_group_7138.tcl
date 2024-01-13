set SNPS_ROUTE_AS_CHILD_START_TIME [clock seconds]
set sh_redirect_progress_messages 1
set_message_info -id LINT-22 -limit 0
set_message_info -id LINT-63 -limit 0
set_message_info -id FPHSM-0010 -limit 0
set_message_info -id LINT-25 -limit 0
set_message_info -id PNR-148 -limit 0
set_message_info -id TIM-113 -limit 0
set_message_info -id TIM-112 -limit 0
set_message_info -id RCEX-202 -limit 0
set_message_info -id RCEX-013 -limit 0
set_message_info -id RCEX-011 -limit 0
set_message_info -id PSYN-523 -limit 0
set_message_info -id PSYN-605 -limit 0
set_message_info -id DDB-74 -limit 0
set_message_info -id RCEX-015 -limit 0
set_message_info -id PSYN-111 -limit 0
set_message_info -id RCEX-019 -limit 0
set_message_info -id UID-401 -limit 0
set_message_info -id DPI-029 -limit 0
set_message_info -id VFP-415 -limit 0
set_message_info -id PSYN-1111 -limit 0
set_message_info -id PSYN-1099 -limit 0
set_message_info -id CTS-287 -limit 0
set_message_info -id PSYN-864 -limit 0
set_message_info -id HDUEDIT-011 -limit 0
set_message_info -id IFS-007 -limit 0
set_message_info -id CTS-375 -limit 0
set_message_info -id SEL-003 -limit 0
set_message_info -id RCEX-023 -limit 0
set_message_info -id UID-85 -limit 0
set_message_info -id MWDC-290 -limit 0
set_message_info -id CTS-202 -limit 0
set_message_info -id PSYN-1012 -limit 0
set_message_info -id PSYN-105 -limit 0
set_message_info -id UID-83 -limit 0
set_message_info -id PNA-067 -limit 0
set_message_info -id SEL-004 -limit 0
set_message_info -id MWDC-217 -limit 0
set_message_info -id OPT-223 -limit 0
set_message_info -id HFS-802 -limit 0
set_message_info -id FEAS-100 -limit 0
set_message_info -id UID-477 -limit 0
set_message_info -id FPHSM-1800 -limit 0
set_message_info -id FEAS-101 -limit 0
set_message_info -id MWDC-119 -limit 0
set_message_info -id PSYN-878 -limit 0
set_message_info -id MWDC-118 -limit 0
set_message_info -id TFCHK-049 -limit 0
set_message_info -id PNR-165 -limit 0
set_message_info -id VFP-425 -limit 0
set_message_info -id PNA-111 -limit 0
set_message_info -id PNR-164 -limit 0
set_message_info -id PSYN-877 -limit 0
set_message_info -id MW-348 -limit 0
set_message_info -id RCEX-141 -limit 0
set_message_info -id UIG-5 -limit 0
set_message_info -id TFCHK-084 -limit 0
set_message_info -id PSYN-476 -limit 0
set_message_info -id PNA-017 -limit 0
set_message_info -id LINT-5 -limit 0
set_message_info -id LINT-6 -limit 0
set_message_info -id CMD-007 -limit 0
set_message_info -id CTS-1121 -limit 0
set_message_info -id LINT-33 -limit 0
set_message_info -id LINT-1 -limit 0
set_message_info -id LINT-32 -limit 0
set_message_info -id LINT-2 -limit 0
set_message_info -id LINT-3 -limit 0
set_message_info -id VFP-432 -limit 0
set_message_info -id ZRT-026 -limit 0
set_message_info -id TFCHK-073 -limit 0
set_message_info -id RCEX-043 -limit 0
set_message_info -id RCEX-081 -limit 0
set_message_info -id RCEX-042 -limit 0
set_message_info -id PNA-099 -limit 0
set_message_info -id RCEX-041 -limit 0
set_message_info -id RT-066 -limit 0
set_message_info -id PNA-019 -limit 0
set_message_info -id CTS-103 -limit 0
set_message_info -id RCEX-040 -limit 0
set_message_info -id LINT-8 -limit 0
set_message_info -id CTS-352 -limit 0
set_message_info -id RCEX-047 -limit 0
set_message_info -id RT-064 -limit 0
set_message_info -id RCEX-007 -limit 0
set_message_info -id FPHSM-1829 -limit 0
set_message_info -id PSYN-260 -limit 0
set_message_info -id LINT-28 -limit 0
set_message_info -id RT-062 -limit 0
set_message_info -id PSYN-054 -limit 0
set_message_info -id PSYN-261 -limit 0
set_message_info -id DPI-030 -limit 0
set_message_info -id PSYN-052 -limit 0
set_message_info -id RCEX-008 -limit 0
set_message_info -id PSYN-266 -limit 0
set_message_info -id LINT-60 -limit 0
set_message_info -id LINT-62 -limit 0
set search_path "/home/standard_cell_libraries/NangateOpenCellLibrary_PDKv1_3_v2010_12/lib/Front_End/Liberty/NLDM     /home/mohamed/Desktop/johnson/rtl"
set physical_library ""
set target_library "NangateOpenCellLibrary_ss0p95vn40c.db"
set link_library "* NangateOpenCellLibrary_ss0p95vn40c.db"
set mw_reference_library ""
set enable_set_units FALSE 
open_mw_lib /home/ahesham/Desktop/PnR and synthesis/pnr/johnson_counter
open_working_copy_mw_cel johnson_counter -version 1
set_separate_process_options -routing false
set_parameter -module trackAssign -type real -name "noiseThreshold" -value 0.350000
set_fp_flow_strategy -plan_group_aware_routing false
route_group -all_clock_nets
pass_working_copy_mw_cel_back
set SNPS_ROUTE_AS_CHILD_END_TIME [clock seconds]
set SNPS_CPUTIME [cputime -self -child]
set SNPS_ELAPSED_TIME [expr $SNPS_ROUTE_AS_CHILD_END_TIME - $SNPS_ROUTE_AS_CHILD_START_TIME]
set SNPS_CPUTIME_hr [expr $SNPS_CPUTIME/3600.0]
set SNPS_ELAPSED_TIME_hr [expr $SNPS_ELAPSED_TIME/3600.0]
set SNPS_MEMORY_Mb [expr [mem]/1024]
set SNPS_CPU_MEM_LOG_FORMAT "%-30s CPU: %6d s (%5.2f hr) ELAPSE: %6d s (%5.2f hr) MEM-PEAK: %5lu Mb "
set SNPS_CPU_MEM_LOG_OUT [format $SNPS_CPU_MEM_LOG_FORMAT "CHILD_PROC: Router" $SNPS_CPUTIME $SNPS_CPUTIME_hr $SNPS_ELAPSED_TIME $SNPS_ELAPSED_TIME_hr $SNPS_MEMORY_Mb ]
 set fileId [open proc_end_7138 w 0600]
puts $fileId "/home/ahesham/Desktop/PnR and synthesis/pnr/route_route_group_7138.tcl $SNPS_CPU_MEM_LOG_OUT"
close $fileId
quit
