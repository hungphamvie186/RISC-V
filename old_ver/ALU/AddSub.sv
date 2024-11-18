`timescale 1ns/1ps
module FullAdder (
    input logic A,
    input logic B,
    input logic Z,
    output logic S,
    output logic Cout
);
    assign S = A ^ B ^ Z;
    assign Cout = (A & B) | (Z & (A ^ B));
endmodule

module Adder (
    input logic [31:0] A,
    input logic [31:0] B,
    input logic C_in,
    output logic [31:0] Sum
);
    logic [32:0] carry; // Lưu trữ các bit Cout từ mỗi Full Adder

    // Tính toán carry bắt đầu từ carry đầu vào
    assign carry[0] = C_in;

    // Dùng vòng lặp for để liên kết các FullAdder lại với nhau
    generate
        genvar i;
        for (i = 0; i < 32; i = i + 1) begin : adder_loop
            FullAdder full_adder (
                .A(A[i]),
                .B(B[i]),
                .Z(carry[i]),
                .S(Sum[i]),
                .Cout(carry[i+1])
            );
        end
    endgenerate
endmodule

module AddSub1(
    input logic [31:0] A,
    input logic [31:0] B,
    input logic sel,
    output logic [31:0] Out  
);

    logic C_in; // Ngõ vào carry-in cho adder


    // Kiểm tra giá trị của sel để quyết định phép toán
    always_comb begin
    case (sel)
        1'b0: C_in = 1'b0; // Thực hiện phép cộng khi sel = 0
        1'b1: C_in = 1'b1; // Thực hiện phép trừ khi sel = 1  
    endcase
end

    // Sử dụng bộ adder để thực hiện phép toán
  Adder adder_inst (
    .A(A),
    .B(B), 
    .C_in(C_in), // Truyền giá trị của Cin từ module ALU
    .Sum(Out)
    
);


endmodule
module AddSub(
    input logic [31:0] A,
    input logic [31:0] B,
	 input logic sel,
    output logic [31:0] D0 // Ngõ ra của flip-flop
	
);	
		AddSub1   AddSub(
	 .A(A),
    .B(B), 
    .sel(sel),
    .Out(D0)
);	
	
			
endmodule
   