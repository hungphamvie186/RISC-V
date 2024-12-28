/* verilator lint_off UNUSED */
module slt (
    input [31:0] a,  // Toán hạng đầu vào a
    input [31:0] b,  // Toán hạng đầu vào b
    output reg [31:0] result  // Kết quả so sánh: 1 nếu a < b, ngược lại 0
);
    wire [31:0] b_negated;
    wire [31:0] diff;
    wire cout;
    wire is_a_neg, is_b_neg, diff_sign;

    // Bù 2 của b
    assign b_negated = ~b ;

    // Cộng a và b_negated (thay cho a - b)
    adder subtractor_unit (
        .a(a),
        .b(b_negated),
        .cin(1'b1),
        .sum(diff),
        .cout(cout)
    );

    // Lấy bit dấu của a và b
    assign is_a_neg = a[31];
    assign is_b_neg = b[31];
    assign diff_sign = diff[31];

    always @(*) begin
        // So sánh dựa vào bit dấu
        if (is_a_neg != is_b_neg) begin
            // Nếu a âm và b dương, thì a < b
            result = {31'b0,is_a_neg};
        end else begin
            // Nếu cùng dấu, thì xem bit dấu của hiệu để xác định
            result = {31'b0,diff_sign};
        end
    end
endmodule
/* verilator lint_off UNUSED */
