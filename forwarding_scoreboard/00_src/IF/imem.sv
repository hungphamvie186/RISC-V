/* verilator lint_off WIDTH */
/* verilator lint_off UNUSED */
module imem (
    input  wire        clk         ,  // Clock
    input  wire        rst_n       ,  // Reset, active low
    input  wire [31:0] i_imem_addr ,  
    output reg [31:0] o_imem_data    
);

    
    reg [31:0] mem [2**11 - 1:0];

  
   initial begin
	   $readmemh("../02_test/dump/mem.dump", mem);
    end
                
 	assign      o_imem_data = mem[i_imem_addr[31:2]];
            
endmodule : imem
/* verilator lint_on WIDTH */
/* verilator lint_off UNUSED */
