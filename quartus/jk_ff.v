module jk_ff(j,k,clk,q,qbar);
input j,k,clk;
output reg q,qbar;

always@(posedge clk)
begin
if(j==0 && k==0)
begin
q=q;
end

if(j==0 && k==1)
begin
q=0;
end

else if(j==1 && k==0)
begin
q=1;
end

else if(j==1 && k==1)
begin
q=~q;
end

qbar=~q;
end 
endmodule
