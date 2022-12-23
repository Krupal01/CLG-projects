module jk_latch(j,k,enable,q,qbar);
input j,k,enable;
output reg q,qbar;

always@(enable,j,k)
begin
if(enable==1)
 begin
  if(j!=k)
  begin
  q=j;
  qbar=k;
  end
  else if(j==1 && k==1)
  begin
  q=~q;
  qbar=q;
  end
 end
 end
endmodule