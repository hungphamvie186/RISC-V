module wrapper_test();

  reg i_clk;
  reg i_rst_n;
  reg [17:0] SW;
  reg [3:0] KEY;

  wire [17:0] LEDR;
  wire [8:0] LEDG;
  wire [6:0] HEX0;
  wire [6:0] HEX1;
  wire [6:0] HEX2;
  wire [6:0] HEX3;
  wire [6:0] HEX4;
  wire [6:0] HEX5;
  wire [6:0] HEX6;
  wire [6:0] HEX7;

  wire [17:0] SRAM_ADDR;
  wire [15:0] SRAM_DQ;
  wire SRAM_CE_N;
  wire SRAM_WE_N;
  wire SRAM_LB_N;
  wire SRAM_UB_N;
  wire SRAM_OE_N;

  // Instantiate the DUT (Device Under Test)
  wrapper dut (
    .CLOCK_50(i_clk),
    .SW(SW),
    .KEY(KEY),
    .LEDR(LEDR),
    .LEDG(LEDG),
    .HEX0(HEX0),
    .HEX1(HEX1),
    .HEX2(HEX2),
    .HEX3(HEX3),
    .HEX4(HEX4),
    .HEX5(HEX5),
    .HEX6(HEX6),
    .HEX7(HEX7),
    .SRAM_ADDR(SRAM_ADDR),
    .SRAM_DQ(SRAM_DQ),
    .SRAM_CE_N(SRAM_CE_N),
    .SRAM_WE_N(SRAM_WE_N),
    .SRAM_LB_N(SRAM_LB_N),
    .SRAM_UB_N(SRAM_UB_N),
    .SRAM_OE_N(SRAM_OE_N)
  );

  initial begin
        $fsdbDumpfile("wrapper_test.fsdb");
        $fsdbDumpvars(0, wrapper_test, "+all", "+mda");
    end

  // Clock generation
  initial begin
    i_clk = 0;
    forever #5 i_clk = ~i_clk; // 10ns clock period
  end

  // Reset and stimulus generation
  initial begin
    // Initialize inputs
    i_rst_n = 0; // Active low reset
    SW = 18'h00000;
    KEY = 4'b0000;

    // Apply reset
    #10;
    i_rst_n = 1; // Release reset

    // Test case 1: Set switches and keys
    SW = 18'h3FF6B;
    KEY = 4'b1110;
    #200;

    $finish;
  end

  // Monitoring outputs
  initial begin
    $monitor("Time=%0t |SW=%h| LEDR=%h | LEDG=%h | HEX7=%h | HEX6=%h | HEX5=%h | HEX4=%h | HEX3=%h | HEX2=%h | HEX1=%h | HEX0=%h",
             $time,SW, LEDR, LEDG, HEX7, HEX6, HEX5, HEX4, HEX3, HEX2, HEX1, HEX0);
  end

endmodule

