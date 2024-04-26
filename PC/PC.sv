`timescale 1ns/1ps
module adder (
    input logic [31:0] A,
    output logic [31:0] S
);
    always_comb begin  
        S = A + 1;
    end
endmodule

module register (
    input logic rst, en, clk,
    input logic [31:0] D,
    output logic [31:0] Q
);
    always_ff @(posedge clk) begin    
        if (rst)
            Q <= 32'b0;
        else if (en)
            Q <= D;
    end
endmodule

module MUX (
    input logic A, B, Stop_en,
    output logic [31:0] next_pc
);
    always_comb begin
        case (Stop_en)
            1'b0: next_pc = A;
            1'b1: next_pc = B;          
        endcase
    end
endmodule

module PC (
    input logic rst, clk, Stop_en,
    output logic [31:0] cur_pc,
	 output logic [31:0] nextpc
);
    logic [31:0] next_pc; 
    logic [31:0] p_c; 
    logic [31:0] A_mux; 
    logic [31:0] B_mux;

    assign p_c = cur_pc;
	 assign nextpc=next_pc;
 
    register PC_register (
        .rst(rst),
        .clk(clk),
        .en(1'b1),
        .D(next_pc),
        .Q(cur_pc)
    );

    adder PC_4 (
        .A(p_c),
        .S(A_mux)
    );

    MUX PC_MUX (
        .A(A_mux),
        .B(p_c),
        .Stop_en(Stop_en),
        .next_pc(next_pc)
    );
endmodule
