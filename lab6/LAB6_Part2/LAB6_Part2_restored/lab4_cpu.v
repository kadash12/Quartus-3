// Copyright (C) 2017  Intel Corporation. All rights reserved.
// Your use of Intel Corporation's design tools, logic functions 
// and other software and tools, and its AMPP partner logic 
// functions, and any output files from any of the foregoing 
// (including device programming or simulation files), and any 
// associated documentation or information are expressly subject 
// to the terms and conditions of the Intel Program License 
// Subscription Agreement, the Intel Quartus Prime License Agreement,
// the Intel FPGA IP License Agreement, or other applicable license
// agreement, including, without limitation, that your use is for
// the sole purpose of programming logic devices manufactured by
// Intel and sold by Intel or its authorized distributors.  Please
// refer to the applicable agreement for further details.

// PROGRAM		"Quartus Prime"
// VERSION		"Version 17.1.0 Build 590 10/25/2017 SJ Lite Edition"
// CREATED		"Fri Jul 26 11:53:02 2019"

module lab4_cpu(
	MSA1,
	MSA0,
	CLK,
	RESET,
	MSB1,
	MSB0,
	CIN,
	MSC2,
	MSC1,
	MSC0,
	IN3,
	IN2,
	IN1,
	IN0,
	A3,
	A2,
	A1,
	A0,
	B3,
	B2,
	B1,
	B0,
	OUT3,
	OUT2,
	OUT1,
	OUT0,
	COUT
);


input wire	MSA1;
input wire	MSA0;
input wire	CLK;
input wire	RESET;
input wire	MSB1;
input wire	MSB0;
input wire	CIN;
input wire	MSC2;
input wire	MSC1;
input wire	MSC0;
input wire	IN3;
input wire	IN2;
input wire	IN1;
input wire	IN0;
output wire	A3;
output wire	A2;
output wire	A1;
output wire	A0;
output wire	B3;
output wire	B2;
output wire	B1;
output wire	B0;
output wire	OUT3;
output wire	OUT2;
output wire	OUT1;
output wire	OUT0;
output wire	COUT;

wire	/MSC1;
reg	A_ALTERA_SYNTHESIZED0;
reg	A_ALTERA_SYNTHESIZED1;
reg	A_ALTERA_SYNTHESIZED2;
reg	A_ALTERA_SYNTHESIZED3;
wire	AND0;
wire	AND1;
wire	AND2;
wire	AND3;
reg	B_ALTERA_SYNTHESIZED0;
reg	B_ALTERA_SYNTHESIZED1;
reg	B_ALTERA_SYNTHESIZED2;
reg	B_ALTERA_SYNTHESIZED3;
wire	COM0;
wire	COM1;
wire	COM2;
wire	COM3;
wire	OR0;
wire	OR1;
wire	OR2;
wire	OR3;
wire	OUT_ALTERA_SYNTHESIZED0;
wire	OUT_ALTERA_SYNTHESIZED1;
wire	OUT_ALTERA_SYNTHESIZED2;
wire	OUT_ALTERA_SYNTHESIZED3;
wire	SUM0;
wire	SUM1;
wire	SUM2;
wire	SUM3;
wire	SYNTHESIZED_WIRE_0;
wire	SYNTHESIZED_WIRE_1;
wire	SYNTHESIZED_WIRE_2;
wire	SYNTHESIZED_WIRE_3;
wire	SYNTHESIZED_WIRE_4;
wire	SYNTHESIZED_WIRE_5;
wire	SYNTHESIZED_WIRE_6;
wire	SYNTHESIZED_WIRE_7;
wire	SYNTHESIZED_WIRE_8;
wire	SYNTHESIZED_WIRE_23;
wire	SYNTHESIZED_WIRE_11;
wire	SYNTHESIZED_WIRE_12;
wire	SYNTHESIZED_WIRE_13;
wire	SYNTHESIZED_WIRE_14;
wire	SYNTHESIZED_WIRE_24;
wire	SYNTHESIZED_WIRE_17;
wire	SYNTHESIZED_WIRE_18;
wire	SYNTHESIZED_WIRE_19;
wire	SYNTHESIZED_WIRE_20;
wire	SYNTHESIZED_WIRE_21;
wire	SYNTHESIZED_WIRE_22;

assign	SYNTHESIZED_WIRE_2 = 1;
assign	SYNTHESIZED_WIRE_4 = 1;
assign	SYNTHESIZED_WIRE_6 = 1;
assign	SYNTHESIZED_WIRE_8 = 1;
assign	SYNTHESIZED_WIRE_23 = 0;
assign	SYNTHESIZED_WIRE_11 = 0;
assign	SYNTHESIZED_WIRE_13 = 1;
assign	SYNTHESIZED_WIRE_14 = 0;
assign	SYNTHESIZED_WIRE_24 = 0;
assign	SYNTHESIZED_WIRE_18 = 1;
assign	SYNTHESIZED_WIRE_20 = 1;
assign	SYNTHESIZED_WIRE_22 = 1;



