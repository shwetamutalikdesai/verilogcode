`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   09:33:31 03/11/2022
// Design Name:   decoder
// Module Name:   E:/decoder/decodert_tb.v
// Project Name:  decoder
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: decoder
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module decodert_tb;

	// Inputs
	reg a;
	reg b;
	reg c;

	// Outputs
	wire d0;
	wire d1;
	wire d2;
	wire d3;
	wire d4;
	wire d5;
	wire d6;
	wire d7;

	// Instantiate the Unit Under Test (UUT)
	decoder uut (
		.a(a), 
		.b(b), 
		.c(c), 
		.d0(d0), 
		.d1(d1), 
		.d2(d2), 
		.d3(d3), 
		.d4(d4), 
		.d5(d5), 
		.d6(d6), 
		.d7(d7)
	);

	initial begin
		// Initialize Inputs
		a = 0;
		b = 0;
		c = 0;

		#100;
		a = 0;
		b = 0;
		c = 1;

		#100;
        a = 0;
		b = 1;
		c = 0;

		#100;
        a = 0;
		b = 1;
		c = 1;

		#100;
        a = 1;
		b = 0;
		c = 0;

		#100;
        a =1;
		b = 0;
		c = 1;

		#100;
        a = 1;
		b = 1;
		c = 0;

		#100;
        a = 1;
		b = 1;
		c = 1;

		#100;
        
        
		

	end
      
endmodule

