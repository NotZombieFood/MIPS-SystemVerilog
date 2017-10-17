module LCD_Controller_MIPS #(
	parameter	clk_wait	=	16) 
	(	
		input reset,clk, iRS, LCD_start,
		input [7:0] DATA,
		output [7:0] LCD_DATA,
		output logic LCD_EN, LCD_DONE,
		output LCD_RW, LCD_RS, LCD_ON 
	);

//Turn on the LCD Display
assign LCD_ON = 1;

//Assign outputs
assign	LCD_DATA	=	DATA; 
assign	LCD_RW		=	1'b0;
assign	LCD_RS		=	iRS;

//	Internal connections
enum {start, init, delay, done} state, next_state;
logic [4:0] counter;

//Reset
always_ff @(posedge clk) begin
	state = (reset)? start : next_state;
end

//FSM
always_ff @(posedge clk) begin
	unique case(state)
	start:begin
			LCD_DONE	=	1'b0;
			LCD_EN	=	1'b0;
			counter	=	0;
			next_state	=	init;	//	Go to delay state
			end
	init:	begin
			LCD_EN	=	1'b1;
			next_state		=	delay;
			end
	delay:begin					
			if(counter<clk_wait) //wait until the parameter we defined
			counter	=	counter+1;
			else
			next_state		=	done; //finish the wait 
			end
	done:	begin
			LCD_EN	=	1'b0;
			LCD_DONE	=	1'b1; //set the flag for done
			counter	=	0;
			if (LCD_start) begin
			next_state		=	start;
			end
			end
	endcase
end

endmodule : LCD_Controller_MIPS