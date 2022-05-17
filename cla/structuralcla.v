`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    16:38:35 04/08/2022 
// Design Name: 
// Module Name:    structuralcla 
// Project Name: 
// Target Devices: 
// Tool versions: 
// Description: 
//
// Dependencies: 
//
// Revision: 
// Revision 0.01 - File Created
// Additional Comments: 
//
//////////////////////////////////////////////////////////////////////////////////

module structuralcla (a,b,cin,s,c3);
input[3:0] a,b;
input cin;
output [3:0]s;
output  c3;
wire p0,p1,p2,p3,p4,p5,p6,p7,g0,g1,g2,g3,g4,g5,g6,g7;
wire c0,c1,c2;
or o1(p0,a[0],b[0]);
or o2(p1,a[1],b[1]);
or o3(p2,a[2],b[2]);
or o4(p3,a[3],b[3]);
and a1(g0,a[0],b[0]);
and a2(g1,a[1],b[1]);
and a3(g2,a[2],b[2]);
and a4(g3,a[3],b[3]); 



and a5(g4,p0,cin);
and a6(g5,p1,c0);
and a7(g6,p2,c1);
and a8(g7,p3,c3 );


or  o5(c0,g0,g4);	
or  o6(c1,g1,g5);
or  o7(c2,g2,g6);
or  o8(c3,g3,g7); 

xor x1(p4,p0,g0);
xor x2(s[0],p4,cin);
xor x3(p5,p1,g1);
xor x4(s[1],p5,c0);
xor x5(p6,p2,g2);
xor x6(s[2],p6,c1);
xor x7(p7,p3,g3);
xor x8(s[3],p7,c2);

endmodule
