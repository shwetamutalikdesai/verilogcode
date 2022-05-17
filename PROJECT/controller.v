`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    12:09:18 05/16/2022 
// Design Name: 
// Module Name:    controller 
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
module controller(ldM,ldQ,eqz1,neqz1,eqz2,neqz2,yes1,no1,yes2,no2,clk,done,
start);
input clk,start,no1,yes1,no2,yes2,eqz1,neqz1,eqz2,neqz2;
output reg [31:0] ldM,ldQ,done;
reg [3:0] state;
parameter s0=4'b0000, s1=4'b0001, s2=4'b0010, s3=4'b0011, s4=4'b0100, s5=4'b0101, s6=4'b0110, s7=4'b0111, s8=4'b1000, s9=4'b1001, s10=4'b1010;
always@(posedge clk)
begin
case (state)
s0: if(start)state <= s1;
s1: state <= s2;
s2: state <= s3;
s3: #2 if(eqz1) state <= s4;
      else if (neqz1) state <= s6;
s4: #2 if(eqz2) state <= 10;
     else if(neqz2) state <= s5;
s5:  state <= s10;
s6: #2 if(yes1)state <= s7;
      else if(no1)state <= s9;
s7: #2 if (yes2) state <= s8;
     else if(no2)state <= s9;
s8: state <= s10;
s9: state <= s10;
s10: state <= s10;
default: state <= s0;
endcase
end
 always@(state)
begin
case(state)
s0: begin#1 ldM=0;ldQ=0;end
s1: begin#1 ldM=1;end
s2: begin#1 ldM=0;ldQ=1;end
s3: begin#1 ldM=1;ldQ=1;end
s4: begin#1 ldM=1;ldQ=1;end
s5: begin#1 ldM=1;ldQ=1;end
s6: begin#1 ldM=1;ldQ=0;end
s7: begin#1 ldM=0;ldQ=1;end
s8: begin#1 ldM=1;ldQ=1;end
s9: begin#1 ldM=1;ldQ=0;end
s10: begin#1 ldM=0;ldQ=0;end
default: begin#1 ldM=0;ldQ=0;end
endcase
end




















endmodule
