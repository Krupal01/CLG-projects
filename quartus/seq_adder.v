// Copyright (C) 1991-2008 Altera Corporation
// Your use of Altera Corporation's design tools, logic functions 
// and other software and tools, and its AMPP partner logic 
// functions, and any output files from any of the foregoing 
// (including device programming or simulation files), and any 
// associated documentation or information are expressly subject 
// to the terms and conditions of the Altera Program License 
// Subscription Agreement, Altera MegaCore Function License 
// Agreement, or other applicable license agreement, including, 
// without limitation, that your use is for the sole purpose of 
// programming logic devices manufactured by Altera and sold by 
// Altera or its authorized distributors.  Please refer to the 
// applicable agreement for further details.

// PROGRAM		"Quartus II"
// VERSION		"Version 8.1 Build 163 10/28/2008 SJ Web Edition"
// CREATED ON	"Sun Oct 04 16:19:46 2020"

module seq_adder(a,b,clk,s,c0);

input	a;
input	b;
input	clk;
output	s;
output	c0;
wire	SYNTHESIZED_WIRE_5;
wire	SYNTHESIZED_WIRE_1;
wire	SYNTHESIZED_WIRE_3;
wire	SYNTHESIZED_WIRE_4;
reg	DFF_inst10;

shiftreg	b2v_inst(
	.din(a),
	.clk(clk),
	.dout(SYNTHESIZED_WIRE_3));


shiftreg	b2v_inst1(
	.din(b),
	.clk(clk),
	.dout(SYNTHESIZED_WIRE_4));


always@(posedge clk)
begin
	begin
	DFF_inst10 = SYNTHESIZED_WIRE_5;
	end
end


shiftreg	b2v_inst2(
	.din(SYNTHESIZED_WIRE_1),
	.clk(clk),
	.dout(s));


shiftreg	b2v_inst3(
	.din(SYNTHESIZED_WIRE_5),
	.clk(clk),
	.dout(c0));


fulladder_str	b2v_inst4(
	.a(SYNTHESIZED_WIRE_3),
	.b(SYNTHESIZED_WIRE_4),
	.cin(DFF_inst10),
	.sum(SYNTHESIZED_WIRE_1),
	.cout(SYNTHESIZED_WIRE_5));


endmodule
