`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   22:36:48 05/09/2017
// Design Name:   RegisterBank
// Module Name:   D:/Verilog/MIPS/RegisterBank_test.v
// Project Name:  MIPS
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: RegisterBank
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module RegisterBank_test;

	// Inputs
	reg RegWrite;
	reg [5:0] ReadRegister1;
	reg [5:0] ReadRegister2;
	reg [5:0] WriteRegister;
	reg clk;
	reg [31:0] WriteData;

	// Outputs
	wire [31:0] ReadData1;
	wire [31:0] ReadData2;

	// Instantiate the Unit Under Test (UUT)
	RegisterBank uut (
		.RegWrite(RegWrite), 
		.ReadRegister1(ReadRegister1), 
		.ReadRegister2(ReadRegister2), 
		.WriteRegister(WriteRegister), 
		.clk(clk), 
		.WriteData(WriteData), 
		.ReadData1(ReadData1), 
		.ReadData2(ReadData2)
	);

	initial begin
		// Initialize Inputs
		RegWrite = 0;
		ReadRegister1 = 0;
		ReadRegister2 = 0;
		WriteRegister = 0;
		clk = 0;
		WriteData = 0;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here

		RegWrite = 0;
		ReadRegister1 = 0;
		ReadRegister2 = 0;
		WriteRegister = 0;
		WriteData = 100;
		#100;
		
		RegWrite = 1;
		ReadRegister1 = 0;
		ReadRegister2 = 0;
		WriteRegister = 1;
		WriteData = 100;
		#100;
		
		RegWrite = 0;
		ReadRegister1 = 1;
		ReadRegister2 = 0;
		WriteRegister = 0;
		WriteData = 0;
		#100;
	end
	
	initial begin
	forever #10 clk = ~clk;
	end

      
endmodule

