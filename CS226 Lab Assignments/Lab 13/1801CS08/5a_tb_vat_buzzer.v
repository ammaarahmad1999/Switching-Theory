module tb_vat_buzzer_behavior();
	wire buzzer;
	reg above_25_0;
	reg above_25_1;
	reg above_30_0;
	reg above_30_1;
	reg low_level_0;
	reg low_level_1;
	reg select_vat_1;
	integer i;

	vat_buzzer_behavior UUT(buzzer, above_25_0, above_30_0, low_level_0, above_25_1, above_30_1, low_level_1, select_vat_1 );
	initial 
		begin
			$monitor("buzzer = ", buzzer, "above_25_0 = ", above_25_0, "above_25_1 = ", above_25_1, "
above_30_0 = ", above_30_0, "above_30_1 = ", above_30_1, "low_level_0 = ", low_level_0, "low_level_1 = ", low_level_1, "select_vat_1 = ",select_vat_1);
		for(i=0; i<=15; i=i+1)
			begin
				above_25_0 = $urandom%2;
				above_25_1 = $urandom%2;
				above_30_0 = $urandom%2;
				above_30_1 = $urandom%2;
				low_level_0= $urandom%2;
				low_level_1= $urandom%2;
				select_vat_1=$urandom%2;
				#10;
			end
		end
endmodule