assign	COUT = SYNTHESIZED_WIRE_0 & MSC0 & /MSC1 & MSC2;

assign	/MSC1 =  ~MSC1;




always@(posedge CLK or negedge RESET or negedge SYNTHESIZED_WIRE_2)
begin
if (!RESET)
	begin
	B_ALTERA_SYNTHESIZED3 <= 0;
	end
else
if (!SYNTHESIZED_WIRE_2)
	begin
	B_ALTERA_SYNTHESIZED3 <= 1;
	end
else
	begin
	B_ALTERA_SYNTHESIZED3 <= SYNTHESIZED_WIRE_1;
	end
end


always@(posedge CLK or negedge RESET or negedge SYNTHESIZED_WIRE_4)
begin
if (!RESET)
	begin
	B_ALTERA_SYNTHESIZED2 <= 0;
	end
else
if (!SYNTHESIZED_WIRE_4)
	begin
	B_ALTERA_SYNTHESIZED2 <= 1;
	end
else
	begin
	B_ALTERA_SYNTHESIZED2 <= SYNTHESIZED_WIRE_3;
	end
end


always@(posedge CLK or negedge RESET or negedge SYNTHESIZED_WIRE_6)
begin
if (!RESET)
	begin
	B_ALTERA_SYNTHESIZED1 <= 0;
	end
else
if (!SYNTHESIZED_WIRE_6)
	begin
	B_ALTERA_SYNTHESIZED1 <= 1;
	end
else
	begin
	B_ALTERA_SYNTHESIZED1 <= SYNTHESIZED_WIRE_5;
	end
end


always@(posedge CLK or negedge RESET or negedge SYNTHESIZED_WIRE_8)
begin
if (!RESET)
	begin
	B_ALTERA_SYNTHESIZED0 <= 0;
	end
else
if (!SYNTHESIZED_WIRE_8)
	begin
	B_ALTERA_SYNTHESIZED0 <= 1;
	end
else
	begin
	B_ALTERA_SYNTHESIZED0 <= SYNTHESIZED_WIRE_7;
	end
end





assign	COM3 =  ~A_ALTERA_SYNTHESIZED3;

assign	COM2 =  ~A_ALTERA_SYNTHESIZED2;

assign	COM1 =  ~A_ALTERA_SYNTHESIZED1;

assign	COM0 =  ~A_ALTERA_SYNTHESIZED0;

assign	AND3 = A_ALTERA_SYNTHESIZED3 & B_ALTERA_SYNTHESIZED3;

assign	AND2 = A_ALTERA_SYNTHESIZED2 & B_ALTERA_SYNTHESIZED2;

assign	AND1 = A_ALTERA_SYNTHESIZED1 & B_ALTERA_SYNTHESIZED1;

assign	AND0 = A_ALTERA_SYNTHESIZED0 & B_ALTERA_SYNTHESIZED0;

assign	OR3 = B_ALTERA_SYNTHESIZED3 | A_ALTERA_SYNTHESIZED3;

assign	OR2 = B_ALTERA_SYNTHESIZED2 | A_ALTERA_SYNTHESIZED2;

assign	OR1 = B_ALTERA_SYNTHESIZED1 | A_ALTERA_SYNTHESIZED1;

assign	OR0 = B_ALTERA_SYNTHESIZED0 | A_ALTERA_SYNTHESIZED0;


\74283 	b2v_inst36(
	.CIN(CIN),
	.A1(A_ALTERA_SYNTHESIZED0),
	.A2(A_ALTERA_SYNTHESIZED1),
	.B2(B_ALTERA_SYNTHESIZED1),
	.A3(A_ALTERA_SYNTHESIZED2),
	.A4(A_ALTERA_SYNTHESIZED3),
	.B4(B_ALTERA_SYNTHESIZED3),
	.B1(B_ALTERA_SYNTHESIZED0),
	.B3(B_ALTERA_SYNTHESIZED2),
	.SUM4(SUM3),
	.COUT(SYNTHESIZED_WIRE_0),
	.SUM1(SUM0),
	.SUM2(SUM1),
	.SUM3(SUM2));


\81mux 	b2v_inst38(
	.C(MSC2),
	.D1(B_ALTERA_SYNTHESIZED3),
	.D0(A_ALTERA_SYNTHESIZED3),
	.D5(SUM3),
	.D4(OR3),
	.D2(COM3),
	.D3(AND3),
	.GN(SYNTHESIZED_WIRE_23),
	.D7(SYNTHESIZED_WIRE_23),
	.D6(A_ALTERA_SYNTHESIZED2),
	.A(MSC0),
	.B(MSC1),
	.Y(OUT_ALTERA_SYNTHESIZED3)
	);


