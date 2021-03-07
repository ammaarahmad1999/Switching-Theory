module p3(out, zero_flag, alu1, alu2, data_in, clk, write_enable, selA, selB, selD, selOP);
	output reg[7:0] out, alu1, alu2;
	output reg zero_flag;
	input clk, write_enable;
	input[7:0] data_in;
	input[2:0] selA, selB, selD, selOP;
	reg [7:1] register[7:0];

	initial
	begin
		register[1]=8'h00;
		register[2]=8'h00;
		register[3]=8'h00;
		register[4]=8'h00;
		register[5]=8'h00;
		register[6]=8'h00;
		register[7]=8'h00;
	end
	
	always @(posedge clk)
	begin
		if(selA==0)
		alu1 <=data_in;
		else
		alu1 <=register[selA];
		if(selB==0)
		alu2 <=data_in;
		else
		alu2 <=register[selB];
		case(selOP)
			3'b000 : out=alu1+alu2;
			3'b001 : out=alu1-alu2;
			3'b010 : out=alu1*alu2;
			3'b011 : out=alu1/alu2;
			3'b100 : out=alu1&alu2;
			3'b101 : out=alu1|alu2;
			3'b110 : out=alu1^alu2;
			3'b111 : out=alu1;
		endcase
		if(write_enable && selD!==0)
			register[selD]<=out;
		if(out==0)
			zero_flag <=1;
		else
			zero_flag <=0;
	end
endmodule