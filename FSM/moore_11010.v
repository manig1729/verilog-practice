// Moore FSM to detect 11010 in a bitstream

module moore_11010 (
	input x_in, clk, rst,
	output y_out
);

	reg [2:0] state;
	parameter S0 = 3'b000, S1 = 3'b001, S2 = 3'b010, S3 = 3'b011, S4 = 3'b100, S5 = 3'b101;

	always @ (posedge clk or negedge rst)
		if (!rst) state <= S0;
		else case (state)
			S0: if(~x_in) state <= S0; else state <= S1;
			S1: if(~x_in) state <= S0; else state <= S2;
			S2: if(~x_in) state <= S3; else state <= S2;
			S3: if(~x_in) state <= S0; else state <= S4;
			S4: if(~x_in) state <= S5; else state <= S2;
			S5: if(~x_in) state <= S0; else state <= S1;
		endcase

	assign y_out = (state == S5);
endmodule
	
