module tb_decade_counter();
	wire[3:0] q;
	reg clk;
	integer i;

	decade_counter UUT(q,clk);
	initial 
		begin
			$monitor("clk = ", clk, ", q = %b", q);
			for (i=0; i<=20; i=i+1)
			begin
				clk=1;
				#5;
				clk=0;
				#5
				$display("\n\n");
			end
		end
endmodule	