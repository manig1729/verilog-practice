// Testbench for mealy_101.v
`timescale 1ns / 1ns
`include "mealy_101.v"

module t_mealy_101;

	reg x_in, clk, rst;
	wire y_out;

	mealy_101 M1 (x_in, clk, rst, y_out);

	initial #200 $finish;

	initial begin
		$dumpfile("t_mealy_101.vcd");
		$dumpvars(0,t_mealy_101);

		clk = 0;
		forever #5 clk = ~clk;
	end

	initial fork
			rst = 0;
	#2		rst = 1;
	#87		rst = 0;
	#89 	rst = 1;
			x_in = 0;
	#10		x_in = 1;
	#20		x_in = 1;
	#30 	x_in = 0;
	#40 	x_in = 1;
	#50		x_in = 0;
	#60		x_in = 1;
	#70		x_in = 1;
	#80		x_in = 0;
	#90		x_in = 0;
	#100	x_in = 1;
	#110	x_in = 0;
	#120	x_in = 1;
	#130	x_in = 0;
	#140	x_in = 0;
	#150	x_in = 1;
	#160	x_in = 0;
	#170	x_in = 1;
	#180	x_in = 0;
	#190	x_in = 1;
	#196	x_in = 0;
	join
endmodule	
