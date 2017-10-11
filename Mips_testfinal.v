`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   15:33:39 05/10/2017
// Design Name:   MIPS
// Module Name:   D:/Verilog/MIPS/Mips_testfinal.v
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

module Mips_testfinal;

	// Inputs
	reg clk;
	reg rst;

	// Outputs
	wire [31:0] direccion;
	wire [31:0] palabra;
	wire [31:0] leer_dato;

	// Instantiate the Unit Under Test (UUT)
	MIPS uut (
		.clk(clk),
		.rst(rst),
		.direccion(direccion), 
		.palabra(palabra), 
		.leer_dato(leer_dato)
	);

	initial begin
		// Initialize Inputs
		clk = 0;
		rst = 1;
		
		#20;
		rst = 0;

		// Wait 100 ns for global reset to finish
		#150;
        
		// Add stimulus here

	end
	
	initial begin
		forever #10 clk = ~clk;
		end
      
endmodule

