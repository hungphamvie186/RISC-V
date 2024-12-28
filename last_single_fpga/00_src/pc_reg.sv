module pc_reg (
	input wire i_clk,
	input wire i_rst_n,
	input wire [31:0] pc_next,
	output reg [31:0] pc
);

always @(posedge i_clk or negedge i_rst_n) begin
	if (!i_rst_n) begin 
		pc <= 32'b0;
	end else begin
		pc <= pc_next;
	end
end

endmodule

