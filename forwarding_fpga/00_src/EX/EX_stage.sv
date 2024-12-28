module EX_stage (
	input wire i_clk,
	input wire i_rst, 
	input wire EX_rd_wren, EX_br_un, EX_mem_wren, EX_mem_rden, EX_op_b_sel, EX_op_a_sel, EX_insn_vld, MEM_flush, // control unit signal
	input wire [2:0] EX_funct3, 
	input wire [1:0] EX_wb_sel, ID_forward_A, ID_forward_B, 
	input wire [31:0] EX_rs1_data, EX_rs2_data, EX_immediate, EX_pc, EX_inst,
	input wire [31:0] WB_wb_data,
	input wire [4:0] EX_rd_addr,
	input wire [3:0]  EX_alu_op,


	output reg [1:0] MEM_wb_sel,
	output reg MEM_rd_wren, MEM_mem_wren, MEM_mem_rden, MEM_insn_vld, EX_br_sel, MEM_br_sel,
	output reg [2:0] MEM_funct3,
	output reg [31:0] MEM_alu_data, MEM_rs2_data, MEM_pc, EX_alu_data, MEM_inst,
	output reg [4:0] MEM_rd_addr
);
	wire [31:0] operand_a, operand_b;
	wire [31:0] EX_forward_dataA, EX_forward_dataB;
	wire br_less, br_equal;

	BRC BRC_block (
        .rs1_data(EX_forward_dataA), 
        .rs2_data(EX_forward_dataB),
        .br_un(EX_br_un),
        .br_less(br_less), 
        .br_equal(br_equal)    
    );
	brc_taken_n_forwarding brc_taken_block (
        .i_inst    (EX_inst),         
        .i_br_less (br_less),      
        .i_br_equal(br_equal),    
        .brc_taken (EX_br_sel)      
    );
	mux_4to1 forward_a_sel(
        .d0(EX_rs1_data),
        .d1(WB_wb_data),
        .d2(MEM_alu_data),
        .d3(EX_rs1_data),
        .sel(ID_forward_A),
        .y(EX_forward_dataA)
    );
	mux_4to1 forward_b_sel(
        .d0(EX_rs2_data),
        .d1(WB_wb_data),
        .d2(MEM_alu_data),
        .d3(EX_rs2_data),
        .sel(ID_forward_B),
        .y(EX_forward_dataB)
    );
	mux_2to1 mux_op_a_sel(
		    .d0(EX_forward_dataA),
		    .d1(EX_pc),
		    .sel(EX_op_a_sel),
		    .y(operand_a)    
		);
	mux_2to1 mux_op_b_sel(
		    .d0(EX_forward_dataB),
		    .d1(EX_immediate),
		    .sel(EX_op_b_sel),
		    .y(operand_b)    
		);
	alu alu_block(
        .i_operand_a(operand_a),
        .i_operand_b(operand_b),
        .i_alu_op(EX_alu_op),
        .o_alu_data(EX_alu_data)
    );
		always @(posedge i_clk or posedge i_rst) begin
    if (i_rst) begin
        MEM_rs2_data      <= 32'd0;
        MEM_alu_data      <= 32'd0;
        MEM_pc            <= 32'd0;
        MEM_inst          <= 32'd0;
        MEM_rd_addr       <= 5'd0;
        MEM_funct3        <= 3'd0;

        MEM_rd_wren       <= 1'd0;
        MEM_br_sel        <= 1'd0;
        MEM_wb_sel        <= 1'd0;
        MEM_mem_wren      <= 1'd0;
        MEM_mem_rden      <= 1'd0;

        MEM_insn_vld      <= 1'd0;
    end else if (MEM_flush) begin
        MEM_rs2_data      <= 32'd0;
        MEM_alu_data      <= 32'd0;
        MEM_pc            <= 32'd0;
        MEM_inst          <= 32'd0;
        MEM_rd_addr       <= 5'd0;
        MEM_funct3        <= 3'd0;

        MEM_rd_wren       <= 1'd0;
        MEM_br_sel        <= 1'd0;
        MEM_wb_sel        <= 1'd0;
        MEM_mem_wren      <= 1'd0;
        MEM_mem_rden      <= 1'd0;

        MEM_insn_vld      <= 1'd0;
    end else begin
        MEM_rs2_data      <= EX_rs2_data;
        MEM_alu_data      <= EX_alu_data;
        MEM_pc            <= EX_pc;
        MEM_inst          <= EX_inst;

        MEM_rd_addr       <= EX_rd_addr;
        MEM_funct3        <= EX_funct3;

        MEM_rd_wren       <= EX_rd_wren;
        MEM_br_sel        <= EX_br_sel;
        MEM_wb_sel        <= EX_wb_sel;
        MEM_mem_wren      <= EX_mem_wren;
        MEM_mem_rden      <= EX_mem_rden;

        MEM_insn_vld      <= EX_insn_vld;
    end
end

endmodule

