`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   14:09:36 03/10/2022
// Design Name:   cla
// Module Name:   E:/01fe21mve008/cla/cla_tb.v
// Project Name:  cla
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: cla
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module cla_tb;

	// Inputs
	reg [3:0] a;
	reg [3:0] b;
	reg cin;
	reg cout;

	// Outputs
	wire [3:0] sum;

	// Instantiate the Unit Under Test (UUT)
	cla uut (
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

