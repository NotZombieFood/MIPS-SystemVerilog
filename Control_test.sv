`timescale 1ns / 1ps

module Control_test;

	// Inputs
	logic [31:26] c;

	// Outputs
	logic RegDst;
	logic Branch;
	logic MemRead;
	logic MemtoReg;
	logic [1:0] Alu_op;
	logic MemWrite;
	logic AluSrc;
	logic RegWrite;
	logic J;

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

