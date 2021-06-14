primitive q3_37 (x, a, b, c, d);

	output x;
	input a, b, c, d;

	table
	//	a	b	c	d	:	x
		0	0	0	0	:	0;
		0	0	0	1	:	0;
		0	0	1	0	:	0;
		0	0	1	1	:	0;
		0	1	0	0	:	0;
		0	1	0	1	:	0;
		0	1	1	0	:	0;
		0	1	1	1	:	1;
		1	0	0	0	:	0;
		1	0	0	1	:	0;
		1	0	1	0	:	0;
		1	0	1	1	:	1;
		1	1	0	0	:	0;
		1	1	0	1	:	0;
		1	1	1	0	:	1;
		1	1	1	1	:	1;
	endtable
endprimitive
