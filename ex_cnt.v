module ex_cnt(
		input	wire				sclk,
		input	wire				rst_n,
		output	wire	[9:0]		cnt
);
reg		[9:0]		cnt_r;

always @(posedge sclk or negedge rst_n)
		if(rest_n == 1'b0)
				cnt_r<=10'd0;//1023+1=1024, the last 10 bit turn to all 0
		else 
				cnt_r<=cnt_r + 1'b1;
endmodule
