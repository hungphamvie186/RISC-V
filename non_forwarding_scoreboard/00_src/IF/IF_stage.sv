module IF_stage (
	input wire i_clk,
	input wire i_rst, 
	input wire IF_stall, EX_br_sel, // non-forwarding control IF signal
	input wire [31:0] EX_alu_data,
	output reg [31:0] IF_inst, IF_pc
);
	wire [31:0] IF_pc_four, IF_next_pc;
	mux_2to1 mux_pc_sel(
		    .d0(IF_pc_four),
		    .d1(EX_alu_data),
		    .sel(EX_br_sel),
		    .y(IF_next_pc)    
		);
	pc_reg pc_reg_block(
		    .i_clk(i_clk),
		    .i_rst(i_rst),
			.en(~IF_stall),
		    .pc_next(IF_next_pc),
		    .pc(IF_pc)    
		);
	pc_plus4 pc_plus4_block(
		    .pc(IF_pc),
		    .pc_four(IF_pc_four)    
		);
	imem imem_block(
		    .clk(i_clk),
		    .rst_n(i_rst),
			.i_imem_addr(IF_pc),
		    .o_imem_data(IF_inst)    
		);

endmodule

