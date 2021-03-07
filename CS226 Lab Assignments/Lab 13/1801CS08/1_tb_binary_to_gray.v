module tb_binary_to_gray();
	reg[3:0] bin;
	wire[3:0] gray;
	integer i;

	binary_to_gray UUT(gray,bin);
	initial
		begin
			$monitor("bin = %b", bin, ", gray = %b", gray);
			for (i=0; i<=15; i=i+1)
			begin
				bin=i;
				#10
				$display("\n\n");
			end
		end
endmodule