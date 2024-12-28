/* verilator lint_off WIDTH */
/* verilator lint_off UNUSED */
module imem #(
)(
    input  logic        clk         ,  // Clock
    input  logic        rst_n       ,  // Reset, active low
    input  logic [31:0] i_imem_addr ,  // Địa chỉ đầu vào 32-bit
    output logic [31:0] o_imem_data    // Dữ liệu đầu ra 32-bit (1 câu lệnh)
);

    
    logic [31:0] mem [2047:0];

    // Khởi tạo bộ nhớ từ file `instruction.mem` khi reset
    always_latch begin
       if (!rst_n) begin
            $readmemh("../../../03_test/dump/instruction.mem", mem);
       end
    end
	 
    // Lấy lệnh từ bộ nhớ và gán cho o_imem_data
    always_ff @(posedge clk or negedge rst_n) begin : proc_data
        if (!rst_n) begin
            o_imem_data <= 32'b0;  // Đặt `o_imem_data` về 0 khi reset
        end
        else begin
                // Lấy 1 câu lệnh 32-bit từ địa chỉ `i_imem_addr`
                o_imem_data <= mem[i_imem_addr[31:2]];
            
        end
    end

endmodule : imem
/* verilator lint_on WIDTH */
/* verilator lint_off UNUSED */
