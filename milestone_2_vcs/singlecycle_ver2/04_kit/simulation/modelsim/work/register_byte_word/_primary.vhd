library verilog;
use verilog.vl_types.all;
entity register_byte_word is
    port(
        clk             : in     vl_logic;
        rst             : in     vl_logic;
        wb_sel          : in     vl_logic;
        wr_en           : in     vl_logic;
        byte_sel        : in     vl_logic_vector(1 downto 0);
        D_byte          : in     vl_logic_vector(7 downto 0);
        D_word          : in     vl_logic_vector(31 downto 0);
        Q_load          : out    vl_logic_vector(31 downto 0);
        Q_store         : out    vl_logic_vector(31 downto 0)
    );
end register_byte_word;
