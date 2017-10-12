`timescale 1ns / 1ps

module Alu_final(
    input [31:0] a,
    input [31:0] b,
    input [1:0] Alu_op,
    input [5:0] funct,
    logic zero,
    logic [31:0] result
    );
	 
	 logic [5:0] control;
	 
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
