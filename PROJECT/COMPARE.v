`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    12:31:06 05/16/2022 
// Design Name: 
// Module Name:    COMPARE 
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
module COMPARE(eqz1,neqz1,eqz2,neqz2,yes1,yes2,no1,no2,z,s,data1,data2);
input [31:0] data1,data2;
output eqz1,neqz1,eqz2,neqz2,yes1,yes2,no1,no2;
assign eqz1 = z==0;
assign neqz1 = z<0;
assign eqz2 = s==0;
assign neqz2 = s<0;
assign yes1 = data1>=0;
assign no1 = data1<0;
assign yes2 = data2<0;
assign n02 = data2>0;
endmodule