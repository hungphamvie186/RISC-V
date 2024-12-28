module design_test();

    // Inputs
    reg [31:0] i_io_sw, i_lsu_addr;
    reg [3:0] i_io_btn;
    reg i_clk, i_rst, i_lsu_wren, o_ACK, i_lsu_rden;
    reg [2:0] funct3;

    // Output
    wire [31:0] input_buffer_out;

    // DUT instance
    input_bank dut (
        .i_io_sw(i_io_sw),
        .i_lsu_addr(i_lsu_addr),
        .i_io_btn(i_io_btn),
        .i_clk(i_clk),
        .i_rst(i_rst),
        .i_lsu_wren(i_lsu_wren),
        .o_ACK(o_ACK),
        .i_lsu_rden(i_lsu_rden),
        .funct3(funct3),
        .input_buffer_out(input_buffer_out)
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
        // Initialize inputs
        i_io_sw = 32'b0;
        i_lsu_addr = 32'b0;
        i_io_btn = 4'b0;
        i_rst = 1;
        i_lsu_wren = 0;
        o_ACK = 0;
        i_lsu_rden = 0;
        funct3 = 3'b0;

        // Reset
        #10 i_rst = 0;
        funct3 = 3'd4;
		i_lsu_rden = 1;
        // Test 1: Write switches and buttons
        i_io_sw = 32'hA33221100;
        i_io_btn = 4'h9;
        i_lsu_addr = 32'h00007000; // Address for switches
        #10;
        i_lsu_addr = 32'h00007010; // Address for buttons
        #10;

        // Test 2: Flag operations
        o_ACK = 1;
        i_lsu_addr = 32'h00007802; // Address for flags
		i_lsu_rden = 1;
        #10;
        o_ACK = 0;
        #10;
		i_lsu_addr = 32'h00007811; // Address for flags
        // Test 3: Read operations
        i_lsu_rden = 1;
		#10;
		i_lsu_rden = 0;
        // Test 3.1: Load word
        i_lsu_addr = 32'h00007000; // Address for switches
        #10;
	#50 $finish;
	end

    // Monitor signals
    initial begin
        $monitor("Time: %0t | i_lsu_addr: %h | i_io_sw: %b | i_io_btn: %b | i_lsu_rden: %h | funct3: %h | input_buffer_out: %h",
                 $time, i_lsu_addr, i_io_sw, i_io_btn, i_lsu_rden, funct3, input_buffer_out);
    end

endmodule

