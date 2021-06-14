module q4_36 (x, y, V, d0, d1, d2, d3);

output x, y, V;
input d0, d1, d2, d3;

wire w1, w2, w3, w4, w5, w6;

or G1 (x, d3, d2);
or G2 (V, x, d1, d0);
not G3 (w1, d2);
and G4 (w2, w1, d1);
or G5 (y, w2, d3);

endmodule
