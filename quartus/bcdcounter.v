module bcdcounter(input clk, output reg [3:0]y);

always@(posedge clk)
begin

if (y!=9)
y=y+1;
else if (y==9)
y=0;

end

endmodule
