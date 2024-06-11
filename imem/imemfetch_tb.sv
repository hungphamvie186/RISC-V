`timescale 1ns/1ps

module imemfetch_tb;

    // Inputs
    logic [31:0] addr;

    // Outputs
    logic [6:0] opcode;
    logic [4:0] rd;
    logic [2:0] funct3;
    logic [4:0] rs1;
    logic [4:0] rs2;
    logic [6:0] funct7;
    logic [11:0] imm;

    // Instantiate the DUT (Device Under Test)
    imemfetch DUT (
        .addr(addr),
        .opcode(opcode),
        .rd(rd),
        .funct3(funct3),
        .rs1(rs1),
        .rs2(rs2),
        .funct7(funct7),
        .imm(imm)
    );

    // Stimulus
    initial begin
        // Initialize inputs
        addr = 32'b0;

        // Display the results
        $monitor("At time %t, addr = %h, memory[%h], imm = %d, funct7 = %b, rs2 = %d, rs1 = %d, funct3 = %b, rd = %d, opcode = %b", 
                  $time, addr, addr >> 2, imm, funct7, rs2, rs1, funct3, rd, opcode);

        // Test each instruction address
        repeat (9) begin
            #10 addr = addr + 4;
        end

        // Finish the simulation
        #10 $finish;
    end

endmodule
