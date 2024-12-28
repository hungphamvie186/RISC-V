
module MUX2 (
    input logic [4:0] A,
    input logic sel,
    output logic [4:0] out
);	
    assign out = sel ? A : 5'b0;
endmodule
