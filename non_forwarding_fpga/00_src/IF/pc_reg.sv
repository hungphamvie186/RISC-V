module pc_reg (
	input wire i_clk,
	input wire i_rst,en,
	input wire [31:0] pc_next,
	output reg [31:0] pc
);

always @(posedge i_clk or negedge ~i_rst) begin
	if (i_rst) begin 
		pc <= 32'b0;
	end else if (en) begin
		pc <= pc_next;
	end else begin
		pc <= pc;
	end
end

endmodule

