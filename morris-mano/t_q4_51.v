`timescale 1ns / 1ns
`include "q4_51.v"

module t_q4_51;
	
	reg [3:0] bcd;
	wire [6:0] led;

	q4_51 M1 (bcd, led);

	initial begin
		$dumpfile("t_q4_51.vcd");
		$dumpvars(0, t_q4_51);

		#100 $finish;
	end

	initial begin
		bcd = 4'd0;
		
		repeat (15)
			#5 bcd = bcd + 4'd1;
	end
endmodule
