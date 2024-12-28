module output_bank (
    input wire i_clk,               // Clock signal
    input wire i_rst,               // Reset signal
    input wire i_lsu_wren,          // Write enable
    input wire i_lsu_rden,           // Read enable
    input wire [31:0] i_lsu_addr,       // i_lsu_address bus
    input wire [31:0] i_st_data,      // Write data
    input wire [2:0] funct3,      // Function code (determines type of operation)
    input wire 	  output_buf_en,

	output reg [31:0] o_ld_data, //read_data   
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

    // Internal registers
    	reg [31:0] red_reg ; //0x7000 --> 0x700F 
	reg [31:0] green_reg ; //0x7010 --> 0x701F
	reg [31:0] seven_seg_reg[1:0]; //0x7020 --> 0x7027
	reg [31:0] lcd_reg; //0x7030 --> 0x703F
	reg [31:0] read_data; //read_data when use Load statement

    // Signals for decoding
    	wire [12:0] addr_word;        // Extract the word i_lsu_address (7000-->703F 15 bit but 2 LSB for select byte )
    	wire [1:0] byte_offset;       // Extract byte offset (2 LSBs of i_lsu_addr)
    // enable
	reg write_en;
	reg read_en;
	reg red_en;
	reg green_en;
	reg seven_seg_en;
	reg lcd_en;
    // i_lsu_address decoding
    	assign addr_word = i_lsu_addr[14:2]; // Word i_lsu_address (4-byte aligned)
    	assign byte_offset = i_lsu_addr[1:0]; // Byte offset within the word
	assign write_en= ~i_rst & i_lsu_wren & output_buf_en;
	assign read_en = ~i_rst & i_lsu_rden & output_buf_en;

    // Address decoding
    always @(*) begin
        red_en = 1'b0;
        green_en = 1'b0;
        seven_seg_en = 1'b0;
        lcd_en = 1'b0;
        case (i_lsu_addr[5:3])
            3'b000: red_en = ~i_rst & output_buf_en & ~i_lsu_addr[2];
            3'b010: green_en = ~i_rst & output_buf_en & ~i_lsu_addr[2];
            3'b100: seven_seg_en = ~i_rst & output_buf_en;
            3'b110: lcd_en = ~i_rst & output_buf_en & ~i_lsu_addr[2];
        endcase
    end

	
    // Memory read process
    always @(*) begin
        read_data = 32'b0; // Default value
        case (i_lsu_addr[5:4])
            2'd0: read_data = red_reg;
            2'd1: read_data = green_reg;
            2'd2: read_data = seven_seg_en ? 
                    (i_lsu_addr[2] ? seven_seg_reg[1] : seven_seg_reg[0]) : 32'b0;
            2'd3: read_data = lcd_reg;
            default: read_data = 32'b0;
        endcase
    end

    always @(*) begin
        if (read_en) begin
            case (funct3)
                3'd0: begin // Load byte (sign-extended)
                    case (byte_offset)
                        2'b00: o_ld_data = {{24{read_data[7]}}, read_data[7:0]};    // Byte 0
                        2'b01: o_ld_data = {{24{read_data[15]}}, read_data[15:8]};  // Byte 1
                        2'b10: o_ld_data = {{24{read_data[23]}}, read_data[23:16]}; // Byte 2
                        2'b11: o_ld_data = {{24{read_data[31]}}, read_data[31:24]}; // Byte 3
                        default: o_ld_data = 32'b0;
                    endcase
                end
                3'd1: begin // Load half word (sign-extended)
                    o_ld_data = {{16{read_data[15]}}, read_data[15:0]};
                end
                3'd2: begin // Load word
                    o_ld_data = read_data;
                end
                3'd4: begin // Load byte unsign
                    case (byte_offset)
                        2'b00: o_ld_data = {24'b0, read_data[7:0]};   // Byte 0
                        2'b01: o_ld_data = {24'b0, read_data[15:8]};  // Byte 1
                        2'b10: o_ld_data = {24'b0, read_data[23:16]}; // Byte 2
                        2'b11: o_ld_data = {24'b0, read_data[31:24]}; // Byte 3
                        default: o_ld_data = 32'b0;
                    endcase
                end
                3'd5: begin // Load half word unsign
                    o_ld_data = {16'b0, read_data[15:0]};
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
        end else if (red_en & write_en) begin
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
            endcase
        end
				assign o_io_ledr=red_reg;
    end
				///green reg//
	always @(posedge i_clk or posedge i_rst) begin  
        if (i_rst) begin
            // Reset memory (optional)
            green_reg <=0; 
        end else if (green_en & write_en) begin
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
				assign o_io_ledg=green_reg; 
    end

				///////////seven_seg reg//////////
	always @(posedge i_clk or posedge i_rst) begin  
        if (i_rst) begin
            // Reset memory (optional)
            seven_seg_reg[0] <=0; 
			seven_seg_reg[1] <=0; 
        end else if (seven_seg_en & ~i_lsu_addr[2] & write_en) begin 	//seven_seg reg 0
            case (funct3)
                3'd0: begin // Store byte
                    case (byte_offset)
		                2'b00: seven_seg_reg[0][7:0]   <= i_st_data[7:0];   // Byte 0
		                2'b01: seven_seg_reg[0][15:8]  <= i_st_data[7:0];   // Byte 1
		                2'b10: seven_seg_reg[0][23:16] <= i_st_data[7:0];   // Byte 2
		                2'b11: seven_seg_reg[0][31:24] <= i_st_data[7:0];   // Byte 3
                endcase

                end
                3'd1: begin // Store half word
                        seven_seg_reg[0][15:0] <= i_st_data[15:0];
                end
                3'd2: begin // Store word
                    seven_seg_reg[0] <= i_st_data; // Write entire word
                end
                default: begin
                    // Do nothing for unsupported funct3 values
                end
            endcase

        end else if (seven_seg_en & i_lsu_addr[2] & write_en) begin                 //seven_seg reg 1
            case (funct3)
                3'd0: begin // Store byte
                    case (byte_offset)
		                2'b00: seven_seg_reg[1][7:0]   <= i_st_data[7:0];   // Byte 0
		                2'b01: seven_seg_reg[1][15:8]  <= i_st_data[7:0];   // Byte 1
		                2'b10: seven_seg_reg[1][23:16] <= i_st_data[7:0];   // Byte 2
		                2'b11: seven_seg_reg[1][31:24] <= i_st_data[7:0];   // Byte 3
                endcase
                end
                3'd1: begin // Store half word
                        seven_seg_reg[1][15:0] <= i_st_data[15:0];
                end
                3'd2: begin // Store word
                    seven_seg_reg[1] <= i_st_data; // Write entire word
                end
                default: begin
                    // Do nothing for unsupported funct3 values
                end
            endcase
        end
				
    end

				///lcd reg//
	always @(posedge i_clk or posedge i_rst) begin  
        if (i_rst) begin
            // Reset memory (optional)
            lcd_reg <=0; 
        end else if (lcd_en & write_en) begin
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
	
	always @(*) begin
		o_io_lcd = lcd_reg;
	end
    /////////////Assign output hex///////////////
				assign o_io_hex0 = seven_seg_reg[0][0 +: 7]; 
			    assign o_io_hex1 = seven_seg_reg[0][8 +: 7]; 
			    assign o_io_hex2 = seven_seg_reg[0][16 +: 7]; 
			    assign o_io_hex3 = seven_seg_reg[0][24 +: 7]; 

				assign o_io_hex4 = seven_seg_reg[1][0 +: 7]; 
			    assign o_io_hex5 = seven_seg_reg[1][8 +: 7]; 
			    assign o_io_hex6 = seven_seg_reg[1][16 +: 7]; 
			    assign o_io_hex7 = seven_seg_reg[1][24 +: 7];
endmodule

