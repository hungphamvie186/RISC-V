module sll (
    input [31:0] a,          // Toán hạng đầu vào a
    input [4:0] b,           // Số bit cần dịch (0 đến 31)
    output reg [31:0] result // Kết quả dịch trái a
);
    reg [31:0] stage1, stage2, stage3, stage4;

    always @(*) begin
        // Dịch trái 16 bit nếu b[4] = 1
        if (b[4] == 1'b1)
            stage1 = {a[15:0], 16'b0};
        else
            stage1 = a;

        // Dịch trái 8 bit nếu b[3] = 1
        if (b[3] == 1'b1)
            stage2 = {stage1[23:0], 8'b0};
        else
            stage2 = stage1;

        // Dịch trái 4 bit nếu b[2] = 1
        if (b[2] == 1'b1)
            stage3 = {stage2[27:0], 4'b0};
        else
            stage3 = stage2;

        // Dịch trái 2 bit nếu b[1] = 1
        if (b[1] == 1'b1)
            stage4 = {stage3[29:0], 2'b0};
        else
            stage4 = stage3;

        // Dịch trái 1 bit nếu b[0] = 1
        if (b[0] == 1'b1)
            result = {stage4[30:0], 1'b0};
        else
            result = stage4;
    end

endmodule

