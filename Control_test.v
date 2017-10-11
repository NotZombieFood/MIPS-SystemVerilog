`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   18:11:35 05/09/2017
// Design Name:   Control
// Module Name:   D:/Verilog/MIPS/Control_test.v
// Project Name:  MIPS
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: Control
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module Control_test;

	// Inputs
	reg [31:26] c;

	// Outputs
	wire RegDst;
	wire Branch;
	wire MemRead;
	wire MemtoReg;
	wire [1:0] Alu_op;
	wire MemWrite;
	wire AluSrc;
	wire RegWrite;
	wire J;

	// Instantiate the Unit Under Test (UUT)
	Control uut (
		.c(c), 
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

	initial begin
		// Initialize Inputs
		c = 0;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here
		
		c = 6'b100011;
		#100;
		
		c = 6'b101011;
		#100;
		
		c = 6'b000100;
		#100;
		
		c = 6'b000000;
		#100;
		
		c = 6'b001001;
		#100;
		
		c = 6'b000010;
		#100;
		
	end
      
endmodule

