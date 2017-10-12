`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    22:03:20 05/09/2017 
// Design Name: 
// Module Name:    PC 
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
module InstructionMemory(
    input [31:0] Address,
    output logic [31:0] Word
    );
//use 6 bits for adress	
always_comb begin
	case (Address[7:0])
			0: Word = 32'b0010; 	//Instruction 0
			4: Word = 32'b0010;	//Instruction 4
			8: Word = 32'b0010;	//Instruction 8
			12: Word = 32'b0010; 	//Instruction 12
			16: Word = 32'b0010; 	//Instruction 16
			20: Word = 32'b0010; 	//Instruction 20
			24: Word = 32'b0010; 	//Instruction 24
			28: Word = 32'b0010; 	//Instruction 28
			32: Word = 32'b0010; 	//Instruction 32
			36: Word = 32'b0010; 	//Instruction 36
			40: Word = 32'b0010; 	//Instruction 40
			44: Word = 32'b0010; 	//Instruction 44
			48: Word = 32'b0010; 	//Instruction 48
			52: Word = 32'b0010; 	//Instruction 52
			56: Word = 32'b0010; 	//Instruction 56
			60: Word = 32'b0010; 	//Instruction 60
			64: Word = 32'b0010; 	//Instruction 64
			68: Word = 32'b0010; 	//Instruction 68
			72: Word = 32'b0010; 	//Instruction 72
			76: Word = 32'b0010; 	//Instruction 76
			80: Word = 32'b0010; 	//Instruction 80
			84: Word = 32'b0010; 	//Instruction 84
			88: Word = 32'b0010; 	//Instruction 88
			92: Word = 32'b0010; 	//Instruction 92
			96: Word = 32'b0010; 	//Instruction 96
			100: Word = 32'b0010; 	//Instruction 100
			104: Word = 32'b0010; 	//Instruction 104
			108: Word = 32'b0010; 	//Instruction 108
			112: Word = 32'b0010; 	//Instruction 112
			116: Word = 32'b0010; 	//Instruction 116
			120: Word = 32'b0010; 	//Instruction 120
			124: Word = 32'b0010; 	//Instruction 124
			128: Word = 32'b0010; 	//Instruction 128
			132: Word = 32'b0010; 	//Instruction 132
			136: Word = 32'b0010; 	//Instruction 136
			144: Word = 32'b0010; 	//Instruction 140
			144: Word = 32'b0010; 	//Instruction 144
			148: Word = 32'b0010; 	//Instruction 148
			152: Word = 32'b0010; 	//Instruction 152
			156: Word = 32'b0010; 	//Instruction 156
			default: Word = 32'b11111111111111111111111111111111;
	endcase 
end
endmodule
