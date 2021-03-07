module p2(l, d); 
	output l; 
	input[2:0] d;
	
	not not2 (inv_d2, d[2]); 
	not not1 (inv_d1, d[1]);
	not not0 (inv_d0, d[0]); 
	
	or or1(in, inv_d1, inv_d0);
	and out(l, in, inv_d2);
endmodule