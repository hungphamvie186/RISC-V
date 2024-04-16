module MUX2to1 (
    input logic [31:0] S0, S1,
    input logic  Sel,
    output logic [31:0] Out
);

    always_comb begin
        case (Sel)
            1'b0: Out = S0;
            1'b1: Out = S1;   
        endcase
    end
endmodule

module MUX_2to1 (
    input logic [31:0] S0, S1,
    input logic Sel,
    output logic [31:0] Out
);

    MUX2to1 MUX_Sel (
        .S0(S0),
        .S1(S1),
        .Sel(Sel),
        .Out(Out)
    );
endmodule

module Shift_Right(
    input logic [31:0] A,
    input logic [31:0] B,
    output logic [31:0] S
);
    assign S = A >> B[4:0];
endmodule

module SRL (
    input logic [31:0] A,
    input logic [31:0] B,
    output logic [31:0] Out_put6 // Ngõ ra của flip-flop
);	
// Shift Right module
    Shift_Right (
        .A(A),
        .B(B),
        .S(Out_put6)
    );   
endmodule
module Shift_Right_arit(
    input logic [31:0] A,
    input logic [31:0] B,
    output logic [31:0] S
);
	 logic [31:0] S1;  
    assign S1 = A >> B[4:0];
	 
	 logic [31:0] one = 32'b1; // Số 1
	 logic [4:0] Mask1;
    assign _32bit1 = ~one +one;
    assign Mask1 = 32- B[4:0];// bù 2= bù 1 cộng 1= 32 bit 1 
	 logic [31:0] Mask;
	 assign Mask= _32bit1 << Mask1; 
	 
	 logic A_sign;
	 assign A_sign=A[31];
	 always_comb begin
    case (A_sign)
        1'b0: S=S1;                   // để giữ nguyên bit dấu
        1'b1: S=S1 | Mask; 
		  endcase
	 end
endmodule
module SRA(
    input logic [31:0] A,
    input logic [31:0] B,
    output logic [31:0] Out_put7
	 );
	 Shift_Right_arit SRA1 (
        .A(A),
        .B(B),
        .S(Out_put7)
    );
    endmodule
 module SRL_SRA_sel(
    input logic [31:0] A,
    input logic [31:0] B,
	 input logic        Sel,
    output logic [31:0] D5
	 );
	 reg [31:0] S0,S1;
	 SRL SRL_out (
        .A(A),
        .B(B),
        .Out_put6(S0));
	 SRA SRA_out (
        .A(A),
        .B(B),
        .Out_put7(S1));
	 MUX_2to1 Data_out (
        .S0(S0),
        .S1(S1),
        .Sel(Sel),
        .Out(D5));
 endmodule
	module SRL_SRA(
    input logic [31:0] A,
    input logic [31:0] B,
	 input logic        Sel,
    output logic [31:0] D5
	 );
	 SRL_SRA_sel Sel_SR (
        .A(A),
		  .Sel(Sel),
        .B(B),
        .D5(D5)
    );

endmodule

