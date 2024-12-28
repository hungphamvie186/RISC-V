module design_test();

    // Clock and reset signals
    reg i_clk;
    reg i_rst;

    // Input signals
    reg [31:0] i_lsu_addr;
    reg i_lsu_wren;
    reg i_lsu_rden;
    reg [31:0] i_st_data;
    reg [2:0] funct3;
    reg output_buf_en;

    // Output signals
    wire [31:0] o_ld_data;
    wire [31:0] o_io_ledr;
    wire [31:0] o_io_ledg;
    wire [6:0] o_io_hex0, o_io_hex1, o_io_hex2, o_io_hex3, o_io_hex4, o_io_hex5, o_io_hex6, o_io_hex7;
    wire [31:0] o_io_lcd;

    // Instantiate the DUT
    output_bank dut (
        .i_clk(i_clk),
        .i_rst(i_rst),
        .i_lsu_addr(i_lsu_addr),
        .i_lsu_wren(i_lsu_wren),
        .i_lsu_rden(i_lsu_rden),
        .i_st_data(i_st_data),
        .funct3(funct3),
        .output_buf_en(output_buf_en),
        .o_ld_data(o_ld_data),
        .o_io_ledr(o_io_ledr),
        .o_io_ledg(o_io_ledg),
        .o_io_hex0(o_io_hex0),
        .o_io_hex1(o_io_hex1),
        .o_io_hex2(o_io_hex2),
        .o_io_hex3(o_io_hex3),
        .o_io_hex4(o_io_hex4),
        .o_io_hex5(o_io_hex5),
        .o_io_hex6(o_io_hex6),
        .o_io_hex7(o_io_hex7),
        .o_io_lcd(o_io_lcd)
    );

    // Clock generation
    initial begin
        i_clk = 0;
        forever #5 i_clk = ~i_clk; // Toggle clock every 5 time units
    end

    // Dump waveform
    initial begin
        $fsdbDumpfile("design_test.fsdb");
        $fsdbDumpvars(0, design_test, "+all","+mda");
    end

    // Testbench procedure
    initial begin
        // Initialize signals
        i_rst = 1;
        i_lsu_addr = 0;
        i_lsu_wren = 0;
        i_lsu_rden = 0;
        i_st_data = 0;
        funct3 = 0;
        output_buf_en = 0;

        // Reset the DUT
        #10 i_rst = 0;
 #6
        // Test 1: Write to red register (0x7000)
        output_buf_en = 1;
        i_lsu_addr = 32'h7000;
        i_st_data = 32'h12345678;
	 funct3 = 3'd2; // Store word
         i_lsu_wren = 1;
        #10 i_lsu_addr = 32'h7010;
        #10 i_lsu_addr = 32'h7020;
        #10 i_lsu_addr = 32'h7030;
        #10 i_lsu_wren = 0;
	// Test 1: Write to red register (0x7000)
    #10     output_buf_en = 1;
        i_lsu_addr = 32'h7025;
        i_st_data = 32'h4F;
        #8 funct3 = 3'd2; // Store word
        i_lsu_wren = 1;
        #2 i_lsu_wren = 0;
        #10;
        // Test 2: Read from red register (0x7000)
        i_lsu_addr = 32'h7001;
        funct3 = 3'd4; // Load word
        i_lsu_rden = 1;
        #10 i_lsu_rden = 0;
        #10;
 

               // End simulation
        #50 $finish;
    end

    // Monitor signals
    initial begin
        $monitor("Time: %0t | Addr: %h | Wren: %b | Read: %b | StData: %h | LdData: %h | ledr: %h",
                 $time, i_lsu_addr, i_lsu_wren, i_lsu_rden, i_st_data, o_ld_data, o_io_ledr);
    end

endmodule

