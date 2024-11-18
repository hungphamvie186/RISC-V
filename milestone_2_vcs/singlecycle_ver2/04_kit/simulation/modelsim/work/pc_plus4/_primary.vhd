library verilog;
use verilog.vl_types.all;
entity pc_plus4 is
    port(
        pc              : in     vl_logic_vector(31 downto 0);
        pc_four         : out    vl_logic_vector(31 downto 0)
    );
end pc_plus4;
