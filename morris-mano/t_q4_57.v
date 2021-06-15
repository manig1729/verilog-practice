`timescale 1ns / 1ns
`include "q4_57.v"

module t_q4_57;

	reg [3:0] D;
	wire x, y, V;

	q4_57 M1 (D, x, y, V);

	initial begin
		$dumpfile("t_q4_57.vcd");
		$dumpvars(0, t_q4_57);

		#100 $finish;
	end

	initial begin
		D = 4'b0000;
	#5	D = 4'b0001;
	#5	D = 4'b0010;
	#5 	D = 4'b0100;
	#5  D = 4'b1000;
	#5 	D = 4'b0110;
	#5  D = 4'b1001;
	#5  D = 4'b1100;
	#5  D = 4'b0101;
	#5  D = 4'b1111;
	#5  D = 4'b0000;
	end
endmodule
