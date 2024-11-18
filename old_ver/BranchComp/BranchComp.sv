`timescale 1ns/1ps

module Complement_2 (
    input logic [31:0] A,
    input logic [31:0] B,
    output logic [31:0] A1,
    output logic [31:0] B1
);
    assign A1 = ~A + 32'b1;
    assign B1 = ~B + 32'b1;
endmodule

module BranchComp_Block (
    input logic [31:0] A,
    input logic [31:0] B,
    output logic BrUn, BrLT, BrEq 
);
    logic [31:0] A1, B1;
    
    Complement_2 comp2 (
        .A(A),
        .B(B),
        .A1(A1),
        .B1(B1)
    );

    logic [1:0] AB;
    assign AB = {A[31], B[31]};

    always_comb begin
        case (AB) 
            2'b00: begin
                BrLT = (A < B) ? 1'b1 : 1'b0; 
                BrEq = (A == B) ? 1'b1 : 1'b0;
                BrUn = (A > B) ? 1'b1 : 1'b0;
            end
            2'b01: begin
                BrUn = 1'b1;  
                BrLT = 1'b0; 
                BrEq = 1'b0; 
            end
            2'b10: begin
                BrUn = 1'b0;  
                BrLT = 1'b1; 
                BrEq = 1'b0; 
            end
            2'b11: begin
                BrLT = (A1 > B1) ? 1'b1 : 1'b0; 
                BrEq = (A1 == B1) ? 1'b1 : 1'b0;
                BrUn = (A1 < B1) ? 1'b1 : 1'b0;
            end
            default: begin
                BrUn = 1'b0;  
                BrLT = 1'b0; 
                BrEq = 1'b0;
            end
        endcase
    end
endmodule

module BranchComp (
    input logic [31:0] DataA,
    input logic [31:0] DataB,
    output logic BrUn, BrLT, BrEq 
);
    BranchComp_Block comp (
        .A(DataA),
        .B(DataB),
        .BrUn(BrUn),
        .BrLT(BrLT),
        .BrEq(BrEq)
    );
endmodule
