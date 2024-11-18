library verilog;
use verilog.vl_types.all;
entity LSU is
    port(
        i_io_sw         : in     vl_logic_vector(31 downto 0);
        i_io_btn        : in     vl_logic_vector(3 downto 0);
        i_clk           : in     vl_logic;
        i_rst           : in     vl_logic;
        i_lsu_wren      : in     vl_logic;
        wb_sel          : in     vl_logic;
        i_lsu_addr      : in     vl_logic_vector(31 downto 0);
        i_st_data       : in     vl_logic_vector(31 downto 0);
        o_ld_data       : out    vl_logic_vector(31 downto 0);
        o_io_ledr       : out    vl_logic_vector(31 downto 0);
        o_io_ledg       : out    vl_logic_vector(31 downto 0);
        o_io_hex0       : out    vl_logic_vector(6 downto 0);
        o_io_hex1       : out    vl_logic_vector(6 downto 0);
        o_io_hex2       : out    vl_logic_vector(6 downto 0);
        o_io_hex3       : out    vl_logic_vector(6 downto 0);
        o_io_hex4       : out    vl_logic_vector(6 downto 0);
        o_io_hex5       : out    vl_logic_vector(6 downto 0);
        o_io_hex6       : out    vl_logic_vector(6 downto 0);
        o_io_hex7       : out    vl_logic_vector(6 downto 0);
        o_io_lcd        : out    vl_logic_vector(31 downto 0);
        sram_addr       : out    vl_logic_vector(17 downto 0);
        sram_dq         : inout  vl_logic_vector(15 downto 0);
        sram_ce_n       : out    vl_logic;
        sram_oe_n       : out    vl_logic;
        sram_we_n       : out    vl_logic;
        sram_lb_n       : out    vl_logic;
        sram_ub_n       : out    vl_logic
    );
end LSU;
