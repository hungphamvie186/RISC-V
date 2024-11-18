library verilog;
use verilog.vl_types.all;
entity imem is
    port(
        clk             : in     vl_logic;
        rst_n           : in     vl_logic;
        i_imem_addr     : in     vl_logic_vector(31 downto 0);
        o_imem_data     : out    vl_logic_vector(31 downto 0)
    );
end imem;
