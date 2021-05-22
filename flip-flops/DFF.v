// Verilog model for a D Flip flop
// Positive edge triggered
// Asynch. Negative reset

module DFF (
	input D, clk, rst,
	output reg Q
);

	always @ (posedge clk, negedge rst)
		if (!rst) Q <= 0;
		else Q <= D;
endmodule
