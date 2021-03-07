module tb_p3c();
	wire[7:0] out, alu1, alu2;
	wire zero_flag;
	reg[7:0] data_in;
	reg clk, write_enable;
	reg[2:0] selOP;
	integer i;

	initial 
	begin
	clk=1;
	write_enable=1'b1;
	selOP=3'b000;
	for (i=0; i<=15; i=i+1)
	begin
		data_in=$urandom%2**8;
		#10;
	end
	end
	always #5 clk=~clk;

	p3c UUT(out, zero_flag, alu1, alu2, data_in, clk, write_enable, selOP);

endmodule