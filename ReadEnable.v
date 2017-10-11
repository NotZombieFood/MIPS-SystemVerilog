`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    21:41:58 05/09/2017 
// Design Name: 
// Module Name:    ReadEnable 
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
module ReadEnable(
    input MemRead,
    input [31:0] read,
    output [31:0] ReadData
    );
	 
	 assign ReadData = MemRead ? read:0; 


endmodule
