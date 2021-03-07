module tb_sequence_111();
	reg S,D1,D0,clk,reset;
	wire Y,Q1,Q0;
	reg Q10, Q00;
	integer i;
	reg[15:0] RAN;

	sequence_111 UUT(Y,Q1,Q0,S,D1,D0,clk,reset);
	initial
		begin
		#10 $monitor("UUT | D1 =", D1, " ,D0 = ", D0, " ,S = ", S, ", clk = " , clk, " ,reset = ", reset, " ,Y = ", Y, " ,Q1 = ", Q1, " ,Q0 = " ,Q0);

		reset = 1'b1;
		Q10 = 1'b0;
		Q00 = 1'b0;
		RAN = 16'h8756;
		for (i=0; i<=15; i=i+1)
			begin
				S=RAN[i];
				D1=Q10;
				D0=Q00;
				clk = 1'b1;
				#5
				clk = 1'b0;
				#5
				Q10=Q1;
				Q00=Q0;
			end
		end
endmodule