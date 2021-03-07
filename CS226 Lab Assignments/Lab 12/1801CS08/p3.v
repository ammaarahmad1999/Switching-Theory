module p3(f, g, h, a, b, c); 
	output f, g, h;
	input a, b, c;
	
	not not1 (inv_a,a);
	not not2 (inv_b, b); 
	not not3 (inv_c, c); 
	
	and f_and1 (f_out1, a, inv_b);
	and f_and2 (f_out2, inv_b, inv_c);
	and f_and3 (f_out3, a, c); 
	or f_out (f, f_out1, f_out2, f_out3);
	
	or g_or1 (g_out1, inv_b, c); 
	or g_or2 (g_out2, a, b, inv_c); 
	and g_and (g, g_out1, g_out2); 
	
	and h_and1 (h_out1, inv_b, inv_c); 
	and h_and2 (h_out2, b, c); 
	and h_and3 (h_out3, a, c); 
	or h_out (h, h_out1, h_out2, h_out3); 
endmodule