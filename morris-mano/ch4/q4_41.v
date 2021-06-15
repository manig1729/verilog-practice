module q4_41 (A, B, M, S, C);
	
	input [3:0] A, B;
	input M;

	output reg [3:0] S;
	output reg C;

	always @ (A or B or M) begin
		if(M) {C, S} = A - B;
		else {C, S} = A + B;
	end
endmodule
