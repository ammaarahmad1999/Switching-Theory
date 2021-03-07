module tb_encoder();
	reg[7:0] I;
	wire[2:0] Z;
	integer i;
	reg enable;

	encoder UUT(Z,I,enable);
	initial
		begin
			$monitor("I = %b", I, ", Z = %b", Z);
			enable = 1'b1;
			for (i=0; i<=7; i=i+1)
			begin
				I=2**i;
				#10
				$display("\n\n");
			end
		end
endmodule