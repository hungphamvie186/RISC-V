`timescale 1ns/1ps

module FullAdder (
    input logic A,
    input logic B,
    input logic Z,
    output logic S,
    output logic Cout
);
    assign S = A ^ B ^ Z;
    assign Cout = (A & B) | (Z & (A ^ B));
endmodule

module Adder (
    input logic [31:0] A,
    input logic [31:0] B,
    input logic C_in,
    output logic [31:0] Sum
	 
);
    logic [32:0] carry;
    assign carry[0] = C_in;

    generate
        genvar i;
        for (i = 0; i < 32; i = i + 1) begin : adder_loop
            FullAdder full_adder (
                .A(A[i]),
                .B(B[i]),
                .Z(carry[i]),
                .S(Sum[i]),
                .Cout(carry[i+1])
            );
        end
    endgenerate
	
endmodule

module AddSub (
    input logic [31:0] A,
    input logic [31:0] B,
    input logic sel,
    output logic [31:0] D0
);
    logic [31:0] B_mux;
    assign B_mux = sel ? ~B : B;

    Adder adder_inst (
        .A(A),
        .B(B_mux),
        .C_in(sel),
        .Sum(D0)
    );
endmodule
module shift_left (
    input logic [31:0] A,
    input logic [4:0] B,
    output logic [31:0] S
);
    assign S = A << B;
endmodule

module SLL (
    input logic [31:0] A,
    input logic [4:0] B,
    output logic [31:0] D1
);
    
    shift_left block (
        .A(A),
        .B(B),
        .S(D1)
    );   
endmodule

module Complement_2_alu (
    input logic [31:0] A,
    input logic [31:0] B,
    output logic [31:0] A1,
    output logic [31:0] B1
);
    assign A1 = ~A + 32'b1;
    assign B1 = ~B + 32'b1;
endmodule

module SLT (
    input logic [31:0] A,
    input logic [31:0] B,
    output logic [31:0] D2
);
    logic [31:0] A1, B1;
    
    Complement_2_alu A1_B1 (
        .A(A),
        .B(B),
        .A1(A1),
        .B1(B1)
    );

    logic [1:0] AB;
    assign AB = {A[31], B[31]};

    always_comb begin
        case (AB)
            2'b00: D2 = (A < B) ? 32'b1 : 32'b0; 
            2'b01: D2 = 32'b0; 
            2'b10: D2 = 32'b1;
            2'b11: D2 = (A1 > B1) ? 32'b1 : 32'b0;
        endcase
    end
endmodule

module SLTU (
    input logic [31:0] A,
    input logic [31:0] B,
    output logic [31:0] D3
);
    assign D3 = (A < B) ? 32'b1 : 32'b0;
endmodule
module XOR_Block (
    input logic [31:0] A,
    input logic [31:0] B,
    output logic [31:0] D4
);
    assign D4 =  A ^ B;
endmodule
module SRL (
    input logic [31:0] A,
    input logic [31:0] B,
    output logic [31:0] S
);
    assign S = A >> B[4:0];
endmodule
module SRA (
    input logic [31:0] A,
    input logic [31:0] B,
    output logic [31:0] S
);
    logic [31:0] S1;
    assign S1 = A >> B[4:0];
	 
    logic [31:0] _32bit1 = 32'hFFFFFFFF; // 32-bit value

    logic [4:0] Mask1;
    assign Mask1 = 32 - B[4:0];
	 
    logic [31:0] Mask;
    assign Mask = _32bit1 << Mask1; 
	 
    logic A_sign;
    assign A_sign = A[31];

    always_comb begin
        case (A_sign)
            1'b0: S = S1; // giữ nguyên bit dấu
            1'b1: S = S1 | Mask;
        endcase
    end
endmodule
module SRL_SRA (
    input logic [31:0] A,
    input logic [31:0] B,
	 input logic  sel,
    output logic [31:0] D5
);
	logic [31:0] S0,S1;
    SRL SRL_block (
        .A(A),
        .B(B),
        .S(S0)
    );
	 SRA SRA_block (
        .A(A),
        .B(B),
        .S(S1)
    );
	 always_comb begin
        case (sel)
            1'b0: D5 = S0;
            1'b1: D5 = S1;   
        endcase
    end
endmodule

module OR_Block (
    input logic [31:0] A,
    input logic [31:0] B,
    output logic [31:0] D6
);
    assign D6 =  A | B;
endmodule
module AND_Block (
    input logic [31:0] A,
    input logic [31:0] B,
    output logic [31:0] D7
);
    assign D7 =  A & B;
endmodule


module MUX_block (
    input logic [31:0] D0, D1, D2, D3, D4, D5, D6, D7,
    input logic [2:0] Sel,  // 3-bit selection input
    input logic rst_n,
    output logic [31:0] Out
);
    always_comb begin
        if (~rst_n) begin
            Out = 5'b00000; // Reset Result to 0 when rst_n is low
        end else begin
            case (Sel)
                3'b000: Out = D0;
                3'b001: Out = D1;
                3'b010: Out = D2;
                3'b011: Out = D3;
                3'b100: Out = D4;
                3'b101: Out = D5;
                3'b110: Out = D6;
                3'b111: Out = D7;
                default: Out = 5'b00000;  // Default case to avoid latches
            endcase
        end
    end
endmodule

module alu_Block (
    input logic funct7,
    input logic [31:0] A,
    input logic [31:0] B,
    input logic [2:0] op,  // 3-bit operation code
    output logic [31:0] Result
);
    logic [31:0] D0, D1, D2, D3, D4, D5, D6, D7;
	MUX_block MUX_Sel (
        .D0(D0),
        .D1(D1),
        .D2(D2),
        .D3(D3),
        .D4(D4),
        .D5(D5),
        .D6(D6),
        .D7(D7),
        .Sel(op),
        .rst_n(rst_n),
        .Out(Result)
    );
    AddSub D0_in (
        .A(A),
        .B(B),
		  .sel(funct7),
        .D0(D0)
    );

    SLL D1_in (
        .A(A),
        .B(B[4:0]),
        .D1(D1)
    );

     SLT D2_in (
        .A(A),
        .B(B),
        .D2(D2)
    );
     SLTU D3_in (
        .A(A),
        .B(B),
        .D3(D3)
    );
     XOR_Block D4_in (
        .A(A),
        .B(B),
        .D4(D4)
    );  
	 SRL_SRA D5_in (
        .A(A),
        .B(B),
		  .sel(funct7),
        .D5(D5)
    ); 
     OR_Block D6_in (
        .A(A),
        .B(B),
        .D6(D6)
    ); 
	      AND_Block D7_in (
        .A(A),
        .B(B),
        .D7(D7)
    ); 
endmodule
module alu (
    input logic funct7,
    input logic [2:0] alu_op,
    input logic [31:0] operand_a, operand_b,
    output logic [31:0] alu_data
); 
    alu_Block ALU (
        .op(alu_op),
        .funct7(funct7),
        .A(operand_a),
        .B(operand_b),
        .Result(alu_data)
    );
endmodule