`timescale 1ns/1ps
module ALU_tb();
    logic funct7;
    logic [2:0] alu_op;
    logic [31:0] operand_a, operand_b;
	 logic [31:0] alu_data;

    PC DUT (
        .funct7(funct7),
        .alu_op(alu_op),
        .operand_a(operand_a),
		  .operand_b(operand_b),
		  .alu_data(alu_data)
    );

    initial begin
        #10; // Wait for some time to stabilize

        // Initialize random seed
        $randomize();

        // Generate random values for inputs
        funct7 = 0;
        alu_op = 0;
        operand_a = 0;
        operand_b = 0;
		  #10;

// Change random values after a delay
repeat (10) begin
    // Generate new random values
    funct7 = $random;
    alu_op = $random;
    operand_a = $random;
    operand_b = $random;
    
    // Apply delay before next randomization
    #20;
    end
	 end
endmodule