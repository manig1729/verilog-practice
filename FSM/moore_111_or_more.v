// Moore FSM that checks for three or more consecutive
// ones in a bitstream
//
// Modeled using D flip flops

module moore_111_or_more (
	input x, clk, rst,
	output y
);

	wire A, B;
	wire D_A, D_B;

	assign D_A = (A||B)&&x;
	assign D_B = (A||(!B))&&x;
	assign y = A&&B;

	DFF D1 (D_A, clk, rst, A);
	DFF D2 (D_B, clk, rst, B);

endmodule

module DFF (
	input D, clk, rst,
	output reg Q
);

	always @ (posedge clk or negedge rst)
		if (!rst) Q <= 0;
		else Q <= D;
endmodule
