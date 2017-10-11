`timescale 1ns / 1ps

module Alu_final_test;

	// Inputs
	logic [31:0] a;
	logic [31:0] b;
	logic [1:0] Alu_op;
	logic [5:0] funct;

	// Outputs
	logic zero;
	logic [31:0] result;

	// Instantiate the Unit Under Test (UUT)
	Alu_final uut (
		.a(a), 
		.b(b), 
		.Alu_op(Alu_op), 
		.funct(funct), 
		.zero(zero), 
		.result(result)
	);

	initial begin
		// Initialize Inputs
		a = 0;
		b = 0;
		Alu_op = 0;
		funct = 0;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here

		a = 25;
		b = 23;
		Alu_op = 0;
		funct = 6'b10010;
		#100;
		
		a = 57;
		b = 23;
		Alu_op = 1;
		funct = 6'b100000;
		#100;
		
		a = 20;
		b = 20;
		Alu_op = 3;
		funct = 6'b100000;
		#100;
		
		a = 35;
		b = 35;
		Alu_op = 3;
		funct = 6'b100010;
		#100;
		
		a = 3;
		b = 3;
		Alu_op = 3;
		funct = 6'b100100;
		#100;
		
		a = 0;
		b = 0;
		Alu_op = 3;
		funct = 6'b100101;
		#100;
		
		a = 0;
		b = 0;
		Alu_op = 3;
		funct = 6'b101010;
		#100;
		
	end
      
endmodule

