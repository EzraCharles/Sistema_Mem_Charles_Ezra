module Memory_System_WRAPPER 
#(	
	parameter MEMORY_DEPTH	= 64,
	parameter DATA_WIDTH 	= 32
);

	logic 							Write_Enable_i, clk;
	logic 	[DATA_WIDTH-1:0]	Write_Data_i;
	logic 	[DATA_WIDTH-1:0]  Address_i;
	logic 	[DATA_WIDTH-1:0]  Data_o;
	
	Memory_System UUT(	
		.Write_Enable_i(Write_Enable_i),
		.clk(clk),
		.Write_Data_i(Write_Data_i),
		.Address_i(Address_i),
		.Data_o(Data_o)
	);
	
endmodule
