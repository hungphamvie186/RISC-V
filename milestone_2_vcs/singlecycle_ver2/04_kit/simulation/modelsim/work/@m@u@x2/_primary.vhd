library verilog;
use verilog.vl_types.all;
entity MUX2 is
    port(
        A               : in     vl_logic_vector(4 downto 0);
        sel             : in     vl_logic;
        \out\           : out    vl_logic_vector(4 downto 0)
    );
end MUX2;
