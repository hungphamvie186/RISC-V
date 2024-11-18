`timescale 1ps/1ps

module Adder_Testbench;

    // Inputs
    logic [31:0] A;
    logic [31:0] B;
    logic C_in;

    // Outputs
    logic [31:0] Sum;

    // Instantiate the Adder module
    Adder DUT (
        .A(A),
        .B(B),
        .C_in(C_in),
        .Sum(Sum)
    );

    // Stimulus
    initial begin
        // Initialize random number generator
        $randomize;

        // Apply stimulus
        repeat (10) begin
            // Generate random inputs
            A = $random;
            B = $random;
            C_in = $random;

            // Delay before next stimulus
            #10;
        end

        // Finish simulation after a delay
        #100;
        $finish;
    end

endmodule
