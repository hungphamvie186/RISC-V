/* verilator lint_off UNUSED */
module immGen(
    input [31:0] instr,   // 32-bit instruction input
    output reg [31:0] immediate // 32-bit immediate output
);

    // Decode the immediate value based on the instruction type
    always @(*) begin
        case (instr[6:0])
            7'b0010011, 7'b0000011, 7'b1100111: begin // I-type (e.g., addi, lw, jalr)
                immediate = {{20{instr[31]}}, instr[31:20]};
            end
            7'b0100011: begin // S-type (e.g., sw)
                immediate = {{20{instr[31]}}, instr[31:25], instr[11:7]};
            end
            7'b1100011: begin // B-type (e.g., beq)
                immediate = {{19{instr[31]}}, instr[31], instr[7], instr[30:25], instr[11:8], 1'b0};
            end
            7'b1101111: begin // J-type (e.g., jal)
                immediate = {{11{instr[31]}}, instr[31], instr[19:12], instr[20], instr[30:21], 1'b0};
            end
            7'b0110111, 7'b0010111: begin // U-type (e.g., lui, auipc)
                immediate = {instr[31:12], 12'b0};
            end
            default: begin
                immediate = 32'b0; // Default case for unsupported instructions
            end
        endcase
    end
endmodule
/* verilator lint_on UNUSED */

