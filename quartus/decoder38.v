module decoder38(input s1,s2,s3, output y0,y1,y2,y3,y4,y5,y6,y7);

assign y0=~s1&~s2&~s3;
assign y1=~s1&~s2&s3;
assign y2=~s1&s2&~s3;
assign y3=~s1&s2&s3;
assign y4=s1&~s2&~s3;
assign y5=s1&~s2&s3;
assign y6=s1&s2&~s3;
assign y7=s1&s2&s3;

endmodule
