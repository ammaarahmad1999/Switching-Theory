module tb_alarm_priority();
	reg[1:8] zone;
	wire[2:0] intruder_zone;
	wire valid;
	integer i;
	
	alarm_priority UUT(intruder_zone, valid, zone);
	initial
		begin
			$monitor("intruder_zone = %b", intruder_zone, "valid = ", valid, "zone = %b", zone);
			for (i=0; i<=15; i=i+1)
			begin
				zone=$urandom%2**8;
				#10;
				$display("\n\n");
			end
		end
endmodule