module q4_39 (A, B, Y);
	
	input [3:0] A, B;
	output reg [5:0] Y;

	always @ (A or B) begin
		Y = 5'b0;
		if (A == B) Y[5] = 1'b1;
		if (A != B) Y[4] = 1'b1;
		if (A > B) Y[3] = 1'b1;
		if (A < B) Y[2] = 1'b1;
		if ((A>B)||(A==B)) Y[1] = 1'b1;
		if ((A<B)||(A==B)) Y[0] = 1'b1;
	end
endmodule
