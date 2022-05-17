`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    10:53:56 05/17/2022 
// Design Name: 
// Module Name:    mul_test 
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
module mul_test;
reg[31:0] data_in;
reg clk,start;
wire done;
 reg[31:0] M,Q;
 mul_datapath DP(ldM,ldQ,data_in,clk,no1,yes1,no2,yes2,eqz1,eqz2,neqz1,neqz2,done);
 controller CON(ldM,ldQ,eqz1,neqz1,eqz2,neqz2,yes1,no1,yes2,no2,clk,done,start);
 
 initial
 begin
 clk = 1'b0;
 #3 start = 1'b1;
 #1000 $finish;
 end
 
 always #5 clk = ~clk;
 initial
 begin
 #10 data_in=2;
 #10 data_in=3; 
 end 
 
 initial
 begin
 $monitor($time,"%d", done);
 $dumpfile("mul.vcd"); $dumpvars(0,mul_test);
 end


endmodule
