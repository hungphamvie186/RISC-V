library verilog;
use verilog.vl_types.all;
entity pc_reg is
    port(
        i_clk           : in     vl_logic;
        i_rst_n         : in     vl_logic;
        pc_next         : in     vl_logic_vector(31 downto 0);
        pc              : out    vl_logic_vector(31 downto 0)
    );
end pc_reg;
