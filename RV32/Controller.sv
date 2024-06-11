`timescale 1ns/1ps

module Controller_Block (
    input logic [6:0] opcode,
    input logic [2:0] funct3,
    input logic BrEq, BrLT, BrUn,
    input logic funct7_in, 
    output logic PCSel, ImmSel, RegWEn, Asel, Bsel, MemRW,
    output logic [2:0] ALUSel,
    output logic [1:0] WBSel,
    output logic funct7 // Chuyển thành logic
);
    always @(*) begin
        // Reset all outputs to default values
        PCSel = 1'b0;
        RegWEn = 1'b0;
        Asel = 1'b0;
        Bsel = 1'b0;
        ImmSel = 1'b0;
        ALUSel = 3'b000;
        MemRW = 1'b0;
        WBSel = 2'b01;
        funct7 = 1'b0; // Chuyển thành logic

        case (opcode)
            7'b0110011: begin // R-type
                PCSel = 1'b0;
                RegWEn = 1'b1;
                Asel = 1'b0;
                Bsel = 1'b0;
                ImmSel = 1'bx; // Don't care
                ALUSel = funct3;
                funct7 = funct7_in; // Sử dụng logic
                MemRW = 1'b0;
                WBSel = 2'b01; // R-type write-back selection
            end

            7'b0010011: begin // I-type
                PCSel = 1'b0;
                RegWEn = 1'b1;
                Asel = 1'b0;
                Bsel = 1'b1;
                ImmSel = 1'b0;
                ALUSel = funct3;
                funct7 = funct7_in; // Sử dụng logic
                MemRW = 1'b0;
                WBSel = 2'b01; // I-type write-back selection
            end

            7'b0000011: begin // LW
                PCSel = 1'b0;
                RegWEn = 1'b1;
                Asel = 1'b0;
                Bsel = 1'b1;
                ImmSel = (funct3[2] == 1) ? 1'b1 : 1'b0;  // dùng cho các lệnh unsign
                ALUSel = 3'b000;
                funct7 = 1'b0; // Sử dụng logic
                MemRW = 1'b0;
                WBSel = 2'b00; // LW write-back selection
            end

            7'b0100011: begin // SW
                PCSel = 1'b0;
                RegWEn = 1'b0;
                Asel = 1'b0;
                Bsel = 1'b1;
                ImmSel = (funct3[2] == 1) ? 1'b1 : 1'b0;
                ALUSel = 3'b000;
                MemRW = 1'b1;
                funct7 = 1'b0; // Sử dụng logic
                WBSel = 2'bxx; // No write-back
            end

            7'b1100011: begin // B-format
                case (funct3)
                    3'b000: PCSel = BrEq;
                    3'b001: PCSel = ~BrEq;
                    3'b100: PCSel = BrLT;
                    3'b101: PCSel = (BrUn == 1) ? 1'b1 : BrEq;
                    default: PCSel = 1'b0;
                endcase
                RegWEn = 1'b0;
                Asel = 1'b1;
                Bsel = 1'b1;
                ImmSel = (funct3[2:1] == 2'b11) ? 1'b1 : 1'b0;
                ALUSel = 3'b000;
                funct7 = 1'b0; // Sử dụng logic
                MemRW = 1'b0;
                WBSel = 2'bxx; // No write-back
            end

            7'b1101111: begin // JAL
                // Set your control signals for JAL
            end

            7'b0110111: begin // LUI
                // Set your control signals for LUI
            end

            default: begin
                // Default case: all control signals are already reset to zero above
            end
        endcase
    end
endmodule

module Controller (
    input logic [6:0] opcode,
    input logic [2:0] funct3,
    input logic BrEq, BrLT, BrUn,
    input logic funct7_in, 
    output logic PCSel, ImmSel, RegWEn, Asel, Bsel, MemRW,
    output logic [2:0] ALUSel,
    output logic [1:0] WBSel,
    output logic funct7
);
    Controller_Block ControlUnit (
        .opcode(opcode),
        .funct3(funct3),
        .BrEq(BrEq),
        .BrLT(BrLT),
        .BrUn(BrUn),
        .funct7_in(funct7_in),
        .PCSel(PCSel),
        .ImmSel(ImmSel),
        .RegWEn(RegWEn),
        .Asel(Asel),
        .Bsel(Bsel),
        .MemRW(MemRW),
        .ALUSel(ALUSel),
        .funct7(funct7),
        .WBSel(WBSel)
    );
endmodule
