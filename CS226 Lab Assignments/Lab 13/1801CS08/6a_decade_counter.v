module decade_counter ( output reg [3:0] q,
 input clk );
 initial 
 q=4'h0;
 always @(posedge clk)
 q <= q == 9 ? 0 : q + 1;
endmodule
