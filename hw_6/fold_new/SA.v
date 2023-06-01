module SA(clk,rst_n,in_A,in_B,out);
input clk,rst_n;
input signed [8:0] in_A,in_B;
output signed [8:0] out;
reg signed [8:0] temp;

//out
assign out = temp;

always @(posedge clk or negedge rst_n) begin
	if(~rst_n) begin
		temp <= 'd0;
	end 
	else begin
		temp <= in_A + in_B;
	end
end

endmodule