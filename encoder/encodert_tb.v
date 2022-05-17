`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   09:12:05 03/11/2022
// Design Name:   encoder
// Module Name:   E:/encoder/encodert_tb.v
// Project Name:  encoder
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: encoder
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module encodert_tb;

	// Inputs
	reg y3;
	reg y2;
	reg y1;
	reg y0;

	// Outputs
	wire a1;
	wire a0;

	// Instantiate the Unit Under Test (UUT)
	encoder uut (
		.y3(y3), 
		.y2(y2), 
		.y1(y1), 
		.y0(y0), 
		.a1(a1), 
		.a0(a0)
	);

	initial begin
		// Initialize Inputs
		y3 = 0;
		y2 = 0;
		y1 = 0;
		y0 = 1;

		
		#100;
		y3 = 0;
		y2 = 0;
		y1 = 1;
		y0 = 0;

		
		#100;
      y3 = 0;
		y2 = 1;
		y1 = 0;
		y0 = 0;

		
		#100;
      y3 = 1;
		y2 = 0;
		y1 = 0;
		y0 = 0;

		
		#100;
      
        
		
	end
      
endmodule

