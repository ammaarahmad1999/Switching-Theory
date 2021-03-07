module tb_p3();
	wire[7:0] out, alu1, alu2;
	wire zero_flag;
	reg[7:0] data_in;
	reg clk, write_enable;
	reg[2:0] selA, selB, selD, selOP;
	integer i;

	initial 
	begin
	clk=1;
	write_enable=1'b1;
	data_in=$urandom%2**8;
	selA =3'b000;
	selB =3'b111;
	selD =3'b000;
	selOP=3'b111;
	#10;
	for (i=0; i<=15; i=i+1)
	begin
		data_in=$urandom%2**8;
		selA =$urandom%2**3;
		selB =$urandom%2**3;
		selD =$urandom%2**3;
		selOP=$urandom%2**3;
		#10;
	end
	end
	always #5 clk=~clk;

	p3 UUT(out, zero_flag, alu1, alu2, data_in, clk, write_enable, selA, selB, selD, selOP);

endmodule