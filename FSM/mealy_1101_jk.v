// Mealy FSM to detect 1101 in a bitstream
// Modelled using JK Flip flops

module mealy_1101_jk (
	input x, clk, rst,
	output y
);

	wire A, B;
	wire Ja, Ka, Jb, Kb;

	assign Ja = B && x;
	assign Ka = B;
	assign Jb = A ^ x;
	assign Kb = !x || !A;
	assign y = A && B && x;

	JKFF J1 (Ja, Ka, clk, rst, A);
	JKFF J2 (Jb, Kb, clk, rst, B);

endmodule

module JKFF (
	input J, K, clk, rst,
	output reg Q
);

	always @ (posedge clk, negedge rst)
		if (!rst) Q <= 0;
		else case ({J, K})
			2'b00 : Q <= Q;
			2'b01 : Q <= 0;
			2'b10 : Q <= 1;
			2'b11 : Q <= !Q;
		endcase
endmodule
