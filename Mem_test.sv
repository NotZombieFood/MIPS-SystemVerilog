`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   20:08:04 05/09/2017
// Design Name:   Ram
// Module Name:   D:/Verilog/MIPS/Mem_test.v
// Project Name:  MIPS
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: Ram
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module Mem_test;

	// Inputs
	reg [5:0] a;
	reg [31:0] d;
	reg clk;
	reg we;

	// Outputs
	wire [31:0] spo;

	// Instantiate the Unit Under Test (UUT)
	Ram uut (
		.a(a), 
		.d(d), 
		.clk(clk), 
		.we(we), 
		.spo(spo)
	);

	initial begin
		// Initialize Inputs
		a = 0;
		d = 0;
		clk = 0;
		we = 0;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here
		

		a = 0;
		d = 0;
		we = 0;
		#100;
		
		a = 1;
		d = 23;
		we = 0;
		#100;
		
		a = 1;
		d = 23;
		we = 1;
		#100;
		
		a = 1;
		d = 0;
		we = 0;
		#100;
		
	end
	
	initial begin
		forever #10 clk = ~clk;
		end
      
endmodule

