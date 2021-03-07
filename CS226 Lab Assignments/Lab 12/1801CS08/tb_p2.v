module tb_p2();
	reg[2:0] d; 
	wire l;
	
	integer i;
	p2 UUT (l, d); 
	initial
		begin
			#10 $monitor("D = %b", d, ", L = ", l);
		    for( i = 0; i <= 7; i = i + 1)
			    begin
				  d = i;
				  #10
				  $display("\n\n");
				end
		end
endmodule