`timescale 1ns/1ps

module ImmGen_tb;

    // Inputs
    logic [11:0] imm;
    logic ImmSel;

    // Outputs
    logic [31:0] Imm;

    // Instantiate the DUT (Device Under Test)
    ImmGen DUT (
        .imm(imm),
        .ImmSel(ImmSel),
        .Imm(Imm)
    );

    // Stimulus
    initial begin
        // Test case 1: Signed positive number
        ImmSel = 1'b0;
        imm = 12'b0000_0000_0011; // 3 in decimal
        #10;
        $display("Test Case 1: ImmSel = %b, imm = %b, Imm = %h", ImmSel, imm, Imm);

        // Test case 2: Signed negative number
        ImmSel = 1'b0;
        imm = 12'b1111_1111_1111; // -1 in decimal (two's complement)
        #10;
        $display("Test Case 2: ImmSel = %b, imm = %b, Imm = %h", ImmSel, imm, Imm);

        // Test case 3: Unsigned number
        ImmSel = 1'b1;
        imm = 12'b0000_0000_1010; // 10 in decimal
        #10;
        $display("Test Case 3: ImmSel = %b, imm = %b, Imm = %h", ImmSel, imm, Imm);

        // Test case 4: Another signed positive number
        ImmSel = 1'b0;
        imm = 12'b0111_1111_1111; // 2047 in decimal
        #10;
        $display("Test Case 4: ImmSel = %b, imm = %b, Imm = %h", ImmSel, imm, Imm);

        // Test case 5: Another signed negative number
        ImmSel = 1'b0;
        imm = 12'b1000_0000_0000; // -2048 in decimal (two's complement)
        #10;
        $display("Test Case 5: ImmSel = %b, imm = %b, Imm = %h", ImmSel, imm, Imm);

        // Test case 6: Unsigned number with higher value
        ImmSel = 1'b1;
        imm = 12'b1111_1111_1111; // 4095 in decimal
        #10;
        $display("Test Case 6: ImmSel = %b, imm = %b, Imm = %h", ImmSel, imm, Imm);

        // Finish the simulation
        #10 $finish;
    end

endmodule
