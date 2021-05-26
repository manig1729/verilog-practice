// Ripple counter
`timescale 1ns / 1ns
module ripple_counter_4bit (
	output a3, a2, a1, a0,
	input count, reset
);

	// Instantiate complementing flip flops 
	comp_DFF F0 (a0, count, reset);
	comp_DFF F1 (a1, a0, reset);
	comp_DFF F2 (a2, a1, reset);
	comp_DFF F3 (a3, a2, reset);

endmodule

// Complementing flip flop with delay
// Input to the flip flop is Q'

module comp_DFF (
	output reg Q,
	input clk, rst
);
	always @ (negedge clk, posedge rst)
		if (rst) Q <= 1'b0;
		else Q <= #2 ~Q;		// intra assignment delay
endmodule
