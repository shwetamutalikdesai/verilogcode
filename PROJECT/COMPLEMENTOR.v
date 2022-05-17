`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    12:33:01 05/16/2022 
// Design Name: 
// Module Name:    COMPLEMENTOR 
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
module COMPLEMENTOR(dout,neqz2,yes2);
input [31:0] neqz2,yes2;
output reg [31:0] dout;
assign dout = (~neqz2)+1;
assign dout = (~yes2)+1;
endmodule
