module sequence_1101(Y,Q2,Q1,Q0,S,D2,D1,D0,clk,reset);
	output Y,Q2,Q1,Q0;
	input S,D2,D1,D0,clk,reset;
	reg Y,Q2,Q1,Q0;

	always @ (posedge clk)
	if(~reset)
		begin
			Q2 = 1'b0;
			Q1 = 1'b0;
			Q0 = 1'b0;
			Y  = 1'b0;
		end
	else
		begin
			Q2 = D1&D0&S;
			Q1 = (D1&~D0)|(~D1&D0&S)|(D2&S);
			Q0 = (~D2&~D1&~D0&S)|(D1&~D0&~S);
			Y  = D2;
		end
endmodule