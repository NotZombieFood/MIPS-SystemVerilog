`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    17:17:11 05/09/2017 
// Design Name: 
// Module Name:    Alu_ctrl 
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
module Alu_ctrl(
    input [1:0] Alu_op,
    input [5:0] funct,
    output reg[3:0] ctrl
    );
	 
	 always @ * begin
		case (Alu_op)
			2'b00: ctrl = 4'b0010;  //add
			2'b01: ctrl = 4'b0110;  //subtract
			2'b10: case (funct)
				6'b100000: ctrl = 4'b0010; //add
				6'b100010: ctrl = 4'b0110; //subtract
				6'b100100: ctrl = 4'b0000; //and
				6'b100101: ctrl = 4'b0001; //or
				6'b101010: ctrl = 4'b0111; //stl
				endcase
		endcase
	end


endmodule
