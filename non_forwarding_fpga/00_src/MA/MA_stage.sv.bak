module MA_stage (
		// I/O signal
	input wire [31:0] i_io_sw,   
	input wire [3:0] i_io_btn,    
	input wire i_clk, i_rst,

	output reg [31:0] o_io_ledr,
	output reg [31:0] o_io_ledg,

	output reg [6:0] o_io_hex0,
	output reg [6:0] o_io_hex1,
	output reg [6:0] o_io_hex2,
	output reg [6:0] o_io_hex3,
	output reg [6:0] o_io_hex4,
	output reg [6:0] o_io_hex5,
	output reg [6:0] o_io_hex6,
	output reg [6:0] o_io_hex7,

	output reg [31:0] o_io_lcd, 
		// Control signal
	input wire MEM_rd_wren, MEM_mem_wren, MEM_mem_rden, MEM_insn_vld,
	input wire [2:0] MEM_funct3,
	input wire [1:0] MEM_wb_sel,
	input wire [31:0] MEM_alu_data, MEM_rs2_data, MEM_pc,
	input wire [4:0] MEM_rd_addr,

	output reg  [1:0]WB_wb_sel,
	output reg  WB_rd_wren,
	output reg  WB_insn_vld,
	output reg [31:0] WB_alu_data,
	output reg [31:0] WB_ld_data,
	output reg [31:0] WB_pc,
	output reg [4:0]  WB_rd_addr
);
	wire [31:0] MEM_ld_data;
	

    LSU lsu_block(
        .i_io_sw(i_io_sw),
        .i_io_btn(i_io_btn),
        .i_lsu_wren(MEM_mem_wren),
        .i_lsu_rden(MEM_mem_rden),
        .i_clk(i_clk),
        .i_rst(i_rst),
        .i_lsu_addr(MEM_alu_data),
        .i_st_data(MEM_rs2_data),

        .o_ld_data(MEM_ld_data),
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
		.funct3(MEM_funct3) 
		);
always @(posedge i_clk or negedge ~i_rst) begin
    if(i_rst) begin
      WB_alu_data      	<= 32'd0;
      WB_ld_data    	<= 32'd0;
      WB_pc    	<= 32'd0;

	  WB_rd_addr   		<= 5'd0;

      WB_wb_sel     	<= 1'd0;
      WB_rd_wren     	<= 1'd0;
      WB_insn_vld      	<= 1'd0;
    end else begin
      WB_alu_data      	<= MEM_alu_data;
      WB_ld_data    	<= MEM_ld_data;
      WB_pc    			<= MEM_pc;

	  WB_rd_addr   		<= MEM_rd_addr;

      WB_wb_sel     	<= MEM_wb_sel;
      WB_rd_wren     	<= MEM_rd_wren;
      WB_insn_vld      	<= MEM_insn_vld;
    end
  end
endmodule

