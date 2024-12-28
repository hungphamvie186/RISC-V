module singlecycle (
//input
	input logic i_clk,
	input logic i_rst_n,
//output
	output logic [31:0] o_pc_debug,
	output logic o_insn_vld,
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
	output logic [31:0] o_io_lcd,
	output logic [31:0] o_io_sw,
	output logic [3:0] o_io_btn
);
wire [31:0] pc_next;
assign pc_next = (pc_sel == 1'b0) ? pc_four : o_alu_data;
wire [31:0] pc;
assign o_pc_debug = pc;
pc_reg pc_reg (
	.i_clk(i_clk),
	.i_rst_n(i_rst_n),
	.pc_next(pc_next),
	.pc(pc)	
);

wire [31:0]pc_four;
pc_plus4 pc_plus4 (
	.pc(pc),
	.pc_four(pc_four)
);

wire [31:0] immediate;
immGen immGen(
	.instr(instr),
	.immediate(immediate)
);

wire [1:0] wb_sel;
wire [3:0] alu_op;
wire pc_sel, br_un, rd_wren, mem_wren,op_a_sel, op_b_sel, w_b_LSU,l_unsigned ;
controlunit controlunit(
	.instr (instr),
	.br_less (br_less),
	.br_equal (br_equal),
	.pc_sel(pc_sel),
	.br_un(br_un),
	.rd_wren(rd_wren),
	.mem_wren(mem_wren),
	.op_a_sel(op_a_sel),
	.op_b_sel(op_b_sel),
	.wb_sel(wb_sel),
	.alu_op(alu_op),
	.w_b_LSU(w_b_LSU),
	.l_unsigned(l_unsigned),
	.o_insn_vld(o_insn_vld)
);

wire [31:0] i_operand_a, i_operand_b, o_alu_data;
assign i_operand_a = (op_a_sel == 1'b0) ?  o_rs1_data : pc;
assign i_operand_b = (op_b_sel == 1'b0) ?  o_rs2_data : immediate;
alu alu(
	.i_operand_a(i_operand_a),
	.i_operand_b(i_operand_b),
	.i_alu_op(alu_op),
	.o_alu_data(o_alu_data)
);

wire [31:0] instr;
imem imem(
	.clk(i_clk),
	.rst_n(i_rst_n),
	.i_imem_addr(pc),
	.o_imem_data(instr)
);

wire [4:0] i_rs1_addr, i_rs2_addr, i_rd_addr;
wire [31:0] i_rd_data;
assign i_rs1_addr = instr [19:15];
assign i_rs2_addr = instr [24:20];
assign i_rd_addr = instr [11:7];

wire [31:0] o_rs1_data, o_rs2_data;

regfile regfile(
	.i_rst_n(i_rst_n), 
	.i_rd_wren(rd_wren), 
	.i_clk(i_clk),
    .i_rs1_addr(i_rs1_addr),
	.i_rs2_addr(i_rs2_addr),
	.i_rd_addr(i_rd_addr),
	.i_rd_data(i_rd_data),
    .o_rs1_data(o_rs1_data),
	.o_rs2_data(o_rs2_data)	
);

wire br_less, br_equal; 
BRC BRC (
   .rs1_data(o_rs1_data), 
   .rs2_data(o_rs2_data),
   .br_un(br_un),
   .br_less(br_less), 
   .br_equal(br_equal)	
);

endmodule
