module mux41(input i0,i1,i2,i3,s1,s2, output y0);

wire w0,w1,w2,w3;

assign w0=i0&~s1&~s2;
assign w1=i1&~s1&s2;
assign w2=i2&s1&~s2;
assign w3=i3&s1&s2;
assign y0=w0|w1|w2|w3;

endmodule
