module fsm1(input rst, clk, output reg [2:0]y);

reg s;
parameter s0=3'b000;
parameter s2=3'b010;
parameter s3=3'b011;
parameter s5=3'b101;
parameter s6=3'b110;
parameter s7=3'b111;
 


always@(posedge clk)
if(rst==1)
begin
y=s0;
s=s0;
end
else if(s==s0)
begin
y=s2;
s=s2;
end
else if(s==s2)
begin
y=s3;
s=s3;
end
else if(s==s3)
begin 
y=s5;
s=s5;
end
else if(s==s5)
begin
y=s6;
s=s6;
end
else if(s==s6)
begin
y=s7;
s=s7;
end
else if(s==s7)
begin
y=s0;
s=s0;
end


endmodule
