module forwarding_fpga (
//input
    input wire i_clk,
    input wire i_rst_n,
    input wire [31:0] i_io_sw,
    input wire [3:0] i_io_btn,
//output
    output reg [31:0] o_pc_debug,
    output reg        o_insn_vld,
    output reg [31:0] o_io_ledr,
    output reg [31:0] o_io_ledg,
    output reg [6:0] o_io_hex0,
    output reg [6:0] o_io_hex1,
    output reg [6:0] o_io_hex2,
    output reg [6:0] o_io_hex3,
    output reg [6:0] o_io_hex4,
    output reg [6:0] o_io_hex5,
    output reg [6:0] o_io_hex6,
    output reg [6:0] o_io_hex7,
    output reg [31:0] o_io_lcd,

    output reg [31:0] low_counter, // Bộ đếm thay đổi
    output reg [31:0] high_counter    // Bộ đếm giá trị 1
/*
    output reg [17:0] SRAM_ADDR,
    inout wire [15:0] SRAM_DQ,
    output reg       SRAM_CE_N,
    output reg       SRAM_WE_N,
    output reg       SRAM_LB_N,
    output reg       SRAM_UB_N,
    output reg       SRAM_OE_N*/
);	
		// IF Buffers
	wire IF_stall;
	wire [31:0] IF_inst, IF_pc, EX_alu_data;

	// ID Buffers
	wire ID_stall, ID_flush;
	wire [31:0] ID_pc, ID_inst;
	wire [4:0] WB_rd_addr;
	wire [3:0] ID_alu_op ;
	wire [1:0] ID_wb_sel;
	// ID Stage
	wire ID_rd_wren, ID_br_sel, ID_br_un, ID_mem_wren, ID_mem_rden, ID_op_b_sel, ID_op_a_sel, ID_insn_vld, id_is_rs2, ID_forward_rs1, ID_forward_rs2; 
	wire [31:0] ID_rs1_data, ID_rs2_data, ID_immediate;
	wire [4:0] ID_rd_addr, ID_rs1_addr, ID_rs2_addr;
	wire [2:0] ID_funct3;
	wire EX_flush;

	// EX Stage
	wire [3:0] EX_alu_op ;
	wire [1:0] EX_wb_sel;
	wire EX_rd_wren, EX_br_sel,EX_br_un, EX_mem_wren, EX_mem_rden,  EX_op_b_sel, EX_op_a_sel, EX_insn_vld;
	wire [2:0] EX_funct3;
	wire [31:0] EX_rs1_data, EX_rs2_data, EX_immediate, EX_pc, EX_inst;
	wire [4:0] EX_rd_addr, EX_rs1_addr, EX_rs2_addr;

	// MEM Stage
	wire [1:0]  MEM_wb_sel;
	wire MEM_rd_wren, MEM_mem_wren, MEM_mem_rden, MEM_insn_vld, MEM_flush, MEM_br_sel;
	wire [2:0] MEM_funct3;
	wire [31:0] MEM_alu_data, MEM_rs2_data, MEM_pc, MEM_inst;
	wire [4:0] MEM_rd_addr;

	// WB Stage
	wire [1:0] WB_wb_sel;
	wire WB_insn_vld;
	wire [31:0] WB_alu_data;
	wire [31:0] WB_ld_data;
	wire [31:0] WB_pc;
	wire [31:0] WB_wb_data, WB_inst;

	// Hazard Detection Signals
	wire pc_enable_o;      
	wire id_enable_o;      
	wire ex_enable_o;      
	wire mem_enable_o;     
	wire wb_enable_o;
	wire [1:0] ID_forward_A;
	wire [1:0] ID_forward_B;      

	wire id_reset_no;      
	wire ex_reset_no;      
	wire mem_reset_no;     
	wire wb_reset_no;      


    IF_stage IF_block(
        .i_clk(i_clk),
        .i_rst(~i_rst_n),

        .IF_stall(~IF_stall),
        .EX_br_sel(EX_br_sel),
        .EX_alu_data(EX_alu_data),
        .IF_inst(IF_inst),
        .IF_pc(IF_pc)
    );

    IF_buf IF_buf_block(
        .i_clk(i_clk),
        .i_rst(~i_rst_n),

        .ID_stall(~ID_stall),
        .ID_flush(~ID_flush),
        .IF_inst(IF_inst),
        .IF_pc(IF_pc),
        .ID_inst(ID_inst),
        .ID_pc(ID_pc)    
    );

    ID_stage ID_stage_block (
        .i_clk		(i_clk),
        .i_rst		(~i_rst_n),
		.WB_rd_wren   (WB_rd_wren),  // Tín hiệu ghi enable từ WB stage
		.ID_inst      (ID_inst),     // Lệnh từ giai đoạn Decode (ID)
		.WB_wb_data   (WB_wb_data),  // Dữ liệu ghi WB
		.WB_rd_addr   (WB_rd_addr),  // Địa chỉ thanh ghi WB

		// Tín hiệu điều khiển đầu ra từ ID stage
		.ID_rd_wren   (ID_rd_wren),
		.ID_br_un    (ID_br_un),
		.ID_wb_sel    (ID_wb_sel),
		.ID_mem_wren  (ID_mem_wren),
		.ID_mem_rden  (ID_mem_rden),
		.ID_alu_op    (ID_alu_op),
		.ID_op_b_sel  (ID_op_b_sel),
		.ID_op_a_sel  (ID_op_a_sel),
		.ID_insn_vld  (ID_insn_vld),
		
		.id_is_rs1    (id_is_rs1),
		.id_is_rs2    (id_is_rs2),

		.ID_forward_rs1    (ID_forward_rs1),
		.ID_forward_rs2    (ID_forward_rs2),

		.ID_rs1_data  (ID_rs1_data),
		.ID_rs2_data  (ID_rs2_data),
		.ID_immediate (ID_immediate),


		.ID_rd_addr   (ID_rd_addr),
		.ID_rs1_addr   (ID_rs1_addr),
		.ID_rs2_addr   (ID_rs2_addr),


		.ID_funct3    (ID_funct3)
);
		
	
    ID_buf ID_buf_block (
        .i_clk		(i_clk),
        .i_rst		(~i_rst_n),
    	.EX_flush      (~EX_flush),       // Tín hiệu flush cho EX stage

    // Đầu vào từ ID stage
	    .id_is_rs1    (id_is_rs1),
	    .id_is_rs2    (id_is_rs2),
    .ID_rd_wren    (ID_rd_wren),
    .ID_br_un     (ID_br_un),
    .ID_wb_sel     (ID_wb_sel),
    .ID_mem_wren   (ID_mem_wren),
    .ID_mem_rden   (ID_mem_rden),
    .ID_alu_op     (ID_alu_op),
    .ID_op_b_sel   (ID_op_b_sel),
    .ID_op_a_sel   (ID_op_a_sel),
    .ID_insn_vld   (ID_insn_vld),
    .ID_funct3     (ID_funct3),
    .ID_rs1_data   (ID_rs1_data),
    .ID_rs2_data   (ID_rs2_data),
    .ID_immediate  (ID_immediate),
    .ID_pc         (ID_pc),
    .ID_rd_addr    (ID_rd_addr),
	.ID_rs1_addr    (ID_rs1_addr),
	.ID_rs2_addr    (ID_rs2_addr),
	.ID_inst    (ID_inst),

    // Đầu ra cho EX stage
	    .ex_is_rs1    (ex_is_rs1),
	    .ex_is_rs2    (ex_is_rs2),
	.EX_inst    (EX_inst),
    .EX_rd_wren    (EX_rd_wren),
    .EX_br_un     (EX_br_un),
    .EX_wb_sel     (EX_wb_sel),
    .EX_mem_wren   (EX_mem_wren),
    .EX_mem_rden   (EX_mem_rden),
    .EX_alu_op     (EX_alu_op),
    .EX_op_b_sel   (EX_op_b_sel),
    .EX_op_a_sel   (EX_op_a_sel),
    .EX_insn_vld   (EX_insn_vld),
    .EX_funct3     (EX_funct3),
    .EX_rs1_data   (EX_rs1_data),
    .EX_rs2_data   (EX_rs2_data),
	.EX_rs1_addr   (EX_rs1_addr),
	.EX_rs2_addr   (EX_rs2_addr),
    .EX_immediate  (EX_immediate),
    .EX_pc         (EX_pc),
    .EX_rd_addr    (EX_rd_addr)
);
	

    EX_stage EX_stage_block (
        .i_clk		(i_clk),
        .i_rst		(~i_rst_n),     // Tín hiệu reset

		// Đầu vào từ EX stage     
		.ID_forward_A(ID_forward_A),     
		.ID_forward_B(ID_forward_B),
    	.EX_br_un     (EX_br_un),
		.EX_rd_wren    (EX_rd_wren), 
		.WB_wb_data    (WB_wb_data),
		// .EX_br_sel   (EX_br_sel),     
		.EX_wb_sel     (EX_wb_sel),
		.EX_mem_wren   (EX_mem_wren),
		.EX_mem_rden   (EX_mem_rden),
		.EX_alu_op     (EX_alu_op),
		.EX_op_b_sel   (EX_op_b_sel),
		.EX_op_a_sel   (EX_op_a_sel),
		.EX_insn_vld   (EX_insn_vld),
		.EX_funct3     (EX_funct3),
		.EX_rs1_data   (EX_rs1_data),
		.EX_rs2_data   (EX_rs2_data),
		.EX_immediate  (EX_immediate),
		.EX_pc         (EX_pc),
		.EX_rd_addr    (EX_rd_addr),
		.EX_inst    (EX_inst),

		// Đầu ra cho MEM stage
		.MEM_inst    (MEM_inst),
    	.MEM_flush      (~MEM_flush),
		.EX_br_sel   (EX_br_sel),
		.MEM_br_sel   (MEM_br_sel), 
		.EX_alu_data   (EX_alu_data),
		.MEM_rd_wren   (MEM_rd_wren),
		.MEM_wb_sel    (MEM_wb_sel),
		.MEM_mem_wren  (MEM_mem_wren),
		.MEM_mem_rden  (MEM_mem_rden),
		.MEM_insn_vld  (MEM_insn_vld),
		.MEM_funct3    (MEM_funct3),
		.MEM_alu_data  (MEM_alu_data),
		.MEM_rs2_data  (MEM_rs2_data),
		.MEM_pc        (MEM_pc),
		.MEM_rd_addr   (MEM_rd_addr)
);


    MA_stage MA_stage_block (
		// Đầu vào
		.i_io_sw        (i_io_sw),       
		.i_io_btn       (i_io_btn),      
		.i_clk          (i_clk),         
		.i_rst          (~i_rst_n),         

		// Đầu ra
		.o_io_ledr      (o_io_ledr),     
		.o_io_ledg      (o_io_ledg),     
		.o_io_hex0      (o_io_hex0),     
		.o_io_hex1      (o_io_hex1),     
		.o_io_hex2      (o_io_hex2),   
		.o_io_hex3      (o_io_hex3),     
		.o_io_hex4      (o_io_hex4),     
		.o_io_hex5      (o_io_hex5),     
		.o_io_hex6      (o_io_hex6),     
		.o_io_hex7      (o_io_hex7),     
		.o_io_lcd       (o_io_lcd),      

		// Control signals đầu vào từ MEM stage
		.MEM_rd_wren    (MEM_rd_wren),   
		.MEM_wb_sel     (MEM_wb_sel),    
		.MEM_mem_wren   (MEM_mem_wren),  
		.MEM_mem_rden   (MEM_mem_rden),  
		.MEM_insn_vld   (MEM_insn_vld),  
		.MEM_funct3     (MEM_funct3),    
		.MEM_alu_data   (MEM_alu_data),  
		.MEM_rs2_data   (MEM_rs2_data),  
		.MEM_pc         (MEM_pc),        
		.MEM_rd_addr    (MEM_rd_addr),
		.MEM_inst    (MEM_inst),   

		// Control signals đầu ra tới WB stage
		.WB_inst    (WB_inst),
		.WB_wb_sel      (WB_wb_sel),    
		.WB_rd_wren     (WB_rd_wren),    
		.WB_insn_vld    (o_insn_vld),   
		.WB_alu_data    (WB_alu_data),   
		.WB_ld_data     (WB_ld_data),    
		.WB_pc    		(WB_pc),    
		.WB_rd_addr     (WB_rd_addr)     
);
	WB_stage WB_stage_block (
		// Đầu vào
		.WB_wb_sel     (WB_wb_sel),     
		.WB_alu_data   (WB_alu_data),   
		.WB_ld_data    (WB_ld_data),    
		.WB_pc    (WB_pc),    

		// Đầu ra
		.o_pc_debug    (o_pc_debug), 
		.WB_wb_data    (WB_wb_data)    
);
	hazard_detect hazard_detect_inst (
		.EX_rd_wren(EX_rd_wren),         
		.MEM_rd_wren(MEM_rd_wren),       
		.WB_rd_wren(WB_rd_wren),        
		.MEM_br_sel(MEM_br_sel),
		.ID_inst   (ID_inst),         
		.EX_br_sel(EX_br_sel),           
		.id_is_rs1(id_is_rs1),               
		.id_is_rs2(id_is_rs2),  
		.ex_is_rs1(ex_is_rs1),               
		.ex_is_rs2(ex_is_rs2),
    	.MEM_mem_rden   (MEM_mem_rden),
    	.EX_mem_rden   (EX_mem_rden),             

		.ID_forward_rs1    (ID_forward_rs1),
		.ID_forward_rs2    (ID_forward_rs2),

		.EX_rd_addr(EX_rd_addr),         
		.MEM_rd_addr(MEM_rd_addr),      
		.WB_rd_addr(WB_rd_addr),        
		.ID_rs1_addr(ID_rs1_addr),       
		.ID_rs2_addr(ID_rs2_addr),          
		.EX_rs1_addr(EX_rs1_addr),       
		.EX_rs2_addr(EX_rs2_addr),   
		.ID_forward_A(ID_forward_A),     
		.ID_forward_B(ID_forward_B),
		.pc_enable_o(IF_stall),       
		.id_enable_o(ID_stall),       
		//.ex_enable_o(ex_enable_o),       
		//.mem_enable_o(mem_enable_o),     
		//.wb_enable_o(wb_enable_o),       

		.id_reset_no(ID_flush),       
		.ex_reset_no(EX_flush),
    	.mem_reset_no    (MEM_flush)       
		//.mem_reset_no(mem_reset_no),    
		//.wb_reset_no(wb_reset_no)        
	);

   /* pulse_counter pulse_counter_block (
        .clk(i_clk),
        .rst(~i_rst_n),
		.inst(WB_inst),
        .valid_signal(o_insn_vld),
        .low_counter(low_counter),
        .high_counter(high_counter)
    );*/


endmodule

