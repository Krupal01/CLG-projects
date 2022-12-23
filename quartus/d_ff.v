module d_ff(d,clk,q);
reg q;
input d,clk;
output q;

always@(posedge clk)
q=d;
endmodule
