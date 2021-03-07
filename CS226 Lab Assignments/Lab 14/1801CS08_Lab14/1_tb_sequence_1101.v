module tb_sequence_1101();
	reg S,D2,D1,D0,clk,reset;
	wire Y,Q2,Q1,Q0;
	reg Q20, Q10, Q00;
	integer i;
	reg[16:0] RAN;

	sequence_1101 UUT(Y,Q2,Q1,Q0,S,D2,D1,D0,clk,reset);
	initial
		begin
		#10 $monitor("UUT | D2 =", D2, " ,D1 = ", D1, " ,D0 = ", D0, " ,S = ", S, ", clk = " , clk, " ,reset = ", reset, " ,Y = ", Y, " ,Q2 =", Q2, " ,Q1 = ", Q1, " ,Q0 = " ,Q0);

		reset = 1'b1;
		Q20 = 1'b0;
		Q10 = 1'b0;
		Q00 = 1'b0;
		RAN = 17'b11101101001001101;
		for (i=16; i>=0; i=i-1)
			begin
				S=RAN[i];
				D2=Q20;
				D1=Q10;
				D0=Q00;
				clk = 1'b1;
				#5
				clk = 1'b0;
				#5
				Q20=Q2;
				Q10=Q1;
				Q00=Q0;
			end
		end
endmodule