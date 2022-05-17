`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    08:53:56 03/11/2022 
// Design Name: 
// Module Name:    encoderb 
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
module encoderb(y3,y2,y1,y0,a1,a0);
    input y3,y2,y1,y0;
    output reg a1,a0;
    
	 always @ (a1,a0)
	 begin
	  a1=y3|y2;
	  a0=y3|(y1&~y2);
	  end

	 
	  
 


endmodule
