module cla_32bit (
    input [31:0] a,
    input [31:0] b,
    input Cin,
    output [31:0] S,
    output Cout
);
    wire [8:0] c;
    assign c[0]=Cin ;
    wire [31:0] b_sel;
    genvar i;
    generate
        for (i = 0; i < 8; i = i + 1) begin : cla_loop
            wire [3:0] a_part = a[4*i +: 4];
            wire [3:0] b_part = b[4*i +: 4];
            wire [3:0] sum_part;
            wire cout_part;

            cla_4bit cla (
                .A(a_part),
                .B(b_part),
                .Cin(c[i]),
                .S(S[4*i +: 4]),
                .Co(cout_part)
            );
            assign c[i+1] =  cout_part;
        end
    endgenerate

    assign Cout= c[8];
		
endmodule