\81mux 	b2v_inst39(
	.C(MSC2),
	.D1(B_ALTERA_SYNTHESIZED2),
	.D0(A_ALTERA_SYNTHESIZED2),
	.D5(SUM2),
	.D4(OR2),
	.D2(COM2),
	.D3(AND2),
	.GN(SYNTHESIZED_WIRE_11),
	.D7(A_ALTERA_SYNTHESIZED3),
	.D6(A_ALTERA_SYNTHESIZED1),
	.A(MSC0),
	.B(MSC1),
	.Y(OUT_ALTERA_SYNTHESIZED2)
	);


always@(posedge CLK or negedge RESET or negedge SYNTHESIZED_WIRE_13)
begin
if (!RESET)
	begin
	A_ALTERA_SYNTHESIZED3 <= 0;
	end
else
if (!SYNTHESIZED_WIRE_13)
	begin
	A_ALTERA_SYNTHESIZED3 <= 1;
	end
else
	begin
	A_ALTERA_SYNTHESIZED3 <= SYNTHESIZED_WIRE_12;
	end
end


mux41_0	b2v_inst40(
	.S0(MSB0),
	.D2(B_ALTERA_SYNTHESIZED0),
	.S1(MSB1),
	.D3(OUT_ALTERA_SYNTHESIZED0),
	.D0(IN0),
	
	.D1(A_ALTERA_SYNTHESIZED0),
	.Q(SYNTHESIZED_WIRE_7));



\81mux 	b2v_inst42(
	.C(MSC2),
	.D1(B_ALTERA_SYNTHESIZED1),
	.D0(A_ALTERA_SYNTHESIZED1),
	.D5(SUM1),
	.D4(OR1),
	.D2(COM1),
	.D3(AND1),
	.GN(SYNTHESIZED_WIRE_14),
	.D7(A_ALTERA_SYNTHESIZED2),
	.D6(A_ALTERA_SYNTHESIZED0),
	.A(MSC0),
	.B(MSC1),
	.Y(OUT_ALTERA_SYNTHESIZED1)
	);




\81mux 	b2v_inst45(
	.C(MSC2),
	.D1(B_ALTERA_SYNTHESIZED0),
	.D0(A_ALTERA_SYNTHESIZED0),
	.D5(SUM0),
	.D4(OR0),
	.D2(COM0),
	.D3(AND0),
	.GN(SYNTHESIZED_WIRE_24),
	.D7(A_ALTERA_SYNTHESIZED1),
	.D6(SYNTHESIZED_WIRE_24),
	.A(MSC0),
	.B(MSC1),
	.Y(OUT_ALTERA_SYNTHESIZED0)
	);



mux41_1	b2v_inst47(
	.S0(MSB0),
	.D2(B_ALTERA_SYNTHESIZED1),
	.S1(MSB1),
	.D3(OUT_ALTERA_SYNTHESIZED1),
	.D0(IN1),
	
	.D1(A_ALTERA_SYNTHESIZED1),
	.Q(SYNTHESIZED_WIRE_5));


mux41_2	b2v_inst48(
	.S0(MSB0),
	.D2(B_ALTERA_SYNTHESIZED2),
	.S1(MSB1),
	.D3(OUT_ALTERA_SYNTHESIZED2),
	.D0(IN2),
	
	.D1(A_ALTERA_SYNTHESIZED2),
	.Q(SYNTHESIZED_WIRE_3));


mux41_3	b2v_inst49(
	.S0(MSA0),
	.D2(B_ALTERA_SYNTHESIZED0),
	.S1(MSA1),
	.D3(OUT_ALTERA_SYNTHESIZED0),
	.D0(IN0),
	
	.D1(A_ALTERA_SYNTHESIZED0),
	.Q(SYNTHESIZED_WIRE_21));


always@(posedge CLK or negedge RESET or negedge SYNTHESIZED_WIRE_18)
begin
if (!RESET)
	begin
	A_ALTERA_SYNTHESIZED2 <= 0;
	end
else
if (!SYNTHESIZED_WIRE_18)
	begin
	A_ALTERA_SYNTHESIZED2 <= 1;
	end
else
	begin
	A_ALTERA_SYNTHESIZED2 <= SYNTHESIZED_WIRE_17;
	end
end


mux41_4	b2v_inst50(
	.S0(MSB0),
	.D2(B_ALTERA_SYNTHESIZED3),
	.S1(MSB1),
	.D3(OUT_ALTERA_SYNTHESIZED3),
	.D0(IN3),
	
	.D1(A_ALTERA_SYNTHESIZED3),
	.Q(SYNTHESIZED_WIRE_1));


