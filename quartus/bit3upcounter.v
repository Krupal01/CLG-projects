module bit3upcounter(input clk,c, output reg [2:0]y);


always@(posedge clk)
begin

if(c==1)
y=y+1;
else if (c==0)
y=y-1;

end

endmodule
