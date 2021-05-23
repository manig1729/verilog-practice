// Testbench for TFF.v

`timescale 1ns / 1ns
`include "TFF.v"

module t_TFF;
	
	reg T, clk, rst;
	wire Q;

	TFF T0 (T, clk, rst, Q);

	initial #100 $finish;

	initial begin
		$dumpfile("t_TFF.vcd");
		$dumpvars(0, t_TFF);

		clk = 0;
		forever #5 clk = ~clk;
	end

	initial begin
		rst = 0;
	#3	rst = 1;
	end

	initial begin
		T = 0;
	#10	T = 1;
	#10	T = 0;
	#10	T = 1;
	#10	T = 0;
	#10	T = 1;
	#10	T = 0;
	#10	T = 0;
	#10	T = 1;
	#10	T = 1;
	end
endmodule
