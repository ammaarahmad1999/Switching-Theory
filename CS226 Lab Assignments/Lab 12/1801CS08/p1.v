module p1(z,d,s);
	output z;
	input[3:0] d;
	input[1:0] s;

	not not0(inv_s0,s[0]);
	not not1(inv_s1,s[1]);
	
	and and3(a3_out,d[3],s[1],s[0]);
	and and2(a2_out,d[2],s[1],inv_s0);
	and and1(a1_out,d[1],inv_s1,s[0]);
	and and0(a0_out,d[0],inv_s1,inv_s0);
	nor out(z,a0_out,a1_out,a2_out,a3_out);
endmodule
