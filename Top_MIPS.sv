module Top_MIPS (
	input clk,
	input rst,
	input start,
	output [7:0] DATA,
	output RW, EN, RS, ON
);

logic [8:0] data_mem;
logic [5:0] address;
logic wr_en;
logic [31:0] wr_addr;
logic [31:0] wr_data;

LCD_MIPS lm(
	.clk(clk),
	.rst(rst),
	.data_mem(data_mem),
	.DATA(DATA),
	.address(address),
	.RW(RW),
	.EN(EN),
	.RS(RS),
	.ON(ON)
);

memory mem(
	.clk(clk),
	.rst(~rst),
	.wr_addr(wr_addr),
	.wr_en(wr_en),
	.wr_data(wr_data),
	.rd_addr(address),
	.rd_data(data_mem)
);

MIPS mips(
	.clk(clk),
	.rst(~rst),
	.wr_addr(wr_addr),
	.wr_data(wr_data),
	.wr_en(wr_en)
);



endmodule