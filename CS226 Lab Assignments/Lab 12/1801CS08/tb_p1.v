module tb_p1(); 
	reg[3:0] d; 
	reg[1:0] s; 
	wire z; 
	integer i;
	p1 UUT (z, d, s);
	initial
		begin
			 #10 $monitor("D = %b", d, ", S = %b", s, "  Z, = %b", z);
		   for( i = 0; i <= 15; i = i + 1) 
			   begin
				  d = i;
				  s = 0;  
				  #10;
				  s = 1;  
				  #10;
				  s = 2;  
				  #10;
				  s = 3;  
				  #10;
				  $display("\n\n");
				end
		end
endmodule