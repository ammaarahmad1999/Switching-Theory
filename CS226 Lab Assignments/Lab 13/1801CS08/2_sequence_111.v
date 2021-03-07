module sequence_111(Y,Q1,Q0,S,D1,D0,clk,reset);
	output Y,Q1,Q0;
	input S,D1,D0,clk,reset;
	reg Y,Q1,Q0;

	always @ (posedge clk)
	if(~reset)
		begin
			Q1 = 1'b0;
			Q0 = 1'b0;
			Y  = 1'b0;
		end
	else
		begin
			Q1 = (D1|D0) & S;
			Q0 = ~D1&~D0&S;
			Y  = ~D0&D1&S;
		end
endmodule