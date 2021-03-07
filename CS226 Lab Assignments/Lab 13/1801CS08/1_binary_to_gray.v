module binary_to_gray(gray, bin);
	output[3:0] gray;
	input[3:0] bin;
	
	assign gray[3] = bin[3];
	xor xor1(gray[2], gray[3], bin[2]);
	xor xor2(gray[1], gray[2], bin[1]);
	xor xor3(gray[0], gray[1], bin[0]);
endmodule