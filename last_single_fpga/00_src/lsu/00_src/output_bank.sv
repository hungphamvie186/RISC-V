module output_bank (
    input wire i_clk,               // Clock signal
    input wire i_rst,               // Reset signal
    input wire [31:0] i_lsu_addr,       // i_lsu_address bus
    input wire i_lsu_wren,          // Write enable
    input wire i_lsu_read,           // Read enable
    input wire [31:0] i_st_data,      // Write data
    input wire [2:0] funct3,      // Function code (determines type of operation)
    input wire 	  output_buf_en,

	output reg [31:0] o_ld_data, //Q_load    // Read data
	output reg [31:0] o_io_ledr,    
	output reg [31:0] o_io_ledg,

	output reg [6:0]  o_io_hex0,
	output reg [6:0]  o_io_hex1,
	output reg [6:0]  o_io_hex2,
	output reg [6:0]  o_io_hex3,
	output reg [6:0]  o_io_hex4,
	output reg [6:0]  o_io_hex5,
	output reg [6:0]  o_io_hex6,
	output reg [6:0]  o_io_hex7,
	output reg [31:0] o_io_lcd  
);

    // 4 section of output ( GPIO )
    wire [31:0] red_reg ; //0x7000 --> 0x700F 
	wire [31:0] green_reg ; //0x7010 --> 0x701F
	wire [31:0] 7seg_reg[1:0]; //0x7020 --> 0x7027
	wire [31:0] lcd_reg; //0x7030 --> 0x703F
	wire [31:0] Q_load; //0x7030 --> 0x703F

    // Internal signals for i_lsu_address decoding
    wire [13:0] addr_word;        // Extract the word i_lsu_address (11 bits for 2048 locations)
    wire [1:0] byte_offset;       // Extract byte offset (2 LSBs of i_lsu_addr)
	// enable
	wire write_en;
	wire read_en;
	wire red_en;
	wire green_en;
	wire 7seg_en;
	wire lcd_en;
    // i_lsu_address decoding
    assign addr_word = i_lsu_addr[15:2]; // Word i_lsu_address (4-byte aligned)
    assign byte_offset = i_lsu_addr[1:0]; // Byte offset within the word
	assign write_en= i_lsu_wren & output_buf_en;
	assign read_en= i_lsu_wren & output_buf_en;

	// decoder reg select
	always @* begin
	  case (i_lsu_addr[5:4])
		2'd0: red_en = 1'b1 & output_buf_en;
		2'd1: green_en = 1'b1 & output_buf_en;
		2'd2: 7seg_en = 1'b1 & output_buf_en;
		2'd3: lcd_en = 1'b1 & output_buf_en;
		default: begin
		  red_en = 1'b0;
		  green_en = 1'b0;
		  7seg_en = 1'b0;
		  lcd_en = 1'b0;
		end
	  endcase
	end

	
    // Memory read process
	always @* begin
	  case (i_lsu_addr[5:4])
		2'd0: Q_load = red_reg;
		2'd1: Q_load = green_reg;
		2'd2: case(i_lsu_addr[3])
				1'd0: Q_load = 7seg_reg[0];
				1'd1: Q_load = 7seg_reg[1];
		2'd3: Q_load = lcd_reg;
		default: begin
		  // Do nothing 
		end
	  endcase
	end
    always @* begin
        if (read_en) begin
            case (funct3)
                3'd0: begin // Load byte (sign-extended)
                    case (byte_offset)
                        2'b00: o_ld_data = {{24{Q_load[7]}}, Q_load[7:0]};    // Byte 0
                        2'b01: o_ld_data = {{24{Q_load[15]}}, Q_load[15:8]};  // Byte 1
                        2'b10: o_ld_data = {{24{Q_load[23]}}, Q_load[23:16]}; // Byte 2
                        2'b11: o_ld_data = {{24{Q_load[31]}}, Q_load[31:24]}; // Byte 3
                        default: o_ld_data = 32'b0;
                    endcase
                end
                3'd1: begin // Load half word (sign-extended)
                    o_ld_data = {{16{Q_load[15]}}, Q_load[15:0]};
                end
                3'd2: begin // Load word
                    o_ld_data = Q_load;
                end
                3'd4: begin // Load byte unsign
                    case (byte_offset)
                        2'b00: o_ld_data = {24'b0, Q_load[7:0]};   // Byte 0
                        2'b01: o_ld_data = {24'b0, Q_load[15:8]};  // Byte 1
                        2'b10: o_ld_data = {24'b0, Q_load[23:16]}; // Byte 2
                        2'b11: o_ld_data = {24'b0, Q_load[31:24]}; // Byte 3
                        default: o_ld_data = 32'b0;
                    endcase
                end
                3'd5: begin // Load half word unsign
                    o_ld_data = {16'b0, Q_load[15:0]};
                end
                default: begin
                    o_ld_data = 32'b0; // Default case (no operation)
                end
            endcase
        end else begin
            o_ld_data = 32'b0; // Default read value
        end
    end

    /////////////////////////////// Memory write process///////////////////////////////////
				// Red reg //
    always @(posedge i_clk or posedge i_rst) begin 
        if (i_rst) begin
            // Reset memory (optional)
            red_reg <=0; 
        end else if (red_en) begin
            case (funct3)
                3'd0: begin // Store byte
                    case (byte_offset)
                        2'b00: red_reg[7:0]   <= i_st_data[7:0];   // Byte 0
                        2'b01: red_reg[15:8]  <= i_st_data[7:0];   // Byte 1
                        2'b10: red_reg[23:16] <= i_st_data[7:0];   // Byte 2
                        2'b11: red_reg[31:24] <= i_st_data[7:0];   // Byte 3
                    endcase
                end
                3'd1: begin // Store half word
                        red_reg[15:0] <= i_st_data[15:0];
                end
                3'd2: begin // Store word
                    red_reg <= i_st_data; // Write entire word
                end
                default: begin
                    // Do nothing for unsupported funct3 values
                end
            endcase

        end
				assign o_io_ledr=red_reg 
    end
				///green reg//
	always @(posedge i_clk or posedge i_rst) begin  
        if (i_rst) begin
            // Reset memory (optional)
            green_reg <=0; 
        end else if (green_en) begin
            case (funct3)
                3'd0: begin // Store byte
                    case (byte_offset)
                        2'b00: green_reg[7:0]   <= i_st_data[7:0];   // Byte 0
                        2'b01: green_reg[15:8]  <= i_st_data[7:0];   // Byte 1
                        2'b10: green_reg[23:16] <= i_st_data[7:0];   // Byte 2
                        2'b11: green_reg[31:24] <= i_st_data[7:0];   // Byte 3
                    endcase
                end
                3'd1: begin // Store half word
                        green_reg[15:0] <= i_st_data[15:0];
                end
                3'd2: begin // Store word
                    green_reg <= i_st_data; // Write entire word
                end
                default: begin
                    // Do nothing for unsupported funct3 values
                end
            endcase

        end
				assign o_io_ledg=green_reg 
    end

				///////////7seg reg//////////
	always @(posedge i_clk or posedge i_rst) begin  
        if (i_rst) begin
            // Reset memory (optional)
            7seg_reg[0] <=0; 
			7seg_reg[1] <=0; 
        end else if (7seg_en & ~i_lsu_addr[3]) begin 	//7seg reg 0
            case (funct3)
                3'd0: begin // Store byte
                    case (byte_offset)
                        2'b00: [7:0]7seg_reg [0]   <= i_st_data[7:0];   // Byte 0
                        2'b01: [15:8]7seg_reg [0] <= i_st_data[7:0];   // Byte 1
                        2'b10: [23:16]7seg_reg[0] <= i_st_data[7:0];   // Byte 2
                        2'b11: [31:24]7seg_reg[0] <= i_st_data[7:0];   // Byte 3
                    endcase
                end
                3'd1: begin // Store half word
                        [15:0]7seg_reg[0] <= i_st_data[15:0];
                end
                3'd2: begin // Store word
                    7seg_reg[0] <= i_st_data; // Write entire word
                end
                default: begin
                    // Do nothing for unsupported funct3 values
                end
            endcase

        end else if (7seg_en & i_lsu_addr[3]) begin                 //7seg reg 0
            case (funct3)
                3'd0: begin // Store byte
                    case (byte_offset)
                        2'b00: [7:0]7seg_reg [1]   <= i_st_data[7:0];   // Byte 0
                        2'b01: [15:8]7seg_reg [1] <= i_st_data[7:0];   // Byte 1
                        2'b10: [23:16]7seg_reg[1] <= i_st_data[7:0];   // Byte 2
                        2'b11: [31:24]7seg_reg[1] <= i_st_data[7:0];   // Byte 3
                    endcase
                end
                3'd1: begin // Store half word
                        [15:0]7seg_reg[1] <= i_st_data[15:0];
                end
                3'd2: begin // Store word
                    7seg_reg[1] <= i_st_data; // Write entire word
                end
                default: begin
                    // Do nothing for unsupported funct3 values
                end
            endcase
        end
				assign o_io_hex0 = 7seg_reg[0][0 +: 7]; 
			    assign o_io_hex1 = 7seg_reg[0][8 +: 7]; 
			    assign o_io_hex2 = 7seg_reg[0][16 +: 7]; 
			    assign o_io_hex3 = 7seg_reg[0][24 +: 7]; 

				assign o_io_hex4 = 7seg_reg[1][0 +: 7]; 
			    assign o_io_hex5 = 7seg_reg[1][8 +: 7]; 
			    assign o_io_hex6 = 7seg_reg[1][16 +: 7]; 
			    assign o_io_hex7 = 7seg_reg[1][24 +: 7];
    end

				///lcd reg//
	always @(posedge i_clk or posedge i_rst) begin  
        if (i_rst) begin
            // Reset memory (optional)
            lcd_reg <=0; 
        end else if (lcd_en) begin
            case (funct3)
                3'd0: begin // Store byte
                    case (byte_offset)
                        2'b00: lcd_reg[7:0]   <= i_st_data[7:0];   // Byte 0
                        2'b01: lcd_reg[15:8]  <= i_st_data[7:0];   // Byte 1
                        2'b10: lcd_reg[23:16] <= i_st_data[7:0];   // Byte 2
                        2'b11: lcd_reg[31:24] <= i_st_data[7:0];   // Byte 3
                    endcase
                end
                3'd1: begin // Store half word
                        lcd_reg[15:0] <= i_st_data[15:0];
                end
                3'd2: begin // Store word
                    lcd_reg <= i_st_data; // Write entire word
                end
                default: begin
                    // Do nothing for unsupported funct3 values
                end
            endcase

        end
    end

endmodule

