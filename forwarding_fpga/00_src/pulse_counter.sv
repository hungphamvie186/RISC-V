module pulse_counter (
    input  wire clk,          // Clock đầu vào
    input  wire rst,          // Reset đồng bộ (active high)
	input wire [31:0] inst, // 32-bit instruction
    input  wire valid_signal, // Xung cần đếm
    output reg [31:0] low_counter, // Bộ đếm giá trị 0
    output reg [31:0] high_counter    // Bộ đếm giá trị 1
);

    reg  start,start_temp,stop ; // Lưu giá trị trước đó của valid_signal
    always @(*) begin
        stop = 1'b0;
		stop = 1'b0;
        // Kiểm tra nếu tất cả các bit của instruction đều là z
        if (&inst === 1'bx) begin
            stop = 1'b1;  // Bật tín hiệu stop nếu tất cả các bit đều là z
        end
		if (inst == 32'hef) begin
            stop = 1'b1;  // Bật tín hiệu stop nếu tất cả các bit đều là z
        end
    end

    // Khối luôn chạy theo đồng hồ và reset
    always @(posedge clk or posedge rst) begin
        if (rst) begin
            start_temp <= 1'b0;
        end else begin
            if (valid_signal == 1'b1) begin
                start_temp <= 1'b1;
            end
        end
    end
	assign start = valid_signal | start_temp;
    
    // Khối đếm các xung 1 và 0
    always @(posedge clk or negedge rst) begin
        if (rst) begin
            // Reset các bộ đếm và giá trị lưu trữ
            low_counter <= 32'b0;
            high_counter <= 32'b0;
        end else begin
            // Đếm số lần giá trị thay đổi
            if (start == 1'b1 & stop == 1'b0) begin
                if (valid_signal == 1'b1) begin
                    high_counter <= high_counter + 1;
                end
                if (valid_signal == 1'b0) begin
                    low_counter <= low_counter + 1;
                end
            end
        end
    end

endmodule

