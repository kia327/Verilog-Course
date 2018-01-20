`timescale 1ns/100ps//��λʱ��

module  tb_ex_cnt;//��������Ҫ�˿��б�
		reg		tb_sclk, tb_rst_n;//�����ź�����
		wire	[9:0]	tb_cnt;//ԭʼģ������ź������ߵ�����
		
		initial//�ϵ��ʼ�����̣�ÿ���ϵ��ִ��һ��
		begin//initial only for reg
				tb_sclk <= 0;
				tb_rst_n <= 0;
				#200.1
				tb_rst_n <= 1;
		end
		
always #10 tb_sclk <= ~tb_sclk;//ѭ��������Ϊ20ns

//��������
//ԭʼ�� ���������Զ��壩
ex_cnt ex_cnt_inst(
		.sclk	(tb_sclk),
		.rst_n	(tb_rst_n),
		.cnt	(tb_cnt)//����ģ�飬���ԭʼģ������źţ������ڱ�Ϊwire����
);

endmodule