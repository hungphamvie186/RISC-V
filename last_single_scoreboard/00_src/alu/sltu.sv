/* verilator lint_off UNUSED */
module sltu (
    input [31:0] a,    // Toán hạng đầu vào a
    input [31:0] b,    // Toán hạng đầu vào b
    output reg [31:0] result  // Kết quả so sánh: 1 nếu a < b, ngược lại 0
);
    wire [31:0] b_negated;
    wire [31:0] diff;
    wire cout;

    // Bù 1 của b
    assign b_negated = ~b;

    // Cộng a và b_negated với cin = 1 để thực hiện a - b
    adder subtractor (
        .a(a),
        .b(b_negated),
        .cin(1'b1),
        .sum(diff),
        .cout(cout)
    );

    always @(*) begin
        // Nếu cout = 0, thì a < b không dấu, ngược lại a >= b
        result = {31'b0,~cout};
    end
endmodule
/* verilator lint_off UNUSED */
