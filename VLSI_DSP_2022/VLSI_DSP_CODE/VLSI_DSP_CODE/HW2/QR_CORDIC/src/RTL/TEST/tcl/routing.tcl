check_routability

set_app_options -name route.global.timing_driven -value true
set_app_options -name route.global.crosstalk_driven -value false
set_app_options -name route.track.timing_driven -value true
set_app_options -name route.track.crosstalk_driven -value true
set_app_options -name route.detail.timing_driven -value true
set_app_options -name route.detail.force_max_number_iterations -value false

#set_app_options -name time.si_enable_analysis -value true
#set_app_options -name ccd.post_route_buffer_removal -value true
#set_app_options -name route.detail.eco_route_use_soft_spacing_for_timing_optimization -value false
#set_app_options -name route_opt.flow.enable_ccd -value false

set_app_options -name route.common.post_detail_route_redundant_via_insertion -value medium 
set_app_options -name route.common.concurrent_redundant_via_mode -value insert_at_high_cost 
set_app_options -name route.common.concurrent_redundant_via_effort_level -value medium

route_auto
check_routes
report_timing 

connect_pg_net -automatic
