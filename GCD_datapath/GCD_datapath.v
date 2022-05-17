`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    08:22:38 03/21/2022 
// Design Name: 
// Module Name:    GCD_datapath 
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
module GCD_datapath(gt,lt,eq,ldA,ldB,sel1,sel2,sel_in,data_in,clk);
  input ldA,ldB,sel1,sel2,sel_in,clk;
  input [15:0] data_in;
  output gt,lt,eq;
  wire [15:0] Aout,Bout,x,y,Bus,Subout;
  
  PIPO A(Aout,Bus,ldA,clk);
  PIPO B(Bout,Bus,ldB,clk);
  MUX MUX_in1(x,Aout,Bout,sel1);
  MUX MUX_in2(y,Aout,Bout,sel2);
  MUX MUX_load(Bus,Subout,data_in,sel_in);
  SUB SB(Subout,x,y);
  COMPARE COMP(lt,gt,eq,Aout,Bout);


endmodule
