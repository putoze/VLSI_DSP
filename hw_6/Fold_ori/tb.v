`timescale 1ns/10ps
`define CYCLE      10.0          	  // Modify your clock period here
`define End_CYCLE  200            // Modify cycle times once your design need more cycle times!


module tb;

  reg signed [7:0] in ; 
  reg clk=0 ;
  reg rst_n ;
  wire signed [8:0] out ;

  parameter signed m1 = 8'b11000000;//-64
  parameter signed m2 = 8'b01111111;//127
  parameter signed m3 = 8'b01111110;//126
  parameter signed m4 = 8'b10000001;//-127
  parameter signed m5 = 8'b10000010;//-126

  folded #(
      .m1(m1),
      .m2(m2),
      .m3(m3),
      .m4(m4),
      .m5(m5)
    ) inst_folded (
      .in    (in),
      .clk   (clk),
      .rst_n (rst_n),
      .out   (out)
    );


  //clk
  always begin
    #(`CYCLE/2) clk = ~clk;
  end

  initial
  begin  // data input
    $display("-----------------------------------------------------\n");
    $display("START!!! Simulation Start .....\n");
    $display("-----------------------------------------------------\n");
    #1
    rst_n = 1'b0;
    #20
    rst_n = 1'b1;
  end

  integer i;
  initial
  begin
    #20
    for(i=0;i<8;i=i+1)
    begin
      @(negedge clk) ;
      in = $random % 256;
    end
    in = 8'h00;
    #20
    in = 8'hxx;
  end

  initial
  begin
    #(`End_CYCLE)
    $display("----end----");
    $finish;
  end

/*
integer length = 8;
reg signed [7:0] a,b,c,d,e;

  initial
  begin
    a = $random(length);
    while(abs(a)<128) begin
      a = $random(length);
    end 
  end

  initial
  begin
    b = $random(length);
    while(abs(b)<128) begin
      b = $random(length);
    end 
  end

  initial
  begin
    c = $random(length);
    while(abs(c)<128) begin
      c = $random(length);
    end 
  end

  initial
  begin
    d = $random(length);
    while(abs(d)<128) begin
      d = $random(length);
    end 
  end

  initial
  begin
    e = $random(length);
    while(abs(e)<128) begin
      e = $random(length);
    end 
  end
*/
endmodule
