LIBRARY ieee;
USE ieee.std_logic_1164.all;
ENTITY shiftreg IS
PORT ( din, clk: IN BIT; dout: OUT BIT);
END shiftreg;
ARCHITECTURE shift OF shiftreg IS
BEGIN
PROCESS (clk)
VARIABLE a, b, c: BIT;
BEGIN
IF (clk'EVENT AND clk='1') THEN
dout<= c;
c := b;
b := a;
a := din;
END IF;
END PROCESS;
END shift;