`timescale 1ns/1ps

module alu_tb;

    // Inputs
    logic funct7;
    logic [31:0] operand_a;
    logic [31:0] operand_b;
    logic [2:0] alu_op;

    // Outputs
    logic [31:0] alu_data;

    // Instantiate the DUT (Device Under Test)
    alu DUT (
        .funct7(funct7),
        .alu_op(alu_op),
        .operand_a(operand_a),
        .operand_b(operand_b),
        .alu_data(alu_data)
    );

    // Stimulus
    initial begin
        // Initialize inputs
        funct7 = 0;
        operand_a = 32'b0;
        operand_b = 32'b0;
        alu_op = 3'b0;

        // Test each operation with random inputs
        repeat (10) begin
            operand_a = $random % 5'h1F; // Random 32-bit number
            operand_b = $random % 3'h7; // Random 32-bit number
            
            // Test ADD operation
            alu_op = 3'b000;
            funct7 = 0;
            #10 $display("ADD:    %d + %d = %d", operand_a, operand_b, alu_data);

            // Test SUB operation
            alu_op = 3'b000;
            funct7 = 1;
            #10 $display("SUB:    %d - %d = %d", operand_a, operand_b, alu_data);

            // Test SLL operation
            alu_op = 3'b001;
            #10 $display("SLL:    %d << %d = %d", operand_a, operand_b[4:0], alu_data);

            // Test SLT sign operation
            alu_op = 3'b010;
            #10 $display("SLT:    %d < %d = %d", operand_a, operand_b, alu_data);

            // Test SLTU unsign operation
            alu_op = 3'b011;
            #10 $display("SLTU:   %d < %d = %d", operand_a, operand_b, alu_data);

            // Test XOR operation
            alu_op = 3'b100;
            #10 $display("XOR:    %d ^ %d = %d", operand_a, operand_b, alu_data);

            // Test SRL operation
            alu_op = 3'b101;
            funct7 = 0;
            #10 $display("SRL:    %d >> %d = %d", operand_a, operand_b[4:0], alu_data);

            // Test SRA operation
            alu_op = 3'b101;
            funct7 = 1;
            #10 $display("SRA:    %d >>> %d = %d", operand_a, operand_b[4:0], alu_data);

            // Test OR operation
            alu_op = 3'b110;
            #10 $display("OR:     %d | %d =   %d", operand_a, operand_b, alu_data);

            // Test AND operation
            alu_op = 3'b111;
            #10 $display("AND:    %d & %d =   %d", operand_a, operand_b, alu_data);
            
            #10 $display("--------------");
            #20; // Wait before next set of random values
        end

        // Finish the simulation
        $finish;
    end

endmodule