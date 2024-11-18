/* verilator lint_off UNOPTFLAT */
module adder (
    input [31:0] a,    // Toán hạng a
    input [31:0] b,    // Toán hạng b
    input cin,         // Carry-in ban đầu, là 1'b1 cho phép trừ
    output [31:0] sum, // Tổng của a và b
    output cout        // Carry-out cuối cùng
);
    wire [31:0] carry; // Đường carry giữa các bit

    // Kết nối các full-adder 1-bit với nhau
    generate
        genvar i;

        // Bit đầu tiên, cin là giá trị đầu vào
        full_adder fa0 (
            .a(a[0]),
            .b(b[0]),
            .cin(cin),
            .sum(sum[0]),
            .cout(carry[0])
        );

        // Các bit còn lại, cin từ carry của bit trước
        for (i = 1; i < 32; i = i + 1) begin : gen_block // Đặt tên khối 'gen_block'
            full_adder fa (
                .a(a[i]),
                .b(b[i]),
                .cin(carry[i-1]),
                .sum(sum[i]),
                .cout(carry[i])
            );
        end
    endgenerate

    // Carry-out cuối cùng
    assign cout = carry[31];
endmodule
/* verilator lint_on UNOPTFLAT */
