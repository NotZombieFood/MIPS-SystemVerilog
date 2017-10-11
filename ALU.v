`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    23:22:23 08/27/2017 
// Design Name: 
// Module Name:    ALU 
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
module ALU(
   input [31:0] a,
    input [31:0] b,
    input [3:0] ctrl,
    output zero,
    output reg [31:0] result
    );
	 
	 always @ * begin
		case (ctrl)
			4'b0000: result = a & b;
			4'b0001: result = a | b;
			4'b0010: result = a + b;
			4'b0110: result = a - b;
			4'b0111: result = a < b;
			4'b1100: result = ~a;
			default: result = 0;
		endcase
	end
	
		assign zero = (result == 0);

endmodule
