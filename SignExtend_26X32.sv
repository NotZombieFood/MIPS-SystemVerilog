`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    23:44:59 05/09/2017 
// Design Name: 
// Module Name:    SignExtend_26X32 
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
module SignExtend_26X32(
    input [25:0] Input_26,
    output [31:0] Output_32
    );
	 
	  assign Output_32 = {{6{Input_26[25]}},Input_26[25:0]};


endmodule
