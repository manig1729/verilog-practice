// Testbench for ripple_counter_4bit.v
`timescale 1ns / 1ns
`include "ripple_counter_4bit.v"

module t_ripple_counter_4bit;
	
	reg count, rst;
	wire a0, a1, a2, a3;

	ripple_counter_4bit M0 (a3, a2, a1, a0, count, rst);

	always #5 count = ~count;

	initial begin
		$dumpfile("t_ripple_counter_4bit.vcd");
		$dumpvars(0, t_ripple_counter_4bit);

		count = 1'b0;
		rst = 1'b1;
		#4 rst = 1'b0;
	end

	initial #170 $finish;
endmodule
