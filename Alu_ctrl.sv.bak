`timescale 1ns / 1ps
module Alu_ctrl(
    input [1:0] Alu_op,
    input [5:0] funct,
    output logic[3:0] ctrl
    );
	 
	 always_comb begin
		unique case (Alu_op)
			2'b00: ctrl = 4'b0010;  //add
			2'b01: ctrl = 4'b0110;  //subtract
			2'b10: case (funct)
				6'b100000: ctrl = 4'b0010; //add
				6'b100010: ctrl = 4'b0110; //subtract
				6'b100100: ctrl = 4'b0000; //and
				6'b100101: ctrl = 4'b0001; //or
				6'b101010: ctrl = 4'b0111; //stl
				endcase
		endcase
	end


endmodule
