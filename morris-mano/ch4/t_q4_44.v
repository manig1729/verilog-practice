`timescale 1ns / 1ns
`include "q4_44.v"

module t_q4_44;

	reg [7:0] A, B;
	reg [2:0] sel;
	wire [7:0] y;

	q4_44 M1 (A, B, sel, y);

	initial begin
		$dumpfile("t_q4_44.vcd");
		$dumpvars(0, t_q4_44);

		#100 $finish;
	end

	initial begin
		A = 8'b01101110; B = 8'b00110101;
		sel = 3'd0;
		
		repeat (7)
			#5 sel = sel + 3'd1;

		#3 A = 8'b11011011;
		#2 sel = 3'b110;
	end
endmodule
