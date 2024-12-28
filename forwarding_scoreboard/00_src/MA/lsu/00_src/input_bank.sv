module input_bank (
    input wire [31:0] i_io_sw, i_lsu_addr, 
    input wire [3:0] i_io_btn,    
    input wire i_clk, i_rst,  i_lsu_wren, o_ACK,i_lsu_rden,  
    input wire [2:0] funct3,      // Function code (determines type of operation)
    output reg [31:0] input_buffer_out    
);
	
    wire [31:0] i_io_btn_in;

    reg [31:0] buttons_buf_out;
    reg [31:0] swiches_buf_out;
    reg [31:0] flag_buf_out;

    wire [31:0] ready;

    reg sw_en, btn_en, flag_en;
    reg [1:0] sel; // Declare sel as a 2-bit wire
	
    reg [31:0] read_data;
    wire [1:0] byte_offset;       // Extract byte offset (2 LSBs of i_lsu_addr)
    wire read_en;
    wire [31:0] addr;
    
    assign i_io_btn_in = {28'b0, i_io_btn};
    assign byte_offset = i_lsu_addr[1:0]; // Byte offset within the word

    assign addr = i_lsu_addr[31:0]; // Byte offset within the word
    assign read_en = ~i_rst & i_lsu_rden;


    register_nor buttons_buf(
        .clk    (i_clk),
        .rst    (i_rst),
        .en     (1'b1),
        .D      (i_io_btn_in),
        .Q      (buttons_buf_out)
    );

    register_nor swiches_buf(
        .clk    (i_clk),
        .rst    (i_rst),
        .en     (1'b1),
        .D      (i_io_sw),
        .Q      (swiches_buf_out)
    );

    register_nor flag_buf(
        .clk    (i_clk),
        .rst    (i_rst | i_lsu_wren | read_en),
        .en     (o_ACK),
        .D      ({31'b0, o_ACK}),
        .Q      (flag_buf_out)
    );

    assign ready = flag_buf_out | {31'b0, o_ACK};


	always @(*) begin
    	sw_en = ~addr[15] & 
                   (addr[14] & addr[13] & addr[12] ) & 
                   (addr[11] &~addr[10] & ~addr[9] & ~addr[8] ) & (~addr[7] & ~addr[6] & ~addr[5] & ~addr[4])  & (~addr[3] & ~addr[2]);
    	btn_en = ~addr[15] & 
                    (addr[14] & addr[13] & addr[12] ) & 
                    ( addr[11] & ~addr[10] & ~addr[9] & ~addr[8]) & (~addr[7] & ~addr[6] & ~addr[5] & addr[4] ) & (~addr[3] & ~addr[2]);
    	flag_en = ~addr[15] & 
                     (addr[14] & addr[13] & addr[12] & addr[11]) & 
                     (~addr[10] & ~addr[9] & ~addr[8] & ~addr[7] & ~addr[6] & addr[5] & ~addr[4] & ~addr[3] & ~addr[2]);

    	sel[0] = ~flag_en & btn_en & ~sw_en;
    	sel[1] = flag_en & ~btn_en & ~sw_en;
	end
    mux_4to1 mux(
        .d0(swiches_buf_out),
        .d1(buttons_buf_out),
        .d2(ready),
        .d3(swiches_buf_out),
        .sel(sel),           // Connect sel as a 2-bit wire
        .y(read_data)
    );
	

    always @(*) begin
        if (read_en) begin
            case (funct3)
                3'd0: begin // Load byte (sign-extended)
                    case (byte_offset)
                        2'b00: input_buffer_out = {{24{read_data[7]}}, read_data[7:0]};    // Byte 0
                        2'b01: input_buffer_out = {{24{read_data[15]}}, read_data[15:8]};  // Byte 1
                        2'b10: input_buffer_out = {{24{read_data[23]}}, read_data[23:16]}; // Byte 2
                        2'b11: input_buffer_out = {{24{read_data[31]}}, read_data[31:24]}; // Byte 3
                        default: input_buffer_out = 32'b0;
                    endcase
                end
                3'd1: begin // Load half word (sign-extended)
                    input_buffer_out = {{16{read_data[15]}}, read_data[15:0]};
                end
                3'd2: begin // Load word
                    input_buffer_out = read_data;
                end
                3'd4: begin // Load byte unsign
                    case (byte_offset)
                        2'b00: input_buffer_out = {24'b0, read_data[7:0]};   // Byte 0
                        2'b01: input_buffer_out = {24'b0, read_data[15:8]};  // Byte 1
                        2'b10: input_buffer_out = {24'b0, read_data[23:16]}; // Byte 2
                        2'b11: input_buffer_out = {24'b0, read_data[31:24]}; // Byte 3
                        default: input_buffer_out = 32'b0;
                    endcase
                end
                3'd5: begin // Load half word unsign
                    input_buffer_out = {16'b0, read_data[15:0]};
                end
                default: begin
                    input_buffer_out = 32'b0; // Default case (no operation)
                end
            endcase
        end else begin
            input_buffer_out = 32'b0; // Default read value
        end
    end

endmodule

