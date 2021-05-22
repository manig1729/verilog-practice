// Testbench for mealy_1101_jk.v

`timescale 1ns / 1ns
`include "mealy_1101_jk.v"

module t_mealy_1101_jk;

	reg x, clk, rst;
	wire y;

	mealy_1101_jk M1 (x, clk, rst, y);

	initial #200 $finish;

	initial begin
		$dumpfile("t_mealy_1101_jk.vcd");
		$dumpvars(0, t_mealy_1101_jk);
		
		clk = 0;
		forever #5 clk = ~clk;
	end

	initial begin
		rst = 0;
	#3	rst = 1;
	end

	initial begin
			x = 0;
	#10		x = 1;
	#10		x = 1;
	#10		x = 0;
	#10		x = 0;
	#10		x = 1;
	#10		x = 1;
	#10		x = 0;
	#10		x = 1;
	#10		x = 0;
	#10		x = 0;
	#10		x = 1;
	#10		x = 1;
	#10		x = 0;
	#10		x = 1;
	#10		x = 1;
	#10		x = 0;
	#10		x = 1;
	#10		x = 0;
	#10		x = 0;
	#10		x = 1;
	end
endmodule
