`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    11:35:56 05/17/2022 
// Design Name: 
// Module Name:    SIGNEXTENDER 
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
module SIGNEXTENDER(unextendedM,extendedM,clk);
input [31:0] unextendedM;
input clk;
output reg [63:0] extendedM;
always@(posedge clk)
begin
extendedM <= $signed(unextendedM);
end




endmodule
