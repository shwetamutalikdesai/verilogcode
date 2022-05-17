`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    12:32:15 05/16/2022 
// Design Name: 
// Module Name:    PIPO 
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
module PIPO(z,din,ld,clk);
input [31:0] din;
input ld,clk;
output reg [31:0] z;
always@(posedge clk)
if(ld) z<=din;
endmodule

