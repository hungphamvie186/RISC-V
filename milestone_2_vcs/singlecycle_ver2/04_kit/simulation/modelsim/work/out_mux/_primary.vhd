library verilog;
use verilog.vl_types.all;
entity out_mux is
    port(
        ip              : in     vl_logic_vector(31 downto 0);
        op              : in     vl_logic_vector(31 downto 0);
        sram            : in     vl_logic_vector(31 downto 0);
        addr            : in     vl_logic_vector(31 downto 0);
        o_ld_data       : out    vl_logic_vector(31 downto 0)
    );
end out_mux;
