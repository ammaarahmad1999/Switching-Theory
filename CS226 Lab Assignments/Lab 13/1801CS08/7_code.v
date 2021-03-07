module p7(otpt, alu1, alu2, carry, zero_case, data_in, mux_cntrl, clk, write_enable, 
	read_addr1, read_addr2, write_addr, sel);
	output reg [31:0] otpt, alu1, alu2;
	output reg carry, zero_case;
	input[31:0] data_in;
	input[2:0] sel;
	input mux_cntrl, clk, write_enable;
	input[5:0] read_addr1, read_addr2, write_addr;
	reg[31:0] mux_out;
	reg [31:0] register [31:0];	

	always @(posedge clk)
	begin
		mux_out <= data_in * ~mux_cntrl + otpt * mux_cntrl;
		alu1 <= register[read_addr1];
		alu2 <= register[read_addr2];
		if(write_enable)
			register[write_addr] <= data_in;
		case(sel)
			3'b000 : {carry ,otpt} <= alu1 + alu2;
			3'b001 : {carry ,otpt} <= alu1 - alu2;
			3'b010 : otpt <= alu1 ^ alu2;
			3'b011 : otpt <= alu1 & alu2;
			3'b100 : otpt <= alu1 + 1'b1; 
			3'b101 : otpt <= alu1 | alu2;
			3'b110 : otpt <= alu1 << 1;
			3'b111 : otpt <= alu1 >> 1;
		endcase
		if(otpt == 0);
			zero_case <= 1;
	end
endmodule