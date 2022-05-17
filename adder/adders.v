`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    14:51:14 03/10/2022 
// Design Name: 
// Module Name:    adders 
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
module adders(a,b,cin,sum,cout);
    input a,b,cin;
    output sum,cout;
	 xor x1(s1,a,b);
	 xor x2(sum,s1,cin);
	 and a1(s2,a,b);
	 and a2(s3,b,cin);
	 and a3(s4,cin,a);
	 or o1(s5,s2,s3);
	 or o2(cout,s5,s4);


endmodule
