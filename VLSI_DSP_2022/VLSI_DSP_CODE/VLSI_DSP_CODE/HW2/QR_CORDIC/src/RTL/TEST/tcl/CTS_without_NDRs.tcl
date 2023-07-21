check_clock_trees -clocks clk

report_constraint -all
report_timing

set_dont_touch [get_lib_cells */CLK*] false
set_dont_touch [get_lib_cells */*DFF*] false

set_lib_cell_purpose -exclude cts [get_lib_cells]         
set_lib_cell_purpose -include cts [get_lib_cells  */CLK*] 
set_lib_cell_purpose -include cts [get_lib_cells  */*DFF*]

remove_clock_tree_options -all -target_skew -target_latency

set_clock_tree_options -target_skew 0.2 -corners [all_corners]
#set_clock_treeoptions -targetlatency 0.5 -corners [all_corners]
set_max_transition 0.1 -clock_path [get_clocks] -corners [all_corners]

set_app_options -name time.remove_clock_reconvergence_pessimism -value true

## CTS flow
set_app_options -name clock_opt.flow.enable_ccd -value false
set_app_options -name cts.compile.enable_local_skew -value true
set_app_options -name cts.optimize.enable_local_skew -value true

clock_opt -to route_clock
report_timing > APR_Report/CTS.timing

## CCD flow
#set_app_options -name route.global.timing_driven -value true
#set_app_options -name route.global.crosstalk_driven -value false

#set_app_options -name clock_opt.flow.enable_ccd -value true
#clock_opt

#report_timing > APR_Report/CCD.timing

connect_pg_net -automatic
