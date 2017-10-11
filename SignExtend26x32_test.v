`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   23:46:13 05/09/2017
// Design Name:   SignExtend_26X32
// Module Name:   D:/Verilog/MIPS/SignExtend26x32_test.v
// Project Name:  MIPS
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: SignExtend_26X32
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module SignExtend26x32_test;

	// Inputs
	reg [25:0] Input_26;

	// Outputs
	wire [31:0] Output_32;

	// Instantiate the Unit Under Test (UUT)
	SignExtend_26X32 uut (
		.Input_26(Input_26), 
		.Output_32(Output_32)
	);

	initial begin
		// Initialize Inputs
		Input_26 = 0;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here
		
		Input_26 = 2;
		#100;
		
		Input_26 = 6;
		#100;
		
		Input_26 = -2;
		#100;
		
		Input_26 = 0;
		#100;

	end
      
endmodule

