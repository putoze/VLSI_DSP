###############################################################################
#
# Created by PrimeTime write_sdc on Mon Dec  5 14:25:59 2022
#
###############################################################################

set sdc_version 2.1

set_units -time ns -capacitance pF -current mA -voltage V -resistance kOhm
###############################################################################
#  
# Units
# capacitive_load_unit           : 1 pF
# current_unit                   : 0.001 A
# resistance_unit                : 1 kOhm
# time_unit                      : 1 ns
# voltage_unit                   : 1 V
###############################################################################
set_operating_conditions -analysis_type on_chip_variation  -library [get_libs \
 {slow.db:slow}] 
###############################################################################
# Clock Related Information
###############################################################################
create_clock -name clk -period 12 -waveform { 0 6 } [get_ports {clk}]
###############################################################################
# Point to Point exceptions
###############################################################################
set_max_delay  12 -from [get_ports {clk rst_n valid in[51] in[50] in[49] \
 in[48] in[47] in[46] in[45] in[44] in[43] in[42] in[41] in[40] in[39] in[38] \
 in[37] in[36] in[35] in[34] in[33] in[32] in[31] in[30] in[29] in[28] in[27] \
 in[26] in[25] in[24] in[23] in[22] in[21] in[20] in[19] in[18] in[17] in[16] \
 in[15] in[14] in[13] in[12] in[11] in[10] in[9] in[8] in[7] in[6] in[5] in[4] \
 in[3] in[2] in[1] in[0]}] -to [get_ports {out_vallid out[51] out[50] out[49] \
 out[48] out[47] out[46] out[45] out[44] out[43] out[42] out[41] out[40] \
 out[39] out[38] out[37] out[36] out[35] out[34] out[33] out[32] out[31] \
 out[30] out[29] out[28] out[27] out[26] out[25] out[24] out[23] out[22] \
 out[21] out[20] out[19] out[18] out[17] out[16] out[15] out[14] out[13] \
 out[12] out[11] out[10] out[9] out[8] out[7] out[6] out[5] out[4] out[3] \
 out[2] out[1] out[0]}]
