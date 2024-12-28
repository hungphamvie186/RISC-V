module and_32bit (
    input [31:0] a,    // Toán hạng đầu vào a
    input [31:0] b,    // Toán hạng đầu vào b
    output [31:0] result  // Kết quả của a AND b
);
    assign result = a & b; // Thực hiện AND từng bit giữa a và b
endmodule
