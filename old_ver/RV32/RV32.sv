`timescale 1ns/1ps
module RV32 (
    input logic rst, clk, Stop_en,
    output logic [31:0] ketqua,
	 output logic [31:0] cur_pcout,
	 output logic [11:0] imm_out,
	 output logic [4:0] rd_adr,
	 output logic [31:0] rddata,
	 output logic [31:0] A_Alu,
	 output logic [31:0] B_Alu,
	 output logic [1:0] wbs,
	 output logic [4:0] rs1_out,
	 output logic Reg_WEn
);	
	 logic [4:0] rd;
    logic [4:0] rs1;
    logic [4:0] rs2; 
    logic [11:0] imm;
	 logic [31:0] alu_data;
    logic [6:0] opcode;
    logic [2:0] funct3;
    logic BrEq, BrLT, BrUn;
    logic funct7_in;
    logic PCSel, ImmSel, RegWEn, Asel, Bsel, MemRW;
    logic [2:0] ALUSel;
    logic [1:0] WBSel;
    logic funct7;
    

    Controller Controller_connect (
        .opcode(opcode),
        .funct3(funct3),
        .BrEq(BrEq),
        .BrLT(BrLT),
        .BrUn(BrUn),
        .funct7(funct7),
        .funct7_in(funct7_in),
        .PCSel(PCSel),
        .ImmSel(ImmSel),
        .RegWEn(RegWEn),
        .Asel(Asel),
        .Bsel(Bsel),
        .MemRW(MemRW),
        .ALUSel(ALUSel),
        .WBSel(WBSel)
    );
	assign Reg_WEn=RegWEn;
    logic [31:0] cur_pc;
	 logic [31:0] nextpc;
    PC PC_connect (
        .rst(rst),
        .clk(clk),
        .Stop_en(Stop_en),
        .PCsel(PCSel),
		  .branch(alu_data),
		  .nextpc(nextpc),
        .cur_pc(cur_pc)
    );

    assign cur_pcout=cur_pc;

    imemfetch imemfetch_connect (
        .addr(cur_pc),
        .opcode(opcode),
        .rd(rd),
        .funct3(funct3),
        .rs1(rs1),
        .rs2(rs2),
        .funct7(funct7_in),
        .imm(imm)
    );
	assign imm_out=imm;
    logic [31:0] rd_data;
    logic [31:0] rs1_data;
    logic [31:0] rs2_data;
    
    regfile regfile_connect (
        .rst_ni(~rst),
        .rd_wren(RegWEn),
        .clk_i(clk),
        .rs1_addr(rs1),
        .rs2_addr(rs2),
        .rd_addr(rd),
        .rd_data(rd_data),
        .rs1_data(rs1_data),
        .rs2_data(rs2_data)
    );
		assign ketqua=rs1_data;
		assign rd_adr=rd;
		assign rddata=rd_data;
		assign rs1_out=rs1;
		
    BranchComp BranchComp_connect (
        .DataA(rs1_data),
        .DataB(rs2_data),
        .BrUn(BrUn),
        .BrLT(BrLT),
        .BrEq(BrEq)
    );
    logic [31:0] Imm;
	 ImmGen ImmGen_connect (
        .imm(imm),
        .ImmSel(ImmSel),
        .Imm(Imm)
    );
	 logic [31:0] PC_alu;
	MUX_AB MUX_ASel (
        .AB_Sel(Asel),
        .A(rs1_data),
		  .B(cur_pc),
		  .AB(PC_alu)
    );
	 assign A_Alu=PC_alu;
	 logic [31:0] Imm_alu;
	 MUX_AB MUX_BSel (
        .AB_Sel(Bsel),
        .A(rs2_data),
		  .B(Imm),
		  .AB(Imm_alu)
    );
	 assign B_Alu=Imm_alu;
	 alu ALU_Connect (
        .alu_op(ALUSel),
        .funct7(funct7),
        .operand_a(PC_alu),
        .operand_b(Imm_alu),
        .alu_data(alu_data)
    );
	 logic [31:0] dataR;
	 Dmem Dmem_Connect (
        .rst_ni(~rst),
        .MemRW(MemRW),
        .clk_i(clk),
        .addr(alu_data[4:0]),
        .dataW(rs2_data),
        .dataR(dataR)
    );
	 MUX_3 Wb_connect(
        .dmem(dataR),
        .alu(alu_data),
        .PC_4(nextpc),
        .WBSel(WBSel),
        .wb(rd_data)
    );
	 assign wbs=WBSel;
endmodule
module MUX_AB (
    input logic [31:0] A, B,
    input logic AB_Sel,
    output logic [31:0] AB
);
    always_comb begin
        case (AB_Sel)
            1'b0: AB = A;
            1'b1: AB = B;          
        endcase
    end
	endmodule
	

module MUX_3 (
    input logic [31:0] dmem, alu,PC_4,
    input logic [1:0] WBSel,
    output logic [31:0] wb
);
    always_comb begin
        case (WBSel)
            2'b00: wb = dmem;
            2'b01: wb = alu;
				2'b10: wb = PC_4;
				2'b11: wb = alu;
        endcase
    end
	endmodule