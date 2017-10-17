module	LCD_MIPS (	
					input clk,rst,
					input [8:0] data_mem,
					output [7:0] DATA,
					output [5:0] address,
					output RW,EN,RS,ON);

					
//	Internals
logic	[5:0]	L_Addr;
logic	[8:0]	L_DATA;
logic	[17:0]	Delay;
logic			c_start;
logic	[7:0]	c_DATA;
logic			c_RS;
logic		c_Done;
logic rs_counter;
logic en_delay;
logic en_addr;
logic rs_addr;



assign address = L_Addr;
always_comb begin
	if (L_Addr <=5)
		case (L_Addr)
			0: L_DATA = 9'h038;
			1:	L_DATA = 9'h00C;
			2:	L_DATA = 9'h001;
			3:	L_DATA = 9'h006;
			4: L_DATA = 9'h080;
			5: L_DATA = 9'h120;
			default L_DATA = 0;
		endcase
	else if (L_Addr <= 31)
		L_DATA = data_mem;
	else L_DATA = 9'h120;
end




enum {BEG, INIT, DLY, DONE} state, next_state;

// Parameters
parameter	INITIAL	=	0;
parameter	LINE1	=	5;
parameter	CH_LINE	=	LINE1+16;
parameter	LINE2	=	LINE1+16+1;
parameter	SIZE	=	LINE1+32+1;

//////////////////////////////////////////////////////////////////////////////////////////
//FSM

//Transicion de estado
always_ff @(posedge clk) begin
	if(~rst)
		state <= BEG;
	else
		state <= next_state;
end

//Cambio de estado
always_comb begin
	if (~rst)
		next_state = BEG;
	else if (L_Addr<SIZE) begin
		case (state)
			BEG: next_state = INIT;
			INIT: if (c_Done)
					next_state = DLY;
				else 
					next_state = INIT;
			DLY: if(Delay<18'h3FFFE)
					next_state = DLY;
				else
					next_state = DONE;
			DONE: next_state = BEG;
			default: next_state = BEG;
		endcase
	end
	else
		next_state = BEG;
end

//salidas

always_comb  begin
	if(~rst) begin
		c_start	<=	0;
		c_DATA	<=	0;
		c_RS		<=	0;
		rs_counter <= 1;
		rs_addr <= 1;
		en_delay <= 0;
		en_addr <= 0;
	end
	else if (L_Addr<SIZE) begin
		case (state)
		BEG:begin
			c_DATA	<=	L_DATA[7:0];
			c_RS		<=	L_DATA[8];
			c_start <=1;
			rs_counter <= 1;
			en_delay <= 0;
			en_addr <= 0;
			rs_addr <= 0;
		end
		INIT:begin
			c_start <=0;
			c_DATA	<=	L_DATA[7:0];
			c_RS		<=	L_DATA[8];
			rs_counter <= 0;
			en_delay <= 0;
			en_addr <= 0;
			rs_addr <= 0;
		end
		DLY:begin
			c_start <=0;
			c_DATA	<=	L_DATA[7:0];
			c_RS		<=	L_DATA[8];
			rs_counter <= 0;
			en_delay <= 1;
			en_addr <= 0;
			rs_addr <= 0;
		end
		DONE:begin
			c_start <=0;
			c_DATA	<=	L_DATA[7:0];
			c_RS		<=	L_DATA[8];
			rs_counter <= 1;
			en_delay <= 0;
			en_addr <= 1;
			rs_addr <= 0;
		end
		default: begin
			c_start	<=	0;
			c_DATA	<=	0;
			c_RS		<=	0;
			rs_addr <= 0;
			en_addr <= 0;
			rs_counter <= 0;
			en_delay <= 0;
		end
		endcase
	end
	else begin
		c_start	<=	0;
		c_DATA	<=	0;
		c_RS		<=	0;
		rs_addr <= 0;
		en_addr <= 0;
		rs_counter <= 0;
		en_delay <= 0;
	end
end


///////////////////////////////////////////////////////////////////////////////////////////////

//counter addr
always @(posedge clk) begin
	if (rs_addr)
		L_Addr <= 0;
	else if (en_addr)
		L_Addr <= L_Addr + 1;
	else
		L_Addr <= L_Addr;
end




//counter delay
always @(posedge clk) begin
	if (rs_counter)
		Delay <= 0;
	else if (en_delay)
		Delay <= Delay+1;
	else
		Delay <= Delay;
end


LCD_Controller_MIPS 		u0	(
							.DATA(c_DATA),
							.iRS(c_RS),
							.LCD_start(c_start),
							.LCD_DONE(c_Done),
							.clk(clk),
							.reset(~rst),
							.LCD_DATA(DATA),
							.LCD_RW(RW),
							.LCD_EN(EN),
							.LCD_RS(RS),
							.LCD_ON(ON));
							

endmodule