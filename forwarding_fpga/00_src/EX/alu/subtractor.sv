module subtractor(
    input  [31:0] a, 
    input  [31:0] b,  
    input  cin,	
    output  [31:0] sub,
    output  cout      
);
    wire [31:0] b_neg;  // Chuyển b_neg thành wire

    // Tính bù hai của b
    assign b_neg = ~b;

    // Gọi mô-đun adder để thực hiện phép cộng
    adder adder_inst (
        .a(a),
        .b(b_neg),       // Sử dụng bù hai của b
        .cin(cin),       // cin=1
        .sum(sub),       // Kết quả phép trừ
        .cout(cout)      // Bit nhớ ra
    );
endmodule

