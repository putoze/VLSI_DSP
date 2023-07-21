// This is a simple example.
// You can make a your own header file and set its path to settings.
// (Preferences > Package Settings > Verilog Gadget > Settings - User)
//
//      "header": "Packages/Verilog Gadget/template/verilog_header.v"
//
// -----------------------------------------------------------------------------
// Copyright (c) 2014-2022 All rights reserved
// -----------------------------------------------------------------------------
// Author : yongchan jeon (Kris) poucotm@gmail.com
// File   : folded.v
// Create : 2022-06-20 15:34:25
// Revise : 2022-06-20 15:34:25
// Editor : sublime text4, tab size (4)
// -----------------------------------------------------------------------------

//`define signed [7:0] M1 = {$random(1),1'd0,$urandom_range(0,63)}
//`define signed [7:0] M2 = {$random(1),1'd0,$urandom_range(0,63)}
//`define signed [7:0] M3 = {$random(1),1'd0,$urandom_range(0,63)}
//`define signed [7:0] M4 = {$random(1),1'd0,$urandom_range(0,63)}
//`define signed [7:0] M5 = {$random(1),1'd0,$urandom_range(0,63)}

module folded 
#(
parameter signed m1 = 8'b11000000,//-64
parameter signed m2 = 8'b01111111,//127
parameter signed m3 = 8'b01111110,//126
parameter signed m4 = 8'b10000001,//-127
parameter signed m5 = 8'b10000010//-126
)
(in,clk,rst_n,out);
input signed [7:0] in;
input rst_n;
input clk;
output signed [8:0] out;

//reg
reg signed [8:0] delay_1_buffer_in;
reg signed [8:0] delay_2_buffer_in;

//wire
wire signed [8:0] temp_1_wire = in + temp_2_wire;//A2
wire signed [8:0] temp_2_wire = {temp_2_wire_temp[17],temp_2_wire_temp[14:7]};
wire signed [8:0] temp_3_wire = {temp_3_wire_temp[17],temp_3_wire_temp[14:7]};
wire signed [8:0] temp_4_wire = delay_2_buffer_in + temp_3_wire;//A1
wire signed [8:0] temp_5_wire = {temp_5_wire_temp[17],temp_5_wire_temp[14:7]};
wire signed [8:0] temp_6_wire = {temp_6_wire_temp[17],temp_6_wire_temp[14:7]};
wire signed [8:0] temp_7_wire = temp_6_wire + temp_5_wire;//A3
wire signed [8:0] temp_8_wire = {temp_8_wire_temp[17],temp_8_wire_temp[14:7]};

wire signed [17:0] temp_2_wire_temp = m1 * delay_2_buffer_in ;//M1
wire signed [17:0] temp_3_wire_temp = m2 * temp_1_wire ;//M2
wire signed [17:0] temp_5_wire_temp = m3 * temp_4_wire ;//M3
wire signed [17:0] temp_6_wire_temp = m4 * delay_1_buffer_in ;//M4
wire signed [17:0] temp_8_wire_temp = m5 * temp_1_wire ;//M8

//wire signed [17:0] temp_2_wire_temp = `M1 * delay_2_buffer_in ;
//wire signed [17:0] temp_3_wire_temp = `M2 * temp_2_wire ;
//wire signed [17:0] temp_5_wire_temp = `M3 * temp_4_wire ;
//wire signed [17:0] temp_6_wire_temp = `M4 * delay_1_buffer_in ;
//wire signed [17:0] temp_8_wire_temp = `M5 * temp_1_wire ;

//output
assign out = temp_7_wire + temp_8_wire;//A4

//delay_1_buffer_in
always @(posedge clk or negedge rst_n) begin
    if(~rst_n) begin
        delay_1_buffer_in <= 'd0;
    end 
    else begin
        delay_1_buffer_in <= temp_1_wire;
    end
end
//delay_2_buffer_in
always @(posedge clk or negedge rst_n) begin
    if(~rst_n) begin
        delay_2_buffer_in <= 'd0;
    end 
    else begin
        delay_2_buffer_in <= delay_1_buffer_in;
    end
end

endmodule