###############################################################################
# External Delay Information
###############################################################################
set_input_delay  0 -clock [get_clocks {clk}] [get_ports {rst_n}]
set_input_delay  6 -clock [get_clocks {clk}] [get_ports {valid}]
set_input_delay  6 -clock [get_clocks {clk}] [get_ports {in[51]}]
set_input_delay  6 -clock [get_clocks {clk}] [get_ports {in[50]}]
set_input_delay  6 -clock [get_clocks {clk}] [get_ports {in[49]}]
set_input_delay  6 -clock [get_clocks {clk}] [get_ports {in[48]}]
set_input_delay  6 -clock [get_clocks {clk}] [get_ports {in[47]}]
set_input_delay  6 -clock [get_clocks {clk}] [get_ports {in[46]}]
set_input_delay  6 -clock [get_clocks {clk}] [get_ports {in[45]}]
set_input_delay  6 -clock [get_clocks {clk}] [get_ports {in[44]}]
set_input_delay  6 -clock [get_clocks {clk}] [get_ports {in[43]}]
set_input_delay  6 -clock [get_clocks {clk}] [get_ports {in[42]}]
set_input_delay  6 -clock [get_clocks {clk}] [get_ports {in[41]}]
set_input_delay  6 -clock [get_clocks {clk}] [get_ports {in[40]}]
set_input_delay  6 -clock [get_clocks {clk}] [get_ports {in[39]}]
set_input_delay  6 -clock [get_clocks {clk}] [get_ports {in[38]}]
set_input_delay  6 -clock [get_clocks {clk}] [get_ports {in[37]}]
set_input_delay  6 -clock [get_clocks {clk}] [get_ports {in[36]}]
set_input_delay  6 -clock [get_clocks {clk}] [get_ports {in[35]}]
set_input_delay  6 -clock [get_clocks {clk}] [get_ports {in[34]}]
set_input_delay  6 -clock [get_clocks {clk}] [get_ports {in[33]}]
set_input_delay  6 -clock [get_clocks {clk}] [get_ports {in[32]}]
set_input_delay  6 -clock [get_clocks {clk}] [get_ports {in[31]}]
set_input_delay  6 -clock [get_clocks {clk}] [get_ports {in[30]}]
set_input_delay  6 -clock [get_clocks {clk}] [get_ports {in[29]}]
set_input_delay  6 -clock [get_clocks {clk}] [get_ports {in[28]}]
set_input_delay  6 -clock [get_clocks {clk}] [get_ports {in[27]}]
set_input_delay  6 -clock [get_clocks {clk}] [get_ports {in[26]}]
set_input_delay  6 -clock [get_clocks {clk}] [get_ports {in[25]}]
set_input_delay  6 -clock [get_clocks {clk}] [get_ports {in[24]}]
set_input_delay  6 -clock [get_clocks {clk}] [get_ports {in[23]}]
set_input_delay  6 -clock [get_clocks {clk}] [get_ports {in[22]}]
set_input_delay  6 -clock [get_clocks {clk}] [get_ports {in[21]}]
set_input_delay  6 -clock [get_clocks {clk}] [get_ports {in[20]}]
set_input_delay  6 -clock [get_clocks {clk}] [get_ports {in[19]}]
set_input_delay  6 -clock [get_clocks {clk}] [get_ports {in[18]}]
set_input_delay  6 -clock [get_clocks {clk}] [get_ports {in[17]}]
set_input_delay  6 -clock [get_clocks {clk}] [get_ports {in[16]}]
set_input_delay  6 -clock [get_clocks {clk}] [get_ports {in[15]}]
set_input_delay  6 -clock [get_clocks {clk}] [get_ports {in[14]}]
set_input_delay  6 -clock [get_clocks {clk}] [get_ports {in[13]}]
set_input_delay  6 -clock [get_clocks {clk}] [get_ports {in[12]}]
set_input_delay  6 -clock [get_clocks {clk}] [get_ports {in[11]}]
set_input_delay  6 -clock [get_clocks {clk}] [get_ports {in[10]}]
set_input_delay  6 -clock [get_clocks {clk}] [get_ports {in[9]}]
set_input_delay  6 -clock [get_clocks {clk}] [get_ports {in[8]}]
set_input_delay  6 -clock [get_clocks {clk}] [get_ports {in[7]}]
set_input_delay  6 -clock [get_clocks {clk}] [get_ports {in[6]}]
set_input_delay  6 -clock [get_clocks {clk}] [get_ports {in[5]}]
set_input_delay  6 -clock [get_clocks {clk}] [get_ports {in[4]}]
set_input_delay  6 -clock [get_clocks {clk}] [get_ports {in[3]}]
set_input_delay  6 -clock [get_clocks {clk}] [get_ports {in[2]}]
set_input_delay  6 -clock [get_clocks {clk}] [get_ports {in[1]}]
set_input_delay  6 -clock [get_clocks {clk}] [get_ports {in[0]}]
set_output_delay  6 -clock [get_clocks {clk}] [get_ports {out_vallid}]
set_output_delay  6 -clock [get_clocks {clk}] [get_ports {out[51]}]
set_output_delay  6 -clock [get_clocks {clk}] [get_ports {out[50]}]
set_output_delay  6 -clock [get_clocks {clk}] [get_ports {out[49]}]
set_output_delay  6 -clock [get_clocks {clk}] [get_ports {out[48]}]
set_output_delay  6 -clock [get_clocks {clk}] [get_ports {out[47]}]
set_output_delay  6 -clock [get_clocks {clk}] [get_ports {out[46]}]
set_output_delay  6 -clock [get_clocks {clk}] [get_ports {out[45]}]
set_output_delay  6 -clock [get_clocks {clk}] [get_ports {out[44]}]
set_output_delay  6 -clock [get_clocks {clk}] [get_ports {out[43]}]
set_output_delay  6 -clock [get_clocks {clk}] [get_ports {out[42]}]
set_output_delay  6 -clock [get_clocks {clk}] [get_ports {out[41]}]
set_output_delay  6 -clock [get_clocks {clk}] [get_ports {out[40]}]
set_output_delay  6 -clock [get_clocks {clk}] [get_ports {out[39]}]
set_output_delay  6 -clock [get_clocks {clk}] [get_ports {out[38]}]
set_output_delay  6 -clock [get_clocks {clk}] [get_ports {out[37]}]
set_output_delay  6 -clock [get_clocks {clk}] [get_ports {out[36]}]
set_output_delay  6 -clock [get_clocks {clk}] [get_ports {out[35]}]
set_output_delay  6 -clock [get_clocks {clk}] [get_ports {out[34]}]
set_output_delay  6 -clock [get_clocks {clk}] [get_ports {out[33]}]
set_output_delay  6 -clock [get_clocks {clk}] [get_ports {out[32]}]
set_output_delay  6 -clock [get_clocks {clk}] [get_ports {out[31]}]
set_output_delay  6 -clock [get_clocks {clk}] [get_ports {out[30]}]
set_output_delay  6 -clock [get_clocks {clk}] [get_ports {out[29]}]
set_output_delay  6 -clock [get_clocks {clk}] [get_ports {out[28]}]
set_output_delay  6 -clock [get_clocks {clk}] [get_ports {out[27]}]
set_output_delay  6 -clock [get_clocks {clk}] [get_ports {out[26]}]
set_output_delay  6 -clock [get_clocks {clk}] [get_ports {out[25]}]
set_output_delay  6 -clock [get_clocks {clk}] [get_ports {out[24]}]
set_output_delay  6 -clock [get_clocks {clk}] [get_ports {out[23]}]
set_output_delay  6 -clock [get_clocks {clk}] [get_ports {out[22]}]
set_output_delay  6 -clock [get_clocks {clk}] [get_ports {out[21]}]
set_output_delay  6 -clock [get_clocks {clk}] [get_ports {out[20]}]
set_output_delay  6 -clock [get_clocks {clk}] [get_ports {out[19]}]
set_output_delay  6 -clock [get_clocks {clk}] [get_ports {out[18]}]
set_output_delay  6 -clock [get_clocks {clk}] [get_ports {out[17]}]
set_output_delay  6 -clock [get_clocks {clk}] [get_ports {out[16]}]
set_output_delay  6 -clock [get_clocks {clk}] [get_ports {out[15]}]
set_output_delay  6 -clock [get_clocks {clk}] [get_ports {out[14]}]
set_output_delay  6 -clock [get_clocks {clk}] [get_ports {out[13]}]
set_output_delay  6 -clock [get_clocks {clk}] [get_ports {out[12]}]
set_output_delay  6 -clock [get_clocks {clk}] [get_ports {out[11]}]
set_output_delay  6 -clock [get_clocks {clk}] [get_ports {out[10]}]
set_output_delay  6 -clock [get_clocks {clk}] [get_ports {out[9]}]
set_output_delay  6 -clock [get_clocks {clk}] [get_ports {out[8]}]
set_output_delay  6 -clock [get_clocks {clk}] [get_ports {out[7]}]
set_output_delay  6 -clock [get_clocks {clk}] [get_ports {out[6]}]
set_output_delay  6 -clock [get_clocks {clk}] [get_ports {out[5]}]
set_output_delay  6 -clock [get_clocks {clk}] [get_ports {out[4]}]
set_output_delay  6 -clock [get_clocks {clk}] [get_ports {out[3]}]
set_output_delay  6 -clock [get_clocks {clk}] [get_ports {out[2]}]
set_output_delay  6 -clock [get_clocks {clk}] [get_ports {out[1]}]
set_output_delay  6 -clock [get_clocks {clk}] [get_ports {out[0]}]
set_load -pin_load  0.05 [get_ports {out_vallid}]
set_load -pin_load  0.05 [get_ports {out[51]}]
set_load -pin_load  0.05 [get_ports {out[50]}]
set_load -pin_load  0.05 [get_ports {out[49]}]
set_load -pin_load  0.05 [get_ports {out[48]}]
set_load -pin_load  0.05 [get_ports {out[47]}]
set_load -pin_load  0.05 [get_ports {out[46]}]
set_load -pin_load  0.05 [get_ports {out[45]}]
set_load -pin_load  0.05 [get_ports {out[44]}]
set_load -pin_load  0.05 [get_ports {out[43]}]
set_load -pin_load  0.05 [get_ports {out[42]}]
set_load -pin_load  0.05 [get_ports {out[41]}]
set_load -pin_load  0.05 [get_ports {out[40]}]
set_load -pin_load  0.05 [get_ports {out[39]}]
set_load -pin_load  0.05 [get_ports {out[38]}]
set_load -pin_load  0.05 [get_ports {out[37]}]
set_load -pin_load  0.05 [get_ports {out[36]}]
set_load -pin_load  0.05 [get_ports {out[35]}]
set_load -pin_load  0.05 [get_ports {out[34]}]
set_load -pin_load  0.05 [get_ports {out[33]}]
set_load -pin_load  0.05 [get_ports {out[32]}]
set_load -pin_load  0.05 [get_ports {out[31]}]
set_load -pin_load  0.05 [get_ports {out[30]}]
set_load -pin_load  0.05 [get_ports {out[29]}]
set_load -pin_load  0.05 [get_ports {out[28]}]
set_load -pin_load  0.05 [get_ports {out[27]}]
set_load -pin_load  0.05 [get_ports {out[26]}]
set_load -pin_load  0.05 [get_ports {out[25]}]
set_load -pin_load  0.05 [get_ports {out[24]}]
set_load -pin_load  0.05 [get_ports {out[23]}]
set_load -pin_load  0.05 [get_ports {out[22]}]
set_load -pin_load  0.05 [get_ports {out[21]}]
set_load -pin_load  0.05 [get_ports {out[20]}]
set_load -pin_load  0.05 [get_ports {out[19]}]
set_load -pin_load  0.05 [get_ports {out[18]}]
set_load -pin_load  0.05 [get_ports {out[17]}]
set_load -pin_load  0.05 [get_ports {out[16]}]
set_load -pin_load  0.05 [get_ports {out[15]}]
set_load -pin_load  0.05 [get_ports {out[14]}]
set_load -pin_load  0.05 [get_ports {out[13]}]
set_load -pin_load  0.05 [get_ports {out[12]}]
set_load -pin_load  0.05 [get_ports {out[11]}]
set_load -pin_load  0.05 [get_ports {out[10]}]
set_load -pin_load  0.05 [get_ports {out[9]}]
set_load -pin_load  0.05 [get_ports {out[8]}]
set_load -pin_load  0.05 [get_ports {out[7]}]
set_load -pin_load  0.05 [get_ports {out[6]}]
set_load -pin_load  0.05 [get_ports {out[5]}]
set_load -pin_load  0.05 [get_ports {out[4]}]
set_load -pin_load  0.05 [get_ports {out[3]}]
set_load -pin_load  0.05 [get_ports {out[2]}]
set_load -pin_load  0.05 [get_ports {out[1]}]
set_load -pin_load  0.05 [get_ports {out[0]}]
###############################################################################
# POCV Information
###############################################################################
