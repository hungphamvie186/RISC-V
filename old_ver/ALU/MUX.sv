`timescale 1ns/1ps
module MUX1 (
    input logic [31:0] D0, D1, D2, D3, D4, D5, D6, D7,
    input logic [2:0] Sel,
    output logic [31:0] Out
);

    always_comb begin
        case (Sel)
            3'b000: Out = D0;
            3'b001: Out = D1;
            3'b010: Out = D2;
            3'b011: Out = D3;
            3'b100: Out = D4;
            3'b101: Out = D5;
            3'b110: Out = D6;
            3'b111: Out = D7;
        endcase
    end

endmodule

module MUX (
    input logic [31:0] D0, D1, D2, D3, D4, D5, D6, D7,
    input logic [2:0] Sel,
    output logic [31:0] Out
);

    MUX1 MUX_Sel (
        .D0(D0),
        .D1(D1),
        .D2(D2),
        .D3(D3),
        .D4(D4),
        .D5(D5),
        .D6(D6),
        .D7(D7),
        .Sel(Sel),
        .Out(Out)
    );
	 
   

endmodule
