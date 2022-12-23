module johnson_counter(input clk,rst, output reg [3:0]y);
wire [3:0]ynext;
wire [3:0]ynow;
always@(posedge clk)
begin

if (rst==1)
y<=0;
else if (rst==0)
begin
y[0]<=y[1];
y[1]<=y[2];
y[2]<=y[3];
y[3]<= ~y[0];
end 

end
endmodule
