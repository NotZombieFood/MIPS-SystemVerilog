`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   02:20:24 05/09/2017
// Design Name:   Alu_ctrl
// Module Name:   D:/Verilog/MIPS/ALu_ctrl_test.v
// Project Name:  MIPS
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: Alu_ctrl
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module ALu_ctrl_test;

	// Inputs
	reg [6:0] funct;
	reg [1:0] Alu_op;

	// Outputs
	wire [3:0] ctrl;

	// Instantiate the Unit Under Test (UUT)
	Alu_ctrl uut (
		.funct(funct), 
		.Alu_op(Alu_op), 
		.ctrl(ctrl)
	);

	initial begin
		// Initialize Inputs
		funct = 0;
		Alu_op = 0;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here
		
		funct = 6'b100100;
		Alu_op = 0;
		#100;
		
		funct = 0;
		Alu_op = 01;
		#100;
		
		funct = 6'b100000;
		Alu_op = 2;
		#100;
		
		funct = 6'b100010;
		Alu_op = 2;
		#100;
		
		funct = 6'b100100;
		Alu_op = 2;
		#100;
		
		funct = 6'b100101;
		Alu_op = 2;
		#100;
		
		funct = 6'b101010;
		Alu_op = 2;
		#100;
		
		
	end
      
endmodule

