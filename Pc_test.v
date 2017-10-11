`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   14:50:58 05/10/2017
// Design Name:   PC
// Module Name:   D:/Verilog/MIPS/Pc_test.v
// Project Name:  MIPS
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: PC
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module Pc_test;

	// Inputs
	reg [31:0] Adress;

	// Outputs
	wire [31:0] Word;

	// Instantiate the Unit Under Test (UUT)
	PC uut (
		.Adress(Adress), 
		.Word(Word)
	);

	initial begin
		// Initialize Inputs
		Adress = 0;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here
		
		Adress = 0;
		#100;
		
		Adress = 4;
		#100;
		
		Adress = 8;
		#100;
		
		Adress = 12;
		#100;
		
		Adress = 63;
		#100;
		
		Adress = 128;
		#100;

	end
      
endmodule

