`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    12:05:09 03/26/2022 
// Design Name: 
// Module Name:    tb_Sequence_Detector_Moore_FSM_Verilog 
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
module tb_Sequence_Detector_Moore_FSM_Verilog;

 reg sequence_in;
 reg clock;
 reg reset;
 wire detector_out;
 SD_MOORE_Verilog uut (
  .sequence_in(sequence_in), 
  .clock(clock), 
  .reset(reset), 
  .detector_out(detector_out)
 );
 initial begin
 clock = 0;
 forever #5 clock = ~clock;
 end 
 initial begin
 
  sequence_in = 0;
  reset = 1;
  
  #30;
      reset = 0;
  #40;
  sequence_in = 1;
  #10;
  sequence_in = 0;
  #10;
  sequence_in = 1; 
  #20;
  sequence_in = 0; 
  #20;
  sequence_in = 1; 
  #20;
  sequence_in = 0;  
  
end
initial  begin
   $dumpfile ("dump.vcd"); 
   $dumpvars; 
end 
initial  begin
 $monitor("%d,\t%b,\t%b,\t%b,\t%d",$time,sequence_in,clock,reset,detector_out); 
  end 
  initial 
  #1000  $finish;
 endmodule

