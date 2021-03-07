module tb_p5();
	reg[2:0] M;
	wire A;
	integer i;
	p5 UUT(A,M);
	initial
		begin
			$monitor("M = %b", M, ", A = ", A);
				for ( i=0; i<=7; i=i+1)
				begin
					M=i;
					#10
					$display("\n\n");
				end
		end
endmodule