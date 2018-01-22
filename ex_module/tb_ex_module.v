`timescale 1ns/100ps

module  tb_ex_module;
		reg		tb_sclk, tb_rst_n;
		reg		[7:0]	tb_d;
		wire	[7:0]	tb_q;
		
		initial//reg only
		begin
			tb_sclk <= 0;
			tb_d <= 8'b0;
			tb_rst_n <= 0;
			#200.1
			tb_rst_n <= 1;
		end
		
always #10 tb_sclk <= ~tb_sclk;
always #20 tb_d <= tb_d + 1;

ex_module ex_module_inst(
	.sclk	(tb_sclk),
	.rst_n	(tb_rst_n),
	.d		(tb_d),
	.q		(tb_q)
);

endmodule
