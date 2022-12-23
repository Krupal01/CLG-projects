module 3_bitupcounter(clk,c,[2:0]y);

input clk,c;
output [2:0]y;

always@(posedge clk)
begin

if (c==1)
begin
y=y+1;

else if (c==0)

y=y-1;

end

end

endmodule
