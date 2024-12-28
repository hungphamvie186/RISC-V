module singlecycle (
//input
    input logic i_clk,
    input logic i_rst_n,
    input logic [31:0] i_io_sw,
    input logic [31:0] i_io_btn,
//output
    output logic [31:0] o_pc_debug,
    output logic        o_insn_vld,
    output logic [31:0] o_io_ledr,
    output logic [31:0] o_io_ledg,
    output logic [6:0] o_io_hex0,
    output logic [6:0] o_io_hex1,
    output logic [6:0] o_io_hex2,
    output logic [6:0] o_io_hex3,
    output logic [6:0] o_io_hex4,
    output logic [6:0] o_io_hex5,
    output logic [6:0] o_io_hex6,
    output logic [6:0] o_io_hex7,
    output logic [31:0] o_io_lcd
/*
    output reg [17:0] SRAM_ADDR,
    inout wire [15:0] SRAM_DQ,
    output reg       SRAM_CE_N,
    output reg       SRAM_WE_N,
    output reg       SRAM_LB_N,
    output reg       SRAM_UB_N,
    output reg       SRAM_OE_N*/
);

    //////////////////control_unit/////////////////
    wire [1:0] wb_sel;
    wire [3:0] alu_op;
    wire pc_sel, br_un, rd_wren, mem_wren, mem_rden, op_a_sel, op_b_sel, w_b_LSU, l_unsigned;
    wire [2:0] funct3;
    // Explicitly declare br_less and br_equal here
    wire br_less, br_equal;
    wire [31:0] instr;

    controlunit controlunit(
        .instr(instr),
        .br_less(br_less),
        .br_equal(br_equal),
        .pc_sel(pc_sel),
        .br_un(br_un),
        .rd_wren(rd_wren),
        .funct3(funct3),
        .mem_wren(mem_wren),
        .mem_rden(mem_rden),
        .op_a_sel(op_a_sel),
        .op_b_sel(op_b_sel),
        .wb_sel(wb_sel),
        .alu_op(alu_op),
        .w_b_LSU(w_b_LSU),
        .l_unsigned(l_unsigned),
        .o_insn_vld(o_insn_vld)
    );

    ////////////////////fetch/////////////////////
    wire [31:0] alu_data;
    wire [31:0] pc_next, pc_four;
    assign pc_next = (pc_sel == 1'b0) ? pc_four : alu_data;
    wire [31:0] pc;
    assign o_pc_debug = pc;

    pc_reg pc_reg_block(
        .i_clk(i_clk),
        .i_rst_n(i_rst_n),
        .pc_next(pc_next),
        .pc(pc)    
    );

    pc_plus4 pc_plus4_block(
        .pc(pc),
        .pc_four(pc_four)
    );

    imem imem_block(
        .clk(i_clk),
        .rst_n(i_rst_n),
        .i_imem_addr(pc),
        .o_imem_data(instr)
    );

    wire [31:0] immediate;
    immGen immGen_block(
        .instr(instr),
        .immediate(immediate)
    );

    //////////////////Decode////////////////////
    wire [4:0] rs1_addr, rs2_addr, rd_addr;
    wire [31:0] rd_data;
    assign rs1_addr = instr [19:15];
    assign rs2_addr = instr [24:20];
    assign rd_addr = instr [11:7];

    wire [31:0] rs1_data, rs2_data;

    regfile regfile_block(
        .i_rst_n(i_rst_n), 
        .i_rd_wren(rd_wren), 
        .i_clk(i_clk),
        .i_rs1_addr(rs1_addr),
        .i_rs2_addr(rs2_addr),
        .i_rd_addr(rd_addr),
        .i_rd_data(rd_data),
        .o_rs1_data(rs1_data),
        .o_rs2_data(rs2_data)    
    );

    BRC BRC_block (
        .rs1_data(rs1_data), 
        .rs2_data(rs2_data),
        .br_un(br_un),
        .br_less(br_less), 
        .br_equal(br_equal)    
    );

    /////////////////////////
    /////////EX/////////////
    wire [31:0] operand_a, operand_b;
    assign operand_a = (op_a_sel == 1'b0) ?  rs1_data : pc;
    assign operand_b = (op_b_sel == 1'b0) ?  rs2_data : immediate;
    alu alu_block(
        .i_operand_a(operand_a),
        .i_operand_b(operand_b),
        .i_alu_op(alu_op),
        .o_alu_data(alu_data)
    );

    /////////////////////////
    /////////MEM/////////////

    wire [31:0] ld_data;
    LSU lsu_block(
        .i_io_sw(i_io_sw),
        .i_io_btn(i_io_btn),
        .i_lsu_wren(mem_wren),
        .i_lsu_rden(mem_rden),
        .i_clk(i_clk),
        .i_rst(~i_rst_n),
        .i_lsu_addr(alu_data),
        .i_st_data(rs2_data),

        .o_ld_data(ld_data),
        .o_io_ledr(o_io_ledr),
        .o_io_ledg(o_io_ledg),

        .o_io_hex0(o_io_hex0),
        .o_io_hex1(o_io_hex1),
        .o_io_hex2(o_io_hex2),
        .o_io_hex3(o_io_hex3),
        .o_io_hex4(o_io_hex4),
        .o_io_hex5(o_io_hex5),
        .o_io_hex6(o_io_hex6),
        .o_io_hex7(o_io_hex7),

        .o_io_lcd(o_io_lcd),
	.funct3(funct3)
/*
        .sram_addr(SRAM_ADDR),
        .sram_dq(SRAM_DQ),
        .sram_ce_n(SRAM_CE_N),
        .sram_we_n(SRAM_WE_N),
        .sram_lb_n(SRAM_LB_N),
        .sram_ub_n(SRAM_UB_N),
        .sram_oe_n(SRAM_OE_N)*/
    );

    //////// write back ////////////
    wire [31:0] wb_data;
    mux_4to1 wb_block(
        .d3(pc_four),
        .d0(alu_data),
        .d1(ld_data),
        .d2(alu_data),
        .sel(wb_sel),
        .y(wb_data)
    );
    assign  rd_data= wb_data;

endmodule

