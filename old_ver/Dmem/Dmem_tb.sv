`timescale 1ns/1ps

module Dmem_tb;

    // Inputs
    logic rst_ni;
    logic MemRW;
    logic clk_i;
    logic [4:0] addr;
    logic [31:0] dataW;

    // Outputs
    logic [31:0] dataR;

    // Instantiate the DUT (Device Under Test)
    Dmem DUT (
        .rst_ni(rst_ni),
        .MemRW(MemRW),
        .clk_i(clk_i),
        .addr(addr),
        .dataW(dataW),
        .dataR(dataR)
    );

    // Clock generation
    initial begin
        clk_i = 0;
        forever #5 clk_i = ~clk_i; // 100MHz clock
    end

    // Stimulus
    initial begin
        // Initialize inputs
        rst_ni = 0;
        MemRW = 0;
        addr = 0;
        dataW = 0;

        // Apply reset
        #10 rst_ni = 1;

        // Test writing to memory
        #10 MemRW = 1; addr = 5'd0; dataW = 32'hA5A5A5A5;
        #10 MemRW = 1; addr = 5'd1; dataW = 32'h5A5A5A5A;
        #10 MemRW = 1; addr = 5'd2; dataW = 32'h12345678;
        #10 MemRW = 1; addr = 5'd3; dataW = 32'h87654321;

        // Test reading from memory
        #10 MemRW = 0; addr = 5'd0;
        #10 MemRW = 0; addr = 5'd1;
        #10 MemRW = 0; addr = 5'd2;
        #10 MemRW = 0; addr = 5'd3;

        // Finish the simulation
        #10 $finish;
    end

    // Monitor to display the real-time operations
    initial begin
        $monitor("At time %t, MemRW = %b, addr = %d, dataW = %h, dataR = %h", 
                 $time, MemRW, addr, dataW, dataR);
    end

endmodule
