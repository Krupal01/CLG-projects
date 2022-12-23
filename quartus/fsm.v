module fsm(input clk,rst, output reg [2:0]s);

parameter s0=3'b000;
parameter s2=3'b010;
parameter s3=3'b011;
parameter s5=3'b101;
parameter s6=3'b110;
parameter s7=3'b111;

always@(posedge clk)
begin

if(rst==1)
s=0;
else if(s==s0)
s=s2;
else if(s==s2)
s=s3;
else if(s==s3)
s=s5;
else if(s==s5)
s=s6;
else if(s==s6)
s=s7;
else if(s==s7)
s=s0;

end

endmodule
