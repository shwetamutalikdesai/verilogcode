`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    11:10:34 03/16/2022 
// Design Name: 
// Module Name:    Datapath 
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
module Datapath(eqz,LdA,LdB,LdP,clrP,decB,data_in,clk);
    input LdA;
    input LdB;
    input LdP;
    input clrP;
    input decB;
    input [15:0] data_in;
    input clk;
    output eqz;
    wire [15:0] x,y,z,Bout,Bus;
	 PIPO1 A(x,Bus,LdA,clk);
	 PIPO2 P(y,z,LdP,clrP,clk);
	 CNTR B(Bout,Bus,LdB,decB,clk);
	 ADD AD(z,x,y);
	 EQZ CMP(eqz,Bout);


endmodule
