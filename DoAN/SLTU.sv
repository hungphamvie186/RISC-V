module Complement_2(
    input logic [31:0] A,
	 input logic [31:0] B,
    output logic [31:0] A1,
	 output logic [31:0] B1
);
    logic [31:0] inverted_A;
    logic [31:0] one = 32'b1; // Số 1
    assign inverted_A = ~A;
    assign A1 = inverted_A + one;
	 assign B1 = inverted_A + one;
endmodule

module LessThan(
    input logic [31:0] A,
    input logic [31:0] B,
	 
    output logic [31:0]Result
);	
	logic [31:0] A1;
	logic [31:0] B1;
	Complement_2 A1_B1(
        .A(A),
        .B(B),
        .A1(A1),
		  .B1(B1)
    );

	 logic [1:0] AB	;
	 assign AB={A[31],B[31]};
	 always_comb begin
    case (AB)
        2'b00: Result = (A < B) ? 32'b1 : 32'b0; 
        2'b01: Result =32'b0; 
		  2'b10: Result =32'b1;
		  2'b11: Result = (A1 > B1) ? 32'b1 : 32'b0; 
    endcase
end
endmodule

module SLTU(
    input logic [31:0] A,
    input logic [31:0] B,
    output logic [31:0] D3
);
    logic Result;

    LessThan SLTU(
        .A(A),
        .B(B),
        .Result(D3)
    );
endmodule
