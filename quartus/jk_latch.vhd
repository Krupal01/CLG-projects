library ieee;
use ieee.std_logic_1164.all;
entity jk_latch is
port(j,k,clk:in std_logic; q:buffer std_logic);
end entity;
architecture arch of jk_latch is
begin
process (j,k,clk)
begin
if(clk='1')then
q<= (j and (not q) ) or ((not k) and q);
end if;
end process;
end arch;