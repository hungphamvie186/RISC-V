

/* verilator lint_off UNUSED */
// Nếu muốn sử dụng Cout thì bỏ các dấu // liên quan đến Cout
module cla_4bit (
    input  logic [3:0] A,     
    input  logic [3:0] B,     
    input  logic       Cin,   
    output logic [3:0] S,  
    output logic       Cout   
);

    logic [3:0] G; 
    logic [3:0] P; 
    logic C0, C1, C2, C3, C4; 
    logic [3:0] Sum_internal; 

   
    assign G = A & B;  // Generate signal
    assign P = A ^ B;  // Propagate signal


    assign C0 = Cin;

 
    always_comb begin
        C1 = G[0] | (P[0] & C0);
        C2 = G[1] | (P[1] & C1);
        C3 = G[2] | (P[2] & C2);
        C4 = G[3] | (P[3] & C3);
//        C7 = G[6] | (P[6] & C6);
//        C8 = G[7] | (P[7] & C7);
    end

    // Instantiate Full Adders
    full_adder_BRC fa_CLA0 (.A(A[0]), .B(B[0]), .Cin(C0), .Sum(Sum_internal[0])/*, .Cout()*/);
    full_adder_BRC fa_CLA1 (.A(A[1]), .B(B[1]), .Cin(C1), .Sum(Sum_internal[1])/*, .Cout()*/);
    full_adder_BRC fa_CLA2 (.A(A[2]), .B(B[2]), .Cin(C2), .Sum(Sum_internal[2])/*, .Cout()*/);
    full_adder_BRC fa_CLA3 (.A(A[3]), .B(B[3]), .Cin(C3), .Sum(Sum_internal[3])/*, .Cout()*/);
//   full_adder fa_CLA7 (.A(A[7]), .B(B[7]), .Cin(C7), .Sum(Sum_internal[7])/*, .Cout()*/);
//	full_adder fa_CLA8 (.A(A[8]), .B(B[8]), .Cin(C8), .Sum(Sum_internal[8])/*, .Cout()*/);
    // Sum and Carry output
    assign S = Sum_internal;
   assign Cout = C4;

endmodule
/* verilator lint_on UNUSED */

