// This is a simple example.
// You can make a your own header file and set its path to settings.
// (Preferences > Package Settings > Verilog Gadget > Settings - User)
//
//		"header": "Packages/Verilog Gadget/template/verilog_header.v"
//
// -----------------------------------------------------------------------------
// Copyright (c) 2014-2022 All rights reserved
// -----------------------------------------------------------------------------
// Author : yongchan jeon (Kris) poucotm@gmail.com
// File   : folded_New.v
// Create : 2022-06-27 14:11:51
// Revise : 2022-06-27 14:57:43
// Editor : sublime text4, tab size (4)
// -----------------------------------------------------------------------------

//`define signed [7:0] M1 = {$random(1),1'd0,$urandom_range(0,63)}
//`define signed [7:0] M2 = {$random(1),1'd0,$urandom_range(0,63)}
//`define signed [7:0] M3 = {$random(1),1'd0,$urandom_range(0,63)}
//`define signed [7:0] M4 = {$random(1),1'd0,$urandom_range(0,63)}
//`define signed [7:0] M5 = {$random(1),1'd0,$urandom_range(0,63)}

module folded_New
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
reg signed [8:0] R1;
reg signed [8:0] R2;
reg signed [8:0] R3;
reg signed [8:0] R4;
reg signed [8:0] R5;
reg switch;

//module wire
wire signed [8:0] sa1_out ; 
wire signed [8:0] sa2_out ; 
wire signed [8:0] sm1_out ; 
wire signed [8:0] sm2_out ; 
wire signed [8:0] sm3_out ; 

wire signed [8:0] sa1_in_A = switch ? R5 : in; 
wire signed [8:0] sa2_in_A = switch ? R3 : R4; 
wire signed [8:0] sm1_in_A = switch ? sa1_out : R1; 
wire signed [8:0] sm2_in_A = switch ? R4 : sa1_out; 
wire signed [8:0] sm3_in_A = R2; 

wire signed [8:0] sa1_in_B = sm1_out;
wire signed [8:0] sa2_in_B = switch ? sa2_out : sm2_out;
wire signed [8:0] sm1_in_B = switch ? m2 : m1;
wire signed [8:0] sm2_in_B = switch ? m4 : m3;
wire signed [8:0] sm3_in_B = m5;

//out
assign out = switch ? 'd0 : sa2_out;
 
//switch
always @(posedge clk or negedge rst_n) begin 
	if(~rst_n) begin
		switch <= 0;
	end 
	else begin
		switch <= ~switch;
	end
end

//R1
always @(posedge clk or negedge rst_n) begin
	if(~rst_n) begin
		R1 <= 0;
	end 
	else begin
		R1 <= switch ? sa1_out : R1;
	end
end

//R2
always @(posedge clk or negedge rst_n) begin
	if(~rst_n) begin
		R2 <= 0;
	end 
	else begin
		R2 <= switch ? sm3_out : R1;
	end
end

//R3
always @(posedge clk or negedge rst_n) begin
	if(~rst_n) begin
		R3 <= 0;
	end 
	else begin
		R3 <= R2;
	end
end

//R4
always @(posedge clk or negedge rst_n) begin
	if(~rst_n) begin
		R4 <= 0;
	end 
	else begin
		R4 <= switch ? sm2_out : R3;
	end
end

//R5
always @(posedge clk or negedge rst_n) begin
	if(~rst_n) begin
		R5 <= 0;
	end 
	else begin
		R5 <= switch ? R4 : R5;
	end
end


//SA SM
 SM SM1 (.clk(clk), .rst_n(rst_n), .in_A(sm1_in_A), .in_B(sm1_in_B), .out(sm1_out));
 SM SM2 (.clk(clk), .rst_n(rst_n), .in_A(sm2_in_A), .in_B(sm2_in_B), .out(sm2_out));
 SM SM3 (.clk(clk), .rst_n(rst_n), .in_A(sm3_in_A), .in_B(sm3_in_B), .out(sm3_out));
 SA SA1 (.clk(clk), .rst_n(rst_n), .in_A(sa1_in_A), .in_B(sa1_in_B), .out(sa1_out));
 SA SA2 (.clk(clk), .rst_n(rst_n), .in_A(sa2_in_A), .in_B(sa2_in_B), .out(sa2_out));



endmodule

