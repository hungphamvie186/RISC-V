module ID_stage (
	input wire i_clk,
	input wire i_rst, 
	input wire WB_rd_wren, 
	input wire [31:0] ID_inst, WB_wb_data,
	input wire [4:0] WB_rd_addr,
	input wire ID_forward_rs1, ID_forward_rs2,
	
	output reg [1:0]  ID_wb_sel,
	output reg [3:0]  ID_alu_op,
	output reg  ID_rd_wren, ID_mem_wren, ID_mem_rden, ID_op_b_sel, ID_op_a_sel, ID_insn_vld,id_is_rs1, id_is_rs2,ID_br_un, // control unit signal
	
	output reg [31:0] ID_rs1_data, ID_rs2_data, ID_immediate,
	output reg [4:0] ID_rd_addr, ID_rs1_addr, ID_rs2_addr,
	output reg [2:0] ID_funct3
);
	wire [31:0] reg_res1_data, reg_res2_data;
    assign ID_rs1_addr = ID_inst [19:15];
    assign ID_rs2_addr = ID_inst [24:20];
    assign ID_rd_addr  = ID_inst [11:7];

	mux_2to1 forward_rs1_sel(
		    .d0(reg_res1_data),
		    .d1(WB_wb_data),
		    .sel(ID_forward_rs1),
		    .y(ID_rs1_data)    
		);
	mux_2to1 forward_rss_sel(
		    .d0(reg_res2_data),
		    .d1(WB_wb_data),
		    .sel(ID_forward_rs2),
		    .y(ID_rs2_data)    
		);
    regfile regfile_block(
        .i_rst_n(~i_rst),
        .i_clk(i_clk),
        .i_rs1_addr(ID_rs1_addr),
        .i_rs2_addr(ID_rs2_addr),
        .i_rd_addr(WB_rd_addr), 
        .i_rd_wren(WB_rd_wren), 
        .i_rd_data(WB_wb_data),
        .o_rs1_data(reg_res1_data),
        .o_rs2_data(reg_res2_data)    
    );


    immGen immGen_block(
        .instr(ID_inst),
        .immediate(ID_immediate)
    );

	controlunit controlunit(
        .instr(ID_inst),

        .br_un(ID_br_un),
	.id_is_rs1(id_is_rs1),
	.id_is_rs2(id_is_rs2),
        .rd_wren(ID_rd_wren), 

        .mem_wren(ID_mem_wren),
        .mem_rden(ID_mem_rden),

        .funct3(ID_funct3),
	.wb_sel(ID_wb_sel),

        .op_a_sel(ID_op_a_sel),
        .op_b_sel(ID_op_b_sel),
        .alu_op(ID_alu_op),
        .o_insn_vld(ID_insn_vld)
    );

endmodule

