`timescale 1ns/1ps
module Shift_left(
    input logic [31:0] A,
    input logic [31:0] B,
    output logic [31:0] S
);
    logic [4:0] low_B;
    assign low_B = B[4:0]; // Lấy 5 bit thấp của B
    assign S = A << low_B;
endmodule


module SLL (
    input logic [31:0] A,
    input logic [31:0] B,
    output logic [31:0] D1 // Ngõ ra của flip-flop
);	
 // Shift left module
    Shift_left SLL (
        .A(A),
        .B(B),
        .S(D1)
    );
    endmodule
