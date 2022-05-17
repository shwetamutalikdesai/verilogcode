`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   15:04:01 03/10/2022
// Design Name:   adder
// Module Name:   E:/01fe21mve008/adder/addert_tb.v
// Project Name:  adder
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: adder
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module addert_tb;

	// Inputs
	reg a;
	reg b;
	reg cin;

	// Outputs
	wire sum;
	wire cout;

	// Instantiate the Unit Under Test (UUT)
	adder uut (
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
		cin =1;

		
		#100;
		
		a = 1;
		b = 1;
		cin = 0;

		
		#100;
		
		a = 1;
		b = 1;
		cin =1;

		
		#100;
        
        
        
        
        
        
        
        
	
	end
      
endmodule

