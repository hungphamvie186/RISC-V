module OR1(
    input logic [31:0]A1,
    input logic [31:0]B1,
    output logic [31:0]S
);
 assign S = A1 | B1 ;
endmodule
module OR_8 
    (input logic [31:0] A,
     input logic [31:0] B,
    output logic [31:0] D6
);    
    OR1 or9(
        .A1(A[31:0]),
        .B1(B[31:0]),
        .S(D6)
    );
endmodule