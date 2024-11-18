`timescale 1ns/1ps

module BranchComp_tb;

    // Khai báo các biến đầu vào và đầu ra
    logic [31:0] A;
    logic [31:0] B;
    logic BrUn;
    logic BrLT;
    logic BrEq;

    // Khai báo mô-đun BranchComp
    BranchComp uut (
        .DataA(A),
        .DataB(B),
        .BrUn(BrUn),
        .BrLT(BrLT),
        .BrEq(BrEq)
    );

    // Quy trình kiểm tra
    initial begin
        // Gán các giá trị kiểm tra và hiển thị kết quả
        
        // Trường hợp 1: A và B đều dương và A < B
        A = 32'd10;
        B = 32'd20;
        #10;
        $display("A =%0d						, B=%0d						=> BrUn = %0b, BrLT = %0b, BrEq = %0b", A, B, BrUn, BrLT, BrEq);
        
        // Trường hợp 2: A và B đều dương và A > B
        A = 32'd30;
        B = 32'd20;
        #10;
        $display("A =%0d						, B =%0d						=> BrUn = %0b, BrLT = %0b, BrEq = %0b", A, B, BrUn, BrLT, BrEq);
	
        // Trường hợp 3: A và B đều dương và A = B
        A = 32'd20;
        B = 32'd20;
        #10;
        $display("A =%0d						, B =%0d						=> BrUn = %0b, BrLT = %0b, BrEq = %0b", A, B, BrUn, BrLT, BrEq);

        // Trường hợp 4: A âm, B dương
        A = -32'd15;
        B = 32'd10;
        #10;
        $display("A =%0d					, B =%0d						=> BrUn = %0b, BrLT = %0b, BrEq = %0b", A, B, BrUn, BrLT, BrEq);

        // Trường hợp 5: A dương, B âm
        A = 32'd10;
        B = -32'd20;
        #10;
        $display("A =%0d						, B =%0d					=> BrUn = %0b, BrLT = %0b, BrEq = %0b", A, B, BrUn, BrLT, BrEq);

        // Trường hợp 6: A âm, B âm và A < B
        A = -32'd30;
        B = -32'd10;
        #10;
        $display("A =%0d					, B =%0d					=> BrUn = %0b, BrLT = %0b, BrEq = %0b", A, B, BrUn, BrLT, BrEq);

        // Trường hợp 7: A âm, B âm và A > B
        A = -32'd10;
        B = -32'd20;
        #10;
        $display("A =%0d					, B=%0d					=> BrUn = %0b, BrLT = %0b, BrEq = %0b", A, B, BrUn, BrLT, BrEq);

        // Trường hợp 8: A âm, B âm và A = B
        A = -32'd20;
        B = -32'd20;
        #10;
        $display("A =%0d					, B =%0d					=> BrUn = %0b, BrLT = %0b, BrEq = %0b", A, B, BrUn, BrLT, BrEq);

        // Kết thúc quá trình kiểm tra
        $finish;
    end
endmodule
