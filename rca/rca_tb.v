`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   15:11:39 03/10/2022
// Design Name:   rca
// Module Name:   E:/rca/rca_tb.v
// Project Name:  rca
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: rca
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module rca_tb;

	// Inputs
	reg [3:0] a;
	reg [3:0] b;
	reg cin;

	// Outputs
	wire [3:0] sum;
	wire cout;

	// Instantiate the Unit Under Test (UUT)
	rca uut (
		.a(a), 
		.b(b), 
		.cin(cin), 
		.sum(sum), 
		.cout(cout)
	);

	initial begin
		// Initialize Inputs
		a = 0;
		b = 0;
		cin = 0;

		
		#100;
		
			a = 0;
		b = 0;
		cin = 1;

		
		#100;
		
			a = 0;
		b = 1;
		cin = 0;

		
		#100;
		
			a = 0;
		b = 1;
		cin = 1;

		
		#100;
		
			a = 1;
		b = 0;
		cin = 0;

		
		#100;
		
			a = 1;
		b = 0;
		cin = 1;

		
		#100;
		
			a = 1;
		b = 1;
		cin = 0;

		
		#100;
		
			a = 1;
		b = 1;
		cin = 1;

		
		#100;
        
        
        
        
        
        
        
        
		

	end
      
endmodule

