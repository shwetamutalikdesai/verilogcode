`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    14:57:51 03/07/2022 
// Design Name: 
// Module Name:    clab 
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
module clab(
    input [3:0] a,
    input [3:0] b,
    input cin,
    output reg [3:0] sum,
    output reg cout
    );
	 reg p0,p1,p2,p3,g0,g1,g2,g3;
	 reg c1,c2,c3;
	 always @ (a,b,cin)
	 begin
	  p0=a[0]|b[0];
	  p1=a[1]|b[1];
	  p2=a[2]|b[2];
	  p3=a[3]|b[3];
	  g0=a[0]&b[0];
	  g1=a[1]&b[1];
	  g2=a[2]&b[2];
	  g3=a[3]&b[3];
	  c1=g0|(p0&cin);
	  c2=g1|(p1&g0);
	  c3=g2|(p2&g1);
	  cout=g3|(p3&g2);
	  sum[0]=(p0^g0)^cin;
	  sum[1]=(p1^g1)^c1;
	  sum[2]=(p2^g2)^c2;
	  sum[3]=(p3^g3)^c3;
	  end





endmodule
