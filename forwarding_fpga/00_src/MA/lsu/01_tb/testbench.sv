module design_test();

    // Testbench signals
    reg [31:0] i_io_sw;
    reg [3:0] i_io_btn;
    reg i_clk, i_rst, i_lsu_wren, i_lsu_rden;
    reg [2:0] funct3;
    reg [31:0] i_lsu_addr, i_st_data;
    
    wire [31:0] o_ld_data, o_io_ledr, o_io_ledg;
    wire [6:0] o_io_hex0, o_io_hex1, o_io_hex2, o_io_hex3;
    wire [6:0] o_io_hex4, o_io_hex5, o_io_hex6, o_io_hex7;
    wire [31:0] o_io_lcd;
    
    // DUT instantiation
    LSU dut (
        .i_io_sw(i_io_sw),
        .i_io_btn(i_io_btn),
        .i_clk(i_clk),
        .i_rst(i_rst),
        .i_lsu_wren(i_lsu_wren),
        .i_lsu_rden(i_lsu_rden),
        .funct3(funct3),
        .i_lsu_addr(i_lsu_addr),
        .i_st_data(i_st_data),

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

    // Task to initialize all inputs
    task initialize;
    begin
        i_io_sw = 32'b0;
        i_io_btn = 4'b0;
        i_rst = 1'b1;
        i_lsu_wren = 1'b0;
        i_lsu_rden = 1'b0;
        funct3 = 3'b0;
        i_lsu_addr = 32'b0;
        i_st_data = 32'b0;
        #20;
        i_rst = 1'b0; // Deassert reset after initialization
    end
    endtask

    // Task to apply write operation
    task write_operation(input [31:0] addr, input [31:0] data, input [2:0] funct);
    begin
        i_lsu_addr = addr;
        i_st_data = data;
		#6;
        funct3 = funct;
        i_lsu_wren = 1'b1;
        #10;
        i_lsu_wren = 1'b0;
        #10;
    end
    endtask

    // Task to apply read operation
    task read_operation(input [31:0] addr, input [2:0] funct);
    begin
        i_lsu_addr = addr;
        funct3 = funct;
        i_lsu_rden = 1'b1;
        #10;
        i_lsu_rden = 1'b0;
        #10;
    end
    endtask

    // Main simulation
    initial begin

        // Initialize inputs
        initialize;
	#10 i_io_sw= 32'hAABBCCDD;
	#10 i_io_btn= 4'he;
	#7;

        // Write to LEDG
        $display("Test: Write to LEDG");
        write_operation(32'h0000_3000, 32'h1234_5678, 3'd2); // Writing to LEDG
		 // Write to LEDG
        $display("Test: Write to LEDG");
        write_operation(32'h0000_3004, 32'h9abcd_ef12, 3'd2); // Writing to LEDG
		 // Write to LEDG
#10 i_rst= 1'b1;

		        // Read from LEDG
        $display("Test: Read from LEDG");
  #10   read_operation(32'h0000_3000, 3'd2);
	        $display("Test: Read from LEDG");
  #10   read_operation(32'h0000_3004, 3'd2);

        #50 ;
        $finish;
    end


endmodule

