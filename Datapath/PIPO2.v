`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    11:19:51 03/16/2022 
// Design Name: 
// Module Name:    PIPO2 
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
module PIPO2(dout,din,ld,clr,clk);
    input [15:0] din;
    input ld;
    input clr;
    input clk;
    output reg [15:0] dout;
	 always @ (posedge clk)
	 if (clr) dout <= 16'b0;
	 else if (ld) dout <= din;
    


endmodule
