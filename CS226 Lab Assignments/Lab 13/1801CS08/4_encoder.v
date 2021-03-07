module encoder(Z, I, enable);
	output[2:0] Z;
	input[7:0] I;
	input enable;
	reg[2:0] Z; 
	always @*
	begin
	if(enable)
	begin
		case(I)
		8'h01:Z=3'b000;
		8'h02:Z=3'b001;
		8'h04:Z=3'b010;
		8'h08:Z=3'b011;
		8'h10:Z=3'b100;
		8'h20:Z=3'b101;
		8'h40:Z=3'b110;
		8'h80:Z=3'b111;
		endcase
	end
	end
endmodule
