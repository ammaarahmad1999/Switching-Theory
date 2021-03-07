module p8(Z, D, S);
	
	output Z;
	input[15:0] D;
	input[3:0] S;

	not n0(inv_S0, S[0]);
	not n1(inv_S1, S[1]);
	not n2(inv_S2, S[2]);
	not n3(inv_S3, S[3]);

	and a0 (a0_o, D[0], inv_S1, inv_S0); 
	and a1 (a1_o, D[1], inv_S1, S[0]); 
	and a2 (a2_o, D[2], S[1], inv_S0); 
	and a3 (a3_o, D[3], S[1], S[0]);
	or o0 (M0, a0_o, a1_o, a2_o, a3_o); 

	and a4 (a4_o, D[4], inv_S1, inv_S0); 
	and a5 (a5_o, D[5], inv_S1, S[0]); 
	and a6 (a6_o, D[6], S[1], inv_S0); 
	and a7 (a7_o, D[7], S[1], S[0]);
	or o1 (M1, a4_o, a5_o, a6_o, a7_o); 

	and a8 (a8_o, D[8], inv_S1, inv_S0); 
	and a9 (a9_o, D[9], inv_S1, S[0]); 
	and a10 (a10_o, D[10], S[1], inv_S0); 
	and a11 (a11_o, D[11], S[1], S[0]);
	or o2 (M2, a8_o, a9_o, a10_o, a11_o); 

	and a12 (a12_o, D[12], inv_S1, inv_S0); 
	and a13 (a13_o, D[13], inv_S1, S[0]); 
	and a14 (a14_o, D[14], S[1], inv_S0); 
	and a15 (a15_o, D[15], S[1], S[0]);
	or o3 (M3, a12_o, a13_o, a14_o, a15_o); 

	and a16 (a16_o, M0, inv_S3, inv_S2);
	and a17 (a17_o, M1, inv_S3, S[2]);
	and a18 (a18_o, M2, S[2], inv_S3);
	and a19 (a19_o, M3, S[2], S[3]);
	or o4 (Z, a16_o, a17_o, a18_o, a19_o);
endmodule