module half_adder(input a,b, output sum,c0);

assign sum=a^b;
assign c0=a&b;

endmodule
