// FSM to detect the pattern "101" in a bitstream

module mealy_101 (
	input x_in, clk, rst,
	output reg y_out
);

	reg [1:0] state, next_state;
	parameter S0 = 2'b00, S1 = 2'b01, S2 = 2'b10;

	always @ (posedge clk or negedge rst)
		if (!rst) state <= S0;
		else state <= next_state;

	// Next state
	always @ (state, x_in)
		case (state)
			S0: if(~x_in) next_state = S0; else next_state = S1;
			S1: if(~x_in) next_state = S2; else next_state = S1;
			S2: if(~x_in) next_state = S0; else next_state = S1;
		endcase

	// Mealy output
	always @ (state, x_in)
		case (state)
			S0, S1: y_out = 0;
			S2: if(~x_in) y_out = 0; else y_out = 1;
		endcase
endmodule
