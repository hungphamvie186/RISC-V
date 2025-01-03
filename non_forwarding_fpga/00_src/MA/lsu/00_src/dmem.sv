module dmem (
    input wire i_clk,               // Clock signal
    input wire i_rst,               // Reset signal
    input wire [31:0] i_lsu_addr,       // Address bus
    input wire i_lsu_wren,          // Write enable
    input wire i_lsu_rden, sram_buf_en,          // Read enable
    input wire [31:0] wdata,      // Write data
    input wire [2:0] funct3,      // Function code (determines type of operation)
    output reg [31:0] rdata      // Read data
);

    // Memory block: 8KB (2048 words of 32 bits each)
    reg [31:0] mem_array [100:0]; 

    // Internal signals for address decoding
    wire [10:0] addr_word;        // Extract the word address (11 bits for 2048 locations)
    wire [1:0] byte_offset;       // Extract byte offset (2 LSBs of addr)
	wire write_en, read_en;

    // Address decoding
    assign addr_word = i_lsu_addr[12:2]; // Word address (4-byte aligned)
    assign byte_offset = i_lsu_addr[1:0]; // Byte offset within the word
	assign write_en = ~i_rst & i_lsu_wren & sram_buf_en  ; // Byte offset within the word
	assign read_en = ~i_rst & i_lsu_rden & sram_buf_en ; // Byte offset within the word

    // Memory read process
    always_comb begin
        if (read_en) begin
            case (funct3)
                3'd0: begin // Load byte (sign-extended)
                    case (byte_offset)
                        2'b00: rdata = {{24{mem_array[addr_word][7]}}, mem_array[addr_word][7:0]};    // Byte 0
                        2'b01: rdata = {{24{mem_array[addr_word][15]}}, mem_array[addr_word][15:8]};  // Byte 1
                        2'b10: rdata = {{24{mem_array[addr_word][23]}}, mem_array[addr_word][23:16]}; // Byte 2
                        2'b11: rdata = {{24{mem_array[addr_word][31]}}, mem_array[addr_word][31:24]}; // Byte 3
                        default: rdata = 32'b0;
                    endcase
                end
                3'd1: begin // Load half word (sign-extended)
                    rdata = {{16{mem_array[addr_word][15]}}, mem_array[addr_word][15:0]};
                end
                3'd2: begin // Load word
                    rdata = mem_array[addr_word];
                end
                3'd4: begin // Load byte unsign
                    case (byte_offset)
                        2'b00: rdata = {24'b0, mem_array[addr_word][7:0]};   // Byte 0
                        2'b01: rdata = {24'b0, mem_array[addr_word][15:8]};  // Byte 1
                        2'b10: rdata = {24'b0, mem_array[addr_word][23:16]}; // Byte 2
                        2'b11: rdata = {24'b0, mem_array[addr_word][31:24]}; // Byte 3
                        default: rdata = 32'b0;
                    endcase
                end
                3'd5: begin // Load half word unsign
                    rdata = {16'b0, mem_array[addr_word][15:0]};
                end
                default: begin
                    rdata = 32'b0; // Default case (no operation)
                end
            endcase
        end else begin
            rdata = 32'b0; // Default read value
        end
    end

    // Memory write process
    always_ff @(posedge i_clk or posedge i_rst) begin
        if (i_rst) begin
            // Reset memory (optional)
            integer i;
            for (i = 0; i < 100; i = i + 1) begin
                mem_array[i] <= 32'b0;
            end
        end else if (write_en) begin
            case (funct3)
                3'd0: begin // Store byte
                    case (byte_offset)
                        2'b00: mem_array[addr_word][7:0]   <= wdata[7:0];   // Byte 0
                        2'b01: mem_array[addr_word][15:8]  <= wdata[7:0];   // Byte 1
                        2'b10: mem_array[addr_word][23:16] <= wdata[7:0];   // Byte 2
                        2'b11: mem_array[addr_word][31:24] <= wdata[7:0];   // Byte 3
                    endcase
                end
                3'd1: begin // Store half word
                        mem_array[addr_word][15:0] <= wdata[15:0];
                end
                3'd2: begin // Store word
                    mem_array[addr_word] <= wdata; // Write entire word
                end
                default: begin
                    // Do nothing for unsupported funct3 values
                end
            endcase
        end
    end

endmodule

