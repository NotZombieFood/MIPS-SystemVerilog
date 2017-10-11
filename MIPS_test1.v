`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   00:56:58 05/10/2017
// Design Name:   MIPS
// Module Name:   D:/Verilog/MIPS/MIPS_test1.v
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

module MIPS_test1;

	// Inputs
	reg clk;

	// Outputs
	wire [31:0] pr;

	// Instantiate the Unit Under Test (UUT)
	MIPS uut (
		.clk(clk), 
		.pr(pr)
	);

	initial begin
		// Initialize Inputs
		clk = 0;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here

	end
      
endmodule

