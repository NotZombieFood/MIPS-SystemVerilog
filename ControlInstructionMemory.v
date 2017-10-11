`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    21:43:11 09/12/2017 
// Design Name: 
// Module Name:    ControlInstructionMemory 
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
module ControlInstructionMemory(
    input [31:0] ReadAddress,
    output RegDst,
    output Branch,
    output MemRead,
    output MemtoReg,
    output [1:0] Alu_op,
    output MemWrite,
    output AluSrc,
    output RegWrite,
    output J,
    output [4:0] Address1,
    output [4:0] Address2,
    output [4:0] Address3,
    output [15:0] extender,
    output [25:0] AddressJ
    );

	assign Address1 = ReadAddress [25:21];
	assign Address2 = ReadAddress [20:16];
	assign Address3 = ReadAddress [15:11];
	assign extender = ReadAddress [15:0];
	assign AddressJ = ReadAddress [25:0];
	
	Control C1(
	.c(ReadAddress[31:26]),
	.RegDst(RegDst),
	.Branch(Branch),
	.MemRead(MemRead),
	.MemtoReg(MemtoReg),
	.Alu_op(Alu_op),
	.MemWrite(MemWrite),
	.AluSrc(AluSrc),
	.RegWrite(RegWrite),
	.J(J)
	);

endmodule
