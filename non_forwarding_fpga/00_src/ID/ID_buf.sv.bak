module ID_buf (
	input wire i_clk, i_rst, EX_flush,
	input wire ID_rd_wren, ID_br_sel, ID_mem_wren, ID_mem_rden, ID_op_b_sel, ID_op_a_sel, ID_insn_vld, // control unit signal
	input wire [2:0] ID_funct3,
	input wire [1:0] ID_wb_sel,
	input wire [3:0] ID_alu_op,
	input wire [31:0] ID_rs1_data, ID_rs2_data, ID_immediate, ID_pc,
	input wire [4:0] ID_rd_addr,
	
	output reg [1:0] EX_wb_sel,
	output reg [3:0] EX_alu_op,
	output reg EX_rd_wren, EX_br_sel, EX_mem_wren, EX_mem_rden,  EX_op_b_sel, EX_op_a_sel, EX_insn_vld, // control unit signal
	output reg [2:0] EX_funct3,
	output reg [31:0] EX_rs1_data, EX_rs2_data, EX_immediate, EX_pc,
	output reg [4:0] EX_rd_addr	
	
);
	always @(posedge i_clk or negedge ~i_rst) begin
    if(i_rst | EX_flush) begin
      EX_rs1_data       <= 32'd0;
      EX_rs2_data      	<= 32'd0;
      EX_immediate    	<= 32'd0;
      EX_pc    			<= 32'd0;

	  EX_rd_addr   		<= 5'd0;
      EX_funct3    		<= 3'd0;

		
      EX_rd_wren     	<= 1'd0;
      EX_br_sel     	<= 1'd0;
      EX_wb_sel      	<= 1'd0;
      EX_mem_wren     	<= 1'd0;
      EX_mem_rden      	<= 1'd0;
      EX_alu_op     	<= 1'd0;
      EX_op_b_sel     	<= 1'd0;
      EX_op_a_sel      	<= 1'd0;
      EX_insn_vld     	<= 1'd0;
    end else begin
      EX_rs1_data       <= ID_rs1_data;
      EX_rs2_data      	<= ID_rs2_data;
      EX_immediate    	<= ID_immediate;
      EX_pc    			<= ID_pc;

	  EX_rd_addr   		<= ID_rd_addr;
      EX_funct3    		<= ID_funct3;

		
      EX_rd_wren     	<= ID_rd_wren;
      EX_br_sel     	<= ID_br_sel;
      EX_wb_sel      	<= ID_wb_sel;
      EX_mem_wren     	<= ID_mem_wren;
      EX_mem_rden      	<= ID_mem_rden;
      EX_alu_op     	<= ID_alu_op;
      EX_op_b_sel     	<= ID_op_b_sel;
      EX_op_a_sel      	<= ID_op_a_sel;
      EX_insn_vld     	<= ID_insn_vld;
    end
  end


endmodule

