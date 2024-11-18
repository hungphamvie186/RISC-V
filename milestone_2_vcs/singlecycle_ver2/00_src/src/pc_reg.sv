module pc_reg (
	input logic i_clk,
	input logic i_rst_n,
	input logic [31:0] pc_next,
	output logic [31:0] pc
);

always_ff @(posedge i_clk or negedge i_rst_n) begin
	if (!i_rst_n) begin 
		pc <= 32'b0;
	end else begin
		pc <= pc_next;
	end
end

endmodule
