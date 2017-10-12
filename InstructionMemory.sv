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
	case (Address[5:0])
			6'b000000: Word = 32'b0010; 	//Instruction 0
			6'b000010: Word = 32'b0010;	//Instruction 4
			6'b000100: Word = 32'b0010;	//Instruction 8
			6'b000000: Word = 32'b0010; 	//Instruction 12
			6'b000000: Word = 32'b0010; 	//Instruction 16
			6'b000000: Word = 32'b0010; 	//Instruction 20
			6'b000000: Word = 32'b0010; 	//Instruction 24
			6'b000000: Word = 32'b0010; 	//Instruction 28
			6'b000000: Word = 32'b0010; 	//Instruction 32
			6'b000000: Word = 32'b0010; 	//Instruction 36
			6'b000000: Word = 32'b0010; 	//Instruction 40
			6'b000000: Word = 32'b0010; 	//Instruction 44
			6'b000000: Word = 32'b0010; 	//Instruction 48
			6'b000000: Word = 32'b0010; 	//Instruction 52
			6'b000000: Word = 32'b0010; 	//Instruction 56
			6'b000000: Word = 32'b0010; 	//Instruction 60
			6'b000000: Word = 32'b0010; 	//Instruction 64
			6'b000000: Word = 32'b0010; 	//Instruction 68
			6'b000000: Word = 32'b0010; 	//Instruction 72
			6'b000000: Word = 32'b0010; 	//Instruction 76
			6'b000000: Word = 32'b0010; 	//Instruction 80
			6'b000000: Word = 32'b0010; 	//Instruction 84
			6'b000000: Word = 32'b0010; 	//Instruction 88
			6'b000000: Word = 32'b0010; 	//Instruction 92
			6'b000000: Word = 32'b0010; 	//Instruction 96
			6'b000000: Word = 32'b0010; 	//Instruction 100
			6'b000000: Word = 32'b0010; 	//Instruction 104
			6'b000000: Word = 32'b0010; 	//Instruction 108
			6'b000000: Word = 32'b0010; 	//Instruction 112
			6'b000000: Word = 32'b0010; 	//Instruction 116
			6'b000000: Word = 32'b0010; 	//Instruction 120
			6'b000000: Word = 32'b0010; 	//Instruction 124
			6'b000000: Word = 32'b0010; 	//Instruction 128
			6'b000000: Word = 32'b0010; 	//Instruction 132
			6'b000000: Word = 32'b0010; 	//Instruction 136
			6'b000000: Word = 32'b0010; 	//Instruction 140
			6'b000000: Word = 32'b0010; 	//Instruction 144
			6'b000000: Word = 32'b0010; 	//Instruction 148
			6'b000000: Word = 32'b0010; 	//Instruction 152
			6'b000000: Word = 32'b0010; 	//Instruction 156
			default: Word = 32'b11111111111111111111111111111111;
	endcase 
end
endmodule
