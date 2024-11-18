module full_adder(
    input a, 
    input b, 
    input cin, 
    output sum, 
    output cout
);
    // Phép tính của full adder
    assign sum = a ^ b ^ cin;        		    // Tổng (Sum)
    assign cout = (a & b) | (b & cin) | (a & cin);  // Bit nhớ ra (Carry out)
endmodule
