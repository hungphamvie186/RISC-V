`timescale 1ns/1ps
module XOR1(
    input logic [31:0]A1,
    input logic [31:0]B1,
    output logic [31:0]S
);
 assign S = A1 ^ B1 ;
endmodule
module X_OR 
    (input logic [31:0] A,
     input logic [31:0] B,
    output logic [31:0] D4
);    
    XOR1 Xor1(
        .A1(A[31:0]),
        .B1(B[31:0]),
        .S(D4)
    );
endmodule