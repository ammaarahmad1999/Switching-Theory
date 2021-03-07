module decoded_counter ( output ctrl,
 input clk );
 reg [3:0] count_value;
 initial
 count_value=4'hF;
 always @(posedge clk)
 count_value <= count_value + 1;

 assign ctrl = count_value == 4'b0111 ||
 count_value == 4'b1011;

endmodule