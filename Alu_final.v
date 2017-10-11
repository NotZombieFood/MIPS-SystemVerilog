`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    17:25:11 05/09/2017 
// Design Name: 
// Module Name:    Alu_final 
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
module Alu_final(
    input [31:0] a,
    input [31:0] b,
    input [1:0] Alu_op,
    input [5:0] funct,
    output zero,
    output [31:0] result
    );
	 
	 wire [5:0] control;
	 
	 ALU A1(
	 .a(a),
	 .b(b),
	 .ctrl(control),
	 .zero (zero),
	 .result (result)
	 );
	 
	 Alu_ctrl C2(
	 .Alu_op(Alu_op),
	 .funct(funct),
	 .ctrl(control)
	 );


endmodule
