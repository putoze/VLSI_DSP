create_lib QR_CORDIC.dlib -ref_libs {/usr/cad/Design_Kit/CBDK_IC_Contest_v2.5/ICC2/tsmc13gfsg.ndm 
/usr/cad/Design_Kit/CBDK_IC_Contest_v2.5/ICC2/tsmc13gfsg_physical_only.ndm} -technology {/usr/cad/Design_Kit/CBDK_IC_Contest_v2.5/ICC2/tsmc13_CIC.tf}

read_verilog -top QR_CORDIC /home/rain/QR_CORDIC/Netlist/QR_CORDIC_SYN.v

link_block

read_parasitic_tech -tlup {/usr/cad/Design_Kit/CBDK_IC_Contest_v2.5/ICC2/tluplus/t013s8mg_fsg_typical.tluplus} -layermap {/usr/cad/Design_Kit/CBDK_IC_Contest_v2.5/ICC2/tluplus/t013s8mg_fsg.map} -name typical

set_attribute [get_site_defs unit] symmetry {Y}                                        
set_attribute [get_site_defs unit] is_default true

set_attribute [get_layers {METAL1 METAL3 METAL5 METAL7}] routing_direction horizontal
set_attribute [get_layers {METAL2 METAL4 METAL6 METAL8}] routing_direction vertical  
set_ignored_layers -max_routing_layer METAL8
report_ignored_layers

create_mode func

create_corner slow
set_process_number 1
set_voltage 1.08
set_temperature 125
set_parasitic_parameters -early_spec typical -late_spec typical

create_scenario -mode func -corner slow
read_sdc -version 2.0 /home/rain/QR_CORDIC/PT/QR_CORDIC_SYN_pt.sdc  
#read_sdc -version 2.1 JAM_pr.sdc
