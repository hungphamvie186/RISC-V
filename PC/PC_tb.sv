`timescale 1ns/1ps
module PC_tb();
    logic rst, clk, Stop_en;
    logic [31:0] cur_pc;
	 logic [31:0] nextpc;


    // Instantiate the PC module
    PC DUT (
        .rst(rst),
        .clk(clk),
        .Stop_en(Stop_en),
		  .nextpc(nextpc),
        .cur_pc(cur_pc)
    );

    initial begin
        // Reset
		  clk=0;
        rst = 1;
        Stop_en = 0;
		  #6 rst = 0;
		  #8 Stop_en = 1;
		  end
		  always begin
		  #5 clk=~clk;
		  end
endmodule
