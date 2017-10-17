`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    00:02:43 05/10/2017 
// Design Name: 
// Module Name:    MIPS 
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
module MIPS(
    input clk,
	 input rst,
	 output [31:0] direccion,
	 output [31:0] palabra,
	 output [31:0] leer_dato,
	 output wr_en,
	 output [31:0] wr_addr,
	 output [31:0] wr_data
    );
	 
	 logic [31:0] Word; //salida del pc
	 logic [31:0] Word_4;  //salida adder+4
	 logic [31:0] Address_branch; //salida Adder Branch
	 logic [31:0] Address_final;  //Salida mux branch
	 logic [25:0] Address_jump;  //Direccion a saltar con adress
	 logic [31:0] Address_jump_final;  //Direccion final del jump
	 logic RegDst;  //Salidas del control
	 logic Branch;
	 logic MemRead;
	 logic MemtoReg;
	 logic [1:0] Alu_op;
	 logic AluSrc;
	 logic RegWrite;
	 logic [4:0] Address1;
	 logic [4:0] Address2;
	 logic[4:0] Address3;
	 logic [15:0] extender;
	 logic J; //Salida si es tipo J
	 logic [31:0] ReadData1;  //Salida banco de registros
	 logic [31:0] ReadData2;  //Salida banco de registros
	 logic [4:0] Mux_Address3; //Mux antes del banco de registros
	 logic [31:0] Extend_32;  //Salida extender 32 bits
	 logic [31:0] Shifter_32;  //Salida del shifter
	 logic [31:0] Mux_Alu;  // Salida de mux antes del alu
	 logic zero; //Salida zero del Alu
	 logic [31:0] result; //Resultado del Alu
	 logic And; //Salida del And
	 logic [31:0] Data_DataMemory;  //Salida del DataMemory
	 logic [31:0] WriteData;  //Datos que se escriben en el banco de registros
	 logic [31:0] Address;  //Entrada pc
	 
	 //Salidas extra
	 assign wr_en = RegWrite;
	 assign wr_addr= Mux_Address3;
	 assign wr_data = WriteData;
	 
	 
	 InstructionMemory InstructionMemory(
	 .Address(Address),
	 .Word(Word)
	 );
	 
	 ControlInstructionMemory ControlInstructionMemory(
	.ReadAddress(Word),
   .RegDst(RegDst),
   .Branch(Branch),
   .MemRead(MemRead),
	.MemtoReg(MemtoReg),
	.Alu_op(Alu_op),
	.MemWrite(MemWrite),
	.AluSrc(AluSrc),
	.RegWrite(RegWrite),
	.J(J),
	.Address1(Address1),
	.Address2(Address2),
	.Address3(Address3),
	.extender(extender),
	.AddressJ(Address_jump)
	 );
	 
	 SignExtend_26X32 SignExtend_26x32(
	 .Input_26(Address_jump),
	 .Output_32(Address_jump_final)
	 );
	 
	 RegisterBank RegisterBank(
	 .RegWrite(RegWrite),
	 .ReadRegister1(Address1),
	 .ReadRegister2(Address2),
	 .WriteRegister(Mux_Address3),
	 .clk(clk),
	 .rst(rst),
	 .WriteData(WriteData), 
	 .ReadData1(ReadData1),
	 .ReadData2(ReadData2)
	 );
	 
	 SignExtend_16X32 SignExtend_16X32(
	 .Input_16(extender),
	 .Output_32(Extend_32)
	 );
	 
	 Shifter_2 Shifter_2(
	 .Input(Extend_32),
	 .Output(Shifter_32)
	 );
	 
	 Alu_final Alu_final(
	 .a(ReadData1),
	 .b(Mux_Alu),
	 .Alu_op(Alu_op),
	 .funct(extender[5:0]),
	 .zero(zero),
	 .result(result)
	 );
	 
	 DataMemory DataMemory(
	 .Address(result),
	 .WriteData(ReadData2),
	 .MemWrite(MemWrite),
	 .MemRead(MemRead),
	 .clk(clk),
	 .ReadData(Data_DataMemory)
	 );
	 
	 assign Word_4 = Address + 4;
	 assign Address_branch = Word_4 + Shifter_32; 
	 assign Address_final = (And) ? Address_branch:Word_4;              //Parte de arriba
	 
	 //Program Counter
	 always @(posedge clk) begin
		if (rst == 1 ) Address <= 0;
		else Address <= (J) ? Address_jump_final:Address_final; 
	 end
	 //
	 
	 assign Mux_Address3 = (RegDst) ? Address3:Address2;
	 
	 assign Mux_Alu = (AluSrc) ? Extend_32:ReadData2;
	 
	 assign direccion = Address;
	 
	 assign And = (Branch & zero);
	 
	 assign WriteData = (MemtoReg) ? Data_DataMemory:result;
	 
	 assign palabra = Word;
	 
	 assign leer_dato = WriteData;
	 
endmodule
