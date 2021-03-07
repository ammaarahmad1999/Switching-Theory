module p5(A, M);
	output A;
	input[2:0] M;

	and and0 (a0_out, M[0], M[1]);
	and and1 (a1_out, M[1], M[2]);
	and and2 (a2_out, M[2], M[0]);
	
	or out(A, a0_out,a1_out,a2_out);
endmodule