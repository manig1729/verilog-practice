// Behavrioural description of 4 bit universal shift register

module shift_register_4_beh (
	output reg [3:0] A_par,
	input [3:0] I_par,
	input s1, s0,
		MSB_in, LSB_in,
		clk, clear_b
	);

	always @ (posedge clk, negedge clear_b)
		if (!clear_b) A_par <= 4'b0000;
		else
			case({s1, s0})
				2'b00 : A_par <= A_par; 				// No change
				2'b01 : A_par <= {MSB_in, A_par[3:1]};	// Shift right
				2'b10 : A_par <= {A_par[2:0], LSB_in};	// Shift left
				2'b11 : A_par <= I_par;					// Parallel load
			endcase
endmodule

