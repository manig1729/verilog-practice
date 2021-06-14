`timescale 1ns / 1ns
`include "q3_37.v"

module t_q3_37;

	wire x;
	reg a, b, c, d;

	q3_37 P1 (x, a, b, c, d);

	initial begin
		$dumpfile("t_q3_37.vcd");
		$dumpvars(0, t_q3_37);
	
		#160 $finish;
	end

	initial begin
		#0		{a,b,c,d} = 4'd0;
		#10		{a,b,c,d} = 4'd1;
		#10		{a,b,c,d} = 4'd2;
		#10		{a,b,c,d} = 4'd3;
		#10		{a,b,c,d} = 4'd4;
		#10		{a,b,c,d} = 4'd5;
		#10		{a,b,c,d} = 4'd6;
		#10		{a,b,c,d} = 4'd7;
		#10		{a,b,c,d} = 4'd8;
		#10		{a,b,c,d} = 4'd9;
		#10		{a,b,c,d} = 4'd10;
		#10		{a,b,c,d} = 4'd11;
		#10		{a,b,c,d} = 4'd12;
		#10		{a,b,c,d} = 4'd13;
		#10		{a,b,c,d} = 4'd14;
		#10		{a,b,c,d} = 4'd15;
	end
endmodule
