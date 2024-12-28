module design_test();

    reg [31:0] rs1_data;
    reg [31:0] rs2_data;
    reg br_un;
    wire br_less;
    wire br_equal;

    BRC dut (
        .rs1_data(rs1_data),
        .rs2_data(rs2_data),
        .br_un(br_un),
        .br_less(br_less),
        .br_equal(br_equal)
    );

    initial begin
        $fsdbDumpfile("design_test.fsdb");
        $fsdbDumpvars(0, design_test, "+all", "+mda");
    end

    // Initial block for test stimulus
    initial begin
        // Display information during simulation
        $monitor("Time: %0t | rs1_data: %h | rs2_data: %h | br_un: %b | br_less: %b | br_equal: %b",
                 $time, rs1_data, rs2_data, br_un, br_less, br_equal);

        // Test case 1: rs1_data == rs2_data
        rs1_data = 32'h10;
        rs2_data = 32'h10;
        br_un = 1'b1;
        #10;

        // Test case 2: rs1_data > rs2_data, signed comparison
        rs1_data = 32'h11;
        rs2_data = 32'h10;
        br_un = 1'b1;
        #10;

        // Test case 3: rs1_data < rs2_data, signed comparison
        rs1_data = 32'h10;
        rs2_data = -32'h20;
        br_un = 1'b1;
        #10;

        // Test case 4: rs1_data < rs2_data, unsigned comparison
        rs1_data = -32'h6;
        rs2_data = 32'h5;
        br_un = 1'b1;
        #10;

        // Additional Test Cases

        // Test case 5: rs1_data > rs2_data, unsigned comparison
        rs1_data = -32'hf;
        rs2_data = -32'ha;
        br_un = 1'b1;
        #10;

        // Test case 6: rs1_data < rs2_data, signed comparison with negative numbers
        rs1_data = -32'h11;
        rs2_data = -32'h12;
        br_un = 1'b1;
        #10;

        // Test case 7: rs1_data > rs2_data, signed comparison
        rs1_data = 32'sd20;
        rs2_data = -32'sd10;
        br_un = 1'b1;
        #10;

        // Test case 8: zero comparison, unsigned
        rs1_data = 32'h0;
        rs2_data = 32'h0;
        br_un = 1'b1;
        #10;

        // Test case 9: max value comparison, unsigned
        rs1_data = 32'hffff_ffff;
        rs2_data = 32'hffff_fffe;
        br_un = 1'b1;
        #10;

        $finish;
    end
endmodule
