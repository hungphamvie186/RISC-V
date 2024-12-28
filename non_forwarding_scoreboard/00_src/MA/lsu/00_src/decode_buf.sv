module decode_buf (
	input wire [31:0] i_lsu_addr,   
	output reg output_buf_en,    
	output reg sram_buf_en    
);
    wire [31:0] addr;
    assign addr =  i_lsu_addr[31:0];

    assign output_buf_en = ~addr[15] & ( addr[14] & addr[13] & addr[12] ) & ~( addr[11] | addr[10] | addr[9] | addr[8] ) ;
    assign sram_buf_en = ~addr[15] & ~addr[14] & addr[13] ;
	
endmodule
