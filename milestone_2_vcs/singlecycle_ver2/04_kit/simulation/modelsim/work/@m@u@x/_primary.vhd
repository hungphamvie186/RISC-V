library verilog;
use verilog.vl_types.all;
entity MUX is
    port(
        d               : in     vl_logic;
        sel             : in     vl_logic_vector(4 downto 0);
        y               : out    vl_logic_vector(31 downto 0)
    );
end MUX;
