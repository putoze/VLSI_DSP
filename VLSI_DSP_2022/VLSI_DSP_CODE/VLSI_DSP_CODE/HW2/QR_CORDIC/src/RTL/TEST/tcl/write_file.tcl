
#write_gds -layer_map /cad/CBDK/CBDK_IC_Contestv2.5/ICC2/stout.map -units 1000 -merge_files ../../../../../../../cad/CBDK/CBDK_IC_Contest_v2.5/Phantom/tsmcl3gfsgfram.gds JAM.gds 
#write_verilog -exclude (empty_modules feedthrough_cells physical_only_cells} JAM_pr.v
write_verilog -top_module_first -hierarchy all Post_sim/QR_CORDIC_SYN_pr.v -exclude {filler_cells pg_netlist leaf_module_declarations}
write_sdf Post_sim/QR_CORDIC_SYN_pr.sdf
#write_sdf QR_CORDIC_SYN_pr.sdf

report_timing > APR_Report/APR.timing
report_power > APR_Report/APR.power
