`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    14:41:43 03/10/2022 
// Design Name: 
// Module Name:    adderb 
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
module adderb(a,b,cin,sum,cout);
    input a,b,cin;
    output reg sum,cout;
    always @ (a,b,cin)
	 begin
	 sum=a^b^cin;
	 cout=(a&b)|(b&cin)|(cin&a);
	 end


endmodule
