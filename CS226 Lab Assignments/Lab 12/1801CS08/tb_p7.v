module tb_p7(); 
	reg[3:0] D; 
	reg[1:0] S; 
	wire Z; 
	integer i;
	p7_4 UUT(Z, D, S);
	initial
		begin
			 #10 $monitor("UUT | D = %b", D, "  |  S = %b", S, "  |  Z = ", Z);
		   for( i = 0; i <= 15; i = i + 1) 
			   begin
				  D = i;
				  S = 0;  #10; 
				  S = 1;  #10;
				  S = 2;  #10;
				  S = 3;  #10;
				  $display("\n\n");
				end
		end
endmodule