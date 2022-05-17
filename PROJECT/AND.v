`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    12:31:42 05/16/2022 
// Design Name: 
// Module Name:    AND 
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
module AND(s,eqz1,t);
input [31:0]eqz1;
input t;
output reg [31:0] s;
assign t=1;
assign s=1&eqz1;
endmodule  
