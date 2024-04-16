module LessThan1(
    input logic [31:0] A,
    input logic [31:0] B,
    output logic [31:0]Result
);
    assign Result = (A < B) ? 32'b1 : 32'b0;
endmodule

module SLT(
    input logic [31:0] A,
    input logic [31:0] B,
    output logic [31:0] D2
);
    logic Result;

    LessThan1 LT_inst(
        .A(A),
        .B(B),
        .Result(D2)
    );
endmodule
