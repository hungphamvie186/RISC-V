`timescale 1ns/1ps
module AND_1(
    input logic [31:0]A1,
    input logic [31:0]B1,
    output logic [31:0]S
);
 assign S = A1 & B1 ;
endmodule
module AND_9
    (input logic [31:0] A,
     input logic [31:0] B,
    output logic [31:0] D7
);    
    AND_1 AND_9(
        .A1(A[31:0]),
        .B1(B[31:0]),
        .S(D7)
    );
endmodule