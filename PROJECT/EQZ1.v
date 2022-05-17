`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    15:27:34 05/16/2022 
// Design Name: 
// Module Name:    EQZ1 
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
module EQZ1(yes1,no1,ldM);
input [31:0] ldM;
output reg [31:0] yes1,no1;
assign no1= ldM >= 0;
assign yes1= ldM < 0;



endmodule
