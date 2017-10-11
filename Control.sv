`timescale 1ns / 1ps

module Control(
    input [31:26] c,
    output RegDst,
    output Branch,
    output MemRead,
    output MemtoReg,
    output [1:0] Alu_op,
    output MemWrite,
    output AluSrc,
    output RegWrite,
    output J
    );
	 
	 assign RegDst = ( ~c[31] & ~c[30] & ~c[29] & ~c[28] & ~c[27] & ~c[26] );
	 assign Branch = ( ~c[31] & ~c[30] & ~c[29] & c[28] & ~c[27] & ~c[26] );
	 assign MemRead = ( c[31] & ~c[30] & ~c[29] & ~c[28] & c[27] & c[26] );
	 assign MemtoReg = ( c[31] & ~c[30] & ~c[28] & c[27] & c[26] );
	 assign Alu_op [1] = ( ~c[31] & ~c[30] & ~c[29] & ~c[28] & ~c[26] );
	 assign Alu_op [0] = ( ~c[31] & ~c[30] & ~c[29] & c[28] & ~c[27] & ~c[26] );
	 assign MemWrite = ( c[31] & ~c[30] & c[29] & ~c[28] & c[27] & c[26] );
	 assign AluSrc = ( ~c[31] & ~c[30] & c[29] & ~c[28] & ~c[27] & c[26] ) | ( c[31] & ~c[30] & ~c[28] & c[27] & c[26] );
	 assign RegWrite = ( ~c[31] & ~c[30] & ~c[29] & ~c[28] & ~c[27] & ~c[26] ) | ( ~c[31] & ~c[30] & c[29] & ~c[28] & ~c[27] & c[26] ) | ( c[31] & ~c[30] & ~c[29] & ~c[28] & c[27] & c[26] );
	 assign J = ( ~c[31] & ~c[30] & ~c[29] & ~c[28] & c[27] );
	 
endmodule
