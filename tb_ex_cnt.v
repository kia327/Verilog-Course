`timescale 1ns/100ps//单位时标

module  tb_ex_cnt;//声明不需要端口列表
		reg		tb_sclk, tb_rst_n;//激励信号声明
		wire	[9:0]	tb_cnt;//原始模块输出信号连接线的声明
		
		initial//上电初始化过程，每次上电仅执行一次
		begin//initial only for reg
				tb_sclk <= 0;
				tb_rst_n <= 0;
				#200.1
				tb_rst_n <= 1;
		end
		
always #10 tb_sclk <= ~tb_sclk;//循环震荡周期为20ns

//例化方法
//原始名 例化名（自定义）
ex_cnt ex_cnt_inst(
		.sclk	(tb_sclk),
		.rst_n	(tb_rst_n),
		.cnt	(tb_cnt)//例化模块，如果原始模块输出信号，括号内必为wire变量
);

endmodule