mux41_5	b2v_inst51(
	.S0(MSA0),
	.D2(B_ALTERA_SYNTHESIZED1),
	.S1(MSA1),
	.D3(OUT_ALTERA_SYNTHESIZED1),
	.D0(IN1),
	
	.D1(A_ALTERA_SYNTHESIZED1),
	.Q(SYNTHESIZED_WIRE_19));


mux41_6	b2v_inst52(
	.S0(MSA0),
	.D2(B_ALTERA_SYNTHESIZED2),
	.S1(MSA1),
	.D3(OUT_ALTERA_SYNTHESIZED2),
	.D0(IN2),
	
	.D1(A_ALTERA_SYNTHESIZED2),
	.Q(SYNTHESIZED_WIRE_17));


mux41_7	b2v_inst53(
	.S0(MSA0),
	.D2(B_ALTERA_SYNTHESIZED3),
	.S1(MSA1),
	.D3(OUT_ALTERA_SYNTHESIZED3),
	.D0(IN3),
	
	.D1(A_ALTERA_SYNTHESIZED3),
	.Q(SYNTHESIZED_WIRE_12));


always@(posedge CLK or negedge RESET or negedge SYNTHESIZED_WIRE_20)
begin
if (!RESET)
	begin
	A_ALTERA_SYNTHESIZED1 <= 0;
	end
else
if (!SYNTHESIZED_WIRE_20)
	begin
	A_ALTERA_SYNTHESIZED1 <= 1;
	end
else
	begin
	A_ALTERA_SYNTHESIZED1 <= SYNTHESIZED_WIRE_19;
	end
end


always@(posedge CLK or negedge RESET or negedge SYNTHESIZED_WIRE_22)
begin
if (!RESET)
	begin
	A_ALTERA_SYNTHESIZED0 <= 0;
	end
else
if (!SYNTHESIZED_WIRE_22)
	begin
	A_ALTERA_SYNTHESIZED0 <= 1;
	end
else
	begin
	A_ALTERA_SYNTHESIZED0 <= SYNTHESIZED_WIRE_21;
	end
end



assign	A3 = A_ALTERA_SYNTHESIZED3;
assign	A2 = A_ALTERA_SYNTHESIZED2;
assign	A1 = A_ALTERA_SYNTHESIZED1;
assign	A0 = A_ALTERA_SYNTHESIZED0;
assign	B3 = B_ALTERA_SYNTHESIZED3;
assign	B2 = B_ALTERA_SYNTHESIZED2;
assign	B1 = B_ALTERA_SYNTHESIZED1;
assign	B0 = B_ALTERA_SYNTHESIZED0;
assign	OUT3 = OUT_ALTERA_SYNTHESIZED3;
assign	OUT2 = OUT_ALTERA_SYNTHESIZED2;
assign	OUT1 = OUT_ALTERA_SYNTHESIZED1;
assign	OUT0 = OUT_ALTERA_SYNTHESIZED0;

endmodule

module mux41_0(S0,D2,S1,D3,D0,D1,Q);
/* synthesis black_box */

input S0;
input D2;
input S1;
input D3;
input D0;
input D1;
output Q;

endmodule

module mux41_1(S0,D2,S1,D3,D0,D1,Q);
/* synthesis black_box */

input S0;
input D2;
input S1;
input D3;
input D0;
input D1;
output Q;

endmodule

module mux41_2(S0,D2,S1,D3,D0,D1,Q);
/* synthesis black_box */

input S0;
input D2;
input S1;
input D3;
input D0;
input D1;
output Q;

endmodule

module mux41_3(S0,D2,S1,D3,D0,D1,Q);
/* synthesis black_box */

input S0;
input D2;
input S1;
input D3;
input D0;
input D1;
output Q;

endmodule

module mux41_4(S0,D2,S1,D3,D0,D1,Q);
/* synthesis black_box */

input S0;
input D2;
input S1;
input D3;
input D0;
input D1;
output Q;

endmodule

module mux41_5(S0,D2,S1,D3,D0,D1,Q);
/* synthesis black_box */

input S0;
input D2;
input S1;
input D3;
input D0;
input D1;
output Q;

endmodule

module mux41_6(S0,D2,S1,D3,D0,D1,Q);
/* synthesis black_box */

input S0;
input D2;
input S1;
input D3;
input D0;
input D1;
output Q;

endmodule

module mux41_7(S0,D2,S1,D3,D0,D1,Q);
/* synthesis black_box */

input S0;
input D2;
input S1;
input D3;
input D0;
input D1;
output Q;

endmodule
