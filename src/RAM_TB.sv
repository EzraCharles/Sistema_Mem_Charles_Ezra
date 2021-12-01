module RAM_TB;

parameter MEMORY_DEPTH 	= 64;
parameter DATA_WIDTH 	= 32;

logic clk_tb = 0;
logic								Write_Enable_i_tb;
logic [DATA_WIDTH-1:0] 	Address_i_tb;
logic [DATA_WIDTH-1:0] 	Write_Data_i_tb;
logic [DATA_WIDTH-1:0] 	Read_Data_o_tb;
  
RAM
#(
	.MEMORY_DEPTH(MEMORY_DEPTH),
	.DATA_WIDTH(DATA_WIDTH)
)
UUT(
	.clk(clk_tb),
	.Write_Enable_i(Write_Enable_i_tb),
	.Address_i(Address_i_tb),
	.Write_Data_i(Write_Data_i_tb),
	.Read_Data_o(Read_Data_o_tb)
);


initial
begin
    forever #2 clk_tb = !clk_tb;
end


initial begin
	#1 Write_Enable_i_tb = 1;

	#50 Address_i_tb 		 = 32'h1001_0000;
	#1 Write_Data_i_tb 	<= 32'hFFFF_FFFF;

	#50 Address_i_tb = 		32'h1001_0008;
	#1 Write_Data_i_tb 	<= 32'h1234_5678;

	#50 Address_i_tb		 = 32'h1001_000c;
	#1 Write_Data_i_tb 	<= 32'h9876_1234;

	#50 Address_i_tb 		 = 32'h1001_0010;
	#1 Write_Data_i_tb	<= 32'hA0A0_A0A0;

	#50 Address_i_tb 		 = 32'h1001_0014;
	#1 Write_Data_i_tb 	<= 32'hABCD_EF12;


end

endmodule
