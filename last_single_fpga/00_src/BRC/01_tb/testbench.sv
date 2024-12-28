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
        $fsdbDumpvars(0, design_test, "+all","+mda");
    end

    // Setup for waveform dumping
    initial begin
        // Display information during simulation
        $monitor("Time: %0t | rs1_data: %h | rs2_data: %h | br_un: %b | br_less: %b | br_equal: %b",
                 $time, rs1_data, rs2_data, br_un, br_less, br_equal);

        // Test case 1: rs1_data == rs2_data
        rs1_data = 32'h10;
        rs2_data = 32'h10;
        br_un = 1'b0;
        #10;
// Test case 1: rs1_data == rs2_data
        rs1_data = 32'h11;
        rs2_data = 32'h10;
        br_un = 1'b0;
        #10;
        // Test case 2: rs1_data < rs2_data, signed comparison
        rs1_data = 32'h10;
        rs2_data = 32'h20;
        br_un = 1'b0;
        #10;

        // Test case 3: rs1_data < rs2_data, unsigned comparison
        rs1_data = 32'h6;
        rs2_data = 32'hffff_fff5;
        br_un = 1'b0;
        #10;

        // Test case 4: rs1_data > rs2_data, signed comparison
        rs1_data = 32'hffff_fff6;
        rs2_data = 32'd30;
        br_un = 1'b0;
         #10;

         // Test case 5: rs1_data > rs2_data, unsigned comparison
        rs1_data = 32'hffff_ff56;
        rs2_data = 32'hffff_fe12;
        br_un = 1'b0;// Test case 5: rs1_data > rs2_data, unsigned comparison#10;

         #10;
         // Test case 5: rs1_data > rs2_data, unsigned comparison
        rs1_data = 32'hffff_fe50;
        rs2_data = 32'hffff_ff56;
        br_un = 1'b0;// Test case 5: rs1_data > rs2_data, unsigned comparison
 #10;

         // Test case 5: rs1_data > rs2_data, unsigned comparison
        rs1_data = 32'hffff_ff56;
        rs2_data = 32'hffff_ff56;
        br_un = 1'b0;// Test case 5: rs1_data > rs2_data, unsigned comparison
	#10;
        rs1_data = 32'hffff_fff6;
        rs2_data = 32'hffff_ffff;
        br_un = 1'b0;
	 // Test case 5: rs1_data > rs2_data, unsigned comparison
        rs1_data = 32'hffff_fff6;
        rs2_data = 32'hffff_fff6;
        br_un = 1'b0;

        #10;

	$display("----------------------------------");
    rs1_data = 32'h10;
    rs2_data = 32'h10;
    br_un = 1'b1;
    #10;

    // Test case 2: rs1_data < rs2_data, signed comparison
    rs1_data = -32'h10;
    rs2_data = 32'h20;
    br_un = 1'b1;
    #10;

    // Test case 3: rs1_data < rs2_data, unsigned comparison
    rs1_data = 32'h6;
    rs2_data = 32'hffff_fff5;
    br_un = 1'b1;
    #10;

    // Test case 4: rs1_data > rs2_data, signed comparison
    rs1_data = 32'hffff_fff6;
    rs2_data = -32'd30;
    br_un = 1'b1;
    #10;

    // Test case 5: rs1_data > rs2_data, unsigned comparison
    rs1_data = 32'hffff_fff6;
    rs2_data = 32'hffff_ffff;
    br_un = 1'b1;
    #10;
  // Test case 5: rs1_data > rs2_data, unsigned comparison
    rs1_data = 32'hffff_ffff;
    rs2_data = 32'hffff_ffff;
    br_un = 1'b1;
    #10;// Test case 5: rs1_data > rs2_data, unsigned comparison
    rs1_data = 32'hffff_fff6;
    rs2_data = 32'hffff_fff6;
    br_un = 1'b1;
    #10;
    rs1_data = 32'hffff_ff16;
    rs2_data = 32'hffff_f1f6;
    br_un = 1'b1;
    #10; 
    rs1_data = 32'hffff_1ff6;
    rs2_data = 32'hffff_f2f6;
    br_un = 1'b1;
    #10;
    rs1_data = 32'hffff_f1f6;
    rs2_data = 32'hffff_1ff6;
    br_un = 1'b1;
    #10;

    $display("----------------------------------");
    $finish;
end
endmodule

