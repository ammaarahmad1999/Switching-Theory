module tb_p8();
	reg[15:0] D;
	reg[3:0] S;
	wire Z;
	integer i,j;
	p8 UUT(Z,D,S);
	initial
		begin
			#10 $monitor("UUT | D = %b", D, "  |  S = %b", S, "  |  Z = ", Z);
		for (i=0; i<=15; i=i+1)
			begin
				D=$urandom%2**16;
				for (j=0; j<=15; j=j+1)
				begin
					S=j;
					#10;
				end
			end
		end
endmodule