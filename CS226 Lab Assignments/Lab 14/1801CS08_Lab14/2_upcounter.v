module upcounter (output reg [3:0] Q, output reg Y,
 input clk);
 initial 
 Q=4'h0;
 always @(posedge clk)
	begin
 		Q <= Q == 15 ? 0 : Q + 1;
		Y = Q[3];
	end
endmodule