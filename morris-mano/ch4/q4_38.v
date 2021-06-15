module q4_38 (A, B, S, E, Y);

	input [3:0] A, B;
	input S, E;
	output [3:0] Y;

	assign Y[0] = (A[0]&&~S&&~E)||(B[0]&&S&&~E);
	assign Y[1] = (A[1]&&~S&&~E)||(B[1]&&S&&~E);
	assign Y[2] = (A[2]&&~S&&~E)||(B[2]&&S&&~E);
	assign Y[3] = (A[3]&&~S&&~E)||(B[3]&&S&&~E);

endmodule
