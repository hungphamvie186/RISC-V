 module cla_32bit (
    input [31:0] a,
    input [31:0] b,
    input Cin,
    output [31:0] S,
    output Cout
);
    wire [3:0] a0,a1,a2,a3,a4,a5,a6,a7;
    wire [3:0] b0,b1,b2,b3,b4,b5,b6,b7;
    wire [3:0] s0,s1,s2,s3,s4,s5,s6,s7;
    wire c0,c1,c2,c3,c4,c5,c6;
	assign a0 = a[3:0];
	assign a1 = a[7:4];
	assign a2 = a[11:8];
	assign a3 = a[15:12];
	assign a4 = a[19:16];
	assign a5 = a[23:20];
	assign a6 = a[27:24];
	assign a7 = a[31:28];
	assign b0 = b[3:0];
	assign b1 = b[7:4];
	assign b2 = b[11:8];
	assign b3 = b[15:12];
	assign b4 = b[19:16];
	assign b5 = b[23:20];
	assign b6 = b[27:24];
	assign b7 = b[31:28];
	assign S = {s7,s6,s5,s4,s3,s2,s1,s0};
    
   	cla_4bit cla0(
                    .A(a0),
                    .B(b0),
                    .Cin(Cin),
                    .S(s0),
                    .Cout(c0)
                );
                	cla_4bit cla1 (
                .A(a1),
                .B(b1),
                .Cin(c0),
                .S(s1),
                .Cout(c1)
            );

	cla_4bit cla2 (
                .A(a2),
                .B(b2),
                .Cin(c1),
                .S(s2),
                .Cout(c2)
            );

	cla_4bit cla3(
                    .A(a3),
                    .B(b3),
                    .Cin(c2),
                    .S(s3),
                    .Cout(c3)
                );
                
	cla_4bit cla4 (
                .A(a4),
                .B(b4),
                .Cin(c3),
                .S(s4),
                .Cout(c4)
            );

	cla_4bit cla5 (
                .A(a5),
                .B(b5),
                .Cin(c4),
                .S(s5),
                .Cout(c5)
            );

	cla_4bit cla6 (
	                .A(a6),
	                .B(b6),
	                .Cin(c5),
	                .S(s6),
	                .Cout(c6)
	            );
	

	cla_4bit cla7 (
                .A(a7),
                .B(b7),
                .Cin(c6),
                .S(s7),
                .Cout(Cout)
            );


		
endmodule


