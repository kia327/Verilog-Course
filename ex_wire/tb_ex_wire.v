`timescale 1ns/100ps

module  tb_ex_wire;
		reg	tb_sel, tb_a, tb_b;
		wire rb_c;
		
		initial//reg only
		begin
			tb_sel	<= 1'b0;
			tb_a	<= 1'b0;
			tb_b	<= 1'b1;
		end	
		
always #10 tb_sel <= ~tb_sel;

//Instantiation
ex_wire ex_wire_inst(
	.sel	(tb_sel),
	.a		(tb_a),
	.b		(tb_b),
	.c		(tb_c)
);
endmodule
