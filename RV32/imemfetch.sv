`timescale 1ns/1ps

module imem (
    input logic [31:0] addr,
    output logic [31:0] instruction
);
    logic [31:0] memory [0:255]; // Define a 256 x 32-bit memory array

    // Initialize the instruction memory with some instructions
    initial begin
        memory[0] = 32'h00000013; // NOP (addi x0, x0, 0)
        memory[1] = 32'h00400093; // addi x1, x0, 6          x1=6
        memory[2] = 32'h00500113; // addi x2, x0, 5          x2=5
        memory[3] = 32'h06400193; // addi x30, x0, 100       x30=100
        memory[4] = 32'h0020a023; // sw x2, 0(x30)            Memory[0x100 + 0] = x2 = 5
        memory[5] = 32'h00012303; // lw x6, 0(x30)            x6 = Memory[0x100 + 0] = 5
        memory[6] = 32'h00610463; // beq x2, x6, 8            Branch if x2 == x6 to PC+2*4
        memory[7] = 32'h00410213; // ori x4, x2, 4            x4 = x2 | 4
        memory[8] = 32'h400081b3; // sub x3, x1, x6           x3 = x1 - x2 = 6 - 5 = 1
    end

    // Read the instruction at the given address
    assign instruction = memory[addr >> 2]; // Assuming addr is byte addressable
endmodule

module imemfetch_block (
    input logic [31:0] instruction,
    output logic [6:0] opcode,         // Opcode field
    output logic [4:0] rd,             // Destination register field
    output logic [2:0] funct3,         // Funct3 field
    output logic [4:0] rs1,            // Source register 1 field
    output logic [4:0] rs2,            // Source register 2 field
    output logic [6:0] funct7_fetch,         // funct7_fetch field
    output logic [11:0] imm            // Immediate field
);
    logic [31:0] inst;
    assign inst = instruction;
	 assign opcode = inst[6:0];
    always_comb begin
        case (opcode )
            7'b0110011: begin // R-format
                rd = inst[11:7];
                funct3 = inst[14:12];
                rs1 = inst[19:15];
                rs2 = inst[24:20];
                funct7_fetch = inst[31:25];
                imm = 12'b0; // No immediate in R-format
            end

            7'b0010011: begin // I-format
                rd = inst[11:7];
                funct3 = inst[14:12];
                rs1 = inst[19:15];
                imm = inst[31:20];
                funct7_fetch = 7'b0; // No funct7_fetch in I-format
                rs2 = 5'b0; // No rs2 in I-format
            end

            7'b0100011: begin // S-format
                funct3 = inst[14:12];
                rs1 = inst[19:15];
                rs2 = inst[24:20];
                imm = {inst[31:25], inst[11:7]};
                funct7_fetch = 7'b0; // No funct7_fetch in S-format
                rd = 5'b0; // No rd in S-format
            end

            7'b1100011: begin // B-format
                funct3 = inst[14:12];
                rs1 = inst[19:15];
                rs2 = inst[24:20];
                imm = {inst[31], inst[7], inst[30:25], inst[11:8], 1'b0};
                funct7_fetch = 7'b0; // No funct7_fetch in B-format
                rd = 5'b0; // No rd in B-format
            end

            default: begin // Default case to handle unexpected opcodes
                rd = 5'b0;
                funct3 = 3'b0;
                rs1 = 5'b0;
                rs2 = 5'b0;
                funct7_fetch = 7'b0;
                imm = 12'b0;
            end
        endcase
    end
endmodule

module imemfetch (
    input  logic [31:0] addr,
    output logic [6:0] opcode,         // Opcode field
    output logic [4:0] rd,             // Destination register field
    output logic [2:0] funct3,         // Funct3 field
    output logic [4:0] rs1,            // Source register 1 field
    output logic [4:0] rs2,            // Source register 2 field
    output logic  funct7,         // funct7_fetch field
    output logic [11:0] imm            // Immediate field
);
  logic [31:0]instruction;
	logic [6:0] funct7_fetch;
    imem imem_block (
        .addr(addr),
        .instruction(instruction)
    );

    imemfetch_block fetch_block  (
        .instruction(instruction),
        .opcode(opcode),
        .rd(rd),
        .funct3(funct3),
        .rs1(rs1),
        .rs2(rs2),
        .funct7_fetch(funct7_fetch),
        .imm(imm)
    );
	 assign funct7=funct7_fetch[5];
endmodule
