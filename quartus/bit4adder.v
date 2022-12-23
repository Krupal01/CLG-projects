module bit4adder(input [3:0]a,b, input cin, output [3:0]sum, output cout);

wire c0,c1,c2;
fulladder f1(sum[0],c0,a[0],b[0],cin);
fulladder f2(sum[1],c1,a[1],b[1],c0);
fulladder f3(sum[2],c2,a[2],b[2],c1);
fulladder f4(sum[3],cout,a[3],b[3],c2);

endmodule

module fulladder(output s,cout, input a,b,cin );

assign s=a^b^cin;
assign cout=(a&b)|(a&cin)|(b&cin);
endmodule
