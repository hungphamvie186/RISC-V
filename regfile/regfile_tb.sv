`timescale 1ns/1ps

module regfile_tb;
    // Inputs
    reg rst_ni;
    reg rd_wren;
    reg clk_i;
    reg [4:0] rs1_addr;
    reg [4:0] rs2_addr;
    reg [4:0] rd_addr;
    reg [31:0] rd_data;

    // Outputs
    wire [31:0] rs1_data;
    wire [31:0] rs2_data;

    // Instantiate the regfile
    regfile uut (
        .rst_ni(rst_ni),
        .rd_wren(rd_wren),
        .clk_i(clk_i),
        .rs1_addr(rs1_addr),
        .rs2_addr(rs2_addr),
        .rd_addr(rd_addr),
        .rd_data(rd_data),
        .rs1_data(rs1_data),
        .rs2_data(rs2_data)
    );

    // Clock generation
    initial begin
        clk_i = 0;
        forever #5 clk_i = ~clk_i; // 10ns period
    end

    // Test sequence
    initial begin
        // Initialize inputs
        rst_ni = 0;
        rd_wren = 0;
        rs1_addr = 0;
        rs2_addr = 0;
        rd_addr = 0;
        rd_data = 0;

        // Reset the regfile
        #10;
        rst_ni = 1;
        #10;
        rst_ni = 0;
        #10;
        rst_ni = 1;
        #10;

        // Write to registers
        rd_wren = 1;

        // Write 0xAAAA_AAAA to register 1
        rd_addr = 5'd1;
        rd_data = 32'hAAAA_AAAA;
        #10;

        // Write 0x5555_5555 to register 2
        rd_addr = 5'd2;
        rd_data = 32'h5555_5555;
        #10;

        // Write 0x1234_5678 to register 3
        rd_addr = 5'd3;
        rd_data = 32'h1234_5678;
        #10;
		  
		  rd_addr = 5'd6;
        rd_data = 32'h1200_1235;
        #10;

        // Disable write
        rd_wren = 0;
        rd_addr = 0;
        rd_data = 0;
        #10;

        // Read back the values
        rs1_addr = 5'd1;
        rs2_addr = 5'd2;
        #10;

        // Display read values
        $display("Register 1 data: %h (Expected: 0xAAAA_AAAA)", rs1_data);
        $display("Register 2 data: %h (Expected: 0x5555_5555)", rs2_data);


        // Change read addresses and read again
        rs1_addr = 5'd3;
        rs2_addr = 5'd0; // Reading register 0 which should always be 0
        #10;

        // Display read values
        $display("Register 3 data: %h (Expected: 0x1234_5678)", rs1_data);
        $display("Register 0 data: %h (Expected: 0xh1200_1235)", rs2_data);
		  
		  rs1_addr = 5'd6;
        #10;

        // Display read values
        $display("Register 6 data: %h (Expected: 0x1234_5678)", rs1_data);
        

        $stop; // End the simulation
    end
endmodule