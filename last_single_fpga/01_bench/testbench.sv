module design_test();

  reg i_clk;
  reg i_rst_n;
  reg [31:0] i_io_sw;
  reg [31:0] i_io_btn;

  wire [31:0] o_pc_debug;
  wire o_insn_vld;
  wire [31:0] o_io_ledr;
  wire [31:0] o_io_ledg;
  wire [6:0] o_io_hex0;
  wire [6:0] o_io_hex1;
  wire [6:0] o_io_hex2;
  wire [6:0] o_io_hex3;
  wire [6:0] o_io_hex4;
  wire [6:0] o_io_hex5;
  wire [6:0] o_io_hex6;
  wire [6:0] o_io_hex7;
  wire [31:0] o_io_lcd;
/*
  wire [17:0] SRAM_ADDR;
  wire [15:0] SRAM_DQ;
  wire SRAM_CE_N;
  wire SRAM_WE_N;
  wire SRAM_LB_N;
  wire SRAM_UB_N;
  wire SRAM_OE_N;*/

  // Instantiate the DUT (Device Under Test)
  singlecycle dut (
    .i_clk(i_clk),
    .i_rst_n(i_rst_n),
    .i_io_sw(i_io_sw),
    .i_io_btn(i_io_btn),
    .o_pc_debug(o_pc_debug),
    .o_insn_vld(o_insn_vld),
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

  /*  .SRAM_ADDR(SRAM_ADDR),
    .SRAM_DQ(SRAM_DQ),
    .SRAM_CE_N(SRAM_CE_N),
    .SRAM_WE_N(SRAM_WE_N),
    .SRAM_LB_N(SRAM_LB_N),
    .SRAM_UB_N(SRAM_UB_N),
    .SRAM_OE_N(SRAM_OE_N)*/
  );

  initial begin
        $fsdbDumpfile("design_test.fsdb");
        $fsdbDumpvars(0, design_test, "+all","+mda");
    end

    initial begin
    i_clk = 0;
    forever #5 i_clk = ~i_clk; // 10ns clock period
  end

  // Reset and Stimulus Generation
  initial begin
    // Initialize Inputs
    i_rst_n = 0; // Active low reset
    i_io_sw = 32'h00000000;
    i_io_btn = 32'h00000000;

    // Apply reset
    #10;
    i_rst_n = 1; // Release reset

    // Apply some test vectors
    // Test case 1: Simple instruction fetch
    i_io_sw = 32'h8765E321;
    i_io_btn = 32'h0000000e;
    #1000;

    $finish;
  end

  // Monitoring Outputs
  initial begin
    $monitor("Time=%0t | PC=%h | Instr Valid=%b | LEDR=%h | LEDG=%h | HEX7=%h | HEX6=%h | HEX5=%h | HEX4=%h | HEX3=%h | HEX2=%h | HEX1=%h | HEX0=%h | LCD=%h",
             $time, o_pc_debug, o_insn_vld, o_io_ledr, o_io_ledg, 
             o_io_hex7, o_io_hex6, o_io_hex5, o_io_hex4, o_io_hex3, o_io_hex2, o_io_hex1, o_io_hex0, o_io_lcd);
  end

endmodule
