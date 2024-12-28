module alu(
    input [31:0] i_operand_a, 		  
    input [31:0] i_operand_b, 		      
    input [3:0] i_alu_op, 
    output reg [31:0] o_alu_data // Đổi từ wire thành reg
);
/* verilator lint_off UNUSED */
    wire [31:0] add_res, sub_res, and_res, or_res, xor_res, sll_res, slr_res, sra_res, slt_res, sltu_res; // Thêm slt_res và sltu_res
    wire cout_res;

    // Gọi các mô-đun nhỏ
    adder add_unit 	(.a(i_operand_a), .b(i_operand_b), .cin(1'b0), .sum(add_res), .cout(cout_res));
    subtractor sub_unit (.a(i_operand_a), .b(i_operand_b), .cin(1'b1), .sub(sub_res), .cout(cout_res));
    slt slt_unit  	(.a(i_operand_a), .b(i_operand_b), .result(slt_res)); // Đảm bảo slt_res được khai báo
    sltu sltu_unit 	(.a(i_operand_a), .b(i_operand_b), .result(sltu_res)); // Đảm bảo sltu_res được khai báo
    xor_32bit xor_unit  	(.a(i_operand_a), .b(i_operand_b), .result(xor_res));
    or_32bit or_unit  	(.a(i_operand_a), .b(i_operand_b), .result(or_res));
    and_32bit and_unit  	(.a(i_operand_a), .b(i_operand_b), .result(and_res));
    sll sll_unit  	(.a(i_operand_a), .b(i_operand_b[4:0]), .result(sll_res));
    slr slr_unit  	(.a(i_operand_a), .b(i_operand_b[4:0]), .result(slr_res));
    sra sra_unit  	(.a(i_operand_a), .b(i_operand_b[4:0]), .result(sra_res));

    // Multiplexer để chọn kết quả phù hợp dựa trên giá trị i_alu_op
    always @* begin
        case (i_alu_op)
            4'b0000: o_alu_data = add_res;
            4'b0001: o_alu_data = sub_res;
            4'b0010: o_alu_data = slt_res; 
            4'b0011: o_alu_data = sltu_res;
            4'b0100: o_alu_data = xor_res;
            4'b0101: o_alu_data = or_res;
            4'b0110: o_alu_data = and_res;
            4'b0111: o_alu_data = sll_res;
            4'b1000: o_alu_data = slr_res;    
            4'b1001: o_alu_data = sra_res;           
            default: o_alu_data = 32'b0; // Giá trị mặc định
        endcase
    end
endmodule  
/* verilator lint_off UNUSED */
