module top (
    input clk,
	 input rst
);
logic [8:0] readAddress;
logic [8:0] writeAddress;
logic [31:0] readData;
logic [31:0] writeData;
logic writeEn;


DataMemory dataMem(
	 .wr_addr(writeAddress),
	 .wr_data(writeData),
	 .wr_en(writeEn),
	 .clk(clk),
	 .rd_data(readData),
	 .rd_addr(readAddress),
	 .rst(~rst)
	 );

MIPS mipsInst(
    .clk(clk),
	 .rst(~rst),
	 .resultCopy(writeAddress),
	 .readData2Copy(writeData),
	 .MemWrite(writeEn)
    );
	 
endmodule 