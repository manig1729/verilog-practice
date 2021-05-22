// Testbench for moore_111_or_more.v

`timescale 1ns / 1ns
`include "moore_111_or_more.v"

module t_moore_111_or_more;

	reg x, clk, rst;
	wire y;

	moore_111_or_more M1 (x, clk, rst, y);

	initial #100 $finish;

	initial begin
		$dumpfile("t_moore_111_or_more.vcd");
		$dumpvars(0, t_moore_111_or_more);
		
		clk = 0;
		forever #5 clk = ~clk;
	end

	initial fork
		rst	= 0;
	#3	rst = 1;
	#66	rst	= 0;
	#69	rst = 1;
		x	= 0;
	#10	x	= 1;
	#20	x	= 1;
	#30 x	= 0;
	#40	x	= 1;
	#50	x	= 0;
	#60	x	= 1;
	#70	x	= 1;
	#80	x	= 1;
	#90	x	= 1;
	join
endmodule
