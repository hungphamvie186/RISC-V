library verilog;
use verilog.vl_types.all;
entity input_buffer is
    port(
        i_io_sw         : in     vl_logic_vector(31 downto 0);
        i_io_btn        : in     vl_logic_vector(3 downto 0);
        i_clk           : in     vl_logic;
        i_rst           : in     vl_logic;
        addr            : in     vl_logic;
        input_buffer_out: out    vl_logic_vector(31 downto 0)
    );
end input_buffer;
