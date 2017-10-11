`timescale 1ns / 1ps
module ALU(
   	input [31:0] a,
    input [31:0] b,
    input [3:0] ctrl,
    output zero,
    output logic [31:0] result
    );
	 
	 always_comb begin
		unique case (ctrl)
			4'b0000: result = a & b;
			4'b0001: result = a | b;
			4'b0010: result = a + b;
			4'b0110: result = a - b;
			4'b0111: result = a < b;
			4'b1100: result = ~a;
			default: result = 0;
		endcase
	end
	
		assign zero = (result == 0);

endmodule
