`timescale 1ns / 1ns
`include "q4_41.v"

module t_q4_41;

	reg [3:0] A, B;
	reg M;
	wire [3:0] S;
	wire C;

	q4_41 M1 (A, B, M, S, C);

	initial begin
		$dumpfile("t_q4_41.vcd");
		$dumpvars(0, t_q4_41);
		#100 $finish;
	end

	initial begin
		A = 4'd0; B = 4'd0; M = 1'b0;
	#5	A = 4'd12; B = 4'd3; M = 1'b0;
	#5	A = 4'd2; B = 4'd1; M = 1'b1;
	#5	A = 4'd15; B = 4'd10; M = 1'b1;
	#5	A = 4'd5; B = 4'd2; M = 1'b1;
	#5	A = 4'd3; B = 4'd9; M = 1'b0;
	end
endmodule
