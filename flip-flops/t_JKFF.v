// Testbench for JKFF.v

`timescale 1ns / 1ns
`include "JKFF.v"

module t_JKFF;
	reg J, K, clk, rst;
	wire Q;

	JKFF J1 (J, K, clk, rst, Q);

	initial #80 $finish;

	initial begin
		$dumpfile("t_JKFF.vcd");
		$dumpvars(0, t_JKFF);

		clk = 0;
		forever #5 clk = ~clk;
	end

	initial begin
		rst = 0;
	#3	rst = 1;
	end

	initial begin
		J = 0; K = 0;
	#10	J = 1; K = 0;
	#10	J = 0; K = 0;
	#10	J = 0; K = 0;
	#10	J = 0; K = 1;
	#10	J = 1; K = 1;
	#10	J = 0; K = 0;
	#10	J = 1; K = 1;
	#10	J = 0; K = 0;
	#10	J = 1; K = 0;
	end
endmodule
