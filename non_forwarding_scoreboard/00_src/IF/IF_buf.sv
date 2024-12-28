module IF_buf #(parameter WIDTH = 32)
(
    input wire i_rst, i_clk,
    // input logic set,  
    input wire ID_stall, ID_flush,
    input wire [WIDTH-1:0] IF_inst, IF_pc,
    output reg [WIDTH-1:0] ID_inst,
    output reg [WIDTH-1:0] ID_pc
);

    register_nor #(.WIDTH(32)) inst_delay (
                .clk(i_clk),
                .rst(i_rst | ID_flush),
                .en(~ID_stall),
                .D(IF_inst),
                .Q(ID_inst)
            );
    register_nor #(.WIDTH(32)) pc_delay (
                .clk(i_clk),
                .rst(i_rst | ID_flush),
                .en(~ID_stall),
                .D(IF_pc),
                .Q(ID_pc)
            );

endmodule

