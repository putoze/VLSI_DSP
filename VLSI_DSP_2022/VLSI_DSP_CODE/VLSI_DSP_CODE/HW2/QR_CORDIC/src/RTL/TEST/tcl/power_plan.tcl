
set_dont_touch [get_lib_cells */TIE*] false
set_lib_cell_purpose -include optimization [get_lib_cells */TIE*]

initialize_floorplan -core_utilization 0.5 -core_offset {40}

set_app_options -name place.coarse.fix_hard_macros -value true
set_app_options -name plan.place.auto_create_blockages -value auto
create_placement -floorplan
place_pins -self

connect_pg_net -automatic

set_pg_via_master_rule -offset {0.1 0.1} -offset_start center -contact_code via7 -cut_spacing {0.54 0.54} pgvia

create_pg_ring_pattern ring_pattern_7_8 -nets {VDD VSS} -horizontal_layer METAL7 -vertical_layer METAL8 -horizontal_width {8} -vertical_width \
{8} -horizontal_spacing {2} -vertical_spacing {2} -corner_bridge true -via_rule {{intersection : all} {via_master : pgvia}}

set_pg_strategy strategy_ring_7_8 -core -pattern {{name : ring_pattern_7_8}{nets : {VDD VSS}}{offset : {10 10}}}
compile_pg -strategies strategy_ring_7_8

create_pg_mesh_pattern pg_mesh_7_8 -layers {{{horizontal_layer : METAL7} {width : 1}
{spacing : minimum} {pitch : 20} {trim : true}} {{vertical_layer : METAL8} {width : 1} {spacing : minimum} {pitch : 20} {trim : true}}} -via_rule  \
{{intersection : all} {via_master : pgvia}}

set_pg_strategy strategy_mesh_7_8 -core -pattern {{name : pg_mesh_7_8}{nets : {VDD VSS}}} -extension {{{nets : {VDD VSS VDD VSS}}{stop : outermost_ring}}} 
set_pg_strategy_via_rule mesh_ring -via_rule {{intersection : all}{via_master : {via7}}}
compile_pg -strategies strategy_mesh_7_8 -via_rule mesh_ring

create_pg_std_cell_conn_pattern std_pattern
set_pg_strategy strategy_std_cell -core -pattern {{name : std_pattern}{nets : {VDD VSS}}} -extension {{{stop : outermost_ring}}} 
set_pg_strategy_via_rule std_ring -via_rule {{intersection : all}{via_master : {via1 via2 via3 via4 via5 via6 via7}}}
compile_pg -strategies strategy_std_cell -via_rule std_ring
