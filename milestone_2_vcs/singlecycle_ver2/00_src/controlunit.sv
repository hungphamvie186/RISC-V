/* verilator lint_off UNUSED */
module controlunit(
	//Inputs
    input logic [31:0] instr,      
    input logic br_less,           
    input logic br_equal,          

    // Outputs
    output logic pc_sel,           
    output logic br_un,      
    output logic rd_wren,          
    output logic mem_wren,         
    output logic mem_rden,         
    output logic op_a_sel,         
    output logic op_b_sel,         
    output logic [1:0] wb_sel,     
	output logic [3:0] alu_op,
	output logic w_b_LSU,
	output logic l_unsigned,
	output logic o_insn_vld  
);

    
    logic [6:0] opcode;
    logic [2:0] funct3;
    logic [6:0] funct7;

    // Extract opcode
    assign opcode = instr[6:0];
    assign funct3 = instr[14:12];
    assign funct7 = instr[31:25];

	localparam OPCODE_RTYPE     = 7'b0110011;
	localparam OPCODE_ITYPE     = 7'b0010011;
	localparam OPCODE_LOAD      = 7'b0000011;
	localparam OPCODE_STORE     = 7'b0100011;
	localparam OPCODE_BRANCH    = 7'b1100011;
	localparam OPCODE_JAL		= 7'b1101111;
	localparam OPCODE_JALR		= 7'b1100111;
	//localparam OPCODE_LUI		= 7'b0110111;
	//localparam OPCODE_AUIPC	= 7'b0010111;
	

    always_comb begin
        // Default
        pc_sel      = 1'b0;
        br_un 		= 1'b0;
        rd_wren     = 1'b0;
        mem_wren    = 1'b0;
        mem_rden    = 1'b0;
        op_a_sel    = 1'b0;
        op_b_sel    = 1'b0;
        wb_sel      = 2'b00;
        alu_op		= 4'b0;
		w_b_LSU 	= 1'b0;
		l_unsigned 	= 1'b0;
		o_insn_vld  = 1'b0;
		
        case (opcode)
            OPCODE_BRANCH: begin // B-type
            rd_wren     = 1'b0;
            mem_wren    = 1'b0;
            mem_rden    = 1'b0;
            op_a_sel    = 1'b1;
            op_b_sel    = 1'b1;
            wb_sel      = 2'b00;
            alu_op		= 4'b0;
           	w_b_LSU 	= 1'b0;
			l_unsigned 	= 1'b0;
			
                case (funct3)  
                    3'b000: begin // BEQ
                    pc_sel = br_equal;  
                    br_un = 1'b0;
		    o_insn_vld  = 1'b1;
                    end  
                    3'b001: begin // BNE
                    pc_sel = ~br_equal;      
                    br_un = 1'b0;
		    o_insn_vld  = 1'b1;
                    end  
                    3'b100: begin // BLT
                    pc_sel = br_less;        
                    br_un = 1'b0;
		    o_insn_vld  = 1'b1;
                    end  
                    3'b101: begin // BGE
                    pc_sel = ~br_less;       
                    br_un = 1'b0;
		    o_insn_vld  = 1'b1;
                    end  
                    3'b110: begin // BLTU (unsigned)
                    pc_sel = br_less;        
                    br_un = 1'b1;
		    o_insn_vld  = 1'b1;
                    end  
                    3'b111: begin // BGEU (unsigned)
                    pc_sel = ~br_less;
                    br_un = 1'b1;
		    o_insn_vld  = 1'b1;
                    end  
                default:     
		    o_insn_vld  = 1'b0;
                endcase
            end

            OPCODE_LOAD: begin // L-type
            	pc_sel      = 1'b0;
            	br_un 		= 1'b0;
            	mem_wren    = 1'b0;
            	mem_rden    = 1'b1;
            	op_a_sel    = 1'b0;
            	alu_op		= 4'b0;
                rd_wren 	= 1'b1;      
                op_b_sel 	= 1'b1;     
                wb_sel 		= 2'b01; 
                case (funct3)
                    3'b000: begin //LB
						w_b_LSU = 1'b1;
						l_unsigned = 1'b0;
                				o_insn_vld  = 1'b1;     
					end
					
					3'b010: begin //LW
						w_b_LSU = 1'b0;
						l_unsigned = 1'b0;
                				o_insn_vld  = 1'b1;     
					end

					3'b100: begin //LBU
						w_b_LSU = 1'b1;
						l_unsigned = 1'b1;
                				o_insn_vld  = 1'b1;     
					end	
					default:				
                				o_insn_vld  = 1'b0;     
                endcase
            end

            OPCODE_STORE: begin // S-type
            	pc_sel      = 1'b0;
				br_un 		= 1'b0;
				rd_wren     = 1'b0;
				mem_wren 	= 1'b1;
				mem_rden 	= 1'b0;
				op_a_sel	= 1'b0;
				op_b_sel    = 1'b1;
				wb_sel      = 2'b00;
				alu_op		= 4'b0;
                case (funct3)
                    3'b000: begin //SB
						w_b_LSU = 1'b1;
						l_unsigned = 1'b0;
						o_insn_vld  = 1'b1;
                    end
                    3'b010: begin //SW
                    	w_b_LSU = 1'b0;
						l_unsigned = 1'b0;
						o_insn_vld  = 1'b1;
					end
				default:
						o_insn_vld  = 1'b0;
                endcase
            end

            OPCODE_ITYPE: begin // I-type
                rd_wren 	= 1'b1;         
                op_a_sel 	= 1'b0;        
                op_b_sel 	= 1'b1;        
                wb_sel 		= 2'b00;         
                pc_sel      = 1'b0;
				br_un 		= 1'b0;
				mem_wren = 1'b0;
				mem_rden = 1'b0;
				w_b_LSU = 1'b0;
				l_unsigned = 1'b0;
				o_insn_vld  = 1'b1;
				case (funct3)
                	3'b000: alu_op = 4'b0000;
                   	3'b001: alu_op = 4'b0111;	
           			3'b010: alu_op = 4'b0010;
           			3'b011: alu_op = 4'b0011;
                    3'b100: alu_op = 4'b0100;
                    3'b101: alu_op = (funct7[5] ? 4'b1001 : 4'b1000);	
                    3'b110: alu_op = 4'b0101;
                    3'b111: alu_op = 4'b0110;
                endcase
            end

            OPCODE_RTYPE: begin // R-type
				pc_sel 	= 1'b0;
                rd_wren = 1'b1;         
                op_a_sel = 1'b0;        
                op_b_sel = 1'b0;        
                wb_sel = 2'b00;         
                mem_wren = 1'b0;
                mem_rden = 1'b0;
				br_un 	= 1'b0;
				w_b_LSU = 1'b0;
				l_unsigned = 1'b0;
				o_insn_vld  = 1'b1;
                case (funct3)
	            	3'b000: alu_op = (funct7[5] ? 4'b0001: 4'b0000); /////////////////
	                3'b001: alu_op = 4'b0111;
                    3'b010: alu_op = 4'b0010;
                    3'b011: alu_op = 4'b0011;
                    3'b100: alu_op = 4'b0100;
                    3'b101: alu_op = (funct7[5] ? 4'b1001 : 4'b1000);
                    3'b110: alu_op = 4'b0101;
                    3'b111: alu_op = 4'b0110;
                endcase
            end
            
			OPCODE_JAL: begin // Jump and Link (JAL)
                pc_sel      = 1'b1;
                br_un 		= 1'b0;
                rd_wren     = 1'b1;
                mem_wren    = 1'b0;
                mem_rden    = 1'b0;
                op_a_sel    = 1'b1;
                op_b_sel    = 1'b1;
                wb_sel      = 2'b11;
                alu_op		= 4'b0;
                w_b_LSU		= 1'b0;
				l_unsigned 	= 1'b0;
				o_insn_vld  = 1'b1;
            end

            OPCODE_JALR: begin // Jump and Link Register (JALR)
                pc_sel      = 1'b1;
                br_un 		= 1'b0;
                rd_wren     = 1'b1;
                mem_wren    = 1'b0;
                mem_rden    = 1'b0;
               	op_a_sel    = 1'b0;
                op_b_sel    = 1'b1;
                wb_sel      = 2'b11;
                alu_op		= 4'b0;
                w_b_LSU		= 1'b0;
                l_unsigned 	= 1'b0;
                o_insn_vld  = 1'b1;
            end
            default: o_insn_vld  = 1'b0;
        endcase
    end
endmodule: controlunit
/* verilator lint_off UNUSED */
