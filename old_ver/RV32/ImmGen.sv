`timescale 1ns/1ps

module ImmGen_block (
    input logic [11:0] imm,
    input logic  ImmSel,
    output logic [31:0] Imm
);
    always_comb begin
        case (ImmSel)
            1'b0: begin // Cộng có dấu
                case (imm[11])
                    1'b0: Imm = {20'h0, imm[11:0]};         // Số dương
                    1'b1: Imm = {20'hFFFFF, imm[11:0]};      // Số âm
                endcase
            end
            1'b1: begin // Không dấu
                Imm = {20'h0, imm[11:0]};
            end
            default: begin
                Imm = 32'b0; // Giá trị mặc định cho các trường hợp khác
            end
        endcase
    end
endmodule
module ImmGen (
    input logic [11:0] imm,
    input logic  ImmSel,
    output logic [31:0] Imm
);
		ImmGen_block immgen (
        .imm(imm),
		  .Imm(Imm),
        .ImmSel(ImmSel)
    );
	 endmodule