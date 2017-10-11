`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   23:54:00 05/09/2017
// Design Name:   Shifter_2
// Module Name:   D:/Verilog/MIPS/shifter_test.v
// Project Name:  MIPS
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: Shifter_2
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module shifter_test;

	// Inputs
	reg [31:0] Input;

	// Outputs
	wire [31:0] Output;

	// Instantiate the Unit Under Test (UUT)
	Shifter_2 uut (
		.Input(Input), 
		.Output(Output)
	);

	initial begin
		// Initialize Inputs
		Input = 0;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here
		
		Input = 0;
		#100;
		
		Input = 65;
		#100;
		
		Input = 234;
		#100;

	end
      
endmodule

