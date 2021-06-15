`timescale 1ns / 1ns
`include "q4_42.v"

module t_q4_42;
	
	reg a, b, c, d;
	wire w, x, y, z;

	q4_42 M1 (a, b, c, d, w, x, y, z);

	initial begin
		$dumpfile("t_q4_42.vcd");
		$dumpvars(0, t_q4_42);

		#100 $finish;
	end

	initial begin
		{a, b, c, d} = 4'b0000;
		repeat (9)
		#8 {a, b, c, d} = {a, b, c, d} + 4'b0001;
	end
endmodule
