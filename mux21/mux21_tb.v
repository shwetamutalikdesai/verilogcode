`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   13:47:19 03/10/2022
// Design Name:   mux21
// Module Name:   E:/01fe21mve008/mux21/mux21_tb.v
// Project Name:  mux21
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: mux21
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module mux21_tb;

	// Inputs
	reg d0;
	reg d1;
	reg s;

	// Outputs
	wire y;

	// Instantiate the Unit Under Test (UUT)
	mux21 uut (
		.d0(d0), 
		.d1(d1), 
		.s(s), 
		.y(y)
	);

	initial begin
		
		d0 = 0;
		d1 = 0;
		s = 0;
		#100;
        
		d0 = 0;
		d1 = 1;
		s = 0;
		#100;
		
		d0 = 1;
		d1 = 0;
		s = 0;
		#100;
		
		d0 = 1;
		d1 = 1;
		s = 0;
		#100;
		
		d0 = 0;
		d1 = 0;
		s = 1;
		#100;
		
		d0 = 0;
		d1 = 1;
		s = 1;
		#100;
		
		d0 = 1;
		d1 = 0;
		s = 1;
		#100;
		
		d0 = 1;
		d1 = 1;
		s = 1;
		#100;
		
	end
      
endmodule

