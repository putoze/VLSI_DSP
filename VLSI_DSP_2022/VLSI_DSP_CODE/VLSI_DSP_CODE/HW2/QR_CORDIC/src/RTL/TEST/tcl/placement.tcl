set_app_options -name time.delay_calculation_style -value zero_interconnect
report_timing
set_app_options -name time.delay_calculation_style -value auto 
check_design -checks pre_placement_stage

set_dont_touch [get_lib_cell */TIE*] false
set_lib_cell_purpose -include optimization [get_lib_cells */TIE*] 
set_app_options -name opt.tie_cell.max_fanout -value 8

set_app_options -name place.coarse.continue_on_missing_scandef -value true 
place_opt

report_timing

connect_pg_net -automatic
