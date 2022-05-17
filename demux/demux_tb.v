`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   13:21:40 04/07/2022
// Design Name:   demux_struct
// Module Name:   E:/01fe21mve008/demux/demux_tb.v
// Project Name:  demux
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: demux_struct
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module demux_tb;

	// Inputs
	reg d;
	reg [1:0] s;

	// Outputs
	wire [3:0] y;

	// Instantiate the Unit Under Test (UUT)
	demux_struct uut (
		.d(d), 
		.s(s), 
		.y(y)
	);

	initial begin
		
		d = 1;
		s = 00;

		#100;
        
		  	d = 1;
		s = 01;

		#100;
        
		  	d = 1;
		s = 10;

		#100;
        
		  	d = 1;
		s = 11;

		#100;
        
		

	end
      
endmodule

