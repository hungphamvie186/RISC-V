`timescale 1ns/1ps

module RV32_tb;

    // Declare signals for inputs and outputs
    logic rst;
    logic clk;
    logic Stop_en;
    logic [31:0] ketqua;
	 logic [31:0] cur_pcout;
	 logic [11:0] imm_out;
	 logic [4:0] rd_adr;
	 logic [31:0] rddata;
	 logic [4:0] rs1_out;
	 logic [31:0] A_Alu;
	 logic [31:0] B_Alu;
	 logic [1:0] wbs;
	 logic Reg_WEn;

    // Instantiate the DUT (Device Under Test)
    RV32 DUT (
        .rst(rst),
        .clk(clk),
        .Stop_en(Stop_en),
		  .cur_pcout(cur_pcout),
        .imm_out(imm_out),
        .ketqua(ketqua),
		  .rd_adr(rd_adr),
        .rddata(rddata),
		  .Reg_WEn(Reg_WEn),
		  
		  .A_Alu(A_Alu),
        .B_Alu(B_Alu),
		  .wbs(wbs),
        .rs1_out(rs1_out)
    );

    // Clock generation
    initial begin
        clk = 0;
        forever #5 clk = ~clk; // 100 MHz clock
    end

    // Test sequence
    initial begin
        // Initialize inputs
        rst = 1;
        Stop_en = 0;

        // Wait for global reset to finish
        #10;
        rst = 0;

        // Loop to display rs1_data until Stop_en is activated
        while (!Stop_en) begin
            // Display the value of rs1_data
            $display("ketqua = %0d,cur_pc= %0d, imm_out= %0d ", ketqua, cur_pcout, imm_out);

            // Wait for a clock cycle
            #100;
				Stop_en = 1;
        end

        // Finish simulation
        $finish;
    end
endmodule
