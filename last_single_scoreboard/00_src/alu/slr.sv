module slr (
    input [31:0] a,          // Toán hạng đầu vào a
    input [4:0] b,           // Số bit cần dịch (0 đến 31)
    output reg [31:0] result // Kết quả dịch phải logic của a
);
    reg [31:0] stage1, stage2, stage3, stage4;

    always @(*) begin
        // Dịch phải 16 bit nếu b[4] = 1
        if (b[4] == 1'b1)
            stage1 = {16'b0, a[31:16]};
        else
            stage1 = a;

        // Dịch phải 8 bit nếu b[3] = 1
        if (b[3] == 1'b1)
            stage2 = {8'b0, stage1[31:8]};
        else
            stage2 = stage1;

        // Dịch phải 4 bit nếu b[2] = 1
        if (b[2] == 1'b1)
            stage3 = {4'b0, stage2[31:4]};
        else
            stage3 = stage2;

        // Dịch phải 2 bit nếu b[1] = 1
        if (b[1] == 1'b1)
            stage4 = {2'b0, stage3[31:2]};
        else
            stage4 = stage3;

        // Dịch phải 1 bit nếu b[0] = 1
        if (b[0] == 1'b1)
            result = {1'b0, stage4[31:1]};
        else
            result = stage4;
    end

endmodule

