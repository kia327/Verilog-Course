module ex_wire(
		input	wire		sel,
		input	wire		a,
		input	wire		b,
		output	wire		c
);
//Use assign to wire continuous assignment, and must be blocked assignment
assign c=(sel == 1'b1)?a:b;
/*
	if(sel == 1'b1)
			c=a;
	else
			c=b;
*/
endmodule
