module full_adder_BRC (
    input  logic A,  
    input  logic B,  
    input  logic Cin, 
    output logic Sum 
 //   output logic Cout 
);
//Nếu dùng Cout thì phải bỏ các dấu // Cout
    // Sum and Carry output
    assign Sum = A ^ B ^ Cin;
//    assign Cout = (A & B) | (A & Cin) | (B & Cin);

endmodule
