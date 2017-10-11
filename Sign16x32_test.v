`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   23:41:44 05/09/2017
// Design Name:   SignExtend_16X32
// Module Name:   D:/Verilog/MIPS/Sign16x32_test.v
// Project Name:  MIPS
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: SignExtend_16X32
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module Sign16x32_test;

	// Inputs
	reg [15:0] Input_16;

	// Outputs
	wire [31:0] Output_32;

	// Instantiate the Unit Under Test (UUT)
	SignExtend_16X32 uut (
		.Input_16(Input_16), 
		.Output_32(Output_32)
	);

	initial begin
		// Initialize Inputs
		Input_16 = 0;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here
		
		Input_16 = 0;
		#100;
		
		Input_16 = 5;
		#100;
		
		Input_16 = -7;
		#100;

	end
      
endmodule

