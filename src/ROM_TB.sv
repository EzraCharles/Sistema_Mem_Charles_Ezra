module ROM_TB;

parameter MEMORY_DEPTH 	= 64;
parameter DATA_WIDTH 	= 32;

logic [DATA_WIDTH-1:0] 	Address_i_tb;
logic [DATA_WIDTH-1:0] 	Instruction_o_tb;
  
ROM
#(
	.MEMORY_DEPTH(MEMORY_DEPTH),
	.DATA_WIDTH(DATA_WIDTH)
)
UUT(
	.Address_i(Address_i_tb),
	.Instruction_o(Instruction_o_tb)
);


initial begin

	#50 Address_i_tb 		 = 32'h40_0000;
	#1 Instruction_o_tb 	<= 32'h2008ffff;

	#50 Address_i_tb = 		32'h40_0004;
	#1 Instruction_o_tb 	<= 32'h20090010;

	#50 Address_i_tb		 = 32'h40_0008;
	#1 Instruction_o_tb 	<= 32'h200a000a;

	#50 Address_i_tb 		 = 32'h40_000C;
	#1 Instruction_o_tb	<= 32'h200b0019;

	#50 Address_i_tb 		 = 32'h40_0010;
	#1 Instruction_o_tb 	<= 32'h012a8020;
	
	#50 Address_i_tb 		 = 32'h40_0014;
	#1 Instruction_o_tb 	<= 32'h01688820;
	
	#50 Address_i_tb 		 = 32'h40_0018;
	#1 Instruction_o_tb 	<= 32'h016a9020;
	
	#50 Address_i_tb 		 = 32'h40_001C;
	#1 Instruction_o_tb 	<= 32'h02509820;


end

endmodule
