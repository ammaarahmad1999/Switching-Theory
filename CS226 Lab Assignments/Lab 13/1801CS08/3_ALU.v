module ALU(result, flag, select, A,B);
	output[15:0] result;
	output flag;
	input[2:0] select;
	input[15:0] A,B;
	reg[15:0] result;
	reg flag;
	always @*
	begin
	case(select)
	3'b000: result=A+B;
	3'b001: result=A-B;
	3'b010: result=A^B;
	3'b011: result=A&B;
	3'b100: result=A|B;
	3'b101: result=A+1;
	3'b110: result=A<<1;
	3'b111: result=A>>1;
	default:result=16'd0;
	endcase
	if(result==0)
	flag = 1;
	else
	flag = 0;
	end
endmodule