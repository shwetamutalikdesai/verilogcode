`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    11:51:01 05/16/2022 
// Design Name: 
// Module Name:    mul_datapath 
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
module mul_datapath(ldM,ldQ,data_in,clk,no1,yes1,no2,yes2,eqz1,neqz1,eqz2,neqz2,done); 
input [31:0] data_in;
input  ldM,ldQ;
input clk;
output  no1,yes1,no2,yes2,eqz1,neqz1,eqz2,neqz2,done;

wire [31:0] x,y,z,s;
wire [31:0] unextendedM;
wire [63:0] extendedM;

PIPO M1(x,data_in,ldM,clk);
PIPO Q1(y,data_in,ldQ,clk);
XOR X1(z,x,y);
AND A1(s,eqz1,neqz1);

EQZ3 c1(eqz1,neqz1,z);
EQZ4 c2(eqz2,neqz2,s);
EQZ1 A(yes1,no1,neqz1);
EQZ2 B(yes2,no2,yes1);

COMPLEMENTOR C(dout,yes2,neqz2);

SIGNEXTENDER S1(unextendedM,extendedM);

endmodule





 


