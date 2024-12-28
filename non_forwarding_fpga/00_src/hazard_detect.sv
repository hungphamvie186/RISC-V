module hazard_detect(
   input wire EX_rd_wren,        // Tín hiệu báo viết vào thanh ghi trong giai đoạn EX
   input wire MEM_rd_wren,       // Tín hiệu báo viết vào thanh ghi trong giai đoạn MEM
   input wire WB_rd_wren,        // Tín hiệu báo viết vào thanh ghi trong giai đoạn WB
   input wire id_is_rs2,         // Tín hiệu cho biết RS2 có được sử dụng trong lệnh ID không (để xác định xem RS2 có cần đọc không)
   input wire ID_br_sel,
   input wire EX_br_sel,
   input wire [4:0] EX_rd_addr,  // Địa chỉ thanh ghi nguồn trong giai đoạn EX
   input wire [4:0] MEM_rd_addr, // Địa chỉ thanh ghi nguồn trong giai đoạn MEM
   input wire [4:0] WB_rd_addr,  // Địa chỉ thanh ghi nguồn trong giai đoạn WB
   input wire [4:0] ID_rs1_addr, // Địa chỉ thanh ghi trong lệnh ID của RS1
   input wire [4:0] ID_rs2_addr, // Địa chỉ thanh ghi trong lệnh ID của RS2
   input wire [31:0] ID_inst,
   
   output reg pc_enable_o,        // Tín hiệu cho phép chương trình con (PC enable)
   output reg id_enable_o,        // Tín hiệu cho phép giai đoạn ID
   output reg ex_enable_o,        // Tín hiệu cho phép giai đoạn EX
   output reg mem_enable_o,       // Tín hiệu cho phép giai đoạn MEM
   output reg wb_enable_o,        // Tín hiệu cho phép giai đoạn WB
   
   output reg id_reset_no,        // Tín hiệu reset giai đoạn ID (nếu có hazard)
   output reg ex_reset_no,        // Tín hiệu reset giai đoạn EX (nếu có hazard)
   output reg mem_reset_no,       // Tín hiệu reset giai đoạn MEM (nếu có hazard)
   output reg wb_reset_no         // Tín hiệu reset giai đoạn WB (nếu có hazard)
);
   // Các tín hiệu hazard
   wire hazard_1, hazard_2, hazard_3;

   // Kiểm tra hazard: WB -> ID   //use regfile after write regfile
   assign hazard_1 = WB_rd_wren && (WB_rd_addr != 5'b0) &&
                     ((WB_rd_addr == ID_rs1_addr) || 
                      ((WB_rd_addr == ID_rs2_addr) && id_is_rs2));

   // Kiểm tra hazard: MEM -> ID  //use regfile after load
   assign hazard_2 = MEM_rd_wren && (MEM_rd_addr != 5'b0) &&
                     ((MEM_rd_addr == ID_rs1_addr) || 
                      ((MEM_rd_addr == ID_rs2_addr) && id_is_rs2));

   // Kiểm tra hazard: EX -> ID	 
   assign hazard_3 = EX_rd_wren && (EX_rd_addr != 5'b0) &&
                     ((EX_rd_addr == ID_rs1_addr) || 
                      ((EX_rd_addr == ID_rs2_addr) && id_is_rs2));

   // Logic xử lý hazard và điều khiển các tín hiệu
   always_comb
	begin
    // Default: enable all pipeline stages and no reset
    pc_enable_o = 1'b1;
    id_enable_o = 1'b1;
    ex_enable_o = 1'b1;
    mem_enable_o = 1'b1;
    wb_enable_o = 1'b1;

    id_reset_no = 1'b1;
    ex_reset_no = 1'b1;
    mem_reset_no = 1'b1;
    wb_reset_no = 1'b1;

    // Handle hazards
    if (hazard_1 || hazard_2 || hazard_3)
    begin
            pc_enable_o = 1'b0;    // Disable PC update
            id_enable_o = 1'b0;    // Disable ID stage
            ex_reset_no = 1'b0;    // Reset EX stage

    end else if (EX_br_sel )// Handle branch in EX stage
        begin
			  pc_enable_o = 1'b1;
              id_enable_o = 1'b1;
              ex_enable_o = 1'b1;

              id_reset_no = 1'b0;  // Flush the ID stage
              ex_reset_no = 1'b0;  // Flush the EX stage as well if needed
        end
end


endmodule: hazard_detect
