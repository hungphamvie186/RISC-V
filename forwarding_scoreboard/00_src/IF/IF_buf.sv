module IF_buf #(parameter WIDTH = 32)
(
    input wire i_rst, i_clk,
    // input logic set,  
    input wire ID_stall, ID_flush,
    input wire [WIDTH-1:0] IF_inst, IF_pc,
    output reg [WIDTH-1:0] ID_inst,
    output reg [WIDTH-1:0] ID_pc
);
	wire flush;
	assign flush = i_rst | ID_flush;

    /*register_nor #(.WIDTH(32)) inst_delay (
                .clk(i_clk),
                .rst(flush),
                .en(~ID_stall),
                .D(IF_inst),
                .Q(ID_inst)
            );
    register_nor #(.WIDTH(32)) pc_delay (
                .clk(i_clk),
                .rst(flush),
                .en(~ID_stall),
                .D(IF_pc),
                .Q(ID_pc)
            );*/
	always @(posedge i_clk or posedge i_rst) begin
        if (flush) begin
            ID_pc <= 32'b0;
			ID_inst <= 32'b0;         
        end else if (~ID_stall) begin
            ID_pc 	<= IF_pc;
			ID_inst <= IF_inst;   
        end
    end

endmodule

