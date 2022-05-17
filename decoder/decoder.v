`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    09:20:08 03/11/2022 
// Design Name: 
// Module Name:    decoder 
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
module decoder(a,b,c,d0,d1,d2,d3,d4,d5,d6,d7);
    input a;
    input b;
    input c;
    output d0;
    output d1;
    output d2;
    output d3;
    output d4;
    output d5;
    output d6;
    output d7;
    assign d0=(~a&~b&~c);
	 assign d1=(~a&~b&c);
	 assign d2=(~a&b&~c);
	 assign d3=(~a&b&c);
	 assign d4=(a&~b&~c);
	 assign d5=(a&~b&c);
	 assign d6=(a&b&~c);
	 assign d7=(a&b&c);
	
















endmodule
