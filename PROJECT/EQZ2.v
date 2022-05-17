`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    10:24:11 05/17/2022 
// Design Name: 
// Module Name:    EQZ2 
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
module EQZ2(yes2,no2,ldQ);
input [31:0] ldQ;
output reg [31:0] yes2,no2;
assign yes2= ldQ < 0;
assign no2= ldQ >= 0;


endmodule
