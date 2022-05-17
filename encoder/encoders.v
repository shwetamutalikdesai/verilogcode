`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    09:02:15 03/11/2022 
// Design Name: 
// Module Name:    encoders 
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
module encoders(y3,y2,y1,y0,a1,a0);
    input y3,y2,y1,y0;
    output a1,a0;
	 wire u1,u2,u3,y2bar;
	 not n1(y2bar,y2);
	 and a2(u1,y2bar,y1);
	 or o1(a1,y3,y2);
	 or o2(a0,y3,u1);
   


endmodule
