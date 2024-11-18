`timescale 1ns/1ps

module decoder (
    input logic [4:0] x,
    output logic [31:0] en
);
    assign en = (x == 0) ? 32'b1 : (32'b1 << x); // Sửa lại bộ giải mã
endmodule

module MUX (
    input logic [31:0] d [31:0],
    input logic [4:0] sel,
    output logic [31:0] y
);
    assign y = d[sel];
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

module MUX2_1 (
    input logic [31:0] data_out,
    input logic [31:0] data_buf,
    input logic MemRW,
    output logic [31:0] dataR
);
    always_comb begin
        case (MemRW)
            1'b0: dataR = data_out;
            1'b1: dataR = data_buf;
        endcase
    end
endmodule

module MUX2 (
    input logic [4:0] A,
    input logic sel,
    output logic [4:0] out
);
    assign out = sel ? A : 5'b0;
endmodule

module Dmem_Block (
    input logic rst_ni, MemRW, clk_i,
    input logic [4:0] addr,
    input logic [31:0] dataW,
    output logic [31:0] dataR
);

    logic [4:0] rd_addr_en;
    logic [31:0] reg_en;
    logic [31:0] data_buf;
    logic [31:0] data_out;

    // MUX2 logic để chọn địa chỉ đọc hoặc ghi
    MUX2 rd_en (
        .A(addr),
        .sel(MemRW),
        .out(rd_addr_en)
    );

    // Bộ giải mã để tạo ra các tín hiệu enable cho các thanh ghi
    decoder decoder5_32 (
        .x(rd_addr_en),
        .en(reg_en)
    );

    logic [31:0] D[31:0];
    logic [31:0] Q[31:0];

    // Tạo các thanh ghi lưu trữ dữ liệu
    genvar i;
    generate
        for (i = 0; i < 32; i = i + 1) begin : register_loop
            register register_inst (
                .rst(~rst_ni),
                .en(reg_en[i]),
                .clk(clk_i),
                .D(dataW),
                .Q(Q[i])
            );
        end
    endgenerate

    // MUX để chọn dữ liệu từ các thanh ghi dựa trên cur_addr_buf
    MUX muxA (
        .sel(addr),
        .d(Q),
        .y(data_out)
    );

    register dataR_buffer (
        .D(data_out),
        .Q(data_buf),
        .clk(clk_i),
        .en(~MemRW)
    ); 

    MUX2_1 dataR_Sel (
        .data_out(data_out),
        .data_buf(data_buf),
        .dataR(dataR),
        .MemRW(MemRW)
    ); 
endmodule

module Dmem (
    input logic rst_ni, MemRW, clk_i,
    input logic [4:0] addr,
    input logic [31:0] dataW,
    output logic [31:0] dataR
);

    Dmem_Block DMEM (
        .rst_ni(rst_ni),
        .MemRW(MemRW),
        .clk_i(clk_i),
        .addr(addr),
        .dataW(dataW),
        .dataR(dataR)
    );
endmodule
