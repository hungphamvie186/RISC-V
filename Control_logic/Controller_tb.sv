`timescale 1ns/1ps

module Controller_tb;
    // Khai báo các biến cho tín hiệu đầu vào và đầu ra
    logic [6:0] opcode;
    logic [2:0] funct3;
    logic BrEq, BrLT, BrUn;
    logic funct7_in; 
    logic PCSel, ImmSel, RegWEn, Asel, Bsel, MemRW;
    logic [2:0] ALUSel;
    logic [1:0] WBSel;
    logic funct7;

    // Khởi tạo module Controller
    Controller uut (
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
        .WBSel(WBSel),
        .funct7(funct7)
    );

    // Thực hiện kiểm tra
    initial begin
        // Thiết lập các giá trị đầu vào ban đầu
        opcode = 7'b0000000;
        funct3 = 3'b000;
        BrEq = 1'b0;
        BrLT = 1'b0;
        BrUn = 1'b0;
        funct7_in = 1'b0;

        // Chờ một khoảng thời gian để các tín hiệu ổn định
        #10;

        // NOP (addi x0, x0, 0)
        opcode = 7'b0010011;
        funct3 = 3'b000;
        funct7_in = 1'b0;
        #10;
        $display("NOP: 				PCSel=%b, RegWEn=%b, Asel=%b, Bsel=%b, ImmSel=%b, ALUSel=%b, MemRW=%b, WBSel=%b, funct7=%b", 
            PCSel, RegWEn, Asel, Bsel, ImmSel, ALUSel, MemRW, WBSel, funct7);

        // addi x1, x0, 6
        opcode = 7'b0010011;
        funct3 = 3'b000;
        #10;
        $display("addi x1, x0, 6: 	PCSel=%b, RegWEn=%b, Asel=%b, Bsel=%b, ImmSel=%b, ALUSel=%b, MemRW=%b, WBSel=%b, funct7=%b", 
            PCSel, RegWEn, Asel, Bsel, ImmSel, ALUSel, MemRW, WBSel, funct7);

        // addi x2, x0, 5
        opcode = 7'b0010011;
        funct3 = 3'b000;
        #10;
        $display("addi x2, x0, 5:		PCSel=%b, RegWEn=%b, Asel=%b, Bsel=%b, ImmSel=%b, ALUSel=%b, MemRW=%b, WBSel=%b, funct7=%b", 
            PCSel, RegWEn, Asel, Bsel, ImmSel, ALUSel, MemRW, WBSel, funct7);

        // addi x30, x0, 100
        opcode = 7'b0010011;
        funct3 = 3'b000;
        #10;
        $display("addi x30, x0, 100: 	PCSel=%b, RegWEn=%b, Asel=%b, Bsel=%b, ImmSel=%b, ALUSel=%b, MemRW=%b, WBSel=%b, funct7=%b", 
            PCSel, RegWEn, Asel, Bsel, ImmSel, ALUSel, MemRW, WBSel, funct7);

        // sw x2, 0(x30)
        opcode = 7'b0100011;
        funct3 = 3'b010;
        #10;
        $display("sw x2, 0(x30): 		PCSel=%b, RegWEn=%b, Asel=%b, Bsel=%b, ImmSel=%b, ALUSel=%b, MemRW=%b, WBSel=%b, funct7=%b", 
            PCSel, RegWEn, Asel, Bsel, ImmSel, ALUSel, MemRW, WBSel, funct7);

        // lw x6, 0(x30)
        opcode = 7'b0000011;
        funct3 = 3'b010;
        #10;
        $display("lw x6, 0(x30): 		PCSel=%b, RegWEn=%b, Asel=%b, Bsel=%b, ImmSel=%b, ALUSel=%b, MemRW=%b, WBSel=%b, funct7=%b", 
            PCSel, RegWEn, Asel, Bsel, ImmSel, ALUSel, MemRW, WBSel, funct7);

        // beq x2, x6, 2
        opcode = 7'b1100011;
        funct3 = 3'b000;
        BrEq = 1'b1;
        #10;
        $display("beq x2, x6, 2: 		PCSel=%b, RegWEn=%b, Asel=%b, Bsel=%b, ImmSel=%b, ALUSel=%b, MemRW=%b, WBSel=%b, funct7=%b", 
            PCSel, RegWEn, Asel, Bsel, ImmSel, ALUSel, MemRW, WBSel, funct7);

        // ori x4, x2, 4
        opcode = 7'b0010011;
        funct3 = 3'b110; // OR immediate
        funct7_in = 1'b0;
        #10;
        $display("ori x4, x2, 4: 		PCSel=%b, RegWEn=%b, Asel=%b, Bsel=%b, ImmSel=%b, ALUSel=%b, MemRW=%b, WBSel=%b, funct7=%b", 
            PCSel, RegWEn, Asel, Bsel, ImmSel, ALUSel, MemRW, WBSel, funct7);

        // sub x3, x1, x6
        opcode = 7'b0110011;
        funct3 = 3'b000; // SUB
        funct7_in = 1'b1; // SUB uses funct7 as 1
        #10;
        $display("sub x3, x1, x6: 	PCSel=%b, RegWEn=%b, Asel=%b, Bsel=%b, ImmSel=%b, ALUSel=%b, MemRW=%b, WBSel=%b, funct7=%b", 
            PCSel, RegWEn, Asel, Bsel, ImmSel, ALUSel, MemRW, WBSel, funct7);

        $finish;
    end
endmodule
