`timescale 1ns / 1ns
`include "q4_39.v"

module t_q4_39;

	reg [3:0] A, B;
	wire [5:0] Y;

	q4_39 M1 (A, B, Y);

	initial begin
		$dumpfile("t_q4_39.vcd");
		$dumpvars(0, t_q4_39);

		#100 $finish;
	end

	initial begin
		A = 4'd0;
		B = 4'd5;
	#5	A = 4'd5;
	#5 	B = 4'd3;
	#5 	A = 4'd15;
	#5  B = 4'd15;
	#5 	A = 4'd4;
	end
endmodule
