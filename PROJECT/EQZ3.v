`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    13:58:06 05/16/2022 
// Design Name: 
// Module Name:    EQZ3 
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
module EQZ3(eqz1,neqz1,z);
input [31:0] z;
output reg [31:0]eqz1,neqz1;
assign eqz1= z==0;
assign neqz1= z==1;


    


endmodule
