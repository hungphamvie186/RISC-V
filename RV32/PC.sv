`timescale 1ns/1ps

module adder (
    input logic [31:0] A,
    output logic [31:0] S
);
    always_comb begin  
        S = A + 4;
    end
endmodule
`timescale 1ns/1ps
module register_pc (
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

module PC_SEL (
    input logic [31:0] pc4, branch,
    input logic sel,
    output logic [31:0] sel_pc
);
    always_comb begin
        case (sel)
            1'b0: sel_pc = pc4;           // thực hiện lệch kế tiếp 
            1'b1: sel_pc = branch;         // nhảy 
        endcase
    end
endmodule
`timescale 1ns/1ps
module MUX_pc (
    input logic [31:0] A, B,
    input logic Stop_en,
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
    input logic rst, clk, Stop_en, PCsel,
    input logic [31:0] branch,
    output logic [31:0] cur_pc,
    output logic [31:0] nextpc
);
    logic [31:0] next_pc; 
    logic [31:0] Pc_4;

    register_pc PC_register_pc (
        .rst(rst),
        .clk(clk),
        .en(1'b1),
        .D(next_pc),
        .Q(cur_pc)
    );

    adder PC_4 (
        .A(cur_pc),
        .S(Pc_4)
    );

    PC_SEL PCSel (
        .pc4(Pc_4),
        .branch(branch),
        .sel(PCsel),
        .sel_pc(nextpc)
    );

    MUX_pc PC_MUX_pc (
        .A(nextpc),
        .B(cur_pc),
        .Stop_en(Stop_en),
        .next_pc(next_pc)
    );
endmodule