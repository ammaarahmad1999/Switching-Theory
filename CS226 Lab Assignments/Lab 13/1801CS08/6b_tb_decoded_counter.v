module tb_decoded_counter();
	wire ctrl;
	reg clk;
	integer i;
	
	decoded_counter UUT(ctrl, clk);
	initial 
		begin
			$monitor("ctrl = ", ctrl, ", clk = ", clk);
			for (i=0; i<=15; i=i+1)
			begin
				clk=1;
				#5;
				clk=0;
				#5;
				$display("\n\n");
			end
		end
endmodule