// Testbench for DFF.v

`timescale 1ns / 1ns
`include "DFF.v"

module t_DFF;

	reg D, clk, rst;
	wire Q;

	DFF D1 (D, clk, rst, Q);

	initial #60 $finish;

	initial begin
		$dumpfile("t_DFF.vcd");
		$dumpvars(0, t_DFF);
	
		clk = 0;
		forever #5 clk = ~clk;
	end

	initial fork
		rst	= 0;
		D	= 0; 
	#3	rst = 1;
	#29 rst = 0;
	#34 rst = 1;
	#10	D	= 1;
	#27	D	= 0;
	#44 D	= 1;
	#48 D 	= 0;
	#57	D	= 1;
	join
endmodule
