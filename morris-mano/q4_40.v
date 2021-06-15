module q4_40 (A, B, M, S, C);

	input [3:0] A, B;
	input M;
	output [3:0] S;
	output C;

	assign {C, S} = (M)?(A-B):(A+B);
endmodule
