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
	
	/*
	 ROM_1 r1(
	 .a(Address[5:0]),
	 .spo(Word)
	 );
	 */
	 
	 
	 always_comb begin
	case (Address[7:0])       //   //   //  //  //  //
			0: Word = 32'b00100100000000000000000100100000; 	//Guardar espacio   0-espacio
			4: Word = 32'b00100100001000010000000100100000;	//Instruction 4        1-espacio
			8: Word = 32'b00100100010000100000000100100000;	//Instruction 8        2-espacio
			12: Word = 32'b00100100011000110000000100100000; 	//Instruction 12    3-espacio
			16: Word = 32'b00100100100001000000000101001000; 	//Instruction 16    4-h
			20: Word = 32'b00100100101001010000000101000101; 	//Instruction 20    5-e
			24: Word = 32'b00100100110001100000000101001100; 	//Instruction 24    6-l
			28: Word = 32'b00100100111001110000000101001100; 	//Instruction 28    7-l
			32: Word = 32'b00100101000010000000000101001111; 	//Instruction 32    8-o
			36: Word = 32'b00100101001010010000000100100000; 	//Instruction 36    9-espacio
			40: Word = 32'b00100101010010100000000100100000; 	//Instruction 40    10-espacio
			44: Word = 32'b00100101011010110000000100100000; 	//Instruction 44    11-espacio
			48: Word = 32'b00100101100011000000000100100000; 	//Instruction 48    12-espacio
			52: Word = 32'b00100101101011010000000100100000; 	//Instruction 52    13-espacio
			56: Word = 32'b00100101110011100000000100100000; 	//Instruction 56    14-espacio
			60: Word = 32'b00100101111011110000000011000000; 	//Instruction 60    15-Salto de linea
			64: Word = 32'b00100110000100000000000100100000; 	//Instruction 64    16-espacio
			68: Word = 32'b00100110001100010000000100100000; 	//Instruction 68    17-espacio
			72: Word = 32'b00100110010100100000000100100000; 	//Instruction 72    18-espacio
			76: Word = 32'b00100110011100110000000100100000; 	//Instruction 76    19-espacio
			80: Word = 32'b00100110100101000000000101010111; 	//Instruction 80    20-w
			84: Word = 32'b00100110101101010000000101001111; 	//Instruction 84    21-o
			88: Word = 32'b00100110110101100000000101010010; 	//Instruction 88    22-r
			92: Word = 32'b00100110111101110000000101001100; 	//Instruction 92    23-l
			96: Word = 32'b00100111000110000000000101000100; 	//Instruction 96    24-d
			100: Word = 32'b00100111001110010000000100100000; 	//Instruction 100   25-espacio
			104: Word = 32'b00100111010110100000000100100000; 	//Instruction 104   26-espacio
			108: Word = 32'b00100111011110110000000100100000; 	//Instruction 108   27-espacio
			112: Word = 32'b00100111100111000000000100100000; 	//Instruction 112   28-espacio
			116: Word = 32'b00100111101111010000000100100000; 	//Instruction 116   29-espacio
			120: Word = 32'b00100111110111100000000100100000; 	//Instruction 120   30-espacio
			124: Word = 32'b00100111111111110000000100100000; 	//Instruction 124   31-espacio
			128: Word = 32'b00001000000000000000000010000000; 	//Instruction 128   loop infinito
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
	 
	 
	 
	 
	/*
	 ROM_3 r1(
	 .a(Address[5:0]),
	 .spo(Word)
	 );
	 */
	 
	 


endmodule
