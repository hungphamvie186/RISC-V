
module FullAdder(
    input logic A,
    input logic B,
    input logic Cin,
    output logic S,
    output logic Cout
);

    assign S = A ^ B ^ Cin;
    assign Cout = (A & B) | (Cin & (A ^ B));

endmodule

module Adder 
    (input logic [31:0] A,
    input logic [31:0] B,
	 input logic C_in,
    output logic [31:0] Sum
);

    logic [31:0] carry; // Lưu trữ các bit Cout từ mỗi Full Adder

    FullAdder full_adder[31:0](
        .A(A[31:0]),
        .B(B[31:0]),
        .Cin(C_in), 
        .S(Sum[31:0])
    );

   
		
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
   