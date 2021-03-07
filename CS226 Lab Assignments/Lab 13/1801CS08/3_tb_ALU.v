module tb_ALU(); //test_bench
	wire[15:0] result;
	wire flag;
	reg [15:0] A,B;
	reg [2:0] select;
	integer i;
	ALU UUT (result, flag, select, A, B);
	initial
		begin //checking for random values of A,B
		for( i = 0; i <= 7; i = i + 1)
		begin
			A=$urandom%2**15;
			B=$urandom%2**15;
			select=i;
			$monitor("select = %b", select ," , first number = %b", A, " , second number = %b", B, ", result= %b", result, "flag =", flag);
			#10;
			$display("\n\n");
		end
		end
endmodule