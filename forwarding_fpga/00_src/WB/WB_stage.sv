module WB_stage (
		
	input wire [1:0] WB_wb_sel,
	input wire [31:0] WB_alu_data,  
	input wire [31:0] WB_ld_data,  
	input wire [31:0] WB_pc,     
	output reg [31:0] WB_wb_data, o_pc_debug
);
	reg  [31:0] WB_pc_four;
	always @(*) begin
	WB_pc_four = WB_pc + 32'd4;
	o_pc_debug = WB_pc;
	end

    mux_4to1 mux_wb_data(
        .d0(WB_alu_data),
        .d1(WB_ld_data),
        .d2(WB_alu_data),
        .d3(WB_pc_four),
        .sel(WB_wb_sel),
        .y(WB_wb_data)
    );
	

endmodule

