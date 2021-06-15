module q4_51 (bcd, led);

	input [3:0] bcd;
	output reg [6:0] led;

	always @ (bcd) begin
		led = 7'b0;
		case (bcd)
			4'd0	:	led = 7'b1111110;
			4'd1	:	led = 7'b0110000;
			4'd2	:	led = 7'b1101101;
			4'd3	:	led = 7'b1111001;
			4'd4	:	led = 7'b0110011;
			4'd5	:	led = 7'b1011011;
			4'd6	:	led = 7'b1011111;
			4'd7	:	led = 7'b1110000;
			4'd8	:	led = 7'b1111111;
			4'd9	:	led = 7'b1111011;
			default :	led = 7'b0000000;
		endcase
	end
endmodule
