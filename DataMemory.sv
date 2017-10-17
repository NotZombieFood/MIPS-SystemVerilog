`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    19:16:28 05/09/2017 
// Design Name: 
// Module Name:    DataMemory 
// Project Name: 
// Target Devices: 
// Tool versions: 
// Description: 
//
// Dependencies: 
//
// Revision: 
// Revision 0.01 - File Created
// Additional Comments: 
//
//////////////////////////////////////////////////////////////////////////////////
module DataMemory
	#(
  parameter NUM_REGS = 256, 
  parameter SIZE = 32
)(
  input clk,
  input rst,
  input  [31:0]  Address,
  input         MemWrite,
  input MemRead,
  input  [31:0] WriteData,
  output logic [31:0] ReadData

);
  
    logic [SIZE-1:0] rf [NUM_REGS-1:0];
  
    integer i;
	 always_ff @ (posedge clk) begin
      if (rst)
			for (i = 0; i < NUM_REGS-1; i = i + 1)
				rf[i] <= 0;
		else  if (MemWrite)
        rf[Address] <= WriteData;
		
	end
	
	always_comb begin
		if (MemRead)
		 ReadData = rf[Address];
		else ReadData = 0;
	 end

endmodule
	
	 

