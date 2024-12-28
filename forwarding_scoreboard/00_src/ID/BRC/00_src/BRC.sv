module BRC (

    input wire [31:0] rs1_data, rs2_data,
    input wire br_un,
    output reg br_less, br_equal

);

    logic [31:0]S;
    logic Cin, a , b, f, c, Cout;
    assign a= rs1_data[31];
    assign b= rs2_data[31];
    assign c= ~Cout;   // vi Cout=0 la so am
    logic [31:0] xor_result;

	// XOR mỗi bit tương ứng của rs1_data và rs2_data
    assign xor_result = rs1_data ^ rs2_data;
	// Kết quả chỉ bằng 0 nếu tất cả các bit đều bằng
    assign br_equal = ~|xor_result;

cla_32bit sub_block (
	        .a(rs1_data),
	        .b(~rs2_data),
		.S(S),
	        .Cin(1'b1),
		.Cout(Cout)
    );

    assign f =( (~a & ~b &c) | a&(b ~^ c) ) &~br_equal ;

mux_2to1 #(.WIDTH(1)) mux_block (
        .d0(c),
        .d1(f),
        .sel(br_un),
        .y(br_less)
    );


endmodule 
