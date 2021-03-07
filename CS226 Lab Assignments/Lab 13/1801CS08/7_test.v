module p7_tb();
	wire[31:0] otpt;
	wire carry, zero_case;
	reg[31:0] data_in, final_otpt;
	reg[2:0] sel;
	reg mux_cntrl, clk, write_enable;
	reg[5:0] read_addr1, read_addr2, write_addr;
	wire[31:0] alu1, alu2;
	integer i;

	initial
	begin
	clk <= 1'b0;
	read_addr1 <= 4'b0001;
	read_addr2 <= 4'b0010;
	sel = 3'b000;
	data_in = 0;
	write_addr = 26;
	write_enable <= 1;
	final_otpt <= 0;
	mux_cntrl <= 0;
	#200
	for(i = 0; i < 25; i = i + 1)
	begin
		data_in = $urandom%(64);
		write_enable = 1;
		mux_cntrl <= 0;
		write_addr <= i;	
		#200;
	end
	for(i = 0; i < 25; i = i + 1)
	begin
		write_enable = 0;
		mux_cntrl <= 1;
		read_addr1 <= i;
		read_addr2 <= 26;
		final_otpt <= final_otpt + otpt;	
		#200;
	end
	write_enable = 1;
	write_addr = 31;
	data_in = final_otpt;
	#200;
	end

	always #100 clk = ~clk; 

	p7 uut(otpt, alu1, alu2, carry, zero_case, data_in, mux_cntrl, clk, write_enable, 
	read_addr1, read_addr2, write_addr, sel);
			
endmodule
