`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    09:28:29 03/11/2022 
// Design Name: 
// Module Name:    decoderb 
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
module decoderb(a,b,c,d0,d1,d2,d3,d4,d5,d6,d7);
    input a;
    input b;
    input c;
    output reg    d0;
    output reg d1;
    output reg d2;
    output reg d3;
    output reg d4;
    output reg d5;
    output reg d6;
    output reg d7;
	 always @ (a,b,c)
	 begin
	  d0=(~a&~b&~c);
	 d1=(~a&~b&c);
	  d2=(~a&b&~c);
	  d3=(~a&b&c);
	  d4=(a&~b&~c);
	  d5=(a&~b&c);
	  d6=(a&b&~c);
	  d7=(a&b&c);
	end

endmodule
