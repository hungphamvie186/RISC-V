library verilog;
use verilog.vl_types.all;
entity \register\ is
    port(
        rst             : in     vl_logic;
        en              : in     vl_logic;
        clk             : in     vl_logic;
        D               : in     vl_logic_vector(31 downto 0);
        Q               : out    vl_logic_vector(31 downto 0)
    );
end \register\;
