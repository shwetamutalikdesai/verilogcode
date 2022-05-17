`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    15:24:43 05/16/2022 
// Design Name: 
// Module Name:    EQZ4 
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
module EQZ4(eqz2,neqz2,s);
input [31:0]s;
output reg [31:0]eqz2,neqz2;
assign eqz2= s==0;
assign neqz2= s==1;
    


endmodule
