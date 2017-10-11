`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   17:30:12 05/09/2017
// Design Name:   Alu_final
// Module Name:   D:/Verilog/MIPS/Alu_test.v
// Project Name:  MIPS
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: Alu_final
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module Alu_test;

	// Inputs
	reg [31:0] a;
	reg [31:0] b;
	reg [1:0] Alu_op;
	reg [5:0] funct;

	// Outputs
	wire zero;
	wire [31:0] result;

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
		
		a = 30;
		b = 30;
		Alu_op = 0;
		funct = 6'b100010;
		#100;

		a = 50;
		b = 50;
		Alu_op = 1;
		funct = 6'b100000;
		#100;
		
		a = 20;
		b = 20;
		Alu_op = 2;
		funct = 6'b100000;
		#100;
		
		a = 20;
		b = 20;
		Alu_op = 2;
		funct = 6'b100010;
		#100;
		
		a = 3;
		b = 2;
		Alu_op = 2;
		funct = 6'b100100;
		#100;
		
		a = 3;
		b = 2;
		Alu_op = 2;
		funct = 6'b100101;
		#100;
		
		a = 45;
		b = 46;
		Alu_op = 2;
		funct = 6'b101010;
		#100;
		
		a = 46;
		b = 45;
		Alu_op = 2;
		funct = 101010;
		#100;


	end
      
endmodule

