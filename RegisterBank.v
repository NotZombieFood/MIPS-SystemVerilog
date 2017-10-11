`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    22:14:25 05/09/2017 
// Design Name: 
// Module Name:    RegisterBank 
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
module RegisterBank(
    input RegWrite,
    input [4:0] ReadRegister1,
    input [4:0] ReadRegister2,
    input [4:0] WriteRegister,
    input clk,
	 input rst,
    input [31:0] WriteData,
    output [31:0] ReadData1,
    output [31:0] ReadData2
    );
	 
	 reg [31:0] reg0, reg1, reg2, reg3, reg4, reg5, reg6, reg7, reg8, reg9, reg10,
					reg11, reg12, reg13, reg14, reg15, reg16, reg17, reg18, reg19, reg20,
					reg21, reg22, reg23, reg24, reg25, reg26, reg27, reg28, reg29, reg30, reg31;
	
	
	assign ReadData1 = (ReadRegister1 == 0) ? reg0 :
					       (ReadRegister1 == 1) ? reg1 :
							 (ReadRegister1 == 2) ? reg2 :
					       (ReadRegister1 == 3) ? reg3 :
							 (ReadRegister1 == 4) ? reg4 :
					       (ReadRegister1 == 5) ? reg5 :
							 (ReadRegister1 == 6) ? reg6 :
					       (ReadRegister1 == 7) ? reg7 :
							 (ReadRegister1 == 8) ? reg8 :
					       (ReadRegister1 == 9) ? reg9 :
							 (ReadRegister1 == 10) ? reg10 :
					       (ReadRegister1 == 11) ? reg11 :
							 (ReadRegister1 == 12) ? reg12 :
					       (ReadRegister1 == 13) ? reg13 :
							 (ReadRegister1 == 14) ? reg14 :
					       (ReadRegister1 == 15) ? reg15 :
							 (ReadRegister1 == 16) ? reg16 :
					       (ReadRegister1 == 17) ? reg17 :
							 (ReadRegister1 == 18) ? reg18 :
					       (ReadRegister1 == 19) ? reg19 :
							 (ReadRegister1 == 20) ? reg20 :
					       (ReadRegister1 == 21) ? reg21 :
							 (ReadRegister1 == 22) ? reg22 :
					       (ReadRegister1 == 23) ? reg23 :
							 (ReadRegister1 == 24) ? reg24 :
					       (ReadRegister1 == 25) ? reg25 :
							 (ReadRegister1 == 26) ? reg26 :
					       (ReadRegister1 == 27) ? reg27 :
							 (ReadRegister1 == 28) ? reg28 :
					       (ReadRegister1 == 29) ? reg29 :
							 (ReadRegister1 == 30) ? reg30 :
					       (ReadRegister1 == 31) ? reg31 :0;
							 
	assign ReadData2 = (ReadRegister2 == 0) ? reg0 :
					       (ReadRegister2 == 1) ? reg1 :
							 (ReadRegister2 == 2) ? reg2 :
					       (ReadRegister2 == 3) ? reg3 :
							 (ReadRegister2 == 4) ? reg4 :
					       (ReadRegister2 == 5) ? reg5 :
							 (ReadRegister2 == 6) ? reg6 :
					       (ReadRegister2 == 7) ? reg7 :
							 (ReadRegister2 == 8) ? reg8 :
					       (ReadRegister2 == 9) ? reg9 :
							 (ReadRegister2 == 10) ? reg10 :
					       (ReadRegister2 == 11) ? reg11 :
							 (ReadRegister2 == 12) ? reg12 :
					       (ReadRegister2 == 13) ? reg13 :
							 (ReadRegister2 == 14) ? reg14 :
					       (ReadRegister2 == 15) ? reg15 :
							 (ReadRegister2 == 16) ? reg16 :
					       (ReadRegister2 == 17) ? reg17 :
							 (ReadRegister2 == 18) ? reg18 :
					       (ReadRegister2 == 19) ? reg19 :
							 (ReadRegister2 == 20) ? reg20 :
					       (ReadRegister2 == 21) ? reg21 :
							 (ReadRegister2 == 22) ? reg22 :
					       (ReadRegister2 == 23) ? reg23 :
							 (ReadRegister2 == 24) ? reg24 :
					       (ReadRegister2 == 25) ? reg25 :
							 (ReadRegister2 == 26) ? reg26 :
					       (ReadRegister2 == 27) ? reg27 :
							 (ReadRegister2 == 28) ? reg28 :
					       (ReadRegister2 == 29) ? reg29 :
							 (ReadRegister2 == 30) ? reg30 :
					       (ReadRegister2 == 31) ? reg31 :0;
							 
		always @(posedge clk) begin
			if ( rst == 1 ) begin
				reg0 = 0;
				reg1 = 0;
				reg2 = 0;
				reg3 = 0;
				reg4 = 0;
				reg5 = 0;
				reg6 = 0;
				reg7 = 0;
				reg8 = 0;
				reg9 = 0;
				reg10 = 0;
				reg11 = 0;
				reg12 = 0;
				reg13 = 0;
				reg14 = 0;
				reg15 = 0;
				reg16 = 0;
				reg17 = 0;
				reg18 = 0;
				reg19 = 0;
				reg20 = 0;
				reg21 = 0;
				reg22 = 0;
				reg23 = 0;
				reg24 = 0;
				reg25 = 0;
				reg26 = 0;
				reg27 = 0;
				reg28 = 0;
				reg29 = 0;
				reg30 = 0;
				reg31 = 0;
			end
			else begin
				if (RegWrite)
					case(WriteRegister)
						0: reg0 = WriteData;
						1: reg1 = WriteData;
						2: reg2 = WriteData;
						3: reg3 = WriteData;
						4: reg4 = WriteData;
						5: reg5 = WriteData;
						6: reg6 = WriteData;
						7: reg7 = WriteData;
						8: reg8 = WriteData;
						9: reg9 = WriteData;
						10: reg10 = WriteData;
						11: reg11 = WriteData;
						12: reg12 = WriteData;
						13: reg13 = WriteData;
						14: reg14 = WriteData;
						15: reg15 = WriteData;
						16: reg16 = WriteData;
						17: reg17 = WriteData;
						18: reg18 = WriteData;
						19: reg19 = WriteData;
						20: reg20 = WriteData;
						21: reg21 = WriteData;
						22: reg22 = WriteData;
						23: reg23 = WriteData;
						24: reg24 = WriteData;
						25: reg25 = WriteData;
						26: reg26 = WriteData;
						27: reg27 = WriteData;
						28: reg28 = WriteData;
						29: reg29 = WriteData;
						30: reg30 = WriteData;
						31: reg31 = WriteData;
				endcase
			end
		end


endmodule
