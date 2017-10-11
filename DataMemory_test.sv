`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   21:53:59 05/09/2017
// Design Name:   DataMemory
// Module Name:   D:/Verilog/MIPS/DataMemory_test.v
// Project Name:  MIPS
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: DataMemory
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module DataMemory_test;

	// Inputs
	reg [31:0] Adress;
	reg [31:0] WriteData;
	reg MemWrite;
	reg MemRead;
	reg clk;

	// Outputs
	wire [31:0] ReadData;

	// Instantiate the Unit Under Test (UUT)
	DataMemory uut (
		.Adress(Adress), 
		.WriteData(WriteData), 
		.MemWrite(MemWrite), 
		.MemRead(MemRead), 
		.clk(clk), 
		.ReadData(ReadData)
	);

	initial begin
		// Initialize Inputs
		Adress = 0;
		WriteData = 0;
		MemWrite = 0;
		MemRead = 0;
		clk = 0;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here

		Adress = 0;
		WriteData = 0;
		MemWrite = 0;
		MemRead = 0;
		#100;
		
		Adress = 0;
		WriteData = 0;
		MemWrite = 0;
		MemRead = 1;
		#100;
		
		Adress = 0;
		WriteData = 40;
		MemWrite = 0;
		MemRead = 1;
		#100;
		
		Adress = 0;
		WriteData = 40;
		MemWrite = 1;
		MemRead = 0;
		#100;
		
		Adress = 0;
		WriteData = 0;
		MemWrite = 0;
		MemRead = 1;
		#100;

		
	end
      
	initial begin
	forever #10 clk = ~clk;
	end

endmodule
		


