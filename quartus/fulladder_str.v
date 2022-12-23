module fulladder_str(input a,b,cin, output sum,cout);

wire w1,w2,w3,w4,w5;
xor xor1(w1,a,b);
xor xor2(sum,w1,cin);
and and1(w2,a,b);
and and2(w3,a,cin);
and and3(w4,b,cin);
or or1(w5,w2,w3);
or or2(cout,w5,w4);

endmodule
