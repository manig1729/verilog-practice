// 4 bit binary counter with parallel load

module binary_counter_4_par_load (
	output reg [3:0] A_count,
	output C_out,
	input [3:0] data_in,
	input count, load, clk, clear_b
);

	assign C_out = count && (~load) && (A_count == 4'b1111);
	always @ (posedge clk, negedge clear_b)
		if(!clear_b)	A_count <= 4'b0000;
		else if (load)	A_count <= data_in;
		else if (count)	A_count <= A_count + 1'b1;
		else			A_count <= A_count;
endmodule	
