/* verilator lint_off WIDTH */
/* verilator lint_off UNUSED */
module imem (
    input  logic        clk         ,  // Clock
    input  logic        rst_n       ,  // Reset, active low
    input  logic [31:0] i_imem_addr ,  // Äá»‹a chá»‰ Ä‘áº§u vÃ o 32-bit
    output logic [31:0] o_imem_data    // Dá»¯ liá»‡u Ä‘áº§u ra 32-bit (1 cÃ¢u lá»‡nh)
);

    
    logic [31:0] mem [2**11 - 1:0];

    // Khá»Ÿi táº¡o bá»™ nhá»› tá»« file `instruction.mem` khi reset
   initial begin
	   $readmemh("instruction.txt", mem);
    end
                // Láº¥y 1 cÃ¢u lá»‡nh 32-bit tá»« Ä‘á»‹a chá»‰ `i_imem_addr`
 	assign      o_imem_data = mem[i_imem_addr[31:2]];
            
endmodule : imem
/* verilator lint_on WIDTH */
/* verilator lint_off UNUSED */
