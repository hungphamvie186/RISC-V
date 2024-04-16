module connect (
    input logic funct7,
    input logic [31:0] A, B,
    output logic [31:0] D0, D1, D2, D3, D4, D5, D6, D7
);
// Khai báo ngõ vào và ngõ ra của các khối
// Khối 0: AddSub
AddSub D0_in (
    .A(A),
    .B(B),
    .D0(D0),
    .sel(funct7)
);
// Khối 1: SLL
SLL D1_in (
   .A(A),
    .B(B),
    .D1(D1)
);
// Khối 2: SLT
SLT D2_in (
   .A(A),
    .B(B),
    .D2(D2)
);
// Khối 3: SLTU
SLTU D3_in (
   .A(A),
    .B(B),
    .D3(D3)
);
// Khối 4: X_OR
X_OR D4_in (
    .A(A),
    .B(B),
    .D4(D4)
);

// Khối 5: SRL_SRA
SRL_SRA D5_in (
    .Sel(funct7),
    .A(A),
    .B(B),
    .D5(D5)
);
// Khối 6: OR_8
OR_8 D6_in (
   .A(A),
    .B(B),
    .D6(D6)
);
// Khối 7: AND_9
AND_9 D7_in (
   .A(A),
    .B(B),
    .D7(D7)
);
endmodule
module Connect_ALU (
    input logic funct7,
    input logic [2:0] Sel,
    input logic [31:0] A, B,
	 output logic [31:0] Out
); 
reg [31:0] D_0, D_1, D_2, D_3, D_4, D_5, D_6, D_7;
	connect data_in(
	 .funct7(funct7),
	 .A(A),
    .B(B),
  .D0(D0),
  .D1(D_1),
  .D2(D_2),
  .D3(D_3),
  .D4(D_4),
  .D5(D_5),
  .D6(D_6),
  .D7(D_7));
 MUX data_OUT(
    .D0(D0),
    .Sel(Sel),
   .D1(D_1),
   .D2(D_2),
   .D3(D_3),
   .D4(D_4),
   .D5(D_5),
   .D6(D_6),
   .D7(D_7),
	 .Out(Out));
	 endmodule
module ALU (
    input logic funct7,
    input logic [2:0] alu_op,
    input logic [31:0] operand_a, operand_b,
	 output logic [31:0] alu_data
); 
Connect_ALU ALU(
    .Sel(alu_op),
	 .funct7(funct7),
	 .A(operand_a),
	 .B(operand_b),
	 .Out(alu_data));
endmodule