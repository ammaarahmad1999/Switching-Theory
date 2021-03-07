
module p7_1(Z, D, S);
	
	output Z;
	input[3:0] D;
	input[1:0] S;
	
	not n0 (inv_S0, S[0]); 
	not n1 (inv_S1, S[1]); 
	
	and a0 (a0_o, D[0], inv_S1, inv_S0); 
	and a1 (a1_o, D[1], inv_S1, S[0]); 
	and a2 (a2_o, D[2], S[1], inv_S0); 
	and a3 (a3_o, D[3], S[1], S[0]);
	or o0 (Z, a0_o, a1_o, a2_o, a3_o); 
endmodule
	

module p7_2(Z, D, S);
	output Z;
	input[1:0] S;
	input[3:0] D;
	
	wire Z;
	wire[1:0] S;
	wire[3:0] D;

	assign Z = D[S];
endmodule
	

module p7_3(Z, D, S);

	output Z; 
	input[3:0] D;
	input[1:0] S;

	reg Z;
	wire[1:0] S;
	wire[3:0] D;

	always @(S or D)
	begin
		Z = D[S];
	end
endmodule


module p7_4(Z, D, S);
	
	output Z;
	input[1:0] S;
	input[3:0] D;

	wire Z;
	wire[1:0] S;
	wire[3:0] D;

	assign Z = ( S == 0 )? D[0] : (( S == 1 )? D[1] : ((S == 2 )? D[2] : D[3]));
endmodule


module p7_5(Z, D, S);

	output     Z;
	input[1:0] S;
	input[3:0] D;

	reg Z;
	wire[1:0] S;
	wire[3:0] D;

	always @( S or D )
	begin
	   case( S )
		   0 : Z = D[0];
		   1 : Z = D[1];
		   2 : Z = D[2];
		   3 : Z = D[3];
	   endcase
	end
endmodule


module p7_6(Z, D, S);

	output Z;
	input[1:0] S;
	input[3:0] D;
	

	reg Z;
	wire[1:0] S;
	wire[3:0] D;

	always @( S or D)
	begin
		Z = ( ~S[0] & ~S[1] & D[0] ) | (  S[0] & ~S[1] & D[1] ) | ( ~S[0] &  S[1] & D[2] ) | (  S[0] &  S[1] & D[3] );
	end
endmodule