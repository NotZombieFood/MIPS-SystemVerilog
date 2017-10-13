module TopTest;
// Inputs
	logic clk;
	logic rst;
	// Instantiate the Unit Under Test (UUT)
	top uut (
		.clk(clk), 
		.rst(rst)
	);

	initial begin
		// Initialize Inputs
		clk = 0;
		rst = 1;
		// Wait 100 ns for global reset to finish
		#100;
       rst= 0;
		// Add stimulus here
		

	end
	
	initial begin
	forever #10 clk = ~clk;
	end
      
endmodule

