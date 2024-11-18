library verilog;
use verilog.vl_types.all;
entity decode_buf is
    port(
        i_lsu_addr      : in     vl_logic_vector(31 downto 0);
        i_lsu_wren      : in     vl_logic;
        output_buf_en   : out    vl_logic;
        sram_buf_en     : out    vl_logic
    );
end decode_buf;
