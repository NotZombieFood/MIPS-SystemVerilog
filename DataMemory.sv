`timescale 1ns / 1ps

module DataMemory(
    input [31:0] Address,
    input [31:0] WriteData,
    input MemWrite,
    input MemRead,
	 input clk,
    output logic [31:0] ReadData
    );

always_comb begin
	ReadData= 32'b00000000000000000000000000000000;
end
endmodule
