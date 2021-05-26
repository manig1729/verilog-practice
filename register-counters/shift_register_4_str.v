// Structural description of 4-bit universal shift register

module shift_register_4_str (
	output [3:0] A_par,
	input [3:0] I_par,
	input s1, s0,
	input MSB_in, LSB_in,
	input clk, clear_b
);

	// select signal
	wire [1:0] select;
	assign select = {s1, s0};

	// Instantiate the four stages
	
	stage ST0 (A_par[0], A_par[1], LSB_in, I_par[0], A_par[0], select, clk, clear_b);
	stage ST1 (A_par[1], A_par[2], A_par[0], I_par[1], A_par[1], select, clk, clear_b);
	stage ST2 (A_par[2], A_par[3], A_par[1], I_par[2], A_par[2], select, clk, clear_b);
	stage ST3 (A_par[3], MSB_in, A_par[2], I_par[3], A_par[3], select, clk, clear_b);
endmodule

// Stage of shift register

module stage (i0, i1, i2, i3, Q, select, clk, clear_b);
	input 	i0, // circulation bit selection
			i1, // data from left neighbor / serial input for shift right
			i2, // data from right nhbr / serial input for shift left
			i3;
	output	Q;
	input [1:0] select;
	input		clk, clear_b;
	wire	mux_out;

	// Instantiate MUX and flip flop
	
	mux_4_1 M0 (mux_out, i0, i1, i2, i3, select);
	DFF M1 (mux_out, clk, clear_b, Q);
endmodule

// Behavioral model of 4x1 multiplexer

module mux_4_1 (mux_out, i0, i1, i2, i3, select);
	output reg mux_out;
	input i0, i1, i2, i3;
	input [1:0] select;

	always @ (select, i0, i1, i2, i3)
		case (select)
			2'b00 : mux_out = i0;
			2'b01 : mux_out = i1;
			2'b10 : mux_out = i2;
			2'b11 : mux_out = i3;
		endcase
endmodule

// Behavioral model of D flip flop

module DFF (D, clk, rst, Q);
	output reg Q;
	input D, clk, rst;

	always @ (posedge clk or negedge rst)
		if (!rst) Q <= 1'b0;
		else Q <= D;
endmodule
