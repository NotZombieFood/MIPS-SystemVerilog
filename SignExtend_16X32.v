`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    23:39:39 05/09/2017 
// Design Name: 
// Module Name:    SignExtend_16X32 
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
module SignExtend_16X32(
    input [15:0] Input_16,
    output [31:0] Output_32
    );
	 
	 assign Output_32 = {{16{Input_16[15]}},Input_16[15:0]};


endmodule
