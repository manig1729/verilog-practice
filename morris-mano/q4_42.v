module q4_42 (a, b, c, d, w, x, y, z);
	
	input a, b, c, d;
	output reg w, x, y, z;

	always @ (a or b or c or d) begin
		case ({a,b,c,d})
			4'd0 : {w,x,y,z} = 4'd3;
			4'd1 : {w,x,y,z} = 4'd4;
			4'd2 : {w,x,y,z} = 4'd5;
			4'd3 : {w,x,y,z} = 4'd6;
			4'd4 : {w,x,y,z} = 4'd7;
			4'd5 : {w,x,y,z} = 4'd8;
			4'd6 : {w,x,y,z} = 4'd9;
			4'd7 : {w,x,y,z} = 4'd10;
			4'd8 : {w,x,y,z} = 4'd11;
			4'd9 : {w,x,y,z} = 4'd12;
		endcase
	end
endmodule
