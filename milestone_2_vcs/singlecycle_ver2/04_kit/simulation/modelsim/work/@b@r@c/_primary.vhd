library verilog;
use verilog.vl_types.all;
entity BRC is
    port(
        rs1_data        : in     vl_logic_vector(31 downto 0);
        rs2_data        : in     vl_logic_vector(31 downto 0);
        br_un           : in     vl_logic;
        br_less         : out    vl_logic;
        br_equal        : out    vl_logic
    );
end BRC;
