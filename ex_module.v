module ex_module(
    input   wire            sclk,
    input   wire            rst_n,
    input   wire    [7:0]   d,
    output  reg    [7:0]   q
);
//Asynchronous D flip-flop
always  @(posedge sclk or negedge rst_n)
        if(rst_n == 1'b0)
                q<=8'h00;
        else
                q<=d;
/*Sync D flip-flop
always  @(posedge sclk)
        if(rst_n == 1'b0)
                q<=8'h00;
        else
                q<=d;
*/
endmodule
