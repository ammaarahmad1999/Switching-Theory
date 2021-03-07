module tb_upcounter();
	wire[3:0] Q;
	wire Y;
	reg clk;
	integer i;

	upcounter UUT(Q,Y,clk);
	initial 
		begin
			$monitor("clk = ", clk, ", Q = %b", Q, " ,Y = ",Y);
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