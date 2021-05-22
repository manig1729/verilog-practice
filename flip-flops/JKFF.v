// Functional model of JK flip flop

module JKFF(
	input J, K, clk, rst,
	output reg Q
);

	always @ (posedge clk or negedge rst)
		if (!rst) Q <= 0;
		else case ({J,K})
			2'b00 : Q <= Q;
			2'b01 : Q <= 0;
			2'b10 : Q <= 1;
			2'b11 : Q <= !Q;
		endcase
endmodule
