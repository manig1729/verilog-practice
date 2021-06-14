`timescale 1ns / 1ns
`include "q4_38.v"

module t_q4_38;

	wire [3:0] Y;
	reg [3:0] A, B;
	reg S, E;

	q4_38 M1 (A, B, S, E, Y);

	initial begin
		$dumpfile("t_q4_38.vcd");
		$dumpvars(0, t_q4_38);

		#100 $finish;
	end

	initial begin
		A = 4'b0;
		B = 4'd10;
		E = 1'b1;
		S = 1'b0;
		#2 E = 1'b0;
		S = 1'b1;
		#3 S = 1'b0;
		#5 S = 1'b1;
		#4 A = 4'd15;
		#2 S = 1'b1;
		#3 S = 1'b0;
		#5 S = 1'b1;
		#3 S = 1'b0;
		#5 S = 1'b1;
		#3 S = 1'b0;
		#5 S = 1'b1;
	end
endmodule
