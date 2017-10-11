`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   02:04:04 05/10/2017
// Design Name:   MIPS
// Module Name:   D:/Verilog/MIPS/MIPS_test.v
// Project Name:  MIPS
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: MIPS
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module MIPS_test;

	// Inputs
	reg clk;

	// Outputs
	wire [31:0] direccion;

	// Instantiate the Unit Under Test (UUT)
	MIPS uut (
		.clk(clk), 
		.direccion(direccion)
	);

	initial begin
		// Initialize Inputs
		clk = 0;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here
		

	end
	
	initial begin
	forever #10 clk = ~clk;
	end
      
endmodule

