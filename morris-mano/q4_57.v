module q4_57 (D, x, y, V);

	input [3:0] D;
	output reg x, y, V;

	always @ (D) begin
		if(D[0]) begin
			x = 1'b0;
			y = 1'b0;
			V = 1'b1;
		end
		else if (D[1]) begin
			x = 1'b0;
			y = 1'b1;
			V = 1'b1;
		end
		else if (D[2]) begin
			x = 1'b1;
			y = 1'b0;
			V = 1'b1;
		end
		else if (D[3]) begin
			x = 1'b1;
			y = 1'b1;
			V = 1'b1;
		end
		else begin
			V = 1'b0;
		end
	end
endmodule
