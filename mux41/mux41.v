`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    09:39:52 03/09/2022 
// Design Name: 
// Module Name:    mux41 
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
module mux41(
    input s0,
    input s1,
    input d0,
    input d1,
    input d2,
    input d3,
    output y
    );
	 assign y=(d0&~s0&~s1)|(d1&~s0&s1)|(d2&s0&~s1)|(d3&s0&s1);


endmodule
