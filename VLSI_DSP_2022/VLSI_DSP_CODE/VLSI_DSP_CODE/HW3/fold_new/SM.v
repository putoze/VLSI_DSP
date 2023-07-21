module SM(clk,rst_n,in_A,in_B,out);
input clk,rst_n;
input signed [8:0] in_A;
input signed [7:0] in_B;
output signed [8:0] out;
reg signed [8:0] temp_delay_1;
reg signed [8:0] temp;

//out
assign out = temp;

wire signed [17:0] mul_temp = in_A * in_B;  

//temp
always @(posedge clk or negedge rst_n) begin
	if(~rst_n) begin
		temp <= 'd0;
	end 
	else begin
		temp <= temp_delay_1;
	end
end

//temp_delay_1
always @(posedge clk or negedge rst_n) begin
	if(~rst_n) begin
		temp_delay_1 <= 0;
	end 
	else begin
		temp_delay_1 <= {mul_temp[17],mul_temp[14:7]};
	end
end

endmodule