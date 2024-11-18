module MUX (
    input logic [31:0] d [31:0],
    input logic [4:0] sel,
    output logic [31:0] y
);
    assign y = d[sel];
endmodule
