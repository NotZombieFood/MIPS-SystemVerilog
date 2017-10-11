`timescale 1ns / 1ps

module DataMemory(
    input [31:0] Address,
    input [31:0] WriteData,
    input MemWrite,
    input MemRead,
	 input clk,
    output [31:0] ReadData
    );
	 
	 wire [31:0] read;
	 
	 assign ReadData = MemRead ? read:0;
	 /*
		RAM_1 r1(
		.a(Address[5:0]),
		.d(WriteData),
		.we(MemWrite),
		.clk(clk),
		.spo(read)
	);
	*/
	
	
	
	/*
		RAM_2 r1(
		.a(Address[9:0]),
		.d(WriteData),
		.we(MemWrite),
		.clk(clk),
		.spo(read)
	);
	*/
	
	 
	
		RAM_3 r1(
		.a(Address[5:0]),
		.d(WriteData),
		.we(MemWrite),
		.clk(clk),
		.spo(read)
	);
	
	
	
	 


endmodule
