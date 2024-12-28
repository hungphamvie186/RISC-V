
module regfile (
	 input logic i_rst_n, i_rd_wren, i_clk,
    input logic [4:0] i_rs1_addr,
	 input logic [4:0] i_rs2_addr,
	 input logic [4:0] i_rd_addr,
	 input logic [31:0] i_rd_data,
    output logic [31:0] o_rs1_data,
	 output logic [31:0] o_rs2_data);
	 
	 logic [4:0] rd_addr_en;
	 logic [31:0] reg_en;
	 MUX2 rdaddr_en(
					.A(i_rd_addr),
					.sel(i_rd_wren),
					.out(rd_addr_en));
					
	 decoder_5to32 decoder5_32(
					.x(rd_addr_en),
					.en(reg_en));
					

    logic [31:0] Q[31:0];	 
	 genvar i;
	 generate
    for (i = 0; i < 32; i = i + 1) begin : register_loop
        register register_inst (
            .rst(~i_rst_n),
            .en(reg_en[i]),
            .clk(i_clk),
            .D(i == 0 ? 32'b0 : i_rd_data),
            .Q(Q[i])
        );
    end
	endgenerate
		 
	MUX muxA(
					.sel(i_rs1_addr),
					.d(Q),
					.y(o_rs1_data));
	MUX muxB(
					.sel(i_rs2_addr),
					.d(Q),
					.y(o_rs2_data));
					
		endmodule
	 
