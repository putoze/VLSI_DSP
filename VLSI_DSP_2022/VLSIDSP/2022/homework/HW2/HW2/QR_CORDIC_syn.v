/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Expert(TM) in wire load mode
// Version   : N-2017.09-SP2
// Date      : Tue May 10 16:24:38 2022
/////////////////////////////////////////////////////////////


module VECTOR_MODE_DW01_sub_2 ( A, B, CI, DIFF, CO );
  input [13:0] A;
  input [13:0] B;
  output [13:0] DIFF;
  input CI;
  output CO;
  wire   n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12;
  wire   [14:0] carry;

  ADDFXL U2_1 ( .A(A[1]), .B(n10), .CI(carry[1]), .CO(carry[2]), .S(DIFF[1])
         );
  ADDFXL U2_2 ( .A(A[2]), .B(n9), .CI(carry[2]), .CO(carry[3]), .S(DIFF[2]) );
  ADDFXL U2_3 ( .A(A[3]), .B(n8), .CI(carry[3]), .CO(carry[4]), .S(DIFF[3]) );
  ADDFXL U2_4 ( .A(A[4]), .B(n7), .CI(carry[4]), .CO(carry[5]), .S(DIFF[4]) );
  ADDFXL U2_8 ( .A(A[8]), .B(n3), .CI(carry[8]), .CO(carry[9]), .S(DIFF[8]) );
  ADDFXL U2_7 ( .A(A[7]), .B(n4), .CI(carry[7]), .CO(carry[8]), .S(DIFF[7]) );
  ADDFXL U2_6 ( .A(A[6]), .B(n5), .CI(carry[6]), .CO(carry[7]), .S(DIFF[6]) );
  ADDFXL U2_5 ( .A(A[5]), .B(n6), .CI(carry[5]), .CO(carry[6]), .S(DIFF[5]) );
  ADDFXL U2_11 ( .A(A[11]), .B(n2), .CI(carry[11]), .CO(carry[12]), .S(
        DIFF[11]) );
  ADDFXL U2_10 ( .A(A[10]), .B(n2), .CI(carry[10]), .CO(carry[11]), .S(
        DIFF[10]) );
  ADDFXL U2_9 ( .A(A[9]), .B(n2), .CI(carry[9]), .CO(carry[10]), .S(DIFF[9])
         );
  XOR3X1 U2_13 ( .A(A[13]), .B(n2), .C(carry[13]), .Y(DIFF[13]) );
  CLKINVX1 U1 ( .A(B[9]), .Y(n2) );
  XNOR2X1 U2 ( .A(n11), .B(A[0]), .Y(DIFF[0]) );
  CLKINVX1 U3 ( .A(B[0]), .Y(n11) );
  CLKINVX1 U4 ( .A(B[5]), .Y(n6) );
  CLKINVX1 U5 ( .A(B[6]), .Y(n5) );
  CLKINVX1 U6 ( .A(B[7]), .Y(n4) );
  CLKINVX1 U7 ( .A(B[8]), .Y(n3) );
  CLKINVX1 U8 ( .A(B[4]), .Y(n7) );
  CLKINVX1 U9 ( .A(B[3]), .Y(n8) );
  CLKINVX1 U10 ( .A(B[2]), .Y(n9) );
  CLKINVX1 U11 ( .A(B[1]), .Y(n10) );
  NAND2X1 U12 ( .A(B[0]), .B(n1), .Y(carry[1]) );
  CLKINVX1 U13 ( .A(A[0]), .Y(n1) );
  OAI2BB1X1 U14 ( .A0N(n2), .A1N(A[13]), .B0(n12), .Y(carry[13]) );
  OAI21XL U15 ( .A0(A[13]), .A1(n2), .B0(carry[12]), .Y(n12) );
endmodule


module VECTOR_MODE_DW01_add_2 ( A, B, CI, SUM, CO );
  input [13:0] A;
  input [13:0] B;
  output [13:0] SUM;
  input CI;
  output CO;
  wire   n1, n2;
  wire   [13:1] carry;

  ADDFXL U1_1 ( .A(A[1]), .B(B[1]), .CI(n1), .CO(carry[2]), .S(SUM[1]) );
  ADDFXL U1_2 ( .A(A[2]), .B(B[2]), .CI(carry[2]), .CO(carry[3]), .S(SUM[2])
         );
  ADDFXL U1_3 ( .A(A[3]), .B(B[3]), .CI(carry[3]), .CO(carry[4]), .S(SUM[3])
         );
  ADDFXL U1_4 ( .A(A[4]), .B(B[4]), .CI(carry[4]), .CO(carry[5]), .S(SUM[4])
         );
  ADDFXL U1_8 ( .A(A[8]), .B(B[8]), .CI(carry[8]), .CO(carry[9]), .S(SUM[8])
         );
  ADDFXL U1_7 ( .A(A[7]), .B(B[7]), .CI(carry[7]), .CO(carry[8]), .S(SUM[7])
         );
  ADDFXL U1_6 ( .A(A[6]), .B(B[6]), .CI(carry[6]), .CO(carry[7]), .S(SUM[6])
         );
  ADDFXL U1_5 ( .A(A[5]), .B(B[5]), .CI(carry[5]), .CO(carry[6]), .S(SUM[5])
         );
  ADDFXL U1_11 ( .A(A[11]), .B(B[11]), .CI(carry[11]), .CO(carry[12]), .S(
        SUM[11]) );
  ADDFXL U1_10 ( .A(A[10]), .B(B[10]), .CI(carry[10]), .CO(carry[11]), .S(
        SUM[10]) );
  ADDFXL U1_9 ( .A(A[9]), .B(B[9]), .CI(carry[9]), .CO(carry[10]), .S(SUM[9])
         );
  XOR3X1 U1_13 ( .A(A[13]), .B(B[13]), .C(carry[13]), .Y(SUM[13]) );
  AND2X2 U1 ( .A(B[0]), .B(A[0]), .Y(n1) );
  XOR2X1 U2 ( .A(B[0]), .B(A[0]), .Y(SUM[0]) );
  OAI2BB1X1 U3 ( .A0N(A[13]), .A1N(B[9]), .B0(n2), .Y(carry[13]) );
  OAI21XL U4 ( .A0(A[13]), .A1(B[9]), .B0(carry[12]), .Y(n2) );
endmodule


module VECTOR_MODE_DW01_sub_3 ( A, B, CI, DIFF, CO );
  input [13:0] A;
  input [13:0] B;
  output [13:0] DIFF;
  input CI;
  output CO;
  wire   n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14;
  wire   [14:0] carry;

  ADDFXL U2_11 ( .A(A[11]), .B(n2), .CI(carry[11]), .CO(carry[12]), .S(
        DIFF[11]) );
  ADDFXL U2_1 ( .A(A[1]), .B(n12), .CI(carry[1]), .CO(carry[2]), .S(DIFF[1])
         );
  ADDFXL U2_3 ( .A(A[3]), .B(n10), .CI(carry[3]), .CO(carry[4]), .S(DIFF[3])
         );
  ADDFXL U2_2 ( .A(A[2]), .B(n11), .CI(carry[2]), .CO(carry[3]), .S(DIFF[2])
         );
  ADDFXL U2_4 ( .A(A[4]), .B(n9), .CI(carry[4]), .CO(carry[5]), .S(DIFF[4]) );
  ADDFXL U2_5 ( .A(A[5]), .B(n8), .CI(carry[5]), .CO(carry[6]), .S(DIFF[5]) );
  ADDFXL U2_6 ( .A(A[6]), .B(n7), .CI(carry[6]), .CO(carry[7]), .S(DIFF[6]) );
  ADDFXL U2_10 ( .A(A[10]), .B(n3), .CI(carry[10]), .CO(carry[11]), .S(
        DIFF[10]) );
  ADDFXL U2_9 ( .A(A[9]), .B(n4), .CI(carry[9]), .CO(carry[10]), .S(DIFF[9])
         );
  ADDFXL U2_8 ( .A(A[8]), .B(n5), .CI(carry[8]), .CO(carry[9]), .S(DIFF[8]) );
  ADDFXL U2_7 ( .A(A[7]), .B(n6), .CI(carry[7]), .CO(carry[8]), .S(DIFF[7]) );
  XOR3X1 U2_13 ( .A(A[13]), .B(n2), .C(carry[13]), .Y(DIFF[13]) );
  CLKINVX1 U1 ( .A(B[13]), .Y(n2) );
  XNOR2X1 U2 ( .A(n13), .B(A[0]), .Y(DIFF[0]) );
  CLKINVX1 U3 ( .A(B[0]), .Y(n13) );
  CLKINVX1 U4 ( .A(B[7]), .Y(n6) );
  CLKINVX1 U5 ( .A(B[8]), .Y(n5) );
  CLKINVX1 U6 ( .A(B[9]), .Y(n4) );
  CLKINVX1 U7 ( .A(B[10]), .Y(n3) );
  CLKINVX1 U8 ( .A(B[6]), .Y(n7) );
  CLKINVX1 U9 ( .A(B[5]), .Y(n8) );
  CLKINVX1 U10 ( .A(B[4]), .Y(n9) );
  CLKINVX1 U11 ( .A(B[2]), .Y(n11) );
  CLKINVX1 U12 ( .A(B[3]), .Y(n10) );
  CLKINVX1 U13 ( .A(B[1]), .Y(n12) );
  NAND2X1 U14 ( .A(B[0]), .B(n1), .Y(carry[1]) );
  CLKINVX1 U15 ( .A(A[0]), .Y(n1) );
  OAI2BB1X1 U16 ( .A0N(n2), .A1N(A[13]), .B0(n14), .Y(carry[13]) );
  OAI21XL U17 ( .A0(A[13]), .A1(n2), .B0(carry[12]), .Y(n14) );
endmodule


module VECTOR_MODE_DW01_add_3 ( A, B, CI, SUM, CO );
  input [13:0] A;
  input [13:0] B;
  output [13:0] SUM;
  input CI;
  output CO;
  wire   n1, n2;
  wire   [13:1] carry;

  ADDFXL U1_11 ( .A(A[11]), .B(B[11]), .CI(carry[11]), .CO(carry[12]), .S(
        SUM[11]) );
  ADDFXL U1_1 ( .A(A[1]), .B(B[1]), .CI(n1), .CO(carry[2]), .S(SUM[1]) );
  ADDFXL U1_2 ( .A(A[2]), .B(B[2]), .CI(carry[2]), .CO(carry[3]), .S(SUM[2])
         );
  ADDFXL U1_3 ( .A(A[3]), .B(B[3]), .CI(carry[3]), .CO(carry[4]), .S(SUM[3])
         );
  ADDFXL U1_4 ( .A(A[4]), .B(B[4]), .CI(carry[4]), .CO(carry[5]), .S(SUM[4])
         );
  ADDFXL U1_5 ( .A(A[5]), .B(B[5]), .CI(carry[5]), .CO(carry[6]), .S(SUM[5])
         );
  ADDFXL U1_6 ( .A(A[6]), .B(B[6]), .CI(carry[6]), .CO(carry[7]), .S(SUM[6])
         );
  ADDFXL U1_10 ( .A(A[10]), .B(B[10]), .CI(carry[10]), .CO(carry[11]), .S(
        SUM[10]) );
  ADDFXL U1_9 ( .A(A[9]), .B(B[9]), .CI(carry[9]), .CO(carry[10]), .S(SUM[9])
         );
  ADDFXL U1_8 ( .A(A[8]), .B(B[8]), .CI(carry[8]), .CO(carry[9]), .S(SUM[8])
         );
  ADDFXL U1_7 ( .A(A[7]), .B(B[7]), .CI(carry[7]), .CO(carry[8]), .S(SUM[7])
         );
  XOR3X1 U1_13 ( .A(A[13]), .B(B[13]), .C(carry[13]), .Y(SUM[13]) );
  AND2X2 U1 ( .A(B[0]), .B(A[0]), .Y(n1) );
  XOR2X1 U2 ( .A(B[0]), .B(A[0]), .Y(SUM[0]) );
  OAI2BB1X1 U3 ( .A0N(A[13]), .A1N(B[13]), .B0(n2), .Y(carry[13]) );
  OAI21XL U4 ( .A0(A[13]), .A1(B[13]), .B0(carry[12]), .Y(n2) );
endmodule


module VECTOR_MODE_DW01_add_6 ( A, B, CI, SUM, CO );
  input [13:0] A;
  input [13:0] B;
  output [13:0] SUM;
  input CI;
  output CO;
  wire   n1, n2;
  wire   [13:1] carry;

  ADDFXL U1_1 ( .A(A[1]), .B(B[1]), .CI(n1), .CO(carry[2]), .S(SUM[1]) );
  ADDFXL U1_2 ( .A(A[2]), .B(B[2]), .CI(carry[2]), .CO(carry[3]), .S(SUM[2])
         );
  ADDFXL U1_3 ( .A(A[3]), .B(B[3]), .CI(carry[3]), .CO(carry[4]), .S(SUM[3])
         );
  ADDFXL U1_4 ( .A(A[4]), .B(B[4]), .CI(carry[4]), .CO(carry[5]), .S(SUM[4])
         );
  ADDFXL U1_8 ( .A(A[8]), .B(B[8]), .CI(carry[8]), .CO(carry[9]), .S(SUM[8])
         );
  ADDFXL U1_7 ( .A(A[7]), .B(B[7]), .CI(carry[7]), .CO(carry[8]), .S(SUM[7])
         );
  ADDFXL U1_6 ( .A(A[6]), .B(B[6]), .CI(carry[6]), .CO(carry[7]), .S(SUM[6])
         );
  ADDFXL U1_5 ( .A(A[5]), .B(B[5]), .CI(carry[5]), .CO(carry[6]), .S(SUM[5])
         );
  ADDFXL U1_11 ( .A(A[11]), .B(B[11]), .CI(carry[11]), .CO(carry[12]), .S(
        SUM[11]) );
  ADDFXL U1_10 ( .A(A[10]), .B(B[10]), .CI(carry[10]), .CO(carry[11]), .S(
        SUM[10]) );
  ADDFXL U1_9 ( .A(A[9]), .B(B[9]), .CI(carry[9]), .CO(carry[10]), .S(SUM[9])
         );
  XOR3X1 U1_13 ( .A(A[13]), .B(B[13]), .C(carry[13]), .Y(SUM[13]) );
  AND2X2 U1 ( .A(B[0]), .B(A[0]), .Y(n1) );
  XOR2X1 U2 ( .A(B[0]), .B(A[0]), .Y(SUM[0]) );
  OAI2BB1X1 U3 ( .A0N(A[12]), .A1N(B[9]), .B0(n2), .Y(carry[13]) );
  OAI21XL U4 ( .A0(A[12]), .A1(B[9]), .B0(carry[12]), .Y(n2) );
endmodule


module VECTOR_MODE_DW01_sub_6 ( A, B, CI, DIFF, CO );
  input [13:0] A;
  input [13:0] B;
  output [13:0] DIFF;
  input CI;
  output CO;
  wire   n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12;
  wire   [14:0] carry;

  ADDFXL U2_1 ( .A(A[1]), .B(n10), .CI(carry[1]), .CO(carry[2]), .S(DIFF[1])
         );
  ADDFXL U2_2 ( .A(A[2]), .B(n9), .CI(carry[2]), .CO(carry[3]), .S(DIFF[2]) );
  ADDFXL U2_3 ( .A(A[3]), .B(n8), .CI(carry[3]), .CO(carry[4]), .S(DIFF[3]) );
  ADDFXL U2_4 ( .A(A[4]), .B(n7), .CI(carry[4]), .CO(carry[5]), .S(DIFF[4]) );
  ADDFXL U2_8 ( .A(A[8]), .B(n3), .CI(carry[8]), .CO(carry[9]), .S(DIFF[8]) );
  ADDFXL U2_7 ( .A(A[7]), .B(n4), .CI(carry[7]), .CO(carry[8]), .S(DIFF[7]) );
  ADDFXL U2_5 ( .A(A[5]), .B(n6), .CI(carry[5]), .CO(carry[6]), .S(DIFF[5]) );
  ADDFXL U2_6 ( .A(A[6]), .B(n5), .CI(carry[6]), .CO(carry[7]), .S(DIFF[6]) );
  ADDFXL U2_11 ( .A(A[11]), .B(n2), .CI(carry[11]), .CO(carry[12]), .S(
        DIFF[11]) );
  ADDFXL U2_10 ( .A(A[10]), .B(n2), .CI(carry[10]), .CO(carry[11]), .S(
        DIFF[10]) );
  ADDFXL U2_9 ( .A(A[9]), .B(n2), .CI(carry[9]), .CO(carry[10]), .S(DIFF[9])
         );
  XOR3X1 U2_13 ( .A(A[13]), .B(n2), .C(carry[13]), .Y(DIFF[13]) );
  CLKINVX1 U1 ( .A(B[9]), .Y(n2) );
  CLKINVX1 U2 ( .A(B[0]), .Y(n11) );
  CLKINVX1 U3 ( .A(B[6]), .Y(n5) );
  CLKINVX1 U4 ( .A(B[5]), .Y(n6) );
  CLKINVX1 U5 ( .A(B[7]), .Y(n4) );
  CLKINVX1 U6 ( .A(B[8]), .Y(n3) );
  CLKINVX1 U7 ( .A(B[4]), .Y(n7) );
  CLKINVX1 U8 ( .A(B[3]), .Y(n8) );
  CLKINVX1 U9 ( .A(B[2]), .Y(n9) );
  CLKINVX1 U10 ( .A(B[1]), .Y(n10) );
  NAND2X1 U11 ( .A(B[0]), .B(n1), .Y(carry[1]) );
  CLKINVX1 U12 ( .A(A[0]), .Y(n1) );
  XNOR2X1 U13 ( .A(n11), .B(A[0]), .Y(DIFF[0]) );
  OAI2BB1X1 U14 ( .A0N(n2), .A1N(A[13]), .B0(n12), .Y(carry[13]) );
  OAI21XL U15 ( .A0(A[13]), .A1(n2), .B0(carry[12]), .Y(n12) );
endmodule


module VECTOR_MODE_DW01_add_7 ( A, B, CI, SUM, CO );
  input [13:0] A;
  input [13:0] B;
  output [13:0] SUM;
  input CI;
  output CO;
  wire   n1, n2;
  wire   [13:1] carry;

  ADDFXL U1_11 ( .A(A[11]), .B(B[11]), .CI(carry[11]), .CO(carry[12]), .S(
        SUM[11]) );
  ADDFXL U1_1 ( .A(A[1]), .B(B[1]), .CI(n1), .CO(carry[2]), .S(SUM[1]) );
  ADDFXL U1_3 ( .A(A[3]), .B(B[3]), .CI(carry[3]), .CO(carry[4]), .S(SUM[3])
         );
  ADDFXL U1_2 ( .A(A[2]), .B(B[2]), .CI(carry[2]), .CO(carry[3]), .S(SUM[2])
         );
  ADDFXL U1_4 ( .A(A[4]), .B(B[4]), .CI(carry[4]), .CO(carry[5]), .S(SUM[4])
         );
  ADDFXL U1_5 ( .A(A[5]), .B(B[5]), .CI(carry[5]), .CO(carry[6]), .S(SUM[5])
         );
  ADDFXL U1_6 ( .A(A[6]), .B(B[6]), .CI(carry[6]), .CO(carry[7]), .S(SUM[6])
         );
  ADDFXL U1_10 ( .A(A[10]), .B(B[10]), .CI(carry[10]), .CO(carry[11]), .S(
        SUM[10]) );
  ADDFXL U1_9 ( .A(A[9]), .B(B[9]), .CI(carry[9]), .CO(carry[10]), .S(SUM[9])
         );
  ADDFXL U1_8 ( .A(A[8]), .B(B[8]), .CI(carry[8]), .CO(carry[9]), .S(SUM[8])
         );
  ADDFXL U1_7 ( .A(A[7]), .B(B[7]), .CI(carry[7]), .CO(carry[8]), .S(SUM[7])
         );
  XOR3X1 U1_13 ( .A(A[13]), .B(B[13]), .C(carry[13]), .Y(SUM[13]) );
  AND2X2 U1 ( .A(B[0]), .B(A[0]), .Y(n1) );
  XOR2X1 U2 ( .A(B[0]), .B(A[0]), .Y(SUM[0]) );
  OAI2BB1X1 U3 ( .A0N(A[13]), .A1N(B[13]), .B0(n2), .Y(carry[13]) );
  OAI21XL U4 ( .A0(A[13]), .A1(B[13]), .B0(carry[12]), .Y(n2) );
endmodule


module VECTOR_MODE_DW01_sub_7 ( A, B, CI, DIFF, CO );
  input [13:0] A;
  input [13:0] B;
  output [13:0] DIFF;
  input CI;
  output CO;
  wire   n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14;
  wire   [14:0] carry;

  ADDFXL U2_11 ( .A(A[11]), .B(n2), .CI(carry[11]), .CO(carry[12]), .S(
        DIFF[11]) );
  ADDFXL U2_1 ( .A(A[1]), .B(n12), .CI(carry[1]), .CO(carry[2]), .S(DIFF[1])
         );
  ADDFXL U2_2 ( .A(A[2]), .B(n11), .CI(carry[2]), .CO(carry[3]), .S(DIFF[2])
         );
  ADDFXL U2_3 ( .A(A[3]), .B(n10), .CI(carry[3]), .CO(carry[4]), .S(DIFF[3])
         );
  ADDFXL U2_4 ( .A(A[4]), .B(n9), .CI(carry[4]), .CO(carry[5]), .S(DIFF[4]) );
  ADDFXL U2_5 ( .A(A[5]), .B(n8), .CI(carry[5]), .CO(carry[6]), .S(DIFF[5]) );
  ADDFXL U2_6 ( .A(A[6]), .B(n7), .CI(carry[6]), .CO(carry[7]), .S(DIFF[6]) );
  ADDFXL U2_10 ( .A(A[10]), .B(n3), .CI(carry[10]), .CO(carry[11]), .S(
        DIFF[10]) );
  ADDFXL U2_9 ( .A(A[9]), .B(n4), .CI(carry[9]), .CO(carry[10]), .S(DIFF[9])
         );
  ADDFXL U2_8 ( .A(A[8]), .B(n5), .CI(carry[8]), .CO(carry[9]), .S(DIFF[8]) );
  ADDFXL U2_7 ( .A(A[7]), .B(n6), .CI(carry[7]), .CO(carry[8]), .S(DIFF[7]) );
  XOR3X1 U2_13 ( .A(A[13]), .B(n2), .C(carry[13]), .Y(DIFF[13]) );
  CLKINVX1 U1 ( .A(B[13]), .Y(n2) );
  CLKINVX1 U2 ( .A(B[0]), .Y(n13) );
  CLKINVX1 U3 ( .A(B[7]), .Y(n6) );
  CLKINVX1 U4 ( .A(B[8]), .Y(n5) );
  CLKINVX1 U5 ( .A(B[9]), .Y(n4) );
  CLKINVX1 U6 ( .A(B[10]), .Y(n3) );
  CLKINVX1 U7 ( .A(B[6]), .Y(n7) );
  CLKINVX1 U8 ( .A(B[5]), .Y(n8) );
  CLKINVX1 U9 ( .A(B[4]), .Y(n9) );
  CLKINVX1 U10 ( .A(B[3]), .Y(n10) );
  CLKINVX1 U11 ( .A(B[2]), .Y(n11) );
  CLKINVX1 U12 ( .A(B[1]), .Y(n12) );
  NAND2X1 U13 ( .A(B[0]), .B(n1), .Y(carry[1]) );
  CLKINVX1 U14 ( .A(A[0]), .Y(n1) );
  XNOR2X1 U15 ( .A(n13), .B(A[0]), .Y(DIFF[0]) );
  OAI2BB1X1 U16 ( .A0N(n2), .A1N(A[13]), .B0(n14), .Y(carry[13]) );
  OAI21XL U17 ( .A0(A[13]), .A1(n2), .B0(carry[12]), .Y(n14) );
endmodule


module VECTOR_MODE_DW01_sub_10 ( A, B, CI, DIFF, CO );
  input [13:0] A;
  input [13:0] B;
  output [13:0] DIFF;
  input CI;
  output CO;
  wire   n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12;
  wire   [14:0] carry;

  ADDFXL U2_11 ( .A(A[11]), .B(n2), .CI(carry[11]), .CO(carry[12]), .S(
        DIFF[11]) );
  ADDFXL U2_10 ( .A(A[10]), .B(n2), .CI(carry[10]), .CO(carry[11]), .S(
        DIFF[10]) );
  ADDFXL U2_1 ( .A(A[1]), .B(n9), .CI(carry[1]), .CO(carry[2]), .S(DIFF[1]) );
  ADDFXL U2_2 ( .A(A[2]), .B(n10), .CI(carry[2]), .CO(carry[3]), .S(DIFF[2])
         );
  ADDFXL U2_3 ( .A(A[3]), .B(n11), .CI(carry[3]), .CO(carry[4]), .S(DIFF[3])
         );
  ADDFXL U2_4 ( .A(A[4]), .B(n12), .CI(carry[4]), .CO(carry[5]), .S(DIFF[4])
         );
  ADDFXL U2_6 ( .A(A[6]), .B(n6), .CI(carry[6]), .CO(carry[7]), .S(DIFF[6]) );
  ADDFXL U2_5 ( .A(A[5]), .B(n7), .CI(carry[5]), .CO(carry[6]), .S(DIFF[5]) );
  ADDFXL U2_7 ( .A(A[7]), .B(n5), .CI(carry[7]), .CO(carry[8]), .S(DIFF[7]) );
  ADDFXL U2_9 ( .A(A[9]), .B(n3), .CI(carry[9]), .CO(carry[10]), .S(DIFF[9])
         );
  ADDFXL U2_8 ( .A(A[8]), .B(n4), .CI(carry[8]), .CO(carry[9]), .S(DIFF[8]) );
  XOR3X1 U2_13 ( .A(A[13]), .B(n2), .C(carry[13]), .Y(DIFF[13]) );
  ADDFXL U2_12 ( .A(A[12]), .B(n2), .CI(carry[12]), .CO(carry[13]), .S(
        DIFF[12]) );
  CLKINVX1 U1 ( .A(B[13]), .Y(n2) );
  CLKINVX1 U2 ( .A(B[0]), .Y(n8) );
  CLKINVX1 U3 ( .A(B[8]), .Y(n4) );
  CLKINVX1 U4 ( .A(B[9]), .Y(n3) );
  CLKINVX1 U5 ( .A(B[7]), .Y(n5) );
  CLKINVX1 U6 ( .A(B[5]), .Y(n7) );
  CLKINVX1 U7 ( .A(B[6]), .Y(n6) );
  CLKINVX1 U8 ( .A(B[4]), .Y(n12) );
  CLKINVX1 U9 ( .A(B[3]), .Y(n11) );
  CLKINVX1 U10 ( .A(B[2]), .Y(n10) );
  CLKINVX1 U11 ( .A(B[1]), .Y(n9) );
  NAND2X1 U12 ( .A(B[0]), .B(n1), .Y(carry[1]) );
  CLKINVX1 U13 ( .A(A[0]), .Y(n1) );
  XNOR2X1 U14 ( .A(n8), .B(A[0]), .Y(DIFF[0]) );
endmodule


module VECTOR_MODE_DW01_add_10 ( A, B, CI, SUM, CO );
  input [13:0] A;
  input [13:0] B;
  output [13:0] SUM;
  input CI;
  output CO;
  wire   n1;
  wire   [13:1] carry;

  ADDFXL U1_1 ( .A(A[1]), .B(B[1]), .CI(n1), .CO(carry[2]), .S(SUM[1]) );
  ADDFXL U1_2 ( .A(A[2]), .B(B[2]), .CI(carry[2]), .CO(carry[3]), .S(SUM[2])
         );
  ADDFXL U1_3 ( .A(A[3]), .B(B[3]), .CI(carry[3]), .CO(carry[4]), .S(SUM[3])
         );
  ADDFXL U1_4 ( .A(A[4]), .B(B[4]), .CI(carry[4]), .CO(carry[5]), .S(SUM[4])
         );
  ADDFXL U1_6 ( .A(A[6]), .B(B[6]), .CI(carry[6]), .CO(carry[7]), .S(SUM[6])
         );
  ADDFXL U1_5 ( .A(A[5]), .B(B[5]), .CI(carry[5]), .CO(carry[6]), .S(SUM[5])
         );
  ADDFXL U1_9 ( .A(A[9]), .B(B[9]), .CI(carry[9]), .CO(carry[10]), .S(SUM[9])
         );
  ADDFXL U1_8 ( .A(A[8]), .B(B[8]), .CI(carry[8]), .CO(carry[9]), .S(SUM[8])
         );
  ADDFXL U1_7 ( .A(A[7]), .B(B[7]), .CI(carry[7]), .CO(carry[8]), .S(SUM[7])
         );
  ADDFXL U1_11 ( .A(A[11]), .B(B[11]), .CI(carry[11]), .CO(carry[12]), .S(
        SUM[11]) );
  ADDFXL U1_10 ( .A(A[10]), .B(B[10]), .CI(carry[10]), .CO(carry[11]), .S(
        SUM[10]) );
  ADDFXL U1_12 ( .A(A[12]), .B(B[12]), .CI(carry[12]), .CO(carry[13]), .S(
        SUM[12]) );
  XOR3X1 U1_13 ( .A(A[13]), .B(B[13]), .C(carry[13]), .Y(SUM[13]) );
  AND2X2 U1 ( .A(B[0]), .B(A[0]), .Y(n1) );
  XOR2X1 U2 ( .A(B[0]), .B(A[0]), .Y(SUM[0]) );
endmodule


module VECTOR_MODE_DW01_sub_11 ( A, B, CI, DIFF, CO );
  input [13:0] A;
  input [13:0] B;
  output [13:0] DIFF;
  input CI;
  output CO;
  wire   n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14;
  wire   [14:0] carry;

  ADDFXL U2_1 ( .A(A[1]), .B(n4), .CI(carry[1]), .CO(carry[2]), .S(DIFF[1]) );
  ADDFXL U2_3 ( .A(A[3]), .B(n11), .CI(carry[3]), .CO(carry[4]), .S(DIFF[3])
         );
  ADDFXL U2_2 ( .A(A[2]), .B(n10), .CI(carry[2]), .CO(carry[3]), .S(DIFF[2])
         );
  ADDFXL U2_4 ( .A(A[4]), .B(n12), .CI(carry[4]), .CO(carry[5]), .S(DIFF[4])
         );
  ADDFXL U2_5 ( .A(A[5]), .B(n13), .CI(carry[5]), .CO(carry[6]), .S(DIFF[5])
         );
  ADDFXL U2_6 ( .A(A[6]), .B(n14), .CI(carry[6]), .CO(carry[7]), .S(DIFF[6])
         );
  ADDFXL U2_7 ( .A(A[7]), .B(n9), .CI(carry[7]), .CO(carry[8]), .S(DIFF[7]) );
  ADDFXL U2_8 ( .A(A[8]), .B(n8), .CI(carry[8]), .CO(carry[9]), .S(DIFF[8]) );
  ADDFXL U2_11 ( .A(A[11]), .B(n5), .CI(carry[11]), .CO(carry[12]), .S(
        DIFF[11]) );
  ADDFXL U2_10 ( .A(A[10]), .B(n6), .CI(carry[10]), .CO(carry[11]), .S(
        DIFF[10]) );
  ADDFXL U2_9 ( .A(A[9]), .B(n7), .CI(carry[9]), .CO(carry[10]), .S(DIFF[9])
         );
  XOR3X1 U2_13 ( .A(A[13]), .B(n2), .C(carry[13]), .Y(DIFF[13]) );
  ADDFXL U2_12 ( .A(A[12]), .B(n2), .CI(carry[12]), .CO(carry[13]), .S(
        DIFF[12]) );
  CLKINVX1 U1 ( .A(B[13]), .Y(n2) );
  CLKINVX1 U2 ( .A(B[0]), .Y(n3) );
  CLKINVX1 U3 ( .A(B[9]), .Y(n7) );
  CLKINVX1 U4 ( .A(B[10]), .Y(n6) );
  CLKINVX1 U5 ( .A(B[11]), .Y(n5) );
  CLKINVX1 U6 ( .A(B[8]), .Y(n8) );
  CLKINVX1 U7 ( .A(B[7]), .Y(n9) );
  CLKINVX1 U8 ( .A(B[6]), .Y(n14) );
  CLKINVX1 U9 ( .A(B[5]), .Y(n13) );
  CLKINVX1 U10 ( .A(B[4]), .Y(n12) );
  CLKINVX1 U11 ( .A(B[2]), .Y(n10) );
  CLKINVX1 U12 ( .A(B[3]), .Y(n11) );
  CLKINVX1 U13 ( .A(B[1]), .Y(n4) );
  NAND2X1 U14 ( .A(B[0]), .B(n1), .Y(carry[1]) );
  CLKINVX1 U15 ( .A(A[0]), .Y(n1) );
  XNOR2X1 U16 ( .A(n3), .B(A[0]), .Y(DIFF[0]) );
endmodule


module VECTOR_MODE_DW01_add_13 ( A, B, CI, SUM, CO );
  input [13:0] A;
  input [13:0] B;
  output [13:0] SUM;
  input CI;
  output CO;
  wire   n1;
  wire   [13:1] carry;

  ADDFXL U1_11 ( .A(A[11]), .B(B[11]), .CI(carry[11]), .CO(carry[12]), .S(
        SUM[11]) );
  ADDFXL U1_10 ( .A(A[10]), .B(B[10]), .CI(carry[10]), .CO(carry[11]), .S(
        SUM[10]) );
  ADDFXL U1_1 ( .A(A[1]), .B(B[1]), .CI(n1), .CO(carry[2]), .S(SUM[1]) );
  ADDFXL U1_2 ( .A(A[2]), .B(B[2]), .CI(carry[2]), .CO(carry[3]), .S(SUM[2])
         );
  ADDFXL U1_3 ( .A(A[3]), .B(B[3]), .CI(carry[3]), .CO(carry[4]), .S(SUM[3])
         );
  ADDFXL U1_4 ( .A(A[4]), .B(B[4]), .CI(carry[4]), .CO(carry[5]), .S(SUM[4])
         );
  ADDFXL U1_6 ( .A(A[6]), .B(B[6]), .CI(carry[6]), .CO(carry[7]), .S(SUM[6])
         );
  ADDFXL U1_5 ( .A(A[5]), .B(B[5]), .CI(carry[5]), .CO(carry[6]), .S(SUM[5])
         );
  ADDFXL U1_9 ( .A(A[9]), .B(B[9]), .CI(carry[9]), .CO(carry[10]), .S(SUM[9])
         );
  ADDFXL U1_8 ( .A(A[8]), .B(B[8]), .CI(carry[8]), .CO(carry[9]), .S(SUM[8])
         );
  ADDFXL U1_7 ( .A(A[7]), .B(B[7]), .CI(carry[7]), .CO(carry[8]), .S(SUM[7])
         );
  ADDFXL U1_12 ( .A(A[12]), .B(B[12]), .CI(carry[12]), .CO(carry[13]), .S(
        SUM[12]) );
  XOR3X1 U1_13 ( .A(A[13]), .B(B[13]), .C(carry[13]), .Y(SUM[13]) );
  AND2X2 U1 ( .A(B[0]), .B(A[0]), .Y(n1) );
  XOR2X1 U2 ( .A(B[0]), .B(A[0]), .Y(SUM[0]) );
endmodule


module VECTOR_MODE_DW01_sub_14 ( A, B, CI, DIFF, CO );
  input [13:0] A;
  input [13:0] B;
  output [13:0] DIFF;
  input CI;
  output CO;
  wire   n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12;
  wire   [14:0] carry;

  ADDFXL U2_11 ( .A(A[11]), .B(n2), .CI(carry[11]), .CO(carry[12]), .S(
        DIFF[11]) );
  ADDFXL U2_10 ( .A(A[10]), .B(n2), .CI(carry[10]), .CO(carry[11]), .S(
        DIFF[10]) );
  ADDFXL U2_1 ( .A(A[1]), .B(n10), .CI(carry[1]), .CO(carry[2]), .S(DIFF[1])
         );
  ADDFXL U2_2 ( .A(A[2]), .B(n11), .CI(carry[2]), .CO(carry[3]), .S(DIFF[2])
         );
  ADDFXL U2_3 ( .A(A[3]), .B(n12), .CI(carry[3]), .CO(carry[4]), .S(DIFF[3])
         );
  ADDFXL U2_4 ( .A(A[4]), .B(n8), .CI(carry[4]), .CO(carry[5]), .S(DIFF[4]) );
  ADDFXL U2_6 ( .A(A[6]), .B(n6), .CI(carry[6]), .CO(carry[7]), .S(DIFF[6]) );
  ADDFXL U2_5 ( .A(A[5]), .B(n7), .CI(carry[5]), .CO(carry[6]), .S(DIFF[5]) );
  ADDFXL U2_9 ( .A(A[9]), .B(n3), .CI(carry[9]), .CO(carry[10]), .S(DIFF[9])
         );
  ADDFXL U2_8 ( .A(A[8]), .B(n4), .CI(carry[8]), .CO(carry[9]), .S(DIFF[8]) );
  ADDFXL U2_7 ( .A(A[7]), .B(n5), .CI(carry[7]), .CO(carry[8]), .S(DIFF[7]) );
  ADDFXL U2_12 ( .A(A[12]), .B(n2), .CI(carry[12]), .CO(carry[13]), .S(
        DIFF[12]) );
  XOR3X1 U2_13 ( .A(A[13]), .B(n2), .C(carry[13]), .Y(DIFF[13]) );
  CLKINVX1 U1 ( .A(B[13]), .Y(n2) );
  CLKINVX1 U2 ( .A(B[0]), .Y(n9) );
  CLKINVX1 U3 ( .A(B[7]), .Y(n5) );
  CLKINVX1 U4 ( .A(B[8]), .Y(n4) );
  CLKINVX1 U5 ( .A(B[9]), .Y(n3) );
  CLKINVX1 U6 ( .A(B[5]), .Y(n7) );
  CLKINVX1 U7 ( .A(B[6]), .Y(n6) );
  CLKINVX1 U8 ( .A(B[4]), .Y(n8) );
  CLKINVX1 U9 ( .A(B[3]), .Y(n12) );
  CLKINVX1 U10 ( .A(B[2]), .Y(n11) );
  CLKINVX1 U11 ( .A(B[1]), .Y(n10) );
  NAND2X1 U12 ( .A(B[0]), .B(n1), .Y(carry[1]) );
  CLKINVX1 U13 ( .A(A[0]), .Y(n1) );
  XNOR2X1 U14 ( .A(n9), .B(A[0]), .Y(DIFF[0]) );
endmodule


module VECTOR_MODE_DW01_sub_15 ( A, B, CI, DIFF, CO );
  input [13:0] A;
  input [13:0] B;
  output [13:0] DIFF;
  input CI;
  output CO;
  wire   n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14;
  wire   [14:0] carry;

  ADDFXL U2_1 ( .A(A[1]), .B(n10), .CI(carry[1]), .CO(carry[2]), .S(DIFF[1])
         );
  ADDFXL U2_3 ( .A(A[3]), .B(n12), .CI(carry[3]), .CO(carry[4]), .S(DIFF[3])
         );
  ADDFXL U2_2 ( .A(A[2]), .B(n11), .CI(carry[2]), .CO(carry[3]), .S(DIFF[2])
         );
  ADDFXL U2_4 ( .A(A[4]), .B(n13), .CI(carry[4]), .CO(carry[5]), .S(DIFF[4])
         );
  ADDFXL U2_5 ( .A(A[5]), .B(n14), .CI(carry[5]), .CO(carry[6]), .S(DIFF[5])
         );
  ADDFXL U2_6 ( .A(A[6]), .B(n8), .CI(carry[6]), .CO(carry[7]), .S(DIFF[6]) );
  ADDFXL U2_8 ( .A(A[8]), .B(n6), .CI(carry[8]), .CO(carry[9]), .S(DIFF[8]) );
  ADDFXL U2_7 ( .A(A[7]), .B(n7), .CI(carry[7]), .CO(carry[8]), .S(DIFF[7]) );
  ADDFXL U2_11 ( .A(A[11]), .B(n3), .CI(carry[11]), .CO(carry[12]), .S(
        DIFF[11]) );
  ADDFXL U2_10 ( .A(A[10]), .B(n4), .CI(carry[10]), .CO(carry[11]), .S(
        DIFF[10]) );
  ADDFXL U2_9 ( .A(A[9]), .B(n5), .CI(carry[9]), .CO(carry[10]), .S(DIFF[9])
         );
  ADDFXL U2_12 ( .A(A[12]), .B(n2), .CI(carry[12]), .CO(carry[13]), .S(
        DIFF[12]) );
  XOR3X1 U2_13 ( .A(A[13]), .B(n2), .C(carry[13]), .Y(DIFF[13]) );
  CLKINVX1 U1 ( .A(B[13]), .Y(n2) );
  CLKINVX1 U2 ( .A(B[0]), .Y(n9) );
  CLKINVX1 U3 ( .A(B[9]), .Y(n5) );
  CLKINVX1 U4 ( .A(B[10]), .Y(n4) );
  CLKINVX1 U5 ( .A(B[11]), .Y(n3) );
  CLKINVX1 U6 ( .A(B[7]), .Y(n7) );
  CLKINVX1 U7 ( .A(B[8]), .Y(n6) );
  CLKINVX1 U8 ( .A(B[6]), .Y(n8) );
  CLKINVX1 U9 ( .A(B[5]), .Y(n14) );
  CLKINVX1 U10 ( .A(B[4]), .Y(n13) );
  CLKINVX1 U11 ( .A(B[2]), .Y(n11) );
  CLKINVX1 U12 ( .A(B[3]), .Y(n12) );
  CLKINVX1 U13 ( .A(B[1]), .Y(n10) );
  NAND2X1 U14 ( .A(B[0]), .B(n1), .Y(carry[1]) );
  CLKINVX1 U15 ( .A(A[0]), .Y(n1) );
  XNOR2X1 U16 ( .A(n9), .B(A[0]), .Y(DIFF[0]) );
endmodule


module VECTOR_MODE_DW01_add_14 ( A, B, CI, SUM, CO );
  input [13:0] A;
  input [13:0] B;
  output [13:0] SUM;
  input CI;
  output CO;
  wire   n1;
  wire   [13:1] carry;

  ADDFXL U1_1 ( .A(A[1]), .B(B[1]), .CI(n1), .CO(carry[2]), .S(SUM[1]) );
  ADDFXL U1_3 ( .A(A[3]), .B(B[3]), .CI(carry[3]), .CO(carry[4]), .S(SUM[3])
         );
  ADDFXL U1_2 ( .A(A[2]), .B(B[2]), .CI(carry[2]), .CO(carry[3]), .S(SUM[2])
         );
  ADDFXL U1_4 ( .A(A[4]), .B(B[4]), .CI(carry[4]), .CO(carry[5]), .S(SUM[4])
         );
  ADDFXL U1_5 ( .A(A[5]), .B(B[5]), .CI(carry[5]), .CO(carry[6]), .S(SUM[5])
         );
  ADDFXL U1_6 ( .A(A[6]), .B(B[6]), .CI(carry[6]), .CO(carry[7]), .S(SUM[6])
         );
  ADDFXL U1_8 ( .A(A[8]), .B(B[8]), .CI(carry[8]), .CO(carry[9]), .S(SUM[8])
         );
  ADDFXL U1_7 ( .A(A[7]), .B(B[7]), .CI(carry[7]), .CO(carry[8]), .S(SUM[7])
         );
  ADDFXL U1_11 ( .A(A[11]), .B(B[11]), .CI(carry[11]), .CO(carry[12]), .S(
        SUM[11]) );
  ADDFXL U1_10 ( .A(A[10]), .B(B[10]), .CI(carry[10]), .CO(carry[11]), .S(
        SUM[10]) );
  ADDFXL U1_9 ( .A(A[9]), .B(B[9]), .CI(carry[9]), .CO(carry[10]), .S(SUM[9])
         );
  ADDFXL U1_12 ( .A(A[12]), .B(B[12]), .CI(carry[12]), .CO(carry[13]), .S(
        SUM[12]) );
  XOR3X1 U1_13 ( .A(A[13]), .B(B[13]), .C(carry[13]), .Y(SUM[13]) );
  AND2X2 U1 ( .A(B[0]), .B(A[0]), .Y(n1) );
  XOR2X1 U2 ( .A(B[0]), .B(A[0]), .Y(SUM[0]) );
endmodule


module VECTOR_MODE_DW_mult_tc_1 ( a, b, product );
  input [12:0] a;
  input [10:0] b;
  output [23:0] product;
  wire   n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n23, n25, n26,
         n27, n28, n30, n31, n32, n34, n35, n36, n37, n38, n39, n40, n41, n42,
         n43, n44, n45, n46, n47, n48, n49, n50, n51, n52, n53, n54, n55, n56,
         n57, n58, n59, n60, n61, n62, n63, n64, n65, n66, n122, n123, n124,
         n125, n126, n127, n128, n129, n130, n131, n132, n133, n134, n135,
         n136, n137, n138, n139, n140, n141, n142, n143, n144;
  assign n23 = a[11];
  assign n32 = a[10];

  ADDFXL U3 ( .A(n23), .B(n122), .CI(n3), .CO(n2), .S(product[21]) );
  ADDFXL U4 ( .A(n25), .B(n128), .CI(n4), .CO(n3), .S(product[20]) );
  ADDFXL U5 ( .A(n27), .B(n26), .CI(n5), .CO(n4), .S(product[19]) );
  ADDFXL U6 ( .A(n30), .B(n28), .CI(n6), .CO(n5), .S(product[18]) );
  ADDFXL U7 ( .A(n31), .B(n35), .CI(n7), .CO(n6), .S(product[17]) );
  ADDFXL U8 ( .A(n36), .B(n38), .CI(n8), .CO(n7), .S(product[16]) );
  ADDFXL U9 ( .A(n39), .B(n41), .CI(n9), .CO(n8), .S(product[15]) );
  ADDFXL U10 ( .A(n44), .B(n42), .CI(n10), .CO(n9), .S(product[14]) );
  ADDFXL U11 ( .A(n45), .B(n47), .CI(n11), .CO(n10), .S(product[13]) );
  ADDFXL U12 ( .A(n48), .B(n50), .CI(n12), .CO(n11), .S(product[12]) );
  ADDFXL U13 ( .A(n51), .B(n53), .CI(n13), .CO(n12), .S(product[11]) );
  ADDFXL U14 ( .A(n55), .B(n54), .CI(n123), .CO(n13), .S(product[10]) );
  ADDFXL U24 ( .A(n23), .B(n122), .CI(n32), .CO(n25), .S(n26) );
  ADDFXL U25 ( .A(n32), .B(a[9]), .CI(n128), .CO(n27), .S(n28) );
  ADDFXL U27 ( .A(n129), .B(a[8]), .CI(n34), .CO(n30), .S(n31) );
  CMPR42X1 U29 ( .A(n128), .B(a[7]), .C(a[9]), .D(a[12]), .ICI(n37), .S(n36), 
        .ICO(n34), .CO(n35) );
  CMPR42X1 U30 ( .A(n23), .B(n129), .C(a[6]), .D(a[8]), .ICI(n40), .S(n39), 
        .ICO(n37), .CO(n38) );
  CMPR42X1 U31 ( .A(n32), .B(n130), .C(a[5]), .D(a[7]), .ICI(n43), .S(n42), 
        .ICO(n40), .CO(n41) );
  CMPR42X1 U32 ( .A(a[9]), .B(a[12]), .C(a[4]), .D(a[6]), .ICI(n46), .S(n45), 
        .ICO(n43), .CO(n44) );
  CMPR42X1 U33 ( .A(n128), .B(n131), .C(a[5]), .D(a[3]), .ICI(n49), .S(n48), 
        .ICO(n46), .CO(n47) );
  CMPR42X1 U34 ( .A(n129), .B(n132), .C(a[4]), .D(a[2]), .ICI(n52), .S(n51), 
        .ICO(n49), .CO(n50) );
  CMPR42X1 U35 ( .A(n130), .B(n138), .C(a[3]), .D(a[1]), .ICI(n57), .S(n54), 
        .ICO(n52), .CO(n53) );
  ADDFXL U36 ( .A(a[0]), .B(a[2]), .CI(n58), .CO(n55), .S(n56) );
  ADDHXL U37 ( .A(n131), .B(n137), .CO(n57), .S(n58) );
  ADDFXL U38 ( .A(n136), .B(n132), .CI(a[1]), .CO(n59), .S(n60) );
  ADDFXL U39 ( .A(n135), .B(n138), .CI(a[0]), .CO(n61), .S(n62) );
  ADDHXL U40 ( .A(n137), .B(n134), .CO(n63), .S(n64) );
  ADDHXL U41 ( .A(n136), .B(n127), .CO(n65), .S(n66) );
  CLKINVX1 U61 ( .A(a[12]), .Y(n122) );
  CLKINVX1 U62 ( .A(n65), .Y(n126) );
  CLKINVX1 U63 ( .A(n64), .Y(n133) );
  CLKINVX1 U64 ( .A(n140), .Y(n124) );
  CLKINVX1 U65 ( .A(n141), .Y(n125) );
  CLKINVX1 U66 ( .A(a[1]), .Y(n127) );
  CLKINVX1 U67 ( .A(n139), .Y(n123) );
  CLKINVX1 U68 ( .A(a[3]), .Y(n135) );
  CLKINVX1 U69 ( .A(a[4]), .Y(n136) );
  CLKINVX1 U70 ( .A(a[2]), .Y(n134) );
  CLKINVX1 U71 ( .A(a[6]), .Y(n138) );
  CLKINVX1 U72 ( .A(a[5]), .Y(n137) );
  CLKINVX1 U73 ( .A(a[7]), .Y(n132) );
  CLKINVX1 U74 ( .A(a[8]), .Y(n131) );
  CLKINVX1 U75 ( .A(a[9]), .Y(n130) );
  CLKINVX1 U76 ( .A(n32), .Y(n129) );
  CLKINVX1 U77 ( .A(n23), .Y(n128) );
  CLKINVX1 U78 ( .A(n2), .Y(product[23]) );
  AOI222XL U79 ( .A0(n124), .A1(n56), .B0(n124), .B1(n59), .C0(n59), .C1(n56), 
        .Y(n139) );
  AOI222XL U80 ( .A0(n125), .A1(n60), .B0(n125), .B1(n61), .C0(n61), .C1(n60), 
        .Y(n140) );
  AOI222XL U81 ( .A0(n142), .A1(n62), .B0(n142), .B1(n63), .C0(n63), .C1(n62), 
        .Y(n141) );
  OAI222XL U82 ( .A0(n143), .A1(n133), .B0(n143), .B1(n126), .C0(n126), .C1(
        n133), .Y(n142) );
  AOI222XL U83 ( .A0(n144), .A1(n66), .B0(n135), .B1(n144), .C0(n135), .C1(n66), .Y(n143) );
  OAI32X1 U84 ( .A0(a[0]), .A1(a[2]), .A2(a[1]), .B0(a[0]), .B1(n135), .Y(n144) );
endmodule


module VECTOR_MODE_DW_mult_tc_0 ( a, b, product );
  input [12:0] a;
  input [10:0] b;
  output [23:0] product;
  wire   n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n23, n25, n26,
         n27, n28, n30, n31, n32, n34, n35, n36, n37, n38, n39, n40, n41, n42,
         n43, n44, n45, n46, n47, n48, n49, n50, n51, n52, n53, n54, n55, n56,
         n57, n58, n59, n60, n61, n62, n63, n64, n65, n66, n122, n123, n124,
         n125, n126, n127, n128, n129, n130, n131, n132, n133, n134, n135,
         n136, n137, n138, n139, n140, n141, n142, n143, n144;
  assign n23 = a[11];
  assign n32 = a[10];

  ADDFXL U3 ( .A(n23), .B(n122), .CI(n3), .CO(n2), .S(product[21]) );
  ADDFXL U4 ( .A(n25), .B(n123), .CI(n4), .CO(n3), .S(product[20]) );
  ADDFXL U5 ( .A(n27), .B(n26), .CI(n5), .CO(n4), .S(product[19]) );
  ADDFXL U6 ( .A(n30), .B(n28), .CI(n6), .CO(n5), .S(product[18]) );
  ADDFXL U7 ( .A(n31), .B(n35), .CI(n7), .CO(n6), .S(product[17]) );
  ADDFXL U8 ( .A(n36), .B(n38), .CI(n8), .CO(n7), .S(product[16]) );
  ADDFXL U9 ( .A(n39), .B(n41), .CI(n9), .CO(n8), .S(product[15]) );
  ADDFXL U10 ( .A(n44), .B(n42), .CI(n10), .CO(n9), .S(product[14]) );
  ADDFXL U11 ( .A(n45), .B(n47), .CI(n11), .CO(n10), .S(product[13]) );
  ADDFXL U12 ( .A(n48), .B(n50), .CI(n12), .CO(n11), .S(product[12]) );
  ADDFXL U13 ( .A(n51), .B(n53), .CI(n13), .CO(n12), .S(product[11]) );
  ADDFXL U14 ( .A(n55), .B(n54), .CI(n126), .CO(n13), .S(product[10]) );
  ADDFXL U24 ( .A(n23), .B(n122), .CI(n32), .CO(n25), .S(n26) );
  ADDFXL U25 ( .A(n32), .B(a[9]), .CI(n123), .CO(n27), .S(n28) );
  ADDFXL U27 ( .A(n124), .B(a[8]), .CI(n34), .CO(n30), .S(n31) );
  CMPR42X1 U29 ( .A(n123), .B(a[7]), .C(a[9]), .D(a[12]), .ICI(n37), .S(n36), 
        .ICO(n34), .CO(n35) );
  CMPR42X1 U30 ( .A(n23), .B(n124), .C(a[6]), .D(a[8]), .ICI(n40), .S(n39), 
        .ICO(n37), .CO(n38) );
  CMPR42X1 U31 ( .A(n32), .B(n125), .C(a[5]), .D(a[7]), .ICI(n43), .S(n42), 
        .ICO(n40), .CO(n41) );
  CMPR42X1 U32 ( .A(a[9]), .B(a[12]), .C(a[4]), .D(a[6]), .ICI(n46), .S(n45), 
        .ICO(n43), .CO(n44) );
  CMPR42X1 U33 ( .A(n123), .B(n127), .C(a[5]), .D(a[3]), .ICI(n49), .S(n48), 
        .ICO(n46), .CO(n47) );
  CMPR42X1 U34 ( .A(n124), .B(n129), .C(a[4]), .D(a[2]), .ICI(n52), .S(n51), 
        .ICO(n49), .CO(n50) );
  CMPR42X1 U35 ( .A(n125), .B(n131), .C(a[3]), .D(a[1]), .ICI(n57), .S(n54), 
        .ICO(n52), .CO(n53) );
  ADDFXL U36 ( .A(a[0]), .B(a[2]), .CI(n58), .CO(n55), .S(n56) );
  ADDHXL U37 ( .A(n127), .B(n138), .CO(n57), .S(n58) );
  ADDFXL U38 ( .A(n137), .B(n129), .CI(a[1]), .CO(n59), .S(n60) );
  ADDFXL U39 ( .A(n136), .B(n131), .CI(a[0]), .CO(n61), .S(n62) );
  ADDHXL U40 ( .A(n138), .B(n135), .CO(n63), .S(n64) );
  ADDHXL U41 ( .A(n137), .B(n133), .CO(n65), .S(n66) );
  CLKINVX1 U61 ( .A(a[12]), .Y(n122) );
  CLKINVX1 U62 ( .A(n65), .Y(n132) );
  CLKINVX1 U63 ( .A(n64), .Y(n134) );
  CLKINVX1 U64 ( .A(n140), .Y(n128) );
  CLKINVX1 U65 ( .A(n141), .Y(n130) );
  CLKINVX1 U66 ( .A(a[1]), .Y(n133) );
  CLKINVX1 U67 ( .A(n139), .Y(n126) );
  CLKINVX1 U68 ( .A(a[3]), .Y(n136) );
  CLKINVX1 U69 ( .A(a[4]), .Y(n137) );
  CLKINVX1 U70 ( .A(a[2]), .Y(n135) );
  CLKINVX1 U71 ( .A(a[6]), .Y(n131) );
  CLKINVX1 U72 ( .A(a[5]), .Y(n138) );
  CLKINVX1 U73 ( .A(a[7]), .Y(n129) );
  CLKINVX1 U74 ( .A(a[8]), .Y(n127) );
  CLKINVX1 U75 ( .A(a[9]), .Y(n125) );
  CLKINVX1 U76 ( .A(n32), .Y(n124) );
  CLKINVX1 U77 ( .A(n23), .Y(n123) );
  CLKINVX1 U78 ( .A(n2), .Y(product[23]) );
  AOI222XL U79 ( .A0(n128), .A1(n56), .B0(n128), .B1(n59), .C0(n59), .C1(n56), 
        .Y(n139) );
  AOI222XL U80 ( .A0(n130), .A1(n60), .B0(n130), .B1(n61), .C0(n61), .C1(n60), 
        .Y(n140) );
  AOI222XL U81 ( .A0(n142), .A1(n62), .B0(n142), .B1(n63), .C0(n63), .C1(n62), 
        .Y(n141) );
  OAI222XL U82 ( .A0(n143), .A1(n134), .B0(n143), .B1(n132), .C0(n132), .C1(
        n134), .Y(n142) );
  AOI222XL U83 ( .A0(n144), .A1(n66), .B0(n136), .B1(n144), .C0(n136), .C1(n66), .Y(n143) );
  OAI32X1 U84 ( .A0(a[0]), .A1(a[2]), .A2(a[1]), .B0(a[0]), .B1(n136), .Y(n144) );
endmodule


module VECTOR_MODE ( ori_X, ori_Y, start, reset, clk, rot_X, rot_Y, sign_d, 
        done );
  input [12:0] ori_X;
  input [12:0] ori_Y;
  output [12:0] rot_X;
  output [12:0] rot_Y;
  output [7:0] sign_d;
  input start, reset, clk;
  output done;
  wire   rot_X_temp_wire_24, rot_Y_temp_wire_24, \cal_X_temp_wire[12] ,
         \sign_d_reg[0] , N104, N105, N106, N107, N108, N109, N110, N111, N112,
         N113, N114, N115, N116, N117, N118, N119, N120, N121, N122, N123,
         N124, N125, N126, N127, N128, N129, N135, N136, N203, N204, N205,
         N206, N207, N208, N209, N210, N211, N212, N213, N214, N215, N216,
         N217, N218, N219, N220, N221, N222, N223, N224, N225, N226, N227,
         N228, N229, N230, N246, N247, N248, N249, N250, N251, N252, N253,
         N254, N255, N256, N257, N258, N259, N260, N261, N262, N263, N264,
         N265, N266, N267, N268, N269, N270, N271, N272, N273, N289, N290,
         N291, N292, N293, N294, N295, N296, N297, N298, N299, N300, N301,
         N302, N303, N304, N305, N306, N307, N308, N309, N310, N311, N312,
         N313, N314, N315, N316, N332, N333, N334, N335, N336, N337, N338,
         N339, N340, N341, N342, N343, N344, N345, N346, N347, N348, N349,
         N350, N351, N352, N353, N354, N355, N356, N357, N358, N359, N424,
         N425, N426, N427, N428, N429, N430, N431, N432, N433, N434, N435,
         N436, N437, N453, N454, N455, N456, N457, N458, N459, N460, N461,
         N462, N463, N464, N465, N466, N467, N468, N469, N470, N471, N472,
         N473, N474, N475, N476, N477, N478, N479, N480, N496, N497, N498,
         N499, N500, N501, N502, N503, N504, N505, N506, N507, N508, N509,
         N510, N511, N512, N513, N514, N515, N516, N517, N518, N519, N520,
         N521, N522, N523, N539, N540, N541, N542, N543, N544, N545, N546,
         N547, N548, N549, N550, N551, N552, N553, N554, N555, N556, N557,
         N558, N559, N560, N561, N562, N563, N564, N565, N566, N621, N622,
         N623, N624, N625, N626, N627, N628, N629, N630, N631, N632, N633,
         N634, N635, N636, N637, N638, N639, N640, N641, N642, N643, N644,
         N645, N646, N661, N662, N663, N664, N665, N666, N667, N668, N669,
         N670, N671, N672, N673, N674, N675, N676, N677, N678, N679, N680,
         N681, N682, N683, N684, N685, N686, N701, N702, N703, N704, N705,
         N706, N707, N708, N709, N710, N711, N712, N713, N714, N715, N716,
         N717, N718, N719, N720, N721, N722, N723, N724, N725, N726, N741,
         N742, N743, N744, N745, N746, N747, N748, N749, N750, N751, N752,
         N753, N754, N755, N756, N757, N758, N759, N760, N761, N762, N763,
         N764, N765, N766, N814, N815, N816, N817, N818, N819, N820, N821,
         N822, N823, N824, N825, N826, N827, N828, N829, N830, N831, N832,
         N833, N834, N835, N836, N837, N838, N839, N854, N855, N856, N857,
         N858, N859, N860, N861, N862, N863, N864, N865, N866, N867, N868,
         N869, N870, N871, N872, N873, N874, N875, N876, N877, N878, N879,
         N894, N895, N896, N897, N898, N899, N900, N901, N902, N903, N904,
         N905, N906, N907, N908, N909, N910, N911, N912, N913, N914, N915,
         N916, N917, N918, N919, N934, N935, N936, N937, N938, N939, N940,
         N941, N942, N943, N944, N945, N946, N947, N948, N949, N950, N951,
         N952, N953, N954, N955, N956, N957, N958, N959, n94, n99, n100, n101,
         n102, n103, n104, n105, n106, n107, n108, n109, n111, n112, n113,
         n114, n115, n116, n117, n118, n119, n120, n121, n122, n123, n124,
         n125, n126, n127, n128, n129, n130, n131, n132, n133, n134, n135,
         n136, n137, n138, n139, n140, n141, n142, n143, n144, n145, n146,
         n147, n148, n149, n150, n151, n152, n153, n154, n155, n156, n157,
         n158, n159, n160, n161, n162, n163, n164, n165, n166, n167, n168,
         n169, n170, n171, n172, n173, n174, n175, n176, n177, n178, n179,
         n180, n181, n182, n183, n184, n185, n186, n187, n188, n189, n190,
         n191, n192, n193, n194, n195, n196, n197, n198, n199, n200, n201,
         n202, n203, n204, n205, n206, n207, n208, n209, n210, n211, n212,
         n213, n214, n215, n216, n217, n218, n219, n220, n221, n222, n223,
         n224, n225, n226, n227, n228, n229, n230, n231, n232, n233, n234,
         n235, n236, n237, n238, n239, n240, n241, n242, n243, n244, n245,
         n246, n247, n248, n249, n250, n251, n252, n253, n255, n256, n257,
         n258, n259, n260, n261, n262, n263, n264, n265, n266, n267, n268,
         n269, n270, n271, n272, n273, n274, n275, n276, n277, n278, n279,
         n280, n281, n282, n283, n284, n285, n286, n287, n288, n289, n290,
         n291, n292, n293, n294, n295, n296, n297, n298, n299, n300, n301,
         n302, n303, n304, n305, n306, n307, n308, n309, n310, n311, n312,
         n313, n314, n315, n316, n317, n318, n319, n320, n321, n322, n323,
         n324, n325, n326, n327, n328, n329, n330, n331, n332, n333, n334,
         n335, n336, n337, n338, n339, n340, n341, n342, n343, n344, n345,
         n346, n347, n348, n349, n350, n351, n352, n353, n354, n355, n356,
         n357, n358, n359, n360, n361, n362, n363, n364, n365, n366, n367,
         n368, n369, n370, n371, n372, n373, n374, n375, n376, n377, n378,
         n379, n380, n381, n382, n383, n384, n385, n386, n387, n388, n389,
         n390, n391, n392, n393, n394, n395, n396, n397, n398, n399, n400,
         n401, n402, n403, n405, n406, n407, n408, n409, n410, n411,
         \sub_216/carry[13] , \sub_216/carry[12] , \sub_216/carry[11] ,
         \sub_216/carry[10] , \sub_216/carry[9] , \sub_216/carry[8] ,
         \sub_216/carry[7] , \sub_216/carry[6] , \sub_216/carry[5] ,
         \sub_216/carry[4] , \sub_216/carry[3] , \sub_216/carry[2] ,
         \sub_216/carry[1] , \add_216/carry[13] , \add_216/carry[12] ,
         \add_216/carry[11] , \add_216/carry[10] , \add_216/carry[9] ,
         \add_216/carry[8] , \add_216/carry[7] , \add_216/carry[6] ,
         \add_216/carry[5] , \add_216/carry[4] , \add_216/carry[3] ,
         \add_216/carry[2] , \add_216/carry[1] , \sub_214/carry[13] ,
         \sub_214/carry[12] , \sub_214/carry[11] , \sub_214/carry[10] ,
         \sub_214/carry[9] , \sub_214/carry[8] , \sub_214/carry[7] ,
         \sub_214/carry[6] , \sub_214/carry[5] , \sub_214/carry[4] ,
         \sub_214/carry[3] , \sub_214/carry[2] , \sub_214/carry[1] ,
         \add_214/carry[13] , \add_214/carry[12] , \add_214/carry[11] ,
         \add_214/carry[10] , \add_214/carry[9] , \add_214/carry[8] ,
         \add_214/carry[7] , \add_214/carry[6] , \add_214/carry[5] ,
         \add_214/carry[4] , \add_214/carry[3] , \add_214/carry[2] ,
         \add_214/carry[1] , \add_191/carry[13] , \add_191/carry[12] ,
         \add_191/carry[11] , \add_191/carry[10] , \add_191/carry[9] ,
         \add_191/carry[8] , \add_191/carry[7] , \add_191/carry[6] ,
         \add_191/carry[5] , \add_191/carry[4] , \add_191/carry[3] ,
         \add_191/carry[2] , \add_191/carry[1] , \sub_191/carry[13] ,
         \sub_191/carry[12] , \sub_191/carry[11] , \sub_191/carry[10] ,
         \sub_191/carry[9] , \sub_191/carry[8] , \sub_191/carry[7] ,
         \sub_191/carry[6] , \sub_191/carry[5] , \sub_191/carry[4] ,
         \sub_191/carry[3] , \sub_191/carry[2] , \sub_191/carry[1] ,
         \add_189/carry[13] , \add_189/carry[12] , \add_189/carry[11] ,
         \add_189/carry[10] , \add_189/carry[9] , \add_189/carry[8] ,
         \add_189/carry[7] , \add_189/carry[6] , \add_189/carry[5] ,
         \add_189/carry[4] , \add_189/carry[3] , \add_189/carry[2] ,
         \add_189/carry[1] , \sub_189/carry[13] , \sub_189/carry[12] ,
         \sub_189/carry[11] , \sub_189/carry[10] , \sub_189/carry[9] ,
         \sub_189/carry[8] , \sub_189/carry[7] , \sub_189/carry[6] ,
         \sub_189/carry[5] , \sub_189/carry[4] , \sub_189/carry[3] ,
         \sub_189/carry[2] , \sub_189/carry[1] , \sub_167/carry[13] ,
         \sub_167/carry[12] , \sub_167/carry[11] , \sub_167/carry[10] ,
         \sub_167/carry[9] , \sub_167/carry[8] , \sub_167/carry[7] ,
         \sub_167/carry[6] , \sub_167/carry[5] , \sub_167/carry[4] ,
         \sub_167/carry[3] , \sub_167/carry[2] , \sub_167/carry[1] ,
         \add_167/carry[13] , \add_167/carry[12] , \add_167/carry[11] ,
         \add_167/carry[10] , \add_167/carry[9] , \add_167/carry[8] ,
         \add_167/carry[7] , \add_167/carry[6] , \add_167/carry[5] ,
         \add_167/carry[4] , \add_167/carry[3] , \add_167/carry[2] ,
         \add_167/carry[1] , \sub_165/carry[13] , \sub_165/carry[12] ,
         \sub_165/carry[11] , \sub_165/carry[10] , \sub_165/carry[9] ,
         \sub_165/carry[8] , \sub_165/carry[7] , \sub_165/carry[6] ,
         \sub_165/carry[5] , \sub_165/carry[4] , \sub_165/carry[3] ,
         \sub_165/carry[2] , \sub_165/carry[1] , \add_165/carry[13] ,
         \add_165/carry[12] , \add_165/carry[11] , \add_165/carry[10] ,
         \add_165/carry[9] , \add_165/carry[8] , \add_165/carry[7] ,
         \add_165/carry[6] , \add_165/carry[5] , \add_165/carry[4] ,
         \add_165/carry[3] , \add_165/carry[2] , \add_165/carry[1] ,
         \add_143/carry[13] , \add_143/carry[12] , \add_143/carry[11] ,
         \add_143/carry[10] , \add_143/carry[9] , \add_143/carry[8] ,
         \add_143/carry[7] , \add_143/carry[6] , \add_143/carry[5] ,
         \add_143/carry[4] , \add_143/carry[3] , \add_143/carry[2] ,
         \add_143/carry[1] , \sub_143/carry[13] , \sub_143/carry[12] ,
         \sub_143/carry[11] , \sub_143/carry[10] , \sub_143/carry[9] ,
         \sub_143/carry[8] , \sub_143/carry[7] , \sub_143/carry[6] ,
         \sub_143/carry[5] , \sub_143/carry[4] , \sub_143/carry[3] ,
         \sub_143/carry[2] , \sub_143/carry[1] , \add_141/carry[13] ,
         \add_141/carry[12] , \add_141/carry[11] , \add_141/carry[10] ,
         \add_141/carry[9] , \add_141/carry[8] , \add_141/carry[7] ,
         \add_141/carry[6] , \add_141/carry[5] , \add_141/carry[4] ,
         \add_141/carry[3] , \add_141/carry[2] , \add_141/carry[1] ,
         \sub_141/carry[13] , \sub_141/carry[12] , \sub_141/carry[11] ,
         \sub_141/carry[10] , \sub_141/carry[9] , \sub_141/carry[8] ,
         \sub_141/carry[7] , \sub_141/carry[6] , \sub_141/carry[5] ,
         \sub_141/carry[4] , \sub_141/carry[3] , \sub_141/carry[2] ,
         \sub_141/carry[1] , n1, n2, n3, n4, n9, n10, n11, n12, n17, n18, n19,
         n20, n24, n25, n26, n27, n31, n33, n34, n35, n36, n37, n38, n39, n40,
         n41, n42, n43, n44, n45, n46, n47, n48, n49, n50, n51, n52, n53, n54,
         n55, n56, n57, n58, n59, n60, n61, n62, n63, n64, n65, n66, n67, n68,
         n69, n70, n71, n72, n73, n74, n75, n76, n77, n78, n79, n80, n81, n82,
         n83, n84, n85, n86, n87, n88, n89, n90, n91, n92, n93, n95, n96, n97,
         n98, n110, n254, n404, n412, n413, n414, n415, n416, n417, n418, n419,
         n420, n421, n422, n423, n424, n425, n426, n427, n428, n429, n430,
         n431, n432, n433, n434, n435, n436, n437, n438, n439, n440, n441,
         n442, n443, n445, n446, n447, n448, n449, n450, n451, n452, n453,
         n454, n455, n456, n457, n458, n459, n460, n461, n462, n463, n464,
         n465, n466, n467, n468, n469, n470, n471, n472, n473, n474, n475,
         n476, n477, n478, n479, n480, n481, n482, n483, n484, n485, n486,
         n487, n488, n489, n490, n491, n492, n493, n494, n495, n496, n497,
         n498, n499, n500, n501, n502, n503, n504, n505, n506;
  wire   [1:0] current_state;
  wire   [2:0] iter_reg;
  wire   [12:0] cal_X_reg;
  wire   [21:10] rot_X_temp_wire;
  wire   [12:0] cal_Y_reg;
  wire   [21:10] rot_Y_temp_wire;
  wire   [12:0] cal_X_trac_wire;
  wire   [12:0] cal_Y_trac_wire;
  wire   [1:0] next_state;
  wire   SYNOPSYS_UNCONNECTED__0, SYNOPSYS_UNCONNECTED__1, 
        SYNOPSYS_UNCONNECTED__2, SYNOPSYS_UNCONNECTED__3, 
        SYNOPSYS_UNCONNECTED__4, SYNOPSYS_UNCONNECTED__5, 
        SYNOPSYS_UNCONNECTED__6, SYNOPSYS_UNCONNECTED__7, 
        SYNOPSYS_UNCONNECTED__8, SYNOPSYS_UNCONNECTED__9, 
        SYNOPSYS_UNCONNECTED__10, SYNOPSYS_UNCONNECTED__11, 
        SYNOPSYS_UNCONNECTED__12, SYNOPSYS_UNCONNECTED__13, 
        SYNOPSYS_UNCONNECTED__14, SYNOPSYS_UNCONNECTED__15, 
        SYNOPSYS_UNCONNECTED__16, SYNOPSYS_UNCONNECTED__17, 
        SYNOPSYS_UNCONNECTED__18, SYNOPSYS_UNCONNECTED__19, 
        SYNOPSYS_UNCONNECTED__20, SYNOPSYS_UNCONNECTED__21, 
        SYNOPSYS_UNCONNECTED__22, SYNOPSYS_UNCONNECTED__23, 
        SYNOPSYS_UNCONNECTED__24, SYNOPSYS_UNCONNECTED__25, 
        SYNOPSYS_UNCONNECTED__26, SYNOPSYS_UNCONNECTED__27, 
        SYNOPSYS_UNCONNECTED__28, SYNOPSYS_UNCONNECTED__29;

  VECTOR_MODE_DW01_sub_2 sub_212 ( .A({n446, n446, n52, n51, n61, n60, n59, 
        n58, n57, n56, n55, n54, n53, n50}), .B({n452, n452, n452, n452, n452, 
        n40, n39, n49, n48, n47, n46, n45, n44, n43}), .CI(1'b0), .DIFF({N879, 
        SYNOPSYS_UNCONNECTED__0, N878, N877, N876, N875, N874, N873, N872, 
        N871, N870, N869, N868, N867}) );
  VECTOR_MODE_DW01_add_2 add_212 ( .A({n446, n446, n52, n51, n61, n60, n59, 
        n58, n57, n56, n55, n54, n53, n50}), .B({n453, n452, n452, n452, n452, 
        n40, n39, n49, n48, n47, n46, n45, n44, n43}), .CI(1'b0), .SUM({N866, 
        SYNOPSYS_UNCONNECTED__1, N865, N864, N863, N862, N861, N860, N859, 
        N858, N857, N856, N855, N854}) );
  VECTOR_MODE_DW01_sub_3 sub_210 ( .A({n446, n446, n52, n51, n61, n60, n59, 
        n58, n57, n56, n55, n54, n53, n50}), .B({n452, n452, n452, n40, n39, 
        n49, n48, n47, n46, n45, n44, n43, n42, n41}), .CI(1'b0), .DIFF({N839, 
        SYNOPSYS_UNCONNECTED__2, N838, N837, N836, N835, N834, N833, N832, 
        N831, N830, N829, N828, N827}) );
  VECTOR_MODE_DW01_add_3 add_210 ( .A({n446, n446, n52, n51, n61, n60, n59, 
        n58, n57, n56, n55, n54, n53, n50}), .B({n452, n452, n452, n40, n39, 
        n49, n48, n47, n46, n45, n44, n43, n42, n41}), .CI(1'b0), .SUM({N826, 
        SYNOPSYS_UNCONNECTED__3, N825, N824, N823, N822, N821, N820, N819, 
        N818, N817, N816, N815, N814}) );
  VECTOR_MODE_DW01_add_6 add_187 ( .A({n453, \cal_X_temp_wire[12] , n40, n39, 
        n49, n48, n47, n46, n45, n44, n43, n42, n41, n38}), .B({n447, n446, 
        n447, n446, n446, n52, n51, n61, n60, n59, n58, n57, n56, n55}), .CI(
        1'b0), .SUM({N686, SYNOPSYS_UNCONNECTED__4, N685, N684, N683, N682, 
        N681, N680, N679, N678, N677, N676, N675, N674}) );
  VECTOR_MODE_DW01_sub_6 sub_187 ( .A({n452, n452, n40, n39, n49, n48, n47, 
        n46, n45, n44, n43, n42, n41, n38}), .B({n446, n446, n446, n446, n446, 
        n52, n51, n61, n60, n59, n58, n57, n56, n55}), .CI(1'b0), .DIFF({N673, 
        SYNOPSYS_UNCONNECTED__5, N672, N671, N670, N669, N668, N667, N666, 
        N665, N664, N663, N662, N661}) );
  VECTOR_MODE_DW01_add_7 add_185 ( .A({n452, n452, n40, n39, n49, n48, n47, 
        n46, n45, n44, n43, n42, n41, n38}), .B({n446, n446, n446, n52, n51, 
        n61, n60, n59, n58, n57, n56, n55, n54, n53}), .CI(1'b0), .SUM({N646, 
        SYNOPSYS_UNCONNECTED__6, N645, N644, N643, N642, N641, N640, N639, 
        N638, N637, N636, N635, N634}) );
  VECTOR_MODE_DW01_sub_7 sub_185 ( .A({n452, n452, n40, n39, n49, n48, n47, 
        n46, n45, n44, n43, n42, n41, n38}), .B({n446, n446, n446, n52, n51, 
        n61, n60, n59, n58, n57, n56, n55, n54, n53}), .CI(1'b0), .DIFF({N633, 
        SYNOPSYS_UNCONNECTED__7, N632, N631, N630, N629, N628, N627, N626, 
        N625, N624, N623, N622, N621}) );
  VECTOR_MODE_DW01_sub_10 sub_163 ( .A({n458, n458, n83, n82, n81, n80, n79, 
        n78, n72, n73, n74, n75, n76, n77}), .B({n466, n467, n467, n467, n71, 
        n70, n69, n68, n67, n62, n63, n64, n65, n66}), .CI(1'b0), .DIFF({N480, 
        N479, N478, N477, N476, N475, N474, N473, N472, N471, N470, N469, N468, 
        N467}) );
  VECTOR_MODE_DW01_add_10 add_163 ( .A({n458, n458, n83, n82, n81, n80, n79, 
        n78, n72, n73, n74, n75, n76, n77}), .B({n466, n466, n466, n466, n71, 
        n70, n69, n68, n67, n62, n63, n64, n65, n66}), .CI(1'b0), .SUM({N466, 
        N465, N464, N463, N462, N461, N460, N459, N458, N457, N456, N455, N454, 
        N453}) );
  VECTOR_MODE_DW01_sub_11 sub_161 ( .A({n458, n458, n83, n82, n81, n80, n79, 
        n78, n72, n73, n74, n75, n76, n77}), .B({n466, n467, n71, n70, n69, 
        n68, n67, n62, n63, n64, n65, n66, n84, n85}), .CI(1'b0), .DIFF({N437, 
        N436, N435, N434, N433, N432, N431, N430, N429, N428, N427, N426, N425, 
        N424}) );
  VECTOR_MODE_DW01_add_13 add_139 ( .A({n467, n467, n71, n70, n69, n68, n67, 
        n62, n63, n64, n65, n66, n84, n85}), .B({n34, n35, n36, n34, n83, n82, 
        n81, n80, n79, n78, n72, n73, n74, n75}), .CI(1'b0), .SUM({N273, N272, 
        N271, N270, N269, N268, N267, N266, N265, N264, N263, N262, N261, N260}) );
  VECTOR_MODE_DW01_sub_14 sub_139 ( .A({n467, n467, n71, n70, n69, n68, n67, 
        n62, n63, n64, n65, n66, n84, n85}), .B({n34, n458, n458, n458, n83, 
        n82, n81, n80, n79, n78, n72, n73, n74, n75}), .CI(1'b0), .DIFF({N259, 
        N258, N257, N256, N255, N254, N253, N252, N251, N250, N249, N248, N247, 
        N246}) );
  VECTOR_MODE_DW01_sub_15 sub_137 ( .A({n467, n467, n71, n70, n69, n68, n67, 
        n62, n63, n64, n65, n66, n84, n85}), .B({n35, n458, n83, n82, n81, n80, 
        n79, n78, n72, n73, n74, n75, n76, n77}), .CI(1'b0), .DIFF({N216, N215, 
        N214, N213, N212, N211, N210, N209, N208, N207, N206, N205, N204, N203}) );
  VECTOR_MODE_DW01_add_14 r421 ( .A({n1, n467, n71, n70, n69, n68, n67, n62, 
        n63, n64, n65, n66, n84, n85}), .B({n35, n36, n83, n82, n81, n80, n79, 
        n78, n72, n73, n74, n75, n76, n77}), .CI(1'b0), .SUM({N230, N229, N228, 
        N227, N226, N225, N224, N223, N222, N221, N220, N219, N218, N217}) );
  VECTOR_MODE_DW_mult_tc_1 mult_33 ( .a({n466, n71, n70, n69, n68, n67, n62, 
        n63, n64, n65, n66, n84, n85}), .b({1'b0, 1'b1, 1'b0, 1'b0, 1'b1, 1'b1, 
        1'b0, 1'b1, 1'b1, 1'b1, 1'b0}), .product({rot_X_temp_wire_24, 
        SYNOPSYS_UNCONNECTED__8, rot_X_temp_wire, SYNOPSYS_UNCONNECTED__9, 
        SYNOPSYS_UNCONNECTED__10, SYNOPSYS_UNCONNECTED__11, 
        SYNOPSYS_UNCONNECTED__12, SYNOPSYS_UNCONNECTED__13, 
        SYNOPSYS_UNCONNECTED__14, SYNOPSYS_UNCONNECTED__15, 
        SYNOPSYS_UNCONNECTED__16, SYNOPSYS_UNCONNECTED__17, 
        SYNOPSYS_UNCONNECTED__18}) );
  VECTOR_MODE_DW_mult_tc_0 mult_34 ( .a({n36, n83, n82, n81, n80, n79, n78, 
        n72, n73, n74, n75, n76, n77}), .b({1'b0, 1'b1, 1'b0, 1'b0, 1'b1, 1'b1, 
        1'b0, 1'b1, 1'b1, 1'b1, 1'b0}), .product({rot_Y_temp_wire_24, 
        SYNOPSYS_UNCONNECTED__19, rot_Y_temp_wire, SYNOPSYS_UNCONNECTED__20, 
        SYNOPSYS_UNCONNECTED__21, SYNOPSYS_UNCONNECTED__22, 
        SYNOPSYS_UNCONNECTED__23, SYNOPSYS_UNCONNECTED__24, 
        SYNOPSYS_UNCONNECTED__25, SYNOPSYS_UNCONNECTED__26, 
        SYNOPSYS_UNCONNECTED__27, SYNOPSYS_UNCONNECTED__28, 
        SYNOPSYS_UNCONNECTED__29}) );
  DFFRX1 \sign_d_reg_reg[7]  ( .D(n411), .CK(clk), .RN(n470), .QN(n100) );
  DFFRX1 \sign_d_reg_reg[5]  ( .D(n409), .CK(clk), .RN(n470), .QN(n102) );
  DFFRX1 \sign_d_reg_reg[3]  ( .D(n407), .CK(clk), .RN(n470), .QN(n104) );
  DFFRX1 \sign_d_reg_reg[6]  ( .D(n410), .CK(clk), .RN(n470), .QN(n101) );
  DFFRX1 \sign_d_reg_reg[4]  ( .D(n408), .CK(clk), .RN(n470), .QN(n103) );
  DFFRX1 \sign_d_reg_reg[2]  ( .D(n406), .CK(clk), .RN(n470), .QN(n105) );
  DFFRX1 \sign_d_reg_reg[1]  ( .D(n405), .CK(clk), .RN(n470), .QN(n106) );
  DFFRX1 \current_state_reg[0]  ( .D(next_state[0]), .CK(clk), .RN(n472), .Q(
        current_state[0]), .QN(n94) );
  DFFRX1 \iter_reg_reg[1]  ( .D(N135), .CK(clk), .RN(n472), .Q(iter_reg[1]), 
        .QN(n99) );
  DFFRXL \current_state_reg[1]  ( .D(next_state[1]), .CK(clk), .RN(reset), .Q(
        current_state[1]) );
  DFFRXL \sign_d_reg_reg[0]  ( .D(n496), .CK(clk), .RN(n470), .Q(
        \sign_d_reg[0] ) );
  DFFRXL \cal_X_reg_reg[4]  ( .D(N108), .CK(clk), .RN(n470), .Q(cal_X_reg[4]), 
        .QN(n3) );
  DFFRXL \cal_X_reg_reg[3]  ( .D(N107), .CK(clk), .RN(n470), .Q(cal_X_reg[3])
         );
  DFFRXL \cal_X_reg_reg[2]  ( .D(N106), .CK(clk), .RN(n471), .Q(cal_X_reg[2])
         );
  DFFRXL \cal_X_reg_reg[1]  ( .D(N105), .CK(clk), .RN(n472), .Q(cal_X_reg[1])
         );
  DFFRXL \cal_X_reg_reg[0]  ( .D(N104), .CK(clk), .RN(n472), .Q(cal_X_reg[0])
         );
  DFFRXL \cal_Y_reg_reg[4]  ( .D(N121), .CK(clk), .RN(n471), .Q(cal_Y_reg[4]), 
        .QN(n2) );
  DFFRXL \cal_Y_reg_reg[3]  ( .D(N120), .CK(clk), .RN(n471), .Q(cal_Y_reg[3])
         );
  DFFRXL \cal_Y_reg_reg[2]  ( .D(N119), .CK(clk), .RN(n471), .Q(cal_Y_reg[2])
         );
  DFFRXL \cal_Y_reg_reg[1]  ( .D(N118), .CK(clk), .RN(n471), .Q(cal_Y_reg[1])
         );
  DFFRXL \cal_Y_reg_reg[0]  ( .D(N117), .CK(clk), .RN(n472), .Q(cal_Y_reg[0])
         );
  DFFRXL \cal_X_reg_reg[5]  ( .D(N109), .CK(clk), .RN(n470), .Q(cal_X_reg[5]), 
        .QN(n11) );
  DFFRXL \cal_Y_reg_reg[5]  ( .D(N122), .CK(clk), .RN(n471), .Q(cal_Y_reg[5]), 
        .QN(n10) );
  DFFRXL \cal_X_reg_reg[6]  ( .D(N110), .CK(clk), .RN(n470), .Q(cal_X_reg[6]), 
        .QN(n9) );
  DFFRXL \cal_Y_reg_reg[6]  ( .D(N123), .CK(clk), .RN(n472), .Q(cal_Y_reg[6]), 
        .QN(n4) );
  DFFRXL \cal_X_reg_reg[7]  ( .D(N111), .CK(clk), .RN(n471), .Q(cal_X_reg[7]), 
        .QN(n17) );
  DFFRXL \cal_Y_reg_reg[7]  ( .D(N124), .CK(clk), .RN(n472), .Q(cal_Y_reg[7]), 
        .QN(n12) );
  DFFRXL \cal_X_reg_reg[8]  ( .D(N112), .CK(clk), .RN(n471), .Q(cal_X_reg[8]), 
        .QN(n19) );
  DFFRXL \cal_Y_reg_reg[8]  ( .D(N125), .CK(clk), .RN(n472), .Q(cal_Y_reg[8]), 
        .QN(n18) );
  DFFRXL \cal_X_reg_reg[9]  ( .D(N113), .CK(clk), .RN(n471), .Q(cal_X_reg[9]), 
        .QN(n24) );
  DFFRXL \cal_Y_reg_reg[9]  ( .D(N126), .CK(clk), .RN(n472), .Q(cal_Y_reg[9]), 
        .QN(n20) );
  DFFRXL \cal_X_reg_reg[10]  ( .D(N114), .CK(clk), .RN(n471), .Q(cal_X_reg[10]), .QN(n26) );
  DFFRXL \cal_Y_reg_reg[10]  ( .D(N127), .CK(clk), .RN(n472), .Q(cal_Y_reg[10]), .QN(n25) );
  DFFRXL \cal_X_reg_reg[11]  ( .D(N115), .CK(clk), .RN(n471), .Q(cal_X_reg[11]), .QN(n31) );
  DFFRXL \cal_Y_reg_reg[11]  ( .D(N128), .CK(clk), .RN(n472), .Q(cal_Y_reg[11]), .QN(n27) );
  DFFRX1 \cal_Y_reg_reg[12]  ( .D(N129), .CK(clk), .RN(n472), .Q(cal_Y_reg[12]), .QN(n464) );
  DFFRX1 \iter_reg_reg[2]  ( .D(N136), .CK(clk), .RN(n472), .Q(iter_reg[2]) );
  DFFRX1 \cal_X_reg_reg[12]  ( .D(N116), .CK(clk), .RN(n471), .Q(n1), .QN(n469) );
  CLKBUFX2 U3 ( .A(cal_X_trac_wire[12]), .Y(n451) );
  INVX4 U4 ( .A(n448), .Y(n446) );
  INVX3 U5 ( .A(n454), .Y(n452) );
  CLKBUFX3 U6 ( .A(n260), .Y(n412) );
  CLKBUFX3 U7 ( .A(n260), .Y(n404) );
  CLKBUFX3 U8 ( .A(n261), .Y(n254) );
  CLKBUFX3 U9 ( .A(n261), .Y(n110) );
  NOR2BX1 U10 ( .AN(n116), .B(n495), .Y(n263) );
  NOR2BX1 U11 ( .AN(n116), .B(n120), .Y(n267) );
  CLKBUFX3 U12 ( .A(cal_X_trac_wire[8]), .Y(n48) );
  CLKBUFX3 U13 ( .A(cal_X_trac_wire[10]), .Y(n39) );
  CLKBUFX3 U14 ( .A(cal_X_trac_wire[11]), .Y(n40) );
  CLKBUFX3 U15 ( .A(cal_Y_trac_wire[8]), .Y(n60) );
  CLKBUFX3 U16 ( .A(cal_Y_trac_wire[9]), .Y(n61) );
  CLKBUFX3 U17 ( .A(cal_Y_trac_wire[10]), .Y(n51) );
  CLKBUFX3 U18 ( .A(cal_Y_trac_wire[11]), .Y(n52) );
  CLKBUFX3 U19 ( .A(cal_X_trac_wire[9]), .Y(n49) );
  CLKBUFX3 U20 ( .A(cal_X_trac_wire[7]), .Y(n47) );
  CLKBUFX3 U21 ( .A(cal_Y_trac_wire[7]), .Y(n59) );
  CLKBUFX3 U22 ( .A(cal_X_trac_wire[6]), .Y(n46) );
  CLKBUFX3 U23 ( .A(cal_Y_trac_wire[6]), .Y(n58) );
  CLKBUFX3 U24 ( .A(cal_X_trac_wire[5]), .Y(n45) );
  CLKBUFX3 U25 ( .A(cal_X_trac_wire[3]), .Y(n43) );
  CLKBUFX3 U26 ( .A(cal_Y_trac_wire[3]), .Y(n55) );
  CLKBUFX3 U27 ( .A(cal_X_trac_wire[4]), .Y(n44) );
  CLKBUFX3 U32 ( .A(cal_Y_trac_wire[4]), .Y(n56) );
  INVX3 U33 ( .A(n469), .Y(n466) );
  NOR2X1 U34 ( .A(n504), .B(n37), .Y(n152) );
  NOR2X1 U35 ( .A(n506), .B(n504), .Y(n143) );
  CLKBUFX3 U40 ( .A(cal_Y_trac_wire[0]), .Y(n50) );
  CLKBUFX3 U41 ( .A(cal_X_trac_wire[0]), .Y(n38) );
  CLKBUFX3 U42 ( .A(cal_Y_trac_wire[5]), .Y(n57) );
  INVX3 U43 ( .A(n468), .Y(n467) );
  NOR2BX1 U47 ( .AN(n132), .B(n495), .Y(n261) );
  NOR2BX1 U48 ( .AN(n132), .B(n120), .Y(n265) );
  CLKINVX1 U49 ( .A(n457), .Y(n33) );
  INVX3 U50 ( .A(n459), .Y(n458) );
  NOR2X1 U54 ( .A(n115), .B(n37), .Y(n151) );
  NOR2X1 U56 ( .A(n108), .B(n37), .Y(n148) );
  NOR2X1 U57 ( .A(n131), .B(n37), .Y(n149) );
  NOR2X1 U58 ( .A(n506), .B(n115), .Y(n144) );
  NOR2X1 U59 ( .A(n506), .B(n108), .Y(n147) );
  NOR2X1 U60 ( .A(n506), .B(n131), .Y(n146) );
  CLKINVX1 U61 ( .A(n441), .Y(done) );
  CLKINVX1 U62 ( .A(n441), .Y(n443) );
  CLKBUFX3 U63 ( .A(cal_Y_reg[2]), .Y(n75) );
  CLKBUFX3 U64 ( .A(cal_X_reg[2]), .Y(n66) );
  CLKBUFX3 U65 ( .A(cal_Y_reg[6]), .Y(n78) );
  CLKBUFX3 U66 ( .A(cal_X_reg[6]), .Y(n62) );
  CLKBUFX3 U67 ( .A(cal_Y_reg[3]), .Y(n74) );
  CLKBUFX3 U68 ( .A(cal_X_reg[3]), .Y(n65) );
  CLKBUFX3 U69 ( .A(cal_Y_reg[7]), .Y(n79) );
  CLKBUFX3 U70 ( .A(cal_X_reg[7]), .Y(n67) );
  CLKBUFX3 U71 ( .A(cal_Y_reg[4]), .Y(n73) );
  CLKBUFX3 U72 ( .A(cal_X_reg[4]), .Y(n64) );
  CLKBUFX3 U73 ( .A(cal_Y_reg[1]), .Y(n76) );
  CLKBUFX3 U74 ( .A(cal_X_reg[1]), .Y(n84) );
  CLKBUFX3 U75 ( .A(cal_Y_reg[5]), .Y(n72) );
  CLKBUFX3 U76 ( .A(cal_X_reg[5]), .Y(n63) );
  CLKBUFX3 U77 ( .A(cal_Y_reg[9]), .Y(n81) );
  CLKBUFX3 U78 ( .A(cal_X_reg[9]), .Y(n69) );
  CLKBUFX3 U79 ( .A(cal_Y_reg[8]), .Y(n80) );
  CLKBUFX3 U80 ( .A(cal_X_reg[8]), .Y(n68) );
  CLKBUFX3 U81 ( .A(cal_Y_reg[10]), .Y(n82) );
  CLKBUFX3 U82 ( .A(cal_X_reg[10]), .Y(n70) );
  CLKBUFX3 U83 ( .A(cal_Y_reg[11]), .Y(n83) );
  CLKBUFX3 U84 ( .A(cal_X_reg[11]), .Y(n71) );
  NAND2X1 U85 ( .A(iter_reg[2]), .B(iter_reg[1]), .Y(n108) );
  NAND2X1 U86 ( .A(iter_reg[2]), .B(n99), .Y(n131) );
  NOR2X1 U87 ( .A(n94), .B(current_state[1]), .Y(n121) );
  OAI21X1 U88 ( .A0(n503), .A1(iter_reg[2]), .B0(n437), .Y(n393) );
  INVX3 U89 ( .A(n454), .Y(n453) );
  INVX3 U90 ( .A(n448), .Y(n447) );
  CLKBUFX3 U91 ( .A(n456), .Y(n454) );
  CLKBUFX3 U92 ( .A(n450), .Y(n448) );
  CLKBUFX3 U93 ( .A(n456), .Y(n455) );
  CLKBUFX3 U94 ( .A(n448), .Y(n449) );
  AOI22X1 U95 ( .A0(N765), .A1(n404), .B0(N725), .B1(n110), .Y(n337) );
  AOI22X1 U96 ( .A0(N945), .A1(n93), .B0(N905), .B1(n91), .Y(n270) );
  AOI22X1 U97 ( .A0(N766), .A1(n404), .B0(N726), .B1(n254), .Y(n332) );
  XOR3X1 U98 ( .A(cal_X_trac_wire[12]), .B(n445), .C(\add_189/carry[13] ), .Y(
        N726) );
  XOR3X1 U99 ( .A(n451), .B(n447), .C(\add_191/carry[13] ), .Y(N766) );
  AOI22X1 U100 ( .A0(N753), .A1(n92), .B0(N713), .B1(n91), .Y(n330) );
  XOR3X1 U101 ( .A(n451), .B(n449), .C(\sub_189/carry[13] ), .Y(N713) );
  XOR3X1 U102 ( .A(n451), .B(n449), .C(\sub_191/carry[13] ), .Y(N753) );
  AOI22X1 U103 ( .A0(N946), .A1(n93), .B0(N906), .B1(n90), .Y(n257) );
  XOR3X1 U104 ( .A(n447), .B(n453), .C(\add_214/carry[13] ), .Y(N906) );
  XOR3X1 U105 ( .A(n445), .B(n453), .C(\add_216/carry[13] ), .Y(N946) );
  AOI22X1 U106 ( .A0(N959), .A1(n412), .B0(N919), .B1(n110), .Y(n259) );
  XOR3X1 U107 ( .A(n447), .B(n455), .C(\sub_214/carry[13] ), .Y(N919) );
  XOR3X1 U108 ( .A(cal_Y_trac_wire[12]), .B(n455), .C(\sub_216/carry[13] ), 
        .Y(N959) );
  CLKINVX1 U109 ( .A(n451), .Y(n456) );
  CLKINVX1 U110 ( .A(n445), .Y(n450) );
  INVX3 U111 ( .A(n120), .Y(n495) );
  AOI22X1 U112 ( .A0(N760), .A1(n404), .B0(N720), .B1(n110), .Y(n362) );
  AOI22X1 U113 ( .A0(N759), .A1(n404), .B0(N719), .B1(n110), .Y(n367) );
  AOI22X1 U114 ( .A0(N758), .A1(n404), .B0(N718), .B1(n110), .Y(n372) );
  AOI22X1 U115 ( .A0(N757), .A1(n404), .B0(N717), .B1(n110), .Y(n377) );
  AOI22X1 U116 ( .A0(N756), .A1(n404), .B0(N716), .B1(n110), .Y(n382) );
  AOI22X1 U117 ( .A0(N761), .A1(n404), .B0(N721), .B1(n110), .Y(n357) );
  AOI22X1 U118 ( .A0(N762), .A1(n404), .B0(N722), .B1(n110), .Y(n352) );
  AOI22X1 U119 ( .A0(N763), .A1(n404), .B0(N723), .B1(n110), .Y(n347) );
  AOI22X1 U120 ( .A0(N764), .A1(n404), .B0(N724), .B1(n110), .Y(n342) );
  AOI22X1 U121 ( .A0(N952), .A1(n412), .B0(N912), .B1(n254), .Y(n302) );
  AOI22X1 U122 ( .A0(N951), .A1(n412), .B0(N911), .B1(n254), .Y(n307) );
  AOI22X1 U123 ( .A0(N950), .A1(n412), .B0(N910), .B1(n254), .Y(n312) );
  AOI22X1 U124 ( .A0(N949), .A1(n412), .B0(N909), .B1(n254), .Y(n317) );
  AOI22X1 U125 ( .A0(N948), .A1(n412), .B0(N908), .B1(n254), .Y(n322) );
  AOI22X1 U126 ( .A0(N953), .A1(n412), .B0(N913), .B1(n254), .Y(n297) );
  AOI22X1 U127 ( .A0(N954), .A1(n412), .B0(N914), .B1(n254), .Y(n292) );
  AOI22X1 U128 ( .A0(N955), .A1(n412), .B0(N915), .B1(n254), .Y(n287) );
  AOI22X1 U129 ( .A0(N956), .A1(n412), .B0(N916), .B1(n254), .Y(n282) );
  AOI22X1 U130 ( .A0(N957), .A1(n412), .B0(N917), .B1(n254), .Y(n277) );
  AOI22X1 U131 ( .A0(N755), .A1(n404), .B0(N715), .B1(n110), .Y(n387) );
  AOI22X1 U132 ( .A0(N958), .A1(n412), .B0(N918), .B1(n254), .Y(n272) );
  AOI22X1 U133 ( .A0(N680), .A1(n97), .B0(N640), .B1(n95), .Y(n361) );
  AOI22X1 U134 ( .A0(N679), .A1(n97), .B0(N639), .B1(n95), .Y(n366) );
  AOI22X1 U135 ( .A0(N678), .A1(n97), .B0(N638), .B1(n95), .Y(n371) );
  AOI22X1 U136 ( .A0(N677), .A1(n97), .B0(N637), .B1(n95), .Y(n376) );
  AOI22X1 U137 ( .A0(N676), .A1(n97), .B0(N636), .B1(n95), .Y(n381) );
  AOI22X1 U138 ( .A0(N681), .A1(n97), .B0(N641), .B1(n95), .Y(n356) );
  AOI22X1 U139 ( .A0(N682), .A1(n97), .B0(N642), .B1(n95), .Y(n351) );
  AOI22X1 U140 ( .A0(N872), .A1(n98), .B0(N832), .B1(n96), .Y(n301) );
  AOI22X1 U141 ( .A0(N871), .A1(n98), .B0(N831), .B1(n96), .Y(n306) );
  AOI22X1 U142 ( .A0(N870), .A1(n98), .B0(N830), .B1(n96), .Y(n311) );
  AOI22X1 U143 ( .A0(N869), .A1(n98), .B0(N829), .B1(n96), .Y(n316) );
  AOI22X1 U144 ( .A0(N868), .A1(n98), .B0(N828), .B1(n96), .Y(n321) );
  AOI22X1 U145 ( .A0(N873), .A1(n98), .B0(N833), .B1(n96), .Y(n296) );
  AOI22X1 U146 ( .A0(N675), .A1(n97), .B0(N635), .B1(n95), .Y(n386) );
  AOI22X1 U147 ( .A0(N750), .A1(n92), .B0(N710), .B1(n90), .Y(n345) );
  AOI22X1 U148 ( .A0(N751), .A1(n92), .B0(N711), .B1(n90), .Y(n340) );
  AOI22X1 U149 ( .A0(N752), .A1(n92), .B0(N712), .B1(n90), .Y(n335) );
  AOI22X1 U150 ( .A0(N941), .A1(n93), .B0(N901), .B1(n91), .Y(n290) );
  AOI22X1 U151 ( .A0(N942), .A1(n93), .B0(N902), .B1(n91), .Y(n285) );
  AOI22X1 U152 ( .A0(N943), .A1(n93), .B0(N903), .B1(n91), .Y(n280) );
  AOI22X1 U153 ( .A0(N944), .A1(n93), .B0(N904), .B1(n91), .Y(n275) );
  CLKBUFX3 U154 ( .A(n263), .Y(n96) );
  CLKBUFX3 U155 ( .A(n263), .Y(n95) );
  CLKBUFX3 U156 ( .A(n267), .Y(n87) );
  CLKBUFX3 U157 ( .A(n267), .Y(n86) );
  NOR2BX1 U158 ( .AN(rot_X_temp_wire[20]), .B(n442), .Y(rot_X[10]) );
  NOR2BX1 U159 ( .AN(rot_X_temp_wire[19]), .B(n442), .Y(rot_X[9]) );
  NOR2BX1 U160 ( .AN(rot_Y_temp_wire[20]), .B(n441), .Y(rot_Y[10]) );
  NOR2BX1 U161 ( .AN(rot_Y_temp_wire[19]), .B(n442), .Y(rot_Y[9]) );
  NOR2BX1 U162 ( .AN(rot_X_temp_wire[18]), .B(n441), .Y(rot_X[8]) );
  NOR2BX1 U163 ( .AN(rot_X_temp_wire[17]), .B(n441), .Y(rot_X[7]) );
  NOR2BX1 U164 ( .AN(rot_Y_temp_wire[18]), .B(n442), .Y(rot_Y[8]) );
  NOR2BX1 U165 ( .AN(rot_Y_temp_wire[17]), .B(n442), .Y(rot_Y[7]) );
  NOR2BX1 U166 ( .AN(rot_X_temp_wire[16]), .B(n441), .Y(rot_X[6]) );
  NOR2BX1 U167 ( .AN(rot_X_temp_wire[15]), .B(n441), .Y(rot_X[5]) );
  NOR2BX1 U168 ( .AN(rot_Y_temp_wire[16]), .B(n442), .Y(rot_Y[6]) );
  NOR2BX1 U169 ( .AN(rot_Y_temp_wire[15]), .B(n442), .Y(rot_Y[5]) );
  NOR2BX1 U170 ( .AN(rot_X_temp_wire[14]), .B(n441), .Y(rot_X[4]) );
  NOR2BX1 U171 ( .AN(rot_X_temp_wire[13]), .B(n107), .Y(rot_X[3]) );
  NOR2BX1 U172 ( .AN(rot_Y_temp_wire[14]), .B(n442), .Y(rot_Y[4]) );
  NOR2BX1 U173 ( .AN(rot_Y_temp_wire[13]), .B(n442), .Y(rot_Y[3]) );
  NOR2BX1 U174 ( .AN(rot_X_temp_wire[12]), .B(n107), .Y(rot_X[2]) );
  NOR2BX1 U175 ( .AN(rot_X_temp_wire[11]), .B(n107), .Y(rot_X[1]) );
  NOR2BX1 U176 ( .AN(rot_Y_temp_wire[12]), .B(n107), .Y(rot_Y[2]) );
  NOR2BX1 U177 ( .AN(rot_Y_temp_wire[11]), .B(n107), .Y(rot_Y[1]) );
  AO22X1 U178 ( .A0(n425), .A1(N230), .B0(N273), .B1(n428), .Y(n239) );
  ADDFXL U179 ( .A(n59), .B(n453), .CI(\add_216/carry[7] ), .CO(
        \add_216/carry[8] ), .S(N941) );
  ADDFXL U180 ( .A(n59), .B(n453), .CI(\add_214/carry[7] ), .CO(
        \add_214/carry[8] ), .S(N901) );
  ADDFXL U181 ( .A(n60), .B(n453), .CI(\add_216/carry[8] ), .CO(
        \add_216/carry[9] ), .S(N942) );
  ADDFXL U182 ( .A(n60), .B(n453), .CI(\add_214/carry[8] ), .CO(
        \add_214/carry[9] ), .S(N902) );
  ADDFXL U183 ( .A(n61), .B(n453), .CI(\add_216/carry[9] ), .CO(
        \add_216/carry[10] ), .S(N943) );
  ADDFXL U184 ( .A(n61), .B(n453), .CI(\add_214/carry[9] ), .CO(
        \add_214/carry[10] ), .S(N903) );
  ADDFXL U185 ( .A(n51), .B(n453), .CI(\add_216/carry[10] ), .CO(
        \add_216/carry[11] ), .S(N944) );
  ADDFXL U186 ( .A(n51), .B(n453), .CI(\add_214/carry[10] ), .CO(
        \add_214/carry[11] ), .S(N904) );
  ADDFXL U187 ( .A(n57), .B(n453), .CI(\add_216/carry[5] ), .CO(
        \add_216/carry[6] ), .S(N939) );
  ADDFXL U188 ( .A(n58), .B(n453), .CI(\add_216/carry[6] ), .CO(
        \add_216/carry[7] ), .S(N940) );
  ADDFXL U189 ( .A(n45), .B(n447), .CI(\add_191/carry[5] ), .CO(
        \add_191/carry[6] ), .S(N759) );
  ADDFXL U190 ( .A(n46), .B(n447), .CI(\add_191/carry[6] ), .CO(
        \add_191/carry[7] ), .S(N760) );
  ADDFXL U191 ( .A(n47), .B(n447), .CI(\add_191/carry[7] ), .CO(
        \add_191/carry[8] ), .S(N761) );
  ADDFXL U192 ( .A(n47), .B(n447), .CI(\add_189/carry[7] ), .CO(
        \add_189/carry[8] ), .S(N721) );
  ADDFXL U193 ( .A(n48), .B(n447), .CI(\add_191/carry[8] ), .CO(
        \add_191/carry[9] ), .S(N762) );
  ADDFXL U194 ( .A(n48), .B(n447), .CI(\add_189/carry[8] ), .CO(
        \add_189/carry[9] ), .S(N722) );
  ADDFXL U195 ( .A(n49), .B(n447), .CI(\add_191/carry[9] ), .CO(
        \add_191/carry[10] ), .S(N763) );
  ADDFXL U196 ( .A(n49), .B(n447), .CI(\add_189/carry[9] ), .CO(
        \add_189/carry[10] ), .S(N723) );
  ADDFXL U197 ( .A(n39), .B(n447), .CI(\add_191/carry[10] ), .CO(
        \add_191/carry[11] ), .S(N764) );
  ADDFXL U198 ( .A(n39), .B(n447), .CI(\add_189/carry[10] ), .CO(
        \add_189/carry[11] ), .S(N724) );
  ADDFXL U199 ( .A(n41), .B(n60), .CI(\add_191/carry[1] ), .CO(
        \add_191/carry[2] ), .S(N755) );
  ADDFXL U200 ( .A(n42), .B(n61), .CI(\add_191/carry[2] ), .CO(
        \add_191/carry[3] ), .S(N756) );
  ADDFXL U201 ( .A(n43), .B(n51), .CI(\add_191/carry[3] ), .CO(
        \add_191/carry[4] ), .S(N757) );
  ADDFXL U202 ( .A(n43), .B(n60), .CI(\add_189/carry[3] ), .CO(
        \add_189/carry[4] ), .S(N717) );
  ADDFXL U203 ( .A(n44), .B(n52), .CI(\add_191/carry[4] ), .CO(
        \add_191/carry[5] ), .S(N758) );
  ADDFXL U204 ( .A(n44), .B(n61), .CI(\add_189/carry[4] ), .CO(
        \add_189/carry[5] ), .S(N718) );
  ADDFXL U205 ( .A(n45), .B(n51), .CI(\add_189/carry[5] ), .CO(
        \add_189/carry[6] ), .S(N719) );
  ADDFXL U206 ( .A(n46), .B(n52), .CI(\add_189/carry[6] ), .CO(
        \add_189/carry[7] ), .S(N720) );
  ADDFXL U207 ( .A(n56), .B(n40), .CI(\add_216/carry[4] ), .CO(
        \add_216/carry[5] ), .S(N938) );
  ADDFXL U208 ( .A(n55), .B(n39), .CI(\add_216/carry[3] ), .CO(
        \add_216/carry[4] ), .S(N937) );
  ADDFXL U209 ( .A(n54), .B(n49), .CI(\add_216/carry[2] ), .CO(
        \add_216/carry[3] ), .S(N936) );
  ADDFXL U210 ( .A(n53), .B(n48), .CI(\add_216/carry[1] ), .CO(
        \add_216/carry[2] ), .S(N935) );
  ADDFXL U211 ( .A(n42), .B(n59), .CI(\add_189/carry[2] ), .CO(
        \add_189/carry[3] ), .S(N716) );
  ADDFXL U212 ( .A(n41), .B(n58), .CI(\add_189/carry[1] ), .CO(
        \add_189/carry[2] ), .S(N715) );
  ADDFXL U213 ( .A(n49), .B(n448), .CI(\sub_189/carry[9] ), .CO(
        \sub_189/carry[10] ), .S(N710) );
  ADDFXL U214 ( .A(n61), .B(n454), .CI(\sub_214/carry[9] ), .CO(
        \sub_214/carry[10] ), .S(N916) );
  ADDFXL U215 ( .A(n56), .B(n494), .CI(\sub_216/carry[4] ), .CO(
        \sub_216/carry[5] ), .S(N951) );
  CLKINVX1 U216 ( .A(n40), .Y(n494) );
  ADDFXL U217 ( .A(n53), .B(n491), .CI(\sub_216/carry[1] ), .CO(
        \sub_216/carry[2] ), .S(N948) );
  CLKINVX1 U218 ( .A(n48), .Y(n491) );
  ADDFXL U219 ( .A(n54), .B(n492), .CI(\sub_216/carry[2] ), .CO(
        \sub_216/carry[3] ), .S(N949) );
  CLKINVX1 U220 ( .A(n49), .Y(n492) );
  ADDFXL U221 ( .A(n55), .B(n493), .CI(\sub_216/carry[3] ), .CO(
        \sub_216/carry[4] ), .S(N950) );
  CLKINVX1 U222 ( .A(n39), .Y(n493) );
  ADDFXL U223 ( .A(n44), .B(n482), .CI(\sub_191/carry[4] ), .CO(
        \sub_191/carry[5] ), .S(N745) );
  CLKINVX1 U224 ( .A(n52), .Y(n482) );
  ADDFXL U225 ( .A(n43), .B(n481), .CI(\sub_191/carry[3] ), .CO(
        \sub_191/carry[4] ), .S(N744) );
  CLKINVX1 U226 ( .A(n51), .Y(n481) );
  ADDFXL U227 ( .A(n42), .B(n480), .CI(\sub_191/carry[2] ), .CO(
        \sub_191/carry[3] ), .S(N743) );
  CLKINVX1 U228 ( .A(n61), .Y(n480) );
  ADDFXL U229 ( .A(n41), .B(n479), .CI(\sub_191/carry[1] ), .CO(
        \sub_191/carry[2] ), .S(N742) );
  CLKINVX1 U230 ( .A(n60), .Y(n479) );
  ADDFXL U231 ( .A(n57), .B(n455), .CI(\sub_216/carry[5] ), .CO(
        \sub_216/carry[6] ), .S(N952) );
  ADDFXL U232 ( .A(n58), .B(n455), .CI(\sub_216/carry[6] ), .CO(
        \sub_216/carry[7] ), .S(N953) );
  ADDFXL U233 ( .A(n59), .B(n455), .CI(\sub_216/carry[7] ), .CO(
        \sub_216/carry[8] ), .S(N954) );
  ADDFXL U234 ( .A(n60), .B(n455), .CI(\sub_216/carry[8] ), .CO(
        \sub_216/carry[9] ), .S(N955) );
  ADDFXL U235 ( .A(n60), .B(n455), .CI(\sub_214/carry[8] ), .CO(
        \sub_214/carry[9] ), .S(N915) );
  ADDFXL U236 ( .A(n49), .B(n449), .CI(\sub_191/carry[9] ), .CO(
        \sub_191/carry[10] ), .S(N750) );
  ADDFXL U237 ( .A(n61), .B(n455), .CI(\sub_216/carry[9] ), .CO(
        \sub_216/carry[10] ), .S(N956) );
  ADDFXL U238 ( .A(n39), .B(n450), .CI(\sub_191/carry[10] ), .CO(
        \sub_191/carry[11] ), .S(N751) );
  ADDFXL U239 ( .A(n51), .B(n455), .CI(\sub_216/carry[10] ), .CO(
        \sub_216/carry[11] ), .S(N957) );
  ADDFXL U240 ( .A(n46), .B(n450), .CI(\sub_191/carry[6] ), .CO(
        \sub_191/carry[7] ), .S(N747) );
  ADDFXL U241 ( .A(n45), .B(n448), .CI(\sub_191/carry[5] ), .CO(
        \sub_191/carry[6] ), .S(N746) );
  ADDFXL U242 ( .A(n47), .B(n449), .CI(\sub_191/carry[7] ), .CO(
        \sub_191/carry[8] ), .S(N748) );
  ADDFXL U243 ( .A(n48), .B(n450), .CI(\sub_191/carry[8] ), .CO(
        \sub_191/carry[9] ), .S(N749) );
  ADDFXL U244 ( .A(n48), .B(n449), .CI(\sub_189/carry[8] ), .CO(
        \sub_189/carry[9] ), .S(N709) );
  ADDFXL U245 ( .A(n59), .B(n455), .CI(\sub_214/carry[7] ), .CO(
        \sub_214/carry[8] ), .S(N914) );
  ADDFXL U246 ( .A(n39), .B(n449), .CI(\sub_189/carry[10] ), .CO(
        \sub_189/carry[11] ), .S(N711) );
  ADDFXL U247 ( .A(n51), .B(n455), .CI(\sub_214/carry[10] ), .CO(
        \sub_214/carry[11] ), .S(N917) );
  ADDFXL U248 ( .A(n47), .B(n449), .CI(\sub_189/carry[7] ), .CO(
        \sub_189/carry[8] ), .S(N708) );
  CLKINVX1 U249 ( .A(n47), .Y(n490) );
  CLKINVX1 U250 ( .A(n59), .Y(n478) );
  XOR3X1 U251 ( .A(n466), .B(n35), .C(\add_143/carry[13] ), .Y(N359) );
  ADDFXL U252 ( .A(n52), .B(n453), .CI(\add_216/carry[11] ), .CO(
        \add_216/carry[12] ), .S(N945) );
  ADDFXL U253 ( .A(n52), .B(n453), .CI(\add_214/carry[11] ), .CO(
        \add_214/carry[12] ), .S(N905) );
  ADDFXL U254 ( .A(n40), .B(n447), .CI(\add_191/carry[11] ), .CO(
        \add_191/carry[12] ), .S(N765) );
  ADDFXL U255 ( .A(n40), .B(n447), .CI(\add_189/carry[11] ), .CO(
        \add_189/carry[12] ), .S(N725) );
  ADDFXL U256 ( .A(n40), .B(n450), .CI(\sub_191/carry[11] ), .CO(
        \sub_191/carry[12] ), .S(N752) );
  ADDFXL U257 ( .A(n52), .B(n455), .CI(\sub_216/carry[11] ), .CO(
        \sub_216/carry[12] ), .S(N958) );
  ADDFXL U258 ( .A(n40), .B(n449), .CI(\sub_189/carry[11] ), .CO(
        \sub_189/carry[12] ), .S(N712) );
  ADDFXL U259 ( .A(n52), .B(n455), .CI(\sub_214/carry[11] ), .CO(
        \sub_214/carry[12] ), .S(N918) );
  AOI21X1 U260 ( .A0(n237), .A1(n238), .B0(n432), .Y(cal_X_trac_wire[12]) );
  AOI221XL U261 ( .A0(N359), .A1(n421), .B0(N316), .B1(n424), .C0(n239), .Y(
        n238) );
  AOI221XL U262 ( .A0(N259), .A1(n413), .B0(N216), .B1(n416), .C0(n240), .Y(
        n237) );
  CLKBUFX3 U263 ( .A(cal_Y_trac_wire[12]), .Y(n445) );
  AOI21X1 U264 ( .A0(n185), .A1(n186), .B0(n431), .Y(cal_Y_trac_wire[12]) );
  AOI221XL U265 ( .A0(N552), .A1(n419), .B0(N509), .B1(n418), .C0(n188), .Y(
        n185) );
  AOI221XL U266 ( .A0(N480), .A1(n427), .B0(N437), .B1(n426), .C0(n187), .Y(
        n186) );
  CLKXOR2X2 U267 ( .A(n395), .B(\cal_X_temp_wire[12] ), .Y(n120) );
  AO21X1 U268 ( .A0(n400), .A1(n401), .B0(n433), .Y(n395) );
  AOI221XL U269 ( .A0(N551), .A1(n419), .B0(N508), .B1(n418), .C0(n403), .Y(
        n400) );
  AOI221XL U270 ( .A0(N479), .A1(n427), .B0(N436), .B1(n426), .C0(n402), .Y(
        n401) );
  INVX3 U271 ( .A(n37), .Y(n506) );
  AOI21X1 U272 ( .A0(n396), .A1(n397), .B0(n433), .Y(\cal_X_temp_wire[12] ) );
  AOI221XL U273 ( .A0(N358), .A1(n422), .B0(N315), .B1(n423), .C0(n398), .Y(
        n397) );
  AOI221XL U274 ( .A0(N258), .A1(n414), .B0(N215), .B1(n415), .C0(n399), .Y(
        n396) );
  AO22X1 U275 ( .A0(n425), .A1(N229), .B0(N272), .B1(n428), .Y(n398) );
  AOI22X1 U276 ( .A0(N947), .A1(n412), .B0(N907), .B1(n254), .Y(n327) );
  AOI22X1 U277 ( .A0(N754), .A1(n404), .B0(N714), .B1(n110), .Y(n392) );
  AOI22X1 U278 ( .A0(N867), .A1(n98), .B0(N827), .B1(n96), .Y(n326) );
  AOI22X1 U279 ( .A0(N674), .A1(n97), .B0(N634), .B1(n95), .Y(n391) );
  CLKBUFX3 U280 ( .A(n262), .Y(n98) );
  CLKBUFX3 U281 ( .A(n262), .Y(n97) );
  CLKBUFX3 U282 ( .A(n143), .Y(n428) );
  CLKBUFX3 U283 ( .A(n152), .Y(n414) );
  CLKBUFX3 U284 ( .A(n143), .Y(n427) );
  CLKBUFX3 U285 ( .A(n152), .Y(n413) );
  AO22X1 U286 ( .A0(N522), .A1(n424), .B0(N565), .B1(n421), .Y(n402) );
  AO22X1 U287 ( .A0(N229), .A1(n415), .B0(N465), .B1(n413), .Y(n403) );
  AO22X1 U288 ( .A0(N301), .A1(n417), .B0(N344), .B1(n420), .Y(n399) );
  ADDFXL U289 ( .A(n57), .B(n39), .CI(\add_214/carry[5] ), .CO(
        \add_214/carry[6] ), .S(N899) );
  ADDFXL U290 ( .A(n56), .B(n49), .CI(\add_214/carry[4] ), .CO(
        \add_214/carry[5] ), .S(N898) );
  ADDFXL U291 ( .A(n55), .B(n48), .CI(\add_214/carry[3] ), .CO(
        \add_214/carry[4] ), .S(N897) );
  ADDFXL U292 ( .A(n58), .B(n40), .CI(\add_214/carry[6] ), .CO(
        \add_214/carry[7] ), .S(N900) );
  ADDFXL U293 ( .A(n54), .B(n47), .CI(\add_214/carry[2] ), .CO(
        \add_214/carry[3] ), .S(N896) );
  ADDFXL U294 ( .A(n53), .B(n46), .CI(\add_214/carry[1] ), .CO(
        \add_214/carry[2] ), .S(N895) );
  ADDFXL U295 ( .A(n55), .B(n491), .CI(\sub_214/carry[3] ), .CO(
        \sub_214/carry[4] ), .S(N910) );
  ADDFXL U296 ( .A(n56), .B(n492), .CI(\sub_214/carry[4] ), .CO(
        \sub_214/carry[5] ), .S(N911) );
  ADDFXL U297 ( .A(n57), .B(n493), .CI(\sub_214/carry[5] ), .CO(
        \sub_214/carry[6] ), .S(N912) );
  ADDFXL U298 ( .A(n58), .B(n494), .CI(\sub_214/carry[6] ), .CO(
        \sub_214/carry[7] ), .S(N913) );
  ADDFXL U299 ( .A(n46), .B(n482), .CI(\sub_189/carry[6] ), .CO(
        \sub_189/carry[7] ), .S(N707) );
  ADDFXL U300 ( .A(n45), .B(n481), .CI(\sub_189/carry[5] ), .CO(
        \sub_189/carry[6] ), .S(N706) );
  ADDFXL U301 ( .A(n44), .B(n480), .CI(\sub_189/carry[4] ), .CO(
        \sub_189/carry[5] ), .S(N705) );
  ADDFXL U302 ( .A(n43), .B(n479), .CI(\sub_189/carry[3] ), .CO(
        \sub_189/carry[4] ), .S(N704) );
  ADDFXL U303 ( .A(n54), .B(n490), .CI(\sub_214/carry[2] ), .CO(
        \sub_214/carry[3] ), .S(N909) );
  ADDFXL U304 ( .A(n42), .B(n478), .CI(\sub_189/carry[2] ), .CO(
        \sub_189/carry[3] ), .S(N703) );
  ADDFXL U305 ( .A(n53), .B(n487), .CI(\sub_214/carry[1] ), .CO(
        \sub_214/carry[2] ), .S(N908) );
  CLKINVX1 U306 ( .A(n46), .Y(n487) );
  ADDFXL U307 ( .A(n41), .B(n475), .CI(\sub_189/carry[1] ), .CO(
        \sub_189/carry[2] ), .S(N702) );
  CLKINVX1 U308 ( .A(n58), .Y(n475) );
  CLKINVX1 U309 ( .A(n45), .Y(n486) );
  CLKINVX1 U310 ( .A(n57), .Y(n474) );
  CLKBUFX3 U311 ( .A(n264), .Y(n93) );
  CLKBUFX3 U312 ( .A(n266), .Y(n89) );
  CLKBUFX3 U313 ( .A(n264), .Y(n92) );
  CLKBUFX3 U314 ( .A(n266), .Y(n88) );
  INVX3 U315 ( .A(n436), .Y(n431) );
  INVX3 U316 ( .A(n435), .Y(n432) );
  CLKBUFX3 U317 ( .A(n265), .Y(n91) );
  CLKBUFX3 U318 ( .A(n265), .Y(n90) );
  INVX3 U319 ( .A(n434), .Y(n433) );
  NAND2X1 U320 ( .A(n116), .B(n433), .Y(n113) );
  CLKBUFX3 U321 ( .A(reset), .Y(n470) );
  CLKBUFX3 U322 ( .A(n470), .Y(n471) );
  CLKBUFX3 U323 ( .A(reset), .Y(n472) );
  NOR2BX1 U324 ( .AN(rot_X_temp_wire[21]), .B(n442), .Y(rot_X[11]) );
  NOR2BX1 U325 ( .AN(rot_Y_temp_wire[21]), .B(n441), .Y(rot_Y[11]) );
  NOR2BX1 U326 ( .AN(rot_Y_temp_wire_24), .B(n441), .Y(rot_Y[12]) );
  NOR2BX1 U327 ( .AN(rot_X_temp_wire_24), .B(n442), .Y(rot_X[12]) );
  AOI21X1 U328 ( .A0(n245), .A1(n246), .B0(n432), .Y(cal_X_trac_wire[10]) );
  AOI221XL U329 ( .A0(N356), .A1(n421), .B0(N313), .B1(n424), .C0(n247), .Y(
        n246) );
  AOI221XL U330 ( .A0(N256), .A1(n413), .B0(N213), .B1(n416), .C0(n248), .Y(
        n245) );
  AOI21X1 U331 ( .A0(n141), .A1(n142), .B0(n431), .Y(cal_Y_trac_wire[9]) );
  AOI221XL U332 ( .A0(N548), .A1(n419), .B0(N505), .B1(n418), .C0(n150), .Y(
        n141) );
  AOI221XL U333 ( .A0(N476), .A1(n427), .B0(N433), .B1(n426), .C0(n145), .Y(
        n142) );
  AOI21X1 U334 ( .A0(n189), .A1(n190), .B0(n431), .Y(cal_Y_trac_wire[11]) );
  AOI221XL U335 ( .A0(N550), .A1(n419), .B0(N507), .B1(n418), .C0(n192), .Y(
        n189) );
  AOI221XL U336 ( .A0(N478), .A1(n427), .B0(N435), .B1(n426), .C0(n191), .Y(
        n190) );
  AOI21X1 U337 ( .A0(n205), .A1(n206), .B0(n432), .Y(cal_X_trac_wire[8]) );
  AOI221XL U338 ( .A0(N354), .A1(n421), .B0(N311), .B1(n424), .C0(n207), .Y(
        n206) );
  AOI221XL U339 ( .A0(N254), .A1(n413), .B0(N211), .B1(n416), .C0(n208), .Y(
        n205) );
  AOI21X1 U340 ( .A0(n201), .A1(n202), .B0(n432), .Y(cal_X_trac_wire[9]) );
  AOI221XL U341 ( .A0(N355), .A1(n421), .B0(N312), .B1(n424), .C0(n203), .Y(
        n202) );
  AOI221XL U342 ( .A0(N255), .A1(n413), .B0(N212), .B1(n416), .C0(n204), .Y(
        n201) );
  AOI21X1 U343 ( .A0(n241), .A1(n242), .B0(n432), .Y(cal_X_trac_wire[11]) );
  AOI221XL U344 ( .A0(N357), .A1(n421), .B0(N314), .B1(n424), .C0(n243), .Y(
        n242) );
  AOI221XL U345 ( .A0(N257), .A1(n413), .B0(N214), .B1(n416), .C0(n244), .Y(
        n241) );
  AOI21X1 U346 ( .A0(n153), .A1(n154), .B0(n431), .Y(cal_Y_trac_wire[8]) );
  AOI221XL U347 ( .A0(N547), .A1(n419), .B0(N504), .B1(n418), .C0(n156), .Y(
        n153) );
  AOI221XL U348 ( .A0(N475), .A1(n427), .B0(N432), .B1(n426), .C0(n155), .Y(
        n154) );
  AOI21X1 U349 ( .A0(n193), .A1(n194), .B0(n431), .Y(cal_Y_trac_wire[10]) );
  AOI221XL U350 ( .A0(N549), .A1(n420), .B0(N506), .B1(n417), .C0(n196), .Y(
        n193) );
  AOI221XL U351 ( .A0(N477), .A1(n428), .B0(N434), .B1(n425), .C0(n195), .Y(
        n194) );
  AOI21X1 U352 ( .A0(n209), .A1(n210), .B0(n432), .Y(cal_X_trac_wire[7]) );
  AOI221XL U353 ( .A0(N353), .A1(n421), .B0(N310), .B1(n424), .C0(n211), .Y(
        n210) );
  AOI221XL U354 ( .A0(N253), .A1(n413), .B0(N210), .B1(n416), .C0(n212), .Y(
        n209) );
  AOI21X1 U355 ( .A0(n157), .A1(n158), .B0(n432), .Y(cal_Y_trac_wire[7]) );
  AOI221XL U356 ( .A0(N546), .A1(n419), .B0(N503), .B1(n418), .C0(n160), .Y(
        n157) );
  AOI221XL U357 ( .A0(N474), .A1(n427), .B0(N431), .B1(n426), .C0(n159), .Y(
        n158) );
  AOI21X1 U358 ( .A0(n165), .A1(n166), .B0(n431), .Y(cal_Y_trac_wire[5]) );
  AOI221XL U359 ( .A0(N544), .A1(n419), .B0(N501), .B1(n418), .C0(n168), .Y(
        n165) );
  AOI221XL U360 ( .A0(N472), .A1(n427), .B0(N429), .B1(n426), .C0(n167), .Y(
        n166) );
  NOR2BX1 U361 ( .AN(rot_Y_temp_wire[10]), .B(n441), .Y(rot_Y[0]) );
  NOR2BX1 U362 ( .AN(rot_X_temp_wire[10]), .B(n442), .Y(rot_X[0]) );
  INVX3 U363 ( .A(n33), .Y(n36) );
  AO22X1 U364 ( .A0(N299), .A1(n418), .B0(N342), .B1(n419), .Y(n248) );
  AO22X1 U365 ( .A0(n426), .A1(N227), .B0(N270), .B1(n427), .Y(n247) );
  AO22X1 U366 ( .A0(N518), .A1(n424), .B0(N561), .B1(n421), .Y(n155) );
  AO22X1 U367 ( .A0(n416), .A1(N225), .B0(N461), .B1(n413), .Y(n156) );
  AO22X1 U368 ( .A0(N296), .A1(n417), .B0(N339), .B1(n420), .Y(n212) );
  AO22X1 U369 ( .A0(n425), .A1(N224), .B0(N267), .B1(n428), .Y(n211) );
  AO22X1 U370 ( .A0(N297), .A1(n417), .B0(N340), .B1(n420), .Y(n208) );
  AO22X1 U371 ( .A0(n425), .A1(N225), .B0(N268), .B1(n428), .Y(n207) );
  AO22X1 U372 ( .A0(n416), .A1(N230), .B0(N466), .B1(n414), .Y(n188) );
  AO22X1 U373 ( .A0(N298), .A1(n417), .B0(N341), .B1(n420), .Y(n204) );
  AO22X1 U374 ( .A0(n425), .A1(N226), .B0(N269), .B1(n428), .Y(n203) );
  AO22X1 U375 ( .A0(N515), .A1(n423), .B0(N558), .B1(n422), .Y(n167) );
  AO22X1 U376 ( .A0(N300), .A1(n417), .B0(N343), .B1(n420), .Y(n244) );
  AO22X1 U377 ( .A0(n425), .A1(N228), .B0(N271), .B1(n428), .Y(n243) );
  AO22X1 U378 ( .A0(N519), .A1(n423), .B0(N562), .B1(n422), .Y(n145) );
  AO22X1 U379 ( .A0(n415), .A1(N226), .B0(N462), .B1(n414), .Y(n150) );
  AO22X1 U380 ( .A0(N520), .A1(n423), .B0(N563), .B1(n422), .Y(n195) );
  AO22X1 U381 ( .A0(n415), .A1(N227), .B0(N463), .B1(n414), .Y(n196) );
  AO22X1 U382 ( .A0(N521), .A1(n423), .B0(N564), .B1(n422), .Y(n191) );
  AO22X1 U383 ( .A0(n415), .A1(N228), .B0(N464), .B1(n414), .Y(n192) );
  AO22X1 U384 ( .A0(N517), .A1(n423), .B0(N560), .B1(n422), .Y(n159) );
  AO22X1 U385 ( .A0(n415), .A1(N224), .B0(N460), .B1(n414), .Y(n160) );
  ADDFXL U386 ( .A(n458), .B(n467), .CI(\add_165/carry[12] ), .CO(
        \add_165/carry[13] ), .S(N508) );
  ADDFXL U387 ( .A(n458), .B(n467), .CI(\add_167/carry[12] ), .CO(
        \add_167/carry[13] ), .S(N551) );
  ADDFXL U388 ( .A(n1), .B(n458), .CI(\add_141/carry[12] ), .CO(
        \add_141/carry[13] ), .S(N315) );
  ADDFXL U389 ( .A(n467), .B(n36), .CI(\add_143/carry[12] ), .CO(
        \add_143/carry[13] ), .S(N358) );
  ADDFXL U390 ( .A(n1), .B(n463), .CI(\sub_143/carry[12] ), .CO(
        \sub_143/carry[13] ), .S(N344) );
  ADDFXL U391 ( .A(n1), .B(n461), .CI(\sub_141/carry[12] ), .CO(
        \sub_141/carry[13] ), .S(N301) );
  ADDFXL U392 ( .A(n458), .B(n468), .CI(\sub_165/carry[12] ), .CO(
        \sub_165/carry[13] ), .S(N522) );
  ADDFXL U393 ( .A(n458), .B(n468), .CI(\sub_167/carry[12] ), .CO(
        \sub_167/carry[13] ), .S(N565) );
  XOR3X1 U394 ( .A(n458), .B(n467), .C(\add_165/carry[13] ), .Y(N509) );
  XOR3X1 U395 ( .A(n1), .B(n458), .C(\add_141/carry[13] ), .Y(N316) );
  XOR3X1 U396 ( .A(n458), .B(n467), .C(\add_167/carry[13] ), .Y(N552) );
  AO22X1 U397 ( .A0(N523), .A1(n423), .B0(N566), .B1(n422), .Y(n187) );
  XOR3X1 U398 ( .A(n458), .B(n469), .C(\sub_165/carry[13] ), .Y(N523) );
  XOR3X1 U399 ( .A(n458), .B(n468), .C(\sub_167/carry[13] ), .Y(N566) );
  AO22X1 U400 ( .A0(N302), .A1(n417), .B0(N345), .B1(n420), .Y(n240) );
  XOR3X1 U401 ( .A(n467), .B(n461), .C(\sub_141/carry[13] ), .Y(N302) );
  XOR3X1 U402 ( .A(n467), .B(n463), .C(\sub_143/carry[13] ), .Y(N345) );
  CLKBUFX3 U403 ( .A(cal_X_trac_wire[2]), .Y(n42) );
  AOI21X1 U404 ( .A0(n229), .A1(n230), .B0(n432), .Y(cal_X_trac_wire[2]) );
  AOI221XL U405 ( .A0(N248), .A1(n413), .B0(N205), .B1(n416), .C0(n232), .Y(
        n229) );
  AOI221XL U406 ( .A0(N348), .A1(n421), .B0(N305), .B1(n424), .C0(n231), .Y(
        n230) );
  AOI21X1 U407 ( .A0(n221), .A1(n222), .B0(n432), .Y(cal_X_trac_wire[4]) );
  AOI221XL U408 ( .A0(N250), .A1(n413), .B0(N207), .B1(n416), .C0(n224), .Y(
        n221) );
  AOI221XL U409 ( .A0(N350), .A1(n421), .B0(N307), .B1(n424), .C0(n223), .Y(
        n222) );
  CLKBUFX3 U410 ( .A(cal_Y_trac_wire[2]), .Y(n54) );
  AOI21X1 U411 ( .A0(n177), .A1(n178), .B0(n431), .Y(cal_Y_trac_wire[2]) );
  AOI221XL U412 ( .A0(N541), .A1(n419), .B0(N498), .B1(n418), .C0(n180), .Y(
        n177) );
  AOI221XL U413 ( .A0(N469), .A1(n427), .B0(N426), .B1(n426), .C0(n179), .Y(
        n178) );
  AOI21X1 U414 ( .A0(n169), .A1(n170), .B0(n431), .Y(cal_Y_trac_wire[4]) );
  AOI221XL U415 ( .A0(N543), .A1(n419), .B0(N500), .B1(n418), .C0(n172), .Y(
        n169) );
  AOI221XL U416 ( .A0(N471), .A1(n427), .B0(N428), .B1(n426), .C0(n171), .Y(
        n170) );
  NOR2BX1 U417 ( .AN(n138), .B(n495), .Y(n260) );
  NOR2BX1 U418 ( .AN(n125), .B(n495), .Y(n262) );
  CLKBUFX3 U419 ( .A(cal_X_trac_wire[1]), .Y(n41) );
  AOI21X1 U420 ( .A0(n233), .A1(n234), .B0(n432), .Y(cal_X_trac_wire[1]) );
  AOI221XL U421 ( .A0(N247), .A1(n413), .B0(N204), .B1(n416), .C0(n236), .Y(
        n233) );
  AOI221XL U422 ( .A0(N347), .A1(n421), .B0(N304), .B1(n424), .C0(n235), .Y(
        n234) );
  CLKBUFX3 U423 ( .A(cal_Y_trac_wire[1]), .Y(n53) );
  AOI21X1 U424 ( .A0(n181), .A1(n182), .B0(n431), .Y(cal_Y_trac_wire[1]) );
  AOI221XL U425 ( .A0(N540), .A1(n419), .B0(N497), .B1(n418), .C0(n184), .Y(
        n181) );
  AOI221XL U426 ( .A0(N468), .A1(n427), .B0(N425), .B1(n426), .C0(n183), .Y(
        n182) );
  AOI21X1 U427 ( .A0(n213), .A1(n214), .B0(n432), .Y(cal_X_trac_wire[6]) );
  AOI221XL U428 ( .A0(N352), .A1(n421), .B0(N309), .B1(n424), .C0(n215), .Y(
        n214) );
  AOI221XL U429 ( .A0(N252), .A1(n413), .B0(N209), .B1(n416), .C0(n216), .Y(
        n213) );
  AOI21X1 U430 ( .A0(n161), .A1(n162), .B0(n431), .Y(cal_Y_trac_wire[6]) );
  AOI221XL U431 ( .A0(N545), .A1(n419), .B0(N502), .B1(n418), .C0(n164), .Y(
        n161) );
  AOI221XL U432 ( .A0(N473), .A1(n427), .B0(N430), .B1(n426), .C0(n163), .Y(
        n162) );
  AOI21X1 U433 ( .A0(n217), .A1(n218), .B0(n432), .Y(cal_X_trac_wire[5]) );
  AOI221XL U434 ( .A0(N251), .A1(n413), .B0(N208), .B1(n416), .C0(n220), .Y(
        n217) );
  AOI221XL U435 ( .A0(N351), .A1(n421), .B0(N308), .B1(n424), .C0(n219), .Y(
        n218) );
  AOI21X1 U436 ( .A0(n225), .A1(n226), .B0(n432), .Y(cal_X_trac_wire[3]) );
  AOI221XL U437 ( .A0(N249), .A1(n413), .B0(N206), .B1(n416), .C0(n228), .Y(
        n225) );
  AOI221XL U438 ( .A0(N349), .A1(n421), .B0(N306), .B1(n424), .C0(n227), .Y(
        n226) );
  AOI21X1 U439 ( .A0(n173), .A1(n174), .B0(n431), .Y(cal_Y_trac_wire[3]) );
  AOI221XL U440 ( .A0(N542), .A1(n419), .B0(N499), .B1(n418), .C0(n176), .Y(
        n173) );
  AOI221XL U441 ( .A0(N470), .A1(n427), .B0(N427), .B1(n426), .C0(n175), .Y(
        n174) );
  INVX3 U442 ( .A(n33), .Y(n35) );
  INVX3 U443 ( .A(n33), .Y(n34) );
  AOI21X1 U444 ( .A0(n197), .A1(n198), .B0(n432), .Y(cal_Y_trac_wire[0]) );
  AOI221XL U445 ( .A0(N539), .A1(n420), .B0(N496), .B1(n417), .C0(n200), .Y(
        n197) );
  AOI221XL U446 ( .A0(N467), .A1(n428), .B0(N424), .B1(n425), .C0(n199), .Y(
        n198) );
  AOI21X1 U447 ( .A0(n249), .A1(n250), .B0(n432), .Y(cal_X_trac_wire[0]) );
  AOI221XL U448 ( .A0(N246), .A1(n414), .B0(N203), .B1(n415), .C0(n252), .Y(
        n249) );
  AOI221XL U449 ( .A0(N346), .A1(n422), .B0(N303), .B1(n423), .C0(n251), .Y(
        n250) );
  CLKBUFX3 U450 ( .A(n146), .Y(n423) );
  CLKBUFX3 U451 ( .A(n149), .Y(n417) );
  CLKBUFX3 U452 ( .A(n151), .Y(n415) );
  CLKBUFX3 U453 ( .A(n144), .Y(n425) );
  CLKBUFX3 U454 ( .A(n147), .Y(n422) );
  CLKBUFX3 U455 ( .A(n148), .Y(n420) );
  CLKBUFX3 U456 ( .A(n147), .Y(n421) );
  CLKBUFX3 U457 ( .A(n148), .Y(n419) );
  CLKBUFX3 U458 ( .A(n119), .Y(n37) );
  XNOR2X1 U459 ( .A(n458), .B(n1), .Y(n119) );
  AO22X1 U460 ( .A0(n425), .A1(N218), .B0(N261), .B1(n428), .Y(n235) );
  AO22X1 U461 ( .A0(N290), .A1(n417), .B0(N333), .B1(n420), .Y(n236) );
  AO22X1 U462 ( .A0(n425), .A1(N220), .B0(N263), .B1(n428), .Y(n227) );
  AO22X1 U463 ( .A0(N292), .A1(n417), .B0(N335), .B1(n420), .Y(n228) );
  AO22X1 U464 ( .A0(n425), .A1(N219), .B0(N262), .B1(n428), .Y(n231) );
  AO22X1 U465 ( .A0(N291), .A1(n417), .B0(N334), .B1(n420), .Y(n232) );
  AO22X1 U466 ( .A0(n425), .A1(N221), .B0(N264), .B1(n428), .Y(n223) );
  AO22X1 U467 ( .A0(N293), .A1(n417), .B0(N336), .B1(n420), .Y(n224) );
  AO22X1 U468 ( .A0(N511), .A1(n423), .B0(N554), .B1(n422), .Y(n183) );
  AO22X1 U469 ( .A0(n415), .A1(N218), .B0(N454), .B1(n414), .Y(n184) );
  AO22X1 U470 ( .A0(n425), .A1(N222), .B0(N265), .B1(n428), .Y(n219) );
  AO22X1 U471 ( .A0(N294), .A1(n417), .B0(N337), .B1(n420), .Y(n220) );
  AO22X1 U472 ( .A0(N512), .A1(n423), .B0(N555), .B1(n422), .Y(n179) );
  AO22X1 U473 ( .A0(n415), .A1(N219), .B0(N455), .B1(n414), .Y(n180) );
  AO22X1 U474 ( .A0(N295), .A1(n417), .B0(N338), .B1(n420), .Y(n216) );
  AO22X1 U475 ( .A0(n425), .A1(N223), .B0(N266), .B1(n428), .Y(n215) );
  AO22X1 U476 ( .A0(N513), .A1(n423), .B0(N556), .B1(n422), .Y(n175) );
  AO22X1 U477 ( .A0(n415), .A1(N220), .B0(N456), .B1(n414), .Y(n176) );
  AO22X1 U478 ( .A0(N514), .A1(n423), .B0(N557), .B1(n422), .Y(n171) );
  AO22X1 U479 ( .A0(n415), .A1(N221), .B0(N457), .B1(n414), .Y(n172) );
  AO22X1 U480 ( .A0(n415), .A1(N222), .B0(N458), .B1(n414), .Y(n168) );
  AO22X1 U481 ( .A0(N516), .A1(n423), .B0(N559), .B1(n422), .Y(n163) );
  AO22X1 U482 ( .A0(n415), .A1(N223), .B0(N459), .B1(n414), .Y(n164) );
  CLKBUFX3 U483 ( .A(n146), .Y(n424) );
  CLKBUFX3 U484 ( .A(n144), .Y(n426) );
  CLKBUFX3 U485 ( .A(n149), .Y(n418) );
  CLKBUFX3 U486 ( .A(n151), .Y(n416) );
  NOR2BX1 U487 ( .AN(n138), .B(n120), .Y(n264) );
  NOR2BX1 U488 ( .AN(n125), .B(n120), .Y(n266) );
  CLKBUFX3 U489 ( .A(n429), .Y(n435) );
  CLKBUFX3 U490 ( .A(n429), .Y(n436) );
  NOR2X1 U491 ( .A(n498), .B(n499), .Y(n116) );
  CLKBUFX3 U492 ( .A(n429), .Y(n434) );
  CLKBUFX3 U493 ( .A(n430), .Y(n438) );
  CLKBUFX3 U494 ( .A(n429), .Y(n437) );
  INVX3 U495 ( .A(n443), .Y(n442) );
  CLKBUFX3 U496 ( .A(n430), .Y(n439) );
  CLKINVX1 U497 ( .A(n460), .Y(n457) );
  CLKBUFX3 U498 ( .A(n464), .Y(n460) );
  ADDFXL U499 ( .A(n80), .B(n467), .CI(\add_165/carry[8] ), .CO(
        \add_165/carry[9] ), .S(N504) );
  ADDFXL U500 ( .A(n80), .B(n467), .CI(\add_167/carry[8] ), .CO(
        \add_167/carry[9] ), .S(N547) );
  ADDFXL U501 ( .A(n81), .B(n467), .CI(\add_165/carry[9] ), .CO(
        \add_165/carry[10] ), .S(N505) );
  ADDFXL U502 ( .A(n81), .B(n467), .CI(\add_167/carry[9] ), .CO(
        \add_167/carry[10] ), .S(N548) );
  ADDFXL U503 ( .A(n82), .B(n467), .CI(\add_165/carry[10] ), .CO(
        \add_165/carry[11] ), .S(N506) );
  ADDFXL U504 ( .A(n83), .B(n467), .CI(\add_165/carry[11] ), .CO(
        \add_165/carry[12] ), .S(N507) );
  ADDFXL U505 ( .A(n78), .B(n466), .CI(\add_167/carry[6] ), .CO(
        \add_167/carry[7] ), .S(N545) );
  ADDFXL U506 ( .A(n82), .B(n466), .CI(\add_167/carry[10] ), .CO(
        \add_167/carry[11] ), .S(N549) );
  ADDFXL U507 ( .A(n83), .B(n466), .CI(\add_167/carry[11] ), .CO(
        \add_167/carry[12] ), .S(N550) );
  ADDFXL U508 ( .A(n79), .B(n466), .CI(\add_167/carry[7] ), .CO(
        \add_167/carry[8] ), .S(N546) );
  ADDFXL U509 ( .A(n65), .B(n81), .CI(\add_143/carry[3] ), .CO(
        \add_143/carry[4] ), .S(N349) );
  ADDFXL U510 ( .A(n64), .B(n82), .CI(\add_143/carry[4] ), .CO(
        \add_143/carry[5] ), .S(N350) );
  ADDFXL U511 ( .A(n63), .B(n81), .CI(\add_141/carry[5] ), .CO(
        \add_141/carry[6] ), .S(N308) );
  ADDFXL U512 ( .A(n63), .B(n83), .CI(\add_143/carry[5] ), .CO(
        \add_143/carry[6] ), .S(N351) );
  ADDFXL U513 ( .A(n62), .B(n82), .CI(\add_141/carry[6] ), .CO(
        \add_141/carry[7] ), .S(N309) );
  ADDFXL U514 ( .A(n67), .B(n83), .CI(\add_141/carry[7] ), .CO(
        \add_141/carry[8] ), .S(N310) );
  ADDFXL U515 ( .A(n84), .B(n79), .CI(\add_143/carry[1] ), .CO(
        \add_143/carry[2] ), .S(N347) );
  ADDFXL U516 ( .A(n65), .B(n79), .CI(\add_141/carry[3] ), .CO(
        \add_141/carry[4] ), .S(N306) );
  ADDFXL U517 ( .A(n64), .B(n80), .CI(\add_141/carry[4] ), .CO(
        \add_141/carry[5] ), .S(N307) );
  ADDFXL U518 ( .A(n74), .B(n69), .CI(\add_167/carry[3] ), .CO(
        \add_167/carry[4] ), .S(N542) );
  ADDFXL U519 ( .A(n73), .B(n70), .CI(\add_167/carry[4] ), .CO(
        \add_167/carry[5] ), .S(N543) );
  ADDFXL U520 ( .A(n72), .B(n69), .CI(\add_165/carry[5] ), .CO(
        \add_165/carry[6] ), .S(N501) );
  ADDFXL U521 ( .A(n66), .B(n80), .CI(\add_143/carry[2] ), .CO(
        \add_143/carry[3] ), .S(N348) );
  ADDFXL U522 ( .A(n72), .B(n71), .CI(\add_167/carry[5] ), .CO(
        \add_167/carry[6] ), .S(N544) );
  ADDFXL U523 ( .A(n78), .B(n70), .CI(\add_165/carry[6] ), .CO(
        \add_165/carry[7] ), .S(N502) );
  ADDFXL U524 ( .A(n79), .B(n71), .CI(\add_165/carry[7] ), .CO(
        \add_165/carry[8] ), .S(N503) );
  ADDFXL U525 ( .A(n66), .B(n78), .CI(\add_141/carry[2] ), .CO(
        \add_141/carry[3] ), .S(N305) );
  ADDFXL U526 ( .A(n76), .B(n67), .CI(\add_167/carry[1] ), .CO(
        \add_167/carry[2] ), .S(N540) );
  ADDFXL U527 ( .A(n74), .B(n67), .CI(\add_165/carry[3] ), .CO(
        \add_165/carry[4] ), .S(N499) );
  ADDFXL U528 ( .A(n75), .B(n68), .CI(\add_167/carry[2] ), .CO(
        \add_167/carry[3] ), .S(N541) );
  ADDFXL U529 ( .A(n73), .B(n68), .CI(\add_165/carry[4] ), .CO(
        \add_165/carry[5] ), .S(N500) );
  ADDFXL U530 ( .A(n75), .B(n62), .CI(\add_165/carry[2] ), .CO(
        \add_165/carry[3] ), .S(N498) );
  ADDFXL U531 ( .A(n84), .B(n72), .CI(\add_141/carry[1] ), .CO(
        \add_141/carry[2] ), .S(N304) );
  ADDFXL U532 ( .A(n76), .B(n63), .CI(\add_165/carry[1] ), .CO(
        \add_165/carry[2] ), .S(N497) );
  ADDFXL U533 ( .A(n62), .B(n36), .CI(\add_143/carry[6] ), .CO(
        \add_143/carry[7] ), .S(N352) );
  ADDFXL U534 ( .A(n67), .B(n35), .CI(\add_143/carry[7] ), .CO(
        \add_143/carry[8] ), .S(N353) );
  ADDFXL U535 ( .A(n68), .B(n34), .CI(\add_143/carry[8] ), .CO(
        \add_143/carry[9] ), .S(N354) );
  ADDFXL U536 ( .A(n68), .B(n34), .CI(\add_141/carry[8] ), .CO(
        \add_141/carry[9] ), .S(N311) );
  ADDFXL U537 ( .A(n69), .B(n36), .CI(\add_143/carry[9] ), .CO(
        \add_143/carry[10] ), .S(N355) );
  ADDFXL U538 ( .A(n69), .B(n36), .CI(\add_141/carry[9] ), .CO(
        \add_141/carry[10] ), .S(N312) );
  ADDFXL U539 ( .A(n70), .B(n35), .CI(\add_143/carry[10] ), .CO(
        \add_143/carry[11] ), .S(N356) );
  ADDFXL U540 ( .A(n70), .B(n35), .CI(\add_141/carry[10] ), .CO(
        \add_141/carry[11] ), .S(N313) );
  ADDFXL U541 ( .A(n71), .B(n34), .CI(\add_143/carry[11] ), .CO(
        \add_143/carry[12] ), .S(N357) );
  ADDFXL U542 ( .A(n71), .B(n34), .CI(\add_141/carry[11] ), .CO(
        \add_141/carry[12] ), .S(N314) );
  ADDFXL U543 ( .A(n65), .B(n20), .CI(\sub_143/carry[3] ), .CO(
        \sub_143/carry[4] ), .S(N335) );
  ADDFXL U544 ( .A(n64), .B(n25), .CI(\sub_143/carry[4] ), .CO(
        \sub_143/carry[5] ), .S(N336) );
  ADDFXL U545 ( .A(n63), .B(n27), .CI(\sub_143/carry[5] ), .CO(
        \sub_143/carry[6] ), .S(N337) );
  ADDFXL U546 ( .A(n63), .B(n20), .CI(\sub_141/carry[5] ), .CO(
        \sub_141/carry[6] ), .S(N294) );
  ADDFXL U547 ( .A(n62), .B(n25), .CI(\sub_141/carry[6] ), .CO(
        \sub_141/carry[7] ), .S(N295) );
  ADDFXL U548 ( .A(n67), .B(n27), .CI(\sub_141/carry[7] ), .CO(
        \sub_141/carry[8] ), .S(N296) );
  ADDFXL U549 ( .A(n80), .B(n469), .CI(\sub_165/carry[8] ), .CO(
        \sub_165/carry[9] ), .S(N518) );
  ADDFXL U550 ( .A(n84), .B(n12), .CI(\sub_143/carry[1] ), .CO(
        \sub_143/carry[2] ), .S(N333) );
  ADDFXL U551 ( .A(n66), .B(n18), .CI(\sub_143/carry[2] ), .CO(
        \sub_143/carry[3] ), .S(N334) );
  ADDFXL U552 ( .A(n65), .B(n12), .CI(\sub_141/carry[3] ), .CO(
        \sub_141/carry[4] ), .S(N292) );
  ADDFXL U553 ( .A(n64), .B(n18), .CI(\sub_141/carry[4] ), .CO(
        \sub_141/carry[5] ), .S(N293) );
  ADDFXL U554 ( .A(n74), .B(n24), .CI(\sub_167/carry[3] ), .CO(
        \sub_167/carry[4] ), .S(N556) );
  ADDFXL U555 ( .A(n73), .B(n26), .CI(\sub_167/carry[4] ), .CO(
        \sub_167/carry[5] ), .S(N557) );
  ADDFXL U556 ( .A(n72), .B(n31), .CI(\sub_167/carry[5] ), .CO(
        \sub_167/carry[6] ), .S(N558) );
  ADDFXL U557 ( .A(n72), .B(n24), .CI(\sub_165/carry[5] ), .CO(
        \sub_165/carry[6] ), .S(N515) );
  ADDFXL U558 ( .A(n78), .B(n26), .CI(\sub_165/carry[6] ), .CO(
        \sub_165/carry[7] ), .S(N516) );
  ADDFXL U559 ( .A(n79), .B(n31), .CI(\sub_165/carry[7] ), .CO(
        \sub_165/carry[8] ), .S(N517) );
  ADDFXL U560 ( .A(n66), .B(n4), .CI(\sub_141/carry[2] ), .CO(
        \sub_141/carry[3] ), .S(N291) );
  ADDFXL U561 ( .A(n76), .B(n17), .CI(\sub_167/carry[1] ), .CO(
        \sub_167/carry[2] ), .S(N554) );
  ADDFXL U562 ( .A(n75), .B(n19), .CI(\sub_167/carry[2] ), .CO(
        \sub_167/carry[3] ), .S(N555) );
  ADDFXL U563 ( .A(n74), .B(n17), .CI(\sub_165/carry[3] ), .CO(
        \sub_165/carry[4] ), .S(N513) );
  ADDFXL U564 ( .A(n73), .B(n19), .CI(\sub_165/carry[4] ), .CO(
        \sub_165/carry[5] ), .S(N514) );
  ADDFXL U565 ( .A(n75), .B(n9), .CI(\sub_165/carry[2] ), .CO(
        \sub_165/carry[3] ), .S(N512) );
  ADDFXL U566 ( .A(n84), .B(n10), .CI(\sub_141/carry[1] ), .CO(
        \sub_141/carry[2] ), .S(N290) );
  ADDFXL U567 ( .A(n76), .B(n11), .CI(\sub_165/carry[1] ), .CO(
        \sub_165/carry[2] ), .S(N511) );
  ADDFXL U568 ( .A(n62), .B(n462), .CI(\sub_143/carry[6] ), .CO(
        \sub_143/carry[7] ), .S(N338) );
  ADDFXL U569 ( .A(n67), .B(n462), .CI(\sub_143/carry[7] ), .CO(
        \sub_143/carry[8] ), .S(N339) );
  ADDFXL U570 ( .A(n68), .B(n463), .CI(\sub_143/carry[8] ), .CO(
        \sub_143/carry[9] ), .S(N340) );
  ADDFXL U571 ( .A(n68), .B(n461), .CI(\sub_141/carry[8] ), .CO(
        \sub_141/carry[9] ), .S(N297) );
  ADDFXL U572 ( .A(n69), .B(n463), .CI(\sub_143/carry[9] ), .CO(
        \sub_143/carry[10] ), .S(N341) );
  ADDFXL U573 ( .A(n69), .B(n461), .CI(\sub_141/carry[9] ), .CO(
        \sub_141/carry[10] ), .S(N298) );
  ADDFXL U574 ( .A(n70), .B(n461), .CI(\sub_143/carry[10] ), .CO(
        \sub_143/carry[11] ), .S(N342) );
  ADDFXL U575 ( .A(n70), .B(n461), .CI(\sub_141/carry[10] ), .CO(
        \sub_141/carry[11] ), .S(N299) );
  ADDFXL U576 ( .A(n71), .B(n463), .CI(\sub_143/carry[11] ), .CO(
        \sub_143/carry[12] ), .S(N343) );
  ADDFXL U577 ( .A(n71), .B(n461), .CI(\sub_141/carry[11] ), .CO(
        \sub_141/carry[12] ), .S(N300) );
  ADDFXL U578 ( .A(n78), .B(n468), .CI(\sub_167/carry[6] ), .CO(
        \sub_167/carry[7] ), .S(N559) );
  ADDFXL U579 ( .A(n79), .B(n468), .CI(\sub_167/carry[7] ), .CO(
        \sub_167/carry[8] ), .S(N560) );
  ADDFXL U580 ( .A(n80), .B(n468), .CI(\sub_167/carry[8] ), .CO(
        \sub_167/carry[9] ), .S(N561) );
  ADDFXL U581 ( .A(n81), .B(n468), .CI(\sub_167/carry[9] ), .CO(
        \sub_167/carry[10] ), .S(N562) );
  ADDFXL U582 ( .A(n81), .B(n468), .CI(\sub_165/carry[9] ), .CO(
        \sub_165/carry[10] ), .S(N519) );
  ADDFXL U583 ( .A(n82), .B(n468), .CI(\sub_167/carry[10] ), .CO(
        \sub_167/carry[11] ), .S(N563) );
  ADDFXL U584 ( .A(n82), .B(n468), .CI(\sub_165/carry[10] ), .CO(
        \sub_165/carry[11] ), .S(N520) );
  ADDFXL U585 ( .A(n83), .B(n468), .CI(\sub_165/carry[11] ), .CO(
        \sub_165/carry[12] ), .S(N521) );
  ADDFXL U586 ( .A(n83), .B(n468), .CI(\sub_167/carry[11] ), .CO(
        \sub_167/carry[12] ), .S(N564) );
  CLKINVX1 U587 ( .A(n253), .Y(n504) );
  CLKBUFX3 U588 ( .A(n464), .Y(n459) );
  CLKBUFX3 U589 ( .A(n465), .Y(n462) );
  CLKBUFX3 U590 ( .A(n464), .Y(n463) );
  CLKBUFX3 U591 ( .A(n464), .Y(n461) );
  CLKBUFX3 U592 ( .A(n469), .Y(n468) );
  AO22X1 U593 ( .A0(N510), .A1(n423), .B0(N553), .B1(n422), .Y(n199) );
  AO22X1 U594 ( .A0(N289), .A1(n418), .B0(N332), .B1(n419), .Y(n252) );
  AO22X1 U595 ( .A0(n426), .A1(N217), .B0(N260), .B1(n427), .Y(n251) );
  AO22X1 U596 ( .A0(n415), .A1(N217), .B0(N453), .B1(n414), .Y(n200) );
  CLKBUFX3 U597 ( .A(n121), .Y(n429) );
  CLKINVX1 U598 ( .A(n393), .Y(n498) );
  CLKINVX1 U599 ( .A(n131), .Y(n503) );
  NOR2X1 U600 ( .A(n394), .B(n393), .Y(n138) );
  NOR2X1 U601 ( .A(n393), .B(n499), .Y(n132) );
  NOR2X1 U602 ( .A(n394), .B(n498), .Y(n125) );
  CLKINVX1 U603 ( .A(n394), .Y(n499) );
  CLKBUFX3 U604 ( .A(n121), .Y(n430) );
  NOR2X1 U605 ( .A(n431), .B(n108), .Y(next_state[1]) );
  CLKBUFX3 U606 ( .A(n111), .Y(n440) );
  AOI2BB1X1 U607 ( .A0N(n253), .A1N(n503), .B0(n431), .Y(N136) );
  BUFX4 U608 ( .A(cal_X_reg[0]), .Y(n85) );
  BUFX4 U609 ( .A(cal_Y_reg[0]), .Y(n77) );
  AO22X1 U610 ( .A0(n439), .A1(n268), .B0(ori_Y[11]), .B1(n440), .Y(N128) );
  NAND4X1 U611 ( .A(n269), .B(n270), .C(n271), .D(n272), .Y(n268) );
  AOI22X1 U612 ( .A0(N865), .A1(n89), .B0(N825), .B1(n87), .Y(n269) );
  AOI22X1 U613 ( .A0(N878), .A1(n98), .B0(N838), .B1(n96), .Y(n271) );
  AO22X1 U614 ( .A0(n439), .A1(n333), .B0(ori_X[11]), .B1(n440), .Y(N115) );
  NAND4X1 U615 ( .A(n334), .B(n335), .C(n336), .D(n337), .Y(n333) );
  AOI22X1 U616 ( .A0(N685), .A1(n97), .B0(N645), .B1(n95), .Y(n336) );
  AOI22X1 U617 ( .A0(N672), .A1(n88), .B0(N632), .B1(n86), .Y(n334) );
  AO22X1 U618 ( .A0(n430), .A1(n328), .B0(ori_X[12]), .B1(n440), .Y(N116) );
  NAND4X1 U619 ( .A(n329), .B(n330), .C(n331), .D(n332), .Y(n328) );
  AOI22X1 U620 ( .A0(N673), .A1(n88), .B0(N633), .B1(n87), .Y(n329) );
  AOI22X1 U621 ( .A0(N686), .A1(n97), .B0(N646), .B1(n96), .Y(n331) );
  AO22X1 U622 ( .A0(n430), .A1(n255), .B0(ori_Y[12]), .B1(n440), .Y(N129) );
  NAND4X1 U623 ( .A(n256), .B(n257), .C(n258), .D(n259), .Y(n255) );
  AOI22X1 U624 ( .A0(N866), .A1(n89), .B0(N826), .B1(n86), .Y(n256) );
  AOI22X1 U625 ( .A0(N879), .A1(n98), .B0(N839), .B1(n95), .Y(n258) );
  NAND2BX1 U626 ( .AN(iter_reg[2]), .B(n99), .Y(n115) );
  NOR2X1 U627 ( .A(n99), .B(iter_reg[2]), .Y(n253) );
  CLKINVX1 U628 ( .A(cal_Y_reg[12]), .Y(n465) );
  AO22X1 U629 ( .A0(n439), .A1(n358), .B0(ori_X[6]), .B1(n440), .Y(N110) );
  NAND4X1 U630 ( .A(n359), .B(n360), .C(n361), .D(n362), .Y(n358) );
  AOI22X1 U631 ( .A0(N667), .A1(n88), .B0(N627), .B1(n86), .Y(n359) );
  AOI22X1 U632 ( .A0(N747), .A1(n92), .B0(N707), .B1(n90), .Y(n360) );
  AO22X1 U633 ( .A0(n439), .A1(n363), .B0(ori_X[5]), .B1(n440), .Y(N109) );
  NAND4X1 U634 ( .A(n364), .B(n365), .C(n366), .D(n367), .Y(n363) );
  AOI22X1 U635 ( .A0(N666), .A1(n88), .B0(N626), .B1(n86), .Y(n364) );
  AOI22X1 U636 ( .A0(N746), .A1(n92), .B0(N706), .B1(n90), .Y(n365) );
  AO22X1 U637 ( .A0(n439), .A1(n368), .B0(ori_X[4]), .B1(n440), .Y(N108) );
  NAND4X1 U638 ( .A(n369), .B(n370), .C(n371), .D(n372), .Y(n368) );
  AOI22X1 U639 ( .A0(N665), .A1(n88), .B0(N625), .B1(n86), .Y(n369) );
  AOI22X1 U640 ( .A0(N745), .A1(n92), .B0(N705), .B1(n90), .Y(n370) );
  AO22X1 U641 ( .A0(n438), .A1(n373), .B0(ori_X[3]), .B1(n111), .Y(N107) );
  NAND4X1 U642 ( .A(n374), .B(n375), .C(n376), .D(n377), .Y(n373) );
  AOI22X1 U643 ( .A0(N664), .A1(n88), .B0(N624), .B1(n86), .Y(n374) );
  AOI22X1 U644 ( .A0(N744), .A1(n92), .B0(N704), .B1(n90), .Y(n375) );
  AO22X1 U645 ( .A0(n430), .A1(n378), .B0(ori_X[2]), .B1(n111), .Y(N106) );
  NAND4X1 U646 ( .A(n379), .B(n380), .C(n381), .D(n382), .Y(n378) );
  AOI22X1 U647 ( .A0(N663), .A1(n88), .B0(N623), .B1(n86), .Y(n379) );
  AOI22X1 U648 ( .A0(N743), .A1(n92), .B0(N703), .B1(n90), .Y(n380) );
  AO22X1 U649 ( .A0(n439), .A1(n353), .B0(ori_X[7]), .B1(n111), .Y(N111) );
  NAND4X1 U650 ( .A(n354), .B(n355), .C(n356), .D(n357), .Y(n353) );
  AOI22X1 U651 ( .A0(N668), .A1(n88), .B0(N628), .B1(n86), .Y(n354) );
  AOI22X1 U652 ( .A0(N748), .A1(n92), .B0(N708), .B1(n90), .Y(n355) );
  AO22X1 U653 ( .A0(n439), .A1(n348), .B0(ori_X[8]), .B1(n111), .Y(N112) );
  NAND4X1 U654 ( .A(n349), .B(n350), .C(n351), .D(n352), .Y(n348) );
  AOI22X1 U655 ( .A0(N669), .A1(n88), .B0(N629), .B1(n86), .Y(n349) );
  AOI22X1 U656 ( .A0(N749), .A1(n92), .B0(N709), .B1(n90), .Y(n350) );
  AO22X1 U657 ( .A0(n439), .A1(n343), .B0(ori_X[9]), .B1(n111), .Y(N113) );
  NAND4X1 U658 ( .A(n344), .B(n345), .C(n346), .D(n347), .Y(n343) );
  AOI22X1 U659 ( .A0(N670), .A1(n88), .B0(N630), .B1(n86), .Y(n344) );
  AOI22X1 U660 ( .A0(N683), .A1(n97), .B0(N643), .B1(n95), .Y(n346) );
  AO22X1 U661 ( .A0(n439), .A1(n338), .B0(ori_X[10]), .B1(n440), .Y(N114) );
  NAND4X1 U662 ( .A(n339), .B(n340), .C(n341), .D(n342), .Y(n338) );
  AOI22X1 U663 ( .A0(N671), .A1(n88), .B0(N631), .B1(n86), .Y(n339) );
  AOI22X1 U664 ( .A0(N684), .A1(n97), .B0(N644), .B1(n95), .Y(n341) );
  AO22X1 U665 ( .A0(n439), .A1(n383), .B0(ori_X[1]), .B1(n440), .Y(N105) );
  NAND4X1 U666 ( .A(n384), .B(n385), .C(n386), .D(n387), .Y(n383) );
  AOI22X1 U667 ( .A0(N662), .A1(n88), .B0(N622), .B1(n86), .Y(n384) );
  AOI22X1 U668 ( .A0(N742), .A1(n92), .B0(N702), .B1(n90), .Y(n385) );
  AO22X1 U669 ( .A0(n439), .A1(n388), .B0(ori_X[0]), .B1(n440), .Y(N104) );
  NAND4X1 U670 ( .A(n389), .B(n390), .C(n391), .D(n392), .Y(n388) );
  AOI22X1 U671 ( .A0(N661), .A1(n88), .B0(N621), .B1(n86), .Y(n389) );
  AOI22X1 U672 ( .A0(N741), .A1(n92), .B0(N701), .B1(n90), .Y(n390) );
  AO22X1 U673 ( .A0(n439), .A1(n298), .B0(ori_Y[5]), .B1(n440), .Y(N122) );
  NAND4X1 U674 ( .A(n299), .B(n300), .C(n301), .D(n302), .Y(n298) );
  AOI22X1 U675 ( .A0(N859), .A1(n89), .B0(N819), .B1(n87), .Y(n299) );
  AOI22X1 U676 ( .A0(N939), .A1(n93), .B0(N899), .B1(n91), .Y(n300) );
  AO22X1 U677 ( .A0(n439), .A1(n303), .B0(ori_Y[4]), .B1(n440), .Y(N121) );
  NAND4X1 U678 ( .A(n304), .B(n305), .C(n306), .D(n307), .Y(n303) );
  AOI22X1 U679 ( .A0(N858), .A1(n89), .B0(N818), .B1(n87), .Y(n304) );
  AOI22X1 U680 ( .A0(N938), .A1(n93), .B0(N898), .B1(n91), .Y(n305) );
  AO22X1 U681 ( .A0(n439), .A1(n308), .B0(ori_Y[3]), .B1(n440), .Y(N120) );
  NAND4X1 U682 ( .A(n309), .B(n310), .C(n311), .D(n312), .Y(n308) );
  AOI22X1 U683 ( .A0(N857), .A1(n89), .B0(N817), .B1(n87), .Y(n309) );
  AOI22X1 U684 ( .A0(N937), .A1(n93), .B0(N897), .B1(n91), .Y(n310) );
  AO22X1 U685 ( .A0(n439), .A1(n313), .B0(ori_Y[2]), .B1(n440), .Y(N119) );
  NAND4X1 U686 ( .A(n314), .B(n315), .C(n316), .D(n317), .Y(n313) );
  AOI22X1 U687 ( .A0(N856), .A1(n89), .B0(N816), .B1(n87), .Y(n314) );
  AOI22X1 U688 ( .A0(N936), .A1(n93), .B0(N896), .B1(n91), .Y(n315) );
  AO22X1 U689 ( .A0(n439), .A1(n318), .B0(ori_Y[1]), .B1(n440), .Y(N118) );
  NAND4X1 U690 ( .A(n319), .B(n320), .C(n321), .D(n322), .Y(n318) );
  AOI22X1 U691 ( .A0(N855), .A1(n89), .B0(N815), .B1(n87), .Y(n319) );
  AOI22X1 U692 ( .A0(N935), .A1(n93), .B0(N895), .B1(n91), .Y(n320) );
  AO22X1 U693 ( .A0(n439), .A1(n323), .B0(ori_Y[0]), .B1(n440), .Y(N117) );
  NAND4X1 U694 ( .A(n324), .B(n325), .C(n326), .D(n327), .Y(n323) );
  AOI22X1 U695 ( .A0(N854), .A1(n89), .B0(N814), .B1(n87), .Y(n324) );
  AOI22X1 U696 ( .A0(N934), .A1(n93), .B0(N894), .B1(n91), .Y(n325) );
  AO22X1 U697 ( .A0(n439), .A1(n293), .B0(ori_Y[6]), .B1(n440), .Y(N123) );
  NAND4X1 U698 ( .A(n294), .B(n295), .C(n296), .D(n297), .Y(n293) );
  AOI22X1 U699 ( .A0(N860), .A1(n89), .B0(N820), .B1(n87), .Y(n294) );
  AOI22X1 U700 ( .A0(N940), .A1(n93), .B0(N900), .B1(n91), .Y(n295) );
  AO22X1 U701 ( .A0(n439), .A1(n288), .B0(ori_Y[7]), .B1(n440), .Y(N124) );
  NAND4X1 U702 ( .A(n289), .B(n290), .C(n291), .D(n292), .Y(n288) );
  AOI22X1 U703 ( .A0(N861), .A1(n89), .B0(N821), .B1(n87), .Y(n289) );
  AOI22X1 U704 ( .A0(N874), .A1(n98), .B0(N834), .B1(n96), .Y(n291) );
  AO22X1 U705 ( .A0(n439), .A1(n283), .B0(ori_Y[8]), .B1(n440), .Y(N125) );
  NAND4X1 U706 ( .A(n284), .B(n285), .C(n286), .D(n287), .Y(n283) );
  AOI22X1 U707 ( .A0(N862), .A1(n89), .B0(N822), .B1(n87), .Y(n284) );
  AOI22X1 U708 ( .A0(N875), .A1(n98), .B0(N835), .B1(n96), .Y(n286) );
  AO22X1 U709 ( .A0(n439), .A1(n278), .B0(ori_Y[9]), .B1(n440), .Y(N126) );
  NAND4X1 U710 ( .A(n279), .B(n280), .C(n281), .D(n282), .Y(n278) );
  AOI22X1 U711 ( .A0(N863), .A1(n89), .B0(N823), .B1(n87), .Y(n279) );
  AOI22X1 U712 ( .A0(N876), .A1(n98), .B0(N836), .B1(n96), .Y(n281) );
  AO22X1 U713 ( .A0(n439), .A1(n273), .B0(ori_Y[10]), .B1(n440), .Y(N127) );
  NAND4X1 U714 ( .A(n274), .B(n275), .C(n276), .D(n277), .Y(n273) );
  AOI22X1 U715 ( .A0(N864), .A1(n89), .B0(N824), .B1(n87), .Y(n274) );
  AOI22X1 U716 ( .A0(N877), .A1(n98), .B0(N837), .B1(n96), .Y(n276) );
  OAI32X1 U717 ( .A0(n433), .A1(n502), .A2(n126), .B0(n104), .B1(n127), .Y(
        n407) );
  CLKINVX1 U718 ( .A(n127), .Y(n502) );
  NAND2X1 U719 ( .A(n438), .B(n504), .Y(n127) );
  AOI2BB1X1 U720 ( .A0N(n125), .A1N(n37), .B0(n495), .Y(n126) );
  OAI32X1 U721 ( .A0(n433), .A1(n501), .A2(n133), .B0(n102), .B1(n134), .Y(
        n409) );
  CLKINVX1 U722 ( .A(n134), .Y(n501) );
  NAND2X1 U723 ( .A(n438), .B(n131), .Y(n134) );
  AOI2BB1X1 U724 ( .A0N(n37), .A1N(n132), .B0(n495), .Y(n133) );
  OAI32X1 U725 ( .A0(n433), .A1(n500), .A2(n139), .B0(n100), .B1(n140), .Y(
        n411) );
  CLKINVX1 U726 ( .A(n140), .Y(n500) );
  NAND2X1 U727 ( .A(n438), .B(n108), .Y(n140) );
  AOI2BB1X1 U728 ( .A0N(n37), .A1N(n138), .B0(n495), .Y(n139) );
  OAI2BB2XL U729 ( .B0(n106), .B1(n117), .A0N(n118), .A1N(n117), .Y(n405) );
  NAND2X1 U730 ( .A(n438), .B(n115), .Y(n117) );
  OAI21XL U731 ( .A0(n116), .A1(n37), .B0(n120), .Y(n118) );
  NAND2X1 U732 ( .A(n438), .B(iter_reg[1]), .Y(n394) );
  OAI21XL U733 ( .A0(n103), .A1(n128), .B0(n129), .Y(n408) );
  NAND4X1 U734 ( .A(n435), .B(n506), .C(n128), .D(n130), .Y(n129) );
  NAND3X1 U735 ( .A(n130), .B(n437), .C(n131), .Y(n128) );
  NAND2X1 U736 ( .A(n132), .B(n433), .Y(n130) );
  OAI21XL U737 ( .A0(n101), .A1(n135), .B0(n136), .Y(n410) );
  NAND4X1 U738 ( .A(n436), .B(n506), .C(n135), .D(n137), .Y(n136) );
  NAND3X1 U739 ( .A(n137), .B(n437), .C(n108), .Y(n135) );
  NAND2X1 U740 ( .A(n138), .B(n433), .Y(n137) );
  OAI21XL U741 ( .A0(n105), .A1(n122), .B0(n123), .Y(n406) );
  NAND4X1 U742 ( .A(n434), .B(n506), .C(n122), .D(n124), .Y(n123) );
  NAND3X1 U743 ( .A(n124), .B(n437), .C(n504), .Y(n122) );
  NAND2X1 U744 ( .A(n125), .B(n433), .Y(n124) );
  CLKINVX1 U745 ( .A(n112), .Y(n496) );
  AOI32X1 U746 ( .A0(n506), .A1(n113), .A2(n114), .B0(\sign_d_reg[0] ), .B1(
        n497), .Y(n112) );
  CLKINVX1 U747 ( .A(n114), .Y(n497) );
  NAND2X1 U748 ( .A(n115), .B(n113), .Y(n114) );
  CLKBUFX3 U749 ( .A(n107), .Y(n441) );
  NAND2X1 U750 ( .A(current_state[1]), .B(n94), .Y(n107) );
  NOR2X1 U751 ( .A(current_state[0]), .B(current_state[1]), .Y(n111) );
  OAI21XL U752 ( .A0(n505), .A1(n431), .B0(n109), .Y(next_state[0]) );
  NAND2X1 U753 ( .A(start), .B(n440), .Y(n109) );
  CLKINVX1 U754 ( .A(n108), .Y(n505) );
  NOR2X1 U755 ( .A(iter_reg[1]), .B(n431), .Y(N135) );
  AND2X2 U756 ( .A(\sign_d_reg[0] ), .B(n443), .Y(sign_d[0]) );
  NOR2X1 U757 ( .A(n442), .B(n100), .Y(sign_d[7]) );
  NOR2X1 U758 ( .A(n442), .B(n101), .Y(sign_d[6]) );
  NOR2X1 U759 ( .A(n442), .B(n102), .Y(sign_d[5]) );
  NOR2X1 U760 ( .A(n442), .B(n103), .Y(sign_d[4]) );
  NOR2X1 U761 ( .A(n442), .B(n104), .Y(sign_d[3]) );
  NOR2X1 U762 ( .A(n442), .B(n105), .Y(sign_d[2]) );
  NOR2X1 U763 ( .A(n442), .B(n106), .Y(sign_d[1]) );
  OR2X1 U764 ( .A(n486), .B(n50), .Y(\sub_214/carry[1] ) );
  XNOR2X1 U765 ( .A(n50), .B(n486), .Y(N907) );
  OR2X1 U766 ( .A(n490), .B(n50), .Y(\sub_216/carry[1] ) );
  XNOR2X1 U767 ( .A(n50), .B(n490), .Y(N947) );
  AND2X1 U768 ( .A(n50), .B(n45), .Y(\add_214/carry[1] ) );
  XOR2X1 U769 ( .A(n45), .B(n50), .Y(N894) );
  AND2X1 U770 ( .A(n50), .B(n47), .Y(\add_216/carry[1] ) );
  XOR2X1 U771 ( .A(n47), .B(n50), .Y(N934) );
  AND2X1 U772 ( .A(n38), .B(n57), .Y(\add_189/carry[1] ) );
  XOR2X1 U773 ( .A(n57), .B(n38), .Y(N714) );
  AND2X1 U774 ( .A(n38), .B(n59), .Y(\add_191/carry[1] ) );
  XOR2X1 U775 ( .A(n59), .B(n38), .Y(N754) );
  OR2X1 U776 ( .A(n474), .B(n38), .Y(\sub_189/carry[1] ) );
  XNOR2X1 U777 ( .A(n38), .B(n474), .Y(N701) );
  OR2X1 U778 ( .A(n478), .B(n38), .Y(\sub_191/carry[1] ) );
  XNOR2X1 U779 ( .A(n38), .B(n478), .Y(N741) );
  OR2X1 U780 ( .A(n9), .B(n77), .Y(\sub_167/carry[1] ) );
  XNOR2X1 U781 ( .A(n77), .B(n9), .Y(N553) );
  OR2X1 U782 ( .A(n3), .B(n77), .Y(\sub_165/carry[1] ) );
  XNOR2X1 U783 ( .A(n77), .B(n3), .Y(N510) );
  AND2X1 U784 ( .A(n77), .B(n64), .Y(\add_165/carry[1] ) );
  XOR2X1 U785 ( .A(n64), .B(n77), .Y(N496) );
  AND2X1 U786 ( .A(n77), .B(n62), .Y(\add_167/carry[1] ) );
  XOR2X1 U787 ( .A(n62), .B(n77), .Y(N539) );
  AND2X1 U788 ( .A(n85), .B(n73), .Y(\add_141/carry[1] ) );
  XOR2X1 U789 ( .A(n73), .B(n85), .Y(N303) );
  AND2X1 U790 ( .A(n85), .B(n78), .Y(\add_143/carry[1] ) );
  XOR2X1 U791 ( .A(n78), .B(n85), .Y(N346) );
  OR2X1 U792 ( .A(n4), .B(n85), .Y(\sub_143/carry[1] ) );
  XNOR2X1 U793 ( .A(n85), .B(n4), .Y(N332) );
  OR2X1 U794 ( .A(n2), .B(n85), .Y(\sub_141/carry[1] ) );
  XNOR2X1 U795 ( .A(n85), .B(n2), .Y(N289) );
  OAI21XL U796 ( .A0(n452), .A1(n448), .B0(\sub_189/carry[12] ), .Y(n473) );
  OAI2BB1X1 U797 ( .A0N(n449), .A1N(cal_X_trac_wire[12]), .B0(n473), .Y(
        \sub_189/carry[13] ) );
  OAI21XL U798 ( .A0(n453), .A1(n446), .B0(\add_189/carry[12] ), .Y(n476) );
  OAI2BB1X1 U799 ( .A0N(cal_X_trac_wire[12]), .A1N(n447), .B0(n476), .Y(
        \add_189/carry[13] ) );
  OAI21XL U800 ( .A0(n453), .A1(n449), .B0(\sub_191/carry[12] ), .Y(n477) );
  OAI2BB1X1 U801 ( .A0N(n449), .A1N(n451), .B0(n477), .Y(\sub_191/carry[13] )
         );
  OAI21XL U802 ( .A0(n453), .A1(n446), .B0(\add_191/carry[12] ), .Y(n483) );
  OAI2BB1X1 U803 ( .A0N(cal_X_trac_wire[12]), .A1N(cal_Y_trac_wire[12]), .B0(
        n483), .Y(\add_191/carry[13] ) );
  OAI21XL U804 ( .A0(n446), .A1(n453), .B0(\add_214/carry[12] ), .Y(n484) );
  OAI2BB1X1 U805 ( .A0N(n447), .A1N(cal_X_trac_wire[12]), .B0(n484), .Y(
        \add_214/carry[13] ) );
  OAI21XL U806 ( .A0(n446), .A1(n454), .B0(\sub_214/carry[12] ), .Y(n485) );
  OAI2BB1X1 U807 ( .A0N(n455), .A1N(n445), .B0(n485), .Y(\sub_214/carry[13] )
         );
  OAI21XL U808 ( .A0(n446), .A1(n451), .B0(\add_216/carry[12] ), .Y(n488) );
  OAI2BB1X1 U809 ( .A0N(cal_Y_trac_wire[12]), .A1N(n451), .B0(n488), .Y(
        \add_216/carry[13] ) );
  OAI21XL U810 ( .A0(n446), .A1(n455), .B0(\sub_216/carry[12] ), .Y(n489) );
  OAI2BB1X1 U811 ( .A0N(n455), .A1N(cal_Y_trac_wire[12]), .B0(n489), .Y(
        \sub_216/carry[13] ) );
endmodule


module ROTATION_MODE_DW01_sub_2 ( A, B, CI, DIFF, CO );
  input [13:0] A;
  input [13:0] B;
  output [13:0] DIFF;
  input CI;
  output CO;
  wire   n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12;
  wire   [14:0] carry;

  ADDFXL U2_11 ( .A(A[11]), .B(n2), .CI(carry[11]), .CO(carry[12]), .S(
        DIFF[11]) );
  ADDFXL U2_10 ( .A(A[10]), .B(n2), .CI(carry[10]), .CO(carry[11]), .S(
        DIFF[10]) );
  ADDFXL U2_9 ( .A(A[9]), .B(n2), .CI(carry[9]), .CO(carry[10]), .S(DIFF[9])
         );
  ADDFXL U2_2 ( .A(A[2]), .B(n9), .CI(carry[2]), .CO(carry[3]), .S(DIFF[2]) );
  ADDFXL U2_3 ( .A(A[3]), .B(n8), .CI(carry[3]), .CO(carry[4]), .S(DIFF[3]) );
  ADDFXL U2_4 ( .A(A[4]), .B(n7), .CI(carry[4]), .CO(carry[5]), .S(DIFF[4]) );
  ADDFXL U2_8 ( .A(A[8]), .B(n3), .CI(carry[8]), .CO(carry[9]), .S(DIFF[8]) );
  ADDFXL U2_7 ( .A(A[7]), .B(n4), .CI(carry[7]), .CO(carry[8]), .S(DIFF[7]) );
  ADDFXL U2_5 ( .A(A[5]), .B(n6), .CI(carry[5]), .CO(carry[6]), .S(DIFF[5]) );
  ADDFXL U2_1 ( .A(A[1]), .B(n10), .CI(carry[1]), .CO(carry[2]), .S(DIFF[1])
         );
  ADDFXL U2_6 ( .A(A[6]), .B(n5), .CI(carry[6]), .CO(carry[7]), .S(DIFF[6]) );
  XOR3X1 U2_13 ( .A(A[13]), .B(n2), .C(carry[13]), .Y(DIFF[13]) );
  CLKINVX1 U1 ( .A(B[9]), .Y(n2) );
  CLKINVX1 U2 ( .A(B[6]), .Y(n5) );
  NAND2X1 U3 ( .A(B[0]), .B(n1), .Y(carry[1]) );
  CLKINVX1 U4 ( .A(B[1]), .Y(n10) );
  CLKINVX1 U5 ( .A(A[0]), .Y(n1) );
  CLKINVX1 U6 ( .A(B[5]), .Y(n6) );
  CLKINVX1 U7 ( .A(B[7]), .Y(n4) );
  CLKINVX1 U8 ( .A(B[8]), .Y(n3) );
  CLKINVX1 U9 ( .A(B[4]), .Y(n7) );
  CLKINVX1 U10 ( .A(B[3]), .Y(n8) );
  CLKINVX1 U11 ( .A(B[2]), .Y(n9) );
  CLKINVX1 U12 ( .A(B[0]), .Y(n11) );
  XNOR2X1 U13 ( .A(n11), .B(A[0]), .Y(DIFF[0]) );
  OAI2BB1X1 U14 ( .A0N(n2), .A1N(A[13]), .B0(n12), .Y(carry[13]) );
  OAI21XL U15 ( .A0(A[13]), .A1(n2), .B0(carry[12]), .Y(n12) );
endmodule


module ROTATION_MODE_DW01_add_2 ( A, B, CI, SUM, CO );
  input [13:0] A;
  input [13:0] B;
  output [13:0] SUM;
  input CI;
  output CO;
  wire   n1, n2;
  wire   [13:1] carry;

  ADDFXL U1_11 ( .A(A[11]), .B(B[11]), .CI(carry[11]), .CO(carry[12]), .S(
        SUM[11]) );
  ADDFXL U1_1 ( .A(A[1]), .B(B[1]), .CI(n1), .CO(carry[2]), .S(SUM[1]) );
  ADDFXL U1_2 ( .A(A[2]), .B(B[2]), .CI(carry[2]), .CO(carry[3]), .S(SUM[2])
         );
  ADDFXL U1_3 ( .A(A[3]), .B(B[3]), .CI(carry[3]), .CO(carry[4]), .S(SUM[3])
         );
  ADDFXL U1_4 ( .A(A[4]), .B(B[4]), .CI(carry[4]), .CO(carry[5]), .S(SUM[4])
         );
  ADDFXL U1_8 ( .A(A[8]), .B(B[8]), .CI(carry[8]), .CO(carry[9]), .S(SUM[8])
         );
  ADDFXL U1_7 ( .A(A[7]), .B(B[7]), .CI(carry[7]), .CO(carry[8]), .S(SUM[7])
         );
  ADDFXL U1_6 ( .A(A[6]), .B(B[6]), .CI(carry[6]), .CO(carry[7]), .S(SUM[6])
         );
  ADDFXL U1_5 ( .A(A[5]), .B(B[5]), .CI(carry[5]), .CO(carry[6]), .S(SUM[5])
         );
  ADDFXL U1_10 ( .A(A[10]), .B(B[10]), .CI(carry[10]), .CO(carry[11]), .S(
        SUM[10]) );
  ADDFXL U1_9 ( .A(A[9]), .B(B[9]), .CI(carry[9]), .CO(carry[10]), .S(SUM[9])
         );
  XOR3X1 U1_13 ( .A(A[13]), .B(B[13]), .C(carry[13]), .Y(SUM[13]) );
  AND2X2 U1 ( .A(B[0]), .B(A[0]), .Y(n1) );
  XOR2X1 U2 ( .A(B[0]), .B(A[0]), .Y(SUM[0]) );
  OAI2BB1X1 U3 ( .A0N(A[13]), .A1N(B[9]), .B0(n2), .Y(carry[13]) );
  OAI21XL U4 ( .A0(A[13]), .A1(B[9]), .B0(carry[12]), .Y(n2) );
endmodule


module ROTATION_MODE_DW01_sub_3 ( A, B, CI, DIFF, CO );
  input [13:0] A;
  input [13:0] B;
  output [13:0] DIFF;
  input CI;
  output CO;
  wire   n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14;
  wire   [14:0] carry;

  ADDFXL U2_1 ( .A(A[1]), .B(n12), .CI(carry[1]), .CO(carry[2]), .S(DIFF[1])
         );
  ADDFXL U2_4 ( .A(A[4]), .B(n9), .CI(carry[4]), .CO(carry[5]), .S(DIFF[4]) );
  ADDFXL U2_5 ( .A(A[5]), .B(n8), .CI(carry[5]), .CO(carry[6]), .S(DIFF[5]) );
  ADDFXL U2_6 ( .A(A[6]), .B(n7), .CI(carry[6]), .CO(carry[7]), .S(DIFF[6]) );
  ADDFXL U2_10 ( .A(A[10]), .B(n3), .CI(carry[10]), .CO(carry[11]), .S(
        DIFF[10]) );
  ADDFXL U2_9 ( .A(A[9]), .B(n4), .CI(carry[9]), .CO(carry[10]), .S(DIFF[9])
         );
  ADDFXL U2_7 ( .A(A[7]), .B(n6), .CI(carry[7]), .CO(carry[8]), .S(DIFF[7]) );
  ADDFXL U2_2 ( .A(A[2]), .B(n11), .CI(carry[2]), .CO(carry[3]), .S(DIFF[2])
         );
  ADDFXL U2_3 ( .A(A[3]), .B(n10), .CI(carry[3]), .CO(carry[4]), .S(DIFF[3])
         );
  ADDFXL U2_8 ( .A(A[8]), .B(n5), .CI(carry[8]), .CO(carry[9]), .S(DIFF[8]) );
  ADDFXL U2_11 ( .A(A[11]), .B(n2), .CI(carry[11]), .CO(carry[12]), .S(
        DIFF[11]) );
  XOR3X1 U2_13 ( .A(A[13]), .B(n2), .C(carry[13]), .Y(DIFF[13]) );
  CLKINVX1 U1 ( .A(B[13]), .Y(n2) );
  CLKINVX1 U2 ( .A(B[8]), .Y(n5) );
  CLKINVX1 U3 ( .A(B[3]), .Y(n10) );
  CLKINVX1 U4 ( .A(B[2]), .Y(n11) );
  CLKINVX1 U5 ( .A(B[0]), .Y(n13) );
  CLKINVX1 U6 ( .A(B[7]), .Y(n6) );
  CLKINVX1 U7 ( .A(B[9]), .Y(n4) );
  CLKINVX1 U8 ( .A(B[10]), .Y(n3) );
  CLKINVX1 U9 ( .A(B[6]), .Y(n7) );
  CLKINVX1 U10 ( .A(B[5]), .Y(n8) );
  CLKINVX1 U11 ( .A(B[4]), .Y(n9) );
  NAND2X1 U12 ( .A(B[0]), .B(n1), .Y(carry[1]) );
  CLKINVX1 U13 ( .A(B[1]), .Y(n12) );
  CLKINVX1 U14 ( .A(A[0]), .Y(n1) );
  XNOR2X1 U15 ( .A(n13), .B(A[0]), .Y(DIFF[0]) );
  OAI2BB1X1 U16 ( .A0N(n2), .A1N(A[13]), .B0(n14), .Y(carry[13]) );
  OAI21XL U17 ( .A0(A[13]), .A1(n2), .B0(carry[12]), .Y(n14) );
endmodule


module ROTATION_MODE_DW01_add_3 ( A, B, CI, SUM, CO );
  input [13:0] A;
  input [13:0] B;
  output [13:0] SUM;
  input CI;
  output CO;
  wire   n1, n2;
  wire   [13:1] carry;

  ADDFXL U1_1 ( .A(A[1]), .B(B[1]), .CI(n1), .CO(carry[2]), .S(SUM[1]) );
  ADDFXL U1_2 ( .A(A[2]), .B(B[2]), .CI(carry[2]), .CO(carry[3]), .S(SUM[2])
         );
  ADDFXL U1_3 ( .A(A[3]), .B(B[3]), .CI(carry[3]), .CO(carry[4]), .S(SUM[3])
         );
  ADDFXL U1_4 ( .A(A[4]), .B(B[4]), .CI(carry[4]), .CO(carry[5]), .S(SUM[4])
         );
  ADDFXL U1_5 ( .A(A[5]), .B(B[5]), .CI(carry[5]), .CO(carry[6]), .S(SUM[5])
         );
  ADDFXL U1_6 ( .A(A[6]), .B(B[6]), .CI(carry[6]), .CO(carry[7]), .S(SUM[6])
         );
  ADDFXL U1_10 ( .A(A[10]), .B(B[10]), .CI(carry[10]), .CO(carry[11]), .S(
        SUM[10]) );
  ADDFXL U1_9 ( .A(A[9]), .B(B[9]), .CI(carry[9]), .CO(carry[10]), .S(SUM[9])
         );
  ADDFXL U1_8 ( .A(A[8]), .B(B[8]), .CI(carry[8]), .CO(carry[9]), .S(SUM[8])
         );
  ADDFXL U1_7 ( .A(A[7]), .B(B[7]), .CI(carry[7]), .CO(carry[8]), .S(SUM[7])
         );
  ADDFXL U1_11 ( .A(A[11]), .B(B[11]), .CI(carry[11]), .CO(carry[12]), .S(
        SUM[11]) );
  XOR3X1 U1_13 ( .A(A[13]), .B(B[13]), .C(carry[13]), .Y(SUM[13]) );
  AND2X2 U1 ( .A(B[0]), .B(A[0]), .Y(n1) );
  XOR2X1 U2 ( .A(B[0]), .B(A[0]), .Y(SUM[0]) );
  OAI2BB1X1 U3 ( .A0N(A[13]), .A1N(B[13]), .B0(n2), .Y(carry[13]) );
  OAI21XL U4 ( .A0(A[13]), .A1(B[13]), .B0(carry[12]), .Y(n2) );
endmodule


module ROTATION_MODE_DW01_add_6 ( A, B, CI, SUM, CO );
  input [13:0] A;
  input [13:0] B;
  output [13:0] SUM;
  input CI;
  output CO;
  wire   n1, n2;
  wire   [13:1] carry;

  ADDFXL U1_11 ( .A(A[11]), .B(B[11]), .CI(carry[11]), .CO(carry[12]), .S(
        SUM[11]) );
  ADDFXL U1_1 ( .A(A[1]), .B(B[1]), .CI(n1), .CO(carry[2]), .S(SUM[1]) );
  ADDFXL U1_2 ( .A(A[2]), .B(B[2]), .CI(carry[2]), .CO(carry[3]), .S(SUM[2])
         );
  ADDFXL U1_3 ( .A(A[3]), .B(B[3]), .CI(carry[3]), .CO(carry[4]), .S(SUM[3])
         );
  ADDFXL U1_4 ( .A(A[4]), .B(B[4]), .CI(carry[4]), .CO(carry[5]), .S(SUM[4])
         );
  ADDFXL U1_8 ( .A(A[8]), .B(B[8]), .CI(carry[8]), .CO(carry[9]), .S(SUM[8])
         );
  ADDFXL U1_7 ( .A(A[7]), .B(B[7]), .CI(carry[7]), .CO(carry[8]), .S(SUM[7])
         );
  ADDFXL U1_6 ( .A(A[6]), .B(B[6]), .CI(carry[6]), .CO(carry[7]), .S(SUM[6])
         );
  ADDFXL U1_5 ( .A(A[5]), .B(B[5]), .CI(carry[5]), .CO(carry[6]), .S(SUM[5])
         );
  ADDFXL U1_10 ( .A(A[10]), .B(B[10]), .CI(carry[10]), .CO(carry[11]), .S(
        SUM[10]) );
  ADDFXL U1_9 ( .A(A[9]), .B(B[9]), .CI(carry[9]), .CO(carry[10]), .S(SUM[9])
         );
  XOR3X1 U1_13 ( .A(A[13]), .B(B[13]), .C(carry[13]), .Y(SUM[13]) );
  AND2X2 U1 ( .A(B[0]), .B(A[0]), .Y(n1) );
  XOR2X1 U2 ( .A(B[0]), .B(A[0]), .Y(SUM[0]) );
  OAI2BB1X1 U3 ( .A0N(A[13]), .A1N(B[9]), .B0(n2), .Y(carry[13]) );
  OAI21XL U4 ( .A0(A[13]), .A1(B[9]), .B0(carry[12]), .Y(n2) );
endmodule


module ROTATION_MODE_DW01_sub_6 ( A, B, CI, DIFF, CO );
  input [13:0] A;
  input [13:0] B;
  output [13:0] DIFF;
  input CI;
  output CO;
  wire   n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12;
  wire   [14:0] carry;

  ADDFXL U2_11 ( .A(A[11]), .B(n2), .CI(carry[11]), .CO(carry[12]), .S(
        DIFF[11]) );
  ADDFXL U2_10 ( .A(A[10]), .B(n2), .CI(carry[10]), .CO(carry[11]), .S(
        DIFF[10]) );
  ADDFXL U2_9 ( .A(A[9]), .B(n2), .CI(carry[9]), .CO(carry[10]), .S(DIFF[9])
         );
  ADDFXL U2_1 ( .A(A[1]), .B(n10), .CI(carry[1]), .CO(carry[2]), .S(DIFF[1])
         );
  ADDFXL U2_2 ( .A(A[2]), .B(n9), .CI(carry[2]), .CO(carry[3]), .S(DIFF[2]) );
  ADDFXL U2_3 ( .A(A[3]), .B(n8), .CI(carry[3]), .CO(carry[4]), .S(DIFF[3]) );
  ADDFXL U2_4 ( .A(A[4]), .B(n7), .CI(carry[4]), .CO(carry[5]), .S(DIFF[4]) );
  ADDFXL U2_8 ( .A(A[8]), .B(n3), .CI(carry[8]), .CO(carry[9]), .S(DIFF[8]) );
  ADDFXL U2_7 ( .A(A[7]), .B(n4), .CI(carry[7]), .CO(carry[8]), .S(DIFF[7]) );
  ADDFXL U2_6 ( .A(A[6]), .B(n5), .CI(carry[6]), .CO(carry[7]), .S(DIFF[6]) );
  ADDFXL U2_5 ( .A(A[5]), .B(n6), .CI(carry[5]), .CO(carry[6]), .S(DIFF[5]) );
  XOR3X1 U2_13 ( .A(A[13]), .B(n2), .C(carry[13]), .Y(DIFF[13]) );
  CLKINVX1 U1 ( .A(B[9]), .Y(n2) );
  CLKINVX1 U2 ( .A(B[5]), .Y(n6) );
  CLKINVX1 U3 ( .A(B[6]), .Y(n5) );
  CLKINVX1 U4 ( .A(B[7]), .Y(n4) );
  CLKINVX1 U5 ( .A(B[8]), .Y(n3) );
  CLKINVX1 U6 ( .A(B[4]), .Y(n7) );
  CLKINVX1 U7 ( .A(B[3]), .Y(n8) );
  CLKINVX1 U8 ( .A(B[2]), .Y(n9) );
  NAND2X1 U9 ( .A(B[0]), .B(n1), .Y(carry[1]) );
  CLKINVX1 U10 ( .A(B[1]), .Y(n10) );
  CLKINVX1 U11 ( .A(A[0]), .Y(n1) );
  CLKINVX1 U12 ( .A(B[0]), .Y(n11) );
  XNOR2X1 U13 ( .A(n11), .B(A[0]), .Y(DIFF[0]) );
  OAI2BB1X1 U14 ( .A0N(n2), .A1N(A[13]), .B0(n12), .Y(carry[13]) );
  OAI21XL U15 ( .A0(A[13]), .A1(n2), .B0(carry[12]), .Y(n12) );
endmodule


module ROTATION_MODE_DW01_add_7 ( A, B, CI, SUM, CO );
  input [13:0] A;
  input [13:0] B;
  output [13:0] SUM;
  input CI;
  output CO;
  wire   n1, n2;
  wire   [13:1] carry;

  ADDFXL U1_1 ( .A(A[1]), .B(B[1]), .CI(n1), .CO(carry[2]), .S(SUM[1]) );
  ADDFXL U1_2 ( .A(A[2]), .B(B[2]), .CI(carry[2]), .CO(carry[3]), .S(SUM[2])
         );
  ADDFXL U1_3 ( .A(A[3]), .B(B[3]), .CI(carry[3]), .CO(carry[4]), .S(SUM[3])
         );
  ADDFXL U1_4 ( .A(A[4]), .B(B[4]), .CI(carry[4]), .CO(carry[5]), .S(SUM[4])
         );
  ADDFXL U1_5 ( .A(A[5]), .B(B[5]), .CI(carry[5]), .CO(carry[6]), .S(SUM[5])
         );
  ADDFXL U1_6 ( .A(A[6]), .B(B[6]), .CI(carry[6]), .CO(carry[7]), .S(SUM[6])
         );
  ADDFXL U1_10 ( .A(A[10]), .B(B[10]), .CI(carry[10]), .CO(carry[11]), .S(
        SUM[10]) );
  ADDFXL U1_9 ( .A(A[9]), .B(B[9]), .CI(carry[9]), .CO(carry[10]), .S(SUM[9])
         );
  ADDFXL U1_8 ( .A(A[8]), .B(B[8]), .CI(carry[8]), .CO(carry[9]), .S(SUM[8])
         );
  ADDFXL U1_7 ( .A(A[7]), .B(B[7]), .CI(carry[7]), .CO(carry[8]), .S(SUM[7])
         );
  ADDFXL U1_11 ( .A(A[11]), .B(B[11]), .CI(carry[11]), .CO(carry[12]), .S(
        SUM[11]) );
  XOR3X1 U1_13 ( .A(A[13]), .B(B[13]), .C(carry[13]), .Y(SUM[13]) );
  AND2X2 U1 ( .A(B[0]), .B(A[0]), .Y(n1) );
  XOR2X1 U2 ( .A(B[0]), .B(A[0]), .Y(SUM[0]) );
  OAI2BB1X1 U3 ( .A0N(A[13]), .A1N(B[13]), .B0(n2), .Y(carry[13]) );
  OAI21XL U4 ( .A0(A[13]), .A1(B[13]), .B0(carry[12]), .Y(n2) );
endmodule


module ROTATION_MODE_DW01_sub_7 ( A, B, CI, DIFF, CO );
  input [13:0] A;
  input [13:0] B;
  output [13:0] DIFF;
  input CI;
  output CO;
  wire   n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14;
  wire   [14:0] carry;

  ADDFXL U2_1 ( .A(A[1]), .B(n12), .CI(carry[1]), .CO(carry[2]), .S(DIFF[1])
         );
  ADDFXL U2_3 ( .A(A[3]), .B(n10), .CI(carry[3]), .CO(carry[4]), .S(DIFF[3])
         );
  ADDFXL U2_4 ( .A(A[4]), .B(n9), .CI(carry[4]), .CO(carry[5]), .S(DIFF[4]) );
  ADDFXL U2_5 ( .A(A[5]), .B(n8), .CI(carry[5]), .CO(carry[6]), .S(DIFF[5]) );
  ADDFXL U2_6 ( .A(A[6]), .B(n7), .CI(carry[6]), .CO(carry[7]), .S(DIFF[6]) );
  ADDFXL U2_10 ( .A(A[10]), .B(n3), .CI(carry[10]), .CO(carry[11]), .S(
        DIFF[10]) );
  ADDFXL U2_9 ( .A(A[9]), .B(n4), .CI(carry[9]), .CO(carry[10]), .S(DIFF[9])
         );
  ADDFXL U2_8 ( .A(A[8]), .B(n5), .CI(carry[8]), .CO(carry[9]), .S(DIFF[8]) );
  ADDFXL U2_7 ( .A(A[7]), .B(n6), .CI(carry[7]), .CO(carry[8]), .S(DIFF[7]) );
  ADDFXL U2_2 ( .A(A[2]), .B(n11), .CI(carry[2]), .CO(carry[3]), .S(DIFF[2])
         );
  ADDFXL U2_11 ( .A(A[11]), .B(n2), .CI(carry[11]), .CO(carry[12]), .S(
        DIFF[11]) );
  XOR3X1 U2_13 ( .A(A[13]), .B(n2), .C(carry[13]), .Y(DIFF[13]) );
  CLKINVX1 U1 ( .A(B[13]), .Y(n2) );
  CLKINVX1 U2 ( .A(B[2]), .Y(n11) );
  CLKINVX1 U3 ( .A(B[0]), .Y(n13) );
  CLKINVX1 U4 ( .A(B[7]), .Y(n6) );
  CLKINVX1 U5 ( .A(B[8]), .Y(n5) );
  CLKINVX1 U6 ( .A(B[9]), .Y(n4) );
  CLKINVX1 U7 ( .A(B[10]), .Y(n3) );
  CLKINVX1 U8 ( .A(B[6]), .Y(n7) );
  CLKINVX1 U9 ( .A(B[5]), .Y(n8) );
  CLKINVX1 U10 ( .A(B[4]), .Y(n9) );
  CLKINVX1 U11 ( .A(B[3]), .Y(n10) );
  NAND2X1 U12 ( .A(B[0]), .B(n1), .Y(carry[1]) );
  CLKINVX1 U13 ( .A(B[1]), .Y(n12) );
  CLKINVX1 U14 ( .A(A[0]), .Y(n1) );
  XNOR2X1 U15 ( .A(n13), .B(A[0]), .Y(DIFF[0]) );
  OAI2BB1X1 U16 ( .A0N(n2), .A1N(A[13]), .B0(n14), .Y(carry[13]) );
  OAI21XL U17 ( .A0(A[13]), .A1(n2), .B0(carry[12]), .Y(n14) );
endmodule


module ROTATION_MODE_DW01_sub_10 ( A, B, CI, DIFF, CO );
  input [13:0] A;
  input [13:0] B;
  output [13:0] DIFF;
  input CI;
  output CO;
  wire   n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15;
  wire   [14:0] carry;

  ADDFXL U2_11 ( .A(A[11]), .B(n4), .CI(carry[11]), .CO(carry[12]), .S(
        DIFF[11]) );
  ADDFXL U2_10 ( .A(A[10]), .B(n4), .CI(carry[10]), .CO(carry[11]), .S(
        DIFF[10]) );
  ADDFXL U2_1 ( .A(A[1]), .B(n12), .CI(carry[1]), .CO(carry[2]), .S(DIFF[1])
         );
  ADDFXL U2_2 ( .A(A[2]), .B(n13), .CI(carry[2]), .CO(carry[3]), .S(DIFF[2])
         );
  ADDFXL U2_3 ( .A(A[3]), .B(n14), .CI(carry[3]), .CO(carry[4]), .S(DIFF[3])
         );
  ADDFXL U2_4 ( .A(A[4]), .B(n10), .CI(carry[4]), .CO(carry[5]), .S(DIFF[4])
         );
  ADDFXL U2_6 ( .A(A[6]), .B(n8), .CI(carry[6]), .CO(carry[7]), .S(DIFF[6]) );
  ADDFXL U2_5 ( .A(A[5]), .B(n9), .CI(carry[5]), .CO(carry[6]), .S(DIFF[5]) );
  ADDFXL U2_9 ( .A(A[9]), .B(n5), .CI(carry[9]), .CO(carry[10]), .S(DIFF[9])
         );
  ADDFXL U2_8 ( .A(A[8]), .B(n6), .CI(carry[8]), .CO(carry[9]), .S(DIFF[8]) );
  ADDFXL U2_7 ( .A(A[7]), .B(n7), .CI(carry[7]), .CO(carry[8]), .S(DIFF[7]) );
  XOR3X1 U2_13 ( .A(A[12]), .B(n4), .C(carry[13]), .Y(DIFF[13]) );
  CLKINVX1 U1 ( .A(B[13]), .Y(n4) );
  CLKINVX1 U2 ( .A(A[13]), .Y(n3) );
  CLKINVX1 U3 ( .A(B[0]), .Y(n11) );
  CLKINVX1 U4 ( .A(B[7]), .Y(n7) );
  CLKINVX1 U5 ( .A(B[8]), .Y(n6) );
  CLKINVX1 U6 ( .A(B[9]), .Y(n5) );
  CLKINVX1 U7 ( .A(B[5]), .Y(n9) );
  CLKINVX1 U8 ( .A(B[6]), .Y(n8) );
  CLKINVX1 U9 ( .A(B[4]), .Y(n10) );
  CLKINVX1 U10 ( .A(B[3]), .Y(n14) );
  CLKINVX1 U11 ( .A(B[2]), .Y(n13) );
  CLKINVX1 U12 ( .A(B[1]), .Y(n12) );
  NAND2X1 U13 ( .A(B[0]), .B(n2), .Y(carry[1]) );
  CLKINVX1 U14 ( .A(A[0]), .Y(n2) );
  XNOR2X1 U15 ( .A(n11), .B(A[0]), .Y(DIFF[0]) );
  OAI21XL U16 ( .A0(B[12]), .A1(n3), .B0(n15), .Y(carry[13]) );
  OAI2BB1X1 U17 ( .A0N(n3), .A1N(B[12]), .B0(carry[12]), .Y(n15) );
endmodule


module ROTATION_MODE_DW01_add_10 ( A, B, CI, SUM, CO );
  input [13:0] A;
  input [13:0] B;
  output [13:0] SUM;
  input CI;
  output CO;
  wire   n1, n2;
  wire   [13:1] carry;

  ADDFXL U1_11 ( .A(A[11]), .B(B[11]), .CI(carry[11]), .CO(carry[12]), .S(
        SUM[11]) );
  ADDFXL U1_1 ( .A(A[1]), .B(B[1]), .CI(n1), .CO(carry[2]), .S(SUM[1]) );
  ADDFXL U1_2 ( .A(A[2]), .B(B[2]), .CI(carry[2]), .CO(carry[3]), .S(SUM[2])
         );
  ADDFXL U1_3 ( .A(A[3]), .B(B[3]), .CI(carry[3]), .CO(carry[4]), .S(SUM[3])
         );
  ADDFXL U1_4 ( .A(A[4]), .B(B[4]), .CI(carry[4]), .CO(carry[5]), .S(SUM[4])
         );
  ADDFXL U1_6 ( .A(A[6]), .B(B[6]), .CI(carry[6]), .CO(carry[7]), .S(SUM[6])
         );
  ADDFXL U1_5 ( .A(A[5]), .B(B[5]), .CI(carry[5]), .CO(carry[6]), .S(SUM[5])
         );
  ADDFXL U1_9 ( .A(A[9]), .B(B[9]), .CI(carry[9]), .CO(carry[10]), .S(SUM[9])
         );
  ADDFXL U1_8 ( .A(A[8]), .B(B[8]), .CI(carry[8]), .CO(carry[9]), .S(SUM[8])
         );
  ADDFXL U1_7 ( .A(A[7]), .B(B[7]), .CI(carry[7]), .CO(carry[8]), .S(SUM[7])
         );
  ADDFXL U1_10 ( .A(A[10]), .B(B[10]), .CI(carry[10]), .CO(carry[11]), .S(
        SUM[10]) );
  XOR3X1 U1_13 ( .A(A[13]), .B(B[13]), .C(carry[13]), .Y(SUM[13]) );
  AND2X2 U1 ( .A(B[0]), .B(A[0]), .Y(n1) );
  XOR2X1 U2 ( .A(B[0]), .B(A[0]), .Y(SUM[0]) );
  OAI2BB1X1 U3 ( .A0N(A[12]), .A1N(B[12]), .B0(n2), .Y(carry[13]) );
  OAI21XL U4 ( .A0(A[12]), .A1(B[12]), .B0(carry[12]), .Y(n2) );
endmodule


module ROTATION_MODE_DW01_sub_11 ( A, B, CI, DIFF, CO );
  input [13:0] A;
  input [13:0] B;
  output [13:0] DIFF;
  input CI;
  output CO;
  wire   n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16,
         n17;
  wire   [14:0] carry;

  ADDFXL U2_11 ( .A(A[11]), .B(n5), .CI(carry[11]), .CO(carry[12]), .S(
        DIFF[11]) );
  ADDFXL U2_1 ( .A(A[1]), .B(n12), .CI(carry[1]), .CO(carry[2]), .S(DIFF[1])
         );
  ADDFXL U2_3 ( .A(A[3]), .B(n14), .CI(carry[3]), .CO(carry[4]), .S(DIFF[3])
         );
  ADDFXL U2_2 ( .A(A[2]), .B(n13), .CI(carry[2]), .CO(carry[3]), .S(DIFF[2])
         );
  ADDFXL U2_4 ( .A(A[4]), .B(n15), .CI(carry[4]), .CO(carry[5]), .S(DIFF[4])
         );
  ADDFXL U2_5 ( .A(A[5]), .B(n16), .CI(carry[5]), .CO(carry[6]), .S(DIFF[5])
         );
  ADDFXL U2_6 ( .A(A[6]), .B(n10), .CI(carry[6]), .CO(carry[7]), .S(DIFF[6])
         );
  ADDFXL U2_8 ( .A(A[8]), .B(n8), .CI(carry[8]), .CO(carry[9]), .S(DIFF[8]) );
  ADDFXL U2_7 ( .A(A[7]), .B(n9), .CI(carry[7]), .CO(carry[8]), .S(DIFF[7]) );
  ADDFXL U2_10 ( .A(A[10]), .B(n6), .CI(carry[10]), .CO(carry[11]), .S(
        DIFF[10]) );
  ADDFXL U2_9 ( .A(A[9]), .B(n7), .CI(carry[9]), .CO(carry[10]), .S(DIFF[9])
         );
  XOR3X1 U2_13 ( .A(A[12]), .B(n4), .C(carry[13]), .Y(DIFF[13]) );
  CLKINVX1 U1 ( .A(A[13]), .Y(n3) );
  CLKINVX1 U2 ( .A(B[13]), .Y(n4) );
  CLKINVX1 U3 ( .A(B[0]), .Y(n11) );
  CLKINVX1 U4 ( .A(B[9]), .Y(n7) );
  CLKINVX1 U5 ( .A(B[10]), .Y(n6) );
  CLKINVX1 U6 ( .A(B[7]), .Y(n9) );
  CLKINVX1 U7 ( .A(B[8]), .Y(n8) );
  CLKINVX1 U8 ( .A(B[6]), .Y(n10) );
  CLKINVX1 U9 ( .A(B[5]), .Y(n16) );
  CLKINVX1 U10 ( .A(B[4]), .Y(n15) );
  CLKINVX1 U11 ( .A(B[2]), .Y(n13) );
  CLKINVX1 U12 ( .A(B[3]), .Y(n14) );
  CLKINVX1 U13 ( .A(B[1]), .Y(n12) );
  NAND2X1 U14 ( .A(B[0]), .B(n2), .Y(carry[1]) );
  CLKINVX1 U15 ( .A(A[0]), .Y(n2) );
  CLKINVX1 U16 ( .A(B[11]), .Y(n5) );
  XNOR2X1 U17 ( .A(n11), .B(A[0]), .Y(DIFF[0]) );
  OAI21XL U18 ( .A0(B[12]), .A1(n3), .B0(n17), .Y(carry[13]) );
  OAI2BB1X1 U19 ( .A0N(n3), .A1N(B[12]), .B0(carry[12]), .Y(n17) );
endmodule


module ROTATION_MODE_DW01_add_13 ( A, B, CI, SUM, CO );
  input [13:0] A;
  input [13:0] B;
  output [13:0] SUM;
  input CI;
  output CO;
  wire   n1, n2;
  wire   [13:1] carry;

  ADDFXL U1_11 ( .A(A[11]), .B(B[11]), .CI(carry[11]), .CO(carry[12]), .S(
        SUM[11]) );
  ADDFXL U1_1 ( .A(A[1]), .B(B[1]), .CI(n1), .CO(carry[2]), .S(SUM[1]) );
  ADDFXL U1_2 ( .A(A[2]), .B(B[2]), .CI(carry[2]), .CO(carry[3]), .S(SUM[2])
         );
  ADDFXL U1_3 ( .A(A[3]), .B(B[3]), .CI(carry[3]), .CO(carry[4]), .S(SUM[3])
         );
  ADDFXL U1_4 ( .A(A[4]), .B(B[4]), .CI(carry[4]), .CO(carry[5]), .S(SUM[4])
         );
  ADDFXL U1_6 ( .A(A[6]), .B(B[6]), .CI(carry[6]), .CO(carry[7]), .S(SUM[6])
         );
  ADDFXL U1_5 ( .A(A[5]), .B(B[5]), .CI(carry[5]), .CO(carry[6]), .S(SUM[5])
         );
  ADDFXL U1_9 ( .A(A[9]), .B(B[9]), .CI(carry[9]), .CO(carry[10]), .S(SUM[9])
         );
  ADDFXL U1_8 ( .A(A[8]), .B(B[8]), .CI(carry[8]), .CO(carry[9]), .S(SUM[8])
         );
  ADDFXL U1_7 ( .A(A[7]), .B(B[7]), .CI(carry[7]), .CO(carry[8]), .S(SUM[7])
         );
  ADDFXL U1_10 ( .A(A[10]), .B(B[10]), .CI(carry[10]), .CO(carry[11]), .S(
        SUM[10]) );
  XOR3X1 U1_13 ( .A(A[13]), .B(B[13]), .C(carry[13]), .Y(SUM[13]) );
  AND2X2 U1 ( .A(B[0]), .B(A[0]), .Y(n1) );
  XOR2X1 U2 ( .A(B[0]), .B(A[0]), .Y(SUM[0]) );
  OAI2BB1X1 U3 ( .A0N(A[12]), .A1N(B[12]), .B0(n2), .Y(carry[13]) );
  OAI21XL U4 ( .A0(A[12]), .A1(B[12]), .B0(carry[12]), .Y(n2) );
endmodule


module ROTATION_MODE_DW01_sub_14 ( A, B, CI, DIFF, CO );
  input [13:0] A;
  input [13:0] B;
  output [13:0] DIFF;
  input CI;
  output CO;
  wire   n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15;
  wire   [14:0] carry;

  ADDFXL U2_11 ( .A(A[11]), .B(n3), .CI(carry[11]), .CO(carry[12]), .S(
        DIFF[11]) );
  ADDFXL U2_10 ( .A(A[10]), .B(n3), .CI(carry[10]), .CO(carry[11]), .S(
        DIFF[10]) );
  ADDFXL U2_1 ( .A(A[1]), .B(n12), .CI(carry[1]), .CO(carry[2]), .S(DIFF[1])
         );
  ADDFXL U2_2 ( .A(A[2]), .B(n13), .CI(carry[2]), .CO(carry[3]), .S(DIFF[2])
         );
  ADDFXL U2_3 ( .A(A[3]), .B(n14), .CI(carry[3]), .CO(carry[4]), .S(DIFF[3])
         );
  ADDFXL U2_4 ( .A(A[4]), .B(n10), .CI(carry[4]), .CO(carry[5]), .S(DIFF[4])
         );
  ADDFXL U2_5 ( .A(A[5]), .B(n9), .CI(carry[5]), .CO(carry[6]), .S(DIFF[5]) );
  ADDFXL U2_6 ( .A(A[6]), .B(n8), .CI(carry[6]), .CO(carry[7]), .S(DIFF[6]) );
  ADDFXL U2_7 ( .A(A[7]), .B(n7), .CI(carry[7]), .CO(carry[8]), .S(DIFF[7]) );
  ADDFXL U2_9 ( .A(A[9]), .B(n5), .CI(carry[9]), .CO(carry[10]), .S(DIFF[9])
         );
  ADDFXL U2_8 ( .A(A[8]), .B(n6), .CI(carry[8]), .CO(carry[9]), .S(DIFF[8]) );
  XOR3X1 U2_13 ( .A(A[12]), .B(n3), .C(carry[13]), .Y(DIFF[13]) );
  CLKINVX1 U1 ( .A(B[13]), .Y(n3) );
  CLKINVX1 U2 ( .A(A[13]), .Y(n4) );
  CLKINVX1 U3 ( .A(B[0]), .Y(n11) );
  CLKINVX1 U4 ( .A(B[8]), .Y(n6) );
  CLKINVX1 U5 ( .A(B[9]), .Y(n5) );
  CLKINVX1 U6 ( .A(B[7]), .Y(n7) );
  CLKINVX1 U7 ( .A(B[6]), .Y(n8) );
  CLKINVX1 U8 ( .A(B[5]), .Y(n9) );
  CLKINVX1 U9 ( .A(B[4]), .Y(n10) );
  CLKINVX1 U10 ( .A(B[3]), .Y(n14) );
  CLKINVX1 U11 ( .A(B[2]), .Y(n13) );
  CLKINVX1 U12 ( .A(B[1]), .Y(n12) );
  NAND2X1 U13 ( .A(B[0]), .B(n2), .Y(carry[1]) );
  CLKINVX1 U14 ( .A(A[0]), .Y(n2) );
  XNOR2X1 U15 ( .A(n11), .B(A[0]), .Y(DIFF[0]) );
  OAI21XL U16 ( .A0(B[12]), .A1(n4), .B0(n15), .Y(carry[13]) );
  OAI2BB1X1 U17 ( .A0N(n4), .A1N(B[12]), .B0(carry[12]), .Y(n15) );
endmodule


module ROTATION_MODE_DW01_sub_15 ( A, B, CI, DIFF, CO );
  input [13:0] A;
  input [13:0] B;
  output [13:0] DIFF;
  input CI;
  output CO;
  wire   n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16,
         n17;
  wire   [14:0] carry;

  ADDFXL U2_11 ( .A(A[11]), .B(n5), .CI(carry[11]), .CO(carry[12]), .S(
        DIFF[11]) );
  ADDFXL U2_1 ( .A(A[1]), .B(n12), .CI(carry[1]), .CO(carry[2]), .S(DIFF[1])
         );
  ADDFXL U2_3 ( .A(A[3]), .B(n14), .CI(carry[3]), .CO(carry[4]), .S(DIFF[3])
         );
  ADDFXL U2_2 ( .A(A[2]), .B(n13), .CI(carry[2]), .CO(carry[3]), .S(DIFF[2])
         );
  ADDFXL U2_4 ( .A(A[4]), .B(n15), .CI(carry[4]), .CO(carry[5]), .S(DIFF[4])
         );
  ADDFXL U2_5 ( .A(A[5]), .B(n16), .CI(carry[5]), .CO(carry[6]), .S(DIFF[5])
         );
  ADDFXL U2_6 ( .A(A[6]), .B(n10), .CI(carry[6]), .CO(carry[7]), .S(DIFF[6])
         );
  ADDFXL U2_7 ( .A(A[7]), .B(n9), .CI(carry[7]), .CO(carry[8]), .S(DIFF[7]) );
  ADDFXL U2_8 ( .A(A[8]), .B(n8), .CI(carry[8]), .CO(carry[9]), .S(DIFF[8]) );
  ADDFXL U2_9 ( .A(A[9]), .B(n7), .CI(carry[9]), .CO(carry[10]), .S(DIFF[9])
         );
  ADDFXL U2_10 ( .A(A[10]), .B(n6), .CI(carry[10]), .CO(carry[11]), .S(
        DIFF[10]) );
  XOR3X1 U2_13 ( .A(A[12]), .B(n3), .C(carry[13]), .Y(DIFF[13]) );
  CLKINVX1 U1 ( .A(A[13]), .Y(n4) );
  CLKINVX1 U2 ( .A(B[13]), .Y(n3) );
  CLKINVX1 U3 ( .A(B[0]), .Y(n11) );
  CLKINVX1 U4 ( .A(B[10]), .Y(n6) );
  CLKINVX1 U5 ( .A(B[9]), .Y(n7) );
  CLKINVX1 U6 ( .A(B[8]), .Y(n8) );
  CLKINVX1 U7 ( .A(B[7]), .Y(n9) );
  CLKINVX1 U8 ( .A(B[6]), .Y(n10) );
  CLKINVX1 U9 ( .A(B[5]), .Y(n16) );
  CLKINVX1 U10 ( .A(B[4]), .Y(n15) );
  CLKINVX1 U11 ( .A(B[2]), .Y(n13) );
  CLKINVX1 U12 ( .A(B[3]), .Y(n14) );
  CLKINVX1 U13 ( .A(B[1]), .Y(n12) );
  NAND2X1 U14 ( .A(B[0]), .B(n2), .Y(carry[1]) );
  CLKINVX1 U15 ( .A(A[0]), .Y(n2) );
  CLKINVX1 U16 ( .A(B[11]), .Y(n5) );
  XNOR2X1 U17 ( .A(n11), .B(A[0]), .Y(DIFF[0]) );
  OAI21XL U18 ( .A0(B[12]), .A1(n4), .B0(n17), .Y(carry[13]) );
  OAI2BB1X1 U19 ( .A0N(n4), .A1N(B[12]), .B0(carry[12]), .Y(n17) );
endmodule


module ROTATION_MODE_DW01_add_14 ( A, B, CI, SUM, CO );
  input [13:0] A;
  input [13:0] B;
  output [13:0] SUM;
  input CI;
  output CO;
  wire   n1, n2;
  wire   [13:1] carry;

  XOR3X1 U1_13 ( .A(A[13]), .B(B[13]), .C(carry[13]), .Y(SUM[13]) );
  ADDFXL U1_11 ( .A(A[11]), .B(B[11]), .CI(carry[11]), .CO(carry[12]), .S(
        SUM[11]) );
  ADDFXL U1_1 ( .A(A[1]), .B(B[1]), .CI(n1), .CO(carry[2]), .S(SUM[1]) );
  ADDFXL U1_3 ( .A(A[3]), .B(B[3]), .CI(carry[3]), .CO(carry[4]), .S(SUM[3])
         );
  ADDFXL U1_2 ( .A(A[2]), .B(B[2]), .CI(carry[2]), .CO(carry[3]), .S(SUM[2])
         );
  ADDFXL U1_5 ( .A(A[5]), .B(B[5]), .CI(carry[5]), .CO(carry[6]), .S(SUM[5])
         );
  ADDFXL U1_4 ( .A(A[4]), .B(B[4]), .CI(carry[4]), .CO(carry[5]), .S(SUM[4])
         );
  ADDFXL U1_8 ( .A(A[8]), .B(B[8]), .CI(carry[8]), .CO(carry[9]), .S(SUM[8])
         );
  ADDFXL U1_7 ( .A(A[7]), .B(B[7]), .CI(carry[7]), .CO(carry[8]), .S(SUM[7])
         );
  ADDFXL U1_10 ( .A(A[10]), .B(B[10]), .CI(carry[10]), .CO(carry[11]), .S(
        SUM[10]) );
  ADDFXL U1_6 ( .A(A[6]), .B(B[6]), .CI(carry[6]), .CO(carry[7]), .S(SUM[6])
         );
  ADDFXL U1_9 ( .A(A[9]), .B(B[9]), .CI(carry[9]), .CO(carry[10]), .S(SUM[9])
         );
  AND2X2 U1 ( .A(B[0]), .B(A[0]), .Y(n1) );
  XOR2X1 U2 ( .A(B[0]), .B(A[0]), .Y(SUM[0]) );
  OAI2BB1X1 U3 ( .A0N(A[12]), .A1N(B[12]), .B0(n2), .Y(carry[13]) );
  OAI21XL U4 ( .A0(A[12]), .A1(B[12]), .B0(carry[12]), .Y(n2) );
endmodule


module ROTATION_MODE_DW_mult_tc_1 ( a, b, product );
  input [12:0] a;
  input [10:0] b;
  output [23:0] product;
  wire   n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n23, n25, n26,
         n27, n28, n30, n31, n32, n34, n35, n36, n37, n38, n39, n40, n41, n42,
         n43, n44, n45, n46, n47, n48, n49, n50, n51, n52, n53, n54, n55, n56,
         n57, n58, n59, n60, n61, n62, n63, n64, n65, n66, n122, n123, n124,
         n125, n126, n127, n128, n129, n130, n131, n132, n133, n134, n135,
         n136, n137, n138, n139, n140, n141, n142, n143, n144;
  assign n23 = a[11];
  assign n32 = a[10];

  ADDFXL U3 ( .A(n23), .B(n122), .CI(n3), .CO(n2), .S(product[21]) );
  ADDFXL U4 ( .A(n25), .B(n123), .CI(n4), .CO(n3), .S(product[20]) );
  ADDFXL U5 ( .A(n27), .B(n26), .CI(n5), .CO(n4), .S(product[19]) );
  ADDFXL U6 ( .A(n30), .B(n28), .CI(n6), .CO(n5), .S(product[18]) );
  ADDFXL U7 ( .A(n31), .B(n35), .CI(n7), .CO(n6), .S(product[17]) );
  ADDFXL U8 ( .A(n36), .B(n38), .CI(n8), .CO(n7), .S(product[16]) );
  ADDFXL U9 ( .A(n39), .B(n41), .CI(n9), .CO(n8), .S(product[15]) );
  ADDFXL U10 ( .A(n44), .B(n42), .CI(n10), .CO(n9), .S(product[14]) );
  ADDFXL U11 ( .A(n45), .B(n47), .CI(n11), .CO(n10), .S(product[13]) );
  ADDFXL U12 ( .A(n48), .B(n50), .CI(n12), .CO(n11), .S(product[12]) );
  ADDFXL U13 ( .A(n51), .B(n53), .CI(n13), .CO(n12), .S(product[11]) );
  ADDFXL U14 ( .A(n55), .B(n54), .CI(n126), .CO(n13), .S(product[10]) );
  ADDFXL U24 ( .A(n23), .B(n122), .CI(n32), .CO(n25), .S(n26) );
  ADDFXL U25 ( .A(n32), .B(a[9]), .CI(n123), .CO(n27), .S(n28) );
  ADDFXL U27 ( .A(n124), .B(a[8]), .CI(n34), .CO(n30), .S(n31) );
  CMPR42X1 U29 ( .A(n123), .B(a[7]), .C(a[9]), .D(a[12]), .ICI(n37), .S(n36), 
        .ICO(n34), .CO(n35) );
  CMPR42X1 U30 ( .A(n23), .B(n124), .C(a[6]), .D(a[8]), .ICI(n40), .S(n39), 
        .ICO(n37), .CO(n38) );
  CMPR42X1 U31 ( .A(n32), .B(n125), .C(a[5]), .D(a[7]), .ICI(n43), .S(n42), 
        .ICO(n40), .CO(n41) );
  CMPR42X1 U32 ( .A(a[9]), .B(a[12]), .C(a[4]), .D(a[6]), .ICI(n46), .S(n45), 
        .ICO(n43), .CO(n44) );
  CMPR42X1 U33 ( .A(n123), .B(n127), .C(a[5]), .D(a[3]), .ICI(n49), .S(n48), 
        .ICO(n46), .CO(n47) );
  CMPR42X1 U34 ( .A(n124), .B(n129), .C(a[4]), .D(a[2]), .ICI(n52), .S(n51), 
        .ICO(n49), .CO(n50) );
  CMPR42X1 U35 ( .A(n125), .B(n131), .C(a[3]), .D(a[1]), .ICI(n57), .S(n54), 
        .ICO(n52), .CO(n53) );
  ADDFXL U36 ( .A(a[0]), .B(a[2]), .CI(n58), .CO(n55), .S(n56) );
  ADDHXL U37 ( .A(n127), .B(n138), .CO(n57), .S(n58) );
  ADDFXL U38 ( .A(n137), .B(n129), .CI(a[1]), .CO(n59), .S(n60) );
  ADDFXL U39 ( .A(n136), .B(n131), .CI(a[0]), .CO(n61), .S(n62) );
  ADDHXL U40 ( .A(n138), .B(n135), .CO(n63), .S(n64) );
  ADDHXL U41 ( .A(n137), .B(n133), .CO(n65), .S(n66) );
  CLKINVX1 U61 ( .A(a[12]), .Y(n122) );
  CLKINVX1 U62 ( .A(n65), .Y(n132) );
  CLKINVX1 U63 ( .A(n64), .Y(n134) );
  CLKINVX1 U64 ( .A(n140), .Y(n128) );
  CLKINVX1 U65 ( .A(n141), .Y(n130) );
  CLKINVX1 U66 ( .A(a[1]), .Y(n133) );
  CLKINVX1 U67 ( .A(n139), .Y(n126) );
  CLKINVX1 U68 ( .A(a[3]), .Y(n136) );
  CLKINVX1 U69 ( .A(a[4]), .Y(n137) );
  CLKINVX1 U70 ( .A(a[2]), .Y(n135) );
  CLKINVX1 U71 ( .A(a[6]), .Y(n131) );
  CLKINVX1 U72 ( .A(a[5]), .Y(n138) );
  CLKINVX1 U73 ( .A(a[7]), .Y(n129) );
  CLKINVX1 U74 ( .A(a[8]), .Y(n127) );
  CLKINVX1 U75 ( .A(n32), .Y(n124) );
  CLKINVX1 U76 ( .A(a[9]), .Y(n125) );
  CLKINVX1 U77 ( .A(n23), .Y(n123) );
  CLKINVX1 U78 ( .A(n2), .Y(product[23]) );
  AOI222XL U79 ( .A0(n128), .A1(n56), .B0(n128), .B1(n59), .C0(n59), .C1(n56), 
        .Y(n139) );
  AOI222XL U80 ( .A0(n130), .A1(n60), .B0(n130), .B1(n61), .C0(n61), .C1(n60), 
        .Y(n140) );
  AOI222XL U81 ( .A0(n142), .A1(n62), .B0(n142), .B1(n63), .C0(n63), .C1(n62), 
        .Y(n141) );
  OAI222XL U82 ( .A0(n143), .A1(n134), .B0(n143), .B1(n132), .C0(n132), .C1(
        n134), .Y(n142) );
  AOI222XL U83 ( .A0(n144), .A1(n66), .B0(n136), .B1(n144), .C0(n136), .C1(n66), .Y(n143) );
  OAI32X1 U84 ( .A0(a[0]), .A1(a[2]), .A2(a[1]), .B0(a[0]), .B1(n136), .Y(n144) );
endmodule


module ROTATION_MODE_DW_mult_tc_0 ( a, b, product );
  input [12:0] a;
  input [10:0] b;
  output [23:0] product;
  wire   n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n23, n25, n26,
         n27, n28, n30, n31, n32, n34, n35, n36, n37, n38, n39, n40, n41, n42,
         n43, n44, n45, n46, n47, n48, n49, n50, n51, n52, n53, n54, n55, n56,
         n57, n58, n59, n60, n61, n62, n63, n64, n65, n66, n122, n123, n124,
         n125, n126, n127, n128, n129, n130, n131, n132, n133, n134, n135,
         n136, n137, n138, n139, n140, n141, n142, n143, n144;
  assign n23 = a[11];
  assign n32 = a[10];

  ADDFXL U3 ( .A(n23), .B(n122), .CI(n3), .CO(n2), .S(product[21]) );
  ADDFXL U4 ( .A(n25), .B(n123), .CI(n4), .CO(n3), .S(product[20]) );
  ADDFXL U5 ( .A(n27), .B(n26), .CI(n5), .CO(n4), .S(product[19]) );
  ADDFXL U6 ( .A(n30), .B(n28), .CI(n6), .CO(n5), .S(product[18]) );
  ADDFXL U7 ( .A(n31), .B(n35), .CI(n7), .CO(n6), .S(product[17]) );
  ADDFXL U8 ( .A(n36), .B(n38), .CI(n8), .CO(n7), .S(product[16]) );
  ADDFXL U9 ( .A(n39), .B(n41), .CI(n9), .CO(n8), .S(product[15]) );
  ADDFXL U10 ( .A(n44), .B(n42), .CI(n10), .CO(n9), .S(product[14]) );
  ADDFXL U11 ( .A(n45), .B(n47), .CI(n11), .CO(n10), .S(product[13]) );
  ADDFXL U12 ( .A(n48), .B(n50), .CI(n12), .CO(n11), .S(product[12]) );
  ADDFXL U13 ( .A(n51), .B(n53), .CI(n13), .CO(n12), .S(product[11]) );
  ADDFXL U14 ( .A(n55), .B(n54), .CI(n126), .CO(n13), .S(product[10]) );
  ADDFXL U24 ( .A(n23), .B(n122), .CI(n32), .CO(n25), .S(n26) );
  ADDFXL U25 ( .A(n32), .B(a[9]), .CI(n123), .CO(n27), .S(n28) );
  ADDFXL U27 ( .A(n124), .B(a[8]), .CI(n34), .CO(n30), .S(n31) );
  CMPR42X1 U29 ( .A(n123), .B(a[7]), .C(a[9]), .D(a[12]), .ICI(n37), .S(n36), 
        .ICO(n34), .CO(n35) );
  CMPR42X1 U30 ( .A(n23), .B(n124), .C(a[6]), .D(a[8]), .ICI(n40), .S(n39), 
        .ICO(n37), .CO(n38) );
  CMPR42X1 U31 ( .A(n32), .B(n125), .C(a[5]), .D(a[7]), .ICI(n43), .S(n42), 
        .ICO(n40), .CO(n41) );
  CMPR42X1 U32 ( .A(a[9]), .B(a[12]), .C(a[4]), .D(a[6]), .ICI(n46), .S(n45), 
        .ICO(n43), .CO(n44) );
  CMPR42X1 U33 ( .A(n123), .B(n127), .C(a[5]), .D(a[3]), .ICI(n49), .S(n48), 
        .ICO(n46), .CO(n47) );
  CMPR42X1 U34 ( .A(n124), .B(n129), .C(a[4]), .D(a[2]), .ICI(n52), .S(n51), 
        .ICO(n49), .CO(n50) );
  CMPR42X1 U35 ( .A(n125), .B(n131), .C(a[3]), .D(a[1]), .ICI(n57), .S(n54), 
        .ICO(n52), .CO(n53) );
  ADDFXL U36 ( .A(a[0]), .B(a[2]), .CI(n58), .CO(n55), .S(n56) );
  ADDHXL U37 ( .A(n127), .B(n138), .CO(n57), .S(n58) );
  ADDFXL U38 ( .A(n137), .B(n129), .CI(a[1]), .CO(n59), .S(n60) );
  ADDFXL U39 ( .A(n136), .B(n131), .CI(a[0]), .CO(n61), .S(n62) );
  ADDHXL U40 ( .A(n138), .B(n135), .CO(n63), .S(n64) );
  ADDHXL U41 ( .A(n137), .B(n133), .CO(n65), .S(n66) );
  CLKINVX1 U61 ( .A(a[12]), .Y(n122) );
  CLKINVX1 U62 ( .A(n65), .Y(n132) );
  CLKINVX1 U63 ( .A(n64), .Y(n134) );
  CLKINVX1 U64 ( .A(n140), .Y(n128) );
  CLKINVX1 U65 ( .A(n141), .Y(n130) );
  CLKINVX1 U66 ( .A(a[1]), .Y(n133) );
  CLKINVX1 U67 ( .A(n139), .Y(n126) );
  CLKINVX1 U68 ( .A(a[3]), .Y(n136) );
  CLKINVX1 U69 ( .A(a[4]), .Y(n137) );
  CLKINVX1 U70 ( .A(a[2]), .Y(n135) );
  CLKINVX1 U71 ( .A(a[6]), .Y(n131) );
  CLKINVX1 U72 ( .A(a[5]), .Y(n138) );
  CLKINVX1 U73 ( .A(a[7]), .Y(n129) );
  CLKINVX1 U74 ( .A(a[8]), .Y(n127) );
  CLKINVX1 U75 ( .A(n32), .Y(n124) );
  CLKINVX1 U76 ( .A(a[9]), .Y(n125) );
  CLKINVX1 U77 ( .A(n23), .Y(n123) );
  CLKINVX1 U78 ( .A(n2), .Y(product[23]) );
  AOI222XL U79 ( .A0(n128), .A1(n56), .B0(n128), .B1(n59), .C0(n59), .C1(n56), 
        .Y(n139) );
  AOI222XL U80 ( .A0(n130), .A1(n60), .B0(n130), .B1(n61), .C0(n61), .C1(n60), 
        .Y(n140) );
  AOI222XL U81 ( .A0(n142), .A1(n62), .B0(n142), .B1(n63), .C0(n63), .C1(n62), 
        .Y(n141) );
  OAI222XL U82 ( .A0(n143), .A1(n134), .B0(n143), .B1(n132), .C0(n132), .C1(
        n134), .Y(n142) );
  AOI222XL U83 ( .A0(n144), .A1(n66), .B0(n136), .B1(n144), .C0(n136), .C1(n66), .Y(n143) );
  OAI32X1 U84 ( .A0(a[0]), .A1(a[2]), .A2(a[1]), .B0(a[0]), .B1(n136), .Y(n144) );
endmodule


module ROTATION_MODE ( ori_X, ori_Y, start, reset, clk, rot_X, rot_Y, sign_d, 
        done );
  input [12:0] ori_X;
  input [12:0] ori_Y;
  output [12:0] rot_X;
  output [12:0] rot_Y;
  input [7:0] sign_d;
  input start, reset, clk;
  output done;
  wire   rot_X_temp_wire_24, rot_Y_temp_wire_24, N76, N77, N78, N79, N80, N81,
         N82, N83, N84, N85, N86, N87, N88, N89, N90, N91, N92, N93, N94, N95,
         N96, N97, N98, N99, N100, N101, N107, N108, N119, N120, N121, N122,
         N123, N124, N125, N126, N127, N128, N129, N130, N131, N132, N133,
         N134, N135, N136, N137, N138, N139, N140, N141, N142, N143, N144,
         N160, N161, N162, N163, N164, N165, N166, N167, N168, N169, N170,
         N171, N172, N173, N174, N175, N176, N177, N178, N179, N180, N181,
         N182, N183, N184, N185, N201, N202, N203, N204, N205, N206, N207,
         N208, N209, N210, N211, N212, N213, N214, N215, N216, N217, N218,
         N219, N220, N221, N222, N223, N224, N225, N226, N242, N243, N244,
         N245, N246, N247, N248, N249, N250, N251, N252, N253, N254, N255,
         N256, N257, N258, N259, N260, N261, N262, N263, N264, N265, N266,
         N267, N328, N329, N330, N331, N332, N333, N334, N335, N336, N337,
         N338, N339, N340, N355, N356, N357, N358, N359, N360, N361, N362,
         N363, N364, N365, N366, N367, N368, N369, N370, N371, N372, N373,
         N374, N375, N376, N377, N378, N379, N380, N395, N396, N397, N398,
         N399, N400, N401, N402, N403, N404, N405, N406, N407, N408, N409,
         N410, N411, N412, N413, N414, N415, N416, N417, N418, N419, N420,
         N435, N436, N437, N438, N439, N440, N441, N442, N443, N444, N445,
         N446, N447, N448, N449, N450, N451, N452, N453, N454, N455, N456,
         N457, N458, N459, N460, N512, N513, N514, N515, N516, N517, N518,
         N519, N520, N521, N522, N523, N524, N525, N526, N527, N528, N529,
         N530, N531, N532, N533, N534, N535, N536, N537, N553, N554, N555,
         N556, N557, N558, N559, N560, N561, N562, N563, N564, N565, N566,
         N567, N568, N569, N570, N571, N572, N573, N574, N575, N576, N577,
         N578, N594, N595, N596, N597, N598, N599, N600, N601, N602, N603,
         N604, N605, N606, N607, N608, N609, N610, N611, N612, N613, N614,
         N615, N616, N617, N618, N619, N635, N636, N637, N638, N639, N640,
         N641, N642, N643, N644, N645, N646, N647, N648, N649, N650, N651,
         N652, N653, N654, N655, N656, N657, N658, N659, N660, N708, N709,
         N710, N711, N712, N713, N714, N715, N716, N717, N718, N719, N720,
         N721, N722, N723, N724, N725, N726, N727, N728, N729, N730, N731,
         N732, N733, N748, N749, N750, N751, N752, N753, N754, N755, N756,
         N757, N758, N759, N760, N761, N762, N763, N764, N765, N766, N767,
         N768, N769, N770, N771, N772, N773, N788, N789, N790, N791, N792,
         N793, N794, N795, N796, N797, N798, N799, N800, N801, N802, N803,
         N804, N805, N806, N807, N808, N809, N810, N811, N812, N813, N828,
         N829, N830, N831, N832, N833, N834, N835, N836, N837, N838, N839,
         N840, N841, N842, N843, N844, N845, N846, N847, N848, N849, N850,
         N851, N852, N853, N896, n97, n99, n108, n109, n110, n111, n112, n113,
         n114, n115, n116, n117, n118, n119, n120, n121, n122, n123, n124,
         n125, n126, n127, n128, n129, n130, n131, n132, n133, n134, n135,
         n136, n137, n138, n139, n140, n141, n142, n143, n144, n145, n146,
         n147, n148, n149, n150, n151, n152, n153, n154, n155, n156, n157,
         n158, n159, n160, n161, n162, n163, n164, n165, n166, n167, n168,
         n169, n170, n171, n172, n173, n174, n175, n176, n177, n178, n179,
         n180, n181, n182, n183, n184, n185, n186, n187, n188, n189, n190,
         n191, n192, n193, n194, n195, n196, n197, n198, n199, n200, n201,
         n202, n203, n204, n205, n206, n207, n208, n209, n210, n211, n212,
         n213, n214, n215, n216, n217, n218, n219, n220, n221, n222, n223,
         n224, n225, n226, n227, n228, n229, n230, n231, n232, n233, n234,
         n235, n236, n237, n238, n239, n240, n241, n242, n243, n244, n245,
         n246, n247, n248, n249, n250, n251, n252, n253, n254, n255, n256,
         n257, n258, n259, n260, n261, n262, n263, n264, n265, n266, n267,
         n268, n269, n270, n272, n273, n274, n275, n276, n277, n278, n279,
         n280, n281, n282, n283, n284, n285, n286, n287, n288, n289, n290,
         n291, n292, n293, n294, n295, n296, n297, n298, n299, n300, n301,
         n302, n303, n304, n305, n306, n307, n308, n309, n310, n311, n312,
         n313, n314, n315, n316, n317, n318, n319, n320, n321, n322, n323,
         n324, n325, n326, n327, n329, n330, n331, n332, n333, n334, n335,
         n336, n337, n339, n340, n341, n342, n343, n344, n345, n346, n347,
         n348, \sub_207/carry[13] , \sub_207/carry[12] , \sub_207/carry[11] ,
         \sub_207/carry[10] , \sub_207/carry[9] , \sub_207/carry[8] ,
         \sub_207/carry[7] , \sub_207/carry[6] , \sub_207/carry[5] ,
         \sub_207/carry[4] , \sub_207/carry[3] , \sub_207/carry[2] ,
         \sub_207/carry[1] , \add_207/carry[13] , \add_207/carry[12] ,
         \add_207/carry[11] , \add_207/carry[10] , \add_207/carry[9] ,
         \add_207/carry[8] , \add_207/carry[7] , \add_207/carry[6] ,
         \add_207/carry[5] , \add_207/carry[4] , \add_207/carry[3] ,
         \add_207/carry[2] , \add_207/carry[1] , \sub_205/carry[13] ,
         \sub_205/carry[12] , \sub_205/carry[11] , \sub_205/carry[10] ,
         \sub_205/carry[9] , \sub_205/carry[8] , \sub_205/carry[7] ,
         \sub_205/carry[6] , \sub_205/carry[5] , \sub_205/carry[4] ,
         \sub_205/carry[3] , \sub_205/carry[2] , \sub_205/carry[1] ,
         \add_205/carry[13] , \add_205/carry[12] , \add_205/carry[11] ,
         \add_205/carry[10] , \add_205/carry[9] , \add_205/carry[8] ,
         \add_205/carry[7] , \add_205/carry[6] , \add_205/carry[5] ,
         \add_205/carry[4] , \add_205/carry[3] , \add_205/carry[2] ,
         \add_205/carry[1] , \add_182/carry[13] , \add_182/carry[12] ,
         \add_182/carry[11] , \add_182/carry[10] , \add_182/carry[9] ,
         \add_182/carry[8] , \add_182/carry[7] , \add_182/carry[6] ,
         \add_182/carry[5] , \add_182/carry[4] , \add_182/carry[3] ,
         \add_182/carry[2] , \add_182/carry[1] , \sub_182/carry[13] ,
         \sub_182/carry[12] , \sub_182/carry[11] , \sub_182/carry[10] ,
         \sub_182/carry[9] , \sub_182/carry[8] , \sub_182/carry[7] ,
         \sub_182/carry[6] , \sub_182/carry[5] , \sub_182/carry[4] ,
         \sub_182/carry[3] , \sub_182/carry[2] , \sub_182/carry[1] ,
         \add_180/carry[13] , \add_180/carry[12] , \add_180/carry[11] ,
         \add_180/carry[10] , \add_180/carry[9] , \add_180/carry[8] ,
         \add_180/carry[7] , \add_180/carry[6] , \add_180/carry[5] ,
         \add_180/carry[4] , \add_180/carry[3] , \add_180/carry[2] ,
         \add_180/carry[1] , \sub_180/carry[13] , \sub_180/carry[12] ,
         \sub_180/carry[11] , \sub_180/carry[10] , \sub_180/carry[9] ,
         \sub_180/carry[8] , \sub_180/carry[7] , \sub_180/carry[6] ,
         \sub_180/carry[5] , \sub_180/carry[4] , \sub_180/carry[3] ,
         \sub_180/carry[2] , \sub_180/carry[1] , \sub_158/carry[13] ,
         \sub_158/carry[12] , \sub_158/carry[11] , \sub_158/carry[10] ,
         \sub_158/carry[9] , \sub_158/carry[8] , \sub_158/carry[7] ,
         \sub_158/carry[6] , \sub_158/carry[5] , \sub_158/carry[4] ,
         \sub_158/carry[3] , \sub_158/carry[2] , \sub_158/carry[1] ,
         \add_158/carry[13] , \add_158/carry[12] , \add_158/carry[11] ,
         \add_158/carry[10] , \add_158/carry[9] , \add_158/carry[8] ,
         \add_158/carry[7] , \add_158/carry[6] , \add_158/carry[5] ,
         \add_158/carry[4] , \add_158/carry[3] , \add_158/carry[2] ,
         \add_158/carry[1] , \sub_156/carry[13] , \sub_156/carry[12] ,
         \sub_156/carry[11] , \sub_156/carry[10] , \sub_156/carry[9] ,
         \sub_156/carry[8] , \sub_156/carry[7] , \sub_156/carry[6] ,
         \sub_156/carry[5] , \sub_156/carry[4] , \sub_156/carry[3] ,
         \sub_156/carry[2] , \sub_156/carry[1] , \add_156/carry[13] ,
         \add_156/carry[12] , \add_156/carry[11] , \add_156/carry[10] ,
         \add_156/carry[9] , \add_156/carry[8] , \add_156/carry[7] ,
         \add_156/carry[6] , \add_156/carry[5] , \add_156/carry[4] ,
         \add_156/carry[3] , \add_156/carry[2] , \add_156/carry[1] ,
         \add_134/carry[13] , \add_134/carry[12] , \add_134/carry[11] ,
         \add_134/carry[10] , \add_134/carry[9] , \add_134/carry[8] ,
         \add_134/carry[7] , \add_134/carry[6] , \add_134/carry[5] ,
         \add_134/carry[4] , \add_134/carry[3] , \add_134/carry[2] ,
         \add_134/carry[1] , \sub_134/carry[13] , \sub_134/carry[12] ,
         \sub_134/carry[11] , \sub_134/carry[10] , \sub_134/carry[9] ,
         \sub_134/carry[8] , \sub_134/carry[7] , \sub_134/carry[6] ,
         \sub_134/carry[5] , \sub_134/carry[4] , \sub_134/carry[3] ,
         \sub_134/carry[2] , \sub_134/carry[1] , \add_132/carry[13] ,
         \add_132/carry[12] , \add_132/carry[11] , \add_132/carry[10] ,
         \add_132/carry[9] , \add_132/carry[8] , \add_132/carry[7] ,
         \add_132/carry[6] , \add_132/carry[5] , \add_132/carry[4] ,
         \add_132/carry[3] , \add_132/carry[2] , \add_132/carry[1] ,
         \sub_132/carry[13] , \sub_132/carry[12] , \sub_132/carry[11] ,
         \sub_132/carry[10] , \sub_132/carry[9] , \sub_132/carry[8] ,
         \sub_132/carry[7] , \sub_132/carry[6] , \sub_132/carry[5] ,
         \sub_132/carry[4] , \sub_132/carry[3] , \sub_132/carry[2] ,
         \sub_132/carry[1] , n1, n2, n3, n4, n9, n10, n11, n12, n17, n18, n19,
         n20, n24, n25, n26, n27, n31, n32, n34, n35, n36, n37, n38, n39, n40,
         n41, n42, n43, n44, n45, n46, n47, n48, n49, n50, n51, n52, n53, n54,
         n55, n56, n57, n58, n59, n60, n61, n62, n63, n64, n65, n66, n67, n68,
         n69, n70, n71, n72, n73, n74, n75, n76, n77, n78, n79, n80, n81, n82,
         n83, n84, n85, n86, n87, n88, n89, n90, n91, n92, n93, n94, n95, n96,
         n98, n100, n101, n102, n103, n104, n105, n106, n107, n271, n328, n338,
         n349, n350, n351, n352, n353, n354, n355, n356, n357, n358, n359,
         n360, n361, n362, n363, n364, n365, n366, n367, n368, n369, n370,
         n371, n372, n373, n374, n375, n376, n377, n378, n379, n380, n381,
         n382, n383, n385, n386, n387, n388, n389, n390, n391, n392, n393,
         n394, n395, n396, n397, n398, n399, n400, n401, n402, n403, n404,
         n405, n406, n407, n408, n409, n410, n411, n412, n413, n414, n415,
         n416, n417, n418, n419, n420, n421, n422, n423, n424, n425, n426;
  wire   [12:0] cal_X_reg;
  wire   [21:10] rot_X_temp_wire;
  wire   [12:0] cal_Y_reg;
  wire   [21:10] rot_Y_temp_wire;
  wire   [12:0] cal_X_trac_wire;
  wire   [12:0] cal_Y_trac_wire;
  wire   [1:0] next_state;
  wire   [7:0] sign_d_reg;
  wire   SYNOPSYS_UNCONNECTED__0, SYNOPSYS_UNCONNECTED__1, 
        SYNOPSYS_UNCONNECTED__2, SYNOPSYS_UNCONNECTED__3, 
        SYNOPSYS_UNCONNECTED__4, SYNOPSYS_UNCONNECTED__5, 
        SYNOPSYS_UNCONNECTED__6, SYNOPSYS_UNCONNECTED__7, 
        SYNOPSYS_UNCONNECTED__8, SYNOPSYS_UNCONNECTED__9, 
        SYNOPSYS_UNCONNECTED__10, SYNOPSYS_UNCONNECTED__11, 
        SYNOPSYS_UNCONNECTED__12, SYNOPSYS_UNCONNECTED__13, 
        SYNOPSYS_UNCONNECTED__14, SYNOPSYS_UNCONNECTED__15, 
        SYNOPSYS_UNCONNECTED__16, SYNOPSYS_UNCONNECTED__17, 
        SYNOPSYS_UNCONNECTED__18, SYNOPSYS_UNCONNECTED__19, 
        SYNOPSYS_UNCONNECTED__20, SYNOPSYS_UNCONNECTED__21, 
        SYNOPSYS_UNCONNECTED__22, SYNOPSYS_UNCONNECTED__23, 
        SYNOPSYS_UNCONNECTED__24, SYNOPSYS_UNCONNECTED__25, 
        SYNOPSYS_UNCONNECTED__26, SYNOPSYS_UNCONNECTED__27, 
        SYNOPSYS_UNCONNECTED__28, SYNOPSYS_UNCONNECTED__29, 
        SYNOPSYS_UNCONNECTED__30, SYNOPSYS_UNCONNECTED__31, 
        SYNOPSYS_UNCONNECTED__32, SYNOPSYS_UNCONNECTED__33, 
        SYNOPSYS_UNCONNECTED__34, SYNOPSYS_UNCONNECTED__35, 
        SYNOPSYS_UNCONNECTED__36;

  ROTATION_MODE_DW01_sub_2 sub_203 ( .A({n360, n360, n51, n50, n60, n59, n58, 
        n57, n56, n55, n54, n53, n52, n49}), .B({n366, n366, n366, n366, n366, 
        n39, n38, n48, n47, n46, n45, n44, n43, n42}), .CI(1'b0), .DIFF({N773, 
        SYNOPSYS_UNCONNECTED__0, N772, N771, N770, N769, N768, N767, N766, 
        N765, N764, N763, N762, N761}) );
  ROTATION_MODE_DW01_add_2 add_203 ( .A({n360, n360, n51, n50, n60, n59, n58, 
        n57, n56, n55, n54, n53, n52, n49}), .B({n366, n366, n367, n366, n366, 
        n39, n38, n48, n47, n46, n45, n44, n43, n42}), .CI(1'b0), .SUM({N760, 
        SYNOPSYS_UNCONNECTED__1, N759, N758, N757, N756, N755, N754, N753, 
        N752, N751, N750, N749, N748}) );
  ROTATION_MODE_DW01_sub_3 sub_201 ( .A({n360, n360, n51, n50, n60, n59, n58, 
        n57, n56, n55, n54, n53, n52, n49}), .B({n366, n366, n366, n39, n38, 
        n48, n47, n46, n45, n44, n43, n42, n41, n40}), .CI(1'b0), .DIFF({N733, 
        SYNOPSYS_UNCONNECTED__2, N732, N731, N730, N729, N728, N727, N726, 
        N725, N724, N723, N722, N721}) );
  ROTATION_MODE_DW01_add_3 add_201 ( .A({n360, n360, n51, n50, n60, n59, n58, 
        n57, n56, n55, n54, n53, n52, n49}), .B({n366, n366, n367, n39, n38, 
        n48, n47, n46, n45, n44, n43, n42, n41, n40}), .CI(1'b0), .SUM({N720, 
        SYNOPSYS_UNCONNECTED__3, N719, N718, N717, N716, N715, N714, N713, 
        N712, N711, N710, N709, N708}) );
  ROTATION_MODE_DW01_add_6 add_178 ( .A({n366, n366, n39, n38, n48, n47, n46, 
        n45, n44, n43, n42, n41, n40, n37}), .B({n361, n360, n361, n360, n360, 
        n51, n50, n60, n59, n58, n57, n56, n55, n54}), .CI(1'b0), .SUM({N578, 
        SYNOPSYS_UNCONNECTED__4, N577, N576, N575, N574, N573, N572, N571, 
        N570, N569, N568, N567, N566}) );
  ROTATION_MODE_DW01_sub_6 sub_178 ( .A({n366, n366, n39, n38, n48, n47, n46, 
        n45, n44, n43, n42, n41, n40, n37}), .B({n360, n360, n360, n360, n360, 
        n51, n50, n60, n59, n58, n57, n56, n55, n54}), .CI(1'b0), .DIFF({N565, 
        SYNOPSYS_UNCONNECTED__5, N564, N563, N562, N561, N560, N559, N558, 
        N557, N556, N555, N554, N553}) );
  ROTATION_MODE_DW01_add_7 add_176 ( .A({n366, n366, n39, n38, n48, n47, n46, 
        n45, n44, n43, n42, n41, n40, n37}), .B({n360, n360, n360, n51, n50, 
        n60, n59, n58, n57, n56, n55, n54, n53, n52}), .CI(1'b0), .SUM({N537, 
        SYNOPSYS_UNCONNECTED__6, N536, N535, N534, N533, N532, N531, N530, 
        N529, N528, N527, N526, N525}) );
  ROTATION_MODE_DW01_sub_7 sub_176 ( .A({n366, n366, n39, n38, n48, n47, n46, 
        n45, n44, n43, n42, n41, n40, n37}), .B({n360, n360, n360, n51, n50, 
        n60, n59, n58, n57, n56, n55, n54, n53, n52}), .CI(1'b0), .DIFF({N524, 
        SYNOPSYS_UNCONNECTED__7, N523, N522, N521, N520, N519, N518, N517, 
        N516, N515, N514, N513, N512}) );
  ROTATION_MODE_DW01_sub_10 sub_154 ( .A({n371, n373, n84, n83, n82, n81, n80, 
        n79, n73, n74, n75, n76, n77, n78}), .B({n378, n379, n2, n2, n72, n71, 
        n70, n69, n68, n67, n61, n62, n63, n64}), .CI(1'b0), .DIFF({N380, 
        SYNOPSYS_UNCONNECTED__8, N379, N378, N377, N376, N375, N374, N373, 
        N372, N371, N370, N369, N368}) );
  ROTATION_MODE_DW01_add_10 add_154 ( .A({n373, n372, n84, n83, n82, n81, n80, 
        n79, n73, n74, n75, n76, n77, n78}), .B({n378, n379, n378, n378, n72, 
        n71, n70, n69, n68, n67, n61, n62, n63, n64}), .CI(1'b0), .SUM({N367, 
        SYNOPSYS_UNCONNECTED__9, N366, N365, N364, N363, N362, N361, N360, 
        N359, N358, N357, N356, N355}) );
  ROTATION_MODE_DW01_sub_11 sub_152 ( .A({n371, n373, n84, n83, n82, n81, n80, 
        n79, n73, n74, n75, n76, n77, n78}), .B({n378, n379, n72, n71, n70, 
        n69, n68, n67, n61, n62, n63, n64, n65, n66}), .CI(1'b0), .DIFF({N340, 
        SYNOPSYS_UNCONNECTED__10, N339, N338, N337, N336, N335, N334, N333, 
        N332, N331, N330, N329, N328}) );
  ROTATION_MODE_DW01_add_13 add_130 ( .A({n379, n379, n72, n71, n70, n69, n68, 
        n67, n61, n62, n63, n64, n65, n66}), .B({n371, n373, n371, n371, n84, 
        n83, n82, n81, n80, n79, n73, n74, n75, n76}), .CI(1'b0), .SUM({N185, 
        SYNOPSYS_UNCONNECTED__11, N184, N183, N182, N181, N180, N179, N178, 
        N177, N176, N175, N174, N173}) );
  ROTATION_MODE_DW01_sub_14 sub_130 ( .A({n378, n378, n72, n71, n70, n69, n68, 
        n67, n61, n62, n63, n64, n65, n66}), .B({n371, n372, n373, n373, n84, 
        n83, n82, n81, n80, n79, n73, n74, n75, n76}), .CI(1'b0), .DIFF({N172, 
        SYNOPSYS_UNCONNECTED__12, N171, N170, N169, N168, N167, N166, N165, 
        N164, N163, N162, N161, N160}) );
  ROTATION_MODE_DW01_sub_15 sub_128 ( .A({n378, n379, n72, n71, n70, n69, n68, 
        n67, n61, n62, n63, n64, n65, n66}), .B({n371, n372, n84, n83, n82, 
        n81, n80, n79, n73, n74, n75, n76, n77, n78}), .CI(1'b0), .DIFF({N131, 
        SYNOPSYS_UNCONNECTED__13, N130, N129, N128, N127, N126, N125, N124, 
        N123, N122, N121, N120, N119}) );
  ROTATION_MODE_DW01_add_14 r402 ( .A({n379, n379, n72, n71, n70, n69, n68, 
        n67, n61, n62, n63, n64, n65, n66}), .B({n371, n372, n84, n83, n82, 
        n81, n80, n79, n73, n74, n75, n76, n77, n78}), .CI(1'b0), .SUM({N144, 
        SYNOPSYS_UNCONNECTED__14, N143, N142, N141, N140, N139, N138, N137, 
        N136, N135, N134, N133, N132}) );
  ROTATION_MODE_DW_mult_tc_1 mult_34 ( .a({n378, n72, n71, n70, n69, n68, n67, 
        n61, n62, n63, n64, n65, n66}), .b({1'b0, 1'b1, 1'b0, 1'b0, 1'b1, 1'b1, 
        1'b0, 1'b1, 1'b1, 1'b1, 1'b0}), .product({rot_X_temp_wire_24, 
        SYNOPSYS_UNCONNECTED__15, rot_X_temp_wire, SYNOPSYS_UNCONNECTED__16, 
        SYNOPSYS_UNCONNECTED__17, SYNOPSYS_UNCONNECTED__18, 
        SYNOPSYS_UNCONNECTED__19, SYNOPSYS_UNCONNECTED__20, 
        SYNOPSYS_UNCONNECTED__21, SYNOPSYS_UNCONNECTED__22, 
        SYNOPSYS_UNCONNECTED__23, SYNOPSYS_UNCONNECTED__24, 
        SYNOPSYS_UNCONNECTED__25}) );
  ROTATION_MODE_DW_mult_tc_0 mult_35 ( .a({n371, n84, n83, n82, n81, n80, n79, 
        n73, n74, n75, n76, n77, n78}), .b({1'b0, 1'b1, 1'b0, 1'b0, 1'b1, 1'b1, 
        1'b0, 1'b1, 1'b1, 1'b1, 1'b0}), .product({rot_Y_temp_wire_24, 
        SYNOPSYS_UNCONNECTED__26, rot_Y_temp_wire, SYNOPSYS_UNCONNECTED__27, 
        SYNOPSYS_UNCONNECTED__28, SYNOPSYS_UNCONNECTED__29, 
        SYNOPSYS_UNCONNECTED__30, SYNOPSYS_UNCONNECTED__31, 
        SYNOPSYS_UNCONNECTED__32, SYNOPSYS_UNCONNECTED__33, 
        SYNOPSYS_UNCONNECTED__34, SYNOPSYS_UNCONNECTED__35, 
        SYNOPSYS_UNCONNECTED__36}) );
  DFFRX1 \current_state_reg[0]  ( .D(next_state[0]), .CK(clk), .RN(n388), .Q(
        n1) );
  DFFRX1 \current_state_reg[1]  ( .D(next_state[1]), .CK(clk), .RN(reset), 
        .QN(n337) );
  DFFRX1 \iter_reg_reg[1]  ( .D(N107), .CK(clk), .RN(reset), .QN(n348) );
  DFFRX1 \iter_reg_reg[2]  ( .D(N108), .CK(clk), .RN(n388), .Q(n26), .QN(n347)
         );
  DFFRXL \sign_d_reg_reg[7]  ( .D(n346), .CK(clk), .RN(n388), .Q(sign_d_reg[7]), .QN(n419) );
  DFFRXL \sign_d_reg_reg[6]  ( .D(n345), .CK(clk), .RN(n388), .Q(sign_d_reg[6]), .QN(n420) );
  DFFRXL \sign_d_reg_reg[5]  ( .D(n344), .CK(clk), .RN(n388), .Q(sign_d_reg[5]), .QN(n421) );
  DFFRXL \sign_d_reg_reg[4]  ( .D(n343), .CK(clk), .RN(n388), .Q(sign_d_reg[4]), .QN(n422) );
  DFFRXL \sign_d_reg_reg[3]  ( .D(n342), .CK(clk), .RN(n388), .Q(sign_d_reg[3]), .QN(n423) );
  DFFRXL \sign_d_reg_reg[2]  ( .D(n341), .CK(clk), .RN(n388), .Q(sign_d_reg[2]), .QN(n424) );
  DFFRXL \sign_d_reg_reg[1]  ( .D(n340), .CK(clk), .RN(n388), .Q(sign_d_reg[1]), .QN(n425) );
  DFFRXL \sign_d_reg_reg[0]  ( .D(n339), .CK(clk), .RN(n388), .Q(sign_d_reg[0]), .QN(n426) );
  DFFRXL \cal_Y_reg_reg[0]  ( .D(N89), .CK(clk), .RN(n387), .Q(cal_Y_reg[0])
         );
  DFFRXL \cal_X_reg_reg[0]  ( .D(N76), .CK(clk), .RN(n386), .Q(cal_X_reg[0])
         );
  DFFRXL \cal_Y_reg_reg[1]  ( .D(N90), .CK(clk), .RN(n387), .Q(cal_Y_reg[1])
         );
  DFFRXL \cal_X_reg_reg[1]  ( .D(N77), .CK(clk), .RN(n386), .Q(cal_X_reg[1])
         );
  DFFRXL \cal_Y_reg_reg[2]  ( .D(N91), .CK(clk), .RN(n387), .Q(cal_Y_reg[2])
         );
  DFFRXL \cal_X_reg_reg[2]  ( .D(N78), .CK(clk), .RN(n386), .Q(cal_X_reg[2])
         );
  DFFRXL \cal_Y_reg_reg[3]  ( .D(N92), .CK(clk), .RN(n387), .Q(cal_Y_reg[3])
         );
  DFFRXL \cal_X_reg_reg[3]  ( .D(N79), .CK(clk), .RN(n386), .Q(cal_X_reg[3])
         );
  DFFRXL \cal_Y_reg_reg[4]  ( .D(N93), .CK(clk), .RN(n387), .Q(cal_Y_reg[4]), 
        .QN(n3) );
  DFFRXL \cal_X_reg_reg[4]  ( .D(N80), .CK(clk), .RN(n386), .Q(cal_X_reg[4]), 
        .QN(n4) );
  DFFRXL \cal_X_reg_reg[5]  ( .D(N81), .CK(clk), .RN(n386), .Q(cal_X_reg[5]), 
        .QN(n10) );
  DFFRXL \cal_Y_reg_reg[5]  ( .D(N94), .CK(clk), .RN(n387), .Q(cal_Y_reg[5]), 
        .QN(n9) );
  DFFRXL \cal_X_reg_reg[6]  ( .D(N82), .CK(clk), .RN(n386), .Q(cal_X_reg[6]), 
        .QN(n12) );
  DFFRXL \cal_Y_reg_reg[6]  ( .D(N95), .CK(clk), .RN(n387), .Q(cal_Y_reg[6]), 
        .QN(n11) );
  DFFRXL \cal_X_reg_reg[7]  ( .D(N83), .CK(clk), .RN(n386), .Q(cal_X_reg[7]), 
        .QN(n18) );
  DFFRXL \cal_Y_reg_reg[7]  ( .D(N96), .CK(clk), .RN(n387), .Q(cal_Y_reg[7]), 
        .QN(n17) );
  DFFRXL \cal_X_reg_reg[8]  ( .D(N84), .CK(clk), .RN(n386), .Q(cal_X_reg[8]), 
        .QN(n25) );
  DFFRXL \cal_Y_reg_reg[8]  ( .D(N97), .CK(clk), .RN(n387), .Q(cal_Y_reg[8]), 
        .QN(n24) );
  DFFRXL \cal_X_reg_reg[9]  ( .D(N85), .CK(clk), .RN(n386), .Q(cal_X_reg[9]), 
        .QN(n20) );
  DFFRXL \cal_Y_reg_reg[9]  ( .D(N98), .CK(clk), .RN(n387), .Q(cal_Y_reg[9]), 
        .QN(n19) );
  DFFRXL \cal_X_reg_reg[10]  ( .D(N86), .CK(clk), .RN(n386), .Q(cal_X_reg[10]), 
        .QN(n31) );
  DFFRXL \cal_Y_reg_reg[10]  ( .D(N99), .CK(clk), .RN(n387), .Q(cal_Y_reg[10]), 
        .QN(n27) );
  DFFRXL \cal_X_reg_reg[11]  ( .D(N87), .CK(clk), .RN(n386), .Q(cal_X_reg[11]), 
        .QN(n34) );
  DFFRXL \cal_Y_reg_reg[11]  ( .D(N100), .CK(clk), .RN(n387), .Q(cal_Y_reg[11]), .QN(n32) );
  DFFRX1 \cal_X_reg_reg[12]  ( .D(N88), .CK(clk), .RN(n388), .Q(n2), .QN(n383)
         );
  DFFRX1 \cal_Y_reg_reg[12]  ( .D(N101), .CK(clk), .RN(n388), .QN(n377) );
  NOR3BXL U3 ( .AN(n221), .B(n36), .C(sign_d_reg[0]), .Y(n116) );
  NOR3BXL U4 ( .AN(n220), .B(n422), .C(n36), .Y(n114) );
  NOR3BXL U5 ( .AN(n97), .B(n36), .C(sign_d_reg[6]), .Y(n112) );
  INVX4 U6 ( .A(n368), .Y(n366) );
  INVX4 U7 ( .A(n362), .Y(n360) );
  CLKBUFX3 U8 ( .A(cal_X_trac_wire[11]), .Y(n39) );
  CLKBUFX3 U9 ( .A(cal_Y_trac_wire[11]), .Y(n51) );
  CLKBUFX3 U10 ( .A(cal_X_trac_wire[8]), .Y(n47) );
  CLKBUFX3 U11 ( .A(cal_X_trac_wire[9]), .Y(n48) );
  CLKBUFX3 U12 ( .A(cal_Y_trac_wire[8]), .Y(n59) );
  CLKBUFX3 U13 ( .A(cal_Y_trac_wire[9]), .Y(n60) );
  CLKBUFX3 U14 ( .A(cal_Y_trac_wire[10]), .Y(n50) );
  CLKBUFX3 U15 ( .A(cal_X_trac_wire[10]), .Y(n38) );
  CLKBUFX3 U16 ( .A(cal_X_trac_wire[7]), .Y(n46) );
  CLKBUFX3 U17 ( .A(cal_Y_trac_wire[7]), .Y(n58) );
  INVX3 U18 ( .A(n374), .Y(n372) );
  CLKBUFX3 U19 ( .A(cal_Y_trac_wire[5]), .Y(n56) );
  CLKBUFX3 U20 ( .A(cal_X_trac_wire[6]), .Y(n45) );
  CLKBUFX3 U21 ( .A(cal_X_trac_wire[5]), .Y(n44) );
  CLKBUFX3 U22 ( .A(cal_Y_trac_wire[6]), .Y(n57) );
  INVX3 U23 ( .A(n380), .Y(n378) );
  CLKBUFX3 U24 ( .A(cal_X_trac_wire[3]), .Y(n42) );
  CLKBUFX3 U25 ( .A(cal_Y_trac_wire[3]), .Y(n54) );
  CLKBUFX3 U26 ( .A(cal_Y_trac_wire[4]), .Y(n55) );
  CLKBUFX3 U27 ( .A(cal_X_trac_wire[4]), .Y(n43) );
  CLKBUFX3 U32 ( .A(cal_Y_trac_wire[0]), .Y(n49) );
  CLKBUFX3 U33 ( .A(n114), .Y(n352) );
  CLKBUFX3 U34 ( .A(n114), .Y(n351) );
  CLKBUFX3 U35 ( .A(n118), .Y(n106) );
  CLKBUFX3 U40 ( .A(n118), .Y(n105) );
  CLKBUFX3 U41 ( .A(n115), .Y(n349) );
  CLKBUFX3 U42 ( .A(cal_X_trac_wire[0]), .Y(n37) );
  INVX3 U43 ( .A(n374), .Y(n371) );
  INVX3 U47 ( .A(n374), .Y(n373) );
  NOR3BXL U48 ( .AN(n221), .B(n426), .C(n36), .Y(n117) );
  CLKBUFX3 U49 ( .A(n116), .Y(n338) );
  CLKBUFX3 U50 ( .A(n116), .Y(n328) );
  NOR3BXL U54 ( .AN(n97), .B(n36), .C(n420), .Y(n113) );
  CLKBUFX3 U56 ( .A(n112), .Y(n356) );
  CLKBUFX3 U57 ( .A(n112), .Y(n355) );
  NOR3X1 U58 ( .A(n424), .B(n36), .C(n222), .Y(n118) );
  NOR3BXL U59 ( .AN(n220), .B(n421), .C(n36), .Y(n230) );
  NOR3BXL U60 ( .AN(n221), .B(n425), .C(n36), .Y(n234) );
  NOR3BXL U61 ( .AN(n97), .B(n36), .C(n419), .Y(n229) );
  NOR3X1 U62 ( .A(n423), .B(n36), .C(n222), .Y(n232) );
  CLKBUFX3 U63 ( .A(cal_Y_reg[2]), .Y(n76) );
  CLKBUFX3 U64 ( .A(cal_X_reg[2]), .Y(n64) );
  CLKBUFX3 U65 ( .A(cal_Y_reg[6]), .Y(n79) );
  CLKBUFX3 U66 ( .A(cal_X_reg[6]), .Y(n67) );
  CLKBUFX3 U67 ( .A(cal_Y_reg[3]), .Y(n75) );
  CLKBUFX3 U68 ( .A(cal_X_reg[3]), .Y(n63) );
  CLKBUFX3 U69 ( .A(cal_Y_reg[7]), .Y(n80) );
  CLKBUFX3 U70 ( .A(cal_X_reg[7]), .Y(n68) );
  CLKBUFX3 U71 ( .A(cal_Y_reg[8]), .Y(n81) );
  CLKBUFX3 U72 ( .A(cal_X_reg[8]), .Y(n69) );
  CLKBUFX3 U73 ( .A(cal_Y_reg[4]), .Y(n74) );
  CLKBUFX3 U74 ( .A(cal_X_reg[4]), .Y(n62) );
  CLKBUFX3 U75 ( .A(cal_Y_reg[1]), .Y(n77) );
  CLKBUFX3 U76 ( .A(cal_X_reg[1]), .Y(n65) );
  CLKBUFX3 U77 ( .A(cal_Y_reg[5]), .Y(n73) );
  CLKBUFX3 U78 ( .A(cal_X_reg[5]), .Y(n61) );
  CLKBUFX3 U79 ( .A(cal_Y_reg[9]), .Y(n82) );
  CLKBUFX3 U80 ( .A(cal_X_reg[9]), .Y(n70) );
  CLKBUFX3 U81 ( .A(cal_Y_reg[10]), .Y(n83) );
  CLKBUFX3 U82 ( .A(cal_X_reg[10]), .Y(n71) );
  CLKBUFX3 U83 ( .A(cal_Y_reg[11]), .Y(n84) );
  CLKBUFX3 U84 ( .A(cal_X_reg[11]), .Y(n72) );
  NOR3BXL U85 ( .AN(n220), .B(n36), .C(sign_d_reg[4]), .Y(n115) );
  NOR2X1 U86 ( .A(n348), .B(n347), .Y(n97) );
  NAND2BX1 U87 ( .AN(n348), .B(n347), .Y(n222) );
  BUFX4 U88 ( .A(N896), .Y(done) );
  NOR3BXL U89 ( .AN(n220), .B(n36), .C(sign_d_reg[5]), .Y(n227) );
  NOR3BXL U90 ( .AN(n221), .B(n36), .C(sign_d_reg[1]), .Y(n233) );
  NOR3BXL U91 ( .AN(n97), .B(n36), .C(sign_d_reg[7]), .Y(n228) );
  INVX3 U92 ( .A(n368), .Y(n367) );
  INVX3 U93 ( .A(n362), .Y(n361) );
  CLKBUFX3 U94 ( .A(n364), .Y(n362) );
  CLKBUFX3 U95 ( .A(n370), .Y(n368) );
  XOR3X1 U96 ( .A(cal_Y_trac_wire[12]), .B(n367), .C(\add_205/carry[13] ), .Y(
        N800) );
  XOR3X1 U97 ( .A(cal_X_trac_wire[12]), .B(n363), .C(\sub_180/carry[13] ), .Y(
        N606) );
  CLKBUFX3 U98 ( .A(n368), .Y(n369) );
  CLKBUFX3 U99 ( .A(n362), .Y(n363) );
  ADDFXL U100 ( .A(n56), .B(n367), .CI(\add_207/carry[5] ), .CO(
        \add_207/carry[6] ), .S(N833) );
  ADDFXL U101 ( .A(n44), .B(n361), .CI(\add_182/carry[5] ), .CO(
        \add_182/carry[6] ), .S(N653) );
  ADDFXL U102 ( .A(n57), .B(n367), .CI(\add_207/carry[6] ), .CO(
        \add_207/carry[7] ), .S(N834) );
  ADDFXL U103 ( .A(n45), .B(n361), .CI(\add_182/carry[6] ), .CO(
        \add_182/carry[7] ), .S(N654) );
  ADDFXL U104 ( .A(n58), .B(n367), .CI(\add_207/carry[7] ), .CO(
        \add_207/carry[8] ), .S(N835) );
  ADDFXL U105 ( .A(n46), .B(n361), .CI(\add_182/carry[7] ), .CO(
        \add_182/carry[8] ), .S(N655) );
  ADDFXL U106 ( .A(n46), .B(n361), .CI(\add_180/carry[7] ), .CO(
        \add_180/carry[8] ), .S(N614) );
  ADDFXL U107 ( .A(n59), .B(n367), .CI(\add_207/carry[8] ), .CO(
        \add_207/carry[9] ), .S(N836) );
  ADDFXL U108 ( .A(n47), .B(n361), .CI(\add_182/carry[8] ), .CO(
        \add_182/carry[9] ), .S(N656) );
  ADDFXL U109 ( .A(n47), .B(n361), .CI(\add_180/carry[8] ), .CO(
        \add_180/carry[9] ), .S(N615) );
  ADDFXL U110 ( .A(n60), .B(n367), .CI(\add_207/carry[9] ), .CO(
        \add_207/carry[10] ), .S(N837) );
  ADDFXL U111 ( .A(n48), .B(n361), .CI(\add_182/carry[9] ), .CO(
        \add_182/carry[10] ), .S(N657) );
  ADDFXL U112 ( .A(n48), .B(n361), .CI(\add_180/carry[9] ), .CO(
        \add_180/carry[10] ), .S(N616) );
  ADDFXL U113 ( .A(n50), .B(n367), .CI(\add_207/carry[10] ), .CO(
        \add_207/carry[11] ), .S(N838) );
  ADDFXL U114 ( .A(n38), .B(n361), .CI(\add_182/carry[10] ), .CO(
        \add_182/carry[11] ), .S(N658) );
  ADDFXL U115 ( .A(n38), .B(n361), .CI(\add_180/carry[10] ), .CO(
        \add_180/carry[11] ), .S(N617) );
  ADDFXL U116 ( .A(n58), .B(n367), .CI(\add_205/carry[7] ), .CO(
        \add_205/carry[8] ), .S(N795) );
  ADDFXL U117 ( .A(n59), .B(n367), .CI(\add_205/carry[8] ), .CO(
        \add_205/carry[9] ), .S(N796) );
  ADDFXL U118 ( .A(n60), .B(n367), .CI(\add_205/carry[9] ), .CO(
        \add_205/carry[10] ), .S(N797) );
  ADDFXL U119 ( .A(n52), .B(n47), .CI(\add_207/carry[1] ), .CO(
        \add_207/carry[2] ), .S(N829) );
  ADDFXL U120 ( .A(n40), .B(n59), .CI(\add_182/carry[1] ), .CO(
        \add_182/carry[2] ), .S(N649) );
  ADDFXL U121 ( .A(n53), .B(n48), .CI(\add_207/carry[2] ), .CO(
        \add_207/carry[3] ), .S(N830) );
  ADDFXL U122 ( .A(n41), .B(n60), .CI(\add_182/carry[2] ), .CO(
        \add_182/carry[3] ), .S(N650) );
  ADDFXL U123 ( .A(n54), .B(n38), .CI(\add_207/carry[3] ), .CO(
        \add_207/carry[4] ), .S(N831) );
  ADDFXL U124 ( .A(n42), .B(n50), .CI(\add_182/carry[3] ), .CO(
        \add_182/carry[4] ), .S(N651) );
  ADDFXL U125 ( .A(n55), .B(n39), .CI(\add_207/carry[4] ), .CO(
        \add_207/carry[5] ), .S(N832) );
  ADDFXL U126 ( .A(n43), .B(n51), .CI(\add_182/carry[4] ), .CO(
        \add_182/carry[5] ), .S(N652) );
  ADDFXL U127 ( .A(n60), .B(n368), .CI(\sub_205/carry[9] ), .CO(
        \sub_205/carry[10] ), .S(N810) );
  ADDFXL U128 ( .A(n48), .B(n362), .CI(\sub_180/carry[9] ), .CO(
        \sub_180/carry[10] ), .S(N603) );
  ADDFXL U129 ( .A(n54), .B(n417), .CI(\sub_207/carry[3] ), .CO(
        \sub_207/carry[4] ), .S(N844) );
  CLKINVX1 U130 ( .A(n38), .Y(n417) );
  ADDFXL U131 ( .A(n42), .B(n405), .CI(\sub_182/carry[3] ), .CO(
        \sub_182/carry[4] ), .S(N638) );
  CLKINVX1 U132 ( .A(n50), .Y(n405) );
  ADDFXL U133 ( .A(n55), .B(n418), .CI(\sub_207/carry[4] ), .CO(
        \sub_207/carry[5] ), .S(N845) );
  CLKINVX1 U134 ( .A(n39), .Y(n418) );
  ADDFXL U135 ( .A(n43), .B(n406), .CI(\sub_182/carry[4] ), .CO(
        \sub_182/carry[5] ), .S(N639) );
  CLKINVX1 U136 ( .A(n51), .Y(n406) );
  ADDFXL U137 ( .A(n52), .B(n415), .CI(\sub_207/carry[1] ), .CO(
        \sub_207/carry[2] ), .S(N842) );
  CLKINVX1 U138 ( .A(n47), .Y(n415) );
  ADDFXL U139 ( .A(n40), .B(n403), .CI(\sub_182/carry[1] ), .CO(
        \sub_182/carry[2] ), .S(N636) );
  CLKINVX1 U140 ( .A(n59), .Y(n403) );
  ADDFXL U141 ( .A(n53), .B(n416), .CI(\sub_207/carry[2] ), .CO(
        \sub_207/carry[3] ), .S(N843) );
  CLKINVX1 U142 ( .A(n48), .Y(n416) );
  ADDFXL U143 ( .A(n41), .B(n404), .CI(\sub_182/carry[2] ), .CO(
        \sub_182/carry[3] ), .S(N637) );
  CLKINVX1 U144 ( .A(n60), .Y(n404) );
  ADDFXL U145 ( .A(n50), .B(n366), .CI(\add_205/carry[10] ), .CO(
        \add_205/carry[11] ), .S(N798) );
  ADDFXL U146 ( .A(n56), .B(n368), .CI(\sub_207/carry[5] ), .CO(
        \sub_207/carry[6] ), .S(N846) );
  ADDFXL U147 ( .A(n44), .B(n362), .CI(\sub_182/carry[5] ), .CO(
        \sub_182/carry[6] ), .S(N640) );
  ADDFXL U148 ( .A(n57), .B(n370), .CI(\sub_207/carry[6] ), .CO(
        \sub_207/carry[7] ), .S(N847) );
  ADDFXL U149 ( .A(n45), .B(n364), .CI(\sub_182/carry[6] ), .CO(
        \sub_182/carry[7] ), .S(N641) );
  ADDFXL U150 ( .A(n58), .B(n369), .CI(\sub_207/carry[7] ), .CO(
        \sub_207/carry[8] ), .S(N848) );
  ADDFXL U151 ( .A(n46), .B(n363), .CI(\sub_182/carry[7] ), .CO(
        \sub_182/carry[8] ), .S(N642) );
  ADDFXL U152 ( .A(n59), .B(n370), .CI(\sub_207/carry[8] ), .CO(
        \sub_207/carry[9] ), .S(N849) );
  ADDFXL U153 ( .A(n59), .B(n369), .CI(\sub_205/carry[8] ), .CO(
        \sub_205/carry[9] ), .S(N809) );
  ADDFXL U154 ( .A(n47), .B(n364), .CI(\sub_182/carry[8] ), .CO(
        \sub_182/carry[9] ), .S(N643) );
  ADDFXL U155 ( .A(n60), .B(n369), .CI(\sub_207/carry[9] ), .CO(
        \sub_207/carry[10] ), .S(N850) );
  ADDFXL U156 ( .A(n48), .B(n363), .CI(\sub_182/carry[9] ), .CO(
        \sub_182/carry[10] ), .S(N644) );
  ADDFXL U157 ( .A(n50), .B(n370), .CI(\sub_207/carry[10] ), .CO(
        \sub_207/carry[11] ), .S(N851) );
  ADDFXL U158 ( .A(n38), .B(n364), .CI(\sub_182/carry[10] ), .CO(
        \sub_182/carry[11] ), .S(N645) );
  ADDFXL U159 ( .A(n47), .B(n363), .CI(\sub_180/carry[8] ), .CO(
        \sub_180/carry[9] ), .S(N602) );
  ADDFXL U160 ( .A(n58), .B(n369), .CI(\sub_205/carry[7] ), .CO(
        \sub_205/carry[8] ), .S(N808) );
  ADDFXL U161 ( .A(n50), .B(n369), .CI(\sub_205/carry[10] ), .CO(
        \sub_205/carry[11] ), .S(N811) );
  ADDFXL U162 ( .A(n46), .B(n363), .CI(\sub_180/carry[7] ), .CO(
        \sub_180/carry[8] ), .S(N601) );
  ADDFXL U163 ( .A(n38), .B(n363), .CI(\sub_180/carry[10] ), .CO(
        \sub_180/carry[11] ), .S(N604) );
  CLKINVX1 U164 ( .A(n58), .Y(n402) );
  CLKINVX1 U165 ( .A(n46), .Y(n414) );
  ADDFXL U166 ( .A(n51), .B(n367), .CI(\add_207/carry[11] ), .CO(
        \add_207/carry[12] ), .S(N839) );
  ADDFXL U167 ( .A(n39), .B(n361), .CI(\add_182/carry[11] ), .CO(
        \add_182/carry[12] ), .S(N659) );
  ADDFXL U168 ( .A(n39), .B(n361), .CI(\add_180/carry[11] ), .CO(
        \add_180/carry[12] ), .S(N618) );
  ADDFXL U169 ( .A(n51), .B(n367), .CI(\add_205/carry[11] ), .CO(
        \add_205/carry[12] ), .S(N799) );
  ADDFXL U170 ( .A(n51), .B(n370), .CI(\sub_207/carry[11] ), .CO(
        \sub_207/carry[12] ), .S(N852) );
  ADDFXL U171 ( .A(n39), .B(n364), .CI(\sub_182/carry[11] ), .CO(
        \sub_182/carry[12] ), .S(N646) );
  ADDFXL U172 ( .A(n51), .B(n369), .CI(\sub_205/carry[11] ), .CO(
        \sub_205/carry[12] ), .S(N812) );
  ADDFXL U173 ( .A(n39), .B(n363), .CI(\sub_180/carry[11] ), .CO(
        \sub_180/carry[12] ), .S(N605) );
  CLKINVX1 U174 ( .A(n365), .Y(n370) );
  CLKINVX1 U175 ( .A(n359), .Y(n364) );
  CLKBUFX3 U176 ( .A(n117), .Y(n107) );
  ADDFXL U177 ( .A(n42), .B(n59), .CI(\add_180/carry[3] ), .CO(
        \add_180/carry[4] ), .S(N610) );
  ADDFXL U178 ( .A(n43), .B(n60), .CI(\add_180/carry[4] ), .CO(
        \add_180/carry[5] ), .S(N611) );
  ADDFXL U179 ( .A(n44), .B(n50), .CI(\add_180/carry[5] ), .CO(
        \add_180/carry[6] ), .S(N612) );
  ADDFXL U180 ( .A(n45), .B(n51), .CI(\add_180/carry[6] ), .CO(
        \add_180/carry[7] ), .S(N613) );
  ADDFXL U181 ( .A(n56), .B(n38), .CI(\add_205/carry[5] ), .CO(
        \add_205/carry[6] ), .S(N793) );
  ADDFXL U182 ( .A(n55), .B(n48), .CI(\add_205/carry[4] ), .CO(
        \add_205/carry[5] ), .S(N792) );
  ADDFXL U183 ( .A(n54), .B(n47), .CI(\add_205/carry[3] ), .CO(
        \add_205/carry[4] ), .S(N791) );
  ADDFXL U184 ( .A(n57), .B(n39), .CI(\add_205/carry[6] ), .CO(
        \add_205/carry[7] ), .S(N794) );
  ADDFXL U185 ( .A(n41), .B(n58), .CI(\add_180/carry[2] ), .CO(
        \add_180/carry[3] ), .S(N609) );
  ADDFXL U186 ( .A(n53), .B(n46), .CI(\add_205/carry[2] ), .CO(
        \add_205/carry[3] ), .S(N790) );
  ADDFXL U187 ( .A(n40), .B(n57), .CI(\add_180/carry[1] ), .CO(
        \add_180/carry[2] ), .S(N608) );
  ADDFXL U188 ( .A(n52), .B(n45), .CI(\add_205/carry[1] ), .CO(
        \add_205/carry[2] ), .S(N789) );
  ADDFXL U189 ( .A(n54), .B(n415), .CI(\sub_205/carry[3] ), .CO(
        \sub_205/carry[4] ), .S(N804) );
  ADDFXL U190 ( .A(n55), .B(n416), .CI(\sub_205/carry[4] ), .CO(
        \sub_205/carry[5] ), .S(N805) );
  ADDFXL U191 ( .A(n56), .B(n417), .CI(\sub_205/carry[5] ), .CO(
        \sub_205/carry[6] ), .S(N806) );
  ADDFXL U192 ( .A(n57), .B(n418), .CI(\sub_205/carry[6] ), .CO(
        \sub_205/carry[7] ), .S(N807) );
  ADDFXL U193 ( .A(n44), .B(n405), .CI(\sub_180/carry[5] ), .CO(
        \sub_180/carry[6] ), .S(N599) );
  ADDFXL U194 ( .A(n43), .B(n404), .CI(\sub_180/carry[4] ), .CO(
        \sub_180/carry[5] ), .S(N598) );
  ADDFXL U195 ( .A(n42), .B(n403), .CI(\sub_180/carry[3] ), .CO(
        \sub_180/carry[4] ), .S(N597) );
  ADDFXL U196 ( .A(n45), .B(n406), .CI(\sub_180/carry[6] ), .CO(
        \sub_180/carry[7] ), .S(N600) );
  ADDFXL U197 ( .A(n53), .B(n414), .CI(\sub_205/carry[2] ), .CO(
        \sub_205/carry[3] ), .S(N803) );
  ADDFXL U198 ( .A(n41), .B(n402), .CI(\sub_180/carry[2] ), .CO(
        \sub_180/carry[3] ), .S(N596) );
  ADDFXL U199 ( .A(n52), .B(n411), .CI(\sub_205/carry[1] ), .CO(
        \sub_205/carry[2] ), .S(N802) );
  CLKINVX1 U200 ( .A(n45), .Y(n411) );
  ADDFXL U201 ( .A(n40), .B(n399), .CI(\sub_180/carry[1] ), .CO(
        \sub_180/carry[2] ), .S(N595) );
  CLKINVX1 U202 ( .A(n57), .Y(n399) );
  CLKINVX1 U203 ( .A(n56), .Y(n398) );
  CLKINVX1 U204 ( .A(n44), .Y(n410) );
  CLKBUFX3 U205 ( .A(n113), .Y(n354) );
  CLKBUFX3 U206 ( .A(n117), .Y(n271) );
  CLKBUFX3 U207 ( .A(n113), .Y(n353) );
  CLKBUFX3 U208 ( .A(n229), .Y(n96) );
  CLKBUFX3 U209 ( .A(n229), .Y(n95) );
  CLKBUFX3 U210 ( .A(n385), .Y(n386) );
  CLKBUFX3 U211 ( .A(n385), .Y(n387) );
  CLKBUFX3 U212 ( .A(n385), .Y(n388) );
  AOI222XL U213 ( .A0(N618), .A1(n102), .B0(N659), .B1(n98), .C0(N646), .C1(
        n96), .Y(n283) );
  AOI222XL U214 ( .A0(N812), .A1(n101), .B0(N852), .B1(n100), .C0(N839), .C1(
        n96), .Y(n336) );
  AOI222XL U215 ( .A0(N619), .A1(n101), .B0(N660), .B1(n98), .C0(N647), .C1(
        n95), .Y(n279) );
  XOR3X1 U216 ( .A(cal_X_trac_wire[12]), .B(cal_Y_trac_wire[12]), .C(
        \add_180/carry[13] ), .Y(N619) );
  XOR3X1 U217 ( .A(n367), .B(n363), .C(\sub_182/carry[13] ), .Y(N647) );
  XOR3X1 U218 ( .A(n367), .B(n361), .C(\add_182/carry[13] ), .Y(N660) );
  AOI22X1 U219 ( .A0(N263), .A1(n356), .B0(N250), .B1(n354), .Y(n175) );
  AOI22X1 U220 ( .A0(N264), .A1(n356), .B0(N251), .B1(n354), .Y(n171) );
  AOI22X1 U221 ( .A0(N262), .A1(n356), .B0(N249), .B1(n354), .Y(n179) );
  AOI22X1 U222 ( .A0(N266), .A1(n356), .B0(N253), .B1(n354), .Y(n211) );
  AOI22X1 U223 ( .A0(N455), .A1(n355), .B0(N442), .B1(n353), .Y(n127) );
  AOI22X1 U224 ( .A0(N456), .A1(n355), .B0(N443), .B1(n353), .Y(n123) );
  AOI22X1 U225 ( .A0(N457), .A1(n355), .B0(N444), .B1(n353), .Y(n111) );
  AOI22X1 U226 ( .A0(N458), .A1(n355), .B0(N445), .B1(n353), .Y(n163) );
  AOI22X1 U227 ( .A0(N459), .A1(n355), .B0(N446), .B1(n353), .Y(n159) );
  AOI22X1 U228 ( .A0(N265), .A1(n356), .B0(N252), .B1(n354), .Y(n215) );
  AOI22X1 U229 ( .A0(N209), .A1(n352), .B0(N222), .B1(n350), .Y(n174) );
  AOI22X1 U230 ( .A0(N210), .A1(n352), .B0(N223), .B1(n350), .Y(n170) );
  AOI22X1 U231 ( .A0(N208), .A1(n352), .B0(N221), .B1(n350), .Y(n178) );
  AOI22X1 U232 ( .A0(N212), .A1(n352), .B0(N225), .B1(n350), .Y(n210) );
  AOI22X1 U233 ( .A0(N402), .A1(n351), .B0(N415), .B1(n349), .Y(n126) );
  AOI22X1 U234 ( .A0(N403), .A1(n351), .B0(N416), .B1(n349), .Y(n122) );
  AOI22X1 U235 ( .A0(N404), .A1(n351), .B0(N417), .B1(n349), .Y(n110) );
  AOI22X1 U236 ( .A0(N405), .A1(n351), .B0(N418), .B1(n349), .Y(n162) );
  AOI22X1 U237 ( .A0(N406), .A1(n351), .B0(N419), .B1(n349), .Y(n158) );
  AOI22X1 U238 ( .A0(N211), .A1(n352), .B0(N224), .B1(n350), .Y(n214) );
  AOI22X1 U239 ( .A0(N267), .A1(n356), .B0(N254), .B1(n354), .Y(n207) );
  XOR3X1 U240 ( .A(n378), .B(n372), .C(\add_134/carry[13] ), .Y(N267) );
  XOR3X1 U241 ( .A(n378), .B(n375), .C(\sub_134/carry[13] ), .Y(N254) );
  AOI22X1 U242 ( .A0(N213), .A1(n352), .B0(N226), .B1(n350), .Y(n206) );
  XOR3X1 U243 ( .A(n378), .B(n376), .C(\sub_132/carry[13] ), .Y(N213) );
  XOR3X1 U244 ( .A(n379), .B(n372), .C(\add_132/carry[13] ), .Y(N226) );
  NAND4X1 U245 ( .A(n172), .B(n173), .C(n174), .D(n175), .Y(cal_X_trac_wire[8]) );
  AOI22X1 U246 ( .A0(N168), .A1(n106), .B0(N181), .B1(n104), .Y(n172) );
  AOI22X1 U247 ( .A0(N140), .A1(n338), .B0(N127), .B1(n271), .Y(n173) );
  NAND4X1 U248 ( .A(n212), .B(n213), .C(n214), .D(n215), .Y(
        cal_X_trac_wire[10]) );
  AOI22X1 U249 ( .A0(N170), .A1(n106), .B0(N183), .B1(n103), .Y(n212) );
  AOI22X1 U250 ( .A0(N142), .A1(n338), .B0(N129), .B1(n271), .Y(n213) );
  NAND4X1 U251 ( .A(n168), .B(n169), .C(n170), .D(n171), .Y(cal_X_trac_wire[9]) );
  AOI22X1 U252 ( .A0(N169), .A1(n106), .B0(N182), .B1(n104), .Y(n168) );
  AOI22X1 U253 ( .A0(N141), .A1(n338), .B0(N128), .B1(n271), .Y(n169) );
  NAND4X1 U254 ( .A(n208), .B(n209), .C(n210), .D(n211), .Y(
        cal_X_trac_wire[11]) );
  AOI22X1 U255 ( .A0(N171), .A1(n106), .B0(N184), .B1(n104), .Y(n208) );
  AOI22X1 U256 ( .A0(N143), .A1(n338), .B0(N130), .B1(n271), .Y(n209) );
  NAND4X1 U257 ( .A(n120), .B(n121), .C(n122), .D(n123), .Y(cal_Y_trac_wire[8]) );
  AOI22X1 U258 ( .A0(N363), .A1(n105), .B0(N376), .B1(n103), .Y(n120) );
  AOI22X1 U259 ( .A0(N336), .A1(n328), .B0(N140), .B1(n107), .Y(n121) );
  NAND4X1 U260 ( .A(n176), .B(n177), .C(n178), .D(n179), .Y(cal_X_trac_wire[7]) );
  AOI22X1 U261 ( .A0(N167), .A1(n106), .B0(N180), .B1(n104), .Y(n176) );
  AOI22X1 U262 ( .A0(N139), .A1(n338), .B0(N126), .B1(n271), .Y(n177) );
  NAND4X1 U263 ( .A(n124), .B(n125), .C(n126), .D(n127), .Y(cal_Y_trac_wire[7]) );
  AOI22X1 U264 ( .A0(N362), .A1(n105), .B0(N375), .B1(n103), .Y(n124) );
  AOI22X1 U265 ( .A0(N335), .A1(n328), .B0(N139), .B1(n107), .Y(n125) );
  NAND4X1 U266 ( .A(n108), .B(n109), .C(n110), .D(n111), .Y(cal_Y_trac_wire[9]) );
  AOI22X1 U267 ( .A0(N364), .A1(n105), .B0(N377), .B1(n103), .Y(n108) );
  AOI22X1 U268 ( .A0(N337), .A1(n328), .B0(N141), .B1(n107), .Y(n109) );
  NAND4X1 U269 ( .A(n160), .B(n161), .C(n162), .D(n163), .Y(
        cal_Y_trac_wire[10]) );
  AOI22X1 U270 ( .A0(N365), .A1(n105), .B0(N378), .B1(n103), .Y(n160) );
  AOI22X1 U271 ( .A0(N338), .A1(n328), .B0(N142), .B1(n107), .Y(n161) );
  NAND4X1 U272 ( .A(n156), .B(n157), .C(n158), .D(n159), .Y(
        cal_Y_trac_wire[11]) );
  AOI22X1 U273 ( .A0(N366), .A1(n105), .B0(N379), .B1(n103), .Y(n156) );
  AOI22X1 U274 ( .A0(N339), .A1(n328), .B0(N143), .B1(n107), .Y(n157) );
  AOI22X1 U275 ( .A0(N407), .A1(n351), .B0(N420), .B1(n349), .Y(n154) );
  XOR3X1 U276 ( .A(n373), .B(n379), .C(\add_156/carry[13] ), .Y(N407) );
  XOR3X1 U277 ( .A(n373), .B(n382), .C(\sub_156/carry[13] ), .Y(N420) );
  AOI22X1 U278 ( .A0(N460), .A1(n355), .B0(N447), .B1(n353), .Y(n155) );
  XOR3X1 U279 ( .A(n373), .B(n382), .C(\sub_158/carry[13] ), .Y(N460) );
  XOR3X1 U280 ( .A(n373), .B(n379), .C(\add_158/carry[13] ), .Y(N447) );
  AOI222XL U281 ( .A0(N813), .A1(n101), .B0(N853), .B1(n100), .C0(N840), .C1(
        n95), .Y(n332) );
  XOR3X1 U282 ( .A(n359), .B(n369), .C(\sub_205/carry[13] ), .Y(N813) );
  XOR3X1 U283 ( .A(n361), .B(n369), .C(\sub_207/carry[13] ), .Y(N853) );
  XOR3X1 U284 ( .A(n360), .B(n367), .C(\add_207/carry[13] ), .Y(N840) );
  CLKBUFX3 U285 ( .A(cal_X_trac_wire[12]), .Y(n365) );
  NAND4X1 U286 ( .A(n204), .B(n205), .C(n206), .D(n207), .Y(
        cal_X_trac_wire[12]) );
  AOI22X1 U287 ( .A0(N172), .A1(n106), .B0(N185), .B1(n104), .Y(n204) );
  AOI22X1 U288 ( .A0(N144), .A1(n338), .B0(N131), .B1(n271), .Y(n205) );
  CLKBUFX3 U289 ( .A(cal_Y_trac_wire[12]), .Y(n359) );
  NAND4X1 U290 ( .A(n152), .B(n153), .C(n154), .D(n155), .Y(
        cal_Y_trac_wire[12]) );
  AOI22X1 U291 ( .A0(N367), .A1(n105), .B0(N380), .B1(n103), .Y(n152) );
  AOI22X1 U292 ( .A0(N340), .A1(n328), .B0(N144), .B1(n107), .Y(n153) );
  AOI222XL U293 ( .A0(N613), .A1(n102), .B0(N654), .B1(n100), .C0(N641), .C1(
        n96), .Y(n303) );
  AOI222XL U294 ( .A0(N614), .A1(n102), .B0(N655), .B1(n100), .C0(N642), .C1(
        n96), .Y(n299) );
  AOI222XL U295 ( .A0(N615), .A1(n102), .B0(N656), .B1(n100), .C0(N643), .C1(
        n96), .Y(n295) );
  AOI222XL U296 ( .A0(N616), .A1(n102), .B0(N657), .B1(n100), .C0(N644), .C1(
        n96), .Y(n291) );
  AOI222XL U297 ( .A0(N617), .A1(n102), .B0(N658), .B1(n100), .C0(N645), .C1(
        n96), .Y(n287) );
  AOI222XL U298 ( .A0(N807), .A1(n101), .B0(N847), .B1(n98), .C0(N834), .C1(
        n95), .Y(n250) );
  AOI222XL U299 ( .A0(N808), .A1(n101), .B0(N848), .B1(n98), .C0(N835), .C1(
        n95), .Y(n246) );
  AOI222XL U300 ( .A0(N809), .A1(n101), .B0(N849), .B1(n98), .C0(N836), .C1(
        n95), .Y(n242) );
  AOI222XL U301 ( .A0(N810), .A1(n101), .B0(N850), .B1(n98), .C0(N837), .C1(
        n95), .Y(n238) );
  AOI222XL U302 ( .A0(N811), .A1(n101), .B0(N851), .B1(n98), .C0(N838), .C1(
        n95), .Y(n226) );
  AOI22X1 U303 ( .A0(N453), .A1(n355), .B0(N440), .B1(n353), .Y(n135) );
  AOI22X1 U304 ( .A0(N261), .A1(n356), .B0(N248), .B1(n354), .Y(n183) );
  AOI22X1 U305 ( .A0(N260), .A1(n356), .B0(N247), .B1(n354), .Y(n187) );
  AOI22X1 U306 ( .A0(N452), .A1(n355), .B0(N439), .B1(n353), .Y(n139) );
  AOI22X1 U307 ( .A0(N259), .A1(n356), .B0(N246), .B1(n354), .Y(n191) );
  AOI22X1 U308 ( .A0(N454), .A1(n355), .B0(N441), .B1(n353), .Y(n131) );
  AOI22X1 U309 ( .A0(N400), .A1(n351), .B0(N413), .B1(n349), .Y(n134) );
  AOI22X1 U310 ( .A0(N207), .A1(n352), .B0(N220), .B1(n350), .Y(n182) );
  AOI22X1 U311 ( .A0(N206), .A1(n352), .B0(N219), .B1(n350), .Y(n186) );
  AOI22X1 U312 ( .A0(N399), .A1(n351), .B0(N412), .B1(n349), .Y(n138) );
  AOI22X1 U313 ( .A0(N205), .A1(n352), .B0(N218), .B1(n350), .Y(n190) );
  AOI22X1 U314 ( .A0(N401), .A1(n351), .B0(N414), .B1(n349), .Y(n130) );
  INVX4 U315 ( .A(n380), .Y(n379) );
  NAND4X1 U316 ( .A(n188), .B(n189), .C(n190), .D(n191), .Y(cal_X_trac_wire[4]) );
  AOI22X1 U317 ( .A0(N164), .A1(n106), .B0(N177), .B1(n104), .Y(n188) );
  AOI22X1 U318 ( .A0(N136), .A1(n338), .B0(N123), .B1(n271), .Y(n189) );
  NAND4X1 U319 ( .A(n180), .B(n181), .C(n182), .D(n183), .Y(cal_X_trac_wire[6]) );
  AOI22X1 U320 ( .A0(N166), .A1(n106), .B0(N179), .B1(n104), .Y(n180) );
  AOI22X1 U321 ( .A0(N138), .A1(n338), .B0(N125), .B1(n271), .Y(n181) );
  NAND4X1 U322 ( .A(n128), .B(n129), .C(n130), .D(n131), .Y(cal_Y_trac_wire[6]) );
  AOI22X1 U323 ( .A0(N361), .A1(n105), .B0(N374), .B1(n103), .Y(n128) );
  AOI22X1 U324 ( .A0(N334), .A1(n328), .B0(N138), .B1(n107), .Y(n129) );
  NAND4X1 U325 ( .A(n132), .B(n133), .C(n134), .D(n135), .Y(cal_Y_trac_wire[5]) );
  AOI22X1 U326 ( .A0(N360), .A1(n105), .B0(N373), .B1(n103), .Y(n132) );
  AOI22X1 U327 ( .A0(N333), .A1(n328), .B0(N137), .B1(n107), .Y(n133) );
  NAND4X1 U328 ( .A(n184), .B(n185), .C(n186), .D(n187), .Y(cal_X_trac_wire[5]) );
  AOI22X1 U329 ( .A0(N165), .A1(n106), .B0(N178), .B1(n104), .Y(n184) );
  AOI22X1 U330 ( .A0(N137), .A1(n338), .B0(N124), .B1(n271), .Y(n185) );
  NAND4X1 U331 ( .A(n136), .B(n137), .C(n138), .D(n139), .Y(cal_Y_trac_wire[4]) );
  AOI22X1 U332 ( .A0(N359), .A1(n105), .B0(N372), .B1(n103), .Y(n136) );
  AOI22X1 U333 ( .A0(N332), .A1(n328), .B0(N136), .B1(n107), .Y(n137) );
  AOI222XL U334 ( .A0(N612), .A1(n102), .B0(N653), .B1(n100), .C0(N640), .C1(
        n96), .Y(n307) );
  AOI222XL U335 ( .A0(N806), .A1(n101), .B0(N846), .B1(n98), .C0(N833), .C1(
        n95), .Y(n254) );
  AOI22X1 U336 ( .A0(N258), .A1(n356), .B0(N245), .B1(n354), .Y(n195) );
  AOI22X1 U337 ( .A0(N256), .A1(n356), .B0(N243), .B1(n354), .Y(n203) );
  AOI22X1 U338 ( .A0(N257), .A1(n356), .B0(N244), .B1(n354), .Y(n199) );
  AOI22X1 U339 ( .A0(N451), .A1(n355), .B0(N438), .B1(n353), .Y(n143) );
  AOI22X1 U340 ( .A0(N450), .A1(n355), .B0(N437), .B1(n353), .Y(n147) );
  AOI22X1 U341 ( .A0(N161), .A1(n106), .B0(N174), .B1(n104), .Y(n200) );
  AOI22X1 U342 ( .A0(N356), .A1(n105), .B0(N369), .B1(n103), .Y(n148) );
  AOI22X1 U343 ( .A0(N204), .A1(n352), .B0(N217), .B1(n350), .Y(n194) );
  AOI22X1 U344 ( .A0(N203), .A1(n352), .B0(N216), .B1(n350), .Y(n198) );
  AOI22X1 U345 ( .A0(N398), .A1(n351), .B0(N411), .B1(n349), .Y(n142) );
  AOI22X1 U346 ( .A0(N397), .A1(n351), .B0(N410), .B1(n349), .Y(n146) );
  AOI22X1 U347 ( .A0(N396), .A1(n351), .B0(N409), .B1(n349), .Y(n150) );
  NAND4X1 U348 ( .A(n140), .B(n141), .C(n142), .D(n143), .Y(cal_Y_trac_wire[3]) );
  AOI22X1 U349 ( .A0(N358), .A1(n105), .B0(N371), .B1(n103), .Y(n140) );
  AOI22X1 U350 ( .A0(N331), .A1(n328), .B0(N135), .B1(n107), .Y(n141) );
  NAND4X1 U351 ( .A(n192), .B(n193), .C(n194), .D(n195), .Y(cal_X_trac_wire[3]) );
  AOI22X1 U352 ( .A0(N163), .A1(n106), .B0(N176), .B1(n104), .Y(n192) );
  AOI22X1 U353 ( .A0(N135), .A1(n338), .B0(N122), .B1(n271), .Y(n193) );
  NAND4X1 U354 ( .A(n216), .B(n217), .C(n218), .D(n219), .Y(cal_X_trac_wire[0]) );
  AOI22X1 U355 ( .A0(N132), .A1(n338), .B0(N119), .B1(n271), .Y(n217) );
  AOI22X1 U356 ( .A0(N201), .A1(n352), .B0(N214), .B1(n350), .Y(n218) );
  NAND4X1 U357 ( .A(n164), .B(n165), .C(n166), .D(n167), .Y(cal_Y_trac_wire[0]) );
  AOI22X1 U358 ( .A0(N328), .A1(n328), .B0(N132), .B1(n271), .Y(n165) );
  AOI22X1 U359 ( .A0(N395), .A1(n351), .B0(N408), .B1(n350), .Y(n166) );
  CLKBUFX3 U360 ( .A(n115), .Y(n350) );
  CLKBUFX3 U361 ( .A(n119), .Y(n104) );
  CLKBUFX3 U362 ( .A(n119), .Y(n103) );
  CLKBUFX3 U363 ( .A(cal_X_trac_wire[2]), .Y(n41) );
  NAND4X1 U364 ( .A(n196), .B(n197), .C(n198), .D(n199), .Y(cal_X_trac_wire[2]) );
  AOI22X1 U365 ( .A0(N162), .A1(n106), .B0(N175), .B1(n104), .Y(n196) );
  AOI22X1 U366 ( .A0(N134), .A1(n338), .B0(N121), .B1(n271), .Y(n197) );
  CLKBUFX3 U367 ( .A(cal_Y_trac_wire[2]), .Y(n53) );
  NAND4X1 U368 ( .A(n144), .B(n145), .C(n146), .D(n147), .Y(cal_Y_trac_wire[2]) );
  AOI22X1 U369 ( .A0(N357), .A1(n105), .B0(N370), .B1(n103), .Y(n144) );
  AOI22X1 U370 ( .A0(N330), .A1(n328), .B0(N134), .B1(n107), .Y(n145) );
  CLKBUFX3 U371 ( .A(cal_X_trac_wire[1]), .Y(n40) );
  NAND4X1 U372 ( .A(n200), .B(n201), .C(n202), .D(n203), .Y(cal_X_trac_wire[1]) );
  AOI22X1 U373 ( .A0(N133), .A1(n338), .B0(N120), .B1(n271), .Y(n201) );
  AOI22X1 U374 ( .A0(N202), .A1(n352), .B0(N215), .B1(n350), .Y(n202) );
  CLKBUFX3 U375 ( .A(cal_Y_trac_wire[1]), .Y(n52) );
  NAND4X1 U376 ( .A(n148), .B(n149), .C(n150), .D(n151), .Y(cal_Y_trac_wire[1]) );
  AOI22X1 U377 ( .A0(N329), .A1(n328), .B0(N133), .B1(n107), .Y(n149) );
  AOI22X1 U378 ( .A0(N449), .A1(n355), .B0(N436), .B1(n353), .Y(n151) );
  AOI222XL U379 ( .A0(N611), .A1(n102), .B0(N652), .B1(n100), .C0(N639), .C1(
        n96), .Y(n311) );
  AOI222XL U380 ( .A0(N610), .A1(n102), .B0(N651), .B1(n100), .C0(N638), .C1(
        n96), .Y(n315) );
  AOI222XL U381 ( .A0(N609), .A1(n102), .B0(N650), .B1(n100), .C0(N637), .C1(
        n96), .Y(n319) );
  AOI222XL U382 ( .A0(N608), .A1(n102), .B0(N649), .B1(n100), .C0(N636), .C1(
        n96), .Y(n323) );
  AOI222XL U383 ( .A0(N805), .A1(n101), .B0(N845), .B1(n98), .C0(N832), .C1(
        n95), .Y(n258) );
  AOI222XL U384 ( .A0(N804), .A1(n227), .B0(N844), .B1(n98), .C0(N831), .C1(
        n95), .Y(n262) );
  AOI222XL U385 ( .A0(N803), .A1(n101), .B0(N843), .B1(n98), .C0(N830), .C1(
        n95), .Y(n266) );
  AOI222XL U386 ( .A0(N802), .A1(n101), .B0(N842), .B1(n98), .C0(N829), .C1(
        n95), .Y(n270) );
  AOI222XL U387 ( .A0(N801), .A1(n101), .B0(N841), .B1(n98), .C0(N828), .C1(
        n95), .Y(n275) );
  AOI222XL U388 ( .A0(N607), .A1(n102), .B0(N648), .B1(n100), .C0(N635), .C1(
        n96), .Y(n327) );
  CLKBUFX3 U389 ( .A(n99), .Y(n357) );
  CLKBUFX3 U390 ( .A(n99), .Y(n358) );
  CLKBUFX3 U391 ( .A(n232), .Y(n90) );
  CLKBUFX3 U392 ( .A(n232), .Y(n89) );
  CLKBUFX3 U393 ( .A(n230), .Y(n94) );
  CLKBUFX3 U394 ( .A(n234), .Y(n86) );
  CLKBUFX3 U395 ( .A(n230), .Y(n93) );
  CLKBUFX3 U396 ( .A(n234), .Y(n85) );
  CLKBUFX3 U397 ( .A(n231), .Y(n92) );
  CLKBUFX3 U398 ( .A(n233), .Y(n88) );
  CLKBUFX3 U399 ( .A(n231), .Y(n91) );
  CLKBUFX3 U400 ( .A(n233), .Y(n87) );
  CLKBUFX3 U401 ( .A(n101), .Y(n102) );
  CLKBUFX3 U402 ( .A(reset), .Y(n385) );
  CLKBUFX3 U403 ( .A(n377), .Y(n374) );
  CLKBUFX3 U404 ( .A(n383), .Y(n380) );
  ADDFXL U405 ( .A(n80), .B(n379), .CI(\add_158/carry[7] ), .CO(
        \add_158/carry[8] ), .S(N442) );
  ADDFXL U406 ( .A(n81), .B(n379), .CI(\add_158/carry[8] ), .CO(
        \add_158/carry[9] ), .S(N443) );
  ADDFXL U407 ( .A(n81), .B(n379), .CI(\add_156/carry[8] ), .CO(
        \add_156/carry[9] ), .S(N403) );
  ADDFXL U408 ( .A(n82), .B(n379), .CI(\add_158/carry[9] ), .CO(
        \add_158/carry[10] ), .S(N444) );
  ADDFXL U409 ( .A(n82), .B(n379), .CI(\add_156/carry[9] ), .CO(
        \add_156/carry[10] ), .S(N404) );
  ADDFXL U410 ( .A(n83), .B(n379), .CI(\add_158/carry[10] ), .CO(
        \add_158/carry[11] ), .S(N445) );
  ADDFXL U411 ( .A(n83), .B(n379), .CI(\add_156/carry[10] ), .CO(
        \add_156/carry[11] ), .S(N405) );
  ADDFXL U412 ( .A(n67), .B(n372), .CI(\add_134/carry[6] ), .CO(
        \add_134/carry[7] ), .S(N261) );
  ADDFXL U413 ( .A(n68), .B(n372), .CI(\add_134/carry[7] ), .CO(
        \add_134/carry[8] ), .S(N262) );
  ADDFXL U414 ( .A(n69), .B(n372), .CI(\add_134/carry[8] ), .CO(
        \add_134/carry[9] ), .S(N263) );
  ADDFXL U415 ( .A(n69), .B(n372), .CI(\add_132/carry[8] ), .CO(
        \add_132/carry[9] ), .S(N222) );
  ADDFXL U416 ( .A(n70), .B(n372), .CI(\add_134/carry[9] ), .CO(
        \add_134/carry[10] ), .S(N264) );
  ADDFXL U417 ( .A(n70), .B(n372), .CI(\add_132/carry[9] ), .CO(
        \add_132/carry[10] ), .S(N223) );
  ADDFXL U418 ( .A(n71), .B(n372), .CI(\add_134/carry[10] ), .CO(
        \add_134/carry[11] ), .S(N265) );
  ADDFXL U419 ( .A(n71), .B(n372), .CI(\add_132/carry[10] ), .CO(
        \add_132/carry[11] ), .S(N224) );
  ADDFXL U420 ( .A(n79), .B(n378), .CI(\add_158/carry[6] ), .CO(
        \add_158/carry[7] ), .S(N441) );
  ADDFXL U421 ( .A(n63), .B(n82), .CI(\add_134/carry[3] ), .CO(
        \add_134/carry[4] ), .S(N258) );
  ADDFXL U422 ( .A(n62), .B(n83), .CI(\add_134/carry[4] ), .CO(
        \add_134/carry[5] ), .S(N259) );
  ADDFXL U423 ( .A(n61), .B(n82), .CI(\add_132/carry[5] ), .CO(
        \add_132/carry[6] ), .S(N219) );
  ADDFXL U424 ( .A(n61), .B(n84), .CI(\add_134/carry[5] ), .CO(
        \add_134/carry[6] ), .S(N260) );
  ADDFXL U425 ( .A(n67), .B(n83), .CI(\add_132/carry[6] ), .CO(
        \add_132/carry[7] ), .S(N220) );
  ADDFXL U426 ( .A(n68), .B(n84), .CI(\add_132/carry[7] ), .CO(
        \add_132/carry[8] ), .S(N221) );
  ADDFXL U427 ( .A(n65), .B(n80), .CI(\add_134/carry[1] ), .CO(
        \add_134/carry[2] ), .S(N256) );
  ADDFXL U428 ( .A(n63), .B(n80), .CI(\add_132/carry[3] ), .CO(
        \add_132/carry[4] ), .S(N217) );
  ADDFXL U429 ( .A(n64), .B(n81), .CI(\add_134/carry[2] ), .CO(
        \add_134/carry[3] ), .S(N257) );
  ADDFXL U430 ( .A(n75), .B(n70), .CI(\add_158/carry[3] ), .CO(
        \add_158/carry[4] ), .S(N438) );
  ADDFXL U431 ( .A(n62), .B(n81), .CI(\add_132/carry[4] ), .CO(
        \add_132/carry[5] ), .S(N218) );
  ADDFXL U432 ( .A(n74), .B(n71), .CI(\add_158/carry[4] ), .CO(
        \add_158/carry[5] ), .S(N439) );
  ADDFXL U433 ( .A(n73), .B(n70), .CI(\add_156/carry[5] ), .CO(
        \add_156/carry[6] ), .S(N400) );
  ADDFXL U434 ( .A(n73), .B(n72), .CI(\add_158/carry[5] ), .CO(
        \add_158/carry[6] ), .S(N440) );
  ADDFXL U435 ( .A(n79), .B(n71), .CI(\add_156/carry[6] ), .CO(
        \add_156/carry[7] ), .S(N401) );
  ADDFXL U436 ( .A(n80), .B(n72), .CI(\add_156/carry[7] ), .CO(
        \add_156/carry[8] ), .S(N402) );
  ADDFXL U437 ( .A(n64), .B(n79), .CI(\add_132/carry[2] ), .CO(
        \add_132/carry[3] ), .S(N216) );
  ADDFXL U438 ( .A(n75), .B(n68), .CI(\add_156/carry[3] ), .CO(
        \add_156/carry[4] ), .S(N398) );
  ADDFXL U439 ( .A(n77), .B(n68), .CI(\add_158/carry[1] ), .CO(
        \add_158/carry[2] ), .S(N436) );
  ADDFXL U440 ( .A(n76), .B(n69), .CI(\add_158/carry[2] ), .CO(
        \add_158/carry[3] ), .S(N437) );
  ADDFXL U441 ( .A(n74), .B(n69), .CI(\add_156/carry[4] ), .CO(
        \add_156/carry[5] ), .S(N399) );
  ADDFXL U442 ( .A(n76), .B(n67), .CI(\add_156/carry[2] ), .CO(
        \add_156/carry[3] ), .S(N397) );
  ADDFXL U443 ( .A(n65), .B(n73), .CI(\add_132/carry[1] ), .CO(
        \add_132/carry[2] ), .S(N215) );
  ADDFXL U444 ( .A(n77), .B(n61), .CI(\add_156/carry[1] ), .CO(
        \add_156/carry[2] ), .S(N396) );
  ADDFXL U445 ( .A(n69), .B(n374), .CI(\sub_132/carry[8] ), .CO(
        \sub_132/carry[9] ), .S(N209) );
  ADDFXL U446 ( .A(n63), .B(n19), .CI(\sub_134/carry[3] ), .CO(
        \sub_134/carry[4] ), .S(N245) );
  ADDFXL U447 ( .A(n62), .B(n27), .CI(\sub_134/carry[4] ), .CO(
        \sub_134/carry[5] ), .S(N246) );
  ADDFXL U448 ( .A(n61), .B(n32), .CI(\sub_134/carry[5] ), .CO(
        \sub_134/carry[6] ), .S(N247) );
  ADDFXL U449 ( .A(n61), .B(n19), .CI(\sub_132/carry[5] ), .CO(
        \sub_132/carry[6] ), .S(N206) );
  ADDFXL U450 ( .A(n67), .B(n27), .CI(\sub_132/carry[6] ), .CO(
        \sub_132/carry[7] ), .S(N207) );
  ADDFXL U451 ( .A(n68), .B(n32), .CI(\sub_132/carry[7] ), .CO(
        \sub_132/carry[8] ), .S(N208) );
  ADDFXL U452 ( .A(n65), .B(n17), .CI(\sub_134/carry[1] ), .CO(
        \sub_134/carry[2] ), .S(N243) );
  ADDFXL U453 ( .A(n64), .B(n24), .CI(\sub_134/carry[2] ), .CO(
        \sub_134/carry[3] ), .S(N244) );
  ADDFXL U454 ( .A(n63), .B(n17), .CI(\sub_132/carry[3] ), .CO(
        \sub_132/carry[4] ), .S(N204) );
  ADDFXL U455 ( .A(n75), .B(n20), .CI(\sub_158/carry[3] ), .CO(
        \sub_158/carry[4] ), .S(N451) );
  ADDFXL U456 ( .A(n62), .B(n24), .CI(\sub_132/carry[4] ), .CO(
        \sub_132/carry[5] ), .S(N205) );
  ADDFXL U457 ( .A(n74), .B(n31), .CI(\sub_158/carry[4] ), .CO(
        \sub_158/carry[5] ), .S(N452) );
  ADDFXL U458 ( .A(n80), .B(n34), .CI(\sub_156/carry[7] ), .CO(
        \sub_156/carry[8] ), .S(N415) );
  ADDFXL U459 ( .A(n64), .B(n11), .CI(\sub_132/carry[2] ), .CO(
        \sub_132/carry[3] ), .S(N203) );
  ADDFXL U460 ( .A(n73), .B(n34), .CI(\sub_158/carry[5] ), .CO(
        \sub_158/carry[6] ), .S(N453) );
  ADDFXL U461 ( .A(n73), .B(n20), .CI(\sub_156/carry[5] ), .CO(
        \sub_156/carry[6] ), .S(N413) );
  ADDFXL U462 ( .A(n79), .B(n31), .CI(\sub_156/carry[6] ), .CO(
        \sub_156/carry[7] ), .S(N414) );
  ADDFXL U463 ( .A(n76), .B(n25), .CI(\sub_158/carry[2] ), .CO(
        \sub_158/carry[3] ), .S(N450) );
  ADDFXL U464 ( .A(n75), .B(n18), .CI(\sub_156/carry[3] ), .CO(
        \sub_156/carry[4] ), .S(N411) );
  ADDFXL U465 ( .A(n74), .B(n25), .CI(\sub_156/carry[4] ), .CO(
        \sub_156/carry[5] ), .S(N412) );
  ADDFXL U466 ( .A(n77), .B(n18), .CI(\sub_158/carry[1] ), .CO(
        \sub_158/carry[2] ), .S(N449) );
  ADDFXL U467 ( .A(n76), .B(n12), .CI(\sub_156/carry[2] ), .CO(
        \sub_156/carry[3] ), .S(N410) );
  ADDFXL U468 ( .A(n65), .B(n9), .CI(\sub_132/carry[1] ), .CO(
        \sub_132/carry[2] ), .S(N202) );
  ADDFXL U469 ( .A(n77), .B(n10), .CI(\sub_156/carry[1] ), .CO(
        \sub_156/carry[2] ), .S(N409) );
  ADDFXL U470 ( .A(n67), .B(n376), .CI(\sub_134/carry[6] ), .CO(
        \sub_134/carry[7] ), .S(N248) );
  ADDFXL U471 ( .A(n79), .B(n381), .CI(\sub_158/carry[6] ), .CO(
        \sub_158/carry[7] ), .S(N454) );
  ADDFXL U472 ( .A(n68), .B(n376), .CI(\sub_134/carry[7] ), .CO(
        \sub_134/carry[8] ), .S(N249) );
  ADDFXL U473 ( .A(n80), .B(n381), .CI(\sub_158/carry[7] ), .CO(
        \sub_158/carry[8] ), .S(N455) );
  ADDFXL U474 ( .A(n69), .B(n375), .CI(\sub_134/carry[8] ), .CO(
        \sub_134/carry[9] ), .S(N250) );
  ADDFXL U475 ( .A(n81), .B(n381), .CI(\sub_158/carry[8] ), .CO(
        \sub_158/carry[9] ), .S(N456) );
  ADDFXL U476 ( .A(n70), .B(n375), .CI(\sub_134/carry[9] ), .CO(
        \sub_134/carry[10] ), .S(N251) );
  ADDFXL U477 ( .A(n82), .B(n381), .CI(\sub_158/carry[9] ), .CO(
        \sub_158/carry[10] ), .S(N457) );
  ADDFXL U478 ( .A(n82), .B(n382), .CI(\sub_156/carry[9] ), .CO(
        \sub_156/carry[10] ), .S(N417) );
  ADDFXL U479 ( .A(n71), .B(n375), .CI(\sub_134/carry[10] ), .CO(
        \sub_134/carry[11] ), .S(N252) );
  ADDFXL U480 ( .A(n71), .B(n376), .CI(\sub_132/carry[10] ), .CO(
        \sub_132/carry[11] ), .S(N211) );
  ADDFXL U481 ( .A(n83), .B(n381), .CI(\sub_158/carry[10] ), .CO(
        \sub_158/carry[11] ), .S(N458) );
  ADDFXL U482 ( .A(n83), .B(n382), .CI(\sub_156/carry[10] ), .CO(
        \sub_156/carry[11] ), .S(N418) );
  ADDFXL U483 ( .A(n81), .B(n382), .CI(\sub_156/carry[8] ), .CO(
        \sub_156/carry[9] ), .S(N416) );
  ADDFXL U484 ( .A(n70), .B(n375), .CI(\sub_132/carry[9] ), .CO(
        \sub_132/carry[10] ), .S(N210) );
  ADDFXL U485 ( .A(n84), .B(n380), .CI(\sub_158/carry[11] ), .CO(
        \sub_158/carry[12] ), .S(N459) );
  ADDFXL U486 ( .A(n72), .B(n375), .CI(\sub_134/carry[11] ), .CO(
        \sub_134/carry[12] ), .S(N253) );
  ADDFXL U487 ( .A(n72), .B(n376), .CI(\sub_132/carry[11] ), .CO(
        \sub_132/carry[12] ), .S(N212) );
  ADDFXL U488 ( .A(n84), .B(n382), .CI(\sub_156/carry[11] ), .CO(
        \sub_156/carry[12] ), .S(N419) );
  ADDFXL U489 ( .A(n84), .B(n379), .CI(\add_158/carry[11] ), .CO(
        \add_158/carry[12] ), .S(N446) );
  ADDFXL U490 ( .A(n84), .B(n379), .CI(\add_156/carry[11] ), .CO(
        \add_156/carry[12] ), .S(N406) );
  ADDFXL U491 ( .A(n72), .B(n372), .CI(\add_134/carry[11] ), .CO(
        \add_134/carry[12] ), .S(N266) );
  ADDFXL U492 ( .A(n72), .B(n372), .CI(\add_132/carry[11] ), .CO(
        \add_132/carry[12] ), .S(N225) );
  CLKBUFX3 U493 ( .A(n383), .Y(n381) );
  CLKBUFX3 U494 ( .A(n377), .Y(n376) );
  CLKBUFX3 U495 ( .A(n377), .Y(n375) );
  CLKBUFX3 U496 ( .A(n383), .Y(n382) );
  AOI22X1 U497 ( .A0(N448), .A1(n355), .B0(N435), .B1(n354), .Y(n167) );
  AOI22X1 U498 ( .A0(N255), .A1(n356), .B0(N242), .B1(n354), .Y(n219) );
  AOI22X1 U499 ( .A0(N355), .A1(n105), .B0(N368), .B1(n104), .Y(n164) );
  AOI22X1 U500 ( .A0(N160), .A1(n106), .B0(N173), .B1(n103), .Y(n216) );
  INVX3 U501 ( .A(n35), .Y(n36) );
  OAI2BB2XL U502 ( .B0(n36), .B1(n222), .A0N(n26), .A1N(N107), .Y(N108) );
  NOR2BX1 U503 ( .AN(n97), .B(n36), .Y(next_state[1]) );
  CLKBUFX3 U504 ( .A(n228), .Y(n100) );
  CLKBUFX3 U505 ( .A(n228), .Y(n98) );
  CLKBUFX3 U506 ( .A(n227), .Y(n101) );
  AND2X2 U507 ( .A(rot_X_temp_wire_24), .B(done), .Y(rot_X[12]) );
  AND2X2 U508 ( .A(rot_X_temp_wire[21]), .B(done), .Y(rot_X[11]) );
  AND2X2 U509 ( .A(rot_Y_temp_wire_24), .B(done), .Y(rot_Y[12]) );
  AND2X2 U510 ( .A(rot_Y_temp_wire[21]), .B(done), .Y(rot_Y[11]) );
  AND2X2 U511 ( .A(rot_X_temp_wire[20]), .B(done), .Y(rot_X[10]) );
  AND2X2 U512 ( .A(rot_X_temp_wire[19]), .B(done), .Y(rot_X[9]) );
  AND2X2 U513 ( .A(rot_Y_temp_wire[20]), .B(done), .Y(rot_Y[10]) );
  AND2X2 U514 ( .A(rot_Y_temp_wire[19]), .B(done), .Y(rot_Y[9]) );
  BUFX4 U515 ( .A(cal_X_reg[0]), .Y(n66) );
  BUFX4 U516 ( .A(cal_Y_reg[0]), .Y(n78) );
  AND2X2 U517 ( .A(rot_X_temp_wire[18]), .B(done), .Y(rot_X[8]) );
  AND2X2 U518 ( .A(rot_X_temp_wire[17]), .B(done), .Y(rot_X[7]) );
  AND2X2 U519 ( .A(rot_Y_temp_wire[18]), .B(done), .Y(rot_Y[8]) );
  AND2X2 U520 ( .A(rot_Y_temp_wire[17]), .B(done), .Y(rot_Y[7]) );
  AND2X2 U521 ( .A(rot_X_temp_wire[16]), .B(done), .Y(rot_X[6]) );
  AND2X2 U522 ( .A(rot_X_temp_wire[15]), .B(done), .Y(rot_X[5]) );
  AND2X2 U523 ( .A(rot_Y_temp_wire[16]), .B(done), .Y(rot_Y[6]) );
  AND2X2 U524 ( .A(rot_Y_temp_wire[15]), .B(done), .Y(rot_Y[5]) );
  AND2X2 U525 ( .A(rot_X_temp_wire[14]), .B(done), .Y(rot_X[4]) );
  AND2X2 U526 ( .A(rot_X_temp_wire[13]), .B(done), .Y(rot_X[3]) );
  AND2X2 U527 ( .A(rot_Y_temp_wire[14]), .B(done), .Y(rot_Y[4]) );
  AND2X2 U528 ( .A(rot_Y_temp_wire[13]), .B(done), .Y(rot_Y[3]) );
  AND2X2 U529 ( .A(rot_X_temp_wire[12]), .B(done), .Y(rot_X[2]) );
  AND2X2 U530 ( .A(rot_X_temp_wire[11]), .B(done), .Y(rot_X[1]) );
  AND2X2 U531 ( .A(rot_Y_temp_wire[12]), .B(done), .Y(rot_Y[2]) );
  AND2X2 U532 ( .A(rot_Y_temp_wire[11]), .B(done), .Y(rot_Y[1]) );
  AND2X2 U533 ( .A(rot_Y_temp_wire[10]), .B(done), .Y(rot_Y[0]) );
  AND2X2 U534 ( .A(rot_X_temp_wire[10]), .B(done), .Y(rot_X[0]) );
  NAND4X1 U535 ( .A(n333), .B(n334), .C(n335), .D(n336), .Y(N100) );
  AOI22X1 U536 ( .A0(N719), .A1(n86), .B0(ori_Y[11]), .B1(n358), .Y(n333) );
  AOI22X1 U537 ( .A0(N759), .A1(n90), .B0(N732), .B1(n88), .Y(n334) );
  AOI22X1 U538 ( .A0(N799), .A1(n94), .B0(N772), .B1(n92), .Y(n335) );
  NAND4X1 U539 ( .A(n329), .B(n330), .C(n331), .D(n332), .Y(N101) );
  AOI22X1 U540 ( .A0(N720), .A1(n86), .B0(ori_Y[12]), .B1(n99), .Y(n329) );
  AOI22X1 U541 ( .A0(N760), .A1(n90), .B0(N733), .B1(n87), .Y(n330) );
  AOI22X1 U542 ( .A0(N800), .A1(n94), .B0(N773), .B1(n91), .Y(n331) );
  NAND4X1 U543 ( .A(n280), .B(n281), .C(n282), .D(n283), .Y(N87) );
  AOI22X1 U544 ( .A0(N523), .A1(n85), .B0(ori_X[11]), .B1(n357), .Y(n280) );
  AOI22X1 U545 ( .A0(N564), .A1(n89), .B0(N536), .B1(n88), .Y(n281) );
  AOI22X1 U546 ( .A0(N605), .A1(n93), .B0(N577), .B1(n92), .Y(n282) );
  NAND4X1 U547 ( .A(n276), .B(n277), .C(n278), .D(n279), .Y(N88) );
  AOI22X1 U548 ( .A0(N524), .A1(n85), .B0(ori_X[12]), .B1(n99), .Y(n276) );
  AOI22X1 U549 ( .A0(N565), .A1(n89), .B0(N537), .B1(n87), .Y(n277) );
  AOI22X1 U550 ( .A0(N606), .A1(n93), .B0(N578), .B1(n91), .Y(n278) );
  NOR2BX1 U551 ( .AN(n348), .B(n26), .Y(n221) );
  NAND4X1 U552 ( .A(n300), .B(n301), .C(n302), .D(n303), .Y(N82) );
  AOI22X1 U553 ( .A0(N518), .A1(n86), .B0(ori_X[6]), .B1(n357), .Y(n300) );
  AOI22X1 U554 ( .A0(N559), .A1(n90), .B0(N531), .B1(n88), .Y(n301) );
  AOI22X1 U555 ( .A0(N600), .A1(n94), .B0(N572), .B1(n92), .Y(n302) );
  NAND4X1 U556 ( .A(n296), .B(n297), .C(n298), .D(n299), .Y(N83) );
  AOI22X1 U557 ( .A0(N519), .A1(n86), .B0(ori_X[7]), .B1(n357), .Y(n296) );
  AOI22X1 U558 ( .A0(N560), .A1(n90), .B0(N532), .B1(n88), .Y(n297) );
  AOI22X1 U559 ( .A0(N601), .A1(n94), .B0(N573), .B1(n92), .Y(n298) );
  NAND4X1 U560 ( .A(n292), .B(n293), .C(n294), .D(n295), .Y(N84) );
  AOI22X1 U561 ( .A0(N520), .A1(n86), .B0(ori_X[8]), .B1(n358), .Y(n292) );
  AOI22X1 U562 ( .A0(N561), .A1(n90), .B0(N533), .B1(n88), .Y(n293) );
  AOI22X1 U563 ( .A0(N602), .A1(n94), .B0(N574), .B1(n92), .Y(n294) );
  NAND4X1 U564 ( .A(n288), .B(n289), .C(n290), .D(n291), .Y(N85) );
  AOI22X1 U565 ( .A0(N521), .A1(n86), .B0(ori_X[9]), .B1(n357), .Y(n288) );
  AOI22X1 U566 ( .A0(N562), .A1(n90), .B0(N534), .B1(n88), .Y(n289) );
  AOI22X1 U567 ( .A0(N603), .A1(n94), .B0(N575), .B1(n92), .Y(n290) );
  NAND4X1 U568 ( .A(n284), .B(n285), .C(n286), .D(n287), .Y(N86) );
  AOI22X1 U569 ( .A0(N522), .A1(n86), .B0(ori_X[10]), .B1(n358), .Y(n284) );
  AOI22X1 U570 ( .A0(N604), .A1(n94), .B0(N576), .B1(n92), .Y(n286) );
  AOI22X1 U571 ( .A0(N563), .A1(n90), .B0(N535), .B1(n88), .Y(n285) );
  NAND4X1 U572 ( .A(n247), .B(n248), .C(n249), .D(n250), .Y(N95) );
  AOI22X1 U573 ( .A0(N714), .A1(n85), .B0(ori_Y[6]), .B1(n357), .Y(n247) );
  AOI22X1 U574 ( .A0(N754), .A1(n89), .B0(N727), .B1(n87), .Y(n248) );
  AOI22X1 U575 ( .A0(N794), .A1(n93), .B0(N767), .B1(n91), .Y(n249) );
  NAND4X1 U576 ( .A(n243), .B(n244), .C(n245), .D(n246), .Y(N96) );
  AOI22X1 U577 ( .A0(N715), .A1(n85), .B0(ori_Y[7]), .B1(n358), .Y(n243) );
  AOI22X1 U578 ( .A0(N755), .A1(n89), .B0(N728), .B1(n87), .Y(n244) );
  AOI22X1 U579 ( .A0(N795), .A1(n93), .B0(N768), .B1(n91), .Y(n245) );
  NAND4X1 U580 ( .A(n239), .B(n240), .C(n241), .D(n242), .Y(N97) );
  AOI22X1 U581 ( .A0(N716), .A1(n85), .B0(ori_Y[8]), .B1(n358), .Y(n239) );
  AOI22X1 U582 ( .A0(N756), .A1(n89), .B0(N729), .B1(n87), .Y(n240) );
  AOI22X1 U583 ( .A0(N796), .A1(n93), .B0(N769), .B1(n91), .Y(n241) );
  NAND4X1 U584 ( .A(n235), .B(n236), .C(n237), .D(n238), .Y(N98) );
  AOI22X1 U585 ( .A0(N717), .A1(n85), .B0(ori_Y[9]), .B1(n358), .Y(n235) );
  AOI22X1 U586 ( .A0(N757), .A1(n89), .B0(N730), .B1(n87), .Y(n236) );
  AOI22X1 U587 ( .A0(N797), .A1(n93), .B0(N770), .B1(n91), .Y(n237) );
  NAND4X1 U588 ( .A(n223), .B(n224), .C(n225), .D(n226), .Y(N99) );
  AOI22X1 U589 ( .A0(N718), .A1(n85), .B0(ori_Y[10]), .B1(n358), .Y(n223) );
  AOI22X1 U590 ( .A0(N758), .A1(n89), .B0(N731), .B1(n87), .Y(n224) );
  AOI22X1 U591 ( .A0(N798), .A1(n93), .B0(N771), .B1(n91), .Y(n225) );
  NOR2BX1 U592 ( .AN(n348), .B(n347), .Y(n220) );
  NOR3X1 U593 ( .A(n36), .B(sign_d_reg[2]), .C(n222), .Y(n119) );
  NAND4X1 U594 ( .A(n304), .B(n305), .C(n306), .D(n307), .Y(N81) );
  AOI22X1 U595 ( .A0(N517), .A1(n86), .B0(ori_X[5]), .B1(n358), .Y(n304) );
  AOI22X1 U596 ( .A0(N558), .A1(n90), .B0(N530), .B1(n88), .Y(n305) );
  AOI22X1 U597 ( .A0(N599), .A1(n94), .B0(N571), .B1(n92), .Y(n306) );
  NAND4X1 U598 ( .A(n251), .B(n252), .C(n253), .D(n254), .Y(N94) );
  AOI22X1 U599 ( .A0(N713), .A1(n85), .B0(ori_Y[5]), .B1(n358), .Y(n251) );
  AOI22X1 U600 ( .A0(N753), .A1(n89), .B0(N726), .B1(n87), .Y(n252) );
  AOI22X1 U601 ( .A0(N793), .A1(n93), .B0(N766), .B1(n91), .Y(n253) );
  AND2X2 U602 ( .A(n337), .B(n1), .Y(n35) );
  NAND4X1 U603 ( .A(n272), .B(n273), .C(n274), .D(n275), .Y(N89) );
  AOI22X1 U604 ( .A0(N708), .A1(n85), .B0(ori_Y[0]), .B1(n357), .Y(n272) );
  AOI22X1 U605 ( .A0(N748), .A1(n89), .B0(N721), .B1(n87), .Y(n273) );
  AOI22X1 U606 ( .A0(N788), .A1(n93), .B0(N761), .B1(n91), .Y(n274) );
  NAND4X1 U607 ( .A(n324), .B(n325), .C(n326), .D(n327), .Y(N76) );
  AOI22X1 U608 ( .A0(N512), .A1(n86), .B0(ori_X[0]), .B1(n357), .Y(n324) );
  AOI22X1 U609 ( .A0(N553), .A1(n90), .B0(N525), .B1(n88), .Y(n325) );
  AOI22X1 U610 ( .A0(N594), .A1(n94), .B0(N566), .B1(n92), .Y(n326) );
  NAND4X1 U611 ( .A(n308), .B(n309), .C(n310), .D(n311), .Y(N80) );
  AOI22X1 U612 ( .A0(N516), .A1(n86), .B0(ori_X[4]), .B1(n357), .Y(n308) );
  AOI22X1 U613 ( .A0(N557), .A1(n90), .B0(N529), .B1(n88), .Y(n309) );
  AOI22X1 U614 ( .A0(N598), .A1(n94), .B0(N570), .B1(n92), .Y(n310) );
  NAND4X1 U615 ( .A(n312), .B(n313), .C(n314), .D(n315), .Y(N79) );
  AOI22X1 U616 ( .A0(N515), .A1(n86), .B0(ori_X[3]), .B1(n357), .Y(n312) );
  AOI22X1 U617 ( .A0(N556), .A1(n90), .B0(N528), .B1(n88), .Y(n313) );
  AOI22X1 U618 ( .A0(N597), .A1(n94), .B0(N569), .B1(n92), .Y(n314) );
  NAND4X1 U619 ( .A(n316), .B(n317), .C(n318), .D(n319), .Y(N78) );
  AOI22X1 U620 ( .A0(N514), .A1(n86), .B0(ori_X[2]), .B1(n357), .Y(n316) );
  AOI22X1 U621 ( .A0(N555), .A1(n90), .B0(N527), .B1(n88), .Y(n317) );
  AOI22X1 U622 ( .A0(N596), .A1(n94), .B0(N568), .B1(n92), .Y(n318) );
  NAND4X1 U623 ( .A(n320), .B(n321), .C(n322), .D(n323), .Y(N77) );
  AOI22X1 U624 ( .A0(N513), .A1(n86), .B0(ori_X[1]), .B1(n357), .Y(n320) );
  AOI22X1 U625 ( .A0(N554), .A1(n90), .B0(N526), .B1(n88), .Y(n321) );
  AOI22X1 U626 ( .A0(N595), .A1(n94), .B0(N567), .B1(n92), .Y(n322) );
  NAND4X1 U627 ( .A(n255), .B(n256), .C(n257), .D(n258), .Y(N93) );
  AOI22X1 U628 ( .A0(N712), .A1(n85), .B0(ori_Y[4]), .B1(n358), .Y(n255) );
  AOI22X1 U629 ( .A0(N752), .A1(n89), .B0(N725), .B1(n87), .Y(n256) );
  AOI22X1 U630 ( .A0(N792), .A1(n93), .B0(N765), .B1(n91), .Y(n257) );
  NAND4X1 U631 ( .A(n259), .B(n260), .C(n261), .D(n262), .Y(N92) );
  AOI22X1 U632 ( .A0(N711), .A1(n85), .B0(ori_Y[3]), .B1(n358), .Y(n259) );
  AOI22X1 U633 ( .A0(N751), .A1(n89), .B0(N724), .B1(n87), .Y(n260) );
  AOI22X1 U634 ( .A0(N791), .A1(n93), .B0(N764), .B1(n91), .Y(n261) );
  NAND4X1 U635 ( .A(n263), .B(n264), .C(n265), .D(n266), .Y(N91) );
  AOI22X1 U636 ( .A0(N710), .A1(n85), .B0(ori_Y[2]), .B1(n358), .Y(n263) );
  AOI22X1 U637 ( .A0(N750), .A1(n89), .B0(N723), .B1(n87), .Y(n264) );
  AOI22X1 U638 ( .A0(N790), .A1(n93), .B0(N763), .B1(n91), .Y(n265) );
  NAND4X1 U639 ( .A(n267), .B(n268), .C(n269), .D(n270), .Y(N90) );
  AOI22X1 U640 ( .A0(N709), .A1(n85), .B0(ori_Y[1]), .B1(n99), .Y(n267) );
  AOI22X1 U641 ( .A0(N749), .A1(n89), .B0(N722), .B1(n87), .Y(n268) );
  AOI22X1 U642 ( .A0(N789), .A1(n93), .B0(N762), .B1(n91), .Y(n269) );
  NOR2X1 U643 ( .A(n1), .B(n337), .Y(N896) );
  NOR2BX1 U644 ( .AN(n337), .B(n1), .Y(n99) );
  NOR3X1 U645 ( .A(n36), .B(sign_d_reg[3]), .C(n222), .Y(n231) );
  NOR2BX1 U646 ( .AN(n348), .B(n36), .Y(N107) );
  OAI2BB2XL U647 ( .B0(n357), .B1(n424), .A0N(sign_d[2]), .A1N(n358), .Y(n341)
         );
  OAI2BB2XL U648 ( .B0(n357), .B1(n423), .A0N(sign_d[3]), .A1N(n358), .Y(n342)
         );
  OAI2BB2XL U649 ( .B0(n357), .B1(n426), .A0N(sign_d[0]), .A1N(n358), .Y(n339)
         );
  OAI2BB2XL U650 ( .B0(n357), .B1(n425), .A0N(sign_d[1]), .A1N(n358), .Y(n340)
         );
  OAI2BB2XL U651 ( .B0(n357), .B1(n422), .A0N(sign_d[4]), .A1N(n358), .Y(n343)
         );
  OAI2BB2XL U652 ( .B0(n357), .B1(n421), .A0N(sign_d[5]), .A1N(n358), .Y(n344)
         );
  OAI2BB2XL U653 ( .B0(n357), .B1(n420), .A0N(sign_d[6]), .A1N(n358), .Y(n345)
         );
  OAI2BB2XL U654 ( .B0(n357), .B1(n419), .A0N(sign_d[7]), .A1N(n358), .Y(n346)
         );
  OAI2BB2XL U655 ( .B0(n97), .B1(n36), .A0N(start), .A1N(n357), .Y(
        next_state[0]) );
  AND2X1 U656 ( .A(n49), .B(n46), .Y(\add_207/carry[1] ) );
  XOR2X1 U657 ( .A(n46), .B(n49), .Y(N828) );
  OR2X1 U658 ( .A(n414), .B(n49), .Y(\sub_207/carry[1] ) );
  XNOR2X1 U659 ( .A(n49), .B(n414), .Y(N841) );
  OR2X1 U660 ( .A(n410), .B(n49), .Y(\sub_205/carry[1] ) );
  XNOR2X1 U661 ( .A(n49), .B(n410), .Y(N801) );
  AND2X1 U662 ( .A(n49), .B(n44), .Y(\add_205/carry[1] ) );
  XOR2X1 U663 ( .A(n44), .B(n49), .Y(N788) );
  OR2X1 U664 ( .A(n402), .B(n37), .Y(\sub_182/carry[1] ) );
  XNOR2X1 U665 ( .A(n37), .B(n402), .Y(N635) );
  AND2X1 U666 ( .A(n37), .B(n58), .Y(\add_182/carry[1] ) );
  XOR2X1 U667 ( .A(n58), .B(n37), .Y(N648) );
  AND2X1 U668 ( .A(n37), .B(n56), .Y(\add_180/carry[1] ) );
  XOR2X1 U669 ( .A(n56), .B(n37), .Y(N607) );
  OR2X1 U670 ( .A(n398), .B(n37), .Y(\sub_180/carry[1] ) );
  XNOR2X1 U671 ( .A(n37), .B(n398), .Y(N594) );
  AND2X1 U672 ( .A(n78), .B(n67), .Y(\add_158/carry[1] ) );
  XOR2X1 U673 ( .A(n67), .B(n78), .Y(N435) );
  OR2X1 U674 ( .A(n12), .B(n78), .Y(\sub_158/carry[1] ) );
  XNOR2X1 U675 ( .A(n78), .B(n12), .Y(N448) );
  OR2X1 U676 ( .A(n4), .B(n78), .Y(\sub_156/carry[1] ) );
  XNOR2X1 U677 ( .A(n78), .B(n4), .Y(N408) );
  AND2X1 U678 ( .A(n78), .B(n62), .Y(\add_156/carry[1] ) );
  XOR2X1 U679 ( .A(n62), .B(n78), .Y(N395) );
  OR2X1 U680 ( .A(n11), .B(n66), .Y(\sub_134/carry[1] ) );
  XNOR2X1 U681 ( .A(n66), .B(n11), .Y(N242) );
  AND2X1 U682 ( .A(n66), .B(n79), .Y(\add_134/carry[1] ) );
  XOR2X1 U683 ( .A(n79), .B(n66), .Y(N255) );
  AND2X1 U684 ( .A(n66), .B(n74), .Y(\add_132/carry[1] ) );
  XOR2X1 U685 ( .A(n74), .B(n66), .Y(N214) );
  OR2X1 U686 ( .A(n3), .B(n66), .Y(\sub_132/carry[1] ) );
  XNOR2X1 U687 ( .A(n66), .B(n3), .Y(N201) );
  OAI2BB1X1 U688 ( .A0N(n382), .A1N(n373), .B0(\sub_132/carry[12] ), .Y(n389)
         );
  OAI21XL U689 ( .A0(n373), .A1(n380), .B0(n389), .Y(\sub_132/carry[13] ) );
  OAI21XL U690 ( .A0(n2), .A1(n373), .B0(\add_132/carry[12] ), .Y(n390) );
  OAI2BB1X1 U691 ( .A0N(n379), .A1N(n373), .B0(n390), .Y(\add_132/carry[13] )
         );
  OAI2BB1X1 U692 ( .A0N(n382), .A1N(n373), .B0(\sub_134/carry[12] ), .Y(n391)
         );
  OAI21XL U693 ( .A0(n373), .A1(n382), .B0(n391), .Y(\sub_134/carry[13] ) );
  OAI21XL U694 ( .A0(n2), .A1(n373), .B0(\add_134/carry[12] ), .Y(n392) );
  OAI2BB1X1 U695 ( .A0N(n378), .A1N(n373), .B0(n392), .Y(\add_134/carry[13] )
         );
  OAI21XL U696 ( .A0(n373), .A1(n2), .B0(\add_156/carry[12] ), .Y(n393) );
  OAI2BB1X1 U697 ( .A0N(n373), .A1N(n378), .B0(n393), .Y(\add_156/carry[13] )
         );
  OAI2BB1X1 U698 ( .A0N(n375), .A1N(n2), .B0(\sub_156/carry[12] ), .Y(n394) );
  OAI21XL U699 ( .A0(n2), .A1(n374), .B0(n394), .Y(\sub_156/carry[13] ) );
  OAI21XL U700 ( .A0(n373), .A1(n2), .B0(\add_158/carry[12] ), .Y(n395) );
  OAI2BB1X1 U701 ( .A0N(n373), .A1N(n378), .B0(n395), .Y(\add_158/carry[13] )
         );
  OAI2BB1X1 U702 ( .A0N(n375), .A1N(n2), .B0(\sub_158/carry[12] ), .Y(n396) );
  OAI21XL U703 ( .A0(n379), .A1(n375), .B0(n396), .Y(\sub_158/carry[13] ) );
  OAI21XL U704 ( .A0(n365), .A1(n362), .B0(\sub_180/carry[12] ), .Y(n397) );
  OAI2BB1X1 U705 ( .A0N(n363), .A1N(cal_X_trac_wire[12]), .B0(n397), .Y(
        \sub_180/carry[13] ) );
  OAI21XL U706 ( .A0(n366), .A1(n360), .B0(\add_180/carry[12] ), .Y(n400) );
  OAI2BB1X1 U707 ( .A0N(cal_X_trac_wire[12]), .A1N(cal_Y_trac_wire[12]), .B0(
        n400), .Y(\add_180/carry[13] ) );
  OAI21XL U708 ( .A0(n366), .A1(n363), .B0(\sub_182/carry[12] ), .Y(n401) );
  OAI2BB1X1 U709 ( .A0N(n363), .A1N(n367), .B0(n401), .Y(\sub_182/carry[13] )
         );
  OAI21XL U710 ( .A0(n366), .A1(n360), .B0(\add_182/carry[12] ), .Y(n407) );
  OAI2BB1X1 U711 ( .A0N(n365), .A1N(n361), .B0(n407), .Y(\add_182/carry[13] )
         );
  OAI21XL U712 ( .A0(n359), .A1(n365), .B0(\add_205/carry[12] ), .Y(n408) );
  OAI2BB1X1 U713 ( .A0N(cal_Y_trac_wire[12]), .A1N(cal_X_trac_wire[12]), .B0(
        n408), .Y(\add_205/carry[13] ) );
  OAI21XL U714 ( .A0(n360), .A1(n368), .B0(\sub_205/carry[12] ), .Y(n409) );
  OAI2BB1X1 U715 ( .A0N(n369), .A1N(cal_Y_trac_wire[12]), .B0(n409), .Y(
        \sub_205/carry[13] ) );
  OAI21XL U716 ( .A0(n360), .A1(n366), .B0(\add_207/carry[12] ), .Y(n412) );
  OAI2BB1X1 U717 ( .A0N(n361), .A1N(n366), .B0(n412), .Y(\add_207/carry[13] )
         );
  OAI21XL U718 ( .A0(n360), .A1(n369), .B0(\sub_207/carry[12] ), .Y(n413) );
  OAI2BB1X1 U719 ( .A0N(n369), .A1N(n359), .B0(n413), .Y(\sub_207/carry[13] )
         );
endmodule


module QR_CORDIC ( clk, reset, done, ori_di, ori_addr, ori_rd, matr_di, 
        matr_do, matr_rd_addr, matr_wr_addr, matr_wr, matr_rd );
  input [12:0] ori_di;
  output [4:0] ori_addr;
  input [12:0] matr_di;
  output [12:0] matr_do;
  output [4:0] matr_rd_addr;
  output [4:0] matr_wr_addr;
  input clk, reset;
  output done, ori_rd, matr_wr, matr_rd;
  wire   delay_reg, rot_done, vec_done, N156, N159, N160, N161, N162, N163,
         N164, N165, N166, N213, N214, N215, N216, N217, N218, N219, N220,
         N221, N222, N223, N224, N225, N279, N280, N281, N282, N283, N284,
         N285, N286, N287, N288, N289, N290, N291, N312, N313, N314, N331,
         N332, N339, N340, n11, n17, n18, n21, n22, n23, n24, n25, n26, n27,
         n28, n29, n30, n31, n32, n33, n34, n35, n36, n37, n38, n39, n40, n41,
         n42, n43, n44, n45, n46, n47, n48, n49, n52, n54, n55, n56, n57, n58,
         n60, n74, n75, n76, n77, n78, n79, n80, n81, n82, n83, n84, n85, n86,
         n87, n88, n89, n90, n91, n92, n93, n94, n95, n96, n97, n98, n99, n100,
         n101, n102, n103, n104, n105, n106, n107, n108, n109, n110, n111,
         n112, n113, n114, n115, n116, n117, n118, n119, n120, n121, n122,
         n123, n124, n125, n126, n127, n128, n129, n130, n131, n132, n133,
         n134, n135, n136, n137, n138, n139, n140, n141, n142, n143, n144,
         n145, n146, n147, n148, n149, n150, n151, n152, n153, n154, n155,
         n156, n157, n158, n159, n160, n161, n162, n163, n164, n165, n166,
         n167, n168, n169, n170, n171, n172, n173, n174, n175, n176, n177,
         n178, n179, n180, n181, n182, n183, n184, n185, n186, n187, n188,
         n189, n190, n191, n192, n193, n194, n195, n196, n197, n198, n204,
         n205, n206, n207, n208, n209, n210, n211, n212, n213, n214, n215,
         n216, n217, n218, n219, n220, n221, n222, n223, n224, n225, n226,
         n227, n228, n229, n230, n231, n232, n233, n234, n235, n236, n237,
         n238, n239, n240, n241, n242, n243, n244, n245, n246, n247;
  wire   [5:0] current_state;
  wire   [1:0] rot_col_index_reg;
  wire   [2:0] counter_vec_reg;
  wire   [1:0] col_index_reg;
  wire   [12:0] ori_X_wire;
  wire   [12:0] ori_Y_wire;
  wire   [7:0] sign_d_in;
  wire   [12:0] rot_X_vec;
  wire   [12:0] rot_Y_vec;
  wire   [7:0] sign_d;
  wire   [12:0] rot_X_rot;
  wire   [12:0] rot_Y_rot;
  wire   [5:0] next_state;

  AOI211X2 U3 ( .A0(delay_reg), .A1(n241), .B0(n236), .C0(n74), .Y(ori_rd) );
  OAI221X2 U21 ( .A0(n85), .A1(n235), .B0(n94), .B1(n78), .C0(n95), .Y(
        matr_wr_addr[2]) );
  OAI22X4 U186 ( .A0(n119), .A1(n74), .B0(n104), .B1(n198), .Y(matr_rd) );
  VECTOR_MODE vec ( .ori_X(ori_X_wire), .ori_Y(ori_Y_wire), .start(
        current_state[2]), .reset(n205), .clk(clk), .rot_X(rot_X_vec), .rot_Y(
        rot_Y_vec), .sign_d(sign_d), .done(vec_done) );
  ROTATION_MODE rot ( .ori_X(ori_X_wire), .ori_Y(ori_Y_wire), .start(
        current_state[4]), .reset(n205), .clk(clk), .rot_X(rot_X_rot), .rot_Y(
        rot_Y_rot), .sign_d(sign_d_in), .done(rot_done) );
  DFFRX1 \ori_X_reg_reg[0]  ( .D(N213), .CK(clk), .RN(n206), .Q(ori_X_wire[0]), 
        .QN(n36) );
  DFFRX1 \ori_X_reg_reg[12]  ( .D(N225), .CK(clk), .RN(n207), .Q(
        ori_X_wire[12]), .QN(n24) );
  DFFRX1 \ori_X_reg_reg[1]  ( .D(N214), .CK(clk), .RN(n205), .Q(ori_X_wire[1]), 
        .QN(n35) );
  DFFRX1 \ori_X_reg_reg[2]  ( .D(N215), .CK(clk), .RN(n205), .Q(ori_X_wire[2]), 
        .QN(n34) );
  DFFRX1 \ori_X_reg_reg[3]  ( .D(N216), .CK(clk), .RN(n205), .Q(ori_X_wire[3]), 
        .QN(n33) );
  DFFRX1 \ori_X_reg_reg[4]  ( .D(N217), .CK(clk), .RN(n205), .Q(ori_X_wire[4]), 
        .QN(n32) );
  DFFRX1 \ori_X_reg_reg[5]  ( .D(N218), .CK(clk), .RN(n205), .Q(ori_X_wire[5]), 
        .QN(n31) );
  DFFRX1 \ori_X_reg_reg[6]  ( .D(N219), .CK(clk), .RN(n205), .Q(ori_X_wire[6]), 
        .QN(n30) );
  DFFRX1 \ori_X_reg_reg[7]  ( .D(N220), .CK(clk), .RN(n205), .Q(ori_X_wire[7]), 
        .QN(n29) );
  DFFRX1 \ori_X_reg_reg[8]  ( .D(N221), .CK(clk), .RN(n205), .Q(ori_X_wire[8]), 
        .QN(n28) );
  DFFRX1 \ori_X_reg_reg[9]  ( .D(N222), .CK(clk), .RN(n205), .Q(ori_X_wire[9]), 
        .QN(n27) );
  DFFRX1 \ori_X_reg_reg[10]  ( .D(N223), .CK(clk), .RN(n205), .Q(
        ori_X_wire[10]), .QN(n26) );
  DFFRX1 \ori_X_reg_reg[11]  ( .D(N224), .CK(clk), .RN(n205), .Q(
        ori_X_wire[11]), .QN(n25) );
  DFFRX1 \ori_Y_reg_reg[0]  ( .D(N279), .CK(clk), .RN(n207), .Q(ori_Y_wire[0]), 
        .QN(n49) );
  DFFRX1 \ori_Y_reg_reg[1]  ( .D(N280), .CK(clk), .RN(n206), .Q(ori_Y_wire[1]), 
        .QN(n48) );
  DFFRX1 \ori_Y_reg_reg[2]  ( .D(N281), .CK(clk), .RN(n207), .Q(ori_Y_wire[2]), 
        .QN(n47) );
  DFFRX1 \ori_Y_reg_reg[3]  ( .D(N282), .CK(clk), .RN(n206), .Q(ori_Y_wire[3]), 
        .QN(n46) );
  DFFRX1 \ori_Y_reg_reg[4]  ( .D(N283), .CK(clk), .RN(n206), .Q(ori_Y_wire[4]), 
        .QN(n45) );
  DFFRX1 \ori_Y_reg_reg[5]  ( .D(N284), .CK(clk), .RN(n207), .Q(ori_Y_wire[5]), 
        .QN(n44) );
  DFFRX1 \ori_Y_reg_reg[6]  ( .D(N285), .CK(clk), .RN(n206), .Q(ori_Y_wire[6]), 
        .QN(n43) );
  DFFRX1 \ori_Y_reg_reg[7]  ( .D(N286), .CK(clk), .RN(n207), .Q(ori_Y_wire[7]), 
        .QN(n42) );
  DFFRX1 \ori_Y_reg_reg[8]  ( .D(N287), .CK(clk), .RN(n206), .Q(ori_Y_wire[8]), 
        .QN(n41) );
  DFFRX1 \ori_Y_reg_reg[9]  ( .D(N288), .CK(clk), .RN(n207), .Q(ori_Y_wire[9]), 
        .QN(n40) );
  DFFRX1 \ori_Y_reg_reg[10]  ( .D(N289), .CK(clk), .RN(n206), .Q(
        ori_Y_wire[10]), .QN(n39) );
  DFFRX1 \ori_Y_reg_reg[11]  ( .D(N290), .CK(clk), .RN(n207), .Q(
        ori_Y_wire[11]), .QN(n38) );
  DFFRX1 \ori_Y_reg_reg[12]  ( .D(N291), .CK(clk), .RN(n205), .Q(
        ori_Y_wire[12]), .QN(n37) );
  DFFRX1 \rot_col_index_reg_reg[1]  ( .D(N332), .CK(clk), .RN(n206), .Q(
        rot_col_index_reg[1]), .QN(n56) );
  DFFSX1 \rot_col_index_reg_reg[0]  ( .D(N331), .CK(clk), .SN(n207), .Q(
        rot_col_index_reg[0]), .QN(n57) );
  DFFRX1 \current_state_reg[3]  ( .D(next_state[3]), .CK(clk), .RN(n207), .Q(
        current_state[3]), .QN(n17) );
  DFFSX1 \current_state_reg[0]  ( .D(next_state[0]), .CK(clk), .SN(n206), .Q(
        current_state[0]), .QN(n22) );
  DFFRX1 \current_state_reg[4]  ( .D(next_state[4]), .CK(clk), .RN(n206), .Q(
        current_state[4]), .QN(n11) );
  DFFRX1 \current_state_reg[2]  ( .D(next_state[2]), .CK(clk), .RN(n206), .Q(
        current_state[2]), .QN(n18) );
  DFFRX1 \current_state_reg[1]  ( .D(next_state[1]), .CK(clk), .RN(n206), .Q(
        current_state[1]), .QN(n21) );
  DFFRX1 \col_index_reg_reg[1]  ( .D(N340), .CK(clk), .RN(n207), .Q(
        col_index_reg[1]), .QN(n58) );
  DFFRX1 \col_index_reg_reg[0]  ( .D(N339), .CK(clk), .RN(n207), .Q(
        col_index_reg[0]), .QN(n60) );
  DFFSX1 \counter_vec_reg_reg[1]  ( .D(N313), .CK(clk), .SN(n206), .Q(
        counter_vec_reg[1]), .QN(n54) );
  DFFSX1 \counter_vec_reg_reg[2]  ( .D(N314), .CK(clk), .SN(n207), .Q(
        counter_vec_reg[2]), .QN(n52) );
  DFFRX1 delay_reg_reg ( .D(N156), .CK(clk), .RN(n207), .Q(delay_reg), .QN(n23) );
  DFFRXL \sign_d_reg_reg[7]  ( .D(N166), .CK(clk), .RN(n206), .Q(sign_d_in[7])
         );
  DFFRXL \sign_d_reg_reg[6]  ( .D(N165), .CK(clk), .RN(n207), .Q(sign_d_in[6])
         );
  DFFRXL \sign_d_reg_reg[5]  ( .D(N164), .CK(clk), .RN(n206), .Q(sign_d_in[5])
         );
  DFFRXL \sign_d_reg_reg[4]  ( .D(N163), .CK(clk), .RN(n207), .Q(sign_d_in[4])
         );
  DFFRXL \sign_d_reg_reg[3]  ( .D(N162), .CK(clk), .RN(n206), .Q(sign_d_in[3])
         );
  DFFRXL \sign_d_reg_reg[2]  ( .D(N161), .CK(clk), .RN(n207), .Q(sign_d_in[2])
         );
  DFFRXL \sign_d_reg_reg[1]  ( .D(N160), .CK(clk), .RN(n206), .Q(sign_d_in[1])
         );
  DFFRXL \sign_d_reg_reg[0]  ( .D(N159), .CK(clk), .RN(n207), .Q(sign_d_in[0])
         );
  DFFRXL \current_state_reg[5]  ( .D(next_state[5]), .CK(clk), .RN(n207), .Q(
        current_state[5]) );
  DFFRX2 \counter_vec_reg_reg[0]  ( .D(N312), .CK(clk), .RN(n206), .Q(
        counter_vec_reg[0]), .QN(n55) );
  NOR3X1 U235 ( .A(n246), .B(n211), .C(n217), .Y(n138) );
  NOR2X1 U236 ( .A(n246), .B(n210), .Y(n139) );
  CLKINVX1 U237 ( .A(n107), .Y(n245) );
  INVX3 U238 ( .A(n204), .Y(n205) );
  CLKBUFX3 U239 ( .A(n117), .Y(n208) );
  CLKBUFX3 U240 ( .A(n118), .Y(n209) );
  NOR2X1 U241 ( .A(n21), .B(n23), .Y(n107) );
  OA21XL U242 ( .A0(n107), .A1(n55), .B0(n242), .Y(n112) );
  CLKINVX1 U243 ( .A(n218), .Y(n204) );
  CLKINVX1 U244 ( .A(n92), .Y(n235) );
  CLKBUFX3 U245 ( .A(n138), .Y(n215) );
  CLKBUFX3 U246 ( .A(n138), .Y(n214) );
  CLKBUFX3 U247 ( .A(n139), .Y(n213) );
  CLKBUFX3 U248 ( .A(n139), .Y(n212) );
  INVX3 U249 ( .A(n211), .Y(n210) );
  INVX3 U250 ( .A(n90), .Y(n244) );
  NOR2X1 U251 ( .A(n241), .B(n236), .Y(n92) );
  NOR2BX1 U252 ( .AN(n85), .B(n83), .Y(n115) );
  OA21XL U253 ( .A0(n243), .A1(n245), .B0(n78), .Y(n114) );
  CLKINVX1 U254 ( .A(matr_rd), .Y(n237) );
  INVX3 U255 ( .A(n167), .Y(n239) );
  INVX3 U256 ( .A(n165), .Y(n238) );
  OAI2BB2XL U257 ( .B0(n243), .B1(n245), .A0N(n210), .A1N(n82), .Y(
        next_state[2]) );
  CLKINVX1 U258 ( .A(n129), .Y(n221) );
  CLKBUFX3 U259 ( .A(vec_done), .Y(n211) );
  AND3X2 U260 ( .A(n166), .B(n167), .C(n168), .Y(n135) );
  AND3X2 U261 ( .A(n140), .B(n165), .C(n168), .Y(n169) );
  CLKINVX1 U262 ( .A(n216), .Y(n217) );
  AND2X2 U263 ( .A(n198), .B(n246), .Y(N156) );
  OAI22X2 U264 ( .A0(n112), .A1(n243), .B0(n110), .B1(n244), .Y(ori_addr[0])
         );
  INVX3 U265 ( .A(n91), .Y(n243) );
  NOR2X1 U266 ( .A(n98), .B(n247), .Y(n90) );
  CLKINVX1 U267 ( .A(n104), .Y(n241) );
  NOR2X1 U268 ( .A(n244), .B(n102), .Y(n83) );
  NAND2X1 U269 ( .A(n91), .B(n245), .Y(n85) );
  CLKINVX1 U270 ( .A(n100), .Y(n247) );
  NAND2X2 U271 ( .A(n196), .B(n237), .Y(n166) );
  NAND2X2 U272 ( .A(n197), .B(n237), .Y(n140) );
  NAND2X1 U273 ( .A(n196), .B(matr_rd), .Y(n167) );
  NAND2X1 U274 ( .A(n197), .B(matr_rd), .Y(n165) );
  OAI31XL U275 ( .A0(n217), .A1(n79), .A2(n77), .B0(n80), .Y(next_state[3]) );
  AOI31X1 U276 ( .A0(n211), .A1(n81), .A2(n82), .B0(n83), .Y(n80) );
  CLKINVX1 U277 ( .A(n74), .Y(n246) );
  CLKINVX1 U278 ( .A(n121), .Y(n220) );
  INVX3 U279 ( .A(n76), .Y(done) );
  NOR2X1 U280 ( .A(n75), .B(done), .Y(n82) );
  XNOR2X1 U281 ( .A(n103), .B(n109), .Y(n105) );
  NOR2X1 U282 ( .A(n79), .B(n87), .Y(n129) );
  NAND2X1 U283 ( .A(n102), .B(n90), .Y(n78) );
  NOR2X1 U284 ( .A(n81), .B(n210), .Y(n87) );
  NOR2X1 U285 ( .A(n107), .B(n102), .Y(n198) );
  CLKINVX1 U286 ( .A(n103), .Y(n240) );
  NAND3X1 U287 ( .A(n217), .B(n210), .C(n74), .Y(n168) );
  OAI21XL U288 ( .A0(n216), .A1(n77), .B0(n78), .Y(next_state[4]) );
  CLKINVX1 U289 ( .A(n79), .Y(n219) );
  CLKINVX1 U290 ( .A(n119), .Y(n236) );
  CLKINVX1 U291 ( .A(n109), .Y(n242) );
  NAND3X1 U292 ( .A(n84), .B(n85), .C(n86), .Y(next_state[1]) );
  AOI2BB2X1 U293 ( .B0(n87), .B1(n82), .A0N(n77), .A1N(n219), .Y(n86) );
  AND4X1 U294 ( .A(n88), .B(n75), .C(n77), .D(n84), .Y(next_state[0]) );
  NOR2X1 U295 ( .A(n90), .B(n91), .Y(n88) );
  CLKBUFX3 U296 ( .A(rot_done), .Y(n216) );
  NOR2X1 U297 ( .A(n75), .B(n76), .Y(next_state[5]) );
  INVX3 U298 ( .A(n204), .Y(n206) );
  INVX3 U299 ( .A(n204), .Y(n207) );
  OAI211X1 U300 ( .A0(n169), .A1(n24), .B0(n170), .C0(n171), .Y(N225) );
  AOI2BB2X1 U301 ( .B0(n239), .B1(matr_di[12]), .A0N(n222), .A1N(n166), .Y(
        n170) );
  AOI22X1 U302 ( .A0(rot_X_rot[12]), .A1(n214), .B0(rot_X_vec[12]), .B1(n213), 
        .Y(n171) );
  OAI211X1 U303 ( .A0(n169), .A1(n25), .B0(n172), .C0(n173), .Y(N224) );
  AOI2BB2X1 U304 ( .B0(n239), .B1(matr_di[11]), .A0N(n223), .A1N(n166), .Y(
        n172) );
  AOI22X1 U305 ( .A0(rot_X_rot[11]), .A1(n214), .B0(rot_X_vec[11]), .B1(n212), 
        .Y(n173) );
  OAI211X1 U306 ( .A0(n135), .A1(n37), .B0(n136), .C0(n137), .Y(N291) );
  AOI2BB2X1 U307 ( .B0(matr_di[12]), .B1(n238), .A0N(n140), .A1N(n222), .Y(
        n136) );
  AOI22X1 U308 ( .A0(rot_Y_rot[12]), .A1(n215), .B0(rot_Y_vec[12]), .B1(n213), 
        .Y(n137) );
  OAI211X1 U309 ( .A0(n135), .A1(n38), .B0(n141), .C0(n142), .Y(N290) );
  AOI2BB2X1 U310 ( .B0(matr_di[11]), .B1(n238), .A0N(n140), .A1N(n223), .Y(
        n141) );
  AOI22X1 U311 ( .A0(rot_Y_rot[11]), .A1(n215), .B0(rot_Y_vec[11]), .B1(n212), 
        .Y(n142) );
  OAI211X1 U312 ( .A0(n169), .A1(n26), .B0(n174), .C0(n175), .Y(N223) );
  AOI2BB2X1 U313 ( .B0(n239), .B1(matr_di[10]), .A0N(n224), .A1N(n166), .Y(
        n174) );
  AOI22X1 U314 ( .A0(rot_X_rot[10]), .A1(n214), .B0(rot_X_vec[10]), .B1(n212), 
        .Y(n175) );
  OAI211X1 U315 ( .A0(n169), .A1(n27), .B0(n176), .C0(n177), .Y(N222) );
  AOI2BB2X1 U316 ( .B0(n239), .B1(matr_di[9]), .A0N(n225), .A1N(n166), .Y(n176) );
  AOI22X1 U317 ( .A0(rot_X_rot[9]), .A1(n214), .B0(rot_X_vec[9]), .B1(n212), 
        .Y(n177) );
  OAI211X1 U318 ( .A0(n135), .A1(n39), .B0(n143), .C0(n144), .Y(N289) );
  AOI2BB2X1 U319 ( .B0(matr_di[10]), .B1(n238), .A0N(n140), .A1N(n224), .Y(
        n143) );
  AOI22X1 U320 ( .A0(rot_Y_rot[10]), .A1(n215), .B0(rot_Y_vec[10]), .B1(n213), 
        .Y(n144) );
  OAI211X1 U321 ( .A0(n135), .A1(n40), .B0(n145), .C0(n146), .Y(N288) );
  AOI2BB2X1 U322 ( .B0(matr_di[9]), .B1(n238), .A0N(n140), .A1N(n225), .Y(n145) );
  AOI22X1 U323 ( .A0(rot_Y_rot[9]), .A1(n215), .B0(rot_Y_vec[9]), .B1(n213), 
        .Y(n146) );
  OAI211X1 U324 ( .A0(n169), .A1(n28), .B0(n178), .C0(n179), .Y(N221) );
  AOI2BB2X1 U325 ( .B0(n239), .B1(matr_di[8]), .A0N(n226), .A1N(n166), .Y(n178) );
  AOI22X1 U326 ( .A0(rot_X_rot[8]), .A1(n214), .B0(rot_X_vec[8]), .B1(n212), 
        .Y(n179) );
  OAI211X1 U327 ( .A0(n169), .A1(n29), .B0(n180), .C0(n181), .Y(N220) );
  AOI2BB2X1 U328 ( .B0(n239), .B1(matr_di[7]), .A0N(n227), .A1N(n166), .Y(n180) );
  AOI22X1 U329 ( .A0(rot_X_rot[7]), .A1(n214), .B0(rot_X_vec[7]), .B1(n212), 
        .Y(n181) );
  OAI211X1 U330 ( .A0(n135), .A1(n41), .B0(n147), .C0(n148), .Y(N287) );
  AOI2BB2X1 U331 ( .B0(matr_di[8]), .B1(n238), .A0N(n140), .A1N(n226), .Y(n147) );
  AOI22X1 U332 ( .A0(rot_Y_rot[8]), .A1(n215), .B0(rot_Y_vec[8]), .B1(n213), 
        .Y(n148) );
  OAI211X1 U333 ( .A0(n135), .A1(n42), .B0(n149), .C0(n150), .Y(N286) );
  AOI2BB2X1 U334 ( .B0(matr_di[7]), .B1(n238), .A0N(n140), .A1N(n227), .Y(n149) );
  AOI22X1 U335 ( .A0(rot_Y_rot[7]), .A1(n215), .B0(rot_Y_vec[7]), .B1(n213), 
        .Y(n150) );
  OAI211X1 U336 ( .A0(n169), .A1(n30), .B0(n182), .C0(n183), .Y(N219) );
  AOI2BB2X1 U337 ( .B0(n239), .B1(matr_di[6]), .A0N(n228), .A1N(n166), .Y(n182) );
  AOI22X1 U338 ( .A0(rot_X_rot[6]), .A1(n214), .B0(rot_X_vec[6]), .B1(n212), 
        .Y(n183) );
  OAI211X1 U339 ( .A0(n169), .A1(n31), .B0(n184), .C0(n185), .Y(N218) );
  AOI2BB2X1 U340 ( .B0(n239), .B1(matr_di[5]), .A0N(n229), .A1N(n166), .Y(n184) );
  AOI22X1 U341 ( .A0(rot_X_rot[5]), .A1(n214), .B0(rot_X_vec[5]), .B1(n212), 
        .Y(n185) );
  OAI211X1 U342 ( .A0(n135), .A1(n43), .B0(n151), .C0(n152), .Y(N285) );
  AOI2BB2X1 U343 ( .B0(matr_di[6]), .B1(n238), .A0N(n140), .A1N(n228), .Y(n151) );
  AOI22X1 U344 ( .A0(rot_Y_rot[6]), .A1(n215), .B0(rot_Y_vec[6]), .B1(n213), 
        .Y(n152) );
  OAI211X1 U345 ( .A0(n135), .A1(n44), .B0(n153), .C0(n154), .Y(N284) );
  AOI2BB2X1 U346 ( .B0(matr_di[5]), .B1(n238), .A0N(n140), .A1N(n229), .Y(n153) );
  AOI22X1 U347 ( .A0(rot_Y_rot[5]), .A1(n215), .B0(rot_Y_vec[5]), .B1(n213), 
        .Y(n154) );
  OAI211X1 U348 ( .A0(n169), .A1(n32), .B0(n186), .C0(n187), .Y(N217) );
  AOI2BB2X1 U349 ( .B0(n239), .B1(matr_di[4]), .A0N(n230), .A1N(n166), .Y(n186) );
  AOI22X1 U350 ( .A0(rot_X_rot[4]), .A1(n214), .B0(rot_X_vec[4]), .B1(n212), 
        .Y(n187) );
  OAI211X1 U351 ( .A0(n169), .A1(n33), .B0(n188), .C0(n189), .Y(N216) );
  AOI2BB2X1 U352 ( .B0(n239), .B1(matr_di[3]), .A0N(n231), .A1N(n166), .Y(n188) );
  AOI22X1 U353 ( .A0(rot_X_rot[3]), .A1(n214), .B0(rot_X_vec[3]), .B1(n212), 
        .Y(n189) );
  OAI211X1 U354 ( .A0(n135), .A1(n45), .B0(n155), .C0(n156), .Y(N283) );
  AOI2BB2X1 U355 ( .B0(matr_di[4]), .B1(n238), .A0N(n140), .A1N(n230), .Y(n155) );
  AOI22X1 U356 ( .A0(rot_Y_rot[4]), .A1(n215), .B0(rot_Y_vec[4]), .B1(n213), 
        .Y(n156) );
  OAI211X1 U357 ( .A0(n135), .A1(n46), .B0(n157), .C0(n158), .Y(N282) );
  AOI2BB2X1 U358 ( .B0(matr_di[3]), .B1(n238), .A0N(n140), .A1N(n231), .Y(n157) );
  AOI22X1 U359 ( .A0(rot_Y_rot[3]), .A1(n215), .B0(rot_Y_vec[3]), .B1(n213), 
        .Y(n158) );
  OAI211X1 U360 ( .A0(n169), .A1(n34), .B0(n190), .C0(n191), .Y(N215) );
  AOI2BB2X1 U361 ( .B0(n239), .B1(matr_di[2]), .A0N(n232), .A1N(n166), .Y(n190) );
  AOI22X1 U362 ( .A0(rot_X_rot[2]), .A1(n214), .B0(rot_X_vec[2]), .B1(n212), 
        .Y(n191) );
  OAI211X1 U363 ( .A0(n169), .A1(n35), .B0(n192), .C0(n193), .Y(N214) );
  AOI2BB2X1 U364 ( .B0(n239), .B1(matr_di[1]), .A0N(n233), .A1N(n166), .Y(n192) );
  AOI22X1 U365 ( .A0(rot_X_rot[1]), .A1(n214), .B0(rot_X_vec[1]), .B1(n212), 
        .Y(n193) );
  OAI211X1 U366 ( .A0(n135), .A1(n47), .B0(n159), .C0(n160), .Y(N281) );
  AOI2BB2X1 U367 ( .B0(matr_di[2]), .B1(n238), .A0N(n140), .A1N(n232), .Y(n159) );
  AOI22X1 U368 ( .A0(rot_Y_rot[2]), .A1(n215), .B0(rot_Y_vec[2]), .B1(n213), 
        .Y(n160) );
  OAI211X1 U369 ( .A0(n135), .A1(n48), .B0(n161), .C0(n162), .Y(N280) );
  AOI2BB2X1 U370 ( .B0(matr_di[1]), .B1(n238), .A0N(n140), .A1N(n233), .Y(n161) );
  AOI22X1 U371 ( .A0(rot_Y_rot[1]), .A1(n215), .B0(rot_Y_vec[1]), .B1(n213), 
        .Y(n162) );
  OAI211X1 U372 ( .A0(n135), .A1(n49), .B0(n163), .C0(n164), .Y(N279) );
  AOI2BB2X1 U373 ( .B0(matr_di[0]), .B1(n238), .A0N(n140), .A1N(n234), .Y(n163) );
  AOI22X1 U374 ( .A0(rot_Y_rot[0]), .A1(n215), .B0(rot_Y_vec[0]), .B1(n213), 
        .Y(n164) );
  OAI211X1 U375 ( .A0(n169), .A1(n36), .B0(n194), .C0(n195), .Y(N213) );
  AOI2BB2X1 U376 ( .B0(n239), .B1(matr_di[0]), .A0N(n234), .A1N(n166), .Y(n194) );
  AOI22X1 U377 ( .A0(rot_X_rot[0]), .A1(n214), .B0(rot_X_vec[0]), .B1(n212), 
        .Y(n195) );
  CLKINVX1 U378 ( .A(ori_di[11]), .Y(n223) );
  CLKINVX1 U379 ( .A(ori_di[10]), .Y(n224) );
  CLKINVX1 U380 ( .A(ori_di[9]), .Y(n225) );
  CLKINVX1 U381 ( .A(ori_di[8]), .Y(n226) );
  CLKINVX1 U382 ( .A(ori_di[7]), .Y(n227) );
  CLKINVX1 U383 ( .A(ori_di[6]), .Y(n228) );
  CLKINVX1 U384 ( .A(ori_di[5]), .Y(n229) );
  CLKINVX1 U385 ( .A(ori_di[4]), .Y(n230) );
  CLKINVX1 U386 ( .A(ori_di[3]), .Y(n231) );
  CLKINVX1 U387 ( .A(ori_di[2]), .Y(n232) );
  CLKINVX1 U388 ( .A(ori_di[1]), .Y(n233) );
  CLKINVX1 U389 ( .A(ori_di[12]), .Y(n222) );
  CLKINVX1 U390 ( .A(ori_di[0]), .Y(n234) );
  OAI21X2 U391 ( .A0(n92), .A1(n21), .B0(n247), .Y(matr_wr) );
  OAI22X2 U392 ( .A0(n114), .A1(n240), .B0(n115), .B1(n54), .Y(ori_addr[1]) );
  OAI22X2 U393 ( .A0(n114), .A1(n94), .B0(n115), .B1(n52), .Y(ori_addr[2]) );
  OAI22X2 U394 ( .A0(n243), .A1(n60), .B0(n244), .B1(n57), .Y(ori_addr[3]) );
  OAI22X2 U395 ( .A0(n243), .A1(n58), .B0(n244), .B1(n56), .Y(ori_addr[4]) );
  OAI22X2 U396 ( .A0(n208), .A1(n49), .B0(n209), .B1(n36), .Y(matr_do[0]) );
  OAI22X2 U397 ( .A0(n208), .A1(n48), .B0(n209), .B1(n35), .Y(matr_do[1]) );
  OAI22X2 U398 ( .A0(n208), .A1(n47), .B0(n209), .B1(n34), .Y(matr_do[2]) );
  OAI22X2 U399 ( .A0(n208), .A1(n46), .B0(n209), .B1(n33), .Y(matr_do[3]) );
  OAI22X2 U400 ( .A0(n208), .A1(n45), .B0(n209), .B1(n32), .Y(matr_do[4]) );
  OAI22X2 U401 ( .A0(n208), .A1(n44), .B0(n209), .B1(n31), .Y(matr_do[5]) );
  OAI22X2 U402 ( .A0(n208), .A1(n43), .B0(n209), .B1(n30), .Y(matr_do[6]) );
  OAI22X2 U403 ( .A0(n208), .A1(n42), .B0(n209), .B1(n29), .Y(matr_do[7]) );
  OAI22X2 U404 ( .A0(n208), .A1(n41), .B0(n209), .B1(n28), .Y(matr_do[8]) );
  OAI22X2 U405 ( .A0(n208), .A1(n40), .B0(n209), .B1(n27), .Y(matr_do[9]) );
  OAI22X2 U406 ( .A0(n208), .A1(n39), .B0(n209), .B1(n26), .Y(matr_do[10]) );
  OAI22X2 U407 ( .A0(n208), .A1(n38), .B0(n209), .B1(n25), .Y(matr_do[11]) );
  OAI22X2 U408 ( .A0(n208), .A1(n37), .B0(n209), .B1(n24), .Y(matr_do[12]) );
  NOR3X2 U409 ( .A(n98), .B(current_state[3]), .C(n21), .Y(n91) );
  NOR3X2 U410 ( .A(n54), .B(counter_vec_reg[0]), .C(n52), .Y(n104) );
  NOR2X1 U411 ( .A(n17), .B(current_state[1]), .Y(n100) );
  OR4X1 U412 ( .A(current_state[5]), .B(current_state[0]), .C(current_state[2]), .D(current_state[4]), .Y(n98) );
  NAND2X1 U413 ( .A(delay_reg), .B(matr_wr), .Y(n117) );
  NAND2X1 U414 ( .A(matr_wr), .B(n23), .Y(n118) );
  AOI32X1 U415 ( .A0(n96), .A1(n241), .A2(n91), .B0(n83), .B1(
        counter_vec_reg[2]), .Y(n95) );
  OAI21XL U416 ( .A0(n240), .A1(n242), .B0(n94), .Y(n96) );
  OAI22X2 U417 ( .A0(n110), .A1(n244), .B0(n111), .B1(n243), .Y(
        matr_wr_addr[0]) );
  AOI22X1 U418 ( .A0(n112), .A1(n241), .B0(n104), .B1(n113), .Y(n111) );
  OAI21XL U419 ( .A0(n60), .A1(n245), .B0(n108), .Y(n113) );
  OAI22X2 U420 ( .A0(n92), .A1(n243), .B0(rot_col_index_reg[0]), .B1(n244), 
        .Y(matr_wr_addr[3]) );
  OAI22X2 U421 ( .A0(n92), .A1(n243), .B0(n93), .B1(n244), .Y(matr_wr_addr[4])
         );
  OA21XL U422 ( .A0(n57), .A1(n56), .B0(n81), .Y(n93) );
  NOR2X2 U423 ( .A(current_state[3]), .B(current_state[1]), .Y(n74) );
  NOR2X2 U424 ( .A(n17), .B(n23), .Y(n102) );
  NOR2X2 U425 ( .A(n97), .B(n98), .Y(matr_wr_addr[1]) );
  AOI32X1 U426 ( .A0(n99), .A1(n17), .A2(current_state[1]), .B0(n100), .B1(
        n101), .Y(n97) );
  OAI2BB2XL U427 ( .B0(n102), .B1(n54), .A0N(n103), .A1N(n102), .Y(n101) );
  OAI222XL U428 ( .A0(n104), .A1(n105), .B0(n241), .B1(n106), .C0(n107), .C1(
        n235), .Y(n99) );
  NOR3X2 U429 ( .A(n57), .B(n56), .C(n217), .Y(n79) );
  XNOR2X1 U430 ( .A(counter_vec_reg[1]), .B(n55), .Y(n103) );
  NAND4X1 U431 ( .A(n133), .B(n134), .C(n79), .D(n52), .Y(n121) );
  XNOR2X1 U432 ( .A(col_index_reg[1]), .B(counter_vec_reg[1]), .Y(n134) );
  XNOR2X1 U433 ( .A(col_index_reg[0]), .B(counter_vec_reg[0]), .Y(n133) );
  XNOR2X1 U434 ( .A(n116), .B(n52), .Y(n94) );
  NAND2X1 U435 ( .A(counter_vec_reg[0]), .B(counter_vec_reg[1]), .Y(n116) );
  XNOR2X1 U436 ( .A(n102), .B(counter_vec_reg[0]), .Y(n110) );
  OAI221XL U437 ( .A0(n54), .A1(n221), .B0(n129), .B1(n103), .C0(n121), .Y(
        N313) );
  OAI221XL U438 ( .A0(n52), .A1(n221), .B0(n129), .B1(n130), .C0(n121), .Y(
        N314) );
  XNOR2X1 U439 ( .A(counter_vec_reg[2]), .B(n131), .Y(n130) );
  NOR2X1 U440 ( .A(counter_vec_reg[0]), .B(counter_vec_reg[1]), .Y(n131) );
  NAND4X1 U441 ( .A(counter_vec_reg[0]), .B(col_index_reg[0]), .C(n211), .D(
        n120), .Y(n76) );
  NOR3X1 U442 ( .A(n58), .B(counter_vec_reg[2]), .C(counter_vec_reg[1]), .Y(
        n120) );
  NAND4X1 U443 ( .A(current_state[4]), .B(n89), .C(n22), .D(n18), .Y(n77) );
  NAND4X1 U444 ( .A(current_state[2]), .B(n89), .C(n22), .D(n11), .Y(n75) );
  NOR2X1 U445 ( .A(n246), .B(current_state[5]), .Y(n89) );
  OAI22XL U446 ( .A0(n121), .A1(n123), .B0(n220), .B1(n124), .Y(N332) );
  XNOR2X1 U447 ( .A(n60), .B(n122), .Y(n123) );
  AOI21X1 U448 ( .A0(n122), .A1(n79), .B0(n125), .Y(n124) );
  XNOR2X1 U449 ( .A(rot_col_index_reg[1]), .B(n126), .Y(n125) );
  XNOR2X1 U450 ( .A(n60), .B(n220), .Y(N339) );
  OAI22XL U451 ( .A0(n60), .A1(n121), .B0(n220), .B1(n127), .Y(N331) );
  AOI2BB1X1 U452 ( .A0N(col_index_reg[0]), .A1N(n219), .B0(n128), .Y(n127) );
  XNOR2X1 U453 ( .A(n217), .B(rot_col_index_reg[0]), .Y(n128) );
  NOR2X1 U454 ( .A(n245), .B(counter_vec_reg[0]), .Y(n109) );
  NOR2X1 U455 ( .A(col_index_reg[1]), .B(col_index_reg[0]), .Y(n119) );
  NAND2X1 U456 ( .A(n60), .B(n245), .Y(n108) );
  NOR2X1 U457 ( .A(n220), .B(n132), .Y(N312) );
  XNOR2X1 U458 ( .A(counter_vec_reg[0]), .B(n221), .Y(n132) );
  NAND2X1 U459 ( .A(col_index_reg[1]), .B(n108), .Y(n106) );
  AO22X1 U460 ( .A0(n121), .A1(col_index_reg[1]), .B0(n122), .B1(n220), .Y(
        N340) );
  XOR2X1 U461 ( .A(col_index_reg[1]), .B(col_index_reg[0]), .Y(n122) );
  NAND4X1 U462 ( .A(current_state[0]), .B(n89), .C(n18), .D(n11), .Y(n84) );
  NAND2X1 U463 ( .A(n56), .B(n57), .Y(n81) );
  NOR2X1 U464 ( .A(n23), .B(n74), .Y(n197) );
  NOR2X1 U465 ( .A(n74), .B(delay_reg), .Y(n196) );
  NAND2X1 U466 ( .A(n216), .B(rot_col_index_reg[0]), .Y(n126) );
  AO22X1 U467 ( .A0(sign_d_in[0]), .A1(n210), .B0(sign_d[0]), .B1(n211), .Y(
        N159) );
  AO22X1 U468 ( .A0(sign_d_in[7]), .A1(n210), .B0(sign_d[7]), .B1(n211), .Y(
        N166) );
  AO22X1 U469 ( .A0(sign_d_in[6]), .A1(n210), .B0(sign_d[6]), .B1(n211), .Y(
        N165) );
  AO22X1 U470 ( .A0(sign_d_in[5]), .A1(n210), .B0(sign_d[5]), .B1(vec_done), 
        .Y(N164) );
  AO22X1 U471 ( .A0(sign_d_in[4]), .A1(n210), .B0(sign_d[4]), .B1(vec_done), 
        .Y(N163) );
  AO22X1 U472 ( .A0(sign_d_in[3]), .A1(n210), .B0(sign_d[3]), .B1(vec_done), 
        .Y(N162) );
  AO22X1 U473 ( .A0(sign_d_in[2]), .A1(n210), .B0(sign_d[2]), .B1(vec_done), 
        .Y(N161) );
  AO22X1 U474 ( .A0(sign_d_in[1]), .A1(n210), .B0(sign_d[1]), .B1(vec_done), 
        .Y(N160) );
  CLKBUFX3 U475 ( .A(reset), .Y(n218) );
  CLKBUFX3 U476 ( .A(ori_addr[4]), .Y(matr_rd_addr[4]) );
  CLKBUFX3 U477 ( .A(ori_addr[3]), .Y(matr_rd_addr[3]) );
  CLKBUFX3 U478 ( .A(ori_addr[2]), .Y(matr_rd_addr[2]) );
  CLKBUFX3 U479 ( .A(ori_addr[1]), .Y(matr_rd_addr[1]) );
  CLKBUFX3 U480 ( .A(ori_addr[0]), .Y(matr_rd_addr[0]) );
endmodule

