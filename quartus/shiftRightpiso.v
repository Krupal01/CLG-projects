module shiftRightpiso(input data,clk,rst, output reg y);
reg a,b,c;
always@(posedge clk)
begin
y<=c;
c<=b;
b<=a;
a<=data;
end 
endmodule
